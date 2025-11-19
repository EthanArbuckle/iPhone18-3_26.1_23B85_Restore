void sub_216C4A38C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = (v11 & 0xFFFFFFFFFFFFFFF8) + (v14 & ~v13) + 32;
  if (v12 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if ((v11 & 0xFFFFFFF8) + (v14 & ~v13) == -32)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v9 < 0x7FFFFFFE)
          {
            v21 = ((a1 + v14) & ~v13);
            if (a2 > 0x7FFFFFFE)
            {
              v22 = v11 & 0xFFFFFFF8;
              if (v22 != -16)
              {
                bzero(v21, (v22 + 16));
                *v21 = a2 - 0x7FFFFFFF;
              }
            }

            else
            {
              *((v21 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if ((v11 & 0xFFFFFFF8) + (v14 & ~v13) == -32)
    {
      v19 = a2 - v12;
    }

    else
    {
      v19 = 1;
    }

    if ((v11 & 0xFFFFFFF8) + (v14 & ~v13) != -32)
    {
      v20 = ~v12 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

void sub_216C4A63C()
{
  if (!qword_280E2A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8118);
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A588);
    }
  }
}

uint64_t sub_216C4A6E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C4A774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v75 = a1;
  v2 = a1 - 8;
  v74 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v72[1] = v3;
  v73 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150);
  OUTLINED_FUNCTION_1();
  v79 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v78 = v7;
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_1();
  v77 = v11;
  MEMORY[0x28223BE20](v12);
  v76 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v83 = v72 - v15;
  OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_1();
  v81 = v17;
  v82 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v80 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C60);
  v21 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v85 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v84 = v24;
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = v72 - v26;
  type metadata accessor for LoadablePageView.LoadingState();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = v72 - v29;
  OUTLINED_FUNCTION_6_5();
  v90 = v4;
  v87 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v89 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v88 = v33;
  sub_21700AEE4();
  v34 = v86;
  sub_21700AEB4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v80;
      v37 = OUTLINED_FUNCTION_14_63();
      v38(v37);
      (*(v9 + 40))(v36, v8, v9);
      v39 = OUTLINED_FUNCTION_17_58();
      v40 = v83;
      v41 = OUTLINED_FUNCTION_21_52();
      sub_2166C24DC(v41, v42);
      v43 = *(v77 + 8);
      v44 = OUTLINED_FUNCTION_21_52();
      v43(v44);
      sub_2166C24DC(v40, v10);
      v45 = sub_216C4BF20();
      v46 = v84;
      OUTLINED_FUNCTION_20_53();
      sub_2166C2CB0();
      v94 = v45;
      v95 = v39;
      OUTLINED_FUNCTION_6_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_28_2();
      sub_2166D9530(v47, v48);
      OUTLINED_FUNCTION_12_69();
      sub_2166C2718();
      v85[1](v46, v21);
      v49 = OUTLINED_FUNCTION_21_52();
      v43(v49);
      (v43)(v83, v10);
      (*(v81 + 8))(v80, v82);
    }

    else
    {
      sub_217007514();
      v59 = sub_216C4AFA0(v34, v8, v9);
      v60 = &v27[*(v20 + 36)];
      *v60 = v59;
      v60[1] = v61;
      v62 = sub_216C4BF20();
      v39 = OUTLINED_FUNCTION_17_58();
      v60[2] = 0;
      v60[3] = 0;
      v63 = v84;
      OUTLINED_FUNCTION_20_53();
      sub_2166C2718();
      v92 = v62;
      v93 = v39;
      OUTLINED_FUNCTION_6_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_28_2();
      sub_2166D9530(v64, v65);
      OUTLINED_FUNCTION_12_69();
      sub_2166C2718();
      v85[1](v63, v21);
      sub_216C4BFD8(v27);
    }
  }

  else
  {
    v85 = *v30;
    (*(v74 + 16))(v73, v34, v75);
    v50 = swift_allocObject();
    *(v50 + 16) = v8;
    *(v50 + 24) = v9;
    OUTLINED_FUNCTION_19_45();
    v51();
    v52 = v85;
    v53 = v85;
    v54 = v78;
    sub_217007564();
    v55 = sub_216C4BF20();
    v39 = OUTLINED_FUNCTION_17_58();
    v100 = v55;
    v101 = v39;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_28_2();
    sub_2166D9530(v56, v57);
    OUTLINED_FUNCTION_12_69();
    v58 = v90;
    sub_2166C2CB0();

    (*(v79 + 8))(v54, v58);
  }

  v98 = sub_216C4BF20();
  v99 = v39;
  OUTLINED_FUNCTION_43_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_28_2();
  v69 = sub_2166D9530(v67, v68);
  v96 = WitnessTable;
  v97 = v69;
  v70 = v87;
  swift_getWitnessTable();
  sub_2166C24DC(v8, v70);
  return (*(v89 + 8))(v8, v70);
}

uint64_t (*sub_216C4AFA0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for LoadablePageView();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_216C4C040;
}

uint64_t sub_216C4B104(uint64_t a1)
{
  v2 = v1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v2 + *(v4 + 48));
  v11 = *v10;
  v12 = v10[1];
  v22 = *v10;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEB4();
  if (v21)
  {
  }

  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_21700EA34();
  v15 = sub_21700EA24();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  *(v17 + 32) = *(a1 + 16);
  (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21677BBA0();
  v22 = v11;
  v23 = v12;
  v21 = v19;
  return sub_21700AEC4();
}

uint64_t sub_216C4B32C()
{
  v0 = type metadata accessor for LoadablePageView.LoadingState();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for LoadablePageView();
  (*(v1 + 16))(v3, v6, v0);
  sub_21700AEE4();
  sub_21700AEC4();
  (*(v1 + 8))(v6, v0);
  return sub_216C4B104(v7);
}

uint64_t sub_216C4B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = type metadata accessor for LoadablePageView.LoadingState();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[12] = AssociatedTypeWitness;
  v6[13] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v6[14] = v11;
  v6[15] = sub_21700EA34();
  v6[16] = sub_21700EA24();
  v14 = (*(a6 + 32) + **(a6 + 32));
  v12 = swift_task_alloc();
  v6[17] = v12;
  *v12 = v6;
  v12[1] = sub_216C4B6C8;

  return v14(v11, a5, a6);
}

uint64_t sub_216C4B6C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v3[18] = v0;

  v7 = sub_21700E9B4();
  v3[19] = v7;
  v3[20] = v6;
  if (v0)
  {
    v8 = sub_216C4BBD8;
  }

  else
  {
    v8 = sub_216C4B818;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216C4B818()
{
  v1 = v0[9];
  v11 = v0[7];
  (*(v0[13] + 16))(v0[11], v0[14], v0[12]);
  OUTLINED_FUNCTION_14_63();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LoadablePageView();
  v0[21] = *(v1 + 16);
  OUTLINED_FUNCTION_19_45();
  v2();
  OUTLINED_FUNCTION_24_33();
  sub_21700AEE4();
  sub_21700AEC4();
  v3 = OUTLINED_FUNCTION_14_63();
  v4(v3);
  v10 = (*(v11 + 48) + **(v11 + 48));
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_216C4B9D8;
  v6 = v0[14];
  v7 = v0[6];
  v8 = v0[7];

  return v10(v6, v7, v8);
}

uint64_t sub_216C4B9D8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_216C4BD10;
  }

  else
  {
    v5 = sub_216C4BB10;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216C4BB10()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_5_109();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216C4BBD8()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);
  **(v0 + 88) = *(v0 + 144);
  OUTLINED_FUNCTION_14_63();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LoadablePageView();
  OUTLINED_FUNCTION_19_45();
  v2();
  OUTLINED_FUNCTION_24_33();
  sub_21700AEE4();
  sub_21700AEC4();
  v3 = OUTLINED_FUNCTION_14_63();
  v4(v3);
  OUTLINED_FUNCTION_5_109();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216C4BD10()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  *v7 = v0[23];
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LoadablePageView();
  v4(v5, v7, v8);
  OUTLINED_FUNCTION_24_33();
  sub_21700AEE4();
  sub_21700AEC4();
  (*(v6 + 8))(v7, v8);
  OUTLINED_FUNCTION_5_109();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t sub_216C4BE78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571D8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

unint64_t sub_216C4BF20()
{
  result = qword_280E2B310;
  if (!qword_280E2B310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C60);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B310);
  }

  return result;
}

uint64_t sub_216C4BFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C4C058(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for LoadablePageView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_216C4C0F0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(type metadata accessor for LoadablePageView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_5(v9);
  *v10 = v11;
  v10[1] = sub_2166AB4A4;

  return sub_216C4B490(a1, v7, v8, v1 + v6, v3, v4);
}

uint64_t sub_216C4C230()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_216C4C284(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *sub_216C4C35C(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_216C4C418(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C4C4EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_216C4C508(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_216C4C538()
{
  sub_216C4E858();
  sub_21700CD14();
  return v1;
}

uint64_t sub_216C4C584()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216C4C5D0(char a1)
{
  result = 0xD000000000000012;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  return result;
}

uint64_t sub_216C4C64C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C4C584();
  *a1 = result;
  return result;
}

unint64_t sub_216C4C67C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216C4C5D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216C4C6AC()
{
  result = qword_27CAC6C68;
  if (!qword_27CAC6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C68);
  }

  return result;
}

uint64_t sub_216C4C700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v196 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v181 = v167 - v11;
  OUTLINED_FUNCTION_4_1();
  v182 = sub_21700D3E4();
  OUTLINED_FUNCTION_1();
  v177 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v176 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  v192 = v18;
  OUTLINED_FUNCTION_4_1();
  v191 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v188 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v183 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v187 = v25;
  OUTLINED_FUNCTION_4_1();
  v202 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v184 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47_1();
  v197 = v31;
  OUTLINED_FUNCTION_4_1();
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v199 = v32;
  v200 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v190 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  v42 = v167 - v41;
  v185 = a3;
  v186 = a4;
  v43 = type metadata accessor for PageChangeInstruction();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_1();
  v193 = v45;
  v194 = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_0();
  v189 = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  v50 = (v167 - v49);
  OUTLINED_FUNCTION_18_52();
  v198 = a1;
  sub_21700CE04();
  v51 = a2;
  v52 = v27;
  v55 = *(v27 + 16);
  v53 = v27 + 16;
  v54 = v55;
  v56 = v197;
  v55(v197, v51, v202);
  v195 = v50;
  v57 = v56;
  v58 = v43;
  v59 = v201;
  sub_216EFFC4C(v42, v57, v50);
  v201 = v59;
  if (v59)
  {
    (*(v52 + 8))(v51, v202);
    return (*(v200 + 8))(v198, v199);
  }

  v167[1] = v53;
  v168 = v54;
  v169 = WitnessTable;
  v170 = v52;
  v197 = v51;
  v61 = v189;
  v62 = v193;
  (*(v194 + 16))(v189, v195, v193);
  OUTLINED_FUNCTION_10_79();
  v63 = swift_getWitnessTable();
  sub_2169425C8(v61, v62, v63, v196 + 1);
  v64 = v190;
  v65 = v198;
  sub_21700CE04();
  v66 = v192;
  sub_21700CD74();
  v68 = v200 + 8;
  v67 = *(v200 + 8);
  v67(v64, v199);
  v69 = v66;
  v70 = v191;
  if (__swift_getEnumTagSinglePayload(v69, 1, v191) == 1)
  {
    sub_216697664(v192, &qword_27CAB78D0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    sub_216C4EA04(v71, v72);
    v73 = OUTLINED_FUNCTION_4();
    v75 = v74;
    v76 = type metadata accessor for PageEventTrigger();
    *v75 = 0x73746E657665;
    v75[1] = 0xE600000000000000;
    v75[2] = v76;
    OUTLINED_FUNCTION_50();
    (*(v77 + 104))(v75);
    v201 = v73;
    swift_willThrow();
    v78 = OUTLINED_FUNCTION_4_117();
    v79(v78);
    v67(v65, v199);
    v80 = OUTLINED_FUNCTION_6_96();
    v81(v80);
    v82 = 0;
    v83 = v196;
    goto LABEL_8;
  }

  v189 = v58;
  v190 = v67;
  v200 = v68;
  v85 = v187;
  v84 = v188;
  v86 = v188 + 32;
  v87 = v192;
  v192 = *(v188 + 32);
  v192(v187, v87, v70);
  v167[0] = *(v84 + 16);
  (v167[0])(v183, v85, v70);
  v88 = v202;
  v168(v184, v197, v202);
  type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_1_178();
  sub_216C4EA04(v89, v90);
  v91 = v201;
  v92 = sub_21700E934();
  v201 = v91;
  if (v91)
  {
    OUTLINED_FUNCTION_67();
    v93(v197, v88);
    v190(v198, v199);
    (*(v84 + 8))(v85, v70);
    v94 = OUTLINED_FUNCTION_6_96();
    v95(v94);
    v82 = 0;
    v83 = v196;
    goto LABEL_8;
  }

  v183 = v84 + 16;
  v184 = v86;
  v97 = v192;
  v98 = v196;
  v168 = v92;
  *v196 = v92;
  v99 = v178;
  sub_21700CE04();
  sub_216C4E858();
  sub_21700CD14();
  v100 = v199;
  v101 = v190;
  v190(v99, v199);
  v102 = v203;
  if (v203 != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_217013DA0;
    *(v106 + 32) = v102;
    goto LABEL_14;
  }

  v103 = v174;
  sub_21700CE04();
  v104 = v175;
  sub_21700CD74();
  v101(v103, v100);
  v105 = v191;
  if (__swift_getEnumTagSinglePayload(v104, 1, v191) == 1)
  {
    sub_216697664(v104, &qword_27CAB78D0);
    v106 = MEMORY[0x277D84F90];
LABEL_14:
    v107 = v188;
    goto LABEL_16;
  }

  v108 = v172;
  v97(v172, v104, v105);
  v109 = v173;
  (v167[0])(v173, v108, v105);
  v110 = v201;
  v111 = v105;
  v106 = sub_21700E2A4();
  v201 = v110;
  v107 = v188;
  v112 = *(v188 + 8);
  v112(v109, v111);
  v113 = v111;
  v100 = v199;
  v112(v108, v113);
LABEL_16:
  v114 = v180;
  v115 = v179;
  v98[6] = v106;
  v116 = v198;
  sub_21700CE04();
  v117 = v181;
  sub_21700CCB4();
  v118 = v190;
  v190(v115, v100);
  v119 = v182;
  if (__swift_getEnumTagSinglePayload(v117, 1, v182) == 1)
  {
    v120 = OUTLINED_FUNCTION_4_117();
    v121(v120);
    v118(v116, v100);
    (*(v107 + 8))(v187, v191);
    v122 = OUTLINED_FUNCTION_6_96();
    v123(v122);
    result = sub_216697664(v117, &qword_27CAB7D20);
LABEL_26:
    v141 = 0;
    v83 = v196;
    goto LABEL_27;
  }

  v124 = v177;
  v125 = v176;
  (*(v177 + 32))(v176, v117, v119);
  v126 = v118;
  sub_21700D3F4();
  v127 = sub_21700CDB4();
  v129 = v128;
  v126(v114, v100);
  if (!v129)
  {
    v142 = OUTLINED_FUNCTION_4_117();
    v143(v142);
    v126(v198, v100);
    (*(v124 + 8))(v125, v119);
    (*(v188 + 8))(v187, v191);
    v144 = OUTLINED_FUNCTION_6_96();
    result = v145(v144);
    goto LABEL_26;
  }

  v130 = v127 == 0xD000000000000014 && 0x800000021708B2D0 == v129;
  v83 = v196;
  if (v130 || (sub_21700F7D4() & 1) != 0)
  {

    v131 = v171;
    v132 = v176;
    sub_21700D3F4();
    v133 = sub_21700CD44();
    v134 = OUTLINED_FUNCTION_4_117();
    v135(v134);
    v136 = v199;
    v137 = v190;
    v190(v198, v199);
    v137(v131, v136);
    OUTLINED_FUNCTION_67();
    v138(v132, v119);
    (*(v188 + 8))(v187, v191);
    v139 = OUTLINED_FUNCTION_6_96();
    result = v140(v139);
    v141 = v133 & 1;
LABEL_27:
    *(v83 + 56) = v141;
    return result;
  }

  v146 = v127 == 0x696C61766E496F6ELL && v129 == 0xEE006E6F69746164;
  v147 = v198;
  v148 = v199;
  v149 = v195;
  v150 = v188;
  if (v146 || (sub_21700F7D4() & 1) != 0)
  {

    v151 = OUTLINED_FUNCTION_4_117();
    v152(v151);
    v190(v147, v148);
    OUTLINED_FUNCTION_67();
    v153(v176, v119);
    (*(v150 + 8))(v187, v191);
    result = (*(v194 + 8))(v149, v193);
    v141 = 2;
    goto LABEL_27;
  }

  sub_21700E2E4();
  OUTLINED_FUNCTION_0_209();
  sub_216C4EA04(v154, v155);
  v156 = swift_allocError();
  v157 = v148;
  v159 = v158;
  v160 = type metadata accessor for PageEventTrigger();
  *v159 = v127;
  v159[1] = v129;
  v159[2] = v160;
  OUTLINED_FUNCTION_50();
  (*(v161 + 104))(v159);
  v201 = v156;
  swift_willThrow();
  v162 = OUTLINED_FUNCTION_4_117();
  v163(v162);
  v190(v198, v157);
  OUTLINED_FUNCTION_67();
  v164(v176, v119);
  (*(v150 + 8))(v187, v191);
  v165 = OUTLINED_FUNCTION_6_96();
  v166(v165);

  v82 = 1;
LABEL_8:
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_34();
  result = (*(v96 + 8))(v83 + 1);
  if (v82)
  {
  }

  return result;
}

uint64_t sub_216C4D6D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C4D714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v102 = a3;
  v97 = OUTLINED_FUNCTION_23_44();
  OUTLINED_FUNCTION_1();
  v99 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v91 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v88 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v96 = v11;
  OUTLINED_FUNCTION_4_1();
  sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v94 = v13;
  v95 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v90 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v93 = v16;
  OUTLINED_FUNCTION_4_1();
  v17 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v87 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v86 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v84 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CB0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = (&v84 - v35);
  OUTLINED_FUNCTION_18_52();
  v100 = a1;
  sub_21700CE04();
  sub_21700CE04();
  v37 = sub_21700CDB4();
  v39 = v38;
  v40 = *(v19 + 8);
  v41 = v29;
  v42 = v17;
  v103 = v19 + 8;
  v101 = v40;
  v40(v41, v17);
  if (!v39)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    sub_216C4EA04(v53, v54);
    v55 = v17;
    v56 = OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_16_58(v56, v57);
    *(v58 + 8) = v59;
    *(v58 + 16) = v33;
    OUTLINED_FUNCTION_50();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = v101;
    v101(v32, v55);
    (*(v99 + 8))(v98, v97);
    return v61(v100, v55);
  }

  (*(v19 + 32))(v36 + *(v33 + 36), v32, v17);
  *v36 = v37;
  v36[1] = v39;
  v43 = v102;
  *(v102 + 32) = v33;
  *(v43 + 40) = sub_216C4EA74(&qword_27CAC6CB8, &qword_27CAC6CB0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v43 + 8));
  v89 = v36;
  sub_216681B04(v36, boxed_opaque_existential_1, &qword_27CAC6CB0);
  v45 = v100;
  sub_21700CE04();
  v46 = v96;
  sub_21700CD74();
  v47 = v101;
  v101(v26, v42);
  v48 = v95;
  if (__swift_getEnumTagSinglePayload(v46, 1, v95) == 1)
  {
    sub_216697664(v46, &qword_27CAB78D0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    sub_216C4EA04(v49, v50);
    OUTLINED_FUNCTION_4();
    *v51 = 0x73746E657665;
    v51[1] = 0xE600000000000000;
    v51[2] = &unk_282931B70;
    OUTLINED_FUNCTION_50();
    (*(v52 + 104))();
    swift_willThrow();
    (*(v99 + 8))(v98, v97);
    v47(v45, v42);
LABEL_7:
    sub_216697664(v89, &qword_27CAC6CB0);
    return sub_216697664(v102 + 8, &qword_27CABBB28);
  }

  v85 = v42;
  v64 = v93;
  v63 = v94;
  (*(v94 + 32))(v93, v46, v48);
  (*(v63 + 16))(v90, v64, v48);
  v66 = v98;
  v65 = v99;
  v67 = v97;
  (*(v99 + 16))(v91, v98, v97);
  type metadata accessor for MusicEvent(0);
  v68 = v48;
  OUTLINED_FUNCTION_1_178();
  sub_216C4EA04(v69, v70);
  v71 = v92;
  v72 = sub_21700E934();
  if (v71)
  {
    (*(v65 + 8))(v66, v67);
    v101(v100, v85);
    (*(v63 + 8))(v64, v48);
    goto LABEL_7;
  }

  *v102 = v72;
  v73 = v86;
  sub_21700CE04();
  v74 = v88;
  sub_21700CD74();
  v101(v73, v85);
  if (__swift_getEnumTagSinglePayload(v74, 1, v68) == 1)
  {
    sub_216697664(v74, &qword_27CAB78D0);
    v75 = 0;
    v76 = v94;
  }

  else
  {
    v77 = sub_21700E2A4();
    v78 = v74;
    v75 = v77;
    v76 = v94;
    (*(v94 + 8))(v78, v68);
  }

  *(v102 + 48) = v75;
  v79 = v87;
  v80 = v100;
  sub_21700CE04();
  sub_216C4E858();
  sub_21700CD14();
  (*(v99 + 8))(v66, v67);
  v81 = v80;
  v82 = v85;
  v83 = v101;
  v101(v81, v85);
  v83(v79, v82);
  (*(v76 + 8))(v64, v68);
  result = sub_216697664(v89, &qword_27CAC6CB0);
  *(v102 + 56) = v104;
  return result;
}

uint64_t sub_216C4DFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = a2;
  v78 = a3;
  v82 = OUTLINED_FUNCTION_23_44();
  OUTLINED_FUNCTION_1();
  v79 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v73 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v77 = v69 - v9;
  OUTLINED_FUNCTION_4_1();
  v83 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v74 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v71 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  v72 = v14;
  OUTLINED_FUNCTION_4_1();
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v76 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v22 = v69 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v69 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6C98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = (v69 - v28);
  OUTLINED_FUNCTION_18_52();
  v80 = a1;
  sub_21700CE04();
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v33 = (v17 + 8);
  v84 = *(v17 + 8);
  v84(v22, v15);
  if (!v32)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    sub_216C4EA04(v45, v46);
    v47 = OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_16_58(v47, v48);
    *(v49 + 8) = v50;
    *(v49 + 16) = v26;
    OUTLINED_FUNCTION_50();
    (*(v51 + 104))();
    swift_willThrow();
    v52 = v84;
    v84(v25, v15);
    (*(v79 + 8))(v81, v82);
    return v52(v80, v15);
  }

  (*(v17 + 32))(v29 + *(v26 + 36), v25, v15);
  *v29 = v30;
  v29[1] = v32;
  v34 = v78;
  v78[4] = v26;
  v34[5] = sub_216C4EA74(&qword_27CAC6CA0, &qword_27CAC6C98);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34 + 1);
  v70 = v29;
  sub_216681B04(v29, boxed_opaque_existential_1, &qword_27CAC6C98);
  v36 = v76;
  v37 = v80;
  sub_21700CE04();
  v38 = v77;
  sub_21700CD74();
  v39 = v84;
  v84(v36, v15);
  if (__swift_getEnumTagSinglePayload(v38, 1, v83) == 1)
  {
    sub_216697664(v38, &qword_27CAB78D0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    sub_216C4EA04(v40, v41);
    OUTLINED_FUNCTION_3_0();
    *v42 = 0x73746E657665;
    v42[1] = 0xE600000000000000;
    v42[2] = &unk_282931998;
    OUTLINED_FUNCTION_50();
    (*(v43 + 104))();
    swift_willThrow();
    (*(v79 + 8))(v81, v82);
    v39(v37, v15);
    v44 = v70;
  }

  else
  {
    v76 = v33;
    v69[1] = v15;
    v54 = v74;
    v55 = v72;
    v56 = v83;
    (*(v74 + 32))(v72, v38, v83);
    (*(v54 + 16))(v71, v55, v56);
    v57 = v79;
    v59 = v81;
    v58 = v82;
    (*(v79 + 16))(v73, v81, v82);
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_1_178();
    sub_216C4EA04(v60, v61);
    v62 = v75;
    v63 = sub_21700E934();
    if (!v62)
    {
      v66 = v63;
      (*(v57 + 8))(v59, v58);
      v67 = OUTLINED_FUNCTION_22_48();
      v68(v67);
      (*(v54 + 8))(v55, v83);
      result = sub_216697664(v70, &qword_27CAC6C98);
      *v78 = v66;
      return result;
    }

    (*(v57 + 8))(v59, v58);
    v64 = OUTLINED_FUNCTION_22_48();
    v65(v64);
    (*(v54 + 8))(v55, v83);
    v44 = v70;
    v34 = v78;
  }

  sub_216697664(v44, &qword_27CAC6C98);
  return sub_216697664((v34 + 1), &qword_27CAC6CA8);
}

uint64_t sub_216C4E794(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C78);
    sub_216C4EA04(a2, type metadata accessor for TabBanner);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C4E830(uint64_t a1)
{
  result = sub_216AC7DA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C4E858()
{
  result = qword_280E3D8A8;
  if (!qword_280E3D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D8A8);
  }

  return result;
}

uint64_t sub_216C4E8AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C4C538();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_216C4E8D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_216C4E918(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_216C4EA04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216C4EA4C(uint64_t a1)
{
  result = sub_216AC7D54();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C4EA74(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_10_79();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216C4EACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216853570();
  *a1 = result;
  return result;
}

uint64_t sub_216C4EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v60 = *(v4 - 8);
  v5 = v60;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v47 = &v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v46 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v46 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v46 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v51 = &v46 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v52 = &v46 - v22;
  MEMORY[0x28223BE20](v21);
  v53 = &v46 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7068);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v24 = *(v5 + 16);
  v24(v8, v2, v4);
  sub_2168AECC8(&qword_27CAC7070, &qword_27CAC7068);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7078);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v25 = v47;
  v24(v47, v8, v4);
  v57 = v5 + 16;
  sub_2168AECC8(&qword_27CAC7080, &qword_27CAC7078);
  sub_21700D5A4();
  v26 = v60 + 8;
  v58 = *(v60 + 8);
  v58(v8, v4);

  v27 = a1;
  v56 = a1;
  v61 = a1;
  v28 = v48;
  v24(v48, v25, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7088);
  v55 = &unk_21704718C;
  sub_2168AECC8(&qword_27CAC7090, &qword_27CAC7088);
  sub_21700D5A4();
  v29 = v58;
  v58(v25, v4);
  v61 = v27;
  v30 = v59;
  v24(v59, v28, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7098);
  sub_2168AECC8(&qword_27CAC70A0, &qword_27CAC7098);
  sub_21700D5A4();
  v29(v28, v4);
  v31 = v29;
  v32 = v56;
  v60 = v26;
  v61 = v56;
  v33 = v49;
  v24(v49, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70A8);
  sub_2168AECC8(&qword_27CAC70B0, &qword_27CAC70A8);
  v34 = v33;
  sub_21700D5A4();
  v31(v59, v4);
  v61 = v32;
  v35 = v50;
  v24(v50, v34, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70B8);
  sub_2168AECC8(&qword_27CAC70C0, &qword_27CAC70B8);
  sub_21700D5A4();
  v31(v34, v4);
  v36 = v31;
  v61 = v32;
  v37 = v51;
  v24(v51, v35, v4);
  v46 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70C8);
  sub_2168AECC8(&qword_27CAC70D0, &qword_27CAC70C8);
  sub_21700D5A4();
  v36(v35, v4);
  v38 = v56;
  v61 = v56;
  v39 = v52;
  v24(v52, v37, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70D8);
  sub_2168AECC8(&qword_27CAC70E0, &qword_27CAC70D8);
  sub_21700D5A4();
  v40 = v58;
  v58(v37, v4);
  v61 = v38;
  v41 = v53;
  v42 = v39;
  v43 = v39;
  v44 = v46;
  v46(v53, v42, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70E8);
  sub_2168AECC8(&qword_27CAC70F0, &qword_27CAC70E8);
  sub_21700D5A4();
  v40(v43, v4);
  v61 = v38;
  v44(v54, v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70F8);
  sub_2168AECC8(&qword_27CAC7100, &qword_27CAC70F8);
  sub_21700D5A4();
  return (v40)(v41, v4);
}

uint64_t sub_216C4F380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v60 = *(v4 - 8);
  v5 = v60;
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v46 - v13;
  MEMORY[0x28223BE20](v14);
  v49 = &v46 - v15;
  MEMORY[0x28223BE20](v16);
  v50 = &v46 - v17;
  MEMORY[0x28223BE20](v18);
  v51 = &v46 - v19;
  MEMORY[0x28223BE20](v20);
  v52 = &v46 - v21;
  MEMORY[0x28223BE20](v22);
  v53 = &v46 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FC8);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v24 = *(v5 + 16);
  v24(v7, v2, v4);
  sub_2168AECC8(&qword_27CAC6FD0, &qword_27CAC6FC8);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FD8);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v25 = v47;
  v24(v47, v7, v4);
  v57 = v5 + 16;
  sub_2168AECC8(&qword_27CAC6FE0, &qword_27CAC6FD8);
  sub_21700D5A4();
  v26 = v60 + 8;
  v58 = *(v60 + 8);
  v58(v7, v4);

  v27 = a1;
  v56 = a1;
  v61 = a1;
  v28 = v48;
  v24(v48, v25, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FE8);
  v55 = &unk_21704718C;
  sub_2168AECC8(&qword_27CAC6FF0, &qword_27CAC6FE8);
  sub_21700D5A4();
  v29 = v58;
  v58(v25, v4);
  v61 = v27;
  v30 = v59;
  v24(v59, v28, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FF8);
  sub_2168AECC8(&qword_27CAC7000, &qword_27CAC6FF8);
  sub_21700D5A4();
  v29(v28, v4);
  v31 = v29;
  v32 = v56;
  v60 = v26;
  v61 = v56;
  v33 = v49;
  v24(v49, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7008);
  sub_2168AECC8(&qword_27CAC7010, &qword_27CAC7008);
  v34 = v33;
  sub_21700D5A4();
  v31(v59, v4);
  v61 = v32;
  v35 = v50;
  v24(v50, v34, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7018);
  sub_2168AECC8(&qword_27CAC7020, &qword_27CAC7018);
  sub_21700D5A4();
  v31(v34, v4);
  v36 = v31;
  v61 = v32;
  v37 = v51;
  v24(v51, v35, v4);
  v46 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7028);
  sub_2168AECC8(&qword_27CAC7030, &qword_27CAC7028);
  sub_21700D5A4();
  v36(v35, v4);
  v38 = v56;
  v61 = v56;
  v39 = v52;
  v24(v52, v37, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7038);
  sub_2168AECC8(&qword_27CAC7040, &qword_27CAC7038);
  sub_21700D5A4();
  v40 = v58;
  v58(v37, v4);
  v61 = v38;
  v41 = v53;
  v42 = v39;
  v43 = v39;
  v44 = v46;
  v46(v53, v42, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7048);
  sub_2168AECC8(&qword_27CAC7050, &qword_27CAC7048);
  sub_21700D5A4();
  v40(v43, v4);
  v61 = v38;
  v44(v54, v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7058);
  sub_2168AECC8(&qword_27CAC7060, &qword_27CAC7058);
  sub_21700D5A4();
  return (v40)(v41, v4);
}

uint64_t sub_216C4FBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v60 = *(v4 - 8);
  v5 = v60;
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v46 - v13;
  MEMORY[0x28223BE20](v14);
  v49 = &v46 - v15;
  MEMORY[0x28223BE20](v16);
  v50 = &v46 - v17;
  MEMORY[0x28223BE20](v18);
  v51 = &v46 - v19;
  MEMORY[0x28223BE20](v20);
  v52 = &v46 - v21;
  MEMORY[0x28223BE20](v22);
  v53 = &v46 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F18);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v24 = *(v5 + 16);
  v24(v7, v2, v4);
  sub_2168AECC8(&qword_27CAC6F20, &qword_27CAC6F18);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F28);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v25 = v47;
  v24(v47, v7, v4);
  v57 = v5 + 16;
  sub_2168AECC8(&qword_27CAC6F30, &qword_27CAC6F28);
  sub_21700D5A4();
  v26 = v60 + 8;
  v58 = *(v60 + 8);
  v58(v7, v4);

  v27 = a1;
  v56 = a1;
  v61 = a1;
  v28 = v48;
  v24(v48, v25, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F38);
  v55 = &unk_21704718C;
  sub_2168AECC8(&qword_27CAC6F40, &qword_27CAC6F38);
  sub_21700D5A4();
  v29 = v58;
  v58(v25, v4);
  v61 = v27;
  v30 = v59;
  v24(v59, v28, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F48);
  sub_2168AECC8(&qword_27CAC6F50, &qword_27CAC6F48);
  sub_21700D5A4();
  v29(v28, v4);
  v31 = v29;
  v32 = v56;
  v60 = v26;
  v61 = v56;
  v33 = v49;
  v24(v49, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F58);
  sub_2168AECC8(&qword_27CAC6F60, &qword_27CAC6F58);
  v34 = v33;
  sub_21700D5A4();
  v31(v59, v4);
  v61 = v32;
  v35 = v50;
  v24(v50, v34, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F68);
  sub_2168AECC8(&qword_27CAC6F70, &qword_27CAC6F68);
  sub_21700D5A4();
  v31(v34, v4);
  v36 = v31;
  v61 = v32;
  v37 = v51;
  v24(v51, v35, v4);
  v46 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F78);
  sub_2168AECC8(&qword_27CAC6F80, &qword_27CAC6F78);
  sub_21700D5A4();
  v36(v35, v4);
  v38 = v56;
  v61 = v56;
  v39 = v52;
  v24(v52, v37, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F88);
  sub_2168AECC8(&qword_27CAC6F90, &qword_27CAC6F88);
  sub_21700D5A4();
  v40 = v58;
  v58(v37, v4);
  v61 = v38;
  v41 = v53;
  v42 = v39;
  v43 = v39;
  v44 = v46;
  v46(v53, v42, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F98);
  sub_2168AECC8(&qword_27CAC6FA0, &qword_27CAC6F98);
  sub_21700D5A4();
  v40(v43, v4);
  v61 = v38;
  v44(v54, v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FA8);
  sub_2168AECC8(&qword_27CAC6FB0, &qword_27CAC6FA8);
  sub_21700D5A4();
  return (v40)(v41, v4);
}

uint64_t sub_216C503F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v60 = *(v4 - 8);
  v5 = v60;
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v46 - v13;
  MEMORY[0x28223BE20](v14);
  v49 = &v46 - v15;
  MEMORY[0x28223BE20](v16);
  v50 = &v46 - v17;
  MEMORY[0x28223BE20](v18);
  v51 = &v46 - v19;
  MEMORY[0x28223BE20](v20);
  v52 = &v46 - v21;
  MEMORY[0x28223BE20](v22);
  v53 = &v46 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7108);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v24 = *(v5 + 16);
  v24(v7, v2, v4);
  sub_2168AECC8(qword_280E30690, &qword_27CAC7108);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7110);
  swift_allocObject();

  v61 = sub_216B94EA4();
  v25 = v47;
  v24(v47, v7, v4);
  v57 = v5 + 16;
  sub_2168AECC8(qword_280E2EF98, &qword_27CAC7110);
  sub_21700D5A4();
  v26 = v60 + 8;
  v58 = *(v60 + 8);
  v58(v7, v4);

  v27 = a1;
  v56 = a1;
  v61 = a1;
  v28 = v48;
  v24(v48, v25, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7118);
  v55 = &unk_21704718C;
  sub_2168AECC8(&qword_280E337E0, &qword_27CAC7118);
  sub_21700D5A4();
  v29 = v58;
  v58(v25, v4);
  v61 = v27;
  v30 = v59;
  v24(v59, v28, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7120);
  sub_2168AECC8(&qword_280E337F0, &qword_27CAC7120);
  sub_21700D5A4();
  v29(v28, v4);
  v31 = v29;
  v32 = v56;
  v60 = v26;
  v61 = v56;
  v33 = v49;
  v24(v49, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7128);
  sub_2168AECC8(&qword_280E337E8, &qword_27CAC7128);
  v34 = v33;
  sub_21700D5A4();
  v31(v59, v4);
  v61 = v32;
  v35 = v50;
  v24(v50, v34, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7130);
  sub_2168AECC8(qword_280E337F8, &qword_27CAC7130);
  sub_21700D5A4();
  v31(v34, v4);
  v36 = v31;
  v61 = v32;
  v37 = v51;
  v24(v51, v35, v4);
  v46 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7138);
  sub_2168AECC8(qword_280E33880, &qword_27CAC7138);
  sub_21700D5A4();
  v36(v35, v4);
  v38 = v56;
  v61 = v56;
  v39 = v52;
  v24(v52, v37, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7140);
  sub_2168AECC8(qword_280E2E0A8, &qword_27CAC7140);
  sub_21700D5A4();
  v40 = v58;
  v58(v37, v4);
  v61 = v38;
  v41 = v53;
  v42 = v39;
  v43 = v39;
  v44 = v46;
  v46(v53, v42, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7148);
  sub_2168AECC8(&qword_27CAC7150, &qword_27CAC7148);
  sub_21700D5A4();
  v40(v43, v4);
  v61 = v38;
  v44(v54, v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7158);
  sub_2168AECC8(&qword_27CAC7160, &qword_27CAC7158);
  sub_21700D5A4();
  return (v40)(v41, v4);
}

uint64_t sub_216C50C34@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E60);
  MEMORY[0x28223BE20](v66);
  v60 = &v53 - v1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EB0);
  MEMORY[0x28223BE20](v64);
  v65 = &v53 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E40);
  MEMORY[0x28223BE20](v72);
  v67 = &v53 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E50);
  MEMORY[0x28223BE20](v62);
  v59 = &v53 - v4;
  v5 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E30);
  MEMORY[0x28223BE20](v61);
  v58 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EB8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EC0);
  MEMORY[0x28223BE20](v68);
  v70 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EC8);
  MEMORY[0x28223BE20](v12);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D90);
  MEMORY[0x28223BE20](v69);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D80);
  MEMORY[0x28223BE20](v15);
  v71 = &v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  sub_2166A6EA4();
  v23 = type metadata accessor for BackgroundConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
LABEL_2:
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8);
    sub_216C5447C();
    sub_216C54594();
    sub_217009554();
  }

  else
  {
    v55 = v15;
    v56 = v10;
    v57 = v8;
    sub_2166A6EA4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v24 = *(v19 + 5);
        v54 = v22;
        v25 = v19[48];
        sub_2167B8EF0(v19, v74);
        v26 = v58;
        v27 = &v58[*(v61 + 36)];
        sub_2167B7D58(v74, v27);
        *(v27 + 40) = v24;
        *(v27 + 48) = v25;
        *(v27 + 56) = sub_21700B3B4();
        *(v27 + 64) = v28;
        sub_2166A6EA4();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8);
        sub_216C54594();
        sub_216C54C8C();
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v29 = v71;
        sub_217009554();
        sub_216697664(v14, &qword_27CAC6D90);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C5447C();
        sub_217009554();
        sub_216697664(v29, &qword_27CAC6D80);
        v22 = v54;
        sub_216697664(v26, &qword_27CAC6E30);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        return sub_216697664(v22, &qword_27CABBAA8);
      case 2u:
        sub_216C55FC8();
        v42 = sub_21700B3B4();
        v44 = v43;
        v45 = *(v62 + 36);
        v54 = v22;
        v46 = v59;
        v47 = &v59[v45];
        sub_21698A02C(&v59[v45]);
        v48 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA78) + 36)];
        *v48 = v42;
        v48[1] = v44;
        sub_2166A6EA4();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54DD0();
        sub_216C54E88();
        v49 = v67;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v50 = v71;
        sub_217009554();
        sub_216697664(v49, &qword_27CAC6E40);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8);
        sub_216C5447C();
        sub_216C54594();
        sub_217009554();
        v22 = v54;
        sub_216697664(v50, &qword_27CAC6D80);
        sub_216697664(v46, &qword_27CAC6E50);
        sub_216C55F70(v63, type metadata accessor for Artwork);
        return sub_216697664(v22, &qword_27CABBAA8);
      case 3u:
        v30 = *v19;
        v31 = sub_21700B3B4();
        v33 = v32;
        v34 = *(v66 + 36);
        v54 = v22;
        v35 = v60;
        v36 = &v60[v34];
        sub_21698A1F0(&v60[v34], v30);
        v37 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA80) + 36)];
        *v37 = v31;
        v37[1] = v33;
        sub_2166A6EA4();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54DD0();
        sub_216C54E88();
        v38 = v67;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v39 = v71;
        sub_217009554();
        sub_216697664(v38, &qword_27CAC6E40);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8);
        sub_216C5447C();
        sub_216C54594();
        sub_217009554();
        v22 = v54;
        sub_216697664(v39, &qword_27CAC6D80);
        v40 = v35;
        v41 = &qword_27CAC6E60;
        goto LABEL_8;
      case 5u:
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8);
        sub_216C54594();
        sub_216C54C8C();
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v51 = v71;
        sub_217009554();
        sub_216697664(v14, &qword_27CAC6D90);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C5447C();
        sub_217009554();
        v40 = v51;
        v41 = &qword_27CAC6D80;
LABEL_8:
        sub_216697664(v40, v41);
        break;
      default:
        sub_216C55F70(v19, type metadata accessor for BackgroundConfiguration);
        goto LABEL_2;
    }
  }

  return sub_216697664(v22, &qword_27CABBAA8);
}

uint64_t sub_216C51980()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54C0);
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FB8);
  OUTLINED_FUNCTION_25_43(v2);
  swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FC0);
  return OUTLINED_FUNCTION_19_46(v3);
}

uint64_t sub_216C51AF4()
{
  swift_getKeyPath();
  sub_2166A6EA4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC69D0);
  OUTLINED_FUNCTION_25_43(v0);
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6980);
  return OUTLINED_FUNCTION_19_46(v1);
}

uint64_t sub_216C51C48@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 374.0)
  {
    v4 = 0;
    v3 = 16.0;
  }

  else
  {
    v3 = 20.0;
    if (a2 <= 500.0)
    {
      v4 = 1;
    }

    else if (a2 <= 726.0)
    {
      v4 = 2;
    }

    else
    {
      if (a2 <= 981.0)
      {
        v4 = 3;
      }

      else if (a2 <= 1194.0)
      {
        v4 = 4;
      }

      else if (a2 <= 1500.0)
      {
        v4 = 5;
      }

      else if (a2 > 2500.0)
      {
        v4 = 7;
      }

      else
      {
        v4 = 6;
      }

      v3 = 34.0;
    }
  }

  KeyPath = swift_getKeyPath();
  sub_2166A6EA4();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E10) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = v4;
  v7 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E00);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = 0;
  *(v9 + 2) = v3;
  v9[3] = 0;
  *(v9 + 4) = v3;
  return result;
}

uint64_t sub_216C51E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_2166A6EA4();
  return a5(v9);
}

uint64_t sub_216C51F00()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for CatalogPagePresenter.State();
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_24_34(v2);
  v4(v3, v0);
  return sub_216A43ACC();
}

uint64_t sub_216C52034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for BackgroundConfiguration(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_82();
  sub_216C55F18();
  return a5(v10);
}

void sub_216C520F0()
{
  OUTLINED_FUNCTION_92();
  v0 = OUTLINED_FUNCTION_82();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  sub_2166A6EA4();
  sub_216A45FC0();
}

uint64_t sub_216C521BC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for ObjectGraph();
  sub_21700D5F4();
  a2(a1);
  v14 = *(v6 + 8);
  v14(v10, v4);
  v15 = sub_216E9C508(v13);
  v14(v13, v4);
  return v15;
}

uint64_t RelatedContentView.init(item:stackAuthority:shelfWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();

  sub_2166B6484(v8);

  v9 = *(a1 + 24);
  v10 = *(**(a1 + 32) + 104);

  v10(a2, v9);

  v11 = type metadata accessor for RelatedContentView();
  v12 = (a3 + v11[5]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
  OUTLINED_FUNCTION_3_2();
  sub_2168AECC8(v13, &qword_27CAB9AA0);
  *v12 = sub_217008684();
  v12[1] = v14;
  v15 = *(a1 + 48);
  v16 = a3 + v11[6];
  *v16 = *(a1 + 40);
  v16[8] = v15;
  *(a3 + v11[7]) = *(*(a1 + 16) + *(**(a1 + 16) + 160));
  *(a3 + v11[11]) = a2;
  *(a3 + v11[12]) = a4;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  swift_retain_n();

  sub_21700E094();
  *(a3 + v11[8]) = v18;
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_26_42();
  *(a3 + v11[9]) = v18;
  type metadata accessor for AppDestinationPageProviderBox();
  OUTLINED_FUNCTION_26_42();

  *(a3 + v11[10]) = v18;
  return result;
}

uint64_t type metadata accessor for RelatedContentView()
{
  result = qword_27CAC6E80;
  if (!qword_27CAC6E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RelatedContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v251 = a1;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  v248 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v6);
  v238 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v236 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v10 - v9);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CC8);
  OUTLINED_FUNCTION_1();
  v233 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CD0);
  OUTLINED_FUNCTION_1();
  v239 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v16);
  v17 = sub_21700D704();
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v231 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v244 = v202 - v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_70(v202 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  OUTLINED_FUNCTION_36(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v228 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v227 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v35 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  OUTLINED_FUNCTION_36(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_36(v39);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CD8);
  OUTLINED_FUNCTION_36(v42);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v44);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v46);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CF0);
  OUTLINED_FUNCTION_36(v49);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v51);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CF8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v53);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v55);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D08);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v57);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D18);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D20);
  OUTLINED_FUNCTION_1();
  v230 = v64;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v66);
  v67 = type metadata accessor for MappedCatalogPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v70 - v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28);
  v72 = OUTLINED_FUNCTION_36(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_77();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = v202 - v77;
  v240 = type metadata accessor for RelatedContentView();
  v79 = *(v1 + v240[5] + 8);
  v80 = type metadata accessor for Page(0);
  v254 = v80;
  v81 = sub_216C55ED4(&qword_280E2C548, type metadata accessor for Page);
  v255 = v81;
  swift_getKeyPath();
  v213 = v80;
  v252 = v80;
  v253 = v81;
  v212 = v81;
  v82 = v249;
  swift_getKeyPath();
  v246 = v79;
  sub_217007DE4();

  v83 = v78;

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
  if (__swift_getEnumTagSinglePayload(v78, 1, v84) == 1)
  {
    goto LABEL_4;
  }

  v206 = v60;
  v207 = v63;
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_216697664(v75, &qword_27CAC6D30);
    v82 = v249;
    v60 = v206;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    v85 = sub_216C53FA0();
    v259 = v60;
    v260 = v85;
    v86 = OUTLINED_FUNCTION_12_70();
    v259 = v82;
    v260 = v86;
    v87 = OUTLINED_FUNCTION_11_76();
    v259 = v247;
    v260 = v87;
    OUTLINED_FUNCTION_10_80();
    sub_217009554();
    return sub_216697664(v83, &qword_27CAC6D28);
  }

  v204 = v78;
  v89 = v242;
  sub_216C55FC8();
  v90 = v240;
  v91 = v1;
  sub_216E9C900(*(v91 + v240[11]), *(v91 + v240[10]));
  v92 = v246;
  v93 = sub_216C521BC(v246, sub_216C4FBBC);

  type metadata accessor for MenuBuilder();
  v94 = sub_216C65C14();
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  v203 = type metadata accessor for AddToPlaylistMenuBuilder();
  v96 = swift_allocObject();
  *(v96 + 16) = v93;
  v97 = *(v89 + *(v67 + 24));

  v98 = sub_2170093B4();
  v99 = v208;
  *v208 = v98;
  *(v99 + 8) = 0;
  *(v99 + 16) = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E78);
  sub_216C54F40(v91, v97, v93, v99 + *(v100 + 44));
  v101 = v90[12];
  v205 = v91;
  v102 = *(v91 + v101);
  v103 = sub_2170098A4();
  v104 = v209;
  __swift_storeEnumTagSinglePayload(v209, 1, 1, v103);
  v105 = v210;
  sub_216C51C48(v210, v102);
  sub_216697664(v104, &qword_27CAB8600);
  sub_216697664(v99, &qword_27CAC6CD8);
  type metadata accessor for MusicEntityAnnotationWrapper();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216C55ED4(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  OUTLINED_FUNCTION_42_0();
  sub_217007D54();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DF0);
  OUTLINED_FUNCTION_21_53(v106);
  type metadata accessor for PlaybackPresenter();
  sub_21700E094();
  sub_216C55ED4(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  OUTLINED_FUNCTION_42_0();
  sub_217007D54();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DE0);
  OUTLINED_FUNCTION_21_53(v107);
  type metadata accessor for ExplicitBadgingPresenter();
  v202[1] = *(*v92 + 160);

  sub_21700E094();

  sub_216C55ED4(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  OUTLINED_FUNCTION_42_0();
  sub_217007D54();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DD0);
  OUTLINED_FUNCTION_21_53(v108);
  sub_216C55ED4(qword_280E45220, type metadata accessor for MenuBuilder);
  v109 = sub_217007D54();
  v110 = (v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DC0) + 36));
  *v110 = v109;
  v110[1] = v95;
  sub_216C55ED4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);
  v208 = v95;

  v111 = sub_217007D54();
  v112 = (v105 + *(v211 + 36));
  *v112 = v111;
  v112[1] = v96;
  sub_216C54758();
  v203 = v96;

  v113 = v245;
  v209 = v93;
  OUTLINED_FUNCTION_82();
  sub_21700A1E4();
  sub_216697664(v105, &qword_27CAC6CE0);
  v114 = (v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DA8) + 36));
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA68);
  MEMORY[0x28223BE20](v115);
  v116 = v212;
  v202[-2] = v213;
  v202[-1] = v116;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82();
  sub_217007DE4();

  v118 = type metadata accessor for BackgroundConfiguration(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v118);
  *v114 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_53();
  v123 = (v245 + v122);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_2_144();
  v125 = swift_getKeyPath();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  sub_217007DE4();

  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v118);
  v129 = swift_getKeyPath();
  *v123 = v129;
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_144();
  v130 = swift_getKeyPath();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  v131 = v215;
  sub_217007DE4();

  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v118);
  v135 = v245;
  sub_216C50C34(v217);
  sub_216697664(v131, &qword_27CABBAA8);
  v136 = sub_216697664(v135, &qword_27CAC6CE8);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_2_144();
  v137 = swift_getKeyPath();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  v138 = v222;
  sub_217007DE4();

  v139 = v228;
  if (__swift_getEnumTagSinglePayload(v138, 1, v228) == 1)
  {
    v140 = v225;
    sub_216C55534(v225);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v138, 1, v139);
    v142 = v227;
    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v138, &qword_27CAB9180);
    }
  }

  else
  {
    v142 = v227;
    v140 = v225;
    (*(v227 + 32))(v225, v138, v139);
  }

  v143 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_53();
  v145 = (v219 + v144);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278);
  (*(v142 + 32))(v145 + *(v146 + 28), v140, v139);
  *v145 = v143;
  sub_2167A4788();
  v147 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v147);
  OUTLINED_FUNCTION_3_2();
  sub_2168AECC8(v148, &qword_27CAB9AA0);
  v149 = sub_217007D54();
  v150 = v221;
  sub_2167A4788();
  OUTLINED_FUNCTION_4_53();
  v152 = (v150 + v151);
  v153 = v246;
  *v152 = v149;
  v152[1] = v153;
  v154 = *(v153 + *(*v153 + 176));
  MEMORY[0x28223BE20](v155);
  v202[-2] = type metadata accessor for SocialBadgingRequestCoordinator();
  v202[-1] = sub_216C55ED4(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
  v156 = swift_getKeyPath();
  v157 = v224;
  sub_2166A6EA4();
  v158 = (v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D58) + 36));
  *v158 = v156;
  v158[1] = v154;
  swift_retain_n();

  OUTLINED_FUNCTION_82();
  v159 = sub_217007D54();
  sub_216697664(v150, &qword_27CAC6D00);
  OUTLINED_FUNCTION_4_53();
  v161 = (v157 + v160);
  *v161 = v159;
  v161[1] = v154;
  v162 = v240;
  v163 = v205;
  v164 = *(v205 + v240[8]);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216C55ED4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  OUTLINED_FUNCTION_42_0();
  v165 = sub_217007D54();
  v166 = v226;
  sub_2167A4788();
  OUTLINED_FUNCTION_4_53();
  v168 = (v166 + v167);
  *v168 = v165;
  v168[1] = v164;
  v169 = *(v163 + v162[9]);
  type metadata accessor for SocialGraphController();
  sub_216C55ED4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  v170 = v164;
  v171 = sub_217007D54();
  v172 = v241;
  sub_2167A4788();
  v173 = v206;
  v174 = (v172 + *(v206 + 36));
  *v174 = v171;
  v174[1] = v169;

  v175 = MEMORY[0x277D84F90];
  v176 = MEMORY[0x277D837D0];
  sub_21700E384();
  sub_21700D6F4();
  sub_216C5570C(v175);
  OUTLINED_FUNCTION_8();
  sub_21700D124();
  v177 = sub_21700D194();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v177);
  v181 = v244;
  sub_2166A6EA4();
  LODWORD(v177) = __swift_getEnumTagSinglePayload(v181, 1, v177);

  v182 = v249;
  if (!v177)
  {
    v183 = sub_21700D0E4();
    if (*v184)
    {
      v258 = v176;
      v256 = 0xD000000000000020;
      v257 = 0x800000021708B330;
      sub_2166EF928();
    }

    v183(&v259, 0);
  }

  v185 = sub_216C53FA0();
  v186 = v232;
  sub_21700A224();
  v187 = v231;
  sub_2166A6EA4();
  v188 = v234;
  v189 = v238;
  sub_21700D444();
  v190 = v237;
  sub_217007584();
  sub_217007594();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
  v259 = v173;
  v260 = v185;
  v195 = OUTLINED_FUNCTION_12_70();
  v196 = v235;
  sub_21700A194();
  sub_216697664(v190, &qword_27CAC1E28);
  (*(v236 + 8))(v188, v189);
  sub_216697664(v187, &qword_27CAB8DF8);
  (*(v233 + 8))(v186, v182);
  sub_21700D844();
  sub_21700D444();
  v259 = v182;
  v260 = v195;
  v197 = OUTLINED_FUNCTION_11_76();
  v198 = v229;
  v199 = v247;
  sub_21700A1F4();

  (*(v239 + 8))(v196, v199);
  sub_216697664(v243, &qword_27CAB8DF8);
  sub_216697664(v241, &qword_27CAC6D18);
  sub_216697664(v244, &qword_27CAB8DF8);
  v200 = v230;
  v201 = v207;
  (*(v230 + 16))(v248, v198, v207);
  swift_storeEnumTagMultiPayload();
  v259 = v199;
  v260 = v197;
  OUTLINED_FUNCTION_10_80();
  sub_217009554();

  (*(v200 + 8))(v198, v201);
  sub_216C55F70(v242, type metadata accessor for MappedCatalogPage);
  v83 = v204;
  return sub_216697664(v83, &qword_27CAC6D28);
}

unint64_t sub_216C53FA0()
{
  result = qword_27CAC6D38;
  if (!qword_27CAC6D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D18);
    sub_216C54058();
    sub_2168AECC8(&qword_280E2A7B8, &qword_27CAB92A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D38);
  }

  return result;
}

unint64_t sub_216C54058()
{
  result = qword_27CAC6D40;
  if (!qword_27CAC6D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D10);
    sub_216C54110();
    sub_2168AECC8(&qword_280E2A778, &qword_27CAB9298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D40);
  }

  return result;
}

unint64_t sub_216C54110()
{
  result = qword_27CAC6D48;
  if (!qword_27CAC6D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D08);
    sub_216C541C8();
    sub_2168AECC8(&qword_280E2A768, &qword_27CAB9290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D48);
  }

  return result;
}

unint64_t sub_216C541C8()
{
  result = qword_27CAC6D50;
  if (!qword_27CAC6D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D58);
    sub_216C54280();
    sub_2168AECC8(&qword_280E2A768, &qword_27CAB9290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D50);
  }

  return result;
}

unint64_t sub_216C54280()
{
  result = qword_27CAC6D60;
  if (!qword_27CAC6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D00);
    sub_216C54338();
    sub_2168AECC8(&qword_27CAC6E68, &qword_27CAC6E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D60);
  }

  return result;
}

unint64_t sub_216C54338()
{
  result = qword_27CAC6D68;
  if (!qword_27CAC6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CF8);
    sub_216C543F0();
    sub_2168AECC8(&qword_280E2A738, &qword_27CAB9278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D68);
  }

  return result;
}

unint64_t sub_216C543F0()
{
  result = qword_27CAC6D70;
  if (!qword_27CAC6D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CF0);
    sub_216C5447C();
    sub_216C54594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D70);
  }

  return result;
}

unint64_t sub_216C5447C()
{
  result = qword_27CAC6D78;
  if (!qword_27CAC6D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D80);
    sub_216C54508();
    sub_216C54D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D78);
  }

  return result;
}

unint64_t sub_216C54508()
{
  result = qword_27CAC6D88;
  if (!qword_27CAC6D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D90);
    sub_216C54594();
    sub_216C54C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D88);
  }

  return result;
}

unint64_t sub_216C54594()
{
  result = qword_27CAC6D98;
  if (!qword_27CAC6D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CE8);
    sub_216C5464C();
    sub_2168AECC8(&qword_280E2A7B0, &qword_27CABBA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D98);
  }

  return result;
}

unint64_t sub_216C5464C()
{
  result = qword_27CAC6DA0;
  if (!qword_27CAC6DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CE0);
    type metadata accessor for ObjectGraph();
    sub_216C54758();
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_280E2A7B0, &qword_27CABBA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DA0);
  }

  return result;
}

unint64_t sub_216C54758()
{
  result = qword_27CAC6DB0;
  if (!qword_27CAC6DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CE0);
    sub_216C54810();
    sub_2168AECC8(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DB0);
  }

  return result;
}

unint64_t sub_216C54810()
{
  result = qword_27CAC6DB8;
  if (!qword_27CAC6DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DC0);
    sub_216C548C8();
    sub_2168AECC8(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DB8);
  }

  return result;
}

unint64_t sub_216C548C8()
{
  result = qword_27CAC6DC8;
  if (!qword_27CAC6DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DD0);
    sub_216C54980();
    sub_2168AECC8(&qword_280E2A7A0, &qword_27CAC6E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DC8);
  }

  return result;
}

unint64_t sub_216C54980()
{
  result = qword_27CAC6DD8;
  if (!qword_27CAC6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DE0);
    sub_216C54A38();
    sub_2168AECC8(&qword_280E2A7D8, &qword_27CABBA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DD8);
  }

  return result;
}

unint64_t sub_216C54A38()
{
  result = qword_27CAC6DE8;
  if (!qword_27CAC6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DF0);
    sub_216C54AF0();
    sub_2168AECC8(&qword_280E2A7F0, &qword_27CABB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DE8);
  }

  return result;
}

unint64_t sub_216C54AF0()
{
  result = qword_27CAC6DF8;
  if (!qword_27CAC6DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E00);
    sub_216C54BA8();
    sub_2168AECC8(&qword_280E2A740, &qword_27CABCC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DF8);
  }

  return result;
}

unint64_t sub_216C54BA8()
{
  result = qword_27CAC6E08;
  if (!qword_27CAC6E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E10);
    sub_2168AECC8(&qword_27CAC6E18, &qword_27CAC6CD8);
    sub_2168AECC8(&qword_280E2A760, &qword_27CABCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E08);
  }

  return result;
}

unint64_t sub_216C54C8C()
{
  result = qword_27CAC6E28;
  if (!qword_27CAC6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E30);
    sub_216C54594();
    sub_2168AECC8(&qword_280E2AC10, &qword_27CABBA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E28);
  }

  return result;
}

unint64_t sub_216C54D44()
{
  result = qword_27CAC6E38;
  if (!qword_27CAC6E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E40);
    sub_216C54DD0();
    sub_216C54E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E38);
  }

  return result;
}

unint64_t sub_216C54DD0()
{
  result = qword_27CAC6E48;
  if (!qword_27CAC6E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E50);
    sub_216C54594();
    sub_2168AECC8(&qword_280E2AC08, &qword_27CABBA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E48);
  }

  return result;
}

unint64_t sub_216C54E88()
{
  result = qword_27CAC6E58;
  if (!qword_27CAC6E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E60);
    sub_216C54594();
    sub_2168AECC8(&qword_280E2ABE8, &qword_27CABBA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E58);
  }

  return result;
}

uint64_t sub_216C54F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40[0] = a3;
  v46 = a4;
  v41 = type metadata accessor for SectionHeaderView();
  MEMORY[0x28223BE20](v41);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MappedSection(0);
  v40[1] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6ED0);
  MEMORY[0x28223BE20](v45);
  v12 = v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6ED8);
  MEMORY[0x28223BE20](v44);
  v42 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EE0);
  MEMORY[0x28223BE20](v14);
  v16 = v40 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EE8);
  MEMORY[0x28223BE20](v43);
  v18 = v40 - v17;
  result = type metadata accessor for RelatedContentView();
  v20 = a1;
  v21 = (a1 + *(result + 24));
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(a2 + 16);
  if (v23 != 1)
  {
    if (v22 >= v24)
    {
      v37 = 1;
      v33 = v41;
    }

    else
    {
      v33 = v41;
      if (v22 < 0)
      {
        goto LABEL_14;
      }

      sub_216C55F18();
      v34 = v10[1];
      *v7 = *v10;
      v7[1] = v34;
      sub_2166A6EA4();
      v35 = *(v8 + 52);
      v7[2] = *(v10 + *(v8 + 48));
      v36 = *(v10 + v35);
      sub_21700DF14();
      sub_216C55F70(v10, type metadata accessor for MappedSection);
      *(v7 + v33[7]) = v36;
      *(v7 + v33[8]) = v22;
      *(v7 + v33[9]) = 1;
      sub_216C55FC8();
      v37 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v37, 1, v33);
    v38 = &qword_27CAC6ED0;
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216C55CB8();
    sub_216C55E20();
    sub_217009554();
    v39 = v12;
    return sub_216697664(v39, v38);
  }

  if (v22 >= v24)
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v14);
    goto LABEL_9;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = result;
    sub_216C55F18();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F08);
    v27 = &v16[v26[13]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = &v16[v26[12]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
    sub_2168AECC8(&qword_27CAB9AA8, &qword_27CAB9AA0);
    *v28 = sub_217008684();
    v28[1] = v29;
    *&v16[v26[9]] = v40[0];
    *&v16[v26[10]] = v22;
    *&v16[v26[11]] = 0x7FFFFFFFFFFFFFFFLL;
    v30 = *(v20 + *(v25 + 48));
    KeyPath = swift_getKeyPath();
    v32 = &v16[*(v14 + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    sub_216C56020(v16, v18);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v14);

LABEL_9:
    v38 = &qword_27CAC6EE8;
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216C55CB8();
    sub_216C55E20();
    sub_217009554();
    v39 = v18;
    return sub_216697664(v39, v38);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_216C55534@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_21700ED94();
    v14 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v2);
  }
}

unint64_t sub_216C5570C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF7F0);
  OUTLINED_FUNCTION_42_0();
  v2 = sub_21700F5C4();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2166A6EA4();
    result = sub_216C5585C(v13, v14);
    if (v8)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v13;
    v9[1] = v14;
    result = sub_2166EF9C4(&v15, (v3[7] + 32 * result));
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v3[2] = v12;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_216C5585C(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  sub_21700E614();
  v4 = sub_21700F944();

  return sub_2166AF6DC(a1, a2, v4);
}

uint64_t sub_216C558D4(uint64_t a1)
{
  sub_2170080D4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_24_34(v3);
  v5(v4, a1);
  return sub_217008DF4();
}

void sub_216C559C0()
{
  sub_216820EBC();
  if (v0 <= 0x3F)
  {
    sub_216C55ACC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UserSocialProfileCoordinator();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SocialGraphController();
          if (v4 <= 0x3F)
          {
            type metadata accessor for AppDestinationPageProviderBox();
            if (v5 <= 0x3F)
            {
              type metadata accessor for MusicStackAuthority();
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

void sub_216C55ACC()
{
  if (!qword_27CAC6E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AA0);
    sub_2168AECC8(&qword_27CAB9AA8, &qword_27CAB9AA0);
    v0 = sub_2170086B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC6E90);
    }
  }
}

unint64_t sub_216C55B70()
{
  result = qword_27CAC6E98;
  if (!qword_27CAC6E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D18);
    sub_216C53FA0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E98);
  }

  return result;
}

unint64_t sub_216C55CB8()
{
  result = qword_27CAC6EF0;
  if (!qword_27CAC6EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6EE8);
    sub_216C55D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6EF0);
  }

  return result;
}

unint64_t sub_216C55D3C()
{
  result = qword_27CAC6EF8;
  if (!qword_27CAC6EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6EE0);
    sub_2168AECC8(&qword_27CAC6F00, &qword_27CAC6F08);
    sub_2168AECC8(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6EF8);
  }

  return result;
}

unint64_t sub_216C55E20()
{
  result = qword_27CAC6F10;
  if (!qword_27CAC6F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6ED0);
    sub_216C55ED4(qword_280E3F988, type metadata accessor for SectionHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6F10);
  }

  return result;
}

uint64_t sub_216C55ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C55F18()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C55F70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C55FC8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C56020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AccountSettingsPageIntent()
{
  result = qword_27CAC7168;
  if (!qword_27CAC7168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_216C56154(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for AccountSettingsPageIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2E40);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C56354(uint64_t a1)
{
  result = sub_2166CE8F4(&qword_27CAC7178, type metadata accessor for AccountSettingsPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C563F4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE8F4(&qword_27CAC7178, type metadata accessor for AccountSettingsPageIntent);
  result = sub_2166CE8F4(&qword_27CAC7180, type metadata accessor for AccountSettingsPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for AddRecentSearchTermAction()
{
  result = qword_280E35CC8;
  if (!qword_280E35CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C564EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a2;
  v43 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v35 = v10;
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v42 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = v20;
  v25 = *(v14 + 8);
  v25(v24, v12);
  if (v23)
  {
    v37 = v25;
    v26 = (v40 + *(type metadata accessor for AddRecentSearchTermAction() + 20));
    *v26 = v21;
    v26[1] = v23;
    v27 = v42;
    (*(v14 + 16))(v17, v42, v12);
    v28 = v41;
    (*(v5 + 16))(v8, v41, v43);
    v29 = v38;
    sub_21700D224();
    (*(v5 + 8))(v28, v43);
    v37(v27, v12);
    if (v29)
    {
    }

    else
    {
      return (*(v35 + 32))(v40, v39, v36);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for AddRecentSearchTermAction();
    *v33 = 1836213620;
    v33[1] = 0xE400000000000000;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v5 + 8))(v41, v43);
    return (v25)(v42, v12);
  }
}

uint64_t sub_216C56918()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = type metadata accessor for ModalFlowAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v26 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SocialOnboardingPrivacySettingsPageIntent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v17[*(v14 + 20)] = 1;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_21700D234();
  v19 = &v8[*(v5 + 20)];
  v19[3] = v14;
  v19[4] = sub_216C56CDC(qword_27CAC7190, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_216C56D24(v17, boxed_opaque_existential_1, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v8[*(v5 + 24)] = xmmword_217015580;
  v28[3] = v5;
  v28[4] = sub_216C56CDC(qword_280E426A8, type metadata accessor for ModalFlowAction);
  v21 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_216C56D24(v8, v21, type metadata accessor for ModalFlowAction);
  v22 = v27;
  (*(v1 + 104))(v4, *MEMORY[0x277D21E18], v27);
  v23 = sub_21700D5E4();
  (*(v1 + 8))(v4, v22);
  sub_216C56D84(v8, type metadata accessor for ModalFlowAction);
  (*(v26 + 8))(v13, v9);
  sub_216C56D84(v17, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v23;
}

uint64_t sub_216C56CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C56D24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C56D84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C56E34(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ModalFlowAction();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v23 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_21700D234();
  v15 = &v9[*(v7 + 20)];
  v16 = *(a1 + 40);
  *v15 = *a1;
  v22 = *(a1 + 8);
  *(v15 + 8) = v22;
  v21 = *(a1 + 24);
  *(v15 + 24) = v21;
  *(v15 + 5) = v16;
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v9[*(v7 + 24)] = xmmword_217015580;
  v25[3] = v7;
  v25[4] = sub_216C57140(qword_280E426A8, type metadata accessor for ModalFlowAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_216B9DD8C(v9, boxed_opaque_existential_1);
  v18 = v24;
  (*(v3 + 104))(v6, *MEMORY[0x277D21E18], v24);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v19 = sub_21700D5E4();
  (*(v3 + 8))(v6, v18);
  sub_216B9DDF0(v9);
  (*(v23 + 8))(v14, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v19;
}

uint64_t sub_216C57140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C57188()
{
  OUTLINED_FUNCTION_22_49();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC7220);
  MEMORY[0x21CE9BEE0](&v2, v0);
  return v2;
}

uint64_t sub_216C571D4()
{
  OUTLINED_FUNCTION_22_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC7220);
  return sub_21700B0D4();
}

uint64_t sub_216C57224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_12_71();
  v6 = sub_21700AF54();
  OUTLINED_FUNCTION_1();
  v143 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v10);
  v165 = a1;
  v152 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  v151 = v12;
  OUTLINED_FUNCTION_70(&v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_0(&v135 - v15);
  v158 = v4;
  v154 = v5;
  type metadata accessor for ActionButton();
  OUTLINED_FUNCTION_1();
  v142 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v19);
  v167 = v20;
  v168 = v6;
  v21 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v26);
  v161 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v148 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v30 - v29);
  v31 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v141 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v36 = v35 - v34;
  v146 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v145 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v47);
  v162 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v156 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_70(&v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v53);
  v54 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v166 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_77();
  v59 = v57 - v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v61);
  v62 = v2[1];
  if (!v62)
  {
    goto LABEL_17;
  }

  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    goto LABEL_17;
  }

  v139 = *v2;
  v138 = v23;
  sub_21700DF14();
  v140 = v2;
  v64 = sub_216C582C0();
  if (v64 == 6)
  {
LABEL_16:

LABEL_17:
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v21);
    OUTLINED_FUNCTION_6_2();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_210();
    v74 = swift_getWitnessTable();
    v180 = WitnessTable;
    v181 = v74;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
LABEL_18:
    OUTLINED_FUNCTION_48_20();
    sub_2168D4034(v59, v75);
    v76 = *(v166 + 8);
    v76(v59, v54);
    OUTLINED_FUNCTION_6_2();
    v77 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_210();
    v78 = swift_getWitnessTable();
    v178 = v77;
    v179 = v78;
    OUTLINED_FUNCTION_6_1();
    v177 = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_76();
    swift_getWitnessTable();
    sub_2166C24DC(v45, v54);
    return (v76)(v45, v54);
  }

  v65 = v64;
  if (sub_216F07FB4(v64) == 0x4264656B636F6C62 && v66 == 0xE900000000000079)
  {

    goto LABEL_16;
  }

  v137 = v65;
  v68 = sub_21700F7D4();

  if (v68)
  {
    goto LABEL_16;
  }

  v69 = v140[8];
  if (v69)
  {
    v136 = *(v69 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded);
    v70 = v159;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v31);
    sub_21700D6F4();
    v171 = MEMORY[0x277D837D0];
    *&v170 = 0x657461676976616ELL;
    *(&v170 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v170, &v176);
    v71 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v175 = v71;
    sub_2166EF9D4();
    v72 = v175;
    sub_216681B04(v70, v45, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v45, 1, v31) == 1)
    {
      sub_2166997CC(v45, &qword_27CABA820);
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      (*(v80 + 32))(v36, v45, v31);
      v45 = v72;
      v81 = sub_217005DE4();
      v171 = MEMORY[0x277D837D0];
      *&v170 = v81;
      *(&v170 + 1) = v82;
      sub_2166EF9C4(&v170, &v176);
      swift_isUniquelyReferenced_nonNull_native();
      v175 = v72;
      sub_2166EF9D4();
      (*(v70 + 8))(v36, v31);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v83 = sub_21700CF84();
    __swift_project_value_buffer(v83, qword_280E73DB0);
    OUTLINED_FUNCTION_48_20();
    MEMORY[0x21CE9DD70](v139, v62);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v84 = v148;
    v85 = (*(v148 + 80) + 32) & ~*(v148 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_217013DA0;
    (*(v84 + 16))(v86 + v85, v45, v161);
    OUTLINED_FUNCTION_48_20();
    v88 = v146;
    (*(v87 + 16))(v144, v163, v146);
    sub_21700D244();
    (*(v84 + 8))(v160, v161);
    v90 = *(v45 + 8);
    v89 = v45 + 8;
    v90(v163, v88);
    sub_2166997CC(v159, &qword_27CABA820);
    v91 = v165;
    v92 = v140;
    v93 = sub_216C59A10(v165, sub_216CAF434);
    if (sub_216C58384())
    {

      v171 = type metadata accessor for OpenSocialProfileEditAction();
      v172 = sub_216C5AC9C(&qword_27CAB7F18, type metadata accessor for OpenSocialProfileEditAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v170);
      sub_216C58494(v164, boxed_opaque_existential_1);
      v95 = sub_217007F04();
      __swift_storeEnumTagSinglePayload(v149, 1, 1, v95);
      v96 = v91;
      v97 = v152;
      v45 = v157;
      (*(v152 + 16))(v157, v92, v96);
      v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v99 = swift_allocObject();
      v100 = v154;
      *(v99 + 16) = v158;
      *(v99 + 24) = v100;
      (*(v97 + 32))(v99 + v98, v45, v96);
      OUTLINED_FUNCTION_87_10();
      sub_21695FF44(v101, v149, v102, v99, 0, 0, v103);
      OUTLINED_FUNCTION_6_2();
      v104 = v167;
      swift_getWitnessTable();
      v105 = v150;
      v106 = OUTLINED_FUNCTION_38_32();
      sub_2166C24DC(v106, v107);
      v108 = *(v142 + 8);
      v109 = OUTLINED_FUNCTION_38_32();
      v108(v109);
      sub_2166C24DC(v105, v104);
      OUTLINED_FUNCTION_0_210();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_48_20();
      OUTLINED_FUNCTION_38_32();
      sub_2166C2718();
      v110 = OUTLINED_FUNCTION_38_32();
      v108(v110);
      v111 = v150;
      v112 = v104;
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      (*(v113 + 16))(v157, v92, v91);
      OUTLINED_FUNCTION_48_20();
      v115 = *(v114 + 16);
      LODWORD(v163) = v93;
      v115(v147, v164, v162);
      v116 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v117 = v91;
      v118 = (v151 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
      v160 = (*(v89 + 80) + v118 + 18) & ~*(v89 + 80);
      v161 = v160 + v50;
      v119 = swift_allocObject();
      v120 = v117;
      v121 = v154;
      *(v119 + 16) = v158;
      *(v119 + 24) = v121;
      v123 = *(v88 + 32);
      v122 = v88 + 32;
      v123(v119 + v116, v157, v120);
      v124 = v119 + v118;
      *v124 = v139;
      *(v124 + 8) = v62;
      *(v124 + 16) = v163 & 1;
      *(v124 + 17) = v136;
      v125 = *(v89 + 32);
      v45 = v89 + 32;
      v126 = v125(v119 + v160, v147, v162);
      *(v119 + v161) = v137;
      MEMORY[0x28223BE20](v126);
      *(&v135 - 4) = v158;
      *(&v135 - 3) = v121;
      *(&v135 - 2) = v140;
      OUTLINED_FUNCTION_87_10();
      sub_21700AF14();
      OUTLINED_FUNCTION_0_210();
      v127 = v168;
      swift_getWitnessTable();
      v128 = v153;
      sub_2166C24DC(v122, v127);
      v108 = *(v143 + 8);
      (v108)(v122, v127);
      sub_2166C24DC(v128, v127);
      OUTLINED_FUNCTION_6_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_48_20();
      OUTLINED_FUNCTION_38_32();
      sub_2166C2CB0();
      (v108)(v122, v127);
      v111 = v153;
      v112 = v127;
    }

    (v108)(v111, v112);
    (*(v156 + 8))(v164, v162);
    OUTLINED_FUNCTION_6_2();
    v129 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_210();
    v130 = swift_getWitnessTable();
    v173 = v129;
    v174 = v130;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    v131 = v155;
    sub_2166C24DC(v45, v21);
    v132 = v138;
    (*(v138 + 8))(v45, v21);
    (*(v132 + 32))(v59, v131, v21);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v21);
    goto LABEL_18;
  }

  type metadata accessor for UserSocialProfileCoordinator();
  OUTLINED_FUNCTION_9_83();
  sub_216C5AC9C(v133, v134);
  OUTLINED_FUNCTION_191();
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C582C0()
{
  if (!*(v0 + 8))
  {
    return 6;
  }

  if (*(v0 + 80))
  {

    v1 = sub_216F0706C();

    return v1;
  }

  else
  {
    type metadata accessor for SocialGraphController();
    sub_216C5AC9C(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C58384()
{
  v0 = sub_216C582C0();
  v1 = 1;
  v2 = 0;
  switch(v0)
  {
    case 5:
      goto LABEL_3;
    case 6:
      return v2 & 1;
    default:
      v1 = sub_21700F7D4();
LABEL_3:

      v2 = v1;
      break;
  }

  return v2 & 1;
}

uint64_t sub_216C58494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_216C58500(uint64_t a1)
{
  v1 = *(a1 + 24);
  type metadata accessor for SocialRelationshipButtonView();
  v2 = sub_216C5856C();
  v1(v2);
}

uint64_t sub_216C5856C()
{
  v0 = sub_216C57188();
  if (v0 == 6)
  {
    return 0;
  }

  else
  {
    return sub_216F07498(v0);
  }
}

uint64_t sub_216C585A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  HIDWORD(v143) = a7;
  v140 = a6;
  HIDWORD(v146) = a5;
  LODWORD(v161) = a4;
  v163 = a3;
  v162 = a2;
  v148 = a8;
  v147 = a9;
  v10 = type metadata accessor for SocialRelationshipButtonView();
  v142 = *(v10 - 8);
  v11 = *(v142 + 64);
  MEMORY[0x28223BE20](v10);
  v141 = &v138 - v12;
  v166 = sub_2170075A4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_217006224();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v15 - 8);
  v155 = &v138 - v16;
  v17 = sub_217006274();
  MEMORY[0x28223BE20](v17 - 8);
  v169 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21700E4C4();
  MEMORY[0x28223BE20](v19 - 8);
  v168 = (&v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for PresentAlertAction();
  MEMORY[0x28223BE20](v159);
  v160 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_21700CFB4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v23 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_217005EF4();
  v145 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_21700D704();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v28 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v138 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v138 - v36;
  v154 = sub_21700D284();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v167 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_216C5992C())
  {
    v144 = v10;
    v139 = a1;
    sub_216950E18(__src);
    if (*&__src[8])
    {
      memcpy(__dst, __src, sizeof(__dst));
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v24);
      sub_21700D6F4();
      *&__src[24] = MEMORY[0x277D837D0];
      strcpy(__src, "navigate");
      __src[9] = 0;
      *&__src[10] = 0;
      *&__src[12] = -402653184;
      sub_2166EF9C4(__src, &v171);
      v39 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v170[0] = v39;
      sub_2166EF9D4();
      v40 = v170[0];
      sub_216681B04(v37, v34, &qword_27CABA820);
      if (__swift_getEnumTagSinglePayload(v34, 1, v24) == 1)
      {
        sub_2166997CC(v34, &qword_27CABA820);
      }

      else
      {
        v78 = v145;
        (*(v145 + 32))(v26, v34, v24);
        v79 = sub_217005DE4();
        *&__src[24] = MEMORY[0x277D837D0];
        *__src = v79;
        *&__src[8] = v80;
        sub_2166EF9C4(__src, &v171);
        swift_isUniquelyReferenced_nonNull_native();
        v170[0] = v40;
        sub_2166EF9D4();
        v40 = v170[0];
        (*(v78 + 8))(v26, v24);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v81 = sub_21700CF84();
      v82 = __swift_project_value_buffer(v81, qword_280E73DB0);
      MEMORY[0x21CE9DD70](v162, v163, 0x6E6F74747562, 0xE600000000000000, v40, v82);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v83 = v151;
      v84 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_217013DA0;
      v86 = v85 + v84;
      v87 = v152;
      (*(v83 + 16))(v86, v23, v152);
      v88 = v149;
      v89 = v150;
      (*(v149 + 16))(v28, v31, v150);
      sub_21700D244();
      (*(v83 + 8))(v23, v87);
      (*(v88 + 8))(v31, v89);
      sub_2166997CC(v37, &qword_27CABA820);
      sub_21700E4B4();
      sub_217006264();
      v163 = sub_21700E584();
      v162 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
      v91 = (_s6ActionVMa() - 8);
      v92 = *(*v91 + 72);
      v93 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
      v94 = swift_allocObject();
      v161 = v94;
      *(v94 + 16) = xmmword_217013D90;
      v95 = (v94 + v93);
      sub_2167ADC3C(__dst, __src);
      v152 = sub_217007F04();
      v96 = v155;
      __swift_storeEnumTagSinglePayload(v155, 1, 1, v152);
      v97 = v156;
      sub_217006214();
      v98 = sub_2170061F4();
      v100 = v99;
      v101 = *(v157 + 8);
      v102 = v158;
      v101(v97, v158);
      v103 = &v95[v91[8]];
      *v103 = v98;
      v103[1] = v100;
      memcpy(v95, __src, 0x48uLL);
      sub_2168D36D4(v96, &v95[v91[7]]);
      v104 = &v95[v92];
      sub_21700E4B4();
      sub_217006264();
      v157 = sub_21700E584();
      v151 = v105;
      sub_217006214();
      v150 = sub_2170061F4();
      v107 = v106;
      v101(v97, v102);
      v108 = v101;
      sub_217007EF4();
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v152);
      sub_217006214();
      v109 = sub_2170061F4();
      v111 = v110;
      v108(v97, v102);
      v112 = &v104[v91[8]];
      *v112 = v109;
      v112[1] = v111;
      *v104 = v150;
      *(v104 + 1) = v107;
      v113 = v167;
      v114 = v151;
      *(v104 + 2) = v157;
      *(v104 + 3) = v114;
      *(v104 + 2) = 0u;
      *(v104 + 3) = 0u;
      *(v104 + 8) = 0;
      sub_2168D36D4(v96, &v104[v91[7]]);
      sub_21700E4B4();
      sub_217006264();
      v115 = sub_21700E584();
      sub_216933384(v163, v162, v161, v115, v116, __src);
      v117 = v153;
      v118 = v160;
      v119 = v154;
      (*(v153 + 16))(v160, v113, v154);
      v120 = v159;
      v121 = v118 + *(v159 + 20);
      v122 = *&__src[16];
      *v121 = *__src;
      *(v121 + 16) = v122;
      *(v121 + 32) = *&__src[32];
      sub_216C0C534(&v171);
      if (v172)
      {
        __swift_project_boxed_opaque_existential_1(&v171, v172);
        v170[3] = v120;
        v170[4] = sub_216C5AC9C(qword_280E3EB18, type metadata accessor for PresentAlertAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v170);
        v124 = sub_216C5ACE4(v118, boxed_opaque_existential_1, type metadata accessor for PresentAlertAction);
        v125 = v164;
        sub_216C0C548(v124, v126, v127, v128, v129, v130, v131, v132, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
        sub_217007544();
        (*(v165 + 8))(v125, v166);
        sub_216C5AC48(v118, type metadata accessor for PresentAlertAction);
        (*(v117 + 8))(v113, v119);
        sub_2167ADC98(__dst);
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        v133 = &v171;
        return __swift_destroy_boxed_opaque_existential_1Tm(v133);
      }

      sub_216C5AC48(v118, type metadata accessor for PresentAlertAction);
      (*(v117 + 8))(v113, v119);
      sub_2167ADC98(__dst);
      v134 = &v171;
      return sub_2166997CC(v134, &qword_27CAB7310);
    }

    sub_2166997CC(__src, &qword_27CAB8100);
    a1 = v139;
    v10 = v144;
  }

  v41 = a1;
  v42 = v10;
  if (sub_216C59A10(v10, sub_216CAC8D0))
  {
    sub_216C0C534(__dst);
    if (__dst[3])
    {
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      *&__src[24] = type metadata accessor for OpenUserAccountSettingsPageAction();
      *&__src[32] = sub_216C5AC9C(&qword_27CABA428, type metadata accessor for OpenUserAccountSettingsPageAction);
      __swift_allocate_boxed_opaque_existential_1(__src);
      v43 = sub_21700D234();
LABEL_23:
      v136 = v164;
      sub_216C0C548(v43, v44, v45, v46, v47, v48, v49, v50, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
      sub_217007544();
      (*(v165 + 8))(v136, v166);
      __swift_destroy_boxed_opaque_existential_1Tm(__src);
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if ((v161 & 1) == 0)
  {
    sub_216C0C534(__dst);
    if (__dst[3])
    {
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      *&__src[24] = type metadata accessor for OpenFinancePageAction(0);
      *&__src[32] = sub_216C5AC9C(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
      v77 = __swift_allocate_boxed_opaque_existential_1(__src);
      v43 = sub_216C59A9C(v77);
      goto LABEL_23;
    }

LABEL_26:
    v134 = __dst;
    return sub_2166997CC(v134, &qword_27CAB7310);
  }

  if ((v146 & 0x100000000) == 0)
  {
    sub_216C0C534(__dst);
    if (__dst[3])
    {
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      *&__src[24] = type metadata accessor for StartSocialOnboardingAction();
      *&__src[32] = sub_216C5AC9C(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction);
      v135 = __swift_allocate_boxed_opaque_existential_1(__src);
      v43 = sub_216C59DAC(v140, v135);
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v51 = *(a1 + 64);
  if (v51)
  {
    v52 = *(a1 + 16);
    v53 = v51;
    sub_216CAF2D0(v162, v163, v52, v54, v55, v56, v57, v58, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
    v169 = v59;

    v60 = v142;
    v168 = *(v142 + 16);
    v61 = v141;
    v168(v141, v41, v42);
    v144 = v42;
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v167 = (v62 + v11);
    v63 = (v62 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = v147;
    *(v64 + 16) = v148;
    *(v64 + 24) = v65;
    v66 = *(v60 + 32);
    v67 = v144;
    v66(v64 + v62, v61, v144);
    v68 = v64 + v63;
    v69 = v163;
    *v68 = v162;
    *(v68 + 8) = v69;
    LOBYTE(v63) = BYTE4(v143);
    *(v68 + 16) = BYTE4(v143);
    v168(v61, v41, v67);
    v70 = v167;
    v71 = swift_allocObject();
    v72 = v147;
    *(v71 + 16) = v148;
    *(v71 + 24) = v72;
    v66(v71 + v62, v61, v144);
    *(v71 + v70) = v63;
    v73 = v71 + (v70 & 0xFFFFFFFFFFFFFFF8);
    v74 = v163;
    *(v73 + 8) = v162;
    *(v73 + 16) = v74;
    v75 = sub_2166AF2EC();
    swift_bridgeObjectRetain_n();
    v76 = sub_21700EE84();
    __dst[3] = v75;
    __dst[4] = MEMORY[0x277D225C0];
    __dst[0] = v76;
    sub_21700E1C4();

LABEL_24:
    v133 = __dst;
    return __swift_destroy_boxed_opaque_existential_1Tm(v133);
  }

  type metadata accessor for UserSocialProfileCoordinator();
  sub_216C5AC9C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C5992C()
{
  if (*(v0 + 64))
  {
    type metadata accessor for RestrictionsController();

    sub_21700D4B4();

    if (v3)
    {
      v1 = sub_2166C1A3C();
    }

    else
    {
      return 0;
    }

    return v1;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator();
    sub_216C5AC9C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C59A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = v3;
    LOBYTE(a2) = a2();

    return a2 & 1;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator();
    OUTLINED_FUNCTION_9_83();
    sub_216C5AC9C(v7, v8);
    OUTLINED_FUNCTION_191();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C59A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217006224();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  if (v8)
  {
    v9 = v1[1];
    v10 = *v1;
    v11 = v8;
  }

  else
  {
    sub_217006214();
    v10 = sub_2170061F4();
    v11 = v12;
    (*(v4 + 8))(v6, v3);
    v9 = 0;
  }

  v13 = type metadata accessor for OpenFinancePageAction(0);
  v14 = (a1 + v13[5]);
  *v14 = v10;
  v14[1] = v11;
  *(a1 + v13[6]) = 3;
  type metadata accessor for OpenFinancePageAction.Kind(0);
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  v15 = MEMORY[0x277D837D0];
  v16 = sub_21700E384();
  if (v8)
  {
    *(&v25 + 1) = v15;
    *&v24 = v7;
    *(&v24 + 1) = v9;
    sub_2166EF9C4(&v24, v23);
    swift_isUniquelyReferenced_nonNull_native();
    v22 = v16;
    sub_2166EF9D4();
    v16 = v22;
  }

  else
  {
    v17 = sub_2166AF66C(1684366707, 0xE400000000000000);
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      *&v23[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
      sub_21700F554();
      v16 = *&v23[0];

      sub_2166EF9C4((*(v16 + 56) + 32 * v19), &v24);
      sub_21700F574();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    sub_2166997CC(&v24, &unk_27CABF7A0);
  }

  *(&v25 + 1) = v15;
  strcpy(&v24, "socialProfile");
  HIWORD(v24) = -4864;
  sub_2166EF9C4(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v16;
  sub_2166EF9D4();
  *(a1 + v13[8]) = v22;
  result = sub_21700D234();
  *(a1 + v13[7]) = 0;
  *(a1 + v13[9]) = 0;
  return result;
}

uint64_t sub_216C59DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = type metadata accessor for StartSocialOnboardingAction();
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_216C59E1C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a1;
  type metadata accessor for SocialRelationshipButtonView();
  sub_21700DF14();
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446722;
    *(v11 + 4) = sub_2166A85FC(a3, a4, &v20);
    *(v11 + 12) = 2082;
    v13 = sub_216F0750C(a5);
    v15 = sub_2166A85FC(v13, v14, &v20);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    v16 = sub_216F0750C(v8);
    v18 = sub_2166A85FC(v16, v17, &v20);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_216679000, v9, v10, "Follow state for social profile: %{public}s, successfully updated from: '%{public}s' to: '%{public}s'", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v12, -1, -1);
    MEMORY[0x21CEA1440](v11, -1, -1);
  }

  return sub_216C59FC8(v8);
}

uint64_t sub_216C59FC8(char a1)
{
  v2 = sub_216C57188();
  if (v2 == 6)
  {
    goto LABEL_2;
  }

  v5 = sub_216F07FB4(v2);
  v7 = v6;
  if (v5 == sub_216F07FB4(a1) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21700F7D4();

    if ((v10 & 1) == 0)
    {
LABEL_2:
      v3 = sub_21700B414();
      MEMORY[0x28223BE20](v3);
      sub_217008564();
    }
  }

  return result;
}

void sub_216C5A118(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SocialRelationshipButtonView();
  sub_216C59FC8(a3);
  sub_21700DF14();
  oslog = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2166A85FC(a4, a5, &v15);
    *(v9 + 12) = 2082;
    v11 = sub_216F0750C(a3);
    v13 = sub_2166A85FC(v11, v12, &v15);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_216679000, oslog, v8, "Follow state for social profile: %{public}s, failed to update, reverting back to: '%{public}s'", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }
}

uint64_t sub_216C5A294(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v10 = *(v9 + 24);
  type metadata accessor for SocialRelationshipButtonView();
  v11 = sub_216C5856C();
  v10(v11);

  sub_2166C24DC(v5, a2);
  v12 = *(v3 + 8);
  v12(v5, a2);
  sub_2166C24DC(v8, a2);
  return (v12)(v8, a2);
}

uint64_t sub_216C5A424@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21700B114();
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57B0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v34[-v11];
  v13 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v14 + 104))(v8, v13);
  if (a1 == 2)
  {
    v15 = sub_21700AD34();
  }

  else if (a1)
  {
    v15 = sub_21700ACD4();
  }

  else
  {
    v15 = sub_21700AC54();
  }

  v16 = v15;
  sub_2170081E4();
  v17 = MEMORY[0x277CE1260];
  sub_216C5ACE4(v8, v12, MEMORY[0x277CE1260]);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57D0) + 36)];
  v19 = v35;
  *v18 = *&v34[8];
  *(v18 + 1) = v19;
  *(v18 + 4) = v36;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57D8);
  *&v12[*(v20 + 52)] = v16;
  *&v12[*(v20 + 56)] = 256;
  v21 = sub_21700B3B4();
  v23 = v22;
  sub_216C5AC48(v8, v17);
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57E0) + 36)];
  *v24 = v21;
  v24[1] = v23;
  if ((a1 | 2) == 2)
  {
    v25 = sub_21700ACD4();
  }

  else
  {
    v25 = sub_21700AC54();
  }

  v26 = v25;
  sub_216C5ACE4(v12, a2, MEMORY[0x277CE1260]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  *(a2 + *(v27 + 52)) = v26;
  *(a2 + *(v27 + 56)) = 256;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57E8) + 36);
  sub_216681B04(v12, v28, &qword_27CAC57B0);
  v29 = sub_21700B3B4();
  v31 = v30;
  sub_2166997CC(v12, &qword_27CAC57B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57F0);
  v33 = (v28 + *(result + 36));
  *v33 = v29;
  v33[1] = v31;
  return result;
}

void sub_216C5A70C()
{
  sub_216688154();
  if (v0 <= 0x3F)
  {
    sub_2166B0B84();
    if (v1 <= 0x3F)
    {
      sub_216C5A8C0(319, &qword_27CAC7218, &qword_27CAC0B30, &unk_21703B130, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_216A949B4();
        if (v3 <= 0x3F)
        {
          sub_216AF7568();
          if (v4 <= 0x3F)
          {
            sub_216C5A8C0(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2167EE974();
              if (v6 <= 0x3F)
              {
                sub_217007CA4();
                if (v7 <= 0x3F)
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

void sub_216C5A8C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_216C5A968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SocialRelationshipButtonView();
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_21700D284();
  OUTLINED_FUNCTION_2(v8);
  v11 = v0 + ((v7 + *(v9 + 80) + 18) & ~*(v9 + 80));
  return sub_216C585A0(v0 + v5, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16), *(v0 + v7 + 17), v11, *(v11 + *(v10 + 64)), v1, v2);
}

uint64_t sub_216C5AA84()
{
  OUTLINED_FUNCTION_12_71();
  v1 = type metadata accessor for SocialRelationshipButtonView();
  OUTLINED_FUNCTION_36(v1);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_216C58500(v3);
}

uint64_t sub_216C5AB04()
{
  OUTLINED_FUNCTION_12_71();
  v0 = type metadata accessor for SocialRelationshipButtonView();
  OUTLINED_FUNCTION_2(v0);
  v1 = OUTLINED_FUNCTION_21_54();

  return sub_216C59E1C(v1, v2, v3, v4, v5);
}

void sub_216C5ABA8()
{
  OUTLINED_FUNCTION_12_71();
  v0 = type metadata accessor for SocialRelationshipButtonView();
  OUTLINED_FUNCTION_2(v0);
  v1 = OUTLINED_FUNCTION_21_54();

  sub_216C5A118(v1, v2, v3, v4, v5);
}

uint64_t sub_216C5AC48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C5AC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C5ACE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C5AD68()
{
  v0 = sub_21700B7F4();
  if (v1 <= 0x3F)
  {
    swift_getWitnessTable();
    v0 = sub_217006984();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

char *sub_216C5AE78()
{
  OUTLINED_FUNCTION_92();
  memcpy(__dst, v1, sizeof(__dst));
  objc_allocWithZone(type metadata accessor for LibraryImportWebViewModel());
  sub_2167E705C(v1, &v3);

  return sub_216B61FCC(__dst, v0);
}

uint64_t sub_216C5AF70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72A8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = (&v16 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72B0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  type metadata accessor for LibraryImportWebViewModel();
  OUTLINED_FUNCTION_2_145();
  sub_216C5D26C(v6, v7);
  v8 = sub_2170081B4();
  v9 = sub_216B61EEC();

  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    sub_216C5D0E4();
    OUTLINED_FUNCTION_1_179();
    sub_2166D9530(v10, v11);
    return sub_217009554();
  }

  else
  {
    *v4 = sub_21700B3B4();
    v4[1] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72B8);
    sub_216C5B1C4(v1, v4 + *(v14 + 44));
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216C5D0E4();
    OUTLINED_FUNCTION_1_179();
    sub_2166D9530(v15, &qword_27CAC72A8);
    sub_217009554();
    return sub_216697664(v4, &qword_27CAC72A8);
  }
}

uint64_t sub_216C5B1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0);
  v60 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v59 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72D0);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v58 - v7;
  v8 = type metadata accessor for LibraryImportWebView(0);
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = v9;
  v80 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_217009124();
  v10 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72D8);
  MEMORY[0x28223BE20](v87);
  v65 = &v58 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72E0);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v88 = &v58 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72E8);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v90 = &v58 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72F0);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v91 = &v58 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72F8);
  MEMORY[0x28223BE20](v72);
  v79 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v78 = &v58 - v21;
  v22 = *a1;
  v93 = *(a1 + 8);
  v94 = v22;
  v85 = *(a1 + 16);
  v23 = type metadata accessor for LibraryImportWebViewModel();
  v24 = sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  v25 = sub_2170081B4();
  v26 = *&v25[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView];

  *&__dst[0] = v26;
  v27 = v89;
  (*(v10 + 104))(v12, *MEMORY[0x277CDDDC0], v89);
  sub_216C5D138();
  v28 = v65;
  sub_21700A904();
  (*(v10 + 8))(v12, v27);

  LOBYTE(v25) = sub_217009CE4();
  v29 = sub_217008A34();
  v30 = v28 + *(v87 + 36);
  *v30 = v29;
  *(v30 + 8) = v25;
  v89 = a1;
  v96 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7308);
  v32 = sub_216C5D194();
  v33 = type metadata accessor for TopToolBar(255);
  v34 = sub_216C5D26C(&qword_27CAC7318, type metadata accessor for TopToolBar);
  *&__dst[0] = v33;
  *(&__dst[0] + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v32;
  v68 = v31;
  v66 = OpaqueTypeConformance2;
  sub_21700AAD4();
  sub_216697664(v28, &qword_27CAC72D8);
  v95 = v24;
  v36 = sub_2170081B4();
  memcpy(__dst, &v36[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel], sizeof(__dst));
  sub_2166A6EA4();

  v38 = *(&__dst[0] + 1);
  v37 = *&__dst[0];
  if (*(&__dst[0] + 1))
  {
    v102[0] = __dst[0];
    v102[1] = __dst[1];
    v102[2] = __dst[2];
    v102[3] = __dst[3];
    v102[4] = __dst[4];
    sub_21700DF14();
    sub_216697664(v102, &qword_27CAC3C08);
  }

  else
  {
    v102[0] = *&__dst[0];
    v102[1] = __dst[1];
    v102[2] = __dst[2];
    v102[3] = __dst[3];
    v102[4] = __dst[4];
    sub_216697664(v102, &qword_27CAC3C08);
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  v99 = v37;
  v100 = v38;
  v86 = v23;
  v39 = sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v61 = v97[10];
  v62 = v98;
  v40 = sub_2170081B4();
  memcpy(v101, &v40[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel], sizeof(v101));
  sub_2166A6EA4();

  memcpy(v97, v101, 0x50uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7320);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3C08);
  *&v102[0] = v87;
  *(&v102[0] + 1) = v68;
  *&v102[1] = v67;
  *(&v102[1] + 1) = v66;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_2167B2E14();
  v68 = sub_216C5D2B4();
  v87 = sub_2167C4D74();
  v41 = v71;
  v42 = v88;
  sub_21700A9A4();

  memcpy(v102, v97, sizeof(v102));
  sub_216697664(v102, &qword_27CAC7340);

  (*(v69 + 8))(v42, v41);
  v43 = sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  sub_216C614BC();
  swift_allocObject();
  sub_216C61F24();
  v97[0] = v41;
  v97[1] = MEMORY[0x277D837D0];
  v97[2] = v63;
  v97[3] = v64;
  v97[4] = v65;
  v97[5] = v66;
  v97[6] = v67;
  v97[7] = v68;
  v97[8] = v87;
  swift_getOpaqueTypeConformance2();
  sub_216C5D3D4();
  v44 = v75;
  v45 = v90;
  sub_21700A9E4();

  (*(v73 + 8))(v45, v44);
  sub_216C614BC();
  v46 = swift_allocObject();
  sub_216C61F24();
  v47 = v70;
  (*(v74 + 32))(v70, v91, v76);
  v48 = &v47[*(v72 + 36)];
  *v48 = sub_216C5D428;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0;
  v49 = v78;
  sub_216752BBC();
  v50 = sub_2170081B4();
  LOBYTE(v47) = sub_216B61EC4();

  v51 = 1;
  v52 = v81;
  v53 = v82;
  if (v47)
  {
    v54 = v59;
    sub_217008294();
    (*(v60 + 32))(v53, v54, v52);
    v51 = 0;
  }

  __swift_storeEnumTagSinglePayload(v53, v51, 1, v52);
  v55 = v79;
  sub_2166A6EA4();
  v56 = v83;
  sub_2166A6EA4();
  sub_2166A6EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7350);
  sub_2166A6EA4();
  sub_216697664(v53, &qword_27CAC72D0);
  sub_216697664(v49, &qword_27CAC72F8);
  sub_216697664(v56, &qword_27CAC72D0);
  return sub_216697664(v55, &qword_27CAC72F8);
}

uint64_t sub_216C5BF30()
{
  v0 = type metadata accessor for TopToolBar(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LibraryImportWebViewModel();
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  sub_2170081B4();
  v3 = sub_2170081B4();
  v4 = sub_216B61DB0();

  *(v2 + *(v0 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  *v2 = sub_217008684();
  v2[1] = v5;
  *(v2 + *(v0 + 24)) = v4 & 1;
  v6 = sub_216C5D26C(&qword_27CAC7318, type metadata accessor for TopToolBar);
  MEMORY[0x21CE9A570](v2, v0, v6);
  return sub_216C61514(v2, type metadata accessor for TopToolBar);
}

uint64_t sub_216C5C110@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7338);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v37 - v15;
  MEMORY[0x28223BE20](v16);
  v42 = &v37 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  memcpy(__dst, a1, sizeof(__dst));
  if (*(&__dst[0] + 1))
  {
    __src[0] = __dst[0];
    v21 = a1[2];
    __src[1] = a1[1];
    __src[2] = v21;
    v22 = a1[4];
    __src[3] = a1[3];
    __src[4] = v22;
    memcpy(v45, a1, sizeof(v45));
    sub_216C60FF8(v45, v47);
    sub_217007EF4();
    v23 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
    v24 = swift_allocObject();
    v41 = v4;
    v25 = memcpy((v24 + 16), __src, 0x50uLL);
    v39 = v13;
    MEMORY[0x28223BE20](v25);
    v38 = v6;
    *(&v37 - 2) = __src;
    memcpy(v46, __dst, sizeof(v46));
    sub_216C60FF8(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    sub_2167C4D74();
    v40 = a2;
    sub_21700AF04();
    v26 = swift_allocObject();
    v27 = memcpy((v26 + 16), __src, 0x50uLL);
    MEMORY[0x28223BE20](v27);
    *(&v37 - 2) = __src;
    memcpy(v47, __dst, sizeof(v47));
    sub_216C60FF8(v47, &v44);
    v28 = v42;
    sub_21700AF14();
    v29 = *(v11 + 16);
    v30 = v43;
    v29(v43, v20, v10);
    v31 = v39;
    v29(v39, v28, v10);
    v32 = v38;
    v29(v38, v30, v10);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7358);
    v29(&v32[*(v33 + 48)], v31, v10);
    sub_216697664(__dst, &qword_27CAC3C08);
    v34 = *(v11 + 8);
    v34(v28, v10);
    v34(v20, v10);
    v34(v31, v10);
    v34(v30, v10);
    v35 = v40;
    sub_2167A4788();
    return __swift_storeEnumTagSinglePayload(v35, 0, 1, v41);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_216C5C670@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v4;
  return sub_21700DF14();
}

uint64_t sub_216C5C688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_21700E384();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820);
  v4[0] = v2;
  v1(v4, 0, 0);
  return sub_216697664(v4, &unk_27CABF7A0);
}

uint64_t sub_216C5C728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v4;
  return sub_21700DF14();
}

uint64_t sub_216C5C740@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = 0;
  if (*(result + 8))
  {
    v4 = result;
    result = *(result + 24);
    v5 = 0;
    v6 = 0;
    if (result)
    {
      v3 = *(v4 + 16);
      result = sub_21700DF14();
      v6 = MEMORY[0x277D84F90];
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v3;
  a2[1] = v5;
  a2[2] = 0;
  a2[3] = v6;
  return result;
}

void *sub_216C5C7A8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LibraryImportWebView(0);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for LibraryImportWebViewModel();
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  v3 = sub_2170081B4();
  v4 = *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_protectionSpaceHost];
  v5 = *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_protectionSpaceHost + 8];
  sub_21700DF14();

  sub_216C614BC();
  v6 = swift_allocObject();
  sub_216C61F24();
  sub_216C5CB88(v4, v5, sub_216C5D4FC, v6, __src);
  return memcpy(a1, __src, 0x60uLL);
}

void sub_216C5C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_allocWithZone(MEMORY[0x277CCACF0]);
  sub_21700DF14();
  sub_21700DF14();
  v8 = sub_216C60F68(a1, a2, a3, a4, 2);
  type metadata accessor for LibraryImportWebViewModel();
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  v9 = sub_2170081B4();
  v10 = *&v9[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCredential];
  *&v9[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCredential] = v8;
  v11 = v8;

  v12 = sub_2170081B4();
  v13 = *&v12[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  sub_2167759F4(v13);

  if (v13)
  {
    v13(0, v8);
    sub_21667E91C(v13);
  }

  v14 = sub_2170081B4();
  v15 = &v14[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v16 = *&v14[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_21667E91C(v16);

  v17 = sub_2170081B4();
  sub_216B61F50();
}

__n128 sub_216C5CB88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21700AEA4();
  sub_21700AEA4();
  sub_21700AEA4();
  result = v11;
  *a5 = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11.n128_u8[0];
  *(a5 + 56) = v11.n128_u64[1];
  *(a5 + 64) = a1;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  return result;
}

void sub_216C5CC68()
{
  v0 = type metadata accessor for LibraryImportWebView(0);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for LibraryImportWebViewModel();
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  v1 = sub_2170081B4();
  sub_216C614BC();
  v2 = swift_allocObject();
  sub_216C61F24();
  v3 = &v1[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss];
  v4 = *&v1[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss];
  *v3 = sub_216C5D454;
  v3[1] = v2;
  sub_21667E91C(v4);
}

uint64_t sub_216C5CE00()
{
  v0 = sub_217008424();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryImportWebViewModel();
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  v4 = sub_2170081B4();
  v5 = &v4[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v6 = *&v4[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_21667E91C(v6);

  sub_216C5F230(type metadata accessor for LibraryImportWebView, v3);
  sub_217008414();
  return (*(v1 + 8))(v3, v0);
}

id sub_216C5CF74(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _setUseSystemAppearance_];
  return v2;
}

uint64_t sub_216C5CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C61440();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216C5D054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C61440();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216C5D0B8()
{
  sub_216C61440();
  sub_2170094F4();
  __break(1u);
}

unint64_t sub_216C5D0E4()
{
  result = qword_27CAC72C0;
  if (!qword_27CAC72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC72C0);
  }

  return result;
}

unint64_t sub_216C5D138()
{
  result = qword_27CAC7300;
  if (!qword_27CAC7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7300);
  }

  return result;
}

unint64_t sub_216C5D194()
{
  result = qword_27CAC7310;
  if (!qword_27CAC7310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC72D8);
    sub_216C5D138();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7310);
  }

  return result;
}

uint64_t sub_216C5D26C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216C5D2B4()
{
  result = qword_27CAC7328;
  if (!qword_27CAC7328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7320);
    sub_2166D9530(&qword_27CAC7330, &qword_27CAC7338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7328);
  }

  return result;
}

void *sub_216C5D364@<X0>(void *a1@<X8>)
{
  type metadata accessor for LibraryImportWebView(0);

  return sub_216C5C7A8(a1);
}

unint64_t sub_216C5D3D4()
{
  result = qword_27CAC7348;
  if (!qword_27CAC7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7348);
  }

  return result;
}

uint64_t sub_216C5D480(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_216C5D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibraryImportWebView(0);

  sub_216C5C978(a1, a2, a3, a4);
}

double sub_216C5D594@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_216983738(154);
  v4 = v3;
  v5 = sub_21700AD34();
  KeyPath = swift_getKeyPath();
  v7 = sub_217009D54();
  v8 = swift_getKeyPath();
  v9 = sub_217009C84();
  v10 = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v11;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v5;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  *(a1 + 112) = v10;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_216C5D66C()
{
  v0 = sub_2170090F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for TopToolBar(0);
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2167A4788();
  }

  sub_21700ED94();
  v6 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216C5D858@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7390);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  v5 = sub_217009684();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7398);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  sub_217009624();
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73A0);
  sub_2166D9530(&qword_27CAC73A8, &qword_27CAC73A0);
  sub_217008B94();
  v10 = sub_216B61DB0();
  v11 = sub_216B61DD8();
  v13 = v12;
  v14 = &v4[*(v2 + 48)];
  (*(v7 + 16))(v4, v9, v6);
  *v14 = v10 & 1;
  *(v14 + 1) = v11;
  *(v14 + 2) = v13;
  sub_217009404();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_216C5DAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_2170098A4();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v43[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v43[-v15];
  v17 = type metadata accessor for CancelButton(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v50 = &v43[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v43[-v21];
  v23 = *(a1 + 8);
  *(v22 + *(v18 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for LibraryImportWebViewModel();
  v25 = sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel);
  v26 = v23;
  v27 = v49;
  v46 = v26;
  v47 = v25;
  v48 = v24;
  *v22 = sub_217008684();
  v22[1] = v28;
  sub_216C5D66C();
  (*(v27 + 104))(v13, *MEMORY[0x277CE0560], v3);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
  v29 = *(v6 + 56);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    sub_216697664(v13, &qword_27CAB8600);
    sub_216697664(v16, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v3) == 1)
    {
      sub_216697664(v8, &qword_27CAB8600);
LABEL_9:
      v36 = v46;
      v31 = sub_217008684();
      v32 = v37;
      v38 = v37;
      v30 = 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v3) == 1)
  {
    sub_216697664(v13, &qword_27CAB8600);
    sub_216697664(v16, &qword_27CAB8600);
    (*(v27 + 8))(v51, v3);
LABEL_6:
    sub_216697664(v8, &qword_27CAB8708);
    goto LABEL_7;
  }

  v33 = v45;
  (*(v27 + 32))(v45, &v8[v29], v3);
  sub_216C5D26C(&qword_280E2A858, MEMORY[0x277CE0570]);
  v34 = v51;
  v44 = sub_21700E494();
  v35 = *(v27 + 8);
  v35(v33, v3);
  sub_216697664(v13, &qword_27CAB8600);
  sub_216697664(v16, &qword_27CAB8600);
  v35(v34, v3);
  sub_216697664(v8, &qword_27CAB8600);
  if (v44)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_10:
  v39 = v50;
  sub_216C614BC();
  v40 = v52;
  sub_216C614BC();
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73B0) + 48));
  *v41 = 0;
  v41[1] = v30;
  v41[2] = v31;
  v41[3] = v32;
  sub_216C61514(v22, type metadata accessor for CancelButton);

  return sub_216C61514(v39, type metadata accessor for CancelButton);
}

uint64_t sub_216C5E09C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v97 = a2;
  v103 = a1;
  v108 = a4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3880);
  v91 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = v78 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C8);
  v79 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = v78 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7490);
  MEMORY[0x28223BE20](v107);
  v93 = v78 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7498);
  v80 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = v78 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74A0);
  v78[1] = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v9 = v78 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74A8);
  v86 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v85 = v78 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74B0);
  v84 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v83 = v78 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74B8);
  MEMORY[0x28223BE20](v104);
  v99 = v78 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74C0);
  v82 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v14 = v78 - v13;
  v15 = sub_217009684();
  MEMORY[0x28223BE20](v15 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74C8);
  v81 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v17 = v78 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74D0);
  MEMORY[0x28223BE20](v106);
  v105 = v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38);
  MEMORY[0x28223BE20](v19);
  v21 = (v78 - v20);
  v109 = v78 - v20;
  v22 = sub_21700ADB4();
  v23 = (v21 + *(v19 + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = sub_21700ADF4();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v21 = v22;
  v27 = v102;
  if (!v102)
  {
    v40 = v88;
    v41 = v89;
    v42 = v87;
    v43 = v90;
    v44 = v91;
    if ((v103 & 1) == 0)
    {
      sub_217009664();
      sub_2170081F4();
      v67 = sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8);
      v68 = v43;
      v69 = v92;
      MEMORY[0x21CE9A570](v41, v92, v67);
      v70 = sub_2166D9530(&qword_27CAC74D8, &qword_27CAC74A0);
      v110 = v42;
      v111 = v70;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v110 = v69;
      v111 = v67;
      v72 = swift_getOpaqueTypeConformance2();
      v73 = v93;
      v74 = v43;
      v75 = v95;
      MEMORY[0x21CE9A590](v74, v94, v95, OpaqueTypeConformance2, v72);
      v76 = sub_216C61B74();
      v77 = sub_216C61CD4();
      v39 = v105;
      MEMORY[0x21CE9A590](v73, v104, v107, v76, v77);
      sub_216697664(v73, &qword_27CAC7490);
      (*(v44 + 8))(v68, v75);
      (*(v79 + 8))(v41, v69);
      goto LABEL_8;
    }

    v45 = sub_217009674();
    MEMORY[0x28223BE20](v45);
    v78[-2] = v109;
    sub_21680C99C();
    sub_2170081F4();
    v46 = sub_2166D9530(&qword_27CAC74D8, &qword_27CAC74A0);
    v47 = v42;
    MEMORY[0x21CE9A570](v9, v42, v46);
    v110 = v42;
    v111 = v46;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8);
    v110 = v92;
    v111 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = v93;
    v52 = v94;
    MEMORY[0x21CE9A580](v40, v94, v95, v48, v50);
    v53 = sub_216C61B74();
    v54 = sub_216C61CD4();
    v39 = v105;
    MEMORY[0x21CE9A590](v51, v104, v107, v53, v54);
    sub_216697664(v51, &qword_27CAC7490);
    (*(v80 + 8))(v40, v52);
    v55 = &v110;
    goto LABEL_7;
  }

  v28 = sub_217009674();
  if ((v103 & 1) == 0)
  {
    MEMORY[0x28223BE20](v28);
    v78[-2] = v97;
    v78[-1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    sub_2167C4D74();
    v9 = v83;
    sub_2170081F4();
    v56 = sub_2166D9530(&qword_27CAC74F0, &qword_27CAC74B0);
    v57 = v85;
    v47 = v100;
    MEMORY[0x21CE9A570](v9, v100, v56);
    v58 = sub_2166D9530(&qword_27CAC74E8, &qword_27CAC74C8);
    v110 = v96;
    v111 = v58;
    v59 = swift_getOpaqueTypeConformance2();
    v110 = v47;
    v111 = v56;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v99;
    v62 = v101;
    MEMORY[0x21CE9A590](v57, v98, v101, v59, v60);
    v63 = sub_216C61B74();
    v64 = sub_216C61CD4();
    v39 = v105;
    MEMORY[0x21CE9A580](v61, v104, v107, v63, v64);
    sub_216697664(v61, &qword_27CAC74B8);
    (*(v86 + 8))(v57, v62);
    v55 = &v112;
LABEL_7:
    (*(*(v55 - 32) + 8))(v9, v47);
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v28);
  v29 = v97;
  v78[-4] = v109;
  v78[-3] = v29;
  v78[-2] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7508);
  sub_2166D9530(&qword_27CAC7510, &qword_27CAC7508);
  sub_217008B94();
  v30 = sub_2166D9530(&qword_27CAC74E8, &qword_27CAC74C8);
  v31 = v96;
  MEMORY[0x21CE9A570](v17, v96, v30);
  v110 = v31;
  v111 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_2166D9530(&qword_27CAC74F0, &qword_27CAC74B0);
  v110 = v100;
  v111 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v98;
  v36 = v99;
  MEMORY[0x21CE9A580](v14, v98, v101, v32, v34);
  v37 = sub_216C61B74();
  v38 = sub_216C61CD4();
  v39 = v105;
  MEMORY[0x21CE9A580](v36, v104, v107, v37, v38);
  sub_216697664(v36, &qword_27CAC74B8);
  (*(v82 + 8))(v14, v35);
  (*(v81 + 8))(v17, v31);
LABEL_8:
  v65 = sub_216C61E30();
  MEMORY[0x21CE9A570](v39, v106, v65);
  sub_216697664(v39, &qword_27CAC74D0);
  return sub_216697664(v109, &qword_27CAB8B38);
}

uint64_t sub_216C5EF1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = sub_2170091A4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7518);
  return sub_216C5EF8C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_216C5EF8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_2166A6EA4();
  sub_2166A6EA4();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7520) + 48));
  *v9 = a1;
  v9[1] = a2;
  v10 = MEMORY[0x277D84F90];
  v9[2] = 0;
  v9[3] = v10;
  sub_21700DF14();
  sub_2167770D0(a1, a2, 0, v10);
  sub_2167C4DF0(a1, a2, 0, v10);
  return sub_216697664(v8, &qword_27CAB8B38);
}

uint64_t sub_216C5F0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = MEMORY[0x277D84F90];
  a3[2] = 0;
  a3[3] = v3;
  return sub_21700DF14();
}

uint64_t sub_216C5F0E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a2;
  sub_21700AF14();
  LOBYTE(a2) = sub_216B61D60();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (a2 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7528);
  v11 = (a3 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = sub_2167D2420;
  v11[2] = v9;
  return result;
}

uint64_t sub_216C5F1F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_216C5F230@<X0>(void (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  OUTLINED_FUNCTION_34();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  a1(0, v9);
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    return (*(v12 + 32))(a2, v11);
  }

  else
  {
    sub_21700ED94();
    v14 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_216C5F438()
{
  v0 = type metadata accessor for CancelButton(0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_217007F04();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217007EE4();
  sub_216C614BC();
  v4 = swift_allocObject();
  sub_216C61F24();
  return MEMORY[0x21CE9BD40](v3, sub_216C61F7C, v4);
}

uint64_t sub_216C5F5AC(uint64_t a1)
{
  v2 = sub_217008424();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  v7 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  sub_21700DF14();
  v9 = sub_216935620(3, v8);

  if (v9)
  {
    v10 = sub_21700E384();
    v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820);
    v22[1] = 0;
    v23[0] = v10;
    v22[0] = 0;
    v9(v23, v22);
    sub_21667E91C(v9);
    sub_216697664(v23, &unk_27CABF7A0);
    swift_beginAccess();
    sub_216A51D14(3, v11, v12, v13, v14, v15, v16, v17, v21, v22[0]);
    v19 = v18;
    swift_endAccess();
    return sub_21667E91C(v19);
  }

  else
  {
    sub_216B67F18();
    sub_216C5F230(type metadata accessor for CancelButton, v5);
    sub_217008414();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_216C5F7C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73B8);
  sub_216C5F8C8(v1, a1 + *(v3 + 44));
  v4 = sub_217009C84();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73C0) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = swift_allocObject();
  memcpy((v6 + 16), v1, 0x60uLL);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73C8) + 36));
  *v7 = sub_216C6156C;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;
  return sub_216C61590(v1, &v9);
}

uint64_t sub_216C5F8C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D8);
  MEMORY[0x28223BE20](v72);
  v4 = (&v56 - v3);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73E0);
  MEMORY[0x28223BE20](v63);
  v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73E8);
  MEMORY[0x28223BE20](v62);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73F0);
  MEMORY[0x28223BE20](v13);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73F8);
  MEMORY[0x28223BE20](v69);
  v71 = &v56 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7400);
  MEMORY[0x28223BE20](v70);
  KeyPath = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7408);
  v60 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  MEMORY[0x28223BE20](v26);
  v68 = &v56 - v27;
  MEMORY[0x28223BE20](v28);
  v67 = &v56 - v29;
  v74 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  if (v75 == 1)
  {
    sub_217009264();
    v30 = swift_allocObject();
    memcpy((v30 + 16), a1, 0x60uLL);
    sub_216C61590(a1, &v74);
    v66 = v25;
    v31 = v67;
    sub_21700AF34();
    sub_217009264();
    v32 = swift_allocObject();
    memcpy((v32 + 16), a1, 0x60uLL);
    sub_216C61590(a1, &v74);
    v33 = v68;
    sub_21700AF34();
    v34 = v60;
    v35 = *(v60 + 16);
    v36 = v66;
    v35(v66, v31, v20);
    v35(v22, v33, v20);
    v37 = KeyPath;
    v35(KeyPath, v36, v20);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7428);
    v35((v37 + *(v38 + 48)), v22, v20);
    v39 = *(v34 + 8);
    v39(v22, v20);
    v39(v36, v20);
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC7418, &qword_27CAC7400);
    sub_2166D9530(&qword_27CAC7420, &qword_27CAC73D8);
    sub_217009554();
    sub_216697664(v37, &qword_27CAC7400);
    v39(v68, v20);
    return (v39)(v67, v20);
  }

  else
  {
    v67 = 0x800000021708B3E0;
    v68 = sub_217009EA4();
    KeyPath = swift_getKeyPath();
    sub_217009264();
    v59 = v12;
    v75 = *a1;
    v76 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0);
    v58 = v8;
    sub_21700AED4();
    sub_21700B4B4();
    v41 = sub_217009C84();
    v42 = &v17[*(v13 + 36)];
    v57 = v17;
    *v42 = v41;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    v42[40] = 1;
    sub_217009264();
    v75 = *(a1 + 24);
    v76 = *(a1 + 5);
    sub_21700AED4();
    v43 = v59;
    sub_217008194();
    v44 = sub_217009C84();
    v45 = v43 + *(v62 + 36);
    *v45 = v44;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
    *(v45 + 40) = 1;
    sub_217009264();
    v46 = swift_allocObject();
    memcpy((v46 + 16), a1, 0x60uLL);
    sub_216C61590(a1, &v74);
    v47 = v58;
    sub_21700AF34();
    v48 = sub_217009C84();
    v49 = v47 + *(v63 + 36);
    *v49 = v48;
    *(v49 + 8) = 0u;
    *(v49 + 24) = 0u;
    *(v49 + 40) = 1;
    v50 = v64;
    sub_2166A6EA4();
    v51 = v65;
    sub_2166A6EA4();
    v52 = v66;
    sub_2166A6EA4();
    *v4 = 0xD000000000000017;
    v53 = v67;
    v4[1] = v67;
    v54 = MEMORY[0x277D84F90];
    v4[2] = 0;
    v4[3] = v54;
    v55 = v68;
    v4[4] = KeyPath;
    v4[5] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7410);
    sub_2166A6EA4();
    sub_2166A6EA4();
    sub_2166A6EA4();

    sub_2167770D0(0xD000000000000017, v53, 0, MEMORY[0x277D84F90]);

    sub_216697664(v52, &qword_27CAC73E0);
    sub_216697664(v51, &qword_27CAC73E8);
    sub_216697664(v50, &qword_27CAC73F0);
    sub_2167C4DF0(0xD000000000000017, v53, 0, MEMORY[0x277D84F90]);

    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC7418, &qword_27CAC7400);
    sub_2166D9530(&qword_27CAC7420, &qword_27CAC73D8);
    sub_217009554();

    sub_216697664(v4, &qword_27CAC73D8);
    sub_216697664(v58, &qword_27CAC73E0);
    sub_216697664(v59, &qword_27CAC73E8);
    return sub_216697664(v57, &qword_27CAC73F0);
  }
}

uint64_t sub_216C60514(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0);
  sub_21700AEB4();
  sub_21700AEB4();
  v1();
}

uint64_t sub_216C605DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0);
  sub_21700AEC4();
  sub_21700AEC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  return sub_21700AEC4();
}

uint64_t sub_216C606A0(uint64_t a1)
{
  sub_216C60770();
  v2 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0);
  sub_21700AEB4();
  sub_21700AEB4();
  v2();
}

uint64_t sub_216C60770()
{
  v1 = v0;
  v2 = sub_21700E574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v0;
  v35 = *(v0 + 2);
  v32 = *v0;
  v33 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0);
  sub_21700AEB4();
  v7 = v30;
  v6 = v31;

  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v32 = *(v1 + 24);
    v33 = *(v1 + 5);
    sub_21700AEB4();
    v11 = v30;
    v10 = v31;

    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v32 = *(v1 + 24);
      v33 = *(v1 + 5);
      sub_21700AEB4();
      sub_21700E564();
      v13 = sub_21700E524();
      v15 = v14;

      result = (*(v3 + 8))(v5, v2);
      if (v15 >> 60 != 15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_217018C90;
        *(inited + 32) = sub_21700E514();
        *(inited + 40) = v17;
        v18 = *MEMORY[0x277CDC248];
        type metadata accessor for CFString(0);
        *(inited + 72) = v19;
        *(inited + 48) = v18;
        *(inited + 80) = sub_21700E514();
        *(inited + 88) = v20;
        v32 = v34;
        v33 = v35;
        v21 = v18;
        sub_21700AEB4();
        v22 = v30;
        v23 = v31;
        v24 = MEMORY[0x277D837D0];
        *(inited + 120) = MEMORY[0x277D837D0];
        *(inited + 96) = v22;
        *(inited + 104) = v23;
        *(inited + 128) = sub_21700E514();
        *(inited + 136) = v25;
        v32 = v1[4];
        v26 = v32;
        *(inited + 168) = v24;
        *(inited + 144) = v26;
        *(inited + 176) = sub_21700E514();
        *(inited + 184) = v27;
        *(inited + 216) = MEMORY[0x277CC9318];
        *(inited + 192) = v13;
        *(inited + 200) = v15;
        sub_216C615C8(&v32, &v30);
        sub_21677A3F0(v13, v15);
        sub_21700E384();
        v28 = sub_21700E344();

        SecItemAdd(v28, 0);

        return sub_21677A510(v13, v15);
      }
    }
  }

  return result;
}

uint64_t sub_216C60AB4()
{
  v33[35] = *MEMORY[0x277D85DE8];
  v1 = sub_21700E574();
  MEMORY[0x28223BE20](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015240;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDC248];
  type metadata accessor for CFString(0);
  v6 = v5;
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  *(inited + 80) = sub_21700E514();
  *(inited + 88) = v7;
  v27 = v0[4];
  v8 = v27;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v8;
  *(inited + 128) = sub_21700E514();
  *(inited + 136) = v9;
  v10 = *MEMORY[0x277CDC438];
  *(inited + 168) = v6;
  *(inited + 144) = v10;
  *(inited + 176) = sub_21700E514();
  *(inited + 184) = v11;
  v12 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  *(inited + 224) = sub_21700E514();
  *(inited + 232) = v13;
  *(inited + 264) = v12;
  *(inited + 240) = 1;
  v14 = v4;
  sub_216C615C8(&v27, &v30);
  v15 = v10;
  sub_21700E384();
  v33[0] = 0;
  v16 = sub_21700E344();

  LODWORD(inited) = SecItemCopyMatching(v16, v33);

  if (!inited)
  {
    if (v33[0])
    {
      *&v30 = v33[0];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      if (swift_dynamicCast())
      {
        sub_21700E514();
        sub_216934F28();

        if (!v32)
        {

          sub_216697664(&v30, &unk_27CABF7A0);
          return swift_unknownObjectRelease();
        }

        if (swift_dynamicCast())
        {
          v18 = v28;
          v17 = v29;
          sub_21700E514();
          sub_216934F28();

          if (v32)
          {
            if (swift_dynamicCast())
            {
              v19 = v28;
              v20 = v29;
              sub_21700E564();
              v21 = sub_21700E534();
              v23 = v22;
              sub_21677A524(v19, v20);
              if (v23)
              {
                v24 = HIBYTE(v17) & 0xF;
                if ((v17 & 0x2000000000000000) == 0)
                {
                  v24 = v18 & 0xFFFFFFFFFFFFLL;
                }

                if (v24)
                {
                  v25 = HIBYTE(v23) & 0xF;
                  if ((v23 & 0x2000000000000000) == 0)
                  {
                    v25 = v21 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v25)
                  {
                    v30 = v0[3];
                    LOBYTE(v28) = 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
                    sub_21700AEC4();
                    v30 = *v0;
                    v31 = *(v0 + 2);
                    v28 = v18;
                    v29 = v17;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0);
                    sub_21700AEC4();
                    v30 = *(v0 + 24);
                    v31 = *(v0 + 5);
                    v28 = v21;
                    v29 = v23;
                    sub_21700AEC4();
                    return swift_unknownObjectRelease();
                  }
                }
              }
            }
          }

          else
          {
            sub_216697664(&v30, &unk_27CABF7A0);
          }
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

id sub_216C60F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21700E4D4();

  v8 = sub_21700E4D4();

  v9 = [v5 initWithUser:v7 password:v8 persistence:a5];

  return v9;
}

uint64_t objectdestroy_20Tm_2()
{

  return swift_deallocObject();
}

uint64_t sub_216C6110C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_216C6114C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216C611DC()
{
  sub_216C61284(319, &qword_27CAC7370, MEMORY[0x277CDF860]);
  if (v0 <= 0x3F)
  {
    sub_2167FCA6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216C61284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LibraryImportWebViewModel();
    OUTLINED_FUNCTION_2_145();
    v9 = sub_216C5D26C(v7, v8);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_216C61330()
{
  result = qword_27CAC7378;
  if (!qword_27CAC7378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7380);
    sub_216C5D0E4();
    sub_2166D9530(&qword_27CAC72C8, &qword_27CAC72A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7378);
  }

  return result;
}

unint64_t sub_216C61440()
{
  result = qword_27CAC7388;
  if (!qword_27CAC7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7388);
  }

  return result;
}

uint64_t sub_216C614BC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C61514(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

uint64_t __swift_get_extra_inhabitant_index_41Tm(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v6 = OUTLINED_FUNCTION_3_17();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_42Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v6 = OUTLINED_FUNCTION_3_17();

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void sub_216C6180C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_216C61284(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_21694CB7C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216C61898()
{
  result = qword_27CAC7440;
  if (!qword_27CAC7440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7448);
    sub_216C61950();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7440);
  }

  return result;
}

unint64_t sub_216C61950()
{
  result = qword_27CAC7450;
  if (!qword_27CAC7450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7458);
    sub_2167D95A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7450);
  }

  return result;
}

unint64_t sub_216C619DC()
{
  result = qword_27CAC7470;
  if (!qword_27CAC7470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC73C8);
    sub_216C61A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7470);
  }

  return result;
}

unint64_t sub_216C61A68()
{
  result = qword_27CAC7478;
  if (!qword_27CAC7478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC73C0);
    sub_2166D9530(&qword_27CAC7480, &qword_27CAC7488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7478);
  }

  return result;
}

unint64_t sub_216C61B74()
{
  result = qword_27CAC74E0;
  if (!qword_27CAC74E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74C8);
    sub_2166D9530(&qword_27CAC74E8, &qword_27CAC74C8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74B0);
    sub_2166D9530(&qword_27CAC74F0, &qword_27CAC74B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC74E0);
  }

  return result;
}

unint64_t sub_216C61CD4()
{
  result = qword_27CAC74F8;
  if (!qword_27CAC74F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74A0);
    sub_2166D9530(&qword_27CAC74D8, &qword_27CAC74A0);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79C8);
    sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC74F8);
  }

  return result;
}

unint64_t sub_216C61E30()
{
  result = qword_27CAC7500;
  if (!qword_27CAC7500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74D0);
    sub_216C61B74();
    sub_216C61CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7500);
  }

  return result;
}

uint64_t sub_216C61F24()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

unint64_t sub_216C61FA8()
{
  result = qword_27CAC7530;
  if (!qword_27CAC7530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7528);
    sub_2166D9530(&qword_27CAC7538, &qword_27CAC7540);
    sub_2166D9530(&qword_280E2A6E0, &qword_27CABF2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7530);
  }

  return result;
}

void sub_216C62094(__int16 a1)
{
  switch(a1)
  {
    case 5:
    case 9:
    case 13:
    case 15:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 29:
    case 30:
    case 36:
    case 38:
    case 40:
    case 44:
    case 48:
    case 50:
    case 51:
    case 52:
    case 54:
    case 59:
    case 61:
    case 65:
    case 71:
    case 73:
    case 75:
    case 76:
    case 78:
    case 79:
    case 80:
    case 87:
    case 93:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 114:
    case 115:
    case 118:
    case 125:
    case 127:
    case 129:
    case 130:
    case 137:
    case 141:
    case 149:
    case 150:
    case 155:
    case 172:
    case 174:
    case 176:
    case 180:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 204:
    case 207:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 216:
    case 223:
    case 224:
    case 225:
    case 226:
    case 228:
    case 231:
    case 232:
    case 233:
    case 236:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 256:
    case 257:
    case 259:
    case 260:
    case 263:
    case 265:
    case 268:
    case 270:
    case 271:
    case 272:
    case 274:
    case 276:
    case 278:
    case 279:
    case 283:
    case 284:
    case 285:
    case 287:
    case 288:
    case 294:
    case 308:
    case 314:
    case 315:
    case 317:
    case 321:
    case 325:
    case 326:
    case 327:
    case 328:
    case 330:
    case 331:
    case 332:
    case 333:
    case 334:
    case 335:
    case 337:
    case 343:
    case 349:
    case 365:
    case 372:
    case 373:
    case 374:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
      OUTLINED_FUNCTION_6_97();
      break;
    case 7:
    case 18:
    case 34:
    case 35:
    case 82:
    case 98:
    case 160:
    case 215:
    case 246:
      OUTLINED_FUNCTION_17_5();
      break;
    case 20:
    case 32:
    case 77:
    case 81:
    case 84:
    case 171:
    case 173:
    case 264:
      OUTLINED_FUNCTION_4_118(22);
      break;
    case 37:
    case 57:
    case 237:
    case 316:
      OUTLINED_FUNCTION_2_146(22);
      break;
    case 39:
    case 190:
    case 193:
    case 291:
      OUTLINED_FUNCTION_10_81();
      break;
    case 60:
    case 64:
    case 113:
    case 202:
    case 203:
    case 324:
      OUTLINED_FUNCTION_1_180(22);
      break;
    case 83:
    case 117:
    case 151:
    case 152:
    case 175:
    case 208:
    case 261:
      OUTLINED_FUNCTION_3_137(22);
      break;
    case 96:
      OUTLINED_FUNCTION_8_92(0x74696465u);
      break;
    case 136:
      OUTLINED_FUNCTION_11_77(0x56736168u);
      break;
    case 188:
      OUTLINED_FUNCTION_11_77(0x566E6970u);
      break;
    case 189:
      OUTLINED_FUNCTION_5_110();
      break;
    case 363:
    case 364:
      OUTLINED_FUNCTION_0_211();
      break;
    case 368:
      OUTLINED_FUNCTION_8_92(0x72657375u);
      break;
    default:
      return;
  }
}

unint64_t sub_216C640C8(char a1)
{
  result = 0x736F706D6F437962;
  switch(a1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_7_92();
      result = v10 + 7;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      OUTLINED_FUNCTION_7_92();
      result = v11 | 8;
      break;
    case 5:
      OUTLINED_FUNCTION_7_92();
      result = v13 + 17;
      break;
    case 6:
      OUTLINED_FUNCTION_7_92();
      result = v9 + 12;
      break;
    case 7:
    case 8:
    case 15:
    case 31:
      OUTLINED_FUNCTION_7_92();
      result = v14 | 1;
      break;
    case 9:
      return result;
    case 10:
      result = OUTLINED_FUNCTION_2_146(20);
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
    case 19:
      result = OUTLINED_FUNCTION_4_118(20);
      break;
    case 13:
      result = 0x7372756F68;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0x6F546E657473696CLL;
      break;
    case 17:
      result = OUTLINED_FUNCTION_1_180(20);
      break;
    case 18:
      v6 = 0x6574756E696DLL;
      goto LABEL_23;
    case 20:
      result = OUTLINED_FUNCTION_3_137(20);
      break;
    case 21:
    case 24:
      OUTLINED_FUNCTION_7_92();
      result = v12 - 1;
      break;
    case 22:
      result = OUTLINED_FUNCTION_5_110();
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 25:
      OUTLINED_FUNCTION_7_92();
      result = v8 + 6;
      break;
    case 26:
      OUTLINED_FUNCTION_7_92();
      result = v15 + 16;
      break;
    case 27:
      v6 = 0x646E6F636573;
LABEL_23:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 28:
      result = 0x694C6E49776F6873;
      break;
    case 29:
      result = 0x656C6666756873;
      break;
    case 30:
      result = 0xD000000000000014;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = OUTLINED_FUNCTION_0_211();
      break;
    case 34:
      OUTLINED_FUNCTION_7_92();
      result = v7 | 2;
      break;
    case 35:
      OUTLINED_FUNCTION_7_92();
      result = v4 - 3;
      break;
    case 36:
      OUTLINED_FUNCTION_7_92();
      result = v5 - 4;
      break;
    case 37:
      result = 0xD000000000000014;
      break;
    default:
      OUTLINED_FUNCTION_7_92();
      result = v3 + 23;
      break;
  }

  return result;
}

unint64_t sub_216C644BC()
{
  result = qword_280E3BA38[0];
  if (!qword_280E3BA38[0])
  {
    type metadata accessor for RemoveFollowerAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3BA38);
  }

  return result;
}

void *sub_216C645F8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  v6 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v6;
  }

  while (1)
  {
    result = a1(&v20, v5);
    if (v3)
    {

      return v6;
    }

    v8 = v20;
    v9 = *(v20 + 16);
    v10 = *(v6 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 > *(v6 + 24) >> 1)
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      sub_216937A7C(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v6 = v14;
    }

    if (*(v8 + 16))
    {
      v15 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = type metadata accessor for MenuAction();
      if (v15 < v9)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v16 = *(v6 + 16);
        v17 = __OFADD__(v16, v9);
        v18 = v16 + v9;
        if (v17)
        {
          goto LABEL_23;
        }

        *(v6 + 16) = v18;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_21;
      }
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_216C647A0(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  v4 = v2 + 16;
  v18 = 15;
  v17 = v3;
  sub_216C6499C(a1, &v18, &v17, (v2 + 16));
  v5 = v17;
  if (*(v17 + 16))
  {
    sub_21700DF14();
    sub_216DF3AE4();
    v6 = *(*v4 + 16);
    sub_216DF3C48(v6);
    v7 = v6 + 1;
    v8 = *v4;
    *(v8 + 16) = v6 + 1;
    *(v8 + 8 * v6 + 32) = v5;
  }

  else
  {
    v8 = *v4;
    v7 = *(*v4 + 16);
  }

  v9 = 0;
  v10 = 0;
  v11 = v8 + 32;
  while (v7 != v9)
  {
    v12 = *(v11 + 8 * v9++);
    v13 = *(v12 + 16);
    v14 = __OFADD__(v10, v13);
    v10 += v13;
    if (v14)
    {
      __break(1u);
      break;
    }
  }

  swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82D8);
  sub_2168B98BC();
  sub_2166D9530(&qword_27CAB82D0, &qword_27CAB82D8);
  sub_21700B154();
}

uint64_t sub_216C6499C(uint64_t a1, char *a2, uint64_t *a3, void *a4)
{
  v34 = a4;
  v39 = type metadata accessor for MenuActionType();
  v7 = MEMORY[0x28223BE20](v39);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v32 - v10;
  v11 = 0;
  v12 = *(a1 + 16);
  v36 = a1;
  v37 = v12;
  v33 = a2;
  while (v37 != v11)
  {
    type metadata accessor for MenuAction();
    sub_216C67858();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = 10;
    switch(EnumCaseMultiPayload)
    {
      case 1:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        goto LABEL_14;
      case 2:
      case 3:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_8;
      case 4:
      case 5:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_4;
      case 6:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_16;
      case 7:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_12;
      case 8:
      case 42:
      case 43:
      case 44:
        v14 = 3;
        break;
      case 14:
      case 15:
        v14 = 2;
        break;
      case 16:
LABEL_8:
        v14 = 5;
        break;
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
LABEL_4:
        v14 = 14;
        break;
      case 28:
      case 29:
      case 30:
      case 31:
LABEL_16:
        v14 = 7;
        break;
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
LABEL_12:
        v14 = 4;
        break;
      case 37:
      case 38:
      case 39:
      case 40:
        v14 = 9;
        break;
      case 41:
        break;
      default:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
LABEL_14:
        v14 = 0;
        break;
    }

    v15 = *a2;
    if (v15 == 15 || (v15 > 0xE ? (v16 = 0) : (v16 = qword_2170588F0[*a2]), qword_2170588F0[v14] != v16))
    {
      v17 = *a3;
      if (*(*a3 + 16))
      {
        v18 = v34;
        v19 = *v34;
        sub_21700DF14();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v18 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21693825C();
          v19 = v30;
          *v34 = v30;
        }

        v21 = *(v19 + 16);
        if (v21 >= *(v19 + 24) >> 1)
        {
          sub_21693825C();
          v19 = v31;
          *v34 = v31;
        }

        *(v19 + 16) = v21 + 1;
        *(v19 + 8 * v21 + 32) = v17;
        a2 = v33;
      }

      *a3 = MEMORY[0x277D84F90];

      sub_216C67858();
      v22 = swift_getEnumCaseMultiPayload();
      v23 = 10;
      switch(v22)
      {
        case 1:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
          goto LABEL_39;
        case 2:
        case 3:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_33;
        case 4:
        case 5:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_29;
        case 6:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_41;
        case 7:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_37;
        case 8:
        case 42:
        case 43:
        case 44:
          v23 = 3;
          break;
        case 14:
        case 15:
          v23 = 2;
          break;
        case 16:
LABEL_33:
          v23 = 5;
          break;
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
LABEL_29:
          v23 = 14;
          break;
        case 28:
        case 29:
        case 30:
        case 31:
LABEL_41:
          v23 = 7;
          break;
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
LABEL_37:
          v23 = 4;
          break;
        case 37:
        case 38:
        case 39:
        case 40:
          v23 = 9;
          break;
        case 41:
          break;
        default:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
LABEL_39:
          v23 = 0;
          break;
      }

      *a2 = v23;
    }

    v24 = *a3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v24;
    if ((v25 & 1) == 0)
    {
      sub_216937A7C(0, *(v24 + 16) + 1, 1, v24);
      v24 = v28;
      *a3 = v28;
    }

    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_216937A7C(v26 > 1, v27 + 1, 1, v24);
      v24 = v29;
      *a3 = v29;
    }

    *(v24 + 16) = v27 + 1;
    result = sub_216C67858();
    ++v11;
  }

  return result;
}

uint64_t sub_216C64FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v10[2] = *a1;
  v11 = *(a1 + 8);
  v12 = a2;
  v13 = a3;
  v6 = sub_216C645F8(sub_216C6BB5C, v10, v5);
  v7 = type metadata accessor for MenuConfiguration(0);
  v8 = sub_216C6514C(*(a3 + *(v7 + 28)), v6);

  v14 = v8;
  sub_21700DF14();
  sub_216C679D4(&v14);

  return v14;
}

uint64_t sub_216C650C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 8))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C6514C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    sub_21700DF14();
    v3 = sub_21700DF14();
    sub_216BDD230(v3);
    return a2;
  }

  else
  {
    sub_21700DF14();
  }

  return v2;
}

uint64_t sub_216C651B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 16))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65240@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 24))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C652CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 40))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65358@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 48))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C653E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 32))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65488@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 56))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65514@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 64))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C655A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  result = (*(v14 + 72))(v16, a5, a6, v13, v14);
  *a7 = result;
  return result;
}

uint64_t sub_216C6564C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 80))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C656F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 88))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C6577C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 96))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65808@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 104))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 112))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 120))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C659AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 128))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65A50(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t))
{
  v6 = *(v4 + 16);
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v7 = sub_216C645F8(a4, v11, v6);
  v8 = type metadata accessor for MenuConfiguration(0);
  v9 = sub_216C6514C(*(a3 + *(v8 + 28)), v7);

  v12 = v9;
  sub_21700DF14();
  sub_216C679D4(&v12);

  return v12;
}

uint64_t sub_216C65AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 136))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65B88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 144))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65C14()
{
  if (qword_280E2B918 != -1)
  {
    swift_once();
  }

  if (byte_280E73A83)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for ClassicalArtistMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  v42 = v1;
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_4_119();
  v43 = sub_216B2B840(v2);
  v44 = type metadata accessor for CollaborationMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_4_119();
  v57 = sub_216A0C8A8(v3);
  v4 = type metadata accessor for FavoriteMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_4_119();
  v63[3] = v4;
  v63[4] = &off_28291B5B8;
  v63[0] = sub_2168F9BC4(v5);
  v41 = type metadata accessor for DislikeMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_4_119();
  v56 = sub_216BB0AC0(v6);
  v38 = type metadata accessor for PlaylistMenuActionProvider();

  v55 = sub_216881458();
  StationMenuActionProvider = type metadata accessor for CreateStationMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_4_119();
  v39 = sub_21693FBCC(v7);
  v37 = type metadata accessor for ViewLyricsMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_4_119();
  v54 = sub_216DF508C(v8);
  v36 = type metadata accessor for LibraryMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_4_119();
  v53 = sub_2169D9DFC(v9);
  v35 = type metadata accessor for LibraryPinMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_4_119();
  v52 = sub_216A1DCE4(v10);
  v11 = type metadata accessor for PlaybackMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_4_119();
  v51 = sub_216788520(v12);
  v34 = type metadata accessor for GoToArtistMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_4_119();
  v50 = sub_216B7C624(v13);
  v14 = type metadata accessor for GoToAlbumMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_4_119();
  v49 = sub_2168CC39C(v15);
  v16 = type metadata accessor for GoToSongMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_4_119();
  v48 = sub_216E9A674(v17);
  v18 = type metadata accessor for GoToTVEpisodeMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_4_119();
  v47 = sub_216920968(v19);
  v20 = type metadata accessor for ShareMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_4_119();
  v22 = sub_2167EF738(v21);
  v23 = type metadata accessor for SocialProfileMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_4_119();
  v46 = sub_2167D985C(v24);
  v25 = type metadata accessor for ReportAConcernMenuActionProvider();
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_4_119();
  v45 = sub_216B32C60(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2170587F0;
  *(inited + 56) = v35;
  *(inited + 64) = &off_282923040;
  *(inited + 32) = v52;
  *(inited + 96) = v36;
  *(inited + 104) = &off_2829214B0;
  *(inited + 72) = v53;
  *(inited + 136) = v11;
  *(inited + 144) = &off_2829136F0;
  *(inited + 112) = v51;
  *(inited + 176) = v44;
  *(inited + 184) = &off_282922670;
  *(inited + 152) = v57;
  *(inited + 216) = v38;
  *(inited + 224) = &off_282918720;
  *(inited + 192) = v55;
  sub_2167B7D58(v63, inited + 232);
  *(inited + 296) = v37;
  *(inited + 304) = &off_282937B48;
  *(inited + 272) = v54;
  *(inited + 336) = v41;
  *(inited + 344) = &off_28292DF08;
  *(inited + 312) = v56;
  *(inited + 376) = v20;
  *(inited + 384) = &off_282915668;
  *(inited + 352) = v22;
  *(inited + 416) = v34;
  *(inited + 424) = &off_28292C200;
  *(inited + 392) = v50;
  *(inited + 456) = v14;
  *(inited + 464) = &off_28291A608;
  *(inited + 432) = v49;
  *(inited + 496) = v16;
  *(inited + 504) = &off_28293A918;
  *(inited + 472) = v48;
  *(inited + 536) = v18;
  *(inited + 544) = &off_28291C508;
  *(inited + 512) = v47;
  *(inited + 576) = StationMenuActionProvider;
  *(inited + 584) = &off_28291D580;
  *(inited + 552) = v39;
  if (v46)
  {
    v28 = &off_282914EF0;
  }

  else
  {
    v23 = 0;
    v28 = 0;
    *(inited + 600) = 0u;
  }

  *(inited + 592) = v46;
  *(inited + 616) = v23;
  *(inited + 624) = v28;
  *(inited + 656) = v25;
  *(inited + 664) = &off_28292A190;
  *(inited + 632) = v45;
  *(inited + 696) = v42;
  *(inited + 704) = &off_282929F28;
  *(inited + 672) = v43;

  v0 = MEMORY[0x277D84F90];
  for (i = 32; i != 712; i += 40)
  {
    sub_2166A6EA4();
    v58[0] = *&v60[5];
    v58[1] = v61;
    v59 = v62;
    if (*(&v61 + 1))
    {
      sub_2166A0F18(v58, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2169387DC();
        v0 = v31;
      }

      v30 = *(v0 + 16);
      if (v30 >= *(v0 + 24) >> 1)
      {
        sub_2169387DC();
        v0 = v32;
      }

      *(v0 + 16) = v30 + 1;
      sub_2166A0F18(v60, v0 + 40 * v30 + 32);
    }

    else
    {
      sub_216697664(v58, &qword_27CABF9E8);
    }
  }

  swift_setDeallocating();
  sub_2169FACA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return v0;
}

uint64_t sub_216C662A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21700B134();
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7550);
  MEMORY[0x28223BE20](v83);
  v17 = &v64 - v16;
  v84 = sub_2170096F4();
  v68 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v67 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7558);
  v66 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v70 = &v64 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7560);
  v69 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v64 - v20;
  v21 = type metadata accessor for MenuActionType();
  MEMORY[0x28223BE20](v21 - 8);
  v72 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7568);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v64 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7570);
  v32 = *(v31 - 8);
  v86 = v31;
  v87 = v32;
  MEMORY[0x28223BE20](v31);
  v89 = &v64 - v33;
  v34 = *a1;
  result = swift_beginAccess();
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v36 = *(a2 + 16);
  if (v34 >= *(v36 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v75 = v29;
  v80 = v17;
  v76 = a3;
  v77 = v15;
  v78 = v8;
  v79 = v13;
  v81 = a4;
  v37 = *(v36 + 8 * v34 + 32);
  v38 = *(v37 + 16);
  v90 = 0;
  v91 = v38;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v37;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7578);
  sub_2168B98BC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7580);
  v40 = sub_2166D9530(&qword_27CAC7588, &qword_27CAC7580);
  v94 = v39;
  v95 = v40;
  swift_getOpaqueTypeConformance2();
  sub_21700B154();
  sub_216CE0E7C(v37, v25);
  v41 = type metadata accessor for MenuAction();
  if (__swift_getEnumTagSinglePayload(v25, 1, v41) == 1)
  {

    sub_216697664(v25, &qword_27CAB6DF0);
    v43 = v78;
    v42 = v79;
    v44 = v77;
    v45 = v76;
    v46 = v80;
    v47 = v75;
    v48 = v86;
LABEL_9:
    (*(v87 + 16))(v46, v89, v48);
    swift_storeEnumTagMultiPayload();
    v59 = sub_2166D9530(&qword_27CAC7590, &qword_27CAC7558);
    v60 = sub_216C67918(&qword_27CAC7598, MEMORY[0x277CDE0F0]);
    v90 = v82;
    v91 = v84;
    v92 = v59;
    v93 = v60;
    swift_getOpaqueTypeConformance2();
    sub_216C67704();
    sub_217009554();
    goto LABEL_10;
  }

  v49 = v72;
  sub_216C67858();
  sub_216C677F8(v25, type metadata accessor for MenuAction);
  v50 = sub_216BADF14();
  sub_216C677F8(v49, type metadata accessor for MenuActionType);
  v46 = v80;
  v48 = v86;
  if (v50)
  {

    v43 = v78;
    v42 = v79;
    v44 = v77;
    v45 = v76;
    v47 = v75;
    goto LABEL_9;
  }

  v51 = *(v37 + 16);

  v43 = v78;
  v42 = v79;
  v44 = v77;
  v45 = v76;
  v47 = v75;
  if (v51 < 2)
  {
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v52);
  v72 = sub_216C67704();
  sub_217008284();
  v53 = v67;
  sub_2170096E4();
  v64 = sub_2166D9530(&qword_27CAC7590, &qword_27CAC7558);
  v65 = sub_216C67918(&qword_27CAC7598, MEMORY[0x277CDE0F0]);
  v54 = v82;
  v55 = v84;
  v56 = v70;
  sub_21700A644();
  (*(v68 + 8))(v53, v55);
  (*(v66 + 8))(v56, v54);
  v57 = v69;
  (*(v69 + 16))(v46, v71, v85);
  swift_storeEnumTagMultiPayload();
  v90 = v54;
  v91 = v55;
  v92 = v64;
  v93 = v65;
  v48 = v86;
  swift_getOpaqueTypeConformance2();
  v58 = v85;
  sub_217009554();
  (*(v57 + 8))(v71, v58);
LABEL_10:
  if (v45 < 4)
  {
    v62 = 1;
  }

  else
  {
    v61 = v73;
    sub_21700B124();
    (*(v74 + 32))(v44, v61, v43);
    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v44, v62, 1, v43);
  v63 = v88;
  sub_216753798();
  sub_2166A6EA4();
  sub_216753798();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75A8);
  sub_2166A6EA4();
  sub_216697664(v44, &qword_27CABB6B0);
  sub_2167537F8(v63);
  sub_216697664(v42, &qword_27CABB6B0);
  sub_2167537F8(v47);
  return (*(v87 + 8))(v89, v48);
}

uint64_t sub_216C66E50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700D8E4();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7580);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = type metadata accessor for MenuAction();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  result = MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*a1 < *(a2 + 16))
  {
    v23[1] = a3;
    v24 = v6;
    sub_216C67858();
    sub_216BAE324(v11);
    sub_216C67858();
    swift_allocObject();
    v20 = sub_216C67960();
    MEMORY[0x28223BE20](v20);
    v23[-2] = v19;
    v23[-1] = a2;
    type metadata accessor for ContextMenuItem();
    sub_216C67918(&qword_27CAC75B0, type metadata accessor for ContextMenuItem);
    sub_21700AF04();
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_21700F3B4();

    *&v28[0] = 0xD000000000000012;
    *(&v28[0] + 1) = 0x800000021708D470;
    v21 = sub_216BAE460();
    MEMORY[0x21CE9F490](v21);

    memset(v28, 0, sizeof(v28));
    sub_21700D894();

    sub_216697664(v28, &unk_27CABF7A0);
    sub_2166D9530(&qword_27CAC7588, &qword_27CAC7580);
    v22 = v26;
    sub_21700A204();
    (*(v27 + 8))(v8, v24);
    (*(v25 + 8))(v14, v22);
    return sub_216C677F8(v19, type metadata accessor for MenuAction);
  }

  __break(1u);
  return result;
}

uint64_t sub_216C67334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for MenuActionType();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  sub_216C67858();
  sub_216CE0E7C(a1, v9);
  v14 = type metadata accessor for MenuAction();
  if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
  {
    sub_216697664(v9, &qword_27CAB6DF0);
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  sub_216C67858();
  sub_216C677F8(v9, type metadata accessor for MenuAction);
  v15 = sub_216BADF14();
  sub_216C677F8(v13, type metadata accessor for MenuActionType);
  if (v15)
  {
    goto LABEL_4;
  }

  v16 = *(a1 + 16) > 2uLL;
LABEL_5:
  sub_216CE0E7C(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    sub_216697664(v7, &qword_27CAB6DF0);
  }

  else
  {
    sub_216C67858();
    sub_216C677F8(v7, type metadata accessor for MenuAction);
    v17 = sub_216BADF14();
    sub_216C677F8(v13, type metadata accessor for MenuActionType);
    if (!v17)
    {
      v18 = *(a1 + 16) > 1uLL;
      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_9:
  sub_216C67960();
  v19 = type metadata accessor for ContextMenuItem();
  *(a2 + v19[5]) = v16;
  *(a2 + v19[6]) = v18;
  v20 = v19[7];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216C67658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7570);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_216C67704()
{
  result = qword_27CAC75A0;
  if (!qword_27CAC75A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7580);
    sub_2166D9530(&qword_27CAC7588, &qword_27CAC7580);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC75A0);
  }

  return result;
}

uint64_t sub_216C677F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C67858()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C678B0()
{
  v1 = *(type metadata accessor for MenuAction() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216C672F8(v2);
}

uint64_t sub_216C67918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C67960()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C679D4(uint64_t *a1)
{
  v2 = *(type metadata accessor for MenuAction() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_216C6B974();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_216C67A7C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_216C67A7C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_21700F774();
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
        type metadata accessor for MenuAction();
        v6 = sub_21700E8A4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MenuAction() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_216C687AC(v8, v9, a1, v4);
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
    return sub_216C67BAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_216C67BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v72 = type metadata accessor for MenuActionType();
  v8 = MEMORY[0x28223BE20](v72);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v66 = &v52 - v14;
  v62 = type metadata accessor for MenuAction();
  v15 = MEMORY[0x28223BE20](v62);
  v61 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  result = MEMORY[0x28223BE20](v17);
  v54 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v23 = *a4;
  v24 = *(v21 + 72);
  v25 = *a4 + v24 * (a3 - 1);
  v59 = -v24;
  v60 = v23;
  v26 = a1 - a3;
  v53 = v24;
  v27 = v23 + v24 * a3;
  v63 = &v52 - v22;
LABEL_3:
  v57 = v25;
  v58 = a3;
  v55 = v27;
  v56 = v26;
  v28 = v26;
  v29 = v25;
  while (2)
  {
    v71 = v28;
    sub_216C67858();
    sub_216C67858();
    sub_216C67858();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = 1;
    v32 = 101;
    v69 = v29;
    v70 = v27;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v32 = 106;
        break;
      case 2:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 301;
        break;
      case 3:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 302;
        break;
      case 4:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 401;
        break;
      case 5:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 407;
        break;
      case 6:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 504;
        break;
      case 7:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 601;
        break;
      case 8:
        v31 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v32 = 904;
        break;
      case 9:
        break;
      case 10:
        v32 = 102;
        break;
      case 11:
        v32 = 103;
        break;
      case 12:
        v32 = 104;
        break;
      case 13:
        v32 = 107;
        break;
      case 14:
        v32 = 201;
        break;
      case 15:
        v32 = 202;
        break;
      case 16:
        v32 = 303;
        break;
      case 17:
        v32 = 402;
        break;
      case 18:
        v32 = 403;
        break;
      case 19:
        v32 = 404;
        break;
      case 20:
        v32 = 405;
        break;
      case 21:
        v32 = 406;
        break;
      case 22:
        v32 = 408;
        break;
      case 23:
        v32 = 409;
        break;
      case 24:
        v32 = 410;
        break;
      case 25:
        v32 = 411;
        break;
      case 26:
        v32 = 412;
        break;
      case 27:
        v32 = 413;
        break;
      case 28:
        v32 = 501;
        break;
      case 29:
        v32 = 502;
        break;
      case 30:
        v32 = 503;
        break;
      case 31:
        v32 = 505;
        break;
      case 32:
        v32 = 602;
        break;
      case 33:
        v32 = 603;
        break;
      case 34:
        v32 = 605;
        break;
      case 35:
        v32 = 604;
        break;
      case 36:
        v32 = 606;
        break;
      case 37:
        v32 = 701;
        break;
      case 38:
        v32 = 702;
        break;
      case 39:
        v37 = 0;
        v32 = 703;
        break;
      case 40:
        v36 = 0;
        v37 = 0;
        v32 = 704;
        break;
      case 41:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v32 = 801;
        break;
      case 42:
        v31 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v32 = 903;
        break;
      case 43:
        v31 = 0;
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v32 = 902;
        break;
      case 44:
        v31 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v32 = 901;
        break;
      default:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v32 = 105;
        break;
    }

    v68 = v32;
    sub_216C67858();
    v39 = swift_getEnumCaseMultiPayload();
    v40 = 101;
    switch(v39)
    {
      case 1:
        v40 = 106;
        goto LABEL_101;
      case 2:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 301;
        goto LABEL_101;
      case 3:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 302;
        goto LABEL_101;
      case 4:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 401;
        goto LABEL_101;
      case 5:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 407;
        goto LABEL_101;
      case 6:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 504;
        goto LABEL_101;
      case 7:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 601;
        goto LABEL_101;
      case 8:
        v41 = v63;
        if ((v38 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 9:
        goto LABEL_101;
      case 10:
        v40 = 102;
        goto LABEL_101;
      case 11:
        v40 = 103;
        goto LABEL_101;
      case 12:
        v40 = 104;
        goto LABEL_101;
      case 13:
        v40 = 107;
        goto LABEL_101;
      case 14:
        v40 = 201;
        goto LABEL_101;
      case 15:
        v40 = 202;
        goto LABEL_101;
      case 16:
        v40 = 303;
        goto LABEL_101;
      case 17:
        v40 = 402;
        goto LABEL_101;
      case 18:
        v40 = 403;
        goto LABEL_101;
      case 19:
        v40 = 404;
        goto LABEL_101;
      case 20:
        v40 = 405;
        goto LABEL_101;
      case 21:
        v40 = 406;
        goto LABEL_101;
      case 22:
        v40 = 408;
        goto LABEL_101;
      case 23:
        v40 = 409;
        goto LABEL_101;
      case 24:
        v40 = 410;
        goto LABEL_101;
      case 25:
        v40 = 411;
        goto LABEL_101;
      case 26:
        v40 = 412;
        goto LABEL_101;
      case 27:
        v40 = 413;
        goto LABEL_101;
      case 28:
        v40 = 501;
        goto LABEL_101;
      case 29:
        v40 = 502;
        goto LABEL_101;
      case 30:
        v40 = 503;
        goto LABEL_101;
      case 31:
        v40 = 505;
        goto LABEL_101;
      case 32:
        v40 = 602;
        goto LABEL_101;
      case 33:
        v40 = 603;
        goto LABEL_101;
      case 34:
        v40 = 605;
        goto LABEL_101;
      case 35:
        v40 = 604;
        goto LABEL_101;
      case 36:
        v40 = 606;
        goto LABEL_101;
      case 37:
        v40 = 701;
        goto LABEL_101;
      case 38:
        v40 = 702;
        goto LABEL_101;
      case 39:
        v41 = v63;
        if ((v37 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 40:
        v41 = v63;
        if ((v36 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 41:
        v41 = v63;
        if ((v35 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 42:
        v41 = v63;
        if ((v34 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 43:
        v41 = v63;
        if ((v33 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 44:
        v41 = v63;
        if ((v31 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      default:
        sub_216C677F8(v67, type metadata accessor for MenuActionType);
        v40 = 105;
LABEL_101:
        v41 = v63;
        if (v68 < v40)
        {
LABEL_102:
          sub_216C67858();
          v42 = 10;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
            case 9u:
            case 0xAu:
            case 0xBu:
            case 0xCu:
            case 0xDu:
              goto LABEL_113;
            case 2u:
            case 3u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_107;
            case 4u:
            case 5u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_103;
            case 6u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_115;
            case 7u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_111;
            case 8u:
            case 0x2Au:
            case 0x2Bu:
            case 0x2Cu:
              v42 = 3;
              break;
            case 0xEu:
            case 0xFu:
              v42 = 2;
              break;
            case 0x10u:
LABEL_107:
              v42 = 5;
              break;
            case 0x11u:
            case 0x12u:
            case 0x13u:
            case 0x14u:
            case 0x15u:
            case 0x16u:
            case 0x17u:
            case 0x18u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
LABEL_103:
              v42 = 14;
              break;
            case 0x1Cu:
            case 0x1Du:
            case 0x1Eu:
            case 0x1Fu:
LABEL_115:
              v42 = 7;
              break;
            case 0x20u:
            case 0x21u:
            case 0x22u:
            case 0x23u:
            case 0x24u:
LABEL_111:
              v42 = 4;
              break;
            case 0x25u:
            case 0x26u:
            case 0x27u:
            case 0x28u:
              v42 = 9;
              break;
            case 0x29u:
              break;
            default:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
LABEL_113:
              v42 = 0;
              break;
          }

          sub_216C67858();
          v43 = 8;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
            case 9u:
            case 0xAu:
            case 0xBu:
            case 0xCu:
            case 0xDu:
              goto LABEL_130;
            case 2u:
            case 3u:
              sub_216C677F8(v65, type metadata accessor for MenuActionType);
              goto LABEL_127;
            case 4u:
            case 5u:
              sub_216C677F8(v65, type metadata accessor for MenuActionType);
              goto LABEL_117;
            case 6u:
              sub_216C677F8(v65, type metadata accessor for MenuActionType);
              goto LABEL_134;
            case 7u:
              sub_216C677F8(v65, type metadata accessor for MenuActionType);
              goto LABEL_137;
            case 8u:
            case 0x2Au:
            case 0x2Bu:
            case 0x2Cu:
              goto LABEL_140;
            case 0xEu:
            case 0xFu:
              v44 = 1 << v42;
              v45 = 18104;
              goto LABEL_139;
            case 0x10u:
LABEL_127:
              v44 = 1 << v42;
              v45 = 18072;
              goto LABEL_139;
            case 0x11u:
            case 0x12u:
            case 0x13u:
            case 0x14u:
            case 0x15u:
            case 0x16u:
            case 0x17u:
            case 0x18u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
LABEL_117:
              if (v42 > 0xA)
              {
                goto LABEL_140;
              }

              v44 = 1 << v42;
              v45 = 1688;
              goto LABEL_139;
            case 0x1Cu:
            case 0x1Du:
            case 0x1Eu:
            case 0x1Fu:
LABEL_134:
              if (v42 > 0xA)
              {
                goto LABEL_140;
              }

              v44 = 1 << v42;
              v45 = 1560;
              goto LABEL_139;
            case 0x20u:
            case 0x21u:
            case 0x22u:
            case 0x23u:
            case 0x24u:
LABEL_137:
              if (v42 > 0xA)
              {
                goto LABEL_140;
              }

              v44 = 1 << v42;
              v45 = 1544;
LABEL_139:
              if ((v44 & v45) != 0)
              {
                goto LABEL_145;
              }

LABEL_140:
              sub_216C677F8(v19, type metadata accessor for MenuAction);
              result = sub_216C677F8(v41, type metadata accessor for MenuAction);
              v49 = v70;
              v50 = v71;
              v51 = v69;
LABEL_141:
              if (!v60)
              {
                __break(1u);
                return result;
              }

              sub_216C67960();
              swift_arrayInitWithTakeFrontToBack();
              result = sub_216C67960();
              v29 = v51 + v59;
              v27 = v49 + v59;
              v48 = __CFADD__(v50, 1);
              v28 = v50 + 1;
              if (v48)
              {
                goto LABEL_146;
              }

              break;
            case 0x25u:
            case 0x26u:
            case 0x27u:
            case 0x28u:
              if (v42 == 3 || v42 == 10)
              {
                goto LABEL_145;
              }

              goto LABEL_140;
            case 0x29u:
              goto LABEL_131;
            default:
              sub_216C677F8(v65, type metadata accessor for MenuActionType);
LABEL_130:
              v43 = 1;
LABEL_131:
              v47 = qword_2170588F0[v42];
              sub_216C677F8(v19, type metadata accessor for MenuAction);
              result = sub_216C677F8(v41, type metadata accessor for MenuAction);
              v48 = v43 >= v47;
              v49 = v70;
              v50 = v71;
              v51 = v69;
              if (!v48)
              {
                goto LABEL_146;
              }

              goto LABEL_141;
          }

          continue;
        }

LABEL_145:
        sub_216C677F8(v19, type metadata accessor for MenuAction);
        result = sub_216C677F8(v41, type metadata accessor for MenuAction);
LABEL_146:
        a3 = v58 + 1;
        v25 = v57 + v53;
        v26 = v56 - 1;
        v27 = v55 + v53;
        if (v58 + 1 != v54)
        {
          goto LABEL_3;
        }

        return result;
    }
  }
}