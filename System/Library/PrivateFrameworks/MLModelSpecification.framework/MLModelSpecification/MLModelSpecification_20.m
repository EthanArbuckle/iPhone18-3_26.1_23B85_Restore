uint64_t ImputerConfiguration.missingValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Proto_Imputer(0);
  v4 = 0;
  v5 = v1 + *(result + 20);
  v6 = *v5;
  v7 = *(v5 + 16);
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -1;
      return result;
    }

    v4 = *(v5 + 8);
    result = sub_257466F40(*v5, v4, 2);
  }

  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  return result;
}

double sub_257680198@<D0>(uint64_t a1@<X8>)
{
  ImputerConfiguration.missingValue.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2576801DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_25745D184(v4[0], v1, v2);
  return ImputerConfiguration.missingValue.setter(v4);
}

uint64_t ImputerConfiguration.missingValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (!*(a1 + 16) || v3 == 1)
  {
    goto LABEL_6;
  }

  if (v3 != 2)
  {
    v2 = 0;
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = a1[1];
LABEL_7:
  v5 = v1 + *(type metadata accessor for Proto_Imputer(0) + 20);
  result = sub_257467084(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v4;
  *(v5 + 16) = v3;
  return result;
}

void (*ImputerConfiguration.missingValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for Proto_Imputer(0);
  v5 = 0;
  v6 = *(v4 + 20);
  *(v3 + 5) = v6;
  v7 = (v1 + v6);
  v8 = *v7;
  v3[4] = *v7;
  v9 = v7[1];
  v3[5] = v9;
  v10 = *(v7 + 16);
  *(v3 + 17) = v10;
  if (v10 < 2)
  {
    goto LABEL_5;
  }

  if (v10 == 2)
  {
    v11 = OUTLINED_FUNCTION_263();
    sub_257466F40(v11, v12, 2);
    v5 = v9;
LABEL_5:
    *v3 = v8;
    v3[1] = v5;
    *(v3 + 16) = v10;
    return sub_257680360;
  }

  *v3 = 0;
  v3[1] = 0;
  *(v3 + 16) = -1;
  return sub_257680360;
}

void sub_257680360(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  if (a2)
  {
    v5 = *(v3 + 16);
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = v3[1];

LABEL_11:
        OUTLINED_FUNCTION_22_14();
        *v2 = v4;
        *(v2 + 8) = v6;
        *(v2 + 16) = v5;
        sub_257467084(*v3, v3[1], *(v3 + 16));
        goto LABEL_14;
      }

      v4 = 0;
    }

    v6 = 0;
    goto LABEL_11;
  }

  v7 = *(v3 + 16);
  if (v7 < 2)
  {
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    v4 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = v3[1];
LABEL_13:
  OUTLINED_FUNCTION_22_14();
  *v2 = v4;
  *(v2 + 8) = v8;
  *(v2 + 16) = v7;
LABEL_14:

  free(v3);
}

uint64_t ImputerConfiguration.imputedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_257680590(v2, &v24 - v17);
  result = __swift_getEnumTagSinglePayload(v18, 1, v4);
  if (result == 1)
  {
    v20 = 0;
    v21 = 0uLL;
  }

  else
  {
    sub_25768378C(v18, v12);
    OUTLINED_FUNCTION_1_44();
    v22 = OUTLINED_FUNCTION_173();
    sub_257681988(v22, v23);
    sub_257680758(v10, &v25);
    v24 = v25;
    v20 = v26;
    result = sub_2574D7A2C(v12, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    v21 = v24;
  }

  *a1 = v21;
  *(a1 + 16) = v20;
  return result;
}

uint64_t sub_257680590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_257680600@<D0>(uint64_t a1@<X8>)
{
  ImputerConfiguration.imputedValue.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_257680644(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_257681F30(v4[0], v1, v2);
  return ImputerConfiguration.imputedValue.setter(v4);
}

uint64_t ImputerConfiguration.imputedValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v8;
  v17 = v9;
  sub_257680CEC((v16 - v6));
  v10 = OUTLINED_FUNCTION_277();
  sub_257680E94(v10, v11, v9);
  v12 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  v13 = OUTLINED_FUNCTION_292();
  return sub_257680ED4(v13, v14);
}

void sub_257680758(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_Int64ToDoubleMap(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Proto_StringToDoubleMap(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  v18 = type metadata accessor for Proto_Int64Vector(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = type metadata accessor for Proto_DoubleVector(0);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = (v30 - v29);
  v32 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v38 = (v37 - v36);
  OUTLINED_FUNCTION_1_44();
  sub_257681988(a1, v38);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_56();
      v39 = 0;
      v41 = *v38;
      v40 = 1;
      goto LABEL_37;
    case 2u:
      OUTLINED_FUNCTION_0_56();
      v41 = *v38;
      v39 = v38[1];
      v40 = 2;
      goto LABEL_37;
    case 3u:
      OUTLINED_FUNCTION_0_56();
      sub_25768378C(v38, v31);
      v41 = *v31;

      sub_2574D7A2C(v31, type metadata accessor for Proto_DoubleVector);
      v39 = 0;
      v40 = 3;
      goto LABEL_37;
    case 4u:
      sub_25768378C(v38, v24);
      v42 = *v24;
      v43 = *(*v24 + 16);
      if (v43)
      {
        v77 = MEMORY[0x277D84F90];
        sub_257483724();
        v41 = v77;
        v44 = (v42 + 32);
        v45 = *(v77 + 16);
        do
        {
          v47 = *v44++;
          v46 = v47;
          v48 = *(v77 + 24);
          if (v45 >= v48 >> 1)
          {
            OUTLINED_FUNCTION_174(v48);
            sub_257483724();
          }

          *(v77 + 16) = v45 + 1;
          *(v77 + 8 * v45++ + 32) = v46;
          --v43;
        }

        while (v43);
        OUTLINED_FUNCTION_0_56();
        OUTLINED_FUNCTION_10_26();
      }

      else
      {
        OUTLINED_FUNCTION_0_56();
        OUTLINED_FUNCTION_10_26();
        v41 = MEMORY[0x277D84F90];
      }

      v39 = 0;
      v40 = 4;
      goto LABEL_37;
    case 5u:
      OUTLINED_FUNCTION_0_56();
      sub_25768378C(v38, v17);
      v41 = *v17;

      sub_2574D7A2C(v17, type metadata accessor for Proto_StringToDoubleMap);
      v39 = 0;
      v40 = 5;
      goto LABEL_37;
    case 6u:
      sub_25768378C(v38, v10);
      v49 = *v10;
      v50 = MEMORY[0x277D84F90];
      if (!*(*v10 + 16))
      {
        goto LABEL_34;
      }

      v74 = v10;
      v75 = a2;
      v76 = *(*v10 + 16);
      v78 = MEMORY[0x277D84F90];
      sub_257484D60();
      v50 = v78;
      v52 = sub_25774107C(v49);
      v54 = v53;
      v55 = v76;
      v56 = 0;
      v57 = v49 + 64;
      v58 = 1;
      v59 = -2;
      if (v52 < 0)
      {
        goto LABEL_38;
      }

      break;
    default:
      OUTLINED_FUNCTION_0_56();
      v39 = 0;
      v40 = 0;
      v41 = *v38;
      goto LABEL_37;
  }

  while (1)
  {
    if (v52 >= v58 << *(v49 + 32))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v60 = v52 >> 6;
    v61 = v58 << v52;
    if ((*(v57 + 8 * (v52 >> 6)) & (v58 << v52)) == 0)
    {
      goto LABEL_39;
    }

    if (*(v49 + 36) != v54)
    {
      goto LABEL_40;
    }

    v62 = *(*(v49 + 48) + 8 * v52);
    v63 = *(*(v49 + 56) + 8 * v52);
    v64 = *(v78 + 16);
    if (v64 >= *(v78 + 24) >> 1)
    {
      sub_257484D60();
      OUTLINED_FUNCTION_16_11();
    }

    *(v78 + 16) = v64 + 1;
    v65 = v78 + 16 * v64;
    *(v65 + 32) = v62;
    *(v65 + 40) = v63;
    v66 = v58 << *(v49 + 32);
    if (v52 >= v66)
    {
      goto LABEL_41;
    }

    v67 = *(v57 + 8 * v60);
    if ((v67 & v61) == 0)
    {
      goto LABEL_42;
    }

    if (*(v49 + 36) != v54)
    {
      goto LABEL_43;
    }

    v68 = v67 & (v59 << (v52 & 0x3F));
    if (v68)
    {
      v66 = __clz(__rbit64(v68)) | v52 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v69 = v60 << 6;
      v70 = v60 + 1;
      v71 = (v49 + 72 + 8 * v60);
      while (v70 < (v66 + 63) >> 6)
      {
        v73 = *v71++;
        v72 = v73;
        v69 += 64;
        ++v70;
        if (v73)
        {
          sub_257653FC0(v52, v54, v51 & 1);
          OUTLINED_FUNCTION_16_11();
          v66 = __clz(__rbit64(v72)) + v69;
          goto LABEL_30;
        }
      }

      sub_257653FC0(v52, v54, v51 & 1);
      OUTLINED_FUNCTION_16_11();
    }

LABEL_30:
    if (++v56 == v55)
    {
      break;
    }

    v51 = 0;
    v54 = *(v49 + 36);
    v52 = v66;
    if (v66 < 0)
    {
      goto LABEL_38;
    }
  }

  a2 = v75;
  v10 = v74;
LABEL_34:
  v41 = sub_25772E834(v50);
  OUTLINED_FUNCTION_0_56();
  sub_2574D7A2C(v10, type metadata accessor for Proto_Int64ToDoubleMap);
  v39 = 0;
  v40 = 6;
LABEL_37:
  *a2 = v41;
  *(a2 + 8) = v39;
  *(a2 + 16) = v40;
}

uint64_t sub_257680CEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  switch(*(v1 + 16))
  {
    case 2:
      *a1 = v3;
      a1[1] = v2;
      type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
      OUTLINED_FUNCTION_18_1();
      swift_storeEnumTagMultiPayload();

    case 3:
      v7 = a1 + *(type metadata accessor for Proto_DoubleVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_18_1();
      swift_storeEnumTagMultiPayload();

      return sub_257681F30(v3, v2, 3);
    case 4:
      v5 = *v1;

      sub_25764CFE8();
      type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
      OUTLINED_FUNCTION_18_1();
      goto LABEL_12;
    case 5:
      v8 = *v1;

      sub_2577435D4();
      v9 = OUTLINED_FUNCTION_30();
      v10 = a1 + *(type metadata accessor for Proto_StringToDoubleMap(v9) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_18_1();
      goto LABEL_12;
    case 6:
      v11 = *v1;

      sub_25772E588(v12, a1);
      type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
      OUTLINED_FUNCTION_18_1();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_18_1();
LABEL_12:

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_257680E94(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257680ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*ImputerConfiguration.imputedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[3] = v2;
  v5 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v4[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[5] = v8;
  v9 = __swift_coroFrameAllocStub(v7);
  v4[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v4[7] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v4[8] = v13;
  sub_257680590(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v14 = 0;
    v15 = 0uLL;
  }

  else
  {
    sub_25768378C(v13, v9);
    OUTLINED_FUNCTION_1_44();
    sub_257681988(v9, v8);
    sub_257680758(v8, &v20);
    v19 = v20;
    v14 = v21;
    v16 = OUTLINED_FUNCTION_277();
    sub_2574D7A2C(v16, v17);
    v15 = v19;
  }

  *v4 = v15;
  *(v4 + 16) = v14;
  return sub_2576810DC;
}

void sub_2576810DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[7];
  v7 = (*a1)[8];
  v8 = (*a1)[6];
  v11 = (*a1)[5];
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  if (a2)
  {
    OUTLINED_FUNCTION_28_14();
    OUTLINED_FUNCTION_24_13();
    sub_257680E94(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    OUTLINED_FUNCTION_28_14();
    sub_257680E94(v3, v4, v5);
    OUTLINED_FUNCTION_24_13();
  }

  free(v7);
  free(v6);
  free(v8);
  free(v11);

  free(v2);
}

uint64_t sub_2576811A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  switch(*(v8 + 16))
  {
    case 1:
      v58 = *v8;
      goto LABEL_17;
    case 2:
      v20 = *(v8 + 8);
      v59 = 0xE100000000000000;
      MEMORY[0x259C64E90](v10, v20);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      return 34;
    case 3:
      v21 = *(v10 + 16);
      v12 = MEMORY[0x277D84F90];
      if (v21)
      {
        v58 = MEMORY[0x277D84F90];
        v22 = OUTLINED_FUNCTION_5_31();
        sub_257484040(v22, v23, v24);
        v12 = v58;
        v25 = (v10 + 32);
        do
        {
          v60 = *v25;
          sub_257743674();
          OUTLINED_FUNCTION_15_12();
          if (v19)
          {
            sub_257484040((v26 > 1), v9, 1);
            v12 = v58;
          }

          OUTLINED_FUNCTION_30_8();
          ++v25;
          --v21;
        }

        while (v21);
      }

      return v12;
    case 4:
      v11 = *(v10 + 16);
      v12 = MEMORY[0x277D84F90];
      if (v11)
      {
        v58 = MEMORY[0x277D84F90];
        v13 = OUTLINED_FUNCTION_5_31();
        sub_257484040(v13, v14, v15);
        v12 = v58;
        v16 = (v10 + 32);
        do
        {
          v17 = *v16++;
          v60 = v17;
          sub_257743674();
          OUTLINED_FUNCTION_15_12();
          if (v19)
          {
            sub_257484040((v18 > 1), v9, 1);
            v12 = v58;
          }

          OUTLINED_FUNCTION_30_8();
          --v11;
        }

        while (v11);
      }

      return v12;
    case 5:
      sub_2576A8B24(*v8, a2, a3, a4, a5, a6, a7, a8, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v58 = v27;
      sub_25768223C(&v58);
      v28 = v58;
      v29 = *(v58 + 16);
      if (v29)
      {
        v58 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_31();
        sub_257484060();
        v30 = v58;
        v31 = (v28 + 48);
        do
        {
          v32 = *(v31 - 2);
          v33 = *(v31 - 1);
          v60 = *v31;

          v34 = sub_257743674();
          v36 = v35;
          v58 = v30;
          v37 = *(v30 + 16);
          if (v37 >= *(v30 + 24) >> 1)
          {
            sub_257484060();
            v30 = v58;
          }

          *(v30 + 16) = v37 + 1;
          v38 = v30 + 40 * v37;
          *(v38 + 32) = v32;
          *(v38 + 40) = v33;
          *(v38 + 48) = v34;
          *(v38 + 56) = v36;
          *(v38 + 64) = 0;
          v31 += 3;
          --v29;
        }

        while (v29);
      }

      else
      {

        v30 = MEMORY[0x277D84F90];
      }

      v54 = v30;
      goto LABEL_34;
    case 6:
      sub_2576A8AF8(*v8, a2, a3, a4, a5, a6, a7, a8, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v58 = v39;
      sub_257682198(&v58);
      v40 = v58;
      v41 = *(v58 + 16);
      if (v41)
      {
        v58 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_31();
        sub_257484060();
        v42 = v58;
        v43 = (v40 + 40);
        do
        {
          v44 = *v43;
          v60 = *(v43 - 1);
          v45 = sub_257743974();
          v47 = v46;
          v60 = v44;
          v48 = sub_257743674();
          v50 = v49;
          v58 = v42;
          v52 = *(v42 + 16);
          v51 = *(v42 + 24);
          if (v52 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_174(v51);
            sub_257484060();
            v42 = v58;
          }

          *(v42 + 16) = v52 + 1;
          v53 = v42 + 40 * v52;
          *(v53 + 32) = v45;
          *(v53 + 40) = v47;
          *(v53 + 48) = v48;
          *(v53 + 56) = v50;
          *(v53 + 64) = 0;
          v43 += 2;
          --v41;
        }

        while (v41);
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
      }

      v54 = v42;
LABEL_34:
      v12 = sub_2576AACFC(v54);
      break;
    default:
      v58 = *v8;
LABEL_17:
      v12 = sub_257743674();
      break;
  }

  return v12;
}

uint64_t ImputerConfiguration.init(missingValue:imputedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = (v36 - v10);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  OUTLINED_FUNCTION_19_18();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = type metadata accessor for Proto_Imputer(0);
  v23 = a3 + *(v22 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v14 == 2)
  {
    v24 = v12;
  }

  else
  {
    v24 = 0;
  }

  if (v14 == 2)
  {
    v25 = v13;
  }

  else
  {
    v25 = 0;
  }

  if (v14 == 1)
  {
    v24 = v12;
    v25 = 0;
  }

  if (!v14)
  {
    v24 = v12;
    v25 = 0;
  }

  v26 = a3 + *(v22 + 20);
  *v26 = v24;
  *(v26 + 8) = v25;
  *(v26 + 16) = v14;
  v36[1] = v15;
  v36[2] = v16;
  v37 = v17;
  sub_257680CEC(v11);
  v27 = OUTLINED_FUNCTION_277();
  sub_257680E94(v27, v28, v17);
  OUTLINED_FUNCTION_19_18();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_292();
  return sub_257680ED4(v33, v34);
}

uint64_t ImputerConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ImputerConfiguration();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  sub_257681988(v0, v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257743FF0;
  strcpy((v19 + 32), "missingValue");
  *(v19 + 45) = 0;
  *(v19 + 46) = -5120;
  *(v19 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880B50, &qword_25776F628);
  ImputerConfiguration.missingValue.getter(v19 + 48);
  strcpy((v19 + 80), "imputedValue");
  *(v19 + 93) = 0;
  *(v19 + 94) = -5120;
  *(v19 + 120) = &type metadata for ImputerConfiguration.ImputedValue;
  ImputerConfiguration.imputedValue.getter(v19 + 96);
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v20);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for ImputerConfiguration()
{
  result = qword_281537CF8;
  if (!qword_281537CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257681988(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t static ImputerConfiguration.MissingValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v6 == 1)
      {
        v7 = OUTLINED_FUNCTION_368();
        sub_257467018(v7, v8, 1);
        v9 = OUTLINED_FUNCTION_188_1();
        sub_257467018(v9, v10, 1);
        return *&v2 == *&v5;
      }

      goto LABEL_15;
    }

    if (v6 == 2)
    {
      v18 = *a1;
      if (*&v2 != *&v5 || v3 != *(a2 + 8))
      {
        v20 = sub_257743994();
        v21 = OUTLINED_FUNCTION_188_1();
        sub_257466F40(v21, v22, 2);
        v23 = OUTLINED_FUNCTION_7_26();
        sub_257466F40(v23, v24, v25);
        v26 = OUTLINED_FUNCTION_7_26();
        sub_257467018(v26, v27, v28);
        v29 = OUTLINED_FUNCTION_188_1();
        sub_257467018(v29, v30, 2);
        return v20 & 1;
      }

      sub_257466F40(*&v18, v3, 2);
      v38 = OUTLINED_FUNCTION_7_26();
      sub_257466F40(v38, v39, v40);
      v41 = OUTLINED_FUNCTION_7_26();
      sub_257467018(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_7_26();
      sub_257467018(v44, v45, v46);
      return 1;
    }

    v31 = *(a1 + 8);

LABEL_15:
    v32 = OUTLINED_FUNCTION_188_1();
    sub_257466F40(v32, v33, v6);
    v34 = OUTLINED_FUNCTION_368();
    sub_257467018(v34, v35, v4);
    v36 = OUTLINED_FUNCTION_188_1();
    sub_257467018(v36, v37, v6);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_15;
  }

  v12 = *a1;
  v13 = *a2;
  v14 = OUTLINED_FUNCTION_368();
  sub_257467018(v14, v15, 0);
  v16 = OUTLINED_FUNCTION_188_1();
  sub_257467018(v16, v17, 0);
  return v2 == v5;
}

uint64_t ImputerConfiguration.MissingValue.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x259C651F0](1);
      return MEMORY[0x259C651F0](v1);
    }

    else
    {
      v4 = v0[1];
      MEMORY[0x259C651F0](2);
      OUTLINED_FUNCTION_44_1();

      return sub_257743694();
    }
  }

  else
  {
    MEMORY[0x259C651F0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x259C65220](v3);
  }
}

uint64_t ImputerConfiguration.MissingValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_257743A14();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x259C651F0](1);
      MEMORY[0x259C651F0](v1);
    }

    else
    {
      MEMORY[0x259C651F0](2);
      sub_257743694();
    }
  }

  else
  {
    MEMORY[0x259C651F0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x259C65220](v4);
  }

  return sub_257743A64();
}

BOOL static ImputerConfiguration.ImputedValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_23;
      }

      v42 = OUTLINED_FUNCTION_263();
      sub_257680E94(v42, v43, 1);
      v44 = OUTLINED_FUNCTION_44_1();
      sub_257680E94(v44, v45, 1);
      return v2 == *&v5;
    case 2:
      v26 = *(a1 + 8);
      if (v6 != 2)
      {
        goto LABEL_22;
      }

      if (v2 != *&v5 || v3 != *(a2 + 8))
      {
        v16 = sub_257743994();
        v28 = OUTLINED_FUNCTION_44_1();
        v30 = OUTLINED_FUNCTION_4_30(v28, v29, 2);
        v32 = OUTLINED_FUNCTION_4_30(v30, v31, 2);
        sub_257680E94(v32, v33, 2);
        v23 = OUTLINED_FUNCTION_44_1();
        v25 = 2;
        goto LABEL_20;
      }

      v69 = OUTLINED_FUNCTION_4_30(v2, v3, 2);
      v71 = OUTLINED_FUNCTION_4_30(v69, v70, 2);
      sub_257680E94(v71, v72, 2);
      v73 = OUTLINED_FUNCTION_263();
      sub_257680E94(v73, v74, 2);
      return 1;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_21;
      }

      v34 = OUTLINED_FUNCTION_173();
      v16 = sub_257479D04(v34, v35);
      v36 = OUTLINED_FUNCTION_44_1();
      v38 = OUTLINED_FUNCTION_4_30(v36, v37, 3);
      v40 = OUTLINED_FUNCTION_4_30(v38, v39, 3);
      sub_257680E94(v40, v41, 3);
      v23 = OUTLINED_FUNCTION_44_1();
      v25 = 3;
      goto LABEL_20;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_21;
      }

      v14 = OUTLINED_FUNCTION_173();
      v16 = sub_257487374(v14, v15);
      v17 = OUTLINED_FUNCTION_44_1();
      v19 = OUTLINED_FUNCTION_4_30(v17, v18, 4);
      v21 = OUTLINED_FUNCTION_4_30(v19, v20, 4);
      sub_257680E94(v21, v22, 4);
      v23 = OUTLINED_FUNCTION_44_1();
      v25 = 4;
      goto LABEL_20;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_21;
      }

      v46 = OUTLINED_FUNCTION_44_1();
      v48 = OUTLINED_FUNCTION_4_30(v46, v47, 5);
      sub_257681F30(v48, v49, 5);
      OUTLINED_FUNCTION_173();
      sub_257476CF4();
      v16 = v50;
      v51 = OUTLINED_FUNCTION_263();
      sub_257680E94(v51, v52, 5);
      v23 = OUTLINED_FUNCTION_44_1();
      v25 = 5;
      goto LABEL_20;
    case 6:
      if (v6 == 6)
      {
        v53 = OUTLINED_FUNCTION_173();
        sub_257477924(v53, v54);
        v16 = v55;
        v56 = OUTLINED_FUNCTION_44_1();
        v58 = OUTLINED_FUNCTION_4_30(v56, v57, 6);
        v60 = OUTLINED_FUNCTION_4_30(v58, v59, 6);
        sub_257680E94(v60, v61, 6);
        v23 = OUTLINED_FUNCTION_44_1();
        v25 = 6;
LABEL_20:
        sub_257680E94(v23, v24, v25);
        result = v16 & 1;
      }

      else
      {
LABEL_21:
        v62 = *a1;
LABEL_22:

LABEL_23:
        v63 = OUTLINED_FUNCTION_44_1();
        v65 = OUTLINED_FUNCTION_4_30(v63, v64, v6);
        sub_257680E94(v65, v66, v4);
        v67 = OUTLINED_FUNCTION_44_1();
        sub_257680E94(v67, v68, v6);
        result = 0;
      }

      break;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_23;
      }

      v7 = *a1;
      v8 = *a2;
      v9 = OUTLINED_FUNCTION_263();
      sub_257680E94(v9, v10, 0);
      v11 = OUTLINED_FUNCTION_44_1();
      sub_257680E94(v11, v12, 0);
      result = *&v2 == v5;
      break;
  }

  return result;
}

uint64_t sub_257681F30(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

void ImputerConfiguration.ImputedValue.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      MEMORY[0x259C651F0](1);
      MEMORY[0x259C651F0](v1);
      break;
    case 2:
      v5 = v0[1];
      MEMORY[0x259C651F0](2);
      OUTLINED_FUNCTION_292();

      sub_257743694();
      break;
    case 3:
      MEMORY[0x259C651F0](3);
      v6 = OUTLINED_FUNCTION_292();

      sub_257667984(v6, v7);
      break;
    case 4:
      MEMORY[0x259C651F0](4);
      v3 = OUTLINED_FUNCTION_292();

      sub_257668300(v3, v4);
      break;
    case 5:
      MEMORY[0x259C651F0](5);
      v8 = OUTLINED_FUNCTION_292();

      sub_25749B204(v8, v9);
      break;
    case 6:
      MEMORY[0x259C651F0](6);
      v10 = OUTLINED_FUNCTION_292();

      sub_25749B108(v10, v11);
      break;
    default:
      MEMORY[0x259C651F0](0);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v2 = v1;
      }

      else
      {
        v2 = 0;
      }

      MEMORY[0x259C65220](v2);
      break;
  }
}

uint64_t ImputerConfiguration.ImputedValue.hashValue.getter()
{
  OUTLINED_FUNCTION_18_21();
  sub_257743A14();
  ImputerConfiguration.ImputedValue.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_25768214C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  OUTLINED_FUNCTION_18_21();
  sub_257743A14();
  a4(v6);
  return sub_257743A64();
}

uint64_t sub_257682198(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC214(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576822E0(v6, &qword_27F880B68, &unk_25776F930, sub_257682550, sub_2576823FC);
  *a1 = v2;
  return result;
}

uint64_t sub_25768223C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC22C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576822E0(v6, &qword_27F879FF8, &unk_257744930, sub_257682A38, sub_257682474);
  *a1 = v2;
  return result;
}

uint64_t sub_2576822E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_257743964();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_257743764();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2576823FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_257682474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_257743994();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = v12[3];
        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_257682550(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = v8[2];
        sub_257469A28();
        v8 = v81;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v82;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_2576831F0((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_257682F8C(&v88, *a1, a3);
LABEL_89:
}

void sub_257682A38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_257743994();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_257743994()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v7 < v31)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
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
            return;
          }

          if (v7 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v7 - 24;
            v95 = v9;
            v35 = v9 - v7;
            do
            {
              v36 = (v33 + 24 * v7);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == v40[1];
                if (v41 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = v40[3];
                v38 = v40[4];
                v42 = v40[5];
                v43 = v40[2];
                *(v40 + 3) = *v40;
                v40[5] = v43;
                *v40 = v37;
                v40[1] = v38;
                v40[2] = v42;
                v40 -= 3;
              }

              while (!__CFADD__(v39++, 1));
              ++v7;
              v34 += 24;
              --v35;
            }

            while (v7 != v32);
            v7 = v32;
            v9 = v95;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v8[2];
        sub_257469A28();
        v8 = v90;
      }

      v45 = v8[2];
      v46 = v45 + 1;
      if (v45 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v91;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v94 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_257683374((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v96);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v94;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_2576830B8(&v98, *a1, a3);
LABEL_103:
}

uint64_t sub_257682F8C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2576831F0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2576830B8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_257683374((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2576831F0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_257483384(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_257483384(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_257683374(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2574834A8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_257743994() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_2574834A8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_257743994() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

unint64_t sub_257683540()
{
  result = qword_27F87AEB0;
  if (!qword_27F87AEB0)
  {
    type metadata accessor for Proto_Imputer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AEB0);
  }

  return result;
}

unint64_t sub_25768359C()
{
  result = qword_27F880B58;
  if (!qword_27F880B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B58);
  }

  return result;
}

unint64_t sub_2576835F4()
{
  result = qword_27F880B60;
  if (!qword_27F880B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B60);
  }

  return result;
}

uint64_t sub_257683670()
{
  result = type metadata accessor for Proto_Imputer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576836F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_257683738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25768378C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return sub_2574D7A2C(v0, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_2574D7A2C(v0, type metadata accessor for Proto_Int64Vector);
}

__n128 OUTLINED_FUNCTION_18_21()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24) + *(v0 + 20);
  v5 = *(v0 + 17);

  return sub_257467084(v2, v3, v5);
}

uint64_t OUTLINED_FUNCTION_24_13()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);

  return sub_257680ED4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_257680CEC(v0);
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  *v0 = v1;

  return type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
}

void static NeuralNetwork.Layer.upsample(name:inputName:outputName:scalingFactor:interpolation:linearUpsamplingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  OUTLINED_FUNCTION_31();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_8_23(v31, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = OUTLINED_FUNCTION_12_13();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v41 = v40 - v39;
  v49 = *v26;
  v48 = *a21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v42 = OUTLINED_FUNCTION_13_6();
  *(v42 + 16) = xmmword_2577442B0;
  *(v42 + 32) = v24;
  *(v42 + 40) = v23;
  v43 = OUTLINED_FUNCTION_13_6();
  *(v43 + 16) = xmmword_2577442B0;
  *(v43 + 32) = v30;
  *(v43 + 40) = v28;
  v44 = MEMORY[0x277D84F90];
  *v41 = MEMORY[0x277D84F90];
  *(v41 + 8) = v44;
  *(v41 + 16) = 0;
  *(v41 + 24) = 1;
  *(v41 + 32) = 0;
  *(v41 + 40) = 1;
  LODWORD(v30) = *(type metadata accessor for Proto_UpsampleLayerParams(0) + 32);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v45);
  *(v41 + 16) = v49;
  *(v41 + 24) = 1;
  *(v41 + 32) = v48;
  *(v41 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v46 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v21 + v46) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v43);
  sub_2574897E0(v22);
  v47 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v47);
  sub_257634BB4(v41);
  OUTLINED_FUNCTION_35();
}

{
  OUTLINED_FUNCTION_31();
  v26 = v25;
  v50 = v27;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_8_23(v32, v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = OUTLINED_FUNCTION_12_13();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v42 = v41 - v40;
  v49 = *v26;
  v48 = *a21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v43 = OUTLINED_FUNCTION_13_6();
  *(v43 + 16) = xmmword_2577442B0;
  *(v43 + 32) = v24;
  *(v43 + 40) = v23;
  v44 = OUTLINED_FUNCTION_13_6();
  *(v44 + 16) = xmmword_2577442B0;
  *(v44 + 32) = v31;
  *(v44 + 40) = v29;
  v45 = MEMORY[0x277D84F90];
  *v42 = MEMORY[0x277D84F90];
  *(v42 + 8) = v45;
  *(v42 + 16) = 0;
  *(v42 + 24) = 1;
  *(v42 + 32) = 0;
  *(v42 + 40) = 1;
  LODWORD(v31) = *(type metadata accessor for Proto_UpsampleLayerParams(0) + 32);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(v42 + 8) = v50;
  *(v42 + 16) = v49;
  *(v42 + 24) = 1;
  *(v42 + 32) = v48;
  *(v42 + 40) = 1;
  swift_storeEnumTagMultiPayload();

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v46 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v21 + v46) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v44);
  sub_2574897E0(v22);
  v47 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v47);
  sub_257634BB4(v42);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.upsample(scalingFactor:interpolation:linearUpsamplingMode:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_1_45(a1, a2, a3);
  v5 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v5);

  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v6);
  *(v3 + 16) = v4;
  OUTLINED_FUNCTION_3_42();
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

{
  OUTLINED_FUNCTION_1_45(a1, a2, a3);
  v6 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v6);
  *(v4 + 8) = v3;
  *(v4 + 16) = v5;
  OUTLINED_FUNCTION_3_42();
  type metadata accessor for NeuralNetwork.Layer.Kind();
  swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.UpsampleParameters.init(scalingFactor:interpolation:linearUpsamplingMode:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_1_45(a1, a2, a3);
  v6 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v6);
  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v3);
  *(v4 + 16) = v5;
  OUTLINED_FUNCTION_3_42();
}

{
  OUTLINED_FUNCTION_1_45(a1, a2, a3);
  v6 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v6);
  *(v4 + 8) = v3;
  *(v4 + 16) = v5;
  OUTLINED_FUNCTION_3_42();
}

void NeuralNetwork.Layer.UpsampleParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 24) == 1 && *(v0 + 16))
  {
    v1 = 0xE800000000000000;
    v2 = 0x7261656E696C6942;
  }

  else
  {
    v1 = 0x8000000257780DC0;
    v2 = 0xD000000000000010;
  }

  v3 = 0x746C7561666544;
  if (*(v0 + 40) == 1 && (v4 = *(v0 + 32)) != 0)
  {
    if (v4 == 1)
    {
      v5 = 0xEF7372656E726F43;
      v3 = 0x2064656E67696C41;
    }

    else
    {
      v5 = 0x8000000257780E00;
      v3 = 0xD000000000000011;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257744E70;
  strcpy((v6 + 32), "Scaling Factor");
  *(v6 + 47) = -18;
  v7 = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  v8 = MEMORY[0x259C64F20](v7, MEMORY[0x277D83B88]);
  v10 = v9;

  *(v6 + 48) = v8;
  *(v6 + 56) = v10;
  *(v6 + 64) = 0xD000000000000019;
  *(v6 + 72) = 0x8000000257780DE0;
  *(v6 + 80) = MEMORY[0x259C64F20](*(v0 + 8), MEMORY[0x277D83A90]);
  *(v6 + 88) = v11;
  strcpy((v6 + 96), "Interpolation");
  *(v6 + 110) = -4864;
  *(v6 + 112) = v2;
  *(v6 + 120) = v1;
  *(v6 + 128) = 0x696C706D61737055;
  *(v6 + 136) = 0xEF65646F4D20676ELL;
  *(v6 + 144) = v3;
  *(v6 + 152) = v5;
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.UpsampleParameters.interpolation.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_18_2(a1);
}

void NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_18_2(a1);
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
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

void sub_257684248(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v2);
}

void NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(uint64_t a1)
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
    v9 = *v2;

    *v2 = v6;
  }
}

void (*NeuralNetwork.Layer.UpsampleParameters.scalingFactor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  return sub_2576843B4;
}

void sub_2576843B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(*a1);
  }
}

uint64_t sub_25768440C(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.UpsampleParameters.fractionalScalingFactor.setter(v2);
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.fractionalScalingFactor.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.UpsampleParameters.fractionalScalingFactor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

unsigned __int8 *NeuralNetwork.Layer.UpsampleParameters.interpolation.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.UpsampleParameters.interpolation.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

unsigned __int8 *NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.setter(unsigned __int8 *result)
{
  *(v1 + 32) = *result;
  *(v1 + 40) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25768464C;
}

uint64_t *sub_25768464C(uint64_t *result)
{
  v1 = *result;
  *(v1 + 32) = *(result + 8);
  *(v1 + 40) = 1;
  return result;
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.hash(into:)()
{
  type metadata accessor for Proto_UpsampleLayerParams(0);
  OUTLINED_FUNCTION_2_41();
  sub_257684CA0(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_UpsampleLayerParams(0);
  OUTLINED_FUNCTION_2_41();
  sub_257684CA0(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25768475C()
{
  sub_257743A14();
  type metadata accessor for Proto_UpsampleLayerParams(0);
  sub_257684CA0(&qword_27F87E0B8, type metadata accessor for Proto_UpsampleLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

void NeuralNetwork.Layer.UpsampleParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v25[1] = v1;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257684BAC(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257744E70;
  strcpy((v18 + 32), "scalingFactor");
  *(v18 + 46) = -4864;
  v19 = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 0xD000000000000017;
  *(v18 + 88) = 0x800000025777F1B0;
  v21 = *(v0 + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v18 + 96) = v21;
  *(v18 + 120) = v22;
  strcpy((v18 + 128), "interpolation");
  *(v18 + 142) = -4864;
  *(v18 + 168) = &type metadata for NeuralNetwork.Layer.UpsampleParameters.Interpolation;
  v23 = *(v0 + 24) == 1 && *(v0 + 16) != 0;
  *(v18 + 144) = v23;
  *(v18 + 176) = 0xD000000000000014;
  *(v18 + 184) = 0x8000000257780E20;
  *(v18 + 216) = &type metadata for NeuralNetwork.Layer.UpsampleParameters.LinearUpsamplingMode;
  NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.getter((v18 + 192));
  v24 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v24);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257684AEC@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UpsampleParameters.Interpolation.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t NeuralNetwork.Layer.UpsampleParameters.LinearUpsamplingMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257684B38@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UpsampleParameters.LinearUpsamplingMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.UpsampleParameters()
{
  result = qword_27F880B88;
  if (!qword_27F880B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257684BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257684CA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257684CEC()
{
  result = qword_27F880B78;
  if (!qword_27F880B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B78);
  }

  return result;
}

unint64_t sub_257684D44()
{
  result = qword_27F880B80;
  if (!qword_27F880B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B80);
  }

  return result;
}

uint64_t sub_257684DC0()
{
  result = type metadata accessor for Proto_UpsampleLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s18UpsampleParametersV13InterpolationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s18UpsampleParametersV20LinearUpsamplingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_57@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;

  return type metadata accessor for Proto_UpsampleLayerParams(0);
}

void OUTLINED_FUNCTION_3_42()
{
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257685078()
{
  v1 = v0;
  v2 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 1937335627;
  *(inited + 40) = 0xE400000000000000;
  sub_2576853B8(v1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_257685EA4(v16, v10);
    OUTLINED_FUNCTION_1_46();
    v20 = OUTLINED_FUNCTION_205();
    sub_2576862CC(v20, v21);
    sub_2576855BC(v8, &v26);
    v19 = v26;
    v18 = v27;
    OUTLINED_FUNCTION_0_58();
    sub_2576866CC(v10, v22);
  }

  v26 = v19;
  v27 = v18;
  v23 = sub_2576603F8();

  *(inited + 48) = v23;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  return sub_2576A6964(inited);
}

uint64_t DictionaryVectorizerConfiguration.keys.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_2576853B8(v2, &v23 - v17);
  result = __swift_getEnumTagSinglePayload(v18, 1, v4);
  if (result == 1)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_257685EA4(v18, v12);
    OUTLINED_FUNCTION_1_46();
    sub_2576862CC(v12, v10);
    sub_2576855BC(v10, &v23);
    v21 = v23;
    v20 = v24;
    OUTLINED_FUNCTION_0_58();
    result = sub_2576866CC(v12, v22);
  }

  *a1 = v21;
  *(a1 + 8) = v20;
  return result;
}

uint64_t sub_2576853B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257685428@<X0>(uint64_t a1@<X8>)
{
  result = DictionaryVectorizerConfiguration.keys.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_25768546C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return DictionaryVectorizerConfiguration.keys.setter(&v3);
}

uint64_t DictionaryVectorizerConfiguration.keys.setter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = (&v18 - v6);
  v8 = *a1;
  if (a1[1])
  {
    v9 = v7 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v7 = v8;
    v10 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = *a1;

    sub_25764CFE8();
    v10 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  v15 = OUTLINED_FUNCTION_205();
  return sub_257685824(v15, v16);
}

uint64_t sub_2576855BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = type metadata accessor for Proto_Int64Vector(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_1_46();
  sub_2576862CC(a1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_257685EA4(v24, v17);
    v29 = *v17;
    v30 = *(*v17 + 16);
    if (v30)
    {
      v37 = MEMORY[0x277D84F90];
      sub_257483724();
      v27 = v37;
      v31 = (v29 + 32);
      v32 = *(v37 + 16);
      do
      {
        v34 = *v31++;
        v33 = v34;
        if (v32 >= *(v37 + 24) >> 1)
        {
          sub_257483724();
        }

        *(v37 + 16) = v32 + 1;
        *(v37 + 8 * v32++ + 32) = v33;
        --v30;
      }

      while (v30);
      OUTLINED_FUNCTION_0_58();
      sub_2576866CC(a1, v35);
      result = OUTLINED_FUNCTION_5_32();
    }

    else
    {
      OUTLINED_FUNCTION_0_58();
      sub_2576866CC(a1, v36);
      result = OUTLINED_FUNCTION_5_32();
      v27 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    sub_2576866CC(a1, v26);
    sub_257685EA4(v24, v10);
    v27 = *v10;

    result = sub_2576866CC(v10, type metadata accessor for Proto_StringVector);
  }

  *a2 = v27;
  *(a2 + 8) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_257685824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*DictionaryVectorizerConfiguration.keys.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v4[3] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[4] = v8;
  v9 = __swift_coroFrameAllocStub(v7);
  v4[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v4[6] = __swift_coroFrameAllocStub(v12);
  v4[7] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v4[8] = v13;
  sub_2576853B8(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_257685EA4(v13, v9);
    OUTLINED_FUNCTION_1_46();
    sub_2576862CC(v9, v8);
    sub_2576855BC(v8, &v18);
    v15 = v18;
    v14 = v19;
    OUTLINED_FUNCTION_0_58();
    sub_2576866CC(v9, v16);
  }

  *v4 = v15;
  *(v4 + 8) = v14;
  return sub_257685A38;
}

void sub_257685A38(void ***a1, char a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(*a1 + 8);
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = v5[6];
    if ((*a1)[1])
    {
      v10 = v9 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v12 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    sub_257685824(v9, v4);
    v17 = *v5;
  }

  else
  {
    v9 = v5[7];
    if ((*a1)[1])
    {
      v11 = v9 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v18 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    sub_257685824(v8, v4);
  }

  free(v6);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v5);
}

uint64_t DictionaryVectorizerConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_DictVectorizer(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t DictionaryVectorizerConfiguration.init<A>(keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return sub_257685CE8(a1, a2, a3, sub_2576BD5D0, 1, a4);
}

{
  return sub_257685CE8(a1, a2, a3, sub_2576BD6A0, 0, a4);
}

uint64_t sub_257685C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257685CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X4>, int a5@<W6>, uint64_t a6@<X8>)
{
  v29[3] = a5;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v17 = v16(0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v29 - v21;
  v23 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  __swift_storeEnumTagSinglePayload(a6, 1, 1, v23);
  v24 = a6 + *(type metadata accessor for Proto_DictVectorizer(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  (*(v11 + 16))(v15, a1, a2);
  a4(v15, a2, a3);
  (*(v11 + 8))(a1, a2);
  sub_257685C3C(a6);
  sub_257685EA4(v22, a6);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
}

uint64_t sub_257685EA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t DictionaryVectorizerConfiguration.hash(into:)()
{
  type metadata accessor for Proto_DictVectorizer(0);
  OUTLINED_FUNCTION_4_31();
  sub_25768657C(v0, v1);

  return sub_2577435F4();
}

uint64_t DictionaryVectorizerConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_DictVectorizer(0);
  OUTLINED_FUNCTION_4_31();
  sub_25768657C(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257685FF4()
{
  sub_257743A14();
  type metadata accessor for Proto_DictVectorizer(0);
  sub_25768657C(&qword_27F87A858, type metadata accessor for Proto_DictVectorizer);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t DictionaryVectorizerConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for DictionaryVectorizerConfiguration();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  sub_2576862CC(v0, v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = 1937335659;
  *(v19 + 40) = 0xE400000000000000;
  *(v19 + 72) = &type metadata for DictionaryVectorizerConfiguration.Keys;
  DictionaryVectorizerConfiguration.keys.getter(v19 + 48);
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v20);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for DictionaryVectorizerConfiguration()
{
  result = qword_2815375F0;
  if (!qword_2815375F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576862CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t static DictionaryVectorizerConfiguration.Keys.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374(v4, v5);
}

void DictionaryVectorizerConfiguration.Keys.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x259C651F0](1);

    sub_2576679DC(a1, v3);
  }

  else
  {
    MEMORY[0x259C651F0](0);

    sub_257668300(a1, v3);
  }
}

uint64_t DictionaryVectorizerConfiguration.Keys.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    sub_2576679DC(v4, v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257668300(v4, v1);
  }

  return sub_257743A64();
}

uint64_t sub_257686474()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    sub_2576679DC(v4, v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257668300(v4, v1);
  }

  return sub_257743A64();
}

uint64_t sub_25768657C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2576865C8()
{
  result = qword_27F880BA0;
  if (!qword_27F880BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BA0);
  }

  return result;
}

uint64_t sub_257686644()
{
  result = type metadata accessor for Proto_DictVectorizer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576866CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return sub_2576866CC(v0, type metadata accessor for Proto_Int64Vector);
}

void sub_257686794()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v30[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_23_7();
  *(v18 + 32) = 0xD000000000000012;
  *(v18 + 40) = v19;
  sub_257686B90(v1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_33();
    sub_2576880E0(v16, v10);
    OUTLINED_FUNCTION_0_59();
    sub_257687BD0(v10, v8);
    sub_257686D98();
    v21 = v31;
    v20 = v32;
    sub_25761351C(v10, v2);
  }

  v31 = v21;
  v32 = v20;
  v22 = sub_25768759C();

  *(inited + 48) = v22;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  strcpy((inited + 72), "Sparse Output");
  *(inited + 86) = -4864;
  v23 = type metadata accessor for Proto_OneHotEncoder(0);
  v30[7] = *(v1 + *(v23 + 20));
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v24;
  *(inited + 104) = 0;
  OUTLINED_FUNCTION_23_7();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = v25;
  v26 = v1 + *(v23 + 24);
  if (*(v26 + 8) == 1)
  {
    v27 = vdup_n_s32(*v26 == 0);
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    v29 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)), xmmword_25776FD60, xmmword_25776FD70);
  }

  else
  {
    v29 = xmmword_25776FD60;
  }

  *(inited + 128) = v29;
  *(inited + 144) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t OneHotEncoderConfiguration.orderedCategories.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  sub_257686B90(v2, &v22 - v17);
  result = __swift_getEnumTagSinglePayload(v18, 1, v4);
  if (result == 1)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_2576880E0(v18, v12);
    OUTLINED_FUNCTION_0_59();
    sub_257687BD0(v12, v10);
    sub_257686D98();
    v21 = v22;
    v20 = v23;
    result = sub_25761351C(v12, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  }

  *v0 = v21;
  *(v0 + 8) = v20;
  return result;
}

uint64_t sub_257686B90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257686C00@<X0>(uint64_t a1@<X8>)
{
  result = OneHotEncoderConfiguration.orderedCategories.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_257686C44(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return OneHotEncoderConfiguration.orderedCategories.setter(&v3);
}

uint64_t OneHotEncoderConfiguration.orderedCategories.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = *a1;
  if (a1[1])
  {
    v10 = *a1;

    sub_25764CFE8();
    v11 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = v8 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v8 = v9;
    v11 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  return sub_257686FCC(v8, v1);
}

void sub_257686D98()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_Int64Vector(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Proto_StringVector(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  v18 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_0_59();
  sub_257687BD0(v2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576880E0(v24, v10);
    v26 = *v10;
    v27 = *(*v10 + 16);
    if (!v27)
    {
      OUTLINED_FUNCTION_1_47();
      OUTLINED_FUNCTION_1_18();
      sub_25761351C(v10, v35);
      v28 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    v36 = MEMORY[0x277D84F90];
    sub_257483724();
    v28 = v36;
    v29 = (v26 + 32);
    v30 = *(v36 + 16);
    do
    {
      v32 = *v29++;
      v31 = v32;
      if (v30 >= *(v36 + 24) >> 1)
      {
        sub_257483724();
      }

      *(v36 + 16) = v30 + 1;
      *(v36 + 8 * v30++ + 32) = v31;
      --v27;
    }

    while (v27);
    OUTLINED_FUNCTION_1_47();
    OUTLINED_FUNCTION_1_18();
    v34 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_1_47();
    sub_2576880E0(v24, v17);
    v28 = *v17;

    v34 = v17;
    v33 = type metadata accessor for Proto_StringVector;
  }

  sub_25761351C(v34, v33);
LABEL_10:
  *v0 = v28;
  *(v0 + 8) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257686FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*OneHotEncoderConfiguration.orderedCategories.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v4[3] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[4] = v8;
  v9 = __swift_coroFrameAllocStub(v7);
  v4[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v4[6] = __swift_coroFrameAllocStub(v12);
  v4[7] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v4[8] = v13;
  sub_257686B90(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_33();
    sub_2576880E0(v13, v9);
    OUTLINED_FUNCTION_0_59();
    sub_257687BD0(v9, v8);
    sub_257686D98();
    v15 = v17;
    v14 = v18;
    sub_25761351C(v9, v2);
  }

  *v4 = v15;
  *(v4 + 8) = v14;
  return sub_2576871D4;
}

void sub_2576871D4(void ***a1, char a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(*a1 + 8);
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = v5[6];
    if ((*a1)[1])
    {
      v10 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v12 = v9 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    sub_257686FCC(v9, v4);
    v17 = *v5;
  }

  else
  {
    v9 = v5[7];
    if ((*a1)[1])
    {
      v11 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v18 = v9 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    sub_257686FCC(v8, v4);
  }

  free(v6);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v5);
}

uint64_t OneHotEncoderConfiguration.sparseOutput.setter(char a1)
{
  result = type metadata accessor for Proto_OneHotEncoder(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*OneHotEncoderConfiguration.sparseOutput.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_OneHotEncoder(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_2576873F0;
}

uint64_t OneHotEncoderConfiguration.unknownBehaviour.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  result = type metadata accessor for Proto_OneHotEncoder(v2);
  v4 = v1 + *(result + 24);
  v5 = *(v4 + 8) == 1 && *v4 != 0;
  *v0 = v5;
  return result;
}

uint64_t sub_257687454@<X0>(_BYTE *a1@<X8>)
{
  result = OneHotEncoderConfiguration.unknownBehaviour.getter();
  *a1 = v3;
  return result;
}

uint64_t OneHotEncoderConfiguration.unknownBehaviour.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Proto_OneHotEncoder(0);
  v4 = v1 + *(result + 24);
  *v4 = v2;
  *(v4 + 8) = 1;
  return result;
}

uint64_t (*OneHotEncoderConfiguration.unknownBehaviour.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_OneHotEncoder(0) + 24);
  *(a1 + 8) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 8) == 1 && *v4 != 0;
  *(a1 + 12) = v5;
  return sub_25768757C;
}

uint64_t sub_25768757C(uint64_t result)
{
  v1 = *result + *(result + 8);
  *v1 = *(result + 12);
  *(v1 + 8) = 1;
  return result;
}

uint64_t sub_25768759C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v0[8])
  {
    if (v2)
    {
      v19 = MEMORY[0x277D84F90];
      sub_257484040(0, v2, 0);
      v3 = v19;
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        v6 = sub_257743674();
        v8 = v7;
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_257484040((v9 > 1), v10 + 1, 1);
        }

        *(v19 + 16) = v10 + 1;
        v11 = v19 + 24 * v10;
        *(v11 + 32) = v6;
        *(v11 + 40) = v8;
        *(v11 + 48) = 0;
        --v2;
      }

      while (v2);
    }
  }

  else if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v20;
    v12 = (v1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      MEMORY[0x259C64E90](v13, v14);
      MEMORY[0x259C64E90](34, 0xE100000000000000);

      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_257484040((v15 > 1), v16 + 1, 1);
      }

      *(v20 + 16) = v16 + 1;
      v17 = v20 + 24 * v16;
      *(v17 + 32) = 34;
      *(v17 + 40) = 0xE100000000000000;
      *(v17 + 48) = 0;
      v12 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void OneHotEncoderConfiguration.init(orderedCategories:sparseOutput:unknownBehavior:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75_0();
  v11 = *v2;
  v12 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v13 = OUTLINED_FUNCTION_18_22();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for Proto_OneHotEncoder(0);
  OUTLINED_FUNCTION_19_19(v16);
  v17 = v0 + *(type metadata accessor for Proto_StringVector(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v4;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v12);
  sub_257686FCC(v0, v6);
  OUTLINED_FUNCTION_8_24();
  OUTLINED_FUNCTION_35();
}

{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_0();
  v9 = *v2;
  v10 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v11 = OUTLINED_FUNCTION_18_22();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = type metadata accessor for Proto_OneHotEncoder(0);
  OUTLINED_FUNCTION_19_19(v14);
  sub_25764CFE8();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  sub_257686FCC(v0, v4);
  OUTLINED_FUNCTION_8_24();
  OUTLINED_FUNCTION_35();
}

void OneHotEncoderConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_0();
  v12 = type metadata accessor for OneHotEncoderConfiguration();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257687BD0(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_23_7();
  v19[4] = 0xD000000000000011;
  v19[5] = v20;
  v19[9] = &type metadata for OneHotEncoderConfiguration.OrderedCategories;
  OneHotEncoderConfiguration.orderedCategories.getter();
  strcpy((v18 + 80), "sparseOutput");
  *(v18 + 93) = 0;
  *(v18 + 94) = -5120;
  *(v18 + 96) = *(v0 + *(type metadata accessor for Proto_OneHotEncoder(0) + 20));
  OUTLINED_FUNCTION_23_7();
  *(v18 + 120) = v21;
  *(v18 + 128) = 0xD000000000000010;
  *(v18 + 136) = v22;
  *(v18 + 168) = &type metadata for OneHotEncoderConfiguration.UnknownBehavior;
  OneHotEncoderConfiguration.unknownBehaviour.getter();
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v23);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for OneHotEncoderConfiguration()
{
  result = qword_281537960;
  if (!qword_281537960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257687BD0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t static OneHotEncoderConfiguration.OrderedCategories.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257487374(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257479C78(v4, v5);
}

void OneHotEncoderConfiguration.OrderedCategories.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x259C651F0](1);

    sub_257668300(a1, v3);
  }

  else
  {
    MEMORY[0x259C651F0](0);

    sub_2576679DC(a1, v3);
  }
}

uint64_t OneHotEncoderConfiguration.OrderedCategories.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    sub_257668300(v4, v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_2576679DC(v4, v1);
  }

  return sub_257743A64();
}

uint64_t sub_257687D7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    sub_257668300(v4, v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_2576679DC(v4, v1);
  }

  return sub_257743A64();
}

MLModelSpecification::OneHotEncoderConfiguration::UnknownBehavior_optional __swiftcall OneHotEncoderConfiguration.UnknownBehavior.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_257687E20@<X0>(uint64_t *a1@<X8>)
{
  result = OneHotEncoderConfiguration.UnknownBehavior.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257687E4C()
{
  result = qword_27F87BB10;
  if (!qword_27F87BB10)
  {
    type metadata accessor for Proto_OneHotEncoder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BB10);
  }

  return result;
}

unint64_t sub_257687EA8()
{
  result = qword_27F880BA8;
  if (!qword_27F880BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BA8);
  }

  return result;
}

unint64_t sub_257687F00()
{
  result = qword_27F880BB0;
  if (!qword_27F880BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BB0);
  }

  return result;
}

uint64_t sub_257687F7C()
{
  result = type metadata accessor for Proto_OneHotEncoder(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneHotEncoderConfiguration.UnknownBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2576880E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return sub_25761351C(v0, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
}

void OUTLINED_FUNCTION_8_24()
{
  *(v0 + v5) = v1;
  v6 = v0 + *(v2 + 24);
  *v6 = v3;
  *(v6 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_19_19(uint64_t a1)
{
  v3 = *(a1 + 20);
  v4 = v1 + *(a1 + 28);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576881E4()
{
  v2 = v0;
  v3 = type metadata accessor for Proto_StringVector(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  v35 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v22;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  v23 = *(v0 + 1);
  v24 = *(v0 + 2);
  v35 = 34;
  v36 = 0xE100000000000000;
  MEMORY[0x259C64E90](v23, v24);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v25 = v36;
  *(inited + 88) = v35;
  *(inited + 96) = v25;
  *(inited + 104) = 0;
  strcpy((inited + 112), "Class Labels");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v26 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_257688878(v0 + *(v26 + 28), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
  {
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v20, v14, v28);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v14, v1, v29);
    v27 = *v1;

    sub_25767EE20(v1);
  }

  v34[1] = v27;
  v30 = sub_257689088();

  *(inited + 128) = v30;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000014;
  *(inited + 160) = 0x8000000257780DA0;
  v31 = *(v2 + 4);
  v35 = *(v2 + 3);
  v36 = v31;
  sub_257486740(v35, v31);
  *(inited + 168) = sub_257743674();
  *(inited + 176) = v32;
  *(inited + 184) = 0;
  return sub_2576A6964(inited);
}

uint64_t TextClassifierConfiguration.language.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576884DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TextClassifierConfiguration.language.setter(v1, v2);
}

uint64_t TextClassifierConfiguration.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*TextClassifierConfiguration.language.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t TextClassifierConfiguration.modelParameterData.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_205();
  sub_257486740(v3, v4);
  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576885D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return TextClassifierConfiguration.modelParameterData.setter(v1, v2);
}

uint64_t TextClassifierConfiguration.modelParameterData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*TextClassifierConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_257688698;
}

uint64_t sub_257688698(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  if (a2)
  {
    sub_257486740(*a1, v2);
    sub_257486798(v5, v6);
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;

    return sub_257486798(v4, v2);
  }

  else
  {
    result = sub_257486798(*(v3 + 24), *(v3 + 32));
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
  }

  return result;
}

uint64_t TextClassifierConfiguration.classLabels.getter@<X0>(void *a1@<X8>)
{
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_64();
  v22 = type metadata accessor for Proto_CoreMLModels_TextClassifier(v21);
  sub_257688878(v1 + *(v22 + 28), v3);
  result = __swift_getEnumTagSinglePayload(v3, 1, v10);
  if (result == 1)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v3, v16, v25);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v16, v2, v26);
    v24 = *v2;

    result = sub_25767EE20(v2);
  }

  *a1 = v24;
  return result;
}

uint64_t sub_257688878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576888E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_257688944@<X0>(void *a1@<X8>)
{
  result = TextClassifierConfiguration.classLabels.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_257688980(uint64_t *a1)
{
  v2 = *a1;

  return TextClassifierConfiguration.classLabels.setter(&v2);
}

uint64_t TextClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = (&v14 - v7);
  v9 = *a1;
  v10 = &v14 + *(type metadata accessor for Proto_StringVector(0) + 20) - v7;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v8 = v9;
  v11 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v12 = OUTLINED_FUNCTION_12_23(v11);
  return sub_257688A64(v8, v1 + *(v12 + 28));
}

uint64_t sub_257688A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*TextClassifierConfiguration.classLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  OUTLINED_FUNCTION_11_22(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v11, v7, v14);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_257688C3C;
}

uint64_t TextClassifierConfiguration.stringClassLabels.getter()
{
  v1 = type metadata accessor for Proto_StringVector(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  v21 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_257688878(v0 + *(v21 + 28), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_48();
  sub_2576888E8(v20, v14, v23);
  OUTLINED_FUNCTION_0_60();
  sub_2576888E8(v14, v7, v24);
  v22 = *v7;

  sub_25767EE20(v7);
  return v22;
}

uint64_t sub_257688D9C(uint64_t *a1)
{
  v1 = *a1;

  return TextClassifierConfiguration.stringClassLabels.setter(v2);
}

uint64_t TextClassifierConfiguration.stringClassLabels.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = v2 + *(type metadata accessor for Proto_StringVector(v8) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v10 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v11 = OUTLINED_FUNCTION_12_23(v10);
  return sub_257688A64(v2, v1 + *(v11 + 28));
}

uint64_t (*TextClassifierConfiguration.stringClassLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  OUTLINED_FUNCTION_11_22(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v11, v7, v14);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_25768975C;
}

void sub_257688FCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = *((*a1)[2] + 20);
  v5 = *(*a1 + 16);
  v6 = (*a1)[6];
  v7 = (*a1)[7];
  v9 = (*a1)[4];
  v8 = (*a1)[5];
  v10 = (*a1)[1];
  if (a2)
  {
    v11 = **a1;

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_27();
    v12 = *v2;
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_27();
  }

  free(v7);
  free(v6);
  free(v8);
  free(v3);

  free(v2);
}

uint64_t sub_257689088()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_257484040(0, v2, 0);
  v5 = 0;
  v3 = v12;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v10 = *(v12 + 16);
    v9 = *(v12 + 24);

    if (v10 >= v9 >> 1)
    {
      result = sub_257484040((v9 > 1), v10 + 1, 1);
    }

    ++v5;
    *(v12 + 16) = v10 + 1;
    v11 = v12 + 24 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
    *(v11 + 48) = 0;
    v6 += 2;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t TextClassifierConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v2 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t TextClassifierConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for TextClassifierConfiguration();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2576894E0(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257744E70;
  *(v18 + 32) = 0x6E6F697369766572;
  *(v18 + 40) = 0xE800000000000000;
  v19 = MEMORY[0x277D83B88];
  *(v18 + 48) = *v0;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x65676175676E616CLL;
  v21 = v0[1];
  v20 = v0[2];
  v22 = MEMORY[0x277D837D0];
  *(v18 + 88) = 0xE800000000000000;
  *(v18 + 96) = v21;
  *(v18 + 104) = v20;
  *(v18 + 120) = v22;
  *(v18 + 128) = 0xD000000000000012;
  v23 = MEMORY[0x277CC9318];
  v24 = v0[3];
  v25 = v0[4];
  *(v18 + 136) = 0x800000025777AB50;
  *(v18 + 144) = v24;
  *(v18 + 152) = v25;
  *(v18 + 168) = v23;
  *(v18 + 176) = 0x62614C7373616C63;
  *(v18 + 184) = 0xEB00000000736C65;
  *(v18 + 216) = &type metadata for TextClassifierConfiguration.Labels;

  sub_257486740(v24, v25);
  TextClassifierConfiguration.classLabels.getter((v18 + 192));
  v26 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v26);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for TextClassifierConfiguration()
{
  result = qword_281537830;
  if (!qword_281537830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576894E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextClassifierConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void TextClassifierConfiguration.Labels.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x259C651F0](0);

  sub_2576679DC(a1, v3);
}

uint64_t TextClassifierConfiguration.Labels.hashValue.getter()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC(v3, v1);
  return sub_257743A64();
}

unint64_t sub_257689608()
{
  result = qword_27F87BB28;
  if (!qword_27F87BB28)
  {
    type metadata accessor for Proto_CoreMLModels_TextClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BB28);
  }

  return result;
}

unint64_t sub_257689664()
{
  result = qword_27F880BB8;
  if (!qword_27F880BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BB8);
  }

  return result;
}

uint64_t sub_2576896E0()
{
  result = type metadata accessor for Proto_CoreMLModels_TextClassifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_27()
{
  *v0 = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_257688A64(v0, v4 + v3);
}

uint64_t OUTLINED_FUNCTION_11_22(uint64_t a1)
{
  v5 = *(a1 + 28);
  *(v2 + 64) = v5;

  return sub_257688878(v1 + v5, v3);
}

uint64_t OUTLINED_FUNCTION_12_23(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
}

void sub_257689828()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v161 = v7 - v6;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v160 = v14 - v13;
  v15 = OUTLINED_FUNCTION_153();
  v169 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v15);
  v16 = OUTLINED_FUNCTION_4(v169);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v159 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v158 = &v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  OUTLINED_FUNCTION_13(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v168 = &v150 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E0, &qword_257773BE0);
  OUTLINED_FUNCTION_13(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v150 - v32;
  v34 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v165 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  v171 = &v150 - v41;
  v42 = OUTLINED_FUNCTION_153();
  v43 = type metadata accessor for NeuralNetwork.Preprocessor(v42);
  v44 = OUTLINED_FUNCTION_24(v43);
  v153 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v170 = (v49 - v48);
  OUTLINED_FUNCTION_153();
  v50 = type metadata accessor for NeuralNetwork.Layer();
  v51 = OUTLINED_FUNCTION_24(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3();
  v163 = v57 - v56;
  v58 = OUTLINED_FUNCTION_153();
  v59 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(v58);
  v60 = OUTLINED_FUNCTION_4(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_11();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  v152 = &v150 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v71);
  v154 = &v150 - v72;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257745520;
  v74 = OUTLINED_FUNCTION_34_8(inited, 24908);
  v75 = *(v74 + 16);
  v166 = v34;
  v167 = v33;
  v156 = inited;
  v157 = v0;
  if (v75)
  {
    v151 = v59;
    v155 = v65;
    v172 = MEMORY[0x277D84F90];
    v76 = v74;
    sub_257484040(0, v75, 0);
    v77 = v53;
    v78 = v172;
    v79 = *(v77 + 80);
    OUTLINED_FUNCTION_193();
    v150 = v76;
    v81 = v76 + v80;
    *&v162 = *(v82 + 72);
    do
    {
      OUTLINED_FUNCTION_6_33();
      v83 = v163;
      sub_25768C0D0(v81, v163);
      sub_2576EDD44();
      v85 = v84;
      v87 = v86;
      v89 = v88;
      OUTLINED_FUNCTION_4_32();
      sub_25768C128(v83, v90);
      v172 = v78;
      v92 = *(v78 + 16);
      v91 = *(v78 + 24);
      if (v92 >= v91 >> 1)
      {
        v94 = OUTLINED_FUNCTION_174(v91);
        sub_257484040(v94, v92 + 1, 1);
        v78 = v172;
      }

      *(v78 + 16) = v92 + 1;
      v93 = v78 + 24 * v92;
      *(v93 + 32) = v85;
      *(v93 + 40) = v87;
      *(v93 + 48) = v89;
      v81 += v162;
      --v75;
    }

    while (v75);

    inited = v156;
    v1 = v157;
    v34 = v166;
    v33 = v167;
    v65 = v155;
    v59 = v151;
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v78;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  strcpy((inited + 72), "Class Labels");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v155 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v95 = v154;
  sub_2574AD5D8(v1 + *(v155 + 32), v154, &qword_27F87CA28, &unk_2577700F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 1, v59);
  v97 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    v98 = 0;
    v99 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_34();
    v100 = v152;
    sub_25768C180(v95, v152);
    OUTLINED_FUNCTION_1_49();
    sub_25768C0D0(v100, v65);
    sub_25768B02C();
    v99 = v172;
    v98 = v173;
    OUTLINED_FUNCTION_0_61();
    sub_25768C128(v100, v101);
  }

  v175 = v99;
  v176 = v98;
  v102 = sub_2576603F8();

  *(inited + 88) = v102;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  strcpy((inited + 112), "Preprocessors");
  *(inited + 126) = -4864;
  v103 = NeuralNetworkClassifier.preprocessors.getter();
  v104 = *(v103 + 16);
  if (v104)
  {
    v174 = v97;
    sub_257484040(0, v104, 0);
    v105 = v174;
    v106 = *(v153 + 80);
    OUTLINED_FUNCTION_193();
    v154 = v103;
    v108 = v103 + v107;
    v163 = *(v109 + 72);
    v162 = xmmword_257743FF0;
    do
    {
      v110 = v170;
      sub_25768C0D0(v108, v170);
      v111 = swift_initStackObject();
      *(v111 + 16) = v162;
      strcpy((v111 + 32), "Feature Name");
      *(v111 + 45) = 0;
      *(v111 + 46) = -5120;
      v112 = *v110;
      v113 = v110[1];
      v172 = 34;
      v173 = 0xE100000000000000;
      MEMORY[0x259C64E90](v112, v113);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      v114 = v173;
      *(v111 + 48) = v172;
      *(v111 + 56) = v114;
      *(v111 + 64) = 0;
      *(v111 + 72) = 1684957515;
      *(v111 + 80) = 0xE400000000000000;
      v115 = v110 + *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
      v116 = v168;
      sub_2574AD5D8(v115, v168, &qword_27F87A048, &qword_257744980);
      v117 = 1;
      if (__swift_getEnumTagSinglePayload(v116, 1, v169) != 1)
      {
        v118 = v158;
        sub_25768C180(v168, v158);
        v119 = v159;
        sub_25768C0D0(v118, v159);
        swift_getEnumCaseMultiPayload();
        sub_25768C180(v119, v33);
        swift_storeEnumTagMultiPayload();
        sub_25768C128(v118, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
        v117 = 0;
      }

      __swift_storeEnumTagSinglePayload(v33, v117, 1, v34);
      if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
      {
        v120 = v171;
        *(v171 + 8) = 0;
        v120[1] = 0;
        v121 = v120 + *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        *v120 = 1065353216;
        v120[4] = 0;
        swift_storeEnumTagMultiPayload();
        v122 = __swift_getEnumTagSinglePayload(v33, 1, v34);
        v123 = v165;
        if (v122 != 1)
        {
          sub_257499968(v33);
        }
      }

      else
      {
        v120 = v171;
        sub_25768C180(v33, v171);
        v123 = v165;
      }

      sub_25768C0D0(v120, v123);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v124 = v161;
        sub_25768C180(v123, v161);
        v125 = sub_25749CDBC();
        v127 = v126;
        v129 = v128;
        v130 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration;
      }

      else
      {
        v124 = v160;
        sub_25768C180(v123, v160);
        v125 = sub_25749CC5C();
        v127 = v131;
        v129 = v132;
        v130 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration;
      }

      sub_25768C128(v124, v130);
      sub_25768C128(v171, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
      *(v111 + 88) = v125;
      *(v111 + 96) = v127;
      *(v111 + 104) = v129;
      v133 = sub_2576A6964(v111);
      v135 = v134;
      OUTLINED_FUNCTION_10_27();
      sub_25768C128(v170, v136);
      v174 = v105;
      v138 = *(v105 + 16);
      v137 = *(v105 + 24);
      if (v138 >= v137 >> 1)
      {
        v140 = OUTLINED_FUNCTION_174(v137);
        sub_257484040(v140, v138 + 1, 1);
        v105 = v174;
      }

      *(v105 + 16) = v138 + 1;
      v139 = v105 + 24 * v138;
      *(v139 + 32) = v133;
      *(v139 + 40) = v135;
      *(v139 + 48) = 2;
      v108 += v163;
      --v104;
      v34 = v166;
      v33 = v167;
    }

    while (v104);

    inited = v156;
    v1 = v157;
  }

  else
  {

    v105 = MEMORY[0x277D84F90];
  }

  *(inited + 128) = v105;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x800000025777A070;
  if (*(v1 + 24) == 1)
  {
    v141 = vdup_n_s32(*(v1 + 16) == 0);
    v142.i64[0] = v141.u32[0];
    v142.i64[1] = v141.u32[1];
    v143 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v142, 0x3FuLL)), xmmword_257744E80, xmmword_257744E90);
  }

  else
  {
    v143 = xmmword_257744E80;
  }

  v144 = v155;
  *(inited + 168) = v143;
  *(inited + 184) = 0;
  *(inited + 192) = 0xD000000000000019;
  *(inited + 200) = 0x800000025777A090;
  v145 = 0x35206B6E6152;
  if (*(v1 + 40))
  {
    v145 = 0x34206B6E6152;
  }

  *(inited + 208) = v145;
  *(inited + 216) = 0xE600000000000000;
  *(inited + 224) = 0;
  *(inited + 232) = 0xD00000000000001CLL;
  *(inited + 240) = 0x8000000257780EC0;
  v146 = (v1 + *(v144 + 36));
  v147 = *v146;
  v148 = v146[1];
  v172 = 34;
  v173 = 0xE100000000000000;
  MEMORY[0x259C64E90](v147, v148);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v149 = v173;
  *(inited + 248) = v172;
  *(inited + 256) = v149;
  *(inited + 264) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetworkClassifier.layers.getter()
{
  v3 = type metadata accessor for NeuralNetwork.Layer();
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
    sub_2574841E8();
    v14 = v25;
    v15 = type metadata accessor for Proto_NeuralNetworkLayer(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_9_23();
      sub_25768C0D0(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_2574841E8();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_25768C180(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_25768A4E0(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetworkClassifier.layers.setter();
}

void NeuralNetworkClassifier.layers.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Layer();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_NeuralNetworkLayer(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v18 = *(v4 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574843E0();
    v19 = v31;
    v20 = *(v8 + 80);
    OUTLINED_FUNCTION_193();
    v22 = v4 + v21;
    v23 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_6_33();
      sub_25768C0D0(v22, v1);
      OUTLINED_FUNCTION_9_23();
      sub_25768C0D0(v1, v2);
      OUTLINED_FUNCTION_4_32();
      sub_25768C128(v1, v24);
      OUTLINED_FUNCTION_27_2();
      if (v26)
      {
        OUTLINED_FUNCTION_13_1(v25);
        sub_2574843E0();
        v19 = v31;
      }

      *(v19 + 16) = v8;
      v27 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      v28 = *(v15 + 72);
      OUTLINED_FUNCTION_17_16();
      sub_25768C180(v2, v29);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v30 = *v0;

  *v0 = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetworkClassifier.layers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetworkClassifier.layers.getter();
  return sub_25768A728;
}

uint64_t NeuralNetworkClassifier.preprocessors.getter()
{
  v3 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v0 + 8);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_257484240();
    v14 = v25;
    v15 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_8_25();
      sub_25768C0D0(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_257484240();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_25768C180(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_25768A8C8(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetworkClassifier.preprocessors.setter();
}

void NeuralNetworkClassifier.preprocessors.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v18 = *(v4 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484438();
    v19 = v31;
    v20 = *(v8 + 80);
    OUTLINED_FUNCTION_193();
    v22 = v4 + v21;
    v23 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_16_12();
      sub_25768C0D0(v22, v1);
      OUTLINED_FUNCTION_8_25();
      sub_25768C0D0(v1, v2);
      OUTLINED_FUNCTION_10_27();
      sub_25768C128(v1, v24);
      OUTLINED_FUNCTION_27_2();
      if (v26)
      {
        OUTLINED_FUNCTION_13_1(v25);
        sub_257484438();
        v19 = v31;
      }

      *(v19 + 16) = v8;
      v27 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      v28 = *(v15 + 72);
      OUTLINED_FUNCTION_15_13();
      sub_25768C180(v2, v29);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 8);

  *(v0 + 8) = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetworkClassifier.preprocessors.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetworkClassifier.preprocessors.getter();
  return sub_25768AB10;
}

uint64_t sub_25768AB28(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
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

unsigned __int8 *NeuralNetworkClassifier.arrayInputShapeMapping.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetworkClassifier.arrayInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

uint64_t *(*NeuralNetworkClassifier.imageInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_257498D9C;
}

uint64_t NeuralNetworkClassifier.classLabels.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_78();
  v19 = type metadata accessor for Proto_NeuralNetworkClassifier(v18);
  sub_2574AD5D8(v1 + *(v19 + 32), v2, &qword_27F87CA28, &unk_2577700F0);
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_34();
    sub_25768C180(v2, v13);
    OUTLINED_FUNCTION_1_49();
    sub_25768C0D0(v13, v10);
    sub_25768B02C();
    v22 = v24;
    v21 = v25;
    OUTLINED_FUNCTION_0_61();
    result = sub_25768C128(v13, v23);
  }

  *a1 = v22;
  *(a1 + 8) = v21;
  return result;
}

uint64_t sub_25768AE84@<X0>(uint64_t a1@<X8>)
{
  result = NeuralNetworkClassifier.classLabels.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_25768AEC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return NeuralNetworkClassifier.classLabels.setter(&v3);
}

uint64_t NeuralNetworkClassifier.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - v7);
  v9 = *a1;
  if (a1[1])
  {
    v10 = v8 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v8 = v9;
    v11 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = *a1;

    sub_25764CFE8();
    v11 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v13 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  return sub_25768BF08(v8, v1 + *(v13 + 32));
}

void sub_25768B02C()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = type metadata accessor for Proto_Int64Vector(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_49();
  sub_25768C0D0(v2, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_25768C180(v0, v18);
    v26 = *v18;
    v27 = *(*v18 + 16);
    if (v27)
    {
      OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
      sub_257483724();
      v25 = v35;
      v28 = (v26 + 32);
      v29 = *(v35 + 16);
      do
      {
        v31 = *v28++;
        v30 = v31;
        v32 = *(v35 + 24);
        if (v29 >= v32 >> 1)
        {
          OUTLINED_FUNCTION_13_1(v32);
          sub_257483724();
        }

        *(v35 + 16) = v29 + 1;
        *(v35 + 8 * v29++ + 32) = v30;
        --v27;
      }

      while (v27);
      OUTLINED_FUNCTION_0_61();
      sub_25768C128(v2, v33);
      OUTLINED_FUNCTION_18_23();
    }

    else
    {
      OUTLINED_FUNCTION_0_61();
      sub_25768C128(v2, v34);
      OUTLINED_FUNCTION_18_23();
      v25 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_25768C128(v2, v24);
    sub_25768C180(v0, v11);
    v25 = *v11;

    sub_25768C128(v11, type metadata accessor for Proto_StringVector);
  }

  *v4 = v25;
  *(v4 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void (*NeuralNetworkClassifier.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  v8 = __swift_coroFrameAllocStub(v6);
  v3[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v3[7] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[8] = v12;
  v13 = *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 32);
  *(v3 + 3) = v13;
  sub_2574AD5D8(v1 + v13, v12, &qword_27F87CA28, &unk_2577700F0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_34();
    sub_25768C180(v12, v8);
    OUTLINED_FUNCTION_1_49();
    sub_25768C0D0(v8, v7);
    sub_25768B02C();
    v15 = v18;
    v14 = v19;
    OUTLINED_FUNCTION_0_61();
    sub_25768C128(v8, v16);
  }

  *v3 = v15;
  *(v3 + 8) = v14;
  return sub_25768B428;
}

void sub_25768B428(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = *(*a1 + 8);
  v9 = (*a1)[3];
  if (a2)
  {
    v10 = v6[6];
    if ((*a1)[1])
    {
      v11 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_28_15();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v13 = **a1;

      sub_25764CFE8();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    sub_25768BF08(v10, v5 + v4);
    v15 = *v6;
  }

  else
  {
    v10 = v6[7];
    if ((*a1)[1])
    {
      v12 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_28_15();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v16 = **a1;

      sub_25764CFE8();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
    sub_25768BF08(v9, v5 + v4);
  }

  free(v7);
  free(v9);
  free(v10);
  free(v2);
  free(v3);

  free(v6);
}

uint64_t NeuralNetworkClassifier.labelProbabilityLayerName.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25768B5E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NeuralNetworkClassifier.labelProbabilityLayerName.setter(v1, v2);
}

uint64_t NeuralNetworkClassifier.labelProbabilityLayerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*NeuralNetworkClassifier.labelProbabilityLayerName.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v7 = *v5;
  v6 = v5[1];
  v3[3] = v6;
  *v3 = v7;
  v3[1] = v6;

  return sub_25768B6F0;
}

void sub_25768B6F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

void NeuralNetworkClassifier.init(layers:preprocessors:)()
{
  OUTLINED_FUNCTION_31();
  v76 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_78();
  v14 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v13);
  v15 = OUTLINED_FUNCTION_24(v14);
  v75 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v19 = type metadata accessor for NeuralNetwork.Layer();
  v20 = OUTLINED_FUNCTION_24(v19);
  v74 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v27 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  v28 = OUTLINED_FUNCTION_24(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  v36 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v37 = v36[8];
  v38 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v6 + v37, 1, 1, v38);
  v39 = (v6 + v36[9]);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v40 = v6 + v36[10];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v41 = v36[11];
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  v43 = v6 + v41;
  v44 = v4;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, updated);
  v45 = *(v4 + 16);
  if (v45)
  {
    v71 = v10;
    v72 = v1;
    v73 = v6;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_28_15();
    sub_2574843E0();
    v46 = v77;
    v47 = *(v74 + 80);
    OUTLINED_FUNCTION_193();
    v49 = v44 + v48;
    v51 = *(v50 + 72);
    do
    {
      OUTLINED_FUNCTION_6_33();
      sub_25768C0D0(v49, v26);
      OUTLINED_FUNCTION_9_23();
      sub_25768C0D0(v26, v35);
      OUTLINED_FUNCTION_4_32();
      sub_25768C128(v26, v52);
      v77 = v46;
      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v53);
        sub_2574843E0();
      }

      *(v46 + 16) = v54 + 1;
      v55 = *(v30 + 80);
      OUTLINED_FUNCTION_193();
      v56 = *(v30 + 72);
      OUTLINED_FUNCTION_17_16();
      sub_25768C180(v35, v57);
      v49 += v51;
      --v45;
    }

    while (v45);

    v1 = v72;
    v6 = v73;
    v10 = v71;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  *v6 = v46;
  v58 = *(v76 + 16);
  if (v58)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_28_15();
    sub_257484438();
    v59 = v77;
    v60 = *(v10 + 80);
    OUTLINED_FUNCTION_193();
    v62 = v76 + v61;
    v63 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_16_12();
      sub_25768C0D0(v62, v0);
      OUTLINED_FUNCTION_8_25();
      sub_25768C0D0(v0, v1);
      OUTLINED_FUNCTION_10_27();
      sub_25768C128(v0, v64);
      v65 = v1;
      v67 = *(v77 + 16);
      v66 = *(v77 + 24);
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v66);
        sub_257484438();
      }

      *(v77 + 16) = v67 + 1;
      v68 = *(v75 + 80);
      OUTLINED_FUNCTION_193();
      v69 = *(v75 + 72);
      OUTLINED_FUNCTION_15_13();
      sub_25768C180(v65, v70);
      v62 += v63;
      --v58;
      v1 = v65;
    }

    while (v58);
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
  }

  *(v6 + 8) = v59;
  OUTLINED_FUNCTION_35();
}

void NeuralNetworkClassifier.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v30[1] = v1;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for NeuralNetworkClassifier();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_25768C0D0(v0, v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257745520;
  v21 = OUTLINED_FUNCTION_34_8(v20, 24940);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A098, &unk_257744EB0);
  *(v20 + 48) = v21;
  *(v20 + 72) = v22;
  strcpy((v20 + 80), "preprocessors");
  *(v20 + 94) = -4864;
  v23 = NeuralNetworkClassifier.preprocessors.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0A0, &qword_257770100);
  *(v20 + 96) = v23;
  *(v20 + 120) = v24;
  *(v20 + 128) = 0xD000000000000016;
  *(v20 + 136) = 0x800000025777A030;
  *(v20 + 168) = &type metadata for NeuralNetwork.ArrayShapeMapping;
  v25 = *(v0 + 24) == 1 && *(v0 + 16) != 0;
  *(v20 + 144) = v25;
  *(v20 + 176) = 0xD000000000000016;
  *(v20 + 184) = 0x800000025777A050;
  *(v20 + 192) = *(v0 + 40);
  *(v20 + 216) = &type metadata for NeuralNetwork.ImageShapeMapping;
  *(v20 + 224) = 0x62614C7373616C63;
  *(v20 + 232) = 0xEB00000000736C65;
  *(v20 + 264) = &type metadata for NeuralNetworkClassifier.ClassLabels;
  NeuralNetworkClassifier.classLabels.getter(v20 + 240);
  *(v20 + 272) = 0xD000000000000019;
  *(v20 + 280) = 0x800000025777FCB0;
  v26 = (v0 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));
  v27 = *v26;
  v28 = v26[1];
  *(v20 + 312) = MEMORY[0x277D837D0];
  *(v20 + 288) = v27;
  *(v20 + 296) = v28;
  v29 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v29);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetworkClassifier.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374(v4, v5);
}

uint64_t sub_25768BF08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NeuralNetworkClassifier()
{
  result = qword_281537AB0;
  if (!qword_281537AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25768BFC8()
{
  result = qword_27F87BAF8;
  if (!qword_27F87BAF8)
  {
    type metadata accessor for Proto_NeuralNetworkClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BAF8);
  }

  return result;
}

uint64_t sub_25768C048()
{
  result = type metadata accessor for Proto_NeuralNetworkClassifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25768C0D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_25768C128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25768C180(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_23()
{

  return sub_25768C128(v0, type metadata accessor for Proto_Int64Vector);
}

uint64_t OUTLINED_FUNCTION_34_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x737265790000;
  *(a1 + 40) = 0xE600000000000000;

  return NeuralNetworkClassifier.layers.getter();
}

BOOL sub_25768C39C(float *a1, float *a2, uint64_t (*a3)(void, float))
{
  result = 0;
  if (*a1 == *a2)
  {
    v3 = *(a3(0, *a1) + 20);
    sub_2577431B4();
    sub_25768C788(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV15EqualParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  *(v1 + 32) = 0x6168706C41;
  *(v1 + 40) = 0xE500000000000000;
  v2 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v3;
  return v1;
}

uint64_t sub_25768C57C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25768C788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25768CA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.unary(name:inputName:outputName:function:shift:scale:alpha:epsilon:)()
{
  OUTLINED_FUNCTION_29_2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v36 = v14;
  v37 = v15;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - v20;
  v22 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v35 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v27 = swift_allocObject();
  v34 = xmmword_2577442B0;
  *(v27 + 16) = xmmword_2577442B0;
  *(v27 + 32) = v13;
  *(v27 + 40) = v11;
  v28 = swift_allocObject();
  *(v28 + 16) = v34;
  *(v28 + 32) = v9;
  *(v28 + 40) = v7;
  *v26 = 0;
  *(v26 + 8) = 1;
  v29 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  *(v26 + 20) = 0;
  *(v26 + 12) = 0;
  v30 = *(v29 + 36);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v26 = v35;
  *(v26 + 8) = 1;
  *(v26 + 20) = v3;
  *(v26 + 24) = v2;
  *(v26 + 12) = v1;
  *(v26 + 16) = v0;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v31 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v17 + v31) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v28);
  sub_2574897E0(v21);
  v32 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v32);
  sub_25752846C();
  return sub_257634BB4(v26);
}

uint64_t static NeuralNetwork.Layer.Kind.unary(function:shift:scale:alpha:epsilon:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = OUTLINED_FUNCTION_3_43(v0, v1);
  OUTLINED_FUNCTION_9_24(v2);
  OUTLINED_FUNCTION_6_34();
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.UnaryFunctionParameters.init(function:shift:scale:alpha:epsilon:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = OUTLINED_FUNCTION_3_43(v0, v1);
  OUTLINED_FUNCTION_9_24(v2);
  OUTLINED_FUNCTION_6_34();
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.propertyDescriptions.getter()
{
  v3 = 0xEB00000000746F6FLL;
  if (*(v0 + 8) == 1)
  {
    v4 = 0x5220657261757153;
    switch(*v0)
    {
      case 1:
        v3 = 0x8000000257780EE0;
        v4 = 0xD000000000000013;
        break;
      case 2:
        v3 = 0xE700000000000000;
        v4 = 0x65737265766E49;
        break;
      case 3:
        v3 = 0xE500000000000000;
        v4 = 0x7265776F50;
        break;
      case 4:
        v3 = 0xE300000000000000;
        v4 = 7370853;
        break;
      case 5:
        v3 = 0xE300000000000000;
        v4 = 6778732;
        break;
      case 6:
        v3 = 0xE300000000000000;
        v4 = 7561825;
        break;
      case 7:
        v3 = 0xE900000000000064;
        v4 = 0x6C6F687365726854;
        break;
      default:
        break;
    }
  }

  else
  {
    v4 = 0x5220657261757153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 0x6E6F6974637546;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  if (*(v0 + 12) != 0.0)
  {
    v3 = sub_257743794();
    v4 = v6;
    v1 = 2;
    sub_257469388();
    v5 = v7;
    v7[2] = 2;
    v7[8] = 0x6168706C41;
    v7[9] = 0xE500000000000000;
    v7[10] = v3;
    v7[11] = v4;
  }

  if (*(v0 + 16) != 0.0)
  {
    sub_257743794();
    OUTLINED_FUNCTION_4_33();
    if (v8)
    {
      OUTLINED_FUNCTION_5_35();
      v5 = v17;
    }

    *(v5 + 16) = v1;
    v9 = (v5 + 32 * v2);
    v9[4] = 0x6E6F6C69737045;
    v9[5] = 0xE700000000000000;
    v9[6] = v3;
    v9[7] = v4;
  }

  if (*(v0 + 20) != 0.0)
  {
    sub_257743794();
    OUTLINED_FUNCTION_4_33();
    if (v8)
    {
      OUTLINED_FUNCTION_5_35();
      v5 = v18;
    }

    *(v5 + 16) = v1;
    v10 = (v5 + 32 * v2);
    v10[4] = 0x7466696853;
    v10[5] = 0xE500000000000000;
    v10[6] = v3;
    v10[7] = v4;
  }

  if (*(v0 + 24) != 0.0)
  {
    v11 = sub_257743794();
    v13 = v12;
    v14 = *(v5 + 16);
    if (v14 >= *(v5 + 24) >> 1)
    {
      sub_257469388();
      v5 = v19;
    }

    *(v5 + 16) = v14 + 1;
    v15 = (v5 + 32 * v14);
    v15[4] = 0x656C616353;
    v15[5] = 0xE500000000000000;
    v15[6] = v11;
    v15[7] = v13;
  }

  return v5;
}

void NeuralNetwork.Layer.UnaryFunctionParameters.function.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *NeuralNetwork.Layer.UnaryFunctionParameters.function.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.UnaryFunctionParameters.function.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.alpha.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_25749D2F4;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.epsilon.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_25749D3D8;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.shift.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 20);
  return sub_25768D214;
}

float sub_25768D214(float *a1)
{
  result = a1[2];
  *(*a1 + 20) = result;
  return result;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.scale.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_25768D258;
}

float sub_25768D258(float *a1)
{
  result = a1[2];
  *(*a1 + 24) = result;
  return result;
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.hash(into:)()
{
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  OUTLINED_FUNCTION_0_62();
  sub_25768D7FC(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  OUTLINED_FUNCTION_0_62();
  sub_25768D7FC(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25768D360()
{
  sub_257743A14();
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  sub_25768D7FC(&qword_27F87E0C8, type metadata accessor for Proto_UnaryFunctionLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.customMirror.getter()
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
  v10 = &v21 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25768D708(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257744000;
  *(v15 + 32) = 0x6E6F6974636E7566;
  *(v15 + 40) = 0xE800000000000000;
  *(v15 + 72) = &type metadata for NeuralNetwork.Layer.UnaryFunctionParameters.Function;
  NeuralNetwork.Layer.UnaryFunctionParameters.function.getter((v15 + 48));
  v16 = v0[4];
  *(v15 + 96) = v0[3];
  *(v15 + 144) = v16;
  v17 = v0[6];
  *(v15 + 192) = v0[5];
  *(v15 + 80) = 0x6168706C61;
  *(v15 + 88) = 0xE500000000000000;
  v18 = MEMORY[0x277D83A90];
  *(v15 + 120) = MEMORY[0x277D83A90];
  *(v15 + 128) = 0x6E6F6C69737065;
  *(v15 + 136) = 0xE700000000000000;
  *(v15 + 168) = v18;
  *(v15 + 176) = 0x7466696873;
  *(v15 + 184) = 0xE500000000000000;
  *(v15 + 216) = v18;
  *(v15 + 224) = 0x656C616373;
  *(v15 + 232) = 0xE500000000000000;
  *(v15 + 264) = v18;
  *(v15 + 240) = v17;
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

unint64_t NeuralNetwork.Layer.UnaryFunctionParameters.Function.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25768D694@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UnaryFunctionParameters.Function.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters()
{
  result = qword_27F880C30;
  if (!qword_27F880C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25768D708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25768D7FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25768D848()
{
  result = qword_27F880C28;
  if (!qword_27F880C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880C28);
  }

  return result;
}

uint64_t sub_25768D8C4()
{
  result = type metadata accessor for Proto_UnaryFunctionLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s23UnaryFunctionParametersV8FunctionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s23UnaryFunctionParametersV8FunctionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_43@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;

  return type metadata accessor for Proto_UnaryFunctionLayerParams(0);
}

void OUTLINED_FUNCTION_5_35()
{

  sub_257469388();
}

void OUTLINED_FUNCTION_6_34()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 20) = v6;
  *(v0 + 24) = v5;
  *(v0 + 12) = v4;
  *(v0 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{
  *(v1 + 20) = 0;
  *(v1 + 12) = 0;
  v3 = v1 + *(a1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25768DB44()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v84 = type metadata accessor for FeatureType.SequenceParameters(0);
  v6 = OUTLINED_FUNCTION_4(v84);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v86 = v9;
  v10 = OUTLINED_FUNCTION_153();
  v82 = type metadata accessor for FeatureType.DictionaryParameters(v10);
  v11 = OUTLINED_FUNCTION_4(v82);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v85 = v14;
  OUTLINED_FUNCTION_153();
  v80 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v15 = OUTLINED_FUNCTION_4(v80);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v83 = v18;
  v19 = OUTLINED_FUNCTION_153();
  v79 = type metadata accessor for FeatureType.ImageParameters(v19);
  v20 = OUTLINED_FUNCTION_4(v79);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v81 = v23;
  v24 = OUTLINED_FUNCTION_153();
  v25 = type metadata accessor for FeatureType.StringParameters(v24);
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = (v30 - v29);
  v32 = type metadata accessor for FeatureType.DoubleParameters(0);
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v36 = OUTLINED_FUNCTION_37_8();
  v37 = type metadata accessor for FeatureType.IntParameters(v36);
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v43 = (v42 - v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  OUTLINED_FUNCTION_13(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_75_0();
  sub_257691000(v3, v1);
  v48 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v48) == 1)
  {
    v49 = &v5[*(v32 + 20)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_1_50();
    sub_257690ACC(v3, v50);
    *v5 = 0;
LABEL_3:
    OUTLINED_FUNCTION_25_12();
LABEL_4:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35();
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v67 = *(v32 + 20);
        OUTLINED_FUNCTION_33_8();
        OUTLINED_FUNCTION_45_5();
        v68 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v69, v70);
        *v0 = v68;
        OUTLINED_FUNCTION_19_20();
        OUTLINED_FUNCTION_46_8();
        goto LABEL_3;
      case 2u:
        v59 = *(v25 + 20);
        sub_25768EF28();
        v60 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v61, v62);
        *v31 = v60;
        OUTLINED_FUNCTION_21_16();
        sub_25768EF28();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 3u:
        v63 = *(v79 + 20);
        OUTLINED_FUNCTION_45_5();
        v64 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v65, v66);
        *v81 = v64;
        OUTLINED_FUNCTION_11_23();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 4u:
        v55 = *(v80 + 20);
        OUTLINED_FUNCTION_45_5();
        v56 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v57, v58);
        *v83 = v56;
        OUTLINED_FUNCTION_13_16();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 5u:
        v71 = *(v82 + 20);
        OUTLINED_FUNCTION_45_5();
        v72 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v73, v74);
        *v85 = v72;
        OUTLINED_FUNCTION_10_28();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 6u:
        v75 = *(v84 + 20);
        OUTLINED_FUNCTION_45_5();
        v76 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v77, v78);
        *v86 = v76;
        OUTLINED_FUNCTION_9_25();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 7u:
        sub_2577438C4();
        __break(1u);
        break;
      default:
        v51 = *(v37 + 20);
        OUTLINED_FUNCTION_32_9();
        sub_25768EF28();
        v52 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v53, v54);
        *v43 = v52;
        OUTLINED_FUNCTION_17_17();
        sub_25768EF28();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
    }
  }
}

void sub_25768E090()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for Proto_StateFeatureType(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v141 = v8;
  v9 = OUTLINED_FUNCTION_153();
  v140 = type metadata accessor for FeatureType.StateParameters(v9);
  v10 = OUTLINED_FUNCTION_4(v140);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v142 = v13;
  v14 = OUTLINED_FUNCTION_153();
  v15 = type metadata accessor for Proto_SequenceFeatureType(v14);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v138 = v19;
  v20 = OUTLINED_FUNCTION_153();
  v137 = type metadata accessor for FeatureType.SequenceParameters(v20);
  v21 = OUTLINED_FUNCTION_4(v137);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v139 = v24;
  v25 = OUTLINED_FUNCTION_153();
  v26 = type metadata accessor for Proto_DictionaryFeatureType(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v135 = v30;
  v31 = OUTLINED_FUNCTION_153();
  v134 = type metadata accessor for FeatureType.DictionaryParameters(v31);
  v32 = OUTLINED_FUNCTION_4(v134);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v136 = v35;
  v36 = OUTLINED_FUNCTION_153();
  v37 = type metadata accessor for Proto_ArrayFeatureType(v36);
  v38 = OUTLINED_FUNCTION_13(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v132 = v41;
  OUTLINED_FUNCTION_153();
  v131 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v42 = OUTLINED_FUNCTION_4(v131);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_1();
  v133 = v45;
  v46 = OUTLINED_FUNCTION_153();
  v47 = type metadata accessor for Proto_ImageFeatureType(v46);
  v48 = OUTLINED_FUNCTION_13(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_1();
  v129 = v51;
  v52 = OUTLINED_FUNCTION_153();
  v128 = type metadata accessor for FeatureType.ImageParameters(v52);
  v53 = OUTLINED_FUNCTION_4(v128);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v130 = v56;
  v57 = OUTLINED_FUNCTION_153();
  v58 = type metadata accessor for Proto_StringFeatureType(v57);
  v59 = OUTLINED_FUNCTION_13(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_1();
  v127 = v62;
  v63 = OUTLINED_FUNCTION_153();
  v126 = type metadata accessor for FeatureType.StringParameters(v63);
  v64 = OUTLINED_FUNCTION_4(v126);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_3();
  v69 = (v68 - v67);
  v70 = type metadata accessor for Proto_DoubleFeatureType(0);
  v71 = OUTLINED_FUNCTION_13(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_3();
  v74 = type metadata accessor for FeatureType.DoubleParameters(0);
  v75 = OUTLINED_FUNCTION_4(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3();
  v78 = OUTLINED_FUNCTION_332();
  v79 = type metadata accessor for Proto_Int64FeatureType(v78);
  v80 = OUTLINED_FUNCTION_13(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_3();
  v83 = type metadata accessor for FeatureType.IntParameters(0);
  v84 = OUTLINED_FUNCTION_4(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_3();
  v87 = OUTLINED_FUNCTION_37_8();
  v88 = type metadata accessor for FeatureType(v87);
  v89 = OUTLINED_FUNCTION_4(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_3();
  v94 = v93 - v92;
  type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  v99 = type metadata accessor for Proto_FeatureType(0);
  v143 = *(v99 + 20);
  *(v3 + v143) = 0;
  v100 = v3 + *(v99 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_0_63();
  sub_257690A74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_19_20();
      sub_25768EF28();
      v117 = *(v74 + 20);
      v118 = sub_257690A74();
      OUTLINED_FUNCTION_42_10(v118, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_33_8();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      v119 = OUTLINED_FUNCTION_22_15();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v94);
      LOBYTE(v94) = *v1;
      OUTLINED_FUNCTION_4_34();
      v112 = v1;
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_21_16();
      sub_25768EF28();
      v106 = *(v126 + 20);
      v107 = sub_257690A74();
      OUTLINED_FUNCTION_42_10(v107, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_39_2();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      v108 = OUTLINED_FUNCTION_22_15();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v127);
      LOBYTE(v94) = *v69;
      OUTLINED_FUNCTION_6_35();
      v112 = v69;
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_11_23();
      v0 = v130;
      sub_25768EF28();
      LOBYTE(v94) = v129;
      v113 = *(v128 + 20);
      v114 = OUTLINED_FUNCTION_35_7();
      OUTLINED_FUNCTION_42_10(v114, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_39_2();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_14();
      v103 = type metadata accessor for FeatureType.ImageParameters;
      goto LABEL_10;
    case 4u:
      OUTLINED_FUNCTION_13_16();
      v0 = v133;
      sub_25768EF28();
      LOBYTE(v94) = v132;
      v104 = *(v131 + 20);
      v105 = OUTLINED_FUNCTION_35_7();
      OUTLINED_FUNCTION_42_10(v105, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_39_2();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_14();
      v103 = type metadata accessor for FeatureType.ShapedArrayParameters;
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_10_28();
      v0 = v136;
      sub_25768EF28();
      LOBYTE(v94) = v135;
      v122 = *(v134 + 20);
      v123 = OUTLINED_FUNCTION_35_7();
      OUTLINED_FUNCTION_42_10(v123, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_39_2();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_14();
      v103 = type metadata accessor for FeatureType.DictionaryParameters;
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_9_25();
      v0 = v139;
      sub_25768EF28();
      LOBYTE(v94) = v138;
      v124 = *(v137 + 20);
      v125 = OUTLINED_FUNCTION_35_7();
      OUTLINED_FUNCTION_42_10(v125, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_39_2();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_14();
      v103 = type metadata accessor for FeatureType.SequenceParameters;
      goto LABEL_10;
    case 7u:
      OUTLINED_FUNCTION_20_13();
      v0 = v142;
      sub_25768EF28();
      LOBYTE(v94) = v141;
      v115 = *(v140 + 20);
      v116 = OUTLINED_FUNCTION_35_7();
      OUTLINED_FUNCTION_42_10(v116, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_39_2();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_14();
      v103 = type metadata accessor for FeatureType.StateParameters;
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_17_17();
      sub_25768EF28();
      v101 = *(v83 + 20);
      v102 = sub_257690A74();
      OUTLINED_FUNCTION_42_10(v102, &qword_27F879C28, &qword_257744540);
      OUTLINED_FUNCTION_32_9();
      sub_25768EF28();
      OUTLINED_FUNCTION_24_14();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_14();
      v103 = type metadata accessor for FeatureType.IntParameters;
LABEL_10:
      v111 = v103;
      v112 = v0;
LABEL_11:
      sub_257690ACC(v112, v111);
      *(v3 + v143) = v94;
      OUTLINED_FUNCTION_35();
      return;
  }
}

unint64_t sub_25768E918()
{
  v3 = v0;
  v4 = type metadata accessor for FeatureType.StateParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_37_8();
  v9 = type metadata accessor for FeatureType.SequenceParameters(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v13 = type metadata accessor for FeatureType.DictionaryParameters(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v27 = type metadata accessor for FeatureType.ImageParameters(0);
  v28 = OUTLINED_FUNCTION_13(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v31 = OUTLINED_FUNCTION_332();
  v32 = type metadata accessor for FeatureType(v31);
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_63();
  sub_257690A74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      OUTLINED_FUNCTION_11_23();
      sub_25768EF28();
      sub_2576B23A4();
      OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_5_36();
      v43 = v2;
      goto LABEL_10;
    case 4u:
      OUTLINED_FUNCTION_13_16();
      sub_25768EF28();
      sub_2576A374C();
      OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_2_42();
      v43 = v26;
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_10_28();
      sub_25768EF28();
      sub_25772D19C();
      OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_3_44();
      v43 = v19;
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_9_25();
      sub_25768EF28();
      sub_25772B5C4();
      OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_18_24();
      v43 = v1;
      goto LABEL_10;
    case 7u:
      OUTLINED_FUNCTION_20_13();
      sub_25768EF28();
      sub_2576B074C();
      OUTLINED_FUNCTION_30_10();
      v43 = OUTLINED_FUNCTION_16_13();
LABEL_10:
      sub_257690ACC(v43, v42);
      break;
    default:
      OUTLINED_FUNCTION_23_14();
      FeatureType.parameters.getter();
      v36 = v45[4];
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      v37 = *(v36 + 8);
      v38 = OUTLINED_FUNCTION_263();
      v40 = v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v45);
      if (v40)
      {
        v45[0] = FeatureType.name.getter();
        v45[1] = v41;
        MEMORY[0x259C64E90](63, 0xE100000000000000);
        v3 = v45[0];
      }

      else
      {
        v3 = FeatureType.name.getter();
      }

      break;
  }

  return v3;
}

uint64_t sub_25768EC80@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = &a3[*(a2(0) + 20)];
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  return result;
}

uint64_t FeatureType.parameters.getter()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for FeatureType(v1);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_63();
  sub_257690A74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = type metadata accessor for FeatureType.DoubleParameters(0);
      v7 = &protocol witness table for FeatureType.DoubleParameters;
      break;
    case 2u:
      v6 = type metadata accessor for FeatureType.StringParameters(0);
      v7 = &protocol witness table for FeatureType.StringParameters;
      break;
    case 3u:
      v6 = type metadata accessor for FeatureType.ImageParameters(0);
      v7 = &protocol witness table for FeatureType.ImageParameters;
      break;
    case 4u:
      v6 = type metadata accessor for FeatureType.ShapedArrayParameters();
      v7 = &protocol witness table for FeatureType.ShapedArrayParameters;
      break;
    case 5u:
      v6 = type metadata accessor for FeatureType.DictionaryParameters(0);
      v7 = &protocol witness table for FeatureType.DictionaryParameters;
      break;
    case 6u:
      v6 = type metadata accessor for FeatureType.SequenceParameters(0);
      v7 = &protocol witness table for FeatureType.SequenceParameters;
      break;
    case 7u:
      v6 = type metadata accessor for FeatureType.StateParameters(0);
      v7 = &protocol witness table for FeatureType.StateParameters;
      break;
    default:
      type metadata accessor for FeatureType.IntParameters(0);
      OUTLINED_FUNCTION_31_8();
      v7 = &protocol witness table for FeatureType.IntParameters;
      break;
  }

  v0[3] = v6;
  v0[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(v0);
  return sub_25768EF28();
}

uint64_t sub_25768EF28()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t FeatureType.isOptional.getter()
{
  FeatureType.parameters.getter();
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

void FeatureType.isOptional.setter()
{
  OUTLINED_FUNCTION_31();
  v58 = v3;
  v4 = type metadata accessor for FeatureType.StateParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v57 = v8;
  v9 = OUTLINED_FUNCTION_153();
  v10 = type metadata accessor for FeatureType.SequenceParameters(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v56 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for FeatureType.DictionaryParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v55 = v20;
  OUTLINED_FUNCTION_153();
  v21 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = OUTLINED_FUNCTION_332();
  v26 = type metadata accessor for FeatureType.ImageParameters(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v32 = (v31 - v30);
  v33 = type metadata accessor for FeatureType.StringParameters(0);
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v39 = (v38 - v37);
  v40 = type metadata accessor for FeatureType.DoubleParameters(0);
  v41 = OUTLINED_FUNCTION_13(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v44 = type metadata accessor for FeatureType.IntParameters(0);
  v45 = OUTLINED_FUNCTION_13(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v48 = OUTLINED_FUNCTION_37_8();
  v49 = type metadata accessor for FeatureType(v48);
  v50 = OUTLINED_FUNCTION_4(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  sub_25768EF28();
  v53 = v58 & 1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25768EF28();
      *v1 = v53;
      break;
    case 2u:
      sub_25768EF28();
      *v39 = v53;
      break;
    case 3u:
      sub_25768EF28();
      *v32 = v53;
      break;
    case 4u:
      sub_25768EF28();
      *v2 = v53;
      break;
    case 5u:
      v54 = v55;
      goto LABEL_10;
    case 6u:
      v54 = v56;
      goto LABEL_10;
    case 7u:
      v54 = v57;
LABEL_10:
      sub_25768EF28();
      *v54 = v53;
      break;
    default:
      OUTLINED_FUNCTION_31_8();
      sub_25768EF28();
      *v0 = v53;
      break;
  }

  sub_25768EF28();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

void (*FeatureType.isOptional.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  FeatureType.parameters.getter();
  v4 = v3[3];
  v5 = v3[4];
  v6 = OUTLINED_FUNCTION_263();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v3);
  *(v3 + 48) = v8 & 1;
  return sub_25768F48C;
}

void sub_25768F48C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  FeatureType.isOptional.setter();

  free(v1);
}

unint64_t FeatureType.name.getter()
{
  v0 = type metadata accessor for FeatureType(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_0_63();
  sub_257690A74();
  v7 = 0x72656765746E49;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = 0x656C62756F44;
      break;
    case 2u:
      v7 = 0x676E69727453;
      break;
    case 3u:
      v8 = 1734438217;
      goto LABEL_7;
    case 4u:
      v7 = 0x7241646570616853;
      break;
    case 5u:
      v7 = 0x616E6F6974636944;
      break;
    case 6u:
      v7 = 0x65636E6575716553;
      break;
    case 7u:
      v8 = 1952543827;
LABEL_7:
      v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  sub_257690ACC(v6, type metadata accessor for FeatureType);
  return v7;
}

uint64_t FeatureType.init()()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = &v0[*(type metadata accessor for FeatureType.DoubleParameters(v1) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = 0;
  OUTLINED_FUNCTION_25_12();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static FeatureType.image(width:height:colorSpace:optional:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = &v6[*(type metadata accessor for FeatureType.ImageParameters(0) + 20)];
  v11 = type metadata accessor for Proto_ImageFeatureType(0);
  v12 = v11[6];
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = v10 + v11[8];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v10 = v5;
  v10[1] = v3;
  v18 = v10 + v11[7];
  *v18 = v9 + 1;
  v18[8] = 1;
  *v7 = v1;
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_35();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static FeatureType.shapedArray(dataType:shape:optional:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = *a1;

  FeatureType.ShapedArrayParameters.init(dataType:shape:optional:)(&v8, a2, a3, a4);
  OUTLINED_FUNCTION_25_12();

  return swift_storeEnumTagMultiPayload();
}

void static FeatureType.shapedArray(dataType:shapeFlexibility:optional:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_271();
  v13 = *v6;
  v14 = *v4;
  v15 = *(v4 + 8);
  v16 = &v8[*(type metadata accessor for FeatureType.ShapedArrayParameters() + 20)];
  *v16 = MEMORY[0x277D84F90];
  v17 = type metadata accessor for Proto_ArrayFeatureType(0);
  v18 = v17[6];
  v19 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = &v16[v17[7]];
  *v23 = 0;
  v23[8] = -1;
  v24 = &v16[v17[8]];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  if (v15)
  {
    sub_2576A5D40();
  }

  else
  {
    sub_2576A5AB8();
  }

  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  v25 = OUTLINED_FUNCTION_22_15();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v19);
  sub_257690A04(v0, &v16[v18]);
  *(v16 + 1) = qword_2577708C8[v13];
  v16[16] = 1;
  *v8 = v2 & 1;
  OUTLINED_FUNCTION_25_12();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25768F96C@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = &v21 + *(a2(0) + 20) - v11;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v12 = 0;
  swift_storeEnumTagMultiPayload();
  v14 = &a3[*(type metadata accessor for FeatureType.DictionaryParameters(0) + 20)];
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = &v14[*(type metadata accessor for Proto_DictionaryFeatureType(0) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  OUTLINED_FUNCTION_263();
  sub_257690A74();
  FeatureType.DictionaryParameters.keyType.setter();
  sub_257690ACC(v12, type metadata accessor for FeatureType.DictionaryParameters.KeyType);
  OUTLINED_FUNCTION_25_12();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25768FB0C(char a1, uint64_t (*a2)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_16_1();
  v7 = type metadata accessor for FeatureType.SequenceParameters.ElementType(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_37_8();
  v12 = &v3[*(a2(v11) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = 0;
  swift_storeEnumTagMultiPayload();
  v13 = &v2[*(type metadata accessor for FeatureType.SequenceParameters(0) + 20)];
  v14 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = type metadata accessor for Proto_SequenceFeatureType(0);
  v19 = v13 + *(v18 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(v18 + 24);
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_2574695E4(v13, &qword_27F87A898, &unk_257777D20);
  sub_25772BD08();
  sub_257690ACC(v3, type metadata accessor for FeatureType.SequenceParameters.ElementType);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  *v2 = a1;
  OUTLINED_FUNCTION_25_12();
  return swift_storeEnumTagMultiPayload();
}

void static FeatureType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v141 = v1;
  v142 = v2;
  v130 = type metadata accessor for FeatureType.StateParameters(0);
  v3 = OUTLINED_FUNCTION_4(v130);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v138 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v129 = type metadata accessor for FeatureType.SequenceParameters(v7);
  v8 = OUTLINED_FUNCTION_4(v129);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v137 = v11;
  v12 = OUTLINED_FUNCTION_153();
  v128 = type metadata accessor for FeatureType.DictionaryParameters(v12);
  v13 = OUTLINED_FUNCTION_4(v128);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v136 = v16;
  OUTLINED_FUNCTION_153();
  v127 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v17 = OUTLINED_FUNCTION_4(v127);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v135 = v20;
  v21 = OUTLINED_FUNCTION_153();
  v126 = type metadata accessor for FeatureType.ImageParameters(v21);
  v22 = OUTLINED_FUNCTION_4(v126);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_1();
  v133 = v25;
  v26 = OUTLINED_FUNCTION_153();
  v125 = type metadata accessor for FeatureType.StringParameters(v26);
  v27 = OUTLINED_FUNCTION_4(v125);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v134 = v30;
  v31 = OUTLINED_FUNCTION_153();
  v124 = type metadata accessor for FeatureType.DoubleParameters(v31);
  v32 = OUTLINED_FUNCTION_4(v124);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v132 = v35;
  v36 = OUTLINED_FUNCTION_153();
  v123 = type metadata accessor for FeatureType.IntParameters(v36);
  v37 = OUTLINED_FUNCTION_4(v123);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v131 = v40;
  v41 = OUTLINED_FUNCTION_153();
  v42 = type metadata accessor for FeatureType(v41);
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v140 = &v122 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v139 = &v122 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v122 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v122 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v122 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v122 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v122 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v122 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C40, &qword_257770650);
  OUTLINED_FUNCTION_13(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_75_0();
  v72 = *(v71 + 56);
  sub_257690A74();
  sub_257690A74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_63();
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 1)
      {
        OUTLINED_FUNCTION_4_34();
        v95 = v64;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_19_20();
      v86 = v132;
      sub_25768EF28();
      v87 = *v64;
      OUTLINED_FUNCTION_49_5();
      if (v78)
      {
        v111 = *(v124 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_12_24();
        sub_257690C44(v112, v113);
        sub_257743644();
      }

      OUTLINED_FUNCTION_4_34();
      sub_257690ACC(v86, v88);
      OUTLINED_FUNCTION_4_34();
      v99 = v64;
      goto LABEL_57;
    case 2u:
      OUTLINED_FUNCTION_0_63();
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 2)
      {
        OUTLINED_FUNCTION_6_35();
        v95 = v61;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_21_16();
      v76 = v134;
      sub_25768EF28();
      v77 = *v61;
      OUTLINED_FUNCTION_49_5();
      if (v78)
      {
        v100 = *(v125 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_12_24();
        sub_257690C44(v101, v102);
        sub_257743644();
      }

      OUTLINED_FUNCTION_6_35();
      sub_257690ACC(v76, v79);
      OUTLINED_FUNCTION_6_35();
      v99 = v61;
      goto LABEL_57;
    case 3u:
      OUTLINED_FUNCTION_0_63();
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 3)
      {
        OUTLINED_FUNCTION_5_36();
        v95 = v58;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_11_23();
      v80 = v133;
      sub_25768EF28();
      v81 = *v58;
      OUTLINED_FUNCTION_49_5();
      if (v78)
      {
        v103 = *(v126 + 20);
        sub_2574BCFA0();
      }

      OUTLINED_FUNCTION_5_36();
      sub_257690ACC(v80, v82);
      OUTLINED_FUNCTION_5_36();
      v99 = v58;
      goto LABEL_57;
    case 4u:
      OUTLINED_FUNCTION_0_63();
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 4)
      {
        OUTLINED_FUNCTION_2_42();
        v95 = v55;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_13_16();
      v74 = v135;
      sub_25768EF28();
      if (*v55 == *v74)
      {
        v97 = *(v127 + 20);
        sub_2574C0698();
      }

      OUTLINED_FUNCTION_2_42();
      sub_257690ACC(v74, v75);
      OUTLINED_FUNCTION_2_42();
      v99 = v55;
      goto LABEL_57;
    case 5u:
      OUTLINED_FUNCTION_0_63();
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 5)
      {
        OUTLINED_FUNCTION_3_44();
        v95 = v52;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_10_28();
      v89 = v136;
      sub_25768EF28();
      v90 = *v52;
      OUTLINED_FUNCTION_49_5();
      if (v78)
      {
        v114 = *(v128 + 20);
        sub_2574C2CDC();
      }

      OUTLINED_FUNCTION_3_44();
      sub_257690ACC(v89, v91);
      OUTLINED_FUNCTION_3_44();
      v99 = v52;
      goto LABEL_57;
    case 6u:
      OUTLINED_FUNCTION_0_63();
      v66 = v139;
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 6)
      {
        v73 = type metadata accessor for FeatureType.SequenceParameters;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_9_25();
      v92 = v137;
      sub_25768EF28();
      if (*v66 == *v92)
      {
        v115 = *(v129 + 20);
        sub_2574C4598();
        v117 = v116;
        OUTLINED_FUNCTION_18_24();
        sub_257690ACC(v92, v118);
        if (v117)
        {
          v109 = type metadata accessor for FeatureType.SequenceParameters;
          goto LABEL_54;
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_24();
        sub_257690ACC(v92, v93);
      }

      v110 = type metadata accessor for FeatureType.SequenceParameters;
      goto LABEL_56;
    case 7u:
      OUTLINED_FUNCTION_0_63();
      v66 = v140;
      sub_257690A74();
      if (OUTLINED_FUNCTION_43_8() != 7)
      {
        v73 = type metadata accessor for FeatureType.StateParameters;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_20_13();
      v83 = v138;
      sub_25768EF28();
      if (*v66 == *v83)
      {
        v104 = *(v130 + 20);
        sub_2574C55BC();
        v106 = v105;
        v107 = OUTLINED_FUNCTION_16_13();
        sub_257690ACC(v107, v108);
        if (v106)
        {
          v109 = type metadata accessor for FeatureType.StateParameters;
          goto LABEL_54;
        }
      }

      else
      {
        v84 = OUTLINED_FUNCTION_16_13();
        sub_257690ACC(v84, v85);
      }

      v110 = type metadata accessor for FeatureType.StateParameters;
      goto LABEL_56;
    default:
      OUTLINED_FUNCTION_0_63();
      sub_257690A74();
      if (!OUTLINED_FUNCTION_43_8())
      {
        OUTLINED_FUNCTION_17_17();
        v96 = v131;
        sub_25768EF28();
        if (*v66 == *v96)
        {
          v119 = *(v123 + 20);
          sub_2577431B4();
          OUTLINED_FUNCTION_12_24();
          sub_257690C44(v120, v121);
          LOBYTE(v119) = sub_257743644();
          OUTLINED_FUNCTION_34_9();
          if (v119)
          {
            v109 = type metadata accessor for FeatureType.IntParameters;
LABEL_54:
            v98 = v109;
            v99 = v66;
LABEL_57:
            sub_257690ACC(v99, v98);
            OUTLINED_FUNCTION_23_14();
            goto LABEL_58;
          }
        }

        else
        {
          OUTLINED_FUNCTION_34_9();
        }

        v110 = type metadata accessor for FeatureType.IntParameters;
LABEL_56:
        v98 = v110;
        v99 = v66;
        goto LABEL_57;
      }

      v73 = type metadata accessor for FeatureType.IntParameters;
LABEL_32:
      v94 = v73;
      v95 = v66;
LABEL_33:
      sub_257690ACC(v95, v94);
      sub_2574695E4(v0, &qword_27F880C40, &qword_257770650);
LABEL_58:
      OUTLINED_FUNCTION_35();
      return;
  }
}

uint64_t sub_2576906B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_0();
  v5 = *(v4(v3) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_12_24();
  sub_257690C44(v6, v7);
  return sub_257743644() & 1;
}

void sub_257690814()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = v0;
  OUTLINED_FUNCTION_16_1();
  v5 = sub_257743A84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_0();
  v12 = v3(0);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  sub_257690A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = 0x6E6F6974704F7369;
  *(v16 + 40) = 0xEA00000000006C61;
  v17 = *v4;
  *(v16 + 72) = MEMORY[0x277D839B0];
  *(v16 + 48) = v17;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v5);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257690A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257690A74()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257690ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257690C44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257690C8C()
{
  result = type metadata accessor for FeatureType.IntParameters(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeatureType.DoubleParameters(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeatureType.StringParameters(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeatureType.ImageParameters(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FeatureType.ShapedArrayParameters();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for FeatureType.DictionaryParameters(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for FeatureType.SequenceParameters(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for FeatureType.StateParameters(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 254)
  {
    v5 = *a1;
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = a4(0);
    v12 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_3(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = a5(0);
    v9 = &v6[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_257690F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257691000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_14()
{
  result = __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);
  v4 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_14()
{

  return sub_257690ACC(v0, type metadata accessor for FeatureType);
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return sub_257690ACC(v0, type metadata accessor for FeatureType.IntParameters);
}

uint64_t OUTLINED_FUNCTION_35_7()
{

  return sub_257690A74();
}

uint64_t OUTLINED_FUNCTION_42_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 96);

  return sub_2574695E4(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_43_8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_25768EF28();
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return sub_25768EF28();
}

uint64_t static NeuralNetwork.Layer.broadcastableMultiply(name:inputNames:outputName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a5;
  v29 = a7;
  v30 = a1;
  v31 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_257743FF0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = v28;
  *(v23 + 56) = a6;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = v29;
  *(v24 + 40) = a8;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  return sub_257634BB4(v22);
}

uint64_t static NeuralNetwork.Layer.BroadcastableMultiplyParameters.== infix(_:_:)()
{
  sub_2577431B4();
  sub_257691B44(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.BroadcastableMultiplyParameters.hash(into:)()
{
  type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  OUTLINED_FUNCTION_0_64();
  sub_257691B44(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.BroadcastableMultiplyParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  OUTLINED_FUNCTION_0_64();
  sub_257691B44(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576917A0()
{
  sub_257743A14();
  type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  sub_257691B44(&qword_27F87DA90, type metadata accessor for Proto_MultiplyBroadcastableLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.BroadcastableMultiplyParameters.customMirror.getter()
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
  v11 = v18 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_257691A50(v1, v15 - v14);
  v18[1] = MEMORY[0x277D84F90];
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters()
{
  result = qword_27F880C50;
  if (!qword_27F880C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257691A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257691B44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257691BB8()
{
  result = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257691C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SoundAnalysisPreprocessorKind.VGGishParameters(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for SoundAnalysisPreprocessorKind(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  v18 = a1 + *(type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_257692A24(a1);
  OUTLINED_FUNCTION_4_35();
  sub_257692698(v1, v16);
  v19 = OUTLINED_FUNCTION_3_45();
  sub_257692A8C(v19, v9);
  OUTLINED_FUNCTION_5_37();
  sub_257692A8C(v9, a1);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v17);
}

uint64_t sub_257691D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - v17;
  sub_257692AE8(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_257692A24(v9);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    return OUTLINED_FUNCTION_7_28();
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    sub_257692A8C(v9, v18);
    sub_257692A8C(v18, v16);
    OUTLINED_FUNCTION_5_37();
    return sub_257692A8C(v16, a2);
  }
}