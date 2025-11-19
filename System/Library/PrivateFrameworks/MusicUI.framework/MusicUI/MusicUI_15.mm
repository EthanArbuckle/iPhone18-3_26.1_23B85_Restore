uint64_t sub_216809A34(uint64_t a1)
{
  result = sub_216809AAC(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216809AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216809AF8()
{
  v0 = sub_217008B44();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217008B34();
  __swift_allocate_value_buffer(v4, qword_280E2C3D8);
  v5 = __swift_project_value_buffer(v4, qword_280E2C3D8);
  v6 = *(v1 + 28);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_217009294();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  __asm { FMOV            V0.2D, #5.0 }

  *v3 = _Q0;
  sub_21680C2C0(v3, v5);
  *(v5 + *(v4 + 20)) = 0xC034000000000000;
  return sub_21680CFD0(v3, MEMORY[0x277CDFC08]);
}

uint64_t sub_216809C38()
{
  result = sub_217009D44();
  qword_280E2C340 = result;
  return result;
}

uint64_t sub_216809C58()
{
  result = sub_217009E94();
  qword_280E2C328 = result;
  return result;
}

uint64_t sub_216809C78()
{
  result = sub_21700AD34();
  qword_27CAB89E0 = result;
  return result;
}

uint64_t sub_216809C98()
{
  result = sub_21700AD14();
  qword_280E2C308 = result;
  return result;
}

uint64_t sub_216809CB8()
{
  result = sub_21700AD34();
  qword_280E2C2F0 = result;
  return result;
}

uint64_t sub_216809CD8()
{
  result = sub_21700AD34();
  qword_280E2C318 = result;
  return result;
}

uint64_t sub_216809CF8()
{
  result = sub_21700AD14();
  qword_27CAB89E8 = result;
  return result;
}

uint64_t sub_216809D18()
{
  result = sub_21700AD34();
  qword_280E2C3C8 = result;
  return result;
}

uint64_t sub_216809D38()
{
  result = sub_21700AD14();
  qword_280E2C3B0 = result;
  return result;
}

uint64_t sub_216809D58()
{
  v0 = sub_217008C14();
  __swift_allocate_value_buffer(v0, qword_280E2C388);
  __swift_project_value_buffer(v0, qword_280E2C388);
  return sub_217008C04();
}

double sub_216809DA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v25 = sub_2170090F4();
  *&v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C70);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C78);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = sub_217009394();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C80);
  (*(*(v16 - 8) + 16))(v10, a1, v16);
  v17 = &v10[*(v8 + 36)];
  *v17 = v15;
  v17[1] = sub_21680A0F8;
  v17[2] = 0;
  if (*v3)
  {
    sub_217008354();
  }

  else
  {
    sub_217008344();
  }

  sub_21680DDE0();
  sub_21700A624();
  sub_216699778(v10, &qword_27CAB8C70);
  v18 = *(v3 + 8);
  if (*(v3 + 40))
  {
    v19 = *(v3 + 24);
  }

  else
  {

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680DE98(v3);
    (*(v24 + 8))(v7, v25);
    v18 = v26;
    v19 = v27;
  }

  v25 = v19;
  v24 = v18;
  (*(v12 + 32))(a2, v14, v11);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C88) + 36);
  result = *&v24;
  v23 = v25;
  *v21 = v24;
  *(v21 + 16) = v23;
  *(v21 + 32) = 0;
  return result;
}

void sub_21680A15C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_217006274();
  sub_21700DF14();
  v49 = MEMORY[0x277D84F90];
  v47 = v10;
  v48 = v9;
  while (1)
  {
    v52 = v5;
    v53 = v3;
    v50 = 0x3E6B72616D3CLL;
    v51 = 0xE600000000000000;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2167B2E14();
    sub_21700DF14();
    OUTLINED_FUNCTION_26_12();
    sub_21700F1C4();
    v11 = OUTLINED_FUNCTION_35_9();
    sub_216699778(v11, &qword_27CAB89F0);

    if (v1)
    {
      break;
    }

    v12 = v49;
    v13 = OUTLINED_FUNCTION_44_10();
    v1 = MEMORY[0x21CE9F400](v13);
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_216938280();
        v17 = v36;
      }

      v18 = *(v17 + 16);
      v19 = v17;
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_216938280();
        v19 = v37;
      }

      *(v19 + 16) = v18 + 1;
      v20 = v19 + 24 * v18;
      *(v20 + 32) = v1;
      *(v20 + 40) = v15;
      *(v20 + 48) = 0;
    }

    else
    {

      v19 = v12;
    }

    v21 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v3) & 0xF;
    }

    if (4 * v21 < v0 >> 14)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_29_0();
      sub_216938280();
      v41 = v44;
      goto LABEL_28;
    }

    v49 = v19;
    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_10_13();
    v5 = MEMORY[0x21CE9F400]();
    v3 = v22;

    v52 = v5;
    v53 = v3;
    v50 = 0x3E6B72616D2F3CLL;
    v51 = 0xE700000000000000;
    v24 = v47;
    v23 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
    sub_21700DF14();
    OUTLINED_FUNCTION_26_12();
    sub_21700F1C4();
    v25 = OUTLINED_FUNCTION_35_9();
    v9 = v23;
    v10 = v24;
    sub_216699778(v25, &qword_27CAB89F0);

    if ((v1 & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_44_10();
      v27 = MEMORY[0x21CE9F400](v26);
      v1 = v28;
      v29 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_216938280();
        v29 = v38;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      v49 = v29;
      if (v31 >= v30 >> 1)
      {
        sub_216938280();
        v49 = v39;
      }

      v32 = v49;
      *(v49 + 16) = v31 + 1;
      v33 = v32 + 24 * v31;
      *(v33 + 32) = v27;
      *(v33 + 40) = v1;
      *(v33 + 48) = 1;
      v34 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v34 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v34 < v0 >> 14)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_45_6();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_10_13();
      v5 = MEMORY[0x21CE9F400]();
      v3 = v35;

      v9 = v48;
    }
  }

  v40 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v3) & 0xF;
  }

  v41 = v49;
  if (!v40)
  {

    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  v42 = *(v41 + 16);
  if (v42 >= *(v41 + 24) >> 1)
  {
    sub_216938280();
    v41 = v45;
  }

  *(v41 + 16) = v42 + 1;
  v43 = v41 + 24 * v42;
  *(v43 + 32) = v5;
  *(v43 + 40) = v3;
  *(v43 + 48) = 0;
LABEL_32:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21680A5E0()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for TrackLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 120));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680A73C()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for BubbleLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 40));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680A8B0()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for SquareLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 80));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680AA54()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for SuperHeroLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 96));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680ABC8()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for AlbumTrackLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 104));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680AD24()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for HorizontalLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 76));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680AE98()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = v1 + *(type metadata accessor for SplitPosterLockup(v8) + 24);
  v10 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(v9 + *(v10 + 20), v5, &qword_27CAB6A00);
  v11 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v5, 1, v11) == 1)
  {
    sub_216699778(v5, &qword_27CAB6A00);
    v12 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v12);
LABEL_5:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  sub_216C6C5E8(v0);
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v5, v13);
  v14 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v14);
  if (v15)
  {
    goto LABEL_5;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v16 = OUTLINED_FUNCTION_116();
  v17(v16);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B068(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B1E8(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B350()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for PlaylistTrackLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 100));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B4C4(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B644(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B7C4(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B98C(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680BB0C(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680BC8C(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11);
  v12 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_7_18(v12);
  if (v16)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v13 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v13);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v14);
  v15 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v15);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680BE0C()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_8();
  v7 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  OUTLINED_FUNCTION_13_11(*(v7 + 20));
  v8 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_8_16(v8);
  if (v12)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v9 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v9);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v10);
  v11 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v11);
  if (v12)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v13 = OUTLINED_FUNCTION_116();
  v14(v13);
  return OUTLINED_FUNCTION_6_23();
}

char *sub_21680BF80(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  a1(v5);
  v8 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v8);
  if (v9)
  {
    sub_216699778(v7, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
  }

  else
  {
    v1 = v7;
    sub_217006904();
    OUTLINED_FUNCTION_2_27();
    v10 = OUTLINED_FUNCTION_116();
    v11(v10);
  }

  return v1;
}

unint64_t sub_21680C078()
{
  result = qword_280E2B300;
  if (!qword_280E2B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A08);
    sub_21680DFBC(&qword_280E44DE0, &unk_27CAB8A40);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B300);
  }

  return result;
}

unint64_t sub_21680C138()
{
  result = qword_280E3DBF0[0];
  if (!qword_280E3DBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3DBF0);
  }

  return result;
}

uint64_t sub_21680C194(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_21680C20C()
{
  result = qword_280E3AD78;
  if (!qword_280E3AD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A58);
    sub_216809AAC(qword_280E3ADD0, type metadata accessor for TrailingSwipeActions);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3AD78);
  }

  return result;
}

uint64_t sub_21680C2C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_21680C328()
{
  v0 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216808278();
}

unint64_t sub_21680C37C()
{
  result = qword_280E2AE88;
  if (!qword_280E2AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A78);
    sub_21680C408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE88);
  }

  return result;
}

unint64_t sub_21680C408()
{
  result = qword_280E2AF60;
  if (!qword_280E2AF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A98);
    sub_21680C494();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF60);
  }

  return result;
}

unint64_t sub_21680C494()
{
  result = qword_280E2B098;
  if (!qword_280E2B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A88);
    sub_21680DFBC(&qword_280E2A518, &unk_27CAB8AA8);
    sub_21680DFBC(&qword_280E2A810, &unk_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B098);
  }

  return result;
}

uint64_t sub_21680C578(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_21680C5F4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216806EDC(a1);
}

uint64_t sub_21680C670(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_36(v1);
  v3 = OUTLINED_FUNCTION_31_3(*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21680C6E8()
{
  result = qword_280E2ADB0;
  if (!qword_280E2ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B28);
    sub_21680C7A0();
    sub_21680DFBC(&qword_280E2A820, &unk_27CAB8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADB0);
  }

  return result;
}

unint64_t sub_21680C7A0()
{
  result = qword_280E2AE10;
  if (!qword_280E2AE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B50);
    sub_21680C82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE10);
  }

  return result;
}

unint64_t sub_21680C82C()
{
  result = qword_280E2AEA8;
  if (!qword_280E2AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B48);
    sub_21680C8E4();
    sub_21680DFBC(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEA8);
  }

  return result;
}

unint64_t sub_21680C8E4()
{
  result = qword_280E2AF80;
  if (!qword_280E2AF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B40);
    sub_21680C99C();
    sub_21680DFBC(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF80);
  }

  return result;
}

unint64_t sub_21680C99C()
{
  result = qword_280E2B0C8;
  if (!qword_280E2B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B38);
    sub_21680DFBC(&qword_280E2A710, &unk_27CAB7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0C8);
  }

  return result;
}

unint64_t sub_21680CA54()
{
  result = qword_280E2ADC0;
  if (!qword_280E2ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B30);
    sub_21680CAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADC0);
  }

  return result;
}

unint64_t sub_21680CAE0()
{
  result = qword_280E2AE28;
  if (!qword_280E2AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B78);
    sub_21680CB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE28);
  }

  return result;
}

unint64_t sub_21680CB6C()
{
  result = qword_280E2AED0;
  if (!qword_280E2AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B70);
    sub_21680CBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AED0);
  }

  return result;
}

unint64_t sub_21680CBF8()
{
  result = qword_280E2AFC0;
  if (!qword_280E2AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B68);
    sub_21680CC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFC0);
  }

  return result;
}

unint64_t sub_21680CC84()
{
  result = qword_280E2B168;
  if (!qword_280E2B168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B28);
    sub_217009574();
    sub_21680C6E8();
    sub_216809AAC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B168);
  }

  return result;
}

void sub_21680CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(sub_2170067A4() - 8);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v24 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v24);
  v32 = v20 + ((v22 + v23 + *(v31 + 80)) & ~*(v31 + 80));

  sub_2169BDF30(v20 + v22, v32, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_21680CE98()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_216964018(v3, v4);
}

unint64_t sub_21680CEF8()
{
  result = qword_280E3CE58[0];
  if (!qword_280E3CE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3CE58);
  }

  return result;
}

unint64_t sub_21680CF4C()
{
  result = qword_280E2B0A8;
  if (!qword_280E2B0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0A8);
  }

  return result;
}

uint64_t sub_21680CFD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21680D03C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21680D07C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21680D104()
{
  result = type metadata accessor for TopSearchLockup();
  if (v1 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21680D1C8()
{
  sub_21680D2FC();
  if (v0 <= 0x3F)
  {
    sub_2167D1C30();
    if (v1 <= 0x3F)
    {
      sub_21680D3D8(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_21680D3D8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
        if (v3 <= 0x3F)
        {
          sub_21680D428();
          if (v4 <= 0x3F)
          {
            sub_2167B84AC();
            if (v5 <= 0x3F)
            {
              sub_21680D48C();
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

void sub_21680D2FC()
{
  if (!qword_280E45840)
  {
    type metadata accessor for TopSearchLockup();
    sub_216809AAC(&qword_280E41D00, type metadata accessor for TopSearchLockup);
    sub_216809AAC(&qword_280E41CE8, type metadata accessor for TopSearchLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E45840);
    }
  }
}

void sub_21680D3D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21680D428()
{
  if (!qword_280E2B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7310);
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B4D0);
    }
  }
}

void sub_21680D48C()
{
  if (!qword_280E2B430)
  {
    type metadata accessor for GenericItemStateObserver(255);
    sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B430);
    }
  }
}

unint64_t sub_21680D520()
{
  result = qword_280E2B130;
  if (!qword_280E2B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A30);
    sub_21680D694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B130);
  }

  return result;
}

unint64_t sub_21680D694()
{
  result = qword_280E2AFB8;
  if (!qword_280E2AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A30);
    sub_21680D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFB8);
  }

  return result;
}

unint64_t sub_21680D720()
{
  result = qword_280E2B160;
  if (!qword_280E2B160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A08);
    sub_21680C078();
    swift_getOpaqueTypeConformance2();
    sub_21680C194(&qword_280E3DBE8, &qword_27CAB8A48, &unk_21701AD10, sub_21680C138);
    swift_getOpaqueTypeConformance2();
    sub_21680C194(qword_280E3AD80, &qword_27CAB8A50, &unk_217064CD0, sub_21680C20C);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A728, &qword_27CAB8A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B160);
  }

  return result;
}

unint64_t sub_21680D978()
{
  result = qword_280E2AEB0;
  if (!qword_280E2AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C00);
    sub_21680DA30();
    sub_21680DFBC(&qword_280E2A718, &unk_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEB0);
  }

  return result;
}

unint64_t sub_21680DA30()
{
  result = qword_280E2AF88;
  if (!qword_280E2AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C08);
    sub_21680C99C();
    sub_216809AAC(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF88);
  }

  return result;
}

unint64_t sub_21680DB9C()
{
  result = qword_27CAB8C58;
  if (!qword_27CAB8C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C50);
    sub_21680DC54();
    sub_21680DFBC(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8C58);
  }

  return result;
}

unint64_t sub_21680DC54()
{
  result = qword_280E2B1E8;
  if (!qword_280E2B1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C60);
    sub_21680DFBC(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1E8);
  }

  return result;
}

uint64_t sub_21680DD18(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[41])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_21680DD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21680DDE0()
{
  result = qword_280E2B208;
  if (!qword_280E2B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C70);
    sub_21680DFBC(&qword_280E2A890, &unk_27CAB8C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B208);
  }

  return result;
}

unint64_t sub_21680DEC8()
{
  result = qword_280E2B158;
  if (!qword_280E2B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C70);
    sub_21680DDE0();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B158);
  }

  return result;
}

uint64_t sub_21680DFBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21680E024(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 193))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21680E064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21680E104@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C90);
  MEMORY[0x28223BE20](v8);
  v10 = (&v35 - v9);
  v11 = *v1;
  if (*(*v1 + 16) || *(v1[1] + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98);
    sub_21700B0E4();
    v12 = v1[1];
    sub_21700DF14();
    sub_21700DF14();
    sub_216BF450C(v38, v11, v12, v10);
    v13 = sub_217009CB4();
    v14 = v2[21];
    if (*(v2 + 192) != 1)
    {
      v37 = a1;
      v15 = v2[20];
      v16 = v2[23];
      v36 = v2[22];
      v35 = v16;

      sub_21700ED94();
      v17 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      v18 = v15;
      a1 = v37;
      sub_21680E444(v18, v14, v36, v35, 0);
      (*(v5 + 8))(v7, v4);
    }

    sub_217007F24();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CA0) + 36);
    *v27 = v13;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    v28 = sub_217009CA4();
    sub_217007F24();
    v29 = v10 + *(v8 + 36);
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    sub_21680E450(v10, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }
}

uint64_t sub_21680E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21680E450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21680E4C0()
{
  result = qword_27CAB8CA8;
  if (!qword_27CAB8CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8CB0);
    sub_21680E5A0(&qword_27CAB8CB8, &qword_27CAB8C90, &unk_21701B430, sub_21680E570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8CA8);
  }

  return result;
}

uint64_t sub_21680E5A0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21680E624()
{
  result = qword_27CAB8CC8;
  if (!qword_27CAB8CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8CC8);
  }

  return result;
}

uint64_t sub_21680E688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = swift_getKeyPath();
  v4 = type metadata accessor for ContainerPlayableItemsSectionHeaderView();
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a2 + 160) = 0;
  v5 = *(v4 + 36);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  sub_2167CD8D8();
  sub_2170082B4();
  v10[0] = 0x4038000000000000;
  sub_2170082B4();
  sub_216681B04(a1, a2, &qword_27CAB8100);
  sub_216681B04(a1, v10, &qword_27CAB8100);
  if (v10[1])
  {
    sub_216681B04(&v11, &v12, &qword_27CAB6DB0);
    sub_2167ADC98(v10);
  }

  else
  {
    sub_216697664(v10, &qword_27CAB8100);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  v6 = v13;
  *(a2 + 72) = v12;
  *(a2 + 88) = v6;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  *(a2 + 104) = v14;
  *(a2 + 112) = v7;
  sub_21700DF14();
  sub_21700DF14();
  result = sub_21680E880(a1);
  *(a2 + 120) = v8;
  return result;
}

uint64_t type metadata accessor for ContainerPlayableItemsSectionHeaderView()
{
  result = qword_280E2D9E8;
  if (!qword_280E2D9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21680E8FC()
{
  sub_2166D9E00(319, &qword_280E2C9A8, &type metadata for Link, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E2A2A8, &qword_27CAB6D68);
    if (v1 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E29E28, &qword_27CAB74F8);
      if (v2 <= 0x3F)
      {
        sub_21680EAD0(319, &qword_280E29EA0, type metadata accessor for ContainerPlayableItemsSectionHeader.Button, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_2166D9E00(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21680EAD0(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2167D1C30();
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

void sub_21680EAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21680EB50@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CF0);
  sub_21680ED20(v1, a1 + *(v3 + 44));
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CF8);
  OUTLINED_FUNCTION_3_32(v4);
  sub_217009C94();
  type metadata accessor for ContainerPlayableItemsSectionHeaderView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D00);
  OUTLINED_FUNCTION_0_39(v5);
  sub_217009CA4();
  sub_2170082C4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D08);
  OUTLINED_FUNCTION_0_39(v6);
  sub_217009CB4();
  sub_21680FAAC();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D10);
  OUTLINED_FUNCTION_0_39(v7);
  sub_217009CD4();
  sub_21680FAAC();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D18);
  OUTLINED_FUNCTION_0_39(v8);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D20);
  return OUTLINED_FUNCTION_3_32(v9);
}

uint64_t sub_21680ED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_217009314();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2170099D4();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D28);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D30);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D38);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  sub_21680F1EC(a1, v9);
  sub_2170099B4();
  v19 = sub_21680FC8C();
  sub_21700A784();
  (*(v4 + 8))(v6, v39);
  sub_216697664(v9, &qword_27CAB8D28);
  v20 = v40;
  sub_217009304();
  v48 = v7;
  v49 = v19;
  swift_getOpaqueTypeConformance2();
  sub_21700A504();
  (*(v41 + 8))(v20, v42);
  (*(v11 + 8))(v13, v10);
  v21 = *(sub_21680F864() + 16);

  if (v21)
  {
    v21 = sub_21680F864();
    v22 = sub_217009C94();
    sub_217007F24();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v48) = 0;
    v31 = v22;
    v32 = 0x4028000000000000;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  v33 = v43;
  sub_2167006F4(v18, v43);
  v34 = v44;
  sub_2167006F4(v33, v44);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D58) + 48));
  *&v45 = v21;
  *(&v45 + 1) = v32;
  *&v46 = v31;
  *(&v46 + 1) = v24;
  *v47 = v26;
  *&v47[8] = v28;
  *&v47[16] = v30;
  v47[24] = 0;
  v36 = v46;
  *v35 = v45;
  v35[1] = v36;
  v35[2] = *v47;
  *(v35 + 41) = *&v47[9];
  sub_216681B04(&v45, &v48, &qword_27CAB8D60);
  sub_21670075C(v18);
  v48 = v21;
  v49 = v32;
  v50 = v31;
  v51 = v24;
  v52 = v26;
  v53 = v28;
  v54 = v30;
  v55 = 0;
  sub_216697664(&v48, &qword_27CAB8D60);
  return sub_21670075C(v33);
}

uint64_t sub_21680F1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D68);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = sub_217008844();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216681B04(a1, __src, &qword_27CAB8100);
  if (__src[1])
  {
    v49 = v11;
    v50 = v10;
    v52 = v9;
    v54 = a2;
    memcpy(v57, __src, 0x48uLL);
    v14 = qword_27CAB5918;
    sub_21700DF14();
    if (v14 != -1)
    {
      swift_once();
    }

    v48 = v13;
    v51 = a1;
    v53 = v7;
    v15 = sub_21700A094();
    v17 = v16;
    v19 = v18;

    if (qword_27CAB5920 != -1)
    {
      swift_once();
    }

    v20 = sub_217009FA4();
    v22 = v21;
    v24 = v23;
    sub_21678817C(v15, v17, v19 & 1);

    sub_21700AD14();
    v25 = sub_21700A034();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sub_21678817C(v20, v22, v24 & 1);

    a1 = v51;
    sub_216681B04(v51 + 72, v55, &qword_27CAB6DB0);
    v55[5] = v25;
    v55[6] = v27;
    LOBYTE(v55[7]) = v29 & 1;
    v55[8] = v31;
    v32 = type metadata accessor for ContainerPlayableItemsSectionHeaderView();
    v33 = v48;
    sub_216C0C570(v32, v34, v35, v36, v37, v38, v39, v40, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4]);
    v41 = sub_217008834();
    (*(v49 + 8))(v33, v50);
    sub_2167ADC98(v57);
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    KeyPath = swift_getKeyPath();
    memcpy(__src, v55, 0x48uLL);
    v56 = 0;
    __src[9] = KeyPath;
    __src[10] = v42;
    LOBYTE(__src[11]) = 0;
    v7 = v53;
    a2 = v54;
    v9 = v52;
  }

  else
  {
    sub_216697664(__src, &qword_27CAB8100);
    memset(__src, 0, 89);
  }

  if (*(a1 + 112))
  {
    v57[0] = *(a1 + 112);
    swift_getKeyPath();
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    sub_2166D9530(&qword_27CAB8D88, &qword_27CAB74F8);
    sub_21700B154();
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D70);
  __swift_storeEnumTagSinglePayload(v9, v44, 1, v45);
  sub_216681B04(__src, v57, &qword_27CAB8D78);
  sub_216681B04(v9, v7, &qword_27CAB8D68);
  sub_216681B04(v57, a2, &qword_27CAB8D78);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D80);
  sub_216681B04(v7, a2 + *(v46 + 48), &qword_27CAB8D68);
  sub_216697664(v9, &qword_27CAB8D68);
  sub_216697664(__src, &qword_27CAB8D78);
  sub_216697664(v7, &qword_27CAB8D68);
  return sub_216697664(v57, &qword_27CAB8D78);
}

uint64_t sub_21680F74C@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_27CAB5928;
  sub_21700DF14();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_21700A094();
  v5 = v4;
  v7 = v6;

  sub_21700AD34();
  v8 = sub_21700A034();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_21678817C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_21680F864()
{
  v15 = type metadata accessor for ContainerPlayableItemsSectionHeader.Button();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaButtonType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 120);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v16 = MEMORY[0x277D84F90];
    sub_216AB9854();
    v10 = v16;
    v11 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v12 = *(v1 + 72);
    do
    {
      sub_21680FD3C(v11, v3);
      sub_21680FDA0(v3, v7, type metadata accessor for LinkComponentModel);
      swift_storeEnumTagMultiPayload();
      v16 = v10;
      v13 = *(v10 + 16);
      if (v13 >= *(v10 + 24) >> 1)
      {
        sub_216AB9854();
        v10 = v16;
      }

      *(v10 + 16) = v13 + 1;
      sub_21680FDA0(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for MediaButtonType);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

double sub_21680FAAC()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  if (*(v0 + 160) == 1)
  {
    return *(v0 + 128);
  }

  sub_21700ED94();
  v10 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();
  sub_21680E444(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t sub_21680FC2C()
{
  result = sub_217009D34();
  qword_27CAB8CD8 = result;
  return result;
}

uint64_t sub_21680FC4C()
{
  result = sub_217009D94();
  qword_27CAB8CE0 = v1;
  return result;
}

uint64_t sub_21680FC6C()
{
  result = sub_217009D44();
  qword_27CAB8CE8 = result;
  return result;
}

unint64_t sub_21680FC8C()
{
  result = qword_27CAB8D40;
  if (!qword_27CAB8D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8D28);
    sub_2166D9530(&qword_27CAB8D48, &qword_27CAB8D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8D40);
  }

  return result;
}

uint64_t sub_21680FD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerPlayableItemsSectionHeader.Button();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21680FDA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_21680FE00()
{
  result = qword_27CAB8D90;
  if (!qword_27CAB8D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8D20);
    sub_21680FF14(&qword_27CAB8D98, &qword_27CAB8D18, &unk_21701B5B0, sub_21680FEE4);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8D90);
  }

  return result;
}

uint64_t sub_21680FF14(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21680FFF8()
{
  result = qword_27CAB8DB8;
  if (!qword_27CAB8DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8CF8);
    sub_2166D9530(&qword_27CAB8DC0, &qword_27CAB8DC8);
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8DB8);
  }

  return result;
}

uint64_t InlineBubbleTipProvider.InlineBubbleTip.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_216810134@<X0>(void *a1@<X8>)
{
  result = sub_2168101AC();
  *a1 = v3;
  return result;
}

uint64_t sub_2168101AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216810224()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216810294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_2168103D4(v4);
}

uint64_t sub_216810368()
{
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_2168103D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  (*(v5 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0);
  sub_217007DC4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_2168104EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider__placement;
  v18[1] = 0x8000000000000000;
  sub_217007DA4();
  (*(v9 + 32))(v3 + v15, v12, v7);
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_cancellables) = MEMORY[0x277D84FA0];
  v16 = (v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_placementID);
  *v16 = v14;
  v16[1] = v13;
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_context) = a2;
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_bootstrapState) = a3;

  sub_216810744();

  return v3;
}

uint64_t sub_216810650(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager))
  {
    v2 = result;

    sub_21681108C(v2);
  }

  return result;
}

uint64_t sub_2168106B0()
{
  if (*(v0 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager))
  {

    OUTLINED_FUNCTION_1_28();
    sub_216810F90(1, v1, v2, sub_2168116CC, sub_216860C84);
    sub_2168111EC();
  }

  return result;
}

uint64_t sub_216810744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  sub_217007DB4();
  swift_endAccess();
  sub_2166D9530(&qword_280E484E0, &unk_27CAC9DE0);

  sub_217007E84();

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_120_0();
  sub_217007D24();
  swift_endAccess();
}

unint64_t sub_2168108E8(unint64_t *a1)
{
  result = *a1;
  if ((~result & 0xF000000000000007) != 0)
  {
    if (result >> 62)
    {
      if (result >> 62 == 1)
      {
        v2 = (result & 0x3FFFFFFFFFFFFFFFLL);
        return sub_216810224();
      }
    }

    else
    {
      return sub_216810954();
    }
  }

  return result;
}

uint64_t sub_216810954()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DE0);
  swift_allocObject();
  sub_21700DF14();
  sub_21700DF14();

  sub_216859860();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DE8);
  sub_2166D9530(&qword_280E48518, &qword_27CAB8DE8);
  sub_217007E44();

  swift_getKeyPath();
  sub_2166D9530(&qword_280E48590, &qword_27CAB8DD8);
  sub_217007E94();

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_120_0();
  sub_217007D24();
  swift_endAccess();

  *(v0 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager) = v7;
}

uint64_t sub_216810BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
  }

  else
  {
    v4 = 0x8000000000000008;
  }

  *a2 = v4;
}

uint64_t InlineBubbleTipProvider.deinit()
{
  v1 = OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider__placement;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InlineBubbleTipProvider.__deallocating_deinit()
{
  InlineBubbleTipProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216810D58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineBubbleTipProvider();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t static InlineBubbleTipProvider.InlineBubbleTip.== infix(_:_:)()
{
  v0 = BubbleTipModel.id.getter();
  v2 = v1;
  if (v0 == BubbleTipModel.id.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21700F7D4();
  }

  return v5 & 1;
}

uint64_t sub_216810E44()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  return *(v0 + qword_280E41B60);
}

uint64_t sub_216810F90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (*(v5 + qword_280E41AD8) == (result & 1))
  {
    *(v5 + qword_280E41AD8) = result & 1;
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v8(0);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    a5(v10, a4);
  }

  return result;
}

uint64_t sub_21681108C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700D194();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216F0D610(a1, v8);
  (*(v6 + 16))(v4, v8, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_21685A01C(v4);
  sub_2168116E4(v4);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2168111EC()
{
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_280E73D20);

  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_2166A85FC(0xD000000000000019, 0x8000000217082A10, &v6);
    *(v3 + 12) = 1024;
    *(v3 + 14) = sub_216810E44() & 1;

    _os_log_impl(&dword_216679000, v1, v2, "💬 %s Was dismissed deferred: %{BOOL}d", v3, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x21CEA1440](v4, -1, -1);
    MEMORY[0x21CEA1440](v3, -1, -1);
  }

  else
  {
  }

  if (sub_216810E44())
  {
    sub_21685C924();
  }

  return sub_2168594C8(0);
}

uint64_t type metadata accessor for InlineBubbleTipProvider()
{
  result = qword_280E38488;
  if (!qword_280E38488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168113EC()
{
  sub_216811554();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216811554()
{
  if (!qword_280E48438)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48438);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_7MusicUI23InlineBubbleTipProviderC9PlacementO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2168115C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216811614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_216811674(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_2168116E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21681174C(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_2168117A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LibraryAction();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  (*(v12 + 16))(&v21 - v16, a1, v10);
  v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  (*(v12 + 32))(&v19[v18], v17, v10);
  *&v19[(v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  return sub_216ECDBF4(&unk_21701B9C8, v19);
}

uint64_t sub_216811908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = sub_21700D2A4();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for NoticeAction(0);
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = *(a4 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v11 = type metadata accessor for LibraryActionType();
  v6[32] = v11;
  v6[33] = *(v11 - 8);
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216811BDC, 0, 0);
}

uint64_t sub_216811BDC()
{
  v1 = v0[25];
  (*(v0[33] + 16))(v0[34], v0[9], v0[32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v3(v0[30], v0[34], v0[11]);
      v17 = swift_task_alloc();
      v0[41] = v17;
      *v17 = v0;
      v17[1] = sub_216812608;
      OUTLINED_FUNCTION_32_10(v0[30]);
      goto LABEL_13;
    case 2:
      v3(v0[29], v0[34], v0[11]);
      v14 = swift_task_alloc();
      v0[43] = v14;
      *v14 = v0;
      v14[1] = sub_2168127E8;
      OUTLINED_FUNCTION_32_10(v0[29]);
LABEL_13:
      OUTLINED_FUNCTION_47_8();

      result = sub_21681357C();
      break;
    case 3:
      v3(v0[28], v0[34], v0[11]);
      sub_21700BE44();
      v0[45] = sub_21700BE34();
      v15 = swift_task_alloc();
      v0[46] = v15;
      *v15 = v0;
      v15[1] = sub_2168129C8;
      OUTLINED_FUNCTION_32_10(v0[28]);
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A5F0]();
      break;
    case 4:
      v3(v0[27], v0[34], v0[11]);
      sub_21700BE44();
      v0[48] = sub_21700BE34();
      v12 = swift_task_alloc();
      v0[49] = v12;
      *v12 = v0;
      v12[1] = sub_216812BC4;
      OUTLINED_FUNCTION_32_10(v0[27]);
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A6D8]();
      break;
    case 5:
      v3(v0[26], v0[34], v0[11]);
      sub_21700BE44();
      v0[51] = sub_21700BE34();
      v19 = swift_task_alloc();
      v0[52] = v19;
      *v19 = v0;
      v19[1] = sub_216812DC0;
      OUTLINED_FUNCTION_32_10(v0[26]);
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A5E8]();
      break;
    default:
      v4 = v0[31];
      v5 = v0[25];
      v6 = v0[11];
      v3(v4, v0[34], v6);
      sub_21700BE44();
      v0[35] = sub_21700BE34();
      sub_216A1DB44(v6, v6);
      swift_allocObject();
      v7 = sub_21700E854();
      (*(v5 + 16))(v8, v4, v6);
      v9 = sub_216A3FD4C(v7);
      v0[36] = v9;
      v0[7] = v9;
      v10 = swift_task_alloc();
      v0[37] = v10;
      sub_21700E984();
      swift_getWitnessTable();
      *v10 = v0;
      v10[1] = sub_2168120A8;
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A698]();
      break;
  }

  return result;
}

uint64_t sub_2168120A8()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2168121E0()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[21];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
  __swift_storeEnumTagSinglePayload(v1, 3, 11, v6);
  sub_21700D234();
  v0[5] = v2;
  v0[6] = sub_216816290(&qword_27CAB8E08, type metadata accessor for NoticeAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2168162D8(v1, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
  (*(v4 + 104))(v3, *MEMORY[0x277D21E18], v5);
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_216812388;
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[10];

  return MEMORY[0x28217F468](v10, v0 + 2, v11, v12, v9);
}

uint64_t sub_216812388()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[40] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[18] + 8))(v3[19], v3[17]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 2));
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216812508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_22_19();
  (*(v16 + 8))(v14, v15);
  v17 = OUTLINED_FUNCTION_39_3();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_40();
  (*(v20 + 104))(v19, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812608()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168127E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2168128E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168129C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812BC4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812DC0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  (*(v14[25] + 8))(v14[26], v14[11]);
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21681308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_22_19();
  (*(v17 + 8))(v14, v15);
  v18 = OUTLINED_FUNCTION_39_3();
  v19(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v16 + 16);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21681317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216813248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216813314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168133E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168134AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  (*(v14[25] + 8))(v14[26], v14[11]);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21681357C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  *(v0 + 424) = v3;
  *(v0 + 432) = v4;
  *(v0 + 408) = v5;
  *(v0 + 416) = v1;
  *(v0 + 808) = v6;
  *(v0 + 400) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  *(v0 + 440) = v8;
  OUTLINED_FUNCTION_2(v8);
  *(v0 + 448) = v9;
  *(v0 + 456) = OUTLINED_FUNCTION_80();
  v10 = sub_21700D2A4();
  *(v0 + 464) = v10;
  OUTLINED_FUNCTION_2(v10);
  *(v0 + 472) = v11;
  *(v0 + 480) = OUTLINED_FUNCTION_80();
  v12 = type metadata accessor for PresentConfirmationDialogAction();
  *(v0 + 488) = v12;
  OUTLINED_FUNCTION_36(v12);
  *(v0 + 496) = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  *(v0 + 504) = v13;
  OUTLINED_FUNCTION_2(v13);
  *(v0 + 512) = v14;
  *(v0 + 520) = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  OUTLINED_FUNCTION_36(v15);
  *(v0 + 528) = OUTLINED_FUNCTION_80();
  v16 = sub_217006224();
  *(v0 + 536) = v16;
  OUTLINED_FUNCTION_2(v16);
  *(v0 + 544) = v17;
  *(v0 + 552) = OUTLINED_FUNCTION_80();
  v18 = *(v2 - 8);
  *(v0 + 560) = v18;
  *(v0 + 568) = *(v18 + 64);
  *(v0 + 576) = OUTLINED_FUNCTION_80();
  v19 = _s6ActionVMa();
  *(v0 + 584) = v19;
  OUTLINED_FUNCTION_2(v19);
  *(v0 + 592) = v20;
  *(v0 + 600) = OUTLINED_FUNCTION_84();
  *(v0 + 608) = swift_task_alloc();
  *(v0 + 616) = swift_task_alloc();
  v21 = sub_21700DEE4();
  *(v0 + 624) = v21;
  OUTLINED_FUNCTION_2(v21);
  *(v0 + 632) = v22;
  *(v0 + 640) = OUTLINED_FUNCTION_80();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E10);
  OUTLINED_FUNCTION_36(v23);
  *(v0 + 648) = OUTLINED_FUNCTION_80();
  v24 = sub_21700CFB4();
  *(v0 + 656) = v24;
  OUTLINED_FUNCTION_2(v24);
  *(v0 + 664) = v25;
  *(v0 + 672) = OUTLINED_FUNCTION_84();
  *(v0 + 680) = swift_task_alloc();
  v26 = sub_217005EF4();
  *(v0 + 688) = v26;
  OUTLINED_FUNCTION_2(v26);
  *(v0 + 696) = v27;
  *(v0 + 704) = OUTLINED_FUNCTION_80();
  v28 = sub_21700D704();
  *(v0 + 712) = v28;
  OUTLINED_FUNCTION_2(v28);
  *(v0 + 720) = v29;
  *(v0 + 728) = OUTLINED_FUNCTION_84();
  *(v0 + 736) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v30);
  *(v0 + 744) = OUTLINED_FUNCTION_84();
  *(v0 + 752) = swift_task_alloc();
  v31 = sub_21700D284();
  *(v0 + 760) = v31;
  OUTLINED_FUNCTION_2(v31);
  *(v0 + 768) = v32;
  *(v0 + 776) = OUTLINED_FUNCTION_84();
  *(v0 + 784) = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_216813A38()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 688);
  v191 = sub_21700B934();
  v196 = v4;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  sub_21700D6F4();
  *(v0 + 240) = 0x6574656C6564;
  v8 = MEMORY[0x277D837D0];
  *(v0 + 264) = MEMORY[0x277D837D0];
  *(v0 + 248) = 0xE600000000000000;
  sub_2166EF9C4((v0 + 240), (v0 + 272));
  v9 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_2166EF9D4();
  v10 = v9;
  sub_216681B04(v1, v2, &qword_27CABA820);
  v161 = v0;
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(*(v0 + 744), &qword_27CABA820);
  }

  else
  {
    v11 = *(v0 + 704);
    v12 = *(v0 + 696);
    v13 = *(v0 + 688);
    (*(v12 + 32))(v11, *(v0 + 744), v13);
    v14 = sub_217005DE4();
    *(v0 + 360) = v8;
    *(v0 + 336) = v14;
    *(v0 + 344) = v15;
    sub_2166EF9C4((v0 + 336), (v0 + 368));
    swift_isUniquelyReferenced_nonNull_native();
    sub_2166EF9D4();
    (*(v12 + 8))(v11, v13);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v159 = v0 + 16;
  v160 = v0 + 240;
  v167 = *(v0 + 752);
  v162 = *(v0 + 736);
  v16 = *(v0 + 728);
  v17 = *(v0 + 720);
  v18 = *(v161 + 712);
  v19 = *(v161 + 680);
  v20 = *(v161 + 664);
  v21 = *(v161 + 656);
  v22 = sub_21700CF84();
  v23 = __swift_project_value_buffer(v22, qword_280E73DB0);
  MEMORY[0x21CE9DD70](v191, v196, 0x6E6F74747562, 0xE600000000000000, v10, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v179 = *(v20 + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_217013DA0;
  v187 = v24;
  v173 = *(v20 + 16);
  v173(v25 + v24, v19, v21);
  (*(v17 + 16))(v16, v162, v18);
  sub_21700D244();
  v170 = *(v20 + 8);
  v170(v19, v21);
  (*(v17 + 8))(v162, v18);
  sub_216697664(v167, &qword_27CABA820);
  v26 = sub_21700D254();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v161 + 664);
    v29 = *(v161 + 632);
    v201 = MEMORY[0x277D84F90];
    sub_216AB98AC();
    v30 = v201;
    v31 = v26 + v187;
    v163 = (v28 + 32);
    v164 = (v29 + 8);
    v32 = v161;
    do
    {
      v197 = v30;
      v33 = *(v32 + 680);
      v34 = *(v32 + 656);
      v35 = *(v32 + 648);
      v36 = *(v32 + 640);
      v192 = *(v32 + 624);
      v173(v33, v31, v34);
      v37 = OUTLINED_FUNCTION_39_3();
      (v173)(v37);
      sub_21700DEB4();
      v38 = v32;
      v39 = sub_21700CF94();
      sub_216ABAEF8();
      (*v164)(v36, v192);
      v40 = v35;
      v30 = v197;
      sub_216697664(v40, &qword_27CAB8E10);
      v39(v160 + 64, 0);
      v170(v33, v34);
      v42 = *(v197 + 16);
      v41 = *(v197 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_46_7(v41);
        sub_216AB98AC();
        v30 = v197;
      }

      v43 = *(v38 + 672);
      v44 = *(v38 + 656);
      *(v30 + 16) = v42 + 1;
      (*v163)(v30 + v187 + v42 * v179, v43, v44);
      v31 += v179;
      --v27;
      v32 = v38;
    }

    while (v27);
  }

  else
  {

    v32 = v161;
  }

  v45 = *(v32 + 808);
  sub_21700D264();
  if (v45)
  {
    v46 = *(v32 + 784);
    v47 = *(v32 + 776);
    v48 = *(v32 + 768);
    v49 = *(v32 + 760);
    v180 = *(v32 + 616);
    v183 = *(v32 + 584);
    v50 = *(v32 + 576);
    v51 = *(v32 + 560);
    v52 = *(v32 + 552);
    v198 = *(v32 + 544);
    v174 = *(v32 + 536);
    v176 = *(v32 + 528);
    v165 = *(v32 + 432);
    v193 = *(v32 + 416);
    v53 = sub_216983738(70);
    v168 = v54;
    v171 = v53;
    (*(v48 + 16))(v47, v46, v49);
    v55 = OUTLINED_FUNCTION_74_0();
    v56(v55);
    v57 = (*(v51 + 80) + 40) & ~*(v51 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v193;
    *(v58 + 32) = v165;
    (*(v51 + 32))(v58 + v57, v50, v193);
    *(v32 + 144) = sub_21700D2C4();
    *(v32 + 152) = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1((v32 + 120));
    sub_21700D2B4();
    sub_217006214();
    v59 = sub_2170061F4();
    v61 = v60;
    *&v193 = *(v198 + 8);
    (v193)(v52, v174);
    *(v32 + 88) = v59;
    *(v32 + 96) = v61;
    *(v32 + 104) = v171;
    *(v32 + 112) = v168;
    sub_217007F04();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    sub_2167ADC3C(v160 - 152, v180);
    sub_216681B04(v176, v180 + *(v183 + 20), &qword_27CAB70A8);
    sub_217006214();
    v66 = sub_2170061F4();
    v68 = v67;
    v69 = OUTLINED_FUNCTION_39_3();
    (v193)(v69);
    v70 = (v180 + *(v183 + 24));
    *v70 = v66;
    v70[1] = v68;
    OUTLINED_FUNCTION_42_6();
    sub_216697664(v71, v72);
    sub_2167ADC98(v160 - 152);
    sub_21693843C(0, 1, 1, MEMORY[0x277D84F90]);
    v74 = v73;
    v76 = *(v73 + 16);
    v75 = *(v73 + 24);
    if (v76 >= v75 >> 1)
    {
      v155 = OUTLINED_FUNCTION_46_7(v75);
      sub_21693843C(v155, v76 + 1, 1, v156);
      v74 = v157;
    }

    v181 = v74;
    v32 = v161;
    v77 = *(v161 + 616);
    v78 = *(v161 + 592);
    *(v74 + 16) = v76 + 1;
    sub_21681622C(v77, v74 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v76);
  }

  else
  {
    v181 = MEMORY[0x277D84F90];
  }

  v177 = *(v32 + 608);
  v194 = *(v32 + 584);
  v79 = *(v32 + 576);
  v80 = *(v161 + 568);
  v81 = *(v161 + 560);
  v82 = *(v161 + 552);
  v199 = *(v161 + 544);
  v188 = *(v161 + 536);
  v175 = *(v161 + 528);
  v166 = *(v161 + 432);
  v83 = *(v161 + 408);
  v84 = *(v161 + 400);
  v184 = *(v161 + 416);
  v85 = sub_216983738(71);
  v169 = v86;
  v172 = v85;
  OUTLINED_FUNCTION_42_6();
  v87();
  (*(v81 + 16))(v79, v84, v184);
  v88 = (*(v81 + 80) + 40) & ~*(v81 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = v184;
  *(v89 + 32) = v166;
  (*(v81 + 32))(v89 + v88, v79, v184);
  *(v89 + ((v80 + v88 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
  *(v161 + 72) = sub_21700D2C4();
  *(v161 + 80) = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1((v161 + 48));

  sub_21700D2B4();
  sub_217006214();
  v90 = sub_2170061F4();
  v92 = v91;
  v93 = *(v199 + 8);
  v93(v82, v188);
  *(v161 + 16) = v90;
  *(v161 + 24) = v92;
  *(v161 + 32) = v172;
  *(v161 + 40) = v169;
  sub_217007F04();
  OUTLINED_FUNCTION_38_2();
  v185 = v94;
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
  sub_2167ADC3C(v159, v177);
  sub_216681B04(v175, v177 + *(v194 + 20), &qword_27CAB70A8);
  sub_217006214();
  v98 = sub_2170061F4();
  v100 = v99;
  v101 = v188;
  v189 = v93;
  v93(v82, v101);
  v102 = (v177 + *(v194 + 24));
  *v102 = v98;
  v102[1] = v100;
  sub_216697664(v175, &qword_27CAB70A8);
  sub_2167ADC98(v159);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = v181;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21693843C(0, *(v181 + 16) + 1, 1, v181);
    v104 = v146;
  }

  v106 = *(v104 + 16);
  v105 = *(v104 + 24);
  if (v106 >= v105 >> 1)
  {
    v147 = OUTLINED_FUNCTION_46_7(v105);
    sub_21693843C(v147, v106 + 1, 1, v148);
    v104 = v149;
  }

  v107 = *(v161 + 608);
  v108 = *(v161 + 600);
  v109 = *(v161 + 592);
  v110 = *(v161 + 552);
  v111 = *(v161 + 536);
  *(v104 + 16) = v106 + 1;
  v112 = v104;
  v178 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v182 = *(v109 + 72);
  sub_21681622C(v107, v104 + v178 + v182 * v106);
  v113 = sub_216983738(43);
  v115 = v114;
  *(v108 + 32) = 0u;
  *(v108 + 48) = 0u;
  *(v108 + 64) = 0;
  sub_217006214();
  v116 = sub_2170061F4();
  v118 = v117;
  v189(v110, v111);
  *v108 = v116;
  *(v108 + 8) = v118;
  *(v108 + 16) = v113;
  *(v108 + 24) = v115;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v185);
  sub_217006214();
  v122 = sub_2170061F4();
  v124 = v123;
  v189(v110, v111);
  v125 = (v108 + *(v194 + 24));
  *v125 = v122;
  v125[1] = v124;
  v127 = *(v112 + 16);
  v126 = *(v112 + 24);
  v128 = v112;
  v129 = v127 + 1;
  if (v127 >= v126 >> 1)
  {
    v150 = OUTLINED_FUNCTION_46_7(v126);
    v152 = v151;
    sub_21693843C(v150, v151, 1, v153);
    v129 = v152;
    v128 = v154;
  }

  v130 = *(v161 + 600);
  v131 = *(v161 + 496);
  v186 = *(v161 + 488);
  v200 = *(v161 + 456);
  v190 = *(v161 + 448);
  v195 = *(v161 + 440);
  v132 = *(v161 + 808);
  v133 = v128;
  v134 = *(v161 + 400);
  *(v128 + 16) = v129;
  sub_21681622C(v130, v128 + v178 + v127 * v182);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v135 = sub_21681559C(v134, v132);
  sub_216933384(v135, v136, v133, 0, 0, (v161 + 160));
  sub_21700D234();
  v137 = v131 + *(v186 + 20);
  v138 = *(v161 + 160);
  v139 = *(v161 + 176);
  *(v137 + 32) = *(v161 + 192);
  *v137 = v138;
  *(v137 + 16) = v139;
  *(v161 + 224) = v186;
  *(v161 + 232) = sub_216816290(qword_280E30130, type metadata accessor for PresentConfirmationDialogAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v161 + 200));
  sub_2168162D8(v131, boxed_opaque_existential_1, type metadata accessor for PresentConfirmationDialogAction);
  (*(v190 + 104))(v200, *MEMORY[0x277D21E18], v195);
  v141 = swift_task_alloc();
  *(v161 + 792) = v141;
  *v141 = v161;
  v141[1] = sub_216814818;
  v142 = *(v161 + 504);
  v143 = *(v161 + 480);
  v144 = *(v161 + 456);
  v145 = *(v161 + 408);

  return MEMORY[0x28217F468](v143, v161 + 200, v144, v145, v142);
}

uint64_t sub_216814818()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[57];
  v7 = v5[56];
  v8 = v5[55];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[100] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[59] + 8))(v3[60], v3[58]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 25));
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216814998()
{
  v4 = v1[98];
  v5 = v1[96];
  v6 = v1[95];
  OUTLINED_FUNCTION_12_15();
  (*(v0 + 8))(v2, v3);
  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_23();

  return v7();
}

uint64_t sub_216814B00()
{
  v4 = v1[98];
  v5 = v1[96];
  v6 = v1[95];
  OUTLINED_FUNCTION_12_15();
  (*(v0 + 8))(v2, v3);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 25));

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216814C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v17 - v11;
  v13 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v14 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  *(v15 + 6) = a4;
  (*(v8 + 32))(&v15[v14], v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_21677E228();
}

uint64_t sub_216814E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_216814E5C, 0, 0);
}

void sub_216814E5C()
{
  OUTLINED_FUNCTION_33();
  sub_21700BE44();
  v0[5] = sub_21700BE34();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_216814F08;
  OUTLINED_FUNCTION_32_10(v0[2]);

  JUMPOUT(0x21700BBE4);
}

uint64_t sub_216814F08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t sub_216815028()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216815084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v31 = a5;
  v28[1] = a2;
  v32 = sub_21700C924();
  v28[0] = *(v32 - 8);
  v7 = MEMORY[0x28223BE20](v32);
  v29 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v30 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v28 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = *(v9 + 16);
  v18(v13, a1, a3);
  v19 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v33;
  *(v20 + 4) = a3;
  *(v20 + 5) = v21;
  *(v20 + 6) = v31;
  (*(v9 + 32))(&v20[v19], v13, a3);
  v22 = v29;
  v23 = v32;
  sub_21677E228();

  v18(v30, a1, a3);
  result = swift_dynamicCast();
  if (result)
  {
    (*(v28[0] + 8))(v22, v23);
    type metadata accessor for UserSocialProfileCoordinator();
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v25 = v34;
    v26 = sub_21700B934();
    sub_216CAC568(v26, v27);
  }

  return result;
}

uint64_t sub_2168153AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2168153D0, 0, 0);
}

uint64_t sub_2168153D0()
{
  OUTLINED_FUNCTION_33();
  sub_21700BE44();
  v0[5] = sub_21700BE34();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21681547C;
  v2 = OUTLINED_FUNCTION_32_10(v0[2]);

  return MEMORY[0x28218A6D0](v2);
}

uint64_t sub_21681547C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

char *sub_21681559C(uint64_t a1, int a2)
{
  v121 = a2;
  v122[0] = a1;
  v101[6] = sub_21700C254();
  OUTLINED_FUNCTION_1();
  v101[2] = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v5);
  v101[10] = sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v101[5] = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v9);
  v101[14] = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v101[9] = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v13);
  v102 = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v101[13] = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v17);
  v106 = sub_217007324();
  OUTLINED_FUNCTION_1();
  v101[17] = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v21);
  v110 = sub_217007264();
  OUTLINED_FUNCTION_1();
  v105 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v104 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47_1();
  v103 = v26;
  v114 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v109 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v108 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47_1();
  v107 = v31;
  v117 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v113 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v112 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  v111 = v36;
  v119 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v116 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v115 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  v42 = v101 - v41;
  v43 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v118 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_77();
  v48 = (v46 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = v101 - v50;
  v52 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_77();
  v58 = v56 - v57;
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v101 - v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_77();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  v122[1] = v69;
  v70 = *(v69 + 16);
  if ((v121 & 1) == 0)
  {
    v75 = v68;
    v70(v65, v122[0], v68);
    if (swift_dynamicCast())
    {
      sub_216983738(239);
      OUTLINED_FUNCTION_21_13();
      (*(v54 + 8))(v58, v52);
LABEL_28:
      v72 = OUTLINED_FUNCTION_29_8();
      v74 = v75;
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      sub_216983738(248);
      OUTLINED_FUNCTION_21_13();
      v76 = *(v118 + 8);
      v77 = v48;
      goto LABEL_10;
    }

    v81 = v115;
    OUTLINED_FUNCTION_5_20();
    v79 = v119;
    if (OUTLINED_FUNCTION_33_12())
    {
      sub_216983738(244);
      OUTLINED_FUNCTION_21_13();
      v82 = v116;
LABEL_25:
      v76 = *(v82 + 8);
      v77 = v81;
      goto LABEL_26;
    }

    v81 = v112;
    OUTLINED_FUNCTION_5_20();
    v79 = v117;
    if (OUTLINED_FUNCTION_33_12())
    {
      v83 = 245;
      goto LABEL_19;
    }

    v81 = v108;
    OUTLINED_FUNCTION_5_20();
    v79 = v114;
    if (OUTLINED_FUNCTION_33_12())
    {
      v84 = 243;
      goto LABEL_24;
    }

    v81 = v104;
    OUTLINED_FUNCTION_5_20();
    if (OUTLINED_FUNCTION_33_12() || (OUTLINED_FUNCTION_3_33(&v130), OUTLINED_FUNCTION_33_12()))
    {
      v91 = OUTLINED_FUNCTION_74_0();
      v92(v91);
      v93 = OUTLINED_FUNCTION_29_8();
      v94(v93, v75);
      v90 = 247;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_3_33(&v127);
    v79 = v102;
    if (OUTLINED_FUNCTION_33_12())
    {
      v95 = 246;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_3_33(&v124);
    if (OUTLINED_FUNCTION_28_8())
    {
      v97 = 240;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_3_33(v120);
    if (OUTLINED_FUNCTION_28_8())
    {
      v98 = 241;
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_3_33(&v117);
    if (OUTLINED_FUNCTION_28_8())
    {
      v99 = 242;
      goto LABEL_59;
    }

    v100 = 245;
LABEL_63:
    sub_216983738(v100);
    OUTLINED_FUNCTION_21_13();
    goto LABEL_28;
  }

  v71 = v68;
  v70(v101 - v67, v122[0], v68);
  OUTLINED_FUNCTION_42_6();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_42_6();
    v75 = v71;
    if (swift_dynamicCast())
    {
      sub_216983738(80);
      OUTLINED_FUNCTION_21_13();
      v76 = *(v118 + 8);
      v77 = v51;
LABEL_10:
      v78 = v43;
LABEL_27:
      v76(v77, v78);
      goto LABEL_28;
    }

    v79 = v119;
    if (OUTLINED_FUNCTION_33_12())
    {
      v80 = sub_216983738(81);
      v76 = *(v116 + 8);
      v77 = v42;
      v42 = v80;
LABEL_26:
      v78 = v79;
      goto LABEL_27;
    }

    v81 = v111;
    OUTLINED_FUNCTION_5_20();
    v79 = v117;
    if (OUTLINED_FUNCTION_33_12())
    {
      v83 = 82;
LABEL_19:
      sub_216983738(v83);
      OUTLINED_FUNCTION_21_13();
      v82 = v113;
      goto LABEL_25;
    }

    v81 = v107;
    OUTLINED_FUNCTION_5_20();
    v79 = v114;
    if (OUTLINED_FUNCTION_33_12())
    {
      v84 = 79;
LABEL_24:
      sub_216983738(v84);
      OUTLINED_FUNCTION_21_13();
      v82 = v109;
      goto LABEL_25;
    }

    v81 = v103;
    OUTLINED_FUNCTION_5_20();
    if (OUTLINED_FUNCTION_33_12() || (OUTLINED_FUNCTION_3_33(&v129), OUTLINED_FUNCTION_33_12()))
    {
      v86 = OUTLINED_FUNCTION_74_0();
      v87(v86);
      v88 = OUTLINED_FUNCTION_29_8();
      v89(v88, v75);
      v90 = 84;
LABEL_39:
      sub_216983738(v90);
      OUTLINED_FUNCTION_21_13();
      return v42;
    }

    OUTLINED_FUNCTION_3_33(&v126);
    v79 = v102;
    if (OUTLINED_FUNCTION_33_12())
    {
      v95 = 83;
LABEL_44:
      sub_216983738(v95);
      OUTLINED_FUNCTION_21_13();
      v96 = &v128;
LABEL_60:
      v82 = *(v96 - 32);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_33(v123);
    if (OUTLINED_FUNCTION_28_8())
    {
      v97 = 76;
LABEL_49:
      sub_216983738(v97);
      OUTLINED_FUNCTION_21_13();
      v96 = &v125;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_3_33(&v119);
    if (OUTLINED_FUNCTION_28_8())
    {
      v98 = 77;
LABEL_54:
      sub_216983738(v98);
      OUTLINED_FUNCTION_21_13();
      v96 = v122;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_3_33(&v116);
    if (OUTLINED_FUNCTION_28_8())
    {
      v99 = 78;
LABEL_59:
      sub_216983738(v99);
      OUTLINED_FUNCTION_21_13();
      v96 = &v118;
      goto LABEL_60;
    }

    v100 = 82;
    goto LABEL_63;
  }

  sub_216983738(75);
  OUTLINED_FUNCTION_21_13();
  (*(v54 + 8))(v62, v52);
  v72 = OUTLINED_FUNCTION_29_8();
  v74 = v71;
LABEL_29:
  v73(v72, v74);
  return v42;
}

uint64_t sub_216816084()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v1;
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = type metadata accessor for LibraryAction();
  OUTLINED_FUNCTION_2(v6);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v10 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_20_0(v11);
  *v12 = v13;
  v12[1] = sub_2166AB4A0;

  return sub_216811908(v2, v0 + v8, v10, v4, v3, v5);
}

uint64_t sub_21681622C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ActionVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216816290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2168162D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216816338(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168163E4()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_44_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_5(v1);

  return sub_216814E38(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21681656C()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_44_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_5(v1);

  return sub_2168153AC(v3, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for DownloadAction()
{
  result = qword_280E43740;
  if (!qword_280E43740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168166B0()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    sub_2166DF3F4();
    if (v1 <= 0x3F)
    {
      sub_2166D90EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21681674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v48 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v56 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v55 = &v48 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v61 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v54 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v53 = &v48 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v51 = v24;
  v52 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v27 = *(v8 + 16);
  v60 = v6;
  v27(v15, v62, v6);
  v28 = v59;
  sub_21700D224();
  if (v28)
  {
    (*(v8 + 8))(v62, v60);
    return (*(v17 + 8))(a1, v61);
  }

  else
  {
    v50 = v17;
    v59 = v8;
    v30 = type metadata accessor for DownloadAction();
    v48 = *(v30 + 20);
    v49 = v30;
    v31 = v58;
    (*(v51 + 32))(v58, v26, v52);
    sub_21700CE04();
    v32 = v62;
    v33 = v60;
    v27(v55, v62, v60);
    sub_216AC5BB0();
    *(v31 + v48) = v34;
    v35 = v54;
    sub_21700CE04();
    v36 = v56;
    v27(v56, v32, v33);
    v37 = v57;
    ContentDescriptor.init(deserializing:using:)(v35, v36, v38, v39, v40, v41, v42, v43, v48, v49, SWORD2(v49), SBYTE6(v49), SHIBYTE(v49));
    v44 = v58;
    v45 = v61;
    v46 = v50;
    (*(v59 + 8))(v32, v33);
    (*(v46 + 8))(a1, v45);
    v47 = type metadata accessor for ContentDescriptor();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v47);
    return sub_216816BC4(v37, v44 + *(v49 + 24));
  }
}

uint64_t sub_216816BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216816C34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v97[2] = sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v97[1] = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v97[5] = sub_217007064();
  OUTLINED_FUNCTION_1();
  v97[4] = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v8);
  v97[8] = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v97[7] = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v11);
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v97[10] = v13;
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v100 = v16;
  v101 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v99 = v17;
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v103 = v19;
  v104 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v102 = v20;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v106 = v22;
  v107 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v105 = v23;
  sub_217006B84();
  OUTLINED_FUNCTION_1();
  v108 = v25;
  v109 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v110 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v97 - v36;
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = v97 - v44;
  v47 = v46;
  sub_216681B64(a1, v37, &qword_27CAB7088);
  if (__swift_getEnumTagSinglePayload(v37, 1, v47) != 1)
  {
    (*(v39 + 32))(v45, v37, v47);
    v49 = v45;
    if (!sub_216DDFD58())
    {
      sub_21669987C(a1, &qword_27CAB7088);
      result = (*(v39 + 8))(v45, v47);
      goto LABEL_7;
    }

    (*(v39 + 16))(v43, v45, v47);
    v50 = (*(v39 + 88))(v43, v47);
    if (v50 == *MEMORY[0x277D2A400])
    {
      v51 = OUTLINED_FUNCTION_2_28();
      v52(v51);
      v53 = v110;
      (*(v110 + 32))(v34, v43, v29);
      v113 = v29;
      v114 = MEMORY[0x277CD8280];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v112);
      (*(v53 + 16))(boxed_opaque_existential_1, v34, v29);
      sub_2168176DC(v112, v115);
      sub_21669987C(a1, &qword_27CAB7088);
      (*(v53 + 8))(v34, v29);
LABEL_21:
      result = (*(v39 + 8))(v49, v47);
      v55 = v115[0];
      goto LABEL_22;
    }

    if (v50 == *MEMORY[0x277D2A3B0])
    {
      v56 = OUTLINED_FUNCTION_2_28();
      v57(v56);
      v59 = v108;
      v58 = v109;
      (*(v108 + 32))(v28, v43, v109);
      v113 = v58;
      OUTLINED_FUNCTION_17_18();
      v114 = sub_2168189DC(v60, v61);
      v62 = __swift_allocate_boxed_opaque_existential_1(v112);
      (*(v59 + 16))(v62, v28, v58);
      sub_2168176DC(v112, v115);
      sub_21669987C(a1, &qword_27CAB7088);
      (*(v59 + 8))(v28, v58);
      goto LABEL_21;
    }

    if (v50 == *MEMORY[0x277D2A3B8])
    {
      v63 = OUTLINED_FUNCTION_2_28();
      v64(v63);
      v65 = v105;
      OUTLINED_FUNCTION_18_11();
      v66 = v107;
      v67(v65, v43, v107);
      v113 = v66;
      OUTLINED_FUNCTION_7_19();
LABEL_12:
      v114 = sub_2168189DC(v68, v69);
LABEL_20:
      __swift_allocate_boxed_opaque_existential_1(v112);
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_28_6();
      v84();
      sub_2168176DC(v112, v115);
      sub_21669987C(a1, &qword_27CAB7088);
      v85 = OUTLINED_FUNCTION_23_7();
      v86(v85);
      goto LABEL_21;
    }

    if (v50 == *MEMORY[0x277D2A440])
    {
      v70 = OUTLINED_FUNCTION_2_28();
      v71(v70);
      v72 = v102;
      OUTLINED_FUNCTION_18_11();
      v73 = v104;
      v74(v72, v43, v104);
      v75 = MEMORY[0x277CD85C8];
    }

    else if (v50 == *MEMORY[0x277D2A3F8])
    {
      v76 = OUTLINED_FUNCTION_2_28();
      v77(v76);
      v78 = v99;
      OUTLINED_FUNCTION_18_11();
      v73 = v101;
      v79(v78, v43, v101);
      v75 = MEMORY[0x277CD81D0];
    }

    else
    {
      if (v50 != *MEMORY[0x277D2A430])
      {
        if (v50 == *MEMORY[0x277D2A458])
        {
          v87 = OUTLINED_FUNCTION_2_28();
          v88(v87);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_12_16();
          OUTLINED_FUNCTION_31_13();
          v89();
          v113 = v45;
          OUTLINED_FUNCTION_16_18();
        }

        else if (v50 == *MEMORY[0x277D2A3D8])
        {
          v90 = OUTLINED_FUNCTION_2_28();
          v91(v90);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_12_16();
          OUTLINED_FUNCTION_31_13();
          v92();
          v113 = v45;
          OUTLINED_FUNCTION_15_12();
        }

        else
        {
          if (v50 != *MEMORY[0x277D2A3E0])
          {
            sub_21669987C(a1, &qword_27CAB7088);
            v96 = *(v39 + 8);
            v96(v45, v47);
            result = (v96)(v43, v47);
            goto LABEL_7;
          }

          v93 = OUTLINED_FUNCTION_2_28();
          v94(v93);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_12_16();
          OUTLINED_FUNCTION_31_13();
          v95();
          v113 = v45;
          OUTLINED_FUNCTION_14_13();
        }

        goto LABEL_12;
      }

      v80 = OUTLINED_FUNCTION_2_28();
      v81(v80);
      v73 = v98;
      OUTLINED_FUNCTION_18_11();
      v82 = OUTLINED_FUNCTION_12_16();
      v83(v82);
      v75 = MEMORY[0x277CD84D8];
    }

    v113 = v73;
    v114 = v75;
    goto LABEL_20;
  }

  sub_21669987C(a1, &qword_27CAB7088);
  result = sub_21669987C(v37, &qword_27CAB7088);
LABEL_7:
  v55 = 0;
LABEL_22:
  *v111 = v55;
  return result;
}

uint64_t sub_2168176DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v179 = a2;
  v162 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v159[18] = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v7);
  v159[10] = sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v159[6] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v11);
  v159[9] = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v159[7] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v15);
  v159[20] = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v159[19] = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v19);
  v159[13] = sub_217007064();
  OUTLINED_FUNCTION_1();
  v159[11] = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v23);
  v24 = sub_21700C814();
  OUTLINED_FUNCTION_1();
  v163 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v29);
  v166 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v165 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v33);
  v173 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v169 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v38);
  v175 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v172 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v42);
  v176 = sub_21700C644();
  OUTLINED_FUNCTION_1();
  v174 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v177 = v49;
  v178 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  v52 = v159 - v51;
  v53 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7();
  v59 = v58 - v57;
  v60 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7();
  v66 = v65 - v64;
  sub_216681B64(a1, &v185, &qword_27CAB8E30);
  if (v186)
  {
    v159[0] = v24;
    sub_2166A0F18(&v185, v188);
    sub_2167B7D58(v188, &v185);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E38);
    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      (*(v62 + 8))(v66, v60);
LABEL_12:
      v69 = 1;
LABEL_13:
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v185);
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      (*(v55 + 8))(v59, v53);
      goto LABEL_12;
    }

    v70 = v178;
    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      (*(v177 + 8))(v52, v70);
      goto LABEL_12;
    }

    v71 = v176;
    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      v72 = *(v174 + 8);
      v73 = v47;
      v74 = v71;
LABEL_11:
      v72(v73, v74);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_22_20(&v190);
    v75 = v175;
    if (swift_dynamicCast())
    {
      v76 = v172;
      v77 = v171;
      (*(v172 + 32))(v171, v62, v75);
      v182 = v159[0];
      v183 = sub_2168189DC(&qword_27CAB8E40, MEMORY[0x277D2B440]);
      __swift_allocate_boxed_opaque_existential_1(&v180);
      sub_21700C824();
      OUTLINED_FUNCTION_26_14();
      sub_21669987C(a1, &qword_27CAB8E30);
      (*(v76 + 8))(v77, v75);
LABEL_39:
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      v69 = v184;
      goto LABEL_13;
    }

    v78 = v170;
    v79 = v173;
    v80 = swift_dynamicCast();
    v81 = v159[0];
    if (v80)
    {
      OUTLINED_FUNCTION_9_23();
      v82 = v168;
      v83(v168, v78, v79);
      v84 = v167;
      (*(v67 + 16))(v167, v82, v79);
      v85 = OUTLINED_FUNCTION_97();
      v87 = v86(v85);
      if (v87 == *MEMORY[0x277CD8540])
      {
        v88 = OUTLINED_FUNCTION_97();
        v89(v88);
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_12_16();
        OUTLINED_FUNCTION_31_13();
        v90();
        v182 = v81;
        OUTLINED_FUNCTION_7_19();
        v183 = sub_2168189DC(v91, v92);
        __swift_allocate_boxed_opaque_existential_1(&v180);
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_28_6();
        v93();
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30);
        v94 = OUTLINED_FUNCTION_23_7();
        v95(v94);
LABEL_25:
        v111 = OUTLINED_FUNCTION_25_7();
        v112(v111);
        goto LABEL_39;
      }

      if (v87 == *MEMORY[0x277CD8548])
      {
        v106 = OUTLINED_FUNCTION_97();
        v107(v106);
        v108 = v177;
        v109 = v160;
        (*(v177 + 32))(v160, v84, v70);
        v182 = v70;
        v183 = MEMORY[0x277CD81D0];
        v110 = __swift_allocate_boxed_opaque_existential_1(&v180);
        (*(v108 + 16))(v110, v109, v70);
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30);
        (*(v108 + 8))(v109, v70);
        goto LABEL_25;
      }

      sub_21669987C(a1, &qword_27CAB8E30);
      v127 = *(v67 + 8);
      v128 = OUTLINED_FUNCTION_25_7();
      v127(v128);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      v129 = OUTLINED_FUNCTION_97();
      v127(v129);
LABEL_46:
      v69 = 0;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_22_20(&v189);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_17_3();
      v96 = OUTLINED_FUNCTION_27_10();
      v97(v96);
      OUTLINED_FUNCTION_29_9();
      v98 = v161;
      OUTLINED_FUNCTION_28_6();
      v99();
      v100 = (*(v78 + 88))(v98, v81);
      if (v100 == *MEMORY[0x277D2B408])
      {
        v101 = OUTLINED_FUNCTION_8_17();
        v102(v101);
        OUTLINED_FUNCTION_9_23();
        OUTLINED_FUNCTION_13_12();
        OUTLINED_FUNCTION_24_12();
        v103();
        v182 = v79;
        OUTLINED_FUNCTION_17_18();
LABEL_37:
        v183 = sub_2168189DC(v104, v105);
        v135 = __swift_allocate_boxed_opaque_existential_1(&v180);
        (*(v67 + 16))(v135, v47, v79);
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30);
        v136 = OUTLINED_FUNCTION_25_7();
        v138(v136, v137);
        goto LABEL_38;
      }

      if (v100 != *MEMORY[0x277D2B410])
      {
        if (v100 == *MEMORY[0x277D2B428])
        {
          v141 = OUTLINED_FUNCTION_8_17();
          v142(v141);
          v143 = v177;
          v144 = v160;
          (*(v177 + 32))(v160, v98, v70);
          v182 = v70;
          v183 = MEMORY[0x277CD81D0];
          v145 = __swift_allocate_boxed_opaque_existential_1(&v180);
          (*(v143 + 16))(v145, v144, v70);
          OUTLINED_FUNCTION_26_14();
          sub_21669987C(a1, &qword_27CAB8E30);
          (*(v143 + 8))(v144, v70);
          goto LABEL_38;
        }

        if (v100 == *MEMORY[0x277D2B430])
        {
          v147 = OUTLINED_FUNCTION_8_17();
          v148(v147);
          OUTLINED_FUNCTION_9_23();
          OUTLINED_FUNCTION_13_12();
          OUTLINED_FUNCTION_24_12();
          v149();
          v182 = v79;
          OUTLINED_FUNCTION_16_18();
        }

        else if (v100 == *MEMORY[0x277D2B418])
        {
          v150 = OUTLINED_FUNCTION_8_17();
          v151(v150);
          OUTLINED_FUNCTION_9_23();
          OUTLINED_FUNCTION_13_12();
          OUTLINED_FUNCTION_24_12();
          v152();
          v182 = v79;
          OUTLINED_FUNCTION_15_12();
        }

        else
        {
          if (v100 != *MEMORY[0x277D2B420])
          {
            sub_21669987C(a1, &qword_27CAB8E30);
            v158 = *(v78 + 8);
            v158(v66, v81);
            __swift_destroy_boxed_opaque_existential_1Tm(v188);
            v158(v98, v81);
            goto LABEL_46;
          }

          v153 = OUTLINED_FUNCTION_8_17();
          v154(v153);
          OUTLINED_FUNCTION_9_23();
          OUTLINED_FUNCTION_13_12();
          OUTLINED_FUNCTION_24_12();
          v155();
          v182 = v79;
          OUTLINED_FUNCTION_14_13();
        }

        goto LABEL_37;
      }

      v125 = OUTLINED_FUNCTION_8_17();
      v126(v125);
      OUTLINED_FUNCTION_9_23();
      OUTLINED_FUNCTION_13_12();
    }

    else
    {
      OUTLINED_FUNCTION_22_20(v187);
      v113 = v162;
      if (!swift_dynamicCast())
      {
        sub_21669987C(a1, &qword_27CAB8E30);
        __swift_destroy_boxed_opaque_existential_1Tm(v188);
        OUTLINED_FUNCTION_11_18(v181);
        if (OUTLINED_FUNCTION_28_8())
        {
          v130 = OUTLINED_FUNCTION_20_14();
          v131(v130);
          v69 = 3;
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_11_18(&v179);
        if (OUTLINED_FUNCTION_28_8())
        {
          v73 = OUTLINED_FUNCTION_20_14();
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_11_18(&v175);
        if (OUTLINED_FUNCTION_28_8() || (OUTLINED_FUNCTION_11_18(&v172), OUTLINED_FUNCTION_28_8()) || (OUTLINED_FUNCTION_11_18(&v171), OUTLINED_FUNCTION_28_8()))
        {
          v156 = OUTLINED_FUNCTION_20_14();
          v157(v156);
          v69 = 2;
          goto LABEL_13;
        }

        goto LABEL_46;
      }

      OUTLINED_FUNCTION_17_3();
      v114 = OUTLINED_FUNCTION_27_10();
      v115(v114);
      OUTLINED_FUNCTION_29_9();
      v79 = v159[16];
      OUTLINED_FUNCTION_28_6();
      v116();
      v117 = (*(v78 + 88))(v79, v113);
      if (v117 == *MEMORY[0x277CD8368])
      {
        v118 = OUTLINED_FUNCTION_30_6();
        v119(v118);
        v120 = v177;
        v121 = v160;
        v122 = OUTLINED_FUNCTION_25_7();
        v123(v122);
        v182 = v70;
        v183 = MEMORY[0x277CD81D0];
        v124 = __swift_allocate_boxed_opaque_existential_1(&v180);
        (*(v120 + 16))(v124, v121, v70);
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30);
        (*(v120 + 8))(v121, v70);
LABEL_38:
        v139 = OUTLINED_FUNCTION_23_7();
        v140(v139);
        goto LABEL_39;
      }

      if (v117 != *MEMORY[0x277CD8350])
      {
        sub_21669987C(a1, &qword_27CAB8E30);
        v146 = *(v78 + 8);
        v146(v66, v113);
        __swift_destroy_boxed_opaque_existential_1Tm(v188);
        v146(v79, v113);
        goto LABEL_46;
      }

      v132 = OUTLINED_FUNCTION_30_6();
      v133(v132);
      OUTLINED_FUNCTION_9_23();
      v47 = v164;
      OUTLINED_FUNCTION_25_7();
    }

    OUTLINED_FUNCTION_24_12();
    v134();
    v182 = v79;
    OUTLINED_FUNCTION_7_19();
    goto LABEL_37;
  }

  sub_21669987C(a1, &qword_27CAB8E30);
  result = sub_21669987C(&v185, &qword_27CAB8E30);
  v69 = 0;
LABEL_14:
  *v179 = v69;
  return result;
}

uint64_t sub_2168189DC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SplitPosterLockup.Item.ArtworkTreatment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216818B50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v104 = a3;
  v4 = type metadata accessor for SplitPosterLockup.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_0();
  v89 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v94 = &v82 - v7;
  v8 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v86 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v88 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v93 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v103 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v85 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v87 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v92 = v27;
  OUTLINED_FUNCTION_3_1();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v82 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v82 - v32;
  sub_21700D7A4();
  sub_21700CE04();
  v100 = v10;
  v101 = *(v10 + 16);
  v102 = v8;
  v96 = v10 + 16;
  v101(v19, v107, v8);
  v34 = type metadata accessor for SplitPosterLockup(0);
  v98 = v34[5];
  v83 = v33;
  v84 = v19;
  sub_21700D734();
  v99 = a1;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v40 = *(v21 + 8);
  v38 = v21 + 8;
  v39 = v40;
  v41 = v31;
  v42 = v103;
  v40(v41, v103);
  if (v37)
  {
    v90 = v39;
    v91 = v38;
    v97 = v34;
    v105 = v35;
    v106 = v37;
    v43 = v104;
    sub_21700F364();
    v44 = v92;
    v45 = v99;
    sub_21700CE04();
    v46 = v93;
    v47 = v107;
    v48 = v102;
    v101(v93, v107, v102);
    v50 = v94;
    v49 = v95;
    sub_216819368(v44, v46, v94);
    v51 = v49 == 0;
    if (!v49)
    {
      LODWORD(v95) = 1;
      sub_216819CC0(v50, v43 + v97[6]);
      v59 = v87;
      sub_21700CE04();
      v60 = v88;
      v61 = OUTLINED_FUNCTION_9_6();
      (v101)(v61);
      v62 = v89;
      sub_216819368(v59, v60, v89);
      sub_216819CC0(v62, v43 + v97[7]);
      v63 = v83;
      sub_21700CE04();
      v64 = OUTLINED_FUNCTION_9_6();
      (v101)(v64);
      v65 = v45;
      sub_216819D24();
      sub_21700D734();
      sub_21700CE04();
      v94 = sub_21700CDB4();
      v67 = v66;
      v68 = v103;
      v69 = v90;
      v90(v63, v103);
      v70 = (v43 + v97[10]);
      *v70 = v94;
      v70[1] = v67;
      sub_21700CE04();
      v71 = sub_21700CDB4();
      v94 = v72;
      v69(v63, v68);
      v73 = (v43 + v97[9]);
      *v73 = v71;
      v73[1] = v94;
      v74 = v102;
      sub_21700CE04();
      v75 = v107;
      (v101)(v86);
      sub_216A17C24();
      v77 = v76;
      v79 = v78;
      (*(v100 + 8))(v75, v74);
      result = (v90)(v65, v103);
      v81 = (v43 + v97[11]);
      *v81 = v77;
      v81[1] = v79;
      return result;
    }

    v52 = OUTLINED_FUNCTION_9_24();
    v53 = v103;
    v54 = v90;
    (*(v100 + 8))(v52);
    v54(v48, v53);
    sub_216788110(v43);
    v34 = v97;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_29();
    sub_2166D77D4(v55, v56);
    swift_allocError();
    *v57 = 25705;
    v57[1] = 0xE200000000000000;
    v57[2] = v34;
    OUTLINED_FUNCTION_50();
    (*(v58 + 104))();
    swift_willThrow();
    (*(v100 + 8))(v107, v102);
    v39(v99, v42);
    v51 = 0;
    v47 = 0;
    v43 = v104;
  }

  result = sub_216699820(v43 + v98, &qword_27CAB6D58);
  if (v51)
  {
    result = sub_216819C64(v43 + v34[6]);
  }

  if (v47)
  {
    sub_216819C64(v43 + v34[7]);
    sub_216699820(v43 + v34[8], &qword_27CAB8E60);
  }

  return result;
}

uint64_t sub_216819368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v77 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v73 = v5;
  MEMORY[0x28223BE20](v6);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v69 = v12;
  OUTLINED_FUNCTION_3_1();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v24 = *(v10 + 8);
  v23 = v10 + 8;
  v74 = v8;
  v72 = v24;
  (v24)(v18, v8);
  if (v22)
  {
    v75 = v20;
    v76 = v22;
    v25 = a3;
    sub_21700F364();
    sub_21700CE04();
    v26 = sub_21700CDB4();
    v28 = v27;
    v29 = v74;
    v30 = v72;
    v67 = v23;
    (v72)(v16, v74);
    v31 = type metadata accessor for SplitPosterLockup.Item(0);
    v32 = (v25 + v31[6]);
    *v32 = v26;
    v32[1] = v28;
    v65 = v19;
    sub_21700CE04();
    v33 = sub_21700CDB4();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_9_6();
    v30(v36);
    v37 = (v25 + v31[7]);
    *v37 = v33;
    v37[1] = v35;
    sub_21700CE04();
    v38 = sub_21700CDB4();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_9_6();
    v42 = v29;
    v30(v41);
    v43 = v31[8];
    v70 = v25;
    v44 = (v25 + v43);
    *v44 = v38;
    v44[1] = v40;
    v45 = v65;
    sub_21700CE04();
    v46 = v71;
    sub_21700D2E4();
    (v30)(v16, v42);
    type metadata accessor for Artwork();
    v47 = v45;
    sub_21700CE04();
    v48 = v46;
    v66 = *(v73 + 16);
    v49 = v68;
    v50 = v77;
    v66(v68, v48, v77);
    sub_2166D77D4(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_9_6();
    sub_21700D734();
    type metadata accessor for ContentDescriptor();
    sub_21700CE04();
    v66(v49, v48, v50);
    v51 = v31;
    sub_2166D77D4(qword_280E40390, type metadata accessor for ContentDescriptor);
    v52 = v70;
    OUTLINED_FUNCTION_9_6();
    sub_21700D734();
    sub_21700CE04();
    sub_216819D78();
    sub_21700CCC4();
    v53 = v74;
    v54 = v72;
    (v72)(v16, v74);
    v55 = v51;
    *(v52 + v51[12]) = v75;
    v56 = v69;
    sub_21700CE04();
    LOBYTE(v45) = sub_21700CD44();
    (*(v73 + 8))(v71, v77);
    v54(v47, v53);
    result = (v54)(v56, v53);
    *(v52 + v55[11]) = v45 & 1;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_29();
    sub_2166D77D4(v58, v59);
    swift_allocError();
    v61 = v60;
    v62 = type metadata accessor for SplitPosterLockup.Item(0);
    *v61 = 25705;
    v61[1] = 0xE200000000000000;
    v61[2] = v62;
    OUTLINED_FUNCTION_50();
    (*(v63 + 104))(v61);
    swift_willThrow();
    (*(v73 + 8))(v71, v77);
    return (v72)(v19, v74);
  }

  return result;
}

uint64_t sub_2168199D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700D7A4();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216819A68()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216819ABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216819A68();
  *a1 = result;
  return result;
}

unint64_t sub_216819AF0()
{
  result = qword_27CAB8E48;
  if (!qword_27CAB8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8E48);
  }

  return result;
}

uint64_t sub_216819B78(uint64_t a1)
{
  result = sub_2166D77D4(&qword_27CAB8E50, type metadata accessor for SplitPosterLockup.Item);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216819C64(uint64_t a1)
{
  v2 = type metadata accessor for SplitPosterLockup.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216819CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SplitPosterLockup.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216819D24()
{
  result = qword_280E42960[0];
  if (!qword_280E42960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E42960);
  }

  return result;
}

unint64_t sub_216819D78()
{
  result = qword_27CAB8E68[0];
  if (!qword_27CAB8E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAB8E68);
  }

  return result;
}

void sub_216819DD8()
{
  sub_2166AE79C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_216819E74()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216819ECC();
}

char *sub_216819ECC()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  type metadata accessor for CloudLibraryStatusController();
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v1 & 1);
}

uint64_t sub_216819F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-v9 - 8];
  v11 = *(v3 + 16);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  sub_21667E91C(v11);
  OUTLINED_FUNCTION_0_5();
  if (*(v3 + *(v12 + 272)))
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v7 + 264);
    *(v14 + 24) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
    sub_2166B5BA8();

    sub_21700D1D4();
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
    v16 = v10;
    v17 = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
    v16 = v10;
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  OUTLINED_FUNCTION_0_5();
  v19 = *(v18 + 280);
  swift_beginAccess();
  sub_2166B5938(v10, v3 + v19);
  return swift_endAccess();
}

uint64_t sub_21681A1D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B12888(result);
  }

  return result;
}

uint64_t sub_21681A22C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  OUTLINED_FUNCTION_0_5();
  v13 = *(v12 + 280);
  swift_beginAccess();
  sub_21681A570(v1 + v13, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_21681A5E0(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  OUTLINED_FUNCTION_0_5();
  if (*(v1 + *(v15 + 272)))
  {

    sub_21700CC24();
  }

  (*(v9 + 8))(v11, v8);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  swift_beginAccess();
  sub_2166B5938(v5, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_21681A458()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v2 = v0 + *(v1 + 280);

  return sub_21681A5E0(v2);
}

char *sub_21681A4A8()
{
  v0 = sub_216B127F4();

  OUTLINED_FUNCTION_0_5();
  sub_21681A5E0(&v0[*(v1 + 280)]);
  return v0;
}

uint64_t sub_21681A504()
{
  v0 = sub_21681A4A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21681A570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21681A5E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21681A650@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v41 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v41 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_21700CE04();
  v23 = v49;
  (*(v8 + 16))(v11, v49, v6);
  v24 = v44;
  sub_21700D224();
  if (v24)
  {
    (*(v8 + 8))(v23, v6);
    (*(v13 + 8))(v46, v45);
    return result;
  }

  v44 = v8;
  (*(v19 + 32))(v43, v22, v17);
  v26 = v41;
  v27 = v46;
  sub_21700CE04();
  v28 = v42;
  sub_21700CCB4();
  v29 = *(v13 + 8);
  v30 = v45;
  v41 = (v13 + 8);
  v29(v26, v45);
  v31 = sub_21700D3E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v31);
  v33 = v30;
  if (EnumTagSinglePayload == 1)
  {
    sub_21669987C(v42, &qword_27CAB7D20);
    v34 = v44;
LABEL_6:
    sub_21700E384();

    goto LABEL_7;
  }

  v35 = v42;
  v36 = sub_21700D3D4();
  (*(*(v31 - 8) + 8))(v35, v31);
  v34 = v44;
  if (!v36)
  {
    goto LABEL_6;
  }

LABEL_7:
  v37 = v43;
  v38 = sub_21681AAB4(v47);
  (*(v34 + 8))(v49, v6, v38);
  v29(v27, v33);
  v39 = (v37 + *(type metadata accessor for SocialOnboardingUpdateUserAttributesAction() + 20));
  v40 = v47[1];
  *v39 = v47[0];
  v39[1] = v40;
  v39[2] = v48[0];
  result = *(v48 + 9);
  *(v39 + 41) = *(v48 + 9);
  return result;
}

double sub_21681AAB4@<D0>(_OWORD *a1@<X8>)
{
  *&v27 = 1701667182;
  *(&v27 + 1) = 0xE400000000000000;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_2_30();
  sub_216788110(v30);
  if (*(&v28 + 1))
  {
    v2 = OUTLINED_FUNCTION_0_41();
    if (v2)
    {
      v3 = v25;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v26;
    }

    else
    {
      v4 = 0;
    }

    v23 = v4;
    v24 = v3;
  }

  else
  {
    sub_21669987C(&v27, &unk_27CABF7A0);
    v23 = 0;
    v24 = 0;
  }

  *&v27 = 0x656C646E6168;
  *(&v27 + 1) = 0xE600000000000000;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_2_30();
  sub_216788110(v30);
  if (*(&v28 + 1))
  {
    v5 = OUTLINED_FUNCTION_0_41();
    if (v5)
    {
      v6 = v25;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v26;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_21669987C(&v27, &unk_27CABF7A0);
    v6 = 0;
    v7 = 0;
  }

  *&v27 = 0x7461766972507369;
  *(&v27 + 1) = 0xE900000000000065;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_2_30();
  sub_216788110(v30);
  if (*(&v28 + 1))
  {
    OUTLINED_FUNCTION_0_41();
    OUTLINED_FUNCTION_3_34();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    sub_21669987C(&v27, &unk_27CABF7A0);
    v11 = 2;
  }

  *&v27 = 0xD000000000000017;
  *(&v27 + 1) = 0x8000000217082A70;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_2_30();
  sub_216788110(v30);
  if (*(&v28 + 1))
  {
    OUTLINED_FUNCTION_0_41();
    OUTLINED_FUNCTION_3_34();
    if (v10)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  else
  {
    sub_21669987C(&v27, &unk_27CABF7A0);
    v14 = 2;
  }

  *&v27 = 0xD000000000000015;
  *(&v27 + 1) = 0x8000000217082A90;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_2_30();
  sub_216788110(v30);
  if (*(&v28 + 1))
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_3_34();
    if (v10)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    sub_21669987C(&v27, &unk_27CABF7A0);
    v17 = 2;
  }

  *&v27 = 0xD000000000000015;
  *(&v27 + 1) = 0x8000000217082AB0;
  OUTLINED_FUNCTION_4_22();
  sub_216934FBC();

  sub_216788110(v30);
  if (v40)
  {
    v18 = swift_dynamicCast();
    if (v18)
    {
      v19 = v27;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = *(&v27 + 1);
    }

    else
    {
      v20 = 0xF000000000000000;
    }
  }

  else
  {
    sub_21669987C(v39, &unk_27CABF7A0);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  sub_21677A510(0, 0xF000000000000000);
  *&v27 = v24;
  *(&v27 + 1) = v23;
  *&v28 = v6;
  *(&v28 + 1) = v7;
  v29[0] = v11;
  v29[1] = v14;
  v29[2] = v17;
  *&v29[3] = v41;
  v29[7] = v42;
  *&v29[8] = v19;
  *&v29[16] = v20;
  v29[24] = 0;
  v30[0] = v24;
  v30[1] = v23;
  v30[2] = v6;
  v30[3] = v7;
  v31 = v11;
  v32 = v14;
  v33 = v17;
  v34 = v41;
  v35 = v42;
  v36 = v19;
  v37 = v20;
  v38 = 0;
  sub_21681AEB4(&v27, &v25);
  sub_21681AEEC(v30);
  v21 = v28;
  *a1 = v27;
  a1[1] = v21;
  a1[2] = *v29;
  result = *&v29[9];
  *(a1 + 41) = *&v29[9];
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_21681AF7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_21681AFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21681B0AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v78 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v67 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v11 = v63 - v10;
  v74 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v64 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v66 = v63 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v69 = v63 - v19;
  OUTLINED_FUNCTION_3_1();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v63 - v22;
  MEMORY[0x28223BE20](v21);
  sub_21700D7A4();
  v24 = a1;
  sub_21700CE04();
  v72 = v6;
  v73 = v4;
  v65 = *(v6 + 16);
  v65(v11, v75, v4);
  v70 = type metadata accessor for TextListComponentModel();
  v71 = *(v70 + 20);
  sub_21700D734();
  v25 = a1;
  v26 = v74;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = *(v13 + 8);
  v31 = v23;
  v32 = v13 + 8;
  v30(v31, v26);
  if (v29)
  {
    v76 = v27;
    v77 = v29;
    sub_21700F364();
    v33 = v69;
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v69 = v30;
    v30(v33, v26);
    if (v36)
    {
      v63[1] = v32;
      sub_21700CE04();
      v37 = v25;
      v38 = v75;
      v39 = v73;
      v65(v67, v75, v73);
      sub_21681B6CC();
      v40 = v68;
      v41 = sub_21700E924();
      if (!v40)
      {
        v54 = v70;
        v55 = v78;
        *(v78 + *(v70 + 28)) = v41;
        v56 = (v55 + *(v54 + 24));
        *v56 = v34;
        v56[1] = v36;
        v57 = v64;
        sub_21700CE04();
        v58 = v37;
        v59 = sub_21700CD44();
        (*(v72 + 8))(v38, v39);
        v60 = v58;
        v61 = v74;
        v62 = v69;
        (v69)(v60, v74);
        result = v62(v57, v61);
        *(v78 + *(v54 + 32)) = v59 & 1;
        return result;
      }

      v25 = v37;

      v42 = v78;
      v26 = v74;
    }

    else
    {
      v48 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_42();
      sub_2166D82A8(v49, v50);
      OUTLINED_FUNCTION_4();
      *v51 = 0x656C746974;
      v52 = v70;
      v51[1] = 0xE500000000000000;
      v51[2] = v52;
      (*(*(v48 - 8) + 104))(v51, *MEMORY[0x277D22530], v48);
      swift_willThrow();
      v42 = v78;
    }

    (*(v72 + 8))(v75, v73);
    (v69)(v25, v26);
    sub_216788110(v42);
  }

  else
  {
    v43 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_42();
    sub_2166D82A8(v44, v45);
    OUTLINED_FUNCTION_4();
    *v46 = 25705;
    v47 = v70;
    v46[1] = 0xE200000000000000;
    v46[2] = v47;
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    (*(v72 + 8))(v75, v73);
    v30(v24, v26);
    v42 = v78;
  }

  return sub_2167B0250(v42 + v71);
}

unint64_t sub_21681B6CC()
{
  result = qword_27CAB8F08;
  if (!qword_27CAB8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8F08);
  }

  return result;
}

unint64_t sub_21681B734()
{
  result = qword_280E332B0[0];
  if (!qword_280E332B0[0])
  {
    type metadata accessor for RemovePersistenceItemAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E332B0);
  }

  return result;
}

uint64_t sub_21681B78C(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Persistence();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = type metadata accessor for RemovePersistenceItemAction();
  sub_216AE3600(*(a1 + *(v6 + 20)), *(a1 + *(v6 + 20) + 8), *(a1 + *(v6 + 24)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  v7 = sub_21700E1F4();

  return v7;
}

unint64_t sub_21681B900()
{
  result = qword_280E2F580;
  if (!qword_280E2F580)
  {
    type metadata accessor for UpdateNotificationSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2F580);
  }

  return result;
}

uint64_t sub_21681B958(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v4 = *(v12[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userNotificationSettings);
  v5 = *(v12[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userNotificationSettings + 1);

  updated = type metadata accessor for UpdateNotificationSettingsAction();
  if (*(a1 + *(updated + 20)) == 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + *(updated + 20));
  }

  if (*(a1 + *(updated + 24)) == 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + *(updated + 24));
  }

  type metadata accessor for JSIntentDispatcher();
  sub_21700E094();
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_216ECDCEC(v9 & 0xFFFFFFFE | v7 & 1, a2);
  v12[3] = sub_21700D7C4();
  v12[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_21700D7B4();
  sub_21700D2A4();
  v10 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

uint64_t sub_21681BAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21681BB50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_21681BB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21681BBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = type metadata accessor for Link(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  sub_21681D2F0(a1, v14 - v13, type metadata accessor for Link);
  v16 = (v15 + *(v11 + 24));
  v17 = v16[1];
  if (v17)
  {
    v31 = *v16;
    v18 = (v15 + *(v11 + 20));
    if (v18[1])
    {
      v19 = *v18;
      v20 = v18[1];
    }

    else
    {
      sub_217006214();
      v19 = sub_2170061F4();
      v20 = v27;
      (*(v6 + 8))(v10, v4);
    }

    *a2 = v19;
    *(a2 + 8) = v20;
    sub_21700DF14();
    sub_21700DF14();
    OUTLINED_FUNCTION_5_22();
    sub_21681D394(v15, v28);
    *(a2 + 16) = v31;
    *(a2 + 24) = v17;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
    v29 = OUTLINED_FUNCTION_8();
    return sub_21681D394(v29, v30);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58);
    sub_2167880BC();
    swift_allocError();
    *v22 = xmmword_21701C090;
    *(v22 + 16) = v21;
    swift_willThrow();
    OUTLINED_FUNCTION_5_22();
    sub_21681D394(v15, v23);
    v24 = OUTLINED_FUNCTION_8();
    return sub_21681D394(v24, v25);
  }
}

uint64_t sub_21681BE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21681D2F0(a1, v6, type metadata accessor for DefaultAccessoryButton);
  v7 = &v6[*(v4 + 20)];
  v8 = *(v7 + 1);
  if (v8)
  {
    v20[0] = *v7;
    v20[1] = v8;
    sub_21700DF14();
    sub_21700F364();
    v9 = type metadata accessor for DefaultAccessoryButton();
    v10 = a2 + v9[7];
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v11 = &v6[*(v4 + 28)];
    v13 = *v11;
    v12 = *(v11 + 1);
    sub_21700DF14();
    sub_21681D394(v6, type metadata accessor for DefaultAccessoryButton);
    v14 = (a2 + v9[6]);
    *v14 = v13;
    v14[1] = v12;
    v15 = v9[5];
    v16 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(a2 + v15, 1, 1, v16);
    *(a2 + v9[8]) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8988);
    sub_2167880BC();
    swift_allocError();
    *v18 = xmmword_217014E10;
    *(v18 + 16) = v17;
    swift_willThrow();
    sub_21681D394(v6, type metadata accessor for DefaultAccessoryButton);
  }

  return sub_21681D394(a1, type metadata accessor for DefaultAccessoryButton);
}

uint64_t sub_21681C004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Empty();
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_21681D2F0(a1, v7 - v6, type metadata accessor for Empty);
  v9 = sub_21700D3B4();
  v10 = sub_21681D34C(&qword_280E2A218, MEMORY[0x277D21D20]);
  sub_216F76B70(v8, v11, v9, v10, a2);
  return sub_21681D394(a1, type metadata accessor for Empty);
}

uint64_t sub_21681C114(char a1)
{
  switch(a1)
  {
    case 1:
      type metadata accessor for PopoverAccessoryButton();
      v1 = type metadata accessor for PopoverAccessoryButton;
      sub_21681D34C(&qword_27CAB8F38, type metadata accessor for PopoverAccessoryButton);
      v2 = &unk_27CAB8F40;
      break;
    case 2:
      type metadata accessor for ShareAccessoryButton();
      v1 = type metadata accessor for ShareAccessoryButton;
      sub_21681D34C(&qword_27CAB8F78, type metadata accessor for ShareAccessoryButton);
      v2 = &unk_27CAB8F80;
      break;
    case 3:
      type metadata accessor for ContextAccessoryButton();
      v1 = type metadata accessor for ContextAccessoryButton;
      sub_21681D34C(&qword_27CAB8F28, type metadata accessor for ContextAccessoryButton);
      v2 = &unk_27CAB8F30;
      break;
    case 4:
      type metadata accessor for AddToPlaylistAccessoryButton();
      v1 = type metadata accessor for AddToPlaylistAccessoryButton;
      sub_21681D34C(&qword_27CAB8F68, type metadata accessor for AddToPlaylistAccessoryButton);
      v2 = &unk_27CAB8F70;
      break;
    default:
      type metadata accessor for DefaultAccessoryButton();
      v1 = type metadata accessor for DefaultAccessoryButton;
      sub_21681D34C(&qword_27CAB8F48, type metadata accessor for DefaultAccessoryButton);
      v2 = &unk_27CAB8F50;
      break;
  }

  sub_21681D34C(v2, v1);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_21681C360()
{
  v0 = sub_21700F5E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21681C3AC(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7265766F706F70;
      break;
    case 2:
      result = 0x6572616873;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    case 4:
      result = 0x616C506F54646461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21681C454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21681C360();
  *a1 = result;
  return result;
}

uint64_t sub_21681C484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21681C3AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_OWORD *sub_21681C4C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v60 = a3;
  v63 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v62 = v8 - v7;
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v64 = a1;
  sub_21700CE04();
  sub_21681D29C();
  sub_21700CD14();
  v22 = *(v11 + 8);
  v23 = v21;
  v24 = v9;
  v22(v23, v9);
  v25 = LOBYTE(v69[0]);
  if (LOBYTE(v69[0]) == 5)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_6_24();
    sub_21681D34C(v26, v27);
    OUTLINED_FUNCTION_3_0();
    v28 = MEMORY[0x277D84F90];
    *v29 = 1684957547;
    v29[1] = 0xE400000000000000;
    v29[2] = &type metadata for AccessoryButton;
    v29[3] = v28;
    OUTLINED_FUNCTION_9_7();
    (*(v30 + 104))();
    swift_willThrow();
    (*(v5 + 8))(v70, v63);
    v31 = v64;
  }

  else
  {
    v61 = v5;
    v32 = v64;
    sub_21700CE04();
    if ((sub_21700CDA4() & 1) == 0)
    {
      v59 = v22;
      v55 = v25;
      v33 = sub_21681C114(v25);
      v56 = v34;
      v36 = v35;
      (*(v11 + 16))(v15, v19, v24);
      v37 = v61;
      (*(v61 + 16))(v62, v70, v63);
      v38 = sub_21700F164();
      v58 = &v53;
      v54 = v38;
      OUTLINED_FUNCTION_1();
      v40 = v39;
      MEMORY[0x28223BE20](v41);
      v57 = v19;
      v42 = v24;
      v44 = &v53 - v43;
      sub_21700D724();
      if (__swift_getEnumTagSinglePayload(v44, 1, v33) != 1)
      {
        v66 = v33;
        v67 = v56;
        v68 = v36;
        __swift_allocate_boxed_opaque_existential_1(&v65);
        OUTLINED_FUNCTION_9_7();
        (*(v50 + 32))();
        (*(v37 + 8))(v70, v63);
        v51 = v59;
        v59(v64, v42);
        v51(v57, v42);
        sub_21681D228(&v65, v69);
        v52 = v60;
        result = sub_21681D228(v69, (v60 + 8));
        *v52 = v55;
        return result;
      }

      (*(v40 + 8))(v44, v54);
      v22 = v59;
      v32 = v64;
      v24 = v42;
      v19 = v57;
    }

    sub_21700E2E4();
    OUTLINED_FUNCTION_6_24();
    sub_21681D34C(v45, v46);
    OUTLINED_FUNCTION_3_0();
    *v47 = 1835365481;
    v47[1] = 0xE400000000000000;
    v47[2] = &type metadata for AccessoryButton;
    OUTLINED_FUNCTION_9_7();
    (*(v48 + 104))();
    swift_willThrow();
    (*(v61 + 8))(v70, v63);
    v22(v32, v24);
    v31 = v19;
  }

  return (v22)(v31, v24);
}

_OWORD *sub_21681CAA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for ContextAccessoryButton(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v59 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = &v58 - v8;
  v9 = type metadata accessor for PopoverAccessoryButton(0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for DefaultAccessoryButton(0);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v58 - v27;
  v29 = type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v58 - v35;
  sub_21681D100(a1, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_21681D170(v28);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F20);
    sub_2167880BC();
    swift_allocError();
    *v38 = 0xD000000000000013;
    v38[1] = 0x8000000217082B10;
    v38[2] = v37;
    swift_willThrow();
    OUTLINED_FUNCTION_0_43();
    return sub_21681D394(a1, v39);
  }

  v58 = a1;
  sub_21681D240(v28, v36, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
  sub_21681D2F0(v36, v33, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v42 = v66;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21681D240(v33, v16, type metadata accessor for PopoverAccessoryButton);
      *v42 = 1;
      v63 = type metadata accessor for PopoverAccessoryButton();
      v64 = sub_21681D34C(&qword_27CAB8F38, type metadata accessor for PopoverAccessoryButton);
      v65 = sub_21681D34C(&qword_27CAB8F40, type metadata accessor for PopoverAccessoryButton);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
      sub_21681D2F0(v16, v13, type metadata accessor for PopoverAccessoryButton);
      v44 = v61;
      sub_2167A7258(v13, boxed_opaque_existential_1);
      OUTLINED_FUNCTION_0_43();
      sub_21681D394(v58, v45);
      sub_21681D394(v16, type metadata accessor for PopoverAccessoryButton);
      OUTLINED_FUNCTION_1_30();
      if (!v44)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v51 = v60;
      sub_21681D240(v33, v60, type metadata accessor for ContextAccessoryButton);
      *v42 = 3;
      v63 = type metadata accessor for ContextAccessoryButton();
      v64 = sub_21681D34C(&qword_27CAB8F28, type metadata accessor for ContextAccessoryButton);
      v65 = sub_21681D34C(&qword_27CAB8F30, type metadata accessor for ContextAccessoryButton);
      __swift_allocate_boxed_opaque_existential_1(&v62);
      v52 = v59;
      sub_21681D2F0(v51, v59, type metadata accessor for ContextAccessoryButton);
      v53 = v61;
      sub_216C386F8(v52);
      if (!v53)
      {
        OUTLINED_FUNCTION_0_43();
        sub_21681D394(v56, v57);
        OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_1_30();
LABEL_13:
        v50 = v42 + 8;
        return sub_21681D228(&v62, v50);
      }

      OUTLINED_FUNCTION_0_43();
      sub_21681D394(v54, v55);
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_1_30();
    }

    return __swift_deallocate_boxed_opaque_existential_2(&v62);
  }

  sub_21681D240(v33, v24, type metadata accessor for DefaultAccessoryButton);
  v46 = v66;
  *v66 = 0;
  sub_21681D2F0(v24, v21, type metadata accessor for DefaultAccessoryButton);
  v63 = type metadata accessor for DefaultAccessoryButton();
  v64 = sub_21681D34C(&qword_27CAB8F48, type metadata accessor for DefaultAccessoryButton);
  v65 = sub_21681D34C(&qword_27CAB8F50, type metadata accessor for DefaultAccessoryButton);
  v47 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v48 = v61;
  sub_21681BE04(v21, v47);
  OUTLINED_FUNCTION_0_43();
  sub_21681D394(v58, v49);
  sub_21681D394(v24, type metadata accessor for DefaultAccessoryButton);
  OUTLINED_FUNCTION_1_30();
  if (v48)
  {
    return __swift_deallocate_boxed_opaque_existential_2(&v62);
  }

  v50 = v46 + 8;
  return sub_21681D228(&v62, v50);
}

uint64_t sub_21681D100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21681D170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEA1440);
  }

  return result;
}

_OWORD *sub_21681D228(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_21681D240(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_21681D29C()
{
  result = qword_27CAB8F60;
  if (!qword_27CAB8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8F60);
  }

  return result;
}

uint64_t sub_21681D2F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21681D34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21681D394(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AccessoryButton.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21681D4CC()
{
  result = qword_27CAB8F88;
  if (!qword_27CAB8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8F88);
  }

  return result;
}

uint64_t sub_21681D520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SearchPageListContentView();
  v7 = a3 + *(v6 + 40);
  *v7 = sub_2167CB87C;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  result = (*(v8 + 32))(a3, a1);
  *(a3 + *(v6 + 36)) = a2;
  return result;
}

uint64_t sub_21681D600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  sub_2170091F4();
  OUTLINED_FUNCTION_1();
  v44 = v5;
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170086D4();
  OUTLINED_FUNCTION_1();
  v39 = v7;
  v40 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F90);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F98);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v46 = *(a1 + 16);
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FA0);
  sub_21681E5C8();
  sub_217009ED4();
  sub_217009CB4();
  v23 = sub_2166D9530(&qword_27CAB8FC8, &qword_27CAB8F90);
  sub_21700A404();
  (*(v13 + 8))(v16, v11);
  sub_2170086C4();
  v48 = v11;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v42;
  v25 = v39;
  sub_21700ABC4();
  (*(v40 + 8))(v10, v25);
  (*(v19 + 8))(v22, v17);
  v26 = v43;
  sub_2170091E4();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FD0) + 36);
  v29 = v44;
  v28 = v45;
  (*(v44 + 16))(v24 + v27, v26, v45);
  v30 = v24;
  __swift_storeEnumTagSinglePayload(v24 + v27, 0, 1, v28);
  KeyPath = swift_getKeyPath();
  v32 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FD8) + 36));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8538) + 28);
  (*(v29 + 32))(v32 + v33, v26, v28);
  __swift_storeEnumTagSinglePayload(v32 + v33, 0, 1, v28);
  *v32 = KeyPath;
  v34 = swift_getKeyPath();
  type metadata accessor for PersistentPageSectionManager();
  sub_21681FC38(&unk_280E32060, type metadata accessor for PersistentPageSectionManager);
  v35 = sub_2170081B4();
  v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FE0) + 36));
  *v36 = v34;
  v36[1] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FE8);
  return sub_21681DE8C(v30 + *(v37 + 52));
}

uint64_t sub_21681DAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FB8);
  sub_21681E658();
  return sub_21700B1B4();
}

uint64_t sub_21681DB70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FF8);
  MEMORY[0x28223BE20](v0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 56);
  v3 = swift_checkMetadataState();
  v2(v3, AssociatedConformanceWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000);
  sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000);
  sub_2170075C4();
  swift_getKeyPath();
  type metadata accessor for PageListSectionView();
  sub_2166D9530(&qword_27CAB9008, &qword_27CAB8FF8);
  sub_21681FC38(&qword_27CAB8FC0, type metadata accessor for PageListSectionView);
  return sub_21700B154();
}

uint64_t sub_21681DDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MappedSection(0) + 28);
  sub_21681FD74(a2 + v6, a3, type metadata accessor for MappedSection.Content);
  result = type metadata accessor for PageListSectionView();
  *(a3 + *(result + 20)) = a1 == 0;
  return result;
}

uint64_t sub_21681DE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9010) + 48);

  return sub_21681DDB4(v3, v4, a2);
}

uint64_t sub_21681DE8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MappedSection(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, AssociatedConformanceWitness);
  v10 = *(v9 + 16);
  if (v10)
  {
    v19 = a1;
    v20 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v11 = v20;
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21681FD74(v12, v5, type metadata accessor for MappedSection);
      v15 = *v5;
      v14 = v5[1];
      sub_21700DF14();
      sub_21681FDD4(v5, type metadata accessor for MappedSection);
      v20 = v11;
      v16 = *(v11 + 16);
      if (v16 >= *(v11 + 24) >> 1)
      {
        sub_2166F4258();
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_21681F738();
  return sub_21700F364();
}

void sub_21681E0F0()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObjectGraph();
    if (v1 <= 0x3F)
    {
      sub_2167CBB2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21681E1A4(unsigned __int8 *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(result - 8) + 84);
  }

  v7 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v15 = *(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v5, result);
    }
  }

  else
  {
    v8 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v8 <= 3)
    {
      v9 = ((a2 - v6 + 255) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = a1[v8];
        if (!a1[v8])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v12 = *&a1[v8];
        if (!*&a1[v8])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *&a1[v8];
        if (!v12)
        {
          goto LABEL_26;
        }

LABEL_22:
        v13 = (v12 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v14 = *a1;
        }

        else
        {
          v13 = 0;
          v14 = *a1;
        }

        result = v6 + (v14 | v13) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21681E358(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v13 = 0;
  }

  else
  {
    if (v10 <= 3)
    {
      v11 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v16 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v17 = (a2 - 1);
            }

            *v16 = v17;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v14 = ~v8 + a2;
    bzero(a1, v10);
    if (v10 <= 3)
    {
      v15 = (v14 >> 8) + 1;
    }

    else
    {
      v15 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v14;
    }

    else
    {
      *a1 = v14;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_21681E5C8()
{
  result = qword_27CAB8FA8;
  if (!qword_27CAB8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8FA0);
    sub_21681E658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8FA8);
  }

  return result;
}

unint64_t sub_21681E658()
{
  result = qword_27CAB8FB0;
  if (!qword_27CAB8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8FB8);
    sub_21681FC38(&qword_27CAB8FC0, type metadata accessor for PageListSectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8FB0);
  }

  return result;
}

uint64_t type metadata accessor for PageListSectionView()
{
  result = qword_27CAB9018;
  if (!qword_27CAB9018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21681E758@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PageListSectionView();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9030);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9038);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v34 = &v30 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9040);
  MEMORY[0x28223BE20](v42);
  v40 = &v30 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9048);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9050);
  MEMORY[0x28223BE20](v41);
  v38 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9058);
  MEMORY[0x28223BE20](v10);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9060);
  MEMORY[0x28223BE20](v36);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21681FD74(v1, v15, type metadata accessor for MappedSection.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 54)
  {
    v44 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9090);
    sub_2166D9530(&qword_27CAB9098, &qword_27CAB9090);
    sub_2170075C4();
    swift_getKeyPath();
    sub_21681FD74(v1, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageListSectionView);
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_21681FC80(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_21681FCE4;
    *(v25 + 24) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9088);
    sub_2166D9530(&qword_27CAB90A0, &qword_27CAB9030);
    sub_21681FB4C();
    v26 = v34;
    sub_21700B154();
    v27 = v35;
    v28 = v39;
    (*(v35 + 16))(v8, v26, v39);
    swift_storeEnumTagMultiPayload();
    sub_21681F904();
    sub_21681FAC8();
    v29 = v38;
    sub_217009554();
    sub_216681B04(v29, v40, &qword_27CAB9050);
    swift_storeEnumTagMultiPayload();
    sub_21681F878();
    sub_217009554();
    sub_2166997CC(v29, &qword_27CAB9050);
    return (*(v27 + 8))(v26, v28);
  }

  else if (EnumCaseMultiPayload == 56)
  {
    v44 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90A8);
    sub_2166D9530(&qword_280E2A020, &qword_27CAB90A8);
    sub_2170075C4();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B0);
    sub_2166D9530(&qword_280E48620, &qword_27CAB9058);
    v17 = type metadata accessor for TopSearchLockupView(255);
    v18 = sub_21681FC38(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
    v44 = v17;
    v45 = v18;
    swift_getOpaqueTypeConformance2();
    sub_21700B154();
    KeyPath = swift_getKeyPath();
    v20 = &v12[*(v36 + 36)];
    *v20 = 0;
    *(v20 + 1) = KeyPath;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = 0;
    v20[40] = 0;
    sub_216681B04(v12, v8, &qword_27CAB9060);
    swift_storeEnumTagMultiPayload();
    sub_21681F904();
    sub_21681FAC8();
    v21 = v38;
    sub_217009554();
    sub_216681B04(v21, v40, &qword_27CAB9050);
    swift_storeEnumTagMultiPayload();
    sub_21681F878();
    sub_217009554();
    sub_2166997CC(v21, &qword_27CAB9050);
    return sub_2166997CC(v12, &qword_27CAB9060);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21681F878();
    sub_217009554();
    return sub_21681FDD4(v15, type metadata accessor for MappedSection.Content);
  }
}

uint64_t sub_21681F06C(uint64_t a1)
{
  v2 = sub_21700DAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TopSearchLockup();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v28 = type metadata accessor for TopSearchLockupView(0);
  MEMORY[0x28223BE20](v28);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_2168027B0(v17, v16);
  sub_216DE8ED8();
  sub_2167A757C(v8, v12);
  sub_21681FDD4(v8, type metadata accessor for TopSearchLockup);
  v18 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
  {
    sub_2166997CC(v12, &qword_27CAB6D58);
    v19 = 1;
  }

  else
  {
    v20 = *(v18 - 8);
    v26 = v2;
    v27 = a1;
    v21 = v20;
    (*(v20 + 16))(v14, v12, v18);
    v22 = v3;
    v23 = sub_21700D794();
    sub_21700D754();
    v23(v29, 0);
    v3 = v22;
    (*(v21 + 8))(v12, v18);
    v2 = v26;
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v19, 1, v18);
  sub_21700DAE4();
  sub_21681FC38(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  sub_21700A1C4();
  (*(v3 + 8))(v5, v2);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_21681FDD4(v16, type metadata accessor for TopSearchLockupView);
}

uint64_t sub_21681F454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SuggestionItemView(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_21681FD74(a2, v12, type metadata accessor for SuggestionItem);
  sub_21681FD74(a2, v9, type metadata accessor for SuggestionItem);
  v17 = type metadata accessor for SuggestionItem();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  sub_216EF143C();
  sub_2166997CC(v9, &qword_27CAB90C0);
  sub_21681FDD4(v12, type metadata accessor for SuggestionItemView);
  v18 = 0;
  if (!a1)
  {
    v18 = *(v23 + *(type metadata accessor for PageListSectionView() + 20));
  }

  KeyPath = swift_getKeyPath();
  (*(v14 + 32))(a4, v16, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9088);
  v21 = a4 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = KeyPath;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_21681F6C8(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B8);
  return a2(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_21681F738()
{
  result = qword_27CAB8FF0;
  if (!qword_27CAB8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8FF0);
  }

  return result;
}

uint64_t sub_21681F7E8()
{
  result = type metadata accessor for MappedSection.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21681F878()
{
  result = qword_27CAB9068;
  if (!qword_27CAB9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9050);
    sub_21681F904();
    sub_21681FAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9068);
  }

  return result;
}

unint64_t sub_21681F904()
{
  result = qword_280E2B088;
  if (!qword_280E2B088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9060);
    sub_21681F990();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B088);
  }

  return result;
}

unint64_t sub_21681F990()
{
  result = qword_280E2A4E8;
  if (!qword_280E2A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9070);
    type metadata accessor for TopSearchLockupView(255);
    sub_21681FC38(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4E8);
  }

  return result;
}

unint64_t sub_21681FA74()
{
  result = qword_280E47ED8;
  if (!qword_280E47ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E47ED8);
  }

  return result;
}

unint64_t sub_21681FAC8()
{
  result = qword_27CAB9078;
  if (!qword_27CAB9078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9038);
    sub_21681FB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9078);
  }

  return result;
}

unint64_t sub_21681FB4C()
{
  result = qword_27CAB9080;
  if (!qword_27CAB9080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9088);
    type metadata accessor for SuggestionItemView(255);
    sub_21681FC38(qword_280E3E620, type metadata accessor for SuggestionItemView);
    swift_getOpaqueTypeConformance2();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9080);
  }

  return result;
}

uint64_t sub_21681FC38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21681FC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageListSectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21681FCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PageListSectionView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21681F454(a1, a2, v8, a3);
}

uint64_t sub_21681FD74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21681FDD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21681FE28()
{
  result = qword_27CAB90D0;
  if (!qword_27CAB90D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB90D8);
    sub_21681F878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB90D0);
  }

  return result;
}

uint64_t sub_21681FEDC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v82 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v77 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v72 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v20 = *(v77 + 16);
  v80 = v4;
  v73 = v20;
  v74 = v77 + 16;
  v20(v8, v85, v4);
  v21 = _s6LockupVMa();
  v71 = v21[5];
  v75 = v8;
  sub_21700D734();
  v76 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = *(v11 + 8);
  v78 = v11 + 8;
  v79 = v9;
  v25(v17, v9);
  if (v24)
  {
    v83 = v22;
    v84 = v24;
    v26 = v82;
    sub_21700F364();
    v70 = v24;
    sub_21700CE04();
    v81 = v25;
    v27 = v85;
    sub_21700D2E4();
    v81(v19, v79);
    v28 = type metadata accessor for Artwork();
    sub_21700CE04();
    v73(v75, v27, v80);
    sub_2166D65B0(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v29 = OUTLINED_FUNCTION_3_35();
    v30 = v79;
    v81(v29, v79);
    v31 = (v26 + v21[6]);
    *v31 = v19;
    v31[1] = v28;
    sub_21700CE04();
    sub_21700CDB4();
    v32 = OUTLINED_FUNCTION_3_35();
    v81(v32, v30);
    v33 = (v26 + v21[7]);
    *v33 = v19;
    v33[1] = v28;
    sub_21700CE04();
    v34 = v85;
    sub_21700D2E4();
    v81(v19, v30);
    v35 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v73(v75, v34, v80);
    sub_2166D65B0(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v36 = OUTLINED_FUNCTION_3_35();
    v37 = v81;
    v81(v36, v30);
    v38 = (v26 + v21[9]);
    *v38 = v19;
    v38[1] = v35;
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v39 = sub_21700CD44();
    v37(v19, v30);
    v75 = v21;
    *(v26 + v21[10]) = v39;
    v40 = v72;
    sub_21700CE04();
    v41 = sub_21700CDB4();
    v43 = v42;
    v37(v40, v30);
    if (v43)
    {
      v45 = v75;
      v44 = v76;
      v46 = v82;
      v47 = (v82 + v75[15]);
      *v47 = v41;
      v47[1] = v43;
      sub_21700CE04();
      v48 = sub_21700CDB4();
      v50 = v49;
      v51 = OUTLINED_FUNCTION_2_31();
      v52(v51);
      v53 = v44;
      v54 = v79;
      v37(v53, v79);
      result = (v37)(v19, v54);
      v56 = (v46 + v45[13]);
      *v56 = v48;
      v56[1] = v50;
      return result;
    }

    sub_21700E2E4();
    OUTLINED_FUNCTION_1_32();
    sub_2166D65B0(v63, v64);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v65 = 0x6867696C68676968;
    v65[1] = 0xEB00000000444974;
    v21 = v75;
    v65[2] = v75;
    OUTLINED_FUNCTION_50();
    (*(v66 + 104))();
    swift_willThrow();
    v67 = OUTLINED_FUNCTION_2_31();
    v68(v67);
    v37(v76, v79);
    sub_216788110(v82);
    v24 = v70;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_32();
    sub_2166D65B0(v57, v58);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v59 = 25705;
    v59[1] = 0xE200000000000000;
    v59[2] = v21;
    OUTLINED_FUNCTION_50();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = OUTLINED_FUNCTION_2_31();
    v62(v61);
    v25(v76, v79);
  }

  result = sub_216699820(v82 + v71, &qword_27CAB6D58);
  if (v24)
  {
    v69 = v82;

    sub_216699820(v69 + v21[8], &qword_27CAB6DB0);

    sub_216699820(v69 + v21[11], &qword_27CAB6DB0);
    sub_216699820(v69 + v21[12], &qword_27CAB6A00);
    return sub_216699820(v69 + v21[14], &qword_27CAB6D60);
  }

  return result;
}

uint64_t type metadata accessor for RemoveRecentLibrarySearchesAction()
{
  result = qword_280E2F078;
  if (!qword_280E2F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2168208B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v25 = v20;
  v26 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v28)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  return (*(v25 + 32))(a3, v23, v26);
}

uint64_t type metadata accessor for ReplayPageContentView()
{
  result = qword_27CAB90E8;
  if (!qword_27CAB90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216820BAC()
{
  sub_216820D70();
  if (v0 <= 0x3F)
  {
    sub_216820E14();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppDestinationPageProviderBox();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ReplayTaskManager(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UserSocialProfileCoordinator();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SubscriptionStatusCoordinator();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CloudLibraryStatusController();
              if (v6 <= 0x3F)
              {
                type metadata accessor for SocialGraphController();
                if (v7 <= 0x3F)
                {
                  sub_216820E6C();
                  if (v8 <= 0x3F)
                  {
                    sub_2166DB34C();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for AnimatedTextListItemViewCoordinator();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for UnifiedMessages.Coordinator();
                        if (v11 <= 0x3F)
                        {
                          sub_2166B49AC();
                          if (v12 <= 0x3F)
                          {
                            sub_216820EBC();
                            if (v13 <= 0x3F)
                            {
                              sub_216820F14();
                              if (v14 <= 0x3F)
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
}

void sub_216820D70()
{
  if (!qword_27CAB90F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9100);
    sub_2166D9530(&qword_27CAB9108, &qword_27CAB9100);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB90F8);
    }
  }
}

unint64_t sub_216820E14()
{
  result = qword_280E2A1B0;
  if (!qword_280E2A1B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E2A1B0);
  }

  return result;
}

void sub_216820E6C()
{
  if (!qword_27CAB9110)
  {
    v0 = sub_21700B104();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9110);
    }
  }
}

void sub_216820EBC()
{
  if (!qword_280E2B460)
  {
    sub_2170080D4();
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B460);
    }
  }
}

void sub_216820F14()
{
  if (!qword_27CAB9118)
  {
    type metadata accessor for ReplayToolbarPagePresenter(255);
    sub_2166DB5A4(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9118);
    }
  }
}

void sub_216820FC4()
{
  OUTLINED_FUNCTION_49();
  v54 = v1;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100);
  OUTLINED_FUNCTION_3_2();
  LODWORD(v53) = v2;
  sub_2166D9530(v3, &qword_27CAB9100);
  sub_2170081B4();
  if (*(v0 + 160))
  {
    v4 = *(v0 + 40);
    v55 = v0;

    v6 = sub_216BBC664(v5, v4, 0, 0);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62D8);
    v8 = v7 - 8;
    MEMORY[0x28223BE20](v7);
    v10 = &v47 - v9;
    v11 = sub_2170081B4();
    sub_2168215B8(v11, v6, v10);

    sub_2170081B4();
    v12 = sub_217008684();
    v13 = *(v8 + 44);
    v53 = v10;
    v14 = &v10[v13];
    *v14 = v6;
    v14[1] = v12;
    v14[2] = v15;
    v16 = type metadata accessor for ReplayPageContentView();
    v17 = OUTLINED_FUNCTION_2(v16);
    v19 = v18;
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v17);
    sub_216826B40(v55, &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplayPageContentView);
    sub_21700EA34();
    v55 = v6;

    v22 = sub_21700EA24();
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_2168264E0(&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for ReplayPageContentView);
    v26 = sub_21700EA74();
    OUTLINED_FUNCTION_1();
    v28 = v27;
    v30 = *(v29 + 64);
    MEMORY[0x28223BE20](v31);
    v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
    v33 = &v47 - v32;
    sub_21700EA44();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v50 = sub_2170087B4();
      v51 = &v47;
      OUTLINED_FUNCTION_1();
      v49 = v34;
      MEMORY[0x28223BE20](v35);
      OUTLINED_FUNCTION_7();
      v52 = &v47;
      v48 = v37 - v36;
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_21700F3B4();

      v57 = 0xD000000000000030;
      v58 = 0x8000000217082B30;
      v56 = 63;
      v38 = sub_21700F784();
      MEMORY[0x21CE9F490](v38);

      MEMORY[0x28223BE20](v39);
      (*(v28 + 16))(&v47 - v32, v33, v26);
      v40 = v48;
      OUTLINED_FUNCTION_8();
      sub_2170087A4();

      (*(v28 + 8))(v33, v26);
      v41 = v54;
      sub_2167C5834(v53, v54, &qword_27CAB62D8);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E0);
      (*(v49 + 32))(v41 + *(v42 + 36), v40, v50);
    }

    else
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E8);
      v44 = v54;
      v45 = (v54 + *(v43 + 36));
      v46 = sub_217008554();
      (*(v28 + 32))(&v45[*(v46 + 20)], &v47 - v32, v26);
      *v45 = &unk_21701C718;
      *(v45 + 1) = v24;
      sub_2167C5834(v53, v44, &qword_27CAB62D8);
    }

    OUTLINED_FUNCTION_26();
  }

  else
  {
    type metadata accessor for MusicStackAuthority();
    sub_2166DB5A4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    sub_217008CD4();
    __break(1u);
  }
}

uint64_t sub_2168215B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a2;
  v237 = a3;
  v238 = a1;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140);
  *&v225 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v4 = &v171 - v3;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9148);
  *&v226 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v6 = &v171 - v5;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150);
  v188 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v187 = &v171 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9158);
  v193 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v191 = &v171 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9160);
  v197 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v196 = &v171 - v10;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9168);
  MEMORY[0x28223BE20](v233);
  v12 = &v171 - v11;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9170);
  MEMORY[0x28223BE20](v227);
  v228 = &v171 - v13;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9178);
  MEMORY[0x28223BE20](v235);
  v229 = &v171 - v14;
  v175 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v175);
  v174 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for ReplayPageContentView();
  v214 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v215 = v16;
  v216 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  MEMORY[0x28223BE20](v17 - 8);
  v186 = &v171 - v18;
  v189 = sub_2170080D4();
  v219 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v218 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_217009714();
  MEMORY[0x28223BE20](v176);
  v177 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9188);
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v171 - v21;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9190);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  *&v221 = &v171 - v22;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9198);
  MEMORY[0x28223BE20](v181);
  v184 = &v171 - v23;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91A0);
  MEMORY[0x28223BE20](v182);
  v192 = &v171 - v24;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91A8);
  MEMORY[0x28223BE20](v190);
  v195 = &v171 - v25;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91B0);
  MEMORY[0x28223BE20](v194);
  v199 = &v171 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91B8);
  MEMORY[0x28223BE20](v198);
  v201 = &v171 - v27;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91C0);
  MEMORY[0x28223BE20](v200);
  v204 = &v171 - v28;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91C8);
  MEMORY[0x28223BE20](v202);
  v207 = &v171 - v29;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91D0);
  MEMORY[0x28223BE20](v205);
  v209 = &v171 - v30;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91D8);
  MEMORY[0x28223BE20](v208);
  v212 = &v171 - v31;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91E0);
  MEMORY[0x28223BE20](v211);
  v222 = &v171 - v32;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91E8);
  v33 = MEMORY[0x28223BE20](v232);
  v213 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v217 = &v171 - v35;
  v210 = type metadata accessor for MappedReplayPage(0);
  v203 = *(v210 - 8);
  v36 = *(v203 + 64);
  v37 = MEMORY[0x28223BE20](v210);
  v206 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v224 = &v171 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = (&v171 - v40);
  v42 = type metadata accessor for JSReplayPage();
  v241 = v42;
  v43 = sub_2166DB5A4(&qword_27CAB91F8, type metadata accessor for JSReplayPage);
  v242 = v43;
  swift_getKeyPath();
  v239 = v42;
  v240 = v43;
  swift_getKeyPath();
  sub_217007DE4();

  v44 = v9;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
  if (__swift_getEnumTagSinglePayload(v41, 1, v45) == 1)
  {
LABEL_5:
    sub_217007514();
    sub_217009C64();
    sub_21700B394();
    v58 = sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    v59 = v230;
    sub_21700A834();
    (*(v225 + 8))(v4, v59);
    v60 = v226;
    v61 = v231;
    (*(v226 + 16))(v228, v6, v231);
    swift_storeEnumTagMultiPayload();
    v243 = v59;
    v244 = v58;
    swift_getOpaqueTypeConformance2();
    sub_216825B00();
    v62 = v229;
    sub_217009554();
    sub_216683A80(v62, v12, &qword_27CAB9178);
    swift_storeEnumTagMultiPayload();
    sub_2168263E4();
    v63 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
    v243 = v234;
    v244 = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v243 = v236;
    v244 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    sub_2166997CC(v62, &qword_27CAB9178);
    return (*(v60 + 8))(v6, v61);
  }

  v172 = v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v12 = v172;
    if (EnumCaseMultiPayload == 1)
    {
      v47 = *v41;
      v48 = *v41;

      v49 = v187;
      sub_217007564();
      sub_217009C44();
      sub_21700B3B4();
      v50 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
      v51 = v191;
      v52 = v234;
      sub_21700A824();
      (*(v188 + 8))(v49, v52);
      sub_217009C64();
      sub_21700B394();
      v243 = v52;
      v244 = v50;
      v53 = swift_getOpaqueTypeConformance2();
      v54 = v196;
      v55 = v236;
      sub_21700A834();
      (*(v193 + 8))(v51, v55);
      v56 = v197;
      (*(v197 + 16))(v12, v54, v44);
      swift_storeEnumTagMultiPayload();
      sub_2168263E4();
      v243 = v55;
      v244 = v53;
      swift_getOpaqueTypeConformance2();
      sub_217009554();

      return (*(v56 + 8))(v54, v44);
    }

    goto LABEL_5;
  }

  v65 = v224;
  sub_2168264E0(v41, v224, type metadata accessor for MappedReplayPage);
  v66 = sub_2170093C4();
  MEMORY[0x28223BE20](v66);
  v67 = v238;
  *(&v171 - 4) = v65;
  *(&v171 - 3) = v67;
  *(&v171 - 2) = v223;
  LODWORD(v243) = 0;
  sub_2166DB5A4(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92E8);
  sub_216826548();
  v68 = v178;
  sub_217008014();
  sub_2166D9530(&qword_27CAB9270, &qword_27CAB9188);
  v69 = v180;
  sub_21700A714();
  v70 = (*(v179 + 8))(v68, v69);
  MEMORY[0x28223BE20](v70);
  *(&v171 - 2) = v42;
  *(&v171 - 1) = v43;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v171 - 2) = v42;
  *(&v171 - 1) = v43;
  swift_getKeyPath();
  v72 = v186;
  sub_217007DE4();

  v73 = v189;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v189);
  v171 = v44;
  if (EnumTagSinglePayload == 1)
  {
    v82 = v218;
    sub_216C0C924(EnumTagSinglePayload, v75, v76, v77, v78, v79, v80, v81, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
    v83 = __swift_getEnumTagSinglePayload(v72, 1, v73);
    v84 = v219;
    if (v83 != 1)
    {
      sub_2166997CC(v72, &qword_27CAB9180);
    }
  }

  else
  {
    v84 = v219;
    v82 = v218;
    (*(v219 + 32))(v218, v72, v73);
  }

  v85 = swift_getKeyPath();
  v86 = v184;
  v87 = &v184[*(v181 + 36)];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278);
  (*(v84 + 32))(v87 + *(v88 + 28), v82, v73);
  *v87 = v85;
  (*(v183 + 32))(v86, v221, v185);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100);
  v218 = sub_2166D9530(&qword_27CAB9108, &qword_27CAB9100);
  v219 = v89;
  v90 = sub_217007D54();
  v91 = v192;
  v92 = sub_2167C5834(v86, v192, &qword_27CAB9198);
  v93 = (v91 + *(v182 + 36));
  v94 = v238;
  *v93 = v90;
  v93[1] = v94;
  v95 = *(v94 + *(*v94 + 176));
  MEMORY[0x28223BE20](v92);
  *(&v171 - 2) = type metadata accessor for SocialBadgingRequestCoordinator();
  *(&v171 - 1) = sub_2166DB5A4(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
  v96 = swift_getKeyPath();
  v97 = v195;
  sub_216683A80(v91, v195, &qword_27CAB91A0);
  v98 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9258) + 36));
  *v98 = v96;
  v98[1] = v95;

  v99 = sub_217007D54();
  sub_2166997CC(v91, &qword_27CAB91A0);
  v100 = (v97 + *(v190 + 36));
  *v100 = v99;
  v100[1] = v95;
  v101 = v220;
  v102 = *(v220 + 72);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_2166DB5A4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);

  v103 = sub_217007D54();
  v104 = v97;
  v105 = v199;
  sub_2167C5834(v104, v199, &qword_27CAB91A8);
  v106 = (v105 + *(v194 + 36));
  *v106 = v103;
  v106[1] = v102;
  v107 = *(v101 + 96);
  type metadata accessor for SocialGraphController();
  sub_2166DB5A4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  v108 = v102;
  v109 = sub_217007D54();
  v110 = v105;
  v111 = v201;
  sub_2167C5834(v110, v201, &qword_27CAB91B0);
  v112 = (v111 + *(v198 + 36));
  *v112 = v109;
  v112[1] = v107;
  v113 = *(v101 + 80);
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_2166DB5A4(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator);

  v114 = sub_217007D54();
  v115 = v111;
  v116 = v204;
  sub_2167C5834(v115, v204, &qword_27CAB91B8);
  v117 = (v116 + *(v200 + 36));
  *v117 = v114;
  v117[1] = v113;
  v118 = *(v101 + 88);
  type metadata accessor for CloudLibraryStatusController();
  sub_2166DB5A4(&qword_280E32560, type metadata accessor for CloudLibraryStatusController);

  v119 = sub_217007D54();
  v120 = v116;
  v121 = v207;
  sub_2167C5834(v120, v207, &qword_27CAB91C0);
  v122 = (v121 + *(v202 + 36));
  *v122 = v119;
  v122[1] = v118;
  v123 = *(v101 + 136);
  type metadata accessor for MusicTabChangePublisher();
  sub_2166DB5A4(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);

  v124 = sub_217007D54();
  v125 = v121;
  v126 = v209;
  sub_2167C5834(v125, v209, &qword_27CAB91C8);
  v127 = (v126 + *(v205 + 36));
  *v127 = v124;
  v127[1] = v123;
  v128 = *(v101 + 144);
  type metadata accessor for AnimatedTextListItemViewCoordinator();
  sub_2166DB5A4(qword_280E2E8D0, type metadata accessor for AnimatedTextListItemViewCoordinator);

  v129 = sub_217007D54();
  v130 = v126;
  v131 = v212;
  sub_2167C5834(v130, v212, &qword_27CAB91D0);
  v132 = (v131 + *(v208 + 36));
  *v132 = v129;
  v132[1] = v128;
  *&v226 = v128;
  v133 = v216;
  sub_216826B40(v101, v216, type metadata accessor for ReplayPageContentView);
  v134 = v224;
  v135 = v206;
  sub_216826B40(v224, v206, type metadata accessor for MappedReplayPage);
  v136 = (*(v214 + 80) + 16) & ~*(v214 + 80);
  v137 = (v215 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = (*(v203 + 80) + v137 + 8) & ~*(v203 + 80);
  v139 = swift_allocObject();
  sub_2168264E0(v133, v139 + v136, type metadata accessor for ReplayPageContentView);
  v140 = v223;
  *(v139 + v137) = v223;
  sub_2168264E0(v135, v139 + v138, type metadata accessor for MappedReplayPage);
  v141 = v222;
  sub_2167C5834(v131, v222, &qword_27CAB91D8);
  v142 = (v141 + *(v211 + 36));
  *v142 = sub_216826680;
  v142[1] = v139;
  v142[2] = 0;
  v142[3] = 0;
  v221 = *(v101 + 24);
  if (*(v134 + *(v210 + 28)))
  {

    v143 = v174;
    sub_216DE8DC8();
    v144 = v175;
    v145 = (v143 + v175[6]);
    v146 = v145[1];
    *&v147 = *v145;
    v226 = v147;
    sub_21700DF14();
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    sub_216DE8DC8();
    v148 = (v143 + v144[7]);
    v149 = v148[1];
    *&v150 = *v148;
    v225 = v150;
    sub_21700DF14();
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    sub_216DE8DC8();
    v151 = *(v143 + v144[12]);
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    if (v151 == 4)
    {
      LOBYTE(v151) = 1;
    }

    sub_216DE8DC8();
    v152 = *(v143 + v144[8]);
    sub_2168268B0(v143, type metadata accessor for Page.Header);
    *&v153 = v226;
    *(&v153 + 1) = v146;
    v226 = v153;
    *&v154 = v225;
    *(&v154 + 1) = v149;
  }

  else
  {

    v152 = 0;
    v154 = 0uLL;
    v226 = 0u;
    LOBYTE(v151) = 1;
  }

  v225 = v154;
  v155 = *(v101 + 152);
  v156 = v213;
  v157 = &v213[*(v232 + 36)];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92D8);
  sub_216826B40(v224, &v157[v158[9]], type metadata accessor for MappedReplayPage);
  *v157 = v221;
  *&v157[v158[10]] = v140;
  v159 = &v157[v158[11]];

  swift_unknownObjectRetain();
  *v159 = sub_217008684();
  v159[1] = v160;
  v161 = &v157[v158[12]];
  v162 = v225;
  *v161 = v226;
  *(v161 + 1) = v162;
  v161[32] = v151;
  v161[33] = v152;
  *&v157[v158[13]] = v155;
  v163 = v158[14];
  *&v157[v163] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310);
  swift_storeEnumTagMultiPayload();
  v164 = &v157[v158[15]];
  type metadata accessor for MusicStackAuthority();
  sub_2166DB5A4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);

  *v164 = sub_217008CF4();
  v164[1] = v165;
  sub_2167C5834(v222, v156, &qword_27CAB91E0);
  v166 = v217;
  sub_2167C5834(v156, v217, &qword_27CAB91E8);
  sub_216683A80(v166, v228, &qword_27CAB91E8);
  swift_storeEnumTagMultiPayload();
  v167 = sub_2166D9530(qword_280E48638, &qword_27CAB9140);
  v243 = v230;
  v244 = v167;
  swift_getOpaqueTypeConformance2();
  sub_216825B00();
  v168 = v229;
  sub_217009554();
  sub_216683A80(v168, v172, &qword_27CAB9178);
  swift_storeEnumTagMultiPayload();
  sub_2168263E4();
  v169 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
  v243 = v234;
  v244 = v169;
  v170 = swift_getOpaqueTypeConformance2();
  v243 = v236;
  v244 = v170;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  sub_2166997CC(v168, &qword_27CAB9178);
  sub_2166997CC(v166, &qword_27CAB91E8);
  return sub_2168268B0(v224, type metadata accessor for MappedReplayPage);
}

uint64_t sub_216823670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9130);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216823770, v6, v5);
}

uint64_t sub_216823770()
{
  v1 = v0[8];
  v2 = v0[7];
  v6 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100);
  OUTLINED_FUNCTION_3_2();
  sub_2166D9530(v3, &qword_27CAB9100);
  sub_2170081B4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9138);
  sub_217007DB4();
  swift_endAccess();

  sub_216C2ECE0();
  (*(v2 + 8))(v1, v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2168238E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v24 = a4;
  v6 = type metadata accessor for MappedReplayPage(0);
  v20[0] = *(v6 - 8);
  v7 = *(v20[0] + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FF8);
  MEMORY[0x28223BE20](v23);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92E8);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = v20 - v9;
  v25 = *a1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000);
  sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000);
  sub_2170075C4();
  v20[1] = swift_getKeyPath();
  sub_216826B40(a1, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MappedReplayPage);
  v11 = (*(v20[0] + 80) + 24) & ~*(v20[0] + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_2168264E0(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for MappedReplayPage);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_216826A88;
  *(v13 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9338);
  sub_2166D9530(&qword_27CAB9008, &qword_27CAB8FF8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92F8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9300);
  v16 = sub_2166D9530(&qword_27CAB9308, &qword_27CAB9300);
  v25 = v15;
  v26 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v14;
  v26 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21700B154();
  swift_getKeyPath();
  v18 = v22;
  sub_21700B144();

  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_216823D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a1;
  v25 = a4;
  v22 = a2;
  v28 = a5;
  v29 = sub_2170099D4();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9300);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB92F8);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - v12;
  sub_216826B40(a2, v11, type metadata accessor for MappedSection);
  v14 = *(*a3 + 16);
  v15 = &v11[v9[13]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v11[v9[12]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9100);
  sub_2166D9530(&qword_27CAB9108, &qword_27CAB9100);
  *v16 = sub_217008684();
  v16[1] = v17;
  v18 = v24;
  *&v11[v9[9]] = v25;
  *&v11[v9[10]] = v18;
  *&v11[v9[11]] = v14;

  sub_21682439C();
  sub_2166997CC(v11, &qword_27CAB9300);
  sub_2170099C4();
  v19 = sub_2166D9530(&qword_27CAB9308, &qword_27CAB9300);
  v30 = v9;
  v31 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v26;
  sub_21700A784();
  (*(v27 + 8))(v8, v29);
  return (*(v23 + 8))(v13, v20);
}

void sub_21682409C()
{
  OUTLINED_FUNCTION_49();
  v23[0] = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v23 - v17;
  v19 = type metadata accessor for MappedSection(0);
  sub_216683A80(v4 + *(v19 + 36), v15, &qword_27CAB6D58);
  v20 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    sub_2166997CC(v15, &qword_27CAB6D58);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  }

  else
  {
    sub_216BE5AD4(v2 & 1, v18);
    (*(*(v20 - 8) + 8))(v15, v20);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  }

  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9368);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9370);
  v22 = sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370);
  v23[2] = v21;
  v23[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_21700A1C4();
  (*(v7 + 8))(v11, v5);
  sub_2166997CC(v18, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_21682439C()
{
  OUTLINED_FUNCTION_49();
  v30 = v0;
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v26 = v5;
  v7 = v6;
  v29 = v8;
  v9 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v17 = OUTLINED_FUNCTION_36(v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v25[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v25[-v21];
  v23 = type metadata accessor for MappedSection(0);
  sub_216683A80(v7 + *(v23 + 36), v20, &qword_27CAB6D58);
  v24 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
  {
    sub_2166997CC(v20, &qword_27CAB6D58);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v24);
  }

  else
  {
    sub_216BE5AD4(v26 & 1, v22);
    (*(*(v24 - 8) + 8))(v20, v24);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
  }

  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  sub_2166D9530(v28, v4);
  sub_21700A1C4();
  (*(v11 + 8))(v15, v9);
  sub_2166997CC(v22, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216824628(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9010);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_216824694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v114 = a2;
  v103 = sub_217009124();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9318);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = (&v96 - v9);
  *&v120 = type metadata accessor for AddToPlaylistAccessoryButton();
  MEMORY[0x28223BE20](v120);
  v118 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9320);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v106 = &v96 - v15;
  MEMORY[0x28223BE20](v14);
  v117 = &v96 - v16;
  v111 = type metadata accessor for ShareAccessoryButton();
  MEMORY[0x28223BE20](v111);
  v119 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Page.Header(0);
  v18 = MEMORY[0x28223BE20](v115);
  v96 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v96 - v21;
  MEMORY[0x28223BE20](v20);
  v105 = &v96 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v98 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v96 - v27;
  MEMORY[0x28223BE20](v26);
  v113 = &v96 - v28;
  v29 = type metadata accessor for MappedReplayPage(0);
  v30 = v29 - 8;
  v110 = *(v29 - 8);
  v31 = *(v110 + 64);
  MEMORY[0x28223BE20](v29);
  v108 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ReplayPageContentView();
  v32 = *(v107 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v107);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v96 - v36;
  v38 = *(a1 + 112);
  v39 = *(a1 + 120);
  *&v126 = *(a1 + 104);
  *(&v126 + 1) = v38;
  LOBYTE(v127) = v39;
  LOBYTE(v122) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  sub_21700B0D4();
  v40 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v40);
  v116 = a1;
  sub_216826B40(a1, v34, type metadata accessor for ReplayPageContentView);
  sub_216826B40(a3, &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MappedReplayPage);
  sub_21700EA34();
  v41 = v114;

  v42 = sub_21700EA24();
  v43 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v44 = (v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v110 + 80) + v44 + 8) & ~*(v110 + 80);
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  *(v46 + 16) = v42;
  *(v46 + 24) = v47;
  sub_2168264E0(v34, v46 + v43, type metadata accessor for ReplayPageContentView);
  *(v46 + v44) = v41;
  v48 = v46 + v45;
  v49 = v111;
  sub_2168264E0(v108, v48, type metadata accessor for MappedReplayPage);
  sub_21677BBA0();

  v50 = *(v109 + *(v30 + 36));
  v51 = v49;
  if (v50)
  {
    v52 = v105;
    sub_216DE8DC8();
    v53 = *(v52 + *(v115 + 40));
    sub_21700DF14();
    sub_2168268B0(v52, type metadata accessor for Page.Header);
    if (v53)
    {
      v54 = 0;
      v55 = *(v53 + 16);
      for (i = v53 + 32; ; i += 56)
      {
        if (v55 == v54)
        {

          v129 = 0;
          v127 = 0u;
          v128 = 0u;
          v126 = 0u;
LABEL_11:
          sub_2166997CC(&v126, &qword_27CAB8E60);
          goto LABEL_12;
        }

        if (v54 >= *(v53 + 16))
        {
          break;
        }

        sub_216826904(i, &v122);
        sub_216826960(&v122 + 8, v121);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
        if (swift_dynamicCast())
        {

          sub_2168268B0(v119, type metadata accessor for ShareAccessoryButton);
          v127 = v123;
          v128 = v124;
          v126 = v122;
          v129 = v125;
          if (v124)
          {
            sub_216826960(&v126 + 8, v130);
            sub_2168269C4(&v126);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
            v57 = v113;
            v58 = swift_dynamicCast() ^ 1;
            v59 = v57;
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        ++v54;
        sub_2168269C4(&v122);
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

LABEL_12:
  v57 = v113;
  v59 = v113;
  v58 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v59, v58, 1, v49);
  v60 = v116;
  v61 = v120;
  v62 = v112;
  if (v50)
  {
    v63 = v104;
    sub_216DE8DC8();
    v64 = *(v63 + *(v115 + 40));
    sub_21700DF14();
    sub_2168268B0(v63, type metadata accessor for Page.Header);
    if (v64)
    {
      v65 = 0;
      v66 = *(v64 + 16);
      for (j = v64 + 32; ; j += 56)
      {
        if (v66 == v65)
        {

          v129 = 0;
          v127 = 0u;
          v128 = 0u;
          v126 = 0u;
          goto LABEL_23;
        }

        if (v65 >= *(v64 + 16))
        {
          goto LABEL_47;
        }

        sub_216826904(j, &v122);
        sub_216826960(&v122 + 8, v121);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v65;
        sub_2168269C4(&v122);
      }

      sub_2168268B0(v118, type metadata accessor for AddToPlaylistAccessoryButton);
      v127 = v123;
      v128 = v124;
      v126 = v122;
      v129 = v125;
      if (v124)
      {
        sub_216826960(&v126 + 8, v130);
        sub_2168269C4(&v126);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
        v68 = v117;
        v61 = v120;
        v69 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v68, v69 ^ 1u, 1, v61);
        v62 = v112;
        v60 = v116;
        goto LABEL_25;
      }

LABEL_23:
      sub_2166997CC(&v126, &qword_27CAB8E60);
      v61 = v120;
      v62 = v112;
      v60 = v116;
    }
  }

  __swift_storeEnumTagSinglePayload(v117, 1, 1, v61);
LABEL_25:
  sub_216683A80(v57, v62, &qword_27CAB9328);
  if (__swift_getEnumTagSinglePayload(v62, 1, v51) == 1)
  {
    sub_2166997CC(v62, &qword_27CAB9328);
    v126 = 0u;
    v127 = 0u;
    *&v128 = 0;
  }

  else
  {
    sub_216683A80(v62 + *(v51 + 24), &v126, &qword_27CAB6DB0);
    sub_2168268B0(v62, type metadata accessor for ShareAccessoryButton);
    if (*(&v127 + 1))
    {
      goto LABEL_31;
    }
  }

  sub_2166997CC(&v126, &qword_27CAB6DB0);
  v70 = v106;
  sub_216683A80(v117, v106, &qword_27CAB9320);
  if (__swift_getEnumTagSinglePayload(v70, 1, v61) == 1)
  {
    sub_2166997CC(v70, &qword_27CAB9320);
    v126 = 0u;
    v127 = 0u;
    *&v128 = 0;
    goto LABEL_34;
  }

  sub_216683A80(v70 + *(v61 + 24), &v126, &qword_27CAB6DB0);
  sub_2168268B0(v70, type metadata accessor for AddToPlaylistAccessoryButton);
  if (*(&v127 + 1))
  {
LABEL_31:
    sub_2166997CC(&v126, &qword_27CAB6DB0);
    if (!*(v60 + *(v107 + 76)))
    {
      goto LABEL_48;
    }

    v71 = v98;
    sub_216683A80(v57, v98, &qword_27CAB9328);
    if (__swift_getEnumTagSinglePayload(v71, 1, v51) == 1)
    {

      sub_2166997CC(v71, &qword_27CAB9328);
      v126 = 0u;
      v127 = 0u;
      *&v128 = 0;
    }

    else
    {
      sub_216683A80(v71 + *(v51 + 24), &v126, &qword_27CAB6DB0);

      sub_2168268B0(v71, type metadata accessor for ShareAccessoryButton);
    }

    v74 = v99;
    sub_216683A80(v117, v99, &qword_27CAB9320);
    if (__swift_getEnumTagSinglePayload(v74, 1, v61) == 1)
    {
      sub_2166997CC(v74, &qword_27CAB9320);
      v122 = 0u;
      v123 = 0u;
      *&v124 = 0;
      if (v50)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_216683A80(v74 + *(v61 + 24), &v122, &qword_27CAB6DB0);
      sub_2168268B0(v74, type metadata accessor for AddToPlaylistAccessoryButton);
      if (v50)
      {
LABEL_39:
        v75 = v96;
        sub_216DE8DC8();
        v76 = v115;
        v77 = (v75 + *(v115 + 24));
        v78 = v77[1];
        *&v120 = *v77;
        sub_21700DF14();
        sub_2168268B0(v75, type metadata accessor for Page.Header);
        sub_216DE8DC8();
        v79 = (v75 + *(v76 + 28));
        v81 = *v79;
        v80 = v79[1];
        sub_21700DF14();
        sub_2168268B0(v75, type metadata accessor for Page.Header);
        sub_216DE8DC8();
        v82 = *(v75 + *(v76 + 48));
        sub_2168268B0(v75, type metadata accessor for Page.Header);
        v83 = MEMORY[0x277CDDDC8];
        switch(v82)
        {
          case 1:
          case 4:
            goto LABEL_43;
          case 2:
            v83 = MEMORY[0x277CDDDB0];
            break;
          default:
            goto LABEL_44;
        }

        goto LABEL_44;
      }
    }

    v78 = 0;
    *&v120 = 0;
    v80 = 0;
    v81 = 0;
LABEL_43:
    v83 = MEMORY[0x277CDDDC0];
LABEL_44:
    v84 = v102;
    v85 = v101;
    v86 = v103;
    (*(v102 + 104))(v101, *v83, v103);
    v87 = sub_21700AD14();
    v88 = v127;
    v89 = v100;
    *v100 = v126;
    *(v89 + 16) = v88;
    v90 = v123;
    *(v89 + 40) = v122;
    *(v89 + 32) = v128;
    *(v89 + 56) = v90;
    v91 = v114;
    *(v89 + 72) = v124;
    *(v89 + 80) = v91;
    *(v89 + 88) = v120;
    *(v89 + 96) = v78;
    *(v89 + 104) = v81;
    *(v89 + 112) = v80;
    v92 = type metadata accessor for ReplayPageToolbarProvider(0);
    v93 = v92[9];
    v94 = *(v84 + 32);
    v120 = *(v116 + 24);
    v94(v89 + v93, v85, v86);
    *(v89 + v92[10]) = v87;
    *(v89 + v92[11]) = v120;
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v92);

    swift_unknownObjectRetain();
    sub_216EC85F4(v89);
    v57 = v113;
    goto LABEL_45;
  }

LABEL_34:
  sub_2166997CC(&v126, &qword_27CAB6DB0);
  if (*(v60 + *(v107 + 76)))
  {
    v72 = type metadata accessor for ReplayPageToolbarProvider(0);
    v73 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v72);

    sub_216EC85F4(v73);
LABEL_45:

    sub_2166997CC(v117, &qword_27CAB9320);
    return sub_2166997CC(v57, &qword_27CAB9328);
  }

LABEL_48:
  type metadata accessor for ReplayToolbarPagePresenter(0);
  sub_2166DB5A4(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter);
  result = sub_217008CD4();
  __break(1u);
  return result;
}