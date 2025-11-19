unint64_t sub_24E18EC5C()
{
  result = qword_27F1E6508;
  if (!qword_27F1E6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6508);
  }

  return result;
}

id sub_24E18ECC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24E347358();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DFC2C38();
  v10 = qword_27F1DD918;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27F1E6510;
  v12 = a3;
  v13 = v11;
  result = sub_24E18F0AC(a1, a2, v11, a3);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E36A270;
    sub_24E346FB8();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = a1;
    v15[1] = a2;

    sub_24E347008();
    sub_24DF8894C(v15);
    (*(v7 + 104))(v9, *MEMORY[0x277D21DE8], v6);
    sub_24E0EF428();

    (*(v7 + 8))(v9, v6);
    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return result;
}

id sub_24E18EF40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    sub_24DFC2C38();

    v4 = a3;
    v5 = OUTLINED_FUNCTION_1_19();
    result = sub_24E18F154(v5, v6, a3);
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  sub_24DFC2C38();

  v8 = OUTLINED_FUNCTION_1_19();
  result = sub_24E303BE8(v8, v9);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_24E18EFCC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    sub_24DFC2C38();

    v4 = a3;
    v5 = OUTLINED_FUNCTION_1_19();
    result = sub_24E0AC60C(v5, v6, a3);
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  sub_24DFC2C38();

  OUTLINED_FUNCTION_1_19();
  result = sub_24DFD29F8();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_24E18F058()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F1E6510 = result;
  return result;
}

id sub_24E18F0AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_24E347CB8();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_24E18F154(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

uint64_t sub_24E18F220()
{
  v0 = sub_24E348B78();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E18F278(char a1)
{
  result = 7562345;
  switch(a1)
  {
    case 1:
      return 1701667182;
    case 2:
      return OUTLINED_FUNCTION_4_69();
    case 3:
      v3 = 0x656C646E7562;
      goto LABEL_7;
    case 4:
      v3 = 0x726579616C70;
      goto LABEL_7;
    case 5:
    case 6:
      return 0x7974697669746361;
    case 7:
      v3 = 0x746567646977;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      result = 0x6146746567646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E18F388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E18F220();
  *a1 = result;
  return result;
}

uint64_t sub_24E18F3B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E18F278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E18F3F4()
{
  v0 = sub_24E348B78();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E18F440(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x7641726579616C70;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x6D65766569686361;
      break;
    case 4:
      result = 1701667175;
      break;
    case 5:
      result = 0x74617641656D6167;
      break;
    case 6:
      result = 0x72616F6268736164;
      break;
    default:
      return result;
  }

  return result;
}

void sub_24E18F520(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E343028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter())
  {

    sub_24DF90B3C(a2);
  }

  else
  {
    v8 = *a1;
    v32 = a1[1];
    v9 = *(a1 + 16);
    v10 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
    v12 = a1[3];
    v11 = a1[4];
    v14 = a1[5];
    v13 = a1[6];
    v15 = a1[7];
    v16 = *(a1 + 64);
    v17 = *(a1 + 65) | ((*(a1 + 69) | (*(a1 + 71) << 16)) << 32);
    switch(*(a1 + 80))
    {
      case 1:
        v22 = a1[9];
        v26 = v9 | (v10 << 8);
        v27 = v16 | (v17 << 8);
        v28 = v22;
        v30 = v14;
        v31 = v13;
        v29 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
        v23 = sub_24E342F68();
        OUTLINED_FUNCTION_6_15(v23);
        OUTLINED_FUNCTION_5_76();
        *(swift_allocObject() + 16) = xmmword_24E37B2E0;
        OUTLINED_FUNCTION_3_84();
        sub_24E342F38();
        sub_24E342F38();
        OUTLINED_FUNCTION_4_69();
        sub_24E342F38();
        OUTLINED_FUNCTION_0_127();
        sub_24E342F38();
        OUTLINED_FUNCTION_2_80();
        sub_24E342F38();
        v18 = 2;
        break;
      case 2:
        v25[1] = v9 | (v10 << 8);
        v26 = v16 | (v17 << 8);
        v30 = v14;
        v31 = v13;
        v28 = v12;
        v29 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
        v20 = sub_24E342F68();
        OUTLINED_FUNCTION_6_15(v20);
        OUTLINED_FUNCTION_5_76();
        *(swift_allocObject() + 16) = xmmword_24E37B2E0;
        v33 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338);
        v27 = v15;
        sub_24DFB4C28(&qword_27F1E0340, &qword_27F1E0338);
        sub_24E347C78();
        OUTLINED_FUNCTION_3_84();
        sub_24E342F38();

        OUTLINED_FUNCTION_4_69();
        sub_24E342F38();
        OUTLINED_FUNCTION_0_127();
        sub_24E342F38();
        OUTLINED_FUNCTION_2_80();
        sub_24E342F38();
        sub_24E342F38();
        v18 = 3;
        break;
      case 3:
        v26 = v9 | (v10 << 8);
        if (v16)
        {
          v18 = 5;
        }

        else
        {
          v18 = 4;
        }

        v30 = v14;
        v31 = v13;
        v28 = v12;
        v29 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
        v27 = v15;
        v21 = sub_24E342F68();
        OUTLINED_FUNCTION_6_15(v21);
        OUTLINED_FUNCTION_5_76();
        *(swift_allocObject() + 16) = xmmword_24E369E30;
        OUTLINED_FUNCTION_4_69();
        sub_24E342F38();
        OUTLINED_FUNCTION_0_127();
        sub_24E342F38();
        sub_24E342F38();
        goto LABEL_12;
      default:
        v18 = v9 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
        v19 = sub_24E342F68();
        OUTLINED_FUNCTION_6_15(v19);
        OUTLINED_FUNCTION_5_76();
        *(swift_allocObject() + 16) = xmmword_24E36A270;
        OUTLINED_FUNCTION_3_84();
        sub_24E342F38();
        OUTLINED_FUNCTION_2_80();
LABEL_12:
        sub_24E342F38();
        break;
    }

    sub_24E343018();
    sub_24E343008();
    v24 = sub_24E18F440(v18);
    MEMORY[0x253039B20](v24);
    sub_24E342F88();
    sub_24E342FA8();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t getEnumTagSinglePayload for ActivityFeedMarkdownURLFormulation.Query(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActivityFeedMarkdownURLFormulation.Query(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E18FD2C()
{
  result = qword_27F1E6528;
  if (!qword_27F1E6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6528);
  }

  return result;
}

uint64_t sub_24E18FE24(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  sub_24DFB4104(a2, v57);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6530);
  OUTLINED_FUNCTION_1_100(v6, v7, v8, v6, v9, v10, v11, v12, v45, v48, v49, v50, v51, v52, v53);
  if (swift_dynamicCast())
  {
    v13 = v54;
    sub_24E078EA8(v5, &v48);
    if (v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6558);
      v14 = swift_dynamicCast();
      if (v14)
      {
        if (v55)
        {
          v22 = OUTLINED_FUNCTION_1_100(v14, v15, v16, v17, v18, v19, v20, v21, v46, v48, v49, v50, v51, v52, v53);
          sub_24DE56CE8(v22, v23);
          swift_getObjectType();
          v24 = v58;
          v25 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          (*(v25 + 8))(v24, v25);
          (*(v13 + 8))();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v57);
          goto LABEL_11;
        }
      }

      else
      {
        v56 = 0;
        OUTLINED_FUNCTION_0_128();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24DF8C95C(&v48, &qword_27F1E2428);
      OUTLINED_FUNCTION_0_128();
      v56 = 0;
    }

    sub_24DF8C95C(&v53, &qword_27F1E6550);
  }

LABEL_11:
  sub_24DFB4104(a2, v57);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6538);
  OUTLINED_FUNCTION_1_100(v26, v27, v28, v26, v29, v30, v31, v32, v46, v48, v49, v50, v51, v52, v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v33 = v54;
  sub_24E078EA8(v5, &v48);
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6548);
    v34 = swift_dynamicCast();
    if (v34)
    {
      if (v55)
      {
        v42 = OUTLINED_FUNCTION_1_100(v34, v35, v36, v37, v38, v39, v40, v41, v47, v48, v49, v50, v51, v52, v53);
        sub_24DE56CE8(v42, v43);
        ObjectType = swift_getObjectType();
        (*(v33 + 8))(v57, a3, ObjectType, v33);
        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_1(v57);
      }
    }

    else
    {
      v56 = 0;
      OUTLINED_FUNCTION_0_128();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_24DF8C95C(&v48, &qword_27F1E2428);
    OUTLINED_FUNCTION_0_128();
    v56 = 0;
  }

  return sub_24DF8C95C(&v53, &qword_27F1E6540);
}

uint64_t OnboardingKitButtonData.init(id:title:segue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OnboardingKitButtonData();
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 56) = 0u;
  v11 = *(v10 + 28);
  v12 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(a5 + v11, 1, 1, v12);
  *a5 = a2;
  *(a5 + 8) = a3;
  v13 = *(a1 + 16);
  *(a5 + 16) = *a1;
  *(a5 + 32) = v13;
  *(a5 + 48) = *(a1 + 32);
  sub_24DFC280C(a5 + 56);

  return sub_24DE56CE8(a4, a5 + 56);
}

uint64_t type metadata accessor for OnboardingKitButtonData()
{
  result = qword_27F1E6568;
  if (!qword_27F1E6568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OnboardingKitButtonData.title.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_24E190440()
{
  result = qword_27F1E6560;
  if (!qword_27F1E6560)
  {
    type metadata accessor for OnboardingKitButtonData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6560);
  }

  return result;
}

void sub_24E1904CC()
{
  sub_24DF9E07C();
  if (v0 <= 0x3F)
  {
    sub_24DF9E0E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E19056C()
{
  result = qword_27F1E6578;
  if (!qword_27F1E6578)
  {
    type metadata accessor for TitledParagraphData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6578);
  }

  return result;
}

uint64_t type metadata accessor for TitledParagraphData()
{
  result = qword_27F1E6580;
  if (!qword_27F1E6580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitledParagraphData.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_24E190720()
{
  sub_24E0ADC44();
  if (v0 <= 0x3F)
  {
    sub_24DF9E07C();
    if (v1 <= 0x3F)
    {
      sub_24DF9E0E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E1907E4()
{
  result = qword_27F1E6590;
  if (!qword_27F1E6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6590);
  }

  return result;
}

uint64_t sub_24E1908B0()
{
  v0 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  v7 = OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_6_61(v7, xmmword_24E367D20);
  v13[3] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1);
  sub_24E346FE8();
  sub_24DF8C95C(v13, &qword_27F1E0370);
  v9 = OUTLINED_FUNCTION_5_77();
  v10(v9);
  sub_24E0EF428();

  return (*(v2 + 8))(v6, v0);
}

void sub_24E190A74(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_1_101();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(v3, ObjectType, v6);
  }
}

void sub_24E190AE8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_1_101();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(v3, ObjectType, v6);
  }
}

uint64_t sub_24E190B5C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a4;
  v46 = a5;
  v47 = a3;
  v48 = a2;
  v49 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_24E346FA8();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  *&v7[OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter__objectGraph] = 0;
  v7[OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_isBootstrapping] = 0;
  *&v7[OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_bootstrap] = 0;
  v22 = OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_onDidFinishBootstrapping;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0);
  swift_allocObject();
  *&v7[v22] = sub_24E346F88();
  v23 = OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_onDidFailBootstrapping;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00);
  swift_allocObject();
  *&v7[v23] = sub_24E346F88();
  v24 = type metadata accessor for BootstrapPresenter();
  v51.receiver = v7;
  v51.super_class = v24;
  v25 = objc_msgSendSuper2(&v51, sel_init);
  if (a7)
  {
    type metadata accessor for GameCenterUIBootstrap();

    sub_24E095648(v49, v14);
    sub_24E346F98();
    (*(v11 + 8))(v14, v9);
    sub_24E347318();

    v26 = *(v17 + 8);
    v26(v21, v15);
    sub_24E3476A8();
    v50[0] = v45;

    sub_24E346F98();
    v27 = sub_24E347318();

    v26(v21, v15);
    v28 = v46;
    if (v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
      v50[0] = v28;
      v50[1] = v44;
      sub_24E346F98();
      v29 = sub_24E347318();

      swift_unknownObjectRelease();

      sub_24DF8C95C(v48, &qword_27F1E1B70);
      v26(v21, v15);
      v27 = v29;
    }

    else
    {
      sub_24DF8C95C(v48, &qword_27F1E1B70);
    }

    *&v25[OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter__objectGraph] = v27;
    goto LABEL_10;
  }

  v30 = v45;
  v31 = v46;
  v32 = v49;
  if (v49)
  {
    v33 = v48;
    sub_24E09797C(v48, v50);
    type metadata accessor for GameCenterUIBootstrap();
    swift_allocObject();
    v34 = sub_24E095044(v32, v50, v47, v30, v31, v44);
    sub_24DF8C95C(v33, &qword_27F1E1B70);
    v35 = OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_bootstrap;
    *&v25[OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_bootstrap] = v34;

    v36 = *&v25[v35];
    if (!v36)
    {
      return v25;
    }

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = *(v36 + 112);
    *(v36 + 112) = sub_24E191458;
    *(v36 + 120) = v37;

    sub_24DE73FA0(v38);

    v39 = *&v25[v35];
    if (!v39)
    {
      return v25;
    }

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = *(v39 + 96);
    *(v39 + 96) = sub_24E191488;
    *(v39 + 104) = v40;

    sub_24DE73FA0(v41);

LABEL_10:

    return v25;
  }

  result = OUTLINED_FUNCTION_2_81();
  __break(1u);
  return result;
}

void sub_24E1910A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_1_101();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

uint64_t sub_24E191100()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter__objectGraph))
  {
  }

  else
  {
    result = OUTLINED_FUNCTION_2_81();
    __break(1u);
  }

  return result;
}

void sub_24E19116C()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter__objectGraph))
  {
    sub_24E191100();
    sub_24E346F78();
  }

  else if ((*(v0 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_isBootstrapping) & 1) == 0 && *(v0 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_bootstrap))
  {
    *(v0 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_isBootstrapping) = 1;

    sub_24E096F10();
  }
}

uint64_t sub_24E191280(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter__objectGraph) = a1;

  sub_24E191100();
  sub_24E346F78();

  *(v1 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_isBootstrapping) = 0;
  return result;
}

uint64_t sub_24E191308()
{
  result = sub_24E346F78();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BootstrapPresenter_isBootstrapping) = 0;
  return result;
}

id sub_24E191394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BootstrapPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_1_101()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_81()
{

  return sub_24E348AE8();
}

uint64_t OUTLINED_FUNCTION_4_70()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_getErrorValue();
}

id TimingCurve.caMediaTimingFunction.getter()
{
  if (*(v0 + 16) == 1)
  {
    switch(*v0)
    {
      case 1uLL:
        v1 = [objc_opt_self() functionWithName_];
        break;
      case 2uLL:
        v1 = [objc_opt_self() functionWithName_];
        break;
      case 3uLL:
        v1 = [objc_opt_self() functionWithName_];
        break;
      default:
        v1 = [objc_opt_self() functionWithName_];
        break;
    }

    return v1;
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = HIDWORD(v0[1]);
    v5 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
    LODWORD(v7) = HIDWORD(v2);
    LODWORD(v6) = v2;
    LODWORD(v8) = v3;
    LODWORD(v9) = v4;

    return [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  }
}

double sub_24E1916E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = 0;
  v6 = *v1;
  LOBYTE(v7) = v3;
  v4 = TimingCurve.caMediaTimingFunction.getter();
  [v4 getControlPointAtIndex:a1 values:{&v8, v6, v7}];

  return *&v8;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TimingCurve(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimingCurve(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24E1917C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E1917E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_24E191810(void *a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v6 = sub_24E347AD8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v20 = Strong;
    sub_24E18D984();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E65C0);
    if (swift_dynamicCast())
    {
      sub_24DE56CE8(v18, v21);
      v10 = v22;
      v11 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v11 + 8))(*a1, a1[1], v10, v11);
      v12 = OUTLINED_FUNCTION_0_129();
      v13(v12);
      sub_24E347AC8();

      (*(v3 + 8))(v5, v2);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_24E191B10(v18);
      sub_24E191B78();
      v16 = swift_allocError();
      sub_24E347AB8();
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_129();
    v15(v14);
    sub_24E347AC8();
    (*(v3 + 8))(v5, v2);
  }

  return v6;
}

unint64_t sub_24E191A94()
{
  result = qword_27F1E2F28;
  if (!qword_27F1E2F28)
  {
    type metadata accessor for LoadMoreAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2F28);
  }

  return result;
}

uint64_t sub_24E191B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E65C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E191B78()
{
  result = qword_27F1E65D0;
  if (!qword_27F1E65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E65D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LoadMoreActionImplementation.LoadMoreActionImplementationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_24E191C7C()
{
  result = qword_27F1E65D8;
  if (!qword_27F1E65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E65D8);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsAction()
{
  result = qword_27F1E65E0;
  if (!qword_27F1E65E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E191D58()
{
  sub_24E191DF4();
  if (v0 <= 0x3F)
  {
    sub_24E191E38();
    if (v1 <= 0x3F)
    {
      sub_24E347208();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E191DF4()
{
  result = qword_27F1E26D8;
  if (!qword_27F1E26D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E26D8);
  }

  return result;
}

void sub_24E191E38()
{
  if (!qword_27F1E65F0)
  {
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E65F0);
    }
  }
}

id sub_24E191E88(void *a1)
{
  v3 = [v1 contentView];
  [v3 insertSubview:*&v1[OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView] belowSubview:a1];

  return [a1 removeFromSuperview];
}

void sub_24E191F08(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView) = a1;
  v2 = a1;
  sub_24E191E88(v3);
}

id sub_24E191F68()
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v1 = MEMORY[0x277D76A08];
  if (!ShouldUsePadUI)
  {
    v1 = MEMORY[0x277D769A8];
  }

  result = *v1;
  qword_27F20B020 = result;
  return result;
}

uint64_t sub_24E191FA8()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F20B028);
  v1 = __swift_project_value_buffer(v0, qword_27F20B028);
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v3 = MEMORY[0x277D76A28];
  if (!ShouldUsePadUI)
  {
    v3 = MEMORY[0x277D76A20];
  }

  *v1 = *v3;
  *(v1 + 8) = 0;
  v4 = *MEMORY[0x277D22680];
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

id sub_24E192064()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F20B040);
  v1 = __swift_project_value_buffer(v0, qword_27F20B040);
  v3 = *MEMORY[0x277D76968];
  *v1 = *MEMORY[0x277D76968];
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return v3;
}

uint64_t sub_24E192114()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F20B058);
  __swift_project_value_buffer(v4, qword_27F20B058);
  GKIsXRUIIdiomShouldUsePadUI();
  if (qword_27F1DD930 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F20B040);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E192308()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F20B070);
  __swift_project_value_buffer(v4, qword_27F20B070);
  if (qword_27F1DD920 != -1)
  {
    swift_once();
  }

  v5 = qword_27F20B020;
  *v3 = qword_27F20B020;
  *(v3 + 2) = 0;
  v6 = *MEMORY[0x277D22680];
  v7 = sub_24E344158();
  (*(*(v7 - 8) + 104))(v3, v6, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v12[3] = v0;
  v12[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  v9 = v5;
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1924F0()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F20B088);
  __swift_project_value_buffer(v4, qword_27F20B088);
  if (qword_27F1DD928 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F20B028);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

id AchievementHighlightCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *AchievementHighlightCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_title;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_subtitle;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_wantsVerticalLayout) = 0;
  v5 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_achievementsTheme;
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
    swift_once();
  }

  *(v0 + v5) = byte_27F20AFF8;
  v6 = OUTLINED_FUNCTION_28();
  v9 = objc_msgSendSuper2(v7, v8, v6, v0, ObjectType);
  v10 = [v9 contentView];
  [v10 addSubview_];

  v11 = [v9 contentView];
  v12 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_title;
  [v11 addSubview_];

  v13 = [v9 contentView];
  v14 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_subtitle;
  [v13 addSubview_];

  v15 = *&v9[v12];
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v16 = qword_27F1DD928;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_24E344158();
  v19 = __swift_project_value_buffer(v18, qword_27F20B028);
  sub_24DF88A8C(0, &qword_27F1E0BA0);
  v20 = sub_24E3483D8();
  v21 = MEMORY[0x25303F0C0](v19, v20);

  [v17 setFont_];
  [*&v9[v12] setNumberOfLines_];
  [*&v9[v12] setAdjustsFontForContentSizeCategory_];
  [*&v9[v12] setAdjustsFontSizeToFitWidth_];
  [*&v9[v12] setMinimumScaleFactor_];
  v22 = *&v9[v14];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x277D76968];
  v25 = v22;
  v26 = [v23 preferredFontForTextStyle_];
  [v25 setFont_];

  [*&v9[v14] setAdjustsFontForContentSizeCategory_];
  v27 = *&v9[v14];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 secondaryLabelColor];
  [v29 setTextColor_];

  [*&v9[v14] setNumberOfLines_];
  if (v9[OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_achievementsTheme] == 1)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v32 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
    if (!v32)
    {
      sub_24DF88A8C(0, &qword_27F1E9F20);
      sub_24E347F08();
      v32 = sub_24E347EE8();
    }

    [v31 setBackgroundEffects_];

    sub_24E193BDC(0x6579614C656D6167, 0xEE0070756F724772, v31);
    [v9 setBackgroundView_];
    v33 = [*&v9[v14] layer];
    [v33 setCompositingFilter_];
  }

  else
  {
    v34 = v9;
    v35 = [v28 systemBackgroundColor];
    [v34 setBackgroundColor_];

    v36 = *&v9[v12];
    v37 = [v28 systemBackgroundColor];
    [v36 setBackgroundColor_];

    v31 = *&v9[v14];
    v33 = [v28 systemBackgroundColor];
    [v31 setBackgroundColor_];
  }

  return v9;
}

void sub_24E192CB4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_title;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_subtitle;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_wantsVerticalLayout) = 0;
  v4 = OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_achievementsTheme;
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
    swift_once();
  }

  *(v0 + v4) = byte_27F20AFF8;
  sub_24E348AE8();
  __break(1u);
}

void AchievementHighlightCollectionViewCell.apply(contentsOf:in:with:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  OUTLINED_FUNCTION_3_85();

  if (v25)
  {
    if (v25 == 1)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
      sub_24DFA0B40(v23, v24, v5);
      [v5 setNumberOfLines_];
      [v5 setAdjustsFontForContentSizeCategory_];
      v6 = objc_opt_self();
      if (qword_27F1DD920 != -1)
      {
        OUTLINED_FUNCTION_0_130();
      }

      v7 = [v6 preferredFontForTextStyle_];
      [v5 setFont_];

      v8 = v5;
      sub_24E191F08(v8);
    }

    else
    {
      sub_24E191F08([objc_allocWithZone(MEMORY[0x277D75D18]) init]);
    }
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v10 = objc_opt_self();
    if (qword_27F1DD920 != -1)
    {
      OUTLINED_FUNCTION_0_130();
    }

    v11 = [v10 preferredFontForTextStyle_];
    v12 = [objc_opt_self() configurationWithFont_];

    [v9 setSymbolConfiguration_];
    v13 = [objc_opt_self() labelColor];
    [v9 setTintColor_];

    [v9 setContentMode_];
    v14 = sub_24E1931A8(v9);
    sub_24E191F08(v14);

    sub_24E08FC04(v23, v24, 0);
  }

  v15 = *(v3 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_title);
  swift_getKeyPath();
  v16 = v15;
  OUTLINED_FUNCTION_3_85();

  sub_24DFA0B40(v23, v24, v16);

  v17 = *(v3 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_subtitle);
  swift_getKeyPath();
  v18 = v17;
  OUTLINED_FUNCTION_3_85();

  sub_24DFA0B40(v23, v24, v18);

  *(v3 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_wantsVerticalLayout) = *(a2 + OBJC_IVAR___GameLayerPageGrid_columnCount) < 3;
  if (!*(v3 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_achievementsTheme))
  {
    v19 = *(v3 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 systemBackgroundColor];
    [v21 setBackgroundColor_];
  }
}

char *sub_24E1931A8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_achievementsTheme) == 1)
  {
    v2 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
    sub_24DF88A8C(0, &qword_27F1E9F20);
    v3 = sub_24E347F08();

    v4 = objc_allocWithZone(type metadata accessor for VibrancyHostView());
    return sub_24E300F20(a1, v3, 0);
  }

  else
  {

    return a1;
  }
}

CGSize __swiftcall AchievementHighlightCollectionViewCell.sizeThatFits(_:)(CGSize a1)
{
  sub_24E3446A8();
  OUTLINED_FUNCTION_1_13();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_24E193380(v14);
  sub_24E1FE1F0(v5);
  sub_24E3445F8();
  v7 = v6;
  v9 = v8;
  (*(v2 + 8))(v5);
  sub_24E193C40(v14);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

uint64_t sub_24E193380@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F1DD940 != -1)
  {
    swift_once();
  }

  v3 = sub_24E3444F8();
  v4 = __swift_project_value_buffer(v3, qword_27F20B070);
  v5 = MEMORY[0x277D22798];
  v31[3] = v3;
  v31[4] = MEMORY[0x277D22798];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  v7 = *(*(v3 - 8) + 16);
  v7(boxed_opaque_existential_1, v4, v3);
  if (qword_27F1DD948 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_27F20B088);
  v32[3] = v3;
  v32[4] = v5;
  v9 = __swift_allocate_boxed_opaque_existential_1(v32);
  v7(v9, v8, v3);
  if (qword_27F1DD938 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27F20B058);
  v33[3] = v3;
  v33[4] = v5;
  v11 = __swift_allocate_boxed_opaque_existential_1(v33);
  v7(v11, v10, v3);
  v12 = [v1 traitCollection];
  v13 = [v12 verticalSizeClass];

  if (v13 == 1 || (v14 = [v1 traitCollection], v15 = objc_msgSend(v14, sel_horizontalSizeClass), v14, v15 == 1))
  {
    v16 = [v1 traitCollection];
    v17 = [v16 preferredContentSizeCategory];

    LOBYTE(v16) = sub_24E348458();
    v18 = v16 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v1[OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_wantsVerticalLayout] | v18;
  sub_24E193E48(v31, a1 + 128);
  v20 = *&v1[OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_decorationView];
  v21 = sub_24DF88A8C(0, &qword_27F1E1D30);
  v22 = MEMORY[0x277D22A58];
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *a1 = v20;
  v23 = *&v1[OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_title];
  v24 = sub_24DF88A8C(0, &qword_27F1E0AA0);
  v25 = MEMORY[0x277D22A68];
  *(a1 + 64) = v24;
  *(a1 + 72) = v25;
  *(a1 + 40) = v23;
  v26 = *&v1[OBJC_IVAR____TtC12GameCenterUI38AchievementHighlightCollectionViewCell_subtitle];
  *(a1 + 104) = v24;
  *(a1 + 112) = v25;
  *(a1 + 80) = v26;
  v27 = v20;
  v28 = v23;
  v29 = v26;
  result = sub_24E193EA4(v31);
  *(a1 + 120) = v19 & 1;
  return result;
}

Swift::Void __swiftcall AchievementHighlightCollectionViewCell.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_1_13();
  v4 = v3;
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_layoutSubviews, v6);
  sub_24E193380(v10);
  [v1 bounds];
  AchievementHighlightLayout.placeChildren(relativeTo:in:)(v1, v8);
  sub_24E193C40(v10);
  (*(v4 + 8))(v8);
}

id static AchievementHighlightCollectionViewCell.layoutItem(forContentsOf:at:asPartOf:in:scrollDirection:pageGrid:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = [v7 estimatedDimension_];
  if (a5)
  {
    type metadata accessor for PageGrid();
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
    v9 = [a4 traitCollection];
    v10 = PageGrid.__allocating_init(size:traitCollection:)();
  }

  else
  {
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
    v11 = [a4 traitCollection];
    GKIsXRUIIdiomShouldUsePadUI();
    v12 = objc_allocWithZone(type metadata accessor for PageGrid());
    v10 = PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(v11);
  }

  v13 = v10;
  v14 = [v7 estimatedDimension_];
  v15 = [objc_opt_self() sizeWithWidthDimension:v14 heightDimension:v8];

  v16 = [objc_opt_self() itemWithLayoutSize_];
  return v16;
}

id AchievementHighlightCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E193BDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 _setGroupName_];
}

uint64_t sub_24E193D2C(uint64_t a1, uint64_t a2)
{
  result = sub_24E193E00(&qword_27F1DEF90, a2, type metadata accessor for AchievementHighlightCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E193DA8(uint64_t a1, uint64_t a2)
{
  result = sub_24E193E00(&qword_27F1E6620, a2, type metadata accessor for AchievementHighlightCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E193E00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_130()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_85()
{

  return sub_24E347128();
}

uint64_t static ItemWithReleaseState.infoBox(releaseStateIcon:backgroundColor:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  *a3 = sub_24E346E28();
  a3[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E07C0);
  return sub_24E193FB0(a2, v5, v6, v7, v8, a3 + *(v10 + 44));
}

uint64_t sub_24E193FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35[2] = a4;
  v35[3] = a5;
  v35[0] = a2;
  v35[1] = a3;
  v36 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6630);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6638);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  v20 = *(sub_24E3457C8() + 20);
  v21 = *MEMORY[0x277CE0118];
  sub_24E345C68();
  OUTLINED_FUNCTION_5_2();
  (*(v22 + 104))(&v10[v20], v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v10 = _Q0;
  v43[0] = a1;
  sub_24E1950BC();

  *&v10[*(v8 + 60)] = sub_24E346A28();
  *&v10[*(v8 + 64)] = 256;
  sub_24E346E28();
  sub_24E3457F8();
  sub_24DFB4B20(v10, v16, &qword_27F1E6630);
  memcpy(&v16[*(v12 + 44)], __src, 0x70uLL);
  sub_24DFB4B20(v16, v19, &qword_27F1E6638);
  v28 = sub_24E345BE8();
  v39 = 1;
  sub_24E194410(v43);
  memcpy(v40, v43, 0xB9uLL);
  memcpy(v41, v43, 0xB9uLL);
  sub_24DFAE87C(v40, v42, &qword_27F1E6648);
  sub_24DF8BFF4(v41, &qword_27F1E6648);
  memcpy(&v38[7], v40, 0xB9uLL);
  LOBYTE(v20) = v39;
  KeyPath = swift_getKeyPath();
  LOBYTE(v12) = sub_24E3461E8();
  LOBYTE(v43[0]) = 1;
  v30 = v37;
  sub_24DFAE87C(v19, v37, &qword_27F1E6638);
  v31 = v30;
  v32 = v36;
  sub_24DFAE87C(v31, v36, &qword_27F1E6638);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6650) + 48);
  v42[0] = v28;
  v42[1] = 0;
  LOBYTE(v42[2]) = v20;
  memcpy(&v42[2] + 1, v38, 0xC0uLL);
  v42[27] = KeyPath;
  LOBYTE(v42[28]) = 0;
  LOBYTE(v42[29]) = v12;
  memset(&v42[30], 0, 32);
  LOBYTE(v42[34]) = 1;
  memcpy((v32 + v33), v42, 0x111uLL);
  sub_24DFAE87C(v42, v43, &qword_27F1E6658);
  sub_24DF8BFF4(v19, &qword_27F1E6638);
  v43[0] = v28;
  v43[1] = 0;
  LOBYTE(v43[2]) = v20;
  memcpy(&v43[2] + 1, v38, 0xC0uLL);
  v43[27] = KeyPath;
  v44 = 0;
  v45 = v12;
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  sub_24DF8BFF4(v43, &qword_27F1E6658);
  return sub_24DF8BFF4(v37, &qword_27F1E6638);
}

uint64_t sub_24E194410@<X0>(uint64_t a1@<X8>)
{

  v2 = sub_24E346A58();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.6 alpha:1.0];
  v3 = sub_24E346948();
  v4 = sub_24E345D08();
  v6[0] = 1;
  sub_24E1945D8(__src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v9, __src, 0x81uLL);
  sub_24DFAE87C(__dst, v10, &qword_27F1E6660);
  sub_24DF8BFF4(v9, &qword_27F1E6660);
  memcpy(&v7[7], __dst, 0x81uLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v7, 0x88uLL);
  v6[160] = 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  memcpy((a1 + 16), v10, 0x99uLL);
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v7, 0x88uLL);

  sub_24DFAE87C(v10, v6, &qword_27F1E6668);
  sub_24DF8BFF4(__src, &qword_27F1E6668);
}

uint64_t sub_24E1945D8@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E343658();
  sub_24DF90C4C();
  v2 = sub_24E3464E8();
  v4 = v3;
  v6 = v5;
  v31 = sub_24E346498();
  v29 = v7;
  v9 = v8;
  v11 = v10;
  sub_24DFA92EC(v2, v4, v6 & 1);

  v30 = sub_24E346208();
  sub_24E3451B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v2) = v9 & 1;
  LOBYTE(v36[0]) = 0;
  sub_24E343748();
  v20 = sub_24E3464E8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  __src[0] = v31;
  __src[1] = v29;
  LOBYTE(__src[2]) = v2;
  *(&__src[2] + 1) = *v33;
  HIDWORD(__src[2]) = *&v33[3];
  __src[3] = v11;
  LOBYTE(__src[4]) = v30;
  *(&__src[4] + 1) = *v32;
  HIDWORD(__src[4]) = *&v32[3];
  __src[5] = v13;
  __src[6] = v15;
  __src[7] = v17;
  __src[8] = v19;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(a1, __dst, 0x50uLL);
  *(a1 + 80) = v20;
  *(a1 + 88) = v22;
  *(a1 + 96) = v24 & 1;
  *(a1 + 104) = v26;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_24DFAE87C(__src, v36, &qword_27F1DF880);
  sub_24DF82DD4(v20, v22, v24 & 1);

  sub_24DFA92EC(v20, v22, v24 & 1);

  v36[0] = v31;
  v36[1] = v29;
  v37 = v2;
  *v38 = *v33;
  *&v38[3] = *&v33[3];
  v39 = v11;
  v40 = v30;
  *v41 = *v32;
  *&v41[3] = *&v32[3];
  v42 = v13;
  v43 = v15;
  v44 = v17;
  v45 = v19;
  v46 = 0;
  return sub_24DF8BFF4(v36, &qword_27F1DF880);
}

id static ItemWithReleaseState.titleText(title:accessibilityDescription:systemSymbolName:tooltipText:paragraphStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  if (a9)
  {

    v13 = a9;
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277D74240]);

    v13 = [v14 init];
  }

  type metadata accessor for ItemWithReleaseState();
  v15 = a9;
  v18 = static ItemWithReleaseState.titleText(title:accessibilityDescription:releaseStateIcon:paragraphStyle:)(a1, a2, v16, v17, &v20, v13);

  sub_24E151BF4(a5, a6);
  return v18;
}

id static ItemWithReleaseState.titleText(title:accessibilityDescription:releaseStateIcon:paragraphStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(a5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  v11 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v12 = sub_24DF88A8C(0, &qword_27F1E5BD0);
  *(inited + 64) = v12;
  *(inited + 40) = a6;
  type metadata accessor for Key(0);
  sub_24DFEA7B4();

  v13 = v11;
  v14 = a1;
  v39 = v13;
  v40 = a6;
  v15 = sub_24E347C28();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_24E194F20(a1, a2, v15);
  if (v9)
  {
    sub_24DF88A8C(0, &qword_280BE0110);

    v18 = sub_24DFD29F8();
    v19 = [objc_opt_self() preferredFontForTextStyle_];
    [v19 pointSize];
    v21 = v20;

    if (v18)
    {
      v22 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      v23 = [objc_opt_self() whiteColor];
      v38 = v18;
      v24 = [v18 imageWithTintColor_];

      v25 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v21];
      v26 = [v24 imageWithSymbolConfiguration_];

      [v22 setImage_];
      sub_24DF88A8C(0, &qword_27F1E2410);
      v27 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
      v28 = *MEMORY[0x277D74078];
      v29 = v27;
      v30 = sub_24E348178();
      [v29 addAttribute:v28 value:v30 range:{0, 1}];

      MEMORY[0x25303E950](v14, a2);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_24E367D20;
      *(v31 + 64) = v12;
      *(v31 + 32) = v39;
      *(v31 + 40) = v40;
      v32 = v39;
      v33 = v40;
      v34 = sub_24E347C28();
      v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v36 = sub_24E194F20(32, 0xE100000000000000, v34);
      [v29 appendAttributedString_];

      return v29;
    }
  }

  return v17;
}

id ItemWithReleaseState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ItemWithReleaseState.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItemWithReleaseState();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ItemWithReleaseState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItemWithReleaseState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E194F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24E347CB8();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_24DFEA7B4();
    v6 = sub_24E347BE8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t sub_24E194FC8(uint64_t a1, int a2)
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

uint64_t sub_24E195008(uint64_t result, int a2, int a3)
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

unint64_t sub_24E195058()
{
  result = qword_27F1E6628;
  if (!qword_27F1E6628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6628);
  }

  return result;
}

unint64_t sub_24E1950BC()
{
  result = qword_27F1E6640;
  if (!qword_27F1E6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6640);
  }

  return result;
}

id sub_24E195110(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for ContinuePlayingData();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  [objc_msgSend(a3 container)];
  swift_unknownObjectRelease();
  type metadata accessor for ContinuePlayingEmbeddedView();
  sub_24DF96A84(v7);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension_];
  v12 = [v10 fractionalHeightDimension_];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize_];
  v16 = [v10 fractionalWidthDimension_];
  v17 = [v10 estimatedDimension_];
  v18 = [v13 sizeWithWidthDimension:v16 heightDimension:v17];

  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24E369990;
  *(v20 + 32) = v15;
  sub_24E1698C0();
  v21 = v15;
  v22 = sub_24E347EE8();

  v23 = [v19 horizontalGroupWithLayoutSize:v18 subitems:v22];

  v24 = [objc_opt_self() sectionWithGroup_];
  sub_24E195B90(v7, type metadata accessor for ContinuePlayingData);
  return v24;
}

double sub_24E195494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24E120A58(a2, &v10 - v7);
  sub_24E120A58(a3, &v8[*(v6 + 56)]);
  sub_24E120AC8(v8);
  return 0.0;
}

double sub_24E19553C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  sub_24E120A58(a2, &v21 - v14);
  sub_24E120A58(a3, &v15[*(v13 + 56)]);
  if (qword_27F1DDC38 != -1)
  {
    swift_once();
  }

  v16 = sub_24E3444F8();
  __swift_project_value_buffer(v16, qword_27F20B4B8);
  v17 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v19 = v18;

  (*(v8 + 8))(v11, v7);
  sub_24E120AC8(v15);
  return v19;
}

double sub_24E19570C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Shelf.Presentation(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  sub_24E120A58(a1, &v21 - v13);
  sub_24E120A58(a2, &v14[*(v12 + 56)]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v15 = *(v10 + *(v7 + 40));
  sub_24E195B90(v10, type metadata accessor for Shelf.Presentation);
  if (v15 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for PlayerCardTheme();
    v17 = *(__swift_project_value_buffer(v16, qword_27F20BF00) + 64);
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v17 = 0;
    v19 = 3;
  }

  sub_24E120AC8(v14);
  *a3 = v17;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 48) = v19;
  *(a3 + 56) = -1;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  return result;
}

uint64_t type metadata accessor for ContinuePlayingCollectionViewCell()
{
  result = qword_27F1E6670;
  if (!qword_27F1E6670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E195A08(uint64_t a1)
{
  result = sub_24E195B48(&qword_27F1E6680, type metadata accessor for ContinuePlayingCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E195AF0(uint64_t a1)
{
  result = sub_24E195B48(&qword_27F1E6480, type metadata accessor for ContinuePlayingCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E195B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E195B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_24E195BF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E135560(&qword_27F1E0E80, &qword_27F1E96D0);
  sub_24E135560(&qword_27F1E0E88, &unk_27F1E1C00);
  sub_24E344B98();
  *(v2 + OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView) = 0;
  v5 = OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_onApplySecondarySnapshot;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70);
  swift_allocObject();
  *(v2 + v5) = sub_24E346F88();

  return sub_24E287888(a1, a2);
}

uint64_t sub_24E195D1C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_secondarySnapshot;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
}

id sub_24E195D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseSplitPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BaseSplitPresenter()
{
  result = qword_27F1E6688;
  if (!qword_27F1E6688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E195E9C()
{
  sub_24E0239BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24E195F44(uint64_t a1)
{
  result = sub_24E195F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E195F6C()
{
  result = qword_27F1E6698;
  if (!qword_27F1E6698)
  {
    type metadata accessor for BaseSplitPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6698);
  }

  return result;
}

void sub_24E195FC4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI23CircularProgressBarView_circleLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI23CircularProgressBarView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI23CircularProgressBarView_startPoint) = 0xBFF921FB54442D18;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI23CircularProgressBarView_endPoint) = 0x4012D97C7F3321D2;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E1960FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FriendWhoHasEarnedThisAchievementViewModel.hash(into:)()
{
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_131();
  sub_24E196364(v0, v1);

  return sub_24E347C58();
}

uint64_t FriendWhoHasEarnedThisAchievementViewModel.hashValue.getter()
{
  sub_24E348D18();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_131();
  sub_24E196364(v0, v1);
  sub_24E347C58();
  return sub_24E348D68();
}

uint64_t sub_24E196298()
{
  sub_24E348D18();
  sub_24E3433A8();
  sub_24E196364(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E347C58();
  return sub_24E348D68();
}

uint64_t sub_24E196364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel()
{
  result = qword_27F1E66D0;
  if (!qword_27F1E66D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E196424()
{
  sub_24E3433A8();
  if (v0 <= 0x3F)
  {
    sub_24E0ADC44();
    if (v1 <= 0x3F)
    {
      sub_24DFA1058();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

Swift::String __swiftcall Date._gkRelativeTimeAgoString()()
{
  v0 = sub_24E343368();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343358();
  sub_24E3432C8();
  v5 = v4;
  v6 = v4;
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  v8(v3, v0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v9 = v5;
  if (v5 < 2592000)
  {
    if (v9 < 604800)
    {
      if (v9 < 86400)
      {
        if (v9 < 3600)
        {
          if (v9 < 60)
          {
            if (qword_27F1DD968 != -1)
            {
              OUTLINED_FUNCTION_1_102();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
            v10 = swift_allocObject();
            *(v10 + 16) = xmmword_24E367D20;
            v11 = MEMORY[0x277D83C10];
            *(v10 + 56) = MEMORY[0x277D83B88];
            *(v10 + 64) = v11;
            *(v10 + 32) = 1;
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_0_132();
          if (v22 || v33)
          {
            __break(1u);
          }

          else if (v35 > v34)
          {
            OUTLINED_FUNCTION_2_82();
            if (!v24)
            {
              goto LABEL_60;
            }

            v7 = v36;
            if (qword_27F1DD968 != -1)
            {
LABEL_61:
              OUTLINED_FUNCTION_1_102();
            }

LABEL_40:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
            v37 = swift_allocObject();
            v38 = MEMORY[0x277D83B88];
            *(v37 + 16) = xmmword_24E367D20;
            v39 = MEMORY[0x277D83C10];
            *(v37 + 56) = v38;
            *(v37 + 64) = v39;
            *(v37 + 32) = v7;
LABEL_41:
            v16 = sub_24E347CC8();
            v18 = v40;

            goto LABEL_42;
          }

          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_0_132();
        if (v22 || v29)
        {
          __break(1u);
        }

        else if (v31 > v30)
        {
          OUTLINED_FUNCTION_2_82();
          if (v24)
          {
            v7 = v32;
            if (qword_27F1DD960 == -1)
            {
              goto LABEL_40;
            }

            goto LABEL_57;
          }

          goto LABEL_56;
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        swift_once();
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_132();
      if (v22 || v25)
      {
        __break(1u);
      }

      else if (v27 > v26)
      {
        OUTLINED_FUNCTION_2_82();
        if (v24)
        {
          v7 = v28;
          if (qword_27F1DD958 == -1)
          {
            goto LABEL_40;
          }

          goto LABEL_57;
        }

        goto LABEL_52;
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_0_132();
    if (!v22 && !v19)
    {
      if (v21 > v20)
      {
        OUTLINED_FUNCTION_2_82();
        if (v24)
        {
          v7 = v23;
          if (qword_27F1DD950 == -1)
          {
            goto LABEL_40;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_57;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = sub_24E347CB8();
  [v12 setLocalizedDateFormatFromTemplate_];

  v14 = sub_24E3432E8();
  v15 = [v12 stringFromDate_];

  v16 = sub_24E347CF8();
  v18 = v17;

LABEL_42:
  v47[4] = v16;
  v47[5] = v18;
  v47[2] = 32;
  v47[3] = 0xE100000000000000;
  v47[0] = 41154;
  v47[1] = 0xA200000000000000;
  sub_24DF90C4C();
  v41 = sub_24E348738();
  v43 = v42;

  v44 = v41;
  v45 = v43;
  result._object = v45;
  result._countAndFlagsBits = v44;
  return result;
}

void sub_24E1969F8()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F1E66E0 = v3;
  *algn_27F1E66E8 = v5;
}

void sub_24E196A90()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F1E66F0 = v3;
  *algn_27F1E66F8 = v5;
}

void sub_24E196B28()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F1E6700 = v3;
  *algn_27F1E6708 = v5;
}

void sub_24E196BC0()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F1E6710 = v3;
  *algn_27F1E6718 = v5;
}

uint64_t OUTLINED_FUNCTION_1_102()
{

  return swift_once();
}

void *ProfileHeaderData.avatarImage.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ProfileHeaderData.avatarTapHandler.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  sub_24DF88BEC(v0);
  return OUTLINED_FUNCTION_19_1();
}

uint64_t type metadata accessor for ProfileHeaderData()
{
  result = qword_27F1E6730;
  if (!qword_27F1E6730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProfileHeaderData.useHorizontalLayout.setter(char a1)
{
  result = type metadata accessor for ProfileHeaderData();
  *(v1 + *(result + 84)) = a1;
  return result;
}

__n128 ProfileHeaderData.init(id:playerHandle:subtitle:emphasizedSubtitleSegments:artwork:avatarImage:canEditAvatarImage:avatarTapHandler:buttonTitle:useHorizontalLayout:isLocalPlayer:isArcadeSubscriber:showFriendStatus:infoBarData:reportFriendAction:removeFriendAction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = type metadata accessor for ProfileHeaderData();
  v24 = a9 + v23[19];
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v23[20];
  v26 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(a9 + v25, 1, 1, v26);
  v27 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v27;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 120) = a12;
  *(a9 + 128) = a13;
  *(a9 + 136) = a15;
  *(a9 + 137) = a16;
  *(a9 + 138) = a17;
  sub_24E197254(a18, a9 + v23[16]);
  v28 = a9 + v23[18];
  v29 = *(a19 + 16);
  *v28 = *a19;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a19 + 32);
  v30 = a9 + v23[17];
  result = *a20;
  v32 = *(a20 + 16);
  *v30 = *a20;
  *(v30 + 16) = v32;
  *(v30 + 32) = *(a20 + 32);
  *(a9 + v23[21]) = a14;
  return result;
}

uint64_t sub_24E197254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E1972C8()
{
  result = qword_27F1E6728;
  if (!qword_27F1E6728)
  {
    type metadata accessor for ProfileHeaderData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6728);
  }

  return result;
}

uint64_t sub_24E197358()
{
  sub_24E0ADC44();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_24DFC2AD4(319, &qword_27F1E6740, &qword_27F1E6748);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_24E197584(319, &qword_27F1E5D70, type metadata accessor for Artwork);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_24E197584(319, &qword_280BE0108, sub_24DFC2C38);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_24DFC2AD4(319, &qword_280BE0100, &qword_27F1DF2F8);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_24E197584(319, &qword_27F1E6750, type metadata accessor for PlayerProfileInfoBarData);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          sub_24E197584(319, &qword_280BE0650, MEMORY[0x277D21F70]);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_24E197584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_103()
{

  return type metadata accessor for ProfileHeaderData();
}

uint64_t OUTLINED_FUNCTION_2_83@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_24DFC24D4(v3 + a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_3_86()
{

  return type metadata accessor for ProfileHeaderData();
}

id sub_24E197660()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEC298]) init];
  [v1 setDelegate_];
  swift_unknownObjectRelease();
  [v1 setRequest_];
  [v1 setShowsPlaceholderContent_];
  v2 = sub_24E0CA3A0();
  [v1 setOfferTheme_];

  return v1;
}

uint64_t sub_24E197730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E197820();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E197794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E197820();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E1977F8()
{
  sub_24E197820();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E197820()
{
  result = qword_27F1E6758;
  if (!qword_27F1E6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6758);
  }

  return result;
}

void RoundedCorners.init(radius:)(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a2;
}

void RoundedCorners.init(left:right:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a3;
}

double RoundedCorners.path(in:)@<D0>(uint64_t a1@<X8>)
{
  sub_24E346428();
  sub_24E3463F8();
  sub_24E346418();
  OUTLINED_FUNCTION_0_133();
  sub_24E346408();
  sub_24E346418();
  OUTLINED_FUNCTION_0_133();
  sub_24E346408();
  sub_24E346418();
  OUTLINED_FUNCTION_0_133();
  sub_24E346408();
  sub_24E346418();
  OUTLINED_FUNCTION_0_133();
  sub_24E346408();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_24E197A48()
{
  result = qword_27F1E6760;
  if (!qword_27F1E6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6760);
  }

  return result;
}

unint64_t sub_24E197AA0()
{
  result = qword_27F1E6768;
  if (!qword_27F1E6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6768);
  }

  return result;
}

double sub_24E197AF4@<D0>(uint64_t a1@<X8>)
{
  RoundedCorners.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_24E197B54()
{
  result = qword_27F1E6770;
  if (!qword_27F1E6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6770);
  }

  return result;
}

uint64_t sub_24E197BA8(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  a3.n128_u64[0] = *v4;
  a4.n128_u64[0] = v4[1];
  return CGSizeMake(a1, a2, a3, a4);
}

uint64_t (*sub_24E197BB4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_24E345158();
  return sub_24E197C28;
}

uint64_t sub_24E197C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E197D80();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24E197CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E197D80();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24E197D24(uint64_t a1)
{
  v2 = sub_24E197D80();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24E197D80()
{
  result = qword_27F1E6788;
  if (!qword_27F1E6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpecializedRoundedRectangle(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for SpecializedRoundedRectangle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24E197EA0(unint64_t *a1, uint64_t *a2)
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

double sub_24E197EF4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_24E346438();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_24E197FF4(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_24E346408();
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  CGRectGetWidth(v10);
  sub_24E346418();
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetWidth(v11);
  sub_24E346408();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetWidth(v12);
  sub_24E346418();
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetWidth(v13);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_24E346408();
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_24E346418();
  return sub_24E3463E8();
}

double sub_24E198170@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24E197EF4(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_24E1981C8(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_24E345158();
  return sub_24E1984B4;
}

void sub_24E19823C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24E198284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E198458();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24E1982E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E198458();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24E19834C(uint64_t a1)
{
  v2 = sub_24E198458();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24E19839C()
{
  result = qword_27F1E67A0;
  if (!qword_27F1E67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E67A0);
  }

  return result;
}

unint64_t sub_24E1983F4()
{
  result = qword_27F1E67A8;
  if (!qword_27F1E67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E67A8);
  }

  return result;
}

unint64_t sub_24E198458()
{
  result = qword_27F1E67B0;
  if (!qword_27F1E67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E67B0);
  }

  return result;
}

uint64_t sub_24E1984C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = 0;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  sub_24E348918();
  *(v7 + 16) = v16;
  *(v7 + 32) = v17;
  *(v7 + 48) = v18;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v13 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderData_impressionMetrics;
  v14 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v7 + v13, 1, 1, v14);
  return v7;
}

uint64_t sub_24E198580()
{
  sub_24DF8BE60(v0 + 16);

  sub_24DF8C95C(v0 + 96, &qword_27F1DEE90);
  sub_24DF8C95C(v0 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedHeaderData_impressionMetrics, &qword_27F1E58A0);
  return v0;
}

uint64_t sub_24E1985E8()
{
  sub_24E198580();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActivityFeedHeaderData()
{
  result = qword_27F1E67B8;
  if (!qword_27F1E67B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E198694()
{
  sub_24DF9E0E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24E1987D0()
{
  result = qword_27F1E67C8[0];
  if (!qword_27F1E67C8[0])
  {
    type metadata accessor for ActivityFeedHeaderData();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1E67C8);
  }

  return result;
}

uint64_t sub_24E198864@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = result;
  v7 = *(a2 + 16);
  v8 = (a2 + 80);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *(v8 - 4);
      v13 = *(v8 - 3);
      v14 = *(v8 - 5);
      *&v19 = *(v8 - 6);
      *(&v19 + 1) = v14;
      *&v20 = v12;
      *(&v20 + 1) = v13;
      v21 = v10;
      v22 = v11;
      v23 = v9;

      result = v5(&v19);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 14;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *a3 = v19;
    *(a3 + 16) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
    *(a3 + 48) = v18;
  }

  else
  {
LABEL_5:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_24E198990@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5, v7);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

void sub_24E198B54()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_7_45();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_62();
  v11 = OBJC_IVAR____TtC12GameCenterUI27AchievementsByGamePresenter_snapshot;
  OUTLINED_FUNCTION_2_84();
  v12 = *(v8 + 16);
  v12(v1, v5 + v11, v6);
  sub_24E07D788();
  v13 = OUTLINED_FUNCTION_3_42();
  (v12)(v13);
  OUTLINED_FUNCTION_3_87();
  (*(v8 + 40))(v5 + v11, v0, v6);
  swift_endAccess();
  v12(v0, v5 + v11, v6);

  sub_24E346F78();

  v14 = *(v8 + 8);
  v14(v0, v6);
  v14(v1, v6);

  OUTLINED_FUNCTION_18();
}

void sub_24E198D4C()
{
  OUTLINED_FUNCTION_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  OUTLINED_FUNCTION_2_84();
  v11 = OUTLINED_FUNCTION_9_43();
  v0(v11);
  (v0)(v7, v10, v1);
  OUTLINED_FUNCTION_3_87();
  v12 = OUTLINED_FUNCTION_8_54();
  v13(v12);
  swift_endAccess();
  v14 = OUTLINED_FUNCTION_11_33();
  v0(v14);

  sub_24E346F78();

  v15 = *(v3 + 8);
  v15(v7, v1);
  v15(v10, v1);

  OUTLINED_FUNCTION_18();
}

void sub_24E198EF4()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_7_45();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_62();
  v11 = *v3;
  OUTLINED_FUNCTION_2_84();
  v12 = *(v8 + 16);
  v12(v1, v5 + v11, v6);
  sub_24E344B28();
  v13 = OUTLINED_FUNCTION_3_42();
  (v12)(v13);
  OUTLINED_FUNCTION_3_87();
  (*(v8 + 40))(v5 + v11, v0, v6);
  swift_endAccess();
  v12(v0, v5 + v11, v6);

  sub_24E346F78();

  v14 = *(v8 + 8);
  v14(v0, v6);
  v14(v1, v6);
  OUTLINED_FUNCTION_18();
}

void sub_24E1990A8()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  OUTLINED_FUNCTION_2_84();
  v13 = OUTLINED_FUNCTION_9_43();
  v0(v13);
  sub_24E1997C8(v12, v2);
  (v0)(v9, v12, v3);
  OUTLINED_FUNCTION_3_87();
  v14 = OUTLINED_FUNCTION_8_54();
  v15(v14);
  swift_endAccess();
  v16 = OUTLINED_FUNCTION_11_33();
  v0(v16);

  sub_24E346F78();

  v17 = *(v5 + 8);
  v17(v9, v3);
  v17(v12, v3);

  OUTLINED_FUNCTION_18();
}

void sub_24E19925C()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_7_45();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_62();
  v11 = *v3;
  OUTLINED_FUNCTION_2_84();
  v12 = *(v8 + 16);
  v12(v1, v5 + v11, v6);
  sub_24E344B88();
  sub_24E344B48();

  v13 = OUTLINED_FUNCTION_3_42();
  (v12)(v13);
  OUTLINED_FUNCTION_3_87();
  (*(v8 + 40))(v5 + v11, v0, v6);
  swift_endAccess();
  v12(v0, v5 + v11, v6);

  sub_24E346F78();

  v14 = *(v8 + 8);
  v14(v0, v6);
  v14(v1, v6);
  OUTLINED_FUNCTION_18();
}

void sub_24E199414()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v19[2] = v5;
  v20 = v4;
  v19[1] = *(v0 + 8);
  swift_getAssociatedTypeWitness();
  v6 = sub_24E347188();
  swift_getAssociatedTypeWitness();
  v21 = v6;
  v22 = sub_24E347188();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v7 = sub_24E344BA8();
  v19[0] = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v16 = *(v1 + 16);
  v16(v3, v1, v13);
  v20(v15);
  (*(v8 + 16))(v11, v15, v7);
  (*(v1 + 24))(v11, v3, v1);
  sub_24E344708();
  (v16)(v3, v1);
  sub_24E346F78();

  v17 = *(v8 + 8);
  v18 = v19[0];
  v17(v11, v19[0]);
  v17(v15, v18);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E1996C0()
{
  swift_getAssociatedTypeWitness();
  sub_24E347188();
  swift_getAssociatedTypeWitness();
  sub_24E347188();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E344BA8();
  sub_24E344B88();
  sub_24E344B48();
}

uint64_t sub_24E1997C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = v23 - v9;
  v29 = type metadata accessor for Shelf(0);
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  result = sub_24E344B28();
  v27 = *(a2 + 16);
  if (v27)
  {
    v14 = 0;
    v26 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    v24 = xmmword_24E367D20;
    v23[1] = a1;
    v23[0] = v12;
    do
    {
      v32 = v14;
      v15 = v26 + v25 * v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0ED0);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
      *(swift_allocObject() + 16) = v24;
      sub_24E19A2E0(v15, v28);
      sub_24E19A344();
      sub_24E347178();
      sub_24E344B18();

      v16 = *(v15 + 48);
      v17 = *(v16 + 16);
      if (v17)
      {
        v35 = MEMORY[0x277D84F90];
        sub_24E12F7F8(0, v17, 0);
        v18 = v35;
        v19 = v16 + 32;
        do
        {
          sub_24DF89628(v19, v34);
          sub_24DF89628(v34, v33);
          sub_24E347168();
          __swift_destroy_boxed_opaque_existential_1(v34);
          v35 = v18;
          v21 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_24E12F7F8(v20 > 1, v21 + 1, 1);
            v18 = v35;
          }

          *(v18 + 16) = v21 + 1;
          (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
          v19 += 40;
          --v17;
        }

        while (v17);
      }

      v14 = v32 + 1;
      v22 = v30;
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
      sub_24E344AD8();

      result = sub_24E19A39C(v22);
    }

    while (v14 != v27);
  }

  return result;
}

void sub_24E199BE8()
{
  OUTLINED_FUNCTION_32();
  v37 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_12_1();
  v36 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v38 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  v21 = v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  v23 = sub_24E344B88();
  v39 = v2;
  sub_24E198990(sub_24E19A404, v23, v16);

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_24E19A39C(v16);
  }

  else
  {
    v24 = v21;
    (*(v38 + 32))(v21, v16, v17);
    sub_24E344B58();
    sub_24E344AE8();

    v25 = v38;
    v26 = *(v37 + 16);
    if (v26)
    {
      v32[1] = v22;
      v33 = v24;
      v34 = v17;
      v35 = v4;
      v42 = MEMORY[0x277D84F90];
      sub_24E12F7F8(0, v26, 0);
      v27 = v42;
      v28 = v37 + 32;
      do
      {
        sub_24DF89628(v28, v41);
        sub_24DF89628(v41, &v40);
        sub_24E347168();
        __swift_destroy_boxed_opaque_existential_1(v41);
        v42 = v27;
        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_24E12F7F8(v29 > 1, v30 + 1, 1);
          v27 = v42;
        }

        *(v27 + 16) = v30 + 1;
        (*(v7 + 32))(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v10, v5);
        v28 += 40;
        --v26;
      }

      while (v26);
      v31 = v36;
      v24 = v33;
      v17 = v34;
      v25 = v38;
    }

    else
    {
      v31 = v36;
    }

    (*(v25 + 16))(v31, v24, v17);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v17);
    sub_24E344AD8();

    sub_24E19A39C(v31);
    (*(v25 + 8))(v24, v17);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E19A004()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  v16 = sub_24E344B88();
  v21[2] = v5;
  sub_24E198990(v3, v16, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24E19A39C(v8);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_3_42();
    v18(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0ED0);
    v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24E367D20;
    (*(v11 + 16))(v20 + v19, v14, v9);
    v1(v20, v15);

    (*(v11 + 8))(v14, v9);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E19A214(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Shelf(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347148();
  sub_24DF8BD34(v5, v9);
  sub_24E19A424(v5);
  v6 = MEMORY[0x25303F450](v9, a2);
  sub_24DF8BE60(v9);
  return v6 & 1;
}

uint64_t sub_24E19A2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E19A344()
{
  result = qword_27F1E0EC8;
  if (!qword_27F1E0EC8)
  {
    type metadata accessor for Shelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0EC8);
  }

  return result;
}

uint64_t sub_24E19A39C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E19A424(uint64_t a1)
{
  v2 = type metadata accessor for Shelf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_84()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_87()
{

  return swift_beginAccess();
}

uint64_t sub_24E19A540(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v4 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  memcpy(v38, __src, sizeof(v38));
  if (sub_24DF8BF80(v38) == 1)
  {
    return 0;
  }

  v18 = v38[3];
  if (v38[3] >> 62)
  {
    if (sub_24E348878())
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*((v38[3] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_4:
  v34 = v13;
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v33 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v20 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v20;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  memcpy(v37, __dst, sizeof(v37));
  sub_24DF8BF98(v37, &v36);
  v21 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v22 = sub_24E347058();
  v23 = __swift_project_value_buffer(v22, qword_27F20AE00);
  MEMORY[0x25303DB90](0x7250646E65697266, 0xED0000656C69666FLL, 0x6E6F74747562, 0xE600000000000000, v21, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  (*(v6 + 16))(v25 + v24, v10, v4);
  sub_24E347448();
  sub_24E3471D8();
  (*(v6 + 8))(v10, v4);

  v26 = sub_24E2A1598(10, v18);
  MEMORY[0x28223BE20](v26);
  *(&v33 - 2) = v17;
  sub_24E3106BC(sub_24E19B428, (&v33 - 2), v26, v27, v28, v29);
  swift_unknownObjectRelease();
  sub_24E0793F0();
  v31 = v30;
  sub_24DF8BFF4(__src, &qword_27F1DEEA0);

  (*(v34 + 8))(v17, v35);
  return v31;
}

uint64_t sub_24E19A98C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v5 = sub_24E3433A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v33 = *a1;
  v11 = v33;
  v12 = [v11 displayNameWithOptions_];
  v13 = sub_24E347CF8();
  v31 = v14;
  v32 = v13;

  v15 = [v11 playerID];
  v16 = sub_24E347CF8();
  v18 = v17;

  v19 = type metadata accessor for PlayerProfileAction();
  v34[3] = v19;
  v34[4] = sub_24E19B448(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v21 = *(v19 + 24);
  v22 = sub_24E347208();
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1 + v21, v30, v22);
  *boxed_opaque_existential_1 = v16;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + 16) = 1;
  *(boxed_opaque_existential_1 + *(v19 + 28)) = 0;
  sub_24E343398();
  (*(v6 + 16))(v29, v10, v5);
  sub_24E19B448(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v6 + 8))(v10, v5);
  v23 = type metadata accessor for LargePlayerLockupData();
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 96) = 0u;
  v24 = *(v23 + 44);
  v25 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(a3 + v24, 1, 1, v25);
  v26 = v32;
  *(a3 + 40) = v33;
  *(a3 + 48) = 0;
  v27 = v31;
  *(a3 + 56) = v26;
  *(a3 + 64) = v27;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return sub_24DFB8804(v34, a3 + 96, &qword_27F1DEE90);
}

uint64_t sub_24E19AC8C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v1 = sub_24E347458();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v78 = v4 - v3;
  v5 = sub_24E347478();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v76 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  v77 = &v69 - v11;
  v12 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v74 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  v19 = OUTLINED_FUNCTION_4_5(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  v71 = &v69 - v20;
  v22 = type metadata accessor for TitleHeaderView.Style(0);
  v23 = OUTLINED_FUNCTION_4_5(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v26 = (v25 - v24);
  v80 = v25 - v24;
  v27 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_1();
  v31 = v30 - v29;
  sub_24E0AC29C(v26);
  v32 = sub_24E347CB8();
  v33 = GKGameCenterUIFrameworkBundle();
  v34 = GKGetLocalizedStringFromTableInBundle();

  v70 = sub_24E347CF8();
  v79 = v35;

  memset(v87, 0, sizeof(v87));
  v88 = -1;
  memset(v85, 0, sizeof(v85));
  v86 = -1;
  v36 = sub_24E3444F8();
  memset(v83, 0, sizeof(v83));
  v84 = 0;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v36);
  sub_24E343398();
  v37 = sub_24E343378();
  v39 = v38;
  (*(v74 + 8))(v17, v12);
  v40 = v31 + v27[7];
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 64) = -1;
  v41 = v31 + v27[9];
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0u;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 64) = -1;
  v42 = (v31 + v27[10]);
  v43 = v31 + v27[11];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  v44 = v27[13];
  v69 = v27[12];
  v45 = v31 + v44;
  *(v45 + 32) = 0;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  v46 = v27[14];
  v74 = v46;
  v73 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v31 + v46, 1, 1, v73);
  v81 = v37;
  v82 = v39;
  v47 = MEMORY[0x277D837D0];
  sub_24E348918();
  v48 = v27[5];
  v72 = type metadata accessor for TitleHeaderView.Style;
  sub_24DFAE760(v80, v31 + v48, type metadata accessor for TitleHeaderView.Style);
  v49 = (v31 + v27[6]);
  v50 = v70;
  v51 = v79;
  *v49 = v70;
  v49[1] = v51;

  sub_24DFAE710(v87, v40, &qword_27F1DEE88);
  v52 = (v31 + v27[8]);
  *v52 = 0;
  v52[1] = 0;
  sub_24DFAE710(v85, v41, &qword_27F1DEE88);
  *(v31 + v69) = 0;
  *v42 = 0;
  v42[1] = 0;
  sub_24DFAE710(v83, v43, &qword_27F1DEE90);
  v53 = v71;
  sub_24DFB85C0(v71, v31 + v27[17]);
  v54 = v31 + v27[16];
  *v54 = 0;
  *(v54 + 8) = 0;
  *(v31 + v27[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v47;
  *(inited + 80) = 0x6973736572706D69;
  v56 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v56;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v47;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v47;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v50;
  *(inited + 200) = v79;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v57 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v57);
  v58 = v77;
  sub_24E347488();
  sub_24DF8BFF4(v53, &qword_27F1DF050);
  sub_24DF8BFF4(v83, &qword_27F1DEE90);
  sub_24DF8BFF4(v85, &qword_27F1DEE88);
  sub_24DF8BFF4(v87, &qword_27F1DEE88);
  sub_24DFAE7C0(v80, v72);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v73);
  sub_24DFB8804(v58, v31 + v74, &qword_27F1E58A0);
  v59 = v75;
  sub_24DFAE760(v31, v75, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v27);
  v60 = type metadata accessor for Shelf.Presentation(0);
  v61 = v60[5];
  v62 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(v59 + v61, 1, 1, v62);
  v63 = v59 + v60[11];
  *v63 = 0u;
  *(v63 + 16) = 0u;
  *(v63 + 32) = 1;
  v64 = v59 + v60[12];
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = (v59 + v60[13]);
  v66 = (v59 + v60[14]);
  v67 = (v59 + v60[15]);
  *(v59 + v60[6]) = 0;
  *v65 = 0;
  v65[1] = 0;
  *v66 = 0;
  v66[1] = 0;
  *v67 = 0;
  v67[1] = 0;
  *(v59 + v60[7]) = 1;
  *(v59 + v60[8]) = 1;
  *(v59 + v60[9]) = 1;
  *(v59 + v60[10]) = 0;
  return sub_24DFAE7C0(v31, type metadata accessor for HeaderData);
}

uint64_t sub_24E19B448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E19B530()
{
  *(v0 + 32) = 0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  *(v0 + 40) = MEMORY[0x277D84F90];
}

id sub_24E19B5D0(id result)
{
  if (*(v1 + 48) == 1)
  {
    v2 = result;
    v3 = *v1;
    result = [result contentSize];
    v5 = v4;
    if ((*(v1 + 49) & 1) != 0 || v4 >= COERCE_DOUBLE(1))
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v8 = *&v3 + 80;
        v7 = *(*&v3 + 80);
        v6 = *(v8 + 8);
        if ((*(v6 + 16))(v7, v6) & 1) == 0 && ((*(v6 + 40))(v7, v6))
        {
          [v2 frame];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v17 = v1[2] >= v5 ? 0.0 : v1[2];
          [v2 contentOffset];
          v19 = v18;
          v21.origin.x = v10;
          v21.origin.y = v12;
          v21.size.width = v14;
          v21.size.height = v16;
          if (v5 - (v19 + CGRectGetHeight(v21)) <= v17)
          {
            (*(v6 + 48))(v7, v6);
          }
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24E19B790()
{
  MEMORY[0x253040FB0](v0 + 24);

  return v0;
}

uint64_t sub_24E19B7B8()
{
  sub_24E19B790();

  return MEMORY[0x2821FE8D8](v0, 50, 7);
}

uint64_t sub_24E19B810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ContinuePlayingData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  sub_24DFAE87C(a1, v5, &qword_27F1DF018);
  v15 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1DF018);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  }

  else
  {
    sub_24DFAE87C(&v5[*(v15 + 24)], v9, &qword_27F1E6850);
    sub_24E19C300(v5, type metadata accessor for DashboardRequiredDataPresenter.Data);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_24E19C358(v9, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24E367D20;
      *(v19 + 56) = v10;
      *(v19 + 64) = sub_24E19C3BC();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
      sub_24E19C358(v14, boxed_opaque_existential_1);
      return v19;
    }
  }

  sub_24DF8BFF4(v9, &qword_27F1E6850);
  return 0;
}

uint64_t sub_24E19BA50@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = sub_24E347458();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v92 = v4 - v3;
  v5 = sub_24E347478();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v91 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v93 = &v84 - v11;
  v12 = sub_24E3433A8();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v88 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  OUTLINED_FUNCTION_4_5(v15);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v84 - v17;
  v19 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v23 = v22 - v21;
  v24 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v84 - v29;
  sub_24E099B2C(&v84 - v29);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for PlayerCardTheme();
  v36 = *(__swift_project_value_buffer(v35, qword_27F20BF00) + *(v35 + 40));
  v37 = v24[8];
  v30[v24[6]] = 0;
  v30[v24[7]] = 0;
  v30[v37] = 0;
  v30[v24[9]] = 0;
  *&v30[v24[11]] = 0;
  *&v30[v24[13]] = v36;
  v30[v24[10]] = 1;
  v30[v24[12]] = 0;
  v87 = type metadata accessor for TitleHeaderView.Style;
  sub_24DFAE760(v30, v27, type metadata accessor for TitleHeaderView.Style);
  v38 = v36;
  v39 = sub_24E347CB8();
  v40 = GKGameCenterUIFrameworkBundle();
  v41 = GKGetLocalizedStringFromTableInBundle();
  v97 = v27;
  v42 = v41;

  v86 = sub_24E347CF8();
  v95 = v43;

  memset(v104, 0, sizeof(v104));
  v105 = -1;
  memset(v102, 0, sizeof(v102));
  v103 = -1;
  sub_24E3444F8();
  memset(v100, 0, sizeof(v100));
  v101 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = v88;
  sub_24E343398();
  v49 = sub_24E343378();
  v96 = v18;
  v50 = v49;
  v85 = v51;
  (*(v89 + 8))(v48, v90);
  v52 = v23 + v19[7];
  *(v52 + 32) = 0u;
  *(v52 + 48) = 0u;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 64) = -1;
  v53 = v23 + v19[9];
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *(v53 + 64) = -1;
  v54 = (v23 + v19[10]);
  v55 = v23 + v19[11];
  *(v55 + 32) = 0;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  v56 = v19[13];
  v88 = v19[12];
  v57 = v23 + v56;
  *(v57 + 32) = 0;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  v90 = v19[14];
  v89 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v98 = v50;
  v99 = v85;
  sub_24E348918();
  sub_24DFAE760(v97, v23 + v19[5], v87);
  v62 = (v23 + v19[6]);
  v63 = v86;
  v64 = v95;
  *v62 = v86;
  v62[1] = v64;

  sub_24DFAE710(v104, v52, &qword_27F1DEE88);
  v65 = (v23 + v19[8]);
  *v65 = 0;
  v65[1] = 0;
  sub_24DFAE710(v102, v53, &qword_27F1DEE88);
  *(v23 + v88) = 0;
  *v54 = 0;
  v54[1] = 0;
  sub_24DFAE710(v100, v55, &qword_27F1DEE90);
  sub_24DFAE87C(v96, v23 + v19[17], &qword_27F1DF050);
  v66 = v23 + v19[16];
  *v66 = 0;
  *(v66 + 8) = 0;
  *(v23 + v19[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  v68 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = 0x6973736572706D69;
  v69 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v69;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v68;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v68;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v63;
  *(inited + 200) = v95;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v70 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v70);
  v71 = v93;
  sub_24E347488();
  sub_24DF8BFF4(v96, &qword_27F1DF050);
  sub_24DF8BFF4(v100, &qword_27F1DEE90);
  sub_24DF8BFF4(v102, &qword_27F1DEE88);
  sub_24DF8BFF4(v104, &qword_27F1DEE88);
  sub_24E19C300(v97, type metadata accessor for TitleHeaderView.Style);
  sub_24E19C300(v30, type metadata accessor for TitleHeaderView.Style);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v89);
  sub_24DF8BEB4(v71, v23 + v90);
  v72 = v94;
  sub_24DFAE760(v23, v94, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v19);
  v73 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = v72 + v73[11];
  *v78 = 0u;
  *(v78 + 16) = 0u;
  *(v78 + 32) = 1;
  v79 = v72 + v73[12];
  *v79 = 0;
  *(v79 + 8) = 1;
  v80 = (v72 + v73[13]);
  v81 = (v72 + v73[14]);
  v82 = (v72 + v73[15]);
  *(v72 + v73[6]) = 1;
  *v80 = 0;
  v80[1] = 0;
  *v81 = 0;
  v81[1] = 0;
  *v82 = 0;
  v82[1] = 0;
  *(v72 + v73[7]) = 1;
  *(v72 + v73[8]) = 1;
  *(v72 + v73[9]) = 1;
  *(v72 + v73[10]) = 0;
  return sub_24E19C300(v23, type metadata accessor for HeaderData);
}

uint64_t sub_24E19C300(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E19C358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuePlayingData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E19C3BC()
{
  result = qword_27F1DF098;
  if (!qword_27F1DF098)
  {
    type metadata accessor for ContinuePlayingData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF098);
  }

  return result;
}

id sub_24E19C414()
{
  v0 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v34 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v32 = v7;
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  type metadata accessor for InsetViewControllerContentView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v16 = v11;
  [v16 setLayoutMargins_];
  [v16 setClipsToBounds_];
  *(v16 + OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromSafeAreaInset) = 0;
  v17 = v16;
  OUTLINED_FUNCTION_4_71();
  v18 = qword_27F1DE118;
  v19 = v17;
  if (v18 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v20 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v20, qword_27F20BF00);
  OUTLINED_FUNCTION_5_78();
  aBlock = v22;
  v36 = v21;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  sub_24DFD7E3C(v22, v21, v23, v24, v25, v26, v27);
  sub_24DFEB8F4(&aBlock);

  sub_24E085260();
  v28 = sub_24E348368();
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  v39 = sub_24E19CFE8;
  v40 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_24E00B24C;
  v38 = &block_descriptor_7_1;
  v30 = _Block_copy(&aBlock);

  sub_24E346EF8();
  aBlock = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  OUTLINED_FUNCTION_1_104(&qword_27F1DFD10);
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v10, v5, v30);

  _Block_release(v30);
  (*(v34 + 8))(v5, v0);
  (*(v32 + 8))(v10, v33);
  return v19;
}

void sub_24E19C778(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    do
    {
      v2 = [objc_opt_self() clearColor];
      [v1 setBackgroundColor_];

      v3 = [v1 superview];
      v1 = v3;
    }

    while (v3);
  }
}

void sub_24E19C820(void *a1)
{
  [a1 setLayoutMargins_];
  OUTLINED_FUNCTION_4_71();
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v1 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v1, qword_27F20BF00);
  OUTLINED_FUNCTION_5_78();
  v9[0] = v3;
  v9[1] = v2;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v10 = v8;
  sub_24DFD7E3C(v3, v2, v4, v5, v6, v7, v8);
  sub_24DFEB8F4(v9);
}

uint64_t sub_24E19C8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E19CFF0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E19C954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E19CFF0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E19C9B8()
{
  sub_24E19CFF0();
  sub_24E345E08();
  __break(1u);
}

id sub_24E19C9E0()
{
  v0 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v19 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v17 = v7;
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_24E085260();
  v12 = sub_24E348368();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  aBlock[4] = sub_24E19CFC8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_62;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  sub_24E346EF8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  OUTLINED_FUNCTION_1_104(&qword_27F1DFD10);
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v10, v5, v14);
  _Block_release(v14);

  (*(v19 + 8))(v5, v0);
  (*(v17 + 8))(v10, v18);
  return v15;
}

void sub_24E19CC6C(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 superview];

    if (v3)
    {
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor_];
    }
  }
}

uint64_t sub_24E19CD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E19CF74();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E19CD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E19CF74();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E19CDF4()
{
  sub_24E19CF74();
  sub_24E345E08();
  __break(1u);
}

uint64_t View.clearBackground()(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E19CEA4();
  v5 = sub_24E0D1EF8();

  return MEMORY[0x282132D80](v5, v5, v6, a1, &type metadata for ClearBackground, a2, v4);
}

unint64_t sub_24E19CEA4()
{
  result = qword_27F1E6858;
  if (!qword_27F1E6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6858);
  }

  return result;
}

unint64_t sub_24E19CF1C()
{
  result = qword_27F1E6870;
  if (!qword_27F1E6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6870);
  }

  return result;
}

unint64_t sub_24E19CF74()
{
  result = qword_27F1E6878;
  if (!qword_27F1E6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6878);
  }

  return result;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E19CFF0()
{
  result = qword_27F1E6880;
  if (!qword_27F1E6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6880);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_104(unint64_t *a1)
{

  return sub_24DFB4C28(a1, v1);
}

void OUTLINED_FUNCTION_4_71()
{

  sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
}

id sub_24E19D0C8()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F20B0C0);
  v1 = __swift_project_value_buffer(v0, qword_27F20B0C0);
  v3 = *MEMORY[0x277D76A08];
  *v1 = *MEMORY[0x277D76A08];
  *(v1 + 8) = 2;
  (*(*(v0 - 8) + 104))();

  return v3;
}

id TitleWithHighlightsCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *TitleWithHighlightsCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_title;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_separator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OUTLINED_FUNCTION_28();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  v8 = [v7 contentView];
  v9 = OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_title;
  [v8 addSubview_];

  v10 = [v7 contentView];
  [v10 addSubview_];

  v11 = *&v7[v9];
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v12 = qword_27F1DD970;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_24E344158();
  v15 = __swift_project_value_buffer(v14, qword_27F20B0C0);
  sub_24DF88A8C(0, &qword_27F1E0BA0);
  v16 = sub_24E3483D8();
  v17 = MEMORY[0x25303F0C0](v15, v16);

  [v13 setFont_];
  [*&v7[v9] setNumberOfLines_];
  [*&v7[v9] setAdjustsFontForContentSizeCategory_];
  v18 = *&v7[v9];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 labelColor];
  [v20 setTextColor_];

  return v7;
}

void sub_24E19D464()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_title;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_separator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_24E348AE8();
  __break(1u);
}

void TitleWithHighlightsCollectionViewCell.apply(contentsOf:in:with:asPartOf:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_title);
  swift_getKeyPath();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  sub_24E347128();

  sub_24DFA0B40(v3, v4, v2);
}

CGSize __swiftcall TitleWithHighlightsCollectionViewCell.sizeThatFits(_:)(CGSize a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_title) measurementsWithFitting:v1 in:{a1.width, a1.height}];
  result.height = v3;
  result.width = v2;
  return result;
}

Swift::Void __swiftcall TitleWithHighlightsCollectionViewCell.layoutSubviews()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI37TitleWithHighlightsCollectionViewCell_title];
  v2 = [v0 contentView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
}

id static TitleWithHighlightsCollectionViewCell.layoutItem(forContentsOf:at:asPartOf:in:scrollDirection:pageGrid:)()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [objc_opt_self() itemWithLayoutSize_];
  return v4;
}

id TitleWithHighlightsCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E19D958(uint64_t a1, uint64_t a2)
{
  result = sub_24E19DA2C(&qword_27F1DEFA0, a2, type metadata accessor for TitleWithHighlightsCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E19D9D4(uint64_t a1, uint64_t a2)
{
  result = sub_24E19DA2C(&qword_27F1E6898, a2, type metadata accessor for TitleWithHighlightsCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E19DA2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24E19DA74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_24E19DAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E19DB90@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x1B0uLL);
  *a1 = sub_24E345D08();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68A0);
  return sub_24E19DBF8(__dst, a1 + *(v3 + 44));
}

uint64_t sub_24E19DBF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68A8);
  MEMORY[0x28223BE20](v45);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68B8);
  MEMORY[0x28223BE20](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  *v9 = sub_24E345BF8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68C0);
  sub_24E19E02C(a1, &v9[*(v18 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v20 = sub_24E346218();
  *(inited + 32) = v20;
  v21 = sub_24E346238();
  *(inited + 33) = v21;
  v22 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v20)
  {
    v22 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v21)
  {
    v22 = sub_24E346228();
  }

  sub_24E3451B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_24DFB4B20(v9, v14, &qword_27F1E68B0);
  v31 = &v14[*(v44 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_24DFB4B20(v14, v17, &qword_27F1E68B8);
  *v6 = sub_24E345D08();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68C8);
  sub_24E19E9A8(a1, &v6[*(v32 + 44)]);
  v33 = sub_24E3461F8();
  sub_24E3451B8();
  v34 = &v6[*(v45 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_24DFAE87C(v17, v11, &qword_27F1E68B8);
  v39 = v47;
  sub_24DFAE87C(v6, v47, &qword_27F1E68A8);
  v40 = v46;
  sub_24DFAE87C(v11, v46, &qword_27F1E68B8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68D0);
  sub_24DFAE87C(v39, v40 + *(v41 + 48), &qword_27F1E68A8);
  sub_24DF8BFF4(v6, &qword_27F1E68A8);
  sub_24DF8BFF4(v17, &qword_27F1E68B8);
  sub_24DF8BFF4(v39, &qword_27F1E68A8);
  return sub_24DF8BFF4(v11, &qword_27F1E68B8);
}

uint64_t sub_24E19E02C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = sub_24E345778();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6928);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v53 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6930);
  v54 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v53 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6938);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v53 - v11;
  v12 = a1[53];
  v68[0] = a1[52];
  v68[1] = v12;
  sub_24DF90C4C();

  v13 = sub_24E3464E8();
  v15 = v14;
  v17 = v16;
  v61 = a1;
  v18 = a1[37];
  v19 = sub_24E3464B8();
  v21 = v20;
  v23 = v22;
  sub_24DFA92EC(v13, v15, v17 & 1);

  v69 = v18;
  v68[0] = v18;

  v24 = sub_24E346478();
  v26 = v25;
  LOBYTE(v15) = v27;
  sub_24DFA92EC(v19, v21, v23 & 1);

  sub_24E19F4F4(&v69);
  sub_24E3462B8();
  v28 = sub_24E346448();
  v30 = v29;
  v32 = v31;
  v63 = v33;
  v34 = v24;
  v35 = v61;
  sub_24DFA92EC(v34, v26, v15 & 1);

  KeyPath = swift_getKeyPath();
  v36 = 1;
  if (v35[51] < *(*v35 + 16))
  {
    v37 = swift_allocObject();
    v38 = memcpy((v37 + 16), v35, 0x1B0uLL);
    MEMORY[0x28223BE20](v38);
    *(&v53 - 2) = v35;
    sub_24E19F458(v35, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6948);
    v39 = v32;
    sub_24E19F630();
    v40 = v55;
    sub_24E346BD8();
    v41 = v58;
    sub_24E345768();
    sub_24DFB4C28(&qword_27F1E6958, &qword_27F1E6928);
    sub_24E19F6E8(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
    v42 = v53;
    v43 = v57;
    v44 = v60;
    sub_24E346588();
    (*(v59 + 8))(v41, v44);
    v45 = v43;
    v32 = v39;
    (*(v56 + 8))(v40, v45);
    (*(v54 + 32))(v67, v42, v66);
    v36 = 0;
  }

  v46 = v67;
  __swift_storeEnumTagSinglePayload(v67, v36, 1, v66);
  v47 = v64;
  sub_24DFAE87C(v46, v64, &qword_27F1E6938);
  v48 = v65;
  *v65 = v28;
  v48[1] = v30;
  v49 = v32 & 1;
  *(v48 + 16) = v49;
  v50 = KeyPath;
  v48[3] = v63;
  v48[4] = v50;
  *(v48 + 40) = 0;
  v48[6] = 0;
  *(v48 + 56) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6940);
  sub_24DFAE87C(v47, v48 + *(v51 + 64), &qword_27F1E6938);
  sub_24DF82DD4(v28, v30, v49);

  sub_24DF8BFF4(v46, &qword_27F1E6938);
  sub_24DF8BFF4(v47, &qword_27F1E6938);
  sub_24DFA92EC(v28, v30, v49);
}

uint64_t sub_24E19E684()
{
  sub_24E346E68();
  sub_24E345558();
}

uint64_t sub_24E19E6F0(uint64_t a1)
{
  v3 = *(a1 + 392);
  v2[1] = *(a1 + 392);
  v4 = *(&v3 + 1);
  sub_24DFAE87C(&v4, v2, &qword_27F1E6960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  v2[0] = v3;
  sub_24E346B98();
  return sub_24DF8BFF4(&v3, &qword_27F1E34E0);
}

uint64_t sub_24E19E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(a1 + 392);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  sub_24E343AA8();
  if (v29 == 1)
  {
    v4 = sub_24E343A08();
  }

  else
  {
    v4 = sub_24E343A18();
  }

  *&v30 = v4;
  *(&v30 + 1) = v5;
  sub_24DF90C4C();
  v6 = sub_24E3464E8();
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 296);
  v12 = sub_24E3464B8();
  v14 = v13;
  v16 = v15;
  sub_24DFA92EC(v6, v8, v10 & 1);

  *&v30 = v11;

  v17 = sub_24E346478();
  v19 = v18;
  v21 = v20;
  sub_24DFA92EC(v12, v14, v16 & 1);

  sub_24E19F4F4(&v30);
  sub_24E3462B8();
  v22 = sub_24E346448();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;
  sub_24DFA92EC(v17, v19, v21 & 1);

  result = swift_getKeyPath();
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24E19E9A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68D8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = sub_24E345EC8();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68E0);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  sub_24E345D08();
  v32 = a1;
  LODWORD(v34) = 0;
  v27[3] = sub_24E19F6E8(&qword_27F1E68E8, MEMORY[0x277CE0428]);
  sub_24E348DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E68F0);
  v15 = sub_24E19F380();
  v16 = 1;
  v29 = v14;
  v17 = v7;
  v18 = v11;
  v19 = v28;
  v27[2] = v15;
  sub_24E345208();
  if (*(a1 + 408) < *(*a1 + 16))
  {
    v34 = *(a1 + 392);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
    sub_24E346B88();
    if (v33 == 1)
    {
      v27[0] = sub_24E345D08();
      v27[1] = v27;
      MEMORY[0x28223BE20](v27[0]);
      v27[-2] = a1;
      LODWORD(v34) = 0;
      sub_24E348DC8();
      sub_24E345208();
      (*(v19 + 32))(v17, v18, v9);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  __swift_storeEnumTagSinglePayload(v17, v16, 1, v9);
  v20 = *(v19 + 16);
  v21 = v29;
  v20(v18, v29, v9);
  v22 = v31;
  sub_24DFAE87C(v17, v31, &qword_27F1E68D8);
  v23 = v30;
  v20(v30, v18, v9);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6908);
  sub_24DFAE87C(v22, &v23[*(v24 + 48)], &qword_27F1E68D8);
  sub_24DF8BFF4(v17, &qword_27F1E68D8);
  v25 = *(v19 + 8);
  v25(v21, v9);
  sub_24DF8BFF4(v22, &qword_27F1E68D8);
  return (v25)(v18, v9);
}

uint64_t sub_24E19EE34(uint64_t *a1)
{
  v6 = a1[51];
  if (v6 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v1 = a1;
  v2 = sub_24E2A1B5C(0, v6, *a1);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  if ((v9 & 1) == 0)
  {
LABEL_3:
    sub_24E09C8E8(v2, v3, v4, v5);
    v11 = v10;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_13;
  }

  if (v13 != (v5 >> 1) - v4)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v17 = v11;
  swift_getKeyPath();
  v14 = swift_allocObject();
  memcpy((v14 + 16), v1, 0x1B0uLL);
  sub_24E19F458(v1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6910);
  type metadata accessor for FriendWhoEarnedThisWrapperView();
  sub_24DFB4C28(&qword_27F1E6918, &qword_27F1E6910);
  sub_24E19F6E8(&qword_27F1E6920, type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel);
  sub_24E19F6E8(&qword_27F1E6900, type metadata accessor for FriendWhoEarnedThisWrapperView);
  return sub_24E346CC8();
}

uint64_t sub_24E19F098(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[51];
  v8 = *(v6 + 16);
  if (v8 < v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v1 = sub_24E2A1B5C(v7, v8, v6);
  v2 = v9;
  v3 = v10;
  v4 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_3:
    sub_24E09C8E8(v1, v2, v3, v4);
    v13 = v12;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_13;
  }

  if (v15 != (v4 >> 1) - v3)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v13)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v19 = v13;
  swift_getKeyPath();
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0x1B0uLL);
  sub_24E19F458(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6910);
  type metadata accessor for FriendWhoEarnedThisWrapperView();
  sub_24DFB4C28(&qword_27F1E6918, &qword_27F1E6910);
  sub_24E19F6E8(&qword_27F1E6920, type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel);
  sub_24E19F6E8(&qword_27F1E6900, type metadata accessor for FriendWhoEarnedThisWrapperView);
  return sub_24E346CC8();
}

uint64_t sub_24E19F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E19F490(a1, a3);
  memcpy(__dst, (a2 + 8), sizeof(__dst));
  v5 = type metadata accessor for FriendWhoEarnedThisWrapperView();
  memcpy((a3 + *(v5 + 20)), (a2 + 8), 0x180uLL);
  return sub_24E002778(__dst, &v7);
}

unint64_t sub_24E19F380()
{
  result = qword_27F1E68F8;
  if (!qword_27F1E68F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E68F0);
    sub_24E19F6E8(&qword_27F1E6900, type metadata accessor for FriendWhoEarnedThisWrapperView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E68F8);
  }

  return result;
}

uint64_t sub_24E19F490(uint64_t a1, uint64_t a2)
{
  HasEarnedThisAchievementViewModel = type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel();
  (*(*(HasEarnedThisAchievementViewModel - 8) + 16))(a2, a1, HasEarnedThisAchievementViewModel);
  return a2;
}

uint64_t objectdestroyTm_17()
{

  return MEMORY[0x2821FE8E8](v0, 448, 7);
}

unint64_t sub_24E19F630()
{
  result = qword_27F1E6950;
  if (!qword_27F1E6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6948);
    sub_24DFB4C28(&qword_27F1E3FF0, &qword_27F1E3FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6950);
  }

  return result;
}

uint64_t sub_24E19F6E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E19F770(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_24E0BDFC0;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

id sub_24E19F86C()
{
  v1 = OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___privacyLinkController;
  v2 = *(v0 + OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___privacyLinkController);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_24E19F8D8();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_24E1A3954(v4);
  }

  sub_24E1A3964(v2);
  return v3;
}

id sub_24E19F8D8()
{
  v0 = [objc_opt_self() local];
  v1 = [v0 hasAcknowledgedLatestGDPR];

  if (v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() linkWithBundleIdentifier_];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    sub_24E1A3974(v3);
    if (v5)
    {
      v6 = sub_24E347CB8();
    }

    else
    {
      v6 = 0;
    }

    [v4 setDisplayLanguage_];
  }

  return v2;
}

objc_super *sub_24E19F9D4()
{
  v1 = OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___welcomeOnboardingView;
  v2 = *&v0[OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___welcomeOnboardingView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___welcomeOnboardingView];
  }

  else
  {
    v4 = sub_24E19FA38(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

objc_super *sub_24E19FA38(void *a1)
{
  v2 = sub_24E19F86C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(type metadata accessor for WelcomeOnboardingView());
  v6 = a1;

  return sub_24E1A39D8(v6, v4, v5);
}

uint64_t WelcomeOnboardingViewController.allowSignOut.getter()
{
  v0 = [objc_opt_self() local];
  v1 = [v0 hasAcknowledgedLatestGDPR];

  return v1 ^ 1;
}

Swift::Void __swiftcall WelcomeOnboardingViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = sub_24E19F86C();
  if (v1)
  {
    v2 = v1;
    [v0 addChildViewController_];
  }

  v3 = sub_24E19F9D4();
  [(objc_super *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___welcomeOnboardingView;
    [v4 addSubview_];

    v7 = objc_opt_self();
    v8 = *&v0[v6];
    v9 = [v0 view];
    [v7 _gkInstallEdgeConstraintsForView_containedWithinParentView_];

    v10 = [v0 navigationController];
    [v10 setNavigationBarHidden:0 animated:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall WelcomeOnboardingViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_24E19FCF8();
}

uint64_t sub_24E19FCF8()
{
  v0 = sub_24E347638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v4 = sub_24E1A2FE8();
  sub_24E1A2DD4();
  sub_24E32E770(6, v4, 3u, 0, v3, 0);
  return (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall WelcomeOnboardingViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1);
}

uint64_t sub_24E19FF10()
{
  OUTLINED_FUNCTION_9_7();
  v1[18] = v0;
  v2 = sub_24E343F88();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_24E348068();
  v1[24] = sub_24E348058();
  v4 = sub_24E347FF8();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2822009F8](sub_24E1A0018, v4, v3);
}

uint64_t sub_24E1A0018()
{
  sub_24E1A0E34();
  v1 = objc_opt_self();
  v2 = [v1 proxyForLocalPlayer];
  v3 = [v2 accountServicePrivate];

  [v3 setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer_];
  swift_unknownObjectRelease();
  v4 = sub_24E19F86C();
  v0[27] = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [v1 proxyForLocalPlayer];
    v7 = [v6 accountServicePrivate];

    v8 = [v5 flow];
    v9 = [v8 contentVersion];

    [v7 setLastPrivacyNoticeVersionDisplayedForSignedInPlayer_];
    swift_unknownObjectRelease();
    v10 = [v1 proxyForLocalPlayer];
    v11 = [v10 profileServicePrivate];
    v0[28] = v11;

    v12 = [v5 flow];
    v13 = [v12 contentVersion];

    v0[2] = v0;
    v0[3] = sub_24E1A03A0;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24DFECA10;
    v0[13] = &block_descriptor_5;
    v0[14] = v14;
    [v11 setPrivacyNoticeVersion:v13 withCompletionHandler:?];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    if (sub_24E1A2040())
    {
      v15 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      sub_24E347CF8();
      OUTLINED_FUNCTION_18_29();
      v16 = sub_24E347CF8();
      OUTLINED_FUNCTION_0_134(v16, v17);
    }

    else
    {
      v18 = [objc_opt_self() shared];
      v19 = [v18 delegate];

      if (v19)
      {
        OUTLINED_FUNCTION_21_23(v20, sel_onboardingFlowFinishedWithAction_);
        swift_unknownObjectRelease();
      }
    }

    OUTLINED_FUNCTION_19_24();

    OUTLINED_FUNCTION_12_5();

    return v21();
  }
}

uint64_t sub_24E1A03A0()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 232) = v4;
  v5 = v3[26];
  v6 = v3[25];
  if (v4)
  {
    v7 = sub_24E1A0AC8;
  }

  else
  {
    v7 = sub_24E1A04C4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E1A04C4()
{
  OUTLINED_FUNCTION_9_7();
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_105(v1);

  return sub_24E1A0FFC();
}

uint64_t sub_24E1A0538()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_5_20();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v7 + 272) = v6;

  v8 = *(v1 + 208);
  v9 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_24E1A0650, v9, v8);
}

uint64_t sub_24E1A0650()
{
  OUTLINED_FUNCTION_8_9();
  if (*(v0 + 272) == 1)
  {
    sub_24E343C58();
    v1 = sub_24E343F78();
    v2 = sub_24E348238();
    if (OUTLINED_FUNCTION_17_29(v2))
    {
      *OUTLINED_FUNCTION_41_2() = 0;
      OUTLINED_FUNCTION_16_27(&dword_24DE53000, v3, v2, "Updating the contacts integration setting...");
      OUTLINED_FUNCTION_22_4();
    }

    v4 = *(v0 + 184);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);

    v7 = *(v6 + 8);
    *(v0 + 248) = v7;
    v7(v4, v5);
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_24E1A086C;

    return sub_24E1A18B8();
  }

  else
  {
    v10 = *(v0 + 216);

    if (sub_24E1A2040())
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      sub_24E347CF8();
      OUTLINED_FUNCTION_18_29();
      v12 = sub_24E347CF8();
      OUTLINED_FUNCTION_0_134(v12, v13);
    }

    else
    {
      v14 = [objc_opt_self() shared];
      v15 = [v14 delegate];

      if (v15)
      {
        OUTLINED_FUNCTION_21_23(v16, sel_onboardingFlowFinishedWithAction_);
        swift_unknownObjectRelease();
      }
    }

    OUTLINED_FUNCTION_19_24();

    OUTLINED_FUNCTION_12_5();

    return v17();
  }
}

uint64_t sub_24E1A086C()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *v1;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_24E1A0C28;
  }

  else
  {
    v7 = sub_24E1A099C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E1A099C()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 216);

  if (sub_24E1A2040())
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    sub_24E347CF8();
    OUTLINED_FUNCTION_18_29();
    v3 = sub_24E347CF8();
    OUTLINED_FUNCTION_0_134(v3, v4);
  }

  else
  {
    v5 = [objc_opt_self() shared];
    v6 = [v5 delegate];

    if (v6)
    {
      OUTLINED_FUNCTION_21_23(v7, sel_onboardingFlowFinishedWithAction_);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_19_24();

  OUTLINED_FUNCTION_12_5();

  return v8();
}

uint64_t sub_24E1A0AC8()
{
  OUTLINED_FUNCTION_29_5();
  v1 = v0[29];
  v2 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_24E343C58();
  v3 = v1;
  v4 = sub_24E343F78();
  v5 = sub_24E348258();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  if (v6)
  {
    OUTLINED_FUNCTION_43_2();
    v8 = OUTLINED_FUNCTION_27_4();
    *v2 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_9_44(&dword_24DE53000, v11, v12, "Error syncing the acknowledged privacy notice version to the server: %@");
    sub_24E0C60AC(v8);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_16_10();
  }

  else
  {
  }

  (*(v0[20] + 8))(v0[22], v0[19]);
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_1_105(v13);

  return sub_24E1A0FFC();
}

uint64_t sub_24E1A0C28()
{
  OUTLINED_FUNCTION_29_5();
  v2 = *(v0 + 264);

  sub_24E343C58();
  v3 = v2;
  v4 = sub_24E343F78();
  v5 = sub_24E348258();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 264);
  v8 = *(v0 + 216);
  if (v6)
  {
    OUTLINED_FUNCTION_43_2();
    v9 = OUTLINED_FUNCTION_27_4();
    *v1 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_9_44(&dword_24DE53000, v12, v13, "Error updating the contacts integration setting: %@");
    sub_24E0C60AC(v9);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_16_10();
  }

  else
  {
  }

  (*(v0 + 248))(*(v0 + 168), *(v0 + 152));
  if (sub_24E1A2040())
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    sub_24E347CF8();
    OUTLINED_FUNCTION_18_29();
    v15 = sub_24E347CF8();
    OUTLINED_FUNCTION_0_134(v15, v16);
  }

  else
  {
    v17 = [objc_opt_self() shared];
    v18 = [v17 delegate];

    if (v18)
    {
      OUTLINED_FUNCTION_21_23(v19, sel_onboardingFlowFinishedWithAction_);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_19_24();

  OUTLINED_FUNCTION_12_5();

  return v20();
}

uint64_t sub_24E1A0E34()
{
  v0 = sub_24E347638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() local];
  v5 = sub_24E1A3090();

  if (v5)
  {
    v6 = sub_24E348C08();

    if (v6)
    {
      v7 = 12;
    }

    else
    {
      v7 = 10;
    }
  }

  else
  {

    v7 = 12;
  }

  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v8 = sub_24E1A2FE8();
  sub_24E1A2DD4();
  sub_24E32E900(6, v8, 1, v7, 0, v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1A0FFC()
{
  v1 = sub_24E343F88();
  v0[34] = v1;
  v0[35] = *(v1 - 8);
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  sub_24E348068();
  v0[39] = sub_24E348058();
  v3 = sub_24E347FF8();
  v0[40] = v3;
  v0[41] = v2;

  return MEMORY[0x2822009F8](sub_24E1A1104, v3, v2);
}

uint64_t sub_24E1A1104()
{
  OUTLINED_FUNCTION_29_5();
  v1 = objc_opt_self();
  v0[42] = v1;
  v2 = [v1 proxyForLocalPlayer];
  v3 = [v2 profileServicePrivate];
  v0[43] = v3;

  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_24E1A1268;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6988);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_24E19F854;
  v0[21] = &block_descriptor_18;
  v0[22] = v4;
  [v3 getContactsIntegrationConsentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E1A1268()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_5_20();
  *v1 = v0;
  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return MEMORY[0x2822009F8](sub_24E1A1360, v4, v3);
}

uint64_t sub_24E1A1360()
{
  v1 = *(v0 + 368);
  swift_unknownObjectRelease();
  if (v1 == -1)
  {
    v11 = [*(v0 + 336) proxyForLocalPlayer];
    v12 = [v11 accountServicePrivate];
    *(v0 + 352) = v12;

    v13 = [objc_opt_self() local];
    v14 = [v13 internal];

    v15 = [v14 playerID];
    if (!v15)
    {
      sub_24E347CF8();
      v15 = sub_24E347CB8();
    }

    *(v0 + 360) = v15;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 372;
    *(v0 + 88) = sub_24E1A163C;
    v16 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0350);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_24E19F854;
    *(v0 + 232) = &block_descriptor_21_1;
    *(v0 + 240) = v16;
    [v12 getAccountAgeCategoryForPlayerID:v15 withCompletion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {

    sub_24E343C58();
    v2 = sub_24E343F78();
    v3 = sub_24E348238();
    v4 = OUTLINED_FUNCTION_17_29(v3);
    v5 = *(v0 + 288);
    if (v4)
    {
      *OUTLINED_FUNCTION_41_2() = 0;
      OUTLINED_FUNCTION_16_27(&dword_24DE53000, v6, v3, "allowOptInContactsIntegrationWithUpdatedTerms: The player has already made a choice for the contacts integration.");
      OUTLINED_FUNCTION_22_4();
    }

    v7 = *(v0 + 272);
    v8 = *(v0 + 280);

    (*(v8 + 8))(v5, v7);

    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_24E1A163C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_5_20();
  *v1 = v0;
  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return MEMORY[0x2822009F8](sub_24E1A1734, v4, v3);
}

uint64_t sub_24E1A1734()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 372);
  swift_unknownObjectRelease();

  if (v2 == 1)
  {
    v3 = (v0 + 304);
    sub_24E343C58();
    v4 = sub_24E343F78();
    v5 = sub_24E348238();
    if (OUTLINED_FUNCTION_17_29(v5))
    {
      v6 = "allowOptInContactsIntegrationWithUpdatedTerms: Yes";
LABEL_6:
      v7 = *v3;
      v8 = OUTLINED_FUNCTION_41_2();
      *v8 = 0;
      _os_log_impl(&dword_24DE53000, v4, v5, v6, v8, 2u);
      OUTLINED_FUNCTION_22_4();
      goto LABEL_8;
    }
  }

  else
  {
    v3 = (v0 + 296);
    sub_24E343C58();
    v4 = sub_24E343F78();
    v5 = sub_24E348238();
    if (OUTLINED_FUNCTION_17_29(v5))
    {
      v6 = "allowOptInContactsIntegrationWithUpdatedTerms: Due to the player's age category, they have to explicitly make a choice on the contacts integration.";
      goto LABEL_6;
    }
  }

  v7 = *v3;
LABEL_8:
  v9 = *(v0 + 280);
  v10 = *(v0 + 272);

  (*(v9 + 8))(v7, v10);

  v11 = *(v0 + 8);

  return v11(v2 == 1);
}

uint64_t sub_24E1A18B8()
{
  v1 = sub_24E343F88();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v0[21] = sub_24E348068();
  v0[22] = sub_24E348058();
  v3 = sub_24E347FF8();
  v0[23] = v3;
  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_24E1A19AC, v3, v2);
}

uint64_t sub_24E1A19AC()
{
  OUTLINED_FUNCTION_8_9();
  v1 = objc_opt_self();
  v0[25] = v1;
  v2 = [v1 proxyForLocalPlayer];
  v3 = [v2 profileServicePrivate];
  v0[26] = v3;

  v0[2] = v0;
  v0[3] = sub_24E1A1AE0;
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0);
  OUTLINED_FUNCTION_2_85(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_3_88();
  v0[13] = v6;
  v0[14] = v4;
  [v3 setContactsIntegrationConsent:1 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E1A1AE0()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 216) = v4;
  v5 = v3[24];
  v6 = v3[23];
  if (v4)
  {
    v7 = sub_24E1A1FC0;
  }

  else
  {
    v7 = sub_24E1A1C04;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E1A1C04()
{
  OUTLINED_FUNCTION_29_5();
  swift_unknownObjectRelease();
  sub_24E343C58();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (OUTLINED_FUNCTION_17_29(v2))
  {
    *OUTLINED_FUNCTION_41_2() = 0;
    OUTLINED_FUNCTION_16_27(&dword_24DE53000, v3, v2, "Contacts integration setting updated on the server.");
    OUTLINED_FUNCTION_22_4();
  }

  v4 = v0[25];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  (*(v6 + 8))(v5, v7);
  v8 = [v4 proxyForLocalPlayer];
  v9 = [v8 accountServicePrivate];

  v10 = [objc_opt_self() currentDevice];
  if (v10)
  {
    sub_24E1A3838(v10);
    if (v18)
    {
      v19 = sub_24E347CB8();
    }

    else
    {
      v19 = 0;
    }

    [v9 setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer_];

    swift_unknownObjectRelease();
    v20 = sub_24E348058();
    v0[28] = v20;
    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = sub_24E1A1E1C;
    v12 = MEMORY[0x277D85700];
    v15 = sub_24E1A21F4;
    v14 = 0x800000024E3AB1B0;
    v17 = MEMORY[0x277D84F78] + 8;
    v11 = v20;
    v13 = 0xD00000000000001ALL;
    v16 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822007B8](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_24E1A1E1C()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_24E1A1F58, v5, v4);
}

uint64_t sub_24E1A1F58()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E1A1FC0()
{
  OUTLINED_FUNCTION_8_9();

  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E1A2040()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 local];
    v5 = [v4 shouldShowPersonalizationScreen];

    if (v5)
    {
      v6 = &selRef_presentPersonalizationScreen_;
    }

    else
    {
      v8 = [v3 local];
      v9 = [v8 shouldShowFriendSuggestionsScreen];

      if (v9)
      {
        v6 = &selRef_presentFriendSuggestionsScreen_;
      }

      else
      {
        v10 = [v3 local];
        v11 = [v10 shouldShowContactsIntegrationConsentScreen];

        if (!v11)
        {
          v7 = 0;
          goto LABEL_10;
        }

        v6 = &selRef_presentContactsIntegrationConsentScreen_;
      }
    }

    v12 = [objc_opt_self() shared];
    [v12 *v6];

    v7 = 1;
LABEL_10:

    return v7;
  }

  return 0;
}

uint64_t sub_24E1A219C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return a3(v4, a2);
}

uint64_t sub_24E1A21F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 accountServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24E1A38A8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1A27AC;
  aBlock[3] = &block_descriptor_15_1;
  v10 = _Block_copy(aBlock);

  [v7 getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_24E1A23E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24E343F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  sub_24E343C58();

  v13 = sub_24E343F78();
  v14 = sub_24E348238();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35[1] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    if (a2)
    {
      v18 = a1;
    }

    else
    {
      v18 = 7104878;
    }

    v35[0] = v8;
    v19 = a1;
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_24E1C2BE0(v18, v20, &v37);
    a1 = v19;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24DE53000, v13, v14, "Contacts integration onboarding completed, version: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x253040EE0](v17, -1, -1);
    MEMORY[0x253040EE0](v16, -1, -1);

    v8 = v35[0];
  }

  else
  {
  }

  v22 = *(v8 + 8);
  v22(v12, v7);
  v23 = v7;
  v24 = objc_allocWithZone(MEMORY[0x277D0C1D0]);

  v25 = sub_24E1A36F4(0, 0, 0, 0, 0, 0, 0, 0, a1, a2);
  v26 = [objc_opt_self() local];
  v27 = [v26 internal];

  [v27 setOnboarding_];
  v28 = v36;
  sub_24E343C58();
  v29 = v25;
  v30 = sub_24E343F78();
  v31 = sub_24E348238();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_24DE53000, v30, v31, "Using a temporary onboarding parameter in order to skip the Contacts Integration step: %@", v32, 0xCu);
    sub_24E0C60AC(v33);
    MEMORY[0x253040EE0](v33, -1, -1);
    MEMORY[0x253040EE0](v32, -1, -1);
  }

  v22(v28, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378);
  sub_24E348018();
}

uint64_t sub_24E1A27AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_24E1A2844()
{
  OUTLINED_FUNCTION_9_7();
  v1 = sub_24E343F88();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  sub_24E348068();
  v0[21] = sub_24E348058();
  v3 = sub_24E347FF8();
  v0[22] = v3;
  v0[23] = v2;

  return MEMORY[0x2822009F8](sub_24E1A2930, v3, v2);
}

uint64_t sub_24E1A2930()
{
  OUTLINED_FUNCTION_8_9();
  v1 = [objc_opt_self() local];
  v0[24] = v1;
  v0[2] = v0;
  v0[3] = sub_24E1A2A40;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0);
  OUTLINED_FUNCTION_2_85(v3);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_3_88();
  v0[13] = v4;
  v0[14] = v2;
  [v1 signOutWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E1A2A40()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = sub_24E1A2C2C;
  }

  else
  {
    v7 = sub_24E1A2B64;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E1A2B64()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 192);

  v2 = [objc_opt_self() shared];
  v3 = [v2 delegate];

  if (v3)
  {
    [v3 onboardingFlowFinishedWithAction_];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E1A2C2C()
{
  OUTLINED_FUNCTION_29_5();
  v2 = v0[24];
  v1 = v0[25];

  swift_willThrow();

  sub_24E343C58();
  v3 = v1;
  v4 = sub_24E343F78();
  v5 = sub_24E348258();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    OUTLINED_FUNCTION_43_2();
    v8 = OUTLINED_FUNCTION_27_4();
    *v2 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 1) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_9_44(&dword_24DE53000, v11, v12, "Error signing out of Game Center, dismissing onboarding anyway: %@");
    sub_24E0C60AC(v8);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_16_10();
  }

  else
  {
  }

  (*(v0[19] + 8))(v0[20], v0[18]);
  v13 = [objc_opt_self() shared];
  v14 = [v13 delegate];

  if (v14)
  {
    [v14 onboardingFlowFinishedWithAction_];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_12_5();

  return v15();
}

uint64_t sub_24E1A2DD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24E347638();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v9[0] = sub_24E3477C8();
  v9[1] = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  sub_24E3475B8();
  (*(v1 + 8))(v3, v0);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24E1A2FE8()
{
  v0 = [objc_opt_self() local];
  v1 = sub_24E1A3090();

  if (v1)
  {
    v2 = sub_24E348C08();

    if (v2)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }

  else
  {

    return 10;
  }
}

uint64_t sub_24E1A3090()
{
  v2 = v1;
  sub_24E343F88();
  OUTLINED_FUNCTION_1_23();
  v4 = v3;
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 shouldShowPersonalizationScreen];
  sub_24E343C58();
  v10 = sub_24E343F78();
  v11 = sub_24E348238();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_43_2();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    if (v9)
    {
      v14 = 0x656D6F636C6577;
    }

    else
    {
      v14 = 0x77654E7374616877;
    }

    if (v9)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
    }

    v16 = sub_24E1C2BE0(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24DE53000, v10, v11, "welcomeOnboardingVariant=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_16_10();
  }

  (*(v4 + 8))(v8, v0);
  return v9 ^ 1;
}

uint64_t sub_24E1A324C()
{
  sub_24E347638();
  OUTLINED_FUNCTION_1_23();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v6 = sub_24E1A2FE8();
  sub_24E1A2DD4();
  sub_24E32E900(6, v6, 1, 14, 1, v5);
  return (*(v2 + 8))(v5, v0);
}

id WelcomeOnboardingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WelcomeOnboardingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___privacyLinkController] = 1;
  *&v3[OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___welcomeOnboardingView] = 0;
  if (a2)
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id WelcomeOnboardingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WelcomeOnboardingViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___privacyLinkController] = 1;
  *&v1[OBJC_IVAR___GKWelcomeOnboardingViewController____lazy_storage___welcomeOnboardingView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id WelcomeOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E1A3690(char a1)
{
  if (a1)
  {
    return 0x77654E7374616877;
  }

  else
  {
    return 0x656D6F636C6577;
  }
}

uint64_t sub_24E1A36C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E1A3690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_24E1A36F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4)
  {
    v15 = sub_24E347CB8();

    if (a6)
    {
LABEL_3:
      v16 = sub_24E347CB8();

      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  if (!a8)
  {
    v17 = 0;
    if (a10)
    {
      goto LABEL_8;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v17 = sub_24E347CB8();

  if (!a10)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = sub_24E347CB8();

LABEL_11:
  v19 = [v10 initWithLastWelcomeWhatsNewCopyVersionDisplayed:a1 lastPrivacyNoticeVersionDisplayed:a2 lastPersonalizationVersionDisplayed:v15 lastProfilePrivacyVersionDisplayed:v16 lastFriendSuggestionsVersionDisplayed:v17 lastContactsIntegrationConsentVersionDisplayed:v18];

  return v19;
}

uint64_t sub_24E1A3838(void *a1)
{
  v2 = [a1 platformBuildVersion];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

void sub_24E1A38A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_24E1A23E8(a1, a2, a3, v8);
}

uint64_t block_copy_helper_13_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24E1A3954(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_24E1A3964(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_24E1A3974(void *a1)
{
  v1 = [a1 _gkPreferredSystemLanguage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

objc_super *sub_24E1A39D8(objc_super *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_delegate;
  *(a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_welcomeArtworkView);
  *v7 = sub_24E221EC4();
  v8 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_primaryTrayButton;
  *(a3 + v8) = sub_24E221F24();
  *(a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton) = 0;
  *(a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight) = 0;
  v9 = (a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_gameCenterIcon);
  *v9 = sub_24E222334();
  v10 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_whatsNewSubtitleView;
  *(a3 + v10) = sub_24E22243C();
  v11 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_whatsNewBullets;
  *(a3 + v11) = sub_24E2225AC();
  *(v6 + 8) = &off_286121C88;
  v44 = a1;
  swift_unknownObjectWeakAssign();
  *(a3 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_privacyLinkView) = a2;
  if (a2)
  {
    v12 = a2;
    sub_24DFD8050(0xD00000000000002DLL, 0x800000024E3AB230, v12);
    v45 = MEMORY[0x277D84F90];
    v13 = v12;
    MEMORY[0x25303EA30]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v14 = *(a3 + v8);
  MEMORY[0x25303EA30]();
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24E347F48();
  }

  sub_24E347F88();
  v15 = [objc_opt_self() local];
  v16 = sub_24E1A3090();

  if (v16)
  {
    v17 = sub_24E348C08();

    if ((v17 & 1) == 0)
    {
      v18 = sub_24E347CB8();
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v21 = sub_24E347CF8();
      v23 = v22;

      v24 = *(a3 + v10);

      v25 = v24;
      v26 = sub_24E3246E4(v21, v23, 0, 0, 0, 0, v24, v45, v45, 0);
      goto LABEL_16;
    }
  }

  else
  {
  }

  v27 = sub_24E347CB8();
  v28 = GKGameCenterUIFrameworkBundle();
  v29 = GKGetLocalizedStringFromTableInBundle();

  v30 = sub_24E347CF8();
  v32 = v31;

  sub_24E343AA8();
  v33 = sub_24E343838();
  v35 = v34;
  if (sub_24E324668())
  {
    v36 = v9;
  }

  else
  {
    v36 = v7;
  }

  v37 = *v36;

  v26 = sub_24E3246E4(v30, v32, v33, v35, 0, v37, 0, v45, v45, 0);
LABEL_16:
  v38 = v44;
  v39 = *(&v26->receiver + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_primaryTrayButton);
  v40 = v26;
  [v39 addTarget:v40 action:sel_primaryAction forControlEvents:0x2000];
  if (WelcomeOnboardingViewController.allowSignOut.getter())
  {
    v41 = [(objc_super *)v44 navigationItem];
    v42 = sub_24E2220FC();
    [v41 setLeftBarButtonItem_];
  }

  else
  {
    v42 = v44;
    v38 = v40;
  }

  return v40;
}

void OUTLINED_FUNCTION_0_134(uint64_t a1, uint64_t a2)
{

  sub_24E08FD58(v2, v4, a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_2_85(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_9_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_27(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

BOOL OUTLINED_FUNCTION_17_29(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_24()
{
}

id OUTLINED_FUNCTION_21_23(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t GKFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v5 = &type metadata for GKFeatureFlags;
  v6 = sub_24DFA0CB4();
  v4[0] = v1;
  v2 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter()
{
  v6 = &type metadata for GKFeatureFlags;
  v0 = sub_24DFA0CB4();
  v7 = v0;
  v5[0] = 10;
  v1 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v5);
  if (v1)
  {
    v6 = &type metadata for GKFeatureFlags;
    v7 = v0;
    v5[0] = 11;
    v2 = sub_24E3435A8();
    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

const char *GKFeatureFlags.domain.getter()
{
  v1 = 1 << *v0;
  v2 = "gseui";
  if ((v1 & 0xC00) == 0)
  {
    v2 = "PreferencesFramework";
  }

  if ((v1 & 0x3F3FE) != 0)
  {
    return "GameCenter";
  }

  else
  {
    return v2;
  }
}

const char *GKFeatureFlags.feature.getter()
{
  result = "boop_to_invite";
  switch(*v0)
  {
    case 1:
      result = "dashboard_container_sidebar";
      break;
    case 2:
      result = "activity_widget_compact_title";
      break;
    case 3:
      result = "activity_sharing";
      break;
    case 4:
      result = "achievement_improvements";
      break;
    case 5:
      result = "friend_invite_card_rewrite";
      break;
    case 6:
      result = "fetch_friend_code_in_extension";
      break;
    case 7:
      result = "identify_achievement_release_state";
      break;
    case 8:
      result = "easy_sign_in_sheet";
      break;
    case 9:
      return result;
    case 0xA:
      result = "de7bbd8e";
      break;
    case 0xB:
      result = "de7bbd8e_u1";
      break;
    case 0xC:
      result = "friends_who_have_this";
      break;
    case 0xD:
      result = "gameoverlayui_with_oldui";
      break;
    case 0xE:
      result = "new_friend_invite_message_card";
      break;
    case 0xF:
      result = "friending_via_push";
      break;
    case 0x10:
      result = "ma1h52";
      break;
    case 0x11:
      result = "show_asc_in_settings";
      break;
    default:
      result = "inset_table_style_enabled";
      break;
  }

  return result;
}

uint64_t GKFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

unint64_t sub_24E1A42B0()
{
  result = qword_27F1E6990;
  if (!qword_27F1E6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GKFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GKFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E1A44A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 536))
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

uint64_t sub_24E1A44E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 536) = 1;
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

    *(result + 536) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E1A45C4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = sub_24E348BC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = *(v5 + 30);
  v12 = *(v5 + 31);
  v81 = a4;
  v80 = a5;
  sub_24E348538();
  v15 = v14;
  v17 = v16;
  OUTLINED_FUNCTION_1_17(v5);
  OUTLINED_FUNCTION_13_10();
  v18 = *(v11 + 8);
  v19 = OUTLINED_FUNCTION_26_0();
  v18(v19);
  OUTLINED_FUNCTION_1_17(v5 + 5);
  OUTLINED_FUNCTION_13_10();
  v79 = v20;
  v21 = OUTLINED_FUNCTION_26_0();
  v18(v21);
  OUTLINED_FUNCTION_1_17(v5 + 10);
  OUTLINED_FUNCTION_13_10();
  v78 = v22;
  v23 = OUTLINED_FUNCTION_26_0();
  v18(v23);
  OUTLINED_FUNCTION_1_17(v5 + 15);
  OUTLINED_FUNCTION_13_10();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_26_0();
  v18(v26);
  OUTLINED_FUNCTION_1_17(v5 + 20);
  OUTLINED_FUNCTION_13_10();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_26_0();
  v18(v29);
  OUTLINED_FUNCTION_1_17(v5 + 25);
  OUTLINED_FUNCTION_13_10();
  v30 = OUTLINED_FUNCTION_26_0();
  v18(v30);
  __swift_project_boxed_opaque_existential_1(v6 + 47, v6[50]);
  sub_24E3440D8();
  v32 = v31;
  v34 = v33;
  v35 = [a1 traitCollection];
  v36 = sub_24E3483C8();

  v37 = v25 + v28;
  v38 = v12;
  v88.origin.x = v12;
  v39 = v13;
  v88.origin.y = v13;
  v40 = v15;
  v88.size.width = v15;
  v41 = v17;
  v88.size.height = v17;
  CGRectGetHeight(v88);
  OUTLINED_FUNCTION_6_63();
  v44 = v42 - v43 - v79 - (v78 + v32 - v34) - v37;
  v86[0] = v6[34];
  sub_24E343F98();
  sub_24E344198();
  v46 = v45;
  v47 = OUTLINED_FUNCTION_26_0();
  v18(v47);
  if (v46 < v44)
  {
    v44 = v46;
  }

  v48 = v38;
  v49 = v39;
  v50 = v39;
  v51 = v40;
  v52 = v40;
  v53 = v41;
  if (v36)
  {
    MinX = CGRectGetMinX(*&v48);
  }

  else
  {
    MinX = CGRectGetMidX(*&v48) + v44 * -0.5;
  }

  v89.origin.x = v38;
  v89.origin.y = v49;
  v89.size.width = v51;
  v89.size.height = v41;
  CGRectGetMinY(v89);
  OUTLINED_FUNCTION_6_63();
  v57 = v56 + v55;
  __swift_project_boxed_opaque_existential_1(v6 + 37, v6[40]);
  OUTLINED_FUNCTION_5_79();
  sub_24E348508();
  sub_24E344088();
  v90.origin.x = MinX;
  v90.origin.y = v57;
  v90.size.width = v44;
  v90.size.height = v44;
  CGRectGetMaxX(v90);
  v76 = MinX;
  v91.origin.x = MinX;
  v91.origin.y = v57;
  v91.size.width = v44;
  v91.size.height = v44;
  CGRectGetMaxY(v91);
  sub_24DF8968C((v6 + 57), v86);
  if (v87)
  {
    __swift_project_boxed_opaque_existential_1(v86, v87);
    OUTLINED_FUNCTION_5_79();
    sub_24E348508();
    sub_24E344088();
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    sub_24DF896FC(v86);
  }

  __swift_project_boxed_opaque_existential_1(v6 + 42, v6[45]);
  sub_24E3440D8();
  v59 = v58;
  OUTLINED_FUNCTION_4_72();
  v60 = CGRectGetMinX(v92);
  v93.origin.x = v76;
  v93.origin.y = v57;
  v93.size.width = v44;
  v93.size.height = v44;
  MaxY = CGRectGetMaxY(v93);
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  sub_24E3441B8();
  v63 = MaxY + v62;
  OUTLINED_FUNCTION_4_72();
  Width = CGRectGetWidth(v94);
  __swift_project_boxed_opaque_existential_1(v6 + 42, v6[45]);
  OUTLINED_FUNCTION_5_79();
  sub_24E348508();
  sub_24E344088();
  v75 = v60;
  v95.origin.x = v60;
  v95.origin.y = v63;
  v95.size.width = Width;
  v77 = v59;
  v95.size.height = v59;
  CGRectGetMaxY(v95);
  OUTLINED_FUNCTION_6_63();
  v65 = v6[13];
  v66 = v6[14];
  __swift_project_boxed_opaque_existential_1(v6 + 10, v65);
  sub_24E2548A0(v65, v66);
  sub_24E344198();
  v67 = OUTLINED_FUNCTION_26_0();
  v18(v67);
  OUTLINED_FUNCTION_4_72();
  CGRectGetMinX(v96);
  OUTLINED_FUNCTION_4_72();
  CGRectGetWidth(v97);
  __swift_project_boxed_opaque_existential_1(v6 + 47, v6[50]);
  v69 = a2;
  v68 = a3;
  sub_24E348508();
  sub_24E344088();
  sub_24DF8968C((v6 + 52), &v84);
  if (v85)
  {
    sub_24DF88BF0(&v84, v86);
    __swift_project_boxed_opaque_existential_1(v86, v87);
    sub_24E3440E8();
    OUTLINED_FUNCTION_4_72();
    if (v36)
    {
      CGRectGetMinX(*&v70);
    }

    else
    {
      CGRectGetMidX(*&v70);
    }

    v98.origin.x = v75;
    v98.origin.y = v63;
    v98.size.width = Width;
    v98.size.height = v77;
    CGRectGetMaxY(v98);
    OUTLINED_FUNCTION_6_63();
    __swift_project_boxed_opaque_existential_1(v86, v87);
    sub_24E344088();
    __swift_destroy_boxed_opaque_existential_1(v86);
    v69 = a2;
    v68 = a3;
  }

  else
  {
    sub_24DF896FC(&v84);
  }

  sub_24DF8968C((v6 + 62), &v84);
  if (v85)
  {
    sub_24DF88BF0(&v84, v86);
    __swift_project_boxed_opaque_existential_1(v86, v87);
    sub_24E3440D8();
    v99.origin.x = v69;
    v99.origin.y = v68;
    v99.size.width = v81;
    v99.size.height = v80;
    CGRectGetMaxX(v99);
    v100.origin.x = OUTLINED_FUNCTION_2_86();
    CGRectGetMinY(v100);
    __swift_project_boxed_opaque_existential_1(v86, v87);
    OUTLINED_FUNCTION_2_86();
    sub_24E348508();
    sub_24E344088();
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    sub_24DF896FC(&v84);
  }

  OUTLINED_FUNCTION_2_86();
  return sub_24E343FD8();
}

uint64_t sub_24E1A4ECC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_24E1A4F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E1A4FE4()
{
  type metadata accessor for SeeAllRecentlyPlayedGamesProfileSection();
  result = swift_allocObject();
  *(result + 16) = 275;
  return result;
}

uint64_t *sub_24E1A5010(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347458();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E347478();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_24E3433A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  memcpy(v53, __src, sizeof(v53));
  if (sub_24DF8BF80(v53) == 1)
  {
    return 0;
  }

  v18 = v53[0];
  if (v53[5] >> 62)
  {
    if (sub_24E348878())
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*((v53[5] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v19 = swift_allocObject();
  v47 = v10;
  v20 = v19;
  *(v19 + 16) = xmmword_24E367D20;
  memcpy(v52, __dst, sizeof(v52));
  sub_24DF8BF98(v52, v51);
  v21 = sub_24E347CB8();
  v46 = v7;
  v22 = v21;
  v23 = GKGameCenterUIFrameworkBundle();
  v48 = __src;
  v24 = v23;
  v25 = GKGetLocalizedStringFromTableInBundle();
  v45 = v4;
  v26 = v25;

  v43 = sub_24E347CF8();
  v28 = v27;

  memset(v51, 0, 64);
  v51[64] = -1;
  v50[3] = type metadata accessor for AppStoreContentListAction();
  v50[4] = sub_24E1A5700(&qword_27F1E5240, type metadata accessor for AppStoreContentListAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  v30 = v18;
  sub_24E3471C8();
  *boxed_opaque_existential_1 = v18;
  *(boxed_opaque_existential_1 + 8) = 0;
  boxed_opaque_existential_1[2] = 0;
  sub_24E343398();
  (*(v12 + 16))(v14, v17, v11);
  sub_24E1A5700(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v12 + 8))(v17, v11);
  v31 = type metadata accessor for DetailData();
  v20[7] = v31;
  v20[8] = sub_24E1A5700(&qword_27F1DEE80, type metadata accessor for DetailData);
  v32 = __swift_allocate_boxed_opaque_existential_1(v20 + 4);
  *(v32 + 25) = 0u;
  v32[27] = 0;
  *(v32 + 23) = 0u;
  v33 = *(v31 + 56);
  v44 = v33;
  v34 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v32 + v33, 1, 1, v34);
  v35 = v32 + *(v31 + 60);
  sub_24DF8BD34(v49, v32);
  *(v32 + 40) = 1;
  v36 = v43;
  v32[6] = v43;
  v32[7] = v28;
  v32[9] = 0;
  v32[10] = 0;
  v32[8] = 0;
  sub_24DF8C8EC(v51, (v32 + 11));
  v32[20] = 0;
  v32[21] = 0;
  *(v32 + 88) = 256;
  *v35 = 0;
  v35[8] = 0;

  sub_24DF8BDF0(v50, (v32 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24E369E30;
  strcpy((v37 + 32), "impressionType");
  *(v37 + 47) = -18;
  v38 = MEMORY[0x277D837D0];
  *(v37 + 48) = 0x74656C63696863;
  *(v37 + 56) = 0xE700000000000000;
  *(v37 + 72) = v38;
  *(v37 + 80) = 0x6973736572706D69;
  v39 = MEMORY[0x277D83B88];
  *(v37 + 88) = 0xEF7865646E496E6FLL;
  *(v37 + 96) = 0;
  *(v37 + 120) = v39;
  *(v37 + 128) = 0x657079546469;
  *(v37 + 136) = 0xE600000000000000;
  *(v37 + 144) = 0x636974617473;
  *(v37 + 152) = 0xE600000000000000;
  *(v37 + 168) = v38;
  *(v37 + 176) = 1701667182;
  *(v37 + 216) = v38;
  *(v37 + 184) = 0xE400000000000000;
  *(v37 + 192) = v36;
  *(v37 + 200) = v28;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v40 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v40);
  v41 = v47;
  sub_24E347488();
  sub_24DF8BE60(v49);
  sub_24DF8C95C(v51, &qword_27F1DEE88);
  sub_24DF8C95C(v50, &qword_27F1DEE90);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v34);
  sub_24DF8BEB4(v41, v32 + v44);
  sub_24DF8C95C(v48, &qword_27F1DEEA0);
  return v20;
}

uint64_t sub_24E1A5700(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24E1A5748(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = GKGameCenterUIFrameworkBundle();
  sub_24DFC2C38();

  v7 = v6;
  v8 = a3;
  v9 = sub_24E1A5820(a1, a2, v6, a3);
  if (!v9)
  {

    v10 = v8;
    v9 = sub_24E0AC60C(a1, a2, a3);
    if (!v9)
    {

      v11 = v10;
      v9 = sub_24E18F154(a1, a2, a3);
    }
  }

  v12 = v9;

  return v12;
}

id sub_24E1A5820(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_24E347CB8();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 withConfiguration:a4];

  return v7;
}

uint64_t type metadata accessor for TitleWithHighlights()
{
  result = qword_27F1E69A0;
  if (!qword_27F1E69A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E1A5A7C()
{
  result = qword_27F1E6998;
  if (!qword_27F1E6998)
  {
    type metadata accessor for TitleWithHighlights();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6998);
  }

  return result;
}

void sub_24E1A5B08()
{
  sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158);
  if (v0 <= 0x3F)
  {
    sub_24DF9E0E0();
    if (v1 <= 0x3F)
    {
      sub_24DFC2AD4(319, &qword_27F1E69B0, &qword_27F1E69B8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E1A5BEC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel);
  v4 = type metadata accessor for DynamicTypeLabel();
  v5 = MEMORY[0x277D22A70];
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v3;
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel);
  a1[8] = v4;
  a1[9] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel);
  a1[5] = v6;
  a1[13] = v4;
  a1[14] = v5;
  a1[10] = v7;
  v8 = qword_27F1DD978;
  v9 = v3;
  v10 = v6;
  v11 = v7;
  if (v8 != -1)
  {
    OUTLINED_FUNCTION_0_135();
    swift_once();
  }

  v12 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  v13 = __swift_project_value_buffer(v12, qword_27F20B0D8);
  v14 = a1 + *(type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout() + 28);

  return sub_24E1A7EE4(v13, v14);
}

uint64_t sub_24E1A5CD4()
{
  v0 = sub_24E344158();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  __swift_allocate_value_buffer(v4, qword_27F20B0D8);
  v5 = __swift_project_value_buffer(v4, qword_27F20B0D8);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DE0E0 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, &unk_27F20BEA0);
    v7 = *(v1 + 16);
    v7(v3, v6, v0);
    if (qword_27F1DE0A0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v0, &unk_27F20BDE0);
    v9 = &v5[v4[10]];
    v10 = *MEMORY[0x277D74418];
    *v9 = 0x6E6F46696A6F6D65;
    *(v9 + 1) = 0xE900000000000074;
    *(v9 + 2) = sub_24E1A60A0;
    *(v9 + 3) = 0;
    *(v9 + 4) = v10;
    (*(v1 + 104))();
    *v5 = xmmword_24E381190;
    *(v5 + 1) = xmmword_24E3811A0;
    (*(v1 + 32))(&v5[v4[5]], v3, v0);
    result = (v7)(&v5[v4[6]], v8, v0);
    v12 = 12.0;
    v13 = 0x4050000000000000;
  }

  else
  {
    if (qword_27F1DE0F8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v0, &unk_27F20BEE8);
    v15 = *(v1 + 16);
    v15(v3, v14, v0);
    if (qword_27F1DE0F0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v0, &unk_27F20BED0);
    v17 = &v5[v4[10]];
    v18 = *MEMORY[0x277D74418];
    *v17 = 0x6E6F46696A6F6D65;
    *(v17 + 1) = 0xE900000000000074;
    *(v17 + 2) = sub_24E1A60AC;
    *(v17 + 3) = 0;
    *(v17 + 4) = v18;
    (*(v1 + 104))();
    *v5 = xmmword_24E369960;
    *(v5 + 1) = xmmword_24E381180;
    (*(v1 + 32))(&v5[v4[5]], v3, v0);
    result = (v15)(&v5[v4[6]], v16, v0);
    v12 = 16.0;
    v13 = 0x404E000000000000;
  }

  v19 = v13;
  *&v5[v4[7]] = 0x4000000000000000;
  v20 = &v5[v4[8]];
  *v20 = v19;
  v20[1] = v19;
  *&v5[v4[9]] = v12;
  return result;
}

char *sub_24E1A60B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_avatarBackgroundImage;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v46 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel;
  if (qword_27F1DD978 != -1)
  {
    OUTLINED_FUNCTION_0_135();
    swift_once();
  }

  v14 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  v15 = __swift_project_value_buffer(v14, qword_27F20B0D8);
  v16 = v14[5];
  v17 = sub_24E344158();
  v18 = *(*(v17 - 8) + 16);
  v18(v12, v15 + v16, v17);
  OUTLINED_FUNCTION_3_33();
  v19 = *MEMORY[0x277D74368];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = objc_allocWithZone(v20);
  v22 = v19;
  *&v5[v46] = OUTLINED_FUNCTION_3_89();
  v46 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel;
  v18(v12, v15 + v14[6], v17);
  OUTLINED_FUNCTION_3_33();
  v23 = objc_allocWithZone(v20);
  *&v5[v46] = OUTLINED_FUNCTION_3_89();
  v24 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel;
  v18(v12, v15 + v14[10], v17);
  OUTLINED_FUNCTION_3_33();
  v25 = objc_allocWithZone(v20);
  *&v5[v24] = OUTLINED_FUNCTION_4_73(v12, 0);
  *&v5[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapGestureRecognizer] = 0;
  v26 = &v5[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapHandler];
  v27 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
  *v26 = 0;
  *(v26 + 1) = 0;
  v47.receiver = v5;
  v47.super_class = v27;
  v28 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = OUTLINED_FUNCTION_1_16();
  [v30 v31];
  v32 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_avatarBackgroundImage;
  v33 = *&v28[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_avatarBackgroundImage];
  sub_24DF88A8C(0, &qword_280BE0110);
  v34 = v33;
  v35 = sub_24E011930(0xD000000000000013, 0x800000024E3AB570);
  [v34 setImage_];

  sub_24DFD8050(0xD000000000000030, 0x800000024E3AB590, *&v28[v32]);
  OUTLINED_FUNCTION_11_34();
  v36 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel;
  [*&v28[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel] setAdjustsFontSizeToFitWidth_];
  [*&v28[v36] setMinimumScaleFactor_];
  sub_24DFD8050(0xD000000000000034, 0x800000024E3AB5D0, *&v28[v36]);
  OUTLINED_FUNCTION_11_34();
  v37 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel;
  v38 = *&v28[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 secondaryLabelColor];
  [v40 setTextColor_];

  v42 = [*&v28[v37] layer];
  [v42 setCompositingFilter_];

  OUTLINED_FUNCTION_10_43(*&v28[v37], "UIA.GameCenter.ActivityFeed.Leaderboard.scoreLabel");
  OUTLINED_FUNCTION_11_34();
  v43 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel;
  sub_24DFA0B40(2307825648, 0xA400000000000000, *&v28[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel]);
  OUTLINED_FUNCTION_10_43(*&v28[v43], "UIA.GameCenter.ActivityFeed.Leaderboard.emojiLabel");
  OUTLINED_FUNCTION_11_34();

  return v28;
}

void sub_24E1A6550()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_avatarBackgroundImage;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v20 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel;
  if (qword_27F1DD978 != -1)
  {
    OUTLINED_FUNCTION_0_135();
    swift_once();
  }

  v6 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  v7 = __swift_project_value_buffer(v6, qword_27F20B0D8);
  v8 = v6[5];
  v9 = sub_24E344158();
  v10 = *(*(v9 - 8) + 16);
  v10(v4, v7 + v8, v9);
  OUTLINED_FUNCTION_3_33();
  v11 = *MEMORY[0x277D74368];
  v12 = type metadata accessor for DynamicTypeLabel();
  v13 = objc_allocWithZone(v12);
  v14 = v11;
  *(v1 + v20) = OUTLINED_FUNCTION_3_89();
  v20 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel;
  v10(v4, v7 + v6[6], v9);
  OUTLINED_FUNCTION_3_33();
  v15 = objc_allocWithZone(v12);
  *(v1 + v20) = OUTLINED_FUNCTION_3_89();
  v16 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel;
  v10(v4, v7 + v6[10], v9);
  OUTLINED_FUNCTION_3_33();
  v17 = objc_allocWithZone(v12);
  *(v1 + v16) = OUTLINED_FUNCTION_4_73(v4, 0);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapGestureRecognizer) = 0;
  v18 = (v1 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapHandler);
  *v18 = 0;
  v18[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E1A67C8()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  sub_24E1A5BEC((v10 - v9));
  v12 = [v0 traitCollection];
  sub_24E1DF774(v7);
  sub_24E344A18();

  (*(v3 + 8))(v7, v1);
  sub_24E1A7F48(v11);
  OUTLINED_FUNCTION_1_16();
}

id sub_24E1A697C()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7_1();
  v11 = (v10 - v9);
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  sub_24E1A5BEC(v11);
  [v0 bounds];
  v12 = [v0 traitCollection];
  sub_24E1DF774(v7);
  OUTLINED_FUNCTION_1_16();
  sub_24E344A08();

  (*(v3 + 8))(v7, v1);
  sub_24E1A7F48(v11);
  [*&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel] frame];
  return [*&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_avatarBackgroundImage] setFrame_];
}

void sub_24E1A6BB0(uint64_t a1, void *a2)
{
  v143 = a2;
  v2 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v134 = v7 - v6;
  OUTLINED_FUNCTION_18_1();
  v130 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_7_1();
  v132 = (v9 - v8);
  OUTLINED_FUNCTION_18_1();
  v10 = sub_24E344568();
  OUTLINED_FUNCTION_0_14();
  v133 = v11;
  MEMORY[0x28223BE20](v12);
  v131 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v14);
  v145 = &v104 - v15;
  OUTLINED_FUNCTION_18_1();
  v137 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v141 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v136 = v19 - v18;
  OUTLINED_FUNCTION_18_1();
  v144 = sub_24E344388();
  OUTLINED_FUNCTION_0_14();
  v142 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v139 = &v104 - v25;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v26);
  v129 = &v104 - v27;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v104 - v32;
  MEMORY[0x28223BE20](v34);
  v135 = &v104 - v35;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v36);
  v38 = &v104 - v37;
  MEMORY[0x28223BE20](v39);
  v138 = &v104 - v40;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347128();

  v41 = v146;

  if (!v41[2])
  {
    goto LABEL_12;
  }

  v122 = v30;
  v42 = v2;
  v123 = v23;
  v124 = v10;
  v43 = v41[5];
  v44 = v41[7];
  v45 = v41[9];
  v47 = v41[11];
  v46 = v41[12];

  v48 = v46;

  if (!v47[2])
  {

LABEL_12:

    goto LABEL_13;
  }

  v128 = v38;
  v112 = v48;
  v117 = v45;
  v118 = v44;
  v119 = v43;
  v120 = v4;
  v121 = v42;
  v49 = v47[5];
  v50 = v47[9];
  v51 = v47[11];
  v53 = v47[13];
  v52 = v47[14];
  v54 = v47[16];
  v126 = v47[15];
  v111 = v47[18];

  v116 = v49;

  v115 = v50;

  v114 = v51;

  v113 = v53;

  v110 = v52;
  v140 = v54;

  v55 = v122;
  sub_24E344378();
  v56 = sub_24DF88A8C(0, &qword_27F1DEE28);
  if (qword_27F1DD978 != -1)
  {
    OUTLINED_FUNCTION_0_135();
    swift_once();
  }

  v57 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  v58 = __swift_project_value_buffer(v57, qword_27F20B0D8);
  v107 = v57;
  v59 = v141;
  v125 = v58;
  v60 = OUTLINED_FUNCTION_6_64();
  *(v61 - 256) = v62;
  v62(v60);
  v63 = [v143 traitCollection];
  v108 = v56;
  v64 = MEMORY[0x25303F0C0](v38, v63);

  v65 = *(v59 + 8);
  v141 = v59 + 8;
  v106 = v65;
  v65(v38, v53);
  sub_24E344368();

  v66 = v142;
  v67 = v33;
  v68 = *(v142 + 8);
  v69 = v144;
  v68(v55, v144);
  v70 = v135;
  sub_24E344338();
  v109 = v67;
  v68(v67, v69);
  v71 = v128;
  sub_24E344348();
  v68(v70, v69);
  v72 = v138;
  sub_24E344358();
  v127 = v68;
  v68(v71, v69);
  v74 = *(v66 + 16);
  v73 = v66 + 16;
  v75 = v129;
  v142 = v73;
  v105 = v74;
  v74(v129, v72, v69);

  v76 = sub_24E344548();
  sub_24E344558();
  sub_24E344558();
  if (sub_24E344558() != v76)
  {
    sub_24E344558();
  }

  sub_24E344578();
  sub_24E344378();
  v77 = OUTLINED_FUNCTION_6_64();
  (*(v78 - 256))(v77);
  v79 = [v143 traitCollection];
  v80 = MEMORY[0x25303F0C0](v75, v79);

  v106(v75, v73);
  v81 = v109;
  sub_24E344368();

  v82 = v144;
  v83 = v127;
  v127(v55, v144);
  v84 = v135;
  sub_24E344338();
  v83(v81, v82);
  v85 = v128;
  sub_24E344348();
  v83(v84, v82);
  v86 = v139;
  sub_24E344358();
  v83(v85, v82);
  v105(v123, v86, v82);

  v87 = sub_24E344548();
  sub_24E344558();
  sub_24E344558();
  if (sub_24E344558() != v87)
  {
    sub_24E344558();
  }

  v88 = v131;
  sub_24E344578();
  v89 = sub_24E3442D8();
  v90 = MEMORY[0x277D226E0];
  v91 = v132;
  v132[3] = v89;
  v91[4] = v90;
  __swift_allocate_boxed_opaque_existential_1(v91);
  sub_24E3442B8();
  v92 = MEMORY[0x277D227B8];
  v93 = v124;
  v91[8] = v124;
  v91[9] = v92;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91 + 5);
  v95 = v133;
  v96 = *(v133 + 16);
  v96(boxed_opaque_existential_1, v145, v93);
  v91[13] = v93;
  v91[14] = v92;
  v97 = __swift_allocate_boxed_opaque_existential_1(v91 + 10);
  v96(v97, v88, v93);
  sub_24E1A7EE4(v125, v91 + *(v130 + 28));
  v98 = [v143 traitCollection];
  v99 = v134;
  sub_24E1DF774(v134);
  v100 = v121;
  sub_24E344A18();

  (*(v120 + 8))(v99, v100);
  sub_24E1A7F48(v91);
  v101 = *(v95 + 8);
  v101(v88, v93);
  v102 = v144;
  v103 = v127;
  v127(v139, v144);
  v101(v145, v93);
  v103(v138, v102);
LABEL_13:
  OUTLINED_FUNCTION_1_16();
}

id sub_24E1A76E8()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347128();

  if (v15[2])
  {
    v1 = v15[11];
    v2 = v15[12];

    v3 = v2;

    if (v1[2])
    {
      v4 = v1[14];
      v5 = v1[18];
      v14 = *&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel];
      if (v1[16])
      {

        swift_bridgeObjectRetain_n();

        v6 = v4;
        v7 = sub_24E347CB8();
      }

      else
      {

        v8 = v4;
        v7 = 0;
      }

      [v14 setText_];

      v9 = *&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel];
      v10 = sub_24E347CB8();
      [v9 setText_];

      v11 = *&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel];
      if (v5)
      {

        v12 = sub_24E347CB8();
      }

      else
      {
        v12 = 0;
      }

      [v11 setText_];
    }

    else
    {
    }
  }

  return [v0 setNeedsLayout];
}

id sub_24E1A79EC()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_messageLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_scoreLabel) setText_];
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_emojiLabel);

  return [v1 setText_];
}

void sub_24E1A7A60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapHandler])
  {
    if (v3)
    {
      return;
    }

    v10[3] = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
    v10[0] = v0;
    v4 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v5 = v0;
    v6 = sub_24E2BE570(v10, sel_didTap);
    [v6 setNumberOfTapsRequired_];
    v7 = *&v1[v2];
    *&v1[v2] = v6;
    v9 = v6;

    [v5 addGestureRecognizer_];
    [v5 setUserInteractionEnabled_];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v9 = v3;
    [v0 removeGestureRecognizer_];
    v8 = *&v0[v2];
    *&v0[v2] = 0;

    [v0 setUserInteractionEnabled_];
  }
}

uint64_t sub_24E1A7BB0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapHandler);
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_24DF88BEC();
  sub_24DE73FA0(v5);
  sub_24E1A7A60();

  return sub_24DE73FA0(a1);
}

void sub_24E1A7C24()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI37ActivityFeedLeaderboardAvatarsSubview_tapHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

id sub_24E1A7CD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E1A7E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics()
{
  result = qword_27F1E69F0;
  if (!qword_27F1E69F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1A7EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1A7F48(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E1A7FCC()
{
  type metadata accessor for UIEdgeInsets(319);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_24E344158();
    if (v3 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

char *OUTLINED_FUNCTION_3_89()
{

  return sub_24E0AEF24(v0, v1, 1, 0, 1, 0);
}

char *OUTLINED_FUNCTION_4_73(uint64_t a1, void *a2)
{

  return sub_24E0AEF24(a1, a2, 1, 0, 1, 0);
}

void OUTLINED_FUNCTION_10_43(void *a1@<X2>, uint64_t a2@<X8>)
{

  sub_24DFD8050(0xD000000000000032, (a2 - 32) | 0x8000000000000000, a1);
}

id OUTLINED_FUNCTION_11_34()
{

  return [v0 (v1 + 2040)];
}

id sub_24E1A8148(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F28);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v36 - v15;
  [objc_msgSend(a3 container];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E1A8F38(v16, v12);
  sub_24E1A8EF0(&qword_27F1DFD30, type metadata accessor for EmptyStateData);
  sub_24E347158();
  type metadata accessor for EmptyStateView();
  v17 = static EmptyStateView.size(fitting:component:layoutEnvironment:)();
  v19 = v18;
  (*(v6 + 8))(v9, v4, v17);
  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension_];
  v22 = [v20 absoluteDimension_];
  v23 = objc_opt_self();
  v24 = [v23 sizeWithWidthDimension:v21 heightDimension:v22];

  v25 = [v24 widthDimension];
  v26 = [v24 heightDimension];
  v27 = [v23 sizeWithWidthDimension:v25 heightDimension:v26];

  v28 = [objc_opt_self() itemWithLayoutSize_];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_24E369990;
  *(v30 + 32) = v28;
  sub_24E1698C0();
  v31 = v28;
  v32 = sub_24E347EE8();

  v33 = [v29 verticalGroupWithLayoutSize:v27 subitems:v32];

  v34 = [objc_opt_self() sectionWithGroup_];
  sub_24DFE22E0(v16);
  return v34;
}

double sub_24E1A85C0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  sub_24E120A58(a1, v36 - v10);
  sub_24E120A58(a2, &v11[*(v8 + 56)]);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v12 = 0;
    v13 = 3;
  }

  else
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v14 = type metadata accessor for PlayerCardTheme();
    v12 = *(__swift_project_value_buffer(v14, qword_27F20BF00) + 64);
    v15 = v12;
    v13 = 0;
  }

  *a4 = v12;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  *(a4 + 48) = v13;
  *(a4 + 56) = -1;
  v16 = OUTLINED_FUNCTION_1_106();
  sub_24DFD7E3C(v16, v17, v18, v19, v20, v21, v22);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v23 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v23, qword_27F20BF00);
  v24 = [a3 traitCollection];
  sub_24E33670C(v24, v36);

  v25 = v36[1];
  *(a4 + 64) = v36[0];
  *(a4 + 80) = v25;
  *(a4 + 96) = v37;
  v26 = [a3 traitCollection];
  sub_24E33670C(v26, v38);

  v27 = OUTLINED_FUNCTION_1_106();
  sub_24DFEC8B4(v27, v28, v29, v30, v31, v32, v33);
  sub_24E120AC8(v11);
  result = *v38;
  v35 = v38[1];
  *(a4 + 104) = v38[0];
  *(a4 + 120) = v35;
  *(a4 + 136) = v39;
  return result;
}

double sub_24E1A87A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_24E120A58(a2, &v22 - v15);
  sub_24E120A58(a3, &v16[*(v13 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v17 = sub_24E3444F8();
  __swift_project_value_buffer(v17, qword_27F20B4E8);
  v18 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v20 = v19;

  (*(v9 + 8))(v12, v7);
  sub_24E120AC8(v16);
  return v20;
}