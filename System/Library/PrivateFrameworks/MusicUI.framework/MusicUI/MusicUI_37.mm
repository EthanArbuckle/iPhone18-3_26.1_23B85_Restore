uint64_t sub_216A4B040()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  v9 = type metadata accessor for ReplayModel(v3);
  v4 = sub_216A4B6B4(&qword_27CAB6FA0, type metadata accessor for ReplayModel);
  OUTLINED_FUNCTION_16_12(v4);
  OUTLINED_FUNCTION_52_13();
  sub_216A4B6FC();
  v5 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v5);
  OUTLINED_FUNCTION_67_11();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v6);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_216A4B14C()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_0();
  v8 = type metadata accessor for JSSearchPage();
  v3 = sub_216A4B6B4(&qword_280E44AC8, type metadata accessor for JSSearchPage);
  OUTLINED_FUNCTION_16_12(v3);
  OUTLINED_FUNCTION_53_15();
  sub_216A4B6FC();
  v4 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v4);
  OUTLINED_FUNCTION_67_11();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v5);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_216A4B258()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  v9 = type metadata accessor for JSSearchResultsPage(v3);
  v4 = sub_216A4B6B4(&qword_280E3DCA0, type metadata accessor for JSSearchResultsPage);
  OUTLINED_FUNCTION_16_12(v4);
  OUTLINED_FUNCTION_51_8();
  sub_216A4B6FC();
  v5 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v5);
  OUTLINED_FUNCTION_67_11();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v6);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_216A4B370()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v0 = sub_217006A94();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_12_7();

  return sub_216A4A668(v4, v5, v6, v7, v8);
}

uint64_t sub_216A4B44C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_12_7();

  return sub_216A47DD0(v3, v4, v5, v6, v7);
}

uint64_t sub_216A4B528(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700DF14();

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216A4B57C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_33_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_103(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216A440A4(v3, v4, v5, v6, v7);
}

uint64_t sub_216A4B628()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_33_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_103(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216AB5644();
}

uint64_t sub_216A4B6B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A4B6FC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216A4B754()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216A4B7AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_94_10()
{

  return type metadata accessor for PageUpdateMappingCoordinator();
}

uint64_t OUTLINED_FUNCTION_98_11()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_100_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_117_7()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_120_4()
{

  return sub_216A4B6FC();
}

void OUTLINED_FUNCTION_121_4(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_216A46A2C();
}

uint64_t sub_216A4B8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[15] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[16] = v5;
  v3[17] = OUTLINED_FUNCTION_80();
  v6 = sub_217006224();
  v3[18] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[19] = v7;
  v3[20] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v8);
  v3[21] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  OUTLINED_FUNCTION_36(v9);
  v3[22] = OUTLINED_FUNCTION_80();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v10);
  v3[23] = OUTLINED_FUNCTION_80();
  v11 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_36(v11);
  v3[24] = OUTLINED_FUNCTION_80();
  v12 = sub_21700D284();
  v3[25] = v12;
  OUTLINED_FUNCTION_2(v12);
  v3[26] = v13;
  v3[27] = OUTLINED_FUNCTION_80();
  v14 = type metadata accessor for PresentSheetAction();
  v3[28] = v14;
  OUTLINED_FUNCTION_36(v14);
  v3[29] = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[30] = v15;
  OUTLINED_FUNCTION_2(v15);
  v3[31] = v16;
  v3[32] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[33] = sub_21700EA24();
  v18 = sub_21700E9B4();
  v3[34] = v18;
  v3[35] = v17;

  return MEMORY[0x2822009F8](sub_216A4BB70, v18, v17);
}

uint64_t sub_216A4BB70()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v41 = v1;
  v34 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v36 = *(v0 + 192);
  v45 = *(v0 + 184);
  v46 = *(v0 + 176);
  v47 = *(v0 + 168);
  v37 = *(v0 + 160);
  v38 = *(v0 + 152);
  v39 = *(v0 + 144);
  v44 = *(v0 + 136);
  v42 = *(v0 + 128);
  v43 = *(v0 + 120);
  v5 = *(v0 + 104);
  v40 = v5;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = v1 + *(v2 + 20);
  v7 = *(v4 + 16);
  v8 = v3;
  v35 = v3;
  v7(v34, v5, v3);
  v9 = v5 + *(type metadata accessor for ModalFlowAction() + 20);
  sub_216A4C414(v9, v36, type metadata accessor for FlowAction.Destination);
  v10 = sub_217005EF4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v13 = OUTLINED_FUNCTION_8_35(v45, v11, v12, v10);
  v14 = type metadata accessor for Page.Header(v13);
  OUTLINED_FUNCTION_8_35(v46, v15, v16, v14);
  v17 = type metadata accessor for ReferrerInfo();
  v20 = OUTLINED_FUNCTION_8_35(v47, v18, v19, v17);
  v21 = type metadata accessor for FlowAction(v20);
  v22 = v6 + v21[10];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v7(v6, v34, v8);
  sub_216A4C414(v36, v6 + v21[5], type metadata accessor for FlowAction.Destination);
  sub_217006214();
  v23 = sub_2170061F4();
  v25 = v24;
  (*(v38 + 8))(v37, v39);
  sub_216A4C474(v36, type metadata accessor for FlowAction.Destination);
  (*(v4 + 8))(v34, v35);
  v26 = (v6 + v21[6]);
  *v26 = v23;
  v26[1] = v25;
  *(v6 + v21[7]) = 0;
  sub_2167A66B4(v0 + 16, v22);
  sub_2167A6724(v45, v6 + v21[8], &qword_27CABA820);
  sub_2167A6724(v46, v6 + v21[11], &qword_27CAB6BF0);
  sub_2167A6724(v47, v6 + v21[9], &qword_27CAB6FD0);
  type metadata accessor for ModalActionModelDestinations.Destination();
  swift_storeEnumTagMultiPayload();
  v7(v41, v40, v35);
  *(v0 + 80) = v2;
  *(v0 + 88) = sub_216A4C3CC(qword_280E3EA78, type metadata accessor for PresentSheetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_216A4C414(v41, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v42 + 104))(v44, *MEMORY[0x277D21E18], v43);
  v28 = swift_task_alloc();
  *(v0 + 288) = v28;
  *v28 = v0;
  v28[1] = sub_216A4BF58;
  v29 = *(v0 + 240);
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  v32 = *(v0 + 96);

  return MEMORY[0x28217F468](v32, v0 + 56, v30, v31, v29);
}

uint64_t sub_216A4BF58()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  *(*v1 + 296) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 272);
    v7 = *(v2 + 280);
    v8 = sub_216A4C1BC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);
    v6 = *(v2 + 272);
    v7 = *(v2 + 280);
    v8 = sub_216A4C0D8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216A4C0D8()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_0_119();
  (*(v3 + 8))(v1, v0);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_216A4C1BC()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_0_119();
  (*(v3 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_216A4C2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216A4B8C4(a1, a2, a3);
}

unint64_t sub_216A4C358(uint64_t a1)
{
  result = sub_2166D8A6C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4C3CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A4C414(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A4C474(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for MusicMovieContextMenu()
{
  result = qword_280E46C20;
  if (!qword_280E46C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A4C540()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167B84AC();
    if (v1 <= 0x3F)
    {
      sub_2167EE974();
      if (v2 <= 0x3F)
      {
        sub_217006B84();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MenuConfiguration(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A4C628()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for MusicMovieContextMenu();
    v6 = *(v5 + 28);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F68(v0 + v6, v4, v0 + *(v5 + 32));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_216942CA4(qword_280E45220, type metadata accessor for MenuBuilder);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

BOOL sub_216A4C7D8(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = (v3 >> 5) & 3;
  if (!v4)
  {
    v6 = *(a2 + 32);
    if ((v6 & 0x60) != 0 || *&v2 != *a2)
    {
      return 0;
    }

    if ((v3 & 0x80000000) != 0)
    {
      if ((v6 & 0x80000000) == 0)
      {
        return 0;
      }

      if (*(a1 + 1) != *(a2 + 8) || *(a1 + 2) != *(a2 + 16))
      {
        return 0;
      }

      if (v3)
      {
        return (v6 & 1) != 0;
      }

      if (v6)
      {
        return 0;
      }

      v7 = a1[3];
      v8 = *(a2 + 24);
    }

    else
    {
      if (v6 < 0)
      {
        return 0;
      }

      v7 = a1[1];
      v8 = *(a2 + 8);
    }

    return v7 == v8;
  }

  if (v4 == 1)
  {
    if ((*(a2 + 32) & 0x60) == 0x20)
    {
      return *&v2 == *a2;
    }

    return 0;
  }

  v9 = *(a2 + 32);
  if ((v9 & 0x60) != 0x40)
  {
    return 0;
  }

  v10 = vorrq_s8(*a2, *(a2 + 16));
  v11 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  return v9 == 64 && *&v11 == 0;
}

void sub_216A4C8D0(void *a1@<X8>)
{
  sub_216A4C7D0();
  *a1 = v2;
  a1[1] = 1;
}

uint64_t sub_216A4C914(double a1, double a2, double a3)
{
  v3 = (a1 + a2) / (a2 + a3);
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  v4 = round(v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 9.22337204e18)
  {
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_216A4C9AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 < 0)
  {
    if ((a8 & 0x80) == 0)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return (a8 & 0x80) == 0 && *&a1 == *&a5;
}

uint64_t sub_216A4CA10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_216A4CA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_216A4CAF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 33))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = ((2 * *(a1 + 32)) & 0x3C | (*(a1 + 32) >> 5) & 3) ^ 0x3F;
      if (v2 >= 0x3D)
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

uint64_t sub_216A4CB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * ((((-a2 >> 2) & 0xF) - 16 * a2) & 0x3F);
    }
  }

  return result;
}

uint64_t sub_216A4CB98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((v1 >> 5) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (v1 >> 5) & 3;
  }
}

uint64_t sub_216A4CBC8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 32) & 0x81 | (32 * a2);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v2 = 64;
  }

  *(result + 32) = v2;
  return result;
}

uint64_t sub_216A4CC40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int *sub_216A4CC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v36 = a3;
  v39 = a5;
  v34 = a6;
  v35 = a2;
  v8 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700F164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  (*(v11 + 16))(v13, a1, v10, v22);
  if (__swift_getEnumTagSinglePayload(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v26 = *(v14 + 32);
    v26(v24, v13, a4);
    (*(v14 + 16))(v20, v24, a4);
    type metadata accessor for SectionChangeInstructionPerformer();
    v27 = v37;
    sub_216AD05C8();
    if (v27)
    {
      v29 = *(v14 + 8);
      v29(v20, a4);
      return (v29)(v24, a4);
    }

    else
    {
      v30 = *(*(v39 + 16) + 48);
      v35 = v28;
      v36 = v30(v38, a4);
      v37 = v26;
      v31 = v33;
      sub_216CFB5A0();
      sub_216A4D170(v31);
      v36(v38, 0);
      (*(v14 + 8))(v24, a4);
      v37(v17, v20, a4);
      return sub_216E41D9C(v17, 0, 0, 0, 0, a4, v34);
    }
  }
}

unint64_t sub_216A4D034(uint64_t a1, uint64_t a2)
{
  sub_21700F3B4();

  MEMORY[0x21CE9F490](a1, a2);
  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_216A4D0F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4D134(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4D170(uint64_t a1)
{
  v2 = _s7SectionVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A4D1CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_216A4D220()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v4 = type metadata accessor for FlowAction(0);
  v5 = sub_216A4E0A4(qword_27CAC0738);
  sub_216957CEC(v4, v5, v3);
  v6 = sub_217006924();
  v7 = __swift_getEnumTagSinglePayload(v3, 1, v6) != 1;
  sub_216697664(v3, &unk_27CABF9C0);
  return v7;
}

uint64_t sub_216A4D314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v9 = type metadata accessor for FlowAction.Destination(0);
  v8[14] = v9;
  OUTLINED_FUNCTION_36(v9);
  v8[15] = OUTLINED_FUNCTION_80();
  v10 = type metadata accessor for FlowAction(0);
  v8[16] = v10;
  OUTLINED_FUNCTION_36(v10);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v11);
  v8[19] = OUTLINED_FUNCTION_80();
  v12 = sub_2170067A4();
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v13);
  v8[23] = OUTLINED_FUNCTION_80();
  v14 = sub_217006924();
  v8[24] = v14;
  v8[25] = *(v14 - 8);
  v8[26] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[27] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v8[28] = v16;
  v8[29] = v15;

  return MEMORY[0x2822009F8](sub_216A4D510, v16, v15);
}

uint64_t sub_216A4D510()
{
  v40 = v0;
  v2 = v0[23];
  v1 = v0[24];
  sub_216CE36E4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[23];

    sub_216697664(v3, &unk_27CABF9C0);
    type metadata accessor for MapFlowActionImplementation.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_6_54();

    OUTLINED_FUNCTION_3();
LABEL_11:

    return v28();
  }

  v5 = v0[19];
  v4 = v0[20];
  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v6 = v0[19];

    sub_216697664(v6, &qword_27CAB7088);
    if (qword_27CAB5C40 != -1)
    {
      swift_once();
    }

    v7 = v0[17];
    v8 = v0[9];
    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_27CAC0720);
    OUTLINED_FUNCTION_0_120();
    sub_216A4E044(v8, v7, v10);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[25];
    v15 = v0[26];
    v16 = v0[24];
    v17 = v0[17];
    if (v13)
    {
      v38 = v0[26];
      v19 = v0[15];
      v18 = v0[16];
      v37 = v0[24];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136446210;
      sub_216A4E044(v17 + *(v18 + 20), v19, type metadata accessor for FlowAction.Destination);
      v22 = sub_21700E594();
      v24 = v23;
      sub_216A4DFE8(v17);
      v25 = sub_2166A85FC(v22, v24, &v39);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_216679000, v11, v12, "No music item for flow action destination: %{public}s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x21CEA1440](v21, -1, -1);
      MEMORY[0x21CEA1440](v20, -1, -1);

      (*(v14 + 8))(v38, v37);
    }

    else
    {

      sub_216A4DFE8(v17);
      (*(v14 + 8))(v15, v16);
    }

    v29 = v0[8];
    v30 = *MEMORY[0x277D21CA0];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v31 + 104))(v29, v30);
    OUTLINED_FUNCTION_5_62();

    OUTLINED_FUNCTION_3();
    goto LABEL_11;
  }

  v26 = v0[22];
  v27 = v0[18];
  (*(v0[21] + 32))(v26, v0[19], v0[20]);
  sub_21697873C(v26, v27);
  v33 = v0[18];
  v0[5] = v0[16];
  v0[6] = sub_216A4E0A4(qword_280E45BB8);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_0_120();
  sub_216A4E044(v33, v34, v35);
  v36 = swift_task_alloc();
  v0[30] = v36;
  type metadata accessor for MapFlowActionImplementation();
  swift_getWitnessTable();
  *v36 = v0;
  v36[1] = sub_216A4DA88;

  return sub_216B6DB60();
}

uint64_t sub_216A4DA88()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_216A4DC84;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_216A4DBA4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216A4DBA4()
{
  OUTLINED_FUNCTION_4_68();
  sub_216A4DFE8(v4);
  (*(v6 + 8))(v2, v3);
  (*(v5 + 8))(v1, v0);
  OUTLINED_FUNCTION_5_62();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216A4DC84()
{
  OUTLINED_FUNCTION_4_68();
  sub_216A4DFE8(v5);
  (*(v7 + 8))(v2, v4);
  (*(v6 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216A4DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_216A4D314(a1, a2, a3, v12, a5, v13, v15, v16);
}

uint64_t sub_216A4DE38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4DE74(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4DEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216A4DF50()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0720);
  __swift_project_value_buffer(v0, qword_27CAC0720);
  return sub_217007C94();
}

uint64_t sub_216A4DFE8(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A4E044(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A4E0A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_216A4E0E8(_BYTE *result, int a2, int a3)
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

uint64_t sub_216A4E1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v65 = a2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v59 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = v55 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v55 - v18;
  v20 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v61 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v12 + 16);
  v64 = a1;
  v26(v19, a1, v10, v23);
  v27 = v65;
  (*(v6 + 16))(v9);
  v28 = v63;
  sub_21700D224();
  if (v28)
  {
    (*(v6 + 8))(v27, v4);
    return (*(v12 + 8))(v64, v10);
  }

  v55[1] = 0;
  v63 = v6;
  v57 = v20;
  v58 = v4;
  v30 = v62;
  (*(v61 + 32))(v62, v25, v20);
  v31 = v60;
  v32 = v64;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v36 = *(v12 + 8);
  v36(v31, v10);
  v56 = v35;
  if (v35)
  {
    v37 = type metadata accessor for RemovePersistenceItemAction();
    v38 = (v30 + *(v37 + 20));
    *v38 = v33;
    v38[1] = v35;
    v39 = v59;
    sub_21700CE04();
    sub_21695FB0C();
    sub_21700CD14();
    v36(v39, v10);
    v40 = v66;
    v41 = v58;
    if (v66 != 2)
    {
      (*(v63 + 8))(v65, v58);
      result = (v36)(v32, v10);
      *(v30 + *(v37 + 24)) = v40 & 1;
      return result;
    }

    v59 = v36;
    v60 = v10;
    v42 = v32;
    v43 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_12();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217013DA0;
    sub_216A4E7B0();
    *(v46 + 32) = OUTLINED_FUNCTION_12();
    *v47 = 1;
    *v45 = 0x65706F6373;
    v45[1] = 0xE500000000000000;
    v45[2] = v37;
    v45[3] = v46;
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D22540], v43);
  }

  else
  {
    v59 = v36;
    v60 = v10;
    v42 = v32;
    v48 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_12();
    v50 = v49;
    v51 = type metadata accessor for RemovePersistenceItemAction();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_217013DA0;
    sub_216A4E7B0();
    *(v52 + 32) = OUTLINED_FUNCTION_12();
    *v53 = 0;
    *v50 = 7955819;
    v50[1] = 0xE300000000000000;
    v50[2] = v51;
    v50[3] = v52;
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D22540], v48);
    v41 = v58;
  }

  v54 = v63;
  swift_willThrow();
  (*(v54 + 8))(v65, v41);
  (v59)(v42, v60);
  result = (*(v61 + 8))(v62, v57);
  if (v56)
  {
    type metadata accessor for RemovePersistenceItemAction();
  }

  return result;
}

unint64_t sub_216A4E7B0()
{
  result = qword_27CAC07C0;
  if (!qword_27CAC07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC07C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemovePersistenceItemAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A4E8E4()
{
  result = qword_27CAC07C8;
  if (!qword_27CAC07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC07C8);
  }

  return result;
}

uint64_t sub_216A4E954@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SocialProfileViewFollowRequestsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  a1[3] = type metadata accessor for OpenSocialFollowRequestsPageAction();
  a1[4] = sub_216A4F3F8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07D8);
  v7 = v6[11];
  v8 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  sub_216A4F558(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialProfileViewFollowRequestsView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_216A4F450(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = v6[12];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v6[13];
  result = swift_getKeyPath();
  *v12 = result;
  v12[40] = 0;
  a1[5] = sub_216A4F4B4;
  a1[6] = v10;
  a1[7] = 0;
  a1[8] = 0;
  return result;
}

uint64_t sub_216A4EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07E0);
  sub_216A4EDC8(a1, a2 + *(v8 + 44));
  sub_21700B3B4();
  sub_2170083C4();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07E8) + 36));
  v10 = v30;
  *v9 = v29;
  v9[1] = v10;
  v9[2] = v31;
  v11 = a1 + *(type metadata accessor for SocialProfileViewFollowRequestsView() + 20);
  v13 = *v11;
  v12 = *(v11 + 16);
  LOBYTE(v11) = *(v11 + 32);
  v25 = v13;
  v26 = v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13;

    sub_21700ED94();
    v15 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v14, *(&v25 + 1), v26, *(&v26 + 1), 0);
    (*(v5 + 8))(v7, v4);
    v25 = v27;
    v26 = v28;
  }

  v16 = sub_217009C84();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07F0) + 36);
  *v17 = v16;
  v18 = v25;
  *(v17 + 24) = v26;
  *(v17 + 8) = v18;
  *(v17 + 40) = 0;
  v19 = sub_217009C74();
  v20 = sub_217008A34();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07F8) + 36);
  *v21 = v20;
  *(v21 + 8) = v19;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0800) + 36);
  sub_21700B2B4();
  v23 = sub_217009C84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20);
  *(v22 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_216A4EDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0808);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v60 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v64 = sub_216983738(124);
  v63 = v10;
  *(&v62 + 1) = sub_217009EA4();
  *&v62 = swift_getKeyPath();
  *(&v61 + 1) = sub_21700AD14();
  *&v61 = swift_getKeyPath();
  v73[0] = *(a1 + *(type metadata accessor for SocialProfileDetailViewFollowRequestsHeader() + 24));
  v58 = sub_21700F784();
  v57 = v11;
  v59 = sub_217009EA4();
  KeyPath = swift_getKeyPath();
  v55 = sub_21700ACF4();
  v12 = swift_getKeyPath();
  LOBYTE(a1) = sub_217009C74();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v69) = 0;
  v21 = sub_217009CE4();
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v73[0]) = 0;
  v30 = sub_21700AC84();
  v31 = sub_217009C84();
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0810) + 36)];
  v33 = *MEMORY[0x277CE0128];
  v34 = sub_217009294();
  (*(*(v34 - 8) + 104))(v32, v33, v34);
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00) + 36)] = 256;
  v35 = v57;
  *v9 = v58;
  *(v9 + 1) = v35;
  v36 = MEMORY[0x277D84F90];
  *(v9 + 2) = 0;
  *(v9 + 3) = v36;
  v37 = v59;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = v37;
  v38 = v55;
  *(v9 + 6) = v12;
  *(v9 + 7) = v38;
  v9[64] = a1;
  *(v9 + 65) = *v68;
  *(v9 + 17) = *&v68[3];
  *(v9 + 9) = v14;
  *(v9 + 10) = v16;
  *(v9 + 11) = v18;
  *(v9 + 12) = v20;
  v9[104] = 0;
  *(v9 + 27) = *&v67[3];
  *(v9 + 105) = *v67;
  v9[112] = v21;
  *(v9 + 29) = *&v66[3];
  *(v9 + 113) = *v66;
  *(v9 + 15) = v23;
  *(v9 + 16) = v25;
  *(v9 + 17) = v27;
  *(v9 + 18) = v29;
  v9[152] = 0;
  *(v9 + 153) = *v65;
  *(v9 + 39) = *&v65[3];
  *(v9 + 20) = v30;
  v9[168] = v31;
  LOBYTE(a1) = sub_217009CD4();
  sub_217007F24();
  v39 = &v9[*(v5 + 44)];
  *v39 = a1;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v59 = sub_21700ADB4();
  v44 = sub_217009E14();
  v45 = swift_getKeyPath();
  v46 = sub_21700AD14();
  v47 = swift_getKeyPath();
  v48 = v60;
  sub_216681B04(v9, v60, &qword_27CAC0808);
  *&v69 = v64;
  *(&v69 + 1) = v63;
  *&v70 = 0;
  *(&v70 + 1) = MEMORY[0x277D84F90];
  v71 = v62;
  v72 = v61;
  v49 = v70;
  *a2 = v69;
  *(a2 + 16) = v49;
  v50 = v72;
  *(a2 + 32) = v71;
  *(a2 + 48) = v50;
  *(a2 + 64) = 0x4024000000000000;
  *(a2 + 72) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0818);
  sub_216681B04(v48, a2 + *(v51 + 64), &qword_27CAC0808);
  v52 = (a2 + *(v51 + 80));
  *v52 = v59;
  v52[1] = v45;
  v52[2] = v44;
  v52[3] = v47;
  v52[4] = v46;
  sub_216681B04(&v69, v73, &qword_27CABA1C0);

  sub_216697664(v9, &qword_27CAC0808);

  sub_216697664(v48, &qword_27CAC0808);
  v73[0] = v64;
  v73[1] = v63;
  v73[2] = 0;
  v73[3] = MEMORY[0x277D84F90];
  v74 = v62;
  v75 = v61;
  return sub_216697664(v73, &qword_27CABA1C0);
}

uint64_t type metadata accessor for SocialProfileViewFollowRequestsView()
{
  result = qword_280E47E30;
  if (!qword_280E47E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216A4F3F8()
{
  result = qword_27CAC07D0;
  if (!qword_27CAC07D0)
  {
    type metadata accessor for OpenSocialFollowRequestsPageAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC07D0);
  }

  return result;
}

uint64_t sub_216A4F450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileViewFollowRequestsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A4F4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileViewFollowRequestsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216A4EB18(v4, a1);
}

uint64_t sub_216A4F558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_216A4F5E0()
{
  type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  if (v0 <= 0x3F)
  {
    sub_21692ED34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216A4F664()
{
  result = qword_27CAC0820;
  if (!qword_27CAC0820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC07D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0820);
  }

  return result;
}

uint64_t sub_216A4F6C8()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A4F7F0()
{
  OUTLINED_FUNCTION_93();
  if (sub_21669DAC4())
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[3];
    sub_2166AACE4();
    sub_21700EAB4();
    (*(v2 + 8))(v1, v3);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_8_50(v4);

    return MEMORY[0x2822003E8](v0 + 10, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216A4F914()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A4F9FC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 80);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    OUTLINED_FUNCTION_3();

    return v3();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_8_50();

    return MEMORY[0x2822003E8](v0 + 80, 0, 0);
  }
}

uint64_t sub_216A4FAEC(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216A4FB4C(a2 & 1);
  }

  return result;
}

uint64_t sub_216A4FB4C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (qword_27CAB5C50 != -1)
  {
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_27CAC0828);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_216679000, v8, v9, "Acknowledgement changed. Acknowledgment required? %{BOOL,public}d.", v10, 8u);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = a1 & 1;

  sub_21677BBA0();
}

void sub_216A4FD0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_216A4FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217006224();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_21677BBA0();
}

uint64_t sub_216A4FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216A4FF5C, a4, 0);
}

uint64_t sub_216A4FF5C()
{
  OUTLINED_FUNCTION_33();
  sub_216A51144();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A4FFB4()
{
  if (*(v0 + 40) != 2)
  {
    return 0;
  }

  if (sub_216A50000())
  {
    return 1;
  }

  return sub_21669DAC4();
}

uint64_t sub_216A50000()
{
  v0 = sub_21678497C();
  if (v0)
  {
    if (v0 != 1)
    {
      v1 = 1;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_36_22();
  }

  else
  {
    OUTLINED_FUNCTION_30_27();
  }

  v1 = sub_21700F7D4();
LABEL_7:

  return v1 & 1;
}

uint64_t sub_216A5008C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_21700EA34();

  v12 = sub_21700EA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v6;
  sub_21677BBA0();
}

uint64_t sub_216A501C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21700EA34();
  v6[5] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_216A50264, v8, v7);
}

uint64_t sub_216A50264()
{
  if (sub_216A4FFB4())
  {
    if (qword_27CAB5C50 != -1)
    {
      OUTLINED_FUNCTION_1_104();
    }

    v1 = sub_217007CA4();
    __swift_project_value_buffer(v1, qword_27CAC0828);
    v2 = sub_217007C84();
    v3 = sub_21700EDA4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_43();
      *v4 = 0;
      _os_log_impl(&dword_216679000, v2, v3, "Waiting for user to acknowledge the privacy disclaimer before dismissing sign-in sheet...", v4, 2u);
      OUTLINED_FUNCTION_26_4();
    }

    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_216A5045C;

    return sub_216A4F6C8();
  }

  else
  {

    if (qword_27CAB5C50 != -1)
    {
      OUTLINED_FUNCTION_1_104();
    }

    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_27CAC0828);
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();
    if (os_log_type_enabled(v8, v9))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_40_0(&dword_216679000, v10, v11, "Dismissing sign-in sheet.");
      OUTLINED_FUNCTION_26_4();
    }

    v12 = *(v0 + 24);

    v12();
    OUTLINED_FUNCTION_3();

    return v13();
  }
}

uint64_t sub_216A5045C()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_216A50570, v5, v4);
}

uint64_t sub_216A50570()
{

  if (qword_27CAB5C50 != -1)
  {
    OUTLINED_FUNCTION_1_104();
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_27CAC0828);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_40_0(&dword_216679000, v4, v5, "Dismissing sign-in sheet.");
    OUTLINED_FUNCTION_26_4();
  }

  v6 = *(v0 + 24);

  v6();
  OUTLINED_FUNCTION_3();

  return v7();
}

void sub_216A50660()
{
  if (qword_27CAB5C50 != -1)
  {
    OUTLINED_FUNCTION_1_104();
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CAC0828);
  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_43();
    *v3 = 0;
    _os_log_impl(&dword_216679000, v1, v2, "Privacy Policy Disclaimer acknowledged.", v3, 2u);
    MEMORY[0x21CEA1440](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedPrivacyInfo];
  if (qword_280E2F858 != -1)
  {
    OUTLINED_FUNCTION_11_45();
  }

  [v4 acknowledgePrivacyPolicyForIdentifier:qword_280E73B70 completionHandler:0];

  sub_216A52310();
  v5 = sub_216B89874();
  sub_216784A08(v5, v6);
}

uint64_t sub_216A507A4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0828);
  __swift_project_value_buffer(v0, qword_27CAC0828);
  return sub_217007C94();
}

uint64_t sub_216A50824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_216A50848, 0, 0);
}

uint64_t sub_216A50848()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_216A5086C, v1, 0);
}

uint64_t sub_216A5086C()
{
  OUTLINED_FUNCTION_33();
  sub_21692BB9C(*(v0 + 32));
  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A508C8()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_216A50900()
{
  sub_216A508C8();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_216A50934(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A8);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_27();
  v7 = OUTLINED_FUNCTION_34_22();
  v8(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840);
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(v1, a1, v9);
  v11 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_9_50();
  sub_216A8B8E8(v1, v2);
  return swift_endAccess();
}

uint64_t sub_216A50A8C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_27();
  v7 = OUTLINED_FUNCTION_34_22();
  v8(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(v1, a1, v9);
  v11 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_9_50();
  sub_216A8BCE8(v1, v2);
  return swift_endAccess();
}

uint64_t sub_216A50BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0848);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_217006224();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006214();
  (*(v8 + 16))(v10, a2, v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  swift_beginAccess();
  sub_2166ABA04(v6, v10);
  return swift_endAccess();
}

uint64_t sub_216A50D9C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A8);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_9_50();
  v4 = sub_2166ABD84();
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD278);
    OUTLINED_FUNCTION_32_19();
    v7 = *(v20 + 48);
    v8 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v7 + *(v9 + 72) * v6, v8);
    v10 = *(v20 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840);
    OUTLINED_FUNCTION_34();
    (*(v12 + 32))(v0, v10 + *(v12 + 72) * v6, v11);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v13, v14);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    *(v1 + 112) = v20;
    v15 = OUTLINED_FUNCTION_44_3();
    v18 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840);
    v15 = OUTLINED_FUNCTION_21();
  }

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_216697664(v0, &qword_27CAC08A8);
  return swift_endAccess();
}

uint64_t sub_216A50F70()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_9_50();
  v4 = sub_2166ABD84();
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD270);
    OUTLINED_FUNCTION_32_19();
    v7 = *(v20 + 48);
    v8 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v7 + *(v9 + 72) * v6, v8);
    v10 = *(v20 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
    OUTLINED_FUNCTION_34();
    (*(v12 + 32))(v0, v10 + *(v12 + 72) * v6, v11);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v13, v14);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    *(v1 + 112) = v20;
    v15 = OUTLINED_FUNCTION_44_3();
    v18 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
    v15 = OUTLINED_FUNCTION_21();
  }

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_216697664(v0, &qword_27CAC08A0);
  return swift_endAccess();
}

uint64_t sub_216A51144()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0848);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  swift_beginAccess();
  v5 = sub_2166ABD84();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0F8);
    sub_21700F554();
    v8 = v17;
    v9 = *(v17 + 48);
    v10 = sub_217006224();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v7, v10);
    v11 = *(v8 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90);
    (*(*(v12 - 8) + 32))(v4, v11 + *(*(v12 - 8) + 72) * v7, v12);
    sub_21667E92C(&qword_280E4A4E0, MEMORY[0x277CC95F0]);
    sub_21700F574();
    *(v1 + 112) = v8;
    v13 = v4;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90);
    v13 = v4;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  sub_216697664(v4, &qword_27CAC0848);
  return swift_endAccess();
}

uint64_t sub_216A51384()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_216A513AC()
{
  sub_216A51384();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_216A513D8(uint64_t a1)
{
  v3 = sub_217006224();
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_216A4FD80(a1, v5, v6);
}

uint64_t sub_216A51448()
{
  OUTLINED_FUNCTION_93();
  v0 = sub_217006224();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_216A523A8;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_216A4FF3C(v4, v5, v6, v7, v8);
}

void sub_216A51514()
{
  OUTLINED_FUNCTION_43_22();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v7 = sub_2166AF66C(v5, v6);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_19_32();
    sub_2166EF9C4((*(v4 + 56) + 32 * v9), v3);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    *v1 = v4;
  }

  else
  {
    *v3 = 0u;
    v3[1] = 0u;
  }

  OUTLINED_FUNCTION_42_22();
}

uint64_t sub_216A516B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_14_38();
  v17 = sub_2166AF66C(v15, v16);
  if (v18)
  {
    v19 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_31();
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();

    v20 = *(a10 + 56);
    v14(0);
    OUTLINED_FUNCTION_34();
    sub_2166C5C18(v20 + *(v21 + 72) * v19, v10, v12);
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    v14(0);
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_28_5();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void sub_216A517F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_33_22();
  v15 = sub_216E68164();
  if (v16)
  {
    v17 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    v18 = *(a10 + 48);
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_34();
    sub_216A52148(v18 + *(v19 + 72) * v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    sub_21667E92C(&qword_280E46330, type metadata accessor for MusicEvent);
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_28_5();
}

uint64_t sub_216A51910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_14_38();
  v11 = sub_216E68214();
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_38_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8);
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_32_19();
    v14 = *(a10 + 48) + 40 * v13;
    sub_216838830(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
    v15 = *(a10 + 56);
    type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    OUTLINED_FUNCTION_34();
    sub_2166C5C18(v15 + *(v16 + 72) * v13, v10, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
    sub_2167CB9EC();
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_42_22();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_216A51A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  OUTLINED_FUNCTION_14_38();
  v13 = sub_2166ABD84();
  if (v14)
  {
    v15 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_31();
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    v16 = *(a10 + 48);
    v17 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v18 + 8))(v16 + *(v18 + 72) * v15, v17);
    v19 = *(a10 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    OUTLINED_FUNCTION_34();
    (*(v21 + 32))(v10, v19 + *(v21 + 72) * v15, v20);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v22, v23);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_28_5();

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t sub_216A51B84()
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_14_38();
  v4 = sub_216E69548(v2, v3);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_38_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD200);
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_19_32();
    v7 = *(v1 + 56);
    type metadata accessor for PopoverBubbleTipDismissContext(0);
    OUTLINED_FUNCTION_34();
    sub_2166C5C18(v7 + *(v8 + 72) * v6, v0, type metadata accessor for PopoverBubbleTipDismissContext);
    sub_216A069B8();
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    type metadata accessor for PopoverBubbleTipDismissContext(0);
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_42_22();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_216A51D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_33_22();
  sub_216E68550(v11);
  if (v12)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1E0);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08E8);
    sub_216A52354();
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_42_22();
}

void sub_216A51E30()
{
  OUTLINED_FUNCTION_43_22();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v7 = sub_216E69548(v5, v6);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD238);
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_19_32();
    sub_21693B454(*(v4 + 56) + (v9 << 6), v3);
    sub_216A069B8();
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    *v1 = v4;
  }

  else
  {
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0;
    *(v3 + 40) = 254;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
  }

  OUTLINED_FUNCTION_42_22();
}

void sub_216A51EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_33_22();
  v11 = sub_2166ABD84();
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD140);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    v14 = *(a10 + 48);
    v15 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v16 + 8))(v14 + *(v16 + 72) * v13, v15);
    type metadata accessor for IntentNetworkResponseReceiver.Observer();
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v17, v18);
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_42_22();
}

void sub_216A52050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_33_22();
  sub_2166AF66C(v15, v16);
  if (v17)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();

    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_28_5();
}

uint64_t sub_216A52148(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A521A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v4[1] = sub_216A523A8;
  v6 = OUTLINED_FUNCTION_1_12();

  return sub_216A501C8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_216A52268()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2169D1708;
  v5 = OUTLINED_FUNCTION_1_12();

  return sub_216A50824(v5, v6, v7, v8, v1);
}

unint64_t sub_216A52310()
{
  result = qword_27CAC08B0;
  if (!qword_27CAC08B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAC08B0);
  }

  return result;
}

unint64_t sub_216A52354()
{
  result = qword_27CAC08F0;
  if (!qword_27CAC08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC08F0);
  }

  return result;
}

uint64_t View.musicPresentationSource<A, B>(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 96);
  v13[0] = *(*a1 + 80);
  v13[1] = v6;
  v7 = type metadata accessor for PresentationSourceModifier();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v13 - v9);
  v11 = a1[5];

  sub_216A5D658(v11, v10);
  MEMORY[0x21CE9B900](v10, a2, v7, a3);
  return (*(v8 + 8))(v10, v7);
}

void sub_216A524FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3);
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_280E29C90 != -1)
  {
    OUTLINED_FUNCTION_0_122();
    v4 = v5;
  }

  [v4 addObserver:v2 selector:sel_eventDidFire name:qword_280E73A00 object:0];
}

void sub_216A525C8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E29C90 != -1)
  {
    OUTLINED_FUNCTION_0_122();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E73A00 object:0];
}

uint64_t MusicPageProvider.page(for:stackAuthority:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_216841250();
  type metadata accessor for MusicStackAuthority();
  sub_2166B4C18(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  v4 = sub_217007D54();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC08F8) + 36));
  *v5 = v4;
  v5[1] = a1;
}

uint64_t sub_216A52750()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216A52798(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
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

uint64_t sub_216A527D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_216A52844()
{
  result = qword_27CAC0980;
  if (!qword_27CAC0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CAC08F8);
    sub_2166B53E0();
    sub_216A528D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0980);
  }

  return result;
}

unint64_t sub_216A528D0()
{
  result = qword_280E2A800;
  if (!qword_280E2A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A800);
  }

  return result;
}

uint64_t sub_216A5295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v63 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v54 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v52 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  sub_21700D7A4();
  v22 = a1;
  sub_21700CE04();
  v56 = v6;
  v57 = v4;
  v23 = v6;
  v24 = v63;
  (*(v23 + 16))(v9, v58, v4);
  v53 = v21;
  sub_21700D734();
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v24 + 8);
  v59 = v10;
  v63 = v24 + 8;
  v28(v19, v10);
  if (v27)
  {
    v29 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
    v61 = v25;
    v62 = v27;
    sub_21700F364();
    sub_21700CE04();
    v30 = sub_21700CDB4();
    v31 = v22;
    v32 = OUTLINED_FUNCTION_2_84();
    (v28)(v32);
    if (v22)
    {
      v33 = (v60 + *(v29 + 24));
      *v33 = v30;
      v33[1] = v22;
      sub_21700CE04();
      v34 = sub_21700CDB4();
      v35 = OUTLINED_FUNCTION_2_84();
      (v28)(v35);
      v36 = (v60 + *(v29 + 28));
      *v36 = v34;
      v36[1] = v22;
      v37 = v53;
      sub_21700CE04();
      v38 = v58;
      sub_21700D2E4();
      v39 = v59;
      v28(v37, v59);
      sub_21700CE04();
      sub_21700D2E4();
      (*(v56 + 8))(v38, v57);
      v28(v22, v39);
      return (v28)(v37, v39);
    }

    v47 = OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_0_123();
    sub_216A5301C(v48, v49);
    OUTLINED_FUNCTION_3_0();
    *v50 = 0xD000000000000014;
    v50[1] = 0x80000002170870C0;
    v50[2] = v29;
    (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D22530], v47);
  }

  else
  {
    v55 = 0;
    v31 = v60;
    v41 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_123();
    sub_216A5301C(v42, v43);
    swift_allocError();
    v45 = v44;
    v46 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
    *v45 = 25705;
    v45[1] = 0xE200000000000000;
    v45[2] = v46;
    (*(*(v41 - 8) + 104))(v45, *MEMORY[0x277D22530], v41);
  }

  swift_willThrow();
  (*(v56 + 8))(v58, v57);
  v28(v22, v59);
  result = sub_2167B0250(v31);
  if (v55)
  {
    v51 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
    return sub_216788110(v31 + *(v51 + 20));
  }

  return result;
}

uint64_t sub_216A5301C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A53064()
{
  v0 = sub_21700F164();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    if (v2 > 0x3F)
    {
      return v0;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A53120(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 > v5)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_216A53284(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_216A534A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21700F164();
  }

  else
  {
    v6 = sub_21700F164();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0);
  }

  return (*(*(v6 - 8) + 32))(a2, v4, v6);
}

uint64_t sub_216A53624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

void sub_216A538A4(uint64_t a1)
{
  v2 = sub_216A53B88();
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for PopoverProvider.Popover();
      v4 = static PopoverProvider.Popover.== infix(_:_:)(a1, v3);

      if (v4)
      {
        return;
      }
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  sub_216A53B88();
  sub_217007D74();

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);

  v6 = sub_217007C84();
  v7 = sub_21700EDA4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    if (a1)
    {
      sub_21700DF14();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC178);
    v10 = sub_21700E594();
    v12 = sub_2166A85FC(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    if (sub_216A53B88())
    {
      sub_21700DF14();
    }

    v13 = sub_21700E594();
    v15 = sub_2166A85FC(v13, v14, &v16);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_216679000, v6, v7, "💬 oldActivePopover %{public}s -> activePopover %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }
}

uint64_t sub_216A53B30(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  sub_216A538A4(v2);
}

uint64_t sub_216A53B88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v0, v1);
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_216A53C38(uint64_t a1)
{

  v3 = sub_216A58CE0(v2, a1);

  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_14();
    sub_216A58C38();
  }

  else
  {

    return sub_216A53B30(a1);
  }
}

uint64_t sub_216A53D50()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v0, v1);
  OUTLINED_FUNCTION_116_0();

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216A53E10(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_21700DF14();
  sub_2169FA130(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_14();
    sub_216A58C38();
  }
}

uint64_t sub_216A53EE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  sub_21700DF14();
}

uint64_t sub_216A53F4C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v0, v1);
  OUTLINED_FUNCTION_116_0();

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216A5400C(void *a1)
{
  swift_beginAccess();
  v3 = sub_21700DF14();
  sub_21698BF40(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_14();
    sub_216A58C38();
  }
}

uint64_t sub_216A540E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  sub_21700DF14();
}

uint64_t sub_216A54194()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v0, v1);
  OUTLINED_FUNCTION_116_0();

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216A54254()
{
  swift_getKeyPath();
  sub_216A58C38();
}

uint64_t sub_216A542C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  sub_21700DF14();
}

void (*sub_216A54330(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC7MusicUI30PopoverBubbleTipRequestManager___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_124();
  v3[6] = sub_216A595CC(v4, v5);
  sub_2170066D4();

  *v3 = v1;
  swift_getKeyPath();
  sub_2170066F4();

  v3[7] = sub_216A54148();
  return sub_216A54444;
}

void sub_216A54444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2170066E4();

  free(v1);
}

void *sub_216A544D8()
{
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9CC0);
  swift_allocObject();
  v0[3] = sub_217007D84();
  v1 = MEMORY[0x277D84FA0];
  v0[5] = 0;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_216A069B8();
  OUTLINED_FUNCTION_108();
  v0[7] = sub_21700E384();
  type metadata accessor for PopoverBubbleTipDismissContext(0);
  OUTLINED_FUNCTION_108();
  v0[8] = sub_21700E384();
  sub_217006704();
  type metadata accessor for UnifiedMessages.Coordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v0[4] = v3;
  sub_216A5572C();

  return v0;
}

void sub_216A54608(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_216A53F4C();
  v9 = sub_216935520(v6, v7, v8);

  if (v9 >= 2)
  {

    sub_21700EB04();
    sub_216A59A7C(v9);
    sub_216A59A7C(v9);
  }

  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_143();
  v14 = swift_allocObject();
  swift_weakInit();
  sub_21700EA34();

  sub_21700DF14();
  v15 = sub_21700EA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = v6;
  v16[6] = v7;

  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v18, v19);

  OUTLINED_FUNCTION_40_16();
  sub_2170066D4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_16();
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0();
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + 56);
  sub_21693A870();
  *(v2 + 56) = v20;
  swift_endAccess();
  swift_getKeyPath();
  sub_2170066E4();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A548A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  v6[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E88);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v6[26] = swift_task_alloc();
  sub_21700EA34();
  v6[27] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v6[28] = v10;
  v6[29] = v9;

  return MEMORY[0x2822009F8](sub_216A54A84, v10, v9);
}

uint64_t sub_216A54A84()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
LABEL_4:

    OUTLINED_FUNCTION_3();

    return v2();
  }

  if (sub_21700EB24())
  {

    goto LABEL_4;
  }

  v5 = v0[17];
  v4 = v0[18];
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  v0[31] = v6;
  *(v6 + 16) = 0;
  v0[8] = v5;
  v0[9] = v4;
  sub_21700D194();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_216A54C14;
  v12 = v0[26];

  return sub_2169FF314(v0 + 8, v12, 0);
}

uint64_t sub_216A54C14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = v1[26];
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 264) = v7;

  sub_2166997CC(v4, &qword_27CAB8DF8);
  v9 = v1[29];
  v10 = v1[28];

  return MEMORY[0x2822009F8](sub_216A54D68, v10, v9);
}

void sub_216A54D68()
{

  v1 = sub_21700EB24();
  v2 = v0[33];
  if (v1)
  {

    goto LABEL_53;
  }

  if (!v2)
  {
    goto LABEL_51;
  }

  v3 = v2;
  v4 = sub_216A53B88();
  if (v4)
  {

    v5 = sub_2170076F4();

    v6 = sub_2167B3508(v5);
    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = sub_216A59684(v3);
  if (v4)
  {
    if (v9)
    {
      if (v6 == v8 && v4 == v9)
      {

LABEL_52:

LABEL_53:

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_59();

        __asm { BRAA            X1, X16 }
      }

      v11 = sub_21700F7D4();

      if (v11)
      {
        goto LABEL_28;
      }

LABEL_18:
      if (!sub_216A53B88())
      {
LABEL_41:
        if (qword_280E416F8 != -1)
        {
          OUTLINED_FUNCTION_0_3();
        }

        v37 = sub_217007CA4();
        OUTLINED_FUNCTION_29_2(v37, qword_280E73D20);
        v38 = v3;
        sub_21700DF14();
        v39 = sub_217007C84();
        v40 = sub_21700EDA4();

        if (os_log_type_enabled(v39, v40))
        {
          v94 = v0[33];
          v42 = v0[17];
          v41 = v0[18];
          v43 = OUTLINED_FUNCTION_45_19();
          v44 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v43 = 136446722;
          OUTLINED_FUNCTION_17_5();
          *(v43 + 4) = sub_2166A85FC(0xD000000000000014, v45, &v97);
          *(v43 + 12) = 2082;
          OUTLINED_FUNCTION_5_64();
          v46 = MEMORY[0x21CE9F490](v42, v41);
          v54 = OUTLINED_FUNCTION_27_28(v46, v47, v48, v49, v50, v51, v52, v53, v83, v85, v87, v89, v91, v94, v97, v98, v99);

          *(v43 + 14) = v54;
          *(v43 + 22) = 2114;
          *(v43 + 24) = v38;
          *v44 = v95;
          v55 = v38;
          _os_log_impl(&dword_216679000, v39, v40, "💬 %{public}s placement=%{public}s: %{public}@", v43, 0x20u);
          sub_2166997CC(v44, &qword_27CABF880);
          OUTLINED_FUNCTION_6();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        v56 = v0[31];
        v58 = v0[17];
        v57 = v0[18];
        sub_217007654();
        swift_allocObject();
        v96 = v38;
        v59 = sub_217007644();
        sub_217007634();
        type metadata accessor for PopoverProvider.Popover();
        v60 = swift_allocObject();
        v60[3] = v58;
        v60[4] = v57;
        v60[2] = v59;
        *(v56 + 16) = v60;
        sub_21700DF14();

        v61 = *(v56 + 16);
        if (v61)
        {
          v62 = *(v61 + 16);
        }

        else
        {
          v62 = 0;
        }

        v63 = v0[30];
        v92 = v0[24];
        v64 = v0[22];
        v88 = v0[31];
        v90 = v0[23];
        v65 = v0[21];
        v84 = v0[25];
        v86 = v0[20];
        v66 = v0[19];
        sub_216A5612C(v62);

        sub_216A56778(v67);

        sub_217007704();

        sub_2166AF2EC();
        v68 = sub_21700EE84();
        v0[12] = v68;
        sub_21700EE64();
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
        OUTLINED_FUNCTION_13_35(&qword_280E484A0, &qword_27CAB9E80);
        OUTLINED_FUNCTION_9_51();
        sub_216A595CC(v73, v74);
        sub_217007E54();
        sub_2166997CC(v66, &qword_27CABE1F0);

        (*(v65 + 8))(v64, v86);
        OUTLINED_FUNCTION_65_0();
        v75 = swift_allocObject();
        *(v75 + 16) = v63;
        *(v75 + 24) = v88;
        OUTLINED_FUNCTION_35_2(&qword_280E48548, &qword_27CAB9E88);

        sub_217007E84();

        (*(v92 + 8))(v84, v90);
        swift_getKeyPath();
        v0[13] = v63;
        OUTLINED_FUNCTION_0_124();
        sub_216A595CC(v76, v77);
        sub_2170066D4();

        v0[14] = v63;
        swift_getKeyPath();
        sub_2170066F4();

        OUTLINED_FUNCTION_120_0();
        sub_217007D24();
        swift_endAccess();

        v0[15] = v63;
        swift_getKeyPath();
        sub_2170066E4();

        goto LABEL_52;
      }

      v12 = sub_216A53B88();
      if (v12 && (v14 = *(v12 + 24), v13 = *(v12 + 32), sub_21700DF14(), , v13))
      {
        v15 = v0[18];
        if (v15)
        {
          if (v14 != v0[17] || v13 != v15)
          {
            v17 = sub_21700F7D4();

            if (v17)
            {
              goto LABEL_41;
            }

LABEL_34:

            if (qword_280E416F8 != -1)
            {
              OUTLINED_FUNCTION_0_3();
            }

            v18 = sub_217007CA4();
            OUTLINED_FUNCTION_29_2(v18, qword_280E73D20);
            sub_21700DF14();

            v19 = sub_217007C84();
            v20 = sub_21700EDA4();

            if (os_log_type_enabled(v19, v20))
            {
              v93 = v0[30];
              v22 = v0[17];
              v21 = v0[18];
              v23 = OUTLINED_FUNCTION_45_19();
              v97 = swift_slowAlloc();
              *v23 = 136446722;
              OUTLINED_FUNCTION_17_5();
              *(v23 + 4) = sub_2166A85FC(0xD000000000000014, v24, &v97);
              *(v23 + 12) = 2082;
              OUTLINED_FUNCTION_5_64();
              v25 = MEMORY[0x21CE9F490](v22, v21);
              v33 = OUTLINED_FUNCTION_27_28(v25, v26, v27, v28, v29, v30, v31, v32, v83, v85, v87, v89, v91, v93, v97, v98, v99);

              *(v23 + 14) = v33;
              *(v23 + 22) = 2082;
              v34 = sub_216A53B88();
              if (v34)
              {
                v36 = *(v34 + 24);
                v35 = *(v34 + 32);
                sub_21700DF14();
              }

              else
              {
                v36 = 0;
                v35 = 0;
              }

              v0[10] = v36;
              v0[11] = v35;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC178);
              v78 = sub_21700E594();
              v80 = sub_2166A85FC(v78, v79, &v97);

              *(v23 + 24) = v80;
              _os_log_impl(&dword_216679000, v19, v20, "💬 %{public}s cannot make request for %{public}s while %{public}s is active", v23, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_6();
            }

            else
            {
            }

            goto LABEL_51;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (!v0[18])
        {
LABEL_40:

          goto LABEL_41;
        }

        sub_21700DF14();
      }

      goto LABEL_34;
    }
  }

  else if (!v9)
  {
LABEL_28:

LABEL_51:

    goto LABEL_52;
  }

  goto LABEL_18;
}

_BYTE *sub_216A556D0(_BYTE *result)
{
  if (*result == 1)
  {
    swift_beginAccess();

    return sub_216A53C38(v1);
  }

  return result;
}

uint64_t sub_216A5572C()
{
  v1 = v0;
  OUTLINED_FUNCTION_143();
  v2 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_65_0();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_216A59924;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E48);
  sub_2166D9530(&qword_280E48510, &qword_27CAB9E48);
  sub_217007E84();

  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  v6 = sub_216A595CC(v4, v5);
  OUTLINED_FUNCTION_37_26(v6, v7, v8, v9, v10, v11, v12, v13, v23, v1);
  sub_2170066D4();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_37_26(KeyPath, v15, v16, v17, v18, v19, v20, v21, v24, v1);
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0();
  sub_217007D24();
  swift_endAccess();

  swift_getKeyPath();
  sub_2170066E4();
}

uint64_t sub_216A55918(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v43) = a4;
  v42 = a3;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E88);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = a1[1];
  v44 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v41 = v12;
    if (!sub_216A53B88())
    {
      goto LABEL_19;
    }

    v40 = v7;

    sub_21700DF14();
    v19 = sub_216A53B88();
    if (v19)
    {
      v21 = *(v19 + 24);
      v20 = *(v19 + 32);
      sub_21700DF14();

      if (v16)
      {
        if (!v20)
        {
          goto LABEL_15;
        }

        if (v44 != v21 || v20 != v16)
        {
          v23 = sub_21700F7D4();

          v7 = v40;
          if ((v23 & 1) == 0)
          {
          }

LABEL_19:
          if (sub_216A53B88())
          {

            v24 = sub_2170076F4();

            v25 = sub_2167B3508(v24);
            v27 = v26;
            if (!v45)
            {
              if (v26)
              {

                if ((v43 & 1) != 0 || v42 != 2)
                {
                  sub_216A53C38(0);
                }
              }
            }

            v28 = v25;
            v43 = v13;
          }

          else
          {
            v43 = v13;
            if (!v45)
            {
            }

            v27 = 0;
            v28 = 0;
          }

          v29 = sub_216A59684(v45);
          if (v27)
          {
            if (v30)
            {
              if (v28 != v29 || v27 != v30)
              {
                v42 = v9;
                v32 = sub_21700F7D4();

                if (v32)
                {
                }

                goto LABEL_41;
              }

LABEL_15:
            }

            v42 = v9;
          }

          else
          {
            if (!v30)
            {
            }

            v42 = v9;
          }

LABEL_41:
          sub_217007654();
          swift_allocObject();
          v45 = v45;
          v33 = sub_217007644();
          sub_217007634();

          sub_216A5612C(v34);
          sub_216A56778(v33);

          sub_217007704();

          sub_2166AF2EC();
          v35 = sub_21700EE84();
          v46 = v35;
          v36 = sub_21700EE64();
          __swift_storeEnumTagSinglePayload(v7, 1, 1, v36);
          sub_2166D9530(&qword_280E484A0, &qword_27CAB9E80);
          sub_216A595CC(&qword_280E29CD8, sub_2166AF2EC);
          sub_217007E54();
          sub_2166997CC(v7, &qword_27CABE1F0);

          (*(v42 + 8))(v11, v8);
          v37 = swift_allocObject();
          v38 = v44;
          v37[2] = v18;
          v37[3] = v38;
          v37[4] = v16;
          v37[5] = v33;
          sub_2166D9530(&qword_280E48548, &qword_27CAB9E88);
          sub_21700DF14();

          v39 = v41;
          sub_217007E84();

          (*(v43 + 8))(v15, v39);
          swift_getKeyPath();
          v46 = v18;
          sub_216A595CC(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager);
          sub_2170066D4();

          v46 = v18;
          swift_getKeyPath();
          sub_2170066F4();

          swift_beginAccess();
          sub_217007D24();
          swift_endAccess();

          v46 = v18;
          swift_getKeyPath();
          sub_2170066E4();
        }

LABEL_18:
        v7 = v40;
        goto LABEL_19;
      }

      if (v20)
      {
        goto LABEL_15;
      }
    }

    else if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  return result;
}

_BYTE *sub_216A56074(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result == 1)
  {
    type metadata accessor for PopoverProvider.Popover();
    v8 = swift_allocObject();
    v8[3] = a3;
    v8[4] = a4;
    v8[2] = a5;
    sub_21700DF14();

    return sub_216A53C38(v8);
  }

  return result;
}

void sub_216A5612C(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E58);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E60);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E68);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  v21 = MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  if (a1)
  {
    v46 = v21;
    v47 = v22;
    v45 = v24;

    v44 = v14;
    v48 = a1;
    sub_217007684();
    sub_2166AF2EC();
    v25 = sub_21700EE84();
    v49[0] = v25;
    sub_21700EE64();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_13_35(&qword_280E48488, &qword_27CAB9E58);
    OUTLINED_FUNCTION_9_51();
    sub_216A595CC(v30, v31);
    sub_217007E54();
    sub_2166997CC(v7, &qword_27CABE1F0);

    (*(v10 + 8))(v13, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E70);
    OUTLINED_FUNCTION_35_2(&qword_280E48540, &qword_27CAB9E60);
    v33 = v44;
    v32 = v45;
    sub_217007E34();
    (*(v16 + 8))(v19, v33);
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    sub_2166D9530(&unk_280E485A0, &qword_27CAB9E68);
    v34 = v46;
    sub_217007E84();

    (*(v47 + 8))(v32, v34);
    swift_getKeyPath();
    v49[0] = v2;
    OUTLINED_FUNCTION_0_124();
    sub_216A595CC(v35, v36);
    OUTLINED_FUNCTION_17_40();
    sub_2170066D4();

    v49[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_40();
    sub_2170066F4();

    OUTLINED_FUNCTION_120_0();
    sub_217007D24();
    swift_endAccess();

    v49[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_40();
    sub_2170066E4();

LABEL_7:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v37 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v37, qword_280E73D20);
  v48 = sub_217007C84();
  v38 = sub_21700ED84();
  if (os_log_type_enabled(v48, v38))
  {
    v39 = OUTLINED_FUNCTION_96();
    v40 = OUTLINED_FUNCTION_45_19();
    v49[0] = v40;
    *v39 = 136446210;
    OUTLINED_FUNCTION_17_5();
    *(v39 + 4) = sub_2166A85FC(0xD000000000000014, v41, v49);
    _os_log_impl(&dword_216679000, v48, v38, "💬 %{public}s BubbleTipModel not ready", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26();
}

id sub_216A566E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_216A5990C(v2, v3);
}

uint64_t sub_216A56700(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_216A58B08(v1);
    }

    else
    {
      sub_216A56F88(v1);
    }
  }

  return result;
}

void sub_216A56778(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();

    sub_2170076A4();
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v1 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v1, qword_280E73D20);
    oslog = sub_217007C84();
    v2 = sub_21700ED84();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_96();
      v4 = OUTLINED_FUNCTION_45_19();
      v7 = v4;
      *v3 = 136446210;
      OUTLINED_FUNCTION_17_5();
      *(v3 + 4) = sub_2166A85FC(0xD000000000000016, v5, &v7);
      _os_log_impl(&dword_216679000, oslog, v2, "💬 %{public}s BubbleTipModel not ready", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }
}

uint64_t sub_216A56910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_21700DF14();

  sub_21700DF14();
  sub_21677E4D0();
}

uint64_t sub_216A56A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_216A56A48, 0, 0);
}

uint64_t sub_216A56A48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 32);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_216A56B58;

    return sub_2169FE3DC();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216A56B58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A56C5C()
{
  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_3();
  return v1();
}

uint64_t sub_216A56C94()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A56CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_21700DF14();

  sub_21700DF14();
  OUTLINED_FUNCTION_9_46();
  sub_21677E228();
}

uint64_t sub_216A56DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_216A56E0C, 0, 0);
}

uint64_t sub_216A56E0C()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_216A56EA8;

  return sub_2169FE3DC();
}

uint64_t sub_216A56EA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

void sub_216A56F88(void *a1)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_96();
    v6 = OUTLINED_FUNCTION_45_19();
    v19 = v6;
    *v5 = 136446210;
    OUTLINED_FUNCTION_17_5();
    *(v5 + 4) = sub_2166A85FC(0xD000000000000015, v7, &v19);
    _os_log_impl(&dword_216679000, v3, v4, "💬 %{public}s Popover bubble tip selected", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v8 = [a1 originalRequest];
  v9 = [a1 selectedActionIdentifier];
  sub_21700E514();

  v10 = OUTLINED_FUNCTION_108();
  v18 = sub_216A596E8(v10, v11, v8);

  if (v18 && [v18 style] == 2)
  {
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v12, v13, "💬 Closing popover bubble tip", v14, 2u);
      OUTLINED_FUNCTION_6();
    }

    sub_216A53C38(0);
  }

  else
  {
    v15 = sub_217007C84();
    v16 = sub_21700EDA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_216679000, v15, v16, "💬 Action not supported for popover bubble tips", v17, 2u);
      OUTLINED_FUNCTION_6();
    }
  }
}

void sub_216A57208(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = v1;
  v20 = sub_216A54194();
  v21 = OUTLINED_FUNCTION_116();
  sub_216935304(v21, v22, v20);

  v23 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v23))
  {
    sub_2166997CC(v7, &qword_27CAC09A0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v40);
  }

  else
  {
    v38 = v18;
    v39 = v17;
    v27 = v19;
    sub_216A59614(&v7[*(v23 + 20)], v11);
    sub_2166997CC(v7, &qword_27CAC09A0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v40) != 1)
    {
      v37 = v13;
      v28 = v16;
      v29 = v16;
      v30 = v40;
      (*(v13 + 32))(v29, v11, v40);
      sub_21700E9D4();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v23);
      swift_getKeyPath();
      v41 = v27;
      OUTLINED_FUNCTION_0_124();
      sub_216A595CC(v34, v35);
      sub_21700DF14();
      OUTLINED_FUNCTION_41_17();
      sub_2170066D4();

      v41 = v27;
      swift_getKeyPath();
      OUTLINED_FUNCTION_41_17();
      sub_2170066F4();

      OUTLINED_FUNCTION_120_0();
      sub_216A8BE68();
      swift_endAccess();
      v41 = v27;
      swift_getKeyPath();
      sub_2170066E4();

      (*(v37 + 8))(v28, v30);
      goto LABEL_5;
    }
  }

  sub_2166997CC(v11, &qword_27CAC0988);
LABEL_5:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A57580()
{
  OUTLINED_FUNCTION_33();
  v1[16] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v2);
  v1[17] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0);
  OUTLINED_FUNCTION_36(v3);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A5764C()
{
  v74 = v0;
  v1 = sub_216A53B88();
  v0[20] = v1;
  if (!v1)
  {

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73D20);

  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_45_19();
    v71 = v7;
    *v6 = 136446210;
    OUTLINED_FUNCTION_5_64();
    v8 = MEMORY[0x21CE9F490]();
    v16 = OUTLINED_FUNCTION_27_28(v8, v9, v10, v11, v12, v13, v14, v15, v65, v66, v67, v68, v69, v70, v71, v72, v73);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_216679000, v4, v5, "💬 Popover %{public}s is present, dismissing it to allow the sheet to present.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v17 = v0[19];
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  sub_21700DF14();
  v20 = sub_216A54194();
  sub_216935304(v18, v19, v20);

  v21 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v21);
  v23 = v0[19];
  if (EnumTagSinglePayload)
  {
    sub_2166997CC(v0[19], &qword_27CAC09A0);
LABEL_8:
    v24 = v0[18];
    v25 = v0[16];
    *v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v21);
    swift_getKeyPath();
    v0[13] = v25;
    OUTLINED_FUNCTION_0_124();
    sub_216A595CC(v30, v31);
    sub_21700DF14();
    sub_2170066D4();

    v0[14] = v25;
    swift_getKeyPath();
    sub_2170066F4();

    OUTLINED_FUNCTION_120_0();
    sub_216A8BE68();
    swift_endAccess();
    v0[15] = v25;
    swift_getKeyPath();
    sub_2170066E4();

    sub_21700EA74();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v25;
    v36[5] = v2;

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();
    v38 = v37;
    v0[23] = v37;
    v39 = *(v2 + 24);
    v40 = *(v2 + 32);
    v41 = sub_216A54330(v0 + 2);
    v42 = sub_216B738CC(v0 + 6, v39, v40);
    v44 = v43;
    if (!__swift_getEnumTagSinglePayload(v43, 1, v21))
    {
      *v44 = v38;
    }

    (v42)(v0 + 6, 0);
    (v41)(v0 + 2, 0);
    v45 = swift_task_alloc();
    v0[24] = v45;
    *v45 = v0;
    v45[1] = sub_216A57DF8;
    goto LABEL_18;
  }

  v48 = *v23;
  v0[21] = *v23;

  sub_2166997CC(v23, &qword_27CAC09A0);
  if (!v48)
  {
    goto LABEL_8;
  }

  v49 = sub_217007C84();
  v50 = sub_21700ED84();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v51 = 136315394;
    OUTLINED_FUNCTION_17_5();
    *(v51 + 4) = sub_2166A85FC(0xD00000000000001ELL, v52, &v71);
    *(v51 + 12) = 2082;
    OUTLINED_FUNCTION_5_64();
    v53 = MEMORY[0x21CE9F490]();
    v61 = OUTLINED_FUNCTION_27_28(v53, v54, v55, v56, v57, v58, v59, v60, v65, v66, v67, v68, v69, v70, v71, v72, v73);

    *(v51 + 14) = v61;
    _os_log_impl(&dword_216679000, v49, v50, "💬 %s Popover %{public}s is already dismissing.", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v62 = swift_task_alloc();
  v0[22] = v62;
  *v62 = v0;
  v62[1] = sub_216A57C98;
LABEL_18:
  OUTLINED_FUNCTION_59();

  return MEMORY[0x282200460]();
}

uint64_t sub_216A57C98()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A57D7C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A57DF8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A57EDC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A57F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_216A57F80, 0, 0);
}

uint64_t sub_216A57F80()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_216A5806C;
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_216A5806C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A58168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = sub_216A54330(v22);
  v12 = sub_216B738CC(v21, v9, v10);
  v14 = v13;
  v15 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v16 = *(v15 + 20);
    sub_2166997CC(v14 + v16, &qword_27CAC0988);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998);
    (*(*(v17 - 8) + 16))(v14 + v16, a1, v17);
    __swift_storeEnumTagSinglePayload(v14 + v16, 0, 1, v17);
  }

  (v12)(v21, 0);
  (v11)(v22, 0);
  sub_216A53C38(0);
  v18 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a2;

  sub_21677BBA0();
}

uint64_t sub_216A583B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_21700F524();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A58520, 0, 0);
}

uint64_t sub_216A58520()
{
  sub_21700F984();
  sub_21700F854();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_216A585F4;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37();

  return sub_216A59004();
}

uint64_t sub_216A585F4()
{
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_116();
  v5(v4);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216A58774()
{
  v32 = v0;
  v1 = v0;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);

  v3 = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_45_19();
    v31[0] = v7;
    *v6 = 136446210;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    v31[1] = 46;
    v31[2] = 0xE100000000000000;
    MEMORY[0x21CE9F490](v8, v9);
    v10 = sub_2166A85FC(46, 0xE100000000000000, v31);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_216679000, v3, v4, "💬 Popover %{public}s dismiss timed out. Forcing resume.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v11 = v0[14];
  v12 = v0[8];
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  v15 = sub_216A54194();
  sub_216935304(v13, v14, v15);

  v16 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v16);
  v18 = v1[14];
  if (EnumTagSinglePayload || (v19 = v1[10], v20 = *(v16 + 20), __swift_getEnumTagSinglePayload(v18 + v20, 1, v19)))
  {
    sub_2166997CC(v18, &qword_27CAC09A0);
  }

  else
  {
    v30 = v1[11];
    v29 = v1[12];
    (*(v30 + 16))(v29, v18 + v20, v19);
    sub_2166997CC(v18, &qword_27CAC09A0);
    sub_21700E9D4();
    (*(v30 + 8))(v29, v19);
  }

  v21 = v1[9];
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v16);
  swift_getKeyPath();
  v1[5] = v21;
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v25, v26);
  sub_21700DF14();
  OUTLINED_FUNCTION_15_40();
  sub_2170066D4();

  v1[6] = v21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_40();
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0();
  sub_216A8BE68();
  swift_endAccess();
  v1[7] = v21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_40();
  sub_2170066E4();

  v27 = v1[1];

  return v27();
}

void sub_216A58B08(void *a1)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
  v3 = a1;
  oslog = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_96();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_216679000, oslog, v4, "💬 %{public}@", v5, 0xCu);
    sub_2166997CC(v6, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_216A58C38()
{
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v0, v1);
  return sub_2170066C4();
}

BOOL sub_216A58CE0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for PopoverProvider.Popover();
    v3 = static PopoverProvider.Popover.== infix(_:_:)(a1, a2);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_216A58D3C()
{

  v1 = OBJC_IVAR____TtC7MusicUI30PopoverBubbleTipRequestManager___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216A58DC8()
{
  sub_216A58D3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216A58E48()
{
  result = sub_217006714();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_216A58F50()
{
  sub_21668A338(319, &qword_280E29DC0, &qword_27CAC0990);
  if (v0 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E29DD0, &qword_27CAC0998);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216A59004()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_21700F514();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  v13 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216A590F8()
{
  v1 = v0[9];
  v2 = sub_21700F524();
  v3 = sub_216A595CC(qword_27CAC0598, MEMORY[0x277D85928]);
  OUTLINED_FUNCTION_116();
  sub_21700F834();
  sub_216A595CC(&qword_27CAC09A8, MEMORY[0x277D858F8]);
  sub_21700F534();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_108();
  v5(v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_216A59280;
  v7 = v0[11];

  return MEMORY[0x2822008C8](v7, v0 + 2, v2, v3);
}

uint64_t sub_216A59280()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v14();
  }
}

uint64_t sub_216A59420()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A59484()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_85(v3);

  return sub_216A57F5C(v5, v6, v7, v8, v1);
}

uint64_t sub_216A5952C()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_85(v3);

  return sub_216A583B4(v5, v6, v7, v8, v1);
}

uint64_t sub_216A595CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A59614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A59684(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

id sub_216A596E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  v5 = [a3 locateActionWithIdentifier_];

  return v5;
}

uint64_t sub_216A5974C()
{
  OUTLINED_FUNCTION_31_31();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_85(v5);

  return sub_216A56DE8(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216A59854()
{
  OUTLINED_FUNCTION_31_31();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_85(v5);

  return sub_216A56A20(v7, v8, v9, v10, v1, v3, v2);
}

id sub_216A5990C(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_21671A778(a1);
  }

  return a1;
}

uint64_t sub_216A599DC()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_31_31();
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_85(v4);

  return sub_216A548A8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_216A59A7C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_216A59A98(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_21677A404(a1, a2);
  sub_216CA9EA0(&unk_21703A478, v5);
}

uint64_t sub_216A59B6C()
{
  swift_allocObject();
  swift_weakInit();
  sub_216D07BD4();
  v1 = v0;

  return v1;
}

uint64_t sub_216A59BF0()
{
  sub_217006A64();
  v1 = OBJC_IVAR____TtC7MusicUI14ResponseMapper_queue;
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  *(v0 + v1) = sub_216CA9FD4();
  return v0;
}

uint64_t sub_216A59C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x2822009F8](sub_216A59CF0, v5, v4);
}

uint64_t sub_216A59CF0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_216A59DF4;
    v4 = v0[9];
    v3 = v0[10];

    return MEMORY[0x2821898F8](v4, v3);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216A59DF4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v2[16] = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_216A59F68;
  }

  else
  {
    swift_endAccess();

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_216A59F10;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216A59F10()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A59F68()
{
  v1 = *(v0 + 128);
  swift_endAccess();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A59FF0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_217006A74();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_21700EA34();
  v2[13] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_216A5A0E4, v5, v4);
}

uint64_t sub_216A5A0E4()
{
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC7MusicUI14ResponseMapper_request;
    swift_beginAccess();
    (*(v4 + 16))(v3, v2 + v6, v5);

    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_216A5A25C;
    v8 = v0[8];

    return MEMORY[0x282189910](v8);
  }

  else
  {

    v9 = v0[8];
    v10 = sub_217006A94();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);

    OUTLINED_FUNCTION_3();

    return v11();
  }
}

uint64_t sub_216A5A25C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_216A5A47C;
  }

  else
  {
    v8 = sub_216A5A3F4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216A5A3F4()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 64);
  v2 = sub_217006A94();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A5A47C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A5A4E0()
{
  v1 = OBJC_IVAR____TtC7MusicUI14ResponseMapper_request;
  v2 = sub_217006A74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ResponseMapper()
{
  result = qword_27CAC09B8;
  if (!qword_27CAC09B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A5A5E0()
{
  result = sub_217006A74();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A5A67C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2169D1708;

  return sub_216A59C54(v2, v3, v4);
}

uint64_t sub_216A5A724()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2169D1708;

  return sub_216A59FF0(v3, v0);
}

uint64_t sub_216A5A7BC()
{
  MEMORY[0x21CE9EB50]();
  v0 = sub_21700DF14();

  swift_getKeyPath();
  sub_216A5C228();
  sub_216A5C27C();
  v1 = sub_21700DF24();

  swift_getKeyPath();
  sub_216A5C2D0();
  v2 = sub_21700DF24();

  swift_getKeyPath();
  sub_216A5C324();
  v3 = sub_21700DF24();

  swift_getKeyPath();
  sub_216A5C378();
  v4 = OUTLINED_FUNCTION_8_51();

  swift_getKeyPath();
  sub_216A5C3CC();
  v5 = OUTLINED_FUNCTION_8_51();

  swift_getKeyPath();
  sub_216A5C420();
  v6 = OUTLINED_FUNCTION_8_51();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21703A490;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = MEMORY[0x21CE9ED20]();

  return v8;
}

uint64_t sub_216A5A9F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002ELL && 0x8000000217087240 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5AA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5A9F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5AABC(uint64_t a1)
{
  v2 = sub_216A5C508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5AAF8(uint64_t a1)
{
  v2 = sub_216A5C508();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216A5AB34(_BYTE *a1@<X8>)
{
  sub_216A5BD90();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_216A5ABD8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09F0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_39(v6, v7);
  sub_216A5C5D8();
  sub_21700F964();
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9);
    OUTLINED_FUNCTION_4_70(&qword_280E2A208);
    OUTLINED_FUNCTION_9_52();
    (*(v4 + 8))(v1, v2);
    v8 = (v11 == 2) | v11;
  }

  return v8 & 1;
}

uint64_t sub_216A5AD70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x8000000217087270 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5AD70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5AE3C(uint64_t a1)
{
  v2 = sub_216A5C5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5AE78(uint64_t a1)
{
  v2 = sub_216A5C5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5AEB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216A5ABD8();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_216A5AF2C()
{
  sub_21700D0C4();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_216A5AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  a10 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A08);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A10);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  OUTLINED_FUNCTION_14_39(v25, v25[3]);
  sub_216A5C704();
  sub_21700F964();
  if (!v20)
  {
    v34 = a10;
    sub_216A5C758(&qword_280E2A210, &qword_27CAC0A08, &unk_21703A8D8, sub_216A5C7D4);
    sub_21700F6A4();
    (*(v30 + 8))(v33, v28);
    sub_216A5C888(v21, v34);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A5B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09F8);
  OUTLINED_FUNCTION_1();
  a10 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = sub_21700D0C4();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A5C62C(v26, v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_216A5C69C(v32);
  }

  else
  {
    (*(v35 + 32))(v38, v32, v33);
    OUTLINED_FUNCTION_14_39(v24, v24[3]);
    sub_216A5C704();
    sub_21700F974();
    sub_216A5C94C(&qword_27CAC0A00, MEMORY[0x277D21BD0]);
    sub_21700F764();
    (*(a10 + 8))(v20, v27);
    (*(v35 + 8))(v38, v33);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A5B388(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002170872A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5B388(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5B454(uint64_t a1)
{
  v2 = sub_216A5C704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5B490(uint64_t a1)
{
  v2 = sub_216A5C704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5B500()
{
  sub_217006224();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216A5B53C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A28);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_14_39(a1, a1[3]);
  sub_216A5C8F8();
  result = sub_21700F964();
  if (!v1)
  {
    sub_217006224();
    OUTLINED_FUNCTION_3_81();
    sub_216A5C94C(v9, v10);
    sub_21700F644();
    return (*(v6 + 8))(v2, v4);
  }

  return result;
}

uint64_t sub_216A5B698(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A18);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_14_39(a2, a2[3]);
  sub_216A5C8F8();
  sub_21700F974();
  sub_217006224();
  OUTLINED_FUNCTION_3_81();
  sub_216A5C94C(v9, v10);
  sub_21700F704();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216A5B7EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000002170872C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5B88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5B7EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5B8B8(uint64_t a1)
{
  v2 = sub_216A5C8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5B8F4(uint64_t a1)
{
  v2 = sub_216A5C8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5B96C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A38);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_0();
  v6 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_39(v6, v7);
  sub_216A5C994();
  sub_21700F964();
  if (!v0)
  {
    sub_21700F614();
    (*(v4 + 8))(v1, v2);
  }

  return OUTLINED_FUNCTION_90();
}

void sub_216A5BA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A30);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_14_39(v23, v23[3]);
  sub_216A5C994();
  sub_21700F974();
  sub_21700F6D4();
  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A5BBAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000002170872E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5BBAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5BC78(uint64_t a1)
{
  v2 = sub_216A5C994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5BCB4(uint64_t a1)
{
  v2 = sub_216A5C994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5BCF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A5B96C();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_216A5BD90()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_2();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  sub_21700F964();
  if (!v0)
  {
    v11 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_4_70(&qword_280E2A208);
    OUTLINED_FUNCTION_9_52();
    (*(v9 + 8))(v1, v7);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A5BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  a10 = v20;
  v26 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v24();
  sub_21700F974();
  sub_21700F734();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A5C03C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000217087300 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5C0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5C03C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5C108(uint64_t a1)
{
  v2 = sub_216A5C9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5C144(uint64_t a1)
{
  v2 = sub_216A5C9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216A5C180(_BYTE *a1@<X8>)
{
  sub_216A5BD90();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

unint64_t sub_216A5C228()
{
  result = qword_280E46608;
  if (!qword_280E46608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46608);
  }

  return result;
}

unint64_t sub_216A5C27C()
{
  result = qword_280E46650;
  if (!qword_280E46650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46650);
  }

  return result;
}

unint64_t sub_216A5C2D0()
{
  result = qword_280E46670;
  if (!qword_280E46670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46670);
  }

  return result;
}

unint64_t sub_216A5C324()
{
  result = qword_280E466B0;
  if (!qword_280E466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466B0);
  }

  return result;
}

unint64_t sub_216A5C378()
{
  result = qword_280E46610;
  if (!qword_280E46610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46610);
  }

  return result;
}

unint64_t sub_216A5C3CC()
{
  result = qword_280E46630;
  if (!qword_280E46630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46630);
  }

  return result;
}

unint64_t sub_216A5C420()
{
  result = qword_280E46690;
  if (!qword_280E46690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46690);
  }

  return result;
}

unint64_t sub_216A5C508()
{
  result = qword_280E46668;
  if (!qword_280E46668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46668);
  }

  return result;
}

unint64_t sub_216A5C55C()
{
  result = qword_280E29DD8;
  if (!qword_280E29DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29DD8);
  }

  return result;
}

unint64_t sub_216A5C5D8()
{
  result = qword_280E46688;
  if (!qword_280E46688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46688);
  }

  return result;
}

uint64_t sub_216A5C62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A5C69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A5C704()
{
  result = qword_280E466C8;
  if (!qword_280E466C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466C8);
  }

  return result;
}

uint64_t sub_216A5C758(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_216A5C7D4()
{
  result = qword_280E2A240;
  if (!qword_280E2A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF6F8);
    sub_216A5C94C(&unk_280E2A250, MEMORY[0x277D21BD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A240);
  }

  return result;
}

uint64_t sub_216A5C888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A5C8F8()
{
  result = qword_280E46628;
  if (!qword_280E46628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46628);
  }

  return result;
}

uint64_t sub_216A5C94C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216A5C994()
{
  result = qword_280E46648;
  if (!qword_280E46648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46648);
  }

  return result;
}

unint64_t sub_216A5C9E8()
{
  result = qword_280E466A8;
  if (!qword_280E466A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466A8);
  }

  return result;
}

uint64_t sub_216A5CA8C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10_4();
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

_BYTE *sub_216A5CAD8(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A5CB88()
{
  result = qword_27CAC0A50;
  if (!qword_27CAC0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A50);
  }

  return result;
}

unint64_t sub_216A5CBE0()
{
  result = qword_27CAC0A58;
  if (!qword_27CAC0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A58);
  }

  return result;
}

unint64_t sub_216A5CC38()
{
  result = qword_27CAC0A60;
  if (!qword_27CAC0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A60);
  }

  return result;
}

unint64_t sub_216A5CC90()
{
  result = qword_27CAC0A68;
  if (!qword_27CAC0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A68);
  }

  return result;
}

unint64_t sub_216A5CCE8()
{
  result = qword_27CAC0A70;
  if (!qword_27CAC0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A70);
  }

  return result;
}

unint64_t sub_216A5CD40()
{
  result = qword_27CAC0A78;
  if (!qword_27CAC0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A78);
  }

  return result;
}

unint64_t sub_216A5CD98()
{
  result = qword_280E46698;
  if (!qword_280E46698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46698);
  }

  return result;
}

unint64_t sub_216A5CDF0()
{
  result = qword_280E466A0;
  if (!qword_280E466A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466A0);
  }

  return result;
}

unint64_t sub_216A5CE48()
{
  result = qword_280E46638;
  if (!qword_280E46638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46638);
  }

  return result;
}

unint64_t sub_216A5CEA0()
{
  result = qword_280E46640;
  if (!qword_280E46640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46640);
  }

  return result;
}

unint64_t sub_216A5CEF8()
{
  result = qword_280E46618;
  if (!qword_280E46618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46618);
  }

  return result;
}

unint64_t sub_216A5CF50()
{
  result = qword_280E46620;
  if (!qword_280E46620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46620);
  }

  return result;
}

unint64_t sub_216A5CFA8()
{
  result = qword_280E466B8;
  if (!qword_280E466B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466B8);
  }

  return result;
}

unint64_t sub_216A5D000()
{
  result = qword_280E466C0;
  if (!qword_280E466C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466C0);
  }

  return result;
}

unint64_t sub_216A5D058()
{
  result = qword_280E46678;
  if (!qword_280E46678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46678);
  }

  return result;
}

unint64_t sub_216A5D0B0()
{
  result = qword_280E46680;
  if (!qword_280E46680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46680);
  }

  return result;
}

unint64_t sub_216A5D108()
{
  result = qword_280E46658;
  if (!qword_280E46658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46658);
  }

  return result;
}

unint64_t sub_216A5D160()
{
  result = qword_280E46660;
  if (!qword_280E46660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46660);
  }

  return result;
}

void sub_216A5D1D4()
{
  type metadata accessor for InternalBootstrap();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PresentationStack();
    swift_getWitnessTable();
    sub_2170086B4();
    if (v1 <= 0x3F)
    {
      sub_216A5D30C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216A5D30C()
{
  if (!qword_27CAC0B08)
  {
    sub_217008034();
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC0B08);
    }
  }
}

uint64_t sub_216A5D3A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  (*(v6 + 16))(&v15 - v8, &v1[*(v3 + 520)], v4);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    result = (*(v6 + 8))(v9, v4);
    v11 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    v10 = *v9;
    v11 = *(v9 + 2);
    v15 = *(v9 + 24);
    v16 = v10;

    v14 = v15;
    v13 = v16;
  }

  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_216A5D50C()
{
  v1 = *v0;
  v2 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, &v0[*(v1 + 520)], v2);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v4 + 8))(v7, v2);
    return 0;
  }

  else
  {
    v8 = *(v7 + 5);
  }

  return v8;
}

uint64_t sub_216A5D658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = sub_216A5D728();
  a2[2] = v3;
  v4 = *(type metadata accessor for PresentationSourceModifier() + 56);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216A5D728()
{
  OUTLINED_FUNCTION_1_105();
  swift_getWitnessTable();

  return sub_217008684();
}

uint64_t sub_216A5D798()
{
  type metadata accessor for PresentationStack();
  OUTLINED_FUNCTION_1_105();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_42();

  return MEMORY[0x282130E30](v0, v1, v2, v3);
}

uint64_t sub_216A5D7FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a1;
  v166 = a3;
  v176 = sub_217008034();
  OUTLINED_FUNCTION_1();
  v165 = v4;
  MEMORY[0x28223BE20](v5);
  v164 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = *(a2 - 1);
  v180 = *(v187 + 64);
  MEMORY[0x28223BE20](v7);
  v167 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v182 = &v132 - v10;
  OUTLINED_FUNCTION_6_55();
  swift_getWitnessTable();
  v11 = sub_2170097A4();
  v12 = a2[5];
  v183 = a2[3];
  v13 = v183;
  v14 = v12;
  v181 = v12;
  v15 = type metadata accessor for PresentationItem();
  v177 = a2;
  *&v16 = a2[4];
  *&v17 = a2[2];
  *(&v17 + 1) = v13;
  *(&v16 + 1) = v14;
  v188 = v17;
  v189 = v16;
  *v200 = v16;
  v199 = v17;
  v18 = type metadata accessor for PresentationView();
  OUTLINED_FUNCTION_7_31();
  v19 = v11;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_82();
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_125();
  v22 = swift_getWitnessTable();
  *&v199 = v19;
  v23 = v19;
  v179 = v19;
  *(&v199 + 1) = v15;
  *v200 = v18;
  v24 = v18;
  *&v200[8] = WitnessTable;
  v25 = WitnessTable;
  v145 = WitnessTable;
  *&v200[16] = v21;
  v201 = v22;
  v26 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v154 = *(OpaqueTypeMetadata2 - 8);
  v178 = OpaqueTypeMetadata2 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  v169 = v29;
  *&v199 = v23;
  *(&v199 + 1) = v15;
  *v200 = v24;
  *&v200[8] = v25;
  *&v200[16] = v21;
  v201 = v26;
  v30 = OUTLINED_FUNCTION_16_36();
  *&v199 = OpaqueTypeMetadata2;
  v31 = OpaqueTypeMetadata2;
  v148 = OpaqueTypeMetadata2;
  *(&v199 + 1) = v15;
  *v200 = v24;
  v32 = v24;
  *&v200[8] = v30;
  v33 = v30;
  v146 = v30;
  *&v200[16] = v21;
  v168 = v21;
  v201 = v26;
  v34 = v26;
  v35 = swift_getOpaqueTypeMetadata2();
  v150 = *(v35 - 8);
  v152 = v35 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  v172 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
  v185 = v38;
  *&v199 = v31;
  *(&v199 + 1) = v15;
  *v200 = v32;
  *&v200[8] = v33;
  *&v200[16] = v21;
  v39 = v34;
  v201 = v34;
  v40 = OUTLINED_FUNCTION_16_36();
  v41 = sub_2167B2E14();
  v42 = sub_2167C4D74();
  *&v199 = v35;
  *(&v199 + 1) = MEMORY[0x277D837D0];
  *v200 = v32;
  v43 = v32;
  *&v200[8] = v38;
  *&v200[16] = v15;
  v201 = v40;
  v202 = v41;
  v203 = v39;
  v44 = v39;
  v204 = v42;
  v45 = swift_getOpaqueTypeMetadata2();
  v142 = *(v45 - 8);
  v143 = v45 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_105();
  v175 = v47;
  v153 = v35;
  *&v199 = v35;
  *(&v199 + 1) = MEMORY[0x277D837D0];
  v48 = v43;
  *v200 = v43;
  v49 = v185;
  *&v200[8] = v185;
  *&v200[16] = v15;
  v149 = v40;
  v201 = v40;
  v202 = v41;
  v203 = v44;
  v204 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v199 = v45;
  *(&v199 + 1) = MEMORY[0x277D837D0];
  *v200 = v48;
  v51 = v48;
  v140 = v15;
  v141 = v48;
  *&v200[8] = v49;
  *&v200[16] = v15;
  v201 = OpaqueTypeConformance2;
  v202 = v41;
  v203 = v44;
  v186 = v44;
  v204 = v42;
  v52 = swift_getOpaqueTypeMetadata2();
  v137 = *(v52 - 8);
  v138 = v52 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v160 = v45;
  v161 = v54;
  *&v199 = v45;
  *(&v199 + 1) = MEMORY[0x277D837D0];
  *v200 = v51;
  *&v200[8] = v185;
  *&v200[16] = v15;
  v155 = OpaqueTypeConformance2;
  v201 = OpaqueTypeConformance2;
  v173 = v42;
  v174 = v41;
  v202 = v41;
  v203 = v44;
  v204 = v42;
  v55 = OUTLINED_FUNCTION_16_36();
  v56 = sub_216A5F1E0();
  v163 = v52;
  *&v199 = v52;
  *(&v199 + 1) = v176;
  v159 = v55;
  *v200 = v55;
  v157 = v56;
  *&v200[8] = v56;
  v162 = swift_getOpaqueTypeMetadata2();
  v133 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v156 = &v132 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v158 = &v132 - v59;
  v60 = v177;
  v61 = v184;
  sub_216A5D798();
  v192 = v188;
  v193 = v189;
  swift_getKeyPath();
  type metadata accessor for PresentationStack();
  OUTLINED_FUNCTION_1_105();
  v139 = swift_getWitnessTable();
  sub_2170086A4();

  v134 = *(&v199 + 1);
  v135 = v199;
  v136 = *v200;
  v62 = v187;
  v63 = *(v187 + 16);
  v181 = v187 + 16;
  v183 = v63;
  v205 = v199;
  v206 = *v200;
  v64 = v182;
  v63(v182, v61, v60);
  v65 = *(v62 + 80);
  v66 = (v65 + 48) & ~v65;
  v170 = &v180[v66];
  v171 = v65;
  v67 = swift_allocObject();
  v68 = *(v62 + 32);
  v144 = v154;
  v147 = v150;
  v150 = v142;
  v152 = v137;
  v69 = v133;
  v70 = v189;
  *(v67 + 16) = v188;
  *(v67 + 32) = v70;
  v154 = v69;
  v71 = v177;
  v180 = v68;
  (v68)(v67 + v66, v64, v177);
  v187 = v62 + 32;
  v72 = v167;
  v73 = OUTLINED_FUNCTION_19_33();
  v74(v73);
  v75 = swift_allocObject();
  v76 = OUTLINED_FUNCTION_21_35(v75);
  (v68)(v77 + v66, v72, v71, v76);
  swift_checkMetadataState();
  v179 = swift_checkMetadataState();
  v178 = swift_checkMetadataState();
  OUTLINED_FUNCTION_14_40();
  v132 = v145;
  sub_21700A9F4();

  sub_216A5D798();
  v190 = v188;
  v191 = v189;
  swift_getKeyPath();
  sub_2170086A4();

  v142 = *(&v199 + 1);
  v143 = v199;
  v145 = *v200;
  v205 = v199;
  v206 = *v200;
  v78 = v182;
  v79 = OUTLINED_FUNCTION_19_33();
  v80(v79);
  v81 = swift_allocObject();
  v82 = OUTLINED_FUNCTION_21_35(v81);
  (v180)(v83 + v66, v78, v71, v82);
  v84 = v167;
  v183(v167, v61, v71);
  v85 = swift_allocObject();
  v86 = OUTLINED_FUNCTION_21_35(v85);
  v151 = (v65 + 48) & ~v65;
  (v180)(v87 + v151, v84, v71, v86);
  OUTLINED_FUNCTION_14_40();
  v136 = v146;
  v88 = v148;
  v89 = v169;
  sub_21700A5C4();

  (*(v144 + 8))(v89, v88);

  v90 = sub_216AF4554();

  if (!v90 || (sub_216A5D3A8(&v205), , !v206) || (v92 = *(&v205 + 1), v91 = v205, v208 = v206, sub_2166997CC(&v208, &qword_27CAB6BA0), v209 = v207, sub_2166997CC(&v209, &qword_27CABAA40), !v92))
  {

    v91 = 0;
    v92 = 0xE000000000000000;
  }

  *&v199 = v91;
  *(&v199 + 1) = v92;
  sub_216A5E98C(v71, &unk_282925658, &unk_282925680, sub_216A5F450, sub_216A5F510);

  v93 = sub_216AF4554();

  v194 = v93;
  MEMORY[0x28223BE20](v94);
  MEMORY[0x28223BE20](v95);
  v139 = v173;
  v138 = v186;
  v137 = v174;
  v136 = v149;
  v135 = v179;
  v134 = v185;
  v133 = v178;
  v132 = MEMORY[0x277D837D0];
  v96 = v153;
  v97 = v172;
  sub_21700A9A4();

  (*(v147 + 8))(v97, v96);

  v98 = sub_216AF457C();

  if (!v98 || (sub_216A5D3A8(&v199), , !*v200) || (v100 = *(&v199 + 1), v99 = v199, v210 = *v200, sub_2166997CC(&v210, &qword_27CAB6BA0), v211 = *&v200[8], sub_2166997CC(&v211, &qword_27CABAA40), !v100))
  {

    v99 = 0;
    v100 = 0xE000000000000000;
  }

  v169 = v100;
  v194 = v99;
  v195 = v100;
  v101 = v177;
  v102 = v184;
  sub_216A5E98C(v177, &unk_282925608, &unk_282925630, sub_216A5F420, sub_216A5F438);
  LODWORD(v172) = sub_216A5EB74();

  v103 = sub_216AF457C();

  v198 = v103;
  MEMORY[0x28223BE20](v104);
  MEMORY[0x28223BE20](v105);
  v139 = *(&v189 + 1);
  v138 = v173;
  v137 = v186;
  v136 = v174;
  v135 = v155;
  v134 = v179;
  v133 = v185;
  v132 = v178;
  v106 = v160;
  v107 = v161;
  v108 = v175;
  sub_21700A6C4();

  v109 = (*(v150 + 8))(v108, v106);
  v110 = v164;
  sub_216C0C9BC(v109, v111, v112, v113, v114, v115, v116, v117, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v118 = v182;
  v183(v182, v102, v101);
  v119 = swift_allocObject();
  v120 = OUTLINED_FUNCTION_21_35(v119);
  (v180)(v121 + v151, v118, v101, v120);
  v122 = v163;
  v123 = v176;
  v124 = v159;
  v125 = v157;
  OUTLINED_FUNCTION_10_4();
  v126 = v156;
  sub_21700AB14();

  (*(v165 + 8))(v110, v123);
  (*(v152 + 8))(v107, v122);
  v194 = v122;
  v195 = v123;
  v196 = v124;
  v197 = v125;
  OUTLINED_FUNCTION_0_12();
  v127 = swift_getOpaqueTypeConformance2();
  v128 = v158;
  v129 = v162;
  sub_2166C24DC(v126, v162, v127);
  v130 = *(v154 + 8);
  v130(v126, v129);
  sub_2166C24DC(v128, v129, v127);
  return (v130)(v128, v129);
}

uint64_t sub_216A5E930()
{
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier();

  sub_216AF4764();
}

uint64_t sub_216A5E98C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 16);
  v32 = v10;
  v33 = v12;
  v12(v11, v9);
  sub_21700EA34();
  v13 = sub_21700EA24();
  v14 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  v17 = a1[2];
  v30 = a1[3];
  v18 = v30;
  v31 = v17;
  *(v15 + 4) = v17;
  *(v15 + 5) = v18;
  v19 = a1[5];
  v29 = a1[4];
  *(v15 + 6) = v29;
  *(v15 + 7) = v19;
  v28 = *(v7 + 32);
  v28(&v15[v14], v11, a1);
  v33(v11, v34, a1);
  v20 = sub_21700EA24();
  v21 = swift_allocObject();
  *(v21 + 2) = v20;
  v23 = v30;
  v22 = v31;
  *(v21 + 3) = MEMORY[0x277D85700];
  *(v21 + 4) = v22;
  v24 = v28;
  v25 = v29;
  *(v21 + 5) = v23;
  *(v21 + 6) = v25;
  *(v21 + 7) = v19;
  v24(&v21[v14], v11, a1);
  sub_21700B0F4();
  return v38;
}

uint64_t sub_216A5EB74()
{

  v0 = sub_216AF457C();

  if (v0 && (sub_216A5D3A8(v9), , v10))
  {
    v2 = v9[0];
    v1 = v9[1];
    v16 = v10;
    sub_2166997CC(&v16, &qword_27CAB6BA0);
    v17 = v11;
    sub_2166997CC(&v17, &qword_27CABAA40);
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v3 = sub_216AF457C();

  if (v3)
  {
    sub_216A5D3A8(&v12);

    v4 = v13;
    if (v13)
    {
      v5 = v14;
      v3 = v15;
      v18 = v12;
      sub_21700DF14();
      sub_2166997CC(&v18, &qword_27CABAA40);
      v19 = v4;
      sub_2166997CC(&v19, &qword_27CAB6BA0);
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_216E1A4B8(v2, v1);

  if (v6)
  {
    v7 = sub_216E1A4B8(v5, v3);

    if (v7)
    {
      return 2;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_216A5ED18(void *a1, void *a2, uint64_t a3)
{
  nullsub_1(*a2, *a1, a3);
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationView();
  OUTLINED_FUNCTION_0_125();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v3, v4, v5);

  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v6, v7, v8);
}

uint64_t sub_216A5EE0C@<X0>(void *a1@<X8>)
{
  result = sub_216A5D3A8(&v12);
  v3 = v13;
  if (!v13)
  {
    v10 = 0;
    v8 = 0;
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v15[1] = v12;
  v15[0] = v14;
  sub_216A2841C(v15, v11);
  OUTLINED_FUNCTION_42();
  sub_2166997CC(v4, v5);
  v11[0] = v3;
  sub_2166997CC(v11, &qword_27CAB6BA0);
  OUTLINED_FUNCTION_42();
  result = sub_2166997CC(v6, v7);
  v8 = *(&v15[0] + 1);
  if (!*(&v15[0] + 1))
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = *&v15[0];
LABEL_7:
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  a1[3] = v9;
  return result;
}

uint64_t sub_216A5EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_217008034();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v13 = type metadata accessor for PresentationSourceModifier();
  sub_216C0C9BC(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  sub_216841E38();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_216A5F000@<X0>(uint64_t (*a1)(uint64_t)@<X7>, BOOL *a2@<X8>)
{
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier();

  v5 = a1(v4);

  if (v5)
  {
  }

  *a2 = v5 != 0;
  return result;
}

_BYTE *sub_216A5F084(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  if ((*result & 1) == 0)
  {
    OUTLINED_FUNCTION_8_52();
    type metadata accessor for PresentationSourceModifier();

    a9(0);

    sub_216AF4764();
  }

  return result;
}

uint64_t sub_216A5F114(uint64_t a1)
{
  v2 = sub_217008034();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_217008DB4();
}

unint64_t sub_216A5F1E0()
{
  result = qword_27CAC0B10;
  if (!qword_27CAC0B10)
  {
    sub_217008034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B10);
  }

  return result;
}

uint64_t sub_216A5F240()
{
  OUTLINED_FUNCTION_7_59();
  OUTLINED_FUNCTION_10_50(*(v0 + 80));
  return sub_216A5E930();
}

uint64_t sub_216A5F2B4(void *a1)
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_7_59();
  return sub_216A5ED18(a1, (v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80))), v3);
}

uint64_t sub_216A5F3A0()
{
  OUTLINED_FUNCTION_7_59();
  v1 = OUTLINED_FUNCTION_10_50(*(v0 + 80));

  return sub_216A5EEE4(v1, v2, v3, v4, v5);
}

_BYTE *sub_216A5F528(_BYTE *a1, void (*a2)(void))
{
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  OUTLINED_FUNCTION_7_59();
  return sub_216A5F084(a1, v2[2], v2[3], v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v5, v6, v7, v8, a2);
}

uint64_t sub_216A5F5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Content();
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  if (v8)
  {
    v9 = v1[3];
    if (v9)
    {

      v10 = v8;

      sub_216A5F848(v7, v10, v9, v6);
      v20[3] = sub_217006FE4();
      v20[4] = sub_216A65CBC(&qword_27CABDBF8, MEMORY[0x277D2AB38]);
      __swift_allocate_boxed_opaque_existential_1(v20);
      sub_216CCB8F0();
      v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B28) + 36));
      sub_2167B7D58(v20, (v11 + 2));
      type metadata accessor for MusicEntityAnnotationWrapper();
      sub_216A65CBC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
      *v11 = sub_217008CF4();
      v11[1] = v12;
      sub_216A65B20(v6, a1, type metadata accessor for Content);
      return __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    type metadata accessor for SocialGraphController();
    OUTLINED_FUNCTION_2_86();
    sub_216A65CBC(v16, v17);

    v18 = v8;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator();
    OUTLINED_FUNCTION_3_83();
    sub_216A65CBC(v14, v15);
  }

  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216A5F848@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30);
  sub_21700AEA4();
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  v9 = type metadata accessor for Content();
  v10 = *(v9 + 32);
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + *(v9 + 36);
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;

  v12 = a2;

  sub_216A5FBB0();
  if (v13)
  {
    v8 = sub_216F0706C();
  }

  *(a4 + 24) = v8;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_216A5F998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for UserSocialProfileCoordinator();
  OUTLINED_FUNCTION_3_83();
  sub_216A65CBC(v4, v5);
  v6 = sub_217008CF4();
  v8 = v7;
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_2_86();
  sub_216A65CBC(v9, v10);
  result = sub_217008CF4();
  *a2 = a1;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = result;
  a2[4] = v12;
  return result;
}

double sub_216A5FA58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_216A5F998(*a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_216A5FAE8(uint64_t a1)
{
  result = sub_216A5FB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A5FB10()
{
  result = qword_280E2EDC0[0];
  if (!qword_280E2EDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2EDC0);
  }

  return result;
}

uint64_t type metadata accessor for Content()
{
  result = qword_27CAC0B38;
  if (!qword_27CAC0B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A5FBB0()
{
  v0 = type metadata accessor for SocialProfileHorizontalLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_216DE9EC8();
  sub_2166A6F60(&v3[*(v1 + 60)], v6, &qword_27CAB6A00);
  sub_216A65F50(v3, type metadata accessor for SocialProfileHorizontalLockup);
  v7 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CAB6A00);
    return 0;
  }

  else
  {
    v8 = *(v6 + 3);
    sub_21700DF14();
    sub_216A65F50(v6, type metadata accessor for ContentDescriptor);
  }

  return v8;
}

uint64_t sub_216A5FD30@<X0>(uint64_t *a1@<X8>)
{
  v144 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v144);
  v145 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_21700D704();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_21700D284();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for MenuConfiguration(0);
  MEMORY[0x28223BE20](v143);
  v141 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v8 - 8);
  v130 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v10 - 8);
  v126 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v132 = &v120 - v13;
  v133 = sub_217005EF4();
  v128 = *(v133 - 1);
  MEMORY[0x28223BE20](v133);
  v124 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v125 = &v120 - v16;
  v17 = sub_217006FE4();
  v149 = *(v17 - 8);
  v150 = v17;
  MEMORY[0x28223BE20](v17);
  v148 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v19 - 8);
  v129 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v156 = &v120 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v23 - 8);
  v155 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v131 = &v120 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v120 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v120 - v30;
  v32 = type metadata accessor for SocialProfileHorizontalLockup();
  MEMORY[0x28223BE20](v32);
  v140 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v120 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v120 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v120 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v120 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v120 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8);
  MEMORY[0x28223BE20](v49 - 8);
  v152 = &v120 - v50;
  v151 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v151);
  v154 = &v120 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v127 = &v120 - v53;
  MEMORY[0x28223BE20](v54);
  v153 = &v120 - v55;
  sub_216A5FBB0();
  if (!v56)
  {
    goto LABEL_23;
  }

  v146 = a1;

  sub_216DE9EC8();
  sub_2166A6F60(&v48[v32[13]], v31, &qword_27CAB6A00);
  sub_216A65F50(v48, type metadata accessor for SocialProfileHorizontalLockup);
  sub_216DE9EC8();
  sub_2166A6F60(&v45[v32[12]], v156, &qword_27CAB6D60);
  sub_216A65F50(v45, type metadata accessor for SocialProfileHorizontalLockup);
  sub_216DE9EC8();
  v57 = &v42[v32[8]];
  v58 = *(v57 + 1);
  v123 = *v57;
  sub_21700DF14();
  sub_216A65F50(v42, type metadata accessor for SocialProfileHorizontalLockup);
  sub_216DE9EC8();
  v59 = &v39[v32[7]];
  v60 = *(v59 + 1);
  v122 = *v59;
  sub_21700DF14();
  sub_216A65F50(v39, type metadata accessor for SocialProfileHorizontalLockup);
  v61 = v148;
  sub_216CCB8F0();
  v62 = sub_217006FD4();
  (*(v149 + 8))(v61, v150);
  sub_216DE9EC8();
  v63 = v36[v32[10]];
  sub_216A65F50(v36, type metadata accessor for SocialProfileHorizontalLockup);
  v64 = v147;
  sub_2166A6F60(v31, v147, &qword_27CAB6A00);
  v150 = type metadata accessor for ContentDescriptor();
  v65 = v31;
  if (__swift_getEnumTagSinglePayload(v64, 1, v150) == 1)
  {

    sub_216697664(v156, &qword_27CAB6D60);
    sub_216697664(v31, &qword_27CAB6A00);
    sub_216697664(v64, &qword_27CAB6A00);
    v66 = 1;
    a1 = v146;
    v68 = v151;
    v67 = v152;
    goto LABEL_21;
  }

  v69 = *(v64 + 24);
  v70 = *(v64 + 32);
  sub_21700DF14();
  sub_216A65F50(v64, type metadata accessor for ContentDescriptor);
  v68 = v151;
  if (!v70)
  {

    sub_216697664(v156, &qword_27CAB6D60);
    sub_216697664(v65, &qword_27CAB6A00);
    v66 = 1;
    a1 = v146;
LABEL_14:
    v67 = v152;
    goto LABEL_21;
  }

  v120 = v69;
  v148 = v65;
  v149 = v58;
  v147 = v60;
  v71 = v131;
  sub_2166A6F60(v65, v131, &qword_27CAB6A00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v150);
  a1 = v146;
  v73 = v156;
  v121 = v62;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v71, &qword_27CAB6A00);
    v74 = v132;
    v75 = v133;
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v133);
  }

  else
  {
    v74 = v132;
    sub_2166A6F60(v71 + *(v150 + 24), v132, &qword_27CABA820);
    sub_216A65F50(v71, type metadata accessor for ContentDescriptor);
    v75 = v133;
    if (__swift_getEnumTagSinglePayload(v74, 1, v133) != 1)
    {
      LODWORD(v131) = v63;
      v80 = *(v128 + 32);
      v81 = v125;
      v80(v125, v74, v75);
      v82 = v127;
      v80(&v127[v68[8]], v81, v75);
      goto LABEL_17;
    }
  }

  sub_216697664(v74, &qword_27CABA820);
  v76 = v149;
  if (!v149)
  {

    sub_216697664(v73, &qword_27CAB6D60);
    v78 = &qword_27CAB6A00;
    v79 = v148;
    goto LABEL_13;
  }

  LODWORD(v131) = v63;
  *&v159[0] = 0;
  *(&v159[0] + 1) = 0xE000000000000000;
  sub_21700DF14();
  sub_21700F3B4();

  *&v159[0] = 0xD000000000000020;
  *(&v159[0] + 1) = 0x8000000217087320;
  MEMORY[0x21CE9F490](v123, v76);

  v77 = v126;
  sub_217005ED4();

  if (__swift_getEnumTagSinglePayload(v77, 1, v75) == 1)
  {

    sub_216697664(v156, &qword_27CAB6D60);
    sub_216697664(v148, &qword_27CAB6A00);
    v78 = &qword_27CABA820;
    v79 = v77;
LABEL_13:
    sub_216697664(v79, v78);
    v66 = 1;
    goto LABEL_14;
  }

  v133 = v32;
  v83 = *(v128 + 32);
  v84 = v124;
  v83(v124, v77, v75);
  v82 = v127;
  v83(&v127[v68[8]], v84, v75);
  v32 = v133;
LABEL_17:
  v85 = sub_21700BA64();
  v87 = v86;
  sub_216697664(v148, &qword_27CAB6A00);
  v88 = (v82 + v68[5]);
  *v88 = v85;
  v88[1] = v87;
  v89 = v129;
  sub_2166DDCC0(v156, v129, &qword_27CAB6D60);
  v90 = type metadata accessor for Artwork();
  v91 = __swift_getEnumTagSinglePayload(v89, 1, v90);
  v92 = v121;
  if (v91 == 1)
  {
    sub_216697664(v89, &qword_27CAB6D60);
    v93 = sub_21700C4B4();
    v94 = v130;
    v95 = v130;
    v96 = 1;
  }

  else
  {
    v97 = sub_21700C4B4();
    v94 = v130;
    (*(*(v97 - 8) + 16))(v130, v89, v97);
    sub_216A65F50(v89, type metadata accessor for Artwork);
    v95 = v94;
    v96 = 0;
    v93 = v97;
  }

  __swift_storeEnumTagSinglePayload(v95, v96, 1, v93);
  v67 = v152;
  v98 = v149;
  sub_2166DDCC0(v94, v82, &qword_27CABF770);
  v99 = (v82 + v68[6]);
  *v99 = v123;
  v99[1] = v98;
  v100 = (v82 + v68[7]);
  v101 = v147;
  *v100 = v122;
  v100[1] = v101;
  *(v82 + v68[10]) = v92 & 1;
  *(v82 + v68[9]) = v131;
  sub_216A65B20(v82, v67, type metadata accessor for SocialProfileDescriptor);
  v66 = 0;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v67, v66, 1, v68);
  if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
  {
    sub_216697664(v67, &qword_27CABEEE8);
LABEL_23:
    v102 = 1;
    goto LABEL_30;
  }

  v103 = v67;
  v104 = v153;
  sub_216A65B20(v103, v153, type metadata accessor for SocialProfileDescriptor);
  sub_216A65EF8(v104, v154, type metadata accessor for SocialProfileDescriptor);
  __swift_storeEnumTagSinglePayload(v155, 1, 1, v150);
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  v105 = v140;
  sub_216DE9EC8();
  sub_2166A6F60(v105 + v32[6], &v157, &qword_27CAB6DB0);
  sub_216A65F50(v105, type metadata accessor for SocialProfileHorizontalLockup);
  v106 = v158;
  if (v158)
  {
    __swift_project_boxed_opaque_existential_1(&v157, v158);
    v107 = v134;
    sub_21700CE54();
    v108 = v136;
    sub_21700D274();
    v106 = sub_21700D6C4();
    v110 = v109;
    (*(v138 + 8))(v108, v139);
    (*(v135 + 8))(v107, v137);
    __swift_destroy_boxed_opaque_existential_1Tm(&v157);
  }

  else
  {
    sub_216697664(&v157, &qword_27CAB6DB0);
    v110 = 0;
  }

  v111 = v145;
  swift_storeEnumTagMultiPayload();
  v112 = v155;
  v113 = v141;
  sub_2166A6F60(v155, v141, &qword_27CAB6A00);
  v114 = v143;
  sub_216A65EF8(v111, v113 + *(v143 + 20), type metadata accessor for MenuContext);
  v115 = (v113 + v114[6]);
  *v115 = 0;
  v115[1] = 0;
  *(v113 + v114[7]) = 0;
  sub_2166A6F60(v159, v113 + v114[8], &qword_27CAB6DB0);
  if (!v110)
  {
    v106 = 0;
    v110 = 0xE000000000000000;
  }

  sub_216A65F50(v111, type metadata accessor for MenuContext);
  sub_216697664(v159, &qword_27CAB6DB0);
  sub_216697664(v112, &qword_27CAB6A00);
  v116 = (v113 + v114[9]);
  *v116 = v106;
  v116[1] = v110;
  v117 = v142;
  sub_216A65B20(v113, v142, type metadata accessor for MenuConfiguration);
  a1 = v146;
  sub_216AF71EC(v154, v117, v146);
  sub_216A65F50(v153, type metadata accessor for SocialProfileDescriptor);
  v102 = 0;
LABEL_30:
  v118 = type metadata accessor for SocialProfileContextMenu();
  return __swift_storeEnumTagSinglePayload(a1, v102, 1, v118);
}

uint64_t sub_216A60F44@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_2170087F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C20);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF0);
  sub_216A65FA8();
  sub_2169C31CC();
  sub_217009F04();
  sub_2170087E4();
  sub_2166D9530(&qword_27CAC0C28, &qword_27CAC0C20);
  sub_216A65CBC(&qword_27CAC0C30, MEMORY[0x277CDD9E0]);
  sub_21700ABD4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

double sub_216A611CC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v5 = sub_21700AD14();
  v6 = swift_getKeyPath();
  if (qword_27CAB5C58 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  result = *&v10;
  *(a1 + 72) = v10;
  return result;
}

uint64_t sub_216A612D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D00);
  MEMORY[0x28223BE20](v139);
  v116 = (&v115 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D08);
  MEMORY[0x28223BE20](v4 - 8);
  v141 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v140 = &v115 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = &v115 - v11;
  v121 = sub_21700C444();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v115 - v14;
  v130 = sub_217007474();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v117 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v143 = &v115 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v123 = &v115 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7690);
  MEMORY[0x28223BE20](v125);
  v134 = &v115 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D10);
  MEMORY[0x28223BE20](v132);
  v136 = &v115 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D18);
  MEMORY[0x28223BE20](v135);
  v138 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v115 - v24;
  MEMORY[0x28223BE20](v25);
  v137 = &v115 - v26;
  v27 = type metadata accessor for SocialProfileHorizontalLockup();
  MEMORY[0x28223BE20](v27);
  v29 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v115 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v115 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v115 - v40;
  v122 = *a1;
  sub_216DE9EC8();
  v131 = v27;
  sub_2166A6F60(&v32[*(v27 + 48)], v41, &qword_27CAB6D60);
  sub_216A65F50(v32, type metadata accessor for SocialProfileHorizontalLockup);
  sub_2166A6F60(v41, v38, &qword_27CAB6D60);
  v42 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v38, 1, v42) == 1)
  {
    sub_216697664(v38, &qword_27CAB6D60);
    v43 = sub_21700C4B4();
    v44 = v15;
    v45 = 1;
  }

  else
  {
    v46 = sub_21700C4B4();
    (*(*(v46 - 8) + 16))(v15, v38, v46);
    sub_216A65F50(v38, type metadata accessor for Artwork);
    v44 = v15;
    v45 = 0;
    v43 = v46;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);
  v47 = v117;
  sub_217007434();
  v127 = v41;
  sub_2166A6F60(v41, v35, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v42);
  v49 = v121;
  v50 = v120;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v35, &qword_27CAB6D60);
    v51 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v49);
    v52 = v118;
    sub_21700C404();
    v53 = __swift_getEnumTagSinglePayload(v51, 1, v49);
    v54 = v131;
    v55 = v130;
    if (v53 != 1)
    {
      sub_216697664(v51, &qword_27CAB7530);
    }
  }

  else
  {
    v56 = &v35[*(v42 + 20)];
    v57 = v119;
    (*(v120 + 16))(v119, v56, v121);
    sub_216A65F50(v35, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v49);
    v52 = v118;
    (*(v50 + 32))(v118, v57, v49);
    v54 = v131;
    v55 = v130;
  }

  sub_2170073E4();
  (*(v50 + 8))(v52, v49);
  v58 = *(v128 + 8);
  v58(v47, v55);
  sub_216DE9EC8();
  v59 = v124;
  sub_2166A6F60(&v29[v54[13]], v124, &qword_27CAB6A00);
  sub_216A65F50(v29, type metadata accessor for SocialProfileHorizontalLockup);
  v60 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    sub_216697664(v59, &qword_27CAB6A00);
    v61 = 23;
  }

  else
  {
    v61 = *v59;
    sub_216A65F50(v59, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v144[0]) = v61;
  sub_216DE9EC8();
  v62 = *&v32[v54[7]];
  sub_21700DF14();
  sub_216A65F50(v32, type metadata accessor for SocialProfileHorizontalLockup);
  v63 = sub_216E41068(v144, v62);
  v65 = v64;
  v66 = swift_allocObject();
  *(v66 + 16) = v63;
  *(v66 + 24) = v65;
  sub_2167C505C();
  v67 = v123;
  v68 = v143;
  sub_2170073F4();

  v58(v68, v55);
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v69 = qword_280E73AA0;
  v70 = byte_280E73AA8;
  v71 = qword_280E73AB0;
  v72 = v134;
  (*(v126 + 32))(v134, v67, v129);
  *(v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v74 = v72 + *(v125 + 36);
  *v74 = v69;
  *(v74 + 8) = v70;
  *(v74 + 16) = v71;
  *(v74 + 24) = KeyPath;
  *(v74 + 32) = 0;

  LOBYTE(v71) = sub_217009CD4();
  sub_217007F24();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v136;
  sub_2166DDCC0(v72, v136, &qword_27CAB7690);
  v84 = v83 + *(v132 + 36);
  *v84 = v71;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  LOBYTE(v71) = sub_217009CE4();
  sub_217007F24();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v83;
  v94 = v133;
  sub_2166DDCC0(v93, v133, &qword_27CAC0D10);
  v95 = v94 + *(v135 + 36);
  *v95 = v71;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  v96 = v137;
  sub_2166DDCC0(v94, v137, &qword_27CAC0D18);
  sub_216DE9EC8();
  LODWORD(v71) = v32[v54[9]];
  sub_216A65F50(v32, type metadata accessor for SocialProfileHorizontalLockup);
  if (v71 == 1)
  {
    v97 = sub_21700B3B4();
    v98 = v116;
    *v116 = v97;
    *(v98 + 8) = v99;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D28);
    sub_216A621B0((v98 + *(v100 + 44)));
    sub_21700B3B4();
    sub_2170083C4();
    v101 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D30) + 36));
    v102 = v144[1];
    *v101 = v144[0];
    v101[1] = v102;
    v101[2] = v144[2];
    v103 = sub_217009C84();
    v104 = v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D38) + 36);
    *v104 = v103;
    *(v104 + 8) = 0x403E000000000000;
    *(v104 + 16) = 0;
    *(v104 + 24) = 0;
    *(v104 + 32) = 0x4024000000000000;
    *(v104 + 40) = 0;
    sub_21700ACC4();
    v105 = sub_21700AD04();

    v106 = v139;
    v107 = v140;
    v108 = v98 + *(v139 + 36);
    *v108 = v105;
    *(v108 + 8) = xmmword_21703B0A0;
    *(v108 + 24) = 0x4000000000000000;
    sub_2166DDCC0(v98, v107, &qword_27CAC0D00);
    v109 = 0;
  }

  else
  {
    v109 = 1;
    v106 = v139;
    v107 = v140;
  }

  __swift_storeEnumTagSinglePayload(v107, v109, 1, v106);
  v110 = v138;
  sub_2166A6F60(v96, v138, &qword_27CAC0D18);
  v111 = v141;
  sub_2166A6F60(v107, v141, &qword_27CAC0D08);
  v112 = v142;
  sub_2166A6F60(v110, v142, &qword_27CAC0D18);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D20);
  sub_2166A6F60(v111, v112 + *(v113 + 48), &qword_27CAC0D08);
  sub_216697664(v107, &qword_27CAC0D08);
  sub_216697664(v96, &qword_27CAC0D18);
  sub_216697664(v127, &qword_27CAB6D60);
  sub_216697664(v111, &qword_27CAC0D08);
  return sub_216697664(v110, &qword_27CAC0D18);
}

uint64_t sub_216A621B0@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v25 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v12 = sub_21700ADB4();
  v13 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  v14 = sub_217009DF4();
  sub_216697664(v3, &qword_27CAB81D0);
  v15 = swift_getKeyPath();
  v27 = v12;
  v28 = v15;
  v29 = v14;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
  sub_2167E947C();
  sub_21700A304();

  v16 = sub_21700ACE4();
  v17 = swift_getKeyPath();
  v18 = &v10[*(v5 + 44)];
  *v18 = v17;
  v18[1] = v16;
  sub_2166A6F60(v10, v7, &qword_27CAB8248);
  v20 = v25;
  v19 = v26;
  *v26 = KeyPath;
  v19[1] = v20;
  v21 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D40);
  sub_2166A6F60(v7, v21 + *(v22 + 48), &qword_27CAB8248);

  sub_216697664(v10, &qword_27CAB8248);
  sub_216697664(v7, &qword_27CAB8248);
}

uint64_t sub_216A62468@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for Content();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B88);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  *v8 = sub_2170091A4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BC8);
  sub_216A62824(v2, &v8[*(v9 + 44)]);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BA0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BC0);
  sub_217008C54();
  *v10 = 0;
  v11 = &v8[*(v6 + 36)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v13 = sub_217008B34();
  v14 = __swift_project_value_buffer(v13, qword_280E73A88);
  v15 = sub_216A65EF8(v14, v11, MEMORY[0x277CDFBC8]);
  *(v11 + *(v12 + 36)) = 0;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  sub_216A65EF8(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Content);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_216A65B20(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Content);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216A6589C();
  sub_2169C31CC();
  sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  sub_21700A394();

  return sub_216697664(v8, &qword_27CAC0B88);
}

uint64_t sub_216A62824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BD0);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v77 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BD8);
  MEMORY[0x28223BE20](v86);
  v84 = &v77 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BE0);
  MEMORY[0x28223BE20](v89);
  v6 = &v77 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BE8);
  MEMORY[0x28223BE20](v91);
  v82 = &v77 - v7;
  v8 = type metadata accessor for SocialProfileHorizontalLockup();
  MEMORY[0x28223BE20](v8);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BF0);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BF8);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v77 - v24);
  *v25 = sub_21700B3D4();
  v25[1] = v26;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C00) + 44);
  v92 = v25;
  sub_216A612D4(a1, v25 + v27);
  v90 = sub_2170093C4();
  v101 = 1;
  sub_216A63284(v98);
  memcpy(v102, v98, sizeof(v102));
  memcpy(__dst, v98, 0x80uLL);
  sub_2166A6F60(v102, v97, &qword_27CAC0C08);
  sub_216697664(__dst, &qword_27CAC0C08);
  memcpy(&v100[7], v102, 0x80uLL);
  v87 = v101;
  KeyPath = swift_getKeyPath();
  sub_216DE9EC8();
  v28 = v15[*(v8 + 40)];
  sub_216A65F50(v15, type metadata accessor for SocialProfileHorizontalLockup);
  v96 = v20;
  if (v28 != 1)
  {
    goto LABEL_19;
  }

  v78 = v6;
  sub_216DE9EC8();
  v29 = &v12[*(v8 + 32)];
  v31 = *v29;
  v30 = *(v29 + 1);
  sub_21700DF14();
  sub_216A65F50(v12, type metadata accessor for SocialProfileHorizontalLockup);
  v85 = a1;
  v32 = a1[1];
  v33 = *&v32[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v34 = *(v33 + 16);
  v35 = v32;
  os_unfair_lock_lock(v34);
  v36 = *&v35[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v37 = *(v33 + 16);
  v38 = v36;
  os_unfair_lock_unlock(v37);

  if (!v36)
  {
    v20 = v96;
    v6 = v78;
    a1 = v85;
    if (!v30)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v39 = sub_2167DEA8C(v38);
  if (!v30)
  {
    v20 = v96;
    v6 = v78;
    a1 = v85;
    if (!v40)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v40)
  {
    v20 = v96;
    v6 = v78;
LABEL_16:

    goto LABEL_17;
  }

  v41 = v31 == v39 && v30 == v40;
  v6 = v78;
  if (v41)
  {

    v20 = v96;
    a1 = v85;
    goto LABEL_19;
  }

  v42 = sub_21700F7D4();

  v20 = v96;
  a1 = v85;
  if (v42)
  {
LABEL_19:
    v45 = a1[1];
    if (v45[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] != 1)
    {
      v62 = 1;
      v63 = v83;
      v43 = v84;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v43, v62, 1, v63);
      v44 = &qword_27CAC0BD8;
      sub_2166A6F60(v43, v6, &qword_27CAC0BD8);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CAC0C10, &qword_27CAC0BE8);
      sub_216A65B78();
      goto LABEL_41;
    }

    v85 = a1;
    sub_216DE9EC8();
    v46 = v15[*(v8 + 40)];
    sub_216A65F50(v15, type metadata accessor for SocialProfileHorizontalLockup);
    if (v46 != 1)
    {
      goto LABEL_39;
    }

    v47 = v6;
    v48 = v79;
    sub_216DE9EC8();
    v49 = (v48 + *(v8 + 32));
    v51 = *v49;
    v50 = v49[1];
    sub_21700DF14();
    sub_216A65F50(v48, type metadata accessor for SocialProfileHorizontalLockup);
    v52 = *&v45[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v53 = *(v52 + 16);
    v54 = v45;
    os_unfair_lock_lock(v53);
    v55 = *&v54[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v56 = *(v52 + 16);
    v57 = v55;
    os_unfair_lock_unlock(v56);

    if (v55)
    {
      v58 = sub_2167DEA8C(v57);
      if (v50)
      {
        v6 = v47;
        if (v59)
        {
          v60 = v51 == v58 && v50 == v59;
          v20 = v96;
          if (v60)
          {
          }

          else
          {
            v61 = sub_21700F7D4();

            if ((v61 & 1) == 0)
            {
              v62 = 1;
              v43 = v84;
LABEL_37:
              v63 = v83;
              goto LABEL_40;
            }
          }

LABEL_39:
          v64 = v80;
          sub_216A60F44(v80);
          v63 = v83;
          v43 = v84;
          (*(v81 + 32))(v84, v64, v83);
          v62 = 0;
          goto LABEL_40;
        }

        v20 = v96;
      }

      else
      {
        v20 = v96;
        v6 = v47;
        if (!v59)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v20 = v96;
      v6 = v47;
      if (!v50)
      {
        goto LABEL_39;
      }
    }

    v43 = v84;

    v62 = 1;
    goto LABEL_37;
  }

LABEL_17:
  v43 = v82;
  sub_216A63548(v82);
  v44 = &qword_27CAC0BE8;
  sub_2166A6F60(v43, v6, &qword_27CAC0BE8);
  swift_storeEnumTagMultiPayload();
  sub_2166D9530(&qword_27CAC0C10, &qword_27CAC0BE8);
  sub_216A65B78();
LABEL_41:
  sub_217009554();
  sub_216697664(v43, v44);
  v65 = v92;
  v66 = v93;
  sub_2166A6F60(v92, v93, &qword_27CAC0BF8);
  v67 = v20;
  v68 = v94;
  sub_2166A6F60(v67, v94, &qword_27CAC0BF0);
  v69 = v95;
  sub_2166A6F60(v66, v95, &qword_27CAC0BF8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C38);
  v71 = v70[12];
  v72 = v90;
  v97[0] = v90;
  v97[1] = 0;
  v73 = v87;
  LOBYTE(v97[2]) = v87;
  memcpy(&v97[2] + 1, v100, 0x87uLL);
  v74 = KeyPath;
  v97[19] = KeyPath;
  v97[20] = 1;
  LOBYTE(v97[21]) = 0;
  memcpy((v69 + v71), v97, 0xA9uLL);
  v75 = v69 + v70[16];
  *v75 = 0x4024000000000000;
  *(v75 + 8) = 0;
  sub_2166A6F60(v68, v69 + v70[20], &qword_27CAC0BF0);
  sub_2166A6F60(v97, v98, &qword_27CAC0C40);
  sub_216697664(v96, &qword_27CAC0BF0);
  sub_216697664(v65, &qword_27CAC0BF8);
  sub_216697664(v68, &qword_27CAC0BF0);
  v98[0] = v72;
  v98[1] = 0;
  LOBYTE(v98[2]) = v73;
  memcpy(&v98[2] + 1, v100, 0x87uLL);
  v98[19] = v74;
  v98[20] = 1;
  v99 = 0;
  sub_216697664(v98, &qword_27CAC0C40);
  return sub_216697664(v66, &qword_27CAC0BF8);
}

uint64_t sub_216A63284@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for SocialProfileHorizontalLockup();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_216DE9EC8();
  v8 = &v7[*(v2 + 36)];
  v9 = *v8;
  *(&v31 + 1) = *(v8 + 1);
  v10 = *(&v31 + 1);
  sub_21700DF14();
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  *&v31 = v11;
  v12 = MEMORY[0x277D84F90];
  if (v10)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  v29 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v14 = sub_217009E54();
  v15 = swift_getKeyPath();
  sub_216DE9EC8();
  v16 = &v4[*(v2 + 40)];
  v17 = *v16;
  v18 = v16[1];
  sub_21700DF14();
  sub_216A65F50(v4, type metadata accessor for SocialProfileHorizontalLockup);
  v19 = sub_216F073C4(v17, v18);
  v21 = v20;

  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  if (!v21)
  {
    v12 = 0;
  }

  v23 = sub_21700AD34();
  v24 = swift_getKeyPath();
  v25 = sub_217009E64();
  v26 = swift_getKeyPath();
  v34 = v31;
  *&v35 = 0;
  *(&v35 + 1) = v32;
  *&v36 = KeyPath;
  *(&v36 + 1) = v29;
  *&v37 = v15;
  *(&v37 + 1) = v14;
  v33[0] = v31;
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  *&v38 = v22;
  *(&v38 + 1) = v21;
  *&v39 = 0;
  *(&v39 + 1) = v12;
  *&v40 = v24;
  *(&v40 + 1) = v23;
  *&v41 = v26;
  *(&v41 + 1) = v25;
  v33[6] = v40;
  v33[7] = v41;
  v33[4] = v38;
  v33[5] = v39;
  memcpy(v28, v33, 0x80uLL);
  v42[0] = v22;
  v42[1] = v21;
  v42[2] = 0;
  v42[3] = v12;
  v42[4] = v24;
  v42[5] = v23;
  v42[6] = v26;
  v42[7] = v25;
  sub_2166A6F60(&v34, &v43, &qword_27CAB7E88);
  sub_2166A6F60(&v38, &v43, &qword_27CAB7E88);
  sub_216697664(v42, &qword_27CAB7E88);
  v43 = v31;
  v44 = 0;
  v45 = v32;
  v46 = KeyPath;
  v47 = v29;
  v48 = v15;
  v49 = v14;
  return sub_216697664(&v43, &qword_27CAB7E88);
}

uint64_t sub_216A63548@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Content();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_217006FE4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCB8F0();
  v10 = *(v1 + 32);
  v19 = *(v1 + 24);
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AED4();
  v11 = v17[1];
  v12 = v17[2];
  v13 = v18;
  sub_216A65EF8(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Content);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_216A65B20(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Content);
  return sub_216A652BC(v9, v11, v12, v13, sub_216A65D04, v15, a1);
}

uint64_t sub_216A63720@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for SocialProfileHorizontalLockup();
  MEMORY[0x28223BE20](v1);
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v54 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v54 - v21;
  sub_216DE9EC8();
  sub_2166A6F60(&v10[v1[12]], v13, &qword_27CAB6D60);
  sub_216A65F50(v10, type metadata accessor for SocialProfileHorizontalLockup);
  v23 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_216697664(v13, &qword_27CAB6D60);
    v24 = sub_21700C4B4();
    v25 = v16;
    v26 = 1;
    v55 = v24;
  }

  else
  {
    v27 = sub_21700C4B4();
    (*(*(v27 - 8) + 16))(v16, v13, v27);
    sub_216A65F50(v13, type metadata accessor for Artwork);
    v25 = v16;
    v26 = 0;
    v55 = v27;
    v24 = v27;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  sub_216DE9EC8();
  v28 = &v7[v1[7]];
  v29 = *v28;
  v30 = *(v28 + 1);
  sub_21700DF14();
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  sub_21700C404();
  sub_2166DDCC0(v16, v19, &qword_27CABF770);
  v31 = &v19[v17[5]];
  *v31 = v29;
  *(v31 + 1) = v30;
  *&v19[v17[6]] = 0x3FF0000000000000;
  *&v19[v17[7]] = 0x4024000000000000;
  v19[v17[8]] = 1;
  sub_216DE9EC8();
  v32 = &v7[v1[7]];
  v34 = *v32;
  v33 = *(v32 + 1);
  sub_21700DF14();
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  v35 = v56;
  sub_216DE9EC8();
  v36 = (v35 + v1[8]);
  v37 = *v36;
  v38 = v36[1];
  sub_21700DF14();
  sub_216A65F50(v35, type metadata accessor for SocialProfileHorizontalLockup);
  v39 = sub_216F073C4(v37, v38);
  v41 = v40;

  sub_216A65B20(v19, v22, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
  v42 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v43 = &v22[v42[5]];
  *v43 = v34;
  *(v43 + 1) = v33;
  v44 = &v22[v42[6]];
  *v44 = v39;
  v44[1] = v41;
  v45 = &v22[v42[7]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v22[v42[8]] = 1;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v42);
  v46 = v57;
  sub_216DE9EC8();
  sub_2166A6F60(v46 + v1[6], v59, &qword_27CAB6DB0);
  sub_216A65F50(v46, type metadata accessor for SocialProfileHorizontalLockup);
  LOBYTE(v46) = v60 != 0;
  sub_216697664(v59, &qword_27CAB6DB0);
  v47 = v58;
  sub_2166DDCC0(v22, v58, &qword_27CAB7528);
  v48 = type metadata accessor for ContextMenuPreview(0);
  *(v47 + v48[5]) = v46;
  v49 = v47 + v48[6];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v50 = v48[7];
  sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v47 + v50, 1, 1, v55);
  v51 = v48[8];
  v52 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(v47 + v51, 1, 1, v52);
}

uint64_t sub_216A63CB8()
{
  v0 = sub_2170075A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SocialProfileHorizontalLockup();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9EC8();
  sub_2166A6F60(&v7[*(v5 + 32)], &v24, &qword_27CAB6DB0);
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  if (v26)
  {
    sub_2166A0F18(&v24, v28);
    type metadata accessor for Content();
    sub_216C0C534(&v20);
    if (v22)
    {
      sub_2166A0F18(&v20, &v24);
      v8 = __swift_project_boxed_opaque_existential_1(&v24, v26);
      sub_216C0C548(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, *(&v20 + 1), v21, v22, v23, v24, *(&v24 + 1), v25, v26, v27, v28[0]);
      sub_217007544();
      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v24);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v17 = &qword_27CAB7310;
    v18 = &v20;
  }

  else
  {
    v17 = &qword_27CAB6DB0;
    v18 = &v24;
  }

  return sub_216697664(v18, v17);
}

uint64_t sub_216A63EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for Content();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B60);
  MEMORY[0x28223BE20](v5);
  v7 = (&v46 - v6);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B68);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v46 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B70);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B78);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v46 - v11;
  v13 = type metadata accessor for SocialProfileHorizontalLockup();
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9EC8();
  sub_2166A6F60(&v16[*(v14 + 32)], &v54, &qword_27CAB6DB0);
  sub_216A65F50(v16, type metadata accessor for SocialProfileHorizontalLockup);
  if (v56)
  {
    sub_2166A0F18(&v54, v59);
    sub_2167B7D58(v59, v7);
    v17 = v5[11];
    v18 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v7 + v17, 1, 1, v18);
    sub_216A65EF8(a1, &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Content);
    v19 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v20 = swift_allocObject();
    sub_216A65B20(&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Content);
    v21 = v5[12];
    *(v7 + v21) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v22 = v7 + v5[13];
    *v22 = swift_getKeyPath();
    v22[40] = 0;
    v7[5] = sub_216A65A38;
    v7[6] = v20;
    v7[7] = 0;
    v7[8] = 0;
    v23 = v47;
    sub_216E3170C();
    sub_216697664(v7, &qword_27CAC0B60);
    v24 = v48;
    v25 = v52;
    (*(v48 + 16))(v50, v23, v52);
    swift_storeEnumTagMultiPayload();
    v26 = type metadata accessor for ActionButtonStyle(255);
    v27 = sub_2166D9530(&qword_27CAC0B80, &qword_27CAC0B60);
    v28 = sub_216A65CBC(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
    *&v54 = v5;
    *(&v54 + 1) = v26;
    v55 = v27;
    v56 = v28;
    swift_getOpaqueTypeConformance2();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0);
    v31 = type metadata accessor for ContextMenuPreview(255);
    v32 = sub_216A6589C();
    v33 = sub_2169C31CC();
    v34 = sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    *&v54 = v29;
    *(&v54 + 1) = v30;
    v55 = v31;
    v56 = v32;
    v57 = v33;
    v58 = v34;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    (*(v24 + 8))(v23, v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  else
  {
    sub_216697664(&v54, &qword_27CAB6DB0);
    sub_216A62468(v12);
    v36 = v51;
    (*(v10 + 16))(v50, v12, v51);
    swift_storeEnumTagMultiPayload();
    v37 = type metadata accessor for ActionButtonStyle(255);
    v38 = sub_2166D9530(&qword_27CAC0B80, &qword_27CAC0B60);
    v39 = sub_216A65CBC(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
    *&v54 = v5;
    *(&v54 + 1) = v37;
    v55 = v38;
    v56 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0);
    v42 = type metadata accessor for ContextMenuPreview(255);
    v43 = sub_216A6589C();
    v44 = sub_2169C31CC();
    v45 = sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    *&v54 = v40;
    *(&v54 + 1) = v41;
    v55 = v42;
    v56 = v43;
    v57 = v44;
    v58 = v45;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v10 + 8))(v12, v36);
  }
}

uint64_t sub_216A646C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50);
  MEMORY[0x28223BE20](v44);
  v10 = &v43 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58);
  MEMORY[0x28223BE20](v45);
  v12 = &v43 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C60);
  MEMORY[0x28223BE20](v48);
  v14 = &v43 - v13;
  LOBYTE(v13) = *(a3 + 24);
  v49 = a3;
  v15 = *(a3 + 32);
  LOBYTE(__src[0]) = v13;
  *(&__src[0] + 1) = v15;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (LOBYTE(v51[0]) == 6)
  {
LABEL_5:
    v16 = sub_21700ACF4();
    goto LABEL_7;
  }

  if (LOBYTE(v51[0]) != 2)
  {
    if (!LOBYTE(v51[0]))
    {
      v16 = sub_21700AC54();
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v16 = sub_21700AD34();
LABEL_7:
  v17 = v16;
  if (a2)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = 0;
  }

  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  KeyPath = swift_getKeyPath();
  v21 = sub_217009E94();
  v22 = swift_getKeyPath();
  *&__src[0] = v19;
  *(&__src[0] + 1) = a2;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v18;
  *&__src[2] = KeyPath;
  *(&__src[2] + 1) = v17;
  *&__src[3] = v22;
  *(&__src[3] + 1) = v21;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
  sub_2167D95A8();
  sub_21700A304();
  *v51 = __src[0];
  *&v51[2] = __src[1];
  *&v51[4] = __src[2];
  *&v51[6] = __src[3];
  sub_216697664(v51, &qword_27CAB7E88);
  v23 = sub_217009C74();
  sub_217007F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v46 + 32))(v10, v8, v47);
  v32 = &v10[*(v44 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  sub_2166DDCC0(v10, v12, &qword_27CAC0C50);
  v33 = &v12[*(v45 + 36)];
  v34 = *&v51[11];
  *v33 = *&v51[9];
  *(v33 + 1) = v34;
  *(v33 + 2) = *&v51[13];
  sub_21700B3B4();
  sub_217008BB4();
  sub_2166DDCC0(v12, v14, &qword_27CAC0C58);
  memcpy(&v14[*(v48 + 36)], __src, 0x70uLL);
  v35 = sub_21700B3B4();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C68);
  v39 = v50;
  v40 = v50 + *(v38 + 36);
  sub_216A64BD8(v49, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C70) + 36));
  *v41 = v35;
  v41[1] = v37;
  return sub_2166DDCC0(v14, v39, &qword_27CAC0C60);
}

uint64_t sub_216A64BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_217008B44();
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C80);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C88);
  MEMORY[0x28223BE20](v11);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C90);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = *(a1 + 32);
  LOBYTE(v71) = *(a1 + 24);
  *(&v71 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  v22 = v68;
  if (v68 == 6)
  {
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_217009294();
    (*(*(v24 - 8) + 104))(v20, v23, v24);
    v25 = sub_21700AC54();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
    *&v20[*(v26 + 52)] = v25;
    *&v20[*(v26 + 56)] = 256;
    sub_21700B3B4();
    sub_2170083C4();
    v27 = &v20[*(v18 + 36)];
    v28 = v72;
    *v27 = v71;
    *(v27 + 1) = v28;
    *(v27 + 2) = v73;
    v29 = &qword_27CAC0C98;
    sub_2166A6F60(v20, v17, &qword_27CAC0C98);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v30 = v20;
  }

  else
  {
    v63 = v18;
    v31 = *(v3 + 20);
    v32 = *MEMORY[0x277CE0128];
    v33 = sub_217009294();
    (*(*(v33 - 8) + 104))(&v5[v31], v32, v33);
    __asm { FMOV            V0.2D, #20.0 }

    *v5 = _Q0;
    if (v22 == 2)
    {
      v40 = sub_21700AD34();
    }

    else
    {
      if (v22)
      {
        v39 = sub_21700ACD4();
      }

      else
      {
        v39 = sub_21700AC54();
      }

      v40 = v39;
    }

    v41 = v17;
    sub_2170081E4();
    sub_216A65EF8(v5, v8, MEMORY[0x277CDFC08]);
    v42 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CB8) + 36)];
    v43 = v69;
    *v42 = v68;
    *(v42 + 1) = v43;
    *(v42 + 4) = v70;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC0);
    *&v8[*(v44 + 52)] = v40;
    *&v8[*(v44 + 56)] = 256;
    v45 = sub_21700B3B4();
    v47 = v46;
    sub_216A65F50(v5, MEMORY[0x277CDFC08]);
    v48 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC8) + 36)];
    *v48 = v45;
    v48[1] = v47;
    if ((v22 | 2) == 2)
    {
      v49 = sub_21700ACD4();
    }

    else
    {
      v49 = sub_21700AC54();
    }

    v50 = v49;
    v51 = v65;
    sub_216A65EF8(v8, v65, MEMORY[0x277CDFC08]);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE98);
    *(v51 + *(v52 + 52)) = v50;
    *(v51 + *(v52 + 56)) = 256;
    v53 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD0) + 36);
    sub_2166A6F60(v8, v53, &qword_27CAC0C78);
    v54 = sub_21700B3B4();
    v56 = v55;
    sub_216697664(v8, &qword_27CAC0C78);
    v57 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD8) + 36));
    *v57 = v54;
    v57[1] = v56;
    sub_21700B3B4();
    sub_2170083C4();
    v58 = v64;
    sub_2166DDCC0(v51, v64, &qword_27CAC0C80);
    v59 = (v58 + *(v11 + 36));
    v60 = v72;
    *v59 = v71;
    v59[1] = v60;
    v59[2] = v73;
    v29 = &qword_27CAC0C88;
    v61 = v66;
    sub_2166DDCC0(v58, v66, &qword_27CAC0C88);
    sub_2166A6F60(v61, v41, &qword_27CAC0C88);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v30 = v61;
  }

  return sub_216697664(v30, v29);
}

uint64_t sub_216A652BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216A65CBC(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  *(a7 + 64) = sub_217008CF4();
  *(a7 + 72) = v14;
  type metadata accessor for SocialGraphController();
  sub_216A65CBC(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  *(a7 + 80) = sub_217008CF4();
  *(a7 + 88) = v15;
  *(a7 + 96) = swift_getKeyPath();
  *(a7 + 136) = 0;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BE8) + 60);
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  sub_217007C94();
  *a7 = sub_217006F84();
  *(a7 + 8) = v17;
  v18 = sub_217006FD4();
  v19 = sub_217006FE4();
  result = (*(*(v19 - 8) + 8))(a1, v19);
  *(a7 + 16) = v18 & 1;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  return result;
}

uint64_t sub_216A654B8()
{
  result = sub_21700B304();
  v1 = 32.0;
  if ((result & 1) == 0)
  {
    v1 = 28.0;
  }

  qword_27CAC0B20 = *&v1;
  return result;
}

void sub_216A65514()
{
  sub_216A65650();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UserSocialProfileCoordinator();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SocialGraphController();
      if (v2 <= 0x3F)
      {
        sub_21687FB2C(319, &qword_280E2A5C0, &qword_27CAC0B30, &unk_21703B130, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2167EE974();
          if (v4 <= 0x3F)
          {
            sub_21687FB2C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
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

void sub_216A65650()
{
  if (!qword_27CAC0B48)
  {
    type metadata accessor for SocialProfileHorizontalLockup();
    sub_216A65CBC(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
    sub_216A65CBC(&qword_280E310C8, type metadata accessor for SocialProfileHorizontalLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC0B48);
    }
  }
}

uint64_t sub_216A6572C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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