uint64_t static SoundAnalysisPreprocessorKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C60, &unk_2577709C0);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  v20 = *(v17 + 56);
  sub_257692698(a1, &v24 - v18);
  sub_257692698(a2, &v19[v20]);
  sub_257692A8C(v19, v12);
  sub_257692A8C(&v19[v20], v10);
  sub_2577431B4();
  OUTLINED_FUNCTION_6_36();
  sub_2576923E4(v21, v22);
  LOBYTE(a2) = sub_257743644();
  sub_257692B58(v10, type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters);
  sub_257692B58(v12, type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters);
  return a2 & 1;
}

uint64_t SoundAnalysisPreprocessorKind.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for SoundAnalysisPreprocessorKind(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_4_35();
  sub_257692698(v0, v15);
  v16 = OUTLINED_FUNCTION_3_45();
  sub_257692A8C(v16, v8);
  MEMORY[0x259C651F0](0);
  type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  OUTLINED_FUNCTION_0_65();
  sub_2576923E4(v17, v18);
  sub_2577435F4();
  return sub_257692B58(v8, type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters);
}

uint64_t SoundAnalysisPreprocessorKind.hashValue.getter()
{
  sub_257743A14();
  SoundAnalysisPreprocessorKind.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_25769223C()
{
  sub_257743A14();
  SoundAnalysisPreprocessorKind.hash(into:)();
  return sub_257743A64();
}

uint64_t static SoundAnalysisPreprocessorKind.VGGishParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_6_36();
  sub_2576923E4(v0, v1);
  return sub_257743644() & 1;
}

uint64_t SoundAnalysisPreprocessorKind.VGGishParameters.hash(into:)()
{
  type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  OUTLINED_FUNCTION_0_65();
  sub_2576923E4(v0, v1);

  return sub_2577435F4();
}

uint64_t SoundAnalysisPreprocessorKind.VGGishParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  OUTLINED_FUNCTION_0_65();
  sub_2576923E4(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576923E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25769242C()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  sub_2576923E4(&qword_27F87FD38, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t SoundAnalysisPreprocessorKind.VGGishParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_257692698(v1, v19 - v18);
  v22[1] = MEMORY[0x277D84F90];
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t sub_257692698(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257692818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_25745DE34);
}

uint64_t sub_257692870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_25745DE78);
}

uint64_t sub_2576928D8(uint64_t a1)
{
  v2 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_2577431B4();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2576929B8()
{
  result = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257692A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257692A8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_257692AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257692B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return sub_257692B58(v0, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing);
}

void sub_257692C54(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for SizeRange();
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v58 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v58 - v20);
  v22 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  if (!a2 || a2 >= 3)
  {
    FeatureType.ImageParameters.sizeFlexibility.getter();
    v23 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
    {
      v61 = v22;
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
      sub_257693D78(v21, v15);
      sub_257693D78(v21 + v24, v13);
      sub_2576935C4(v15, v13, a1, a2, &v61);
      sub_257693DDC(v13);
      sub_257693DDC(v15);
    }

    else
    {
      sub_257693440(*v21, &v61);
    }

    sub_25763D14C(v61);
  }

  sub_257693260(a2, &v61);
  v26 = v61;
  v25 = v62;
  v27 = ") is non-positive.";
  if (v61 <= 0)
  {
    v59 = a3;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_257743834();

    v61 = 0xD000000000000017;
    v62 = 0x8000000257780F30;
    v60 = v26;
    v28 = sub_257743974();
    MEMORY[0x259C64E90](v28);

    OUTLINED_FUNCTION_21_17();
    v58 = v61;
    v61 = a1;

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_3_46();
    sub_257743604();
    OUTLINED_FUNCTION_20_14();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_66();
      sub_25746996C();
      v27 = v51;
    }

    v30 = *(v27 + 3);
    if (*(v27 + 2) >= v30 >> 1)
    {
      OUTLINED_FUNCTION_2_43(v30);
      sub_25746996C();
      v27 = v52;
    }

    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_5_38(v31);
    *(v32 + 64) = &v61;
    *(v32 + 72) = v29;

    v63 = v27;
    a3 = v59;
    v27 = ") is non-positive.";
  }

  if (v25 <= 0)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_257743834();

    v61 = 0xD000000000000018;
    v62 = 0x8000000257780F70;
    v60 = v25;
    v33 = sub_257743974();
    MEMORY[0x259C64E90](v33);

    OUTLINED_FUNCTION_21_17();
    v59 = v61;
    v61 = a1;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_3_46();
    sub_257743604();
    OUTLINED_FUNCTION_20_14();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_66();
      sub_25746996C();
      v27 = v53;
    }

    v35 = *(v27 + 3);
    if (*(v27 + 2) >= v35 >> 1)
    {
      OUTLINED_FUNCTION_2_43(v35);
      sub_25746996C();
      v27 = v54;
    }

    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_5_38(v36);
    *(v37 + 64) = &v61;
    *(v37 + 72) = v34;

    v63 = v27;
  }

  v38 = v3 + *(type metadata accessor for FeatureType.ImageParameters(0) + 20);
  v39 = (v38 + *(type metadata accessor for Proto_ImageFeatureType(0) + 28));
  if (*(v39 + 8) != 1)
  {
    goto LABEL_24;
  }

  v40 = *v39;
  if ((v40 - 1) >= 3)
  {
    if (v40)
    {
      if (a2 > 6)
      {
        goto LABEL_30;
      }

      v41 = 0x8000000257780FC0;
      v61 = a1;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      OUTLINED_FUNCTION_3_46();
      sub_257743604();
      if ((OUTLINED_FUNCTION_19_21() & 1) == 0)
      {
        v55 = *(a2 + 16);
        OUTLINED_FUNCTION_0_66();
        sub_25746996C();
        a2 = v56;
      }

      v47 = *(a2 + 24);
      if (*(a2 + 16) >= v47 >> 1)
      {
        OUTLINED_FUNCTION_174(v47);
        sub_25746996C();
        a2 = v57;
      }

      OUTLINED_FUNCTION_14_13();
      v45 = 0xD000000000000072;
      goto LABEL_29;
    }

LABEL_24:
    v41 = 0x8000000257780F90;
    v61 = a1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_3_46();
    sub_257743604();
    if ((OUTLINED_FUNCTION_19_21() & 1) == 0)
    {
      v48 = *(a2 + 16);
      OUTLINED_FUNCTION_0_66();
      sub_25746996C();
      a2 = v49;
    }

    v43 = *(a2 + 24);
    if (*(a2 + 16) >= v43 >> 1)
    {
      OUTLINED_FUNCTION_174(v43);
      sub_25746996C();
      a2 = v50;
    }

    OUTLINED_FUNCTION_14_13();
    v45 = 0xD000000000000027;
LABEL_29:
    *(v44 + 40) = v45;
    *(v44 + 48) = v41;
    OUTLINED_FUNCTION_8_26(v44);
    *(v46 + 64) = &v61;
    *(v46 + 72) = v42;
    v63 = a2;
  }

LABEL_30:
  *a3 = v63;
}

uint64_t sub_257693260@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for SizeRange();
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v27 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  result = type metadata accessor for FeatureType.ImageParameters(0);
  v21 = (v2 + *(result + 20));
  v22 = *v21;
  if (a1 && a1 < 3)
  {
    v23 = v21[1];
LABEL_14:
    *a2 = v22;
    a2[1] = v23;
    return result;
  }

  v23 = v21[1];
  if (v22 | v23)
  {
    goto LABEL_14;
  }

  FeatureType.ImageParameters.sizeFlexibility.getter();
  v24 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  result = __swift_getEnumTagSinglePayload(v19, 1, v24);
  v22 = 0;
  v23 = 0;
  if (result == 1)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    v26 = *v19;
    if (*(*v19 + 16))
    {
      v22 = *(v26 + 32);
      v23 = *(v26 + 40);
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    goto LABEL_14;
  }

  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
  sub_257693D78(v19, v13);
  sub_257693D78(&v19[v25], v11);
  v22 = *v13;
  result = sub_257693DDC(v13);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = *v11;
    result = sub_257693DDC(v11);
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_257693440(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && ((v5 = (v2 + *(type metadata accessor for FeatureType.ImageParameters(0) + 20)), *v5 < 1) || (v6 = v5[1], v6 < 1) || sub_2576F1A64(*v5, v6, a1)))
  {
    *a2 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_3_46();
    v7 = sub_257743604();
    v9 = v8;
    *a2 = MEMORY[0x277D84F90];
    sub_25767A064();
    sub_25767A0B0(*(*a2 + 16));
    OUTLINED_FUNCTION_6_37();
    OUTLINED_FUNCTION_5_38(v10);
    *(v11 + 64) = v7;
    *(v11 + 72) = v9;
  }
}

uint64_t sub_2576935C4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v101 = MEMORY[0x277D84F90];
  v99 = a3;

  sub_25763D200(&unk_2868B41C8);
  OUTLINED_FUNCTION_15_15(v12, v13, v14, v15, v16, v17, v18, v19, v84, v87, v91, v94, v97, v99);
  sub_25773ADC0(v20);

  sub_25763D14C(v99);
  OUTLINED_FUNCTION_12_25();
  sub_25763D200(&unk_2868B41F8);
  OUTLINED_FUNCTION_15_15(v21, v22, v23, v24, v25, v26, v27, v28, v85, v88, v92, v95, v98, v99);
  v96 = a2;
  sub_25773ADC0(v29);

  v30 = &v101;
  sub_25763D14C(v99);
  result = type metadata accessor for FeatureType.ImageParameters(0);
  v32 = (v7 + *(result + 20));
  v33 = *v32;
  if (*v32 >= 1)
  {
    if ((*a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v33 < *a1)
    {
      OUTLINED_FUNCTION_4_36();
      sub_257743834();
      OUTLINED_FUNCTION_17_18();
      OUTLINED_FUNCTION_7_29();
      MEMORY[0x259C64E90](0xD00000000000001FLL);
      v34 = sub_257743974();
      MEMORY[0x259C64E90](v34);

      OUTLINED_FUNCTION_7_29();
      MEMORY[0x259C64E90]();
      v35 = sub_257743974();
      MEMORY[0x259C64E90](v35);

      OUTLINED_FUNCTION_10_29();
      v93 = v99;
      OUTLINED_FUNCTION_12_25();
      sub_25763D200(&unk_2868B4228);
      a4 = v99;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      OUTLINED_FUNCTION_1_51();
      v36 = sub_257743604();
      v86 = v37;
      v89 = v36;
      v30 = v101;

      v38 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = v30[2];
        OUTLINED_FUNCTION_0_66();
        sub_25746996C();
        v30 = v80;
        v101 = v80;
      }

      v40 = v30[2];
      v39 = v30[3];
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_174(v39);
        sub_25746996C();
        v30 = v81;
      }

      v30[2] = v40 + 1;
      v41 = &v30[6 * v40];
      *(v41 + 32) = 0;
      OUTLINED_FUNCTION_5_38(v41);
      *(v42 + 64) = v89;
      *(v42 + 72) = v86;

      v101 = v30;
      v32 = v38;
    }
  }

  v6 = a1[1];
  if (v6 < 0 || v6 >= v33)
  {
    goto LABEL_15;
  }

  v93 = a5;
  OUTLINED_FUNCTION_4_36();
  sub_257743834();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_7_29();
  MEMORY[0x259C64E90](0xD00000000000001FLL);
  v43 = OUTLINED_FUNCTION_11_24();
  MEMORY[0x259C64E90](v43);

  OUTLINED_FUNCTION_7_29();
  MEMORY[0x259C64E90]();
  v44 = OUTLINED_FUNCTION_11_24();
  MEMORY[0x259C64E90](v44);

  OUTLINED_FUNCTION_10_29();
  a1 = v100;
  v89 = v99;
  OUTLINED_FUNCTION_12_25();
  v30 = &v99;
  sub_25763D200(&unk_2868B4258);

  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_1_51();
  sub_257743604();
  OUTLINED_FUNCTION_18_25();
  v33 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v46 = v30[2];
    v45 = v30[3];
    if (v46 >= v45 >> 1)
    {
      OUTLINED_FUNCTION_2_43(v45);
      sub_25746996C();
      v30 = v75;
    }

    v30[2] = v46 + 1;
    v47 = &v30[6 * v46];
    *(v47 + 32) = 0;
    *(v47 + 40) = v89;
    *(v47 + 48) = a1;
    OUTLINED_FUNCTION_8_26(v47);
    *(v48 + 64) = a4;
    *(v48 + 72) = v6;

    v101 = v30;
    a5 = v93;
    v32 = v33;
LABEL_15:
    v49 = *(v32 + 1);
    v33 = "Image feature's default height (";
    v50 = v96;
    if (v49 < 1)
    {
      break;
    }

    v6 = *v96;
    if ((*v96 & 0x8000000000000000) == 0)
    {
      if (v49 < v6)
      {
        OUTLINED_FUNCTION_4_36();
        sub_257743834();
        OUTLINED_FUNCTION_17_18();
        OUTLINED_FUNCTION_7_29();
        MEMORY[0x259C64E90]();
        v51 = OUTLINED_FUNCTION_11_24();
        MEMORY[0x259C64E90](v51);

        OUTLINED_FUNCTION_7_29();
        MEMORY[0x259C64E90]();
        v52 = OUTLINED_FUNCTION_11_24();
        MEMORY[0x259C64E90](v52);

        OUTLINED_FUNCTION_10_29();
        v53 = v100;
        v90 = v99;
        OUTLINED_FUNCTION_12_25();
        v54 = &v99;
        sub_25763D200(&unk_2868B4288);

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
        sub_2574A16C8();
        OUTLINED_FUNCTION_1_51();
        sub_257743604();
        OUTLINED_FUNCTION_18_25();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_66();
          sub_25746996C();
          v54 = v82;
          v101 = v82;
        }

        v57 = v54[2];
        v56 = v54[3];
        if (v57 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_2_43(v56);
          sub_25746996C();
          v54 = v83;
        }

        v54[2] = v57 + 1;
        v58 = &v54[6 * v57];
        *(v58 + 32) = 0;
        *(v58 + 40) = v90;
        *(v58 + 48) = v53;
        OUTLINED_FUNCTION_8_26(v58);
        *(v59 + 64) = v55;
        *(v59 + 72) = v6;

        v101 = v54;
        v50 = v96;
      }

      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v73 = v30[2];
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v30 = v74;
    v101 = v74;
  }

  v60 = v50[1];
  if (v60 < 0 || v60 >= v49)
  {
    v68 = v101;
  }

  else
  {
    OUTLINED_FUNCTION_4_36();
    sub_257743834();
    OUTLINED_FUNCTION_17_18();
    OUTLINED_FUNCTION_7_29();
    MEMORY[0x259C64E90]();
    v61 = sub_257743974();
    MEMORY[0x259C64E90](v61);

    OUTLINED_FUNCTION_7_29();
    MEMORY[0x259C64E90]();
    v62 = sub_257743974();
    MEMORY[0x259C64E90](v62);

    OUTLINED_FUNCTION_10_29();
    v63 = v99;
    v64 = v100;
    OUTLINED_FUNCTION_12_25();
    sub_25763D200(&unk_2868B42B8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_1_51();
    v65 = sub_257743604();
    v67 = v66;
    v68 = v101;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = v68[2];
      OUTLINED_FUNCTION_0_66();
      sub_25746996C();
      v68 = v77;
    }

    v70 = v68[2];
    v69 = v68[3];
    if (v70 >= v69 >> 1)
    {
      OUTLINED_FUNCTION_174(v69);
      sub_25746996C();
      v68 = v78;
    }

    v68[2] = v70 + 1;
    v71 = &v68[6 * v70];
    *(v71 + 32) = 0;
    *(v71 + 40) = v63;
    *(v71 + 48) = v64;
    OUTLINED_FUNCTION_8_26(v71);
    *(v72 + 64) = v65;
    *(v72 + 72) = v67;
  }

  *a5 = v68;
  return result;
}

uint64_t sub_257693D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257693DDC(uint64_t a1)
{
  v2 = type metadata accessor for SizeRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_5_38(uint64_t a1@<X8>)
{
  *(a1 + 40) = v1;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
}

void OUTLINED_FUNCTION_6_37()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + 48 * v1 + 32) = 0;
}

void OUTLINED_FUNCTION_10_29()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return sub_257743974();
}

uint64_t OUTLINED_FUNCTION_12_25()
{
}

uint64_t OUTLINED_FUNCTION_18_25()
{
}

uint64_t OUTLINED_FUNCTION_19_21()
{
  v2 = *(v0 - 88);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  v2 = *(v0 - 88);
}

void OUTLINED_FUNCTION_21_17()
{

  JUMPOUT(0x259C64E90);
}

uint64_t PipelineConfiguration.models.getter()
{
  v1 = type metadata accessor for Model(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_257483F38();
    v9 = v19;
    v10 = type metadata accessor for Proto_Model(0);
    OUTLINED_FUNCTION_24(v10);
    v12 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_2_44();
      sub_257695F08();
      v15 = *(v19 + 16);
      if (v15 >= *(v19 + 24) >> 1)
      {
        sub_257483F38();
      }

      *(v19 + 16) = v15 + 1;
      v16 = *(v4 + 80);
      OUTLINED_FUNCTION_193();
      v17 = *(v4 + 72);
      OUTLINED_FUNCTION_10_30();
      v12 += v14;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void sub_2576941B0()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for Model(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_78();
  v16 = type metadata accessor for Proto_Pipeline(v15);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_38();
  v21 = v4(v20);
  sub_257695E30(v0 + *(v21 + 20), v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v16);
  v23 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    *v2 = MEMORY[0x277D84F90];
    v2[1] = v23;
    v24 = v2 + *(v16 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v1, 1, v16) != 1)
    {
      sub_257695EA0(v1);
    }
  }

  else
  {
    sub_257695FB8();
  }

  v25 = *v2;

  OUTLINED_FUNCTION_11_25();
  v26 = *(v25 + 16);
  if (v26)
  {
    sub_257483F38();
    v27 = type metadata accessor for Proto_Model(0);
    OUTLINED_FUNCTION_24(v27);
    v29 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v31 = *(v30 + 72);
    do
    {
      sub_257695F08();
      v32 = *(v23 + 16);
      if (v32 >= *(v23 + 24) >> 1)
      {
        sub_257483F38();
      }

      *(v23 + 16) = v32 + 1;
      v33 = *(v8 + 80);
      OUTLINED_FUNCTION_193();
      v34 = *(v8 + 72);
      OUTLINED_FUNCTION_10_30();
      v29 += v31;
      --v26;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576944B0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for Model(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  v37 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v38 = v0;
  v9 = *(v0() + 16);

  v36 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v35 = v2;
    while (v12 < *((v38)(v10) + 16))
    {
      v14 = *(v37 + 80);
      OUTLINED_FUNCTION_193();
      v16 = *(v15 + 72);
      OUTLINED_FUNCTION_3_47();
      sub_257695F08();

      v18 = *(v2(v17) + 16);

      if (v12 >= v18)
      {
        v24 = sub_257743974();
        MEMORY[0x259C64E90](v24);

        v21 = 0x6C65646F6DLL;
        v22 = 0xE500000000000000;
      }

      else
      {
        v20 = v2(v19);
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v21 = *(v20 + v11 + 32);
        v22 = *(v20 + v11 + 40);
      }

      v25 = sub_257470D6C(v23);
      v27 = v26;
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v13 + 16);
        sub_257469AE0();
        v13 = v33;
      }

      v30 = *(v13 + 16);
      if (v30 >= *(v13 + 24) >> 1)
      {
        sub_257469AE0();
        v13 = v34;
      }

      ++v12;
      OUTLINED_FUNCTION_0_67();
      v10 = sub_257695F64();
      *(v13 + 16) = v30 + 1;
      v31 = v13 + 40 * v30;
      *(v31 + 32) = v21;
      *(v31 + 40) = v22;
      *(v31 + 48) = v25;
      *(v31 + 56) = v27;
      *(v31 + 64) = v29;
      v11 += 16;
      v2 = v35;
      if (v36 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_15:
    sub_2576AACFC(v13);
    OUTLINED_FUNCTION_35();
  }
}

void sub_257694720()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for Model(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v31 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = *(PipelineConfiguration.models.getter() + 16);

  v30 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 8);
    v29 = *(v8 + 16);
    v28 = v8;
    v9 = (v8 + 40);
    v10 = MEMORY[0x277D84F90];
    while (v7 < *(PipelineConfiguration.models.getter() + 16))
    {
      v11 = *(v31 + 80);
      OUTLINED_FUNCTION_193();
      v13 = *(v12 + 72);
      OUTLINED_FUNCTION_3_47();
      sub_257695F08();

      if (v7 >= v29)
      {
        v17 = sub_257743974();
        MEMORY[0x259C64E90](v17);

        v14 = 0x6C65646F6DLL;
        v15 = 0xE500000000000000;
      }

      else
      {
        if (v7 >= *(v28 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(v9 - 1);
        v15 = *v9;
      }

      v18 = sub_257470D6C(v16);
      v20 = v19;
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v10 + 16);
        sub_257469AE0();
        v10 = v26;
      }

      v23 = *(v10 + 16);
      if (v23 >= *(v10 + 24) >> 1)
      {
        sub_257469AE0();
        v10 = v27;
      }

      ++v7;
      OUTLINED_FUNCTION_0_67();
      sub_257695F64();
      *(v10 + 16) = v23 + 1;
      v24 = v10 + 40 * v23;
      *(v24 + 32) = v14;
      *(v24 + 40) = v15;
      *(v24 + 48) = v18;
      *(v24 + 56) = v20;
      *(v24 + 64) = v22;
      v9 += 2;
      if (v30 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_15:
    sub_2576AACFC(v10);
    OUTLINED_FUNCTION_35();
  }
}

void sub_25769496C(uint64_t *a1)
{
  v1 = *a1;

  PipelineConfiguration.models.setter();
}

void PipelineConfiguration.models.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for Model(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_78();
  v10 = type metadata accessor for Proto_Model(v9);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = *(v0 + 16);
  if (v16)
  {
    v26 = MEMORY[0x277D84F90];
    sub_257484E38();
    v17 = v26;
    v18 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v0 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_3_47();
      sub_257695F08();
      OUTLINED_FUNCTION_2_44();
      sub_257695F08();
      OUTLINED_FUNCTION_0_67();
      sub_257695F64();
      v22 = *(v26 + 16);
      if (v22 >= *(v26 + 24) >> 1)
      {
        sub_257484E38();
      }

      *(v26 + 16) = v22 + 1;
      v23 = *(v13 + 80);
      OUTLINED_FUNCTION_193();
      v24 = *(v13 + 72);
      OUTLINED_FUNCTION_9_26();
      sub_257695FB8();
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v25 = *v1;

  *v1 = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t PipelineConfiguration.models.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = PipelineConfiguration.models.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257694BE8(uint64_t *a1)
{
  v1 = *a1;

  return PipelineConfiguration.names.setter(v2);
}

uint64_t PipelineConfiguration.names.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*PipelineConfiguration.names.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

void PipelineConfiguration.init(models:names:)()
{
  OUTLINED_FUNCTION_267();
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  *v2 = MEMORY[0x277D84F90];
  v2[1] = v3;
  v4 = v2 + *(type metadata accessor for Proto_Pipeline(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  PipelineConfiguration.models.setter();
  v2[1] = v0;
}

BOOL static PipelineConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (sub_257482184(*v2, *v3) & 1) != 0 && (sub_257479C78(*(v1 + 8), *(v0 + 8)))
  {
    v4 = *(type metadata accessor for Proto_Pipeline(0) + 24);
    sub_2577431B4();
    sub_25769614C(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void PipelineConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_35_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_38();
  v17 = type metadata accessor for PipelineConfiguration(v16);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  sub_257695F08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_16_15(v21, xmmword_257743FF0);
  v22 = PipelineConfiguration.models.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C88, &qword_257770B88);
  v21[3].n128_u64[0] = v22;
  v21[4].n128_u64[1] = v23;
  v21[5].n128_u64[0] = 0x73656D616ELL;
  v21[5].n128_u64[1] = 0xE500000000000000;
  v24 = *(v0 + 8);
  v21[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  v21[6].n128_u64[0] = v24;
  v25 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v25);
  (*(v6 + 104))(v11, *MEMORY[0x277D84C38], v1);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_257694FC8(uint64_t *a1)
{
  v1 = *a1;

  PipelineClassifierConfiguration.models.setter();
}

uint64_t PipelineClassifierConfiguration.models.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  PipelineClassifierConfiguration.models.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257695064(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t sub_2576950EC(uint64_t *a1)
{
  v1 = *a1;

  return PipelineClassifierConfiguration.names.setter(v2);
}

uint64_t PipelineClassifierConfiguration.names.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = PipelineClassifierConfiguration.names.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_257695228(uint64_t *a1)
{
  v1 = *a1;

  PipelineRegressorConfiguration.models.setter();
}

void sub_25769526C()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for Model(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = type metadata accessor for Proto_Model(0);
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v51 = &v47 - v21;
  v22 = type metadata accessor for Proto_Pipeline(0);
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = (v27 - v26);
  v29 = *(v0 + 16);
  if (v29)
  {
    v47 = (v27 - v26);
    v48 = v3;
    v49 = v22;
    v50 = v1;
    v52 = MEMORY[0x277D84F90];
    sub_257484E38();
    v30 = v8;
    v31 = v52;
    v32 = *(v30 + 80);
    OUTLINED_FUNCTION_193();
    v34 = v0 + v33;
    v36 = *(v35 + 72);
    do
    {
      sub_257695F08();
      OUTLINED_FUNCTION_2_44();
      sub_257695F08();
      OUTLINED_FUNCTION_0_67();
      sub_257695F64();
      v52 = v31;
      v37 = *(v31 + 16);
      if (v37 >= *(v31 + 24) >> 1)
      {
        sub_257484E38();
        v31 = v52;
      }

      *(v31 + 16) = v37 + 1;
      v38 = *(v14 + 80);
      OUTLINED_FUNCTION_193();
      v39 = *(v14 + 72);
      OUTLINED_FUNCTION_9_26();
      sub_257695FB8();
      v34 += v36;
      --v29;
    }

    while (v29);

    v22 = v49;
    v1 = v50;
    v28 = v47;
    v40 = v48(0);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
    v40 = v3(0);
  }

  v41 = *(v40 + 20);
  v42 = v51;
  sub_257695E30(v1 + v41, v51);
  OUTLINED_FUNCTION_26_0(v42);
  if (v43)
  {
    v44 = MEMORY[0x277D84F90];
    *v28 = MEMORY[0x277D84F90];
    v28[1] = v44;
    v45 = v28 + *(v22 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v42);
    if (!v43)
    {
      sub_257695EA0(v42);
    }
  }

  else
  {
    sub_257695FB8();
  }

  v46 = *v28;

  *v28 = v31;
  sub_257695EA0(v1 + v41);
  OUTLINED_FUNCTION_8_27();
  sub_257695FB8();
  __swift_storeEnumTagSinglePayload(v1 + v41, 0, 1, v22);
  OUTLINED_FUNCTION_35();
}

uint64_t PipelineRegressorConfiguration.models.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  PipelineRegressorConfiguration.models.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257695628(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Proto_Pipeline(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_38();
  v15 = a1(v14);
  sub_257695E30(v1 + *(v15 + 20), v9);
  OUTLINED_FUNCTION_26_0(v9);
  if (v16)
  {
    v17 = MEMORY[0x277D84F90];
    *v2 = MEMORY[0x277D84F90];
    v2[1] = v17;
    v18 = v2 + *(v10 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v9);
    if (!v16)
    {
      sub_257695EA0(v9);
    }
  }

  else
  {
    sub_257695FB8();
  }

  v19 = v2[1];

  OUTLINED_FUNCTION_11_25();
  return v19;
}

uint64_t sub_257695760(uint64_t *a1)
{
  v1 = *a1;

  return PipelineRegressorConfiguration.names.setter(v2);
}

uint64_t sub_2576957A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_38();
  v12 = type metadata accessor for Proto_Pipeline(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_78();
  v17 = *(a2(v16) + 20);
  sub_257695E30(v2 + v17, v4);
  OUTLINED_FUNCTION_26_0(v4);
  if (v18)
  {
    v19 = MEMORY[0x277D84F90];
    *v3 = MEMORY[0x277D84F90];
    v3[1] = v19;
    v20 = v3 + *(v12 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v4);
    if (!v18)
    {
      sub_257695EA0(v4);
    }
  }

  else
  {
    sub_257695FB8();
  }

  v21 = v3[1];

  v3[1] = a1;
  sub_257695EA0(v2 + v17);
  OUTLINED_FUNCTION_8_27();
  sub_257695FB8();
  return __swift_storeEnumTagSinglePayload(v2 + v17, 0, 1, v12);
}

uint64_t PipelineRegressorConfiguration.names.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = PipelineRegressorConfiguration.names.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257695994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = *(a3(0) + 20);
  v13 = type metadata accessor for Proto_Pipeline(0);
  __swift_storeEnumTagSinglePayload(a6 + v12, 1, 1, v13);
  a4(a1);
  return a5(a2);
}

void sub_257695A80()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v33[1] = v7;
  v8 = sub_257743A84();
  v9 = OUTLINED_FUNCTION_35_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v33 - v21;
  v23 = v6(0);
  OUTLINED_FUNCTION_4(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  sub_257695F08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_16_15(v27, xmmword_257743FF0);
  v29 = v4(v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C88, &qword_257770B88);
  v27[3].n128_u64[0] = v29;
  v27[4].n128_u64[1] = v30;
  v27[5].n128_u64[0] = 0x73656D616ELL;
  v27[5].n128_u64[1] = 0xE500000000000000;
  v31 = v2();
  v27[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  v27[6].n128_u64[0] = v31;
  v32 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
  (*(v11 + 104))(v16, *MEMORY[0x277D84C38], v0);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257695DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_257695E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257695EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257695F08()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257695F64()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_257695FB8()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_25769614C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257696254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_30()
{

  return sub_257695FB8();
}

uint64_t OUTLINED_FUNCTION_11_25()
{

  return sub_257695F64();
}

__n128 *OUTLINED_FUNCTION_16_15(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736C65646F6DLL;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

void sub_2576963A8()
{
  OUTLINED_FUNCTION_31();
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v1 = OUTLINED_FUNCTION_63(v414);
  v385 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v413 = (v5 - v6);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_196();
  v412 = v8;
  OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for MLProgram.Operation();
  v10 = OUTLINED_FUNCTION_24(v9);
  v384 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v411 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v395 = type metadata accessor for MLProgram.ValueType.StateParameters(v15);
  v16 = OUTLINED_FUNCTION_4(v395);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v365 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v365 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_196();
  v402 = v29;
  v30 = OUTLINED_FUNCTION_153();
  v394 = type metadata accessor for MLProgram.ValueType.ListParameters(v30);
  v31 = OUTLINED_FUNCTION_4(v394);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v398 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v406 = type metadata accessor for MLProgram.ValueType.TensorParameters(v35);
  v36 = OUTLINED_FUNCTION_4(v406);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_1();
  v405 = v39;
  v40 = OUTLINED_FUNCTION_153();
  v393 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v40);
  v41 = OUTLINED_FUNCTION_4(v393);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v397 = v44;
  v45 = OUTLINED_FUNCTION_153();
  v392 = type metadata accessor for MLProgram.ValueType.TupleParameters(v45);
  v46 = OUTLINED_FUNCTION_4(v392);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_1();
  v396 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v51 = OUTLINED_FUNCTION_13(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_11();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_167();
  v388 = v58;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v59);
  v61 = (&v365 - v60);
  v415 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v62 = OUTLINED_FUNCTION_4(v415);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_11();
  v377 = v65 - v66;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_167();
  v376 = v68;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_167();
  v387 = v70;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_167();
  v381 = v72;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_167();
  v404 = v74;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_196();
  v403 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v78 = OUTLINED_FUNCTION_13(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_11();
  v373 = v81 - v82;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_167();
  v375 = v84;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_167();
  v379 = v86;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_167();
  v380 = v88;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_167();
  v386 = v90;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_167();
  v391 = v92;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_196();
  v410 = v94;
  v95 = OUTLINED_FUNCTION_153();
  v416 = type metadata accessor for Proto_MILSpec_ValueType(v95);
  v96 = OUTLINED_FUNCTION_4(v416);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_11();
  v374 = v99 - v100;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_167();
  v378 = v102;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_167();
  v390 = v104;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_196();
  v409 = v106;
  OUTLINED_FUNCTION_153();
  v107 = type metadata accessor for MLProgram.NamedValueType();
  v108 = OUTLINED_FUNCTION_24(v107);
  v110 = v109;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_12_1();
  v420 = v113;
  v114 = *(MLProgram.Block.inputs.getter() + 16);

  v115 = MEMORY[0x277D84F90];
  v401 = v0;
  if (v114)
  {
    v371 = v56;
    v116 = MLProgram.Block.inputs.getter();
    v117 = *(v116 + 16);
    if (v117)
    {
      v369 = v25;
      v370 = v28;
      v368 = v21;
      v423 = v115;
      sub_257484060();
      v118 = *(v110 + 80);
      OUTLINED_FUNCTION_193();
      v372 = v116;
      v119 = v423;
      v407 = *(v110 + 72);
      v389 = xmmword_2577442B0;
      v408 = v61;
      do
      {
        v120 = v117;
        v121 = v119;
        OUTLINED_FUNCTION_28_16();
        v419 = v122;
        v123 = v420;
        sub_25769B7E8(v122, v420);
        OUTLINED_FUNCTION_82_2();
        MEMORY[0x259C64E90](*v123, v123[1]);
        MEMORY[0x259C64E90](34, 0xE100000000000000);
        v417 = v422;
        v418 = v421;
        v124 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
        v125 = v410;
        sub_2574AD5D8(v123 + *(v124 + 24), v410, &qword_27F879E10, &qword_257744730);
        v126 = OUTLINED_FUNCTION_50_3();
        v127 = v416;
        OUTLINED_FUNCTION_155(v126, v128, v416);
        if (v129)
        {
          v134 = v409;
          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
          v130 = *(v127 + 5);
          v135 = v415;
          if (qword_27F878FF0 != -1)
          {
            OUTLINED_FUNCTION_12_15();
            swift_once();
          }

          *(v134 + v130) = qword_27F87B038;
          v131 = OUTLINED_FUNCTION_50_3();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v131, v132, v127);

          v129 = EnumTagSinglePayload == 1;
          v127 = v416;
          if (!v129)
          {
            sub_2574695E4(v125, &qword_27F879E10, &qword_257744730);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_30();
          v134 = v409;
          sub_25769B790(v125, v409);
          v135 = v415;
        }

        v136 = *(v134 + *(v127 + 5));
        v137 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
        OUTLINED_FUNCTION_296();
        sub_2574AD5D8(v136 + v137, v61, &qword_27F879D40, &qword_257744660);
        OUTLINED_FUNCTION_155(v61, 1, v135);
        if (v129)
        {
          sub_2574695E4(v61, &qword_27F879D40, &qword_257744660);
          swift_allocBox();
          LOBYTE(v421) = 3;
          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          OUTLINED_FUNCTION_0_68();
          sub_25769B738(v134, v138);
          v119 = v121;
          v152 = v120;
LABEL_13:
          swift_projectBox();
          OUTLINED_FUNCTION_5_39();
          v139 = v405;
          sub_25769B7E8(v140, v405);
          sub_2576F1B84();
          OUTLINED_FUNCTION_54_4();
          OUTLINED_FUNCTION_4_37();
LABEL_14:
          sub_25769B738(v139, v141);
        }

        else
        {
          OUTLINED_FUNCTION_0_68();
          sub_25769B738(v134, v147);
          v148 = v403;
          sub_25769B790(v61, v403);
          v149 = v148;
          v150 = v404;
          sub_25769B790(v149, v404);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v119 = v121;
          v152 = v120;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              swift_allocBox();
              OUTLINED_FUNCTION_21_18();
              sub_25769B790(v150, v168);
              OUTLINED_FUNCTION_6_38();
              v139 = v398;
              sub_25769B7E8(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v398);
              sub_2576F210C();
              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_2_45();
              goto LABEL_14;
            case 2:
              swift_allocBox();
              OUTLINED_FUNCTION_20_15();
              sub_25769B790(v150, v166);
              OUTLINED_FUNCTION_9_27();
              v139 = v396;
              sub_25769B7E8(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v396);
              sub_2576F2344();
              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_1_52();
              goto LABEL_14;
            case 3:
              swift_allocBox();
              OUTLINED_FUNCTION_19_22();
              sub_25769B790(v150, v167);
              OUTLINED_FUNCTION_8_28();
              v139 = v397;
              sub_25769B7E8(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v397);
              sub_2576F4D1C();
              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_3_48();
              goto LABEL_14;
            case 4:
              v400 = swift_allocBox();
              v155 = v154;
              OUTLINED_FUNCTION_27_14();
              sub_25769B790(v150, v156);
              OUTLINED_FUNCTION_11_26();
              v157 = v402;
              sub_25769B7E8(v155, v402);
              v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
              inited = swift_initStackObject();
              OUTLINED_FUNCTION_33_4(inited);
              v399 = v159;
              *(v159 + 40) = v160;
              v382 = type metadata accessor for Proto_MILSpec_StateType(0);
              v161 = *(v157 + *(v382 + 20));
              v125 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
              OUTLINED_FUNCTION_296();
              v162 = v391;
              v61 = &qword_257744730;
              sub_2574AD5D8(v161 + v125, v391, &qword_27F879E10, &qword_257744730);
              v163 = OUTLINED_FUNCTION_33_5();
              v165 = v127;
              v127 = __swift_getEnumTagSinglePayload(v163, v164, v127);
              sub_2574695E4(v162, &qword_27F879E10, &qword_257744730);
              if (v127 == 1)
              {
                swift_allocBox();
                OUTLINED_FUNCTION_18_26();
                MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              }

              else
              {
                v169 = v161 + v125;
                v125 = v386;
                sub_2574AD5D8(v169, v386, &qword_27F879E10, &qword_257744730);
                v170 = OUTLINED_FUNCTION_50_3();
                OUTLINED_FUNCTION_155(v170, v171, v165);
                if (v129)
                {
                  v172 = v390;
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v173 = *(v165 + 20);
                  v178 = v415;
                  if (qword_27F878FF0 != -1)
                  {
                    OUTLINED_FUNCTION_12_15();
                    swift_once();
                  }

                  *(v172 + v173) = qword_27F87B038;
                  v174 = OUTLINED_FUNCTION_50_3();
                  v176 = __swift_getEnumTagSinglePayload(v174, v175, v165);

                  v129 = v176 == 1;
                  v177 = v390;
                  if (!v129)
                  {
                    sub_2574695E4(v125, &qword_27F879E10, &qword_257744730);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_7_30();
                  v177 = v390;
                  sub_25769B790(v125, v390);
                  v178 = v415;
                }

                v179 = *(v177 + *(v165 + 20));
                v180 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                OUTLINED_FUNCTION_296();
                v181 = v179 + v180;
                v182 = v388;
                v127 = &qword_257744660;
                sub_2574AD5D8(v181, v388, &qword_27F879D40, &qword_257744660);
                v183 = OUTLINED_FUNCTION_33_5();
                OUTLINED_FUNCTION_155(v183, v184, v178);
                if (!v129)
                {
                  OUTLINED_FUNCTION_0_68();
                  sub_25769B738(v177, v192);
                  OUTLINED_FUNCTION_41_9();
                  v193 = v182;
                  v194 = v381;
                  sub_25769B790(v193, v381);
                  sub_25769B790(v194, v387);
                  v195 = swift_getEnumCaseMultiPayload();
                  switch(v195)
                  {
                    case 1:
                      swift_allocBox();
                      OUTLINED_FUNCTION_21_18();
                      sub_25769B790(v387, v213);
                      OUTLINED_FUNCTION_6_38();
                      v210 = v398;
                      sub_25769B7E8(&qword_27F879D40, v398);
                      v188 = v210;
                      sub_2576F210C();
                      OUTLINED_FUNCTION_39_5();
                      OUTLINED_FUNCTION_2_45();
                      goto LABEL_45;
                    case 2:
                      swift_allocBox();
                      OUTLINED_FUNCTION_20_15();
                      sub_25769B790(v387, v209);
                      OUTLINED_FUNCTION_9_27();
                      v210 = v396;
                      sub_25769B7E8(&qword_27F879D40, v396);
                      v188 = v210;
                      sub_2576F2344();
                      OUTLINED_FUNCTION_39_5();
                      OUTLINED_FUNCTION_1_52();
                      goto LABEL_45;
                    case 3:
                      swift_allocBox();
                      OUTLINED_FUNCTION_19_22();
                      sub_25769B790(v387, v212);
                      OUTLINED_FUNCTION_8_28();
                      v210 = v397;
                      sub_25769B7E8(&qword_27F879D40, v397);
                      v188 = v210;
                      sub_2576F4D1C();
                      OUTLINED_FUNCTION_39_5();
                      OUTLINED_FUNCTION_3_48();
LABEL_45:
                      sub_25769B738(v210, v211);
                      goto LABEL_36;
                    case 4:
                      v367 = swift_allocBox();
                      v198 = v197;
                      OUTLINED_FUNCTION_27_14();
                      sub_25769B790(v387, v199);
                      OUTLINED_FUNCTION_11_26();
                      v200 = v370;
                      sub_25769B7E8(v198, v370);
                      v201 = swift_initStackObject();
                      OUTLINED_FUNCTION_33_4(v201);
                      v366 = v202;
                      *(v202 + 40) = v203;
                      v204 = *(v200 + *(v382 + 20));
                      v125 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                      OUTLINED_FUNCTION_296();
                      v205 = v380;
                      sub_2574AD5D8(v204 + v125, v380, &qword_27F879E10, &qword_257744730);
                      v206 = OUTLINED_FUNCTION_33_5();
                      v207 = v416;
                      v127 = __swift_getEnumTagSinglePayload(v206, v208, v416);
                      sub_2574695E4(v205, &qword_27F879E10, &qword_257744730);
                      if (v127 == 1)
                      {
                        swift_allocBox();
                        OUTLINED_FUNCTION_18_26();
                        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                      }

                      else
                      {
                        v214 = v379;
                        sub_2574AD5D8(v204 + v125, v379, &qword_27F879E10, &qword_257744730);
                        v215 = OUTLINED_FUNCTION_33_5();
                        OUTLINED_FUNCTION_155(v215, v216, v207);
                        if (v129)
                        {
                          v222 = v378;
                          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                          v217 = *(v207 + 20);
                          v125 = v415;
                          if (qword_27F878FF0 != -1)
                          {
                            OUTLINED_FUNCTION_12_15();
                            swift_once();
                          }

                          *(v222 + v217) = qword_27F87B038;
                          v218 = v379;
                          v219 = OUTLINED_FUNCTION_33_5();
                          v221 = __swift_getEnumTagSinglePayload(v219, v220, v207);

                          if (v221 != 1)
                          {
                            sub_2574695E4(v218, &qword_27F879E10, &qword_257744730);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_7_30();
                          v222 = v378;
                          sub_25769B790(v214, v378);
                          v125 = v415;
                        }

                        v223 = *(v222 + *(v207 + 20));
                        v224 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                        OUTLINED_FUNCTION_296();
                        v225 = v223 + v224;
                        v226 = v371;
                        v127 = &qword_27F879D40;
                        sub_2574AD5D8(v225, v371, &qword_27F879D40, &qword_257744660);
                        v227 = OUTLINED_FUNCTION_33_5();
                        OUTLINED_FUNCTION_155(v227, v228, v125);
                        if (!v129)
                        {
                          OUTLINED_FUNCTION_0_68();
                          sub_25769B738(v222, v235);
                          OUTLINED_FUNCTION_41_9();
                          v236 = v226;
                          v237 = v376;
                          sub_25769B790(v236, v376);
                          sub_25769B790(v237, v377);
                          v238 = swift_getEnumCaseMultiPayload();
                          switch(v238)
                          {
                            case 1:
                              v61 = swift_allocBox();
                              OUTLINED_FUNCTION_21_18();
                              sub_25769B790(v377, v257);
                              OUTLINED_FUNCTION_6_38();
                              v254 = v398;
                              sub_25769B7E8(v222, v398);
                              v188 = v254;
                              sub_2576F210C();
                              OUTLINED_FUNCTION_39_5();
                              OUTLINED_FUNCTION_2_45();
                              goto LABEL_65;
                            case 2:
                              v61 = swift_allocBox();
                              OUTLINED_FUNCTION_20_15();
                              sub_25769B790(v377, v253);
                              OUTLINED_FUNCTION_9_27();
                              v254 = v396;
                              sub_25769B7E8(v222, v396);
                              v188 = v254;
                              sub_2576F2344();
                              OUTLINED_FUNCTION_39_5();
                              OUTLINED_FUNCTION_1_52();
                              goto LABEL_65;
                            case 3:
                              v61 = swift_allocBox();
                              OUTLINED_FUNCTION_19_22();
                              sub_25769B790(v377, v256);
                              OUTLINED_FUNCTION_8_28();
                              v254 = v397;
                              sub_25769B7E8(v222, v397);
                              v188 = v254;
                              sub_2576F4D1C();
                              OUTLINED_FUNCTION_39_5();
                              OUTLINED_FUNCTION_3_48();
LABEL_65:
                              sub_25769B738(v254, v255);
                              goto LABEL_56;
                            case 4:
                              v365 = swift_allocBox();
                              v241 = v240;
                              OUTLINED_FUNCTION_27_14();
                              sub_25769B790(v377, v242);
                              OUTLINED_FUNCTION_11_26();
                              v243 = v369;
                              sub_25769B7E8(v241, v369);
                              v244 = swift_initStackObject();
                              OUTLINED_FUNCTION_33_4(v244);
                              v383 = v245;
                              *(v245 + 40) = v246;
                              v127 = *(v243 + *(v382 + 20));
                              v247 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                              OUTLINED_FUNCTION_296();
                              v248 = v375;
                              v249 = &qword_257744730;
                              sub_2574AD5D8(v127 + v247, v375, &qword_27F879E10, &qword_257744730);
                              v250 = OUTLINED_FUNCTION_33_5();
                              v125 = v416;
                              v252 = __swift_getEnumTagSinglePayload(v250, v251, v416);
                              sub_2574695E4(v248, &qword_27F879E10, &qword_257744730);
                              if (v252 == 1)
                              {
                                swift_allocBox();
                                OUTLINED_FUNCTION_18_26();
                                MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                                v421 = &qword_257744730;
                              }

                              else
                              {
                                v258 = v127 + v247;
                                v259 = v373;
                                sub_2574AD5D8(v258, v373, &qword_27F879E10, &qword_257744730);
                                OUTLINED_FUNCTION_155(v259, 1, v125);
                                if (v129)
                                {
                                  v260 = v374;
                                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                                  v261 = *(v125 + 20);
                                  if (qword_27F878FF0 != -1)
                                  {
                                    OUTLINED_FUNCTION_12_15();
                                    swift_once();
                                  }

                                  *(v260 + v261) = qword_27F87B038;
                                  v127 = __swift_getEnumTagSinglePayload(v259, 1, v125);

                                  if (v127 != 1)
                                  {
                                    sub_2574695E4(v259, &qword_27F879E10, &qword_257744730);
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_7_30();
                                  sub_25769B790(v259, v374);
                                }

                                sub_2576F0F64();
                                v249 = v421;
                              }

                              switch(v249 >> 61)
                              {
                                case 1uLL:
                                  OUTLINED_FUNCTION_66_4();
                                  OUTLINED_FUNCTION_6_38();
                                  v265 = v398;
                                  sub_25769B7E8(v271, v398);
                                  v188 = v265;
                                  sub_2576F210C();
                                  OUTLINED_FUNCTION_39_5();
                                  OUTLINED_FUNCTION_2_45();
                                  goto LABEL_79;
                                case 2uLL:
                                  OUTLINED_FUNCTION_66_4();
                                  OUTLINED_FUNCTION_9_27();
                                  v265 = v396;
                                  sub_25769B7E8(v269, v396);
                                  v188 = v265;
                                  sub_2576F2344();
                                  OUTLINED_FUNCTION_39_5();
                                  OUTLINED_FUNCTION_1_52();
                                  goto LABEL_79;
                                case 3uLL:
                                  OUTLINED_FUNCTION_66_4();
                                  OUTLINED_FUNCTION_8_28();
                                  v265 = v397;
                                  sub_25769B7E8(v270, v397);
                                  v188 = v265;
                                  sub_2576F4D1C();
                                  OUTLINED_FUNCTION_39_5();
                                  OUTLINED_FUNCTION_3_48();
                                  goto LABEL_79;
                                case 4uLL:
                                  OUTLINED_FUNCTION_66_4();
                                  OUTLINED_FUNCTION_11_26();
                                  v265 = v368;
                                  sub_25769B7E8(v266, v368);
                                  v188 = v265;
                                  sub_2576F4F60();
                                  OUTLINED_FUNCTION_39_5();
                                  LOBYTE(v125) = v267;
                                  v268 = type metadata accessor for MLProgram.ValueType.StateParameters;
LABEL_79:
                                  sub_25769B738(v265, v268);
                                  break;
                                default:
                                  swift_projectBox();
                                  OUTLINED_FUNCTION_5_39();
                                  v262 = v405;
                                  sub_25769B7E8(v263, v405);
                                  v188 = v262;
                                  sub_2576F1B84();
                                  OUTLINED_FUNCTION_39_5();
                                  OUTLINED_FUNCTION_4_37();
                                  sub_25769B738(v262, v264);
                                  break;
                              }

                              v272 = v383;
                              *(v383 + 48) = v188;
                              *(v272 + 56) = v127;
                              *(v272 + 64) = v125;
                              sub_2576A6964(v272);
                              OUTLINED_FUNCTION_39_5();
                              OUTLINED_FUNCTION_24_15();
                              sub_25769B738(v369, v273);
                              LOBYTE(v125) = 2;
                              v190 = v399;
                              v61 = v365;
                              goto LABEL_57;
                            default:
                              v207 = swift_allocBox();
                              OUTLINED_FUNCTION_29_12();
                              sub_25769B790(v377, v239);
                              goto LABEL_55;
                          }
                        }

                        sub_2574695E4(v226, &qword_27F879D40, &qword_257744660);
                        swift_allocBox();
                        OUTLINED_FUNCTION_18_26();
                        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                        OUTLINED_FUNCTION_0_68();
                        sub_25769B738(v222, v229);
                      }

LABEL_55:
                      swift_projectBox();
                      OUTLINED_FUNCTION_5_39();
                      v230 = v405;
                      sub_25769B7E8(v231, v405);
                      v188 = v230;
                      sub_2576F1B84();
                      OUTLINED_FUNCTION_39_5();
                      OUTLINED_FUNCTION_4_37();
                      sub_25769B738(v230, v232);
                      v61 = (v207 & 0x1FFFFFFFFFFFFFFFLL);
LABEL_56:
                      v190 = v399;
LABEL_57:

                      v233 = v366;
                      *(v366 + 48) = v188;
                      *(v233 + 56) = v127;
                      *(v233 + 64) = v125;
                      sub_2576A6964(v233);
                      OUTLINED_FUNCTION_39_5();
                      OUTLINED_FUNCTION_24_15();
                      sub_25769B738(v370, v234);
                      LOBYTE(v125) = 2;
                      goto LABEL_37;
                    default:
                      v61 = swift_allocBox();
                      OUTLINED_FUNCTION_29_12();
                      sub_25769B790(v387, v196);
                      goto LABEL_35;
                  }
                }

                sub_2574695E4(v182, &qword_27F879D40, &qword_257744660);
                swift_allocBox();
                OUTLINED_FUNCTION_18_26();
                MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                OUTLINED_FUNCTION_0_68();
                sub_25769B738(v177, v185);
              }

LABEL_35:
              swift_projectBox();
              OUTLINED_FUNCTION_5_39();
              v186 = v405;
              sub_25769B7E8(v187, v405);
              v188 = v186;
              sub_2576F1B84();
              OUTLINED_FUNCTION_39_5();
              OUTLINED_FUNCTION_4_37();
              sub_25769B738(v186, v189);
LABEL_36:
              v190 = v399;
LABEL_37:

              *(v190 + 48) = v188;
              *(v190 + 56) = v127;
              *(v190 + 64) = v125;
              sub_2576A6964(v190);
              OUTLINED_FUNCTION_54_4();
              OUTLINED_FUNCTION_24_15();
              sub_25769B738(v402, v191);
              LOBYTE(v125) = 2;
              break;
            default:
              swift_allocBox();
              OUTLINED_FUNCTION_29_12();
              sub_25769B790(v150, v153);
              goto LABEL_13;
          }
        }

        OUTLINED_FUNCTION_22_16();
        sub_25769B738(v420, v142);

        v423 = v119;
        v144 = *(v119 + 16);
        v143 = *(v119 + 24);
        if (v144 >= v143 >> 1)
        {
          OUTLINED_FUNCTION_174(v143);
          sub_257484060();
          v119 = v423;
        }

        *(v119 + 16) = v144 + 1;
        v145 = v119 + 40 * v144;
        v146 = v417;
        *(v145 + 32) = v418;
        *(v145 + 40) = v146;
        *(v145 + 48) = v127;
        *(v145 + 56) = v61;
        *(v145 + 64) = v125;
        v61 = v408;
        v117 = v152 - 1;
      }

      while (v117);

      v0 = v401;
    }

    else
    {

      v119 = MEMORY[0x277D84F90];
    }

    v275 = sub_2576AACFC(v119);
    v277 = v276;
    sub_257469AE0();
    v274 = v278;
    v280 = *(v278 + 16);
    v279 = *(v278 + 24);
    if (v280 >= v279 >> 1)
    {
      OUTLINED_FUNCTION_174(v279);
      OUTLINED_FUNCTION_45_6();
      sub_257469AE0();
      v274 = v358;
    }

    v115 = MEMORY[0x277D84F90];
    *(v274 + 16) = v280 + 1;
    v281 = v274 + 40 * v280;
    *(v281 + 32) = 0x737475706E69;
    *(v281 + 40) = 0xE600000000000000;
    *(v281 + 48) = v275;
    *(v281 + 56) = v277;
    *(v281 + 64) = 2;
  }

  else
  {
    v274 = MEMORY[0x277D84F90];
  }

  v282 = *(v0 + 8);
  v283 = *(v282 + 16);
  if (v283)
  {
    v415 = v274;
    v423 = v115;
    v284 = OUTLINED_FUNCTION_52_4();
    sub_257484040(v284, v285, v286);
    v287 = v423;
    v288 = (v282 + 40);
    do
    {
      v289 = *(v288 - 1);
      v290 = *v288;
      OUTLINED_FUNCTION_82_2();

      MEMORY[0x259C64E90](v289, v290);
      MEMORY[0x259C64E90](34, 0xE100000000000000);

      v291 = v421;
      v292 = v422;
      v423 = v287;
      v294 = *(v287 + 16);
      v293 = *(v287 + 24);
      if (v294 >= v293 >> 1)
      {
        v296 = OUTLINED_FUNCTION_174(v293);
        sub_257484040(v296, v294 + 1, 1);
        v287 = v423;
      }

      *(v287 + 16) = v294 + 1;
      v295 = v287 + 24 * v294;
      *(v295 + 32) = v291;
      *(v295 + 40) = v292;
      *(v295 + 48) = 0;
      v288 += 2;
      --v283;
    }

    while (v283);
    v274 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43_9();
      v274 = v359;
    }

    v298 = *(v274 + 16);
    v297 = *(v274 + 24);
    if (v298 >= v297 >> 1)
    {
      OUTLINED_FUNCTION_174(v297);
      OUTLINED_FUNCTION_45_6();
      sub_257469AE0();
      v274 = v360;
    }

    *(v274 + 16) = v298 + 1;
    v299 = v274 + 40 * v298;
    *(v299 + 32) = 0x7374757074756FLL;
    *(v299 + 40) = 0xE700000000000000;
    *(v299 + 48) = v287;
    *(v299 + 56) = 0;
    *(v299 + 64) = 1;
  }

  v300 = *(MLProgram.Block.operations.getter() + 16);

  if (v300)
  {
    v301 = MLProgram.Block.operations.getter();
    v302 = *(v301 + 16);
    if (v302)
    {
      v303 = OUTLINED_FUNCTION_50_5();
      sub_257484040(v303, v304, v305);
      v306 = v421;
      v307 = *(v384 + 80);
      OUTLINED_FUNCTION_193();
      v309 = v301 + v308;
      v311 = *(v310 + 72);
      v419 = v301;
      v420 = v311;
      do
      {
        OUTLINED_FUNCTION_13_17();
        v312 = v411;
        sub_25769B7E8(v309, v411);
        sub_2576444AC();
        v314 = v313;
        v316 = v315;
        v318 = v317;
        OUTLINED_FUNCTION_12_26();
        sub_25769B738(v312, v319);
        v421 = v306;
        v321 = v306[2];
        v320 = v306[3];
        if (v321 >= v320 >> 1)
        {
          v323 = OUTLINED_FUNCTION_174(v320);
          sub_257484040(v323, v321 + 1, 1);
          v306 = v421;
        }

        v306[2] = v321 + 1;
        v322 = &v306[3 * v321];
        v322[4] = v314;
        v322[5] = v316;
        *(v322 + 48) = v318;
        v309 += v420;
        --v302;
      }

      while (v302);

      v274 = v415;
    }

    else
    {

      v306 = MEMORY[0x277D84F90];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43_9();
      v274 = v361;
    }

    v325 = *(v274 + 16);
    v324 = *(v274 + 24);
    if (v325 >= v324 >> 1)
    {
      OUTLINED_FUNCTION_174(v324);
      OUTLINED_FUNCTION_45_6();
      sub_257469AE0();
      v274 = v362;
    }

    *(v274 + 16) = v325 + 1;
    v326 = v274 + 40 * v325;
    *(v326 + 32) = 0x6F6974617265706FLL;
    *(v326 + 40) = 0xEA0000000000736ELL;
    *(v326 + 48) = v306;
    *(v326 + 56) = 0;
    *(v326 + 64) = 1;
  }

  MLProgram.Block.attributes.getter();
  v328 = *(v327 + 16);

  if (v328)
  {
    MLProgram.Block.attributes.getter();
    v421 = sub_2576A8BA8();
    sub_257699FA0(&v421);

    v329 = v421;
    v330 = v421[2];
    if (v330)
    {
      OUTLINED_FUNCTION_50_5();
      sub_257484060();
      v331 = v421;
      v332 = *(v385 + 80);
      OUTLINED_FUNCTION_193();
      v411 = v329;
      v334 = v329 + v333;
      v416 = *(v335 + 72);
      do
      {
        v336 = v412;
        sub_2574AD5D8(v334, v412, &qword_27F879D18, &unk_257775F30);
        v337 = v413;
        sub_2574AD5D8(v336, v413, &qword_27F879D18, &unk_257775F30);
        v338 = *v337;
        v419 = v337[1];
        v420 = v338;
        v339 = v331;
        v340 = v414;
        sub_25769B738(v337 + *(v414 + 48), type metadata accessor for MLProgram.Value);
        sub_2574AD5D8(v336, v337, &qword_27F879D18, &unk_257775F30);
        v341 = v337[1];

        v342 = *(v340 + 48);
        sub_25771810C();
        v331 = v339;
        v344 = v343;
        v418 = v345;
        LODWORD(v417) = v346;
        sub_2574695E4(v336, &qword_27F879D18, &unk_257775F30);
        sub_25769B738(v337 + v342, type metadata accessor for MLProgram.Value);
        v421 = v331;
        v348 = v331[2];
        v347 = v331[3];
        if (v348 >= v347 >> 1)
        {
          OUTLINED_FUNCTION_174(v347);
          sub_257484060();
          v331 = v421;
        }

        v331[2] = v348 + 1;
        v349 = &v331[5 * v348];
        v350 = v419;
        v349[4] = v420;
        v349[5] = v350;
        v351 = v418;
        v349[6] = v344;
        v349[7] = v351;
        *(v349 + 64) = v417;
        v334 += v416;
        --v330;
      }

      while (v330);

      v274 = v415;
    }

    else
    {

      v331 = MEMORY[0x277D84F90];
    }

    v352 = sub_2576AACFC(v331);
    v354 = v353;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43_9();
      v274 = v363;
    }

    v356 = *(v274 + 16);
    v355 = *(v274 + 24);
    if (v356 >= v355 >> 1)
    {
      OUTLINED_FUNCTION_174(v355);
      OUTLINED_FUNCTION_45_6();
      sub_257469AE0();
      v274 = v364;
    }

    *(v274 + 16) = v356 + 1;
    v357 = v274 + 40 * v356;
    *(v357 + 32) = 0x7475626972747461;
    *(v357 + 40) = 0xEA00000000007365;
    *(v357 + 48) = v352;
    *(v357 + 56) = v354;
    *(v357 + 64) = 2;
  }

  sub_2576AACFC(v274);
  OUTLINED_FUNCTION_35();
}

void sub_257697ED4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v42 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for MLProgram.Operation();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = *(MLProgram.Block.operations.getter() + 16);

  if (v20)
  {
    v21 = 0;
    while (v21 < *(MLProgram.Block.operations.getter() + 16))
    {
      v22 = *(v8 + 80);
      OUTLINED_FUNCTION_193();
      v23 = *(v8 + 72);
      OUTLINED_FUNCTION_13_17();
      sub_25769B7E8(v24, v13);

      v1(v13, v4);
      OUTLINED_FUNCTION_12_26();
      sub_25769B738(v13, v25);
      if (v20 == ++v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    MLProgram.Block.attributes.getter();
    v26 = 0;
    v29 = v27 + 64;
    v28 = *(v27 + 64);
    v43 = v27;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v28;
    v33 = (v30 + 63) >> 6;
    if ((v31 & v28) != 0)
    {
      do
      {
        v34 = v26;
LABEL_12:
        v35 = (*(v43 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v32)))));
        v37 = *v35;
        v36 = v35[1];
        MLProgram.Block.attributes.getter();
        v39 = v38;

        sub_257657A68(v37, v36, v39, v19);

        v40 = type metadata accessor for MLProgram.Value();
        OUTLINED_FUNCTION_155(v19, 1, v40);
        if (v41)
        {
          goto LABEL_18;
        }

        v32 &= v32 - 1;

        v42(v19, v4);
        sub_25769B738(v19, type metadata accessor for MLProgram.Value);
        v26 = v34;
      }

      while (v32);
    }

    while (1)
    {
      v34 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        OUTLINED_FUNCTION_35();
        return;
      }

      v32 = *(v29 + 8 * v34);
      ++v26;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_2576981BC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v73 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = 0;
  v10 = type metadata accessor for MLProgram.Value();
  v11 = OUTLINED_FUNCTION_63(v10);
  v72 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v65 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v71 = v20 - v21;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_196();
  v76 = v23;
  swift_bridgeObjectRetain_n();
  v24 = *(MLProgram.Block.operations.getter() + 16);

  if (v24)
  {
    v25 = 0;
    while (1)
    {
      v26 = MLProgram.Block.operations.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A604(v26);
        v26 = v32;
      }

      if (v25 >= *(v26 + 16))
      {
        break;
      }

      v27 = v25 + 1;
      v28 = type metadata accessor for MLProgram.Operation();
      OUTLINED_FUNCTION_24(v28);
      v31 = v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v30 + 72) * v25;

      v1(v31, v6, v4);
      MLProgram.Block.operations.setter();
      v25 = v27;
      if (v24 == v27)
      {
        goto LABEL_7;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_7:
    v69 = v6;
    MLProgram.Block.attributes.getter();
    v33 = 0;
    OUTLINED_FUNCTION_42_11(v34);
    v38 = v37 & v36;
    v40 = (v39 + 63) >> 6;
    v70 = v4;
    v66 = v40;
    v67 = v35;
    v68 = v8;
    if ((v37 & v36) == 0)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v75 = v9;
      v41 = v10;
LABEL_13:
      v43 = (*(v74 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v38)))));
      v44 = *v43;
      v45 = v43[1];
      MLProgram.Block.attributes.getter();
      v47 = v46;

      swift_isUniquelyReferenced_nonNull_native();
      v48 = sub_25765368C(v44, v45);
      v50 = v47[2];
      v51 = (v49 & 1) == 0;
      v10 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        break;
      }

      v52 = v48;
      v53 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
      if (sub_257743894())
      {
        v54 = sub_25765368C(v44, v45);
        v56 = v70;
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_29;
        }

        v52 = v54;
      }

      else
      {
        v56 = v70;
      }

      v10 = v41;
      if ((v53 & 1) == 0)
      {
        goto LABEL_28;
      }

      v57 = v47[7];
      v58 = *(v72 + 72) * v52;
      OUTLINED_FUNCTION_23_15();
      sub_25769B790(v59 + v58, v76);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v41);

      v73(v76, v69, v56);
      sub_2574AD5D8(v76, v71, &qword_27F880608, &unk_25776D460);
      v60 = OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_155(v60, v61, v41);
      if (v62)
      {
        sub_2574695E4(v71, &qword_27F880608, &unk_25776D460);
        sub_2576493CC(v47[6] + 16 * v52);
        sub_2577438B4();
      }

      else
      {
        sub_25769B790(v71, v65);
        sub_25769B790(v65, v47[7] + v58);
      }

      v38 &= v38 - 1;
      sub_2574695E4(v76, &qword_27F880608, &unk_25776D460);
      v9 = v75;
      v63 = sub_25769B2E8(v47);

      v64 = *(v68 + 24);

      *(v68 + 24) = v63;
      v40 = v66;
      v35 = v67;
      if (!v38)
      {
LABEL_9:
        while (1)
        {
          v42 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v42 >= v40)
          {
            swift_bridgeObjectRelease_n();

            OUTLINED_FUNCTION_35();
            return;
          }

          v38 = *(v35 + 8 * v42);
          ++v33;
          if (v38)
          {
            v75 = v9;
            v41 = v10;
            v33 = v42;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_28:
  swift_bridgeObjectRelease_n();
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v10);
  __break(1u);
LABEL_29:
  swift_bridgeObjectRelease_n();
  sub_2577439B4();
  __break(1u);
}

void sub_2576986A0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v5 = type metadata accessor for MLProgram.Value();
  v6 = OUTLINED_FUNCTION_63(v5);
  v72 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v66 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_196();
  v75 = v19;
  v20 = *(MLProgram.Block.operations.getter() + 16);

  if (v20)
  {
    v21 = 0;
    while (1)
    {
      v22 = MLProgram.Block.operations.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A604(v22);
        v22 = v30;
      }

      if (v21 >= *(v22 + 16))
      {
        break;
      }

      v23 = type metadata accessor for MLProgram.Operation();
      OUTLINED_FUNCTION_24(v23);
      v25 = v24;
      v27 = v26;
      v28 = v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v29 = *(v27 + 72);
      sub_257646D80();
      MLProgram.Block.operations.setter();
      if (v20 == ++v21)
      {
        goto LABEL_7;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_7:
    MLProgram.Block.attributes.getter();
    v31 = 0;
    OUTLINED_FUNCTION_42_11(v32);
    v36 = v35 & v34;
    v38 = (v37 + 63) >> 6;
    v67 = v38;
    v68 = v33;
    v69 = v1;
    v70 = v3;
    v71 = v17;
    if ((v35 & v34) == 0)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v74 = v4;
      v39 = v5;
LABEL_13:
      v41 = (*(v73 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v36)))));
      v43 = *v41;
      v42 = v41[1];
      MLProgram.Block.attributes.getter();
      v45 = v44;

      swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_25765368C(v43, v42);
      if (__OFADD__(v45[2], (v47 & 1) == 0))
      {
        break;
      }

      v48 = v46;
      v49 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
      if (sub_257743894())
      {
        v50 = sub_25765368C(v43, v42);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_28;
        }

        v48 = v50;
      }

      v5 = v39;
      if ((v49 & 1) == 0)
      {
        goto LABEL_27;
      }

      v52 = v45[7];
      v53 = *(v72 + 72) * v48;
      OUTLINED_FUNCTION_23_15();
      sub_25769B790(v54 + v53, v75);
      OUTLINED_FUNCTION_45_6();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      sub_257718008(v75, v69);
      sub_2574AD5D8(v75, v71, &qword_27F880608, &unk_25776D460);
      OUTLINED_FUNCTION_155(v71, 1, v39);
      if (v59)
      {
        sub_2574695E4(v71, &qword_27F880608, &unk_25776D460);
        sub_2576493CC(v45[6] + 16 * v48);
        sub_2577438B4();
      }

      else
      {
        sub_25769B790(v71, v66);
        sub_25769B790(v66, v45[7] + v53);
      }

      v36 &= v36 - 1;
      sub_2574695E4(v75, &qword_27F880608, &unk_25776D460);
      v4 = v74;
      v60 = sub_25769B2E8(v45);

      v61 = *(v70 + 24);

      *(v70 + 24) = v60;
      v38 = v67;
      v33 = v68;
      if (!v36)
      {
LABEL_9:
        while (1)
        {
          v40 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v40 >= v38)
          {

            OUTLINED_FUNCTION_35();
            return;
          }

          v36 = *(v33 + 8 * v40);
          ++v31;
          if (v36)
          {
            v74 = v4;
            v39 = v5;
            v31 = v40;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_27:
  OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  __break(1u);
LABEL_28:
  sub_2577439B4();
  __break(1u);
}

uint64_t MLProgram.Block.operations.getter()
{
  v3 = type metadata accessor for MLProgram.Operation();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v0 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_257484AD8();
    v14 = v25;
    v15 = type metadata accessor for Proto_MILSpec_Operation(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_26_11();
      sub_25769B7E8(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_257484AD8();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_25769B790(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t MLProgram.Block.inputs.getter()
{
  v3 = type metadata accessor for MLProgram.NamedValueType();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *v0;
  v13 = *(*v0 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_2574848C0();
    v14 = v25;
    v15 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_25_13();
      sub_25769B7E8(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_2574848C0();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_25769B790(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_257698E2C(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Block.inputs.setter();
}

void MLProgram.Block.inputs.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for MLProgram.NamedValueType();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_78();
  v11 = type metadata accessor for Proto_MILSpec_NamedValueType(v10);
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = *(v3 + 16);
  if (v20)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484918();
    v21 = v33;
    v22 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v24 = v3 + v23;
    v25 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_28_16();
      sub_25769B7E8(v24, v1);
      OUTLINED_FUNCTION_25_13();
      sub_25769B7E8(v1, v19);
      OUTLINED_FUNCTION_22_16();
      sub_25769B738(v1, v26);
      OUTLINED_FUNCTION_27_2();
      if (v28)
      {
        OUTLINED_FUNCTION_35_8(v27);
        sub_257484918();
        v21 = v33;
      }

      *(v21 + 16) = v7;
      v29 = *(v14 + 80);
      OUTLINED_FUNCTION_193();
      v30 = *(v14 + 72);
      OUTLINED_FUNCTION_39_9();
      sub_25769B790(v19, v31);
      v24 += v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v32 = *v0;

  *v0 = v21;
  OUTLINED_FUNCTION_35();
}

uint64_t (*MLProgram.Block.inputs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Block.inputs.getter();
  return sub_257699068;
}

uint64_t sub_257699080(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Block.outputs.setter(v2);
}

uint64_t MLProgram.Block.outputs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*MLProgram.Block.outputs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

void sub_257699128(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Block.operations.setter();
}

void MLProgram.Block.operations.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for MLProgram.Operation();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_78();
  v11 = type metadata accessor for Proto_MILSpec_Operation(v10);
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = *(v3 + 16);
  if (v20)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484B88();
    v21 = v33;
    v22 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v24 = v3 + v23;
    v25 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_13_17();
      sub_25769B7E8(v24, v1);
      OUTLINED_FUNCTION_26_11();
      sub_25769B7E8(v1, v19);
      OUTLINED_FUNCTION_12_26();
      sub_25769B738(v1, v26);
      OUTLINED_FUNCTION_27_2();
      if (v28)
      {
        OUTLINED_FUNCTION_35_8(v27);
        sub_257484B88();
        v21 = v33;
      }

      *(v21 + 16) = v7;
      v29 = *(v14 + 80);
      OUTLINED_FUNCTION_193();
      v30 = *(v14 + 72);
      OUTLINED_FUNCTION_40_8();
      sub_25769B790(v19, v31);
      v24 += v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v32 = *(v0 + 16);

  *(v0 + 16) = v21;
  OUTLINED_FUNCTION_35();
}

uint64_t (*MLProgram.Block.operations.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Block.operations.getter();
  return sub_257699364;
}

uint64_t sub_25769937C(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void MLProgram.Block.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Value();
  v2 = OUTLINED_FUNCTION_24(v1);
  v39 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v38 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v8 = type metadata accessor for Proto_MILSpec_Value(v7);
  v9 = OUTLINED_FUNCTION_24(v8);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v36 = v13;
  v14 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v15 = sub_2577438E4();
  v16 = v15;
  v17 = 0;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v14 + 64);
  v21 = (v18 + 63) >> 6;
  v35 = v15 + 64;
  if (v20)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_10:
      v25 = v22 | (v17 << 6);
      v26 = (*(v14 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      sub_25769B7E8(*(v14 + 56) + *(v37 + 72) * v25, v36);
      sub_25769B790(v36, v38);
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v29 = (v16[6] + 16 * v25);
      *v29 = v27;
      v29[1] = v28;
      v30 = v16[7] + *(v39 + 72) * v25;
      OUTLINED_FUNCTION_23_15();
      sub_25769B790(v38, v31);
      v32 = v16[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v16[2] = v34;

      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      v24 = *(v14 + 64 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257699658(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Block.attributes.setter(v2);
}

uint64_t MLProgram.Block.attributes.setter(uint64_t a1)
{
  v2 = sub_25769B2E8(a1);

  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t (*MLProgram.Block.attributes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Block.attributes.getter();
  *a1 = v3;
  return sub_25769971C;
}

uint64_t sub_25769971C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_25769B2E8(v4);

    v6 = *(v2 + 24);

    *(v2 + 24) = v5;
  }

  else
  {
    v8 = sub_25769B2E8(v3);

    v9 = *(v2 + 24);

    *(v2 + 24) = v8;
  }

  return result;
}

void MLProgram.Block.init(inputs:outputs:operations:)()
{
  OUTLINED_FUNCTION_31();
  v72 = v1;
  v70 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for MLProgram.Operation();
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_78();
  v14 = type metadata accessor for Proto_MILSpec_Operation(v13);
  v15 = OUTLINED_FUNCTION_24(v14);
  v71 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = type metadata accessor for MLProgram.NamedValueType();
  v23 = OUTLINED_FUNCTION_24(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v32 = OUTLINED_FUNCTION_24(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v39 = v38 - v37;
  type metadata accessor for Proto_MILSpec_Value(0);
  v40 = MEMORY[0x277D84F90];
  v6[3] = sub_2577435D4();
  v41 = *(type metadata accessor for Proto_MILSpec_Block(0) + 32);
  v73 = v6;
  v42 = v4;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v43 = *(v4 + 16);
  if (v43)
  {
    v68 = v10;
    v69 = v21;
    OUTLINED_FUNCTION_52_4();
    sub_257484918();
    v44 = *(v25 + 80);
    OUTLINED_FUNCTION_193();
    v46 = v42 + v45;
    v47 = *(v25 + 72);
    do
    {
      OUTLINED_FUNCTION_28_16();
      sub_25769B7E8(v46, v30);
      OUTLINED_FUNCTION_25_13();
      sub_25769B7E8(v30, v39);
      OUTLINED_FUNCTION_22_16();
      sub_25769B738(v30, v48);
      v50 = *(v40 + 16);
      v49 = *(v40 + 24);
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_35_8(v49);
        sub_257484918();
      }

      *(v40 + 16) = v50 + 1;
      v51 = *(v34 + 80);
      OUTLINED_FUNCTION_193();
      v52 = *(v34 + 72);
      OUTLINED_FUNCTION_39_9();
      sub_25769B790(v39, v53);
      v46 += v47;
      --v43;
    }

    while (v43);

    v10 = v68;
    v21 = v69;
  }

  else
  {
  }

  v54 = v73;
  *v73 = v40;
  v73[1] = v70;
  v55 = *(v72 + 16);
  if (v55)
  {
    v74 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_52_4();
    sub_257484B88();
    v56 = v74;
    v57 = *(v10 + 80);
    OUTLINED_FUNCTION_193();
    v59 = v72 + v58;
    v60 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_13_17();
      sub_25769B7E8(v59, v0);
      OUTLINED_FUNCTION_26_11();
      sub_25769B7E8(v0, v21);
      OUTLINED_FUNCTION_12_26();
      sub_25769B738(v0, v61);
      v62 = v21;
      v64 = *(v74 + 16);
      v63 = *(v74 + 24);
      if (v64 >= v63 >> 1)
      {
        OUTLINED_FUNCTION_174(v63);
        sub_257484B88();
      }

      *(v74 + 16) = v64 + 1;
      v65 = *(v71 + 80);
      OUTLINED_FUNCTION_193();
      v66 = *(v71 + 72);
      OUTLINED_FUNCTION_40_8();
      sub_25769B790(v62, v67);
      v59 += v60;
      --v55;
      v21 = v62;
    }

    while (v55);

    v54 = v73;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v54[2] = v56;
  OUTLINED_FUNCTION_35();
}

void MLProgram.Block.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v33[1] = v1;
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = type metadata accessor for MLProgram.Block();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  sub_25769B7E8(v0, v22 - v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_257744E70;
  *(v23 + 32) = 0x737475706E69;
  *(v23 + 40) = 0xE600000000000000;
  v24 = MLProgram.Block.inputs.getter();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E0, &qword_25776CBD8);
  *(v23 + 48) = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = 0x7374757074756FLL;
  *(v23 + 88) = 0xE700000000000000;
  v26 = *(v0 + 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  *(v23 + 96) = v26;
  *(v23 + 120) = v27;
  *(v23 + 128) = 0x6F6974617265706FLL;
  *(v23 + 136) = 0xEA0000000000736ELL;

  v28 = MLProgram.Block.operations.getter();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C90, &qword_257770D40);
  *(v23 + 144) = v28;
  *(v23 + 168) = v29;
  *(v23 + 176) = 0x7475626972747461;
  *(v23 + 184) = 0xEA00000000007365;
  MLProgram.Block.attributes.getter();
  v31 = v30;
  *(v23 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v23 + 192) = v31;
  v32 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v32);
  (*(v5 + 104))(v10, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Block.debugDescription.getter()
{
  sub_2576963A8();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

uint64_t sub_257699FA0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC274(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_25769A054(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_25769A054(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25769A408(v8, v9, a1, v4);
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
    return sub_25769A19C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25769A19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      while (1)
      {
        sub_2574AD5D8(v23, v17, &qword_27F879D18, &unk_257775F30);
        sub_2574AD5D8(v20, v13, &qword_27F879D18, &unk_257775F30);
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = sub_257743994();
        sub_2574695E4(v13, &qword_27F879D18, &unk_257775F30);
        result = sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v26 = v36;
          sub_25765C4AC(v23, v36);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_25765C4AC(v26, v20);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v13, &qword_27F879D18, &unk_257775F30);
      result = sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
LABEL_14:
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_25769A408(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v126 = *(v134 - 8);
  v6 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v134);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v133 = &v114 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v135 = (&v114 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v114 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v130 = (&v114 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = (&v114 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v118 = (&v114 - v21);
  MEMORY[0x28223BE20](v20);
  v117 = (&v114 - v22);
  v128 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_112:
    v26 = *v119;
    if (!*v119)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v106 = (v25 + 16);
      for (i = *(v25 + 16); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_149;
        }

        v108 = (v25 + 16 * i);
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        v112 = v132;
        sub_25769ADA8(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v26);
        v132 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_138;
        }

        *v108 = v109;
        v108[1] = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_139;
        }

        i = *v106 - 1;
        sub_2576FB794(v110 + 16, v113, v110);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v25 = sub_2576FB678(v25);
    goto LABEL_114;
  }

  v114 = a4;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v26 = &unk_257775F30;
  v123 = v15;
  while (1)
  {
    v27 = v24;
    v28 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v124 = v23;
      v29 = *v128;
      v30 = *(v126 + 72);
      v131 = v24 + 1;
      v31 = v117;
      sub_2574AD5D8(v29 + v30 * v28, v117, &qword_27F879D18, &unk_257775F30);
      v127 = v30;
      v32 = v118;
      sub_2574AD5D8(v29 + v30 * v27, v118, &qword_27F879D18, &unk_257775F30);
      if (*v31 == *v32 && v31[1] == v32[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v25;
      v26 = &unk_257775F30;
      sub_2574695E4(v118, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v117, &qword_27F879D18, &unk_257775F30);
      v116 = v27;
      v34 = v27 + 2;
      v35 = v127 * (v27 + 2);
      v36 = v29 + v35;
      v37 = v131;
      v38 = v127 * v131;
      v39 = v29 + v127 * v131;
      do
      {
        v28 = v34;
        v25 = v37;
        v40 = v38;
        v41 = v35;
        if (v34 >= v124)
        {
          break;
        }

        v131 = v34;
        v42 = v129;
        sub_2574AD5D8(v36, v129, &qword_27F879D18, &unk_257775F30);
        v43 = v130;
        sub_2574AD5D8(v39, v130, &qword_27F879D18, &unk_257775F30);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v28 = v131;
        sub_2574695E4(v130, &qword_27F879D18, &unk_257775F30);
        v26 = &unk_257775F30;
        sub_2574695E4(v129, &qword_27F879D18, &unk_257775F30);
        v34 = v28 + 1;
        v36 += v127;
        v39 += v127;
        v37 = v25 + 1;
        v38 = v40 + v127;
        v35 = v41 + v127;
        v15 = v123;
      }

      while (((v125 ^ v45) & 1) == 0);
      if (v125)
      {
        v46 = v116;
        if (v28 < v116)
        {
          goto LABEL_143;
        }

        if (v116 >= v28)
        {
          v25 = v115;
          v27 = v116;
          goto LABEL_37;
        }

        v47 = v116 * v127;
        do
        {
          if (v46 != v25)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_150;
            }

            v26 = v48 + v47;
            sub_25765C4AC(v48 + v47, v122);
            v49 = v47 < v40 || v26 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_25765C4AC(v122, v48 + v40);
          }

          ++v46;
          v40 -= v127;
          v41 -= v127;
          v47 += v127;
        }

        while (v46 < v25--);
      }

      v25 = v115;
      v27 = v116;
    }

LABEL_37:
    v51 = v128[1];
    if (v28 < v51)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_142;
      }

      if (v28 - v27 < v114)
      {
        break;
      }
    }

LABEL_59:
    if (v28 < v27)
    {
      goto LABEL_141;
    }

    v131 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v25 + 16);
      sub_257469A28();
      v25 = v104;
    }

    v62 = *(v25 + 16);
    v63 = v62 + 1;
    v24 = v131;
    if (v62 >= *(v25 + 24) >> 1)
    {
      sub_257469A28();
      v24 = v131;
      v25 = v105;
    }

    *(v25 + 16) = v63;
    v64 = v25 + 32;
    v65 = (v25 + 32 + 16 * v62);
    *v65 = v27;
    v65[1] = v24;
    v127 = *v119;
    if (!v127)
    {
      goto LABEL_151;
    }

    if (v62)
    {
      while (1)
      {
        v26 = v63 - 1;
        v66 = (v64 + 16 * (v63 - 1));
        v67 = (v25 + 16 * v63);
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_79:
          if (v71)
          {
            goto LABEL_128;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_136;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v26 = v63 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v63 < 2)
        {
          goto LABEL_130;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_94:
        if (v86)
        {
          goto LABEL_133;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_135;
        }

        if (v93 < v85)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v26 - 1 >= v63)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
          goto LABEL_145;
        }

        if (!*v128)
        {
          goto LABEL_148;
        }

        v97 = v25;
        v98 = (v64 + 16 * (v26 - 1));
        v99 = *v98;
        v100 = v64 + 16 * v26;
        v25 = *(v100 + 8);
        v101 = v132;
        sub_25769ADA8(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v25, v127);
        v132 = v101;
        if (v101)
        {
          goto LABEL_110;
        }

        if (v25 < v99)
        {
          goto LABEL_123;
        }

        v102 = *(v97 + 16);
        if (v26 > v102)
        {
          goto LABEL_124;
        }

        *v98 = v99;
        v98[1] = v25;
        if (v26 >= v102)
        {
          goto LABEL_125;
        }

        v63 = v102 - 1;
        sub_2576FB794((v100 + 16), v102 - 1 - v26, (v64 + 16 * v26));
        v25 = v97;
        *(v97 + 16) = v102 - 1;
        v24 = v131;
        if (v102 <= 2)
        {
          goto LABEL_108;
        }
      }

      v72 = v64 + 16 * v63;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_140;
        }

        if (v70 < v96)
        {
          v26 = v63 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v23 = v128[1];
    v26 = &unk_257775F30;
    if (v24 >= v23)
    {
      goto LABEL_112;
    }
  }

  v52 = v27 + v114;
  if (__OFADD__(v27, v114))
  {
    goto LABEL_144;
  }

  if (v52 >= v51)
  {
    v52 = v128[1];
  }

  if (v52 < v27)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v28 == v52)
  {
    goto LABEL_59;
  }

  v115 = v25;
  v116 = v27;
  v53 = *v128;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v28 - 1);
  v26 = -v54;
  v56 = v27 - v28;
  v120 = v54;
  v121 = v52;
  v57 = v53 + v28 * v54;
LABEL_46:
  v131 = v28;
  v124 = v57;
  v125 = v56;
  v127 = v55;
  while (1)
  {
    sub_2574AD5D8(v57, v15, &qword_27F879D18, &unk_257775F30);
    v58 = v135;
    sub_2574AD5D8(v55, v135, &qword_27F879D18, &unk_257775F30);
    if (*v15 == *v58 && v15[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
LABEL_57:
      v28 = v131 + 1;
      v55 = v127 + v120;
      v56 = v125 - 1;
      v57 = v124 + v120;
      if (v131 + 1 == v121)
      {
        v28 = v121;
        v25 = v115;
        v27 = v116;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v60 = sub_257743994();
    sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_25765C4AC(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_25765C4AC(v61, v55);
    v55 += v26;
    v57 += v26;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_57;
    }
  }

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
}

uint64_t sub_25769ADA8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = (&v57 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v57 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v69 = a1;
  v68 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    sub_257483500(a1, v21 / v20, a4);
    v29 = v28;
    v65 = a4 + v26 * v20;
    v67 = v65;
    v63 = a3;
    while (1)
    {
      if (a4 >= v65 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      sub_2574AD5D8(v29, v18, &qword_27F879D18, &unk_257775F30);
      sub_2574AD5D8(a4, v15, &qword_27F879D18, &unk_257775F30);
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v18, &qword_27F879D18, &unk_257775F30);
      }

      else
      {
        v33 = sub_257743994();
        sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v18, &qword_27F879D18, &unk_257775F30);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v63;
          }

          else
          {
            a3 = v63;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v63;
LABEL_37:
      a1 += v20;
      v69 = a1;
    }
  }

  v38 = v23;
  sub_257483500(v23, v24 / v20, a4);
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v62 = -v20;
  v59 = a4;
LABEL_42:
  v43 = v39 + v41;
  v44 = a3;
  v45 = v42;
  v63 = v39;
  v60 = v42;
  v61 = v43;
  while (1)
  {
    if (v40 <= a4)
    {
      v69 = v39;
      v67 = v45;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v58 = v45;
    v46 = v62;
    v47 = v40 + v62;
    v48 = v64;
    sub_2574AD5D8(v40 + v62, v64, &qword_27F879D18, &unk_257775F30);
    v49 = v43;
    v50 = v65;
    sub_2574AD5D8(v49, v65, &qword_27F879D18, &unk_257775F30);
    if (*v48 == *v50 && v48[1] == v50[1])
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_257743994();
    }

    a3 = v44 + v46;
    sub_2574695E4(v65, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v64, &qword_27F879D18, &unk_257775F30);
    if (v52)
    {
      v54 = v44 < v63 || a3 >= v63;
      a4 = v59;
      if (v54)
      {
        v55 = v61;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v55;
        v42 = v58;
        v41 = v62;
      }

      else
      {
        v42 = v58;
        v56 = v61;
        v41 = v62;
        v39 = v61;
        if (v44 != v63)
        {
          v42 = v58;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
        }
      }

      goto LABEL_42;
    }

    v53 = v44 < v40 || a3 >= v40;
    a4 = v59;
    if (v53)
    {
      swift_arrayInitWithTakeFrontToBack();
      v44 = a3;
      v40 = v47;
      v45 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
    }

    else
    {
      v45 = v47;
      v22 = v40 == v44;
      v44 = a3;
      v40 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v63;
        v44 = a3;
        v40 = v47;
        v45 = v47;
      }
    }
  }

  v69 = v39;
  v67 = v42;
LABEL_70:
  sub_2576FB690(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_25769B2E8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLProgram.Value();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v9 = result;
  v10 = 0;
  v38 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v38 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v34;
      sub_25769B7E8(*(v38 + 56) + *(v35 + 72) * v21, v34);
      v26 = v36;
      sub_25769B7E8(v25, v36);

      sub_25769B738(v25, type metadata accessor for MLProgram.Value);
      v9 = v33;
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v9[6] + 16 * v21);
      *v27 = v23;
      v27[1] = v24;
      result = sub_25769B790(v26, v9[7] + *(v37 + 72) * v21);
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v9[2] = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLProgram.Block()
{
  result = qword_27F880C98;
  if (!qword_27F880C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25769B65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25769B6CC()
{
  result = type metadata accessor for Proto_MILSpec_Block(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25769B738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25769B790(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_25769B7E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t result)
{
  v2 = *(result + 64);
  *(v1 - 120) = result;
  *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_43_9()
{
  v2 = *(v0 + 16) + 1;

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_50_5()
{
  *(v0 + 416) = v2;
  *(v3 - 112) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_projectBox();
}

uint64_t NeuralNetwork.Border.leadingHeight.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_16(v10, v14);
  OUTLINED_FUNCTION_0_69();
  sub_25769C948(v0, v1, v11);
  sub_25769C3DC(v0);
  v12 = *v1;
  result = sub_25769C7F0(v1);
  if ((v12 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_18_27();
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Border.leadingHeight.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_342_0();
  result = NeuralNetwork.Border.extent.getter(v1);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = a1;
    return NeuralNetwork.Border.extent.setter(v1);
  }

  return result;
}

uint64_t NeuralNetwork.Border.trailingHeight.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_16(v10, v14);
  OUTLINED_FUNCTION_0_69();
  sub_25769C948(v0, v1, v11);
  sub_25769C3DC(v0);
  v12 = *(v1 + 8);
  result = sub_25769C7F0(v1);
  if ((v12 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_18_27();
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Border.trailingHeight.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_342_0();
  result = NeuralNetwork.Border.extent.getter(v1);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v1[1] = a1;
    return NeuralNetwork.Border.extent.setter(v1);
  }

  return result;
}

uint64_t NeuralNetwork.Border.leadingWidth.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0) - 8);
  v7 = *(*v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_3();
  NeuralNetwork.Border.extent.getter(v1);
  v9 = v6[11];
  OUTLINED_FUNCTION_0_69();
  sub_25769C948(v1 + v10, v0, v11);
  sub_25769C3DC(v1);
  v12 = *v0;
  result = sub_25769C7F0(v0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_18_27();
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Border.leadingWidth.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32_3();
  result = NeuralNetwork.Border.extent.getter(v1);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + *(v3 + 36)) = a1;
    return NeuralNetwork.Border.extent.setter(v1);
  }

  return result;
}

uint64_t NeuralNetwork.Border.trailingWidth.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0) - 8);
  v7 = *(*v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_3();
  NeuralNetwork.Border.extent.getter(v1);
  v9 = v6[11];
  OUTLINED_FUNCTION_0_69();
  sub_25769C948(v1 + v10, v0, v11);
  sub_25769C3DC(v1);
  v12 = *(v0 + 8);
  result = sub_25769C7F0(v0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_18_27();
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Border.trailingWidth.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32_3();
  result = NeuralNetwork.Border.extent.getter(v1);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + *(v3 + 36) + 8) = a1;
    return NeuralNetwork.Border.extent.setter(v1);
  }

  return result;
}

uint64_t NeuralNetwork.Border.init(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_3();
  *a5 = MEMORY[0x277D84F90];
  v15 = a5 + *(type metadata accessor for Proto_BorderAmounts(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *v5 = 0;
  v5[1] = 0;
  v17 = v5 + *(v16 + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v5 = a1;
  if (a2 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5[1] = a2;
  v19 = (v5 + *(v11 + 36));
  *v19 = 0;
  v19[1] = 0;
  v20 = v19 + *(v16 + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a3 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v19 = a3;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v19[1] = a4;
    return NeuralNetwork.Border.extent.setter(v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Border.extent.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  v6 = v5;
  if (v4 == 1)
  {
    v10 = v5 - 8;
    sub_25769C948(v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a1, type metadata accessor for Proto_BorderAmounts.EdgeSizes);
    v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0) + 36));
    *v8 = 0;
    v8[1] = 0;
    v11 = *(v10 + 32);
    goto LABEL_5;
  }

  if (!v4)
  {
    *a1 = 0;
    a1[1] = 0;
    v7 = a1 + *(v5 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *a1 = 0;
    a1[1] = 0;
    v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0) + 36));
    *v8 = 0;
    v8[1] = 0;
    v9 = *(v6 + 24);
LABEL_5:
    result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v8 = 0;
    v8[1] = 0;
    return result;
  }

  v13 = *(v5 - 8);
  v14 = v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  sub_25769C948(v14, a1, type metadata accessor for Proto_BorderAmounts.EdgeSizes);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  return sub_25769C948(v14 + *(v13 + 72), a1 + *(v15 + 36), type metadata accessor for Proto_BorderAmounts.EdgeSizes);
}

uint64_t sub_25769C3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25769C444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_25769CA0C(a1, &v7 - v4);
  return NeuralNetwork.Border.extent.setter(v5);
}

uint64_t NeuralNetwork.Border.extent.setter(uint64_t a1)
{
  v3 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
  v12 = *(type metadata accessor for Proto_BorderAmounts.EdgeSizes(0) - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257743FF0;
  v16 = v15 + v14;
  sub_25769C948(a1, v11, type metadata accessor for NeuralNetwork.Border.EdgeSizes);
  sub_25769C9A8(v11, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  sub_25769C948(a1 + *(v17 + 36), v9, type metadata accessor for NeuralNetwork.Border.EdgeSizes);
  sub_25769C9A8(v9, v16 + v13);
  sub_25769C3DC(a1);
  v18 = *v1;

  *v1 = v15;
  return result;
}

uint64_t NeuralNetwork.Border.EdgeSizes.init(leading:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *a3 = 0;
  a3[1] = 0;
  v7 = a3 + *(v6 + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    if ((a2 & 0x8000000000000000) == 0)
    {
      a3[1] = a2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*NeuralNetwork.Border.extent.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  NeuralNetwork.Border.extent.getter(v6);
  return sub_25769C770;
}

void sub_25769C770(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_25769CA0C(v3, v2);
    NeuralNetwork.Border.extent.setter(v2);
    sub_25769C3DC(v3);
  }

  else
  {
    NeuralNetwork.Border.extent.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Border.EdgeSizes.leading.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25769C7F0(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeuralNetwork.Border.EdgeSizes.leading.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t NeuralNetwork.Border.leadingHeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v2);
  v1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = NeuralNetwork.Border.leadingHeight.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25769C8CC(uint64_t *a1)
{
  OUTLINED_FUNCTION_22_17(a1);
  if (v2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v3 < 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  *v1 = v3;
  NeuralNetwork.Border.extent.setter(v1);

  free(v1);
}

uint64_t NeuralNetwork.Border.EdgeSizes.trailing.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Border.EdgeSizes.trailing.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t sub_25769C948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25769C9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25769CA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NeuralNetwork.Border.trailingHeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v2);
  v1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = NeuralNetwork.Border.trailingHeight.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25769CAEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_22_17(a1);
  if (v2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v3 < 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v1[1] = v3;
  NeuralNetwork.Border.extent.setter(v1);

  free(v1);
}

uint64_t NeuralNetwork.Border.leadingWidth.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = NeuralNetwork.Border.leadingWidth.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25769CBBC(uint64_t *a1)
{
  OUTLINED_FUNCTION_14_14(a1);
  if (v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 < 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  *&v1[*(*(v2 + 16) + 36)] = v4;
  NeuralNetwork.Border.extent.setter(v1);

  free(v1);
}

uint64_t NeuralNetwork.Border.trailingWidth.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = NeuralNetwork.Border.trailingWidth.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25769CC9C(uint64_t *a1)
{
  OUTLINED_FUNCTION_14_14(a1);
  if (v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 < 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  *&v1[*(*(v2 + 16) + 36) + 8] = v4;
  NeuralNetwork.Border.extent.setter(v1);

  free(v1);
}

uint64_t NeuralNetwork.Border.init(extent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_342_0();
  *a2 = MEMORY[0x277D84F90];
  v9 = a2 + *(type metadata accessor for Proto_BorderAmounts(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25769CA0C(a1, v2);
  NeuralNetwork.Border.extent.setter(v2);
  return sub_25769C3DC(a1);
}

BOOL static NeuralNetwork.Border.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_257481C78();
  result = 0;
  if (v4)
  {
    v5 = *(type metadata accessor for Proto_BorderAmounts(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_7_31();
    sub_25769D49C(v6, v7);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Border.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  v15 = type metadata accessor for NeuralNetwork.Border(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  sub_25769C948(v0, v20 - v19, type metadata accessor for NeuralNetwork.Border);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257744000;
  *(v21 + 32) = 0x746E65747865;
  *(v21 + 40) = 0xE600000000000000;
  *(v21 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 48));
  NeuralNetwork.Border.extent.getter(boxed_opaque_existential_0);
  OUTLINED_FUNCTION_11_27();
  *(v21 + 80) = v23 & 0xFFFFFFFFFFFFLL | 0x4867000000000000;
  *(v21 + 88) = 0xED00007468676965;
  v24 = NeuralNetwork.Border.leadingHeight.getter();
  v25 = MEMORY[0x277D83B88];
  *(v21 + 96) = v24;
  *(v21 + 120) = v25;
  strcpy((v21 + 128), "trailingHeight");
  *(v21 + 143) = -18;
  *(v21 + 144) = NeuralNetwork.Border.trailingHeight.getter();
  OUTLINED_FUNCTION_11_27();
  *(v21 + 168) = v25;
  *(v21 + 176) = v26 & 0xFFFFFFFFFFFFLL | 0x5767000000000000;
  *(v21 + 184) = 0xEC00000068746469;
  *(v21 + 192) = NeuralNetwork.Border.leadingWidth.getter();
  *(v21 + 216) = v25;
  strcpy((v21 + 224), "trailingWidth");
  *(v21 + 238) = -4864;
  v27 = NeuralNetwork.Border.trailingWidth.getter();
  *(v21 + 264) = v25;
  *(v21 + 240) = v27;
  v28 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v28);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t *(*NeuralNetwork.Border.EdgeSizes.leading.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Border.EdgeSizes.trailing.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

BOOL static NeuralNetwork.Border.EdgeSizes.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v2 = *(type metadata accessor for Proto_BorderAmounts.EdgeSizes(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_7_31();
    sub_25769D49C(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Border.EdgeSizes.customMirror.getter()
{
  v2 = v0;
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_0_69();
  sub_25769C948(v2, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  *(swift_allocObject() + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_11_27();
  v22[4] = v23 & 0xFFFFFFFFFFFFLL | 0x67000000000000;
  v22[5] = 0xE700000000000000;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D83B88];
    v22[6] = *v2;
    v22[9] = v24;
    v22[10] = 0x676E696C69617274;
    v22[11] = 0xE800000000000000;
    v25 = v2[1];
    if ((v25 & 0x8000000000000000) == 0)
    {
      v22[15] = v24;
      v22[12] = v25;
      v26 = sub_257743A74();
      OUTLINED_FUNCTION_15_7(v26);
      (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v3);
      sub_257743AA4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_25769D49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25769D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];

  return NeuralNetwork.Border.extent.getter(v4);
}

uint64_t OUTLINED_FUNCTION_22_17(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = a1[2];

  return NeuralNetwork.Border.extent.getter(v4);
}

uint64_t OUTLINED_FUNCTION_23_16@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = (&a2 - a1);

  return NeuralNetwork.Border.extent.getter(v3);
}

uint64_t ModelError.hashValue.getter()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  return sub_257743A64();
}

uint64_t sub_25769D734()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  return sub_257743A64();
}

unint64_t sub_25769D7A4()
{
  result = qword_27F880CC8;
  if (!qword_27F880CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880CC8);
  }

  return result;
}

unint64_t sub_25769D7FC()
{
  result = qword_27F880CD0;
  if (!qword_27F880CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ModelError(_BYTE *result, int a2, int a3)
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

uint64_t NeuralNetwork.Layer.BroadcastToStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442B0;
  strcpy((v1 + 32), "Target Shape");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v17 = v1;
    v18 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      v7 = sub_257743974();
      v9 = v8;
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257483754((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
    v2 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v13 = sub_257743604();
  v15 = v14;

  *(v2 + 48) = v13;
  *(v2 + 56) = v15;
  return v2;
}

BOOL static NeuralNetwork.Layer.BroadcastToStaticParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (sub_257487374(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_BroadcastToStaticLayerParams(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_53();
    sub_25769DFA0(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV21ReshapeLikeParametersV2eeoiySbAG_AGtFZ_0()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_1_53();
  sub_25769DFA0(v0, v1);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.FlattenTo2DParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  v4 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  return v1;
}

uint64_t sub_25769DD00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a3 + *(a2(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.FlattenTo2DParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(type metadata accessor for Proto_FlattenTo2DLayerParams(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_53();
    sub_25769DFA0(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25769DFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25769E228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.constantPad(name:inputNames:outputName:value:amounts:padsToOutputSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W6>, uint64_t a5@<X8>, float a6@<S0>)
{
  HIDWORD(v24) = a4;
  v25 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *v18 = 0;
  *(v18 + 8) = MEMORY[0x277D84F90];
  *(v18 + 16) = 0;
  LODWORD(a2) = *(type metadata accessor for Proto_ConstantPaddingLayerParams(0) + 28);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v18 = a6;

  NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(v20);
  *(v18 + 16) = BYTE4(v24);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a5 + v21) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v13);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  sub_25752846C();
  return sub_257634BB4(v18);
}

uint64_t static NeuralNetwork.Layer.Kind.constantPad(value:amounts:padsToOutputSize:)@<X0>(_DWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_1_54(a1);
  *(v2 + 8) = MEMORY[0x277D84F90];
  *(v2 + 16) = 0;
  v4 = v2 + *(type metadata accessor for Proto_ConstantPaddingLayerParams(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;

  NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(v5);
  *(v2 + 16) = v1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.ConstantPadParameters.init(value:amounts:padsToOutputSize:)(_DWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_1_54(a1);
  *(v3 + 8) = MEMORY[0x277D84F90];
  *(v3 + 16) = 0;
  v5 = v3 + *(type metadata accessor for Proto_ConstantPaddingLayerParams(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v4;
  NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(v2);
  *(v3 + 16) = v1;
}

uint64_t NeuralNetwork.Layer.ConstantPadParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 0x65756C6156;
  *(v1 + 40) = 0xE500000000000000;
  v2 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x73746E756F6D41;
  *(v1 + 72) = 0xE700000000000000;
  NeuralNetwork.Layer.ConstantPadParameters.amounts.getter();
  v4 = MEMORY[0x259C64F20]();
  v6 = v5;

  *(v1 + 80) = v4;
  *(v1 + 88) = v6;
  *(v1 + 96) = 0xD000000000000013;
  *(v1 + 104) = 0x80000002577811A0;
  v7 = 1702195828;
  if (!*(v0 + 16))
  {
    v7 = 0x65736C6166;
  }

  v8 = 0xE400000000000000;
  if (!*(v0 + 16))
  {
    v8 = 0xE500000000000000;
  }

  *(v1 + 112) = v7;
  *(v1 + 120) = v8;
  return v1;
}

uint64_t NeuralNetwork.Layer.ConstantPadParameters.amounts.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_257483724();
    result = v8;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v9 = result;
      v7 = *(result + 16);
      if (v7 >= *(result + 24) >> 1)
      {
        sub_257483724();
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

float (*NeuralNetwork.Layer.ConstantPadParameters.value.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

void sub_25769E81C(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(v2);
}

void NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257484698();
    v5 = 32;
    v6 = v10;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v8 = *(v10 + 16);
      if (v8 >= *(v10 + 24) >> 1)
      {
        sub_257484698();
      }

      *(v10 + 16) = v8 + 1;
      *(v10 + 8 * v8 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:
    v9 = *(v2 + 8);

    *(v2 + 8) = v6;
  }
}

void (*NeuralNetwork.Layer.ConstantPadParameters.amounts.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ConstantPadParameters.amounts.getter();
  return sub_25769E988;
}

void sub_25769E988(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.ConstantPadParameters.amounts.setter(*a1);
  }
}

_BYTE *(*NeuralNetwork.Layer.ConstantPadParameters.padsToOutputSize.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_25769EA14;
}

BOOL static NeuralNetwork.Layer.ConstantPadParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && (sub_257487374(*(a1 + 8), *(a2 + 8)) & 1) != 0 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(type metadata accessor for Proto_ConstantPaddingLayerParams(0) + 28);
    sub_2577431B4();
    sub_25769EE64(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConstantPadParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25769EDB8(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442C0;
  *(v15 + 32) = 0x65756C6176;
  *(v15 + 40) = 0xE500000000000000;
  v16 = MEMORY[0x277D83A90];
  *(v15 + 48) = *v0;
  *(v15 + 72) = v16;
  *(v15 + 80) = 0x73746E756F6D61;
  *(v15 + 88) = 0xE700000000000000;
  v17 = NeuralNetwork.Layer.ConstantPadParameters.amounts.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v15 + 96) = v17;
  *(v15 + 120) = v18;
  *(v15 + 128) = 0xD000000000000010;
  *(v15 + 136) = 0x80000002577811C0;
  v19 = *(v0 + 16);
  *(v15 + 168) = MEMORY[0x277D839B0];
  *(v15 + 144) = v19;
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters()
{
  result = qword_27F880D38;
  if (!qword_27F880D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25769EDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25769EE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25769EED4()
{
  result = type metadata accessor for Proto_ConstantPaddingLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25769EF58()
{
  v1 = v0;
  v2 = type metadata accessor for TreeEnsemble();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  strcpy((inited + 32), "Tree Ensemble");
  *(inited + 46) = -4864;
  TreeEnsembleRegressorConfiguration.treeEnsemble.getter(v8);
  sub_25766B950();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_25769F71C(v8);
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 64) = v15;
  *(inited + 72) = 0xD000000000000018;
  *(inited + 80) = 0x80000002577811E0;
  if (*(v1 + 8) == 1)
  {
    v16 = *&aIdentitysoftma[8 * *v1];
    v17 = qword_2577713A8[*v1];
  }

  else
  {
    v17 = 0xE800000000000000;
    v16 = 0x797469746E656449;
  }

  *(inited + 88) = v16;
  *(inited + 96) = v17;
  *(inited + 104) = 0;
  return sub_2576A6964(inited);
}

uint64_t TreeEnsembleRegressorConfiguration.treeEnsemble.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_64();
  v9 = type metadata accessor for Proto_TreeEnsembleParameters(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = (v14 - v13);
  v16 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  sub_25769F1E8(v1 + *(v16 + 24), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v15 = MEMORY[0x277D84F90];
    v15[1] = 0;
    v15[2] = v17;
    v18 = v15 + *(v9 + 28);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
    {
      sub_25769F258(v2);
    }
  }

  else
  {
    sub_25769F2C0(v2, v15);
  }

  return sub_25769F2C0(v15, a1);
}

uint64_t sub_25769F1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25769F258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25769F2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25769F324(uint64_t a1)
{
  v2 = type metadata accessor for TreeEnsemble();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25769FB88(a1, v5, type metadata accessor for TreeEnsemble);
  return TreeEnsembleRegressorConfiguration.treeEnsemble.setter(v5);
}

uint64_t TreeEnsembleRegressorConfiguration.treeEnsemble.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_25769F2C0(a1, v8 - v7);
  v10 = *(type metadata accessor for Proto_TreeEnsembleRegressor(0) + 24);
  sub_25769F258(v1 + v10);
  sub_25769F2C0(v9, v1 + v10);
  return __swift_storeEnumTagSinglePayload(v1 + v10, 0, 1, v3);
}

void (*TreeEnsembleRegressorConfiguration.treeEnsemble.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for TreeEnsemble();
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_TreeEnsembleRegressor(0) + 24);
  *(v3 + 14) = v15;
  sub_25769F1E8(v1 + v15, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v16 = MEMORY[0x277D84F90];
    *v10 = MEMORY[0x277D84F90];
    v10[1] = 0;
    v10[2] = v16;
    v17 = v10 + *(v7 + 28);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_25769F258(v6);
    }
  }

  else
  {
    sub_25769F2C0(v6, v10);
  }

  sub_25769F2C0(v10, v14);
  return sub_25769F614;
}

void sub_25769F614(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 14);
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    sub_25769FB88((*a1)[6], v4, type metadata accessor for TreeEnsemble);
    sub_25769F2C0(v4, v6);
    sub_25769F258(v10 + v3);
    sub_25769F2C0(v6, v10 + v3);
    OUTLINED_FUNCTION_4_38();
    sub_25769F71C(v5);
  }

  else
  {
    sub_25769F2C0((*a1)[6], v6);
    sub_25769F258(v10 + v3);
    sub_25769F2C0(v6, v10 + v3);
    OUTLINED_FUNCTION_4_38();
  }

  free(v5);
  free(v4);
  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t sub_25769F71C(uint64_t a1)
{
  v2 = type metadata accessor for TreeEnsemble();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TreeEnsembleRegressorConfiguration.postEvaluationFunction.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = 0x1020100u >> (8 * *v1);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

unsigned __int8 *TreeEnsembleRegressorConfiguration.postEvaluationFunction.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*TreeEnsembleRegressorConfiguration.postEvaluationFunction.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = 0x1020100u >> (8 * *v1);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

uint64_t TreeEnsembleRegressorConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  v3 = a1 + *(v2 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Proto_TreeEnsembleParameters(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t TreeEnsembleRegressorConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for TreeEnsembleRegressorConfiguration();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25769FB88(v0, v17 - v16, type metadata accessor for TreeEnsembleRegressorConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  strcpy((v18 + 32), "treeEnsemble");
  *(v18 + 45) = 0;
  *(v18 + 46) = -5120;
  *(v18 + 72) = type metadata accessor for TreeEnsemble();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v18 + 48));
  TreeEnsembleRegressorConfiguration.treeEnsemble.getter(boxed_opaque_existential_0);
  *(v18 + 80) = 0xD000000000000016;
  *(v18 + 88) = 0x8000000257780980;
  *(v18 + 120) = &type metadata for TreeEnsemble.PostEvaluationFunction;
  TreeEnsembleRegressorConfiguration.postEvaluationFunction.getter((v18 + 96));
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v20);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for TreeEnsembleRegressorConfiguration()
{
  result = qword_281537548;
  if (!qword_281537548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25769FB88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_25769FBF0()
{
  result = qword_27F87BAD8;
  if (!qword_27F87BAD8)
  {
    type metadata accessor for Proto_TreeEnsembleRegressor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BAD8);
  }

  return result;
}

uint64_t sub_25769FC70()
{
  result = type metadata accessor for Proto_TreeEnsembleRegressor(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

void static NeuralNetwork.Layer.scale(name:inputName:outputName:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v8;
  v32 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v25 = swift_allocObject();
  v30 = xmmword_2577442B0;
  *(v25 + 16) = xmmword_2577442B0;
  *(v25 + 32) = v7;
  *(v25 + 40) = v5;
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 32) = v3;
  *(v26 + 40) = v1;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v27 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
  if (qword_27F8794B0 != -1)
  {
    OUTLINED_FUNCTION_3_49();
  }

  *(v24 + v27) = qword_27F87BF20;
  swift_storeEnumTagMultiPayload();

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v28 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v11 + v28) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v26);
  sub_2574897E0(v17);
  v29 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v29);
  sub_25752846C();
  sub_25766E598(v24, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.scale()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
  if (qword_27F8794B0 != -1)
  {
    OUTLINED_FUNCTION_3_49();
  }

  *(a1 + v2) = qword_27F87BF20;
  type metadata accessor for NeuralNetwork.Layer.Kind();
  swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ScaleParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
  if (qword_27F8794B0 != -1)
  {
    OUTLINED_FUNCTION_3_49();
  }

  *(a1 + v2) = qword_27F87BF20;
}

uint64_t NeuralNetwork.Layer.ScaleParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257743FF0;
  *(v0 + 32) = 0x685320656C616353;
  *(v0 + 40) = 0xEB00000000657061;
  NeuralNetwork.Layer.ScaleParameters.scaleShape.getter();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v31 = v0;
  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    sub_257483754(0, v3, 0);
    v5 = 32;
    do
    {
      v32 = *(v2 + v5);
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v34 + 16);
      v9 = *(v34 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = OUTLINED_FUNCTION_174(v9);
        sub_257483754(v12, v10 + 1, 1);
      }

      *(v34 + 16) = v10 + 1;
      v11 = v34 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v5 += 8;
      --v3;
    }

    while (v3);

    v0 = v31;
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v13 = OUTLINED_FUNCTION_13_18();
  v15 = v14;

  *(v0 + 48) = v13;
  *(v0 + 56) = v15;
  *(v0 + 64) = 0x6168532073616942;
  *(v0 + 72) = 0xEA00000000006570;
  NeuralNetwork.Layer.ScaleParameters.biasShape.getter();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    sub_257483754(0, v18, 0);
    v19 = 32;
    v20 = v4;
    do
    {
      v33 = *(v17 + v19);
      v21 = sub_257743974();
      v23 = v22;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_257483754((v24 > 1), v25 + 1, 1);
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v19 += 8;
      --v18;
    }

    while (v18);

    v0 = v31;
  }

  else
  {
  }

  v27 = OUTLINED_FUNCTION_13_18();
  v29 = v28;

  *(v0 + 80) = v27;
  *(v0 + 88) = v29;
  return v0;
}

void NeuralNetwork.Layer.ScaleParameters.scaleShape.getter()
{
  v1 = type metadata accessor for Proto_ScaleLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {

    OUTLINED_FUNCTION_24_16();
    while ((*(v2 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_21_19();
      if (v4)
      {
        OUTLINED_FUNCTION_174(v3);
        sub_257483724();
      }

      OUTLINED_FUNCTION_10_32();
      if (v5)
      {

        return;
      }
    }

    __break(1u);
  }
}

void NeuralNetwork.Layer.ScaleParameters.biasShape.getter()
{
  v1 = type metadata accessor for Proto_ScaleLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  v2 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shapeBias;
  OUTLINED_FUNCTION_296();
  v3 = *(v0 + v2);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_24_16();
    while ((*(v3 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_21_19();
      if (v5)
      {
        OUTLINED_FUNCTION_174(v4);
        sub_257483724();
      }

      OUTLINED_FUNCTION_10_32();
      if (v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

void NeuralNetwork.Layer.ScaleParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v52 = *(v1 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v5 = (v3 - v4);
  MEMORY[0x28223BE20](v6);
  v8 = (&v50 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for NeuralNetwork.WeightParameters();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  NeuralNetwork.Layer.ScaleParameters.scale.getter();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2574695E4(v18, &qword_27F880938, &unk_25776E510);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = v5;
    sub_2576A16F4(v18, v28);
    v30 = *(v1 + 48);
    *v8 = 0x656C616353;
    v8[1] = 0xE500000000000000;
    sub_2576A1750(v28, v8 + v30);
    sub_257469D34();
    v29 = v31;
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    v0 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      OUTLINED_FUNCTION_174(v32);
      OUTLINED_FUNCTION_19_18();
      sub_257469D34();
      v29 = v47;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v28, v34);
    OUTLINED_FUNCTION_8_29();
    sub_25749E9A8(v8, v35 + v36 * v33);
    v5 = v51;
  }

  NeuralNetwork.Layer.ScaleParameters.bias.getter();
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_2574695E4(v15, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v15, v25);
    v37 = type metadata accessor for Proto_ScaleLayerParams(0);
    OUTLINED_FUNCTION_328(v37);
    v38 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
    OUTLINED_FUNCTION_296();
    if (*(v0 + v38) == 1)
    {
      v39 = *(v1 + 48);
      *v5 = 1935763778;
      v5[1] = 0xE400000000000000;
      OUTLINED_FUNCTION_4_26();
      sub_2576A1750(v25, v5 + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = *(v29 + 16);
        OUTLINED_FUNCTION_19_18();
        sub_257469D34();
        v29 = v49;
      }

      v42 = *(v29 + 16);
      v41 = *(v29 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_174(v41);
        OUTLINED_FUNCTION_19_18();
        sub_257469D34();
      }

      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v25, v43);
      OUTLINED_FUNCTION_8_29();
      sub_25749E9A8(v5, v44 + v45 * v42);
    }

    else
    {
      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v25, v46);
    }
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576A089C()
{
  OUTLINED_FUNCTION_31();
  v44 = v1;
  v45 = v2;
  v4 = v3;
  v5 = type metadata accessor for Proto_WeightParams(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v41 = (v10 - v9);
  v11 = type metadata accessor for NeuralNetwork.WeightParameters();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v42 = (v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v18 = OUTLINED_FUNCTION_13(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  v27 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
  v43 = v0;
  v28 = *(v0 + v27);
  v29 = *v4;
  OUTLINED_FUNCTION_296();
  sub_2574A172C(v28 + v29, v26, &qword_27F87A1A0, &qword_257745750);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v26, 1, v5);
  sub_2574695E4(v26, &qword_27F87A1A0, &qword_257745750);
  if (v4 == 1)
  {
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v11);
  }

  else
  {
    v30 = v45;
    sub_2574A172C(v28 + v29, v23, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
    {
      v31 = v41;
      *v41 = MEMORY[0x277D84F90];
      *(v31 + 1) = xmmword_257745740;
      *(v31 + 3) = xmmword_257745740;
      *(v31 + 5) = xmmword_257745740;
      *(v31 + 56) = 0;
      v32 = v31 + *(v5 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v33 = *(v5 + 40);
      v34 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(v31 + v33, 1, 1, v34);
      v35 = v30;
      if (__swift_getEnumTagSinglePayload(v23, 1, v5) != 1)
      {
        sub_2574695E4(v23, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      v31 = v41;
      sub_2576A16F4(v23, v41);
      v35 = v30;
    }

    v36 = v42;
    v37 = sub_2576FF45C(v31, v42);
    v38 = v44(v37);
    v39 = *v36;

    *v36 = v38;
    OUTLINED_FUNCTION_4_26();
    sub_2576A1750(v36, v35);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v11);
    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v36, v40);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.ScaleParameters.hasBias.getter()
{
  v1 = type metadata accessor for Proto_ScaleLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  v2 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_296();
  return *(v0 + v2);
}

void sub_2576A0BD0(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.ScaleParameters.scaleShape.setter(v2);
}

void NeuralNetwork.Layer.ScaleParameters.scaleShape.setter(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_12_27();
    v4 = v15;
    while ((*(a1 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_22_18();
      if (v6)
      {
        OUTLINED_FUNCTION_174(v5);
        sub_257484698();
        v4 = v15;
      }

      OUTLINED_FUNCTION_11_28();
      if (v7)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
LABEL_10:
    v8 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
    v9 = *(v1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = type metadata accessor for Proto_ScaleLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v12);
      OUTLINED_FUNCTION_9_28();
      v11 = v13;
      *(v2 + v8) = v13;
    }

    OUTLINED_FUNCTION_237_0();
    v14 = *(v11 + 16);
    *(v11 + 16) = v4;
  }
}

uint64_t (*NeuralNetwork.Layer.ScaleParameters.scaleShape.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.ScaleParameters.scaleShape.getter();
  *a1 = v3;
  return sub_2576A0D4C;
}

void sub_2576A0D64(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.ScaleParameters.biasShape.setter(v2);
}

void NeuralNetwork.Layer.ScaleParameters.biasShape.setter(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_12_27();
    v4 = v16;
    while ((*(a1 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_22_18();
      if (v6)
      {
        OUTLINED_FUNCTION_174(v5);
        sub_257484698();
        v4 = v16;
      }

      OUTLINED_FUNCTION_11_28();
      if (v7)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
LABEL_10:
    v8 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
    v9 = *(v1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = type metadata accessor for Proto_ScaleLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v12);
      OUTLINED_FUNCTION_9_28();
      v11 = v13;
      *(v2 + v8) = v13;
    }

    v14 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shapeBias;
    OUTLINED_FUNCTION_237_0();
    v15 = *(v11 + v14);
    *(v11 + v14) = v4;
  }
}

uint64_t (*NeuralNetwork.Layer.ScaleParameters.biasShape.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.ScaleParameters.biasShape.getter();
  *a1 = v3;
  return sub_2576A0EE8;
}

uint64_t sub_2576A0F00(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void (*NeuralNetwork.Layer.ScaleParameters.scale.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.ScaleParameters.scale.getter();
  return sub_2576A1028;
}

uint64_t sub_2576A1040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_2574A172C(a1, &v14 - v11, &qword_27F880938, &unk_25776E510);
  return a5(v12);
}

void sub_2576A1108()
{
  OUTLINED_FUNCTION_31();
  v45 = v1;
  v46 = v2;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for Proto_WeightParams(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  v25 = type metadata accessor for NeuralNetwork.WeightParameters();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  sub_2574A172C(v5, v24, &qword_27F880938, &unk_25776E510);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_2574695E4(v24, &qword_27F880938, &unk_25776E510);
    v32 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
    v33 = *(v3 + v32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
      v34 = *(v3 + v32);
    }

    else
    {
      v36 = *(v3 + v32);
      v37 = type metadata accessor for Proto_ScaleLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v37);

      sub_2575B3404();
      v34 = v38;
      sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);

      *(v3 + v32) = v34;
    }

    OUTLINED_FUNCTION_19_18();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = *v46;
    swift_beginAccess();
    sub_25763A1E4(v11, v34 + v43);
    swift_endAccess();
  }

  else
  {
    sub_2576A16F4(v24, v31);
    sub_2576A1750(v31 + *(v25 + 20), v18);
    v45(v18);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v31, v35);
  }

  OUTLINED_FUNCTION_35();
}

void (*NeuralNetwork.Layer.ScaleParameters.bias.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.ScaleParameters.bias.getter();
  return sub_2576A146C;
}

void sub_2576A1484(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    sub_2574A172C(a1[2], v4, &qword_27F880938, &unk_25776E510);
    a3(v4);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    a3(a1[2]);
  }

  free(v5);

  free(v4);
}

uint64_t NeuralNetwork.Layer.ScaleParameters.hasBias.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_ScaleLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_9_28();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  v10 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  result = OUTLINED_FUNCTION_237_0();
  *(v7 + v10) = a1 & 1;
  return result;
}

void (*NeuralNetwork.Layer.ScaleParameters.hasBias.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[9] = v1;
  v4 = *(type metadata accessor for Proto_ScaleLayerParams(0) + 20);
  *(v3 + 20) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_296();
  *(v3 + 84) = *(v5 + v6);
  return sub_2576A1638;
}

void sub_2576A1638(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_ScaleLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_9_28();
    v7 = v11;
    *(v9 + v8) = v11;
  }

  v12 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  swift_beginAccess();
  *(v7 + v12) = v4;

  free(v1);
}

uint64_t sub_2576A16F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576A1750(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2576A17B0()
{
  result = qword_27F87E068;
  if (!qword_27F87E068)
  {
    type metadata accessor for Proto_ScaleLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E068);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ScaleParameters()
{
  result = qword_27F880D48;
  if (!qword_27F880D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576A187C()
{
  result = type metadata accessor for Proto_ScaleLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_29()
{
  *(v1 + 16) = v0;
  v3 = *(v2 - 112);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
}

void OUTLINED_FUNCTION_9_28()
{

  sub_2575B3404();
}

void OUTLINED_FUNCTION_12_27()
{

  sub_257484698();
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return sub_257743604();
}

void OUTLINED_FUNCTION_24_16()
{

  sub_257483724();
}

uint64_t static NeuralNetwork.Layer.stack(name:inputNames:outputName:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v24[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v14 = OUTLINED_FUNCTION_42_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *v19 = 0;
  LODWORD(a2) = *(type metadata accessor for Proto_StackLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v19 = a4;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a5 + v21) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v12);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_25752846C();
  return sub_257634BB4(v19);
}

uint64_t static NeuralNetwork.Layer.Kind.stack(axis:)@<X0>(void *a1@<X8>)
{
  v3 = v2 + *(OUTLINED_FUNCTION_3_50(a1) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.StackParameters.init(axis:)@<X0>(void *a1@<X8>)
{
  v3 = v2 + *(OUTLINED_FUNCTION_3_50(a1) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v1;
  return result;
}

uint64_t NeuralNetwork.Layer.StackParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  v4 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  return v1;
}

uint64_t (*NeuralNetwork.Layer.StackParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

BOOL static NeuralNetwork.Layer.StackParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(type metadata accessor for Proto_StackLayerParams(0) + 20);
    sub_2577431B4();
    sub_2576A22BC(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.StackParameters.hash(into:)()
{
  type metadata accessor for Proto_StackLayerParams(0);
  OUTLINED_FUNCTION_0_70();
  sub_2576A22BC(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.StackParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_StackLayerParams(0);
  OUTLINED_FUNCTION_0_70();
  sub_2576A22BC(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576A1EFC()
{
  sub_257743A14();
  type metadata accessor for Proto_StackLayerParams(0);
  sub_2576A22BC(&qword_27F87DA08, type metadata accessor for Proto_StackLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.StackParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.StackParameters();
  v13 = OUTLINED_FUNCTION_42_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2576A21C8(v1, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = 1936291937;
  *(v18 + 40) = 0xE400000000000000;
  v19 = *v1;
  *(v18 + 72) = MEMORY[0x277D83B88];
  *(v18 + 48) = v19;
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.StackParameters()
{
  result = qword_27F880D60;
  if (!qword_27F880D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576A21C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.StackParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576A22BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576A2330()
{
  result = type metadata accessor for Proto_StackLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_50@<X0>(void *a1@<X8>)
{
  *a1 = 0;

  return type metadata accessor for Proto_StackLayerParams(0);
}

uint64_t static NeuralNetwork.Layer.gatherND(name:inputNames:outputName:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_12_13();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a3 + v19) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v18);
  sub_2574897E0(v3);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  return sub_257634BB4(v17);
}

uint64_t sub_2576A25D8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t (*a4)(void)@<X6>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_13();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v20 = (v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *v20 = 0;
  LODWORD(a4) = *(a4(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v20 = a3;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a5 + v22) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v21);
  sub_2574897E0(v5);
  v23 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v23);
  return sub_257634BB4(v20);
}

uint64_t sub_2576A27CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v5 = a3 + *(a2(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576A2870@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v5 = a3 + *(a2(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.GatherParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

uint64_t static NeuralNetwork.Layer.GatherNDParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_3_51();
  sub_2576A2DE0(v0, v1);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.GatherNDParameters.customMirror.getter()
{
  v0 = sub_257743A84();
  v1 = OUTLINED_FUNCTION_63(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  v15 = type metadata accessor for NeuralNetwork.Layer.GatherNDParameters(0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  sub_2576A2E68();
  v21[1] = MEMORY[0x277D84F90];
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  (*(v3 + 104))(v8, *MEMORY[0x277D84C38], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV16GatherParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  v4 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  return v1;
}

uint64_t sub_2576A2DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576A2E68()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t (*NeuralNetwork.Layer.GatherAlongAxisParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257673058;
}

BOOL sub_2576A2F00(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_0_0();
    v4 = *(v3(v2) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_51();
    sub_2576A2DE0(v5, v6);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2576A2FE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_29();

  return sub_2577435F4();
}

uint64_t sub_2576A309C(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_9_29();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576A3168(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_9_29();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576A3210(uint64_t (*a1)(void))
{
  v3 = v1;
  v4 = sub_257743A84();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = a1(0);
  OUTLINED_FUNCTION_4(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  sub_2576A2E68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = 1936291937;
  *(v23 + 40) = 0xE400000000000000;
  v24 = *v3;
  *(v23 + 72) = MEMORY[0x277D83B88];
  *(v23 + 48) = v24;
  v25 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
  (*(v7 + 104))(v12, *MEMORY[0x277D84C38], v4);
  return sub_257743AA4();
}

uint64_t sub_2576A369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_29()
{

  return sub_2576A2DE0(v1, v0);
}

void sub_2576A374C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v77 = *MEMORY[0x277D85DE8];
  v71 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v2 = OUTLINED_FUNCTION_4(v71);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v70 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  v72 = 0x7241646570616853;
  v73 = 0xEB00000000796172;
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  v69 = v16;
  v20 = FeatureType.ShapedArrayParameters.shape.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v66 = v0;
    v67 = v19;
    v68 = v7;
    v75 = MEMORY[0x277D84F90];
    v22 = OUTLINED_FUNCTION_25_14();
    sub_257483754(v22, v23, v24);
    v25 = 32;
    v26 = v75;
    do
    {
      v74 = *(v20 + v25);
      v27 = sub_257743974();
      v29 = v28;
      v75 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_174(v30);
        sub_257483754(v33, v31 + 1, 1);
        v26 = v75;
      }

      *(v26 + 16) = v31 + 1;
      v32 = v26 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v25 += 8;
      --v21;
    }

    while (v21);

    v19 = v67;
    v1 = v66;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v75 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v34 = sub_257743604();
  v36 = v35;

  v75 = 60;
  v76 = 0xE100000000000000;
  v37 = &v1[*(type metadata accessor for FeatureType.ShapedArrayParameters() + 20)];
  sub_2576A44B8(*(v37 + 1), v37[16], &v74);
  v38 = 0xE700000000000000;
  v39 = 0x363174616F6C46;
  switch(v74)
  {
    case 1:
      v39 = 0x323374616F6C46;
      break;
    case 2:
    case 5:
      v38 = 0xE600000000000000;
      v39 = 0x656C62756F44;
      break;
    case 3:
      v38 = 0xE500000000000000;
      v39 = 0x3233746E49;
      break;
    case 4:
      v38 = 0xE400000000000000;
      v39 = 947154505;
      break;
    default:
      break;
  }

  MEMORY[0x259C64E90](v39, v38);

  MEMORY[0x259C64E90](8236, 0xE200000000000000);
  MEMORY[0x259C64E90](v34, v36);

  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](v75, v76);

  v40 = type metadata accessor for Proto_ArrayFeatureType(0);
  v41 = *(v40 + 24);
  sub_2576A6098(&v37[v41], v19);
  v42 = v71;
  if (__swift_getEnumTagSinglePayload(v19, 1, v71) == 1)
  {
    if (v37[*(v40 + 28) + 8] == 255)
    {
      goto LABEL_31;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    v43 = v70;
    sub_2576A642C();
    OUTLINED_FUNCTION_1_55();
    sub_2576A6380();
    sub_2576A48B8();
    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v43, v44);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 1701869908;
  *(inited + 40) = 0xE400000000000000;
  v46 = v73;
  *(inited + 48) = v72;
  *(inited + 56) = v46;
  *(inited + 64) = 0;
  v47 = &v37[v41];
  v48 = v69;
  sub_2576A6098(v47, v69);
  if (__swift_getEnumTagSinglePayload(v48, 1, v42) != 1)
  {
    OUTLINED_FUNCTION_2_46();
    v49 = v70;
    sub_2576A642C();
    OUTLINED_FUNCTION_1_55();
    sub_2576A6380();
    sub_2576A48B8();
    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v49, v50);
    sub_2576A530C();
    v52 = v51;

    sub_257469AE0();
    inited = v53;
    *(v53 + 16) = 2;
    *(v53 + 72) = 0xD000000000000011;
    *(v53 + 80) = 0x8000000257781220;
    *(v53 + 88) = v52;
    *(v53 + 96) = 0;
    *(v53 + 104) = 1;
  }

  v54 = &v37[*(v40 + 28)];
  v55 = *v54;
  v56 = *(v54 + 8);
  switch(v56)
  {
    case 0:
      v57 = SLODWORD(v55);
      goto LABEL_27;
    case 1:
      v57 = *&v55;
      goto LABEL_27;
    case 2:
      v57 = v55;
LABEL_27:
      v75 = *&v57;
      v58 = sub_257743674();
      v60 = v59;
      v62 = *(inited + 16);
      v61 = *(inited + 24);
      if (v62 >= v61 >> 1)
      {
        OUTLINED_FUNCTION_174(v61);
        sub_257469AE0();
        inited = v65;
      }

      *(inited + 16) = v62 + 1;
      v63 = inited + 40 * v62;
      strcpy((v63 + 32), "Default Value");
      *(v63 + 46) = -4864;
      *(v63 + 48) = v58;
      *(v63 + 56) = v60;
      *(v63 + 64) = 0;
      break;
  }

  sub_2576AACFC(inited);
LABEL_31:
  v64 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ShapedArrayParameters.init(dataType:shape:optional:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = &a4[*(type metadata accessor for FeatureType.ShapedArrayParameters() + 20)];
  v9 = type metadata accessor for Proto_ArrayFeatureType(0);
  v10 = v9[6];
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_23_17(&v8[v9[7]]);
  v15 = &v8[v9[8]];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(a2 + 16);
  if (v16)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2574845B8();
    v17 = v24;
    v18 = *(v24 + 16);
    v19 = 32;
    do
    {
      v20 = *(a2 + v19);
      v21 = *(v24 + 24);
      if (v18 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_174(v21);
        sub_2574845B8();
      }

      *(v24 + 16) = v18 + 1;
      *(v24 + 8 * v18 + 32) = v20;
      v19 += 8;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v23 = qword_257771998[v7];
  *v8 = v17;
  *(v8 + 1) = v23;
  v8[16] = 1;
  *a4 = a3 & 1;
  return result;
}

uint64_t type metadata accessor for FeatureType.ShapedArrayParameters()
{
  result = qword_281538058;
  if (!qword_281538058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void FeatureType.ShapedArrayParameters.init(dataType:shapeFlexibility:optional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = *v27;
  v37 = *v25;
  v38 = *(v25 + 8);
  v39 = &v29[*(type metadata accessor for FeatureType.ShapedArrayParameters() + 20)];
  *v39 = MEMORY[0x277D84F90];
  v40 = type metadata accessor for Proto_ArrayFeatureType(0);
  v41 = v40[6];
  v42 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  OUTLINED_FUNCTION_23_17(&v39[v40[7]]);
  v46 = &v39[v40[8]];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  if (v38)
  {
    sub_2576A5D40();
  }

  else
  {
    sub_2576A5AB8();
  }

  swift_storeEnumTagMultiPayload();

  __swift_storeEnumTagSinglePayload(v35, 0, 1, v42);
  sub_257690A04(v35, &v39[v41]);
  *(v39 + 1) = qword_257771998[v36];
  v39[16] = 1;
  *v29 = v23 & 1;
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ShapedArrayParameters.shape.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20));
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724();
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_174(v8);
        sub_257483724();
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2576A4170(uint64_t *a1)
{
  v1 = *a1;

  return FeatureType.ShapedArrayParameters.shape.setter(v2);
}

uint64_t FeatureType.ShapedArrayParameters.shape.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2574845B8();
    v5 = v13;
    v6 = *(v13 + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      v9 = *(v13 + 24);
      if (v6 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_174(v9);
        sub_2574845B8();
      }

      *(v13 + 16) = v6 + 1;
      *(v13 + 8 * v6 + 32) = v8;
      v7 += 8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v10 = *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  v11 = *(v2 + v10);

  *(v2 + v10) = v5;
  return result;
}

uint64_t (*FeatureType.ShapedArrayParameters.shape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureType.ShapedArrayParameters.shape.getter();
  return sub_2576A42E4;
}

uint64_t sub_2576A42E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return FeatureType.ShapedArrayParameters.shape.setter(*a1);
  }

  v4 = *a1;

  FeatureType.ShapedArrayParameters.shape.setter(v5);
}

uint64_t FeatureType.ShapedArrayParameters.dataType.getter()
{
  OUTLINED_FUNCTION_16_1();
  result = type metadata accessor for FeatureType.ShapedArrayParameters();
  v3 = v1 + *(result + 20);
  v4 = *(v3 + 8);
  if (*(v3 + 16))
  {
    v5 = 0x203020102uLL >> (8 * v4);
  }

  else
  {
    switch(v4)
    {
      case 65552:
        LOBYTE(v5) = 0;
        break;
      case 131104:
        LOBYTE(v5) = 3;
        break;
      case 65600:
        goto LABEL_9;
      case 131072:
        LOBYTE(v5) = 4;
        break;
      default:
        if (v4 != 65568)
        {
LABEL_9:
          LOBYTE(v5) = 2;
        }

        else
        {
          LOBYTE(v5) = 1;
        }

        break;
    }
  }

  *v0 = v5;
  return result;
}

uint64_t sub_2576A43FC@<X0>(_BYTE *a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.dataType.getter();
  *a1 = v3;
  return result;
}

uint64_t FeatureType.ShapedArrayParameters.dataType.setter(char *a1)
{
  v2 = qword_257771998[*a1];
  result = type metadata accessor for FeatureType.ShapedArrayParameters();
  v4 = v1 + *(result + 20);
  *(v4 + 8) = v2;
  *(v4 + 16) = 1;
  return result;
}

uint64_t sub_2576A44B8@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = 0x503020105uLL >> (8 * result);
  if (result == 65600)
  {
    v4 = 2;
  }

  else
  {
    v4 = 5;
  }

  if (result == 0x20000)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (result == 131104)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (result == 65568)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (result == 65552)
  {
    v7 = 0;
  }

  if ((a2 & 1) == 0)
  {
    LOBYTE(v3) = v7;
  }

  *a3 = v3;
  return result;
}

uint64_t (*FeatureType.ShapedArrayParameters.dataType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  *(a1 + 8) = v3;
  sub_2576A44B8(*(v1 + v3 + 8), *(v1 + v3 + 16), &v6);
  v4 = v6;
  if (v6 == 5)
  {
    v4 = 2;
  }

  *(a1 + 12) = v4;
  return sub_2576A45A8;
}

uint64_t sub_2576A45A8(uint64_t result)
{
  v1 = *result + *(result + 8);
  *(v1 + 8) = qword_257771998[*(result + 12)];
  *(v1 + 16) = 1;
  return result;
}

uint64_t FeatureType.ShapedArrayParameters.shapeFlexibility.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_36_8();
  v16 = OUTLINED_FUNCTION_29_13(v15);
  sub_2576A6098(v1 + *(v16 + 24), v2);
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    *v0 = 0;
    *(v0 + 8) = -1;
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_2576A642C();
    OUTLINED_FUNCTION_1_55();
    sub_2576A6380();
    sub_2576A48B8();
    OUTLINED_FUNCTION_0_71();
    return sub_2576A63D4(v10, v18);
  }

  return result;
}

uint64_t sub_2576A4710@<X0>(uint64_t a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.shapeFlexibility.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2576A4754(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2576A611C(v3, v1);
  return FeatureType.ShapedArrayParameters.shapeFlexibility.setter(&v3);
}

uint64_t FeatureType.ShapedArrayParameters.shapeFlexibility.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(a1 + 8);
  if (v9 == 255)
  {
    type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    OUTLINED_FUNCTION_44();
  }

  else
  {
    v10 = *a1;

    if (v9)
    {
      sub_2576A5D40();
    }

    else
    {
      sub_2576A5AB8();
    }

    v15 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    swift_storeEnumTagMultiPayload();
    sub_2576A6108(v10, v9);
    v11 = v8;
    v12 = 0;
    v13 = 1;
    v14 = v15;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v16 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v17 = OUTLINED_FUNCTION_29_13(v16);
  return sub_257690A04(v8, v1 + *(v17 + 24));
}

void sub_2576A48B8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SizeRange();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  v17 = type metadata accessor for Proto_ArrayFeatureType.Shape(0);
  v18 = OUTLINED_FUNCTION_24(v17);
  v82 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v81 = v23 - v22;
  v24 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_205();
  sub_2576A6380();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576A642C();
    v35 = *v16;
    v36 = *(*v16 + 16);
    if (v36)
    {
      v75 = v1;
      v77 = v3;
      OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
      sub_257484640();
      v37 = v84;
      v38 = type metadata accessor for Proto_SizeRange(0);
      OUTLINED_FUNCTION_24(v38);
      v40 = v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v42 = *(v41 + 72);
      do
      {
        OUTLINED_FUNCTION_10_33();
        sub_2576A6380();
        v44 = *(v84 + 16);
        v43 = *(v84 + 24);
        if (v44 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_13_1(v43);
          sub_257484640();
        }

        *(v84 + 16) = v44 + 1;
        v45 = *(v7 + 80);
        OUTLINED_FUNCTION_193();
        v46 = *(v7 + 72);
        sub_2576A642C();
        v40 += v42;
        --v36;
      }

      while (v36);
      OUTLINED_FUNCTION_0_71();
      sub_2576A63D4(v75, v67);
      v68 = OUTLINED_FUNCTION_8_30();
LABEL_22:
      sub_2576A63D4(v68, v69);
      v3 = v77;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v1, v71);
    v72 = OUTLINED_FUNCTION_8_30();
LABEL_25:
    sub_2576A63D4(v72, v73);
    v37 = MEMORY[0x277D84F90];
LABEL_26:
    *v3 = v37;
    *(v3 + 8) = EnumCaseMultiPayload == 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_2576A642C();
  v47 = *v30;
  v48 = *(*v30 + 16);
  v49 = v30;
  if (!v48)
  {
    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v1, v74);
    OUTLINED_FUNCTION_9_30();
    v72 = v30;
    goto LABEL_25;
  }

  v76 = v1;
  v77 = v3;
  OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
  sub_257484E90();
  v50 = 0;
  v37 = v84;
  v51 = *(v82 + 80);
  OUTLINED_FUNCTION_193();
  v52 = v81;
  v79 = v48;
  v80 = v47;
  while (v50 < *(v47 + 16))
  {
    v53 = *(v82 + 72);
    sub_2576A6380();
    v54 = *v52;
    v55 = *(*v52 + 16);
    if (v55)
    {
      v56 = v49;
      v83 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_25_14();
      sub_257483724();
      v57 = v83;
      v58 = (v54 + 32);
      v59 = *(v83 + 16);
      do
      {
        v61 = *v58++;
        v60 = v61;
        v62 = *(v83 + 24);
        if (v59 >= v62 >> 1)
        {
          OUTLINED_FUNCTION_174(v62);
          sub_257483724();
        }

        *(v83 + 16) = v59 + 1;
        *(v83 + 8 * v59++ + 32) = v60;
        --v55;
      }

      while (v55);
      OUTLINED_FUNCTION_11_29();
      v52 = v81;
      sub_2576A63D4(v81, v63);
      v49 = v56;
      v48 = v79;
      v47 = v80;
    }

    else
    {
      OUTLINED_FUNCTION_11_29();
      sub_2576A63D4(v52, v64);
      v57 = MEMORY[0x277D84F90];
    }

    v66 = *(v84 + 16);
    v65 = *(v84 + 24);
    if (v66 >= v65 >> 1)
    {
      OUTLINED_FUNCTION_13_1(v65);
      sub_257484E90();
    }

    ++v50;
    *(v84 + 16) = v66 + 1;
    *(v84 + 8 * v66 + 32) = v57;
    if (v50 == v48)
    {
      OUTLINED_FUNCTION_0_71();
      sub_2576A63D4(v76, v70);
      OUTLINED_FUNCTION_9_30();
      v68 = v49;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void (*FeatureType.ShapedArrayParameters.shapeFlexibility.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[6] = __swift_coroFrameAllocStub(v10);
  v3[7] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[8] = v11;
  v12 = *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  *(v3 + 3) = v12;
  v13 = v1 + v12;
  v14 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  *(v3 + 18) = v14;
  sub_2576A6098(v13 + v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    *v3 = 0;
    *(v3 + 8) = -1;
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_2576A642C();
    OUTLINED_FUNCTION_1_55();
    sub_2576A6380();
    sub_2576A48B8();
    OUTLINED_FUNCTION_0_71();
    sub_2576A63D4(v7, v15);
  }

  return sub_2576A4F60;
}

void sub_2576A4F60(void ***a1, char a2)
{
  v7 = *a1;
  v8 = **a1;
  v9 = *(*a1 + 8);
  if (a2)
  {
    if (v9 != 255)
    {
      sub_2576A611C(**a1, v9);

      v10 = v7[6];
      if (v9)
      {
        sub_2576A5D40();
      }

      else
      {
        sub_2576A5AB8();
      }

      v13 = v7[6];
      v14 = v7[3];
      swift_storeEnumTagMultiPayload();
      sub_2576A6108(v8, v9);
    }

    OUTLINED_FUNCTION_19_23();
    __swift_storeEnumTagSinglePayload(v2, v15, 1, v16);
    sub_257690A04(v2, v6 + v5);
    sub_2576A6108(*v7, *(v7 + 8));
  }

  else
  {
    if (v9 != 255)
    {
      v11 = **a1;

      v12 = v7[7];
      if (v9)
      {
        sub_2576A5D40();
      }

      else
      {
        sub_2576A5AB8();
      }

      v17 = v7[7];
      v18 = v7[3];
      swift_storeEnumTagMultiPayload();
      sub_2576A6108(v8, v9);
    }

    OUTLINED_FUNCTION_19_23();
    __swift_storeEnumTagSinglePayload(v9, v19, 1, v20);
    sub_257690A04(v9, v6 + v5);
  }

  free(v8);
  free(v9);
  free(v2);
  free(v3);
  free(v4);

  free(v7);
}

double FeatureType.ShapedArrayParameters.defaultValue.getter()
{
  v1 = v0 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  v2 = type metadata accessor for Proto_ArrayFeatureType(0);
  OUTLINED_FUNCTION_33_9(v2);
  result = OUTLINED_FUNCTION_14_15(v3);
  if (v4 == 1)
  {
    result = v7;
  }

  if (!v4)
  {
    return v6;
  }

  return result;
}

void FeatureType.ShapedArrayParameters.defaultValue.setter(double a1)
{
  v3 = v1 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  v4 = *(v3 + 8);
  if (*(v3 + 16) == 1)
  {
    switch(v4)
    {
      case 1:
      case 5:
        goto LABEL_7;
      case 3:
        goto LABEL_9;
      default:
        goto LABEL_8;
    }
  }

  if (v4 != 131104)
  {
    if (v4 == 65568)
    {
      goto LABEL_7;
    }

    if (v4 != 0x20000)
    {
      if (v4 != 65552)
      {
LABEL_8:
        v10 = type metadata accessor for Proto_ArrayFeatureType(0);
        OUTLINED_FUNCTION_33_9(v10);
        *v8 = a1;
        v9 = 2;
        goto LABEL_19;
      }

LABEL_7:
      *&v5 = a1;
      v6 = v5;
      v7 = type metadata accessor for Proto_ArrayFeatureType(0);
      OUTLINED_FUNCTION_33_9(v7);
      *v8 = v6;
      v9 = 1;
LABEL_19:
      *(v8 + 8) = v9;
      return;
    }

    goto LABEL_14;
  }

LABEL_9:
  OUTLINED_FUNCTION_30_11();
  if (!(v12 ^ v13 | v11))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a1 <= -2147483650.0)
  {
    goto LABEL_20;
  }

  if (a1 < 2147483650.0)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_14:
  OUTLINED_FUNCTION_30_11();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_21;
  }

  if (a1 <= -2147483650.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 2147483650.0)
  {
LABEL_18:
    v14 = type metadata accessor for Proto_ArrayFeatureType(0);
    OUTLINED_FUNCTION_33_9(v14);
    *v8 = a1;
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

void (*FeatureType.ShapedArrayParameters.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v4 = OUTLINED_FUNCTION_29_13(v3);
  v6 = OUTLINED_FUNCTION_14_15((v1 + *(v4 + 28)));
  if (v5 == 1)
  {
    v6 = v8;
  }

  if (!v5)
  {
    v6 = v7;
  }

  *a1 = v6;
  return sub_2576A52E4;
}

void sub_2576A530C()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for SizeRange();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v53 = *v0;
  v11 = *(*v0 + 16);
  if (v0[8])
  {
    if (v11)
    {
      sub_257484040(0, v11, 0);
      v12 = *(v5 + 80);
      OUTLINED_FUNCTION_193();
      v14 = v53 + v13;
      v15 = *(v5 + 72);
      do
      {
        OUTLINED_FUNCTION_13_19();
        sub_2576A6380();
        if (v10[1] < 0)
        {
          if (*v10 < 0)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_35_9(*v10);
          v19 = sub_257743974();
          OUTLINED_FUNCTION_28_17(v19, v20);
        }

        else
        {
          if (*v10 < 0)
          {
            goto LABEL_28;
          }

          OUTLINED_FUNCTION_35_9(*v10);
          v16 = sub_257743974();
          OUTLINED_FUNCTION_28_17(v16, v17);
          v18 = sub_257743974();
          MEMORY[0x259C64E90](v18);
        }

        OUTLINED_FUNCTION_15_16();
        v21 = v1;
        v23 = *(v1 + 16);
        v22 = *(v1 + 24);
        if (v23 >= v22 >> 1)
        {
          v25 = OUTLINED_FUNCTION_13_1(v22);
          sub_257484040(v25, v23 + 1, 1);
          v21 = v1;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 24 * v23;
        *(v24 + 32) = v55;
        *(v24 + 40) = v57;
        *(v24 + 48) = 0;
        v14 += v15;
      }

      while (v5 != 1);
    }

    goto LABEL_26;
  }

  v26 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_26:
    OUTLINED_FUNCTION_35();
    return;
  }

  v56 = MEMORY[0x277D84F90];
  sub_257484040(0, v11, 0);
  v27 = 0;
  v52 = v53 + 32;
  v51 = v11;
  while (v27 < *(v53 + 16))
  {
    v54 = v27;
    v28 = *(v52 + 8 * v27);
    v29 = *(v28 + 16);
    if (v29)
    {

      v30 = OUTLINED_FUNCTION_25_14();
      sub_257483754(v30, v31, v32);
      v33 = v26;
      v34 = (v28 + 32);
      do
      {
        v35 = *v34++;
        v36 = sub_257743974();
        v38 = v37;
        v40 = *(v33 + 16);
        v39 = *(v33 + 24);
        if (v40 >= v39 >> 1)
        {
          v42 = OUTLINED_FUNCTION_13_1(v39);
          sub_257483754(v42, v40 + 1, 1);
        }

        *(v33 + 16) = v40 + 1;
        v41 = v33 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        --v29;
      }

      while (v29);
      v11 = v51;
      v26 = MEMORY[0x277D84F90];
    }

    else
    {
      v43 = *(v52 + 8 * v27);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    v44 = sub_257743604();
    v46 = v45;

    v48 = *(v56 + 16);
    v47 = *(v56 + 24);
    if (v48 >= v47 >> 1)
    {
      v50 = OUTLINED_FUNCTION_174(v47);
      sub_257484040(v50, v48 + 1, 1);
    }

    v27 = v54 + 1;
    *(v56 + 16) = v48 + 1;
    v49 = v56 + 24 * v48;
    *(v49 + 32) = v44;
    *(v49 + 40) = v46;
    *(v49 + 48) = 0;
    if (v54 + 1 == v11)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}