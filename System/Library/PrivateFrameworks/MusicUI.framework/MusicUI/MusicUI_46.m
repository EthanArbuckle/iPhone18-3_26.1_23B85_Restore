void sub_216B397D8()
{
  OUTLINED_FUNCTION_22_3();
  v97 = v1;
  v3 = v2;
  v5 = v4;
  v76 = v6;
  v7 = *v0;
  v8 = type metadata accessor for SectionContent();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v92 = v10;
  v11 = OUTLINED_FUNCTION_4_1();
  v12 = _s7SectionVMa(v11);
  OUTLINED_FUNCTION_1();
  v84 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v82 = v16;
  v17 = *(v7 + 80);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  v20 = MEMORY[0x28223BE20](v19);
  v77 = v21;
  v22 = *(v21 + 16);
  v93 = &v72 - v23;
  v74 = v21 + 16;
  v73 = v22;
  v22(v20);
  v100[0] = v5;
  v81 = v0;
  v24 = *(v7 + 88);
  v25 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_32();
  sub_21700E894();
  v102 = sub_21700E384();
  v98 = v17;
  v99 = v24;
  sub_21700E984();
  v88 = v25;
  v26 = sub_21700E3F4();
  OUTLINED_FUNCTION_0_161();
  swift_getWitnessTable();
  v79 = v26;
  v27 = v97;
  sub_21700E794();
  v97 = v27;
  v91 = v12;
  v28 = sub_21700E384();
  v94 = v24;
  v29 = *(v24 + 16);
  v30 = *(v29 + 32);
  v87 = v3;
  v86 = v29 + 32;
  v85 = v30;
  v31 = *(v30(v17, v29) + 16);

  v83 = v31;
  if (v31)
  {
    v32 = 0;
    v78 = v29 + 48;
    v33 = v82;
    v96 = v17;
    v90 = v29;
    while (v32 < *(v85(v17, v29) + 16))
    {
      OUTLINED_FUNCTION_21_1();
      v95 = v34;
      OUTLINED_FUNCTION_1_135();
      sub_216B3ADD0();

      v36 = *v33;
      v35 = v33[1];
      v102 = *v33;
      v103 = v35;
      sub_21700DF14();
      sub_21700E404();

      if (v100[0])
      {
        v89 = v36;
        v17 = v28;
        v40 = v96;
        v39 = v97;
        sub_2169B75E0(v100[0], v100[1], v100[2], v101, v96, v94, v37, v38, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
        if (v39)
        {

          OUTLINED_FUNCTION_1_117();
          sub_216AD16E8(v82, v71);

          (*(v77 + 8))(v93, v40);
          goto LABEL_19;
        }

        v97 = 0;

        v41 = (*(v90 + 48))(v100, v40);
        v43 = v42;
        v44 = *v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_216E15A14();
          v44 = v52;
          *v43 = v52;
        }

        v28 = v17;
        if (v32 >= *(v44 + 16))
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_6_75();
        sub_216B3AF08();
        v46 = v41(v100, 0);
        v100[0] = v81[3];
        MEMORY[0x28223BE20](v46);
        v17 = v96;
        v48 = v93;
        v47 = v94;
        *(&v72 - 4) = v96;
        *(&v72 - 3) = v47;
        *(&v72 - 2) = v48;
        *(&v72 - 1) = v32;
        _s15ContentObserverCMa();
        OUTLINED_FUNCTION_32();
        sub_21700E984();
        sub_21700DF14();
        OUTLINED_FUNCTION_0_161();
        swift_getWitnessTable();
        v49 = v97;
        sub_21700E7A4();
        v97 = v49;

        OUTLINED_FUNCTION_12_55();
        v33 = v82;
        sub_216B3ADD0();
        sub_21700DF14();
        swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v28;
        v50 = v89;
        sub_216939D04();
        v28 = v100[0];
        v102 = v50;
        v103 = v35;
        sub_21700E374();

        sub_216B3AEC8(v100[0]);
        sub_216AD16E8(v33, (&v72 - 6));
        v29 = v90;
      }

      else
      {
        OUTLINED_FUNCTION_1_117();
        sub_216AD16E8(v33, v51);
        v17 = v96;
      }

      if (v83 == ++v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_12:
  v53 = sub_21700DF14();
  v54 = MEMORY[0x21CE9F1E0](v53, MEMORY[0x277D837D0], v88, MEMORY[0x277D837E0]);

  if ((v54 & 1) == 0)
  {
    if (qword_27CAB5DB0 == -1)
    {
LABEL_14:
      v55 = sub_217007CA4();
      __swift_project_value_buffer(v55, qword_27CAC3320);
      v56 = sub_217007C84();
      v57 = sub_21700ED84();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v100[0] = v59;
        *v58 = 136446210;
        sub_21700DF14();
        v95 = v28;
        sub_21700DF14();

        v60 = sub_21700E394();
        v62 = v61;

        v63 = sub_2166A85FC(v60, v62, v100);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_216679000, v56, v57, "Unable to update items in sections with IDs: %{public}s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_17;
    }

LABEL_22:
    OUTLINED_FUNCTION_16_49();
    goto LABEL_14;
  }

LABEL_17:
  v64 = v93;
  (v73)(v75, v93, v17);
  OUTLINED_FUNCTION_24_30();
  sub_216E41D9C(v65, v66, v67, v68, v69, v17, v70);

  (*(v77 + 8))(v64, v17);
LABEL_19:
  OUTLINED_FUNCTION_21_4();
}

void sub_216B3A0BC()
{
  OUTLINED_FUNCTION_22_3();
  v62 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v58 = v7;
  v8 = *v0;
  v64 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  v63 = v13;
  v14 = *(v8 + 80);
  OUTLINED_FUNCTION_16();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v60 = v18;
  OUTLINED_FUNCTION_3_1();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v56 = v16;
  v23 = *(v16 + 16);
  v23(&v55 - v21, v4, v14, v20);
  v55 = *(v8 + 88);
  v24 = *(v55 + 16);
  v25 = *(v24 + 48);
  sub_21700DF14();
  v59 = v22;
  v61 = v14;
  v26 = v25(v65, v14, v24);
  sub_216BDD300(v6);
  v26(v65, 0);
  v27 = v62;
  v28 = 0;
  v29 = *(v6 + 16);
  while (v29 != v28)
  {
    v30 = v28 + 1;
    sub_216B3A62C();
    v28 = v30;
  }

  v57 = v2;
  v62 = v27;
  (v23)(v60, v59, v61);
  v31 = sub_21700E384();
  if (v29)
  {
    v32 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v33 = *(v10 + 72);
    v34 = v63;
    while (1)
    {
      v64 = v29;
      OUTLINED_FUNCTION_13_49();
      sub_216B3ADD0();
      v36 = *v34;
      v35 = v34[1];
      sub_216B3ADD0();
      swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v31;
      v37 = sub_2166AF66C(v36, v35);
      if (__OFADD__(*(v31 + 16), (v38 & 1) == 0))
      {
        break;
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v41 = sub_2166AF66C(v36, v35);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_18;
        }

        v39 = v41;
      }

      v31 = v65[0];
      if (v40)
      {
        sub_216B3AF08();
      }

      else
      {
        *(v65[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
        v43 = (*(v31 + 48) + 16 * v39);
        *v43 = v36;
        v43[1] = v35;
        OUTLINED_FUNCTION_1_135();
        sub_2166C63AC();
        v44 = *(v31 + 16);
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_17;
        }

        *(v31 + 16) = v46;
        sub_21700DF14();
      }

      OUTLINED_FUNCTION_1_117();
      v34 = v63;
      sub_216AD16E8(v63, v47);
      v32 += v33;
      v29 = v64 - 1;
      if (v64 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    v48 = v61;
    (*(v56 + 8))(v59, v61);
    OUTLINED_FUNCTION_24_30();
    sub_216E41D9C(v49, v50, v51, v52, v53, v48, v54);
    OUTLINED_FUNCTION_21_4();
  }
}

uint64_t sub_216B3A4F8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_216B3A550()
{
  v0 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216B3ADD0();
    sub_216A9642C();
    swift_unknownObjectRelease();
    return sub_216AD16E8(v2, _s7SectionVMa);
  }

  return result;
}

uint64_t sub_216B3A62C()
{
  _s15ContentObserverCMa();
  sub_21700E984();
  sub_21700DF14();
  swift_getWitnessTable();
  sub_21700E7A4();
}

uint64_t sub_216B3A714(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for SectionContent();
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_216B3ADD0();
  v19 = (a2 + *(type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor() + 36));
  v20 = *v19;
  v21 = v19[1];
  v32 = a1;
  sub_216934F7C(v20, v21, *a1);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_216B3AE24(v11);
  }

  else
  {
    sub_2166C63AC();
    v22 = v34;
    sub_2169B6454(v18, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    sub_216AD16E8(v15, type metadata accessor for SectionContent);
    result = sub_216AD16E8(v18, type metadata accessor for SectionContent);
    if (v22)
    {
      return result;
    }

    sub_2166C63AC();
  }

  sub_216B3ADD0();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  sub_21700DF14();
  sub_216A8BA68();
  return sub_216AD16E8(v18, type metadata accessor for SectionContent);
}

uint64_t sub_216B3A9C8()
{
  type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor();
  sub_21700E3F4();
  swift_bridgeObjectRetain_n();
  sub_21700DF14();
  return sub_21700E414();
}

uint64_t sub_216B3AA78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = _s7SectionVMa(0) - 8;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = (*(*(a5 + 16) + 32))(a4);
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 16) > a3)
    {
      sub_216B3ADD0();

      sub_216A9642C();
      swift_unknownObjectRelease();
      return sub_216AD16E8(v10, _s7SectionVMa);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_216B3ABE8()
{

  return v0;
}

uint64_t sub_216B3AC10()
{
  sub_216B3ABE8();

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_216B3AC94()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3320);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

uint64_t sub_216B3AD10(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B3ADD0()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216B3AE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B3AEC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_216B3AF08()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

_BYTE *sub_216B3AF5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PushNowPlayingAction()
{
  result = qword_280E3BC18;
  if (!qword_280E3BC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B3B0D0()
{
  sub_216B3B164();
  if (v0 <= 0x3F)
  {
    sub_21700D284();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B3B164()
{
  if (!qword_280E3FDC8[0])
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, qword_280E3FDC8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216B3B364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelectReplayPeriodAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = type metadata accessor for SelectReplayYearAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  sub_216B3B6AC(v2, &v22 - v15);
  v17 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  result = __swift_getEnumTagSinglePayload(v16, 1, v17);
  if (result == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        result = sub_216B3B7C4(v16);
        break;
      case 3u:
        sub_216B3B71C(v16, v13, type metadata accessor for SelectReplayYearAction);
        *(a1 + 24) = v9;
        *(a1 + 32) = sub_216B3B77C(&qword_27CABE080, type metadata accessor for SelectReplayYearAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v20 = v13;
        v21 = type metadata accessor for SelectReplayYearAction;
        goto LABEL_7;
      case 4u:
        sub_216B3B71C(v16, v8, type metadata accessor for SelectReplayPeriodAction);
        *(a1 + 24) = v4;
        *(a1 + 32) = sub_216B3B77C(&qword_27CAC33D8, type metadata accessor for SelectReplayPeriodAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v20 = v8;
        v21 = type metadata accessor for SelectReplayPeriodAction;
LABEL_7:
        result = sub_216B3B71C(v20, boxed_opaque_existential_1, v21);
        break;
      default:
        result = sub_21700F584();
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_216B3B630()
{
  v0 = sub_21700D704();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_7();
  sub_21700D6F4();
  return sub_21700D244();
}

uint64_t sub_216B3B6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B3B71C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B3B77C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B3B7C4(uint64_t a1)
{
  v2 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B3B828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  v9 = (a4 + v8[11]);
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  *v9 = sub_217008CF4();
  v9[1] = v10;
  v11 = a4 + v8[12];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a4 + v8[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a4 + v8[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v8[15];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + v8[16];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  sub_216B45350(a1, a4 + v8[9], type metadata accessor for MappedSection);
  result = sub_216B45350(a2, a4, type metadata accessor for MappedArtistLatestReleaseAndTopSongs);
  *(a4 + v8[10]) = a3;
  return result;
}

void sub_216B3B9E0()
{
  type metadata accessor for MappedArtistLatestReleaseAndTopSongs(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MappedSection(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CatalogPagePresenter();
        swift_getWitnessTable();
        sub_217008D04();
        if (v3 <= 0x3F)
        {
          sub_216B45208(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_216B3BC0C(319, &qword_280E2B490, type metadata accessor for PersistentPageSectionManager);
            if (v5 <= 0x3F)
            {
              sub_216B45208(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_216B3BC0C(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
                if (v7 <= 0x3F)
                {
                  sub_216B45208(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
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

void sub_216B3BC0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_216B3BCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v82 = a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  v5 = OUTLINED_FUNCTION_22_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  OUTLINED_FUNCTION_28_31();
  sub_2166D9530(v6, &qword_27CABB7D0);
  OUTLINED_FUNCTION_27_38();
  v133 = &off_282938728;
  v134 = sub_2166D381C(v7, v8);
  v135 = v3;
  OUTLINED_FUNCTION_40_2();
  v75 = type metadata accessor for PaginatingGridView();
  sub_2170089F4();
  OUTLINED_FUNCTION_25_35();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15(WitnessTable, MEMORY[0x277CDFC60]);
  v78 = v9;
  swift_getWitnessTable();
  v73 = MEMORY[0x277CDE820];
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  OUTLINED_FUNCTION_7_76();
  v84 = v4;
  v126 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v126;
  v128 = MEMORY[0x277CE1410];
  v86 = MEMORY[0x277CDF0A8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  v10 = type metadata accessor for TopSongsShelfCollection();
  sub_2170099F4();
  OUTLINED_FUNCTION_21_40();
  v11 = swift_getWitnessTable();
  v76 = v10;
  v79 = v2;
  v12 = MEMORY[0x277CDE3A8];
  v77 = v11;
  v80 = MEMORY[0x277CDEB68];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_0();
  sub_21700B1D4();
  v131 = v11;
  v132 = v12;
  v123 = v126;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  v81 = v13;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v87 = sub_21700B084();
  v88 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v72 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v71 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v70 = &v70 - v19;
  v20 = WitnessTable;
  v21 = v75;
  v129 = v75;
  v130 = WitnessTable;
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_46_22();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  v129 = v21;
  v130 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x277CDF678];
  v121 = v22;
  v122 = MEMORY[0x277CDF678];
  v119 = swift_getWitnessTable();
  v24 = MEMORY[0x277CDFC60];
  v120 = MEMORY[0x277CDFC60];
  v117 = swift_getWitnessTable();
  v118 = MEMORY[0x277CDF918];
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  v27 = sub_2166D9530(v26, &qword_27CABFC30);
  v115 = v25;
  v116 = v27;
  v28 = swift_getWitnessTable();
  v112 = v85;
  v113 = v28;
  v114 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_34_4();
  v75 = sub_21700F164();
  sub_2170089F4();
  v29 = sub_2170089F4();
  v110 = v77;
  v111 = v24;
  v108 = swift_getWitnessTable();
  v109 = v23;
  v30 = swift_getWitnessTable();
  v31 = v79;
  v129 = v29;
  v130 = v79;
  v131 = v30;
  v32 = MEMORY[0x277CDE3A8];
  v132 = MEMORY[0x277CDE3A8];
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  v129 = v29;
  v130 = v31;
  v131 = v30;
  v132 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_26_38();
  v35 = sub_2166D9530(v34, &qword_27CABC210);
  v106 = v33;
  v107 = v35;
  v36 = v82;
  v37 = swift_getWitnessTable();
  v103 = v85;
  v104 = v37;
  v105 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v86 = sub_21700AF94();
  v38 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v70 - v46;
  v48 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v85 = v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v70 - v51;
  if (sub_216B3C774(v36))
  {
    sub_216B3C8D0(v36, v44);
    OUTLINED_FUNCTION_6_7();
    v91 = swift_getWitnessTable();
    v92 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_8_72();
    v53 = swift_getWitnessTable();
    v54 = OUTLINED_FUNCTION_44_21();
    sub_2166C24DC(v54, v55, v53);
    v56 = *(v40 + 8);
    v57 = OUTLINED_FUNCTION_44_21();
    v56(v57);
    sub_2166C24DC(v47, v38, v53);
    OUTLINED_FUNCTION_7_1();
    v89 = swift_getWitnessTable();
    v90 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_21();
    sub_2166C2718();
    v58 = OUTLINED_FUNCTION_44_21();
    v56(v58);
    (v56)(v47, v38);
  }

  else
  {
    v59 = v71;
    sub_216B3CF8C(v36, v71);
    OUTLINED_FUNCTION_7_1();
    v101 = swift_getWitnessTable();
    v102 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_8_72();
    v60 = v88;
    v61 = swift_getWitnessTable();
    v84 = v48;
    v62 = v70;
    sub_2166C24DC(v59, v60, v61);
    v63 = *(v72 + 8);
    v63(v59, v60);
    sub_2166C24DC(v62, v60, v61);
    OUTLINED_FUNCTION_6_7();
    v99 = swift_getWitnessTable();
    v100 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    sub_2166C2CB0();
    v63(v59, v60);
    v64 = v62;
    v48 = v84;
    v63(v64, v60);
  }

  v97 = swift_getWitnessTable();
  v65 = MEMORY[0x277CDF918];
  v98 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_8_72();
  v66 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_1();
  v95 = swift_getWitnessTable();
  v96 = v65;
  v67 = swift_getWitnessTable();
  v93 = v66;
  v94 = v67;
  OUTLINED_FUNCTION_6_1();
  v68 = swift_getWitnessTable();
  sub_2166C24DC(v52, v48, v68);
  return (*(v85 + 8))(v52, v48);
}

uint64_t sub_216B3C774(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return (0xF8u >> v8) & 1;
}

uint64_t sub_216B3C8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = v2;
  v20 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v50 = &off_282938728;
  v51 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v52 = v21;
  type metadata accessor for PaginatingGridView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30);
  sub_2170089F4();
  sub_21700B1D4();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = MEMORY[0x277CDF678];
  v44 = OpaqueTypeConformance2;
  v45 = MEMORY[0x277CDF678];
  v5 = swift_getWitnessTable();
  v6 = MEMORY[0x277CDFC60];
  v42 = v5;
  v43 = MEMORY[0x277CDFC60];
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF918];
  v38 = swift_getWitnessTable();
  v39 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30);
  v35 = WitnessTable;
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CE1410];
  v15 = MEMORY[0x277CDF0A8];
  swift_getWitnessTable();
  sub_21700B084();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  v17 = sub_21700F164();
  type metadata accessor for TopSongsShelfCollection();
  sub_2170089F4();
  v7 = sub_2170089F4();
  v8 = sub_2170099F4();
  v33 = swift_getWitnessTable();
  v34 = v6;
  v31 = swift_getWitnessTable();
  v32 = v4;
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  sub_2170089F4();
  sub_21700B1D4();
  v46 = v7;
  v47 = v8;
  v48 = v9;
  v49 = MEMORY[0x277CDE3A8];
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210);
  v26 = WitnessTable;
  v27 = swift_getWitnessTable();
  v28 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_21700B084();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0);
  sub_2170089F4();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v10 = sub_21700AF94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  sub_217009184();
  v23 = v22;
  v24 = v21;
  v25 = v18;
  sub_21700AF84();
  sub_217009CA4();
  swift_getWitnessTable();
  sub_21700AAB4();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_216B3CF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v14 = v2;
  v32 = &off_282938728;
  v33 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v34 = v3;
  type metadata accessor for PaginatingGridView();
  sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v27 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  v23 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_21700B084();
  sub_21700F164();
  v4 = type metadata accessor for TopSongsShelfCollection();
  v5 = sub_2170099F4();
  v6 = swift_getWitnessTable();
  v7 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v7;
  v20 = v23;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_21700B084();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v8 = sub_21700B084();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  sub_2170093C4();
  v17 = v14;
  v18 = v3;
  v19 = v15;
  sub_21700B074();
  sub_217009CA4();
  swift_getWitnessTable();
  sub_21700AAB4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_216B3D450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v180 = a2;
  v181 = a3;
  v169 = a1;
  v167 = a4;
  v182 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  type metadata accessor for TopSongsShelfCollection();
  sub_2170089F4();
  v4 = sub_2170089F4();
  v5 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v229 = MEMORY[0x277CDFC60];
  v6 = MEMORY[0x277CDFAD8];
  v226 = swift_getWitnessTable();
  v227 = MEMORY[0x277CDF678];
  v174 = v6;
  v7 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  sub_2170089F4();
  v8 = sub_21700B1D4();
  v176 = swift_getWitnessTable();
  v214 = v4;
  v215 = v5;
  v216 = v7;
  v217 = MEMORY[0x277CDE3A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v225 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210);
  v221 = v176;
  v222 = swift_getWitnessTable();
  v223 = MEMORY[0x277CE1410];
  v175 = MEMORY[0x277CDF0A8];
  v153 = v8;
  v147 = swift_getWitnessTable();
  v9 = sub_21700B084();
  v150 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v148 = &v141 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0);
  v178 = v9;
  v11 = sub_2170089F4();
  v154 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v152 = &v141 - v12;
  v179 = v13;
  v14 = sub_2170089F4();
  v156 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v155 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v149 = &v141 - v17;
  MEMORY[0x28223BE20](v18);
  v151 = &v141 - v19;
  v20 = sub_2170090F4();
  v145 = *(v20 - 8);
  v146 = v20;
  MEMORY[0x28223BE20](v20);
  v144 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v14;
  v171 = sub_21700F164();
  v166 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v177 = &v141 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  v26 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v27 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v28 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v214 = v25;
  v215 = v26;
  v216 = v180;
  v217 = *&v27;
  v218 = &off_282938728;
  v219 = v28;
  v220 = v181;
  v29 = type metadata accessor for PaginatingGridView();
  v30 = swift_getWitnessTable();
  v214 = v29;
  v215 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30);
  sub_2170089F4();
  v31 = sub_21700B1D4();
  v214 = v29;
  v215 = v30;
  v212 = swift_getOpaqueTypeConformance2();
  v213 = MEMORY[0x277CDF678];
  v210 = swift_getWitnessTable();
  v211 = MEMORY[0x277CDFC60];
  v208 = swift_getWitnessTable();
  v209 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30);
  v206 = v32;
  v207 = v33;
  v34 = swift_getWitnessTable();
  v203 = v176;
  v204 = v34;
  v205 = MEMORY[0x277CE1410];
  v35 = swift_getWitnessTable();
  v165 = v31;
  v158 = v35;
  v36 = sub_21700B084();
  swift_getTupleTypeMetadata2();
  v37 = sub_21700B4E4();
  v161 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v160 = &v141 - v38;
  v157 = *(v36 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v159 = &v141 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  MEMORY[0x28223BE20](v44 - 8);
  v162 = &v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v141 - v47;
  v168 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v168);
  v164 = &v141 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v141 - v51;
  v175 = v37;
  v176 = sub_21700F164();
  v173 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v182 = &v141 - v55;
  v56 = sub_217008844();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v59 = &v141 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  v61 = v169;
  sub_216C0C570(v60, v62, v63, v64, v65, v66, v67, v68, v141, v60, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v163 = sub_217008834();
  (*(v57 + 8))(v59, v56);
  v69 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(0);
  v70 = v69;
  v71 = *(v61 + *(v69 + 36));
  v143 = v71;
  if (!v71)
  {
    goto LABEL_4;
  }

  sub_216681B04(v61 + *(v69 + 32), v48, &qword_27CABDCC0);
  if (__swift_getEnumTagSinglePayload(v48, 1, v168) == 1)
  {
    sub_2166997CC(v48, &qword_27CABDCC0);
LABEL_4:
    v72 = v174;
    __swift_storeEnumTagSinglePayload(v174, 1, 1, v175);
    swift_getWitnessTable();
    sub_2168D4034(v72, v182);
    v165 = *(v173 + 8);
    v165(v72, v176);
    goto LABEL_9;
  }

  v141 = v52;
  sub_216B45350(v48, v52, _s7SectionV6HeaderVMa);
  if (v163)
  {
    v73 = 0.5;
  }

  else
  {
    v73 = 0.44;
  }

  v74 = sub_2170093C4();
  v75 = v61;
  MEMORY[0x28223BE20](v74);
  v76 = v181;
  *(&v141 - 6) = v180;
  *(&v141 - 5) = v76;
  *(&v141 - 4) = v61;
  *(&v141 - 3) = v71;
  *(&v141 - 2) = v73;
  *(&v141 - 1) = v52;
  sub_21700B074();
  v77 = swift_getWitnessTable();
  v78 = v159;
  sub_2166C24DC(v41, v36, v77);
  v79 = v157;
  v158 = v70;
  v80 = *(v157 + 8);
  v80(v41, v36);
  (*(v79 + 16))(v41, v78, v36);
  v183 = 0x403C000000000000;
  v184 = 0;
  v214 = v41;
  v215 = &v183;
  v197 = v36;
  v198 = MEMORY[0x277CE1180];
  v195 = v77;
  v196 = MEMORY[0x277CE1170];
  v61 = v75;
  v81 = v160;
  sub_216984F84(&v214, 2, &v197);

  v80(v78, v36);
  v70 = v158;
  v80(v41, v36);
  v83 = v174;
  v82 = v175;
  (*(v161 + 32))(v174, v81, v175);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v82);
  swift_getWitnessTable();
  sub_2168D4034(v83, v182);
  v165 = *(v173 + 8);
  v165(v83, v176);
  sub_216B454EC(v141, _s7SectionV6HeaderVMa);
LABEL_9:
  v84 = (v61 + *(v70 + 28));
  v85 = *v84;
  v86 = v171;
  v87 = v172;
  v88 = v170;
  v89 = MEMORY[0x277CDF918];
  if (!*v84)
  {
    goto LABEL_13;
  }

  v90 = v84[1];
  if (!sub_2166BF3C8(*v84))
  {
    goto LABEL_13;
  }

  v91 = v61 + *(v70 + 24);
  v92 = v162;
  sub_216681B04(v91, v162, &qword_27CABDCC0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v168) == 1)
  {
    sub_2166997CC(v92, &qword_27CABDCC0);
LABEL_13:
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v87);
    v93 = swift_getWitnessTable();
    v94 = sub_2166D9530(&qword_27CAC33E8, &qword_27CAC33E0);
    v201 = v93;
    v202 = v94;
    v199 = swift_getWitnessTable();
    v200 = v89;
    swift_getWitnessTable();
    v95 = v177;
    sub_2168D4034(v88, v177);
    v96 = v166;
    v181 = *(v166 + 8);
    v181(v88, v86);
    goto LABEL_14;
  }

  sub_216B45350(v92, v164, _s7SectionV6HeaderVMa);
  v104 = v142;
  v105 = v61 + *(v142 + 48);
  v106 = *v105;
  if (*(v105 + 8) == 1)
  {
    v107 = *v105;
  }

  else
  {

    sub_21700ED94();
    v108 = sub_217009C34();
    sub_217007BC4();

    v109 = v144;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v106, 0);
    (*(v145 + 8))(v109, v146);
    v107 = *&v214;
  }

  v110 = v61 + *(v104 + 64);
  v111 = *(v110 + 24);
  if (*(v110 + 32) == 1)
  {
    v112 = *(v110 + 24);
  }

  else
  {
    v113 = *v110;
    v114 = *(v110 + 8);
    v115 = *(v110 + 16);

    sub_21700ED94();
    v116 = sub_217009C34();
    sub_217007BC4();

    v117 = v144;
    sub_2170090E4();
    swift_getAtKeyPath();
    v118 = v113;
    v61 = v169;
    sub_21680E444(v118, v114, v115, v111, 0);
    (*(v145 + 8))(v117, v146);
    v112 = v217;
  }

  if (v163)
  {
    v119 = 0.5;
  }

  else
  {
    v119 = 0.56;
  }

  v120 = sub_2170093C4();
  MEMORY[0x28223BE20](v120);
  v121 = v143 == 0;
  v122 = v143 != 0;
  v123 = 1.0;
  if (v143)
  {
    v123 = v119;
  }

  v124 = v181;
  *(&v141 - 8) = v180;
  *(&v141 - 7) = v124;
  *(&v141 - 6) = v61;
  *(&v141 - 5) = v85;
  *(&v141 - 4) = v90;
  *(&v141 - 3) = v123 * (v107 - v112);
  *(&v141 - 2) = v164;
  v125 = 0xC03C000000000000;
  if (v121)
  {
    v125 = 0;
  }

  v181 = v125;
  v126 = v148;
  sub_21700B074();
  v127 = sub_21700B3C4();
  MEMORY[0x28223BE20](v127);
  *(&v141 - 16) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33F0);
  v128 = v178;
  v129 = swift_getWitnessTable();
  sub_216B44C24();
  v130 = v152;
  sub_21700AA94();
  (*(v150 + 8))(v126, v128);
  sub_217009CB4();
  v131 = sub_2166D9530(&qword_27CAC33E8, &qword_27CAC33E0);
  v187 = v129;
  v188 = v131;
  v132 = v179;
  v133 = swift_getWitnessTable();
  v134 = v149;
  sub_21700AAB4();
  (*(v154 + 8))(v130, v132);
  v185 = v133;
  v186 = MEMORY[0x277CDF918];
  v135 = v172;
  v136 = swift_getWitnessTable();
  v137 = v151;
  sub_2166C24DC(v134, v135, v136);
  v138 = v156;
  v139 = *(v156 + 8);
  v139(v134, v135);
  v140 = v155;
  sub_2166C24DC(v137, v135, v136);
  v139(v137, v135);
  v88 = v170;
  (*(v138 + 32))(v170, v140, v135);
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v135);
  v95 = v177;
  sub_2168D4034(v88, v177);
  v96 = v166;
  v86 = v171;
  v181 = *(v166 + 8);
  v181(v88, v171);
  sub_216B454EC(v164, _s7SectionV6HeaderVMa);
LABEL_14:
  v97 = v174;
  v98 = v176;
  (*(v173 + 16))(v174, v182, v176);
  v214 = v97;
  (*(v96 + 16))(v88, v95, v86);
  v215 = v88;
  v197 = v98;
  v198 = v86;
  v194 = swift_getWitnessTable();
  v195 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v100 = sub_2166D9530(&qword_27CAC33E8, &qword_27CAC33E0);
  v192 = v99;
  v193 = v100;
  v190 = swift_getWitnessTable();
  v191 = MEMORY[0x277CDF918];
  v189 = swift_getWitnessTable();
  v196 = swift_getWitnessTable();
  sub_216984F84(&v214, 2, &v197);
  v101 = v181;
  v181(v177, v86);
  v102 = v165;
  v165(v182, v98);
  v101(v88, v86);
  return v102(v97, v98);
}

uint64_t sub_216B3EB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v32 = a6;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  v55 = a4;
  v56 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v57 = &off_282938728;
  v58 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v59 = a5;
  v10 = type metadata accessor for PaginatingGridView();
  WitnessTable = swift_getWitnessTable();
  v53 = v10;
  v54 = WitnessTable;
  v25[1] = MEMORY[0x277CDE820];
  swift_getOpaqueTypeMetadata2();
  v25[2] = sub_2170089F4();
  v28 = sub_2170089F4();
  v27 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30);
  sub_2170089F4();
  v11 = sub_21700B1D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  v37 = a4;
  v38 = a5;
  v39 = v29;
  v40 = v30;
  v41 = a7;
  v33 = a4;
  v34 = a5;
  v35 = v31;
  v36 = v29;
  v18 = swift_getWitnessTable();
  v53 = v10;
  v54 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x277CDF678];
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CDFC60];
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CDF918];
  v19 = swift_getWitnessTable();
  v20 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30);
  v45 = v19;
  v46 = v20;
  v21 = swift_getWitnessTable();
  sub_216ED5418();
  v42 = v18;
  v43 = v21;
  v44 = MEMORY[0x277CE1410];
  v22 = swift_getWitnessTable();
  sub_2166C24DC(v14, v11, v22);
  v23 = *(v12 + 8);
  v23(v14, v11);
  sub_2166C24DC(v17, v11, v22);
  return (v23)(v17, v11);
}

uint64_t sub_216B3EF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a2;
  v93 = a5;
  v8 = sub_2170090F4();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v94 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  v11 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v12 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v13 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v105 = v10;
  v106 = v11;
  v107 = a3;
  v108 = v12;
  v14 = a1;
  v109 = &off_282938728;
  v110 = v13;
  v111 = a4;
  v15 = type metadata accessor for PaginatingGridView();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v70 - v17;
  WitnessTable = swift_getWitnessTable();
  v105 = v15;
  v106 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = v70 - v21;
  v80 = v23;
  v24 = sub_2170089F4();
  v82 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v81 = v70 - v25;
  v26 = sub_2170089F4();
  v86 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v83 = v70 - v27;
  v89 = v28;
  v29 = sub_2170089F4();
  v87 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v84 = v70 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30);
  v90 = v29;
  v92 = sub_2170089F4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v88 = v70 - v33;
  v34 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  sub_216B3FB98(v78, v34, v18);
  v78 = v22;
  v77 = WitnessTable;
  sub_21700A574();
  v35 = *(v16 + 8);
  v75 = v15;
  v35(v18, v15);
  v36 = v14 + *(v34 + 48);
  v37 = *v36;
  if (*(v36 + 8) == 1)
  {
    v38 = v95;
    v39 = v94;
  }

  else
  {

    sub_21700ED94();
    v40 = sub_217009C34();
    sub_217007BC4();

    v39 = v94;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v37, 0);
    v38 = v95;
    (*(v95 + 8))(v39, v96);
  }

  v74 = v34;
  v41 = v14 + *(v34 + 64);
  v43 = *v41;
  v42 = *(v41 + 8);
  v45 = *(v41 + 16);
  v44 = *(v41 + 24);
  v73 = *(v41 + 32);
  v76 = v42;
  v72 = v45;
  v71 = v44;
  if (v73 != 1)
  {

    sub_21700ED94();
    v46 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v43, v42, v45, v44, 0);
    v70[0] = v24;
    v47 = *(v38 + 8);
    v70[1] = v14;
    v48 = v96;
    v47(v39, v96);

    sub_21700ED94();
    v49 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v43, v42, v45, v44, 0);
    v47(v39, v48);
    v24 = v70[0];
  }

  v105 = v75;
  v106 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v80;
  sub_2166BF464();
  v52 = v81;
  v53 = v78;
  sub_21700A9C4();
  (*(v79 + 8))(v53, v51);
  sub_216B3FF20(v74);
  v103 = OpaqueTypeConformance2;
  v104 = MEMORY[0x277CDF678];
  v54 = swift_getWitnessTable();
  sub_2166BF464();
  v55 = v83;
  sub_21700A9D4();
  (*(v82 + 8))(v52, v24);
  sub_217009CB4();
  if ((v73 & 1) == 0)
  {

    sub_21700ED94();
    v56 = sub_217009C34();
    sub_217007BC4();

    v57 = v94;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v43, v76, v72, v71, 0);
    (*(v95 + 8))(v57, v96);
  }

  v101 = v54;
  v102 = MEMORY[0x277CDFC60];
  v58 = v89;
  v59 = swift_getWitnessTable();
  v60 = v84;
  sub_21700AAB4();
  (*(v86 + 8))(v55, v58);
  v99 = v59;
  v100 = MEMORY[0x277CDF918];
  v61 = v90;
  v62 = swift_getWitnessTable();
  v63 = v85;
  sub_21700AA54();
  (*(v87 + 8))(v60, v61);
  v64 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30);
  v97 = v62;
  v98 = v64;
  v65 = v92;
  v66 = swift_getWitnessTable();
  v67 = v88;
  sub_2166C24DC(v63, v65, v66);
  v68 = *(v91 + 8);
  v68(v63, v65);
  sub_2166C24DC(v67, v65, v66);
  return (v68)(v67, v65);
}

void sub_216B3FB98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = sub_2170090F4();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21701D820;
  *(v12 + 32) = a1;
  v28 = *(a2 + 24);
  type metadata accessor for CatalogPagePresenter();

  swift_getWitnessTable();
  v29 = sub_217008CB4();
  v30 = v11;
  v13 = (v3 + *(a2 + 36));
  sub_216B453B0(v13, v11, type metadata accessor for MappedSection);
  v14 = v3 + *(a2 + 52);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_21700ED94();
    v17 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v26 + 8))(v8, v27);
    v15 = v32[0];
  }

  v18 = *v13;
  v19 = v13[1];
  v32[0] = v18;
  v32[1] = v19;
  v33 = xmmword_217047810;
  v34 = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D0);
  v21 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  v22 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v23 = sub_2166D381C(qword_27CAC3430, type metadata accessor for ArtistLatestReleaseLockupView);
  v24 = OUTLINED_FUNCTION_0_28();
  sub_21700DF14();
  sub_216C099F8(v12, v29, v30, v15, &off_28292BE68, v32, v24, sub_216B438F4, v31, 0, v20, v21, v22, &off_282938728, v23);
}

double sub_216B3FF20(uint64_t a1)
{
  v3 = sub_217008844();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2170090F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultMetrics];
  [v11 scaledValueForValue_];
  v13 = v12;

  v22 = v1 + *(a1 + 56);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = *v22;
  }

  else
  {

    sub_21700ED94();
    v29 = v7;
    v25 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v23, 0);
    v14 = (*(v8 + 8))(v10, v29);
    v24 = HIBYTE(v30);
  }

  sub_216C0C570(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v26 = sub_217008834();
  (*(v4 + 8))(v6, v3);
  v27 = 3.0;
  if (v24 < 2)
  {
    v27 = 4.0;
  }

  if (v26)
  {
    v27 = 2.0;
  }

  return v13 * v27;
}

uint64_t sub_216B401B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_216B45350(a1, a3, _s7SectionV6HeaderVMa);
  v6 = *a2;
  v5 = a2[1];
  v7 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  v8 = (a3 + v7[9]);
  *v8 = v6;
  v8[1] = v5;
  v9 = type metadata accessor for MappedSection(0);
  *(a3 + v7[10]) = *(a2 + *(v9 + 52));
  v10 = *(a2 + *(v9 + 48));
  sub_21700DF14();
  result = sub_216B454EC(a2, type metadata accessor for MappedSection);
  *(a3 + v7[11]) = v10;
  return result;
}

uint64_t sub_216B40278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v33 = a4;
  v32 = a3;
  v31 = a2;
  v30 = a1;
  v34 = a7;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  type metadata accessor for TopSongsShelfCollection();
  sub_2170089F4();
  v11 = sub_2170089F4();
  v27 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v57 = MEMORY[0x277CDFC60];
  v29 = MEMORY[0x277CDFAD8];
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x277CDF678];
  v28 = v11;
  v12 = swift_getWitnessTable();
  v50 = v11;
  v51 = v27;
  v52 = v12;
  v53 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  sub_2170089F4();
  v13 = sub_21700B1D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v39 = a5;
  v40 = a6;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = a8;
  v35 = a5;
  v36 = a6;
  v37 = v33;
  v38 = v30;
  v20 = swift_getWitnessTable();
  v50 = v28;
  v51 = v27;
  v52 = v12;
  v53 = MEMORY[0x277CDE3A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210);
  v48 = OpaqueTypeConformance2;
  v49 = v22;
  v23 = swift_getWitnessTable();
  sub_216ED5418();
  v45 = v20;
  v46 = v23;
  v47 = MEMORY[0x277CE1410];
  v24 = swift_getWitnessTable();
  sub_2166C24DC(v16, v13, v24);
  v25 = *(v14 + 8);
  v25(v16, v13);
  sub_2166C24DC(v19, v13, v24);
  return (v25)(v19, v13);
}

uint64_t sub_216B406B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v76 = a4;
  v77 = a2;
  v5 = sub_2170099F4();
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2170090F4();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopSongsShelfCollection();
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v50 - v12;
  v13 = sub_2170089F4();
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v50 - v14;
  v15 = sub_2170089F4();
  v68 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v50 - v16;
  WitnessTable = swift_getWitnessTable();
  v86 = WitnessTable;
  v87 = MEMORY[0x277CDFC60];
  v56 = swift_getWitnessTable();
  v84 = v56;
  v85 = MEMORY[0x277CDF678];
  v17 = swift_getWitnessTable();
  v71 = v15;
  v88 = v15;
  v89 = v5;
  v75 = v5;
  v58 = v17;
  *&v90 = v17;
  *(&v90 + 1) = MEMORY[0x277CDE3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v57 = &v50 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  v62 = OpaqueTypeMetadata2;
  v20 = sub_2170089F4();
  v64 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v60 = &v50 - v23;
  v24 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  v25 = (a1 + v24[9]);
  v26 = v25[1];
  v54 = *v25;
  v63 = v10;
  sub_216B453B0(v25, v10, type metadata accessor for MappedSection);
  type metadata accessor for CatalogPagePresenter();
  sub_21700DF14();
  sub_21700DF14();
  swift_getWitnessTable();
  sub_217008CB4();
  v27 = a1;
  v28 = a1 + v24[13];
  v29 = *v28;
  LOBYTE(OpaqueTypeMetadata2) = *(v28 + 8);

  if ((OpaqueTypeMetadata2 & 1) == 0)
  {
    sub_21700ED94();
    v30 = sub_217009C34();
    sub_217007BC4();

    v31 = v51;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v52 + 8))(v31, v53);
    v29 = v80;
  }

  v88 = v54;
  v89 = v26;
  v90 = xmmword_217047820;
  v91 = 1;
  v32 = *(v27 + v24[10]);

  v33 = v67;
  sub_216B410B0(&v88, v77, v72, v63, v29, &off_28292BE68, v32, v67);
  sub_216B3FF20(v24);
  sub_2166BF464();
  v34 = v66;
  sub_21700A9D4();
  (*(v70 + 8))(v33, v11);
  sub_2166BF464();
  v35 = v65;
  sub_21700A9C4();
  (*(v69 + 8))(v34, v13);
  v36 = v73;
  sub_2170099E4();
  v37 = v57;
  v38 = v71;
  v39 = v75;
  v40 = v58;
  v41 = MEMORY[0x277CDE3A8];
  sub_21700A7B4();
  (*(v74 + 8))(v36, v39);
  (*(v68 + 8))(v35, v38);
  v80 = v38;
  v81 = v39;
  v82 = v40;
  v83 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v62;
  OUTLINED_FUNCTION_10_4();
  v44 = v59;
  sub_21700AA64();
  (*(v61 + 8))(v37, v43);
  v45 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210);
  v78 = OpaqueTypeConformance2;
  v79 = v45;
  v46 = swift_getWitnessTable();
  v47 = v60;
  sub_2166C24DC(v44, v20, v46);
  v48 = *(v64 + 8);
  v48(v44, v20);
  sub_2166C24DC(v47, v20, v46);
  return (v48)(v47, v20);
}

uint64_t sub_216B410B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{

  v16 = type metadata accessor for TopSongsShelfCollection();
  v17 = a8 + v16[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v16[14];
  *(a8 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v19 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v19;
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  result = sub_216B45350(a4, a8 + v16[10], type metadata accessor for MappedSection);
  *(a8 + v16[11]) = a7;
  v21 = (a8 + v16[12]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

uint64_t sub_216B411F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v25 - v19;
  sub_216B453B0(a1, v10, _s7SectionV6HeaderVMa);
  v21 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  sub_216B453B0(a2 + *(v21 + 36), v7, type metadata accessor for MappedSection);
  sub_216B401B0(v10, v7, v17);
  OUTLINED_FUNCTION_7_76();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v17, v11, WitnessTable);
  v23 = *(v13 + 8);
  v23(v17, v11);
  sub_2166C24DC(v20, v11, WitnessTable);
  return (v23)(v20, v11);
}

void *sub_216B4142C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217015230;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    *(v3 + 32) = sub_21700AC44();
    v6 = [v4 systemBackgroundColor];
    sub_21700AC44();
    v7 = sub_21700AD04();

    *(v3 + 40) = v7;
    *(v3 + 48) = sub_21700ACD4();
    MEMORY[0x21CE9C070](v3);
    sub_21700B574();
    sub_21700B584();
    sub_2170085D4();
    sub_21700B3B4();
    sub_2170083C4();
    LOBYTE(v3) = sub_217009C94();
    sub_217007F24();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v21[0] = 0;
    memcpy(__dst, __src, 0x58uLL);
    LOBYTE(__dst[11]) = v3;
    __dst[12] = v9;
    __dst[13] = v11;
    __dst[14] = v13;
    __dst[15] = v15;
    LOBYTE(__dst[16]) = 0;
    __dst[17] = 0x3FF0000000000000;
    nullsub_1(__dst, v16, v17);
    memcpy(v21, __dst, sizeof(v21));
  }

  else
  {
    sub_216B44EF0(v21);
  }

  return memcpy(a2, v21, 0x90uLL);
}

uint64_t sub_216B415F4@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a1;
  v109 = a4;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  v6 = type metadata accessor for TopSongsShelfCollection();
  v7 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  v10 = sub_21700B1D4();
  v11 = swift_getWitnessTable();
  v127 = v6;
  v128 = v7;
  v129 = WitnessTable;
  v130 = v9;
  v134 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = MEMORY[0x277CE1410];
  v98 = v10;
  v93 = swift_getWitnessTable();
  v12 = sub_21700B084();
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v94 = &v90 - v13;
  v115 = v14;
  v15 = sub_2170089F4();
  v99 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v97 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v90 - v18;
  v92 = sub_2170090F4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v15;
  v108 = sub_21700F164();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v114 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  v24 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v25 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v26 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v127 = v23;
  v128 = v24;
  v102 = a2;
  v129 = a2;
  v130 = v25;
  v131 = &off_282938728;
  v132 = v26;
  v103 = a3;
  v133 = a3;
  type metadata accessor for PaginatingGridView();
  v27 = sub_2170089F4();
  v126[7] = swift_getWitnessTable();
  v126[8] = MEMORY[0x277CDFC60];
  v28 = swift_getWitnessTable();
  v127 = v27;
  v128 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  v127 = v27;
  v128 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v126[4] = v11;
  v126[5] = v29;
  v126[6] = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  v30 = sub_21700B084();
  v104 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v90 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  MEMORY[0x28223BE20](v36 - 8);
  v100 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v90 - v39;
  v110 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v110);
  v101 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v90 - v43;
  v113 = sub_21700F164();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v46 = &v90 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v111 = &v90 - v48;
  v49 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(0);
  v50 = v49;
  v51 = *&v117[*(v49 + 36)];
  if (v51)
  {
    sub_216681B04(&v117[*(v49 + 32)], v40, &qword_27CABDCC0);
    if (__swift_getEnumTagSinglePayload(v40, 1, v110) != 1)
    {
      sub_216B45350(v40, v44, _s7SectionV6HeaderVMa);

      v52 = sub_2170093C4();
      MEMORY[0x28223BE20](v52);
      v53 = v103;
      *(&v90 - 6) = v102;
      *(&v90 - 5) = v53;
      *(&v90 - 4) = v117;
      *(&v90 - 3) = v51;
      *(&v90 - 2) = v44;
      sub_21700B074();

      v54 = swift_getWitnessTable();
      sub_2166C24DC(v32, v30, v54);
      v55 = v104;
      v56 = *(v104 + 8);
      v56(v32, v30);
      sub_2166C24DC(v35, v30, v54);
      v56(v35, v30);
      (*(v55 + 32))(v46, v32, v30);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v30);
      sub_2168D4034(v46, v111);
      v104 = *(v112 + 8);
      (v104)(v46, v113);
      sub_216B454EC(v44, _s7SectionV6HeaderVMa);
      goto LABEL_6;
    }

    sub_2166997CC(v40, &qword_27CABDCC0);
  }

  __swift_storeEnumTagSinglePayload(v46, 1, 1, v30);
  swift_getWitnessTable();
  sub_2168D4034(v46, v111);
  v104 = *(v112 + 8);
  (v104)(v46, v113);
LABEL_6:
  v57 = &v117[*(v50 + 28)];
  v58 = *v57;
  v59 = MEMORY[0x277CDF678];
  v60 = v116;
  v105 = v30;
  if (!v58)
  {
    goto LABEL_10;
  }

  v61 = v57[1];
  if (!sub_2166BF3C8(v58))
  {
    goto LABEL_10;
  }

  v62 = &v117[*(v50 + 24)];
  v63 = v100;
  sub_216681B04(v62, v100, &qword_27CABDCC0);
  if (__swift_getEnumTagSinglePayload(v63, 1, v110) == 1)
  {
    sub_2166997CC(v63, &qword_27CABDCC0);
LABEL_10:
    v64 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v60);
    v126[2] = swift_getWitnessTable();
    v126[3] = v59;
    swift_getWitnessTable();
    v65 = v107;
    sub_2168D4034(v64, v107);
    v66 = v106;
    v67 = *(v106 + 8);
    v68 = v108;
    v67(v64, v108);
    goto LABEL_11;
  }

  sub_216B45350(v63, v101, _s7SectionV6HeaderVMa);
  v75 = &v117[*(type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView() + 48)];
  v76 = *v75;
  if ((v75[8] & 1) == 0)
  {

    sub_21700ED94();
    v77 = sub_217009C34();
    sub_217007BC4();

    v60 = v116;
    v78 = v90;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v76, 0);
    (*(v91 + 8))(v78, v92);
  }

  v79 = sub_2170093C4();
  MEMORY[0x28223BE20](v79);
  v80 = v103;
  *(&v90 - 6) = v102;
  *(&v90 - 5) = v80;
  *(&v90 - 4) = v117;
  *(&v90 - 3) = v58;
  *(&v90 - 2) = v61;
  v81 = v101;
  *(&v90 - 1) = v101;
  v82 = v94;
  sub_21700B074();
  v83 = v115;
  v84 = swift_getWitnessTable();
  sub_2166BF464();
  v85 = v97;
  sub_21700A9C4();
  (*(v96 + 8))(v82, v83);
  v118 = v84;
  v119 = v59;
  v86 = swift_getWitnessTable();
  v87 = v95;
  sub_2166C24DC(v85, v60, v86);
  v88 = v99;
  v89 = *(v99 + 8);
  v89(v85, v60);
  sub_2166C24DC(v87, v60, v86);
  v89(v87, v60);
  v64 = v114;
  (*(v88 + 32))(v114, v85, v60);
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v60);
  v65 = v107;
  sub_2168D4034(v64, v107);
  v66 = v106;
  v67 = *(v106 + 8);
  v68 = v108;
  v67(v64, v108);
  sub_216B454EC(v81, _s7SectionV6HeaderVMa);
LABEL_11:
  v69 = v46;
  v70 = v111;
  v71 = v46;
  v72 = v113;
  (*(v112 + 16))(v69, v111, v113);
  v127 = v71;
  (*(v66 + 16))(v64, v65, v68);
  v128 = v64;
  v126[0] = v72;
  v126[1] = v68;
  v123 = swift_getWitnessTable();
  v124 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  v122 = MEMORY[0x277CDF678];
  v120 = swift_getWitnessTable();
  v125 = swift_getWitnessTable();
  sub_216984F84(&v127, 2, v126);
  v67(v65, v68);
  v73 = v104;
  (v104)(v70, v72);
  v67(v114, v68);
  return v73(v71, v72);
}

uint64_t sub_216B426C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a3;
  v25 = a2;
  v24 = a1;
  v27 = a6;
  v23 = a5;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  v43 = a4;
  v44 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v45 = &off_282938728;
  v46 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v47 = a5;
  type metadata accessor for PaginatingGridView();
  v8 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v40 = MEMORY[0x277CDFC60];
  v9 = swift_getWitnessTable();
  v41 = v8;
  v42 = v9;
  swift_getOpaqueTypeMetadata2();
  v10 = sub_21700B1D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v32 = a4;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v28 = a4;
  v29 = v23;
  v30 = v26;
  v31 = v24;
  v17 = swift_getWitnessTable();
  v41 = v8;
  v42 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_216ED5418();
  v36 = v17;
  v37 = OpaqueTypeConformance2;
  v38 = MEMORY[0x277CE1410];
  v19 = swift_getWitnessTable();
  sub_2166C24DC(v13, v10, v19);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_2166C24DC(v16, v10, v19);
  return (v20)(v16, v10);
}

uint64_t sub_216B42A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a5;
  v37 = *a2;
  v38 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v39 = a3;
  v40 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  v41 = &off_282938728;
  v42 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  v43 = a4;
  v8 = type metadata accessor for PaginatingGridView();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v28 = &v26 - v9;
  v10 = sub_2170089F4();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = &v26 - v11;
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  v37 = v10;
  v38 = v27;
  v30 = MEMORY[0x277CDE820];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  v20 = v28;
  sub_216B3FB98(a2, v19, v28);
  sub_216B42EF4(v19);
  sub_2166BF464();
  v21 = v29;
  sub_21700A9D4();
  (*(v32 + 8))(v20, v8);
  v22 = v27;
  sub_21700A574();
  (*(v31 + 8))(v21, v10);
  v37 = v10;
  v38 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v13 + 8);
  v24(v15, OpaqueTypeMetadata2);
  sub_2166C24DC(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v24)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_216B43004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v28 = a3;
  v27 = a2;
  v26 = a1;
  v30 = a7;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView();
  v9 = type metadata accessor for TopSongsShelfCollection();
  v24 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v43 = v9;
  v44 = v24;
  v45 = WitnessTable;
  v46 = MEMORY[0x277CDE3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_21700B1D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v35 = a5;
  v36 = a6;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v31 = a5;
  v32 = a6;
  v33 = v29;
  v34 = v26;
  v18 = swift_getWitnessTable();
  v43 = v9;
  v44 = v24;
  v45 = WitnessTable;
  v46 = MEMORY[0x277CDE3A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_216ED5418();
  v40 = v18;
  v41 = OpaqueTypeConformance2;
  v42 = MEMORY[0x277CE1410];
  v20 = swift_getWitnessTable();
  sub_2166C24DC(v14, v11, v20);
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_2166C24DC(v17, v11, v20);
  return (v21)(v17, v11);
}

uint64_t sub_216B43320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v54 = a4;
  v55 = a2;
  v5 = sub_2170099F4();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2170090F4();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopSongsShelfCollection();
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = &v38 - v12;
  WitnessTable = swift_getWitnessTable();
  v60 = v11;
  v61 = v5;
  v53 = v5;
  v44 = WitnessTable;
  *&v62 = WitnessTable;
  *(&v62 + 1) = MEMORY[0x277CDE3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v43 = &v38 - v18;
  v19 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  v20 = (a1 + v19[9]);
  v21 = v20[1];
  v42 = *v20;
  v45 = v10;
  sub_216B453B0(v20, v10, type metadata accessor for MappedSection);
  type metadata accessor for CatalogPagePresenter();
  sub_21700DF14();
  sub_21700DF14();
  swift_getWitnessTable();
  sub_217008CB4();
  v22 = v19[13];
  v49 = a1;
  v23 = a1 + v22;
  v24 = *v23;
  v25 = *(v23 + 8);

  if ((v25 & 1) == 0)
  {
    sub_21700ED94();
    v26 = sub_217009C34();
    sub_217007BC4();

    v27 = v39;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v40 + 8))(v27, v41);
    v24 = v56;
  }

  v60 = v42;
  v61 = v21;
  v62 = xmmword_217047820;
  v63 = 1;
  v28 = *(v49 + v19[10]);

  v29 = v46;
  sub_216B410B0(&v60, v55, v51, v45, v24, &off_28292BE68, v28, v46);
  v30 = v50;
  sub_2170099E4();
  v31 = v53;
  v32 = v44;
  v33 = MEMORY[0x277CDE3A8];
  sub_21700A7B4();
  (*(v52 + 8))(v30, v31);
  (*(v48 + 8))(v29, v11);
  v56 = v11;
  v57 = v31;
  v58 = v32;
  v59 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_2166C24DC(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v36 = *(v47 + 8);
  v36(v16, OpaqueTypeMetadata2);
  sub_2166C24DC(v35, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v36)(v35, OpaqueTypeMetadata2);
}

uint64_t sub_216B438F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  sub_2167CD8D8();

  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  v7 = a2 + v3[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v3[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v3[11];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  return result;
}

uint64_t sub_216B43A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3538);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - v5;
  v70 = sub_21700D8E4();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v56 - v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v56 - v11;
  v12 = type metadata accessor for DefaultSectionHeaderView();
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1628);
  v66 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - v16;
  v17 = type metadata accessor for DefaultSectionHeader();
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v25 = _s7SectionV6HeaderVMa(0);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  sub_216B453B0(v3, v28, _s7SectionV6HeaderVMa);
  v29 = &v28[*(v26 + 28)];
  v30 = v24;
  sub_216B452E0(v29, v24);
  v31 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v31) == 1)
  {
    goto LABEL_6;
  }

  v59 = v15;
  v60 = v4;
  sub_216681B04(v24, v21, &qword_27CABDCB8);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_216B454EC(v21, _s7SectionV6HeaderV12HeaderLockupOMa);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v47 = sub_2166D381C(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView);
    *&v73 = v12;
    *(&v73 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return sub_2166997CC(v30, &qword_27CABDCB8);
  }

  v57 = v24;
  v58 = v6;
  v32 = v69;
  sub_216B45350(v21, v69, type metadata accessor for DefaultSectionHeader);
  sub_216B453B0(v32, v14, type metadata accessor for DefaultSectionHeader);
  v33 = v12;
  v34 = v12[5];
  *&v14[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v35 = &v14[v12[6]];
  *v35 = swift_getKeyPath();
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  v35[32] = 0;
  v36 = v12[7];
  *&v14[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v37 = v12[8];
  *&v14[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0);
  swift_storeEnumTagMultiPayload();
  *&v73 = 0x402E000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  *&v73 = 0x402A000000000000;
  sub_2170082B4();
  *&v73 = 0x4038000000000000;
  sub_2170082B4();
  v73 = 0u;
  v74 = 0u;
  v39 = v62;
  v38 = v63;
  v40 = (v63 + *(v62 + 36));
  v42 = *v40;
  v41 = v40[1];
  v72[3] = MEMORY[0x277D837D0];
  v72[0] = v42;
  v72[1] = v41;
  sub_21700DF14();
  v43 = v61;
  sub_21700D8B4();
  sub_2166997CC(&v73, &unk_27CABF7A0);
  sub_2166997CC(v72, &unk_27CABF7A0);
  v44 = *(v38 + *(v39 + 44));
  *(&v74 + 1) = MEMORY[0x277D83B88];
  *&v73 = v44;
  sub_21700D8C4();
  v45 = *(v67 + 8);
  v45(v43, v70);
  sub_2166997CC(&v73, &unk_27CABF7A0);
  if (*(v38 + *(v39 + 40)) == 62)
  {
    v46 = 0;
    v73 = 0uLL;
    *&v74 = 0;
  }

  else
  {
    LOBYTE(v73) = *(v38 + *(v39 + 40));
    v46 = &_s7SectionV8ItemKindON;
  }

  v48 = v59;
  *(&v74 + 1) = v46;
  v49 = v64;
  v50 = v68;
  sub_21700D8C4();
  v51 = v70;
  v45(v50, v70);
  sub_2166997CC(&v73, &unk_27CABF7A0);
  v52 = sub_2166D381C(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView);
  v53 = v65;
  sub_21700A204();
  v45(v49, v51);
  sub_216B454EC(v14, type metadata accessor for DefaultSectionHeaderView);
  v54 = v66;
  (*(v66 + 16))(v58, v53, v48);
  swift_storeEnumTagMultiPayload();
  *&v73 = v33;
  *(&v73 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v54 + 8))(v53, v48);
  sub_216B454EC(v69, type metadata accessor for DefaultSectionHeader);
  v30 = v57;
  return sub_2166997CC(v30, &qword_27CABDCB8);
}

uint64_t sub_216B44394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v5 = a1 - 8;
  v57 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v55 = v6;
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217008844();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2170090F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3 + *(v5 + 60);
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    v25 = *v23;
  }

  else
  {
    v53 = v13;

    sub_21700ED94();
    v26 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v24, 0);
    v13 = (*(v12 + 8))(v22, v53);
    v25 = LOBYTE(v58[0]);
  }

  v27 = v54;
  sub_216C0C570(v13, v14, v15, v16, v17, v18, v19, v20, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *&v58[0], *(&v58[0] + 1));
  v28 = sub_217008834();
  (*(v8 + 8))(v10, v7);
  v29 = 3;
  if (v25 < 2)
  {
    v29 = 4;
  }

  if (v28)
  {
    v30 = 2;
  }

  else
  {
    v30 = v29;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  *(a2 + 32) = &unk_28291FA68;
  *(a2 + 40) = &off_28291DBE0;
  v31 = swift_allocObject();
  *(a2 + 8) = v31;
  sub_21698F234(v58, v31 + 16);
  *(v31 + 80) = &unk_28291FB08;
  *(v31 + 88) = &off_28291F9F0;
  *(v31 + 56) = v30;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  sub_216A906C4(v58);
  *(v31 + 120) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 112) = 0;
  v32 = *(v3 + 40);
  type metadata accessor for MappedSection(0);
  sub_216C71754(v32);
  v50 = v34;
  v51 = v33;
  v49 = v35;
  HIDWORD(v48) = v36;
  v37 = *(v3 + 8);
  v53 = *v3;
  v38 = *(v3 + 16);
  v39 = *(v3 + 24);
  HIDWORD(v52) = *(v3 + 32);
  v41 = v56;
  v40 = v57;
  (*(v57 + 16))(v56, v3, v27);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = *(v27 + 16);
  (*(v40 + 32))(v43 + v42, v41, v27);
  *a2 = v32;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3540) + 92);
  *(a2 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v45 = v50;
  *(a2 + 48) = v51;
  *(a2 + 56) = v45;
  *(a2 + 64) = v49;
  *(a2 + 72) = BYTE4(v48);
  *(a2 + 120) = sub_216B45410;
  *(a2 + 128) = v43;
  v46 = v53;
  *(a2 + 80) = v53;
  *(a2 + 88) = v37;
  *(a2 + 96) = v38;
  *(a2 + 104) = v39;
  LOBYTE(v41) = BYTE4(v52);
  *(a2 + 112) = BYTE4(v52);
  *(a2 + 136) = 0;
  sub_21700DF14();
  return sub_216B454AC(v46, v37, v38, v39, v41);
}

uint64_t sub_216B44838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v31 = a3;
  v4 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700D8E4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrackShelfLockupView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  v14 = (v12 + v10[6]);
  type metadata accessor for PlaybackPresenter();
  sub_2166D381C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

  *v14 = sub_217008CF4();
  v14[1] = v15;
  v16 = v10[7];
  *(v12 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v17 = v12 + v10[8];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  *v12 = v13;
  v18 = (v28 + *(type metadata accessor for TopSongsShelfCollection() + 40));
  v19 = *(v18 + *(type metadata accessor for MappedSection(0) + 52));
  if (v19 != 62)
  {
    sub_216C275C8(v19);
  }

  v20 = sub_216DE90F8();
  v21 = sub_21680DFFC(v20);
  v23 = v22;
  sub_216B454EC(v6, type metadata accessor for TrackLockup);
  if (v23)
  {
    v24 = MEMORY[0x277D837D0];
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v33[2] = 0;
  }

  v33[0] = v21;
  v33[1] = v23;
  v33[3] = v24;
  v26 = *v18;
  v25 = v18[1];
  v32[3] = MEMORY[0x277D837D0];
  v32[0] = v26;
  v32[1] = v25;
  sub_21700DF14();
  sub_21700D8D4();

  sub_2166997CC(v32, &unk_27CABF7A0);
  sub_2166997CC(v33, &unk_27CABF7A0);
  sub_2166D381C(qword_280E3AE78, type metadata accessor for TrackShelfLockupView);
  sub_21700A204();
  (*(v29 + 8))(v9, v30);
  return sub_216B454EC(v12, type metadata accessor for TrackShelfLockupView);
}

unint64_t sub_216B44C24()
{
  result = qword_27CAC33F8;
  if (!qword_27CAC33F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33F0);
    sub_216B44CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC33F8);
  }

  return result;
}

unint64_t sub_216B44CA8()
{
  result = qword_27CAC3400;
  if (!qword_27CAC3400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3408);
    sub_216B44D60();
    sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3400);
  }

  return result;
}

unint64_t sub_216B44D60()
{
  result = qword_27CAC3410;
  if (!qword_27CAC3410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3418);
    sub_216B44DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3410);
  }

  return result;
}

unint64_t sub_216B44DEC()
{
  result = qword_27CAC3420;
  if (!qword_27CAC3420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC490);
    sub_216B44E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3420);
  }

  return result;
}

unint64_t sub_216B44E78()
{
  result = qword_27CAC3428;
  if (!qword_27CAC3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3428);
  }

  return result;
}

void sub_216B44F74()
{
  sub_2166D8338();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MappedSection(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        sub_216B450D0();
        if (v3 <= 0x3F)
        {
          sub_216B45208(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_216B3BC0C(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
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

unint64_t sub_216B450D0()
{
  result = qword_280E2EAD8[0];
  if (!qword_280E2EAD8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E2EAD8);
  }

  return result;
}

void sub_216B45128()
{
  _s7SectionV6HeaderVMa(319);
  if (v0 <= 0x3F)
  {
    sub_216B45208(319, &qword_280E2C640, &_s7SectionV8ItemKindON, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B45208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_216B452E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B45350(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B453B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B45410@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TopSongsShelfCollection() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_216B44838(a1, v6, a2);
}

uint64_t sub_216B454AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_21700DF14();
    v5 = vars8;
  }

  return sub_21700DF14();
}

uint64_t sub_216B454EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216B45540()
{
  result = qword_27CAC3548;
  if (!qword_27CAC3548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3550);
    type metadata accessor for DefaultSectionHeaderView();
    sub_2166D381C(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3548);
  }

  return result;
}

void sub_216B45630()
{
  OUTLINED_FUNCTION_49();
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  sub_2170069C4();
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == *MEMORY[0x277D2A400] || v8 == *MEMORY[0x277D2A418])
  {
    goto LABEL_4;
  }

  if (v8 != *MEMORY[0x277D2A438] && v8 != *MEMORY[0x277D2A3C8])
  {
    if (v8 == *MEMORY[0x277D2A428] || v8 == *MEMORY[0x277D2A388] || v8 == *MEMORY[0x277D2A408])
    {
      goto LABEL_15;
    }

    if (v8 == *MEMORY[0x277D2A3B0] || v8 == *MEMORY[0x277D2A3B8] || v8 == *MEMORY[0x277D2A440])
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217013D90;
      sub_2170069C4();
      sub_216DF7928();
      v11 = v10;
      v12 = OUTLINED_FUNCTION_5_81();
      v13(v12);
      *(inited + 32) = v11;
      *(inited + 40) = v0;
      *(inited + 48) = sub_216B45BB4(224);
      *(inited + 56) = v14;
      sub_216B45A2C(inited);
      swift_setDeallocating();
      sub_2169FAC80();
      goto LABEL_5;
    }

    if (v8 == *MEMORY[0x277D2A450] || v8 == *MEMORY[0x277D2A3C0] || v8 == *MEMORY[0x277D2A3D0])
    {
      goto LABEL_15;
    }

    if (v8 == *MEMORY[0x277D2A3F8])
    {
      goto LABEL_4;
    }

    if (v8 == *MEMORY[0x277D2A430])
    {
      goto LABEL_15;
    }

    if (v8 == *MEMORY[0x277D2A458])
    {
      goto LABEL_4;
    }

    if (v8 == *MEMORY[0x277D2A448] || v8 == *MEMORY[0x277D2A420] || v8 == *MEMORY[0x277D2A3D8] || v8 == *MEMORY[0x277D2A3E0])
    {
LABEL_15:
      sub_2170069C4();
      sub_216DF6318();
      v16 = OUTLINED_FUNCTION_5_81();
      v17(v16);
    }
  }

LABEL_5:
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_26();
}

void sub_216B45A2C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v8 = *v5;
    v5 += 2;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v4 = v12;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_21693776C();
        v4 = v13;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  if (*(v4 + 16))
  {
    sub_216983738(293);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    sub_216856418();
    sub_21700E454();
  }
}

uint64_t sub_216B45BB4(__int16 a1)
{
  v2 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_2170069E4();
  (*(v4 + 104))(v8, *MEMORY[0x277D2A6B0], v2);
  v12 = OUTLINED_FUNCTION_109();
  v14 = sub_21688D974(v12, v13);
  v15 = *(v4 + 8);
  v15(v8, v2);
  v15(v11, v2);
  result = 0;
  if (v14)
  {
    return sub_216983738(a1);
  }

  return result;
}

void sub_216B45CF0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v2 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2170069C4();
  sub_2170069E4();
  (*(v4 + 32))(v8, v11, v2);
  v18 = OUTLINED_FUNCTION_109();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D2A6A8])
  {
    goto LABEL_5;
  }

  if (v20 != *MEMORY[0x277D2A6B0])
  {
    v22 = OUTLINED_FUNCTION_109();
    v23(v22);
LABEL_5:
    v21 = 1;
    goto LABEL_6;
  }

  v21 = 0;
LABEL_6:
  v26 = v21;
  v24 = sub_216DF6204(&v26, v1);
  (*(v14 + 8))(v17, v12, v24);
  OUTLINED_FUNCTION_26();
}

void sub_216B45ED4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-v3];
  v5 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  sub_2170069C4();
  sub_2170069E4();
  (*(v7 + 32))(v11, v14, v5);
  v16 = (*(v7 + 88))(v11, v5);
  if (v16 != *MEMORY[0x277D2A6A8])
  {
    if (v16 == *MEMORY[0x277D2A6B0])
    {
      v17 = 0;
      goto LABEL_6;
    }

    (*(v7 + 8))(v11, v5);
  }

  v17 = 1;
LABEL_6:
  v26 = v17;
  sub_216E017AC(&v26, 0, v4);
  v18 = sub_21700D3B4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v18) == 1)
  {
    v19 = OUTLINED_FUNCTION_109();
    v20(v19);
    sub_216801D0C(v4);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  else
  {
    v21 = MEMORY[0x277D21D10];
    *(v1 + 24) = v18;
    *(v1 + 32) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
    (*(*(v18 - 8) + 32))(boxed_opaque_existential_1, v4, v18);
    v23 = OUTLINED_FUNCTION_109();
    v24(v23);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216B461A0()
{
  OUTLINED_FUNCTION_49();
  v73 = v1;
  v2 = sub_21700D704();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_77();
  v72 = v3 - v4;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v5);
  v68 = v62 - v6;
  v7 = sub_21700D774();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_77();
  v71 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  *&v67 = v62 - v11;
  v12 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v62 - v20;
  v22 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  v65 = v26 - v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v64 = v62 - v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  v32 = v62 - v31;
  sub_2170069C4();
  *&v74 = sub_217006784();
  v70 = v33;
  v34 = *(v24 + 8);
  v66 = v22;
  v63 = v34;
  v34(v32, v22);
  v69 = v0;
  sub_2170069E4();
  (*(v14 + 104))(v18, *MEMORY[0x277D2A6B0], v12);
  v35 = sub_21688D974(v21, v18);
  v36 = *(v14 + 8);
  v36(v18, v12);
  v36(v21, v12);
  if (v35)
  {
    sub_21700D764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    v74 = xmmword_217013DA0;
    v38 = OUTLINED_FUNCTION_3_109(inited, xmmword_217013DA0);
    v39 = MEMORY[0x277D837D0];
    v38[4].n128_u64[1] = MEMORY[0x277D837D0];
    v38[3].n128_u64[0] = 0x4C746E65746E6F43;
    v38[3].n128_u64[1] = 0xEF6D657449747369;
    OUTLINED_FUNCTION_6_76();
    sub_21700D6F4();
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_217015230;
    *(v40 + 32) = 1684957547;
    *(v40 + 40) = 0xE400000000000000;
    *(v40 + 48) = 0x497972617262696CLL;
    *(v40 + 56) = 0xEB000000006D6574;
    *(v40 + 72) = v39;
    *(v40 + 80) = 1701667182;
    *(v40 + 88) = 0xE400000000000000;
    *(v40 + 96) = 0x497972617262696CLL;
    *(v40 + 104) = 0xEB000000006D6574;
    *(v40 + 120) = v39;
    *(v40 + 128) = 25705;
    *(v40 + 168) = v39;
    *(v40 + 136) = 0xE200000000000000;
    *(v40 + 144) = 0x497972617262696CLL;
    *(v40 + 152) = 0xEB000000006D6574;
    OUTLINED_FUNCTION_6_76();
    v41 = swift_initStackObject();
    *(v41 + 16) = v74;
    strcpy((v41 + 32), "locationType");
    *(v41 + 45) = 0;
    *(v41 + 46) = -5120;
    *(v41 + 72) = v39;
    OUTLINED_FUNCTION_1_136(v41);
    OUTLINED_FUNCTION_6_76();
  }

  else
  {
    v42 = v70;
    swift_bridgeObjectRetain_n();
    sub_21700D764();
    v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    v43 = swift_initStackObject();
    v67 = xmmword_217013DA0;
    v44 = OUTLINED_FUNCTION_3_109(v43, xmmword_217013DA0);
    v44[4].n128_u64[1] = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_136(v44);
    v68 = sub_21700E384();
    sub_21700D6F4();
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_217015230;
    *(v45 + 32) = 1684957547;
    *(v45 + 40) = 0xE400000000000000;
    v46 = v64;
    sub_2170069C4();
    v47 = sub_216B7C198();
    v49 = v48;
    v50 = v46;
    v51 = v66;
    v52 = v63;
    v63(v50, v66);
    *(v45 + 48) = v47;
    *(v45 + 56) = v49;
    *(v45 + 72) = MEMORY[0x277D837D0];
    *(v45 + 80) = 1701667182;
    *(v45 + 88) = 0xE400000000000000;
    v53 = v65;
    sub_2170069C4();
    v54 = sub_216C74700();
    v56 = v55;
    v52(v53, v51);
    if (v56)
    {
      v57 = v54;
    }

    else
    {
      v57 = 0;
    }

    v58 = 0xE000000000000000;
    if (v56)
    {
      v58 = v56;
    }

    *(v45 + 96) = v57;
    *(v45 + 104) = v58;
    v59 = MEMORY[0x277D837D0];
    *(v45 + 120) = MEMORY[0x277D837D0];
    *(v45 + 128) = 25705;
    *(v45 + 168) = v59;
    v60 = v74;
    *(v45 + 136) = 0xE200000000000000;
    *(v45 + 144) = v60;
    *(v45 + 152) = v42;
    sub_21700E384();
    v61 = swift_initStackObject();
    *(v61 + 16) = v67;
    strcpy((v61 + 32), "locationType");
    *(v61 + 45) = 0;
    *(v61 + 46) = -5120;
    *(v61 + 72) = v59;
    OUTLINED_FUNCTION_1_136(v61);
    sub_21700E384();
  }

  sub_21700D784();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B46820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for AppDestinationFullScreenCoverPageView();
  (*(*(a4 - 8) + 32))(a5 + *(v11 + 36), a2, a4);
  v12 = a5 + *(v11 + 40);

  return sub_216B46938(a3, v12);
}

uint64_t sub_216B46938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestinationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B4699C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MusicAppDestinationContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216B46A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v17 + 40;
  v23 = a1;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = v18 + (v22 & ~v17) + ((v21 + v16 + (v20 & ~v15)) & ~v21);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v14 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v6 == v14)
  {
    v32 = v6;
    v33 = AssociatedTypeWitness;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v23, v32, v33);
  }

  v23 = (a1 + v20) & ~v15;
  if (v8 == v14)
  {
    v32 = v8;
    v33 = v4;
    goto LABEL_40;
  }

  if (v13 > 0x7FFFFFFE)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v22 + ((v23 + v16 + v21) & ~v21)) & ~v17, v12, v19);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v34 = *(((v23 + v16 + v21) & ~v21) + 0x18);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216B46DAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_217005EF4();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v13 + 80);
  v22 = v21 | 7;
  v23 = v21 + 40;
  v24 = (v21 + 40) & ~v21;
  if (v14)
  {
    v25 = *(*(v11 - 8) + 64);
  }

  else
  {
    v25 = *(*(v11 - 8) + 64) + 1;
  }

  v26 = v24 + v25;
  v27 = (((v21 | 7) + v20 + (v19 & ~v18)) & ~(v21 | 7)) + v24 + v25;
  v28 = 8 * v27;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v29 = ((a3 - v17 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v29))
      {
        v12 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v12 = v30;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v17 < a2)
  {
    v31 = ~v17 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> v28) + 1;
      if (v27)
      {
        v37 = v31 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else if (v27 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v27] = v32;
        break;
      case 2:
        *&a1[v27] = v32;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v27] = v32;
        break;
      default:
        return;
    }

    return;
  }

  v33 = ~v18;
  v34 = ~v22;
  v35 = ~v21;
  v36 = a1;
  switch(v12)
  {
    case 1:
      a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *&a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_81:
      __break(1u);
      return;
    case 4:
      *&a1[v27] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v17)
      {
        v38 = a2;
        v14 = v7;
        v11 = AssociatedTypeWitness;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v36, v38, v14, v11);
        return;
      }

      v36 = &a1[v19] & v33;
      if (v9 == v17)
      {
        v38 = a2;
        v14 = v9;
        v11 = v5;
        goto LABEL_42;
      }

      v39 = ((v36 + v20 + v22) & v34);
      if (v16 >= a2)
      {
        if (v15 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *(((v36 + v20 + v22) & v34) + 0x20) = 0;
            *v39 = 0u;
            *(((v36 + v20 + v22) & v34) + 0x10) = 0u;
            *v39 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v36 + v20 + v22) & v34) + 0x18) = a2;
          }

          return;
        }

        v39 = (&v39[v23] & v35);
        if (v15 >= a2)
        {
          v38 = a2 + 1;
          v36 = v39;
          goto LABEL_42;
        }

        if (v25 <= 3)
        {
          v43 = ~(-1 << (8 * v25));
        }

        else
        {
          v43 = -1;
        }

        if (v25)
        {
          v41 = v43 & (~v15 + a2);
          if (v25 <= 3)
          {
            v44 = v25;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v25);
          switch(v44)
          {
            case 2:
LABEL_76:
              *v39 = v41;
              break;
            case 3:
LABEL_79:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
LABEL_80:
              *v39 = v41;
              break;
            default:
LABEL_56:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        if (v26 <= 3)
        {
          v40 = ~(-1 << (8 * v26));
        }

        else
        {
          v40 = -1;
        }

        if (v26)
        {
          v41 = v40 & (~v16 + a2);
          if (v26 <= 3)
          {
            v42 = v26;
          }

          else
          {
            v42 = 4;
          }

          bzero(((v36 + v20 + v22) & v34), v26);
          switch(v42)
          {
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_79;
            case 4:
              goto LABEL_80;
            default:
              goto LABEL_56;
          }
        }
      }

      return;
  }
}

uint64_t sub_216B472DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v50 - v11;
  v12 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v51 = v14;
  MEMORY[0x28223BE20](v15);
  v52 = &v50 - v16;
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppFullScreenCoverDestinationViewControllerRepresentable();
  OUTLINED_FUNCTION_1();
  v56 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v54 = &v50 - v26;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v61 = v28;
  v62 = v27;
  v29 = MEMORY[0x28223BE20](v27);
  v60 = &v50 - v30;
  v31 = a1;
  v32 = *(a1 + 36);
  if ((*(v4 + 152))(v5, v4, v29))
  {
    (*(v50 + 16))(v19, v2 + v32, v5);
    v33 = v52;
    (*(v51 + 16))(v52, v2, v53);
    v34 = v55;
    sub_216B479C0(v2 + *(v31 + 40), v55);
    sub_216B478A0(v19, v33, v34, v5, v24);
    OUTLINED_FUNCTION_0_162();
    WitnessTable = swift_getWitnessTable();
    v36 = v54;
    v37 = OUTLINED_FUNCTION_39();
    sub_2166C24DC(v37, v38, WitnessTable);
    v39 = *(v56 + 8);
    v40 = OUTLINED_FUNCTION_39();
    v39(v40);
    sub_2166C24DC(v36, v20, WitnessTable);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = v60;
    OUTLINED_FUNCTION_39();
    sub_2166C2718();
    v43 = OUTLINED_FUNCTION_39();
    v39(v43);
    (v39)(v36, v20);
  }

  else
  {
    v44 = v58;
    (*(v4 + 120))(v2, v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v45 = v57;
    sub_2166C24DC(v44, v6, AssociatedConformanceWitness);
    v46 = *(v59 + 8);
    v46(v44, v6);
    sub_2166C24DC(v45, v6, AssociatedConformanceWitness);
    OUTLINED_FUNCTION_0_162();
    swift_getWitnessTable();
    v42 = v60;
    OUTLINED_FUNCTION_39();
    sub_2166C2CB0();
    v46(v44, v6);
    v46(v45, v6);
  }

  v64 = swift_getWitnessTable();
  v65 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_6_1();
  v47 = v62;
  v48 = swift_getWitnessTable();
  sub_2166C24DC(v42, v47, v48);
  return (*(v61 + 8))(v42, v47);
}

uint64_t sub_216B478A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for AppFullScreenCoverDestinationViewControllerRepresentable();
  v9 = *(v8 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5 + v9, a2, AssociatedTypeWitness);
  v11 = a5 + *(v8 + 40);

  return sub_216B46938(a3, v11);
}

uint64_t sub_216B479C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestinationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B47A24()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = type metadata accessor for MusicAppDestinationContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_216B47AE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v17 + 40;
  v23 = a1;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = v18 + (v22 & ~v17) + ((v21 + v16 + (v20 & ~v15)) & ~v21);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v14 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v6 == v14)
  {
    v32 = v6;
    v33 = v4;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v23, v32, v33);
  }

  v23 = (a1 + v20) & ~v15;
  if (v8 == v14)
  {
    v32 = v8;
    v33 = AssociatedTypeWitness;
    goto LABEL_40;
  }

  if (v13 > 0x7FFFFFFE)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v22 + ((v23 + v16 + v21) & ~v21)) & ~v17, v12, v19);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v34 = *(((v23 + v16 + v21) & ~v21) + 0x18);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216B47E40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_217005EF4();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v13 + 80);
  v22 = v21 | 7;
  v23 = v21 + 40;
  v24 = (v21 + 40) & ~v21;
  if (v14)
  {
    v25 = *(*(v11 - 8) + 64);
  }

  else
  {
    v25 = *(*(v11 - 8) + 64) + 1;
  }

  v26 = v24 + v25;
  v27 = (((v21 | 7) + v20 + (v19 & ~v18)) & ~(v21 | 7)) + v24 + v25;
  v28 = 8 * v27;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v29 = ((a3 - v17 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v29))
      {
        v12 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v12 = v30;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v17 < a2)
  {
    v31 = ~v17 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> v28) + 1;
      if (v27)
      {
        v37 = v31 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else if (v27 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v27] = v32;
        break;
      case 2:
        *&a1[v27] = v32;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v27] = v32;
        break;
      default:
        return;
    }

    return;
  }

  v33 = ~v18;
  v34 = ~v22;
  v35 = ~v21;
  v36 = a1;
  switch(v12)
  {
    case 1:
      a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *&a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_81:
      __break(1u);
      return;
    case 4:
      *&a1[v27] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v17)
      {
        v38 = a2;
        v14 = v7;
        v11 = v5;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v36, v38, v14, v11);
        return;
      }

      v36 = &a1[v19] & v33;
      if (v9 == v17)
      {
        v38 = a2;
        v14 = v9;
        v11 = AssociatedTypeWitness;
        goto LABEL_42;
      }

      v39 = ((v36 + v20 + v22) & v34);
      if (v16 >= a2)
      {
        if (v15 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *(((v36 + v20 + v22) & v34) + 0x20) = 0;
            *v39 = 0u;
            *(((v36 + v20 + v22) & v34) + 0x10) = 0u;
            *v39 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v36 + v20 + v22) & v34) + 0x18) = a2;
          }

          return;
        }

        v39 = (&v39[v23] & v35);
        if (v15 >= a2)
        {
          v38 = a2 + 1;
          v36 = v39;
          goto LABEL_42;
        }

        if (v25 <= 3)
        {
          v43 = ~(-1 << (8 * v25));
        }

        else
        {
          v43 = -1;
        }

        if (v25)
        {
          v41 = v43 & (~v15 + a2);
          if (v25 <= 3)
          {
            v44 = v25;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v25);
          switch(v44)
          {
            case 2:
LABEL_76:
              *v39 = v41;
              break;
            case 3:
LABEL_79:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
LABEL_80:
              *v39 = v41;
              break;
            default:
LABEL_56:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        if (v26 <= 3)
        {
          v40 = ~(-1 << (8 * v26));
        }

        else
        {
          v40 = -1;
        }

        if (v26)
        {
          v41 = v40 & (~v16 + a2);
          if (v26 <= 3)
          {
            v42 = v26;
          }

          else
          {
            v42 = 4;
          }

          bzero(((v36 + v20 + v22) & v34), v26);
          switch(v42)
          {
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_79;
            case 4:
              goto LABEL_80;
            default:
              goto LABEL_56;
          }
        }
      }

      return;
  }
}

uint64_t sub_216B48370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_216B483EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_216B48468()
{
  swift_getWitnessTable();
  sub_217009AF4();
  __break(1u);
}

void sub_216B484A8()
{
  sub_216B49838();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_216B48558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_216B485C8(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_216B485C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_216B74270(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2166A6E54(a1, v18, &qword_27CAC35F8);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      sub_216697664(v14, &qword_27CAC3618);
    }
  }

  else
  {
    sub_21678818C(v14, v18, &qword_27CAC35F8);
  }

  swift_beginAccess();
  sub_216B487B8(v18);
  swift_endAccess();
  sub_216697664(a1, &qword_27CAC35F8);
  *(v6 + qword_280E34FB0) = a2;
  v19 = v6 + qword_280E34FA0;
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a3 + 32);
  v21 = (v6 + qword_280E34F98);
  *v21 = a4;
  v21[1] = a5;
  return v6;
}

uint64_t sub_216B487B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_2166A6E54(a1, &v11 - v6, &qword_27CAC35F8);
  sub_2166A6E54(v7, v4, &qword_27CAC35F8);
  sub_217007DA4();
  v8 = OUTLINED_FUNCTION_116();
  sub_216697664(v8, v9);
  return sub_216697664(v7, &qword_27CAC35F8);
}

uint64_t sub_216B488C4(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v13 = *(v3 + 80);
  v7 = v13;
  v14 = *(v3 + 88);
  v8 = v14;
  swift_getKeyPath();
  v12[0] = v7;
  v12[1] = v8;
  swift_getKeyPath();
  sub_2166A6E54(a1, v6, &qword_27CAC35F8);

  sub_217007DF4();
  sub_216B489F4();
  v9 = OUTLINED_FUNCTION_116();
  return sub_216697664(v9, v10);
}

uint64_t sub_216B489F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v7 - v2;
  sub_216B48AF4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = *(v0 + qword_280E34FA0 + 16);
  v7[0] = *(v0 + qword_280E34FA0);
  v7[1] = v5;
  v8 = *(v0 + qword_280E34FA0 + 32);
  sub_216B7404C(v3, v7);
  return sub_216697664(v3, &qword_27CAC3618);
}

uint64_t sub_216B48AF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216B48BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2166A6E54(a1, &v6 - v3, &qword_27CAC35F8);
  return sub_216B488C4(v4);
}

uint64_t sub_216B48C5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
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

uint64_t sub_216B48D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for PaginationSectionResult();
  v4[9] = swift_task_alloc();
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
  v4[11] = swift_task_alloc();
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_21700EA34();
  v4[17] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[18] = v6;
  v4[19] = v5;

  return MEMORY[0x2822009F8](sub_216B48EE8, v6, v5);
}

uint64_t sub_216B48EE8()
{
  sub_216B48AF4();
  OUTLINED_FUNCTION_116();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[14];

    v2 = &qword_27CAC35F8;
    v3 = v1;
LABEL_7:
    sub_216697664(v3, v2);
    OUTLINED_FUNCTION_1_137();

    OUTLINED_FUNCTION_3();

    return v15();
  }

  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[10];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3600);
  v0[20] = v8;
  v9 = *(v6 + *(v8 + 48));
  sub_21678818C(v6, v4, &qword_27CABFD18);
  v10 = OUTLINED_FUNCTION_116();
  sub_2166A6E54(v10, v11, &qword_27CABFD18);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    v12 = v0[15];
    sub_216697664(v0[16], &qword_27CABFD18);

    v3 = v12;
    v2 = &qword_27CABFD18;
    goto LABEL_7;
  }

  sub_21678818C(v0[15], v0[11], &qword_27CAB7948);
  if (v9)
  {
    v13 = v0[16];
    v14 = v0[11];

    sub_216697664(v14, &qword_27CAB7948);
    v2 = &qword_27CABFD18;
    v3 = v13;
    goto LABEL_7;
  }

  v17 = v0[13];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[7];
  sub_2166A6E54(v18, v17, &qword_27CAB7948);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  swift_storeEnumTagMultiPayload();
  sub_216B488C4(v17);
  v0[21] = *(v20 + qword_280E34FB0);
  v0[22] = *(v20 + qword_280E34FA0 + 8);
  sub_21700DF14();
  v0[5] = v19;
  v0[6] = sub_216B499D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2166A6E54(v18, boxed_opaque_existential_1, &qword_27CAB7948);

  v22 = swift_task_alloc();
  v0[23] = v22;
  *v22 = v0;
  v22[1] = sub_216B4922C;

  return sub_216A452BC();
}

uint64_t sub_216B4922C()
{
  v2 = *v1;
  v2[24] = v0;

  sub_216697664((v2 + 2), &qword_27CAC3610);

  v3 = v2[18];
  v4 = v2[19];
  if (v0)
  {
    v5 = sub_216B494D8;
  }

  else
  {
    v5 = sub_216B493A4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216B493A4()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  v7 = *(v1 + 48);
  sub_2166A6E54(v5 + *(v6 + 20), v3, &qword_27CABFD18);
  *(v3 + v7) = 0;
  swift_storeEnumTagMultiPayload();
  sub_216B488C4(v3);
  sub_216B49AB4(v5);
  sub_216697664(v4, &qword_27CAB7948);
  sub_216697664(v2, &qword_27CABFD18);
  OUTLINED_FUNCTION_1_137();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216B494D8()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[10];

  v5 = *(v2 + 48);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  *(v3 + v5) = v1;
  OUTLINED_FUNCTION_116();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_216B488C4(v3);
  if (qword_27CAB5DB8 != -1)
  {
    swift_once();
  }

  v7 = v0[24];
  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_27CAC35E0);
  v9 = v7;
  v10 = sub_217007C84();
  v11 = sub_21700ED84();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[24];
  v14 = v0[16];
  v15 = v0[11];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = v13;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_216679000, v10, v11, "An error occurred attempting to retrieve the next page: '%{public}@'", v16, 0xCu);
    sub_216697664(v17, &qword_27CABF880);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  sub_216697664(v15, &qword_27CAB7948);
  sub_216697664(v14, &qword_27CABFD18);
  OUTLINED_FUNCTION_1_137();

  OUTLINED_FUNCTION_3();

  return v20();
}

uint64_t sub_216B49728()
{
  v1 = qword_280E34FA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3620);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  sub_216838830(*(v0 + qword_280E34FA0), *(v0 + qword_280E34FA0 + 8), *(v0 + qword_280E34FA0 + 16), *(v0 + qword_280E34FA0 + 24), *(v0 + qword_280E34FA0 + 32));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_216B497C8()
{
  sub_216B49728();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216B49838()
{
  if (!qword_280E48428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC35F8);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48428);
    }
  }
}

uint64_t sub_216B4989C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B498E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B4991C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167AF644;

  return sub_216B48D58(a1, v4, v5, v6);
}

unint64_t sub_216B499D0()
{
  result = qword_27CAC3608;
  if (!qword_27CAC3608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3608);
  }

  return result;
}

uint64_t sub_216B49A34()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC35E0);
  __swift_project_value_buffer(v0, qword_27CAC35E0);
  return sub_217007C94();
}

uint64_t sub_216B49AB4(uint64_t a1)
{
  v2 = type metadata accessor for PaginationSectionResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B49B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = &v85 - v6;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v102 = v7;
  v103 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v95 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v87 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v89 = &v85 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v94 = &v85 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v98 = &v85 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  v27 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  v28 = v27[5];
  v29 = type metadata accessor for ContentDescriptor();
  v106 = a3;
  v100 = v28;
  v88 = v29;
  __swift_storeEnumTagSinglePayload(a3 + v28, 1, 1, v29);
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v33 = *(v15 + 8);
  v34 = v26;
  v35 = v15 + 8;
  v99 = v13;
  v36 = v33;
  v33(v34, v13);
  if (v32)
  {
    v92 = v36;
    v93 = v35;
    v104 = v30;
    v105 = v32;
    v86 = v32;
    sub_21700F364();
    sub_21700D7A4();
    v91 = a1;
    sub_21700CE04();
    v37 = v102;
    v39 = v103 + 16;
    v38 = *(v103 + 16);
    v40 = v12;
    v41 = v12;
    v42 = v101;
    v38(v40, v101, v102);
    v90 = v27;
    v43 = v41;
    sub_21700D734();
    v44 = v94;
    v45 = v91;
    sub_21700CE04();
    v46 = v95;
    v38(v95, v42, v37);
    v47 = v96;
    v48 = v97;
    ContentDescriptor.init(deserializing:using:)(v44, v46, v49, v50, v51, v52, v53, v54, v85, v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86));
    v55 = v45;
    v56 = v42;
    if (v47)
    {
      v57 = v37;
      v58 = v92;
      v59 = v106;
      v60 = v99;
      v27 = v90;
    }

    else
    {
      v95 = v39;
      v96 = v43;
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v88);
      sub_216A765E0(v48, v106 + v100);
      v66 = v45;
      v67 = v89;
      sub_21700CE04();
      v68 = sub_21700CDB4();
      v70 = v69;
      v60 = v99;
      v71 = v92;
      v92(v67, v99);
      if (v70)
      {
        v72 = v90;
        v73 = v106;
        v74 = (v106 + v90[8]);
        *v74 = v68;
        v74[1] = v70;
        v75 = v87;
        sub_21700CE04();
        v76 = sub_21700CD44();
        v100 = 0;
        v77 = v76;
        v71(v75, v60);
        *(v73 + v72[9]) = v77 & 1;
        type metadata accessor for Artwork();
        sub_21700CE04();
        v78 = v60;
        v80 = v101;
        v79 = v102;
        v38(v96, v101, v102);
        sub_2166D7454(&qword_280E2BF60, type metadata accessor for Artwork);
        sub_21700D734();
        (*(v103 + 8))(v80, v79);
        return (v92)(v91, v78);
      }

      v58 = v71;
      v59 = v106;
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_163();
      sub_2166D7454(v81, v82);
      OUTLINED_FUNCTION_4();
      *v83 = 0x656C746974;
      v83[1] = 0xE500000000000000;
      v27 = v90;
      v83[2] = v90;
      OUTLINED_FUNCTION_50();
      (*(v84 + 104))();
      swift_willThrow();
      v55 = v66;
      v56 = v101;
      v57 = v102;
    }

    v32 = v86;
  }

  else
  {
    v58 = v36;
    v59 = v106;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_163();
    sub_2166D7454(v61, v62);
    OUTLINED_FUNCTION_4();
    *v63 = 25705;
    v63[1] = 0xE200000000000000;
    v63[2] = v27;
    OUTLINED_FUNCTION_50();
    (*(v64 + 104))();
    swift_willThrow();
    v55 = a1;
    v56 = v101;
    v57 = v102;
    v60 = v99;
  }

  (*(v103 + 8))(v56, v57);
  v58(v55, v60);
  result = sub_216699820(v59 + v100, &qword_27CAB6A00);
  if (v32)
  {
    sub_216788110(v59 + v27[6]);
    return sub_216699820(v59 + v27[7], &qword_27CAB6D58);
  }

  return result;
}

uint64_t sub_216B4A2E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216B4A320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_216B4A370(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v2 = result;
    sub_21700DF14();
    OUTLINED_FUNCTION_0_164();

    sub_21700F0B4();
    sub_21700DF14();
    OUTLINED_FUNCTION_0_164();

    sub_21700F0B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B4A494()
{
  result = qword_27CAC3628;
  if (!qword_27CAC3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3628);
  }

  return result;
}

unint64_t sub_216B4A4E8(uint64_t a1)
{
  *(a1 + 8) = sub_216ABE7E8();
  result = sub_216B4A518();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B4A518()
{
  result = qword_27CAC3630;
  if (!qword_27CAC3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3630);
  }

  return result;
}

uint64_t sub_216B4A598@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = *(v6 + 24);
    *&v9[v10] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v11 = &v9[*(v6 + 28)];
    *v11 = swift_getKeyPath();
    v11[40] = 0;
    v20[0] = 0x4059800000000000;
    sub_2167CD8D8();

    v12 = a2;
    sub_2170082B4();
    *v9 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    *(v9 + 1) = sub_216B4D9F8;
    *(v9 + 2) = v13;
    v9[24] = 0;
    v20[3] = sub_2170067A4();
    v20[4] = sub_216B4DA00(&qword_280E4A480, MEMORY[0x277D2A460]);
    __swift_allocate_boxed_opaque_existential_1(v20);

    sub_216CCBB48();
    v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3648) + 36));
    sub_2167B7D58(v20, (v14 + 2));
    type metadata accessor for MusicEntityAnnotationWrapper();
    sub_216B4DA00(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
    OUTLINED_FUNCTION_42_0();
    *v14 = sub_217008CF4();
    v14[1] = v15;
    sub_216B4E33C(v9, a3, _s10LockupViewV7ContentVMa);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    _s18HighlightsProviderCMa();
    OUTLINED_FUNCTION_1_138();
    sub_216B4DA00(v17, v18);

    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void *sub_216B4A83C()
{
  v0 = _s6LockupVMa();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9318();
  v4 = &v3[*(v1 + 68)];
  v5 = *v4;
  v6 = v4[1];
  sub_21700DF14();
  sub_216B4E2E4(v3, _s6LockupVMa);
  v7 = sub_216BE5CE8(v5, v6);

  return v7;
}

uint64_t sub_216B4A90C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = _s10LockupViewV7ContentVMa(0);
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = (v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = v61 - v5;
  v7 = _s6LockupVMa();
  MEMORY[0x28223BE20](v7);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3688);
  MEMORY[0x28223BE20](v10);
  v12 = v61 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3690);
  v66 = *(v68 - 1);
  MEMORY[0x28223BE20](v68);
  v14 = v61 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3698);
  MEMORY[0x28223BE20](v62);
  v16 = v61 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36A0);
  MEMORY[0x28223BE20](v78);
  v69 = v61 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36A8);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v61 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36B0);
  MEMORY[0x28223BE20](v70);
  v73 = v61 - v19;
  v76 = v1;
  sub_216DE9318();
  sub_216683A80(&v9[*(v7 + 32)], &v79, &qword_27CAB6DB0);
  sub_216B4E2E4(v9, _s6LockupVMa);
  v65 = v14;
  v64 = v16;
  if (v80)
  {
    sub_2166A0F18(&v79, v81);
  }

  else
  {
    sub_216DE9318();
    sub_216683A80(&v9[*(v7 + 44)], v81, &qword_27CAB6DB0);
    sub_216B4E2E4(v9, _s6LockupVMa);
    if (v80)
    {
      sub_216697664(&v79, &qword_27CAB6DB0);
    }
  }

  v20 = v10[11];
  v21 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v12[v20], 1, 1, v21);
  v22 = v76;
  sub_216B4DFB0(v76, v6, _s10LockupViewV7ContentVMa);
  v23 = *(v77 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_216B4E33C(v6, v25 + v24, _s10LockupViewV7ContentVMa);
  v26 = v22;
  v27 = v63;
  sub_216B4DFB0(v26, v63, _s10LockupViewV7ContentVMa);
  v77 = v23;
  v28 = swift_allocObject();
  v67 = v24;
  sub_216B4E33C(v27, v28 + v24, _s10LockupViewV7ContentVMa);
  v29 = v3;
  v30 = v10[12];
  *&v12[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v31 = &v12[v10[13]];
  *v31 = swift_getKeyPath();
  v31[40] = 0;
  v32 = v82;
  v33 = v81[1];
  *v12 = v81[0];
  *(v12 + 1) = v33;
  *(v12 + 4) = v32;
  *(v12 + 5) = sub_216B4DDB0;
  *(v12 + 6) = v25;
  *(v12 + 7) = sub_216B4DF98;
  *(v12 + 8) = v28;
  v34 = v65;
  sub_216F09968();
  sub_216697664(v12, &qword_27CAC3688);
  v35 = v64;
  v36 = v64 + *(v62 + 36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v38 = sub_217008B34();
  v39 = __swift_project_value_buffer(v38, qword_280E73A88);
  sub_216B4DFB0(v39, v36, MEMORY[0x277CDFBC8]);
  *(v36 + *(v37 + 36)) = 0;
  (*(v66 + 4))(v35, v34, v68);
  v40 = v69;
  v41 = sub_2167C5834(v35, v69, &qword_27CAC3698);
  v65 = v61;
  *(v40 + *(v78 + 36)) = xmmword_217026E20;
  MEMORY[0x28223BE20](v41);
  v64 = v60;
  v42 = v76;
  MEMORY[0x28223BE20](v43);
  v63 = v60;
  v68 = _s10LockupViewV7ContentVMa;
  sub_216B4DFB0(v42, v6, _s10LockupViewV7ContentVMa);
  v44 = v67;
  v45 = swift_allocObject();
  v66 = _s10LockupViewV7ContentVMa;
  sub_216B4E33C(v6, v45 + v44, _s10LockupViewV7ContentVMa);
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  v46 = type metadata accessor for ContextMenuPreview(0);
  v47 = sub_216B4E070();
  v48 = sub_2168AECC8(qword_280E2BAE8, &qword_27CAB8AA0);
  v49 = sub_216B4DA00(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v60[2] = v48;
  v60[3] = v49;
  v60[0] = v46;
  v60[1] = v47;
  v62 = v29;
  v50 = v6;
  v51 = v71;
  sub_21700A394();

  sub_21673C110(v40);
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  v52 = sub_2170081B4();
  v53 = sub_217007D54();
  v54 = v73;
  (*(v72 + 32))(v73, v51, v74);
  v55 = (v54 + *(v70 + 36));
  *v55 = v53;
  v55[1] = v52;
  sub_216B4DFB0(v42, v50, v68);
  v56 = swift_allocObject();
  sub_216B4E33C(v50, v56 + v44, v66);
  v57 = v75;
  sub_2167C5834(v54, v75, &qword_27CAC36B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36D8);
  v59 = (v57 + *(result + 36));
  *v59 = sub_216B4E274;
  v59[1] = v56;
  v59[2] = 0;
  v59[3] = 0;
  return result;
}

uint64_t sub_216B4B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36E0);
  sub_216B4B628(a1, a2 + *(v8 + 44));
  _s10LockupViewV7ContentVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36E8) + 36));
  v10 = v46;
  *v9 = v45;
  v9[1] = v10;
  v9[2] = v47;
  v41 = sub_21700B3C4();
  v12 = v11;
  sub_216CCBB48();
  v13 = sub_216EB939C();
  (*(v5 + 8))(v7, v4);
  LOBYTE(v4) = v13 & 1;
  sub_21700B3B4();
  sub_2170083C4();
  v14 = v48;
  LOBYTE(v7) = v49;
  v15 = v50;
  v16 = v51;
  v18 = v52;
  v17 = v53;
  v19 = sub_217009CB4();
  sub_217007F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v44 = v7;
  v43 = v16;
  v42 = 0;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36F0) + 36);
  *v28 = v4;
  *(v28 + 8) = v14;
  *(v28 + 16) = v7;
  *(v28 + 24) = v15;
  *(v28 + 32) = v16;
  *(v28 + 40) = v18;
  *(v28 + 48) = v17;
  *(v28 + 56) = v19;
  *(v28 + 64) = v21;
  *(v28 + 72) = v23;
  *(v28 + 80) = v25;
  *(v28 + 88) = v27;
  *(v28 + 96) = 0;
  *(v28 + 104) = v41;
  *(v28 + 112) = v12;
  v29 = sub_217009CE4();
  sub_217007F24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36F8);
  v39 = a2 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_216B4B628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3700);
  MEMORY[0x28223BE20](v65);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = _s6LockupVMa();
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v58 = _s10LockupViewV11ArtworkViewVMa(0);
  MEMORY[0x28223BE20](v58);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3708);
  MEMORY[0x28223BE20](v59);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v25);
  v62 = &v57 - v26;
  sub_216DE9318();
  v27 = &v18[*(v13 + 64)];
  v61 = v11;
  sub_216683A80(v27, v11, &qword_27CAB6D60);
  sub_216B4E2E4(v18, _s6LockupVMa);
  _s10LockupViewV7ContentVMa(0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  v64 = a1;
  v57 = v28;
  sub_2170082C4();
  v29 = *v68;
  sub_216DE9318();
  sub_216683A80(&v15[*(v13 + 56)], v8, &qword_27CAB6A00);
  sub_216B4E2E4(v15, _s6LockupVMa);
  v30 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v8, 1, v30) == 1)
  {
    sub_216697664(v8, &qword_27CAB6A00);
    v31 = 23;
  }

  else
  {
    v31 = *v8;
    sub_216B4E2E4(v8, type metadata accessor for ContentDescriptor);
  }

  if (v29 > 102.0)
  {
    v29 = 102.0;
  }

  LOBYTE(v68[0]) = v31;
  v32 = sub_216E41068(v68, 0);
  v34 = v33;
  sub_2167C5834(v61, v20, &qword_27CAB6D60);
  v35 = v58;
  *&v20[*(v58 + 20)] = v29;
  v36 = &v20[*(v35 + 24)];
  *v36 = v32;
  v36[1] = v34;
  LOBYTE(v32) = sub_217009CD4();
  sub_217007F24();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_216B4E33C(v20, v24, _s10LockupViewV11ArtworkViewVMa);
  v45 = &v24[*(v59 + 36)];
  *v45 = v32;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = v62;
  sub_2167C5834(v24, v62, &qword_27CAC3708);
  v47 = sub_2170091A4();
  v48 = v60;
  *v60 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3710);
  sub_216B4BC4C(v48 + *(v49 + 44));
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v50 = (v48 + *(v65 + 36));
  v51 = v68[1];
  *v50 = v68[0];
  v50[1] = v51;
  v50[2] = v68[2];
  v52 = v63;
  sub_216683A80(v46, v63, &qword_27CAC3708);
  v53 = v66;
  sub_216683A80(v48, v66, &qword_27CAC3700);
  v54 = v67;
  sub_216683A80(v52, v67, &qword_27CAC3708);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3718);
  sub_216683A80(v53, v54 + *(v55 + 48), &qword_27CAC3700);
  sub_216697664(v48, &qword_27CAC3700);
  sub_216697664(v46, &qword_27CAC3708);
  sub_216697664(v53, &qword_27CAC3700);
  return sub_216697664(v52, &qword_27CAC3708);
}

uint64_t sub_216B4BC4C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = _s6LockupVMa();
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = _s10LockupViewV15BadgedTitleViewVMa(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_216DE9318();
  v20 = &v13[v2[8]];
  v21 = *(v20 + 1);
  *&v22 = *v20;
  v37 = v22;
  sub_21700DF14();
  sub_216B4E2E4(v13, _s6LockupVMa);
  sub_216DE9318();
  v23 = &v10[v2[9]];
  v24 = *(v23 + 1);
  *&v25 = *v23;
  v36 = v25;
  sub_21700DF14();
  sub_216B4E2E4(v10, _s6LockupVMa);
  sub_216DE9318();
  LOBYTE(v10) = v7[v2[12]];
  sub_216B4E2E4(v7, _s6LockupVMa);
  sub_216DE9318();
  v26 = &v4[v2[17]];
  v28 = *v26;
  v27 = *(v26 + 1);
  sub_21700DF14();
  sub_216B4E2E4(v4, _s6LockupVMa);
  *&v30 = v36;
  *&v29 = v37;
  *(&v29 + 1) = v21;
  *(&v30 + 1) = v24;
  *v19 = v29;
  *(v19 + 1) = v30;
  v19[32] = v10;
  *(v19 + 5) = v28;
  *(v19 + 6) = v27;
  v31 = *(v15 + 40);
  *&v19[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v32 = v38;
  sub_216B4DFB0(v19, v38, _s10LockupViewV15BadgedTitleViewVMa);
  v33 = v39;
  sub_216B4DFB0(v32, v39, _s10LockupViewV15BadgedTitleViewVMa);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3720) + 48);
  *v34 = 0x4024000000000000;
  *(v34 + 8) = 0;
  sub_216B4E2E4(v19, _s10LockupViewV15BadgedTitleViewVMa);
  return sub_216B4E2E4(v32, _s10LockupViewV15BadgedTitleViewVMa);
}

uint64_t sub_216B4BF48@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v33 = a1;
  v31 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v31);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s6LockupVMa();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v27 = &v26 - v9;
  v29 = sub_2170067A4();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_216CCBB48();
  sub_216DE9318();
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  sub_2170081B4();
  sub_216921C48();

  swift_storeEnumTagMultiPayload();
  v15 = v27;
  sub_2168A89E4();

  sub_216B4E2E4(v2, type metadata accessor for MenuContext);
  sub_216B4E2E4(v5, _s6LockupVMa);
  v16 = *(v10 + 32);
  v18 = v28;
  v17 = v29;
  v16(v28, v14, v29);
  v19 = v15;
  v20 = v30;
  sub_216B4E33C(v19, v30, type metadata accessor for MenuConfiguration);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = (v11 + *(v32 + 80) + v21) & ~*(v32 + 80);
  v23 = swift_allocObject();
  v16((v23 + v21), v18, v17);
  result = sub_216B4E33C(v20, v23 + v22, type metadata accessor for MenuConfiguration);
  v25 = v33;
  *v33 = sub_21680CDC8;
  v25[1] = v23;
  return result;
}

uint64_t sub_216B4C30C@<X0>(uint64_t a1@<X8>)
{
  v2 = _s6LockupVMa();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_216B4DA00(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_216CCBB48();
  sub_216DE9318();
  sub_216683A80(&v5[*(v3 + 40)], v13, &qword_27CAB6DB0);
  sub_216B4E2E4(v5, _s6LockupVMa);
  LOBYTE(v5) = v14 != 0;
  sub_216697664(v13, &qword_27CAB6DB0);
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

uint64_t sub_216B4C4C8()
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
  v10 = _s6LockupVMa();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9318();
  sub_216683A80(&v13[*(v11 + 40)], &v34, &qword_27CAB6DB0);
  sub_216B4E2E4(v13, _s6LockupVMa);
  sub_216CCBB48();
  _s10LockupViewV7ContentVMa(0);
  v14 = sub_216C0C534(&v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(&v34, v9, &v29, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_216697664(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_216697664(&v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(&v34, &qword_27CAB6DB0);
}

uint64_t sub_216B4C7BC(uint64_t a1, void (*a2)(void))
{
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  sub_2170081B4();
  a2();
}

uint64_t sub_216B4C870@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v65 - v4;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_217007474();
  v68 = *(v18 - 8);
  v69 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v67 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v72 = *(v23 - 8);
  v73 = v23;
  MEMORY[0x28223BE20](v23);
  v71 = &v65 - v24;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3770);
  MEMORY[0x28223BE20](v66);
  v26 = &v65 - v25;
  sub_216683A80(v2, v14, &qword_27CAB6D60);
  v27 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60);
    v28 = sub_21700C4B4();
    v29 = v17;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    v65 = v20;
    v32 = v5;
    v33 = v26;
    v34 = v6;
    v35 = v7;
    v36 = v2;
    v37 = v31;
    (*(*(v31 - 8) + 16))(v17, v14, v31);
    sub_216B4E2E4(v14, type metadata accessor for Artwork);
    v29 = v17;
    v30 = 0;
    v28 = v37;
    v2 = v36;
    v7 = v35;
    v6 = v34;
    v26 = v33;
    v5 = v32;
    v20 = v65;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v38 = _s10LockupViewV11ArtworkViewVMa(0);
  sub_217007434();
  sub_216683A80(v2, v11, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
  {
    sub_216697664(v11, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v39 = v70;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_216697664(v5, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v7 + 16))(v5, &v11[*(v27 + 20)], v6);
    sub_216B4E2E4(v11, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    v39 = v70;
    (*(v7 + 32))(v70, v5, v6);
  }

  v40 = v67;
  sub_2170073E4();
  (*(v7 + 8))(v39, v6);
  v41 = v69;
  v42 = *(v68 + 8);
  v42(v20, v69);
  v43 = (v2 + *(v38 + 24));
  v44 = *v43;
  v45 = v43[1];
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  sub_2167B8890(v44, v45);
  sub_2167C505C();
  v47 = v71;
  sub_2170073F4();

  v42(v40, v41);
  v48 = &v26[*(v66 + 36)];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v50 = &v48[*(v49 + 36)];
  v51 = *(sub_217008B44() + 20);
  v52 = *MEMORY[0x277CE0118];
  v53 = sub_217009294();
  (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
  __asm { FMOV            V0.2D, #5.0 }

  *v50 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v59 = qword_280E73AA0;
  v60 = byte_280E73AA8;
  v61 = qword_280E73AB0;
  v62 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930) + 36)];
  sub_216B4DFB0(v50, v62, MEMORY[0x277CDFC08]);
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
  (*(v72 + 32))(v26, v47, v73);
  *v48 = v59;
  v48[8] = v60;
  *(v48 + 2) = v61;
  v63 = &v48[*(v49 + 40)];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  sub_2167C5834(v26, v74, &qword_27CAC3770);
}

void *sub_216B4D05C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170093C4();
  v10 = 1;
  sub_216B4D14C(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_216683A80(__dst, &v7, &qword_27CAC3768);
  sub_216697664(v12, &qword_27CAC3768);
  memcpy(&v9[7], __dst, 0xE0uLL);
  v4 = v10;
  KeyPath = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  result = memcpy((a1 + 17), v9, 0xE7uLL);
  *(a1 + 248) = KeyPath;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_216B4D14C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v65 = sub_217008844();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 32);
  sub_21700DF14();
  v9 = sub_217009184();
  type metadata accessor for ExplicitBadgingPresenter();
  sub_216B4DA00(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v71 = sub_217008CF4();
  if (v6)
  {
    v11 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v11 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v73[0] = v71;
      v73[1] = v10;
      v73[2] = v7;
      v73[3] = v6;
      LOWORD(v73[4]) = v8 & 1;
      v73[5] = 0;
      LOBYTE(v73[6]) = 0;
      v73[7] = v9;
      v66 = v73[6];
      v67 = v73[4];
      v77 = v71;
      v78 = v10;
      v68 = v10;
      v69 = v9;
      v70 = v7;
      v79 = v7;
      v80 = v6;
      LOWORD(v81) = v73[4];
      v82 = 0;
      LOBYTE(v83) = 0;
      v84 = v9;
      sub_21680DAEC(v73, v75);
      sub_21680DB48(&v77);
      goto LABEL_9;
    }

    v70 = 0;
    v71 = 0;
    v68 = 0;
    v6 = 0;
  }

  else
  {

    v70 = 0;
    v71 = 0;
    v68 = 0;
  }

  v66 = 0;
  v67 = 0;
  v69 = 0;
LABEL_9:
  v64 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  v62 = sub_21700AD14();
  v61 = swift_getKeyPath();
  v12 = _s10LockupViewV15BadgedTitleViewVMa(0);
  sub_216C0C570(v12, v13, v14, v15, v16, v17, v18, v19, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v20 = sub_217008834();
  v21 = *(v3 + 8);
  v21(v5, v65);
  v60 = swift_getKeyPath();
  v93 = 0;
  v22 = a1[3];
  if (v22)
  {
    v57 = a1[2];
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  if (v20)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  v54 = v23;
  v56 = v22;
  sub_21700DF14();
  v55 = sub_217009E94();
  v53 = swift_getKeyPath();
  v52 = sub_21700AD34();
  v24 = swift_getKeyPath();
  sub_216C0C570(v24, v25, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50, v24, v52, v53, v54, v55, v56, v57, v58);
  v32 = sub_217008834();
  v21(v5, v65);
  if (v32)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  v48 = v33;
  v34 = swift_getKeyPath();
  v47 = v34;
  v92 = 0;
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  v35 = sub_217008CF4();
  v49 = v36;
  v50 = v35;
  v73[0] = v71;
  v73[1] = v68;
  v73[2] = v70;
  v73[3] = v6;
  v73[4] = v67;
  v73[5] = 0;
  v65 = v6;
  v73[6] = v66;
  v73[7] = v69;
  v73[8] = KeyPath;
  v73[9] = v64;
  v73[10] = v61;
  v73[11] = v62;
  v73[12] = v60;
  v73[13] = v23;
  LOBYTE(v73[14]) = 0;
  memcpy(v72, v73, 0x71uLL);
  v38 = v56;
  v37 = v57;
  v74[0] = v57;
  v74[1] = v56;
  v74[2] = 0;
  v39 = v58;
  v74[3] = v58;
  v41 = v52;
  v40 = v53;
  v74[4] = v53;
  v42 = v55;
  v74[5] = v55;
  v43 = v51;
  v74[6] = v51;
  v74[7] = v52;
  v74[8] = v34;
  v74[9] = v33;
  LOBYTE(v74[10]) = 0;
  memcpy(&v72[120], v74, 0x51uLL);
  v44 = v59;
  memcpy(v59, v72, 0xD0uLL);
  v45 = v49;
  v44[26] = v50;
  v44[27] = v45;
  sub_216683A80(v73, &v77, &qword_27CABF608);
  sub_216683A80(v74, &v77, &qword_27CABF610);
  v75[0] = v37;
  v75[1] = v38;
  v75[2] = 0;
  v75[3] = v39;
  v75[4] = v40;
  v75[5] = v42;
  v75[6] = v43;
  v75[7] = v41;
  v75[8] = v47;
  v75[9] = v48;
  v76 = 0;
  sub_216697664(v75, &qword_27CABF610);
  v77 = v71;
  v78 = v68;
  v79 = v70;
  v80 = v65;
  v81 = v67;
  v82 = 0;
  v83 = v66;
  v84 = v69;
  v85 = KeyPath;
  v86 = v64;
  v87 = v61;
  v88 = v62;
  v89 = v60;
  v90 = v54;
  v91 = 0;
  return sub_216697664(&v77, &qword_27CABF608);
}

uint64_t sub_216B4D678@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  result = sub_2170091A4();
  v6 = result;
  if (v4 == 2 || (a1 & 1) == 0)
  {
    v7 = 0;
    KeyPath = 0;
    v8 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v7 = sub_21700ADB4();
    if (qword_27CAB5DC0 != -1)
    {
      swift_once();
    }

    v8 = qword_27CAC3638;
    KeyPath = swift_getKeyPath();
    v10 = qword_27CAB5DC8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_27CAC3640;
    v12 = swift_getKeyPath();
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v8;
  *(a2 + 48) = v12;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_216B4D7CC(uint64_t a1)
{
  _s18HighlightsProviderCMa();
  OUTLINED_FUNCTION_1_138();
  sub_216B4DA00(v2, v3);
  OUTLINED_FUNCTION_42_0();
  sub_217008CF4();
  return a1;
}

uint64_t sub_216B4D840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216B4D7CC(*a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

unint64_t sub_216B4D8C0(uint64_t a1)
{
  result = sub_2168522A0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B4D8E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_216697664(v2, &qword_27CAB81D0);
  qword_27CAC3638 = v4;
  return result;
}

uint64_t sub_216B4D9B8()
{
  result = sub_21700AC54();
  qword_27CAC3640 = result;
  return result;
}

uint64_t sub_216B4DA00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_216B4DA6C()
{
  sub_216B4DB68();
  if (v0 <= 0x3F)
  {
    sub_216B4DC44();
    if (v1 <= 0x3F)
    {
      sub_216B4E74C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21680D428();
        if (v3 <= 0x3F)
        {
          sub_2167D1C30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216B4DB68()
{
  if (!qword_27CAC3660)
  {
    _s6LockupVMa();
    sub_216B4DA00(&qword_280E439E8, _s6LockupVMa);
    sub_216B4DA00(&qword_280E439D0, _s6LockupVMa);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC3660);
    }
  }
}

void sub_216B4DC44()
{
  if (!qword_27CAC3668)
  {
    _s18HighlightViewModelCMa();
    sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC3668);
    }
  }
}

unint64_t sub_216B4DCD8()
{
  result = qword_27CAC3678;
  if (!qword_27CAC3678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3648);
    sub_216B4DA00(&qword_27CAC3680, _s10LockupViewV7ContentVMa);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3678);
  }

  return result;
}

uint64_t sub_216B4DDB0@<X0>(uint64_t a1@<X8>)
{
  v2 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216B4B364(v4, a1);
}

uint64_t objectdestroy_12Tm()
{
  _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_2166B8588();
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + v0[7];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v3 + v7);

  return swift_deallocObject();
}

uint64_t sub_216B4DFB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B4E01C()
{
  v0 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216B4C4C8();
}

unint64_t sub_216B4E070()
{
  result = qword_27CAC36B8;
  if (!qword_27CAC36B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36A0);
    sub_216B4E0FC();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC36B8);
  }

  return result;
}

unint64_t sub_216B4E0FC()
{
  result = qword_27CAC36C0;
  if (!qword_27CAC36C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3688);
    type metadata accessor for ActionButtonListStyle(255);
    sub_2168AECC8(&qword_27CAC36C8, &qword_27CAC3688);
    sub_216B4DA00(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle);
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC36C0);
  }

  return result;
}

uint64_t sub_216B4E28C(void (*a1)(void))
{
  v2 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));
  return sub_216B4C7BC(v4, a1);
}

uint64_t sub_216B4E2E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B4E33C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t _s10LockupViewV21FavoriteIndicatorViewVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10LockupViewV21FavoriteIndicatorViewVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_216B4E580()
{
  sub_216688560(319, &qword_280E2A070);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E29DE0);
    if (v1 <= 0x3F)
    {
      sub_216B4E74C(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216B4E698()
{
  sub_216B4E74C(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216B4E74C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216B4E7B0()
{
  result = qword_27CAC3748;
  if (!qword_27CAC3748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36D8);
    sub_216B4E83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3748);
  }

  return result;
}

unint64_t sub_216B4E83C()
{
  result = qword_27CAC3750;
  if (!qword_27CAC3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216B4E070();
    sub_2168AECC8(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_216B4DA00(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_27CAC3758, &qword_27CAC3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3750);
  }

  return result;
}

unint64_t sub_216B4EA34()
{
  result = qword_27CAC3788;
  if (!qword_27CAC3788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3790);
    sub_2168AECC8(&qword_27CAC3798, &qword_27CAC37A0);
    sub_2168AECC8(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3788);
  }

  return result;
}

unint64_t sub_216B4EB18()
{
  result = qword_280E2AF58;
  if (!qword_280E2AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3770);
    sub_216B4EBD0();
    sub_2168AECC8(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF58);
  }

  return result;
}

unint64_t sub_216B4EBD0()
{
  result = qword_280E2B070;
  if (!qword_280E2B070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC37A8);
    sub_216B4EC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B070);
  }

  return result;
}

unint64_t sub_216B4EC5C()
{
  result = qword_280E2B338;
  if (!qword_280E2B338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8930);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B338);
  }

  return result;
}

BOOL sub_216B4ED40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B4F560(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_21669987C(v7, &qword_27CABB7F8);
    return 0;
  }

  (*(v10 + 32))(v13, v7, v8);
  if ((sub_21700C314() & 1) == 0 || !sub_216B4F284())
  {
    (*(v10 + 8))(v13, v8);
    return 0;
  }

  sub_216B4EF80(v4);
  (*(v10 + 8))(v13, v8);
  v14 = sub_217005EF4();
  v15 = __swift_getEnumTagSinglePayload(v4, 1, v14) != 1;
  sub_21669987C(v4, &qword_27CABA820);
  return v15;
}

uint64_t sub_216B4EF80@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_21700C324();
  if (!v12)
  {
    v11 = sub_21700C344();
  }

  v13 = v11;
  v14 = v12;
  v15 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  (*(v7 + 8))(v10, v5);
  if (v29)
  {
    v26 = 0x7D646E696B7BLL;
    v27 = 0xE600000000000000;
    v24 = 0x747369747261;
    v25 = 0xE600000000000000;
    sub_2167B2E14();
    v16 = OUTLINED_FUNCTION_0_165();
    v18 = v17;

    v28 = v16;
    v29 = v18;
    v26 = 2103732603;
    v27 = 0xE400000000000000;
    v24 = v13;
    v25 = v14;
    OUTLINED_FUNCTION_0_165();

    sub_217005ED4();

    v19 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v4, 1, v19) == 1)
    {
      sub_21669987C(v4, &qword_27CABA820);
      v20 = a1;
      v21 = 1;
    }

    else
    {
      (*(*(v19 - 8) + 32))(a1, v4, v19);
      v20 = a1;
      v21 = 0;
    }

    v22 = v19;
  }

  else
  {

    v22 = sub_217005EF4();
    v20 = a1;
    v21 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

BOOL sub_216B4F284()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = sub_21700E4D4();
  sub_21700DF64();

  sub_21700DFA4();
  (*(v5 + 8))(v7, v4);
  LODWORD(v8) = v16[0];
  v9 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  v10 = *(v1 + 8);
  v10(v3, v0);
  v11 = v17;
  v12 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  v10(v3, v0);
  v13 = v17;
  if (v8 == 1)
  {
    if (v11)
    {

      v14 = v13 != 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

uint64_t sub_216B4F560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI24ClassicalArtistPresenterC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_216B4F5EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216B4F62C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_216B4F674(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t ProcessDeepLinkAction.init(actionMetrics:url:referrer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_216697664(a3, &qword_27CABA820);
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v7 + 32))(a4, a1);
  v8 = type metadata accessor for ProcessDeepLinkAction();
  v9 = v8[5];
  sub_217005EF4();
  OUTLINED_FUNCTION_9();
  (*(v10 + 32))(a4 + v9, a2);
  v11 = v8[6];
  v12 = type metadata accessor for ReferrerInfo();
  result = __swift_storeEnumTagSinglePayload(a4 + v11, 1, 1, v12);
  *(a4 + v8[7]) = 1;
  return result;
}

uint64_t ProcessDeepLinkAction.init(actionMetrics:url:referrerInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v11 + 32))(a4, a1);
  v12 = type metadata accessor for ProcessDeepLinkAction();
  v13 = v12[5];
  sub_217005EF4();
  OUTLINED_FUNCTION_9();
  (*(v14 + 32))(a4 + v13, a2);
  v15 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_2_112();
  if (v16)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
    OUTLINED_FUNCTION_2_112();
    if (!v16)
    {
      sub_216697664(a3, &qword_27CAB6FD0);
    }
  }

  else
  {
    sub_216B4F8FC(a3, v10);
    OUTLINED_FUNCTION_5_82();
  }

  result = sub_21693FB5C(v10, a4 + v12[6]);
  *(a4 + v12[7]) = 1;
  return result;
}

uint64_t sub_216B4F8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferrerInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DeepLinkSource.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21700F5E4();

  *a1 = v2 != 0;
  return result;
}

uint64_t ProcessDeepLinkAction.init(actionMetrics:url:referrerInfo:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = *a4;
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v14 + 32))(a5, a1);
  v15 = type metadata accessor for ProcessDeepLinkAction();
  v16 = v15[5];
  sub_217005EF4();
  OUTLINED_FUNCTION_9();
  (*(v17 + 32))(a5 + v16, a2);
  v18 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_2_112();
  if (v19)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
    OUTLINED_FUNCTION_2_112();
    if (!v19)
    {
      sub_216697664(a3, &qword_27CAB6FD0);
    }
  }

  else
  {
    sub_216B4F8FC(a3, v12);
    OUTLINED_FUNCTION_5_82();
  }

  result = sub_21693FB5C(v12, a5 + v15[6]);
  *(a5 + v15[7]) = v13;
  return result;
}

uint64_t ProcessDeepLinkAction.actionMetrics.getter()
{
  OUTLINED_FUNCTION_8_1();
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ProcessDeepLinkAction.url.getter()
{
  OUTLINED_FUNCTION_8_1();
  v2 = *(type metadata accessor for ProcessDeepLinkAction() + 20);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t ProcessDeepLinkAction.referrerInfo.getter()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1 + *(type metadata accessor for ProcessDeepLinkAction() + 24);

  return sub_2168CC268(v2, v0);
}

uint64_t ProcessDeepLinkAction.source.getter()
{
  OUTLINED_FUNCTION_8_1();
  result = type metadata accessor for ProcessDeepLinkAction();
  *v0 = *(v1 + *(result + 28));
  return result;
}

unint64_t sub_216B4FD88()
{
  result = qword_27CAC37B0;
  if (!qword_27CAC37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC37B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeepLinkSource(_BYTE *result, int a2, int a3)
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

unint64_t sub_216B4FEB0()
{
  result = qword_27CAC37B8;
  if (!qword_27CAC37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC37B8);
  }

  return result;
}

uint64_t sub_216B4FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v6[8] = v7;
  OUTLINED_FUNCTION_2(v7);
  v6[9] = v8;
  v6[10] = OUTLINED_FUNCTION_80();
  v9 = sub_21700DA84();
  v6[11] = v9;
  OUTLINED_FUNCTION_2(v9);
  v6[12] = v10;
  v6[13] = OUTLINED_FUNCTION_80();
  v11 = sub_21700D2A4();
  v6[14] = v11;
  OUTLINED_FUNCTION_2(v11);
  v6[15] = v12;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360);
  v6[18] = OUTLINED_FUNCTION_80();
  v13 = sub_2170075A4();
  v6[19] = v13;
  OUTLINED_FUNCTION_2(v13);
  v6[20] = v14;
  v6[21] = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v6[22] = v15;
  OUTLINED_FUNCTION_2(v15);
  v6[23] = v16;
  v6[24] = OUTLINED_FUNCTION_80();

  return MEMORY[0x2822009F8](sub_216B50148, 0, 0);
}

uint64_t sub_216B50148()
{
  v1 = v0[4];
  if (!v1)
  {
    sub_217007524();
    type metadata accessor for ObjectGraph();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      OUTLINED_FUNCTION_1_139();

      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_7_3();

      __asm { BRAA            X1, X16 }
    }

    v1 = v2;
  }

  v0[25] = v1;
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[3];
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  sub_216B50AF4(v5, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    sub_216B50B64(v0[18]);
    sub_21700E094();
    (*(v7 + 16))(v9, v6, v8);
    (*(v11 + 104))(v9, *MEMORY[0x277D21E10], v10);
    v12 = swift_task_alloc();
    v0[29] = v12;
    *v12 = v0;
    v12[1] = sub_216B5078C;
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x28217F468](v13, v14, v15, v16, v17);
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[26] = sub_21700D594();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    sub_216B50BCC();
    v19 = swift_task_alloc();
    v0[27] = v19;
    *v19 = v0;
    v19[1] = sub_216B50460;
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x282180360](v20);
  }
}

uint64_t sub_216B50460()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[28] = v0;

  if (v0)
  {
    v6 = sub_216B50680;
  }

  else
  {
    (*(v2[15] + 8))(v2[17], v2[14]);
    v6 = sub_216B505A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_216B505A8()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];

  v4 = OUTLINED_FUNCTION_115();
  v5(v4);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_1_139();

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216B50680()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_115();
  v5(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_216B5078C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[30] = v0;

  v6 = OUTLINED_FUNCTION_115();
  v7(v6);
  if (v0)
  {
    v8 = sub_216B509E8;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v8 = sub_216B50910;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_216B50910()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];

  v4 = OUTLINED_FUNCTION_115();
  v5(v4);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_1_139();

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216B509E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_115();
  v5(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_216B50AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B50B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B50BCC()
{
  result = qword_280E2A120;
  if (!qword_280E2A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A120);
  }

  return result;
}

BOOL sub_216B50C30(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xEu)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_217048880[a1];
  }

  if (a2 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217048880[a2];
  }

  return v2 == v3;
}

BOOL sub_216B50C7C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xEu)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_217048880[a1];
  }

  if (a2 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217048880[a2];
  }

  return v2 < v3;
}

uint64_t sub_216B50CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_216B50F60(a1, &v22 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_216B50FD0(a1);
LABEL_3:
    v14 = *MEMORY[0x277D269A0];
    sub_2170063E4();
    OUTLINED_FUNCTION_9();
    (*(v15 + 104))(a2, v14);
    return sub_216B50FD0(v13);
  }

  sub_216B50F60(v13, v10);
  sub_21700C414();
  sub_216B51038();
  v17 = OUTLINED_FUNCTION_1_140();
  v18 = *(v5 + 8);
  v18(v7, v4);
  if (v17)
  {
    sub_216B50FD0(a1);
    v18(v10, v4);
  }

  else
  {
    sub_21700C3F4();
    v19 = OUTLINED_FUNCTION_1_140();
    sub_216B50FD0(a1);
    v18(v7, v4);
    v18(v10, v4);
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_216B50FD0(v13);
  v20 = *MEMORY[0x277D269A8];
  sub_2170063E4();
  OUTLINED_FUNCTION_9();
  return (*(v21 + 104))(a2, v20);
}

uint64_t sub_216B50F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B50FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B51038()
{
  result = qword_27CAC37C0;
  if (!qword_27CAC37C0)
  {
    sub_21700C444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC37C0);
  }

  return result;
}

uint64_t sub_216B510A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B51138, v5, v4);
}

uint64_t sub_216B51138()
{
  v1 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 104))(v2, v3);
  v4 = *MEMORY[0x277D21CA8];
  v5 = sub_21700D2A4();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v6 = v0[1];

  return v6();
}

uint64_t sub_216B51260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216B510A0(a1, v6, a3);
}

unint64_t sub_216B51300(uint64_t a1)
{
  result = sub_2166E18AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B51328(uint64_t a1)
{
  result = sub_216B51350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B51350()
{
  result = qword_27CAC37C8[0];
  if (!qword_27CAC37C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAC37C8);
  }

  return result;
}

unint64_t sub_216B513A8()
{
  result = qword_280E3D7E0[0];
  if (!qword_280E3D7E0[0])
  {
    type metadata accessor for PausePlaybackAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3D7E0);
  }

  return result;
}

void sub_216B51454()
{
  OUTLINED_FUNCTION_49();
  v106 = v0;
  v107 = v1;
  v3 = v2;
  v5 = v4;
  v103 = v6;
  OUTLINED_FUNCTION_16();
  v95 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v10);
  sub_217009124();
  OUTLINED_FUNCTION_1();
  v99 = v12;
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v98 = v13;
  v97 = type metadata accessor for ToolbarProperties(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v96 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998);
  sub_2167CBD04();
  OUTLINED_FUNCTION_21_41();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v89 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v25);
  v91 = v20;
  v108 = v3;
  v87[6] = OpaqueTypeConformance2;
  v26 = OUTLINED_FUNCTION_49_23();
  v27 = sub_2167B2E14();
  v28 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v87[11] = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v90 = OpaqueTypeMetadata2;
  v87[3] = v26;
  v32 = OUTLINED_FUNCTION_49_23();
  v33 = MEMORY[0x277CDEA10];
  v34 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v87[9] = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  v87[2] = v32;
  v114 = v32;
  v115 = v27;
  v104 = OUTLINED_FUNCTION_49_23();
  v105 = v34;
  v112 = v34;
  v113 = v104;
  v38 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v88 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  OUTLINED_FUNCTION_36(v44);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  v47 = v87 - v46;
  v48 = type metadata accessor for ToolbarConfiguration(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_45_23();
  v101 = v38;
  v50 = v5;
  v51 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v102 = v52;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v109 = v54;
  sub_2168282D4(v103, v47, &qword_27CAB7930);
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    sub_216697664(v47, &qword_27CAB7930);
    OUTLINED_FUNCTION_48_20();
    v55 = v108;
    sub_2166C24DC(v106, v50, v108);
    v56 = v93;
    sub_2166C24DC(v48, v50, v55);
    OUTLINED_FUNCTION_9_70();
    sub_2166C2CB0();
    v57 = *(v95 + 8);
    v57(v56, v50);
    v57(v48, v50);
  }

  else
  {
    v58 = sub_216B54C58(v47, v33, type metadata accessor for ToolbarConfiguration);
    MEMORY[0x28223BE20](v58);
    v87[-2] = v33;
    OUTLINED_FUNCTION_48_20();
    v87[0] = v50;
    sub_21700AAD4();
    v59 = v92;
    sub_216B53248();
    v61 = *v59;
    v60 = v59[1];
    sub_21700DF14();
    sub_216B1872C(v59, type metadata accessor for ToolbarProperties);
    if (v60)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    if (v60)
    {
      v63 = v60;
    }

    else
    {
      v63 = 0xE000000000000000;
    }

    v112 = v62;
    v113 = v63;
    v64 = MEMORY[0x277D837D0];
    v106 = v51;
    OUTLINED_FUNCTION_87_10();
    v65 = v90;
    sub_21700A5D4();

    OUTLINED_FUNCTION_67();
    v66(v48, v65);
    v67 = v94;
    sub_216B53248();
    v69 = *(v67 + 16);
    v68 = *(v67 + 24);
    sub_21700DF14();
    sub_216B1872C(v67, type metadata accessor for ToolbarProperties);
    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v68)
    {
      v71 = v68;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v112 = v70;
    v113 = v71;
    OUTLINED_FUNCTION_48_20();
    sub_21700A6D4();

    OUTLINED_FUNCTION_67();
    v72 = v51;
    v51 = v106;
    v73(v72, v28);
    v74 = v96;
    sub_216B53248();
    v75 = v98;
    v77 = v99;
    v76 = v100;
    (*(v99 + 16))(v98, v74 + *(v97 + 24), v100);
    sub_216B1872C(v74, type metadata accessor for ToolbarProperties);
    OUTLINED_FUNCTION_58_13();
    v78 = v105;
    sub_21700A904();
    (*(v77 + 8))(v75, v76);
    OUTLINED_FUNCTION_67();
    v79(v48, v78);
    v80 = OUTLINED_FUNCTION_9_70();
    OUTLINED_FUNCTION_48_20();
    v103 = v33;
    v81 = v101;
    sub_2166C24DC(v64, v101, v80);
    v82 = *(v88 + 8);
    v82(v64, v81);
    v83 = v87[7];
    sub_2166C24DC(v48, v81, v80);
    v55 = v108;
    sub_2166C2718();
    v82(v83, v81);
    v82(v48, v81);
    OUTLINED_FUNCTION_39_23();
    sub_216B1872C(v103, v84);
  }

  v110 = OUTLINED_FUNCTION_9_70();
  v111 = v55;
  WitnessTable = swift_getWitnessTable();
  v86 = v109;
  sub_2166C24DC(v109, v51, WitnessTable);
  (*(v102 + 8))(v86, v51);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B51EAC()
{
  sub_216B51FB4();

  return sub_217009104();
}

uint64_t sub_216B51EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  sub_2168282D4(a1, &v6 - v4, &qword_27CAB7930);
  sub_216B51FB4();
  sub_217009114();
  return sub_216697664(a1, &qword_27CAB7930);
}

unint64_t sub_216B51FB4()
{
  result = qword_280E2E958[0];
  if (!qword_280E2E958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2E958);
  }

  return result;
}

uint64_t sub_216B52028()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_216B5207C()
{
  OUTLINED_FUNCTION_49();
  v197 = v2;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3878);
  OUTLINED_FUNCTION_1();
  v188 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v5);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3880);
  OUTLINED_FUNCTION_1();
  v177 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v8);
  v9 = sub_217009684();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v11);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C8);
  OUTLINED_FUNCTION_1();
  v176 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v14);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v16);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3888);
  OUTLINED_FUNCTION_1();
  v175 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C0);
  OUTLINED_FUNCTION_1();
  v173 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  v23 = OUTLINED_FUNCTION_8_0(v22);
  v167 = type metadata accessor for ReplayPageToolbarProvider(v23);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v25);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3890);
  OUTLINED_FUNCTION_1();
  v171 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v29 = OUTLINED_FUNCTION_8_0(v28);
  v30 = type metadata accessor for GenericMusicItemToolbarContentProvider(v29);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v32);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79B0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3898);
  OUTLINED_FUNCTION_1();
  v168 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  v38 = OUTLINED_FUNCTION_8_0(v37);
  v39 = type metadata accessor for SocialProfilePageToolbarContentProvider(v38);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v41);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v43);
  *&v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38A0);
  OUTLINED_FUNCTION_1();
  v186 = v44;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  v47 = v166 - v46;
  v48 = type metadata accessor for CuratorPageToolbarContentProvider(0);
  v49 = OUTLINED_FUNCTION_36(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7();
  v52 = v51 - v50;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79A0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  v55 = v166 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38A8);
  OUTLINED_FUNCTION_1();
  v185 = v57;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  v60 = v166 - v59;
  v61 = type metadata accessor for ArtistPageToolbarContentProvider(0);
  v62 = OUTLINED_FUNCTION_36(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7();
  v63 = OUTLINED_FUNCTION_45_23();
  type metadata accessor for ToolbarConfiguration(v63);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_77();
  v67 = v65 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = v166 - v69;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7998);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_105();
  v192 = v72;
  OUTLINED_FUNCTION_8_73();
  sub_216B54CB4(v1, v70, v73);
  v198 = v70;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_41_22();
    sub_216B54C58(v198, v52, v91);
    v92 = type metadata accessor for CuratorToolbarContent(0);
    OUTLINED_FUNCTION_26_39();
    v95 = sub_216B54D10(v93, v94);
    MEMORY[0x21CE9A570](v52, v92, v95);
    v96 = type metadata accessor for ArtistPageToolbarContent(255);
    OUTLINED_FUNCTION_29_34();
    v99 = sub_216B54D10(v97, v98);
    v199 = v96;
    v200 = v99;
    v82 = MEMORY[0x277CDE130];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v199 = v92;
    v200 = v95;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = v191;
    MEMORY[0x21CE9A590](v47, v56, v191, OpaqueTypeConformance2, v101);
    sub_2167CBDD4();
    v103 = sub_2167CBF1C();
    OUTLINED_FUNCTION_53_18(v103, v195);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_46_23();
    MEMORY[0x21CE9A580](v55);
    sub_216697664(v55, &qword_27CAB79A0);
    OUTLINED_FUNCTION_67();
    v104(v47, v102);
    OUTLINED_FUNCTION_40_20();
    v89 = v52;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_8_73();
    sub_216B54CB4(v1, v67, v106);
    v107 = swift_getEnumCaseMultiPayload();
    if (v107 == 4)
    {
      OUTLINED_FUNCTION_24_31();
      v140 = v172;
      sub_216B54C58(v67, v172, v141);
      sub_2168282D4(v140 + 40, &v199, &qword_27CAB6DB0);
      sub_2168282D4(v140, v201, &qword_27CAB6DB0);
      v142 = *(v167 + 44);
      v143 = *(v140 + *(v167 + 40));
      v201[5] = *(v140 + 80);
      v201[6] = v143;
      v191 = *(v140 + v142);
      v202 = v191;
      v117 = sub_2167CC288();

      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_58_13();
      MEMORY[0x21CE9A570]();
      sub_216B54D58(&v199);
      v199 = &type metadata for ReplayToolbarContent;
      v200 = v117;
      OUTLINED_FUNCTION_20_39();
      v144 = swift_getOpaqueTypeConformance2();
      v145 = v174;
      v146 = v181;
      MEMORY[0x21CE9A570](v67, v181, v144);
      v199 = v146;
      v200 = v144;
      v147 = OUTLINED_FUNCTION_49_23();
      v148 = OUTLINED_FUNCTION_43_1(&qword_280E2B3A0, &qword_27CAB79C8);
      OUTLINED_FUNCTION_53_18(v148, v183);
      OUTLINED_FUNCTION_49_23();
      OUTLINED_FUNCTION_94_0();
      v149 = v182;
      MEMORY[0x21CE9A580](v145, v182, v184, v147);
      sub_2167CBFA8();
      sub_2167CC138();
      OUTLINED_FUNCTION_87_10();
      OUTLINED_FUNCTION_10_64();
      MEMORY[0x21CE9A590]();
      sub_216697664(v117, &qword_27CAB79B8);
      OUTLINED_FUNCTION_67();
      v150(v145, v149);
      OUTLINED_FUNCTION_67();
      v151(v67, v146);
      OUTLINED_FUNCTION_34_26();
      v139 = v140;
    }

    else
    {
      v60 = v187;
      if (v107 != 3)
      {
        v108 = v198;
        v105 = v194;
        if (v107 == 2)
        {
          OUTLINED_FUNCTION_36_30();
          v109 = v67;
          v67 = v166[0];
          sub_216B54C58(v109, v166[0], v110);
          v111 = type metadata accessor for SocialProfileToolbarContent(0);
          OUTLINED_FUNCTION_33_28();
          v114 = sub_216B54D10(v112, v113);
          v115 = v166[1];
          MEMORY[0x21CE9A570](v67, v111, v114);
          v199 = v111;
          v200 = v114;
          OUTLINED_FUNCTION_20_39();
          v116 = swift_getOpaqueTypeConformance2();
          v117 = type metadata accessor for GenericMusicItemToolbarContent(255);
          OUTLINED_FUNCTION_32_23();
          v120 = sub_216B54D10(v118, v119);
          v199 = v117;
          v200 = v120;
          OUTLINED_FUNCTION_49_23();
          OUTLINED_FUNCTION_94_0();
          v121 = v178;
          MEMORY[0x21CE9A580](v115, v178, v179, v116);
          sub_2167CBFA8();
          sub_2167CC138();
          OUTLINED_FUNCTION_10_64();
          MEMORY[0x21CE9A580]();
          sub_216697664(v117, &qword_27CAB79B0);
          OUTLINED_FUNCTION_67();
          v122(v115, v121);
          v123 = type metadata accessor for SocialProfilePageToolbarContentProvider;
        }

        else
        {
          sub_217009664();
          v152 = v180;
          sub_2170081F4();
          v153 = OUTLINED_FUNCTION_43_1(&qword_280E2B3A0, &qword_27CAB79C8);
          OUTLINED_FUNCTION_48_20();
          v154 = v183;
          MEMORY[0x21CE9A570](v152, v183, v153);
          v155 = sub_2167CC288();
          v199 = &type metadata for ReplayToolbarContent;
          v200 = v155;
          v156 = swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_53_18(v156, v181);
          v117 = swift_getOpaqueTypeConformance2();
          v199 = v154;
          v200 = v153;
          swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_87_10();
          v157 = v184;
          MEMORY[0x21CE9A590](v108, v182, v184, v117);
          sub_2167CBFA8();
          sub_2167CC138();
          OUTLINED_FUNCTION_10_64();
          MEMORY[0x21CE9A590]();
          sub_216697664(v60, &qword_27CAB79B8);
          OUTLINED_FUNCTION_67();
          v158 = v108;
          v108 = v198;
          v159(v158, v157);
          OUTLINED_FUNCTION_67();
          v160(v180, v154);
          v123 = type metadata accessor for ToolbarConfiguration;
        }

        sub_216B1872C(v67, v123);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_30_36();
      v124 = v169;
      sub_216B54C58(v67, v169, v125);
      v126 = type metadata accessor for GenericMusicItemToolbarContent(0);
      OUTLINED_FUNCTION_32_23();
      v129 = sub_216B54D10(v127, v128);
      v130 = v170;
      MEMORY[0x21CE9A570](v124, v126, v129);
      v131 = type metadata accessor for SocialProfileToolbarContent(255);
      OUTLINED_FUNCTION_33_28();
      v134 = sub_216B54D10(v132, v133);
      v199 = v131;
      v200 = v134;
      v117 = MEMORY[0x277CDE130];
      v135 = swift_getOpaqueTypeConformance2();
      v199 = v126;
      v200 = v129;
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_94_0();
      v136 = v179;
      MEMORY[0x21CE9A590](v130, v178, v179, v135);
      sub_2167CBFA8();
      sub_2167CC138();
      OUTLINED_FUNCTION_10_64();
      MEMORY[0x21CE9A580]();
      sub_216697664(v117, &qword_27CAB79B0);
      OUTLINED_FUNCTION_67();
      v137(v130, v136);
      OUTLINED_FUNCTION_25_36();
      v139 = v124;
    }

    sub_216B1872C(v139, v138);
    v108 = v198;
    v105 = v194;
LABEL_15:
    v161 = sub_2167CBF1C();
    OUTLINED_FUNCTION_94_0();
    v82 = v195;
    MEMORY[0x21CE9A570](v60, v195, v161);
    sub_2167CBDD4();
    v199 = v82;
    v200 = v161;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_46_23();
    v162 = v196;
    MEMORY[0x21CE9A590](v117);
    OUTLINED_FUNCTION_67();
    v163(v117, v162);
    sub_216697664(v60, &qword_27CAB79A8);
    OUTLINED_FUNCTION_39_23();
    sub_216B1872C(v108, v164);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_31_39();
  sub_216B54C58(v198, v0, v75);
  v76 = type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_29_34();
  v79 = sub_216B54D10(v77, v78);
  v80 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CE9A570](v80);
  v199 = v76;
  v200 = v79;
  OUTLINED_FUNCTION_21_41();
  v81 = swift_getOpaqueTypeConformance2();
  v82 = type metadata accessor for CuratorToolbarContent(255);
  OUTLINED_FUNCTION_26_39();
  v85 = sub_216B54D10(v83, v84);
  v199 = v82;
  v200 = v85;
  v86 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE9A580](v60, v56, v191, v81, v86);
  sub_2167CBDD4();
  v87 = sub_2167CBF1C();
  OUTLINED_FUNCTION_53_18(v87, v195);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_46_23();
  MEMORY[0x21CE9A580](v55);
  sub_216697664(v55, &qword_27CAB79A0);
  OUTLINED_FUNCTION_67();
  v88(v60, v56);
  v89 = OUTLINED_FUNCTION_18_43();
LABEL_5:
  sub_216B1872C(v89, v90);
  v105 = v194;
LABEL_16:
  v165 = sub_2167CBD04();
  MEMORY[0x21CE9A570](v82, v105, v165);
  sub_216697664(v82, &qword_27CAB7998);
  OUTLINED_FUNCTION_26();
}

void sub_216B53248()
{
  OUTLINED_FUNCTION_49();
  v50 = v1;
  v51 = v2;
  v49 = type metadata accessor for ReplayPageToolbarProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = (v5 - v4);
  type metadata accessor for GenericMusicItemToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  type metadata accessor for SocialProfilePageToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  type metadata accessor for CuratorPageToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  type metadata accessor for ArtistPageToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v20 = OUTLINED_FUNCTION_45_23();
  type metadata accessor for ToolbarConfiguration(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_8_73();
  sub_216B54CB4(v50, v24, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_41_22();
      sub_216B54C58(v24, v18, v46);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v18 + v47, v51, v48);
      OUTLINED_FUNCTION_40_20();
      v29 = v18;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_36_30();
      sub_216B54C58(v24, v14, v40);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v14 + v41, v51, v42);
      v30 = type metadata accessor for SocialProfilePageToolbarContentProvider;
      v29 = v14;
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_30_36();
      sub_216B54C58(v24, v10, v43);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v10 + v44, v51, v45);
      OUTLINED_FUNCTION_25_36();
      v29 = v10;
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_24_31();
      sub_216B54C58(v24, v6, v31);
      v33 = *(v6 + 11);
      v32 = *(v6 + 12);
      v35 = *(v6 + 13);
      v34 = *(v6 + 14);
      v36 = *(v49 + 36);
      v37 = *(type metadata accessor for ToolbarProperties(0) + 24);
      sub_217009124();
      OUTLINED_FUNCTION_34();
      (*(v38 + 16))(&v51[v37], &v6[v36]);
      sub_21700DF14();
      sub_21700DF14();
      OUTLINED_FUNCTION_34_26();
      sub_216B1872C(v6, v39);
      *v51 = v33;
      *(v51 + 1) = v32;
      *(v51 + 2) = v35;
      *(v51 + 3) = v34;
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_31_39();
      sub_216B54C58(v24, v0, v26);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v0 + v27, v51, v28);
      v29 = OUTLINED_FUNCTION_18_43();
LABEL_7:
      sub_216B1872C(v29, v30);
LABEL_8:
      OUTLINED_FUNCTION_26();
      return;
  }
}

void sub_216B5357C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v41 = v2;
  sub_217009574();
  OUTLINED_FUNCTION_1();
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v36 = v5;
  v6 = sub_2170091D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3860);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = (&v36 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3868);
  OUTLINED_FUNCTION_1();
  v37 = v18;
  v38 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_2167B7D58(v1, v16);
  v22 = v13[11];
  v23 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v16 + v22, 1, 1, v23);
  v24 = v13[12];
  *(v16 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v25 = v16 + v13[13];
  *v25 = swift_getKeyPath();
  v25[40] = 0;
  v16[7] = 0;
  v16[8] = 0;
  v16[5] = sub_216B5390C;
  v16[6] = 0;
  sub_2170091C4();
  OUTLINED_FUNCTION_28_1();
  v27 = sub_2166D9530(v26, &qword_27CAC3860);
  OUTLINED_FUNCTION_3_110();
  v30 = sub_216B54D10(v28, v29);
  sub_21700A364();
  (*(v8 + 8))(v12, v6);
  sub_216697664(v16, &qword_27CAC3860);
  v31 = v36;
  sub_217008C84();
  v42 = v13;
  v43 = v6;
  v44 = v27;
  v45 = v30;
  OUTLINED_FUNCTION_2_9();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v32, v33);
  v35 = v38;
  v34 = v39;
  sub_21700A3E4();
  (*(v40 + 8))(v31, v34);
  (*(v37 + 8))(v21, v35);
  OUTLINED_FUNCTION_26();
}

double sub_216B5390C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

void sub_216B539A4()
{
  OUTLINED_FUNCTION_49();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v1);
  v2 = sub_2170091D4();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v4);
  v5 = sub_2170087F4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850);
  sub_216B54B6C();
  sub_217009F14();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v9);
  OUTLINED_FUNCTION_38_28();
  v11 = v10;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_34();
  sub_216B54D10(v12, v13);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v16);
  OUTLINED_FUNCTION_49_23();
  OUTLINED_FUNCTION_3_110();
  sub_216B54D10(v17, v18);
  v19 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v21);
  sub_217009574();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v22, v23);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76C0);
  sub_2170089F4();
  OUTLINED_FUNCTION_27_1();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_48();
  sub_2166D9530(v24, v25);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v41 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v42 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v32);
  OUTLINED_FUNCTION_94_0();
  sub_217009F04();
  OUTLINED_FUNCTION_58_13();
  sub_2170087E4();
  sub_21700ABD4();
  OUTLINED_FUNCTION_67();
  v33(&qword_27CAB76C0, v5);
  OUTLINED_FUNCTION_67();
  v34(&unk_217017530, v11);
  OUTLINED_FUNCTION_58_13();
  sub_2170091C4();
  OUTLINED_FUNCTION_87_10();
  sub_21700A364();
  OUTLINED_FUNCTION_67();
  v35(&qword_27CAB76C0, v2);
  OUTLINED_FUNCTION_67();
  v36(v43, OpaqueTypeMetadata2);
  sub_21700B314();
  sub_2170092A4();
  swift_checkMetadataState();
  sub_21700AB44();
  OUTLINED_FUNCTION_67();
  v37(v44, v45);
  OUTLINED_FUNCTION_67();
  v38(v11, v19);
  swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v30, v41);
  v39 = *(v42 + 8);
  v39(v30, v41);
  sub_2166C24DC(v40, v41);
  v39(v40, v41);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B5429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  v10();
  sub_2166C24DC(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_2166C24DC(v12, a3, a4);
  return (v13)(v12, a3);
}

double sub_216B543D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_216B54460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v45 = a4;
  v6 = sub_217009574();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850);
  v10 = sub_216B54B6C();
  v48 = v9;
  v49 = a2;
  v50 = v10;
  v51 = a3;
  v11 = sub_217009F14();
  v12 = sub_2170087F4();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_216B54D10(&qword_27CAC0C30, MEMORY[0x277CDD9E0]);
  v48 = v11;
  v49 = v12;
  v50 = WitnessTable;
  v51 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_2170091D4();
  v48 = v11;
  v49 = v12;
  v50 = WitnessTable;
  v51 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_216B54D10(&qword_27CABC420, MEMORY[0x277CDDE40]);
  v48 = OpaqueTypeMetadata2;
  v49 = v16;
  v50 = OpaqueTypeConformance2;
  v51 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v48 = OpaqueTypeMetadata2;
  v49 = v16;
  v50 = OpaqueTypeConformance2;
  v51 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_216B54D10(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v48 = v19;
  v49 = v6;
  v22 = v6;
  v50 = v20;
  v51 = v21;
  v40 = MEMORY[0x277CDE6B0];
  v39 = swift_getOpaqueTypeMetadata2();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v24 = &v38 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76C0);
  v25 = sub_2170089F4();
  v41 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v38 - v29;
  v31 = swift_checkMetadataState();
  sub_217008C84();
  sub_21700A3E4();
  (*(v43 + 8))(v8, v22);
  v48 = v31;
  v49 = v22;
  v50 = v20;
  v51 = v21;
  v32 = swift_getOpaqueTypeConformance2();
  sub_216B54C04();
  v33 = v39;
  sub_21700AB74();
  (*(v42 + 8))(v24, v33);
  v34 = sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0);
  v46 = v32;
  v47 = v34;
  v35 = swift_getWitnessTable();
  sub_2166C24DC(v27, v25, v35);
  v36 = *(v41 + 8);
  v36(v27, v25);
  sub_2166C24DC(v30, v25, v35);
  return (v36)(v30, v25);
}

uint64_t sub_216B549B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7990);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = v10 - v4;
  sub_216B5207C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998);
  v7 = sub_2167CBD04();
  v10[0] = v6;
  v10[1] = v7;
  OUTLINED_FUNCTION_2_2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE9A570](v5, v0, OpaqueTypeConformance2);
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_216B54AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolbarConfiguration(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

unint64_t sub_216B54B6C()
{
  result = qword_27CAC3858;
  if (!qword_27CAC3858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3858);
  }

  return result;
}

unint64_t sub_216B54C04()
{
  result = qword_280E2A570;
  if (!qword_280E2A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A570);
  }

  return result;
}

uint64_t sub_216B54C58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B54CB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B54D10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AlbumDetailRecommendedShelvesIntent()
{
  result = qword_27CAC38B0;
  if (!qword_27CAC38B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B54E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v42 = type metadata accessor for AlbumDetailRecommendedShelvesIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216B551F8(JSContext a1)
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
    v8 = type metadata accessor for AlbumDetailRecommendedShelvesIntent();
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

uint64_t sub_216B553CC(uint64_t a1)
{
  result = sub_2166CE66C(&qword_27CAC38C0, type metadata accessor for AlbumDetailRecommendedShelvesIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B5546C(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE66C(&qword_27CAC38C0, type metadata accessor for AlbumDetailRecommendedShelvesIntent);
  result = sub_2166CE66C(&qword_27CAC38C8, type metadata accessor for AlbumDetailRecommendedShelvesIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216B5551C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  (*(v6 + 16))(a3, a1);
  v7 = (a3 + *(type metadata accessor for PageLoadingView() + 52));
  v8 = sub_2168E168C();
  v10 = v9;
  result = (*(v6 + 8))(a1, a2);
  *v7 = v8;
  v7[1] = v10;
  return result;
}