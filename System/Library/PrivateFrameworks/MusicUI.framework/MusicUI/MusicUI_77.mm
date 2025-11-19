uint64_t sub_216EB2530@<X0>(uint64_t a1@<X8>)
{

  return sub_216AF1E0C(v2, a1);
}

uint64_t sub_216EB256C()
{
  v1 = sub_2170098A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  if (*(v0 + 41) != 1)
  {
    return 2;
  }

  type metadata accessor for PageNavigationModifier();
  sub_216C0C900();
  (*(v2 + 104))(v13, *MEMORY[0x277CE0558], v1);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v1);
  v17 = *(v5 + 48);
  sub_2166A6E54(v16, v7, &qword_27CAB8600);
  sub_2166A6E54(v13, &v7[v17], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    sub_216697664(v13, &qword_27CAB8600);
    sub_216697664(v16, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) == 1)
    {
      sub_216697664(v7, &qword_27CAB8600);
      return 1;
    }

    goto LABEL_8;
  }

  sub_2166A6E54(v7, v10, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) == 1)
  {
    sub_216697664(v13, &qword_27CAB8600);
    sub_216697664(v16, &qword_27CAB8600);
    (*(v2 + 8))(v10, v1);
LABEL_8:
    sub_216697664(v7, &qword_27CAB8708);
    goto LABEL_9;
  }

  (*(v2 + 32))(v4, &v7[v17], v1);
  sub_216EB3DBC(&qword_280E2A858, MEMORY[0x277CE0570]);
  v21 = sub_21700E494();
  v22 = *(v2 + 8);
  v22(v4, v1);
  sub_216697664(v13, &qword_27CAB8600);
  sub_216697664(v16, &qword_27CAB8600);
  v22(v10, v1);
  sub_216697664(v7, &qword_27CAB8600);
  if (v21)
  {
    return 1;
  }

LABEL_9:
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_216EB29D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for SocialProfileButtonView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC1A8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC198);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = *(a1 + 48);
  v16 = *(v4 + 28);
  *&v6[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = 0;
  *v6 = sub_2167EA268;
  *(v6 + 1) = v17;
  v6[16] = 0;
  v18 = (a1 + *(type metadata accessor for PageNavigationModifier() + 36));
  v19 = *v18;
  v20 = *(v18 + 1);
  v30 = *v18;
  v31 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  if (v29)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  sub_216EB3E04(v6, v10);
  *&v10[*(v8 + 44)] = v21;
  v30 = v19;
  v31 = v20;
  sub_21700AEB4();
  v22 = v29;
  sub_21678818C(v10, v14, &qword_27CACC1A8);
  v14[*(v12 + 44)] = (v22 & 1) == 0;
  v23 = sub_21700B414();
  v30 = v19;
  v31 = v20;
  sub_21700AEB4();
  v24 = v29;
  v25 = v28;
  sub_21678818C(v14, v28, &qword_27CACC198);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC180);
  v27 = v25 + *(result + 36);
  *v27 = v23;
  *(v27 + 8) = v24;
  return result;
}

uint64_t sub_216EB2CA4()
{
  v1 = *(v0 + 32);
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return qword_21706BA50[v1];
  }
}

uint64_t sub_216EB2CD4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v25[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC1B0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC1B8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v25 - v16;
  if (a2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = 1;
    *(v18 + 24) = a3;
    *(v18 + 32) = a4;
    *(v18 + 40) = a5 & 1;

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC1C0);
    v20 = sub_2166D9530(&qword_280E2A898, &qword_27CACC1C0);
    v21 = MEMORY[0x277D839B0];
    sub_21700A844();

    (*(v15 + 16))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    v26 = v19;
    v27 = v21;
    v28 = v20;
    v29 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC1C0);
    (*(*(v23 - 8) + 16))(v13, a1, v23);
    swift_storeEnumTagMultiPayload();
    v24 = sub_2166D9530(&qword_280E2A898, &qword_27CACC1C0);
    v26 = v23;
    v27 = MEMORY[0x277D839B0];
    v28 = v24;
    v29 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    return sub_217009554();
  }
}

uint64_t sub_216EB3078@<X0>(BOOL *a1@<X8>)
{
  sub_217008714();
  v3 = v2;
  result = sub_217008704();
  *a1 = 16.0 - v5 < v3;
  return result;
}

uint64_t sub_216EB3228()
{
}

uint64_t sub_216EB32AC()
{
}

uint64_t sub_216EB3330(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v5)
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_25:
    v12 = 0;
    return v12 & 1;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 16) == *(a2 + 16) && v7 == v8;
  if (!v9 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v10 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_25;
    }
  }

  else if (v11 == 4 || (sub_21688BCC0(v10, v11) & 1) == 0)
  {
    goto LABEL_25;
  }

  v12 = *(a1 + 33) ^ *(a2 + 33) ^ 1;
  return v12 & 1;
}

uint64_t sub_216EB340C(uint64_t a1)
{
  v2 = v1;
  if (*(v2 + 8))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  if (*(v2 + 24))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  v4 = *(v2 + 32);
  sub_21700F914();
  if (v4 != 4)
  {
    sub_21688E184(a1, v4);
  }

  return sub_21700F914();
}

uint64_t sub_216EB34D0()
{
  sub_21700F8F4();
  sub_216EB340C(v1);
  return sub_21700F944();
}

uint64_t sub_216EB3518()
{
  sub_21700F8F4();
  sub_216EB340C(v1);
  return sub_21700F944();
}

unint64_t sub_216EB355C()
{
  result = qword_27CACC100;
  if (!qword_27CACC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC100);
  }

  return result;
}

uint64_t type metadata accessor for PageNavigationModifier()
{
  result = qword_280E391A8;
  if (!qword_280E391A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EB35FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216EB367C()
{
  sub_2167B8448(319, &qword_280E45790, &qword_27CABD4A0, &unk_217060FA0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObjectGraph();
    if (v1 <= 0x3F)
    {
      sub_216EB37E0(319, &qword_280E2B438, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2167B8448(319, &qword_280E2B440, &qword_27CAB8600, &unk_217020AD0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_216EB37E0(319, &qword_280E2A590, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216EB37E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_216EB3858()
{
  result = qword_280E2B128;
  if (!qword_280E2B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC128);
    sub_2166D9530(&qword_280E2A8A8, &qword_27CACC128);
    sub_2167B2E14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2AC18, &qword_27CACC130);
    swift_getOpaqueTypeConformance2();
    sub_216EB3A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B128);
  }

  return result;
}

unint64_t sub_216EB3A50()
{
  result = qword_280E33208[0];
  if (!qword_280E33208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E33208);
  }

  return result;
}

unint64_t sub_216EB3AA4()
{
  result = qword_280E31440[0];
  if (!qword_280E31440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31440);
  }

  return result;
}

unint64_t sub_216EB3B00()
{
  result = qword_280E39108[0];
  if (!qword_280E39108[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC178);
    sub_216EB3DBC(&qword_280E39148, type metadata accessor for PageToolbarContentView);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E39108);
  }

  return result;
}

unint64_t sub_216EB3BBC()
{
  result = qword_27CACC188;
  if (!qword_27CACC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC180);
    sub_216EB3C74();
    sub_2166D9530(&qword_280E2AC40, &qword_27CAB7480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC188);
  }

  return result;
}

unint64_t sub_216EB3C74()
{
  result = qword_27CACC190;
  if (!qword_27CACC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC198);
    sub_216EB3D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC190);
  }

  return result;
}

unint64_t sub_216EB3D00()
{
  result = qword_27CACC1A0;
  if (!qword_27CACC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC1A8);
    sub_216EB3DBC(qword_280E37460, type metadata accessor for SocialProfileButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC1A0);
  }

  return result;
}

uint64_t sub_216EB3DBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216EB3E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EB3E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_216EB3EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216EB3F28()
{
  result = qword_280E2AA18;
  if (!qword_280E2AA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC1C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC1C0);
    sub_2166D9530(&qword_280E2A898, &qword_27CACC1C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA18);
  }

  return result;
}

uint64_t sub_216EB40F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v3 = sub_21700DFD4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21700D984();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  MEMORY[0x28223BE20](v17);
  v28[0] = v28 - v18;
  MEMORY[0x28223BE20](v19);
  v28[1] = v28 - v20;
  sub_21700D4D4();
  sub_21700E094();
  sub_21700D974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC1D0);
  OUTLINED_FUNCTION_1_212();
  sub_21700D934();
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  v21 = *(v5 + 8);
  v21(v7, v4);
  v22 = [v31 tokenService];
  sub_21700D954();
  swift_unknownObjectRelease();
  v21(v10, v4);
  sub_216EB4458();
  OUTLINED_FUNCTION_1_212();
  v23 = v32;
  sub_21700D924();

  v21(v13, v4);
  v24 = v29;
  sub_21700E144();
  v25 = v28[0];
  sub_21700D964();
  v21(v16, v4);
  sub_21700E134();
  sub_21700D944();
  v21(v25, v4);
  sub_21700D9B4();

  v26 = sub_21700E174();
  return (*(*(v26 - 8) + 8))(v24, v26);
}

unint64_t sub_216EB4458()
{
  result = qword_280E29D60;
  if (!qword_280E29D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D60);
  }

  return result;
}

uint64_t type metadata accessor for MusicRequestEncoder()
{
  result = qword_280E46D88;
  if (!qword_280E46D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EB4510()
{
  result = sub_21700D9A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216EB4580(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_216EB461C;

  return MEMORY[0x28217F978](a2);
}

uint64_t sub_216EB461C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_216EB4768, 0, 0);
  }
}

uint64_t sub_216EB4768()
{
  v17 = *(v0 + 56);
  v1 = *(v0 + 32);
  sub_217006214();
  KeyPath = swift_getKeyPath();
  *swift_task_alloc() = KeyPath;
  swift_getKeyPath();

  sub_216A5C27C();
  sub_21700CE44();

  v3 = *(v0 + 64);
  v4 = swift_getKeyPath();
  *swift_task_alloc() = v4;
  swift_getKeyPath();

  sub_216A5C2D0();
  sub_21700CE44();

  v5 = *(v0 + 65);
  v6 = swift_getKeyPath();
  *swift_task_alloc() = v6;
  swift_getKeyPath();

  v7 = type metadata accessor for MusicURLRequest();
  sub_216A5C324();
  sub_21700CE44();

  v8 = swift_getKeyPath();
  *swift_task_alloc() = v8;
  swift_getKeyPath();

  sub_216A5C378();
  sub_21700CE44();

  v9 = swift_getKeyPath();
  *swift_task_alloc() = v9;
  swift_getKeyPath();

  sub_216A5C3CC();
  sub_21700CE44();

  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = swift_getKeyPath();
  *swift_task_alloc() = v12;
  swift_getKeyPath();

  sub_216A5C420();
  sub_21700CE44();

  v13 = *(v0 + 66);
  *(v1 + v7[5]) = v17;
  *(v1 + v7[6]) = v3;
  *(v1 + v7[7]) = v5;
  v14 = (v1 + v7[10]);
  *v14 = v11;
  v14[1] = v10;
  *(v1 + v7[11]) = v13;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_216EB4B00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2166DFAC0;

  return sub_216EB4580(a1, a2);
}

uint64_t sub_216EB4C24@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  sub_217009124();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v43 = v5 - v4;
  v6 = sub_2170086D4();
  OUTLINED_FUNCTION_1();
  v41 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC208);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC210);
  OUTLINED_FUNCTION_1();
  v42 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v40 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC218);
  OUTLINED_FUNCTION_1();
  v46 = v23;
  v47 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v40[0] = v40 - v26;
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC220);
  sub_216EB5D0C();
  sub_217009ED4();
  sub_2170086C4();
  OUTLINED_FUNCTION_9_92();
  v28 = sub_2166D9530(v27, &qword_27CACC208);
  v29 = MEMORY[0x277CDD980];
  sub_21700ABC4();
  (*(v41 + 8))(v11, v6);
  (*(v14 + 8))(v17, v12);
  v30 = v43;
  v31 = v44;
  v32 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDDDB0], v45);
  v51 = v12;
  v52 = v6;
  v53 = v28;
  v54 = v29;
  OUTLINED_FUNCTION_5_140();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v40[0];
  sub_21700A904();
  (*(v31 + 8))(v30, v32);
  (*(v42 + 8))(v22, v18);
  v49 = v40[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC250);
  v51 = v18;
  v52 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_3_5();
  swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC258);
  OUTLINED_FUNCTION_6_122();
  v37 = sub_2166D9530(v36, &qword_27CACC258);
  v51 = v35;
  v52 = v37;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_21700AAD4();
  return (*(v47 + 8))(v34, v38);
}

uint64_t sub_216EB50D4(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfileFollowRequestsPageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC278);
  MEMORY[0x28223BE20](v5);
  type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  v12 = a1;
  sub_216CCA884();
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC280);
  sub_2166D9530(&qword_27CACC288, &qword_27CACC280);
  sub_2170075C4();
  swift_getKeyPath();
  sub_216EB8700(a1, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SocialProfileFollowRequestsPageView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_216EB8A5C(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for SocialProfileFollowRequestsPageView);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_216EB875C;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC238);
  sub_2166D9530(&qword_27CACC290, &qword_27CACC278);
  sub_216EB5D90();
  return sub_21700B154();
}

uint64_t sub_216EB53AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_216EB8700(a1, a3, type metadata accessor for SocialProfileFollowRequestLockup);
  v5 = type metadata accessor for SocialProfileFollowRequestsPageView(0);
  v6 = *(a2 + v5[5]);
  v7 = *(a2 + v5[6]);
  v8 = *(a2 + v5[7]);
  v9 = type metadata accessor for FollowRequestView(0);
  *(a3 + v9[5]) = v6;
  *(a3 + v9[6]) = v7;
  *(a3 + v9[7]) = v8;
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC238) + 36);
  *v10 = xmmword_21706BD00;
  *(v10 + 16) = xmmword_21706BD00;
  *(v10 + 32) = 0;

  v11 = v7;
}

uint64_t sub_216EB5480(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC298);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_216EB54EC(uint64_t a1)
{
  v2 = sub_217009684();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC258);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_217009634();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC268);
  sub_2166D9530(&qword_27CACC270, &qword_27CACC268);
  sub_2170081F4();
  v7 = sub_2166D9530(&qword_27CACC260, &qword_27CACC258);
  MEMORY[0x21CE9A570](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_216EB56D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700D3B4();
  v3 = MEMORY[0x277D21D10];
  a1[3] = v2;
  a1[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_216EB57CC(boxed_opaque_existential_1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC268);
  v6 = v5[11];
  v7 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[12];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v5[13];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = sub_216EB5B84;
  a1[6] = 0;
  return result;
}

uint64_t sub_216EB57CC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for SocialProfileFollowRequestLockup();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700D284();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11);
  v37 = &v34 - v12;
  sub_21700D234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
  v13 = swift_allocObject();
  v35 = v10;
  v36 = v13;
  *(v13 + 16) = xmmword_217013D90;
  sub_21700D234();
  v14 = *(v1 + *(type metadata accessor for SocialProfileFollowRequestsPageComponentModel() + 24));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = &v5[*(v2 + 24)];
    v17 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v3 + 72);
    v19 = MEMORY[0x277D84F90];
    do
    {
      sub_216EB8700(v17, v5, type metadata accessor for SocialProfileFollowRequestLockup);
      v21 = *(v16 + 3);
      v20 = *(v16 + 4);
      sub_21700DF14();
      sub_216EB8D7C(v5, type metadata accessor for SocialProfileFollowRequestLockup);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v19 = v24;
        }

        v22 = *(v19 + 16);
        if (v22 >= *(v19 + 24) >> 1)
        {
          sub_21693776C();
          v19 = v25;
        }

        *(v19 + 16) = v22 + 1;
        v23 = v19 + 16 * v22;
        *(v23 + 32) = v21;
        *(v23 + 40) = v20;
      }

      v17 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v26 = type metadata accessor for ApproveAllFollowRequestsAction();
  v27 = v36;
  v36[7] = v26;
  v27[8] = sub_216EB869C(&qword_280E30E70, type metadata accessor for ApproveAllFollowRequestsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27 + 4);
  v29 = v40;
  v30 = *(v39 + 32);
  v30(boxed_opaque_existential_1, v35, v40);
  *(boxed_opaque_existential_1 + *(v26 + 20)) = v19;
  v31 = v38;
  sub_21700D234();
  v27[12] = type metadata accessor for PopAction();
  v27[13] = sub_216EB869C(&qword_280E2B650, type metadata accessor for PopAction);
  v32 = __swift_allocate_boxed_opaque_existential_1(v27 + 9);
  v30(v32, v31, v29);
  return sub_21700D394();
}

uint64_t sub_216EB5B84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_216983738(27);
  v4 = v3;
  v5 = sub_21700AC54();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  v7 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v7;
  a1[4] = result;
  a1[5] = v5;
  return result;
}

uint64_t sub_216EB5BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SocialProfileFollowRequestLockup();
  v7 = a1 + *(v6 + 24);
  v8 = *(v7 + 32);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(v7 + 24);
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 && (v11 = *(a2 + *(type metadata accessor for SocialProfileFollowRequestsPageView(0) + 28)), v12 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs, swift_beginAccess(), v13 = *(v11 + v12), sub_21700DF14(), v14 = sub_216CE11AC(v9, v8, v13), , (v14 & 1) != 0))
  {
    sub_216EB8700(a1, a3, type metadata accessor for SocialProfileFollowRequestLockup);
    v15 = 0;
  }

  else
  {
LABEL_7:
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v15, 1, v6);
}

unint64_t sub_216EB5D0C()
{
  result = qword_27CACC228;
  if (!qword_27CACC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC220);
    sub_216EB5D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC228);
  }

  return result;
}

unint64_t sub_216EB5D90()
{
  result = qword_27CACC230;
  if (!qword_27CACC230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC238);
    sub_216EB869C(&qword_27CACC240, type metadata accessor for FollowRequestView);
    sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC230);
  }

  return result;
}

uint64_t sub_216EB5EA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170091A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2B0);
  return sub_216EB5EFC(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_216EB5EFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2B8);
  MEMORY[0x28223BE20](v59);
  v4 = (&v57 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2C0);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v57 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2C8);
  MEMORY[0x28223BE20](v58);
  v10 = (&v57 - v9);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2D0);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v57 - v13;
  v14 = type metadata accessor for FollowRequestView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2D8);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC2E0);
  v21 = *(v20 - 8);
  v65 = v20;
  v66 = v21;
  MEMORY[0x28223BE20](v20);
  v63 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v64 = &v57 - v24;
  sub_216EB6718(a1, v19);
  sub_216EB8700(a1, &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FollowRequestView);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_216EB8A5C(&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for FollowRequestView);
  sub_216EB8B18();
  sub_21700A494();

  sub_216697664(v19, &qword_27CACC2D8);
  v57 = type metadata accessor for SocialProfileFollowRequestLockup();
  sub_216EB7B88(a1 + *(v57 + 48), v10);
  v27 = v59;
  v28 = *(v59 + 44);
  v29 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10 + v28, 1, 1, v29);
  v30 = v27[12];
  *(v10 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v31 = v10 + v27[13];
  *v31 = swift_getKeyPath();
  v31[40] = 0;
  v10[7] = 0;
  v10[8] = 0;
  v10[5] = sub_216EB7DF0;
  v10[6] = 0;
  LOBYTE(v31) = sub_217009CD4();
  sub_217007F24();
  v32 = v10 + *(v58 + 36);
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_216EB8BC8();
  sub_216EB8C80();
  v37 = v62;
  sub_21700A374();
  sub_216697664(v10, &qword_27CACC2C8);
  sub_216EB7B88(a1 + *(v57 + 44), v4);
  __swift_storeEnumTagSinglePayload(v4 + v27[11], 1, 1, v29);
  v38 = v27[12];
  *(v4 + v38) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v4 + v27[13];
  *v39 = swift_getKeyPath();
  v39[40] = 0;
  v4[5] = sub_216EB80A8;
  sub_2166D9530(&qword_27CACC308, &qword_27CACC2B8);
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = 0;
  v40 = v69;
  sub_21700A374();
  sub_216697664(v4, &qword_27CACC2B8);
  v41 = v65;
  v42 = *(v66 + 16);
  v43 = v63;
  v42(v63, v64, v65);
  v59 = *(v70 + 16);
  v44 = v67;
  (v59)(v67, v37, v68);
  v45 = *(v71 + 16);
  v46 = v60;
  v45(v60, v40, v72);
  v47 = v61;
  v42(v61, v43, v41);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC318);
  v49 = v44;
  v50 = v68;
  (v59)(&v47[*(v48 + 48)], v49, v68);
  v51 = v72;
  v45(&v47[*(v48 + 64)], v46, v72);
  v52 = *(v71 + 8);
  v52(v69, v51);
  v53 = *(v70 + 8);
  v53(v62, v50);
  v54 = v65;
  v55 = *(v66 + 8);
  v55(v64, v65);
  v52(v46, v51);
  v53(v67, v50);
  return (v55)(v63, v54);
}

uint64_t sub_216EB6718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8 - 8];
  *v9 = sub_21700B3D4();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC358);
  sub_216EB6988(a1, v9 + *(v11 + 44));
  v12 = sub_2170093C4();
  v20 = 1;
  sub_216EB771C(a1, __src);
  memcpy(v21, __src, sizeof(v21));
  memcpy(v22, __src, sizeof(v22));
  sub_216683A80(v21, v23, &qword_27CAC0C08);
  sub_216697664(v22, &qword_27CAC0C08);
  memcpy(&v19[7], v21, 0x80uLL);
  v13 = v20;
  sub_216683A80(v9, v6, &qword_27CACC350);
  sub_216683A80(v6, a2, &qword_27CACC350);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC360);
  v15 = *(v14 + 48);
  v23[0] = v12;
  v23[1] = 0;
  LOBYTE(v23[2]) = v13;
  memcpy(&v23[2] + 1, v19, 0x87uLL);
  memcpy((a2 + v15), v23, 0x98uLL);
  v16 = a2 + *(v14 + 64);
  *v16 = 0x4024000000000000;
  *(v16 + 8) = 0;
  sub_216683A80(v23, __src, &qword_27CAC57A0);
  sub_216697664(v9, &qword_27CACC350);
  __src[0] = v12;
  __src[1] = 0;
  LOBYTE(__src[2]) = v13;
  memcpy(&__src[2] + 1, v19, 0x87uLL);
  sub_216697664(__src, &qword_27CAC57A0);
  return sub_216697664(v6, &qword_27CACC350);
}

uint64_t sub_216EB6988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D00);
  MEMORY[0x28223BE20](v113);
  v97 = (&v96 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D08);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = &v96 - v9;
  v10 = sub_21700C444();
  v109 = *(v10 - 8);
  v110 = v10;
  MEMORY[0x28223BE20](v10);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v96 - v19;
  v105 = sub_217007474();
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - v24;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v98 = &v96 - v26;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7690);
  MEMORY[0x28223BE20](v100);
  v28 = &v96 - v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D10);
  MEMORY[0x28223BE20](v108);
  v112 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v103 = &v96 - v31;
  MEMORY[0x28223BE20](v32);
  v111 = &v96 - v33;
  v99 = type metadata accessor for SocialProfileFollowRequestLockup();
  v34 = *(v99 + 56);
  v35 = a1;
  sub_216683A80(a1 + v34, v17, &qword_27CAB6D60);
  v36 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v17, 1, v36) == 1)
  {
    sub_216697664(v17, &qword_27CAB6D60);
    v37 = sub_21700C4B4();
    v38 = v20;
    v39 = 1;
  }

  else
  {
    v40 = sub_21700C4B4();
    (*(*(v40 - 8) + 16))(v20, v17, v40);
    sub_216EB8D7C(v17, type metadata accessor for Artwork);
    v38 = v20;
    v39 = 0;
    v37 = v40;
  }

  __swift_storeEnumTagSinglePayload(v38, v39, 1, v37);
  sub_217007434();
  v41 = v35 + v34;
  v42 = v35;
  sub_216683A80(v41, v14, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v36);
  v44 = v110;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60);
    v45 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v44);
    v46 = v107;
    sub_21700C414();
    v47 = __swift_getEnumTagSinglePayload(v45, 1, v44);
    v48 = v109;
    if (v47 != 1)
    {
      sub_216697664(v45, &qword_27CAB7530);
    }
  }

  else
  {
    v48 = v109;
    v49 = &v14[*(v36 + 20)];
    v50 = v106;
    (*(v109 + 16))(v106, v49, v110);
    sub_216EB8D7C(v14, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v44);
    v46 = v107;
    (*(v48 + 32))(v107, v50, v44);
  }

  sub_2170073E4();
  (*(v48 + 8))(v46, v44);
  v51 = *(v102 + 8);
  v52 = v105;
  v51(v22, v105);
  v53 = v99;
  v54 = (v42 + *(v99 + 28));
  v56 = *v54;
  v55 = v54[1];
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v55;
  sub_2167C505C();
  sub_21700DF14();
  v58 = v25;
  v59 = v42;
  v60 = v98;
  sub_2170073F4();

  v51(v58, v52);
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v61 = qword_280E73AA0;
  v62 = byte_280E73AA8;
  v63 = qword_280E73AB0;
  (*(v101 + 32))(v28, v60, v104);
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v65 = &v28[*(v100 + 36)];
  *v65 = v61;
  v65[8] = v62;
  *(v65 + 2) = v63;
  *(v65 + 3) = KeyPath;
  v65[32] = 0;

  LOBYTE(v63) = sub_217009CD4();
  sub_217007F24();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v28;
  v75 = v103;
  sub_2167C5834(v74, v103, &qword_27CAB7690);
  v76 = v75 + *(v108 + 36);
  *v76 = v63;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  v77 = v111;
  sub_2167C5834(v75, v111, &qword_27CAC0D10);
  v78 = v114;
  if (*(v59 + *(v53 + 40)))
  {
    v79 = sub_21700B3B4();
    v80 = v97;
    *v97 = v79;
    *(v80 + 8) = v81;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D28);
    sub_216EB74F4((v80 + *(v82 + 44)));
    sub_21700B3B4();
    sub_2170083C4();
    v83 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D30) + 36));
    v84 = v118;
    *v83 = v117;
    v83[1] = v84;
    v83[2] = v119;
    v85 = sub_217009C84();
    v86 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D38) + 36);
    *v86 = v85;
    *(v86 + 8) = 0x403E000000000000;
    *(v86 + 16) = 0;
    *(v86 + 24) = 0;
    *(v86 + 32) = 0;
    *(v86 + 40) = 0;
    sub_21700ACC4();
    v87 = sub_21700AD04();

    v88 = v113;
    v89 = v80 + *(v113 + 36);
    *v89 = v87;
    *(v89 + 8) = xmmword_21703B0A0;
    *(v89 + 24) = 0x4000000000000000;
    sub_2167C5834(v80, v78, &qword_27CAC0D00);
    v90 = 0;
  }

  else
  {
    v90 = 1;
    v88 = v113;
  }

  __swift_storeEnumTagSinglePayload(v78, v90, 1, v88);
  v91 = v112;
  sub_216683A80(v77, v112, &qword_27CAC0D10);
  v92 = v115;
  sub_216683A80(v78, v115, &qword_27CAC0D08);
  v93 = v116;
  sub_216683A80(v91, v116, &qword_27CAC0D10);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC368);
  sub_216683A80(v92, v93 + *(v94 + 48), &qword_27CAC0D08);
  sub_216697664(v78, &qword_27CAC0D08);
  sub_216697664(v77, &qword_27CAC0D10);
  sub_216697664(v92, &qword_27CAC0D08);
  return sub_216697664(v91, &qword_27CAC0D10);
}

uint64_t sub_216EB74F4@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v21 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v9 = sub_21700ADB4();
  v10 = sub_217009E64();
  v11 = swift_getKeyPath();
  v23 = v9;
  v24 = v11;
  v25 = v10;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
  sub_2167E947C();
  sub_21700A304();

  v12 = sub_21700ACE4();
  v13 = swift_getKeyPath();
  v14 = &v7[*(v2 + 44)];
  *v14 = v13;
  v14[1] = v12;
  sub_216683A80(v7, v4, &qword_27CAB8248);
  v16 = v21;
  v15 = v22;
  *v22 = KeyPath;
  v15[1] = v16;
  v17 = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D40);
  sub_216683A80(v4, v17 + *(v18 + 48), &qword_27CAB8248);

  sub_216697664(v7, &qword_27CAB8248);
  sub_216697664(v4, &qword_27CAB8248);
}

uint64_t sub_216EB771C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for SocialProfileFollowRequestLockup();
  v4 = (a1 + *(v3 + 28));
  v5 = v4[1];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v24 = *v4;
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  sub_21700DF14();
  v7 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v21 = sub_217009E54();
  v9 = swift_getKeyPath();
  v10 = sub_216F073C4(*(a1 + *(v3 + 32)), *(a1 + *(v3 + 32) + 8));
  v12 = v11;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v20 = v14;
  v15 = sub_21700AD34();
  v16 = swift_getKeyPath();
  v17 = sub_217009E64();
  v18 = swift_getKeyPath();
  *&v26 = v24;
  *(&v26 + 1) = v5;
  *&v27 = 0;
  *(&v27 + 1) = v23;
  *&v28 = KeyPath;
  *(&v28 + 1) = v7;
  *&v29 = v9;
  *(&v29 + 1) = v21;
  *&v30 = v13;
  __src[0] = v26;
  __src[1] = v27;
  __src[2] = v28;
  __src[3] = v29;
  *(&v30 + 1) = v12;
  *&v31 = 0;
  *(&v31 + 1) = v20;
  *&v32 = v16;
  *(&v32 + 1) = v15;
  *&v33 = v18;
  *(&v33 + 1) = v17;
  __src[6] = v32;
  __src[7] = v33;
  __src[4] = v30;
  __src[5] = v31;
  memcpy(a2, __src, 0x80uLL);
  v34[0] = v13;
  v34[1] = v12;
  v34[2] = 0;
  v34[3] = v20;
  v34[4] = v16;
  v34[5] = v15;
  v34[6] = v18;
  v34[7] = v17;
  sub_216683A80(&v26, v35, &qword_27CAB7E88);
  sub_216683A80(&v30, v35, &qword_27CAB7E88);
  sub_216697664(v34, &qword_27CAB7E88);
  v35[0] = v24;
  v35[1] = v5;
  v35[2] = 0;
  v35[3] = v23;
  v35[4] = KeyPath;
  v35[5] = v7;
  v35[6] = v9;
  v35[7] = v21;
  return sub_216697664(v35, &qword_27CAB7E88);
}

uint64_t sub_216EB7944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = type metadata accessor for SocialProfileFollowRequestLockup();
  sub_216683A80(a1 + *(v10 + 52), &v12, &qword_27CAB6DB0);
  if (!v13)
  {
    return sub_216697664(&v12, &qword_27CAB6DB0);
  }

  sub_2166A0F18(&v12, v14);
  type metadata accessor for FollowRequestView(0);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v2);
  sub_21700D5E4();

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_216EB7B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21700D284();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  sub_216683A80(a1, &v17, &qword_27CAB6DB0);
  if (v18)
  {
    sub_2166A0F18(&v17, v19);
    v10 = *(v2 + *(type metadata accessor for FollowRequestView(0) + 28));
    v11 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
    swift_beginAccess();
    if (*(*(v10 + v11) + 16) == 1)
    {
      sub_21700D234();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_217013D90;
      sub_2167B7D58(v19, v12 + 32);
      sub_21700D234();
      *(v12 + 96) = type metadata accessor for PopAction();
      *(v12 + 104) = sub_216EB869C(&qword_280E2B650, type metadata accessor for PopAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 72));
      (*(v6 + 32))(boxed_opaque_existential_1, v8, v5);
      v14 = sub_21700D3B4();
      v15 = MEMORY[0x277D21D10];
      *(a2 + 24) = v14;
      *(a2 + 32) = v15;
      __swift_allocate_boxed_opaque_existential_1(a2);
      sub_21700D394();
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      return sub_2166A0F18(v19, a2);
    }
  }

  else
  {
    result = sub_216697664(&v17, &qword_27CAB6DB0);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_216EB7DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700ADB4();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_21700AE04();

  (*(v3 + 8))(v5, v2);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC320) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v9 = *MEMORY[0x277CE1050];
  v10 = sub_21700ADF4();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a1 = v6;
  *(a1 + 8) = 256;
  sub_21700B3B4();
  sub_2170083C4();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC328) + 36));
  v12 = v20[1];
  *v11 = v20[0];
  v11[1] = v12;
  v11[2] = v20[2];
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC330) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC338) + 28);
  sub_2170093E4();
  v15 = sub_2170093F4();
  __swift_storeEnumTagSinglePayload(v13 + v14, 0, 1, v15);
  *v13 = swift_getKeyPath();
  v16 = sub_21700ACF4();
  v17 = sub_21700AC84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC340);
  v19 = (a1 + *(result + 36));
  *v19 = v16;
  v19[1] = v17;
  return result;
}

uint64_t sub_216EB80A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700ADB4();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_21700AE04();

  (*(v3 + 8))(v5, v2);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC320) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v9 = *MEMORY[0x277CE1050];
  v10 = sub_21700ADF4();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a1 = v6;
  *(a1 + 8) = 256;
  sub_21700B3B4();
  sub_2170083C4();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC328) + 36));
  v12 = v20[1];
  *v11 = v20[0];
  v11[1] = v12;
  v11[2] = v20[2];
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC330) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC338) + 28);
  sub_2170093E4();
  v15 = sub_2170093F4();
  __swift_storeEnumTagSinglePayload(v13 + v14, 0, 1, v15);
  *v13 = swift_getKeyPath();
  v16 = sub_21700ACF4();
  v17 = sub_21700ACE4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC340);
  v19 = (a1 + *(result + 36));
  *v19 = v16;
  v19[1] = v17;
  return result;
}

uint64_t sub_216EB8364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = sub_217009574();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = sub_217009934();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC380);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC388);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - v23;
  v37 = a1;
  sub_217009944();
  if (sub_217009954())
  {
    v25 = 1.25;
  }

  else
  {
    v25 = 1.0;
  }

  sub_21700B564();
  v27 = v26;
  v29 = v28;
  (*(v11 + 32))(v19, v15, v9);
  v30 = &v19[*(v16 + 36)];
  *v30 = v25;
  *(v30 + 1) = v25;
  *(v30 + 2) = v27;
  *(v30 + 3) = v29;
  sub_217008C84();
  sub_216EB8E00();
  sub_216EB869C(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v31 = v39;
  sub_21700A3E4();
  (*(v4 + 8))(v8, v31);
  sub_216697664(v19, &qword_27CACC380);
  v32 = sub_21700B404();
  v33 = sub_217009954();
  v34 = v40;
  (*(v21 + 32))(v40, v24, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC398);
  v36 = v34 + *(result + 36);
  *v36 = v32;
  *(v36 + 8) = v33 & 1;
  return result;
}

uint64_t sub_216EB869C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216EB8700(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216EB875C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SocialProfileFollowRequestsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_216EB53AC(a1, v6, a2);
}

uint64_t __swift_get_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216EB8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ObjectGraph();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for UserSocialProfileCoordinator();
      if (v7 <= 0x3F)
      {
        result = type metadata accessor for SocialGraphController();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_216EB8A5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216EB8AB8()
{
  v1 = *(type metadata accessor for FollowRequestView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216EB7944(v2);
}

unint64_t sub_216EB8B18()
{
  result = qword_27CACC2E8;
  if (!qword_27CACC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC2D8);
    sub_2166D9530(&qword_27CACC2F0, &qword_27CACC2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC2E8);
  }

  return result;
}

unint64_t sub_216EB8BC8()
{
  result = qword_27CACC300;
  if (!qword_27CACC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC2C8);
    sub_2166D9530(&qword_27CACC308, &qword_27CACC2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC300);
  }

  return result;
}

unint64_t sub_216EB8C80()
{
  result = qword_27CACC310;
  if (!qword_27CACC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC310);
  }

  return result;
}

uint64_t sub_216EB8CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC348);
  MEMORY[0x28223BE20](v2 - 8);
  sub_216683A80(a1, &v5 - v3, &qword_27CACC348);
  return sub_217008F94();
}

uint64_t sub_216EB8D7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216EB8E00()
{
  result = qword_27CACC390;
  if (!qword_27CACC390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC380);
    sub_216EB869C(qword_27CABE500, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC390);
  }

  return result;
}

unint64_t sub_216EB8EBC()
{
  result = qword_27CACC3A0;
  if (!qword_27CACC3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC380);
    sub_217009574();
    sub_216EB8E00();
    sub_216EB869C(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2AC40, &qword_27CAB7480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC3A0);
  }

  return result;
}

uint64_t sub_216EB902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC3A8) + 36));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C24();
  v10 = *(sub_217008B44() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_217009294();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = a4;
  v8[1] = a4;
  *(v8 + *(sub_217008B34() + 20)) = a3;
  *(v8 + *(v9 + 36)) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC3B0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

unint64_t sub_216EB917C()
{
  result = qword_280E2B218;
  if (!qword_280E2B218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC3A8);
    sub_2166D9530(&qword_280E2A8B8, &qword_27CACC3B0);
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B218);
  }

  return result;
}

uint64_t sub_216EB92CC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v11 = v3;
  OUTLINED_FUNCTION_1_213();
  sub_216EBD428(v7, v8);
  sub_2170066D4();

  v9 = *a1;
  swift_beginAccess();
  return sub_2166A6E54(v11 + v9, a3, a2);
}

uint64_t sub_216EB939C()
{
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v82 = v1;
  v83 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v81 = v3 - v2;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v79 = v5;
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v78 = v7 - v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v85 = v9;
  v86 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v84 = v11 - v10;
  OUTLINED_FUNCTION_4_1();
  sub_21700C384();
  OUTLINED_FUNCTION_1();
  v88 = v13;
  v89 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v87 = v15 - v14;
  OUTLINED_FUNCTION_4_1();
  v16 = sub_217006864();
  OUTLINED_FUNCTION_1();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  v23 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v36 = v35 - v34;
  (*(v32 + 16))(v35 - v34, v90, v30);
  v37 = (*(v32 + 88))(v36, v30);
  if (v37 == *MEMORY[0x277D2A400])
  {
    v38 = OUTLINED_FUNCTION_8_114();
    v39(v38);
    v40 = OUTLINED_FUNCTION_19_61();
    v41(v40);
    sub_21700C0A4();
    OUTLINED_FUNCTION_31_53();
    v42(v20);
    sub_217006854();
    OUTLINED_FUNCTION_29_53();
    (v32)(v20, v16);
    (v32)(v22, v16);
    (*(v25 + 8))(v29, v23);
    return v36 & 1;
  }

  v90 = v16;
  if (v37 != *MEMORY[0x277D2A418])
  {
    if (v37 != *MEMORY[0x277D2A438] && v37 != *MEMORY[0x277D2A428] && v37 != *MEMORY[0x277D2A388] && v37 != *MEMORY[0x277D2A408] && v37 != *MEMORY[0x277D2A3B0])
    {
      if (v37 == *MEMORY[0x277D2A3B8])
      {
        v53 = OUTLINED_FUNCTION_8_114();
        v54(v53);
        v45 = v84;
        v46 = v85;
        v55 = OUTLINED_FUNCTION_26_51();
        v48 = v86;
        v56(v55);
        sub_21700B984();
        goto LABEL_6;
      }

      v57 = v90;
      v58 = v20;
      if (v37 == *MEMORY[0x277D2A440])
      {
        v59 = OUTLINED_FUNCTION_8_114();
        v60(v59);
        v61 = v57;
        v62 = v81;
        v63 = v82;
        v64 = OUTLINED_FUNCTION_19_61();
        v65 = v83;
        v66(v64);
        sub_21700C6B4();
        OUTLINED_FUNCTION_31_53();
        v67(v58);
        sub_217006854();
        OUTLINED_FUNCTION_29_53();
        (v32)(v58, v61);
        (v32)(v22, v61);
        (*(v63 + 8))(v62, v65);
        return v36 & 1;
      }

      if (v37 != *MEMORY[0x277D2A450] && v37 != *MEMORY[0x277D2A3C0] && v37 != *MEMORY[0x277D2A3D0] && v37 == *MEMORY[0x277D2A3F8])
      {
        v68 = v22;
        v69 = OUTLINED_FUNCTION_8_114();
        v70(v69);
        v71 = v78;
        v72 = v79;
        v73 = OUTLINED_FUNCTION_19_61();
        v74 = v80;
        v75(v73);
        sub_21700BF34();
        OUTLINED_FUNCTION_31_53();
        v76(v58);
        sub_217006854();
        OUTLINED_FUNCTION_29_53();
        (v32)(v58, v57);
        (v32)(v68, v57);
        (*(v72 + 8))(v71, v74);
        return v36 & 1;
      }
    }

    (*(v32 + 8))(v36, v30);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  v43 = OUTLINED_FUNCTION_8_114();
  v44(v43);
  v45 = v87;
  v46 = v88;
  v47 = OUTLINED_FUNCTION_26_51();
  v48 = v89;
  v49(v47);
  sub_21700C304();
LABEL_6:
  OUTLINED_FUNCTION_31_53();
  v50 = v90;
  v51(v20);
  sub_217006854();
  OUTLINED_FUNCTION_29_53();
  (v32)(v20, v50);
  (v32)(v22, v50);
  (*(v46 + 8))(v45, v48);
  return v36 & 1;
}

uint64_t sub_216EB9B18(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = qword_280E40178;
  swift_beginAccess();
  sub_2166A6E54(v1 + v6, v5, &qword_27CAB8A00);
  sub_216EBD658();
  v7 = sub_21669946C();
  v8 = sub_2166997CC(v5, &qword_27CAB8A00);
  if (v7)
  {
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_13_83();
    swift_getKeyPath();
    OUTLINED_FUNCTION_24_45();
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_14();
    sub_216EB9F6C();
  }

  else
  {
    OUTLINED_FUNCTION_11_90();
    sub_216EBD504(a1, v1 + v6, &qword_27CAB8A00);
    swift_endAccess();
  }

  return sub_2166997CC(a1, &qword_27CAB8A00);
}

uint64_t sub_216EB9CEC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  sub_216EB9EF4();

  v3 = qword_280E40178;
  swift_beginAccess();
  return sub_2166A6E54(v1 + v3, a1, &qword_27CAB8A00);
}

uint64_t sub_216EB9DB4(uint64_t a1)
{
  OUTLINED_FUNCTION_12_3();
  v3 = qword_280E40180;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC428);
  sub_216EBD588();
  v4 = sub_21669946C();

  if (v4)
  {
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_13_83();
    swift_getKeyPath();
    OUTLINED_FUNCTION_24_45();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_14();
    sub_216EB9F6C();
  }

  else
  {
    *(v1 + v3) = a1;
  }
}

uint64_t sub_216EB9EF4()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_10_104();
  swift_getWitnessTable();
  return sub_2170066D4();
}

uint64_t sub_216EB9F6C()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_10_104();
  swift_getWitnessTable();
  return sub_2170066C4();
}

uint64_t sub_216EBA01C()
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  sub_216EB9EF4();
}

uint64_t sub_216EBA0B0(uint64_t a1, uint64_t a2)
{
  *(a1 + qword_280E40180) = a2;
}

uint64_t sub_216EBA0F4()
{
  sub_2166997CC(v0 + qword_280E40178, &qword_27CAB8A00);

  v1 = qword_280E40170;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216EBA1A0()
{
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI25PlaylistItemStateObserver__favoriteStatus, &qword_27CAB8A00);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI25PlaylistItemStateObserver__itemState, &unk_27CABF7A0);
  v1 = OBJC_IVAR____TtC7MusicUI25PlaylistItemStateObserver___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void sub_216EBA284()
{
  sub_2166D9478(319, &qword_280E4A460, MEMORY[0x277D2A4B8]);
  if (v0 <= 0x3F)
  {
    sub_217006714();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *sub_216EBA37C(uint64_t a1)
{
  v84 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC3E8);
  OUTLINED_FUNCTION_1();
  v88 = v2;
  v89 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v86 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC3F0);
  OUTLINED_FUNCTION_1();
  v90 = v6;
  v91 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v87 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v85 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC3F8);
  OUTLINED_FUNCTION_1();
  v80 = v13;
  v81 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v78 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC400);
  OUTLINED_FUNCTION_1();
  v82 = v17;
  v83 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v79 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  v77 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  OUTLINED_FUNCTION_36(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC408);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - v32;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC410);
  OUTLINED_FUNCTION_1();
  v76 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v37 = &v74 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  OUTLINED_FUNCTION_36(v38);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  v41 = &v74 - v40;
  v42 = sub_217006864();
  OUTLINED_FUNCTION_15_74(v42);
  v43 = sub_21700BBA4();
  OUTLINED_FUNCTION_15_74(v43);
  v44 = sub_21700BDB4();
  OUTLINED_FUNCTION_15_74(v44);
  *&v1[OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__subscriptions] = MEMORY[0x277D84FA0];
  sub_217006704();
  sub_21700BE44();
  sub_21700BE34();
  v45 = sub_21700BD04();

  *&v1[OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver_itemState] = v45;

  sub_21700BC34();
  sub_216EBAFC4(v41);
  sub_21700BC54();
  v93 = sub_2166AF2EC();
  v46 = sub_21700EE84();
  v98 = v46;
  v97 = sub_21700EE64();
  v47 = OUTLINED_FUNCTION_22_61();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v96 = MEMORY[0x277CBCEC8];
  sub_2166D9530(&qword_280E484F0, &qword_27CACC408);
  v95 = sub_216EBD428(&qword_280E29CD8, sub_2166AF2EC);
  sub_217007E54();
  sub_2166997CC(v27, &qword_27CABE1F0);

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();
  v94 = MEMORY[0x277CBCD60];
  sub_2166D9530(&qword_280E48568, &qword_27CACC410);

  v51 = v75;
  sub_217007E84();

  (*(v76 + 8))(v37, v51);
  swift_getKeyPath();
  v98 = v1;
  OUTLINED_FUNCTION_1_213();
  sub_216EBD428(v52, v53);
  OUTLINED_FUNCTION_7_117();
  sub_2170066D4();

  v98 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_117();
  sub_2170066F4();

  OUTLINED_FUNCTION_11_90();
  sub_217007D24();
  swift_endAccess();

  v98 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_123();
  sub_2170066E4();

  v54 = v77;
  v92 = v45;
  sub_21700BC24();
  sub_216EBB6CC(v54);
  v55 = v78;
  sub_21700BC44();
  v56 = sub_21700EE84();
  v98 = v56;
  v57 = OUTLINED_FUNCTION_22_61();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v97);
  sub_2166D9530(&qword_280E484B8, &qword_27CACC3F8);
  v60 = v79;
  v61 = v80;
  sub_217007E54();
  sub_2166997CC(v27, &qword_27CABE1F0);

  (*(v81 + 8))(v55, v61);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_280E48558, &qword_27CACC400);
  v62 = v82;
  sub_217007E84();

  (*(v83 + 8))(v60, v62);
  swift_getKeyPath();
  v98 = v1;
  OUTLINED_FUNCTION_7_117();
  sub_2170066D4();

  OUTLINED_FUNCTION_33_40();
  OUTLINED_FUNCTION_7_117();
  sub_2170066F4();

  OUTLINED_FUNCTION_11_90();
  sub_217007D24();
  swift_endAccess();

  OUTLINED_FUNCTION_33_40();
  OUTLINED_FUNCTION_6_123();
  sub_2170066E4();

  v63 = v85;
  sub_21700BC64();
  sub_216EBBDD4(v63);
  v64 = v86;
  sub_21700BC14();
  v65 = sub_21700EE84();
  v98 = v65;
  v66 = OUTLINED_FUNCTION_22_61();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v97);
  sub_2166D9530(&qword_280E484B0, &qword_27CACC3E8);
  v70 = v87;
  v69 = v88;
  sub_217007E54();
  sub_2166997CC(v27, &qword_27CABE1F0);

  (*(v89 + 8))(v64, v69);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();

  sub_2166D9530(&qword_280E48550, &qword_27CACC3F0);
  v71 = v90;
  sub_217007E84();

  (*(v91 + 8))(v70, v71);
  swift_getKeyPath();
  v98 = v1;
  OUTLINED_FUNCTION_6_123();
  sub_2170066D4();

  OUTLINED_FUNCTION_33_40();
  OUTLINED_FUNCTION_6_123();
  sub_2170066F4();

  OUTLINED_FUNCTION_11_90();
  sub_217007D24();
  swift_endAccess();

  OUTLINED_FUNCTION_33_40();
  sub_2170066E4();

  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v72 + 8))(v84);
  return v1;
}

uint64_t sub_216EBAED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__subscriptions;
  swift_beginAccess();
  v4 = sub_21700DF14();
  sub_2169FA130(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_216EBCE5C();
  }
}

uint64_t sub_216EBAFC4(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67_0();
  v7 = OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__favoriteStatus;
  OUTLINED_FUNCTION_16_72();
  OUTLINED_FUNCTION_17_74();
  sub_216EBC4DC(v2, a1);
  OUTLINED_FUNCTION_14_84();
  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_14();
    sub_216EBCE5C();
  }

  else
  {
    OUTLINED_FUNCTION_11_90();
    sub_216EBD504(a1, v1 + v7, &qword_27CAB8A00);
    swift_endAccess();
  }

  return sub_2166997CC(a1, &qword_27CAB8A00);
}

uint64_t sub_216EBB100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v48 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = sub_217006864();
  v50 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v42 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    sub_2166A6E54(a1, v18, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {

      return sub_2166997CC(v18, &qword_27CAB8A00);
    }

    v43 = v11;
    v46 = v8;
    v26 = v50;
    v27 = v4;
    v28 = v49;
    v42 = *(v50 + 32);
    v42(v49, v18, v19);
    v29 = v48;
    v47 = v25;
    sub_216EB9260(v48);
    v30 = v26;
    v31 = v29;
    v32 = v28;
    v33 = v27;
    v44 = *(v30 + 16);
    v45 = v30 + 16;
    v44(v14, v32, v19);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v19);
    v34 = *(v2 + 48);
    sub_2166A6E54(v31, v27, &qword_27CAB8A00);
    sub_2166A6E54(v14, v27 + v34, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v19) == 1)
    {
      sub_2166997CC(v14, &qword_27CAB8A00);
      sub_2166997CC(v31, &qword_27CAB8A00);
      if (__swift_getEnumTagSinglePayload(v27 + v34, 1, v19) == 1)
      {
        sub_2166997CC(v27, &qword_27CAB8A00);
        (*(v50 + 8))(v49, v19);
      }
    }

    else
    {
      v35 = v27;
      v36 = v43;
      sub_2166A6E54(v35, v43, &qword_27CAB8A00);
      if (__swift_getEnumTagSinglePayload(v33 + v34, 1, v19) != 1)
      {
        v42(v22, (v33 + v34), v19);
        sub_216EBD428(&qword_280E4A468, MEMORY[0x277D2A4B8]);
        v39 = sub_21700E494();
        v40 = v31;
        v41 = *(v50 + 8);
        v41(v22, v19);
        sub_2166997CC(v14, &qword_27CAB8A00);
        sub_2166997CC(v40, &qword_27CAB8A00);
        v41(v36, v19);
        sub_2166997CC(v33, &qword_27CAB8A00);
        if (v39)
        {
          v41(v49, v19);
        }

LABEL_10:
        v37 = v46;
        v38 = v49;
        v44(v46, v49, v19);
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v19);
        sub_216EBAFC4(v37);

        return (*(v50 + 8))(v38, v19);
      }

      sub_2166997CC(v14, &qword_27CAB8A00);
      sub_2166997CC(v31, &qword_27CAB8A00);
      (*(v50 + 8))(v36, v19);
    }

    sub_2166997CC(v33, &qword_27CAB89F8);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_216EBB6CC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67_0();
  v7 = OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__downloadStatus;
  OUTLINED_FUNCTION_16_72();
  OUTLINED_FUNCTION_17_74();
  sub_216EBC7DC(v2, a1);
  OUTLINED_FUNCTION_14_84();
  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_14();
    sub_216EBCE5C();
  }

  else
  {
    OUTLINED_FUNCTION_11_90();
    sub_216EBD504(a1, v1 + v7, &qword_27CAB81E0);
    swift_endAccess();
  }

  return sub_2166997CC(a1, &qword_27CAB81E0);
}

uint64_t sub_216EBB808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC420);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v48 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = sub_21700BBA4();
  v50 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v42 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    sub_2166A6E54(a1, v18, &qword_27CAB81E0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {

      return sub_2166997CC(v18, &qword_27CAB81E0);
    }

    v43 = v11;
    v46 = v8;
    v26 = v50;
    v27 = v4;
    v28 = v49;
    v42 = *(v50 + 32);
    v42(v49, v18, v19);
    v29 = v48;
    v47 = v25;
    sub_216EB9284(v48);
    v30 = v26;
    v31 = v29;
    v32 = v28;
    v33 = v27;
    v44 = *(v30 + 16);
    v45 = v30 + 16;
    v44(v14, v32, v19);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v19);
    v34 = *(v2 + 48);
    sub_2166A6E54(v31, v27, &qword_27CAB81E0);
    sub_2166A6E54(v14, v27 + v34, &qword_27CAB81E0);
    if (__swift_getEnumTagSinglePayload(v27, 1, v19) == 1)
    {
      sub_2166997CC(v14, &qword_27CAB81E0);
      sub_2166997CC(v31, &qword_27CAB81E0);
      if (__swift_getEnumTagSinglePayload(v27 + v34, 1, v19) == 1)
      {
        sub_2166997CC(v27, &qword_27CAB81E0);
        (*(v50 + 8))(v49, v19);
      }
    }

    else
    {
      v35 = v27;
      v36 = v43;
      sub_2166A6E54(v35, v43, &qword_27CAB81E0);
      if (__swift_getEnumTagSinglePayload(v33 + v34, 1, v19) != 1)
      {
        v42(v22, (v33 + v34), v19);
        sub_216EBD428(&qword_280E2A3F8, MEMORY[0x277D2B008]);
        v39 = sub_21700E494();
        v40 = v31;
        v41 = *(v50 + 8);
        v41(v22, v19);
        sub_2166997CC(v14, &qword_27CAB81E0);
        sub_2166997CC(v40, &qword_27CAB81E0);
        v41(v36, v19);
        sub_2166997CC(v33, &qword_27CAB81E0);
        if (v39)
        {
          v41(v49, v19);
        }

LABEL_10:
        v37 = v46;
        v38 = v49;
        v44(v46, v49, v19);
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v19);
        sub_216EBB6CC(v37);

        return (*(v50 + 8))(v38, v19);
      }

      sub_2166997CC(v14, &qword_27CAB81E0);
      sub_2166997CC(v31, &qword_27CAB81E0);
      (*(v50 + 8))(v36, v19);
    }

    sub_2166997CC(v33, &qword_27CACC420);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_216EBBDD4(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67_0();
  v7 = OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__libraryAddStatus;
  OUTLINED_FUNCTION_16_72();
  OUTLINED_FUNCTION_17_74();
  sub_216EBCADC(v2, a1);
  OUTLINED_FUNCTION_14_84();
  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_14();
    sub_216EBCE5C();
  }

  else
  {
    OUTLINED_FUNCTION_11_90();
    sub_216EBD504(a1, v1 + v7, &qword_27CAB8A70);
    swift_endAccess();
  }

  return sub_2166997CC(a1, &qword_27CAB8A70);
}

uint64_t sub_216EBBF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC418);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v48 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = sub_21700BDB4();
  v50 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v42 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    sub_2166A6E54(a1, v18, &qword_27CAB8A70);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {

      return sub_2166997CC(v18, &qword_27CAB8A70);
    }

    v43 = v11;
    v46 = v8;
    v26 = v50;
    v27 = v4;
    v28 = v49;
    v42 = *(v50 + 32);
    v42(v49, v18, v19);
    v29 = v48;
    v47 = v25;
    sub_216EB92A8(v48);
    v30 = v26;
    v31 = v29;
    v32 = v28;
    v33 = v27;
    v44 = *(v30 + 16);
    v45 = v30 + 16;
    v44(v14, v32, v19);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v19);
    v34 = *(v2 + 48);
    sub_2166A6E54(v31, v27, &qword_27CAB8A70);
    sub_2166A6E54(v14, v27 + v34, &qword_27CAB8A70);
    if (__swift_getEnumTagSinglePayload(v27, 1, v19) == 1)
    {
      sub_2166997CC(v14, &qword_27CAB8A70);
      sub_2166997CC(v31, &qword_27CAB8A70);
      if (__swift_getEnumTagSinglePayload(v27 + v34, 1, v19) == 1)
      {
        sub_2166997CC(v27, &qword_27CAB8A70);
        (*(v50 + 8))(v49, v19);
      }
    }

    else
    {
      v35 = v27;
      v36 = v43;
      sub_2166A6E54(v35, v43, &qword_27CAB8A70);
      if (__swift_getEnumTagSinglePayload(v33 + v34, 1, v19) != 1)
      {
        v42(v22, (v33 + v34), v19);
        sub_216EBD428(&qword_280E2A3E8, MEMORY[0x277D2B130]);
        v39 = sub_21700E494();
        v40 = v31;
        v41 = *(v50 + 8);
        v41(v22, v19);
        sub_2166997CC(v14, &qword_27CAB8A70);
        sub_2166997CC(v40, &qword_27CAB8A70);
        v41(v36, v19);
        sub_2166997CC(v33, &qword_27CAB8A70);
        if (v39)
        {
          v41(v49, v19);
        }

LABEL_10:
        v37 = v46;
        v38 = v49;
        v44(v46, v49, v19);
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v19);
        sub_216EBBDD4(v37);

        return (*(v50 + 8))(v38, v19);
      }

      sub_2166997CC(v14, &qword_27CAB8A70);
      sub_2166997CC(v31, &qword_27CAB8A70);
      (*(v50 + 8))(v36, v19);
    }

    sub_2166997CC(v33, &qword_27CACC418);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_216EBC4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_2166A6E54(a1, &v20 - v13, &qword_27CAB8A00);
  sub_2166A6E54(a2, &v14[v15], &qword_27CAB8A00);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_2166A6E54(v14, v10, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_216EBD428(&qword_280E4A468, MEMORY[0x277D2A4B8]);
      v17 = sub_21700E494();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_2166997CC(v14, &qword_27CAB8A00);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2166997CC(v14, &qword_27CAB89F8);
    v16 = 1;
    return v16 & 1;
  }

  sub_2166997CC(v14, &qword_27CAB8A00);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_216EBC7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700BBA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC420);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_2166A6E54(a1, &v20 - v13, &qword_27CAB81E0);
  sub_2166A6E54(a2, &v14[v15], &qword_27CAB81E0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_2166A6E54(v14, v10, &qword_27CAB81E0);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_216EBD428(&qword_280E2A3F8, MEMORY[0x277D2B008]);
      v17 = sub_21700E494();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_2166997CC(v14, &qword_27CAB81E0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2166997CC(v14, &qword_27CACC420);
    v16 = 1;
    return v16 & 1;
  }

  sub_2166997CC(v14, &qword_27CAB81E0);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_216EBCADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700BDB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC418);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_2166A6E54(a1, &v20 - v13, &qword_27CAB8A70);
  sub_2166A6E54(a2, &v14[v15], &qword_27CAB8A70);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_2166A6E54(v14, v10, &qword_27CAB8A70);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_216EBD428(&qword_280E2A3E8, MEMORY[0x277D2B130]);
      v17 = sub_21700E494();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_2166997CC(v14, &qword_27CAB8A70);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2166997CC(v14, &qword_27CACC418);
    v16 = 1;
    return v16 & 1;
  }

  sub_2166997CC(v14, &qword_27CAB8A70);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_216EBCDDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_216EBD504(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_216EBCE5C()
{
  OUTLINED_FUNCTION_1_213();
  sub_216EBD428(v0, v1);
  return sub_2170066C4();
}

uint64_t sub_216EBCF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_2166A6E54(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_216EBCFA8()
{
  swift_getKeyPath();
  sub_216EBD428(&qword_280E36928, type metadata accessor for GenericItemStateObserver);
  sub_2170066D4();

  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216EBD094(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_21700DF14();
}

uint64_t sub_216EBD104()
{
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__favoriteStatus, &qword_27CAB8A00);
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__downloadStatus, &qword_27CAB81E0);
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver__libraryAddStatus, &qword_27CAB8A70);

  v1 = OBJC_IVAR____TtC7MusicUI24GenericItemStateObserver___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216EBD1F0(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_12_3();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);

  return MEMORY[0x2821FE8D8](v1, v3, v4);
}

void sub_216EBD270()
{
  sub_2166D9478(319, &qword_280E4A460, MEMORY[0x277D2A4B8]);
  if (v0 <= 0x3F)
  {
    sub_2166D9478(319, &qword_280E2A3F0, MEMORY[0x277D2B008]);
    if (v1 <= 0x3F)
    {
      sub_2166D9478(319, &qword_280E2A3E0, MEMORY[0x277D2B130]);
      if (v2 <= 0x3F)
      {
        sub_217006714();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_216EBD428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216EBD504(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_34();
  (*(v5 + 24))(v3, v4);
  return v3;
}

unint64_t sub_216EBD588()
{
  result = qword_27CACC430;
  if (!qword_27CACC430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC428);
    sub_216EBD428(&qword_27CABF9D8, MEMORY[0x277CBCDA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC430);
  }

  return result;
}

unint64_t sub_216EBD658()
{
  result = qword_27CACC438;
  if (!qword_27CACC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A00);
    sub_216EBD428(&qword_280E4A468, MEMORY[0x277D2A4B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC438);
  }

  return result;
}

void sub_216EBD790()
{
  if (!qword_27CACC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC178);
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CACC440);
    }
  }
}

uint64_t sub_216EBD810(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC450);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC458);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = qword_280E40178;
  v17 = sub_217006864();
  __swift_storeEnumTagSinglePayload(v2 + v16, 1, 1, v17);
  *(v2 + qword_280E40180) = 0;
  sub_217006704();
  sub_21700BE44();
  sub_21700BE34();
  v18 = sub_21700C384();
  v19 = sub_21700BD14();

  *(v2 + qword_280E40188) = v19;

  sub_21700BDD4();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_216EBDCAC(v15);
  sub_21700BDE4();
  sub_2166AF2EC();
  v20 = sub_21700EE84();
  v30 = v20;
  v21 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
  sub_2166D9530(&qword_27CACC460, &qword_27CACC450);
  sub_2166D34A8(&qword_280E29CD8, sub_2166AF2EC);
  sub_217007E54();
  sub_2166997CC(v5, &qword_27CABE1F0);
  (*(v27 + 8))(v8, v6);

  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_27CACC468, &qword_27CACC458);
  v22 = v28;
  v23 = sub_217007E84();

  (*(v29 + 8))(v12, v22);
  sub_216EBE48C(v23);

  (*(*(v18 - 8) + 8))(v26, v18);
  return v2;
}

uint64_t sub_216EBDCAC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = qword_280E40178;
  swift_beginAccess();
  sub_216683A80(v1 + v6, v5, &qword_27CAB8A00);
  v7 = sub_216EBE794(v5, a1);
  v8 = sub_2166997CC(v5, &qword_27CAB8A00);
  if (v7)
  {
    MEMORY[0x28223BE20](v8);
    v9 = sub_21700C384();
    v10 = MEMORY[0x277D2B1E0];
    *&v13[-32] = v9;
    *&v13[-24] = v10;
    *&v13[-16] = sub_2166D34A8(&qword_27CABB808, MEMORY[0x277CD8428]);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    sub_216EBEB00();
  }

  else
  {
    swift_beginAccess();
    sub_216EC4680(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_2166997CC(a1, &qword_27CAB8A00);
}

uint64_t sub_216EBDEB0(uint64_t a1)
{
  v2 = sub_217006864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v34 = &v27[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v27[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v27[-v17];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = v10;
    sub_216EBE368(v18);
    v30 = v3;
    v20 = *(v3 + 16);
    v32 = a1;
    v20(v15, a1, v2);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
    v21 = *(v5 + 48);
    sub_216683A80(v18, v7, &qword_27CAB8A00);
    sub_216683A80(v15, &v7[v21], &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
    {
      sub_2166997CC(v15, &qword_27CAB8A00);
      sub_2166997CC(v18, &qword_27CAB8A00);
      if (__swift_getEnumTagSinglePayload(&v7[v21], 1, v2) == 1)
      {
        sub_2166997CC(v7, &qword_27CAB8A00);
      }
    }

    else
    {
      v22 = v34;
      sub_216683A80(v7, v34, &qword_27CAB8A00);
      if (__swift_getEnumTagSinglePayload(&v7[v21], 1, v2) != 1)
      {
        v29 = v20;
        v24 = v30;
        v25 = v33;
        (*(v30 + 32))(v33, &v7[v21], v2);
        sub_2166D34A8(&qword_280E4A468, MEMORY[0x277D2A4B8]);
        v28 = sub_21700E494();
        v26 = *(v24 + 8);
        v26(v25, v2);
        sub_2166997CC(v15, &qword_27CAB8A00);
        sub_2166997CC(v18, &qword_27CAB8A00);
        v26(v34, v2);
        v20 = v29;
        sub_2166997CC(v7, &qword_27CAB8A00);
        if (v28)
        {
        }

        goto LABEL_8;
      }

      sub_2166997CC(v15, &qword_27CAB8A00);
      sub_2166997CC(v18, &qword_27CAB8A00);
      (*(v30 + 8))(v22, v2);
    }

    sub_2166997CC(v7, &qword_27CAB89F8);
LABEL_8:
    v23 = v31;
    v20(v31, v32, v2);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v2);
    sub_216EBDCAC(v23);
  }

  return result;
}

uint64_t sub_216EBE368@<X0>(uint64_t a1@<X8>)
{
  sub_21700C384();
  sub_2166D34A8(&qword_27CABB808, MEMORY[0x277CD8428]);
  swift_getKeyPath();
  v5 = v1;
  sub_2166D9530(&qword_27CACC470, &qword_27CACC448);
  sub_2170066D4();

  v3 = qword_280E40178;
  swift_beginAccess();
  return sub_216683A80(v5 + v3, a1, &qword_27CAB8A00);
}

uint64_t sub_216EBE48C(uint64_t a1)
{
  v3 = qword_280E40180;

  v5 = sub_216EBE6CC(v4, a1);

  if (v5)
  {
    MEMORY[0x28223BE20](v6);
    sub_21700C384();
    sub_2166D34A8(&qword_27CABB808, MEMORY[0x277CD8428]);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_216EBEB00();
  }

  else
  {
    *(v1 + v3) = a1;
  }
}

uint64_t sub_216EBE624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_216683A80(a1, &v7 - v4, &qword_27CAB8A00);
  return sub_216EB9B18(v5);
}

BOOL sub_216EBE6CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_217007D44();
      sub_2166D34A8(&qword_27CABF9D8, MEMORY[0x277CBCDA8]);

      v2 = sub_21700E494();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

uint64_t sub_216EBE794(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_216683A80(a1, &v20 - v12, &qword_27CAB8A00);
  sub_216683A80(a2, &v13[v15], &qword_27CAB8A00);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_216683A80(v13, v10, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_2166D34A8(&qword_280E4A468, MEMORY[0x277D2A4B8]);
      v17 = sub_21700E494();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_2166997CC(v13, &qword_27CAB8A00);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2166997CC(v13, &qword_27CAB89F8);
    v16 = 1;
    return v16 & 1;
  }

  sub_2166997CC(v13, &qword_27CAB8A00);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_216EBEA94(uint64_t a1, uint64_t a2)
{
  v4 = qword_280E40178;
  swift_beginAccess();
  sub_216EC4680(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_216EBEBB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216EBA01C();
  *a1 = result;
  return result;
}

uint64_t sub_216EBEC0C(uint64_t a1)
{
  sub_21700C384();
  OUTLINED_FUNCTION_1();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC448);
  swift_allocObject();
  return sub_216EBD810(v5);
}

uint64_t sub_216EBECE4()
{
  v1 = sub_217009684();
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC478);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  sub_217009634();
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC480);
  sub_2166D9530(&qword_27CACC488, &qword_27CACC480);
  sub_217008B94();
  OUTLINED_FUNCTION_3_14();
  v10 = sub_2166D9530(v9, &qword_27CACC478);
  MEMORY[0x21CE9A570](v8, v3, v10);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216EBEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a1;
  v193 = a2;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC498);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v153 - v3;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4A0);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v190 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v189 = &v153 - v6;
  v180 = sub_217009314();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v175 = &v153 - v9;
  v172 = sub_21700D8E4();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v167 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v170 = &v153 - v12;
  v13 = sub_2170091D4();
  v207 = *(v13 - 8);
  v208 = v13;
  MEMORY[0x28223BE20](v13);
  v206 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4A8);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v153 - v15;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4B0);
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v201 = &v153 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4B8);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v165 = &v153 - v17;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4C0);
  MEMORY[0x28223BE20](v203);
  v173 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v202 = &v153 - v20;
  MEMORY[0x28223BE20](v21);
  v174 = &v153 - v22;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4C8);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v205 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v204 = &v153 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4D0);
  MEMORY[0x28223BE20](v26 - 8);
  v185 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v211 = &v153 - v29;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4D8);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v209 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v210 = &v153 - v32;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8);
  v160 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v197 = &v153 - v33;
  v196 = sub_217009574();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4E0);
  MEMORY[0x28223BE20](v154);
  v36 = &v153 - v35;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4E8);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v181 = &v153 - v37;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4F0);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  OpaqueTypeConformance2 = &v153 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v153 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4F8);
  MEMORY[0x28223BE20](v44 - 8);
  v184 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v153 - v47;
  type metadata accessor for ClassicalArtistPresenter();
  v49 = type metadata accessor for ArtistPageToolbarContent(0);
  v50 = *(v49 + 20);
  v51 = sub_21700C384();
  (*(*(v51 - 8) + 16))(v43, a1 + v50, v51);
  v52 = 1;
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v51);
  v182 = v49;
  v53 = sub_216B4ED40(v43);
  sub_2166997CC(v43, &qword_27CABB7F8);
  v212 = v48;
  if (v53)
  {
    sub_216EC09F0(v36);
    v54 = v194;
    sub_217008C84();
    v55 = sub_216EC49F4();
    v56 = sub_2166D34A8(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    v57 = v154;
    v58 = v196;
    sub_21700A3E4();
    (*(v195 + 8))(v54, v58);
    sub_2166997CC(v36, &qword_27CACC4E0);
    sub_21700B314();
    v59 = v197;
    v60 = MEMORY[0x277CE1350];
    v61 = MEMORY[0x277CE1340];
    sub_2170092A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC560);
    *&v215 = v57;
    *(&v215 + 1) = v58;
    *&v216 = v55;
    *(&v216 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    *&v215 = v60;
    *(&v215 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    sub_216EC4C50();
    v62 = OpaqueTypeConformance2;
    v63 = v156;
    v64 = v198;
    v65 = v181;
    sub_21700AB44();
    (*(v160 + 8))(v59, v64);
    (*(v155 + 8))(v65, v63);
    sub_21700B314();
    sub_2170092A4();
    v66 = v210;
    sub_21700B334();
    v67 = v158;
    v68 = *(v158 + 16);
    v69 = v157;
    v70 = v62;
    v71 = v159;
    v68(v157, v70, v159);
    v72 = v199;
    v73 = *(v199 + 16);
    v74 = v209;
    v75 = v66;
    v76 = v200;
    v73(v209, v75, v200);
    v68(v212, v69, v71);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC570);
    v73(&v212[*(v77 + 48)], v74, v76);
    v78 = *(v72 + 8);
    v78(v210, v76);
    v79 = *(v67 + 8);
    v79(OpaqueTypeConformance2, v71);
    v78(v74, v76);
    v79(v69, v71);
    v48 = v212;
    v52 = 0;
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC500);
  __swift_storeEnumTagSinglePayload(v48, v52, 1, v80);
  if (*(v213 + *(v182 + 36)))
  {

    v81 = sub_2166EFC70();

    v83 = sub_2166C0DB4(v81) == 0x6269726373627573 && v82 == 0xEA00000000006465;
    v84 = v207;
    v85 = v208;
    v86 = v206;
    v87 = v211;
    if (v83)
    {
    }

    else
    {
      v88 = sub_21700F7D4();

      if ((v88 & 1) == 0)
      {
        v89 = 1;
LABEL_18:
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC508);
        __swift_storeEnumTagSinglePayload(v87, v89, 1, v136);
        v137 = v87;
        v138 = v186;
        sub_216EC2104();
        sub_2170091C4();
        v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC510);
        v140 = sub_2166D9530(&qword_27CACC518, &qword_27CACC510);
        *&v215 = v139;
        *(&v215 + 1) = v140;
        swift_getOpaqueTypeConformance2();
        sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
        v141 = v189;
        v142 = v188;
        sub_21700A364();
        (*(v84 + 8))(v86, v85);
        (*(v187 + 8))(v138, v142);
        v143 = v184;
        sub_216683A80(v48, v184, &qword_27CACC4F8);
        v144 = v185;
        sub_216683A80(v137, v185, &qword_27CACC4D0);
        v145 = v191;
        v146 = *(v191 + 16);
        v147 = v190;
        v148 = v192;
        v146(v190, v141, v192);
        v149 = v193;
        sub_216683A80(v143, v193, &qword_27CACC4F8);
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC520);
        sub_216683A80(v144, v149 + *(v150 + 48), &qword_27CACC4D0);
        v146((v149 + *(v150 + 64)), v147, v148);
        v151 = *(v145 + 8);
        v151(v141, v148);
        sub_2166997CC(v211, &qword_27CACC4D0);
        sub_2166997CC(v212, &qword_27CACC4F8);
        v151(v147, v148);
        sub_2166997CC(v144, &qword_27CACC4D0);
        return sub_2166997CC(v143, &qword_27CACC4F8);
      }
    }

    v90 = v161;
    sub_216EC1568(v161);
    sub_2170091C4();
    v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6300);
    v92 = sub_216EC4714();
    *&v215 = v91;
    *(&v215 + 1) = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v182 = sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
    v93 = v163;
    sub_21700A364();
    (*(v84 + 8))(v86, v85);
    (*(v162 + 8))(v90, v93);
    v215 = 0u;
    v216 = 0u;
    memset(v214, 0, sizeof(v214));
    v94 = v85;
    v95 = v167;
    sub_21700D854();
    sub_2166997CC(v214, &unk_27CABF7A0);
    sub_2166997CC(&v215, &unk_27CABF7A0);
    v96 = sub_216EC1C78();
    *(&v216 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v215) = v96 & 1;
    v97 = v170;
    sub_21700D8C4();
    v98 = *(v171 + 8);
    v99 = v95;
    v100 = v172;
    v98(v99, v172);
    sub_2166997CC(&v215, &unk_27CABF7A0);
    *&v215 = v93;
    *(&v215 + 1) = v94;
    *&v216 = OpaqueTypeConformance2;
    *(&v216 + 1) = v182;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = v165;
    v103 = v166;
    v104 = v201;
    sub_21700A204();
    v98(v97, v100);
    (*(v164 + 8))(v104, v103);
    if (sub_216EC1C78())
    {
      v105 = 351;
    }

    else
    {
      v105 = 116;
    }

    v106 = sub_216983738(v105);
    v108 = v107;
    *&v215 = v103;
    *(&v215 + 1) = v101;
    swift_getOpaqueTypeConformance2();
    v109 = v173;
    v110 = v169;
    sub_21700A6A4();
    sub_21678817C(v106, v108, 0);

    (*(v168 + 8))(v102, v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B0);
    v111 = v179;
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_217013D90;
    sub_2170092F4();
    sub_2170092D4();
    *&v215 = v112;
    sub_2166D34A8(&qword_280E2AC28, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B8);
    sub_2166D9530(&qword_280E29E60, &qword_27CAC02B8);
    v113 = v175;
    v114 = v180;
    sub_21700F214();
    sub_2170089A4();
    v115 = *(v111 + 8);
    v115(v113, v114);
    sub_2166997CC(v109, &qword_27CACC4C0);
    if (sub_216EC1C78())
    {
      v116 = v178;
      sub_2170092C4();
    }

    else
    {
      *&v215 = MEMORY[0x277D84F90];
      v116 = v178;
      sub_21700F214();
    }

    v117 = v174;
    v118 = v202;
    sub_2170089A4();
    v115(v116, v114);
    sub_2166997CC(v118, &qword_27CACC4C0);
    v119 = v194;
    sub_217008C84();
    sub_216EC482C();
    sub_2166D34A8(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    v120 = v204;
    v121 = v196;
    sub_21700A3E4();
    (*(v195 + 8))(v119, v121);
    sub_2166997CC(v117, &qword_27CACC4C0);
    sub_21700B314();
    v122 = MEMORY[0x277CE1350];
    v123 = MEMORY[0x277CE1340];
    sub_2170092A4();
    *&v215 = v122;
    *(&v215 + 1) = v123;
    swift_getOpaqueTypeConformance2();
    v124 = v210;
    sub_21700B334();
    v125 = v176;
    v126 = *(v176 + 16);
    v127 = v205;
    v128 = v177;
    v126(v205, v120, v177);
    v129 = v199;
    v130 = *(v199 + 16);
    v131 = v200;
    v130(v209, v124, v200);
    v87 = v211;
    v126(v211, v127, v128);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC538);
    v133 = v209;
    v130((v87 + *(v132 + 48)), v209, v131);
    v134 = *(v129 + 8);
    v134(v210, v131);
    v135 = *(v125 + 8);
    v135(v204, v128);
    v134(v133, v131);
    v135(v205, v128);
    v89 = 0;
    v48 = v212;
    v84 = v207;
    v85 = v208;
    v86 = v206;
    goto LABEL_18;
  }

  type metadata accessor for SubscriptionStatusCoordinator();
  sub_2166D34A8(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216EC09F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v69 = sub_217009314();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2170099D4();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2170091D4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v48 = sub_21700D8E4();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3B8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3D0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v47 - v16);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3A8);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v19 = &v47 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC550);
  MEMORY[0x28223BE20](v52);
  v21 = &v47 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC548);
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v51 = &v47 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC578);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v47 - v23;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4E0);
  MEMORY[0x28223BE20](v54);
  v56 = &v47 - v24;
  sub_216EC23C0(v17);
  v25 = v15[13];
  v26 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v17 + v25, 1, 1, v26);
  v27 = v15[14];
  *(v17 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v28 = v17 + v15[15];
  *v28 = swift_getKeyPath();
  v28[40] = 0;
  v17[7] = 0;
  v17[8] = 0;
  v17[5] = sub_216EC2A40;
  v17[6] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  sub_2167C5834(v17, v13, &qword_27CABC3D0);
  v29 = &v13[*(v11 + 36)];
  v30 = v74;
  *v29 = v73;
  *(v29 + 1) = v30;
  *(v29 + 2) = v75;
  v71 = 0u;
  v72 = 0u;
  memset(v70, 0, sizeof(v70));
  sub_21700D854();
  sub_2166997CC(v70, &unk_27CABF7A0);
  sub_2166997CC(&v71, &unk_27CABF7A0);
  sub_216905C64();
  sub_21700A204();
  (*(v47 + 8))(v10, v48);
  sub_2166997CC(v13, &qword_27CABC3B8);
  type metadata accessor for ClassicalArtistPresenter();
  v31 = *(type metadata accessor for ArtistPageToolbarContent(0) + 20);
  v32 = sub_21700C384();
  (*(*(v32 - 8) + 16))(v8, v2 + v31, v32);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v32);
  sub_216B4ED40(v8);
  sub_2166997CC(v8, &qword_27CABB7F8);
  LOBYTE(v32) = sub_217009C94();
  sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() != v32)
  {
    sub_217009CC4();
  }

  sub_216902784();

  (*(v49 + 8))(v19, v50);
  v33 = v60;
  sub_2170091C4();
  v34 = sub_216EC4B80();
  v35 = sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
  v36 = v51;
  v37 = v52;
  v38 = v62;
  sub_21700A364();
  (*(v61 + 8))(v33, v38);
  sub_2166997CC(v21, &qword_27CACC550);
  v39 = v63;
  sub_2170099A4();
  *&v71 = v37;
  *(&v71 + 1) = v38;
  *&v72 = v34;
  *(&v72 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v55;
  v42 = v58;
  sub_21700A784();
  (*(v64 + 8))(v39, v65);
  (*(v53 + 8))(v36, v42);
  sub_216983738(182);
  *&v71 = v42;
  *(&v71 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v56;
  v44 = v59;
  sub_21700A6A4();

  (*(v57 + 8))(v41, v44);
  v45 = v66;
  sub_2170092F4();
  sub_2170089A4();
  (*(v67 + 8))(v45, v69);
  return sub_2166997CC(v43, &qword_27CACC4E0);
}

uint64_t sub_216EC14DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC560);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_216EC1568@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC3E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  sub_21700B314();
  v52 = v1;
  v51 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC430);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC400);
  v10 = sub_2170091D4();
  v11 = sub_216905EC0();
  v12 = sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
  *&v54 = v9;
  *(&v54 + 1) = v10;
  v55 = v11;
  v56 = v12;
  swift_getOpaqueTypeConformance2();
  sub_216905F78();
  sub_21700B324();
  v13 = type metadata accessor for ArtistPageToolbarContent(0);
  v14 = v1 + *(v13 + 28);
  v15 = *(v14 + 16);
  v54 = *v14;
  v55 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC590);
  sub_21700AEB4();
  LOBYTE(v11) = sub_217009C94();
  sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() != v11)
  {
    sub_217009CC4();
  }

  sub_216902ACC();

  v16 = (*(v6 + 8))(v8, v5);
  v17 = *(v13 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_216EC5814(v1, &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21700EA34();
  v19 = sub_21700EA24();
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  sub_216EC4EB0(&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v49 = sub_21700EA74();
  v23 = v4;
  v24 = *(v49 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v49);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v43 - v26;
  sub_21700EA44();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v46 = sub_2170087B4();
    v47 = &v43;
    v45 = *(v46 - 8);
    MEMORY[0x28223BE20](v46);
    v48 = &v43;
    v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_21700F3B4();

    *&v54 = 0xD00000000000003BLL;
    *(&v54 + 1) = 0x800000021708FF70;
    v53 = 151;
    v30 = sub_21700F784();
    v44 = v23;
    MEMORY[0x21CE9F490](v30);

    v32 = MEMORY[0x28223BE20](v31);
    v33 = &v43 - v26;
    v34 = &v43 - v26;
    v35 = v49;
    (*(v24 + 16))(v33, v34, v49, v32);
    sub_2170087A4();
    (*(v24 + 8))(v27, v35);
    v36 = v50;
    sub_2167C5834(v44, v50, &qword_27CAB6300);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6308);
    return (*(v45 + 32))(v36 + *(v37 + 36), v29, v46);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6310);
    v40 = v50;
    v41 = (v50 + *(v39 + 36));
    v42 = sub_217008554();
    (*(v24 + 32))(&v41[*(v42 + 20)], &v43 - v26, v49);
    *v41 = &unk_21706C868;
    *(v41 + 1) = v21;
    return sub_2167C5834(v23, v40, &qword_27CAB6300);
  }
}

uint64_t sub_216EC1C78()
{
  v0 = sub_217006864();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v22 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  type metadata accessor for ArtistPageToolbarContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC448);
  v15 = v24;
  v14 = v25;
  sub_2166D9530(qword_280E400E8, &qword_27CACC448);
  sub_2170081B4();
  sub_216EBE368(v13);

  (*(v15 + 104))(v10, *MEMORY[0x277D2A4B0], v14);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  v16 = *(v3 + 56);
  sub_216683A80(v13, v5, &qword_27CAB8A00);
  sub_216683A80(v10, &v5[v16], &qword_27CAB8A00);
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) != 1)
  {
    v18 = v23;
    sub_216683A80(v5, v23, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(&v5[v16], 1, v14) != 1)
    {
      v19 = v22;
      (*(v15 + 32))(v22, &v5[v16], v14);
      sub_2166D34A8(&qword_280E4A468, MEMORY[0x277D2A4B8]);
      v17 = sub_21700E494();
      v20 = *(v15 + 8);
      v20(v19, v14);
      sub_2166997CC(v10, &qword_27CAB8A00);
      sub_2166997CC(v13, &qword_27CAB8A00);
      v20(v18, v14);
      sub_2166997CC(v5, &qword_27CAB8A00);
      return v17 & 1;
    }

    sub_2166997CC(v10, &qword_27CAB8A00);
    sub_2166997CC(v13, &qword_27CAB8A00);
    (*(v15 + 8))(v18, v14);
    goto LABEL_6;
  }

  sub_2166997CC(v10, &qword_27CAB8A00);
  sub_2166997CC(v13, &qword_27CAB8A00);
  if (__swift_getEnumTagSinglePayload(&v5[v16], 1, v14) != 1)
  {
LABEL_6:
    sub_2166997CC(v5, &qword_27CAB89F8);
    v17 = 0;
    return v17 & 1;
  }

  sub_2166997CC(v5, &qword_27CAB8A00);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_216EC2104()
{
  v1 = sub_21700D8E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArtistPageToolbarContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_216EC5814(v0, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_216EC4EB0(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v16 = sub_216EC57FC;
  v17 = v9;
  memset(v15, 0, sizeof(v15));
  v10 = sub_21700C324();
  if (v11)
  {
    v12 = MEMORY[0x277CD7E90];
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v14[2] = 0;
  }

  v14[0] = v10;
  v14[1] = v11;
  v14[3] = v12;
  sub_21700D854();
  sub_2166997CC(v15, &unk_27CABF7A0);
  sub_2166997CC(v14, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC510);
  sub_2166D9530(&qword_27CACC518, &qword_27CACC510);
  sub_21700A204();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_216EC23C0@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v46 = sub_21700CFB4();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217005EF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21700D704();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v44 = sub_21700D284();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassicalArtistPresenter();
  v39 = *(type metadata accessor for ArtistPageToolbarContent(0) + 20);
  v48 = v1;
  sub_216B4EF80(v18);
  sub_21700D6F4();
  v52 = MEMORY[0x277D837D0];
  *&v51 = 0x657461676976616ELL;
  *(&v51 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v51, v50);
  v20 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v49 = v20;
  sub_2166EF9D4();
  v21 = v49;
  sub_216683A80(v18, v15, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    sub_2166997CC(v15, &qword_27CABA820);
  }

  else
  {
    (*(v5 + 32))(v7, v15, v4);
    v22 = sub_217005DE4();
    v52 = MEMORY[0x277D837D0];
    *&v51 = v22;
    *(&v51 + 1) = v23;
    sub_2166EF9C4(&v51, v50);
    swift_isUniquelyReferenced_nonNull_native();
    v49 = v21;
    sub_2166EF9D4();
    v21 = v49;
    (*(v5 + 8))(v7, v4);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v24 = sub_21700CF84();
  v25 = __swift_project_value_buffer(v24, qword_280E73DB0);
  v26 = v45;
  MEMORY[0x21CE9DD70](0xD000000000000014, 0x80000002170890D0, 1802398060, 0xE400000000000000, v21, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v27 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_217013DA0;
  v29 = v28 + v27;
  v30 = v46;
  (*(v2 + 16))(v29, v26, v46);
  v31 = v43;
  (*(v8 + 16))(v40, v12, v43);
  v32 = v41;
  sub_21700D244();
  (*(v2 + 8))(v26, v30);
  (*(v8 + 8))(v12, v31);
  sub_2166997CC(v18, &qword_27CABA820);
  v33 = type metadata accessor for OpenInClassicalExperienceAction();
  v34 = v47;
  v47[3] = v33;
  v34[4] = sub_2166D34A8(&qword_27CAC3028, type metadata accessor for OpenInClassicalExperienceAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v36 = *(v33 + 20);
  v37 = sub_21700C384();
  (*(*(v37 - 8) + 16))(boxed_opaque_existential_1 + v36, v48 + v39, v37);
  return (*(v42 + 32))(boxed_opaque_existential_1, v32, v44);
}

double sub_216EC2A40@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADD4();
  v3 = sub_217009E94();
  *&v6 = v2;
  *(&v6 + 1) = swift_getKeyPath();
  *&v7 = v3;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
  sub_2167E947C();
  sub_21700A304();

  sub_21700B3B4();
  sub_2170083C4();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC580) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_216EC2B68@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_2170091D4();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC400);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ArtistPageToolbarContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC418);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - v14);
  sub_216EC313C(&v26 - v14);
  v16 = v13[13];
  v17 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  sub_216EC5814(v1, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_216EC4EB0(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = v13[14];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v21 = v15 + v13[15];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v15[5] = sub_216EC5764;
  v15[6] = v19;
  v15[7] = 0;
  v15[8] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  sub_2167C5834(v15, v8, &qword_27CABC418);
  v22 = &v8[*(v6 + 36)];
  v23 = v31;
  *v22 = v30;
  *(v22 + 1) = v23;
  *(v22 + 2) = v32;
  sub_2170091C4();
  sub_216905EC0();
  sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
  v24 = v27;
  sub_21700A364();
  (*(v28 + 8))(v5, v24);
  return sub_2166997CC(v8, &qword_27CABC400);
}

double sub_216EC2F24@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ArtistPageToolbarContent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216EC313C(a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC440);
  v9 = v8[11];
  v10 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a2 + v9, 1, 1, v10);
  sub_216EC5814(a1, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_216EC4EB0(v7, v12 + v11);
  v13 = v8[12];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v8[13];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  a2[5] = sub_216EC4E98;
  a2[6] = v12;
  a2[7] = 0;
  a2[8] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC430) + 36));
  v16 = v18[1];
  *v15 = v18[0];
  v15[1] = v16;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_216EC313C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = sub_21700CFB4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217005EF4();
  v68 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21700D704();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v62 - v14;
  v74 = sub_21700D284();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v79 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_216EC1C78();
  sub_216683A80(v2, v18, &qword_27CAB6A00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    result = sub_2166997CC(v18, &qword_27CAB6A00);
LABEL_11:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_216EC4EB0(v18, v21);
  v24 = type metadata accessor for ArtistPageToolbarContent(0);
  v25 = v22;
  v26 = v24;
  v27 = *(v24 + 20);
  v66 = v25;
  v28 = v2 + v27;
  if ((v25 & 1) == 0)
  {
    if (sub_216EC51A4(v28))
    {
      v29 = 26;
      goto LABEL_8;
    }

LABEL_10:
    result = sub_216BD2F04(v21, type metadata accessor for ContentDescriptor);
    goto LABEL_11;
  }

  if (!sub_216EC4F08(v28))
  {
    goto LABEL_10;
  }

  v29 = 27;
LABEL_8:
  v65 = *(v26 + 20);
  v63 = sub_21700C344();
  v62 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v64 = xmmword_217013DA0;
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  LOBYTE(v80) = *v21;
  sub_216890478();
  v32 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v33;
  *(inited + 56) = v34;
  v35 = sub_21700E384();
  v36 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v5);
  sub_21700D6F4();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v80 = v35;
  sub_2166EF9C4(&v80, v86);
  v37 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v85 = v37;
  sub_2166EF9D4();
  v38 = v85;
  v84 = v29;
  MusicMetrics.ActionType.rawValue.getter();
  v81 = v32;
  *&v80 = v39;
  *(&v80 + 1) = v40;
  sub_2166EF9C4(&v80, v86);
  swift_isUniquelyReferenced_nonNull_native();
  v85 = v38;
  sub_2166EF9D4();
  v41 = v85;
  sub_216683A80(v36, v12, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    sub_2166997CC(v12, &qword_27CABA820);
  }

  else
  {
    v42 = v68;
    v43 = v67;
    (*(v68 + 32))(v67, v12, v5);
    v44 = sub_217005DE4();
    v81 = MEMORY[0x277D837D0];
    *&v80 = v44;
    *(&v80 + 1) = v45;
    sub_2166EF9C4(&v80, v86);
    swift_isUniquelyReferenced_nonNull_native();
    v85 = v41;
    sub_2166EF9D4();
    v41 = v85;
    (*(v42 + 8))(v43, v5);
  }

  v68 = a1;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v46 = sub_21700CF84();
  v47 = __swift_project_value_buffer(v46, qword_280E73DB0);
  v48 = v73;
  MEMORY[0x21CE9DD70](v63, v62, 0x6E6F74747562, 0xE600000000000000, v41, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v49 = v75;
  v50 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v64;
  v52 = v51 + v50;
  v53 = v76;
  (*(v49 + 16))(v52, v48, v76);
  v54 = v70;
  v55 = v78;
  v56 = v71;
  (*(v70 + 16))(v69, v78, v71);
  sub_21700D244();
  (*(v49 + 8))(v48, v53);
  (*(v54 + 8))(v55, v56);
  sub_2166997CC(v77, &qword_27CABA820);
  v57 = sub_21700C384();
  v81 = v57;
  v82 = MEMORY[0x277D2B1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v80);
  (*(*(v57 - 8) + 16))(boxed_opaque_existential_1, v2 + v65, v57);
  sub_216BD2F04(v21, type metadata accessor for ContentDescriptor);
  v83 = v66 & 1;
  v59 = type metadata accessor for FavoriteAction(0);
  v60 = v68;
  *(v68 + 24) = v59;
  v60[4] = sub_2166D34A8(&qword_27CABC030, type metadata accessor for FavoriteAction);
  v61 = __swift_allocate_boxed_opaque_existential_1(v60);
  sub_216EA11EC(&v80, v61);
  (*(v72 + 32))(v61 + *(v59 + 20), v79, v74);
  return sub_216EC5570(&v80);
}

double sub_216EC3B20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC598);
  MEMORY[0x28223BE20](v4);
  v6 = (v12 - v5);
  *v6 = sub_21700B3B4();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5A0);
  sub_216EC3C90(a1, v6 + *(v8 + 44));
  sub_217009DE4();
  sub_2166D9530(&qword_27CACC5A8, &qword_27CACC598);
  sub_21700A304();
  sub_2166997CC(v6, &qword_27CACC598);
  sub_21700B3B4();
  sub_2170083C4();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5B0) + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_216EC3C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v34 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5C0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v42 = sub_21700ADB4();
  v41 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v39 = sub_21700ACF4();
  v38 = swift_getKeyPath();
  v15 = 1.0;
  if (sub_216EC1C78())
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = sub_21700B3B4();
  v35 = v18;
  v36 = v17;
  v19 = sub_21700ADB4();
  v20 = sub_217009E64();
  v21 = swift_getKeyPath();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5C8) + 36);
  v23 = *MEMORY[0x277CE13C0];
  v24 = sub_21700B434();
  (*(*(v24 - 8) + 104))(v5 + v22, v23, v24);
  *v5 = v19;
  v5[1] = v21;
  v5[2] = v20;
  v25 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5D0) + 36));
  v26 = v35;
  *v25 = v36;
  v25[1] = v26;
  if ((sub_216EC1C78() & 1) == 0)
  {
    v15 = 0.0;
  }

  sub_2167C5834(v5, v11, &qword_27CACC5B8);
  *&v11[*(v7 + 44)] = v15;
  sub_2167C5834(v11, v14, &qword_27CACC5C0);
  v27 = v43;
  sub_216683A80(v14, v43, &qword_27CACC5C0);
  v28 = v41;
  v30 = v39;
  v29 = KeyPath;
  *a2 = v42;
  *(a2 + 8) = v29;
  v31 = v38;
  *(a2 + 16) = v28;
  *(a2 + 24) = v31;
  *(a2 + 32) = v30;
  *(a2 + 40) = v16;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5D8);
  sub_216683A80(v27, a2 + *(v32 + 48), &qword_27CACC5C0);

  sub_2166997CC(v14, &qword_27CACC5C0);
  sub_2166997CC(v27, &qword_27CACC5C0);
}

uint64_t sub_216EC4020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  sub_21700EA34();
  *(v3 + 64) = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216EC40B8, v5, v4);
}

uint64_t sub_216EC40B8()
{
  v1 = v0[7];

  v2 = sub_216EC1C78();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x800000021707F820;
  }

  v5 = (v1 + *(type metadata accessor for ArtistPageToolbarContent(0) + 28));
  v6 = v5[1];
  v7 = v5[2];
  v0[2] = *v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v3;
  v0[6] = v4;

  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC590);
  sub_21700AEC4();

  v8 = v0[1];

  return v8();
}

double sub_216EC41BC@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - v4;
  sub_216EC1C78();
  *&v9[0] = sub_21700ADB4();
  sub_217009DE4();
  sub_21700A304();

  sub_21700B3B4();
  sub_2170083C4();
  (*(v3 + 32))(a1, v5, v2);
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC5E8) + 36));
  v7 = v9[1];
  *v6 = v9[0];
  v6[1] = v7;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_216EC4354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = *(type metadata accessor for ArtistPageToolbarContent(0) + 20);
  v11 = type metadata accessor for ArtistContextMenu();
  v12 = v11[6];
  v13 = sub_21700C384();
  (*(*(v13 - 8) + 16))(a2 + v12, a1 + v10, v13);
  v14 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v11[7];
  sub_216683A80(v9, v15, &qword_27CAB6A00);
  v16 = type metadata accessor for MenuConfiguration(0);
  sub_216EC5814(v6, v15 + v16[5]);
  v17 = (v15 + v16[6]);
  *v17 = 0;
  v17[1] = 0;
  *(v15 + v16[7]) = 0;
  sub_216683A80(v22, v15 + v16[8], &qword_27CAB6DB0);
  sub_216BD2F04(v6, type metadata accessor for MenuContext);
  sub_2166997CC(v22, &qword_27CAB6DB0);
  sub_2166997CC(v9, &qword_27CAB6A00);
  v18 = (v15 + v16[9]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  type metadata accessor for MenuBuilder();
  sub_2166D34A8(qword_280E45220, type metadata accessor for MenuBuilder);
  *a2 = sub_217008CF4();
  a2[1] = v19;
  v20 = v11[5];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216EC4680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_216EC4714()
{
  result = qword_27CACC528;
  if (!qword_27CACC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6300);
    sub_216EC47A0();
    sub_216905D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC528);
  }

  return result;
}

unint64_t sub_216EC47A0()
{
  result = qword_27CABC3F0;
  if (!qword_27CABC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3E0);
    sub_216905D9C();
    sub_2169057C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC3F0);
  }

  return result;
}

unint64_t sub_216EC482C()
{
  result = qword_27CACC530;
  if (!qword_27CACC530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC4A8);
    sub_2170091D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6300);
    sub_216EC4714();
    swift_getOpaqueTypeConformance2();
    sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D34A8(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC530);
  }

  return result;
}

unint64_t sub_216EC49F4()
{
  result = qword_27CACC540;
  if (!qword_27CACC540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC550);
    sub_2170091D4();
    sub_216EC4B80();
    sub_2166D34A8(&qword_27CABC420, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D34A8(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC540);
  }

  return result;
}

unint64_t sub_216EC4B80()
{
  result = qword_27CACC558;
  if (!qword_27CACC558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC550);
    sub_216905B9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC3B8);
    sub_216905C64();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC558);
  }

  return result;
}

unint64_t sub_216EC4C50()
{
  result = qword_27CACC568;
  if (!qword_27CACC568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC4E0);
    sub_217009574();
    sub_216EC49F4();
    sub_2166D34A8(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC568);
  }

  return result;
}

uint64_t sub_216EC4DC0()
{
  v2 = type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2166DFAC0;

  return sub_216EC4020(v5, v6, v0 + v4);
}

uint64_t sub_216EC4EB0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

BOOL sub_216EC4F08(uint64_t a1)
{
  v2 = sub_21700BC84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC028);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = sub_21700C384();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067C4();
  sub_21700BC04();

  (*(v3 + 8))(v5, v2);
  (*(v11 + 8))(v14, v10);
  v15 = (*(v7 + 88))(v9, v6) == *MEMORY[0x277D2B048];
  (*(v7 + 8))(v9, v6);
  return v15;
}

uint64_t sub_216EC51A4(uint64_t a1)
{
  v2 = sub_21700BBB4();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700BBC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC038);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = sub_21700C384();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v14);
  sub_21700BE44();
  sub_21700BE34();
  sub_217006844();
  sub_21700BC04();

  (*(v5 + 8))(v7, v4);
  (*(v13 + 8))(v16, v12);
  v17 = (*(v9 + 88))(v11, v8);
  if (v17 == *MEMORY[0x277D2B040])
  {
    (*(v9 + 96))(v11, v8);
    v19 = v25;
    v18 = v26;
    v20 = v27;
    (*(v26 + 32))(v25, v11, v27);
    v21 = (*(v18 + 88))(v19, v20);
    if (v21 != *MEMORY[0x277D2B020] && v21 != *MEMORY[0x277D2B018])
    {
      (*(v18 + 8))(v19, v20);
      return 0;
    }
  }

  else if (v17 != *MEMORY[0x277D2B048])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 1;
}

uint64_t objectdestroy_37Tm()
{
  type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_9_1(v5))
  {

    v6 = *(v2 + 24);
    v7 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_30_44(v7))
    {
      (*(*(v2 - 8) + 8))(v4 + v6, v2);
    }
  }

  v8 = *(v0 + 20);
  sub_21700C384();
  OUTLINED_FUNCTION_9_0();
  (*(v9 + 8))(v4 + v8);
  v10 = *(v0 + 24);
  sub_21700DFD4();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v4 + v10);

  OUTLINED_FUNCTION_11_91();

  return swift_deallocObject();
}

uint64_t sub_216EC577C(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_216EC5814(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216EC58B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D704();
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v7 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216EC6014();
  sub_216CE08F4(v14, v1);

  v15 = type metadata accessor for SearchResultsListSection();
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    sub_216697664(v1, &qword_27CABA5A0);
    if (qword_27CAB6230 != -1)
    {
      OUTLINED_FUNCTION_5_141();
      swift_once();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_27CACC5F0);
    v17 = sub_217007C84();
    v18 = sub_21700ED84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_216679000, v17, v18, "Unexpected access of page metrics.  Returning empty page metrics.", v19, 2u);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    sub_21700D6F4();
    sub_216C5570C(MEMORY[0x277D84F90]);
    return sub_21700D124();
  }

  else
  {
    (*(v9 + 16))(v13, v1 + *(v15 + 28), v7);
    sub_216EC7D4C(v1, type metadata accessor for SearchResultsListSection);
    return (*(v9 + 32))(a1, v13, v7);
  }
}

uint64_t sub_216EC5B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a1;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v37 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v42 = v12;
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v36 = v14;
  MEMORY[0x28223BE20](v15);
  v35 = &v31 - v16;
  MEMORY[0x28223BE20](v17);
  v41 = type metadata accessor for JSSearchResultsPage(0);
  v18 = (a3 + *(v41 + 40));
  v31 = a3;
  *v18 = 0;
  v18[1] = 0;
  sub_21700CE04();
  v19 = *(v7 + 16);
  v39 = a2;
  v40 = v7 + 16;
  v19(v11, a2, v5);
  _s7SectionVMa(0);
  sub_21668F210(&qword_280E2C638, _s7SectionVMa);
  *a3 = sub_21700E944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC610);
  sub_21700CE04();
  v33 = v5;
  v34 = v19;
  v19(v11, a2, v5);
  sub_216EC7E08();
  OUTLINED_FUNCTION_19_62();
  v20 = v31;
  v31[1] = v44;
  type metadata accessor for JSSearchResultsPage.QueryContext(0);
  sub_21700CE04();
  v32 = v11;
  v19(v11, v39, v5);
  sub_21668F210(qword_280E3DD80, type metadata accessor for JSSearchResultsPage.QueryContext);
  v21 = v20;
  OUTLINED_FUNCTION_19_62();
  OUTLINED_FUNCTION_11_0();
  v22 = v35;
  sub_21700CE04();
  LOBYTE(v5) = sub_21700CD44();
  v23 = v43 + 8;
  v24 = *(v43 + 8);
  v25 = v22;
  v26 = v42;
  v24(v25, v42);
  v43 = v23;
  *(v21 + 16) = v5 & 1;
  v27 = v36;
  sub_21700CE04();
  LOBYTE(v5) = sub_21700CD44();
  v24(v27, v26);
  *(v21 + *(v41 + 36)) = v5 & 1;
  type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_11_0();
  sub_21700CE04();
  v28 = v33;
  v29 = v39;
  v34(v32, v39, v33);
  sub_21668F210(qword_280E3DE20, type metadata accessor for JSSearchResultsPage.NoResultsContent);
  sub_21700D734();
  (*(v37 + 8))(v29, v28);
  return (v24)(v38, v42);
}

void sub_216EC6014()
{
  v2 = type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = type metadata accessor for SearchResultsListSection();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = *v0;
  v48 = *(v23 + 16);
  if (v48)
  {
    v24 = 0;
    v45 = *(v19 + 52);
    v49 = MEMORY[0x277D84F90];
    v44 = v1;
    v46 = v23;
    v47 = v21 - v20;
    while (v24 < *(v23 + 16))
    {
      OUTLINED_FUNCTION_6_124();
      sub_216EC7CEC(v25, v22, v26);
      sub_216EC7CEC(v22 + v45, v6, type metadata accessor for SectionContent);
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        OUTLINED_FUNCTION_1_214();
        sub_216EC7D4C(v22, v27);
        sub_216EC7DA4(v6, v1);
        __swift_storeEnumTagSinglePayload(v1, 0, 1, v9);
      }

      else
      {
        if (qword_27CAB6230 != -1)
        {
          OUTLINED_FUNCTION_5_141();
          swift_once();
        }

        v28 = sub_217007CA4();
        __swift_project_value_buffer(v28, qword_27CACC5F0);
        v29 = sub_217007C84();
        v30 = sub_21700ED84();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = v17;
          v32 = v15;
          v33 = v6;
          v34 = v9;
          v35 = v11;
          v36 = v2;
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_216679000, v29, v30, "Unexpected type for result group.", v37, 2u);
          v38 = v37;
          v2 = v36;
          v11 = v35;
          v9 = v34;
          v6 = v33;
          v15 = v32;
          v17 = v31;
          v1 = v44;
          MEMORY[0x21CEA1440](v38, -1, -1);
        }

        OUTLINED_FUNCTION_1_214();
        v22 = v47;
        sub_216EC7D4C(v47, v39);
        __swift_storeEnumTagSinglePayload(v1, 1, 1, v9);
        sub_216EC7D4C(v6, type metadata accessor for SectionContent);
        v23 = v46;
      }

      if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
      {
        sub_216697664(v1, &qword_27CABA5A0);
      }

      else
      {
        sub_216EC7DA4(v1, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938154(0, *(v49 + 16) + 1, 1, v49);
          v49 = v42;
        }

        v41 = *(v49 + 16);
        v40 = *(v49 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_216938154(v40 > 1, v41 + 1, 1, v49);
          v49 = v43;
        }

        *(v49 + 16) = v41 + 1;
        sub_216EC7DA4(v15, v49 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v41);
        v23 = v46;
        v22 = v47;
      }

      if (v48 == ++v24)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_216EC6470()
{
  v1 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 16);
  if (v5)
  {
    v6 = *v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v7 = *(v2 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_6_124();
      v10 = sub_216EC7CEC(v6, v4, v9);
      sub_2168C0B98(v10, v11, v12, v13, v14, v15, v16, v17, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
      v19 = v18;
      OUTLINED_FUNCTION_1_214();
      sub_216EC7D4C(v4, v20);
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937908();
          v8 = v22;
        }

        v21 = *(v8 + 16);
        if (v21 >= *(v8 + 24) >> 1)
        {
          sub_216937908();
          v8 = v23;
        }

        *(v8 + 16) = v21 + 1;
        *(v8 + 8 * v21 + 32) = v19;
      }

      v6 += v7;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v24 = 0;
  v25 = *(v8 + 16);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v24)
    {

      return;
    }

    if (v24 >= *(v8 + 16))
    {
      break;
    }

    v27 = *(v8 + 8 * v24 + 32);
    v28 = *(v27 + 16);
    v29 = *(v26 + 16);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_31;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v26 + 24) >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      sub_2169375D4(isUniquelyReferenced_nonNull_native, v32, 1, v26);
      v26 = v33;
    }

    if (*(v27 + 16))
    {
      v34 = (*(v26 + 24) >> 1) - *(v26 + 16);
      sub_217006924();
      if (v34 < v28)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v35 = *(v26 + 16);
        v36 = __OFADD__(v35, v28);
        v37 = v35 + v28;
        if (v36)
        {
          goto LABEL_34;
        }

        *(v26 + 16) = v37;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_32;
      }
    }

    ++v24;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_216EC6734@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v72 = v6;
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v68 = v8 - v7;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1();
  v62 = v10;
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v69 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v71 = (&v61 - v15);
  v16 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v67 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v61 - v28;
  v75 = a1;
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v33 = *(v18 + 8);
  v33(v29, v16);
  if (!v32)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_4_149();
    sub_21668F210(v39, v40);
    OUTLINED_FUNCTION_18_72();
    v42 = v41;
    Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
    *v42 = 0x746E65746E6F63;
    v42[1] = 0xE700000000000000;
    v42[2] = Context;
    OUTLINED_FUNCTION_4_23();
    (*(v44 + 104))(v42);
    swift_willThrow();
    (*(v72 + 8))(v74, v73);
    return (v33)(v75, v16);
  }

  *(a3 + 16) = v30;
  *(a3 + 24) = v32;
  v66 = v32;
  sub_21700CE04();
  sub_21700CDB4();
  v34 = OUTLINED_FUNCTION_13_84();
  (v33)(v34);
  *a3 = v26;
  *(a3 + 8) = v32;
  v65 = v32;
  sub_21700CE04();
  sub_21700CDB4();
  v35 = OUTLINED_FUNCTION_13_84();
  (v33)(v35);
  *(a3 + 40) = v26;
  *(a3 + 48) = v32;
  v64 = v32;
  OUTLINED_FUNCTION_11_0();
  sub_21700CE04();
  v36 = sub_21700CD44();
  v33(v26, v16);
  v61 = a3;
  *(a3 + 32) = v36;
  sub_21700CE04();
  v37 = v71;
  sub_21700CCB4();
  v33(v23, v16);
  v38 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_216697664(v37, &qword_27CAB7D20);
LABEL_8:
    sub_21700E2E4();
    OUTLINED_FUNCTION_4_149();
    sub_21668F210(v54, v55);
    OUTLINED_FUNCTION_18_72();
    v57 = v56;
    v58 = type metadata accessor for JSSearchResultsPage.QueryContext(0);
    strcpy(v57, "queryContext");
    *(v57 + 13) = 0;
    *(v57 + 14) = -5120;
    *(v57 + 16) = v58;
    OUTLINED_FUNCTION_4_23();
    (*(v59 + 104))(v57);
    swift_willThrow();
    (*(v72 + 8))(v74, v73);
    v33(v75, v16);
  }

  v46 = sub_21700D3D4();
  OUTLINED_FUNCTION_4_23();
  (*(v47 + 8))(v37, v38);
  if (!v46)
  {
    goto LABEL_8;
  }

  v71 = v33;
  *(v61 + 56) = v46;
  v48 = v75;
  sub_21700CE04();
  v50 = v72;
  v49 = v73;
  v51 = v74;
  (*(v72 + 16))(v68, v74, v73);
  v53 = v69;
  v52 = v70;
  sub_21700D744();
  if (!v52)
  {
    (*(v50 + 8))(v51, v49);
    v71(v48, v16);
    v60 = type metadata accessor for JSSearchResultsPage.QueryContext(0);
    return (*(v62 + 32))(v61 + *(v60 + 36), v53, v63);
  }

  (*(v50 + 8))(v51, v49);
  v71(v48, v16);
}

uint64_t sub_216EC6E3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_216EC6F08(char a1)
{
  if (a1)
  {
    return 0x7274654D65676170;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_216EC6F40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216EC7E6C();
  sub_21700F974();
  v12[15] = 0;
  sub_21700F6D4();
  if (!v1)
  {
    type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
    v12[14] = 1;
    sub_21700D194();
    OUTLINED_FUNCTION_7_118();
    sub_21668F210(v9, v10);
    sub_21700F764();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216EC70D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v28 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC618);
  OUTLINED_FUNCTION_1();
  v30 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216EC7E6C();
  sub_21700F964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = v13;
  v19 = v30;
  v18 = v31;
  v34 = 0;
  v20 = v32;
  *v17 = sub_21700F614();
  v17[1] = v21;
  v26[0] = v17;
  v26[1] = v21;
  v33 = 1;
  OUTLINED_FUNCTION_7_118();
  sub_21668F210(v22, v23);
  sub_21700F6A4();
  (*(v19 + 8))(v12, v20);
  v24 = v26[0];
  (*(v28 + 32))(v26[0] + *(v27 + 20), v8, v18);
  sub_216EC7CEC(v24, v29, type metadata accessor for JSSearchResultsPage.NoResultsContent);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_216EC7D4C(v24, type metadata accessor for JSSearchResultsPage.NoResultsContent);
}

uint64_t sub_216EC73E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216EC6E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216EC7410(uint64_t a1)
{
  v2 = sub_216EC7E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216EC744C(uint64_t a1)
{
  v2 = sub_216EC7E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216EC74D0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACC5F0);
  __swift_project_value_buffer(v0, qword_27CACC5F0);
  return sub_217007C94();
}

uint64_t sub_216EC7550()
{
  v1 = *(v0 + 8);
  sub_2167839C8(v1);
  return v1;
}

uint64_t sub_216EC7604(uint64_t a1)
{
  result = sub_21668F210(qword_280E3DCD0, type metadata accessor for JSSearchResultsPage);
  *(a1 + 8) = result;
  return result;
}

void sub_216EC76A4()
{
  sub_216EC787C(319, &qword_280E29E68, _s7SectionVMa, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_216EC7818();
    if (v1 <= 0x3F)
    {
      sub_216EC787C(319, qword_280E3DDE0, type metadata accessor for JSSearchResultsPage.NoResultsContent, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216EC787C(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_216688560(319, &qword_280E2A070);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216EC7818()
{
  if (!qword_27CACC608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC610);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CACC608);
    }
  }
}

void sub_216EC787C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216EC7948()
{
  sub_216688560(319, &qword_280E2A070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E29DE0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_2166D654C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        v1 = sub_21700D7A4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_216EC7A6C()
{
  sub_216688560(319, &qword_280E2A070);
  if (v0 <= 0x3F)
  {
    sub_21700D194();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216EC7B48(uint64_t a1)
{
  result = sub_21668F210(&qword_280E3DCC8, type metadata accessor for JSSearchResultsPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EC7BE8(uint64_t a1)
{
  result = sub_21668F210(&qword_280E3DCB0, type metadata accessor for JSSearchResultsPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EC7C40(void *a1)
{
  a1[1] = sub_21668F210(&qword_280E3DCC0, type metadata accessor for JSSearchResultsPage);
  a1[2] = sub_21668F210(&qword_280E3DCB8, type metadata accessor for JSSearchResultsPage);
  result = sub_21668F210(&qword_280E3DCA8, type metadata accessor for JSSearchResultsPage);
  a1[3] = result;
  return result;
}

uint64_t sub_216EC7CEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216EC7D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216EC7DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsListSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216EC7E08()
{
  result = qword_280E3A088[0];
  if (!qword_280E3A088[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC610);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3A088);
  }

  return result;
}

unint64_t sub_216EC7E6C()
{
  result = qword_27CACC620;
  if (!qword_27CACC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC620);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSSearchResultsPage.NoResultsContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216EC7FA0()
{
  result = qword_27CACC640;
  if (!qword_27CACC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC640);
  }

  return result;
}

unint64_t sub_216EC7FF8()
{
  result = qword_27CACC648;
  if (!qword_27CACC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC648);
  }

  return result;
}

unint64_t sub_216EC8050()
{
  result = qword_27CACC650;
  if (!qword_27CACC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC650);
  }

  return result;
}

void sub_216EC80A4()
{
  OUTLINED_FUNCTION_49();
  *&v43 = v0;
  *(&v43 + 1) = v1;
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  OUTLINED_FUNCTION_1();
  v40 = v13;
  v41 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v39 = v15;
  v16 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  sub_21700E094();
  type metadata accessor for MusicPageMetricsProvider();
  sub_21700D4B4();
  v26 = v47;
  if (v47)
  {
    v27 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    v28 = sub_21700D194();
    if (__swift_getEnumTagSinglePayload(v26 + v27, 1, v28))
    {
      swift_endAccess();
    }

    else
    {
      v29 = sub_21700D0F4();
      swift_endAccess();

      if (v29)
      {
        v38 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
        sub_21700D4B4();
        v30 = v49;
        if (v49)
        {
          v31 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, v49);
          v32 = (*(v31 + 8))(v30, v31);
          v34 = v33;
          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
          v49 = MEMORY[0x277D837D0];
          *&v48 = v32;
          *(&v48 + 1) = v34;
          sub_2166EF9C4(&v48, &v47);
          v35 = v38;
          swift_isUniquelyReferenced_nonNull_native();
          v46 = v35;
          sub_2166EF9D4();
          v36 = v46;
        }

        else
        {
          sub_216697664(&v48, &qword_27CAB71A8);
          v36 = v38;
        }

        v38 = v36;
        *&v48 = v36;
        v37 = v39;
        sub_21700DA44();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
        sub_21700DA64();
        (*(v40 + 8))(v37, v41);
      }
    }
  }

  v48 = v43;
  sub_21700DA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60);
  sub_21700DA64();
  (*(v8 + 8))(v11, v42);
  (*(v18 + 16))(v22, v25, v16);
  sub_21700CC54();
  sub_21700D4A4();
  (*(v44 + 8))(v6, v45);
  (*(v18 + 8))(v25, v16);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EC857C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216EC85F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9318);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216683A80(a1, v5, &qword_27CAB9318);

  sub_217007DF4();
  return sub_216697664(a1, &qword_27CAB9318);
}

uint64_t sub_216EC86DC()
{
  v1 = OBJC_IVAR____TtC7MusicUI26ReplayToolbarPagePresenter__toolbarConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC680);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_216EC87A4()
{
  sub_216EC89A8(319, &qword_27CACC678, &qword_27CAB9318, &unk_21701C9B0, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216EC88A8()
{
  sub_216EC89A8(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObjectGraph();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        sub_217009124();
        if (v3 <= 0x3F)
        {
          sub_216820E14();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216EC89A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_216EC8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC680);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9318);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = OBJC_IVAR____TtC7MusicUI26ReplayToolbarPagePresenter__toolbarConfiguration;
  type metadata accessor for ReplayPageToolbarProvider(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_216683A80(v35, v32, &qword_27CAB9318);
  sub_217007DA4();
  sub_216697664(v35, &qword_27CAB9318);
  (*(v25 + 32))(v20 + v36, v28, v23);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EC8BAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReplayToolbarPagePresenter(0);
  result = sub_217007D64();
  *a1 = result;
  return result;
}

void sub_216EC8BEC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v115 = v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC688);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v113 = v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC690);
  OUTLINED_FUNCTION_1();
  v105 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v108 = v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC698);
  OUTLINED_FUNCTION_1();
  v107 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v106 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6A0);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v110 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v118 = v95 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = v95 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6B0);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = v95 - v24;
  v26 = sub_2170082F4();
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v99 = v29 - v28;
  v103 = sub_217008514();
  OUTLINED_FUNCTION_1();
  v102 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v101 = v33 - v32;
  v34 = sub_217009684();
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6B8);
  OUTLINED_FUNCTION_1();
  v37 = v36;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  v40 = v95 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6C0);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v109 = v43 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v95 - v46;
  v116 = v1;
  sub_216683A80(v1, &v119, &qword_27CAB6DB0);
  v117 = v47;
  if (v121)
  {
    v97 = v25;
    v98 = v22;
    v48 = v20;
    sub_2166A0F18(&v119, v122);
    v49 = sub_217009634();
    MEMORY[0x28223BE20](v49);
    v50 = v19;
    v95[-2] = v122;
    v95[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF158);
    v51 = v40;
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF160);
    v53 = sub_2166D9530(&qword_27CABF168, &qword_27CABF160);
    *&v119 = v52;
    *(&v119 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v51;
    v96 = v51;
    sub_2170081F4();
    sub_217009634();
    sub_2170082E4();
    v55 = v101;
    sub_217008524();
    v56 = *(v104 + 48);
    v57 = v54;
    v58 = v100;
    (*(v37 + 16))(v19, v57, v100);
    v59 = v102;
    v60 = &v50[v56];
    v61 = v103;
    (*(v102 + 16))(v60, v55, v103);
    v62 = v97;
    sub_217009404();
    v63 = v98;
    v64 = v109;
    (*(v98 + 16))(v109, v62, v48);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v48);
    v65 = OUTLINED_FUNCTION_3_175(&qword_27CACC6C8, &qword_27CACC6B0);
    MEMORY[0x21CE9A5A0](v64, v48, v65);
    sub_216697664(v64, &qword_27CACC6C0);
    (*(v63 + 8))(v62, v48);
    (*(v59 + 8))(v55, v61);
    (*(v37 + 8))(v96, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
  }

  else
  {
    sub_216697664(&v119, &qword_27CAB6DB0);
    v66 = v109;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v20);
    v70 = OUTLINED_FUNCTION_3_175(&qword_27CACC6C8, &qword_27CACC6B0);
    MEMORY[0x21CE9A5A0](v66, v20, v70);
    sub_216697664(v66, &qword_27CACC6C0);
  }

  sub_216683A80(v116 + 40, &v119, &qword_27CAB6DB0);
  if (v121)
  {
    sub_2166A0F18(&v119, v122);
    v71 = sub_217009634();
    MEMORY[0x28223BE20](v71);
    v72 = v116;
    v95[-2] = v122;
    v95[-1] = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6D8);
    v73 = type metadata accessor for ObjectGraph();
    v74 = sub_216ECB3F8();
    *&v119 = &type metadata for ReplayToolbarButton;
    *(&v119 + 1) = v73;
    v120 = v74;
    swift_getOpaqueTypeConformance2();
    v75 = v106;
    sub_2170081F4();
    v76 = OUTLINED_FUNCTION_43_1(&qword_27CACC6D0, &qword_27CACC698);
    v77 = v108;
    v78 = v112;
    MEMORY[0x21CE9A570](v75, v112, v76);
    v79 = v105;
    v81 = v110;
    v80 = v111;
    (*(v105 + 16))(v110, v77, v111);
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v80);
    *&v119 = v78;
    *(&v119 + 1) = v76;
    OUTLINED_FUNCTION_2_2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v81, v80, OpaqueTypeConformance2);
    sub_216697664(v81, &qword_27CACC6A0);
    (*(v79 + 8))(v77, v80);
    (*(v107 + 8))(v75, v78);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
  }

  else
  {
    sub_216697664(&v119, &qword_27CAB6DB0);
    v84 = v110;
    v83 = v111;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v83);
    v88 = OUTLINED_FUNCTION_43_1(&qword_27CACC6D0, &qword_27CACC698);
    v122[0] = v112;
    v122[1] = v88;
    OUTLINED_FUNCTION_2_2();
    v89 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v84, v83, v89);
    sub_216697664(v84, &qword_27CACC6A0);
  }

  v90 = v113;
  v91 = *(v114 + 48);
  v92 = v117;
  sub_216683A80(v117, v113, &qword_27CACC6C0);
  v93 = v90 + v91;
  v94 = v118;
  sub_216683A80(v118, v93, &qword_27CACC6A0);
  sub_217009404();
  sub_216697664(v94, &qword_27CACC6A0);
  sub_216697664(v92, &qword_27CACC6C0);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EC96B0(uint64_t a1)
{
  v2 = sub_21700D8E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2167B7D58(a1, v11);
  v6 = swift_allocObject();
  sub_2166A0F18(v11, v6 + 16);
  v9 = sub_216ECB454;
  v10 = v6;
  memset(v11, 0, 32);
  memset(v8, 0, sizeof(v8));
  sub_21700D854();
  sub_216697664(v8, &unk_27CABF7A0);
  sub_216697664(v11, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF160);
  sub_2166D9530(&qword_27CABF168, &qword_27CABF160);
  sub_21700A204();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_216EC9894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2167B7D58(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF170);
  v4 = v3[11];
  v5 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  v6 = v3[12];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v3[13];
  result = swift_getKeyPath();
  *v7 = result;
  v7[40] = 0;
  a2[7] = 0;
  a2[8] = 0;
  a2[5] = sub_216EC9968;
  a2[6] = 0;
  return result;
}

uint64_t sub_216EC9968@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MenuActionType();
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for ContextMenuItem();
  *(a1 + v2[5]) = 0;
  *(a1 + v2[6]) = 0;
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216EC99FC(uint64_t a1, uint64_t a2)
{
  sub_2167B7D58(a1, v7);
  v3 = *(a2 + 88);
  sub_21700AEA4();
  v12 = v8[0];
  v13 = v9;
  KeyPath = swift_getKeyPath();
  v15 = 0;
  sub_2167B7D58(v7, v8);
  v10 = v3;

  sub_216EC80A4();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v11 = v5;
  type metadata accessor for ObjectGraph();
  sub_216ECB3F8();
  sub_21700A1E4();
  return sub_216ECB45C(v8);
}

void sub_216EC9AF8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v28 = v2;
  v26 = sub_2170091D4();
  OUTLINED_FUNCTION_1();
  v27 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC6F8);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC700);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_216ECB628(v1, v31);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v31, 0x71uLL);
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC708);
  sub_216ECB68C();
  sub_21700AF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420);
  sub_2166D9530(&qword_27CACC728, &qword_27CACC6F8);
  sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420);
  sub_21700A944();
  (*(v10 + 8))(v13, v8);
  v18 = *(v1 + 64);
  LOBYTE(v31[0]) = *(v1 + 56);
  v31[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  LOBYTE(v13) = v30;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v21 = &v16[*(v25 + 36)];
  *v21 = KeyPath;
  v21[1] = sub_2167D2420;
  v21[2] = v20;
  sub_2170091C4();
  sub_216ECB7E8();
  OUTLINED_FUNCTION_6_125();
  sub_216ECB978(v22, v23);
  v24 = v26;
  sub_21700A364();
  (*(v27 + 8))(v7, v24);
  sub_216697664(v16, &qword_27CACC700);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EC9EC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &__src[-v2 - 8];
  v4 = *(v0 + 64);
  __src[0] = *(v0 + 56);
  *&__src[8] = v4;
  v12 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_216ECB628(v0, __src);
  sub_21700EA34();
  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, __src, 0x71uLL);
  sub_21677E228();
}

uint64_t sub_216ECA018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v3);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC718);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC738);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v37 = v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC740);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51E0);
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  v16 = *(a1 + 64);
  LOBYTE(v41) = *(a1 + 56);
  v42 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  v17 = sub_21700AEB4();
  if (v45 == 1)
  {
    sub_217008294();
    v18 = *(a1 + 40);
    KeyPath = swift_getKeyPath();
    v41 = v18;

    v20 = sub_2170083D4();
    v21 = &v15[*(v13 + 36)];
    *v21 = KeyPath;
    v21[1] = v20;
    sub_216683A80(v15, v12, &qword_27CAC51E0);
    swift_storeEnumTagMultiPayload();
    sub_216BCFED0();
    v22 = sub_2166D9530(&qword_27CACC720, &qword_27CACC718);
    v23 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    v41 = v6;
    v42 = v3;
    v43 = v22;
    v44 = v23;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return sub_216697664(v15, &qword_27CAC51E0);
  }

  else
  {
    v34[2] = v13;
    v35 = v12;
    v25 = v6;
    v26 = v3;
    MEMORY[0x28223BE20](v17);
    v34[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F50);
    sub_216A6F608();
    sub_21700AE24();
    v27 = *MEMORY[0x277CDF9D8];
    v28 = sub_217008844();
    (*(*(v28 - 8) + 104))(v5, v27, v28);
    sub_216ECB978(&qword_280E2B340, MEMORY[0x277CDFA28]);
    result = sub_21700E494();
    if (result)
    {
      v29 = sub_2166D9530(&qword_27CACC720, &qword_27CACC718);
      v34[1] = v10;
      v30 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
      v31 = v37;
      v32 = v39;
      sub_21700A5B4();
      sub_216697664(v5, &qword_27CAB75D0);
      (*(v36 + 8))(v32, v25);
      v33 = v38;
      (*(v38 + 16))(v35, v31, v8);
      swift_storeEnumTagMultiPayload();
      sub_216BCFED0();
      v41 = v25;
      v42 = v26;
      v43 = v29;
      v44 = v30;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      return (*(v33 + 8))(v31, v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_216ECA694@<X0>(uint64_t a1@<X8>)
{
  result = sub_216983738(296);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_216ECA6D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21700ADB4();
  v5 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v5;
}

uint64_t sub_216ECA748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360);
  v4[19] = swift_task_alloc();
  sub_21700EA34();
  v4[20] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_216ECA818, v6, v5);
}

uint64_t sub_216ECA818()
{
  sub_216C0C534(v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 144);
    sub_2166A0F18((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_2170075A4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    v8 = *(v1 + 48);
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_216ECAA78;
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);

    return sub_216B4FF04(v11, v10, v8, v2, v3);
  }

  else
  {

    sub_216697664(v0 + 56, &qword_27CAB7310);
    if (qword_27CAB6238 != -1)
    {
      swift_once();
    }

    v13 = sub_217007CA4();
    __swift_project_value_buffer(v13, qword_27CACC658);
    v14 = sub_217007C84();
    v15 = sub_21700ED84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_216679000, v14, v15, "Can't perform action, an actionDispatcher must be set on this view or a view above it.", v16, 2u);
      MEMORY[0x21CEA1440](v16, -1, -1);
    }

    v17 = *(v0 + 144);

    v18 = *(v17 + 64);
    *(v0 + 96) = *(v17 + 56);
    *(v0 + 104) = v18;
    *(v0 + 200) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AEC4();

    OUTLINED_FUNCTION_3();

    return v19();
  }
}

uint64_t sub_216ECAA78()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 192) = v0;

  sub_216697664(v3, &qword_27CABF360);
  v4 = *(v2 + 176);
  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_216ECAC90;
  }

  else
  {
    v6 = sub_216ECABE0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_216ECABE0()
{
  v1 = *(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = *(v1 + 64);
  *(v0 + 128) = *(v1 + 56);
  *(v0 + 136) = v2;
  *(v0 + 202) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216ECAC90()
{
  v1 = *(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = *(v1 + 64);
  *(v0 + 112) = *(v1 + 56);
  *(v0 + 120) = v2;
  *(v0 + 201) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216ECAD48()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACC658);
  __swift_project_value_buffer(v0, qword_27CACC658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC748);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t sub_216ECADF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC758);
  sub_2166D9530(&qword_27CACC760, &qword_27CACC750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC768);
  sub_216ECBA78();
  swift_getOpaqueTypeConformance2();
  return sub_21700AAD4();
}

uint64_t sub_216ECAF04(uint64_t a1)
{
  v2 = type metadata accessor for ReplayPageToolbarProvider(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-v6 - 16];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC768);
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-v12 - 16];
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_217007DE4();

    if (__swift_getEnumTagSinglePayload(v7, 1, v2))
    {
      sub_216697664(v7, &qword_27CAB9318);
      v14 = 1;
    }

    else
    {
      sub_216ECBB28(v7, v4);
      sub_216697664(v7, &qword_27CAB9318);
      sub_216683A80((v4 + 40), v22, &qword_27CAB6DB0);
      sub_216683A80(v4, v23, &qword_27CAB6DB0);
      v15 = *(v2 + 44);
      v16 = *&v4[*(v2 + 40)];
      v23[5] = *(v4 + 10);
      v23[6] = v16;
      v21 = *&v4[v15];
      v24 = v21;
      v17 = sub_2167CC288();

      swift_unknownObjectRetain();
      MEMORY[0x21CE9A570](v22, &type metadata for ReplayToolbarContent, v17);
      sub_216B54D58(v22);
      sub_216ECBB8C(v4);
      v14 = 0;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C0);
    __swift_storeEnumTagSinglePayload(v10, v14, 1, v18);
    sub_216767644(v10, v13);
    v19 = sub_216ECBA78();
    MEMORY[0x21CE9A570](v13, v8, v19);
    return sub_216697664(v13, &qword_27CACC768);
  }

  else
  {
    type metadata accessor for ReplayToolbarPagePresenter(0);
    sub_216ECB978(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216ECB27C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9318);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_216683A80(a1, &v6 - v3, &qword_27CAB9318);
  return sub_216EC85F4(v4);
}

uint64_t sub_216ECB328(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_216ECB368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216ECB3F8()
{
  result = qword_27CACC6E0;
  if (!qword_27CACC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC6E0);
  }

  return result;
}

uint64_t sub_216ECB48C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_216ECB4CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216ECB53C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216ECB590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_216ECB68C()
{
  result = qword_27CACC710;
  if (!qword_27CACC710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC708);
    sub_216BCFED0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
    sub_2166D9530(&qword_27CACC720, &qword_27CACC718);
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC710);
  }

  return result;
}

unint64_t sub_216ECB7E8()
{
  result = qword_27CACC730;
  if (!qword_27CACC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA420);
    sub_2166D9530(&qword_27CACC728, &qword_27CACC6F8);
    sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A6E0, &qword_27CABF2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC730);
  }

  return result;
}

uint64_t sub_216ECB978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216ECB9C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2167AF644;

  return sub_216ECA748(a1, v4, v5, v1 + 32);
}

unint64_t sub_216ECBA78()
{
  result = qword_27CACC770;
  if (!qword_27CACC770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC768);
    sub_2167CC288();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC770);
  }

  return result;
}

uint64_t sub_216ECBB28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPageToolbarProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216ECBB8C(uint64_t a1)
{
  v2 = type metadata accessor for ReplayPageToolbarProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216ECBBF8()
{
  OUTLINED_FUNCTION_33();
  v0[2] = v1;
  v0[3] = v2;
  sub_21700EA34();
  v0[4] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216ECBC8C, v4, v3);
}

uint64_t sub_216ECBC8C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);

  MusicStackAuthority.pop()();
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216ECBD3C()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167CCCD0;

  return sub_216ECBBF8();
}

unint64_t sub_216ECBDD8(uint64_t a1)
{
  result = sub_21685722C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216ECBE04()
{
  result = qword_280E2B650;
  if (!qword_280E2B650)
  {
    type metadata accessor for PopAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B650);
  }

  return result;
}

uint64_t sub_216ECBE64(uint64_t a1)
{
  result = sub_216ECC02C(&qword_27CACC778, MEMORY[0x277D22020]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216ECBF04()
{
  v0 = sub_21700D7E4();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC780);
  sub_21700DF14();
  sub_21700D7D4();
  return sub_21700E1F4();
}

uint64_t sub_216ECC02C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216ECC074(uint64_t a1)
{
  *(a1 + 8) = sub_2166F3A50();
  result = sub_216ECC0A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216ECC0A4()
{
  result = qword_27CACC798;
  if (!qword_27CACC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC798);
  }

  return result;
}

uint64_t sub_216ECC130()
{
  v1 = OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel____lazy_storage___webModel;
  if (*(v0 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel____lazy_storage___webModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel____lazy_storage___webModel);
  }

  else
  {
    v2 = sub_216ECCCE0(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_216ECC1AC(void *a1)
{
  v3 = OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateRequest;
  v4 = *(v1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateRequest);
  v5 = v4;
  LOBYTE(v4) = sub_216ECC480(v4, a1, &qword_27CACC7A8);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_14();
    sub_216ECC540();
  }

  else
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void *sub_216ECC2E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_216ECD298();
  sub_2170066D4();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void sub_216ECC35C(void *a1)
{
  v3 = OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogRequest;
  v4 = *(v1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogRequest);
  v5 = v4;
  LOBYTE(v4) = sub_216ECC480(v4, a1, &qword_280E29D10);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_14();
    sub_216ECC540();
  }

  else
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

BOOL sub_216ECC480(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_216685F4C(0, a3);
    v6 = a1;
    v7 = a2;
    v3 = sub_21700F104();
  }

  return (v3 & 1) == 0;
}

void sub_216ECC504(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateRequest);
  *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateRequest) = a2;
  v3 = a2;
}

uint64_t sub_216ECC5C8@<X0>(void *a1@<X8>)
{
  result = sub_216ECC2A8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_216ECD56C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_216ECC638(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_216ECD570;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2167759F4(v1);
  return sub_216ECC72C(v4, v3, &unk_21706D670, sub_216ECD440, sub_216782758);
}

uint64_t sub_216ECC72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_216ECC540();
  a5(a1, a2);
}

void sub_216ECC7AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogRequest);
  *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogRequest) = a2;
  v3 = a2;
}

uint64_t sub_216ECC7E8@<X0>(void *a1@<X8>)
{
  result = sub_216ECC458();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_216ECD3B8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_216ECC858(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_216ECD364;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2167759F4(v1);
  return sub_216ECC72C(v4, v3, &unk_21706D620, sub_216ECD368, sub_216782758);
}

uint64_t sub_216ECC974(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_216ECD298();
  sub_2170066D4();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_216ECCA0C@<X0>(void *a1@<X8>)
{
  result = sub_216ECC94C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_216ECD324;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_216ECCA7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v8 = *a2;
  v7 = a2[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  LOBYTE(a3) = a3(v6, sub_216ECD32C, v9);

  *a4 = a3 & 1;
  return result;
}

uint64_t sub_216ECCB20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_216ECD2F0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2167759F4(v1);
  return sub_216ECC72C(v4, v3, &unk_21706D5F8, sub_216ECD248, sub_216782758);
}

uint64_t sub_216ECCBE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unsigned __int8 *__return_ptr, uint64_t *, void *))
{
  v11 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[0] = sub_216ECD2F8;
  v10[1] = v7;

  a4(&v9, &v11, v10);

  return v9;
}

uint64_t sub_216ECCC80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_216ECCCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACC7B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_217007734();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_216ECC94C();

  sub_217007724();
  v9 = *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_account);
  v10 = *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_clientOptions);
  v11 = *(a1 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_metricsOverlay);
  (*(v6 + 16))(v4, v8, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_217007844();
  swift_allocObject();
  v12 = v11;
  swift_unknownObjectRetain();
  v13 = v9;
  v14 = v10;
  v15 = sub_217007834();
  (*(v6 + 8))(v8, v5);
  return v15;
}

uint64_t sub_216ECCF24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v15 = a1;
  a5(a1);

  return sub_216ECC72C(a2, a3, a6, a7, a8);
}

uint64_t sub_216ECCFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateRequest) = 0;
  v11 = (v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateCompletion);
  *v11 = 0;
  v11[1] = 0;
  *(v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogRequest) = 0;
  v12 = (v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogCompletion);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__delegateActionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel____lazy_storage___webModel) = 0;
  sub_217006704();
  *(v5 + 16) = a1;
  v14 = OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_url;
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v15 + 32))(v5 + v14, a2);
  *(v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_account) = a3;
  *(v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_clientOptions) = a4;
  *(v5 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_metricsOverlay) = a5;
  return v5;
}

uint64_t sub_216ECD0B4()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_url;
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  sub_21667E91C(*(v0 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__authenticateCompletion));
  sub_21667E91C(*(v0 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__dialogCompletion));
  sub_21667E91C(*(v0 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel__delegateActionHandler));

  v3 = OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_216ECD1E8()
{
  sub_216ECD0B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_216ECD298()
{
  result = qword_27CAB9508;
  if (!qword_27CAB9508)
  {
    type metadata accessor for CommerceWebViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9508);
  }

  return result;
}

uint64_t sub_216ECD32C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_216ECD404(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_216ECD5BC()
{
  swift_getAtKeyPath();
  sub_216AEFC84();
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

uint64_t sub_216ECD640()
{
  swift_getAtKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8);
  sub_216ECDB30(&qword_27CACC7D8, &qword_27CABFBB8);
  return sub_21700DD04();
}

uint64_t sub_216ECD6E8()
{
  swift_getAtKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  sub_216ECDB30(&qword_27CABD7E0, &qword_27CABAA40);
  v0 = sub_21700DD04();

  return v0;
}

id sub_216ECD808()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7MusicUI28JSCloudLibraryStatusProvider__isCloudLibraryEnabled;
  *&v0[v2] = swift_getKeyPath();
  v3 = OBJC_IVAR____TtC7MusicUI28JSCloudLibraryStatusProvider__isCloudLibraryLoaded;
  *&v0[v3] = swift_getKeyPath();
  type metadata accessor for CloudLibraryStatusController();
  sub_21700D4D4();
  sub_21700E094();
  *&v0[OBJC_IVAR____TtC7MusicUI28JSCloudLibraryStatusProvider_cloudLibraryStatusController] = v7;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t sub_216ECD984()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_216ECD5BC();

  return v0;
}

uint64_t sub_216ECDB30(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_216ECDC54(uint64_t a1)
{
  OUTLINED_FUNCTION_65_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  return sub_2166B1FC4(&unk_21706D950, v3, &qword_27CACC7E0, &unk_21706D958, &unk_28293C728, &unk_21706D968);
}

uint64_t sub_216ECDCEC(unsigned int a1, uint64_t a2)
{
  v4 = a1 & 1;
  v5 = (a1 >> 8) & 1;
  OUTLINED_FUNCTION_181();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_38_40(v6);
  *(v7 + 24) = v4;
  *(v7 + 25) = v5;
  *(v7 + 32) = a2;

  return sub_2166B1FC4(&unk_21706DBE8, v2, &qword_27CACC810, &unk_21706DBF0, &unk_28293CB50, &unk_21706DC00);
}

uint64_t sub_216ECDDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_53();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_40_31(v6);
  *(v7 + 32) = v3;
  *(v7 + 40) = a3;

  sub_21700DF14();

  return sub_2166B1FC4(&unk_21706DAF8, v4, &qword_27CAB6FF0, &unk_217015640, &unk_28293C7C8, &unk_21706D9D8);
}

uint64_t sub_216ECDE68(uint64_t a1, uint64_t a2)
{
  sub_2168282D4(a1, v8, &qword_27CABBEA0);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_38_40(v4);
  v6 = v8[1];
  *(v5 + 24) = v8[0];
  *(v5 + 40) = v6;
  *(v5 + 56) = v9;
  *(v5 + 64) = a2;

  return sub_2166B1FC4(&unk_21706D9A0, v2, &qword_27CACC7F0, &unk_21706D9A8, &unk_28293C7A0, &unk_21706D9B8);
}

uint64_t sub_216ECDF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_53();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  sub_21700DF14();

  v8 = OUTLINED_FUNCTION_16_73();
  return sub_2166B1FC4(v8, v7, v9, v10, v11, v12);
}

uint64_t sub_216ECE008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_111_0();
  v8 = v7 & 1;
  OUTLINED_FUNCTION_68_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_40_31(v9);
  *(v10 + 32) = v4;
  *(v10 + 40) = v8;
  *(v10 + 48) = a4;

  sub_21700DF14();

  return sub_2166B1FC4(&unk_21706DB70, v5, &qword_27CACC800, &unk_21706DA08, &unk_28293C840, &unk_21706DA18);
}

uint64_t sub_216ECE0E0()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_181();
  v2 = swift_allocObject();
  *(OUTLINED_FUNCTION_40_31(v2) + 32) = v0;

  sub_21700DF14();

  v3 = OUTLINED_FUNCTION_16_73();
  return sub_2166B1FC4(v3, v1, v4, v5, v6, v7);
}

uint64_t sub_216ECE1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideFromProfileIntent();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_216ED333C(a1, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_38_40(v11);
  sub_216ED3394(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(a1 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_2166B1FC4(&unk_21706DB88, a1, &qword_27CACC800, &unk_21706DA08, &unk_28293C840, &unk_21706DA18);
}

uint64_t sub_216ECE36C(char a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;

  return sub_2166B1FC4(&unk_21706D900, v5, &qword_27CAC1850, &unk_21703F440, &unk_28293C688, &unk_21706D918);
}

uint64_t sub_216ECE414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2166AB4A0;

  return sub_216A98228(a1, a3);
}

uint64_t sub_216ECE4C4(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216ECE578;

  return sub_216A99AD0(a2 & 0x101, a3);
}

uint64_t sub_216ECE578()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_3();
  v3 = *v2;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  v5 = *(v3 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0 & 1;
  }

  return v5(v6);
}

uint64_t sub_216ECE66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3838;

  return sub_216A9A888(a2, a3, a4);
}

uint64_t sub_216ECE720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2166AB4A0;

  return sub_216A9AD7C(a1, a3, a4, a5);
}

uint64_t sub_216ECE7E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216CC6C10();
}

uint64_t sub_216ECE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3838;

  return sub_216A9D044(a2, a3, a4);
}

uint64_t sub_216ECE95C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_3();
  v3 = *v2;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  if (v1)
  {
    OUTLINED_FUNCTION_3();

    return v5();
  }

  else
  {
    v7 = *(v3 + 8);

    return v7(v0 & 0x101);
  }
}

uint64_t sub_216ECEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216ED3838;

  return sub_216A9DC64(a2, a3);
}

uint64_t sub_216ECEB24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_216ED3838;

  return sub_216A9E158(a2, a3, a4 & 1, a5);
}

uint64_t sub_216ECEBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216ED3838;

  return sub_216A9EE04(a2, a3);
}

uint64_t sub_216ECEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3838;

  return sub_216A9F1F4(a2, a3, a4);
}

uint64_t sub_216ECED48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216ED3838;

  return sub_216A9F6E8(a2, a3);
}

uint64_t sub_216ECEDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216ED3838;

  return sub_216A9FAD8(a2, a3);
}

uint64_t sub_216ECEEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ECEF54;

  return sub_216AA002C(a2, a3, a4);
}

uint64_t sub_216ECEF54()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_3();
  v3 = *v2;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_216ECF040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216ED3838;

  return sub_216AA09A0(a2, a3);
}

uint64_t sub_216ECF0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3838;

  return sub_216AA2A90(a2, a3, a4);
}

uint64_t sub_216ECF1A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2166AB4A0;

  return sub_216AA2FF4(a1, a3, a4);
}

uint64_t sub_216ECF258()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_2166BF4A4(0);
  }

  return result;
}

void sub_216ECF2BC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = 0;
    v5 = *(v1 + 16);
    v6 = v1 + 40;
    while (1)
    {
      if (v5 == v4)
      {

        return;
      }

      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      sub_21700DF14();
      sub_2166C0514(type metadata accessor for SocialGraphController);
      v7 = sub_216F0706C();

      switch(v7)
      {
        case 2:

          goto LABEL_8;
        default:
          v8 = sub_21700F7D4();

          if ((v8 & 1) == 0)
          {
            sub_2166BF4A4(1);

            return;
          }

LABEL_8:
          v6 += 16;
          ++v4;
          break;
      }
    }
  }
}

uint64_t sub_216ECF4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AA8);
  MEMORY[0x28223BE20](v40);
  v5 = &v37 - v4;
  v6 = type metadata accessor for SocialBadgingMap();
  v7 = MEMORY[0x28223BE20](v6);
  v37 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v38 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_badgingMap;
  swift_beginAccess();
  sub_2168282D4(a2 + v22, v21, &qword_27CAC1228);
  swift_beginAccess();
  v39 = a2;
  v23 = a2 + v22;
  v24 = v41;
  sub_216ABE608(v41, v23);
  swift_endAccess();
  sub_2168282D4(v24, v19, &qword_27CAC1228);
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) != 1)
  {
    sub_216ED3394(v19, v10);
    sub_216ED333C(v10, v16);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
    v25 = *(v40 + 48);
    sub_2168282D4(v16, v5, &qword_27CAC1228);
    sub_2168282D4(v21, &v5[v25], &qword_27CAC1228);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_216697664(v16, &qword_27CAC1228);
      if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v6) == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v26 = v38;
      sub_2168282D4(v5, v38, &qword_27CAC1228);
      if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v6) != 1)
      {
        v32 = &v5[v25];
        v33 = v37;
        sub_216ED3394(v32, v37);
        if (*v26 == *v33 && v26[1] == v33[1])
        {
          sub_216697664(v16, &qword_27CAC1228);
          sub_216ED2A2C(v33, type metadata accessor for SocialBadgingMap);
          sub_216ED2A2C(v26, type metadata accessor for SocialBadgingMap);
LABEL_19:
          sub_216697664(v5, &qword_27CAC1228);
LABEL_20:
          sub_216ED2A2C(v10, type metadata accessor for SocialBadgingMap);
          goto LABEL_21;
        }

        v35 = sub_21700F7D4();
        sub_216697664(v16, &qword_27CAC1228);
        sub_216ED2A2C(v33, type metadata accessor for SocialBadgingMap);
        sub_216ED2A2C(v26, type metadata accessor for SocialBadgingMap);
        sub_216697664(v5, &qword_27CAC1228);
        if (v35)
        {
          goto LABEL_20;
        }

LABEL_9:
        v27 = [objc_opt_self() defaultCenter];
        if (qword_280E29C60 != -1)
        {
          swift_once();
        }

        v28 = qword_280E739E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_217013DA0;
        sub_216ABE83C();
        sub_21700F364();
        *(inited + 96) = v6;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        sub_216ED333C(v10, boxed_opaque_existential_1);
        v31 = sub_21700E384();
        sub_216ED18A0(v28, v39, v31, v27);

        goto LABEL_20;
      }

      sub_216697664(v16, &qword_27CAC1228);
      sub_216ED2A2C(v26, type metadata accessor for SocialBadgingMap);
    }

    sub_216697664(v5, &qword_27CAC1AA8);
    goto LABEL_9;
  }

  sub_216697664(v21, &qword_27CAC1228);
  v21 = v19;
LABEL_21:
  sub_216697664(v21, &qword_27CAC1228);
  return sub_2168282D4(v24, v42, &qword_27CAC1228);
}

uint64_t sub_216ECFB14()
{
  v1 = sub_2170061E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SocialBadgingMap();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_badgingMap;
  swift_beginAccess();
  sub_2168282D4(v0 + v11, v7, &qword_27CAC1228);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CAC1228);
    v12 = 0;
  }

  else
  {
    sub_216ED3394(v7, v10);
    sub_2170061D4();
    v13 = sub_217006154();
    (*(v2 + 8))(v4, v1);
    sub_216ED2A2C(v10, type metadata accessor for SocialBadgingMap);
    v12 = v13 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_216ECFD50()
{
  v0 = sub_2166C0514(type metadata accessor for UserSocialProfileCoordinator);
  sub_2166B90EC();
  if (v1)
  {
    sub_2166C0514(type metadata accessor for SubscriptionStatusCoordinator);
    sub_2166C0578(&v9);

    if (v11)
    {
      v2 = v10;
      sub_216697664(&v9, &qword_27CAC5980);
      if (sub_2166C0DB4(v2) == 0x6269726373627573 && v3 == 0xEA00000000006465)
      {

        v5 = 1;
      }

      else
      {
        v5 = sub_21700F7D4();
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];

    v6 = v7 & v5;
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_216ECFE90(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingBadgingRequest;
  if (*&v2[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingBadgingRequest])
  {
    v5 = *&v2[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingBadgingRequest];
  }

  else
  {
    type metadata accessor for JSIntentDispatcher();
    v6 = *&v2[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_objectGraph];
    sub_21700D4D4();
    sub_21700E094();
    sub_216ECE36C(a1 & 1, v6);
    v7 = *&v2[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_workQueue];
    v8 = sub_2166AF2EC();
    v9 = MEMORY[0x277D225C0];
    v14 = v8;
    v15 = MEMORY[0x277D225C0];
    v13[0] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
    v5 = sub_21700E1B4();

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    *&v2[v4] = v5;

    v14 = v8;
    v15 = v9;
    v13[0] = v10;
    *(swift_allocObject() + 16) = v2;
    v11 = v2;
    sub_21700E204();

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return v5;
}

uint64_t sub_216ED0090(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingUserSocialProfileFetchRequests;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v7[2] = a2;
  sub_21700DF14();
  sub_216CE1998(sub_216ED28C4, v7, v5);

  *(a1 + v4) = MEMORY[0x277D84F90];
}

uint64_t sub_216ED0144(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingUserSocialProfileFetchRequests;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_2166BF3C8(v3);
  result = sub_21700DF14();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      *(a1 + v2) = MEMORY[0x277D84F90];
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA0220](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_21700E214();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_216ED0250(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SocialBadgingMap();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_216ECFD50() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1850);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    return sub_21700E1F4();
  }

  v12 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_badgingMap;
  swift_beginAccess();
  sub_2168282D4(v1 + v12, v8, &qword_27CAC1228);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CAC1228);
    return sub_216ECFE90(a1 & 1);
  }

  sub_216ED3394(v8, v11);
  if (sub_216ECFB14() & 1) == 0 && (sub_216ECFD50() & 1) != 0 || (a1)
  {
    sub_216ED2A2C(v11, type metadata accessor for SocialBadgingMap);
    return sub_216ECFE90(a1 & 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1850);
  sub_216ED333C(v11, v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v14 = sub_21700E1F4();
  sub_216ED2A2C(v11, type metadata accessor for SocialBadgingMap);
  return v14;
}

void sub_216ED052C(void *a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_lock];
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = a1;
  os_unfair_lock_lock(v4);
  sub_216ED0144(v5);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_216ED06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_2168282D4(a3, v22 - v10, &unk_27CABFAC0);
  v12 = sub_21700EA74();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_216697664(v11, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_21700E9B4();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_21700E5D4() + 32;
      OUTLINED_FUNCTION_65_0();
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_216697664(a3, &unk_27CABFAC0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_216697664(a3, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_216ED098C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_21700D2A4();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2166F46C4;

  return v12(v9);
}

uint64_t sub_216ED0AEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for UserSocialProfileGraph(0);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_216ED0C1C;

  return v11(v8);
}

uint64_t sub_216ED0C1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216ED0D14()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 24);
  sub_21700E224();
  sub_216ED2A2C(v1, type metadata accessor for UserSocialProfileGraph);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216ED0D94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216ED0E8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_35_38();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216ED0EE8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  sub_21700E214();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216ED0F58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_216ED104C;

  return v9(v6 + 40);
}

uint64_t sub_216ED104C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216ED1144(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_216ED1230;

  return v9();
}

uint64_t sub_216ED1230()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216ED1328(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 152) = v7;
  *v7 = v6;
  v7[1] = sub_216ED141C;

  return v9(v6 + 16);
}

uint64_t sub_216ED141C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216ED1514()
{
  OUTLINED_FUNCTION_33();
  sub_21700E224();
  v1 = v0[2];
  v0[5] = v0[1];
  v0[6] = v1;
  v2 = v0[4];
  v0[7] = v0[3];
  v0[8] = v2;
  sub_216C7030C((v0 + 5));
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216ED1588()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 160);
  sub_21700E214();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216ED15F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_216ED172C;

  return v11(v8);
}

uint64_t sub_216ED172C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216ED1824()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 24);
  sub_21700E224();
  sub_216697664(v1, &qword_27CAC1228);

  OUTLINED_FUNCTION_3();

  return v2();
}

void sub_216ED18A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_111_0();
  v7 = sub_21700E344();

  [a4 postNotificationName:v5 object:v4 userInfo:v7];
}

uint64_t sub_216ED1980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2166AB4A0;

  return sub_216ECE414(a1, a2, a4);
}

uint64_t sub_216ED1A30(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *v9 = v4;
  v9[1] = sub_216ED1AF0;

  return sub_216ECE4C4(a2, v10 | v7, a4);
}

uint64_t sub_216ED1AF0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0 & 1;
  }

  OUTLINED_FUNCTION_32_3();

  return v8();
}

uint64_t sub_216ED1BE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED3830;

  return sub_216ECE66C(a2, v7, v8, a4);
}

uint64_t sub_216ED1C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2166AB4A0;

  return sub_216ECE720(a1, a2, v8, v9, a4);
}

uint64_t sub_216ED1D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216ECE7E8();
}

uint64_t sub_216ED1E04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED3830;

  return sub_216ECE8A8(a2, v7, v8, a4);
}

uint64_t sub_216ED1EB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  if (!v1)
  {
    v8 = *(v4 + 16);
    *v8 = v0 & 1;
    v8[1] = HIBYTE(v0) & 1;
  }

  OUTLINED_FUNCTION_32_3();

  return v9();
}

uint64_t sub_216ED1FB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3830;

  return sub_216ECEA78(a2, v7, a4);
}

uint64_t sub_216ED2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_216ED3830;

  return sub_216ECEB24(a2, v7, v8, v9, a4);
}

uint64_t sub_216ED2124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3830;

  return sub_216ECEBE8(a2, v7, a4);
}

uint64_t sub_216ED21D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED3830;

  return sub_216ECEC94(a2, v7, v8, a4);
}

uint64_t sub_216ED2288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3830;

  return sub_216ECED48(a2, v7, a4);
}

uint64_t sub_216ED2338(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3830;

  return sub_216ECEDF4(a2, v7, a4);
}

uint64_t sub_216ED23E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED249C;

  return sub_216ECEEA0(a2, v7, v8, a4);
}

uint64_t sub_216ED249C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  OUTLINED_FUNCTION_32_3();

  return v8();
}

uint64_t sub_216ED2588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_216ED3830;

  return sub_216ECF040(a2, a3, a4);
}

uint64_t sub_216ED2638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED3830;

  return sub_216ECF0EC(a2, v7, v8, a4);
}

uint64_t sub_216ED26EC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2166AB4A4;

  return sub_216ECF1A0(a1, a2, v8, a4);
}

uint64_t sub_216ED27A4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_106();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216ED2834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216ED28F8()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  v3 = OUTLINED_FUNCTION_19_10();

  return v4(v3);
}

uint64_t sub_216ED299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216ED2A2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216ED2A84()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216ED2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216ED2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216ED2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216ED2CCC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_106();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216ED2D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216ED2DEC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_106();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

_BYTE *storeEnumTagSinglePayload for SocialBadgingMapRequestCoordinator.UserInfoKey(_BYTE *result, int a2, int a3)
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

unint64_t sub_216ED2F3C()
{
  result = qword_27CACC808;
  if (!qword_27CACC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC808);
  }

  return result;
}

uint64_t sub_216ED2F90()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_119();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}