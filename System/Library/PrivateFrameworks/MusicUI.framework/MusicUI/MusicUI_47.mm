uint64_t sub_216B55664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  OUTLINED_FUNCTION_1();
  v66 = v4;
  v67 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v8 + 16);
  v55 = *(v8 + 32);
  type metadata accessor for CatalogPagePresenter.State();
  v9 = sub_21700F164();
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for LoadingStyleConfiguration.State();
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v57 = v16 - v15;
  v17 = *(a1 + 40);
  v18 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v58 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC38D0);
  v61 = sub_2170089F4();
  v63 = *(v61 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v56 = &v54 - v25;
  v26 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v64 = v27;
  MEMORY[0x28223BE20](v28);
  v59 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v62 = &v54 - v32;
  v33 = *(v17 + 24);
  v54 = v2;
  v33(v18, v17, v31);
  sub_216B55654();
  sub_216A40254();

  v34 = v57;
  v35 = v12;
  v36 = v60;
  sub_216B55BC4(v35, v57);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_216B55E90();
  OUTLINED_FUNCTION_0_166();
  sub_216B57338(v34, v38);
  (*(v58 + 8))(v23, AssociatedTypeWitness);
  v40 = v65;
  v39 = v66;
  (*(v66 + 16))(v65, v54, a1);
  v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *&v43 = v36;
  *(&v43 + 1) = v18;
  *&v44 = v55;
  *(&v44 + 1) = v17;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  (*(v39 + 32))(v42 + v41, v40, a1);
  OUTLINED_FUNCTION_7_5();
  v46 = sub_2166D9530(v45, &qword_27CAC38D0);
  v71 = AssociatedConformanceWitness;
  v72 = v46;
  v47 = v61;
  WitnessTable = swift_getWitnessTable();
  v49 = v59;
  v50 = v56;
  sub_21700AAF4();

  (*(v63 + 8))(v50, v47);
  v69 = WitnessTable;
  v70 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v51 = v62;
  sub_2166C24DC(v49, v26);
  v52 = *(v64 + 8);
  v52(v49, v26);
  sub_2166C24DC(v51, v26);
  return (v52)(v51, v26);
}

uint64_t sub_216B55BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for CatalogPagePresenter.State();
  v10 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_29();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  (*(v12 + 16))(&v30 - v15, a1, v10, v14);
  if (__swift_getEnumTagSinglePayload(v16, 1, v9) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v8, v16, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v21 = v31;
      sub_216B56B7C(AssociatedTypeWitness, AssociatedConformanceWitness, v31);
      v26 = OUTLINED_FUNCTION_8_74();
      v27(v26);
      (*(v5 + 8))(v8, AssociatedTypeWitness);
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v18 = OUTLINED_FUNCTION_8_74();
      v19(v18);
      (*(*(v9 - 8) + 8))(v16, v9);
      v20 = type metadata accessor for Artwork();
      v21 = v31;
      __swift_storeEnumTagSinglePayload(v31, 1, 1, v20);
LABEL_7:
      v24 = 0;
      goto LABEL_8;
    }
  }

  v22 = OUTLINED_FUNCTION_8_74();
  v23(v22);
  v24 = 1;
  v21 = v31;
LABEL_8:
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  return __swift_storeEnumTagSinglePayload(v21, v24, 1, v28);
}

uint64_t sub_216B55E90()
{
  swift_getKeyPath();
  sub_21700A3D4();
}

uint64_t sub_216B55F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CatalogPagePresenter.State();
  v10 = sub_21700F164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  type metadata accessor for PageLoadingView();
  sub_216B55654();
  sub_216A40254();

  if (__swift_getEnumTagSinglePayload(v13, 1, v9) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = (*(*(v9 - 8) + 8))(v13, v9);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_27CAB5888 != -1)
    {
      swift_once();
    }

    v16 = qword_27CAB6A48;
    v17 = sub_216B55654();
    v18 = *(*v17 + 152);
    swift_beginAccess();
    v19 = type metadata accessor for AnyProtoRequestConvertibleIntent();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v21, v17 + v18, v19);

    sub_2168E294C(v16);
    return (*(v20 + 8))(v21, v19);
  }

  return result;
}

uint64_t sub_216B56194()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B561E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CatalogPagePresenter();
    swift_getWitnessTable();
    result = sub_2170086B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216B562A8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216B563E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for LoadingStyleConfiguration.State()
{
  result = qword_280E35638;
  if (!qword_280E35638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B56694()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = type metadata accessor for PageLoadingView();
  OUTLINED_FUNCTION_36(v5);
  v7 = v0 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_216B55F04(v7, v1, v2, v3, v4);
}

uint64_t sub_216B56734(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v41 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for LoadingStyleConfiguration.State();
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38D8);
  OUTLINED_FUNCTION_36(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v25 = *(v24 + 56);
  sub_216B57068(a1, &v40 - v22, type metadata accessor for LoadingStyleConfiguration.State);
  sub_216B57068(a2, &v23[v25], type metadata accessor for LoadingStyleConfiguration.State);
  OUTLINED_FUNCTION_10_65(v23);
  if (v29)
  {
    OUTLINED_FUNCTION_10_65(&v23[v25]);
    if (v29)
    {
      OUTLINED_FUNCTION_0_166();
      v27 = v23;
LABEL_13:
      sub_216B57338(v27, v26);
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_142();
    sub_216B57068(v23, v19, v28);
    OUTLINED_FUNCTION_10_65(&v23[v25]);
    if (v29)
    {
      v30 = &qword_27CAB6D60;
      v31 = v19;
LABEL_18:
      sub_216697664(v31, v30);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_1_142();
    sub_216B57068(&v23[v25], v16, v32);
    v33 = *(v9 + 48);
    sub_216A72F5C(v19, v12);
    sub_216A72F5C(v16, &v12[v33]);
    v34 = v43;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v43);
    if (EnumTagSinglePayload == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v12[v33], 1, v34) == 1)
      {
        sub_216697664(v12, &qword_27CAB6D60);
LABEL_12:
        sub_216B57338(&v23[v25], type metadata accessor for LoadingStyleConfiguration.State);
        v27 = OUTLINED_FUNCTION_8();
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v37 = v42;
    sub_2168282D4(v12, v42, &qword_27CAB6D60);
    if (__swift_getEnumTagSinglePayload(&v12[v33], 1, v34) == 1)
    {
      sub_216B57338(v37, type metadata accessor for Artwork);
LABEL_16:
      v30 = &qword_27CABE598;
LABEL_17:
      v31 = v12;
      goto LABEL_18;
    }

    v38 = v41;
    sub_216A912E8(&v12[v33], v41);
    if ((sub_21700C4A4() & 1) == 0)
    {
      sub_216B57338(v38, type metadata accessor for Artwork);
      sub_216B57338(v37, type metadata accessor for Artwork);
      v30 = &qword_27CAB6D60;
      goto LABEL_17;
    }

    v39 = sub_21688ADC8(v37 + *(v34 + 20), v38 + *(v34 + 20));
    sub_216B57338(v38, type metadata accessor for Artwork);
    sub_216B57338(v37, type metadata accessor for Artwork);
    sub_216697664(v12, &qword_27CAB6D60);
    if (v39)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  sub_216697664(v23, &qword_27CAC38D8);
  return 0;
}

uint64_t sub_216B56B7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlaylistDetailHeaderLockup();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v19 = (*(a2 + 56))(a1, a2, v16);
  sub_216CE0B38(v19, v11);

  v20 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
  {
    sub_216697664(v11, &qword_27CABBAE0);
    v21 = type metadata accessor for MappedSection.Content(0);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v21);
LABEL_6:
    v23 = type metadata accessor for Artwork();
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v23);
    return sub_216697664(v18, &qword_27CABBB00);
  }

  sub_216B57068(&v11[*(v20 + 28)], v18, type metadata accessor for MappedSection.Content);
  sub_216B57338(v11, type metadata accessor for MappedSection);
  v22 = type metadata accessor for MappedSection.Content(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v22);
  sub_2168282D4(v18, v14, &qword_27CABBB00);
  if (swift_getEnumCaseMultiPayload() != 23)
  {
    sub_216B57338(v14, type metadata accessor for MappedSection.Content);
    goto LABEL_6;
  }

  sub_216DE9FD8();

  sub_2168282D4(&v8[*(v6 + 48)], a3, &qword_27CAB6D60);
  sub_216B57338(v8, type metadata accessor for PlaylistDetailHeaderLockup);
  return sub_216697664(v18, &qword_27CABBB00);
}

uint64_t sub_216B56E94()
{
  sub_216B57014();

  return sub_217009104();
}

uint64_t sub_216B56EDC(uint64_t a1)
{
  v2 = type metadata accessor for LoadingStyleConfiguration.State();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B57068(a1, v4, type metadata accessor for LoadingStyleConfiguration.State);
  return sub_216B56F78(v4);
}

uint64_t sub_216B56F78(uint64_t a1)
{
  v2 = type metadata accessor for LoadingStyleConfiguration.State();
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_1_142();
  sub_216B57068(a1, v6, v7);
  sub_216B57014();
  sub_217009114();
  OUTLINED_FUNCTION_0_166();
  return sub_216B57338(a1, v8);
}

unint64_t sub_216B57014()
{
  result = qword_280E3D878;
  if (!qword_280E3D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D878);
  }

  return result;
}

uint64_t sub_216B57068(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B5710C()
{
  sub_21668A38C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_216B57164()
{
  v0 = type metadata accessor for LoadingStyleConfiguration.State();
  __swift_allocate_value_buffer(v0, qword_280E3D888);
  v1 = __swift_project_value_buffer(v0, qword_280E3D888);
  v2 = type metadata accessor for Artwork();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
}

uint64_t sub_216B571FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E3D880 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LoadingStyleConfiguration.State();
  v3 = __swift_project_value_buffer(v2, qword_280E3D888);
  return sub_216B57068(v3, a1, type metadata accessor for LoadingStyleConfiguration.State);
}

uint64_t sub_216B5727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_216B572E0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_216B572E0()
{
  result = qword_280E35668[0];
  if (!qword_280E35668[0])
  {
    type metadata accessor for LoadingStyleConfiguration.State();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35668);
  }

  return result;
}

uint64_t sub_216B57338(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B573B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v96 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v101 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v88 = v14 - v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v87 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v86 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v85 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v84 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v83 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  v30 = sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  v91 = v7;
  v31 = *(v7 + 16);
  v97 = v5;
  v32 = v5;
  v33 = v101;
  v92 = v31;
  v93 = v7 + 16;
  v31(v10, v98, v32);
  v94 = v10;
  sub_21700D734();
  sub_21700CE04();
  sub_21700CDB4();
  OUTLINED_FUNCTION_21_42();
  v34 = *(v33 + 8);
  v35 = v11;
  v101 = v33 + 8;
  v95 = v34;
  v34(v3, v11);
  if (v30)
  {
    v36 = type metadata accessor for PlaylistTrackLockup();
    v99 = v3;
    v100 = v30;
    sub_21700F364();
    sub_21700CE04();
    v37 = v98;
    sub_21700D2E4();
    v89 = v35;
    v38 = a1;
    v95(v29, v35);
    v90 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v39 = v94;
    v40 = v92;
    v92(v94, v37, v97);
    v82 = sub_2166D5774(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_8_75();
    sub_21700D734();
    v41 = type metadata accessor for Artwork();
    sub_21700CE04();
    v40(v39, v37, v97);
    sub_2166D5774(&qword_280E2BF60, type metadata accessor for Artwork);
    v42 = v96;
    OUTLINED_FUNCTION_8_75();
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_21_42();
    v95(v29, v89);
    v43 = (v42 + v36[7]);
    *v43 = v29;
    v43[1] = v41;
    OUTLINED_FUNCTION_16_50();
    v80 = v38;
    sub_21700CE04();
    v44 = v97;
    v45 = v98;
    v46 = v92;
    v92(v39, v98, v97);
    sub_216AC6598();
    *(v42 + v36[8]) = v47;
    OUTLINED_FUNCTION_16_50();
    sub_21700CE04();
    v46(v94, v45, v44);
    OUTLINED_FUNCTION_8_75();
    sub_216AC6598();
    *(v42 + v36[9]) = v48;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    v49 = v80;
    sub_21700CE04();
    v50 = sub_21700CD94();
    LOBYTE(v46) = v51;
    v52 = v89;
    v53 = v95;
    v95(v29, v89);
    v54 = v42 + v36[10];
    *v54 = v50;
    *(v54 + 8) = v46 & 1;
    sub_21700CE04();
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v55 = OUTLINED_FUNCTION_8_75();
    v56 = v53;
    (v53)(v55);
    v57 = v83;
    sub_21700CE04();
    sub_21700CD44();
    v56(v57, v52);
    OUTLINED_FUNCTION_11_63(v36[11]);
    OUTLINED_FUNCTION_11_0();
    v58 = v84;
    sub_21700CE04();
    sub_21700CD44();
    v56(v58, v52);
    OUTLINED_FUNCTION_11_63(v36[12]);
    v59 = v85;
    sub_21700CE04();
    sub_21700CD44();
    v60 = v59;
    v61 = v56;
    v56(v60, v52);
    OUTLINED_FUNCTION_11_63(v36[13]);
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_21_42();
    v62 = OUTLINED_FUNCTION_8_75();
    (v56)(v62);
    v63 = (v42 + v36[14]);
    *v63 = v29;
    v63[1] = v56;
    sub_21700CE04();
    sub_21700CD44();
    v64 = OUTLINED_FUNCTION_12_56();
    (v56)(v64);
    OUTLINED_FUNCTION_11_63(v36[15]);
    sub_21700CE04();
    sub_21700CD44();
    v65 = OUTLINED_FUNCTION_12_56();
    (v56)(v65);
    OUTLINED_FUNCTION_11_63(v36[16]);
    sub_21700CE04();
    sub_21700CD44();
    v66 = OUTLINED_FUNCTION_12_56();
    (v56)(v66);
    v67 = v36;
    OUTLINED_FUNCTION_11_63(v36[18]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v68 = v98;
    v92(v94, v98, v97);
    OUTLINED_FUNCTION_13_50();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v69 = OUTLINED_FUNCTION_8_75();
    v61(v69);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v81 = v67;
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v70 = OUTLINED_FUNCTION_8_75();
    v61(v70);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v71 = OUTLINED_FUNCTION_8_75();
    v61(v71);
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_21_42();
    (*(v91 + 8))(v68, v97);
    (v61)(v49, v52);
    v72 = OUTLINED_FUNCTION_8_75();
    result = (v61)(v72);
    v74 = (v42 + v81[23]);
    *v74 = v29;
    v74[1] = v67;
  }

  else
  {
    v75 = sub_21700E2E4();
    sub_2166D5774(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v77 = v76;
    v78 = type metadata accessor for PlaylistTrackLockup();
    *v77 = 25705;
    v77[1] = 0xE200000000000000;
    v77[2] = v78;
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D22530], v75);
    swift_willThrow();
    (*(v91 + 8))(v98, v97);
    v95(a1, v11);
    return sub_216697664(v96, &qword_27CAB6D58);
  }

  return result;
}

void sub_216B57F5C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v106 = a1;
  v6 = type metadata accessor for Artwork(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v104 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v105 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  v107 = &v96 - v14;
  v15 = type metadata accessor for ContentDescriptor(0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v96 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v96 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v28 = OUTLINED_FUNCTION_36(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  if (sub_216F4FAB8())
  {
    v103 = a2;
    v97 = v19;
    v98 = v3;
    v99 = v31;
    v35 = sub_216F4F904();
    v37 = v36;
    v38 = type metadata accessor for PlaylistTrackLockup();
    v39 = v38[5];
    v108 = v35;
    v109 = v37;
    v102 = v39;
    sub_21700F364();
    OUTLINED_FUNCTION_3_111(v38[6]);
    v101 = v40;
    v41 = sub_216F50804();
    v42 = 0;
    v43 = 0;
    if (v41)
    {
      v42 = sub_216F50730();
    }

    v44 = (a3 + v38[7]);
    *v44 = v42;
    v44[1] = v43;
    v100 = v43;
    v45 = sub_216F51460();
    v46 = sub_2167A74D4();
    v47 = v110;
    v49 = sub_216F76E04(v45, v48, &type metadata for Link, v46);
    if (v47)
    {
      OUTLINED_FUNCTION_0_167();

      sub_216788110(a3 + v102);
      sub_216697664(v101, &qword_27CAB6DB0);
    }

    else
    {
      *(a3 + v38[8]) = v49;
      v52 = sub_216F51524();
      v110 = 0;
      v54 = sub_216F76E04(v52, v53, &type metadata for Link, v46);
      v55 = v103;
      *(a3 + v38[9]) = v54;
      v56 = a3 + v38[10];
      *v56 = 0;
      v57 = 1;
      *(v56 + 8) = 1;
      v58 = sub_216F50B00();
      OUTLINED_FUNCTION_15_51(v58, v38[11]);
      *(a3 + v38[12]) = 0;
      v59 = sub_216F5176C();
      OUTLINED_FUNCTION_15_51(v59, v38[13]);
      v60 = (a3 + v38[14]);
      *v60 = 0;
      v60[1] = 0;
      v61 = sub_216F51810();
      OUTLINED_FUNCTION_15_51(v61, v38[15]);
      v62 = sub_216F51958();
      OUTLINED_FUNCTION_15_51(v62, v38[16]);
      if (sub_216F51E60())
      {
        sub_216F519FC(v26);
        OUTLINED_FUNCTION_5_83();
        sub_21691A084(v26, v23, v63);
        sub_21689C518(v23, v64, v65, v66, v67, v68, v69, v70, v96, v97, SWORD1(v97), SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
        OUTLINED_FUNCTION_1_143();
        sub_216B586D8(v26, v71);
        v57 = 0;
      }

      v72 = type metadata accessor for ContentDescriptor();
      v73 = 1;
      __swift_storeEnumTagSinglePayload(v34, v57, 1, v72);
      sub_21678818C(v34, a3 + v38[17], &qword_27CAB6A00);
      v74 = sub_216F518B4();
      OUTLINED_FUNCTION_15_51(v74, v38[18]);
      OUTLINED_FUNCTION_3_111(v38[22]);
      v75 = (a3 + v38[23]);
      *v75 = v106;
      v75[1] = v55;
      v76 = sub_21700D7A4();
      __swift_storeEnumTagSinglePayload(a3, 1, 1, v76);
      OUTLINED_FUNCTION_3_111(v38[21]);
      if (sub_216F506D0())
      {
        v77 = v105;
        sub_216F50350(v105);
        v78 = v104;
        sub_21691A084(v77, v104, type metadata accessor for Artwork);
        v79 = v107;
        sub_216C7DA84(v78, v107);
        OUTLINED_FUNCTION_6_77();
        v73 = 0;
      }

      else
      {
        v79 = v107;
      }

      v80 = type metadata accessor for Artwork();
      v81 = 1;
      __swift_storeEnumTagSinglePayload(v79, v73, 1, v80);
      sub_21678818C(v79, a3 + v38[24], &qword_27CAB6D60);
      if (sub_216F50AA0())
      {
        v82 = v98;
        sub_216F5081C(v98);
        OUTLINED_FUNCTION_5_83();
        v83 = v97;
        sub_21691A084(v82, v97, v84);
        sub_21689C518(v83, v85, v86, v87, v88, v89, v90, v91, v96, v97, SWORD1(v97), SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
        OUTLINED_FUNCTION_1_143();
        sub_216B586D8(v82, v92);
        v81 = 0;
      }

      OUTLINED_FUNCTION_0_167();
      v93 = v99;
      __swift_storeEnumTagSinglePayload(v99, v81, 1, v72);
      sub_21678818C(v93, a3 + v38[25], &qword_27CAB6A00);
      *&v94 = OUTLINED_FUNCTION_3_111(v38[19]);
      v95 = a3 + v38[20];
      *(v95 + 32) = 0;
      *v95 = v94;
      *(v95 + 16) = v94;
    }
  }

  else
  {

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38E8);
    sub_2167880BC();
    swift_allocError();
    *v51 = xmmword_217014E10;
    *(v51 + 16) = v50;
    swift_willThrow();
    OUTLINED_FUNCTION_0_167();
  }
}

uint64_t sub_216B586D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7MusicUI11BadgingViewV5BadgeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for MusicUIPPT.Test.Variation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for MusicUIPPT.Test.Variation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_216B5880C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_216B58834(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_216B58874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216B588C4(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38F8);
  sub_2166D9530(&qword_27CAC3900, &qword_27CAC38F0);
  sub_216B596BC();
  sub_216B599D4();
  return sub_21700B164();
}

uint64_t sub_216B589E4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v57 = a4;
  v53 = sub_217008AD4();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3920);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3958);
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v47 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3960);
  MEMORY[0x28223BE20](v55);
  v56 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3968);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3918);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v52 = v18;
    if (v23 == 1)
    {
      v50 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3970);
      sub_216B59A98();
      sub_21700AF14();
      sub_21700B3B4();
      sub_2170083C4();
      v24 = &v10[*(v8 + 36)];
      v25 = *&__src[16];
      *v24 = *__src;
      *(v24 + 1) = v25;
      *(v24 + 2) = *&__src[32];
      sub_217008AC4();
      v26 = sub_216B59838();
      v27 = sub_216B598F0();
      v28 = v12;
      v48 = v12;
      v29 = v53;
      sub_21700A364();
      (*(v51 + 8))(v7, v29);
      sub_216697664(v10, &qword_27CAC3920);
      v30 = v49;
      v31 = v28;
      v32 = v54;
      (*(v49 + 16))(v16, v31, v54);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3850);
      sub_216B54B6C();
      *&v63 = v8;
      *(&v63 + 1) = v29;
      *&v64 = v26;
      *(&v64 + 1) = v27;
      swift_getOpaqueTypeConformance2();
      v33 = v50;
      sub_217009554();
      sub_21673D688(v33, v56);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948);
      sub_216B59748();
      sub_216B59948();
      sub_217009554();
      sub_21673D6F0(v33);
      return (*(v30 + 8))(v48, v32);
    }

    else if (v21 | v22)
    {
      LOBYTE(v58) = 1;
      v63 = xmmword_217049200;
      *&v64 = 0;
      *(&v64 + 1) = MEMORY[0x277D84F90];
      v67 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
      sub_21686BF40();
      sub_2167C4D74();
      sub_217009554();
      memcpy(v56, __src, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948);
      sub_216B59748();
      sub_216B59948();
      return sub_217009554();
    }

    else
    {
      v39 = v20;
      v40 = sub_21700AE14();
      sub_21700B3B4();
      sub_2170083C4();
      v41 = *__src;
      v42 = __src[8];
      v43 = *&__src[16];
      v44 = __src[24];
      *v16 = v40;
      *(v16 + 1) = v41;
      v16[16] = v42;
      *(v16 + 3) = v43;
      v16[32] = v44;
      *(v16 + 40) = *&__src[32];
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3850);
      sub_216B54B6C();
      v45 = sub_216B59838();
      v46 = sub_216B598F0();
      *&v63 = v8;
      *(&v63 + 1) = v53;
      *&v64 = v45;
      *(&v64 + 1) = v46;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      sub_21673D688(v39, v56);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948);
      sub_216B59748();
      sub_216B59948();
      sub_217009554();

      return sub_21673D6F0(v39);
    }
  }

  else
  {
    sub_21700DF14();
    v35 = sub_217009E54();
    KeyPath = swift_getKeyPath();
    v37 = sub_216B59498(a3 & 1);
    v38 = swift_getKeyPath();
    *&v58 = v21;
    *(&v58 + 1) = v22;
    *&v59 = 0;
    *(&v59 + 1) = MEMORY[0x277D84F90];
    *&v60 = KeyPath;
    *(&v60 + 1) = v35;
    *&v61 = v38;
    *(&v61 + 1) = v37;
    v63 = v58;
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v62 = 0;
    v67 = 0;
    sub_216B59A28(&v58, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    sub_21686BF40();
    sub_2167C4D74();
    sub_217009554();
    memcpy(v56, __src, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948);
    sub_216B59748();
    sub_216B59948();
    sub_217009554();
    return sub_216697664(&v58, &qword_27CABA1C0);
  }
}

uint64_t sub_216B59354@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3970) + 36);
  sub_21700B2D4();
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3990) + 56)] = 256;
  sub_21700B3B4();
  sub_2170083C4();
  v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3998) + 36)];
  *v6 = v12;
  *(v6 + 1) = v13;
  *(v6 + 2) = v14;
  v7 = sub_21700B3B4();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3988);
  v11 = &v5[*(result + 36)];
  *v11 = v7;
  v11[1] = v9;
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  return result;
}

uint64_t sub_216B59498(char a1)
{
  if (sub_21700B304())
  {

    return sub_21699C834(a1 & 1);
  }

  else if (a1)
  {
    if (sub_21700B304())
    {

      return sub_21700AD14();
    }

    else
    {

      return sub_21700ACC4();
    }
  }

  else
  {

    return sub_21700AD34();
  }
}

uint64_t sub_216B59534(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 1954047348;
  }

  if (a3 == 1)
  {
    return 0xD000000000000010;
  }

  if (a1 | a2)
  {
    return 0x77656976657270;
  }

  return 0x62694C6F54646461;
}

uint64_t sub_216B595B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_21700F7D4();
      }

      return 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      v8 = a6 == 2 && a4 == 1;
      if (v8 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  return a6 == 1;
}

uint64_t sub_216B59658@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B59534(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216B596BC()
{
  result = qword_27CAC3908;
  if (!qword_27CAC3908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC38F8);
    sub_216B59748();
    sub_216B59948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3908);
  }

  return result;
}

unint64_t sub_216B59748()
{
  result = qword_27CAC3910;
  if (!qword_27CAC3910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3918);
    sub_216B54B6C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3920);
    sub_217008AD4();
    sub_216B59838();
    sub_216B598F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3910);
  }

  return result;
}

unint64_t sub_216B59838()
{
  result = qword_27CAC3928;
  if (!qword_27CAC3928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3920);
    sub_2166D9530(&qword_27CAC3930, &qword_27CAC3938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3928);
  }

  return result;
}

unint64_t sub_216B598F0()
{
  result = qword_280E2AD60;
  if (!qword_280E2AD60)
  {
    sub_217008AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD60);
  }

  return result;
}

unint64_t sub_216B59948()
{
  result = qword_27CAC3940;
  if (!qword_27CAC3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3948);
    sub_21686BF40();
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3940);
  }

  return result;
}

unint64_t sub_216B599D4()
{
  result = qword_27CAC3950;
  if (!qword_27CAC3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3950);
  }

  return result;
}

uint64_t sub_216B59A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B59A98()
{
  result = qword_27CAC3978;
  if (!qword_27CAC3978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3970);
    sub_2167E947C();
    sub_2166D9530(&qword_27CAC3980, &qword_27CAC3988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3978);
  }

  return result;
}

unint64_t sub_216B59B50()
{
  result = qword_27CAC39A0;
  if (!qword_27CAC39A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC39A8);
    sub_216B596BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC39A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioBadge(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216B59CA0(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_144();
      sub_216B5A1C0();
      sub_21700A184();
      OUTLINED_FUNCTION_7_77();
      v9 = 89;
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_3_112();
      sub_216B5A1C0();
      sub_21700A184();
      OUTLINED_FUNCTION_6_78();
      sub_216983738(37);
      sub_2167B2E14();
      sub_21700A174();
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_4_91();
      sub_21678817C(v3, v2, v7 & 1);

      v24 = 146;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_3_112();
      sub_216B5A1C0();
      sub_21700A184();
      OUTLINED_FUNCTION_6_78();
      sub_216983738(36);
      sub_2167B2E14();
      sub_21700A174();
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_4_91();
      sub_21678817C(v3, v2, v7 & 1);

      v24 = 138;
LABEL_6:
      sub_216983738(v24);
      OUTLINED_FUNCTION_5_84();
      sub_21700A054();
      OUTLINED_FUNCTION_2_114();
      sub_21678817C(v7, v8, v5 & 1);
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_1_144();
      sub_216B5A1C0();
      v10 = sub_21700A184();
      v12 = v11;
      v14 = v13;
      v15 = sub_216983738(26);
      MEMORY[0x21CE9F490](v15);

      sub_2167B2E14();
      v16 = sub_21700A174();
      v18 = v17;
      v1 = v19;
      sub_21700A064();
      v21 = v20;
      v23 = v22;
      sub_21678817C(v16, v18, v1 & 1);

      sub_21678817C(v10, v12, v14 & 1);

      sub_216983738(26);
      OUTLINED_FUNCTION_5_84();
      sub_21700A054();
      OUTLINED_FUNCTION_2_114();
      sub_21678817C(v14, v21, v23 & 1);
LABEL_7:

      break;
    default:
      OUTLINED_FUNCTION_1_144();
      sub_216B5A1C0();
      sub_21700A184();
      OUTLINED_FUNCTION_7_77();
      v9 = 88;
LABEL_9:
      sub_216983738(v9);
      sub_2167B2E14();
      sub_21700A054();
      OUTLINED_FUNCTION_2_114();
      sub_21678817C(v4, v5, v6 & 1);

      break;
  }

  return v1;
}

uint64_t sub_216B59FF4(char a1)
{
  result = 0x6D744179626C6F64;
  switch(a1)
  {
    case 1:
      result = 0x64754179626C6F64;
      break;
    case 2:
      result = 0x7373656C73736F6CLL;
      break;
    case 3:
      result = 0x736F4C7365526968;
      break;
    case 4:
      result = 0x4D6C617469676964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216B5A0B4()
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

uint64_t sub_216B5A124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216B5A0B4();
  *a1 = result;
  return result;
}

unint64_t sub_216B5A158()
{
  result = qword_27CAC39B0;
  if (!qword_27CAC39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC39B0);
  }

  return result;
}

uint64_t sub_216B5A1C0()
{
  v0 = sub_21700ADC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = qword_280E29B20;
  sub_21700DF14();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280E739D0;
  sub_21700AE14();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0FE0], v0);
  v6 = sub_21700AE04();

  (*(v1 + 8))(v3, v0);
  return v6;
}

_BYTE *_s5ShapeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216B5A418()
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

uint64_t sub_216B5A464(char a1)
{
  if (!a1)
  {
    return 0x657261757173;
  }

  if (a1 == 1)
  {
    return 0x656C63726963;
  }

  return 0x6B63697262;
}

uint64_t sub_216B5A4D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216B5A418();
  *a1 = result;
  return result;
}

uint64_t sub_216B5A504@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B5A464(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216B5A534()
{
  result = qword_27CAC39B8;
  if (!qword_27CAC39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC39B8);
  }

  return result;
}

BOOL sub_216B5A588(unint64_t a1, char a2)
{
  v5 = sub_217007CA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a1 > 1;
  }

  sub_217007C94();
  v10 = sub_217007C84();
  v11 = sub_21700ED84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v22 = a1;
    v15 = sub_21700F784();
    v17 = sub_2166A85FC(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v22 = &type metadata for ArtworkShape;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DC0);
    v18 = sub_21700E594();
    v20 = sub_2166A85FC(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_216679000, v10, v11, "Unrecognized value '%s' for type '%s'", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v14, -1, -1);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

BOOL sub_216B5A7F8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216B5A588(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_216B5A830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_216679000, v7, v8, "💬 ┃┃ Observing account changes", v9, 2u);
    OUTLINED_FUNCTION_6();
  }

  v10 = v3[4];
  if (v10 && (v11 = OUTLINED_FUNCTION_12_57(), v12 = [v10 stringForKey_], v11, v12))
  {
    v13 = sub_21700E514();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_216B5ED28();
  v17 = sub_2166A6590();
  if (!v17)
  {
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v18 = v17;
  v19 = a1;
  v20 = [v17 stringValue];

  v21 = sub_21700E514();
  v16 = v22;

  if (!v15)
  {
    v15 = v16;
    a1 = v19;
    if (v16)
    {
LABEL_25:
      v25 = sub_217007C84();
      v26 = sub_21700EDA4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_216679000, v25, v26, "💬 🔄 DSID changed, resetting UserDefaults and iCloud values", v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v16 = v3;
      sub_216B5C9FC();
      sub_216B5CEEC();
LABEL_28:
      if (v10)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (!v16)
  {
    a1 = v19;
LABEL_24:

    v15 = 0;
    goto LABEL_25;
  }

  v23 = v13 == v21 && v15 == v16;
  a1 = v19;
  if (!v23)
  {
    v24 = sub_21700F7D4();

    v15 = v16;
    if (v24)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v10)
  {
LABEL_29:
    if (v15)
    {
      v16 = sub_21700E4D4();

LABEL_32:
      v28 = OUTLINED_FUNCTION_12_57();
      [v10 setObject:v16 forKey:v28];
      swift_unknownObjectRelease();

      goto LABEL_35;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

LABEL_34:

LABEL_35:
  if (!v3[5])
  {
    v29 = *MEMORY[0x277D7F8C8];
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 defaultIdentityStore];
    OUTLINED_FUNCTION_143();
    v33 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_181();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = a1;
    v34[4] = a2;
    type metadata accessor for NotificationObserver();
    v35 = OUTLINED_FUNCTION_13_51();

    OUTLINED_FUNCTION_10_66();
    v16 = v35;
    v3[5] = sub_2166B9AD0(v36, v37, v38, v39, v40, v34);
  }

  if (!v3[6])
  {
    v41 = *MEMORY[0x277CBBF00];
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_181();
    v42 = swift_allocObject();
    v42[2] = v16;
    v42[3] = a1;
    v42[4] = a2;
    type metadata accessor for NotificationObserver();
    OUTLINED_FUNCTION_13_51();

    v43 = v41;

    OUTLINED_FUNCTION_10_66();
    v3[6] = sub_2166B9AD0(v44, v45, v46, v47, v48, v42);
  }
}

uint64_t sub_216B5ACE8()
{
  if (qword_280E29C78 != -1)
  {
    swift_once();
  }

  v1 = qword_280E29C80;
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  type metadata accessor for NotificationObserver();
  OUTLINED_FUNCTION_13_51();
  v2 = v1;
  OUTLINED_FUNCTION_10_66();
  *(v0 + 56) = sub_2166B9AD0(v3, v4, v5, v6, v7, v0);
}

uint64_t sub_216B5ADB4()
{
  v1 = v0;
  v2 = *MEMORY[0x277CCA7C0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultStore];
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  OUTLINED_FUNCTION_13_51();
  OUTLINED_FUNCTION_10_66();
  *(v1 + 64) = sub_2166B9AD0(v7, v8, v9, v10, v11, v6);
}

void sub_216B5AE94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC39C0);
  OUTLINED_FUNCTION_1();
  v38 = v3;
  v39 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  OUTLINED_FUNCTION_1();
  v35 = v7;
  v36 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v34 = &v33 - v9;
  type metadata accessor for UserSocialProfileCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  v10 = v40[0];
  v11 = sub_216CAF05C();
  v12 = *(v0 + 32);
  if (v12)
  {
    v13 = sub_21700E9A4();
    v14 = sub_21700E4D4();
    [v12 setValue:v13 forKey:v14];
  }

  v15 = v10[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
  v16 = sub_2166C1BB8(v10[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state]);
  v18 = v17;
  if (v12)
  {
    v19 = sub_21700E9A4();
    v20 = sub_21700E4D4();
    OUTLINED_FUNCTION_7_78(v20);

    v21 = sub_21700E4D4();
    v22 = sub_21700E4D4();
    OUTLINED_FUNCTION_7_78(v22);
  }

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E73D20);
  sub_21700DF14();
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40[0] = v27;
    *v26 = 67240706;
    *(v26 + 4) = v11 & 1;
    *(v26 + 8) = 1026;
    *(v26 + 10) = v15;
    *(v26 + 14) = 2082;
    v28 = sub_2166A85FC(v16, v18, v40);

    *(v26 + 16) = v28;
    _os_log_impl(&dword_216679000, v24, v25, "💬 ┃┃ isSocialOnboardingAllowed? %{BOOL,public}d, isUserOnboarded? %{BOOL,public}d, socialProfileFetchState: %{public}s", v26, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_181();
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  *(v29 + 24) = v11 & 1;
  *(v29 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68);
  sub_2166EF228(&qword_280E2A2F0, &qword_27CABCD68);
  v30 = v10;
  sub_21700D1D4();
  v31 = v34;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  (*(v35 + 8))(v31, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC39C8);
  sub_2166EF228(&unk_280E2A300, qword_27CAC39C8);

  sub_21700D1D4();
  v32 = v37;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  (*(v38 + 8))(v32, v39);
  sub_216B5D910();
  LOBYTE(v40[0]) = 8;
  sub_216B5DF6C(v40);
  LOBYTE(v40[0]) = 7;
  sub_216B5DF6C(v40);
}

uint64_t sub_216B5B440(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_216B5BC90();
  v5 = v2 + *a1;
  *v5 = v4;
  *(v5 + 8) = 0;

  return a2();
}

void sub_216B5B498(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState);
  *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState) = *a1;
  v3 = v2;
  sub_216B5BDC0(&v3);
}

uint64_t sub_216B5B4D4()
{
  v6 = 7;
  v1 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastLibraryPinAddedDate);
  v2 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastLibraryPinAddedDate + 8);
  v5 = 2;
  v4 = 0;
  return sub_216B5B528(&v6, v1, v2, &v5, &v4);
}

uint64_t sub_216B5B528(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  result = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  if ((a3 & 1) == 0)
  {
    LODWORD(v15) = *a1;
    v41 = *a5;
    v16 = *(v6 + 32);
    if (v16)
    {
      LOBYTE(v45) = v15;
      DefaultsKeys.Engagement.rawValue.getter();
      v17 = sub_21700E4D4();

      v18 = [v16 integerForKey_];
    }

    else
    {
      v18 = 0;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_280E73D20);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = v18;
      _os_log_impl(&dword_216679000, v20, v21, "💬 %{public}ld previousFeatureEngagementInMilliSeconds", v22, 0xCu);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    v23 = sub_217007C84();
    v24 = sub_21700EDA4();
    v25 = v18 < 1;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v26 = 136446722;
      v44 = v15;
      DefaultsKeys.Engagement.rawValue.getter();
      v30 = sub_2166A85FC(v28, v29, &v45);
      v40 = v15;
      v39 = v14;
      v31 = v30;

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v44 = v25;
      v32 = sub_21700E594();
      v15 = sub_2166A85FC(v32, v33, &v45);

      *(v26 + 14) = v15;
      v14 = v39;
      LOBYTE(v15) = v40;
      *(v26 + 22) = 2050;
      *(v26 + 24) = a2;
      _os_log_impl(&dword_216679000, v23, v24, "💬 %{public}s changing from %{public}s -> %{public}ld", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v27, -1, -1);
      MEMORY[0x21CEA1440](v26, -1, -1);
    }

    LOBYTE(v45) = v15;
    sub_216B5E6DC(&v45, a2);
    v44 = v25;
    v43 = 0;
    v42 = v41;
    UnifiedMessages.FeatureEngagedEvent.init(oldState:newState:featureName:)(&v44, &v43, &v42, &v45);
    v34 = v45;
    v35 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v35);
    sub_21700EA34();

    v36 = sub_21700EA24();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v6;
    v37[5] = v34;
    sub_21677BDF8();
  }

  return result;
}

void sub_216B5B8E0()
{
  v4 = 8;
  v1 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastNLSQueryDate);
  v2 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastNLSQueryDate + 8);
  v3 = 1;
  sub_216B5B92C(&v4, v1, v2, &v3);
}

void sub_216B5B92C(unsigned __int8 *a1, unint64_t a2, char a3, unsigned __int8 *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  if ((a3 & 1) == 0)
  {
    LODWORD(v13) = *a1;
    LODWORD(v14) = *a4;
    v15 = *(v5 + 32);
    if (v15)
    {
      LOBYTE(v43) = v13;
      DefaultsKeys.Engagement.rawValue.getter();
      v16 = sub_21700E4D4();

      v15 = [v15 integerForKey_];

      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_280E73D20);
    v19 = sub_217007C84();
    v20 = sub_21700EDA4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = v14;
      v14 = v21;
      v22 = swift_slowAlloc();
      v42 = v13;
      v13 = v22;
      v45 = v22;
      *v14 = 136446722;
      LOBYTE(v43) = v42;
      DefaultsKeys.Engagement.rawValue.getter();
      v25 = sub_2166A85FC(v23, v24, &v45);
      v40 = a2;
      v26 = v15;
      v27 = v17;
      v28 = v25;

      *(v14 + 4) = v28;
      *(v14 + 12) = 2082;
      v43 = v26;
      v44 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0);
      v29 = sub_21700E594();
      v31 = sub_2166A85FC(v29, v30, &v45);

      *(v14 + 14) = v31;
      v17 = v27;
      v15 = v26;
      a2 = v40;
      *(v14 + 22) = 2050;
      *(v14 + 24) = a2;
      _os_log_impl(&dword_216679000, v19, v20, "💬 %{public}s changing from %{public}s -> %{public}ld", v14, 0x20u);
      swift_arrayDestroy();
      v32 = v13;
      LOBYTE(v13) = v42;
      MEMORY[0x21CEA1440](v32, -1, -1);
      v33 = v14;
      LOBYTE(v14) = v41;
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    LOBYTE(v43) = v13;
    sub_216B5E6DC(&v43, a2);
    LOBYTE(v45) = v14;
    UnifiedMessages.QueryEvent.init(name:oldState:newState:)(&v45, v15, v17, a2, &v43);
    v34 = v43;
    v35 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v35);
    sub_21700EA34();

    v36 = sub_21700EA24();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v5;
    v37[5] = v34;
    sub_21677BDF8();
  }
}

uint64_t sub_216B5BC90()
{
  v0 = sub_2170061E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170061D4();
  sub_217006174();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = round(v5 / 3600.0) * 3600000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_216B5BDC0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState;
  if (sub_21688C414())
  {
    return;
  }

  switch(*(v2 + v8))
  {
    case 1:
    case 2:
    case 3:
      v9 = 0xD00000000000001ELL;
      v10 = 0x800000021707FCA0;
      v11 = sub_21700F7D4();

      if (v11)
      {
        goto LABEL_6;
      }

      v16 = *(v2 + v8);
      v17 = 0x800000021707FCA0;
      v43 = 0xD00000000000001ELL;
      switch(v16)
      {
        case 1:
          v17 = 0xE700000000000000;
          v43 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v43 = 0x6572676F72506E69;
          v17 = 0xEA00000000007373;
          break;
        case 3:
          v43 = 0x6574656C706D6F63;
          v17 = 0xE900000000000064;
          break;
        default:
          break;
      }

      v42 = sub_21686CEE8();
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v18 = sub_217007CA4();
      __swift_project_value_buffer(v18, qword_280E73D20);
      sub_21700DF14();
      v19 = sub_217007C84();
      v20 = sub_21700EDA4();

      if (os_log_type_enabled(v19, v20))
      {
        v41 = v6;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v46 = v22;
        *v21 = 136446466;
        v23 = v22;
        switch(v7)
        {
          case 1:
            v10 = 0xE700000000000000;
            v9 = 0x6E776F6E6B6E75;
            break;
          case 2:
            v9 = 0x6572676F72506E69;
            v10 = 0xEA00000000007373;
            break;
          case 3:
            v9 = 0x6574656C706D6F63;
            v10 = 0xE900000000000064;
            break;
          default:
            break;
        }

        v25 = sub_2166A85FC(v9, v10, &v46);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v24 = v43;
        *(v21 + 14) = sub_2166A85FC(v43, v17, &v46);
        _os_log_impl(&dword_216679000, v19, v20, "💬 ┃┃ mliState changing from %{public}s -> %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEA1440](v23, -1, -1);
        MEMORY[0x21CEA1440](v21, -1, -1);

        v6 = v41;
      }

      else
      {

        v24 = v43;
      }

      v26 = *(v2 + 32);
      if (v26)
      {
        v27 = sub_21700E4D4();
        v28 = sub_21700E4D4();
        [v26 setObject:v27 forKey:v28];
      }

      if (v42)
      {
        v29 = objc_opt_self();
        v30 = [v29 defaultStore];
        v31 = sub_21700E4D4();
        sub_216B5EBF4(v24, v17, v31, v30);

        v32 = [v29 defaultStore];
        [v32 synchronize];
      }

      else
      {
      }

      v33 = *(v2 + v8);
      if (v7 == 2)
      {
        if (v33 != 3)
        {
          return;
        }

LABEL_39:
        v45 = v7;
        v44 = v33;
        UnifiedMessages.MLIEvent.init(oldState:newState:)(&v45, &v44, &v46);
        v35 = v46;
        v36 = sub_21700EA74();
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v36);
        sub_21700EA34();

        v37 = sub_21700EA24();
        v38 = swift_allocObject();
        v39 = MEMORY[0x277D85700];
        v38[2] = v37;
        v38[3] = v39;
        v38[4] = v2;
        v38[5] = v35;
        sub_21677BDF8();

        return;
      }

      if (v7 == 1 && v33 == 2)
      {
        goto LABEL_39;
      }

      return;
    default:

LABEL_6:
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v12 = sub_217007CA4();
      __swift_project_value_buffer(v12, qword_280E73D20);
      v43 = sub_217007C84();
      v13 = sub_21700ED64();
      if (os_log_type_enabled(v43, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_216679000, v43, v13, "💬 ❌ GDPR acceptance required before retrieving mliState.", v14, 2u);
        MEMORY[0x21CEA1440](v14, -1, -1);
      }

      v15 = v43;

      return;
  }
}

uint64_t sub_216B5C428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_21700EA34();
  v5[5] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B5EEB8, v7, v6);
}

uint64_t sub_216B5C4C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v2 + 32) = sub_2166AA548(0xD00000000000001CLL, 0x8000000217089580);
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  v6 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_onUserOnboardedStatusHasChangedSubscription;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  v8 = v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastLibraryPinAddedDate;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastNLSQueryDate;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState) = 0;
  *(v3 + 16) = a2;
  type metadata accessor for CloudAccountStatusController();
  sub_21700D4D4();

  sub_21700E094();

  *(v3 + 72) = v11;
  swift_weakAssign();

  *(v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState) = 0;
  return v3;
}

uint64_t UnifiedMessages.DataStore.deinit()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_onUserOnboardedStatusHasChangedSubscription;
  sub_21692A9F0(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_onUserOnboardedStatusHasChangedSubscription, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21669987C(v4, &unk_27CABFB90);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    type metadata accessor for UserSocialProfileCoordinator();
    sub_21700D4D4();

    sub_21700E094();

    v12 = v14[1];

    sub_21700CC24();

    (*(v7 + 8))(v10, v5);
  }

  swift_weakDestroy();

  sub_21669987C(v1 + v11, &unk_27CABFB90);
  return v1;
}

uint64_t UnifiedMessages.DataStore.__deallocating_deinit()
{
  UnifiedMessages.DataStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for UnifiedMessages.DataStore()
{
  result = qword_280E416E0;
  if (!qword_280E416E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B5C914()
{
  sub_21692A98C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216B5C9FC()
{
  v1 = *(v0 + 32);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  v3 = 0;
  v4 = &unk_28290DDC0;
  v16 = v1;
  do
  {
    v5 = v4[v3 + 32];
    __swift_project_value_buffer(v2, qword_280E73D20);
    v6 = sub_217007C84();
    v7 = sub_21700ED64();
    if (!os_log_type_enabled(v6, v7))
    {

      if (!v1)
      {
        goto LABEL_22;
      }

LABEL_20:
      switch(v5)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
          v15 = sub_21700E4D4();

          [v1 removeObjectForKey_];

          break;
        default:
          JUMPOUT(0);
      }

      goto LABEL_22;
    }

    v8 = v2;
    v9 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089560, &v17);
    *(v10 + 12) = 2080;
    v12 = 0xE800000000000000;
    v13 = 0x6574617453696C6DLL;
    switch(v5)
    {
      case 1:
        v13 = 0xD00000000000001FLL;
        v12 = 0x800000021707F4E0;
        break;
      case 2:
        v13 = 0xD000000000000019;
        v12 = 0x800000021707F500;
        break;
      case 3:
        v13 = 0xD000000000000022;
        v12 = 0x800000021707F520;
        break;
      case 4:
        v13 = 0xD000000000000015;
        v12 = 0x800000021707F550;
        break;
      case 5:
        v13 = 0xD000000000000011;
        v12 = 0x800000021707F570;
        break;
      case 6:
        v13 = 0xD000000000000019;
        v12 = 0x800000021707F590;
        break;
      case 7:
        v13 = 0xD000000000000017;
        v12 = 0x800000021707F5B0;
        break;
      case 8:
        v13 = 0xD000000000000010;
        v12 = 0x800000021707F5D0;
        break;
      case 9:
        break;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x800000021707F5F0;
        break;
      case 11:
        v13 = 0xD000000000000017;
        v12 = 0x800000021707F610;
        break;
      default:
        v13 = 0xD000000000000020;
        v12 = 0x800000021707F4B0;
        break;
    }

    v14 = sub_2166A85FC(v13, v12, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_216679000, v6, v7, "💬 🔄 %s Active user changed, resetting %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);

    v4 = v9;
    v2 = v8;
    v1 = v16;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_22:
    ++v3;
  }

  while (v3 != 12);
}

void sub_216B5CEEC()
{
  if (!sub_21686CEE8())
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v0 = sub_217007CA4();
    __swift_project_value_buffer(v0, qword_280E73D20);
    v1 = sub_217007C84();
    v2 = sub_21700ED64();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2166A85FC(0x53564B7465736572, 0xEA00000000002928, &v12);
      _os_log_impl(&dword_216679000, v1, v2, "💬 🔄 %s iCloud account signed out, resetting KVS", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x21CEA1440](v4, -1, -1);
      MEMORY[0x21CEA1440](v3, -1, -1);
    }

    v5 = objc_opt_self();
    v6 = [v5 defaultStore];
    v7 = sub_21700E4D4();
    [v6 removeObjectForKey_];

    v8 = [v5 defaultStore];
    v9 = sub_21700E4D4();
    [v8 removeObjectForKey_];

    v10 = [v5 defaultStore];
    v11 = sub_21700E4D4();
    [v10 removeObjectForKey_];
  }
}

uint64_t sub_216B5D164(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, const char *a5, void (*a6)(void))
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = sub_217007CA4();
  __swift_project_value_buffer(v9, qword_280E73D20);
  v10 = sub_217007C84();
  v11 = sub_21700EDA4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_216679000, v10, v11, a5, v12, 2u);
    OUTLINED_FUNCTION_6();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    a6();
  }

  return a3(Strong);
}

uint64_t sub_216B5D28C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = 3;
    sub_216B5B498(&v1);
  }

  return result;
}

uint64_t sub_216B5D2F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_217005964())
    {
      if (qword_280E416F8 != -1)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v1 = sub_217007CA4();
        __swift_project_value_buffer(v1, qword_280E73D20);
        v2 = sub_217007C84();
        v3 = sub_21700EDA4();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = swift_slowAlloc();
          v5 = swift_slowAlloc();
          v11[0] = v5;
          *v4 = 136315138;
          *(v4 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089540, v11);
          _os_log_impl(&dword_216679000, v2, v3, "💬 %s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v5);
          MEMORY[0x21CEA1440](v5, -1, -1);
          MEMORY[0x21CEA1440](v4, -1, -1);
        }

        v10 = sub_21700E514();
        sub_21700F364();
        sub_216934FBC();

        sub_216788110(v11);
        if (!v13)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        if ((swift_dynamicCast() & 1) == 0)
        {
        }

        v6 = 0;
        v7 = *(v10 + 16);
        for (i = (v10 + 40); ; i += 2)
        {
          if (v7 == v6)
          {
          }

          if (v6 >= *(v10 + 16))
          {
            break;
          }

          ++v6;
          v9 = *i;
          v11[0] = *(i - 1);
          v11[1] = v9;
          sub_21700DF14();
          sub_216B5D590(v11);
        }

        __break(1u);
LABEL_17:
        swift_once();
      }

      return sub_21669987C(v12, &unk_27CABF7A0);
    }

    else
    {
    }
  }

  return result;
}

void sub_216B5D590(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73D20);
  sub_21700DF14();
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089540, &v16);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2166A85FC(v2, v1, &v16);
    _os_log_impl(&dword_216679000, v4, v5, "💬 %s Key '%s' has changed", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v7, -1, -1);
    MEMORY[0x21CEA1440](v6, -1, -1);
  }

  v8 = v2 == 0x6574617453696C6DLL && v1 == 0xE800000000000000;
  if (v8 || (sub_21700F7D4() & 1) != 0)
  {
    sub_216B5D910();
    return;
  }

  v9 = v2 == 0xD000000000000017 && 0x800000021707F5B0 == v1;
  if (v9 || (sub_21700F7D4() & 1) != 0)
  {
    v10 = 7;
LABEL_17:
    LOBYTE(v16) = v10;
    sub_216B5DF6C(&v16);
    return;
  }

  v11 = v2 == 0xD000000000000010 && 0x800000021707F5D0 == v1;
  if (v11 || (sub_21700F7D4() & 1) != 0)
  {
    v10 = 8;
    goto LABEL_17;
  }

  sub_21700DF14();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089540, &v16);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2166A85FC(v2, v1, &v16);
    _os_log_impl(&dword_216679000, v12, v13, "💬 %s Unknown key %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }
}

void sub_216B5D910()
{
  v1 = v0;
  if (sub_21686CEE8() && (v2 = [objc_opt_self() defaultStore], v3 = sub_21700E4D4(), v4 = objc_msgSend(v2, sel_stringForKey_, v3), v2, v3, v4))
  {
    v5 = sub_21700E514();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v1 + 32);
  if (v8 && (v9 = sub_21700E4D4(), v10 = [v8 stringForKey_], v9, v10))
  {
    v11 = sub_21700E514();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E73D20);
  sub_21700DF14();
  sub_21700DF14();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();

  v43 = v11;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v17 = 136446466;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
    v18 = sub_21700E594();
    v20 = sub_2166A85FC(v18, v19, &v46);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v44 = v5;
    v45 = v7;
    sub_21700DF14();
    v21 = sub_21700E594();
    v23 = sub_2166A85FC(v21, v22, &v46);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_216679000, v15, v16, "💬 ┃┃ mliState UserDefaults: %{public}s, NSUbiquitousKeyValueStore: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v42, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  if (v13)
  {
    v24 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v24 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      sub_21700DF14();

      v25 = sub_21700F5E4();

      if (v25 <= 3)
      {
        LOBYTE(v44) = v25;
        sub_216B5B498(&v44);
LABEL_26:

        return;
      }

      sub_21700DF14();
      v28 = sub_217007C84();
      v29 = sub_21700ED84();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45 = v13;
        v46 = v31;
        *v30 = 136446210;
        v44 = v43;
        sub_21700DF14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
        v32 = sub_21700E594();
        v34 = sub_2166A85FC(v32, v33, &v46);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_216679000, v28, v29, "💬 UserDefaults mliState=%{public}s is not a valid mliState value", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x21CEA1440](v31, -1, -1);
        MEMORY[0x21CEA1440](v30, -1, -1);
      }

      goto LABEL_36;
    }
  }

  if (v7)
  {
    v26 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v26 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      swift_bridgeObjectRetain_n();
      v27 = sub_21700F5E4();

      if (v27 <= 3)
      {

        LOBYTE(v44) = v27;
        sub_216B5B498(&v44);
        goto LABEL_26;
      }

      sub_21700DF14();
      v28 = sub_217007C84();
      v38 = sub_21700ED84();

      if (!os_log_type_enabled(v28, v38))
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_37;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136446210;
      v41 = sub_2166A85FC(v5, v7, &v44);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_216679000, v28, v38, "💬 NSUbiquitousKeyValueStore mliState=%{public}s is not a valid mliState value", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x21CEA1440](v40, -1, -1);
      MEMORY[0x21CEA1440](v39, -1, -1);
LABEL_36:

LABEL_37:

      return;
    }
  }

  v35 = sub_217007C84();
  v36 = sub_21700EDA4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_216679000, v35, v36, "💬 Setting mliState=unknown", v37, 2u);
    MEMORY[0x21CEA1440](v37, -1, -1);
  }

  LOBYTE(v44) = 1;
  sub_216B5B498(&v44);
}

void sub_216B5DF6C(char *a1)
{
  v2 = *a1;
  v3 = 0.0;
  v4 = 0.0;
  if (sub_21686CEE8())
  {
    v5 = [objc_opt_self() defaultStore];
    LOBYTE(v28) = v2;
    DefaultsKeys.Engagement.rawValue.getter();
    v6 = sub_21700E4D4();

    [v5 doubleForKey_];
    v4 = v7;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    LOBYTE(v28) = v2;
    DefaultsKeys.Engagement.rawValue.getter();
    v9 = sub_21700E4D4();

    [v8 doubleForKey_];
    v3 = v10;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73D20);
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315650;
    DefaultsKeys.Engagement.rawValue.getter();
    v18 = sub_2166A85FC(v16, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2050;
    *(v14 + 14) = v3;
    *(v14 + 22) = 2050;
    *(v14 + 24) = v4;
    _os_log_impl(&dword_216679000, v12, v13, "💬 ┃┃ %s UserDefaults: %{public}f, NSUbiquitousKeyValueStore: %{public}f", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  if (v4 > v3)
  {
    v3 = v4;
  }

  if (v3 > 0.0)
  {
    if (v8)
    {
      v19 = sub_21700EB54();
      LOBYTE(v28) = v2;
      DefaultsKeys.Engagement.rawValue.getter();
      v20 = sub_21700E4D4();

      [v8 setValue:v19 forKey:v20];
    }

    oslog = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315394;
      DefaultsKeys.Engagement.rawValue.getter();
      v26 = sub_2166A85FC(v24, v25, &v28);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2050;
      *(v22 + 14) = v3;
      _os_log_impl(&dword_216679000, oslog, v21, "💬 ┃ Setting %s %{public}f", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x21CEA1440](v23, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_216B5E314(unsigned __int8 *a1, uint64_t a2, char a3, void *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 32);
    v9 = v8;

    if (v8)
    {
      v10 = sub_21700E9A4();
      v11 = sub_21700E4D4();
      [v9 setValue:v10 forKey:v11];
    }
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E73D20);
  v13 = a4;
  v14 = sub_217007C84();
  v15 = sub_21700EDA4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 67240706;
    *(v16 + 4) = a3 & 1;
    *(v16 + 8) = 1026;
    *(v16 + 10) = v6;
    *(v16 + 14) = 2082;
    v18 = sub_2166C1BB8(*(v13 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state));
    v20 = sub_2166A85FC(v18, v19, &v21);

    *(v16 + 16) = v20;
    _os_log_impl(&dword_216679000, v14, v15, "💬 onUserOnboardedStatusHasChanged: isSocialOnboardingAllowed? %{BOOL,public}d, isUserOnboarded? %{BOOL,public}d, socialProfileFetchState: %{public}s", v16, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }
}

void sub_216B5E530(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = sub_21700E4D4();
    v6 = sub_21700E4D4();
    [v4 setValue:v5 forKey:v6];
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_280E73D20);
  sub_21700DF14();
  oslog = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2166A85FC(v2, v3, &v12);
    _os_log_impl(&dword_216679000, oslog, v8, "💬 onUserProfileCoordinatorFetchStateChange: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }
}

void sub_216B5E6DC(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = sub_21700EBE4();
    DefaultsKeys.Engagement.rawValue.getter();
    v7 = sub_21700E4D4();

    [v5 setValue:v6 forKey:v7];
  }

  if (sub_21686CEE8())
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_280E73D20);
    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_2166A85FC(0xD000000000000026, 0x8000000217089510, &v21);
      *(v11 + 12) = 2082;
      DefaultsKeys.Engagement.rawValue.getter();
      v15 = sub_2166A85FC(v13, v14, &v21);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2050;
      *(v11 + 24) = a2;
      _os_log_impl(&dword_216679000, v9, v10, "💬 %s storing %{public}s in NSUbiquitousKeyValueStore: %{public}ld", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v12, -1, -1);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }

    v16 = objc_opt_self();
    v17 = [v16 defaultStore];
    v18 = sub_21700EBE4();
    v22 = v4;
    DefaultsKeys.Engagement.rawValue.getter();
    v19 = sub_21700E4D4();

    [v17 setObject:v18 forKey:v19];

    v20 = [v16 defaultStore];
    [v20 synchronize];
  }
}

uint64_t sub_216B5E9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_21700EA34();
  v5[5] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B5EA44, v7, v6);
}

uint64_t sub_216B5EA44()
{

  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
    v4 = sub_21700DF14();
    sub_2169FD23C(v4);

    v5 = sub_21700E344();

    v6 = [v3 enqueueData_];
  }

  **(v0 + 16) = v2 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_216B5EB5C()
{
  OUTLINED_FUNCTION_4_92();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_145(v1);

  return sub_216B5C428(v3, v4, v5, v6, v7);
}

void sub_216B5EBF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21700E4D4();

  [a4 setString:v6 forKey:a3];
}

uint64_t sub_216B5EC68()
{
  OUTLINED_FUNCTION_4_92();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_145(v1);

  return sub_216B5C428(v3, v4, v5, v6, v7);
}

unint64_t sub_216B5ED28()
{
  result = qword_280E29BF0;
  if (!qword_280E29BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29BF0);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216B5EE20()
{
  OUTLINED_FUNCTION_4_92();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_145(v1);

  return sub_216B5E9A8(v3, v4, v5, v6, v7);
}

uint64_t sub_216B5EEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for AppDestinationPageView();
  (*(*(a4 - 8) + 32))(a5 + v11[9], a2, a4);
  sub_216B46938(a3, a5 + v11[10]);
  v12 = (a5 + v11[11]);
  type metadata accessor for MusicStackAuthority();
  sub_216B5EFF0();
  result = sub_217008CF4();
  *v12 = result;
  v12[1] = v14;
  return result;
}

unint64_t sub_216B5EFF0()
{
  result = qword_280E46D08;
  if (!qword_280E46D08)
  {
    type metadata accessor for MusicStackAuthority();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46D08);
  }

  return result;
}

void sub_216B5F048()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MusicAppDestinationContext(319);
      if (v2 <= 0x3F)
      {
        sub_2166B49AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216B5F118(_DWORD *a1, unsigned int a2, uint64_t a3)
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
  v18 = *(*(v10 - 8) + 64);
  if (v12)
  {
    v19 = 7;
  }

  else
  {
    v19 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v10;
  v21 = *(v5 + 64) + v15;
  v22 = v17 | 7;
  v23 = v17 + 40;
  result = a1;
  if (v14 >= a2)
  {
LABEL_36:
    if (v6 == v14)
    {
      v32 = v6;
      v33 = AssociatedTypeWitness;
    }

    else
    {
      result = (a1 + v21) & ~v15;
      if (v8 != v14)
      {
        if (v13 > 0x7FFFFFFE)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v23 + ((result + v16 + v22) & ~v22)) & ~v17, v12, v20);
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
          v34 = *(((result + v16 + v22) & ~v22) + 0x18);
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

      v32 = v8;
      v33 = v4;
    }

    return __swift_getEnumTagSinglePayload(result, v32, v33);
  }

  v25 = ((v19 + v18 + (v23 & ~v17) + ((v22 + v16 + (v21 & ~v15)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v14 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  switch(v28)
  {
    case 1:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 3:
      __break(1u);
      return result;
    case 4:
      v29 = *(a1 + v25);
      if (!v29)
      {
        goto LABEL_36;
      }

LABEL_33:
      v30 = v29 - 1;
      if ((v25 & 0xFFFFFFF8) != 0)
      {
        v30 = 0;
        v31 = *a1;
      }

      else
      {
        v31 = 0;
      }

      result = v14 + (v31 | v30) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_216B5F43C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v42 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v42 - 8);
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
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v5 + 64) + v17;
  v19 = *(v7 + 64);
  v20 = *(v12 + 80);
  v21 = v20 | 7;
  v22 = v20 + 40;
  v23 = (v20 + 40) & ~v20;
  if (v13)
  {
    v24 = *(*(v10 - 8) + 64);
  }

  else
  {
    v24 = *(*(v10 - 8) + 64) + 1;
  }

  v25 = v23 + v24;
  v26 = ((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a3 - v16 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v29 = a2 - v16;
    }

    else
    {
      v29 = 1;
    }

    if (((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v30 = ~v16 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v26) = v29;
        break;
      case 2:
        *(a1 + v26) = v29;
        break;
      case 3:
        goto LABEL_79;
      case 4:
        *(a1 + v26) = v29;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v17;
  v32 = ~v21;
  v33 = ~v20;
  v34 = a1;
  switch(v11)
  {
    case 1:
      *(a1 + v26) = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 2:
      *(a1 + v26) = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 3:
LABEL_79:
      __break(1u);
      return;
    case 4:
      *(a1 + v26) = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v6 == v16)
      {
        v35 = a2;
        v13 = v6;
        v10 = AssociatedTypeWitness;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v34, v35, v13, v10);
        return;
      }

      v34 = (a1 + v18) & v31;
      if (v8 == v16)
      {
        v35 = a2;
        v13 = v8;
        v10 = v42;
        goto LABEL_46;
      }

      v36 = ((v34 + v19 + v21) & v32);
      if (v15 >= a2)
      {
        if (v14 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *(((v34 + v19 + v21) & v32) + 0x20) = 0;
            *v36 = 0u;
            *(((v34 + v19 + v21) & v32) + 0x10) = 0u;
            *v36 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v34 + v19 + v21) & v32) + 0x18) = a2;
          }

          return;
        }

        v36 = (&v36[v22] & v33);
        if (v14 >= a2)
        {
          v35 = a2 + 1;
          v34 = v36;
          goto LABEL_46;
        }

        if (v24 <= 3)
        {
          v40 = ~(-1 << (8 * v24));
        }

        else
        {
          v40 = -1;
        }

        if (v24)
        {
          v38 = v40 & (~v14 + a2);
          if (v24 <= 3)
          {
            v41 = v24;
          }

          else
          {
            v41 = 4;
          }

          bzero(v36, v24);
          switch(v41)
          {
            case 2:
LABEL_73:
              *v36 = v38;
              break;
            case 3:
LABEL_76:
              *v36 = v38;
              v36[2] = BYTE2(v38);
              break;
            case 4:
LABEL_77:
              *v36 = v38;
              break;
            default:
LABEL_60:
              *v36 = v38;
              break;
          }
        }
      }

      else
      {
        if (v25 <= 3)
        {
          v37 = ~(-1 << (8 * v25));
        }

        else
        {
          v37 = -1;
        }

        if (v25)
        {
          v38 = v37 & (~v15 + a2);
          if (v25 <= 3)
          {
            v39 = v23 + v24;
          }

          else
          {
            v39 = 4;
          }

          bzero(((v34 + v19 + v21) & v32), v25);
          switch(v39)
          {
            case 2:
              goto LABEL_73;
            case 3:
              goto LABEL_76;
            case 4:
              goto LABEL_77;
            default:
              goto LABEL_60;
          }
        }
      }

      return;
  }
}

uint64_t sub_216B5F8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v62 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v61 = v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v53 - v12;
  MEMORY[0x28223BE20](v13);
  v60 = &v53 - v14;
  v15 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v15 - 8);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v54 = v18;
  v55 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = &v53 - v19;
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AppDestinationViewControllerRepresentable();
  OUTLINED_FUNCTION_1();
  v58 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v56 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v53 - v31;
  v67 = v7;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v65 = v34;
  v66 = v33;
  v35 = MEMORY[0x28223BE20](v33);
  v64 = &v53 - v36;
  v37 = *(a1 + 36);
  if ((*(v5 + 152))(v6, v5, v35))
  {
    (*(v53 + 16))(v22, v3 + v37, v6);
    (*(v54 + 16))(v63, v3, v55);
    v38 = v57;
    sub_216B479C0(v3 + *(a1 + 40), v57);
    v39 = *(v3 + *(a1 + 44));
    if (v39)
    {
      sub_216B5FF58(v22, v63, v38, v39, v6, v29);
      OUTLINED_FUNCTION_0_169();
      swift_getWitnessTable();
      sub_2166C24DC(v29, v23);
      v40 = *(v58 + 8);

      v40(v29, v23);
      v41 = v56;
      sub_2166C24DC(v32, v23);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v43 = v64;
      sub_2166C2718();
      v40(v41, v23);
      v40(v32, v23);
LABEL_6:
      WitnessTable = swift_getWitnessTable();
      v70 = AssociatedConformanceWitness;
      OUTLINED_FUNCTION_6_1();
      v51 = v66;
      swift_getWitnessTable();
      sub_2166C24DC(v43, v51);
      return (*(v65 + 8))(v43, v51);
    }
  }

  else
  {
    v44 = *(v3 + *(a1 + 44));
    if (v44)
    {
      v45 = *(v5 + 104);

      v46 = v59;
      v45(v3, v44, v6, v5);

      v47 = v67;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v48 = v60;
      sub_2166C24DC(v46, v47);
      v49 = *(v62 + 8);
      v49(v46, v47);
      v50 = v61;
      sub_2166C24DC(v48, v47);
      OUTLINED_FUNCTION_0_169();
      swift_getWitnessTable();
      v43 = v64;
      sub_2166C2CB0();
      v49(v50, v47);
      v49(v48, v47);
      goto LABEL_6;
    }
  }

  type metadata accessor for MusicStackAuthority();
  sub_216B5EFF0();
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216B5FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for AppDestinationViewControllerRepresentable();
  v11 = v10[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6 + v11, a2, AssociatedTypeWitness);
  result = sub_216B46938(a3, a6 + v10[10]);
  *(a6 + v10[11]) = a4;
  return result;
}

uint64_t sub_216B60078()
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
        AssociatedTypeWitness = type metadata accessor for MusicStackAuthority();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_216B60158(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
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
  v22 = v18 + ((v17 + 40) & ~v17) + 7;
  result = a1;
  if (v14 >= a2)
  {
LABEL_36:
    if (v6 == v14)
    {
      v31 = v6;
      v32 = v4;
    }

    else
    {
      result = (a1 + v20) & ~v15;
      if (v8 != v14)
      {
        v33 = (result + v16 + v21) & ~v21;
        if (v13 == v14)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v17 + 40 + v33) & ~v17, v12, v19);
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
          v35 = *((v22 + v33) & 0xFFFFFFFFFFFFFFF8);
          if (v35 >= 0xFFFFFFFF)
          {
            LODWORD(v35) = -1;
          }

          return (v35 + 1);
        }
      }

      v31 = v8;
      v32 = AssociatedTypeWitness;
    }

    return __swift_getEnumTagSinglePayload(result, v31, v32);
  }

  v24 = ((v22 + ((v21 + v16 + (v20 & ~v15)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v24 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v14 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2:
      v28 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(a1 + v24);
      if (!v28)
      {
        goto LABEL_36;
      }

LABEL_33:
      v29 = v28 - 1;
      if ((v24 & 0xFFFFFFF8) != 0)
      {
        v29 = 0;
        v30 = *a1;
      }

      else
      {
        v30 = 0;
      }

      result = v14 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_216B60474(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v44 = *(a4 + 16);
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
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(v7 + 80);
  v18 = *(v5 + 64) + v17;
  v19 = *(v7 + 64);
  v20 = *(v12 + 80);
  v21 = v20 | 7;
  v22 = v20 + 40;
  v23 = (v20 + 40) & ~v20;
  v24 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v24;
  }

  v25 = v23 + v24;
  v26 = v23 + v24 + 7;
  v27 = ((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a3)
  {
    if (((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a3 - v16 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v30 = a2 - v16;
    }

    else
    {
      v30 = 1;
    }

    if (((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v31 = ~v16 + a2;
      bzero(a1, v27);
      *a1 = v31;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v27) = v30;
        break;
      case 2:
        *(a1 + v27) = v30;
        break;
      case 3:
        goto LABEL_73;
      case 4:
        *(a1 + v27) = v30;
        break;
      default:
        return;
    }

    return;
  }

  v32 = ~v17;
  v33 = ~v21;
  v34 = ~v20;
  v35 = a1;
  switch(v11)
  {
    case 1:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 2:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 3:
LABEL_73:
      __break(1u);
      return;
    case 4:
      *(a1 + v27) = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v6 == v16)
      {
        v36 = a2;
        v13 = v6;
        v10 = v44;
LABEL_48:

        __swift_storeEnumTagSinglePayload(v35, v36, v13, v10);
        return;
      }

      v35 = (a1 + v18) & v32;
      if (v8 == v16)
      {
        v36 = a2;
        v13 = v8;
        v10 = AssociatedTypeWitness;
        goto LABEL_48;
      }

      v37 = (v35 + v19 + v21) & v33;
      if (v14 != v16)
      {
        v41 = ((v26 + v37) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v42 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v42 = a2 - 1;
        }

        *v41 = v42;
        return;
      }

      if (v15 >= a2)
      {
        v35 = (v22 + v37) & v34;
        v36 = a2 + 1;
        goto LABEL_48;
      }

      if (v25 <= 3)
      {
        v38 = ~(-1 << (8 * v25));
      }

      else
      {
        v38 = -1;
      }

      if (v25)
      {
        v39 = v38 & (~v15 + a2);
        if (v25 <= 3)
        {
          v40 = v25;
        }

        else
        {
          v40 = 4;
        }

        bzero(((v35 + v19 + v21) & v33), v25);
        switch(v40)
        {
          case 2:
            *v37 = v39;
            break;
          case 3:
            *v37 = v39;
            *(v37 + 2) = BYTE2(v39);
            break;
          case 4:
            *v37 = v39;
            break;
          default:
            *v37 = v39;
            break;
        }
      }

      return;
  }
}

uint64_t sub_216B608BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_216B60938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_216B609B4()
{
  swift_getWitnessTable();
  sub_217009AF4();
  __break(1u);
}

uint64_t *sub_216B60A3C(uint64_t **a1)
{
  v2 = *a1;
  v3 = sub_216B61A50();
  v4 = sub_21700DF14();
  v6 = sub_216F76E04(v4, v5, &type metadata for ReplayPageResponse.FacetItem, v3);
  if (v1)
  {
    OUTLINED_FUNCTION_4_93();
  }

  else
  {
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v7 = sub_21700DF14();
    sub_216F76E04(v7, v8, &type metadata for ReplayPageResponse.FacetItem, v3);
    type metadata accessor for ReplayYearPeriodList(0);
    sub_21700DF14();
    OUTLINED_FUNCTION_4_93();
  }

  return v2;
}

uint64_t sub_216B60B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v36 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v39 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v34 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v35 = &v32 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v40 = a1;
  sub_21700CE04();
  v19 = *(v6 + 16);
  v38 = v4;
  v19(v11, a2, v4);
  sub_216B61D0C();
  v20 = v37;
  v21 = sub_21700E924();
  if (v20)
  {
    (*(v6 + 8))(a2, v38);
    return (*(v13 + 8))(v40, v39);
  }

  else
  {
    v32 = v21;
    v33 = v13;
    v37 = v6;
    v23 = a2;
    v24 = v40;
    sub_21700CE04();
    v25 = v38;
    v19(v36, v23, v38);
    sub_21700E924();
    sub_21700DF14();
    v26 = v34;
    v27 = v25;
    sub_21700CE04();
    v28 = v24;
    sub_21700CDB4();
    (*(v37 + 8))(v23, v27);
    v29 = *(v33 + 8);
    v30 = v28;
    v31 = v39;
    v29(v30, v39);
    v29(v26, v31);

    return v32;
  }
}

uint64_t sub_216B60EB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a3;
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3A68);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v62 = (v60 - v5);
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v63 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = v60 - v12;
  MEMORY[0x28223BE20](v14);
  v64 = v60 - v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v18 = v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v60 - v20;
  v70 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = v21;
  v26 = v6;
  v68 = *(v8 + 8);
  v68(v25, v6);
  if (!v24)
  {
    v45 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_146();
    sub_216B61CC4(v46, v47);
    OUTLINED_FUNCTION_4();
    v49 = v48;
    *v48 = 25705;
    v48[1] = 0xE200000000000000;
LABEL_7:
    v48[2] = &type metadata for ReplayPageResponse.FacetItem;
    (*(*(v45 - 8) + 104))(v49, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v52 + 8))(v67);
    return (v68)(v70, v6);
  }

  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v68(v18, v6);
  v61 = v29;
  if (!v29)
  {

    v45 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_146();
    sub_216B61CC4(v50, v51);
    OUTLINED_FUNCTION_4();
    v49 = v48;
    *v48 = 0x656C746974;
    v48[1] = 0xE500000000000000;
    goto LABEL_7;
  }

  v30 = v66;
  v66[12] = v22;
  v30[13] = v24;
  v31 = v61;
  *v30 = v27;
  v30[1] = v31;
  v32 = v64;
  sub_21700CE04();
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v60[1] = v8 + 8;
  v68(v13, v26);
  if (v35)
  {
    v36 = v65;
    v37 = v62;
    (*(v8 + 32))(v62 + *(v65 + 36), v32, v26);
    *v37 = v33;
    v37[1] = v35;
    v69[3] = v36;
    v69[4] = sub_216B61AFC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
    sub_216B61B60(v37, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_8_76();
    v39 = v63;
    v40 = v70;
    sub_21700CE04();
    v41 = v67;
    sub_21700D2E4();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v42 + 8))(v41);
    v43 = v68;
    v68(v40, v26);
    return v43(v39, v26);
  }

  else
  {
    v53 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_146();
    sub_216B61CC4(v54, v55);
    OUTLINED_FUNCTION_4();
    *v56 = 0x646E696B24;
    v57 = v65;
    v56[1] = 0xE500000000000000;
    v56[2] = v57;
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D22530], v53);
    swift_willThrow();
    v58 = v68;
    v68(v32, v26);
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v59 + 8))(v67);
    v58(v70, v26);
  }
}

uint64_t sub_216B614D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216B60B20(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

double sub_216B61508@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3A68);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for ReplayPeriodItem(0);
  v19 = v18;
  v20 = (a1 + v18[5]);
  v21 = v20[1];
  if (!v21)
  {
    sub_2167880BC();
    swift_allocError();
    v30 = xmmword_217014E10;
LABEL_7:
    *v29 = v30;
    *(v29 + 16) = v19;
    swift_willThrow();
    OUTLINED_FUNCTION_0_170();
    v28 = a1;
    goto LABEL_8;
  }

  v44 = v4;
  v22 = (a1 + v18[6]);
  v23 = v22[1];
  if (!v23)
  {
    sub_2167880BC();
    swift_allocError();
    v30 = xmmword_21701C090;
    goto LABEL_7;
  }

  v41 = *v20;
  v42 = *v22;
  v43 = a2;
  v24 = v18[7];
  v45 = a1;
  sub_216681B04(a1 + v24, v17, &qword_27CABFF98);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v11);
  sub_216697664(v17, &qword_27CABFF98);
  if (EnumTagSinglePayload == 1)
  {
    sub_2167880BC();
    swift_allocError();
    *v26 = xmmword_217036890;
    *(v26 + 16) = v19;
    swift_willThrow();
    OUTLINED_FUNCTION_0_170();
    v28 = v45;
LABEL_8:
    sub_216B61AA4(v28, v27);
    return result;
  }

  v32 = v43;
  v33 = v42;
  v43[12] = v41;
  v32[13] = v21;
  *v32 = v33;
  v32[1] = v23;
  sub_21700DF14();
  sub_21700DF14();
  v34 = v45;
  sub_216F79E98(v14);
  sub_216B3B364((v32 + 7));
  sub_216B61AA4(v14, type metadata accessor for AnyAction);
  *v10 = 0x65746E496B636F4DLL;
  *(v10 + 1) = 0xEA0000000000746ELL;
  v35 = v48;
  v36 = v49[6];
  sub_21700CD04();
  if (v36)
  {
    sub_216B61AA4(v34, type metadata accessor for ReplayPeriodItem);

    sub_216697664((v32 + 7), &qword_27CAB6DB0);
  }

  else
  {
    v37 = v46;
    (*(v47 + 32))(&v10[*(v46 + 36)], v35, v44);
    v49[3] = v37;
    v49[4] = sub_216B61AFC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    sub_216B61B60(v10, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_0_170();
    sub_216B61AA4(v34, v39);
    *&result = OUTLINED_FUNCTION_8_76().n128_u64[0];
  }

  return result;
}

unint64_t sub_216B619D4(uint64_t a1)
{
  result = sub_216B619FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B619FC()
{
  result = qword_27CAC3A58;
  if (!qword_27CAC3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A58);
  }

  return result;
}

unint64_t sub_216B61A50()
{
  result = qword_27CAC3A60;
  if (!qword_27CAC3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A60);
  }

  return result;
}

uint64_t sub_216B61AA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216B61AFC()
{
  result = qword_27CAC3A70;
  if (!qword_27CAC3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A70);
  }

  return result;
}

uint64_t sub_216B61B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3A68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B61BF4()
{
  result = qword_27CAC3A78;
  if (!qword_27CAC3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A78);
  }

  return result;
}

unint64_t sub_216B61C48(uint64_t a1)
{
  result = sub_216B61C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B61C70()
{
  result = qword_27CAC3A80;
  if (!qword_27CAC3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A80);
  }

  return result;
}

uint64_t sub_216B61CC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216B61D0C()
{
  result = qword_27CAC3A88;
  if (!qword_27CAC3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A88);
  }

  return result;
}

uint64_t sub_216B61DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216B61E4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_217007DF4();
}

uint64_t sub_216B61F64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_217007DF4();
}

char *sub_216B61FCC(const void *a1, uint64_t a2)
{
  v66 = a2;
  sub_217005844();
  OUTLINED_FUNCTION_1();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v62 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v67 = &v59 - v10;
  v69 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v61 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v60 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v68 = &v59 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0B8);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  memcpy(__dst, a1, 0x88uLL);
  LOBYTE(v71[0]) = 0;
  sub_217007DA4();
  v25 = *(v23 + 32);
  v26 = OUTLINED_FUNCTION_33_29();
  v25(v26);
  OUTLINED_FUNCTION_8_77();
  v27 = OUTLINED_FUNCTION_33_29();
  v25(v27);
  OUTLINED_FUNCTION_8_77();
  v28 = OUTLINED_FUNCTION_33_29();
  v25(v28);
  v29 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel__hostName;
  v71[0] = 0;
  v71[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  sub_217007DA4();
  (*(v18 + 32))(&v2[v29], v21, v65);
  v30 = v66;
  OUTLINED_FUNCTION_8_77();
  v31 = OUTLINED_FUNCTION_20_40();
  v25(v31);
  OUTLINED_FUNCTION_8_77();
  v32 = OUTLINED_FUNCTION_20_40();
  v25(v32);
  OUTLINED_FUNCTION_8_77();
  v33 = OUTLINED_FUNCTION_20_40();
  v25(v33);
  OUTLINED_FUNCTION_8_77();
  v34 = OUTLINED_FUNCTION_20_40();
  v25(v34);
  v35 = v69;
  v36 = &v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 3) = 0u;
  *(v36 + 4) = 0u;
  v37 = &v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType] = MEMORY[0x277D84F98];
  v38 = &v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  *v38 = 0;
  *(v38 + 1) = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCredential] = 0;
  v39 = &v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_protectionSpaceHost];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation] = 0;
  v40 = &v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString];
  *v40 = 0;
  *(v40 + 1) = 0;
  memcpy(&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params], __dst, 0x88uLL);
  *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_objectGraph] = v30;
  v41 = objc_allocWithZone(MEMORY[0x277CE3850]);
  sub_2167E705C(__dst, v71);

  v42 = [v41 init];
  *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView] = v42;
  v43 = type metadata accessor for LibraryImportWebViewModel();
  v70.receiver = v2;
  v70.super_class = v43;
  v44 = v67;
  v45 = objc_msgSendSuper2(&v70, sel_init);
  sub_217005ED4();
  sub_216B6767C(__dst);
  v46 = v35;
  if (__swift_getEnumTagSinglePayload(v44, 1, v35) == 1)
  {

    sub_216697664(v44, &qword_27CABA820);
  }

  else
  {
    v47 = v61;
    v48 = v68;
    (*(v61 + 32))(v68, v44, v46);
    (*(v47 + 16))(v60, v48, v46);
    v49 = v62;
    sub_2170057E4();
    v50 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView;
    v51 = [*&v45[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView] configuration];
    v52 = [v51 userContentController];

    v53 = [objc_opt_self() pageWorld];
    v54 = sub_21700E4D4();
    [v52 addScriptMessageHandlerWithReply:v45 contentWorld:v53 name:v54];

    [*&v45[v50] setNavigationDelegate_];
    v55 = *&v45[v50];
    v56 = sub_2170057B4();
    v57 = [v55 loadRequest_];

    (*(v63 + 8))(v49, v64);
    (*(v47 + 8))(v68, v69);
  }

  return v45;
}

void sub_216B62684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_77();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  if (sub_216B61EEC())
  {
    sub_216B61F00();
    v9 = *(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView);
    v10 = [v9 URL];
    if (v10)
    {
      v11 = v10;
      sub_217005E64();

      v12 = sub_217005EF4();
      v13 = 0;
    }

    else
    {
      v12 = sub_217005EF4();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v13, 1, v12);
    sub_2166CF4DC(v5, v8);
    sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_216697664(v8, &qword_27CABA820);
    }

    else
    {
      sub_217005E74();
      (*(*(v12 - 8) + 8))(v8, v12);
    }

    sub_216B61E4C();
    [v9 canGoBack];
    sub_216B61D74();
  }

  else
  {
    v14 = [*(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView) goBack];
  }
}

uint64_t sub_216B62898()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView);
  [v1 canGoBack];
  sub_216B61D74();
  [v1 canGoForward];

  return sub_216B61D9C();
}

uint64_t sub_216B628F4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3A90);
  __swift_project_value_buffer(v0, qword_27CAC3A90);
  return sub_217007C94();
}

id sub_216B629B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryImportWebViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LibraryImportWebViewModel()
{
  result = qword_280E357E8;
  if (!qword_280E357E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B62C8C()
{
  sub_2166BF8FC();
  if (v0 <= 0x3F)
  {
    sub_2169C5020();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_216B62DC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibraryImportWebViewModel();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216B62E04()
{
  OUTLINED_FUNCTION_33();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v4);
  v1[14] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v1[15] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[16] = v6;
  v1[17] = *(v7 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for OpenExternalURLAction();
  v1[20] = v8;
  OUTLINED_FUNCTION_2(v8);
  v1[21] = v9;
  v1[22] = *(v10 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v11);
  v1[25] = OUTLINED_FUNCTION_80();
  v12 = sub_217005844();
  v1[26] = v12;
  OUTLINED_FUNCTION_2(v12);
  v1[27] = v13;
  v1[28] = OUTLINED_FUNCTION_80();
  v14 = sub_217005EF4();
  v1[29] = v14;
  OUTLINED_FUNCTION_2(v14);
  v1[30] = v15;
  v1[31] = OUTLINED_FUNCTION_80();
  v1[32] = sub_21700EA34();
  v1[33] = sub_21700EA24();
  v17 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B6306C, v17, v16);
}

uint64_t sub_216B6306C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 96);

  v7 = [v6 request];
  sub_2170057D4();

  sub_2170057F4();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_216697664(*(v0 + 200), &qword_27CABA820);
LABEL_26:
    v48 = 0;
    goto LABEL_27;
  }

  v8 = *(v0 + 96);
  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 200), *(v0 + 232));
  if ([v8 navigationType] == -1)
  {
    v9 = [*(v0 + 96) targetFrame];
    if (v9)
    {
    }

    else
    {
      v51 = *(v0 + 104);
      v52 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
      swift_beginAccess();
      v53 = *(v51 + v52);
      sub_21700DF14();
      v54 = sub_216935620(3, v53);

      if (v54)
      {
        v55 = OUTLINED_FUNCTION_8();
        sub_21667E91C(v55);
        v56 = OUTLINED_FUNCTION_20_13();
        v57(v56);
        goto LABEL_34;
      }
    }
  }

  v10 = sub_217005EC4();
  if (!v11)
  {
    goto LABEL_12;
  }

  if (v10 == 0x7370747468 && v11 == 0xE500000000000000)
  {
LABEL_18:

    goto LABEL_19;
  }

  v13 = sub_21700F7D4();

  if ((v13 & 1) == 0)
  {
LABEL_12:
    if (sub_217005DE4() != 0x6C623A74756F6261 || v14 != 0xEB000000006B6E61)
    {
      v16 = sub_21700F7D4();

      if ((v16 & 1) == 0)
      {
        v18 = *(v0 + 240);
        v17 = *(v0 + 248);
        v19 = *(v0 + 232);
        v20 = *(v0 + 88);
        sub_216B61F00();
        [v20 stopLoading];
        (*(v18 + 8))(v17, v19);
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_19:
  v21 = sub_217005E74();
  if (!v22)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    goto LABEL_26;
  }

  v23 = v21;
  v24 = v22;
  v25 = (*(v0 + 104) + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params);
  v26 = v25[5];
  *(v0 + 40) = v21;
  *(v0 + 48) = v22;
  v27 = swift_task_alloc();
  *(v27 + 16) = v0 + 40;
  v28 = sub_216CA1DA8(sub_216AF7E78, v27, v26);

  if (v28)
  {
    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = *(v0 + 232);
    v32 = *(v0 + 104);

    [*(v32 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession) cancel];
    sub_216B63778(v29);
LABEL_22:
    (*(v30 + 8))(v29, v31);
    goto LABEL_26;
  }

  v33 = v25[6];
  *(v0 + 56) = v23;
  *(v0 + 64) = v24;
  v34 = swift_task_alloc();
  *(v34 + 16) = v0 + 56;
  LOBYTE(v33) = sub_216CA1DA8(sub_216B69928, v34, v33);

  if (v33)
  {
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v67 = v35;
    v68 = v36;
    v38 = *(v0 + 192);
    v62 = *(v0 + 184);
    v65 = *(v0 + 176);
    v66 = v37;
    v64 = *(v0 + 168);
    v39 = *(v0 + 160);
    v70 = *(v0 + 152);
    v61 = *(v0 + 144);
    v63 = *(v0 + 136);
    v40 = *(v0 + 128);
    v69 = *(v0 + 120);
    v41 = *(v0 + 104);

    (*(v36 + 16))(v38, v35, v37);
    sub_21700D234();
    *(v38 + *(v39 + 20)) = 0;
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v42 = sub_21700EA74();
    OUTLINED_FUNCTION_9_4(v42);
    (*(v40 + 16))(v61, v70, v69);
    sub_216B69594(v38, v62, type metadata accessor for OpenExternalURLAction);
    v60 = v41;
    v43 = sub_21700EA24();
    v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v45 = (v63 + *(v64 + 80) + v44) & ~*(v64 + 80);
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D85700];
    *(v46 + 16) = v43;
    *(v46 + 24) = v47;
    (*(v40 + 32))(v46 + v44, v61, v69);
    sub_216B695F0(v62, v46 + v45, type metadata accessor for OpenExternalURLAction);
    *(v46 + ((v65 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;
    OUTLINED_FUNCTION_9_46();
    sub_21677C03C();

    (*(v40 + 8))(v70, v69);
    sub_216B697A8(v38, type metadata accessor for OpenExternalURLAction);
    (*(v68 + 8))(v67, v66);
    goto LABEL_26;
  }

  v58 = v25[4];
  *(v0 + 72) = v23;
  *(v0 + 80) = v24;
  v59 = swift_task_alloc();
  *(v59 + 16) = v0 + 72;
  LOBYTE(v58) = sub_216CA1DA8(sub_216B69928, v59, v58);

  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = *(v0 + 232);
  if ((v58 & 1) == 0)
  {
    sub_216B61F00();
    goto LABEL_22;
  }

  (*(v30 + 8))(*(v0 + 248), *(v0 + 232));
LABEL_34:
  v48 = 1;
LABEL_27:

  v49 = *(v0 + 8);

  return v49(v48);
}

void sub_216B63778(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_217005EF4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = objc_opt_self();
  v11 = sub_21700E4D4();
  v12 = [v10 callbackWithCustomScheme_];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  v15 = objc_allocWithZone(MEMORY[0x277CBA9D8]);
  v16 = sub_216B68954(v8, v12, sub_216B69800, v14);
  [v16 setPrefersEphemeralWebBrowserSession_];
  [v16 setPresentationContextProvider_];
  if ([v16 canStart])
  {
    [v16 start];
  }

  v17 = *(v2 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession);
  *(v2 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession) = v16;
}

uint64_t sub_216B6396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  sub_21700EA34();
  v6[14] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v6[15] = v9;
  v6[16] = v8;

  return MEMORY[0x2822009F8](sub_216B63A70, v9, v8);
}

uint64_t sub_216B63A70()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v0[5] = type metadata accessor for OpenExternalURLAction();
  v0[6] = sub_216B69868(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_216B69594(v4, boxed_opaque_existential_1, type metadata accessor for OpenExternalURLAction);
  (*(v2 + 104))(v1, *MEMORY[0x277D21E18], v3);
  v6 = swift_task_alloc();
  v0[17] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  *v6 = v0;
  v6[1] = sub_216B63BCC;
  OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x28217F468](v7, v8, v9, v10, v11);
}

uint64_t sub_216B63BCC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_20_13();
    v8(v7);
  }

  else
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 2));
  }

  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216B63D0C()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 56);
  v2 = sub_21700D2A4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216B63D90()
{
  OUTLINED_FUNCTION_33();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = sub_21700D2A4();
  OUTLINED_FUNCTION_9_4(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B63EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21700EA34();
  v4[6] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B63F40, v6, v5);
}

uint64_t sub_216B63F40()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_216B64008;

  return sub_216B62E04();
}

uint64_t sub_216B64008()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v2 = v1[7];
  v3 = v1[5];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_8();
  v9(v8);
  _Block_release(v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_216B64168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_217049CE8;
  v9[5] = v8;
  sub_216ED06BC(0, 0, v6, &unk_217049CF8, v9);
}

uint64_t sub_216B64278(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_41_23();
  OUTLINED_FUNCTION_9_4(v5);
  sub_21700EA34();
  v6 = v1;
  v7 = a1;
  v8 = sub_21700EA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216B6435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  sub_21700EA34();
  v5[7] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B64444, v7, v6);
}

uint64_t sub_216B64444()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[3];

  v2 = 1;
  sub_216B61ED8();
  [v1 hasOnlySecureContent];
  sub_216B61DC4();
  v3 = [v1 URL];
  if (v3)
  {
    v4 = v3;
    sub_217005E64();

    v2 = 0;
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(v6, v2, 1, v7);
  sub_2166CF4DC(v6, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  v9 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v0[6], &qword_27CABA820);
  }

  else
  {
    sub_217005E74();
    OUTLINED_FUNCTION_40_21();
    (*(v10 + 8))(v9, v7);
  }

  v11 = v0[3];
  sub_216B61E4C();
  v12 = [v11 URL];
  if (v12)
  {
    v13 = v12;
    sub_217005E64();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v0[4];
  __swift_storeEnumTagSinglePayload(v15, v14, 1, v7);
  sub_216B64634(v15);
  sub_216697664(v15, &qword_27CABA820);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_216B64634(uint64_t a1)
{
  v2 = sub_217005AB4();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_217005EF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168282D4(a1, v12, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_2170059E4();
    if (!__swift_getEnumTagSinglePayload(v6, 1, v2))
    {
      sub_217005A64();
    }

    if (__swift_getEnumTagSinglePayload(v6, 1, v2))
    {
      (*(v14 + 8))(v16, v13);
    }

    else
    {
      v20 = v28;
      v19 = v29;
      (*(v29 + 16))(v28, v6, v2);
      sub_2170059F4();
      (*(v19 + 8))(v20, v2);
      if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
      {
        v21 = sub_217005DE4();
        v22 = v25;
        v26 = *(v14 + 8);
        v26(v16, v13);
        v26(v9, v13);
        goto LABEL_10;
      }

      (*(v14 + 8))(v16, v13);
      sub_216697664(v9, &qword_27CABA820);
    }

    v21 = 0;
    v22 = 0;
LABEL_10:
    v23 = (v30 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString);
    *v23 = v21;
    v23[1] = v22;

    v17 = &qword_27CAB6BD0;
    v18 = v6;
    return sub_216697664(v18, v17);
  }

  v17 = &qword_27CABA820;
  v18 = v12;
  return sub_216697664(v18, v17);
}

uint64_t sub_216B64A80(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_21700EA34();
  v9 = a2;
  v10 = v2;
  v11 = a1;
  v12 = sub_21700EA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a2;
  sub_21677BBA0();
}

void sub_216B64BD4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, id))
{
  v10 = a3;
  v11 = a4;
  v13 = a5;
  v12 = a1;
  a6(v10, a4, v13);
}

uint64_t sub_216B64C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21700EA34();
  v6[5] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B64D08, v8, v7);
}

uint64_t sub_216B64D08()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[3];

  sub_216B61F00();
  sub_216B61ED8();
  if (([v1 canGoBack] & 1) == 0)
  {
    v2 = *(v0[2] + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation);
    if (v2)
    {
      v3 = v0[4];
      if (v3)
      {
        sub_216685F4C(0, &qword_27CAC3C10);
        v4 = v2;
        v5 = v3;
        sub_21700F104();
      }
    }
  }

  sub_216B61D74();
  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216B64E10(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_21700EA34();
  v10 = a2;
  v11 = v2;
  v12 = a1;
  v13 = sub_21700EA24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = a2;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216B64F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  sub_21700EA34();
  v6[7] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B65000, v8, v7);
}

uint64_t sub_216B65000()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[3];

  [v1 hasOnlySecureContent];
  sub_216B61DC4();
  sub_216B61ED8();
  v2 = [v1 URL];
  if (v2)
  {
    v3 = v2;
    sub_217005E64();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(v6, v4, 1, v7);
  sub_2166CF4DC(v6, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  v9 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v0[6], &qword_27CABA820);
  }

  else
  {
    sub_217005E74();
    OUTLINED_FUNCTION_40_21();
    (*(v10 + 8))(v9, v7);
  }

  v11 = v0[4];
  v12 = v0[2];
  sub_216B61E4C();
  v13 = *(v12 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation);
  *(v12 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation) = v11;
  v14 = v11;

  sub_216B62898();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_216B65220()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_41_23();
  OUTLINED_FUNCTION_9_4(v3);
  sub_21700EA34();
  v4 = v0;
  v5 = sub_21700EA24();
  OUTLINED_FUNCTION_181();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216B652EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B65384, v6, v5);
}

uint64_t sub_216B65384()
{
  OUTLINED_FUNCTION_33();

  sub_216B62898();
  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216B65450(void *a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = [a2 response];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    if ([v15 statusCode] - 400 < 0xFFFFFFFFFFFFFED4)
    {
      v16 = [a1 URL];
      if (v16)
      {
        v17 = v16;
        sub_217005E64();

        v18 = sub_217005EF4();
        v19 = 0;
      }

      else
      {
        v18 = sub_217005EF4();
        v19 = 1;
      }

      __swift_storeEnumTagSinglePayload(v9, v19, 1, v18);
      sub_2166CF4DC(v9, v13);
      sub_217005EF4();
      if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
      {
        sub_216697664(v13, &qword_27CABA820);
      }

      else
      {
        sub_217005E74();
        (*(*(v18 - 8) + 8))(v13, v18);
      }

      sub_216B61E4C();
      sub_216B61F00();
      a4[2](a4, 0);

      _Block_release(a4);
      return;
    }

    a4[2](a4, 1);
  }

  else
  {

    a4[2](a4, 1);
  }

  _Block_release(a4);
}

void sub_216B656F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_217005EF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  if (!a2)
  {
    sub_2168282D4(a1, v12, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {

      v28 = &qword_27CABA820;
      v29 = v12;
LABEL_9:
      sub_216697664(v29, v28);
      return;
    }

    (*(v14 + 32))(v16, v12, v13);
    v30 = sub_217005E84();
    if (v31)
    {
      if (v30 == *&v18[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 120] && v31 == *&v18[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 128])
      {
      }

      else
      {
        v33 = sub_21700F7D4();

        if ((v33 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (sub_217005EA4() == 0x61632D687475612FLL && v34 == 0xEE006B6361626C6CLL)
      {
      }

      else
      {
        v36 = sub_21700F7D4();

        if ((v36 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_2170059E4();
      sub_2168282D4(v9, v6, &qword_27CAB6BD0);
      v37 = sub_217005AB4();
      if (__swift_getEnumTagSinglePayload(v6, 1, v37) == 1)
      {

        sub_216697664(v9, &qword_27CAB6BD0);
        (*(v14 + 8))(v16, v13);
        v29 = v6;
        v28 = &qword_27CAB6BD0;
        goto LABEL_9;
      }

      v38 = MEMORY[0x21CE96870]();
      v40 = v39;
      (*(*(v37 - 8) + 8))(v6, v37);
      if (!v40)
      {

        sub_216697664(v9, &qword_27CAB6BD0);
        (*(v14 + 8))(v16, v13);
        return;
      }

      v43 = 63;
      v44 = 0xE100000000000000;
      MEMORY[0x21CE9F490](v38, v40);

      sub_216B65CB8(v43, v44);

      sub_216697664(v9, &qword_27CAB6BD0);
    }

LABEL_30:
    (*(v14 + 8))(v16, v13);
    v41 = *&v18[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession];
    *&v18[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession] = 0;

    return;
  }

  v19 = a2;
  if (qword_27CAB5DD8 != -1)
  {
    swift_once();
  }

  v20 = sub_217007CA4();
  __swift_project_value_buffer(v20, qword_27CAC3A90);
  v21 = a2;
  v22 = sub_217007C84();
  v23 = sub_21700ED84();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543362;
    v26 = a2;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_216679000, v22, v23, "ASWebAuthenticationSession failed with error: %{public}@", v24, 0xCu);
    sub_216697664(v25, &qword_27CABF880);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_216B65CB8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v34 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v32 = v10;
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700B604();
  v31 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  sub_216685F4C(0, &qword_280E29CD0);
  v22 = sub_21700EE84();
  sub_21700B5F4();
  sub_21700B634();
  v30 = *(v15 + 8);
  v30(v18, v14);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_181();
  v24 = swift_allocObject();
  v25 = v29;
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a2;
  aBlock[4] = sub_216B6985C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_138;
  v26 = _Block_copy(aBlock);

  sub_21700DF14();
  sub_21700B5C4();
  v35 = MEMORY[0x277D84F90];
  sub_216B69868(&qword_280E2A480, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
  sub_2167D59D0();
  sub_21700F214();
  MEMORY[0x21CE9FC70](v21, v13, v8, v26);
  _Block_release(v26);

  (*(v34 + 8))(v8, v3);
  (*(v32 + 8))(v13, v33);
  v30(v21, v31);
}

id sub_216B66070()
{
  result = [*(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView) window];
  if (!result)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75DA0]);

    return [v2 initWithFrame_];
  }

  return result;
}

void sub_216B66140(uint64_t a1, void *a2, char *a3, void (**a4)(void, void, void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  _Block_copy(a4);
  v11 = [a2 body];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  if (swift_dynamicCast())
  {
    v12 = v34;
    sub_216934F28();
    if (v38)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_17:

        goto LABEL_14;
      }

      v14 = v34;
      v13 = v35;
      sub_21700DF14();
      if (sub_2169753C8() != 5)
      {

        switch(v23)
        {
          case 1:
            v29 = sub_21700EA74();
            __swift_storeEnumTagSinglePayload(v9, 1, 1, v29);
            sub_21700EA34();
            v30 = a3;

            v31 = sub_21700EA24();
            v32 = swift_allocObject();
            v33 = MEMORY[0x277D85700];
            v32[2] = v31;
            v32[3] = v33;
            v32[4] = v12;
            v32[5] = v30;
            v32[6] = sub_216B6784C;
            v32[7] = v10;
            sub_21677BBA0();

            goto LABEL_13;
          case 2:
          case 3:

            v24 = swift_allocObject();
            *(v24 + 16) = sub_216B6784C;
            *(v24 + 24) = v10;
            v25 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
            swift_beginAccess();

            swift_isUniquelyReferenced_nonNull_native();
            v34 = *&a3[v25];
            sub_21693AA20();
            *&a3[v25] = v34;
            swift_endAccess();
            goto LABEL_13;
          case 4:
            v27 = swift_allocObject();
            *(v27 + 16) = sub_216B6784C;
            *(v27 + 24) = v10;
            v28 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
            swift_beginAccess();

            swift_isUniquelyReferenced_nonNull_native();
            v34 = *&a3[v28];
            sub_21693AA20();
            *&a3[v28] = v34;
            swift_endAccess();
            sub_216B67290(v12);
            goto LABEL_17;
          default:
            sub_216B66720(v12);
            goto LABEL_17;
        }
      }

      v15 = sub_21700E384();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820);
      v37[0] = v15;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_21700F3B4();

      v34 = v14;
      v35 = v13;
      MEMORY[0x21CE9F490](0xD00000000000001FLL, 0x80000002170897A0);
      sub_2168282D4(v37, &v34, &unk_27CABF7A0);
      v16 = v36;
      if (v36)
      {
        v17 = __swift_project_boxed_opaque_existential_1(&v34, v36);
        v18 = *(v16 - 8);
        v19 = MEMORY[0x28223BE20](v17);
        v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v21, v19);
        v22 = sub_21700F7B4();
        (*(v18 + 8))(v21, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(&v34);
      }

      else
      {
        v22 = 0;
      }

      v26 = sub_21700E4D4();
      (a4)[2](a4, v22, v26);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_216697664(v37, &unk_27CABF7A0);
  }

LABEL_13:

LABEL_14:
  _Block_release(a4);
}

void sub_216B66720(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v3 = OUTLINED_FUNCTION_34_27();
  if ((v4 & 1) == 0)
  {
    return;
  }

  sub_2166A6DF8(*(v2 + 56) + 32 * v3, &v27);
  if ((OUTLINED_FUNCTION_43_26() & 1) == 0)
  {
    return;
  }

  sub_216934F28();
  if (!v29)
  {
    sub_216697664(&v27, &unk_27CABF7A0);
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_43_26() & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    v5 = 0xE000000000000000;
    goto LABEL_9;
  }

  v6 = v25;
  v5 = v26;
LABEL_9:
  switch(sub_2169754D4(v25))
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:

      type metadata accessor for LibraryImportStatusProvider();
      type metadata accessor for ObjectGraph();
      sub_21700E094();
      v27 = xmmword_217016ED0;
      v28 = 0;
      v29 = 0;
      sub_21692B3EC(&v27);

      break;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      if (qword_27CAB5DD8 != -1)
      {
        OUTLINED_FUNCTION_18_44();
      }

      v7 = sub_217007CA4();
      __swift_project_value_buffer(v7, qword_27CAC3A90);
      sub_21700DF14();
      v8 = sub_217007C84();
      v9 = sub_21700ED84();

      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_20;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v27 = v11;
      *v10 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD8);
      v12 = sub_21700E594();
      v14 = sub_2166A85FC(v12, v13, &v27);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = sub_2166A85FC(v6, v5, &v27);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_216679000, v8, v9, "Dismiss web view invoked due to error: %{public}s, sessionID: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v11, -1, -1);
      v16 = v10;
      goto LABEL_14;
    case 0xBu:
      if (qword_27CAB5DD8 != -1)
      {
        OUTLINED_FUNCTION_18_44();
      }

      v17 = sub_217007CA4();
      __swift_project_value_buffer(v17, qword_27CAC3A90);
      sub_21700DF14();
      v8 = sub_217007C84();
      v18 = sub_21700ED84();

      if (os_log_type_enabled(v8, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v27 = v20;
        *v19 = 134349314;
        *(v19 + 4) = v25;
        *(v19 + 12) = 2082;
        v21 = sub_2166A85FC(v6, v5, &v27);

        *(v19 + 14) = v21;
        _os_log_impl(&dword_216679000, v8, v18, "Dismiss web view invoked with unknown reason: %{public}ld, sessionID: %{public}s", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x21CEA1440](v20, -1, -1);
        v16 = v19;
LABEL_14:
        MEMORY[0x21CEA1440](v16, -1, -1);
      }

      else
      {
LABEL_20:
      }

      break;
    default:
      sub_216B67884(v6, v5);

      break;
  }

  v22 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss);
  if (v22)
  {

    v22(v23);
    v24 = OUTLINED_FUNCTION_8();
    sub_21667E91C(v24);
  }
}

uint64_t sub_216B66B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  sub_21700EA34();
  v7[54] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v7[55] = v9;
  v7[56] = v8;

  return MEMORY[0x2822009F8](sub_216B66BF0, v9, v8);
}

uint64_t sub_216B66BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  sub_216934F28();
  if (!v10[24])
  {

    v19 = (v10 + 21);
LABEL_11:
    sub_216697664(v19, &unk_27CABF7A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v10[57] = v10[45];
  sub_216934F28();
  if (!v10[28])
  {

    v19 = (v10 + 25);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v10[58] = v10[47];
    type metadata accessor for JSIntentDispatcher();
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v10[59] = v10[48];
    v11 = swift_task_alloc();
    v10[60] = v11;
    *v11 = v10;
    v11[1] = sub_216B66E18;
    OUTLINED_FUNCTION_91_0();

    return sub_216AA041C(v12, v13, v14, v15, v16);
  }

LABEL_12:
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_216B66E18()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  v3[61] = v5;
  v3[62] = v6;
  v3[63] = v0;

  if (v0)
  {
    v7 = v3[55];
    v8 = v3[56];
    v9 = sub_216B6715C;
  }

  else
  {

    v7 = v3[55];
    v8 = v3[56];
    v9 = sub_216B66F30;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216B66F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0x65736E6F70736572;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC3BF0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_217013D90;
  *(v12 + 32) = 0x6574617473;
  *(v12 + 40) = 0xE500000000000000;
  sub_216934F28();
  if (!v10[36])
  {
    sub_216697664((v10 + 33), &unk_27CABF7A0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
  }

  v14 = v10[61];
  v13 = v10[62];
  v15 = v10[52];
  *(v12 + 64) = 0xD000000000000011;
  *(v12 + 72) = 0x80000002170897C0;
  *(v12 + 80) = v14;
  *(v12 + 88) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  *(inited + 48) = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1580);
  v16 = sub_21700E384();
  v10[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3C00);
  v10[37] = v16;
  v15(v10 + 37, 0, 0);

  sub_216697664((v10 + 37), &unk_27CABF7A0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_216B6715C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[63];
  v2 = v0[52];

  v3 = sub_21700E384();
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820);
  v0[29] = v3;
  swift_getErrorValue();
  v4 = sub_21700F884();
  v2(v0 + 29, v4, v5);

  sub_216697664((v0 + 29), &unk_27CABF7A0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216B67290(uint64_t result)
{
  if (*(result + 16))
  {
    result = OUTLINED_FUNCTION_34_27();
    if (v3)
    {
      sub_2166A6DF8(*(v2 + 56) + 32 * result, __dst);
      result = swift_dynamicCast();
      if (result)
      {
        result = sub_216975508(v37);
        if (result != 7)
        {
          v4 = result;
          v5 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
          swift_beginAccess();
          v6 = *(v1 + v5);
          sub_21700DF14();
          v7 = sub_216935620(4, v6);
          v9 = v8;

          if (v7)
          {
            v10 = swift_allocObject();
            *(v10 + 16) = v7;
            *(v10 + 24) = v9;
            v11 = v10;
            if (((1 << v4) & 0x5B) != 0)
            {
              v34 = sub_216983738(153);
              v13 = v12;
              v14 = 155;
            }

            else
            {
              if (v4 != 2)
              {
                v27 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 56);
                v26 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 64);
                v29 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 72);
                v28 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 80);
                v31 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 104);
                v30 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 112);
                v32 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 96);
                v35 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 88);
                v33 = (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel);
                memcpy(__dst, (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel), sizeof(__dst));
                *v33 = v27;
                v33[1] = v26;
                v33[2] = v29;
                v33[3] = v28;
                v33[4] = sub_216B6908C;
                v33[5] = v11;
                v33[6] = v31;
                v33[7] = v30;
                v33[8] = v35;
                v33[9] = v32;

                sub_21700DF14();
                sub_21700DF14();
                sub_21700DF14();
                sub_21700DF14();
                goto LABEL_9;
              }

              v34 = sub_216983738(153);
              v13 = v25;
              v14 = 152;
            }

            v15 = sub_216983738(v14);
            v17 = v16;

            v18 = sub_216983738(43);
            v20 = v19;
            v21 = sub_216983738(343);
            v23 = v22;
            v24 = (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel);
            memcpy(__dst, (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel), sizeof(__dst));
            *v24 = v34;
            v24[1] = v13;
            v24[2] = v15;
            v24[3] = v17;
            v24[4] = sub_216B6908C;
            v24[5] = v11;
            v24[6] = v18;
            v24[7] = v20;
            v24[8] = v21;
            v24[9] = v23;
LABEL_9:
            sub_216697664(__dst, &qword_27CAC3C08);
            sub_216B61F28();
          }
        }
      }
    }
  }

  return result;
}

void sub_216B67530(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
}

uint64_t sub_216B675D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_216B67618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216B676D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2168282D4(a1, v13, &unk_27CABF7A0);
  v6 = v14;
  if (!v14)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = sub_21700F7B4();
  (*(v8 + 8))(v11, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  if (a3)
  {
LABEL_3:
    a3 = sub_21700E4D4();
  }

LABEL_4:
  (*(a4 + 16))(a4, v12, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_216B67884(uint64_t a1, unint64_t a2)
{
  v65 = a1;
  v70 = type metadata accessor for SelectTabAction();
  OUTLINED_FUNCTION_1();
  v77 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_103_2();
  v75 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v63 - v9;
  v69 = type metadata accessor for SetPersistenceItemAction();
  OUTLINED_FUNCTION_1();
  v71 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103_2();
  v72 = v14;
  v73 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v63 - v16;
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v66 = v19;
  v67 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v74 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_103_2();
  v79 = v25;
  v68 = v26;
  MEMORY[0x28223BE20](v27);
  v78 = v63 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = v63 - v31;
  type metadata accessor for LibraryImportStatusProvider();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v33 = v81;
  v76 = v2;
  if (*&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString + 8])
  {
    v34 = *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString];
    v35 = *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString + 8];
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  v81 = v65;
  v82 = a2;
  v83 = v34;
  v84 = v35;
  sub_21700DF14();
  sub_21700DF14();
  sub_21692B3EC(&v81);
  sub_216B68DF0(v81, v82);
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700E094();
  v36 = v81;
  sub_21700EA74();
  v65 = v33;
  OUTLINED_FUNCTION_44_22();
  sub_21700EA34();
  v63[1] = v36;

  v37 = sub_21700EA24();
  OUTLINED_FUNCTION_181();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v36;
  OUTLINED_FUNCTION_9_46();
  v63[0] = v32;
  sub_21677BBA0();

  v40 = v78;
  v41 = v80;
  sub_21700E094();
  sub_2170061D4();
  sub_217006174();
  v43 = v42;
  (*(v66 + 8))(v22, v67);
  v44 = v69;
  v45 = &v17[v69[5]];
  *(v45 + 3) = MEMORY[0x277D839F8];
  *v45 = v43;
  sub_21700D234();
  v46 = &v17[v44[6]];
  strcpy(v46, "LastImportDate");
  v46[15] = -18;
  v17[v44[7]] = 0;
  sub_21700D234();
  v10[*(v70 + 5)] = 4;
  OUTLINED_FUNCTION_44_22();
  v47 = v74;
  (*(v74 + 16))(v79, v40, v41);
  OUTLINED_FUNCTION_12_58();
  v70 = v48;
  v49 = v73;
  sub_216B69594(v17, v73, v50);
  v51 = v75;
  sub_216B69594(v10, v75, type metadata accessor for SelectTabAction);
  v69 = v76;
  v52 = sub_21700EA24();
  v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v54 = *(v71 + 80);
  v76 = v17;
  v55 = (v68 + v54 + v53) & ~v54;
  v56 = v77[80];
  v77 = v10;
  v57 = (v72 + v56 + v55) & ~v56;
  v58 = (v64 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v52;
  *(v59 + 24) = MEMORY[0x277D85700];
  v60 = v59 + v53;
  v61 = v80;
  (*(v47 + 32))(v60, v79, v80);
  sub_216B695F0(v49, v59 + v55, v70);
  sub_216B695F0(v51, v59 + v57, type metadata accessor for SelectTabAction);
  *(v59 + v58) = v69;
  OUTLINED_FUNCTION_9_46();
  sub_21677EBA0();

  sub_216B697A8(v77, type metadata accessor for SelectTabAction);
  sub_216B697A8(v76, type metadata accessor for SetPersistenceItemAction);
  return (*(v47 + 8))(v78, v61);
}

uint64_t sub_216B67F18()
{
  type metadata accessor for LibraryImportStatusProvider();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_8();
  sub_21700E094();
  memset(v1, 0, sizeof(v1));
  sub_21692B3EC(v1);
}

uint64_t sub_216B67F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v5[0] = a2;
  v5[1] = a3;
  return a4(a1, v5);
}

uint64_t sub_216B67FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3C18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = 0x65736E6F70736572;
    *(inited + 40) = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_217013DA0;
    *(v8 + 32) = 0x736D61726170;
    *(v8 + 40) = 0xE600000000000000;
    *(v8 + 48) = a2;
    *(v8 + 56) = a3;
    sub_21700DF14();
    *(inited + 48) = sub_21700E384();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890);
    v9 = sub_21700E384();
    v10 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
    swift_beginAccess();
    v11 = *&v6[v10];
    sub_21700DF14();
    v12 = sub_216935620(2, v11);

    if (v12)
    {
      v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC3C20);
      v13[1] = 0;
      v14[0] = v9;
      v13[0] = 0;
      v12(v14, v13);
      sub_21667E91C(v12);

      return sub_216697664(v14, &unk_27CABF7A0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_216B681C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  *(v4 + 40) = 2;

  return MEMORY[0x2822009F8](sub_216B68248, a4, 0);
}

uint64_t sub_216B68248()
{
  OUTLINED_FUNCTION_31();
  sub_216A04C9C((v0 + 40));
  v2 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21677BB48, v2, v1);
}

uint64_t sub_216B682D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  sub_21700D284();
  v7[15] = swift_task_alloc();
  sub_21700EA34();
  v7[16] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v7[17] = v10;
  v7[18] = v9;

  return MEMORY[0x2822009F8](sub_216B6840C, v10, v9);
}

uint64_t sub_216B6840C()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  sub_21700D234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013D90;
  *(v6 + 56) = type metadata accessor for SetPersistenceItemAction();
  *(v6 + 64) = sub_216B69868(&qword_280E36028, type metadata accessor for SetPersistenceItemAction);
  __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  OUTLINED_FUNCTION_12_58();
  sub_216B69594(v5, v7, v8);
  *(v6 + 96) = type metadata accessor for SelectTabAction();
  *(v6 + 104) = sub_216B69868(qword_280E42060, type metadata accessor for SelectTabAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 72));
  sub_216B69594(v4, boxed_opaque_existential_1, type metadata accessor for SelectTabAction);
  v10 = sub_21700D3B4();
  v11 = MEMORY[0x277D21D10];
  v0[5] = v10;
  v0[6] = v11;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_21700D394();
  (*(v3 + 104))(v1, *MEMORY[0x277D21E18], v2);
  v12 = swift_task_alloc();
  v0[19] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  *v12 = v0;
  v12[1] = sub_216B6863C;
  v13 = OUTLINED_FUNCTION_38_29();

  return MEMORY[0x28217F468](v13, v14, v15, v16, v17);
}

uint64_t sub_216B6863C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  }

  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216B68794()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B68804()
{
  OUTLINED_FUNCTION_33();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216B6887C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F14();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216B688C8()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F3C();
  return OUTLINED_FUNCTION_1_11(v0);
}

id sub_216B68954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_217005E04();
  v15[4] = a3;
  v15[5] = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_216B68A6C;
  v15[3] = &block_descriptor_26;
  v11 = _Block_copy(v15);
  v12 = [v5 initWithURL:v10 callback:a2 completionHandler:v11];
  _Block_release(v11);

  v13 = sub_217005EF4();
  (*(*(v13 - 8) + 8))(a1, v13);

  return v12;
}

uint64_t sub_216B68A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_217005E64();
    v10 = sub_217005EF4();
    v11 = 0;
  }

  else
  {
    v10 = sub_217005EF4();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_216697664(v8, &qword_27CABA820);
}

uint64_t sub_216B68B7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2166AB4A0;

  return v6();
}

uint64_t sub_216B68C64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2166AB4A4;

  return v7();
}

uint64_t sub_216B68D4C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_91_0();

  return sub_216B66B54(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216B68DF0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_216B68E38()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216B681C0(v5, v6, v7, v1);
}

uint64_t sub_216B68ECC()
{
  OUTLINED_FUNCTION_82_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_2(v2);
  v3 = type metadata accessor for SetPersistenceItemAction();
  OUTLINED_FUNCTION_2(v3);
  v4 = type metadata accessor for SelectTabAction();
  OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_39_24();
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_2166AB4A4;
  OUTLINED_FUNCTION_17_4();

  return sub_216B682D8(v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_216B6908C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t sub_216B690C4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216B652EC(v5, v6, v7, v1);
}

uint64_t sub_216B69158()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_216B64F20(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_94Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216B69248()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_216B64C6C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_216B692E8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216B6435C(v3, v4, v5, v6, v7);
}

uint64_t sub_216B69380()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_22_39(v1);
  OUTLINED_FUNCTION_47_8();

  return v6(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216B69418()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_22_39(v1);
  OUTLINED_FUNCTION_47_8();

  return v6(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_35_3();

  return swift_deallocObject();
}

uint64_t sub_216B694E8()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216B69594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B695F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B6964C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_2(v1);
  v2 = type metadata accessor for OpenExternalURLAction();
  OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_39_24();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2166AB4A4;
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_91_0();

  return sub_216B6396C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216B697A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_75Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216B69868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B698B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_216B6994C()
{
  sub_216688154();
  if (v0 <= 0x3F)
  {
    sub_2166B0B84();
    if (v1 <= 0x3F)
    {
      sub_2167D1C30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B69A6C(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BB8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CA8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0);
  v4 = *(a1 + 16);
  v5 = sub_216B6A524();
  v6 = *(a1 + 24);
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v26 = sub_217009F14();
  v27 = v24;
  OUTLINED_FUNCTION_2_115();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  v7 = sub_21700AF94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  sub_2170091A4();
  v17 = v4;
  v18 = v6;
  v19 = v1;
  sub_21700AF84();
  OUTLINED_FUNCTION_6_7();
  swift_getWitnessTable();
  sub_2166C24DC(v10, v7);
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_2166C24DC(v13, v7);
  return (v14)(v13, v7);
}

uint64_t sub_216B69C90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0);
  *&__src[0] = v7;
  *(&__src[0] + 1) = a2;
  v31 = sub_216B6A524();
  *&__src[1] = v31;
  *(&__src[1] + 1) = a3;
  v8 = sub_217009F14();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_21700B3B4();
  v14 = sub_2170083C4();
  v30 = v73;
  v34 = v77;
  v32 = v75;
  v33 = v78;
  v91 = 1;
  v89 = v74;
  v87 = v76;
  v15 = a1[1];
  if (v15)
  {
    v28 = *a1;
    sub_21700DF14();
    *(&v27 + 1) = sub_217009D54();
    *&v27 = swift_getKeyPath();
    v16 = sub_21700AD34();
    WitnessTable = v7;
    v17 = v16;
    type metadata accessor for TrackTrailingInfoView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    sub_21700B3B4();
    v14 = sub_2170083C4();
    *&__src[0] = v28;
    *(&__src[0] + 1) = v15;
    *&__src[1] = 0;
    *(&__src[1] + 1) = MEMORY[0x277D84F90];
    __src[2] = v27;
    *&__src[3] = v17;
  }

  else
  {
    memset(__src, 0, 104);
  }

  MEMORY[0x28223BE20](v14);
  *(&v26 - 4) = a2;
  *(&v26 - 3) = a3;
  *(&v26 - 2) = a1;
  sub_217009F04();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v10, v8);
  v18 = v35;
  v31 = *(v35 + 8);
  v31(v10, v8);
  sub_21700B3B4();
  sub_2170083C4();
  v19 = v79;
  v20 = v81;
  *(&v27 + 1) = v84;
  v28 = v83;
  v71 = 1;
  v69 = v80;
  v67 = v82;
  v54 = 0;
  v55 = v91;
  *v56 = *v90;
  *&v56[3] = *&v90[3];
  v57 = v30;
  v58 = v89;
  *v59 = *v88;
  *&v59[3] = *&v88[3];
  v60 = v32;
  v61 = v87;
  *&v62[3] = *&v86[3];
  *v62 = *v86;
  v63 = v34;
  v64 = v33;
  v65[0] = &v54;
  memcpy(v53, __src, sizeof(v53));
  v65[1] = v53;
  v21 = v13;
  (*(v18 + 16))(v10, v13, v8);
  v42 = 0;
  v43 = v71;
  *v44 = *v70;
  *&v44[3] = *&v70[3];
  v45 = v19;
  v46 = v69;
  *v47 = *v68;
  *&v47[3] = *&v68[3];
  v48 = v20;
  v49 = v67;
  *v50 = *v66;
  *&v50[3] = *&v66[3];
  v51 = v28;
  v52 = *(&v27 + 1);
  v65[2] = v10;
  v65[3] = &v42;
  sub_216B6A6D8(__src, v72);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB8);
  v41[0] = v22;
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CA8);
  v41[2] = v8;
  v41[3] = v22;
  v23 = sub_21680CF4C();
  v37 = v23;
  v38 = sub_216B6A748();
  v39 = WitnessTable;
  v40 = v23;
  sub_216984F84(v65, 4, v41);
  sub_216B6A87C(__src);
  v24 = v31;
  v31(v21, v8);
  v24(v10, v8);
  memcpy(v72, v53, sizeof(v72));
  return sub_216B6A87C(v72);
}

uint64_t sub_216B6A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  (*(v9 + 16))();
  sub_2166C24DC(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_2166C24DC(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_216B6A300@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v3 = sub_21700ADF4();
  v4 = __swift_project_value_buffer(v3, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
  (*(*(v3 - 8) + 16))(v6 + *(v7 + 28), v4, v3);
  *v6 = KeyPath;
  *a1 = v2;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v8 = qword_280E73B48;
  v9 = swift_getKeyPath();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40) + 36));
  *v10 = v9;
  v10[1] = v8;

  v11 = sub_21700AD14();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CD8) + 36)) = v11;
  sub_21700B3B4();
  sub_2170083C4();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CC8) + 36));
  *v12 = v14;
  v12[1] = v15;
  v12[2] = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CB0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_216B6A524()
{
  result = qword_27CAC3CB8;
  if (!qword_27CAC3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0);
    sub_216B6A7F8(&qword_27CAC3CC0, &qword_27CAC3CC8, &unk_21704A000, sub_216B6A608);
    sub_2166D9530(&qword_280E2A8E8, &qword_27CAC3CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3CB8);
  }

  return result;
}

unint64_t sub_216B6A608()
{
  result = qword_27CAC3CD0;
  if (!qword_27CAC3CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CD8);
    sub_21680C8E4();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3CD0);
  }

  return result;
}

uint64_t sub_216B6A6D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B6A748()
{
  result = qword_27CAC3CE8;
  if (!qword_27CAC3CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CA8);
    sub_216B6A7F8(&qword_27CAC3CF0, &qword_27CABB178, &unk_21704A020, sub_21691118C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3CE8);
  }

  return result;
}

uint64_t sub_216B6A7F8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_216B6A87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_216B6A8F4(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D08);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B6A9D0(uint64_t a1)
{
  *(a1 + 8) = sub_216B6AA00();
  result = sub_216B6AA54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B6AA00()
{
  result = qword_280E36DA0;
  if (!qword_280E36DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36DA0);
  }

  return result;
}

unint64_t sub_216B6AA54()
{
  result = qword_280E36DA8[0];
  if (!qword_280E36DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E36DA8);
  }

  return result;
}

id sub_216B6AB18(void *a1)
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
    v15[0] = type metadata accessor for BrowsePageIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D30);
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

uint64_t sub_216B6AD18(uint64_t a1)
{
  result = sub_2166CE6B4(qword_280E41430, type metadata accessor for BrowsePageIntent);
  *(a1 + 8) = result;
  return result;
}

void sub_216B6ADB8()
{
  sub_216B6B4F0();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_216B6AE58()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216B6AEB0();
}

char *sub_216B6AEB0()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = type metadata accessor for PushNotifications.Subscription(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  type metadata accessor for PushNotifications(0);
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v0 & 1);
}

uint64_t sub_216B6AF70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  v9 = v2[2];
  v2[2] = a1;
  v2[3] = a2;

  sub_21667E91C(v9);
  OUTLINED_FUNCTION_0_1();
  v11 = *(v2 + *(v10 + 272));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v5 + 264);
  *(v13 + 24) = v12;
  v14 = *&v11[OBJC_IVAR____TtC7MusicUI17PushNotifications_lock];
  v15 = *(v14 + 16);
  v16 = v11;

  os_unfair_lock_lock(v15);
  sub_216EFCDB0(v16, 0xD000000000000016, 0x8000000217089850, sub_216B6B678, v13, v8);
  os_unfair_lock_unlock(*(v14 + 16));

  v17 = type metadata accessor for PushNotifications.Subscription(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
  OUTLINED_FUNCTION_0_1();
  v19 = *(v18 + 280);
  swift_beginAccess();
  sub_216B6B680(v8, v2 + v19);
  return swift_endAccess();
}

uint64_t sub_216B6B16C()
{
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(v1);
  if (v3)
  {
    return swift_dynamicCast();
  }

  else
  {
    return sub_21669987C(v2, &unk_27CABF7A0);
  }
}

uint64_t sub_216B6B260()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for PushNotifications.Subscription(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 280);
  swift_beginAccess();
  sub_216B6B548(v0 + v8, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_21669987C(v3, &unk_27CACD120);
  }

  sub_216B6B5B8(v3, v6);
  OUTLINED_FUNCTION_0_1();
  sub_216EFCD50();
  return sub_216B6B61C(v6);
}

uint64_t sub_216B6B3C0()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  return sub_21669987C(v0 + *(v2 + 280), &unk_27CACD120);
}

char *sub_216B6B414()
{
  v0 = sub_216B127F4();

  sub_21669987C(&v0[*(*v0 + 280)], &unk_27CACD120);
  return v0;
}

uint64_t sub_216B6B484()
{
  v0 = sub_216B6B414();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216B6B4F0()
{
  if (!qword_27CAC3D90)
  {
    type metadata accessor for PushNotifications.Subscription(255);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC3D90);
    }
  }
}

uint64_t sub_216B6B548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6B5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotifications.Subscription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6B61C(uint64_t a1)
{
  v2 = type metadata accessor for PushNotifications.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B6B680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6B718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v36 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v33 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v31 = a1;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v11 + 8);
  v34 = v11 + 8;
  v35 = v9;
  v32 = v19;
  v19(v15, v9);
  if (v18)
  {
    v37 = v16;
    v38 = v18;
    sub_21700F364();
    sub_21700D7A4();
    v20 = v31;
    sub_21700CE04();
    v21 = v33;
    v29 = *(v33 + 16);
    v29(v8, v39, v4);
    v30 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
    OUTLINED_FUNCTION_1_147();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3D98);
    sub_21700CE04();
    v22 = v39;
    v29(v8, v39, v4);
    sub_216B6BB58();
    OUTLINED_FUNCTION_1_147();
    (*(v21 + 8))(v22, v4);
    result = v32(v20, v35);
    *(v36 + *(v30 + 24)) = v37;
  }

  else
  {
    v24 = sub_21700E2E4();
    sub_216B6BC0C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
    *v26 = 25705;
    v26[1] = 0xE200000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v33 + 8))(v39, v4);
    return v32(v31, v35);
  }

  return result;
}

unint64_t sub_216B6BB58()
{
  result = qword_27CAC3DA0;
  if (!qword_27CAC3DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3D98);
    sub_216B6BC0C(&unk_280E2DFE0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3DA0);
  }

  return result;
}

uint64_t sub_216B6BC0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B6BC54(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = sub_21700CDB4();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    (*(v12 + 16))(v16, a1, v10);
    (*(v5 + 16))(v9, a2, v3);
    type metadata accessor for AttributedDateRange();
    v19 = swift_allocObject();
    sub_216B6C2B0(v16, v9);
  }

  v20 = OUTLINED_FUNCTION_9_71();
  v21(v20);
  v22 = OUTLINED_FUNCTION_8_78();
  v23(v22);
  return v19;
}

uint64_t sub_216B6BE70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_216B6C2B0(a1, a2);
  return v4;
}

uint64_t sub_216B6BEC8()
{
  v1 = v0;
  v2 = sub_217006274();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = (v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue);
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue + 8))
  {
    v10 = *v9;
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_lock);
    [v11 lock];
    if (qword_27CAB5DE0 != -1)
    {
      swift_once();
    }

    v12 = qword_27CAC3DA8;
    [qword_27CAC3DA8 setDateStyle_];
    [v12 setTimeStyle_];
    if (*(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag + 8))
    {
      sub_21700DF14();
      sub_217006234();
    }

    else
    {
      sub_217006254();
    }

    v13 = sub_217006244();
    (*(v4 + 8))(v8, v2);
    [v12 setLocale_];

    v14 = sub_21700E4D4();
    [v12 setDateTemplate_];

    v15 = sub_217006134();
    v16 = sub_217006134();
    v17 = [v12 stringFromDate:v15 toDate:v16];

    sub_21700E514();
    OUTLINED_FUNCTION_8_70();

    [v11 unlock];
    v18 = *(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_excludedPatterns);
    v19 = *(v18 + 16);
    v20 = v18 + 40;
    for (i = MEMORY[0x277D837D0]; v19; v15 = v23)
    {
      sub_2167B2E14();
      sub_21700DF14();
      v16 = sub_21700F1B4();
      v23 = v22;

      v20 += 16;
      --v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_217013DA0;
    *(v24 + 56) = i;
    *(v24 + 64) = sub_2167C6E08();
    *(v24 + 32) = v16;
    *(v24 + 40) = v15;
    sub_21700DF14();
    v10 = sub_21700E554();
    v26 = v25;

    *v9 = v10;
    v9[1] = v26;
    sub_21700DF14();
  }

  sub_21700DF14();
  return v10;
}

uint64_t sub_216B6C27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_216B6BC54(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

char *sub_216B6C2B0(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v112 = a1;
  v109 = *v2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v116 = v5;
  v117 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v106 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_77();
  v113 = (v9 - v10);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v100 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v104 = v18 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v103 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v102 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v105 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v107 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_53();
  v30 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v119 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v108 = (v33 - v34);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v100 - v36;
  v38 = &v2[OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue];
  *v38 = 0;
  *(v38 + 1) = 0;
  v110 = v38;
  v39 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_lock;
  v40 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v115 = v2;
  v111 = v39;
  *&v2[v39] = v40;
  v41 = v112;
  sub_21700CE04();
  sub_21700CD54();
  v42 = *(v16 + 8);
  v114 = v14;
  v122 = v16 + 8;
  v121 = v42;
  v42(v3, v14);
  v120 = v30;
  if (__swift_getEnumTagSinglePayload(v13, 1, v30) == 1)
  {
    sub_2168CF17C(v13);
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_148();
    sub_216B6DA1C(v43, v44);
    OUTLINED_FUNCTION_3_0();
    *v45 = 0x7461447472617473;
    v46 = v109;
    v45[1] = 0xE900000000000065;
    v45[2] = v46;
    OUTLINED_FUNCTION_9_7();
    (*(v47 + 104))();
    swift_willThrow();
    v48 = OUTLINED_FUNCTION_7_79();
    v49(v48);
    v121(v41, v114);
LABEL_17:
    v69 = v115;

    swift_deallocPartialClassInstance();
    return v69;
  }

  v50 = v120;
  v51 = *(v119 + 32);
  v51(v37, v13, v120);
  v52 = v41;
  sub_21700CE04();
  v53 = v113;
  sub_21700CD54();
  v54 = v114;
  OUTLINED_FUNCTION_4_94();
  v55();
  if (__swift_getEnumTagSinglePayload(v53, 1, v50) == 1)
  {
    sub_2168CF17C(v113);
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_148();
    sub_216B6DA1C(v56, v57);
    OUTLINED_FUNCTION_3_0();
    *v58 = 0x65746144646E65;
    v59 = v109;
    v58[1] = 0xE700000000000000;
    v58[2] = v59;
    OUTLINED_FUNCTION_9_7();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = OUTLINED_FUNCTION_7_79();
    v62(v61);
    OUTLINED_FUNCTION_4_94();
    v63();
    (*(v119 + 8))(v37, v120);
    goto LABEL_17;
  }

  v101 = v37;
  v64 = v119;
  v51(v108, v113, v120);
  v65 = v107;
  sub_21700CE04();
  v66 = v65;
  sub_21700CDB4();
  OUTLINED_FUNCTION_8_70();
  OUTLINED_FUNCTION_4_94();
  v67();
  if (!v37)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_148();
    sub_216B6DA1C(v90, v91);
    OUTLINED_FUNCTION_3_0();
    *v92 = 0x6574616C706D6574;
    v92[1] = 0xE800000000000000;
    v92[2] = v109;
    OUTLINED_FUNCTION_9_7();
    (*(v93 + 104))();
    swift_willThrow();
    v94 = OUTLINED_FUNCTION_7_79();
    v95(v94);
    OUTLINED_FUNCTION_4_94();
    v96();
    v97 = *(v64 + 8);
    v98 = v120;
    v97(v108, v120);
    v97(v101, v98);
    goto LABEL_17;
  }

  v68 = *(v64 + 16);
  v69 = v115;
  v70 = v120;
  v68(&v115[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_startDate], v101, v120);
  v68(&v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_endDate], v108, v70);
  v71 = &v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_template];
  *v71 = v66;
  *(v71 + 1) = v37;
  v72 = v105;
  sub_21700CE04();
  sub_21700CDB4();
  OUTLINED_FUNCTION_8_70();
  v73 = v121;
  v121(v72, v54);
  v74 = &v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag];
  *v74 = v72;
  *(v74 + 1) = v37;
  v75 = v102;
  OUTLINED_FUNCTION_17_49();
  sub_21700CD64();
  v76 = OUTLINED_FUNCTION_13_52();
  v73(v76);
  if (v37)
  {
    v77 = 0;
  }

  else
  {
    v77 = v75;
  }

  *&v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle] = v77;
  v78 = v103;
  OUTLINED_FUNCTION_17_49();
  sub_21700CD64();
  v79 = OUTLINED_FUNCTION_13_52();
  v73(v79);
  if (v37)
  {
    v80 = 0;
  }

  else
  {
    v80 = v78;
  }

  *&v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle] = v80;
  v81 = v104;
  sub_21700CE04();
  sub_21700CDB4();
  OUTLINED_FUNCTION_8_70();
  (v73)(v81, v54);
  v82 = &v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_stringFormat];
  *v82 = v81;
  *(v82 + 1) = v37;
  sub_21700CE04();
  v84 = v116;
  v83 = v117;
  v85 = v118;
  (*(v116 + 16))(v106, v118, v117);
  sub_216AC7084();
  if (v86)
  {
    v87 = v86;
  }

  else
  {
    v87 = MEMORY[0x277D84F90];
  }

  (*(v84 + 8))(v85, v83);
  (v73)(v52, v54);
  v88 = v120;
  v89 = *(v119 + 8);
  v89(v108, v120);
  v89(v101, v88);
  *&v69[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_excludedPatterns] = v87;
  return v69;
}

uint64_t sub_216B6CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_lock;
  *(v11 + v18) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v19 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_startDate;
  v20 = sub_2170061E4();
  v21 = *(*(v20 - 8) + 32);
  v21(v11 + v19, a1, v20);
  v21(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_endDate, a2, v20);
  v22 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_template);
  *v22 = a3;
  v22[1] = a4;
  v23 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag);
  *v23 = a5;
  v23[1] = a6;
  *(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle) = a7;
  *(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle) = a8;
  v24 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_stringFormat);
  *v24 = a9;
  v24[1] = a10;
  *(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_excludedPatterns) = a11;
  return v11;
}

void sub_216B6CE2C(uint64_t a1, uint64_t a2)
{
  if (sub_217006184() & 1) != 0 && (sub_217006184())
  {
    OUTLINED_FUNCTION_11_64(OBJC_IVAR____TtC7MusicUI19AttributedDateRange_template);
    v6 = v6 && v4 == v5;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {
      v7 = *(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag + 8);
      v8 = *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag + 8);
      if (v7)
      {
        if (!v8)
        {
          return;
        }

        v9 = *(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag) == *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag) && v7 == v8;
        if (!v9 && (sub_21700F7D4() & 1) == 0)
        {
          return;
        }
      }

      else if (v8)
      {
        return;
      }

      if (*(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle) == *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle) && *(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle) == *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle))
      {
        OUTLINED_FUNCTION_11_64(OBJC_IVAR____TtC7MusicUI19AttributedDateRange_stringFormat);
        v12 = v6 && v10 == v11;
        if (v12 || (sub_21700F7D4() & 1) != 0)
        {

          sub_216E20CEC();
        }
      }
    }
  }
}

uint64_t sub_216B6CF68()
{
  v1 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_startDate;
  v2 = sub_2170061E4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_endDate, v2);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();

  OUTLINED_FUNCTION_84_0();

  return v0;
}

uint64_t sub_216B6D048()
{
  sub_216B6CF68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AttributedDateRange()
{
  result = qword_27CAC3DC0;
  if (!qword_27CAC3DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_27CACE060;
  if (!qword_27CACE060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B6D0F4()
{
  result = sub_2170061E4();
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

uint64_t sub_216B6D22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216B6BE70(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void (*sub_216B6D284(void *a1))(uint64_t, uint64_t)
{
  v4 = v1;
  v6 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_53();
  v18 = type metadata accessor for AttributedDateRange();
  if (*(a1 + v18[6] + 8))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DD8);
    sub_2167880BC();
    swift_allocError();
    v21 = xmmword_21704A3E0;
LABEL_9:
    *v20 = v21;
    *(v20 + 16) = v19;
    swift_willThrow();
LABEL_10:
    sub_216B6D970(a1);
    return v19;
  }

  v22 = v18;
  if (*(a1 + v18[7] + 8))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DD8);
    sub_2167880BC();
    swift_allocError();
    v21 = xmmword_21704A3D0;
    goto LABEL_9;
  }

  v23 = (a1 + v18[8]);
  if (!v23[1])
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DD8);
    sub_2167880BC();
    swift_allocError();
    v21 = xmmword_21704A3C0;
    goto LABEL_9;
  }

  v46 = v23[1];
  v44 = *v23;
  sub_217006164();
  sub_217006164();
  v24 = v22[10];
  v25 = (a1 + v22[9]);
  v26 = v25[1];
  v43 = *v25;
  v27 = a1 + v24;
  LOBYTE(v24) = *(a1 + v24 + 9);
  v45 = v26;
  if (v24)
  {
    sub_21700DF14();
    sub_21700DF14();
    v42 = 0;
  }

  else
  {
    LODWORD(v42) = v27[8];
    v41 = *v27;
    sub_21700DF14();
    sub_21700DF14();
    v29 = sub_216B6D6E4(v41, v42 & 1);
    if (v4)
    {
      goto LABEL_17;
    }

    v42 = v29;
  }

  v30 = a1 + v22[11];
  if ((v30[9] & 1) == 0)
  {
    v31 = sub_216B6D6E4(*v30, v30[8] & 1);
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_17:

    v19 = *(v8 + 8);
    v19(v3, v6);
    v19(v2, v6);
    goto LABEL_10;
  }

  v31 = 0;
LABEL_18:
  v32 = (a1 + v22[12]);
  v33 = v32[1];
  v41 = v31;
  v37[1] = v33;
  if (v33)
  {
    v40 = *v32;
    v38 = v33;
  }

  else
  {
    v38 = 0xE200000000000000;
    v40 = 16421;
  }

  v37[0] = *a1;
  v39 = v8;
  v34 = *(v8 + 16);
  v34(v16, v2, v6);
  v34(v12, v3, v6);
  v19 = swift_allocObject();
  sub_21700DF14();
  v35 = sub_21700DF14();
  sub_216B6CCA8(v16, v12, v44, v46, v43, v45, v42, v41, v40, v38, v35);
  v36 = *(v39 + 8);
  v36(v3, v6);
  v36(v2, v6);
  sub_216B6D970(a1);
  return v19;
}