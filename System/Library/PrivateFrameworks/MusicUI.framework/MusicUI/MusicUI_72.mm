uint64_t sub_216E08EF0()
{
  result = sub_216E08F10();
  qword_27CAC9E28 = result;
  return result;
}

uint64_t sub_216E08F10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E88);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_217006324();
  v4 = sub_217006344();
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_217006334();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 setTimeZone_];

    return v3;
  }

  return result;
}

uint64_t sub_216E09028(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_216E0907C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216E090D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216E0912C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216E09184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MusicVideoDetailPageIntent()
{
  result = qword_27CAC9EA0;
  if (!qword_27CAC9EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E09288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v42 = type metadata accessor for MusicVideoDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216E09618(JSContext a1)
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
    v8 = type metadata accessor for MusicVideoDetailPageIntent();
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

uint64_t sub_216E097EC(uint64_t a1)
{
  result = sub_2166CEA14(&qword_27CAC9EB0, type metadata accessor for MusicVideoDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E0988C(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEA14(&qword_27CAC9EB0, type metadata accessor for MusicVideoDetailPageIntent);
  result = sub_2166CEA14(&qword_27CAC9EB8, type metadata accessor for MusicVideoDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

void __swiftcall SearchParameters.init(term:hintsEntity:contentKind:contentID:additionalParameters:)(MusicUI::SearchParameters *__return_ptr retstr, Swift::String term, Swift::String_optional hintsEntity, Swift::String_optional contentKind, Swift::String_optional contentID, Swift::OpaquePointer_optional additionalParameters)
{
  retstr->term = term;
  retstr->hintsEntity = hintsEntity;
  retstr->contentKind = contentKind;
  retstr->contentID = contentID;
  retstr->additionalParameters.value._rawValue = additionalParameters.value._rawValue;
}

uint64_t SearchParameters.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  sub_21700CE04();
  v14 = sub_21700CDB4();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v13, v5);
  if (v16)
  {
    OUTLINED_FUNCTION_5_122();
    v38 = v14;
    sub_21700CE04();
    v18 = sub_21700CDB4();
    v36 = v19;
    v37 = v18;
    v17(v10, v5);
    OUTLINED_FUNCTION_4_135();
    sub_21700CE04();
    v20 = sub_21700CDB4();
    v34 = v21;
    v35 = v20;
    v17(v10, v5);
    OUTLINED_FUNCTION_4_135();
    sub_21700CE04();
    v22 = sub_21700CDB4();
    v24 = v23;
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v25 + 8))(v39);
    v17(a1, v5);
    result = (v17)(v10, v5);
    v27 = v37;
    *a3 = v38;
    a3[1] = v16;
    v29 = v35;
    v28 = v36;
    a3[2] = v27;
    a3[3] = v28;
    v30 = v34;
    a3[4] = v29;
    a3[5] = v30;
    a3[6] = v22;
    a3[7] = v24;
    a3[8] = 0;
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v32 = 1836213620;
    v32[1] = 0xE400000000000000;
    v32[2] = &type metadata for SearchParameters;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v33 + 8))(v39);
    return (v17)(a1, v5);
  }

  return result;
}

uint64_t sub_216E09C44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_5_122() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == (OUTLINED_FUNCTION_4_135() & 0xFFFFFFFFFFFFLL | 0x4B74000000000000) && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == (OUTLINED_FUNCTION_4_135() & 0xFFFFFFFFFFFFLL | 0x4974000000000000) && a2 == v10;
        if (v11 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x800000021708E4F0 == a2)
        {

          return 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_59_2();

          if (v13)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_216E09DAC(char a1)
{
  result = 1836213620;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_122();
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_135() & 0xFFFFFFFFFFFFLL | 0x4B74000000000000;
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_135() & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216E09E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216E09C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216E09EA8(uint64_t a1)
{
  v2 = sub_216E0A440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216E09EE4(uint64_t a1)
{
  v2 = sub_216E0A440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9EC0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216E0A440();
  sub_21700F964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_1_193();
  v6 = sub_21700F664();
  v9 = v8;
  v40 = v6;
  OUTLINED_FUNCTION_1_193();
  v10 = sub_21700F614();
  v41 = v11;
  v37 = v10;
  OUTLINED_FUNCTION_1_193();
  v36 = sub_21700F614();
  v39 = v12;
  LOBYTE(v43) = 3;
  OUTLINED_FUNCTION_1_193();
  v35 = sub_21700F614();
  v38 = v13;
  LOBYTE(__src[0]) = 4;
  sub_216C70280();
  sub_21700F644();
  v14 = v43;
  v15 = v44;
  if (v44 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v43;
  }

  v31 = v16;
  v17 = 0xC000000000000000;
  if (v44 >> 60 != 15)
  {
    v17 = v44;
  }

  v30 = v17;
  v33 = objc_opt_self();
  v34 = v14;
  sub_21677A3F0(v14, v15);
  v32 = sub_217005F94();
  sub_21677A524(v31, v30);
  v43 = 0;
  v18 = [v33 JSONObjectWithData:v32 options:0 error:&v43];

  if (v18)
  {
    v19 = v43;
    sub_21700F1E4();
    swift_unknownObjectRelease();
    sub_21677A510(v34, v15);
    v20 = OUTLINED_FUNCTION_0_229();
    v21(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    v22 = swift_dynamicCast();
    v23 = __src[0];
    if (!v22)
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = v43;
    v25 = sub_217005D34();

    swift_willThrow();
    sub_21677A510(v34, v15);
    v26 = OUTLINED_FUNCTION_0_229();
    v27(v26);
    v23 = 0;
  }

  __src[0] = v40;
  __src[1] = v9;
  __src[2] = v37;
  __src[3] = v41;
  __src[4] = v36;
  __src[5] = v39;
  __src[6] = v35;
  __src[7] = v38;
  __src[8] = v23;
  v28 = a2;
  v29 = v23;
  memcpy(v28, __src, 0x48uLL);
  sub_216E0A9C4(__src, &v43);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v43 = v40;
  v44 = v9;
  v45 = v37;
  v46 = v41;
  v47 = v36;
  v48 = v39;
  v49 = v35;
  v50 = v38;
  v51 = v29;
  return sub_216E0A9FC(&v43);
}

unint64_t sub_216E0A440()
{
  result = qword_27CAC9EC8;
  if (!qword_27CAC9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9EC8);
  }

  return result;
}

uint64_t SearchParameters.encode(to:)(void *a1)
{
  v30[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9ED0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  v8 = v1[2];
  v28[5] = v1[3];
  v28[6] = v8;
  v9 = v1[4];
  v28[3] = v1[5];
  v28[4] = v9;
  v10 = v1[6];
  v28[1] = v1[7];
  v28[2] = v10;
  v11 = v1[8];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_216E0A440();
  sub_21700F974();
  LOBYTE(v30[0]) = 0;
  v16 = v28[7];
  sub_21700F724();
  if (v16)
  {
    return (*(v4 + 8))(v7, v15);
  }

  LOBYTE(v30[0]) = 1;
  sub_21700F6D4();
  LOBYTE(v30[0]) = 2;
  sub_21700F6D4();
  v18 = v4;
  LOBYTE(v30[0]) = 3;
  sub_21700F6D4();
  if (!v11)
  {
    sub_21700E384();
  }

  v19 = objc_opt_self();
  sub_21700DF14();
  v20 = sub_21700E344();

  v30[0] = 0;
  v21 = [v19 dataWithJSONObject:v20 options:0 error:v30];

  v22 = v30[0];
  if (v21)
  {
    v23 = sub_217005FB4();
    v25 = v24;
  }

  else
  {
    v26 = v22;
    v27 = sub_217005D34();

    swift_willThrow();
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v30[0] = v23;
  v30[1] = v25;
  v29 = 4;
  sub_216C70548();
  sub_21700F704();
  (*(v18 + 8))(v7, v15);
  return sub_21677A510(v23, v25);
}

uint64_t static SearchParameters.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[7];
  v17 = a2[6];
  v18 = a1[6];
  if (!v11 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v2 == v8 && v4 == v7;
    if (!v13 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v14 = v3 == v10 && v5 == v9;
  if (!v14 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  result = (v6 | v12) == 0;
  if (v6 && v12)
  {
    if (v18 == v17 && v6 == v12)
    {
      return 1;
    }

    else
    {

      return sub_21700F7D4();
    }
  }

  return result;
}

uint64_t sub_216E0AA2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_216E0AA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216E0ABAC()
{
  result = qword_27CAC9ED8;
  if (!qword_27CAC9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9ED8);
  }

  return result;
}

unint64_t sub_216E0AC04()
{
  result = qword_27CAC9EE0;
  if (!qword_27CAC9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9EE0);
  }

  return result;
}

unint64_t sub_216E0AC5C()
{
  result = qword_27CAC9EE8;
  if (!qword_27CAC9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9EE8);
  }

  return result;
}

uint64_t sub_216E0ACB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F00);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  v14 = type metadata accessor for ListSection();
  OUTLINED_FUNCTION_1();
  v50 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v51 = v18 - v17;
  v19 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 48) = 0;
  v26 = *(a1 + 16);
  if (v26)
  {
    v47 = a3;
    v48 = a2;
    v27 = *(v19 + 28);
    v28 = *(v21 + 80);
    v46[1] = a1;
    v29 = a1 + ((v28 + 32) & ~v28);
    v30 = *(v21 + 72);
    v31 = MEMORY[0x277D84F90];
    v49 = v27;
    do
    {
      sub_216E0B05C(v29, v25, type metadata accessor for MappedSection);
      sub_216E0B05C(v25 + v27, v9, type metadata accessor for MappedSection.Content);
      sub_216E116D8(v25, type metadata accessor for MappedSection);
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        OUTLINED_FUNCTION_2_163();
        sub_216E103DC(v9, v13, v32);
        __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_19_2();
        __swift_storeEnumTagSinglePayload(v33, v34, 1, v14);
        sub_216E116D8(v9, type metadata accessor for MappedSection.Content);
      }

      v35 = OUTLINED_FUNCTION_19_2();
      if (__swift_getEnumTagSinglePayload(v35, v36, v14) == 1)
      {
        sub_2166997CC(v13, &qword_27CAC9F00);
      }

      else
      {
        OUTLINED_FUNCTION_2_163();
        sub_216E103DC(v13, v51, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693879C(0, *(v31 + 16) + 1, 1, v31);
          v31 = v43;
        }

        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_21693879C(v38 > 1, v39 + 1, 1, v31);
          v31 = v44;
        }

        *(v31 + 16) = v39 + 1;
        OUTLINED_FUNCTION_2_163();
        sub_216E103DC(v40, v41, v42);
        v27 = v49;
      }

      v29 += v30;
      --v26;
    }

    while (v26);

    a3 = v47;
    a2 = v48;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  *a3 = v31;
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_216E0B05C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216E0B0DC(uint64_t a1)
{
  sub_2170084E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_217009074();
}

uint64_t sub_216E0B190()
{
  v1 = sub_2170096D4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F08);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  v17 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F10);
  sub_216E0FB8C();
  sub_217009ED4();
  sub_2170096C4();
  OUTLINED_FUNCTION_9_92();
  sub_2166D9530(v14, &qword_27CAC9F08);
  OUTLINED_FUNCTION_82();
  sub_21700ABC4();
  (*(v3 + 8))(v7, v1);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_216E0B370(uint64_t *a1)
{
  v6 = *a1;
  sub_2168E470C(a1, v5);
  v1 = swift_allocObject();
  v2 = v5[1];
  v1[1] = v5[0];
  v1[2] = v2;
  v3 = v5[3];
  v1[3] = v5[2];
  v1[4] = v3;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F28);
  sub_2166D9530(&qword_27CAC9FC0, &qword_27CAC15D0);
  sub_216E0FC10();
  sub_216E1024C(&qword_27CAC9FC8, type metadata accessor for ListSection);
  return sub_21700B164();
}

uint64_t sub_216E0B4D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F60);
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v22 = a1;
  v23 = a2;
  v7 = (a1 + *(type metadata accessor for ListSection() + 24));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = qword_27CAB60D0;
  sub_21700DF14();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = dword_27CAC9EF8;
  v13 = sub_217009C94();
  sub_217007F24();
  v26 = 0;
  v27 = v9;
  v28 = v8;
  v29 = 0;
  v30 = v10;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = 0;
  sub_216E0B810(a1, a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9FD0);
  sub_216E0FCEC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F40);
  v19 = sub_216E0FD78();
  v24 = v18;
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  sub_216E0FE80();
  return sub_21700B1A4();
}

uint64_t sub_216E0B6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F40);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_216E0B05C(a1, &v10 - v5, type metadata accessor for ListSection);
  v7 = *(a2 + 56);
  *&v6[*(type metadata accessor for SettingsListSectionView(0) + 20)] = v7;
  v8 = &v6[*(v4 + 36)];
  v8[32] = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;

  sub_217008344();
  sub_216E0FD78();
  sub_21700A624();
  return sub_2166997CC(v6, &qword_27CAC9F40);
}

uint64_t sub_216E0B810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F70);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v9 = sub_217005C64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = (a1 + *(type metadata accessor for ListSection() + 28));
  v17 = v16[1];
  if (v17)
  {
    v57 = v6;
    v58 = a3;
    *&v59[0] = *v16;
    *(&v59[0] + 1) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    sub_217006554();

    (*(v10 + 16))(v12, v15, v9);
    v18 = sub_21700A164();
    v20 = v19;
    v56 = v9;
    v22 = v21;
    v24 = v23;
    KeyPath = swift_getKeyPath();
    sub_2168E470C(a2, v59);
    v26 = swift_allocObject();
    v27 = v59[1];
    v26[1] = v59[0];
    v26[2] = v27;
    v28 = v59[3];
    v26[3] = v59[2];
    v26[4] = v28;
    v29 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9FB0) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD70);
    sub_2170084D4();
    *v29 = KeyPath;
    *v8 = v18;
    *(v8 + 1) = v20;
    v8[16] = v22 & 1;
    *(v8 + 3) = v24;
    v30 = sub_217009E94();
    v31 = swift_getKeyPath();
    v32 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9FA0) + 36)];
    *v32 = v31;
    v32[1] = v30;
    if (qword_27CAB60D8 != -1)
    {
      swift_once();
    }

    v33 = dword_27CAC9EFC;
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F90) + 36)] = v33;
    LOBYTE(v33) = sub_217009CA4();
    sub_217007F24();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F80) + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    LOBYTE(v33) = sub_217009C94();
    sub_217007F24();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    (*(v10 + 8))(v15, v56);
    v51 = v57;
    v52 = &v8[*(v57 + 36)];
    *v52 = v33;
    *(v52 + 1) = v44;
    *(v52 + 2) = v46;
    *(v52 + 3) = v48;
    *(v52 + 4) = v50;
    v52[40] = 0;
    v53 = v58;
    sub_216E102A4(v8, v58);
    return __swift_storeEnumTagSinglePayload(v53, 0, 1, v51);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

uint64_t sub_216E0BC48(uint64_t a1)
{
  v2 = sub_21700DA84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenExternalURLAction();
  MEMORY[0x28223BE20](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217005EF4();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_21700D234();
  v8[*(v6 + 20)] = 1;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216C0C534(v13);
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12[3] = v6;
    v12[4] = sub_216E1024C(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    sub_216E0B05C(v8, boxed_opaque_existential_1, type metadata accessor for OpenExternalURLAction);
    sub_217007534();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    sub_2166997CC(v13, &qword_27CAB7310);
  }

  sub_2170084C4();
  (*(v3 + 8))(v5, v2);
  return sub_216E116D8(v8, type metadata accessor for OpenExternalURLAction);
}

uint64_t sub_216E0BEE0()
{
  v1 = type metadata accessor for SettingsListSectionView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v7[1] = *(v0 + *(type metadata accessor for ListSection() + 32));
  swift_getKeyPath();
  sub_216E0B05C(v0, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsListSectionView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_216E103DC(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for SettingsListSectionView);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0090);
  type metadata accessor for SettingsListItemView(0);
  sub_2166D9530(&qword_27CAC9FE8, &qword_27CAC0090);
  sub_216E1024C(&qword_27CAC9FF0, type metadata accessor for SettingsListItemView);
  return sub_21700B154();
}

uint64_t sub_216E0C0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ListLockup();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216E0B05C(a1, v8, type metadata accessor for ListLockup);
  v9 = *(a2 + *(type metadata accessor for SettingsListSectionView(0) + 20));

  return sub_216E0C1B4(v8, v9, a3);
}

uint64_t sub_216E0C1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SettingsListItemView(0);
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  *(v7 + 40) = 0;
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + v6[9];
  v19 = 0;
  sub_21700AEA4();
  v10 = v17;
  *v9 = v16[0];
  *(v9 + 8) = v10;
  sub_216E0B05C(a1, a3, type metadata accessor for ListLockup);
  v11 = type metadata accessor for ListLockup();
  sub_216683A80(a1 + *(v11 + 60), v16, &qword_27CAC9FF8);
  sub_216E116D8(a1, type metadata accessor for ListLockup);
  if (v18)
  {
    v12 = v16[0];
    result = sub_216E104DC(v16);
  }

  else
  {
    result = sub_2166997CC(v16, &qword_27CAC9FF8);
    v12 = 0;
  }

  v14 = a3 + v6[8];
  *v14 = v12;
  *(v14 + 8) = 0;
  v15 = a3 + v6[7];
  *v15 = sub_216E104D4;
  *(v15 + 8) = a2;
  *(v15 + 16) = 0;
  return result;
}

void sub_216E0C350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  v3 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  type metadata accessor for SocialProfileUpdater(0);
  swift_allocObject();

  sub_216AFBA30();
}

uint64_t sub_216E0C41C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA020);
  v36 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v36 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA028);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v5;
  v6 = sub_2170091D4();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SettingsListItemView(0);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA030);
  MEMORY[0x28223BE20](v11);
  v13 = (&v36 - v12);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA038);
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ListLockup();
  sub_216683A80(v2 + *(v17 + 52), &v44, &qword_27CAB6DB0);
  if (v46)
  {
    sub_2166A0F18(&v44, &v47);
    sub_2167B7D58(&v47, v13);
    v18 = v11[11];
    v19 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v13 + v18, 1, 1, v19);
    sub_216E0B05C(v2, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsListItemView);
    v20 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v21 = swift_allocObject();
    sub_216E103DC(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SettingsListItemView);
    v22 = v11[12];
    *(v13 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v23 = v13 + v11[13];
    *v23 = swift_getKeyPath();
    v23[40] = 0;
    v13[5] = sub_216E10998;
    v13[6] = v21;
    v13[7] = 0;
    v13[8] = 0;
    sub_2170091C4();
    v24 = sub_2166D9530(&qword_27CACA040, &qword_27CACA030);
    v25 = sub_216E1024C(&qword_27CABC420, MEMORY[0x277CDDE40]);
    sub_21700A364();
    (*(v38 + 8))(v8, v6);
    sub_2166997CC(v13, &qword_27CACA030);
    v26 = v40;
    (*(v14 + 16))(v41, v16, v40);
    swift_storeEnumTagMultiPayload();
    *&v44 = v11;
    *(&v44 + 1) = v6;
    v45 = v24;
    v46 = v25;
    swift_getOpaqueTypeConformance2();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA048);
    v28 = sub_216E10710();
    *&v44 = v27;
    *(&v44 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    (*(v14 + 8))(v16, v26);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  }

  else
  {
    sub_2166997CC(&v44, &qword_27CAB6DB0);
    sub_216E0CB40();
    v30 = v36;
    v31 = v43;
    (*(v36 + 16))(v41, v4, v43);
    swift_storeEnumTagMultiPayload();
    v32 = sub_2166D9530(&qword_27CACA040, &qword_27CACA030);
    v33 = sub_216E1024C(&qword_27CABC420, MEMORY[0x277CDDE40]);
    v47 = v11;
    v48 = v6;
    v49 = v32;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA048);
    v35 = sub_216E10710();
    v47 = v34;
    v48 = v35;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v30 + 8))(v4, v31);
  }
}

uint64_t sub_216E0CB40()
{
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA060);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &__src[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA048);
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-v10];
  *v8 = sub_2170091A4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA098);
  sub_216E0CE44(v0, &v8[*(v12 + 44)]);
  v13 = sub_217009C74();
  sub_217007F24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA080) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA070) + 36)] = 0;
  v23 = sub_217009CE4();
  sub_217007F24();
  v24 = &v8[*(v6 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v8, v11, &qword_27CACA060);
  memcpy(&v11[*(v9 + 36)], __src, 0x70uLL);
  sub_2170099B4();
  sub_216E10710();
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_2166997CC(v11, &qword_27CACA048);
}

uint64_t sub_216E0CE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA0A0);
  v78 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v77 = &v73 - v2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA0A8);
  MEMORY[0x28223BE20](v83);
  v4 = &v73 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB378);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v73 - v8;
  v9 = type metadata accessor for SettingsListItemView(0);
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v86 = v10;
  v87 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA0B0);
  MEMORY[0x28223BE20](v80);
  v82 = &v73 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA0B8);
  v81 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v79 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB370);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB360);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v94 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  sub_216E0B05C(a1, &v73 - v21, type metadata accessor for ListLockup);
  v23 = &v22[*(type metadata accessor for SettingsListItemView.ListItemArtworkView(0) + 20)];
  type metadata accessor for SocialProfileUpdater(0);
  sub_216E1024C(&qword_280E3B500, type metadata accessor for SocialProfileUpdater);
  *v23 = sub_217008CF4();
  v23[1] = v24;
  v25 = sub_2170081B4();
  v26 = sub_217007D54();
  v27 = *(v18 + 44);
  v93 = v22;
  v28 = &v22[v27];
  *v28 = v26;
  v28[1] = v25;
  v92 = sub_2170093C4();
  v113 = 0;
  sub_216E0E39C(a1, v110);
  memcpy(v114, v110, 0x89uLL);
  memcpy(__dst, v110, 0x89uLL);
  sub_216683A80(v114, v103, &qword_27CACA0C0);
  v29 = a1;
  sub_2166997CC(__dst, &qword_27CACA0C0);
  memcpy(&v112[7], v114, 0x89uLL);
  LODWORD(a1) = v113;
  v31 = type metadata accessor for ListLockup();
  if (*(v29 + v31[12]) == 1)
  {
    v32 = sub_21700AC54();
  }

  else
  {
    v32 = sub_21700AD14();
  }

  v91 = v32;
  KeyPath = swift_getKeyPath();
  v33 = v31[15];
  v34 = (v29 + v31[14]);
  v35 = v34[1];
  v88 = *v34;
  sub_216683A80(v29 + v33, v103, &qword_27CAC9FF8);
  if (*&v103[32])
  {
    v110[0] = *v103;
    v110[1] = *&v103[16];
    v110[2] = *&v103[32];
    sub_21700DF14();
    sub_217009264();
    v73 = v31;
    v74 = v35;
    v36 = v29 + *(v9 + 32);
    v76 = v29;
    v37 = v4;
    v38 = *v36;
    v75 = a1;
    v39 = *(v36 + 8);
    LOBYTE(v104) = v38;
    v105 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AED4();
    v40 = v82;
    v35 = v74;
    sub_21700B054();
    *(v40 + *(v80 + 36)) = 257;
    v103[0] = v38;
    v4 = v37;
    v29 = v76;
    *&v103[8] = v39;
    sub_21700AEB4();
    a1 = v87;
    sub_216E0B05C(v29, v87, type metadata accessor for SettingsListItemView);
    sub_216E10F64(v110, v103);
    v41 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v42 = (v86 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = a1;
    LOBYTE(a1) = v75;
    sub_216E103DC(v44, v43 + v41, type metadata accessor for SettingsListItemView);
    v45 = (v43 + v42);
    v46 = *&v103[16];
    *v45 = *v103;
    v45[1] = v46;
    v45[2] = *&v103[32];
    sub_216E1104C();
    v47 = v79;
    v31 = v73;
    sub_21700AB14();

    sub_2166997CC(v40, &qword_27CACA0B0);
    sub_216E104DC(v110);
    v48 = v99;
    v49 = v89;
    (*(v81 + 32))(v99, v47, v89);
    v50 = v48;
    v51 = 0;
    v52 = v49;
  }

  else
  {
    sub_21700DF14();
    sub_2166997CC(v103, &qword_27CAC9FF8);
    v50 = v99;
    v51 = 1;
    v52 = v89;
  }

  __swift_storeEnumTagSinglePayload(v50, v51, 1, v52);
  v53 = v98;
  if (*(v29 + v31[8]) == 1)
  {
    *v4 = 1;
    swift_storeEnumTagMultiPayload();
    sub_216E10F10();
    sub_2166D9530(&qword_27CACA0F8, &qword_27CACA0A0);
    sub_217009554();
LABEL_11:
    v63 = 0;
    goto LABEL_13;
  }

  if (*(v29 + v31[9]) == 1)
  {
    v54 = v87;
    sub_216E0B05C(v29, v87, type metadata accessor for SettingsListItemView);
    v55 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v56 = swift_allocObject();
    v57 = sub_216E103DC(v54, v56 + v55, type metadata accessor for SettingsListItemView);
    MEMORY[0x28223BE20](v57);
    *(&v73 - 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA0D0);
    sub_216E10E2C();
    v59 = v77;
    sub_21700AF14();
    v60 = v78;
    v61 = v84;
    (*(v78 + 16))(v4, v59, v84);
    swift_storeEnumTagMultiPayload();
    sub_216E10F10();
    sub_2166D9530(&qword_27CACA0F8, &qword_27CACA0A0);
    sub_217009554();
    v62 = v61;
    v53 = v98;
    (*(v60 + 8))(v59, v62);
    goto LABEL_11;
  }

  v63 = 1;
LABEL_13:
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA0C8);
  __swift_storeEnumTagSinglePayload(v53, v63, 1, v64);
  if (v35)
  {
    v65 = v88;
  }

  else
  {
    v65 = 0;
  }

  v66 = v93;
  v67 = v35;
  v68 = v94;
  sub_216683A80(v93, v94, &qword_27CABB360);
  v104 = v68;
  *v103 = v92;
  *&v103[8] = 0x4000000000000000;
  v103[16] = a1;
  memcpy(&v103[17], v112, 0x90uLL);
  *&v103[161] = *v111;
  *&v103[164] = *&v111[3];
  *&v103[168] = KeyPath;
  *&v103[176] = v91;
  v100[1] = v67;
  v101 = 0;
  v102 = 1;
  v105 = v103;
  v106 = &v101;
  v100[0] = v65;
  v107 = v100;
  v69 = v99;
  v70 = v96;
  sub_216683A80(v99, v96, &qword_27CABB370);
  v108 = v70;
  v71 = v95;
  sub_216683A80(v53, v95, &qword_27CABB378);
  v109 = v71;
  sub_2168AAE6C(&v104);
  sub_2166997CC(v53, &qword_27CABB378);
  sub_2166997CC(v69, &qword_27CABB370);
  sub_2166997CC(v66, &qword_27CABB360);
  sub_2166997CC(v71, &qword_27CABB378);
  sub_2166997CC(v70, &qword_27CABB370);

  memcpy(v110, v103, 0xB8uLL);
  sub_2166997CC(v110, &qword_27CABB380);
  return sub_2166997CC(v68, &qword_27CABB360);
}

uint64_t sub_216E0DA8C(uint64_t a1, void *a2)
{
  v4 = sub_2170075A4();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2170090F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsListItemView(0);
  sub_216683A80(a1 + *(v11 + 20), &v44, &qword_27CAC4260);
  if (v47 == 1)
  {
    v48 = v44;
    v49 = v45;
    v50 = v46;
  }

  else
  {
    sub_21700ED94();
    v12 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  if (!*(&v49 + 1))
  {
    return sub_2166997CC(&v48, &qword_27CAB7310);
  }

  v36 = v50;
  v35 = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  v13 = a2[4];
  v14 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v13);
  v15 = (a1 + *(v11 + 32));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v39) = v16;
  v40 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v18 = v44;
  v19 = v45;
  *(&v45 + 1) = v13;
  v46 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  sub_21686CA08(v18, *(&v18 + 1), v19, v13, v14, boxed_opaque_existential_1);

  v21 = *(&v45 + 1);
  v22 = v46;
  v23 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  v42 = v21;
  v43 = *(v22 + 8);
  v24 = __swift_allocate_boxed_opaque_existential_1(&v39);
  v25 = (*(*(v21 - 8) + 16))(v24, v23, v21);
  sub_216C0C548(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1));
  sub_217007544();
  (*(v37 + 8))(v6, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v48);
}

uint64_t sub_216E0DE04()
{
  type metadata accessor for SettingsListItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  return sub_21700AEC4();
}

void *sub_216E0DE78@<X0>(void *a1@<X8>)
{
  type metadata accessor for SettingsListItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  sub_216F132B0(__src, v5, v6, v7, 1, sub_216E0DFBC, 0);
  type metadata accessor for SocialProfileUpdater(0);
  sub_216E1024C(&qword_280E3B500, type metadata accessor for SocialProfileUpdater);
  v2 = sub_2170081B4();
  v3 = sub_217007D54();
  result = memcpy(a1, __src, 0x78uLL);
  a1[15] = v3;
  a1[16] = v2;
  return result;
}

uint64_t sub_216E0DFBC@<X0>(uint64_t a1@<X8>)
{
  sub_216983738(95);
  sub_217009D54();
  swift_getKeyPath();
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  v2 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

void *sub_216E0E0C8@<X0>(void *a1@<X8>)
{
  sub_21700DF14();
  sub_217009D44();
  v1 = sub_21700A094();
  v3 = v2;
  v5 = v4;

  sub_21700ACF4();
  v6 = sub_21700A034();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_21678817C(v1, v3, v5 & 1);

  v13 = sub_21700B3B4();
  v15 = v14;
  v16 = sub_21700AC84();
  sub_21700B3B4();
  sub_2170083C4();
  *&v31[6] = v32;
  *&v31[22] = v33;
  *&v31[38] = v34;
  *(&__src[1] + 2) = *v31;
  __src[0] = v16;
  LOWORD(__src[1]) = 256;
  *(&__src[3] + 2) = *&v31[16];
  *(&__src[5] + 2) = *&v31[32];
  __src[7] = *(&v34 + 1);
  __src[8] = v13;
  __src[9] = v15;
  memcpy(__dst, __src, sizeof(__dst));
  v36 = v16;
  v37 = 256;
  v38 = *v31;
  v39 = *&v31[16];
  *v40 = *&v31[32];
  *&v40[14] = *(&v34 + 1);
  v41 = v13;
  v42 = v15;
  sub_216683A80(__src, v47, &qword_27CACA160);
  sub_2166997CC(&v36, &qword_27CACA160);
  v17 = v10 & 1;
  sub_21700B3B4();
  sub_2170083C4();
  LOBYTE(v13) = sub_217009CD4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v47[0]) = 0;
  sub_21700ACC4();
  v26 = sub_21700AD04();

  *&v47[0] = v6;
  *(&v47[0] + 1) = v8;
  LOBYTE(v47[1]) = v17;
  *(&v47[1] + 1) = v12;
  memcpy(&v47[2], __dst, 0x50uLL);
  v47[7] = v43;
  v47[8] = v44;
  v47[9] = v45;
  LOBYTE(v47[10]) = v13;
  *(&v47[10] + 1) = v19;
  *&v47[11] = v21;
  *(&v47[11] + 1) = v23;
  *&v47[12] = v25;
  BYTE8(v47[12]) = 0;
  *&v47[13] = v26;
  *(&v47[13] + 8) = xmmword_217026230;
  *(&v47[14] + 1) = 0x4000000000000000;
  nullsub_1(v47, v27, v28);
  return memcpy(a1, v47, 0xF0uLL);
}

uint64_t sub_216E0E39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ListLockup();
  v4 = v3;
  if (*(a1 + *(v3 + 36)) == 1)
  {
    type metadata accessor for SettingsListItemView(0);
    type metadata accessor for SocialProfileUpdater(0);
    sub_216E1024C(&qword_280E3B500, type metadata accessor for SocialProfileUpdater);
    sub_2170081B4();
    v20 = sub_216AFF32C();
    v6 = v5;

LABEL_5:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v7 = (a1 + *(v3 + 24));
  v6 = v7[1];
  if (v6)
  {
    v20 = *v7;
    sub_21700DF14();
    goto LABEL_5;
  }

  v20 = 0;
  v8 = 0;
LABEL_6:
  v9 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v11 = sub_217009814();
  v12 = (a1 + *(v4 + 28));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = qword_27CAB60C8;
  sub_21700DF14();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27CAC9EF0;
  v18 = swift_getKeyPath();

  v38 = 0;
  v39 = 1;
  v31 = v20;
  v32 = v6;
  v33 = 0;
  v34 = v8;
  v35 = KeyPath;
  v36 = v9;
  v37 = v11;
  v40[0] = &v38;
  v40[1] = &v31;
  v24 = v14;
  v25 = v13;
  v26 = 0;
  v27 = v15;
  v28 = v18;
  v29 = v17;
  v30 = sub_217009834();
  v22 = 0;
  v23 = 1;
  v40[2] = &v24;
  v40[3] = &v22;
  sub_2168AAF7C(v40, a2);
  sub_2167C4DF0(v24, v25, v26, v27);

  sub_2167C4DF0(v31, v32, v33, v34);
}

uint64_t sub_216E0E608@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA130);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA138);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA140);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  if (a1)
  {
    v37 = v17;
    v38 = v11;
    v39 = v15;
    v40 = v10;
    v41 = v4;
    v42 = a2;
    v18 = sub_21700ADB4();
    v19 = sub_217009D54();
    KeyPath = swift_getKeyPath();
    v43 = v18;
    v44 = KeyPath;
    v45 = v19;
    sub_217009DE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
    sub_2167E947C();
    sub_21700A304();

    v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA148) + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
    v23 = *MEMORY[0x277CE1050];
    v24 = sub_21700ADF4();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    sub_21700AD34();
    v25 = sub_21700AD04();

    v26 = swift_getKeyPath();
    v27 = &v9[*(v7 + 36)];
    *v27 = v26;
    v27[1] = v25;
    v28 = *MEMORY[0x277CDF988];
    v29 = sub_217008844();
    (*(*(v29 - 8) + 104))(v6, v28, v29);
    sub_216E1024C(&qword_280E2B340, MEMORY[0x277CDFA28]);
    result = sub_21700E494();
    if (result)
    {
      v31 = sub_216E1152C();
      v32 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
      v33 = v41;
      sub_21700A5B4();
      sub_2166997CC(v6, &qword_27CAB75D0);
      sub_2166997CC(v9, &qword_27CACA130);
      v43 = v7;
      v44 = v33;
      v45 = v31;
      v46 = v32;
      swift_getOpaqueTypeConformance2();
      v34 = v37;
      v35 = v40;
      sub_21700A4F4();
      (*(v38 + 8))(v13, v35);
      v36 = v42;
      sub_2167C5834(v34, v42, &qword_27CACA140);
      return __swift_storeEnumTagSinglePayload(v36, 0, 1, v39);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }

  return result;
}

uint64_t sub_216E0EB48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v115 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v93 - v4;
  v104 = sub_21700C444();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v93 - v8;
  v107 = sub_217007474();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v93 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v13 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v101 = &v93 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7690);
  MEMORY[0x28223BE20](v103);
  v109 = &v93 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA168);
  MEMORY[0x28223BE20](v108);
  v111 = &v93 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA170);
  MEMORY[0x28223BE20](v110);
  v113 = &v93 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA178);
  MEMORY[0x28223BE20](v112);
  v114 = &v93 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA180);
  MEMORY[0x28223BE20](v117);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v93 - v28;
  MEMORY[0x28223BE20](v30);
  v116 = &v93 - v31;
  v32 = type metadata accessor for ListLockup();
  if (*(v2 + v32[17]) == 1)
  {
    v33 = v32;
    v96 = v23;
    v97 = v20;
    v94 = *(v2 + v32[9]);
    v95 = v13;
    if (v94 == 1)
    {
      v93 = v6;
      if (!*(v2 + *(type metadata accessor for SettingsListItemView.ListItemArtworkView(0) + 20)))
      {
LABEL_23:
        type metadata accessor for SocialProfileUpdater(0);
        sub_216E1024C(&qword_280E3B500, type metadata accessor for SocialProfileUpdater);
        result = sub_217008CD4();
        __break(1u);
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      v34 = v116;
      sub_217007DE4();

      v6 = v93;
    }

    else
    {
      v34 = v116;
      sub_216683A80(v2 + v32[18], v116, &qword_27CAB6D60);
    }

    sub_216683A80(v34, v29, &qword_27CAB6D60);
    v38 = type metadata accessor for Artwork();
    if (__swift_getEnumTagSinglePayload(v29, 1, v38) == 1)
    {
      sub_2166997CC(v29, &qword_27CAB6D60);
      v39 = sub_21700C4B4();
      v40 = v9;
      v41 = 1;
    }

    else
    {
      v42 = v2;
      v43 = sub_21700C4B4();
      (*(*(v43 - 8) + 16))(v9, v29, v43);
      sub_216E116D8(v29, type metadata accessor for Artwork);
      v40 = v9;
      v41 = 0;
      v39 = v43;
      v2 = v42;
    }

    __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
    v45 = v98;
    v44 = v99;
    sub_217007444();
    sub_216683A80(v2 + v33[18], v26, &qword_27CAB6D60);
    if (__swift_getEnumTagSinglePayload(v26, 1, v38) == 1)
    {
      sub_2166997CC(v26, &qword_27CAB6D60);
      v46 = v104;
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v104);
      sub_21700C404();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v46);
      v48 = v102;
      v49 = v6;
      if (EnumTagSinglePayload != 1)
      {
        sub_2166997CC(v44, &qword_27CAB7530);
      }
    }

    else
    {
      v48 = v102;
      v46 = v104;
      (*(v102 + 16))(v44, &v26[*(v38 + 20)], v104);
      sub_216E116D8(v26, type metadata accessor for Artwork);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v46);
      (*(v48 + 32))(v6, v44, v46);
      v49 = v6;
    }

    v50 = v100;
    sub_2170073E4();
    (*(v48 + 8))(v49, v46);
    v51 = *(v105 + 8);
    v52 = v45;
    v53 = v107;
    v51(v52, v107);
    v54 = (v2 + v33[6]);
    v56 = *v54;
    v55 = v54[1];
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v55;
    sub_2167C505C();
    sub_21700DF14();
    v58 = v101;
    sub_2170073F4();

    v51(v50, v53);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v59 = qword_280E73AA0;
    v60 = byte_280E73AA8;
    v61 = qword_280E73AB0;
    v62 = v109;
    (*(v95 + 32))(v109, v58, v106);
    *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8) + 36)) = 256;
    KeyPath = swift_getKeyPath();
    v64 = v62 + *(v103 + 36);
    *v64 = v59;
    *(v64 + 8) = v60;
    *(v64 + 16) = v61;
    *(v64 + 24) = KeyPath;
    *(v64 + 32) = 0;

    sub_21700ACC4();
    v65 = sub_21700AD04();

    v66 = v111;
    sub_2167C5834(v62, v111, &qword_27CAB7690);
    v67 = v66 + *(v108 + 36);
    *v67 = v65;
    *(v67 + 8) = xmmword_217026230;
    *(v67 + 24) = 0x4000000000000000;
    LOBYTE(v61) = sub_217009CD4();
    sub_217007F24();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v66;
    v77 = v113;
    sub_2167C5834(v76, v113, &qword_27CACA168);
    v78 = v77 + *(v110 + 36);
    *v78 = v61;
    *(v78 + 8) = v69;
    *(v78 + 16) = v71;
    *(v78 + 24) = v73;
    *(v78 + 32) = v75;
    *(v78 + 40) = 0;
    v79 = 1.0;
    if ((v94 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*(v2 + *(type metadata accessor for SettingsListItemView.ListItemArtworkView(0) + 20)))
    {

      v80 = sub_216AFF430();

      if (v80)
      {

        v79 = 0.0;
      }

LABEL_22:
      v81 = v77;
      v82 = v114;
      sub_2167C5834(v81, v114, &qword_27CACA170);
      *(v82 + *(v112 + 36)) = v79;
      v83 = sub_21700B3B4();
      v85 = v84;
      sub_216E0F7DC(v2, v119);
      sub_2166997CC(v116, &qword_27CAB6D60);
      memcpy(v120, v119, 0x98uLL);
      v120[19] = v83;
      v120[20] = v85;
      v86 = v82;
      v87 = v97;
      sub_2167C5834(v86, v97, &qword_27CACA178);
      v88 = v117;
      memcpy((v87 + *(v117 + 36)), v120, 0xA8uLL);
      memcpy(v121, v119, sizeof(v121));
      v122 = v83;
      v123 = v85;
      sub_216683A80(v120, &v118, &qword_27CACA188);
      sub_2166997CC(v121, &qword_27CACA188);
      v89 = v87;
      v90 = v96;
      sub_2167C5834(v89, v96, &qword_27CACA180);
      v91 = v90;
      v92 = v115;
      sub_2167C5834(v91, v115, &qword_27CACA180);
      return __swift_storeEnumTagSinglePayload(v92, 0, 1, v88);
    }

    goto LABEL_23;
  }

  v35 = v115;
  v36 = v117;

  return __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
}

void *sub_216E0F7DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21700ADC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ListLockup() + 36)) != 1)
  {
    goto LABEL_5;
  }

  if (*(a1 + *(type metadata accessor for SettingsListItemView.ListItemArtworkView(0) + 20)))
  {

    v8 = sub_216AFF430();

    if (v8)
    {
      v29 = v8;
      sub_21700ADA4();
      (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
      v28 = sub_21700AE04();

      (*(v5 + 8))(v7, v4);
      sub_21700B3B4();
      sub_2170083C4();
      v9 = v33;
      v10 = v34;
      v11 = v35;
      v12 = v36;
      v14 = v37;
      v13 = v38;
      v39[0] = v34;
      v32[0] = v36;
      v30 = a2;
      v31 = 1;
      sub_21700ACC4();
      v15 = sub_21700AD04();

      v16 = sub_217009CD4();
      sub_217007F24();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      *v32 = v28;
      *&v32[8] = v9;
      v32[16] = v10;
      *&v32[24] = v11;
      v32[32] = v12;
      *&v32[40] = v14;
      *&v32[48] = v13;
      *&v32[56] = 0;
      v32[64] = 1;
      *&v32[65] = 0;
      v32[67] = 1;
      a2 = v30;
      *&v32[72] = v15;
      *&v32[80] = xmmword_217026230;
      *&v32[96] = 0x4000000000000000;
      v32[104] = v16;
      *&v32[112] = v18;
      *&v32[120] = v20;
      *&v32[128] = v22;
      *&v32[136] = v24;
      v32[144] = 0;
      nullsub_1(v32, v25, v26);
      memcpy(v39, v32, 0x91uLL);
      return memcpy(a2, v39, 0x91uLL);
    }

LABEL_5:
    sub_216E1172C(v39);
    return memcpy(a2, v39, 0x91uLL);
  }

  type metadata accessor for SocialProfileUpdater(0);
  sub_216E1024C(&qword_280E3B500, type metadata accessor for SocialProfileUpdater);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216E0FAF8()
{
  result = sub_217009E64();
  qword_27CAC9EF0 = result;
  return result;
}

uint64_t sub_216E0FB18()
{
  result = sub_217009834();
  dword_27CAC9EF8 = result;
  return result;
}

uint64_t sub_216E0FB38()
{
  result = sub_217009834();
  dword_27CAC9EFC = result;
  return result;
}

unint64_t sub_216E0FB8C()
{
  result = qword_27CAC9F18;
  if (!qword_27CAC9F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F10);
    sub_216E0FC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F18);
  }

  return result;
}

unint64_t sub_216E0FC10()
{
  result = qword_27CAC9F20;
  if (!qword_27CAC9F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F28);
    sub_216E0FCEC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F40);
    sub_216E0FD78();
    swift_getOpaqueTypeConformance2();
    sub_216E0FE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F20);
  }

  return result;
}

unint64_t sub_216E0FCEC()
{
  result = qword_27CAC9F30;
  if (!qword_27CAC9F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F38);
    sub_216967DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F30);
  }

  return result;
}

unint64_t sub_216E0FD78()
{
  result = qword_27CAC9F48;
  if (!qword_27CAC9F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F40);
    sub_216E1024C(&qword_27CAC9F50, type metadata accessor for SettingsListSectionView);
    sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F48);
  }

  return result;
}

unint64_t sub_216E0FE80()
{
  result = qword_27CAC9F58;
  if (!qword_27CAC9F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F60);
    sub_216E0FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F58);
  }

  return result;
}

unint64_t sub_216E0FF04()
{
  result = qword_27CAC9F68;
  if (!qword_27CAC9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F70);
    sub_216E0FF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F68);
  }

  return result;
}

unint64_t sub_216E0FF90()
{
  result = qword_27CAC9F78;
  if (!qword_27CAC9F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F80);
    sub_216E1001C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F78);
  }

  return result;
}

unint64_t sub_216E1001C()
{
  result = qword_27CAC9F88;
  if (!qword_27CAC9F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9F90);
    sub_216E100D4();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F88);
  }

  return result;
}

unint64_t sub_216E100D4()
{
  result = qword_27CAC9F98;
  if (!qword_27CAC9F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9FA0);
    sub_216E1018C();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9F98);
  }

  return result;
}

unint64_t sub_216E1018C()
{
  result = qword_27CAC9FA8;
  if (!qword_27CAC9FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9FB0);
    sub_2166D9530(&qword_27CABBD68, &qword_27CABBD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9FA8);
  }

  return result;
}

uint64_t sub_216E1024C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216E102A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E1033C()
{
  result = type metadata accessor for ListSection();
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

uint64_t sub_216E103DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216E10438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SettingsListSectionView(0);
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_216E0C0F4(a1, v7, a2);
}

void sub_216E10558()
{
  type metadata accessor for ListLockup();
  if (v0 <= 0x3F)
  {
    sub_21680D428();
    if (v1 <= 0x3F)
    {
      sub_2167EE974();
      if (v2 <= 0x3F)
      {
        sub_216E112B8(319, &qword_280E2B3E8, MEMORY[0x277CDF4A0]);
        if (v3 <= 0x3F)
        {
          sub_216854FAC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_216E10640()
{
  result = qword_27CACA010;
  if (!qword_27CACA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA018);
    sub_216E1024C(&qword_27CAC9FF0, type metadata accessor for SettingsListItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA010);
  }

  return result;
}

unint64_t sub_216E10710()
{
  result = qword_27CACA050;
  if (!qword_27CACA050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA048);
    sub_216E1079C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA050);
  }

  return result;
}

unint64_t sub_216E1079C()
{
  result = qword_27CACA058;
  if (!qword_27CACA058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA060);
    sub_216E10828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA058);
  }

  return result;
}

unint64_t sub_216E10828()
{
  result = qword_27CACA068;
  if (!qword_27CACA068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA070);
    sub_216E108E0();
    sub_2166D9530(&qword_280E2A8E8, &qword_27CAC3CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA068);
  }

  return result;
}

unint64_t sub_216E108E0()
{
  result = qword_27CACA078;
  if (!qword_27CACA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA080);
    sub_2166D9530(&qword_27CACA088, &qword_27CACA090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA078);
  }

  return result;
}

uint64_t sub_216E10998()
{
  v0 = type metadata accessor for SettingsListItemView(0);
  OUTLINED_FUNCTION_36(v0);
  return sub_216E0CB40();
}

uint64_t objectdestroy_41Tm_0()
{
  type metadata accessor for SettingsListItemView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v5))
  {
    OUTLINED_FUNCTION_50();
    v6 = OUTLINED_FUNCTION_82();
    v7(v6);
  }

  v8 = type metadata accessor for ListLockup();
  __swift_destroy_boxed_opaque_existential_1Tm(v4 + v8[5]);
  OUTLINED_FUNCTION_7_7(v8[6]);

  OUTLINED_FUNCTION_7_7(v8[7]);

  v9 = v4 + v8[11];
  v10 = type metadata accessor for ContentDescriptor();
  v11 = OUTLINED_FUNCTION_19_2();
  if (!__swift_getEnumTagSinglePayload(v11, v12, v10))
  {

    v13 = *(v10 + 24);
    v14 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_21_61(v14))
    {
      OUTLINED_FUNCTION_50();
      (*(v15 + 8))(v9 + v13, v2);
    }
  }

  v16 = v4 + v8[13];
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  OUTLINED_FUNCTION_7_7(v8[14]);

  v17 = v4 + v8[15];
  if (*(v17 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17 + 8);
  }

  v18 = v4 + v8[16];
  v19 = OUTLINED_FUNCTION_19_2();
  if (!__swift_getEnumTagSinglePayload(v19, v20, v10))
  {

    v21 = *(v10 + 24);
    v22 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_23_4(v18 + v21))
    {
      OUTLINED_FUNCTION_50();
      (*(v23 + 8))(v18 + v21, v22);
    }
  }

  v24 = v4 + v8[18];
  v25 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_23_4(v24))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v24);
    v27 = *(v25 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v28 + 8))(v24 + v27);
  }

  v29 = v4 + v0[5];
  if (*(v29 + 40))
  {
    if (*(v29 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }
  }

  else
  {
  }

  v30 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v31 + 8))(v4 + v30);
  }

  else
  {
  }

  sub_2166B8588();
  OUTLINED_FUNCTION_7_7(v0[8]);

  OUTLINED_FUNCTION_7_7(v0[9]);

  return swift_deallocObject();
}

uint64_t sub_216E10DC8()
{
  v0 = type metadata accessor for SettingsListItemView(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_216E0DE04();
}

unint64_t sub_216E10E2C()
{
  result = qword_27CACA0D8;
  if (!qword_27CACA0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA0D0);
    sub_2166D9530(&qword_27CACA0E0, &qword_27CACA0E8);
    sub_2166D9530(&qword_27CAB7C98, &qword_27CAB7CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA0D8);
  }

  return result;
}

unint64_t sub_216E10F10()
{
  result = qword_27CACA0F0;
  if (!qword_27CACA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA0F0);
  }

  return result;
}

uint64_t sub_216E10FC0()
{
  v1 = *(type metadata accessor for SettingsListItemView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216E0DA8C(v0 + v2, v3);
}

unint64_t sub_216E1104C()
{
  result = qword_27CACA100;
  if (!qword_27CACA100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA0B0);
    sub_2166D9530(&qword_27CAC17B8, &qword_27CAC17A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsListItemView.ChevronView(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_216E11218()
{
  type metadata accessor for ListLockup();
  if (v0 <= 0x3F)
  {
    sub_216E112B8(319, &qword_27CACA118, MEMORY[0x277CDFCB8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216E112B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for SocialProfileUpdater(255);
    sub_216E1024C(&qword_280E3B500, type metadata accessor for SocialProfileUpdater);
    v5 = OUTLINED_FUNCTION_82();
    v6 = a3(v5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_216E11350()
{
  result = qword_27CACA120;
  if (!qword_27CACA120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA030);
    sub_2170091D4();
    sub_2166D9530(&qword_27CACA040, &qword_27CACA030);
    sub_216E1024C(&qword_27CABC420, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA048);
    sub_216E10710();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA120);
  }

  return result;
}

unint64_t sub_216E1152C()
{
  result = qword_27CACA150;
  if (!qword_27CACA150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA130);
    sub_216E115E4();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA150);
  }

  return result;
}

unint64_t sub_216E115E4()
{
  result = qword_27CACA158;
  if (!qword_27CACA158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8250);
    sub_2167E947C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A710, &qword_27CAB7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA158);
  }

  return result;
}

uint64_t sub_216E116D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216E11734()
{
  result = qword_27CACA190;
  if (!qword_27CACA190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA198);
    sub_216E117B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA190);
  }

  return result;
}

unint64_t sub_216E117B8()
{
  result = qword_27CACA1A0;
  if (!qword_27CACA1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
    sub_216E1152C();
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    swift_getOpaqueTypeConformance2();
    sub_216E1024C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA1A0);
  }

  return result;
}

unint64_t sub_216E11910()
{
  result = qword_27CACA1A8;
  if (!qword_27CACA1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA1B0);
    sub_216E11994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA1A8);
  }

  return result;
}

unint64_t sub_216E11994()
{
  result = qword_27CACA1B8;
  if (!qword_27CACA1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA1C0);
    sub_216E11A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA1B8);
  }

  return result;
}

unint64_t sub_216E11A20()
{
  result = qword_27CACA1C8;
  if (!qword_27CACA1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA1D0);
    sub_216E11AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA1C8);
  }

  return result;
}

unint64_t sub_216E11AAC()
{
  result = qword_27CACA1D8;
  if (!qword_27CACA1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA1E0);
    sub_216E11B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA1D8);
  }

  return result;
}

unint64_t sub_216E11B38()
{
  result = qword_27CACA1E8;
  if (!qword_27CACA1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA1F0);
    sub_2166D9530(&qword_27CACA1F8, &qword_27CACA160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA1E8);
  }

  return result;
}

unint64_t sub_216E11BF0()
{
  result = qword_27CACA200;
  if (!qword_27CACA200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA208);
    sub_216E11C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA200);
  }

  return result;
}

unint64_t sub_216E11C74()
{
  result = qword_27CACA210;
  if (!qword_27CACA210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA180);
    sub_216E11D2C();
    sub_2166D9530(&qword_27CACA230, &qword_27CACA188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA210);
  }

  return result;
}

unint64_t sub_216E11D2C()
{
  result = qword_27CACA218;
  if (!qword_27CACA218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA178);
    sub_216E11DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA218);
  }

  return result;
}

unint64_t sub_216E11DB8()
{
  result = qword_27CACA220;
  if (!qword_27CACA220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA170);
    sub_216E11E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA220);
  }

  return result;
}

unint64_t sub_216E11E44()
{
  result = qword_27CACA228;
  if (!qword_27CACA228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA168);
    sub_2167C4E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA228);
  }

  return result;
}

uint64_t sub_216E11F80()
{
  OUTLINED_FUNCTION_2_164();
  os_unfair_lock_lock(*(v3 + 16));
  *(v1 + OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__pendingIdentifiers) = v0;
  sub_21700DF14();

  os_unfair_lock_unlock(*(v2 + 16));
}

uint64_t sub_216E11FEC()
{
  OUTLINED_FUNCTION_22_7();
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OUTLINED_FUNCTION_1_194();
  sub_216BE615C(v2, v3);
  OUTLINED_FUNCTION_3_155();
}

void sub_216E12054()
{
  OUTLINED_FUNCTION_2_164();
  os_unfair_lock_lock(*(v2 + 16));
  sub_216CB2A18(v0);
  os_unfair_lock_unlock(*(v1 + 16));
}

void sub_216E120E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t))
{
  os_unfair_lock_lock(*(a1 + 16));
  a6(a2, a3, a4, a5);
  os_unfair_lock_unlock(*(a1 + 16));
}

void sub_216E121AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(*(a1 + 16));
  if (a4)
  {
    v8 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
    swift_beginAccess();
    if (*(*&a2[v8] + 16))
    {
      sub_2166AF66C(a3, a4);
      if (v9)
      {
        sub_21700DF14();
      }
    }

    swift_endAccess();
    os_unfair_lock_unlock(*(a1 + 16));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216E12278()
{
  MEMORY[0x21CEA1440](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_216E122E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v88 = a2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v91 = v11;
  MEMORY[0x28223BE20](v12);
  v77 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_3_156();
  v80 = v6;
  v20 = v6 + 16;
  v21 = *(v6 + 16);
  v22 = v91;
  v82 = v4;
  v84 = v21;
  v85 = v20;
  v21(v9, v88, v4);
  v83 = v9;
  sub_21700D734();
  v81 = a1;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v26 = v28;
  v86 = v10;
  v28(v16, v10);
  if (v25)
  {
    v29 = type metadata accessor for HorizontalPosterLockup();
    *&v89 = v23;
    *(&v89 + 1) = v25;
    sub_21700F364();
    v79 = v26;
    sub_21700CE04();
    v78 = v29;
    v30 = v88;
    sub_21700D2E4();
    v91 = v27;
    v26(v19, v86);
    type metadata accessor for Artwork();
    sub_21700CE04();
    v31 = v82;
    v32 = v83;
    v84(v83, v30, v82);
    sub_2166D4DF0(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_5_124();
    sub_21700CE04();
    v84(v32, v30, v31);
    OUTLINED_FUNCTION_5_124();
    type metadata accessor for VideoArtwork();
    sub_21700CE04();
    v33 = v83;
    v34 = v84;
    v35 = v88;
    v84(v83, v88, v31);
    v36 = v78;
    sub_2166D4DF0(qword_280E44448, type metadata accessor for VideoArtwork);
    sub_21700D734();
    sub_21700CE04();
    v34(v33, v35, v31);
    sub_2167882F0();
    sub_21700D734();
    v37 = v90;
    v38 = v87;
    v39 = v87 + v36[7];
    *v39 = v89;
    *(v39 + 16) = v37;
    sub_21700CE04();
    sub_21700CDB4();
    v40 = OUTLINED_FUNCTION_1_39();
    v41 = v86;
    v42 = v79;
    v79(v40, v86);
    v43 = (v38 + v36[8]);
    *v43 = v19;
    v43[1] = v33;
    sub_21700CE04();
    sub_21700CDB4();
    v44 = OUTLINED_FUNCTION_1_39();
    v42(v44, v41);
    v45 = v38;
    v46 = (v38 + v36[9]);
    *v46 = v19;
    v46[1] = v33;
    sub_21700CE04();
    sub_21700CDB4();
    v47 = OUTLINED_FUNCTION_1_39();
    v48 = v86;
    v42(v47, v86);
    v49 = (v45 + v36[10]);
    *v49 = v19;
    v49[1] = v33;
    sub_21700CE04();
    sub_21700CDB4();
    v50 = OUTLINED_FUNCTION_1_39();
    v42(v50, v48);
    v51 = (v45 + v36[11]);
    *v51 = v19;
    v51[1] = v33;
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_3_156();
    v84(v83, v88, v82);
    sub_2166D4DF0(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    OUTLINED_FUNCTION_71();
    sub_21700D2E4();
    v52 = v86;
    v42(v19, v86);
    sub_21700CE04();
    sub_21700D2E4();
    v53 = OUTLINED_FUNCTION_71();
    (v42)(v53);
    OUTLINED_FUNCTION_32_1();
    sub_21700CE04();
    v54 = sub_21700CDB4();
    v56 = v55;
    v57 = OUTLINED_FUNCTION_71();
    (v42)(v57);
    v58 = (v45 + v36[13]);
    *v58 = v54;
    v58[1] = v56;
    v59 = v77;
    sub_21700CE04();
    v60 = sub_21700CD24();
    v62 = v61;
    v42(v59, v52);
    if (v62)
    {
      v63 = 0;
    }

    else
    {
      v63 = v60;
    }

    v64 = v36;
    *(v45 + v36[18]) = v63;
    v65 = v81;
    sub_21700CE04();
    sub_21700CDB4();
    v66 = OUTLINED_FUNCTION_1_39();
    v42(v66, v52);
    v67 = (v45 + v64[17]);
    *v67 = v19;
    v67[1] = v62;
    type metadata accessor for ColorSchemeArtwork();
    OUTLINED_FUNCTION_32_1();
    v68 = v65;
    sub_21700CE04();
    v69 = v82;
    v70 = v88;
    v84(v83, v88, v82);
    sub_2166D4DF0(&qword_27CABA350, type metadata accessor for ColorSchemeArtwork);
    OUTLINED_FUNCTION_71();
    sub_21700D734();
    (*(v80 + 8))(v70, v69);
    return (v79)(v68, v86);
  }

  else
  {
    v72 = sub_21700E2E4();
    sub_2166D4DF0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v74 = v73;
    v75 = type metadata accessor for HorizontalPosterLockup();
    *v74 = 25705;
    v74[1] = 0xE200000000000000;
    v74[2] = v75;
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D22530], v72);
    swift_willThrow();
    (*(v80 + 8))(v88, v82);
    v26(v81, v86);
    return sub_2167B0250(v87);
  }
}

uint64_t sub_216E12DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v44 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v47 = v7;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v9;
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v50 = v10;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v20 = v19;
  v21 = *(v13 + 8);
  v22 = OUTLINED_FUNCTION_113();
  v21(v22);
  *a3 = v18;
  *(a3 + 8) = v20;
  v43 = v20;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_113();
  v21(v26);
  *(a3 + 16) = v23;
  *(a3 + 24) = v25;
  v42 = v25;
  OUTLINED_FUNCTION_3_157();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = OUTLINED_FUNCTION_113();
  v21(v30);
  *(a3 + 32) = v27;
  *(a3 + 40) = v29;
  v41 = v29;
  sub_21700CE04();
  sub_216E133E8();
  sub_21700CD14();
  v31 = OUTLINED_FUNCTION_113();
  v21(v31);
  *(a3 + 48) = v52;
  *(a3 + 56) = 0;
  OUTLINED_FUNCTION_3_157();
  sub_21691E918();
  sub_21700CCC4();
  v32 = v17;
  v33 = v48;
  (v21)(v32, v11);
  *(a3 + 64) = v51;
  v45 = a1;
  sub_21700CE04();
  v34 = v46;
  v35 = v44;
  (*(v46 + 16))(v47, v33);
  v36 = v49;
  sub_21700D224();
  (*(v34 + 8))(v33, v35);
  (v21)(v45, v11);
  if (v36)
  {
  }

  else
  {
    v38 = type metadata accessor for ModalPresentationDescriptor();
    return (*(v39 + 32))(a3 + *(v38 + 40), v50, v40);
  }
}

uint64_t sub_216E13254(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(a1 + 16) == *(a2 + 16) && v7 == v8;
    if (!v9 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(a1 + 32) == *(a2 + 32) && v10 == v11;
    if (!v12 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a2 + 56);
  if (v13)
  {
    if (v14)
    {
      sub_21668FCB8();
      v15 = v14;
      v16 = v13;
      v17 = sub_21700F104();

      if (v17)
      {
        goto LABEL_31;
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_31:
  v18 = *(a1 + 64);
  v19 = *(a2 + 64);
  result = v19 == 3 && v18 == 3;
  if (v18 != 3 && v19 != 3)
  {
    v22 = *(a1 + 64);

    return sub_21688B234(v22, v19);
  }

  return result;
}

unint64_t sub_216E133E8()
{
  result = qword_27CACA238;
  if (!qword_27CACA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA238);
  }

  return result;
}

id sub_216E13460()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    [result unregisterObserver_];

    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E13514(void *a1, uint64_t a2, void *a3)
{
  sub_21700E354();
  v5 = a3;
  v6 = a1;
  sub_216E135A0();
}

void sub_216E135A0()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_280E29C90 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_280E73A00 object:0];
}

uint64_t sub_216E13640()
{
  result = sub_21700E4D4();
  qword_280E73A00 = result;
  return result;
}

uint64_t sub_216E13688@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v40 = v6;
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v39 = v8 - v7;
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v45 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v11 + 8);
  v24(v20, v9);
  if (v23)
  {
    v42 = v21;
    sub_21700CE04();
    v25 = sub_21700CDB4();
    v27 = v26;
    v43 = v24;
    v24(v17, v9);
    if (!v27)
    {
      v28 = v39;
      sub_217006214();
      v25 = sub_2170061F4();
      v27 = v29;
      (*(v40 + 8))(v28, v41);
    }

    v30 = v44;
    *a3 = v25;
    a3[1] = v27;
    a3[2] = v42;
    a3[3] = v23;
    v31 = v45;
    sub_21700CE04();
    sub_21700D2E4();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v32 + 8))(v30);
    v33 = v43;
    v43(v31, v9);
    return v33(v14, v9);
  }

  else
  {
    v35 = sub_21700E2E4();
    sub_216E13F34(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = 0x656C746974;
    v36[1] = 0xE500000000000000;
    v36[2] = &type metadata for Link;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v37 + 8))(v44);
    return (v24)(v45, v9);
  }
}

double sub_216E13A48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  if (a2)
  {
    sub_217006214();
    v13 = sub_2170061F4();
    v15 = v14;
    (*(v8 + 8))(v12, v6);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    a1 = 0;
  }

  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t sub_216E13B48(uint64_t a1)
{
  v2 = sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = 0;
  v9 = (v8 + 8);
  v10 = a1 + 40;
  v11 = *(a1 + 16) + 1;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = (v10 + 16 * v7);
  while (v11 != ++v7)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v25 = *(v14 - 3);
      v26 = v10;
      sub_21700DF14();
      sub_217006214();
      v24 = sub_2170061F4();
      v17 = v16;
      (*v9)(v6, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2169379AC();
        v12 = v21;
      }

      v18 = *(v12 + 16);
      v19 = 0uLL;
      if (v18 >= *(v12 + 24) >> 1)
      {
        sub_2169379AC();
        v19 = 0uLL;
        v12 = v22;
      }

      *(v12 + 16) = v18 + 1;
      v20 = v12 + 72 * v18;
      *(v20 + 32) = v24;
      *(v20 + 40) = v17;
      *(v20 + 48) = v25;
      *(v20 + 56) = v15;
      *(v20 + 64) = v19;
      *(v20 + 80) = v19;
      *(v20 + 96) = 0;
      v10 = v26;
      goto LABEL_2;
    }
  }

  if (!*(v12 + 16))
  {

    return 0;
  }

  return v12;
}

uint64_t sub_216E13D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = type metadata accessor for Link(0);
  v12 = (a1 + *(v11 + 24));
  v13 = v12[1];
  if (v13)
  {
    v21 = *v12;
    v14 = (a1 + *(v11 + 20));
    if (v14[1])
    {
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      sub_217006214();
      v15 = sub_2170061F4();
      v16 = v20;
      (*(v6 + 8))(v10, v4);
    }

    *a2 = v15;
    *(a2 + 8) = v16;
    sub_21700DF14();
    sub_21700DF14();
    result = sub_216970C44(a1);
    *(a2 + 16) = v21;
    *(a2 + 24) = v13;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58);
    sub_2167880BC();
    swift_allocError();
    *v18 = xmmword_21701C090;
    *(v18 + 16) = v17;
    swift_willThrow();
    return sub_216970C44(a1);
  }

  return result;
}

uint64_t sub_216E13F34(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_216E13FA4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216E1408C(uint64_t a1, unint64_t a2, unint64_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  *a6.i64 = vcvtd_n_f64_s64(a3, 3uLL);
  *a4.i64 = *a6.i64 - trunc(*a6.i64);
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = &unk_217017000;
  v12 = a2 >> 62;
  if (*vbslq_s8(vnegq_f64(v10), a4, a6).i64 == 0.0)
  {
    if ((a6.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (*a6.i64 > -9.22337204e18)
    {
      if (*a6.i64 < 9.22337204e18)
      {
        v13 = 0;
        switch(v12)
        {
          case 1uLL:
            v13 = a1;
            break;
          case 2uLL:
            v13 = *(a1 + 16);
            break;
          default:
            break;
        }

        if (v13 <= *a6.i64)
        {
          OUTLINED_FUNCTION_3_158();
          v27 = sub_217005F84();
          v29 = sub_216E144A0(v27, v28);
          v30 = OUTLINED_FUNCTION_8();
          sub_21677A524(v30, v31);
          return v29;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_52;
  }

  v6 = a3;
  v48 = *a6.i64;
  v14 = OUTLINED_FUNCTION_38();
  v15 = MEMORY[0x21CE96E00](v14);
  if ((v15 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v6 <= 8 * v15)
  {
    *v16.i64 = v6;
    v21 = ceil(v48);
    v22 = v21 * 8.0 - v6;
    if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        *v17.i64 = *v16.i64 - trunc(*v16.i64 * 0.25) * 4.0;
        v23.f64[0] = NAN;
        v23.f64[1] = NAN;
        v24 = *v16.i64 + 4.0 - *vbslq_s8(vnegq_f64(v23), v17, v16).i64 - *v16.i64;
        if (v24 > -9.22337204e18)
        {
          if (v24 < 9.22337204e18)
          {
            v25 = COERCE_UNSIGNED_INT64(fabs(v21 * 8.0 - v6)) > 0x7FEFFFFFFFFFFFFFLL;
            if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v25)
            {
              if (v21 > -9.22337204e18)
              {
                if (v21 < 9.22337204e18)
                {
                  v8 = v22;
                  v7 = v24;
                  v26 = 0;
                  switch(v12)
                  {
                    case 1uLL:
                      v26 = a1;
                      break;
                    case 2uLL:
                      v26 = *(a1 + 16);
                      break;
                    default:
                      break;
                  }

                  if (v26 <= v21)
                  {
                    OUTLINED_FUNCTION_3_158();
                    v32 = sub_217005F84();
                    sub_21677A404(v32, v33);
                    v34 = OUTLINED_FUNCTION_8();
                    v36 = sub_216E16F80(v34, v35);
                    v11 = *(v36 + 16);
                    if (v11)
                    {
                      v37 = v36;
                      v6 = v11 - 1;
                      if (v8 >= -8)
                      {
                        if (v8 <= 8)
                        {
                          LODWORD(v39) = *(v36 + v6 + 32);
                          if (v8 < 0)
                          {
                            goto LABEL_66;
                          }

                          if (v8 != 8)
                          {
                            v38 = v39 >> v8;
                            goto LABEL_42;
                          }
                        }

                        if (v7 - 9 < 0xFFFFFFFFFFFFFFEFLL)
                        {
                          goto LABEL_43;
                        }

                        if ((v7 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_37;
                        }

                        goto LABEL_32;
                      }

                      goto LABEL_30;
                    }

LABEL_63:
                    __break(1u);
LABEL_64:
                    sub_216E15C6C();
                    v37 = v47;
                    while (1)
                    {
                      v39 = *(v37 + 16);
                      if (v11 <= v39)
                      {
                        *(v37 + v6 + 32) = v8;
                        v40 = sub_21700DF14();
                        v41 = sub_216E147B8(v40);
                        v43 = v42;
                        v44 = sub_216E144A0(v41, v42);
                        v45 = OUTLINED_FUNCTION_8();
                        sub_21677A524(v45, v46);
                        sub_21677A524(v41, v43);

                        return v44;
                      }

                      __break(1u);
LABEL_66:
                      if (v8 == -8)
                      {
LABEL_30:
                        if (v7 - 9 >= 0xFFFFFFFFFFFFFFEFLL)
                        {
                          if ((v7 & 0x8000000000000000) != 0)
                          {
LABEL_37:
                            LOBYTE(v38) = 0;
                            v8 = 0;
                            if (v7 <= 0xFFFFFFFFFFFFFFF8)
                            {
                              goto LABEL_47;
                            }

LABEL_69:
                            v8 = v38 >> -v7;
                            goto LABEL_47;
                          }

LABEL_32:
                          v8 = 0;
                          v38 = 0;
                          if (v7 >= 8)
                          {
                            goto LABEL_47;
                          }

LABEL_46:
                          v8 = v38 << v7;
                          goto LABEL_47;
                        }
                      }

                      else
                      {
                        v38 = v39 << -v8;
LABEL_42:
                        if (v7 - 9 >= 0xFFFFFFFFFFFFFFEFLL)
                        {
                          if ((v7 & 0x8000000000000000) != 0)
                          {
                            if (v7 > 0xFFFFFFFFFFFFFFF8)
                            {
                              goto LABEL_69;
                            }
                          }

                          else if (v7 < 8)
                          {
                            goto LABEL_46;
                          }
                        }
                      }

LABEL_43:
                      v8 = 0;
LABEL_47:
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_64;
                      }
                    }
                  }

LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v18 = OUTLINED_FUNCTION_38();

  return sub_216E144A0(v18, v19);
}

uint64_t sub_216E144A0(uint64_t result, unint64_t a2)
{
  v3 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        v16 = OUTLINED_FUNCTION_38();
        sub_21677A404(v16, v17);
        v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v9 = v3;
        v10 = v3 >> 32;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(result + 16);
      v5 = *(result + 24);
      v6 = OUTLINED_FUNCTION_38();
      sub_21677A404(v6, v7);
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = v4;
      v10 = v5;
LABEL_6:
      result = sub_216E16A74(v9, v10, v8, v3, a2);
      goto LABEL_7;
    default:
      OUTLINED_FUNCTION_3_158();
      result = sub_216E165C0(v11, v12, v13, v14);
LABEL_7:
      if (!v15)
      {
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_216E14580(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21700E574();
  MEMORY[0x28223BE20](v8 - 8);
  sub_21700E654();
  v9 = sub_21700E734();
  v10 = MEMORY[0x21CE9F400](v9);
  v12 = v11;

  v13 = sub_216E14888(a1, a2);
  v15 = v14;
  sub_21700DF14();
  sub_216E1492C(a3, a4);
  OUTLINED_FUNCTION_5_125();
  if (v20)
  {

    return 0;
  }

  v18 = v16;
  v19 = v17;
  sub_216E1492C(v10, v12);
  OUTLINED_FUNCTION_5_125();
  if (v20)
  {

LABEL_12:
    sub_21677A510(v18, v19);
    return 0;
  }

  v23 = v21;
  v24 = v22;
  sub_216E1492C(v13, v15);
  OUTLINED_FUNCTION_5_125();
  if (v25)
  {
LABEL_11:
    sub_21677A510(v23, v24);
    goto LABEL_12;
  }

  sub_216E14BD4(1uLL, v26, v27, v18, v19, v23, v24, 0);
  OUTLINED_FUNCTION_5_125();
  if (v20)
  {
    v30 = OUTLINED_FUNCTION_39();
    sub_21677A510(v30, v31);
    goto LABEL_11;
  }

  v33 = v28;
  v34 = v29;
  sub_21700E564();
  sub_2169FB2A8();
  v35 = sub_21700E544();
  v37 = v36;
  sub_21677A510(v18, v19);
  sub_21677A510(v23, v24);
  v38 = OUTLINED_FUNCTION_39();
  sub_21677A510(v38, v39);
  sub_21677A510(v33, v34);
  if (!v37)
  {
    return 0;
  }

  return v35;
}

uint64_t sub_216E147B8(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA2B0);
  v8 = sub_2166D9530(&qword_27CACA2B8, &qword_27CACA2B0);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_2169FADF0(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

unint64_t sub_216E14888(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_3_158();
  result = sub_21700E654();
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v5 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_158();
    v6 = sub_21700E734();
    v7 = MEMORY[0x21CE9F400](v6);

    return v7;
  }

  return result;
}

uint64_t sub_216E1492C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (sub_21700E624())
  {
    v17[0] = 48;
    v17[1] = 0xE100000000000000;
    MEMORY[0x21CE9F490](a1, a2);
  }

  v4 = 0;
  LOBYTE(v5) = 0;
  v18 = xmmword_217062B80;
  while (1)
  {
    v6 = sub_21700E684();
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v9 = v7;
    if (qword_27CAB60E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_27CB22A98;
    if (!*(qword_27CB22A98 + 16) || (v11 = sub_216E68538(v8, v9), (v12 & 1) == 0))
    {
      swift_endAccess();

      sub_21677A524(v18, *(&v18 + 1));
      return 0;
    }

    v13 = *(*(v10 + 56) + v11);
    swift_endAccess();

    if (v4)
    {
      v5 = v13 + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_19;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA2C0);
      v17[3] = v14;
      v17[4] = sub_2166D9530(&qword_27CACA2C8, &qword_27CACA2C0);
      LOBYTE(v17[0]) = v5;
      __swift_project_boxed_opaque_existential_1(v17, v14);
      sub_217005F74();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = 16 * (v13 & 0xF) + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_20;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }
  }

  return v18;
}

uint64_t sub_216E14BD4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, size_t a8)
{
  v8 = a8;
  v38 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    v16 = OUTLINED_FUNCTION_39();
    v17 = MEMORY[0x21CE96E00](v16);
    v18 = v17 + 16;
    if (__OFADD__(v17, 16))
    {
      __break(1u);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_38();
      v20 = MEMORY[0x21CE96E00](v19);
      v21 = __OFSUB__(v18, v20);
      v8 = v18 - v20;
      if (!v21)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_4:
  v36 = MEMORY[0x21CE96DF0](v8);
  v37 = v22;
  v35 = 0;
  v23 = OUTLINED_FUNCTION_39();
  sub_21677A404(v23, v24);
  v25 = OUTLINED_FUNCTION_38();
  sub_21677A404(v25, v26);
  sub_21677A404(a4, a5);
  v27 = sub_216E15D14(&v36, a2, a3, a6, a7, a4, a5, a1, v8, &v35);
  if (!v27)
  {
    v28 = OUTLINED_FUNCTION_8();
    v29 = MEMORY[0x21CE96E00](v28);
    v30 = v35;
    if (v35 >= v29)
    {
LABEL_10:
      v32 = OUTLINED_FUNCTION_8();
      sub_21677A404(v32, v33);
      goto LABEL_11;
    }

    v31 = OUTLINED_FUNCTION_8();
    if (MEMORY[0x21CE96E00](v31) >= v30)
    {
      sub_217005F74();
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
  }

  if (v27 == -4301)
  {
    sub_216E14BD4(a1, a2, a3, a4, a5, a6, a7, v35);
  }

LABEL_11:
  sub_21677A524(v36, v37);
  return OUTLINED_FUNCTION_8();
}

void sub_216E14D8C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _DWORD *a9@<X8>, unint64_t a10, size_t a11, size_t *a12)
{
  v13 = a9;
  dataIn[2] = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 >> 32 < a3)
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_21677A404(a7, a8);
      sub_21677A404(a5, v16);
      sub_21677A404(a3, a4);
      v34 = sub_217005AD4();
      if (v34)
      {
        v35 = v34;
        v36 = sub_217005AF4();
        if (!__OFSUB__(a3, v36))
        {
          v37 = (a3 - v36 + v35);
          goto LABEL_24;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
      }

      v37 = 0;
LABEL_24:
      v46 = sub_217005AE4();
      if (v46 >= (a3 >> 32) - a3)
      {
        v47 = (a3 >> 32) - a3;
      }

      else
      {
        v47 = v46;
      }

      v48 = &v37[v47];
      if (v37)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      switch(a6 >> 62)
      {
        case 1uLL:
          v115 = a9;
          v51 = a5;
          v42 = a8;
          if (a5 >> 32 < a5)
          {
            goto LABEL_76;
          }

          v50 = a7;
          sub_21677A404(a7, a8);
          sub_21677A404(a3, a4);
          v108 = a11;
          v112 = a12;
          v80 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          v103 = a2;
          v93 = a4;
          v98 = a1;
          v88 = a3;
          v81 = a5;
          v82 = a5 >> 32;
LABEL_64:
          v52 = sub_216E16B44(v81, v82, v80, v50, v42, a10, v37, v49, v88, v93, v98, v103, v108, v112);
LABEL_65:
          v66 = v12;
          if (v12)
          {
            goto LABEL_77;
          }

          v67 = v52;
          sub_21677A524(v51, v16);
          v78 = v50;
          break;
        case 2uLL:
          v115 = a9;
          v51 = a5;
          v79 = *(a5 + 16);
          v114 = *(a5 + 24);
          v50 = a7;
          v42 = a8;
          sub_21677A404(a7, a8);
          sub_21677A404(a3, a4);
          v108 = a11;
          v112 = a12;
          v80 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          v103 = a2;
          v93 = a4;
          v98 = a1;
          v88 = a3;
          v81 = v79;
          v82 = v114;
          goto LABEL_64;
        case 3uLL:
          v14 = a8;
          sub_21677A404(a7, a8);
          sub_21677A404(a3, a4);
          v83 = sub_216E16668(0, 0, a7, a8, a10, v37, v49, a3, a4, a1, a2, a11, a12);
          v66 = v12;
          if (v12)
          {
            goto LABEL_77;
          }

          v67 = v83;
          sub_21677A524(a5, v16);
          v72 = a7;
          goto LABEL_50;
        default:
          v115 = a9;
          v50 = a7;
          v42 = a8;
          sub_21677A404(a7, a8);
          sub_21677A404(a3, a4);
          v51 = a5;
          v52 = sub_216E16668(a5, v16 & 0xFFFFFFFFFFFFFFLL, a7, a8, a10, v37, v49, a3, a4, a1, a2, a11, a12);
          goto LABEL_65;
      }

LABEL_67:
      sub_21677A524(v78, v42);
      sub_21677A524(a3, a4);
      v13 = v115;
LABEL_68:
      *v13 = v67;
      return;
    case 2uLL:
      v25 = *(a3 + 16);
      v24 = *(a3 + 24);
      sub_21677A404(a7, a8);
      v26 = a6;
      sub_21677A404(v17, a6);
      sub_21677A404(a3, a4);
      v27 = sub_217005AD4();
      v127 = v17;
      if (v27)
      {
        v28 = v27;
        v29 = sub_217005AF4();
        if (__OFSUB__(v25, v29))
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v30 = (v25 - v29 + v28);
      }

      else
      {
        v30 = 0;
      }

      if (!__OFSUB__(v24, v25))
      {
        v38 = sub_217005AE4();
        if (v38 >= v24 - v25)
        {
          v39 = v24 - v25;
        }

        else
        {
          v39 = v38;
        }

        v40 = &v30[v39];
        if (v30)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v16 = v26;
        v13 = a9;
        switch(v26 >> 62)
        {
          case 1uLL:
            v115 = a9;
            v44 = v127;
            v42 = a8;
            if (v127 >> 32 < v127)
            {
              goto LABEL_75;
            }

            v43 = a7;
            sub_21677A404(a7, a8);
            sub_21677A404(a3, a4);
            v107 = a11;
            v111 = a12;
            v74 = v16 & 0x3FFFFFFFFFFFFFFFLL;
            v102 = a2;
            v92 = a4;
            v97 = a1;
            v87 = a3;
            v75 = v127;
            v76 = v127 >> 32;
LABEL_56:
            v45 = sub_216E16B44(v75, v76, v74, v43, v42, a10, v30, v41, v87, v92, v97, v102, v107, v111);
LABEL_57:
            v66 = v12;
            if (v12)
            {
              goto LABEL_77;
            }

            v67 = v45;
            sub_21677A524(v44, v16);
            v78 = v43;
            break;
          case 2uLL:
            v115 = a9;
            v44 = v127;
            v73 = *(v127 + 16);
            v113 = *(v127 + 24);
            v43 = a7;
            v42 = a8;
            sub_21677A404(a7, a8);
            sub_21677A404(a3, a4);
            v107 = a11;
            v111 = a12;
            v74 = v16 & 0x3FFFFFFFFFFFFFFFLL;
            v102 = a2;
            v92 = a4;
            v97 = a1;
            v87 = a3;
            v75 = v73;
            v76 = v113;
            goto LABEL_56;
          case 3uLL:
            v15 = a7;
            v14 = a8;
            sub_21677A404(a7, a8);
            sub_21677A404(a3, a4);
            v77 = sub_216E16668(0, 0, a7, a8, a10, v30, v41, a3, a4, a1, a2, a11, a12);
            v66 = v12;
            if (v12)
            {
              goto LABEL_77;
            }

            v67 = v77;
            v71 = v127;
            goto LABEL_49;
          default:
            v115 = a9;
            v43 = a7;
            v42 = a8;
            sub_21677A404(a7, a8);
            sub_21677A404(a3, a4);
            v44 = v127;
            v45 = sub_216E16668(v127, v16 & 0xFFFFFFFFFFFFFFLL, a7, a8, a10, v30, v41, a3, a4, a1, a2, a11, a12);
            goto LABEL_57;
        }

        goto LABEL_67;
      }

      goto LABEL_70;
    case 3uLL:
      memset(dataIn, 0, 14);
      switch(a6 >> 62)
      {
        case 1uLL:
          op = a10;
          v125 = v12;
          if (a5 >> 32 < a5)
          {
            goto LABEL_73;
          }

          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          sub_21677A404(v17, v16);
          sub_21677A404(a3, a4);
          v105 = a11;
          v109 = a12;
          v53 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          v100 = a2;
          v90 = a4;
          v95 = a1;
          v85 = a3;
          v54 = v17;
          v55 = v17 >> 32;
LABEL_41:
          v12 = v125;
          v65 = sub_216E16B44(v54, v55, v53, v15, v14, op, dataIn, dataIn, v85, v90, v95, v100, v105, v109);
          goto LABEL_42;
        case 2uLL:
          v123 = *(a5 + 16);
          v125 = v12;
          op = a10;
          v119 = *(a5 + 24);
          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          sub_21677A404(v17, v16);
          sub_21677A404(a3, a4);
          v105 = a11;
          v109 = a12;
          v53 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          v100 = a2;
          v90 = a4;
          v95 = a1;
          v85 = a3;
          v55 = v119;
          v54 = v123;
          goto LABEL_41;
        case 3uLL:
          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          sub_21677A404(v17, v16);
          sub_21677A404(a3, a4);
          v99 = a11;
          v104 = a12;
          v31 = dataIn;
          v94 = a2;
          v84 = a4;
          v89 = a1;
          v21 = 0;
          v20 = 0;
          goto LABEL_35;
        default:
          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          sub_21677A404(v17, v16);
          sub_21677A404(a3, a4);
          v99 = a11;
          v104 = a12;
          v20 = v16 & 0xFFFFFFFFFFFFFFLL;
          v31 = dataIn;
          v94 = a2;
          v84 = a4;
          v89 = a1;
          v21 = v17;
LABEL_35:
          v62 = v15;
          v63 = v14;
          v64 = a10;
          goto LABEL_38;
      }

    default:
      dataIn[0] = a3;
      LOWORD(dataIn[1]) = a4;
      BYTE2(dataIn[1]) = BYTE2(a4);
      BYTE3(dataIn[1]) = BYTE3(a4);
      BYTE4(dataIn[1]) = BYTE4(a4);
      BYTE5(dataIn[1]) = BYTE5(a4);
      switch(a6 >> 62)
      {
        case 1uLL:
          v126 = v12;
          v116 = a9;
          v69 = a5 >> 32;
          if (a5 >> 32 < a5)
          {
            goto LABEL_74;
          }

          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          v129 = a5;
          sub_21677A404(a5, v16);
          sub_21677A404(a3, a4);
          v106 = a11;
          v110 = a12;
          v59 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          v101 = a2;
          v91 = a4;
          v96 = a1;
          v86 = a3;
          v60 = a5;
          v61 = v69;
LABEL_46:
          v70 = sub_216E16B44(v60, v61, v59, v15, v14, a10, dataIn, dataIn + BYTE6(a4), v86, v91, v96, v101, v106, v110);
          v66 = v126;
          if (v126)
          {
            goto LABEL_77;
          }

          v67 = v70;
          v17 = v129;
          v13 = v116;
          goto LABEL_48;
        case 2uLL:
          v116 = a9;
          v124 = *(a5 + 16);
          v126 = v12;
          v120 = *(a5 + 24);
          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          v129 = a5;
          sub_21677A404(a5, v16);
          sub_21677A404(a3, a4);
          v106 = a11;
          v110 = a12;
          v59 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          v96 = a1;
          v101 = a2;
          v86 = a3;
          v91 = a4;
          v61 = v120;
          v60 = v124;
          goto LABEL_46;
        case 3uLL:
          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          sub_21677A404(v17, v16);
          sub_21677A404(a3, a4);
          v99 = a11;
          v104 = a12;
          v94 = a2;
          v84 = a4;
          v89 = a1;
          v21 = 0;
          v20 = 0;
          goto LABEL_37;
        default:
          sub_21677A404(a7, a8);
          sub_21677A404(v15, v14);
          sub_21677A404(v17, v16);
          sub_21677A404(a3, a4);
          v99 = a11;
          v104 = a12;
          v20 = v16 & 0xFFFFFFFFFFFFFFLL;
          v94 = a2;
          v84 = a4;
          v89 = a1;
          v21 = v17;
LABEL_37:
          v62 = v15;
          v63 = v14;
          v64 = a10;
          v31 = dataIn + BYTE6(a4);
LABEL_38:
          v65 = sub_216E16668(v21, v20, v62, v63, v64, dataIn, v31, a3, v84, v89, v94, v99, v104);
LABEL_42:
          v66 = v12;
          if (v12)
          {
LABEL_77:

            __break(1u);
            return;
          }

          v67 = v65;
LABEL_48:
          v71 = v17;
LABEL_49:
          sub_21677A524(v71, v16);
          v72 = v15;
LABEL_50:
          sub_21677A524(v72, v14);
          sub_21677A524(a3, a4);
          break;
      }

      goto LABEL_68;
  }
}

uint64_t sub_216E1586C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_21700E574();
  MEMORY[0x28223BE20](v8 - 8);
  result = MEMORY[0x21CE96E00](a2, a3);
  if (result + 0x4000000000000000 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = swift_slowAlloc();
  result = MEMORY[0x21CE96E00](a2, a3);
  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_12:
      sub_21700E564();
      result = sub_21700E4A4();
      *a4 = result;
      a4[1] = v18;
      return result;
    }

    v11 = (v10 + 1);
    v12 = 0x4000000000000000;
    while (v12)
    {
      v14 = *a1++;
      v13 = v14;
      v15 = (v14 >> 4) + 87;
      v16 = (v14 >> 4) | 0x30;
      if (v14 > 0x9F)
      {
        LOBYTE(v16) = v15;
      }

      *(v11 - 1) = v16;
      if ((v13 & 0xFu) <= 9)
      {
        v17 = v13 & 0xF | 0x30;
      }

      else
      {
        v17 = (v13 & 0xF) + 87;
      }

      *v11 = v17;
      v11 += 2;
      --v12;
      if (!--result)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_216E159BC()
{
  result = sub_21700E384();
  qword_27CB22A98 = result;
  return result;
}

uint64_t sub_216E15C98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21700F2B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_216E15D14(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, size_t a9, size_t *a10)
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v11 = a1[1];
  v16 = a4;
  v17 = a3;
  switch(v11 >> 62)
  {
    case 1uLL:
      v35 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      sub_21677A404(a2, a3);
      sub_21677A404(v16, a5);
      sub_21677A404(a6, a7);
      sub_21677A404(a2, v17);
      sub_21677A404(v16, a5);
      sub_21677A404(a6, a7);
      sub_21677A404(v12, v11);
      sub_21677A524(v12, v11);
      *a1 = xmmword_217062B80;
      sub_21677A524(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v12;
      v38 = v12 >> 32;
      v53 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      if (v38 < v12)
      {
        goto LABEL_38;
      }

      if (sub_217005AD4() && __OFSUB__(v12, sub_217005AF4()))
      {
        goto LABEL_39;
      }

      sub_217005B04();
      swift_allocObject();
      v41 = sub_217005AC4();

      v37 = v12;
      v35 = v41;
      v38 = v12 >> 32;
LABEL_23:
      v58 = v16;
      v42 = v38 - v37;
      if (v38 < v37)
      {
        goto LABEL_35;
      }

      sub_21677A404(a2, v17);
      v50 = a5;
      sub_21677A404(v58, a5);
      sub_21677A404(a6, a7);

      result = sub_217005AD4();
      if (!result)
      {
        goto LABEL_41;
      }

      v43 = result;
      v44 = sub_217005AF4();
      v45 = v12 - v44;
      if (__OFSUB__(v12, v44))
      {
        goto LABEL_37;
      }

      v46 = sub_217005AE4();
      if (v46 >= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v46;
      }

      v48 = (v43 + v45);
      v49 = v43 + v45 + v47;
      v17 = v53;
      v16 = v58;
      a5 = v50;
      sub_216E14D8C(v48, v49, a2, v53, v58, v50, a6, a7, &v60, a8, a9, a10);
      v11 = v35 | 0x4000000000000000;
      if (v10)
      {
        sub_21677A524(a2, v53);
        sub_21677A524(v58, v50);
        sub_21677A524(a6, a7);

        sub_21677A524(a2, v53);
        sub_21677A524(v58, v50);
        sub_21677A524(a6, a7);
        *a1 = v12;
        a1[1] = v11;
      }

      else
      {
        sub_21677A524(a2, v53);
        sub_21677A524(v58, v50);
        sub_21677A524(a6, a7);
        v11 = v60;

        sub_21677A524(a2, v53);
        sub_21677A524(v58, v50);
        sub_21677A524(a6, a7);
        *a1 = v12;
        a1[1] = v35 | 0x4000000000000000;
      }

      goto LABEL_33;
    case 2uLL:
      sub_21677A404(a2, a3);
      sub_21677A404(v16, a5);
      sub_21677A404(a6, a7);
      sub_21677A404(a2, v17);
      sub_21677A404(v16, a5);
      sub_21677A404(a6, a7);
      sub_21677A404(v12, v11);
      sub_21677A524(v12, v11);
      *&v60 = v12;
      *(&v60 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_217062B80;
      sub_21677A524(0, 0xC000000000000000);
      sub_217005F14();
      v11 = *(&v60 + 1);
      v22 = v16;
      v23 = *(v60 + 16);
      v24 = *(v60 + 24);
      v51 = v60;
      v52 = a3;
      sub_21677A404(a2, a3);
      v57 = v22;
      sub_21677A404(v22, a5);
      sub_21677A404(a6, a7);
      result = sub_217005AD4();
      if (!result)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v26 = result;
      v27 = sub_217005AF4();
      v28 = v23 - v27;
      if (__OFSUB__(v23, v27))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v29 = __OFSUB__(v24, v23);
      v30 = v24 - v23;
      if (v29)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v31 = sub_217005AE4();
      if (v31 >= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      v33 = (v26 + v28);
      v34 = v26 + v28 + v32;
      v17 = v52;
      v16 = v57;
      sub_216E14D8C(v33, v34, a2, v52, v57, a5, a6, a7, &v59, a8, a9, a10);
      v19 = v11 | 0x8000000000000000;
      if (v10)
      {
        sub_21677A524(a2, v52);
        sub_21677A524(v57, a5);
        sub_21677A524(a6, a7);
        sub_21677A524(a2, v52);
        sub_21677A524(v57, a5);
        sub_21677A524(a6, a7);
        v20 = a1;
        *a1 = v51;
LABEL_12:
        v20[1] = v19;
      }

      else
      {
        sub_21677A524(a2, v52);
        sub_21677A524(v57, a5);
        sub_21677A524(a6, a7);
        v11 = v59;
        sub_21677A524(a2, v52);
        sub_21677A524(v57, a5);
        sub_21677A524(a6, a7);
        *a1 = v51;
        a1[1] = v19;
      }

LABEL_33:
      sub_21677A524(a2, v17);
      sub_21677A524(v16, a5);
      sub_21677A524(a6, a7);
      sub_21677A524(a2, v17);
      sub_21677A524(v16, a5);
      sub_21677A524(a6, a7);
      return v11;
    case 3uLL:
      *(&v60 + 7) = 0;
      *&v60 = 0;
      sub_21677A404(a2, a3);
      sub_21677A404(v16, a5);
      sub_21677A404(a6, a7);
      sub_21677A404(a6, a7);
      sub_216E14D8C(&v60, &v60, a2, v17, v16, a5, a6, a7, &v59, a8, a9, a10);
      sub_21677A524(a6, a7);
      if (!v10)
      {
        v11 = v59;
      }

      goto LABEL_33;
    default:
      sub_21677A404(a2, a3);
      sub_21677A404(a4, a5);
      sub_21677A404(a6, a7);
      sub_21677A404(a2, v17);
      sub_21677A404(a4, a5);
      sub_21677A404(a6, a7);
      sub_21677A524(v12, v11);
      *&v60 = v12;
      v16 = a4;
      WORD4(v60) = v11;
      BYTE10(v60) = BYTE2(v11);
      BYTE11(v60) = BYTE3(v11);
      BYTE12(v60) = BYTE4(v11);
      BYTE13(v60) = BYTE5(v11);
      BYTE14(v60) = BYTE6(v11);
      sub_216E14D8C(&v60, &v60 + BYTE6(v11), a2, v17, a4, a5, a6, a7, &v59, a8, a9, a10);
      if (v10)
      {
        v11 = v60;
        v19 = DWORD2(v60) | ((WORD6(v60) | (BYTE14(v60) << 16)) << 32);
        sub_21677A524(a2, v17);
        sub_21677A524(a4, a5);
        sub_21677A524(a6, a7);
        v20 = a1;
        *a1 = v11;
        goto LABEL_12;
      }

      v11 = v59;
      v39 = v60;
      v40 = DWORD2(v60) | ((WORD6(v60) | (BYTE14(v60) << 16)) << 32);
      sub_21677A524(a2, v17);
      sub_21677A524(a4, a5);
      sub_21677A524(a6, a7);
      *a1 = v39;
      a1[1] = v40;
      v16 = a4;
      goto LABEL_33;
  }
}

uint64_t sub_216E165C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_216E1586C(&v8, a3, a4, v11);
  result = sub_21677A524(a3, a4);
  if (!v4)
  {
    return v11[0];
  }

  return result;
}

uint64_t sub_216E16668(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t op, void *dataIn, int a7, uint64_t a8, unint64_t a9, void *dataOut, uint64_t a11, size_t dataOutAvailable, size_t *a13)
{
  v47 = *MEMORY[0x277D85DE8];
  iv = a1;
  v46 = WORD2(a2);
  v45 = a2;
  v13 = a8;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        goto LABEL_46;
      }

      v26 = sub_217005AD4();
      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = sub_217005AF4();
      if (__OFSUB__(a3, v27))
      {
        goto LABEL_54;
      }

      v26 += a3 - v27;
LABEL_23:
      sub_217005AE4();
      if ((op & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      if (HIDWORD(op))
      {
        goto LABEL_52;
      }

      v28 = 0;
      v29 = dataIn;
      v13 = a8;
      switch(a9 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(a8), a8))
          {
            goto LABEL_59;
          }

          v28 = HIDWORD(a8) - a8;
LABEL_41:
          v37 = CCCrypt(op, 0, 1u, v26, 0x20uLL, &iv, v29, v28, dataOut, dataOutAvailable, a13);
          break;
        case 2uLL:
          v39 = *(a8 + 16);
          v38 = *(a8 + 24);
          v28 = v38 - v39;
          if (!__OFSUB__(v38, v39))
          {
            goto LABEL_41;
          }

          goto LABEL_60;
        case 3uLL:
          goto LABEL_41;
        default:
          v28 = BYTE6(a9);
          goto LABEL_41;
      }

      goto LABEL_42;
    case 2uLL:
      goto LABEL_8;
    case 3uLL:
      memset(key, 0, 14);
      if ((op & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      else if (!HIDWORD(op))
      {
        v17 = 0;
        switch(a9 >> 62)
        {
          case 1uLL:
            v18 = HIDWORD(v13) - v13;
            if (!__OFSUB__(HIDWORD(v13), v13))
            {
              goto LABEL_28;
            }

            goto LABEL_55;
          case 2uLL:
            v31 = *(v13 + 16);
            v30 = *(v13 + 24);
            v17 = v30 - v31;
            if (!__OFSUB__(v30, v31))
            {
              goto LABEL_33;
            }

            __break(1u);
            break;
          case 3uLL:
            goto LABEL_33;
          default:
            goto LABEL_18;
        }

LABEL_32:
        v33 = *(v13 + 16);
        v32 = *(v13 + 24);
        v17 = v32 - v33;
        if (!__OFSUB__(v32, v33))
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    default:
      key[0] = a3;
      LOWORD(key[1]) = a4;
      BYTE2(key[1]) = BYTE2(a4);
      BYTE3(key[1]) = BYTE3(a4);
      BYTE4(key[1]) = BYTE4(a4);
      BYTE5(key[1]) = BYTE5(a4);
      if ((op & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (HIDWORD(op))
      {
        goto LABEL_49;
      }

      v17 = 0;
      switch(a9 >> 62)
      {
        case 1uLL:
          v18 = HIDWORD(v13) - v13;
          if (!__OFSUB__(HIDWORD(v13), v13))
          {
LABEL_28:
            v17 = v18;
LABEL_33:
            v34 = CCCrypt(op, 0, 1u, key, 0x20uLL, &iv, dataIn, v17, dataOut, dataOutAvailable, a13);
            sub_21677A524(a3, a4);
            goto LABEL_43;
          }

          __break(1u);
LABEL_8:
          v41 = v13;
          v20 = *(a3 + 16);
          v21 = sub_217005AD4();
          if (!v21)
          {
            goto LABEL_11;
          }

          v22 = sub_217005AF4();
          if (__OFSUB__(v20, v22))
          {
            goto LABEL_53;
          }

          v21 += v20 - v22;
LABEL_11:
          sub_217005AE4();
          if ((op & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          if (HIDWORD(op))
          {
            goto LABEL_50;
          }

          v23 = 0;
          v24 = dataIn;
          v13 = v41;
          switch(a9 >> 62)
          {
            case 1uLL:
              if (__OFSUB__(HIDWORD(v41), v41))
              {
                goto LABEL_57;
              }

              v23 = HIDWORD(v41) - v41;
LABEL_37:
              v37 = CCCrypt(op, 0, 1u, v21, 0x20uLL, &iv, v24, v23, dataOut, dataOutAvailable, a13);
              break;
            case 2uLL:
              v36 = *(v41 + 16);
              v35 = *(v41 + 24);
              v23 = v35 - v36;
              if (!__OFSUB__(v35, v36))
              {
                goto LABEL_37;
              }

              goto LABEL_58;
            case 3uLL:
              goto LABEL_37;
            default:
              v23 = BYTE6(a9);
              goto LABEL_37;
          }

LABEL_42:
          v34 = v37;
          sub_21677A524(a3, a4);
LABEL_43:
          sub_21677A524(v13, a9);
          return v34;
        case 2uLL:
          goto LABEL_32;
        case 3uLL:
          goto LABEL_33;
        default:
LABEL_18:
          v17 = BYTE6(a9);
          goto LABEL_33;
      }
  }
}

uint64_t sub_216E16A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_217005AD4();
  v11 = result;
  if (result)
  {
    result = sub_217005AF4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_217005AE4();
  sub_216E1586C(v11, a4, a5, &v12);
  result = sub_21677A524(a4, a5);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t sub_216E16B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, const void *a7, uint64_t a8, uint64_t a9, unint64_t a10, void *dataOut, uint64_t a12, size_t dataOutAvailable, size_t *a14)
{
  key[2] = *MEMORY[0x277D85DE8];
  v20 = sub_217005AD4();
  if (v20)
  {
    v21 = v20;
    v22 = sub_217005AF4();
    if (__OFSUB__(a1, v22))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v23 = (a1 - v22 + v21);
  }

  else
  {
    v23 = 0;
  }

  sub_217005AE4();
  switch(a5 >> 62)
  {
    case 1uLL:
      if (a4 > a4 >> 32)
      {
        goto LABEL_51;
      }

      iv = v23;
      sub_21677A404(a9, a10);
      v23 = sub_217005AD4();
      if (!v23)
      {
        goto LABEL_29;
      }

      v31 = sub_217005AF4();
      if (__OFSUB__(a4, v31))
      {
        goto LABEL_59;
      }

      v23 += a4 - v31;
LABEL_29:
      sub_217005AE4();
      v28 = a7;
      if ((a6 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (!HIDWORD(a6))
      {
        v29 = 0;
        switch(a10 >> 62)
        {
          case 1uLL:
            goto LABEL_43;
          case 2uLL:
            v40 = *(a9 + 16);
            v39 = *(a9 + 24);
            v29 = v39 - v40;
            if (!__OFSUB__(v39, v40))
            {
              goto LABEL_46;
            }

            goto LABEL_63;
          case 3uLL:
            goto LABEL_46;
          default:
            goto LABEL_32;
        }
      }

      goto LABEL_57;
    case 2uLL:
      goto LABEL_12;
    case 3uLL:
LABEL_21:
      memset(key, 0, 14);
      if ((a6 & 0x8000000000000000) != 0)
      {
        goto LABEL_49;
      }

      if (HIDWORD(a6))
      {
        goto LABEL_53;
      }

      v24 = 0;
      switch(a10 >> 62)
      {
        case 1uLL:
          v25 = HIDWORD(a9) - a9;
          if (!__OFSUB__(HIDWORD(a9), a9))
          {
            goto LABEL_34;
          }

          goto LABEL_60;
        case 2uLL:
          v33 = *(a9 + 16);
          v32 = *(a9 + 24);
          v24 = v32 - v33;
          if (!__OFSUB__(v32, v33))
          {
            goto LABEL_39;
          }

          __break(1u);
          break;
        case 3uLL:
          goto LABEL_39;
        default:
          goto LABEL_24;
      }

LABEL_38:
      v35 = *(a9 + 16);
      v34 = *(a9 + 24);
      v24 = v34 - v35;
      if (!__OFSUB__(v34, v35))
      {
        goto LABEL_39;
      }

      goto LABEL_61;
    default:
      key[0] = a4;
      LOWORD(key[1]) = a5;
      BYTE2(key[1]) = BYTE2(a5);
      BYTE3(key[1]) = BYTE3(a5);
      BYTE4(key[1]) = BYTE4(a5);
      BYTE5(key[1]) = BYTE5(a5);
      if ((a6 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (HIDWORD(a6))
      {
        goto LABEL_54;
      }

      break;
  }

  v24 = 0;
  switch(a10 >> 62)
  {
    case 1uLL:
      v25 = HIDWORD(a9) - a9;
      if (__OFSUB__(HIDWORD(a9), a9))
      {
        __break(1u);
LABEL_12:
        iv = v23;
        dataIn = a7;
        a7 = v14;
        v26 = *(a4 + 16);
        sub_21677A404(a9, a10);
        v23 = sub_217005AD4();
        if (v23)
        {
          v27 = sub_217005AF4();
          if (__OFSUB__(v26, v27))
          {
            goto LABEL_58;
          }

          v23 += v26 - v27;
        }

        sub_217005AE4();
        v28 = dataIn;
        if ((a6 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(a6))
          {
            v29 = 0;
            switch(a10 >> 62)
            {
              case 1uLL:
                v30 = HIDWORD(a9) - a9;
                if (!__OFSUB__(HIDWORD(a9), a9))
                {
                  goto LABEL_44;
                }

                __break(1u);
                goto LABEL_21;
              case 2uLL:
                v38 = *(a9 + 16);
                v37 = *(a9 + 24);
                v29 = v37 - v38;
                if (!__OFSUB__(v37, v38))
                {
                  goto LABEL_46;
                }

                __break(1u);
LABEL_43:
                v30 = HIDWORD(a9) - a9;
                if (__OFSUB__(HIDWORD(a9), a9))
                {
                  goto LABEL_62;
                }

LABEL_44:
                v29 = v30;
LABEL_46:
                v36 = CCCrypt(a6, 0, 1u, v23, 0x20uLL, iv, v28, v29, dataOut, dataOutAvailable, a14);
                sub_21677A524(a9, a10);
                break;
              case 3uLL:
                goto LABEL_46;
              default:
LABEL_32:
                v29 = BYTE6(a10);
                goto LABEL_46;
            }

            goto LABEL_47;
          }

          goto LABEL_55;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
      }

LABEL_34:
      v24 = v25;
LABEL_39:
      v36 = CCCrypt(a6, 0, 1u, key, 0x20uLL, v23, a7, v24, dataOut, dataOutAvailable, a14);
LABEL_47:
      sub_21677A524(a4, a5);
      sub_21677A524(a9, a10);
      return v36;
    case 2uLL:
      goto LABEL_38;
    case 3uLL:
      goto LABEL_39;
    default:
LABEL_24:
      v24 = BYTE6(a10);
      goto LABEL_39;
  }
}

uint64_t sub_216E16F80(uint64_t a1, unint64_t a2)
{
  v4 = sub_217006004();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = sub_2166B9480(v9, 0);
      v13 = sub_217005F54();
      sub_21677A524(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v13 != v9)
      {
        __break(1u);
LABEL_9:
        sub_21677A524(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v12;
  }
}

uint64_t sub_216E173CC()
{
  v5 = *(v0 + OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__socialCapabilities);
  sub_216AEFC84();
  v1 = v5;
  v2 = sub_21700F124();
  v3 = sub_21700F134();

  return v3;
}

id sub_216E17EC8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__hasGlobalNavigationStack] = 0;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__attributedDateRange] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__shelfPagination] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__popoverSelector] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__playlistDetailPagination] = 1;
  v2 = OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__socialCapabilities;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for JSHostSocialCapabilities()) init];
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__singPlaylistEnhancements] = 0;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__isSingDeviceSupported] = 0;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__isSingConnectivitySupported] = 0;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__performPlaylistCollaborationRequestActionParsing] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__favoriting] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__homeTitle] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__newTitle] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__yuma] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__pageMapping] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__playActivityPushNotifications] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__searchLandingUpsell] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__recentlyPlayedPlaylistFolders] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__chartsPage] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__replayWebView] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__presentAlertAction] = 1;
  v3 = OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__canShowLiveRadioGrid;
  v10 = &unk_28293AB48;
  v4 = sub_216E1812C();
  v11 = v4;
  v9[0] = 0;
  v5 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  v0[v3] = v5 & 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__horizontalLiveRadioPosterLayout] = 1;
  v6 = OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__replayInApp;
  v10 = &unk_28293AB48;
  v11 = v4;
  v9[0] = 1;
  LOBYTE(v4) = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  v0[v6] = v4 & 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__socialProfileHorizontalLockupSection] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__navigationBarSubtitle] = 1;
  v0[OBJC_IVAR____TtC7MusicUI18JSHostCapabilities__libraryHydratedPosterLockups] = 1;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_216E1812C()
{
  result = qword_280E2BEC0;
  if (!qword_280E2BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BEC0);
  }

  return result;
}

uint64_t sub_216E18290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_216E19508(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DislikeAction);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_216BB9FF8(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_216ECDBF4(&unk_217062CA8, v8);
}

uint64_t sub_216E183BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v3[31] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = sub_21700D2A4();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = type metadata accessor for NoticeAction(0);
  v3[41] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216E18580, 0, 0);
}

uint64_t sub_216E18580()
{
  OUTLINED_FUNCTION_31();
  sub_216E19464(*(v0 + 256), v0 + 16);
  if (*(v0 + 56))
  {
    sub_2166A0F18((v0 + 16), v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    sub_21700BE44();
    *(v0 + 400) = sub_21700BE34();
    v1 = swift_task_alloc();
    *(v0 + 408) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_6_11(v1);

    return MEMORY[0x28218A5F8](v2);
  }

  else
  {
    sub_2166A0F18((v0 + 16), v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
    sub_21700BE44();
    *(v0 + 360) = sub_21700BE34();
    v3 = swift_task_alloc();
    *(v0 + 368) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_6_11(v3);

    return MEMORY[0x28218A588](v4);
  }
}

uint64_t sub_216E186FC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
    v7 = sub_216E18D98;
  }

  else
  {

    v7 = sub_216E18804;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216E18804()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[41];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
  __swift_storeEnumTagSinglePayload(v1, 7, 11, v6);
  sub_21700D234();
  v0[21] = v2;
  v0[22] = sub_216E194C0(&qword_27CAB8E08, type metadata accessor for NoticeAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  sub_216E19508(v1, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
  (*(v4 + 104))(v3, *MEMORY[0x277D21E18], v5);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_216E189A8;
  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[36];
  v12 = v0[33];

  return MEMORY[0x28217F468](v10, v0 + 18, v11, v12, v9);
}

uint64_t sub_216E189A8()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v6 = v5[36];
  v7 = v5[35];
  v8 = v5[34];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[49] = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v11 = sub_216E18F40;
  }

  else
  {
    (*(v3[38] + 8))(v3[39], v3[37]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 18));
    v11 = sub_216E18B2C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_216E18B2C()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_2169BC1FC(v0[41]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 13));
  v4 = OUTLINED_FUNCTION_0_230();
  (*(v5 + 104))(v4, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216E18BF0()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (v0)
  {
    v7 = sub_216E1910C;
  }

  else
  {

    v7 = sub_216E18CF8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216E18CF8()
{
  OUTLINED_FUNCTION_31();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  v1 = OUTLINED_FUNCTION_0_230();
  (*(v2 + 104))(v1, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t sub_216E18D98()
{
  OUTLINED_FUNCTION_82_0();
  v17 = v0;

  v2 = *(v0 + 376);
  if (qword_27CAB60F0 != -1)
  {
    OUTLINED_FUNCTION_1_195();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_27CACA3A8);
  v4 = v2;
  v5 = sub_217007C84();
  v6 = sub_21700ED84();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_561();
    OUTLINED_FUNCTION_12_82(4.8751e-34);
    v7 = sub_21700F884();
    v9 = sub_2166A85FC(v7, v8, &v16);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_13_77(&dword_216679000, v10, v11, "Dislike Action failed with error=%{public}s");
    OUTLINED_FUNCTION_5_126();
    OUTLINED_FUNCTION_19_6();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  v12 = OUTLINED_FUNCTION_0_230();
  (*(v13 + 104))(v12, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v14();
}

uint64_t sub_216E18F40()
{
  OUTLINED_FUNCTION_82_0();
  v20 = v0;
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  sub_2169BC1FC(v0[41]);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18));
  v5 = v0[49];
  if (qword_27CAB60F0 != -1)
  {
    OUTLINED_FUNCTION_1_195();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_27CACA3A8);
  v7 = v5;
  v8 = sub_217007C84();
  v9 = sub_21700ED84();

  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_561();
    OUTLINED_FUNCTION_12_82(4.8751e-34);
    v10 = sub_21700F884();
    v12 = sub_2166A85FC(v10, v11, &v19);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_13_77(&dword_216679000, v13, v14, "Dislike Action failed with error=%{public}s");
    OUTLINED_FUNCTION_5_126();
    OUTLINED_FUNCTION_19_6();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 13));
  v15 = OUTLINED_FUNCTION_0_230();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v17();
}

uint64_t sub_216E1910C()
{
  OUTLINED_FUNCTION_82_0();
  v17 = v0;

  if (qword_27CAB60F0 != -1)
  {
    OUTLINED_FUNCTION_1_195();
  }

  v2 = *(v0 + 416);
  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_27CACA3A8);
  v4 = v2;
  v5 = sub_217007C84();
  v6 = sub_21700ED84();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 416);
  if (v7)
  {
    swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_561();
    *v1 = 136446210;
    swift_getErrorValue();
    v9 = sub_21700F884();
    v11 = sub_2166A85FC(v9, v10, &v16);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_216679000, v5, v6, "Undo Dislike Action failed with error=%{public}s", v1, 0xCu);
    OUTLINED_FUNCTION_5_126();
    OUTLINED_FUNCTION_19_6();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  v12 = OUTLINED_FUNCTION_0_230();
  (*(v13 + 104))(v12, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v14();
}

uint64_t sub_216E192D8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACA3A8);
  __swift_project_value_buffer(v0, qword_27CACA3A8);
  return sub_217007C94();
}

uint64_t sub_216E1935C()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *(type metadata accessor for DislikeAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_216801F4C;

  return sub_216E183BC(v3, v0 + v5, v6);
}

uint64_t sub_216E194C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216E19508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_216E19598()
{
  OUTLINED_FUNCTION_3_159();
  OUTLINED_FUNCTION_2_116();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_0_231();
  v6(v5);
  OUTLINED_FUNCTION_4_136();
  v7 = OUTLINED_FUNCTION_1_196();
  v8(v7);
  (*(v3 + 8))(v1, v0);
  result = 1701670760;
  switch(v11)
  {
    case 0:
      return result;
    case 1:
      result = 7824750;
      break;
    case 2:
      result = 0x736F65646976;
      break;
    case 3:
      result = 0x6F69646172;
      break;
    case 4:
      result = 0x7972617262696CLL;
      break;
    case 5:
      result = 0x79616C705F776F6ELL;
      break;
    case 6:
      result = 0x686372616573;
      break;
    default:
      result = v10;
      break;
  }

  return result;
}

uint64_t sub_216E1974C()
{
  OUTLINED_FUNCTION_3_159();
  OUTLINED_FUNCTION_2_116();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_0_231();
  v6(v5);
  OUTLINED_FUNCTION_4_136();
  v7 = OUTLINED_FUNCTION_1_196();
  v8(v7);
  (*(v3 + 8))(v1, v0);
  if (v11 < 4)
  {
    return 0x676E6970756F7267;
  }

  if (v11 == 6)
  {
    return 0x6C5F686372616573;
  }

  sub_2166E8284(v10, v11);
  return 0;
}

id sub_216E198BC()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result UserRequestedSubscriptionHidden];
  }

  return result;
}

uint64_t sub_216E198E4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACA3C0);
  __swift_project_value_buffer(v0, qword_27CACA3C0);
  return sub_217007C94();
}

uint64_t sub_216E1998C()
{
  sub_216E19964();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_216E199C0(void *a1)
{
  v1 = a1;
  sub_216E19A14();
}

void sub_216E19A14()
{
  v1 = sub_21700E9A4();
  v2 = OUTLINED_FUNCTION_0_232();
  [v0 setValue:v1 forKey:v2];
}

uint64_t type metadata accessor for AddItemsToPlaylistAction()
{
  result = qword_280E36F88;
  if (!qword_280E36F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E19AF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000217081DF0 == a2;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_216E19BCC(char a1)
{
  if (a1)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_216E19C14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA3F0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216E1A17C();
  sub_21700F974();
  v10[15] = 0;
  sub_21700F724();
  if (!v1)
  {
    type metadata accessor for AddItemsToPlaylistAction();
    v10[14] = 1;
    sub_21700D284();
    sub_216E1A290(&qword_27CABFD98);
    sub_21700F764();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216E19DAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v19 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA3E0);
  OUTLINED_FUNCTION_1();
  v21 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for AddItemsToPlaylistAction();
  MEMORY[0x28223BE20](v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216E1A17C();
  sub_21700F964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v10;
  v13 = v22;
  v25 = 0;
  *v12 = sub_21700F664();
  v12[1] = v14;
  v24 = 1;
  sub_216E1A290(&qword_27CABFD88);
  sub_21700F6A4();
  v15 = OUTLINED_FUNCTION_3_4();
  v16(v15);
  (*(v19 + 32))(v12 + *(v18 + 20), v7, v13);
  sub_216E1A1D0(v12, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_216E1A234(v12);
}

uint64_t sub_216E1A094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216E19AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216E1A0BC(uint64_t a1)
{
  v2 = sub_216E1A17C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216E1A0F8(uint64_t a1)
{
  v2 = sub_216E1A17C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_216E1A17C()
{
  result = qword_27CACA3E8;
  if (!qword_27CACA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA3E8);
  }

  return result;
}

uint64_t sub_216E1A1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddItemsToPlaylistAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E1A234(uint64_t a1)
{
  v2 = type metadata accessor for AddItemsToPlaylistAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216E1A290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21700D284();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddItemsToPlaylistAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216E1A3B4()
{
  result = qword_27CACA3F8;
  if (!qword_27CACA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA3F8);
  }

  return result;
}

unint64_t sub_216E1A40C()
{
  result = qword_27CACA400;
  if (!qword_27CACA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA400);
  }

  return result;
}

unint64_t sub_216E1A464()
{
  result = qword_27CACA408;
  if (!qword_27CACA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA408);
  }

  return result;
}

uint64_t sub_216E1A4B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void sub_216E1A4E0(uint64_t a1, uint64_t a2)
{
  sub_216E1A6F8(a1, a2);
  v3 = v2;
  if (!*(v2 + 16))
  {

    return;
  }

  v4 = sub_21700E5A4();
  v6 = v5;
  sub_216E1A910(1, v3);
  v10 = v9 >> 1;
  v11 = (v9 >> 1) - v8;
  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_15;
  }

  v22 = v6;
  v23 = v4;
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v24 = MEMORY[0x277D84F90];
    sub_2166F4258();
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v14 = v24;
    v15 = v12 + 16 * v13 + 8;
    while (v13 < v10)
    {
      sub_2167B2E14();
      v16 = sub_21700F194();
      v18 = v17;
      v19 = *(v24 + 16);
      if (v19 >= *(v24 + 24) >> 1)
      {
        sub_2166F4258();
      }

      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      ++v13;
      v15 += 16;
      if (v10 == v13)
      {
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v14 = MEMORY[0x277D84F90];
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_217013DA0;
  *(v21 + 32) = v23;
  *(v21 + 40) = v22;
  sub_216BDD7E4(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_216856418();
  sub_21700E454();
}

void sub_216E1A6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_217005914();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v23[0] = a1;
  v23[1] = a2;
  sub_2170058E4();
  sub_217005904();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_2167B2E14();
  v12 = sub_21700F184();
  v11(v8, v4);
  v13 = 0;
  v14 = *(v12 + 16);
  v15 = MEMORY[0x277D84F90];
LABEL_2:
  v16 = (v12 + 40 + 16 * v13);
  while (1)
  {
    if (v14 == v13)
    {

      return;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    ++v13;
    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_21700DF14();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2166F4258();
        v15 = v23[0];
      }

      v21 = *(v15 + 16);
      if (v21 >= *(v15 + 24) >> 1)
      {
        sub_2166F4258();
        v15 = v23[0];
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_216E1A910(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_216A73F10(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_216A73E00(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_216E1A9A8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_21700E644();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_21700E734();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_216E1AABC()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v5 = sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38_13();
  if ([objc_opt_self() isMainThread])
  {
    byte_27CABF728 = 0;
  }

  else
  {
    sub_2166AF2EC();
    v16 = sub_21700EE84();
    v19[4] = v4;
    v19[5] = 0;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_233(COERCE_DOUBLE(1107296256));
    v19[2] = v17;
    v19[3] = v2;
    v18 = _Block_copy(v19);

    sub_21700B5C4();
    v19[0] = MEMORY[0x277D84F90];
    sub_216CB5E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    sub_2167D59D0();
    OUTLINED_FUNCTION_4_137();
    sub_21700F214();
    MEMORY[0x21CE9FCB0](0, v0, v11, v18);
    _Block_release(v18);

    (*(v7 + 8))(v11, v5);
    (*(v14 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216E1AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_49();
  v49 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v52 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38_13();
  sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v50 = v38;
  v51 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v41 = v40 - v39;
  v42 = swift_allocObject();
  v42[2] = v33;
  v42[3] = v31;
  v42[4] = v29;
  v42[5] = v27;
  v42[6] = v25;
  v43 = objc_opt_self();
  v44 = v33;
  v45 = v31;

  if ([v43 isMainThread])
  {
    v49(v44, v45, v29, v27, v25);
  }

  else
  {
    sub_2166AF2EC();
    v46 = sub_21700EE84();
    v53[4] = a21;
    v53[5] = v42;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_233(COERCE_DOUBLE(1107296256));
    v53[2] = v47;
    v53[3] = a22;
    v48 = _Block_copy(v53);

    sub_21700B5C4();
    v53[0] = MEMORY[0x277D84F90];
    sub_216CB5E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    sub_2167D59D0();
    OUTLINED_FUNCTION_5_127();
    sub_21700F214();
    MEMORY[0x21CE9FCB0](0, v41, v22, v48);
    _Block_release(v48);

    (*(v52 + 8))(v22, v34);
    (*(v50 + 8))(v41, v51);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216E1B010()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v30 = v14;
  v31 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38_13();
  sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v28 = v16;
  v29 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = v10;
  v20[4] = v8;
  v20[5] = v6;
  v20[6] = v4;
  v20[7] = v2;
  v21 = objc_opt_self();
  v22 = v12;
  v23 = v10;
  v24 = v8;

  if ([v21 isMainThread])
  {
    sub_216BA430C(v22, v23, v24, v6);
  }

  else
  {
    sub_2166AF2EC();
    v27 = sub_21700EE84();
    v32[4] = sub_216E1B4FC;
    v32[5] = v20;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_233(COERCE_DOUBLE(1107296256));
    v32[2] = v25;
    v32[3] = &block_descriptor_6_0;
    v26 = _Block_copy(v32);

    sub_21700B5C4();
    v32[0] = MEMORY[0x277D84F90];
    sub_216CB5E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    sub_2167D59D0();
    OUTLINED_FUNCTION_5_127();
    sub_21700F214();
    MEMORY[0x21CE9FCB0](0, v19, v0, v26);
    _Block_release(v26);

    (*(v30 + 8))(v0, v31);
    (*(v28 + 8))(v19, v29);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216E1B2E4()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v5 = sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38_13();
  if ([objc_opt_self() isMainThread])
  {
    v4();
  }

  else
  {
    sub_2166AF2EC();
    v16 = sub_21700EE84();
    v19[4] = v4;
    v19[5] = v2;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_233(COERCE_DOUBLE(1107296256));
    v19[2] = v17;
    v19[3] = &block_descriptor_21_0;
    v18 = _Block_copy(v19);

    sub_21700B5C4();
    v19[0] = MEMORY[0x277D84F90];
    sub_216CB5E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    sub_2167D59D0();
    OUTLINED_FUNCTION_4_137();
    sub_21700F214();
    MEMORY[0x21CE9FCB0](0, v0, v11, v18);
    _Block_release(v18);

    (*(v7 + 8))(v11, v5);
    (*(v14 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for PopAction()
{
  result = qword_280E2B610;
  if (!qword_280E2B610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E1B638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_216E1B910(uint64_t *a1, uint64_t a2)
{
  v77 = a2;
  v68 = a1;
  v82 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v81 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v7 - v6);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v76 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_70(&v66 - v10);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v79 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_70(&v66 - v13);
  v72 = type metadata accessor for PresentConfirmationDialogAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v16 - v15);
  v17 = _s6ActionVMa();
  v18 = v17 - 8;
  v69 = *(v17 - 8);
  v70 = v69;
  MEMORY[0x28223BE20](v17);
  v67 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  sub_216983738(39);
  OUTLINED_FUNCTION_68_0();
  v92[3] = type metadata accessor for BlockUserAction();
  v92[4] = sub_216E1C0F0(&qword_280E42938, type metadata accessor for BlockUserAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
  sub_21700D234();
  v27 = v68[1];
  *boxed_opaque_existential_1 = *v68;
  boxed_opaque_existential_1[1] = v27;
  sub_21700DF14();
  sub_217006214();
  v28 = sub_2170061F4();
  v30 = v29;
  v31 = *(v24 + 8);
  v32 = OUTLINED_FUNCTION_46_1();
  v31(v32);
  v89[0] = v28;
  v89[1] = v30;
  v90 = v2;
  v91 = v3;
  sub_2167ADC3C(v89, v22);
  v33 = *(v18 + 28);
  sub_217007ED4();
  v34 = sub_217007F04();
  v66 = v22;
  __swift_storeEnumTagSinglePayload(&v22[v33], 0, 1, v34);
  sub_217006214();
  sub_2170061F4();
  OUTLINED_FUNCTION_68_0();
  v35 = OUTLINED_FUNCTION_46_1();
  v31(v35);
  v36 = &v22[*(v18 + 32)];
  *v36 = v33;
  *(v36 + 1) = v3;
  sub_216983738(43);
  OUTLINED_FUNCTION_68_0();
  v86 = 0u;
  v87 = 0u;
  v88 = 0;
  sub_217006214();
  v37 = sub_2170061F4();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_46_1();
  v31(v40);
  v84[0] = v37;
  v84[1] = v39;
  v84[2] = v33;
  v85 = v3;
  v41 = v67;
  sub_2167ADC3C(v84, v67);
  v42 = *(v18 + 28);
  sub_217007EF4();
  __swift_storeEnumTagSinglePayload(v41 + v42, 0, 1, v34);
  sub_217006214();
  sub_2170061F4();
  OUTLINED_FUNCTION_68_0();
  v43 = OUTLINED_FUNCTION_46_1();
  v31(v43);
  v44 = (v41 + *(v18 + 32));
  *v44 = v42;
  v44[1] = v3;
  v45 = sub_216983738(38);
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
  v48 = *(v69 + 72);
  v49 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_217013D90;
  v51 = v50 + v49;
  sub_216E1C138(v41, v51, _s6ActionVMa);
  v52 = v66;
  sub_216E1C138(v66, v51 + v48, _s6ActionVMa);
  sub_216933384(v45, v47, v50, 0, 0, v93);
  v53 = v71;
  sub_21700D234();
  v54 = v72;
  v55 = v53 + *(v72 + 20);
  v56 = v93[1];
  *v55 = v93[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v94;
  type metadata accessor for ObjectGraph();
  v57 = v73;
  v58 = v74;
  sub_21700E094();
  v83[3] = v54;
  v83[4] = sub_216E1C0F0(qword_280E30130, type metadata accessor for PresentConfirmationDialogAction);
  v59 = __swift_allocate_boxed_opaque_existential_1(v83);
  sub_216E1C138(v53, v59, type metadata accessor for PresentConfirmationDialogAction);
  v60 = v76;
  v61 = v75;
  v62 = v78;
  (*(v76 + 104))(v75, *MEMORY[0x277D21E18], v78);
  v63 = v57;
  sub_21700D5E4();

  (*(v60 + 8))(v61, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v81 + 104))(v80, *MEMORY[0x277D21CA8], v82);
  v64 = sub_21700E1F4();
  (*(v79 + 8))(v63, v58);
  sub_216E1C198(v53, type metadata accessor for PresentConfirmationDialogAction);
  sub_216E1C198(v41, _s6ActionVMa);
  sub_2167ADC98(v84);
  sub_216E1C198(v52, _s6ActionVMa);
  sub_2167ADC98(v89);
  return v64;
}

uint64_t sub_216E1C0F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216E1C138(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216E1C198(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216E1C218@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12_3();
  v16 = *(v3 + 80);
  swift_getKeyPath();
  sub_216E1CED0();

  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 120);
  v6 = OUTLINED_FUNCTION_22_56();
  OUTLINED_FUNCTION_31_47(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  OUTLINED_FUNCTION_50();
  return (*(v14 + 16))(a1, v1 + v5);
}

uint64_t sub_216E1C2DC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_6();
  v16 = *(v3 + 80);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  sub_216E1CED0();

  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 128);
  v6 = OUTLINED_FUNCTION_22_56();
  OUTLINED_FUNCTION_31_47(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  return (*(v14 + 16))(a1, v1 + v5);
}

uint64_t sub_216E1C3E0()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_30_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_19_54();
  v6(v5);
  OUTLINED_FUNCTION_116();
  swift_getAssociatedConformanceWitness();
  sub_21700D324();
  return (*(v3 + 8))(v0, AssociatedTypeWitness);
}

uint64_t sub_216E1C4E0()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_30_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_0_231();
  v4(v3);
  OUTLINED_FUNCTION_116();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = OUTLINED_FUNCTION_29_47();
  v7(v6);
  return v0;
}

uint64_t sub_216E1C608@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12_3();
  v16 = *(v3 + 80);
  swift_getKeyPath();
  sub_216E1DEA4();

  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 120);
  v6 = OUTLINED_FUNCTION_22_56();
  OUTLINED_FUNCTION_31_47(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  OUTLINED_FUNCTION_50();
  return (*(v14 + 16))(a1, v1 + v5);
}

uint64_t sub_216E1C75C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_6();
  v17 = *(v3 + 80);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v4 + 104);
  swift_getKeyPath();
  sub_216E1DEA4();

  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 128);
  v8 = OUTLINED_FUNCTION_22_56();
  OUTLINED_FUNCTION_31_47(v8, *(v5 + 8), v9, v10, v11, v12, v13, v14, v17);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  return (*(v15 + 16))(a1, v1 + v7);
}

uint64_t sub_216E1C898@<X0>(uint64_t a1@<X8>)
{
  v15 = *(*v1 + 80);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  sub_216E1DEA4();

  OUTLINED_FUNCTION_0_1();
  v4 = *(v3 + 136);
  v5 = OUTLINED_FUNCTION_22_56();
  OUTLINED_FUNCTION_31_47(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  return (*(v13 + 16))(a1, v1 + v4);
}

uint64_t sub_216E1C9B4()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_30_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_0_231();
  v4(v3);
  OUTLINED_FUNCTION_116();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = OUTLINED_FUNCTION_29_47();
  v7(v6);
  return v0;
}

uint64_t sub_216E1CABC()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_30_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_19_54();
  v6(v5);
  OUTLINED_FUNCTION_116();
  swift_getAssociatedConformanceWitness();
  sub_21700E334();
  return (*(v3 + 8))(v0, AssociatedTypeWitness);
}

void sub_216E1CBBC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_63();
  v2 = OUTLINED_FUNCTION_25_50();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_104();
  OUTLINED_FUNCTION_27_49();
  v4 = OUTLINED_FUNCTION_10_93();
  v5(v4);
  OUTLINED_FUNCTION_26_45();
  OUTLINED_FUNCTION_18_63();
  v6 = OUTLINED_FUNCTION_9_93();
  v7 = v1(v6);
  if (v0)
  {
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_3_160();
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_65();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_8_101();
    OUTLINED_FUNCTION_34_34();
    sub_216E1CF44();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    v9 = OUTLINED_FUNCTION_6_112();
    v10(v9);
    swift_endAccess();
  }

  (v1)(v0, v2);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216E1CD98(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_37_41();
  v4 = *(v3 + 80);
  swift_getKeyPath();
  OUTLINED_FUNCTION_34_34();
  sub_216E1CF44();

  OUTLINED_FUNCTION_50();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_216E1CED0()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_78();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_36_38();
}

uint64_t sub_216E1CF44()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_13_78();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_23_51();
}

uint64_t sub_216E1CFD8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1 + v4, a2, AssociatedTypeWitness);
  return swift_endAccess();
}

char *sub_216E1D0C4()
{
  v1 = *v0;
  sub_216788110((v0 + 16));
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 120)], *(v1 + 80));
  OUTLINED_FUNCTION_0_1();
  v4 = *(v3 + 128);
  OUTLINED_FUNCTION_30_47();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 144);
  sub_217006714();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(&v0[v7]);
  return v0;
}

uint64_t sub_216E1D1F0()
{
  sub_216E1D0C4();
  OUTLINED_FUNCTION_12_3();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void sub_216E1D3E0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_63();
  v2 = OUTLINED_FUNCTION_25_50();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_104();
  OUTLINED_FUNCTION_27_49();
  v4 = OUTLINED_FUNCTION_10_93();
  v5(v4);
  OUTLINED_FUNCTION_26_45();
  OUTLINED_FUNCTION_18_63();
  v6 = OUTLINED_FUNCTION_9_93();
  v7 = v1(v6);
  if (v0)
  {
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_3_160();
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_65();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_8_101();
    OUTLINED_FUNCTION_34_34();
    sub_216E1DFEC();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    v9 = OUTLINED_FUNCTION_6_112();
    v10(v9);
    swift_endAccess();
  }

  (v1)(v0, v2);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216E1D604(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_37_41();
  v4 = *(v3 + 80);
  swift_getKeyPath();
  sub_216E1DFEC();

  OUTLINED_FUNCTION_50();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_216E1D7B8()
{
  sub_216E1E254();
  OUTLINED_FUNCTION_12_3();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void sub_216E1D9BC()
{
  OUTLINED_FUNCTION_49();
  v25 = v1;
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v23 = *v0;
  v24 = v6;
  v22 = *(v23 + 104);
  v7 = *(v23 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *(v23 + 128);
  swift_beginAccess();
  (*(v10 + 16))(v13, &v0[v14], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v5;
  v16 = v27(v13, v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v10 + 8);
  v18 = v17(v13, AssociatedTypeWitness);
  if (v16)
  {
    MEMORY[0x28223BE20](v18);
    *(&v22 - 4) = v7;
    v19 = v22;
    *(&v22 - 3) = *(v23 + 88);
    *(&v22 - 1) = v19;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v21 = v28;
    *(&v22 - 2) = v0;
    *(&v22 - 1) = v21;
    sub_216E1DFEC();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    v21 = v28;
    (*(v10 + 24))(&v0[v14], v28, AssociatedTypeWitness);
    swift_endAccess();
  }

  v17(v21, AssociatedTypeWitness);
  OUTLINED_FUNCTION_26();
}

void sub_216E1DC68()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_63();
  v2 = OUTLINED_FUNCTION_25_50();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_104();
  OUTLINED_FUNCTION_27_49();
  v4 = OUTLINED_FUNCTION_10_93();
  v5(v4);
  OUTLINED_FUNCTION_26_45();
  OUTLINED_FUNCTION_18_63();
  v6 = OUTLINED_FUNCTION_9_93();
  v7 = v1(v6);
  if (v0)
  {
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_3_160();
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_65();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_8_101();
    OUTLINED_FUNCTION_34_34();
    sub_216E1DFEC();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    v9 = OUTLINED_FUNCTION_6_112();
    v10(v9);
    swift_endAccess();
  }

  (v1)(v0, v2);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216E1DEA4()
{
  OUTLINED_FUNCTION_5_6();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_36_38();
}

uint64_t sub_216E1DF20()
{
  OUTLINED_FUNCTION_28_43();
  v3 = *(v2 + 120);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_50();
  (*(v4 + 24))(v1 + v3, v0);
  return swift_endAccess();
}

uint64_t sub_216E1DFEC()
{
  OUTLINED_FUNCTION_5_6();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_23_51();
}

uint64_t sub_216E1E088()
{
  OUTLINED_FUNCTION_28_43();
  v3 = *(v2 + 128);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v4 + 24))(v1 + v3, v0);
  return swift_endAccess();
}

uint64_t sub_216E1E158(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v5 + 24))(a1 + v4, a2);
  return swift_endAccess();
}

char *sub_216E1E254()
{
  OUTLINED_FUNCTION_76();
  v1 = *v0;
  sub_216788110((v0 + 16));
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 120)], *(v1 + 80));
  OUTLINED_FUNCTION_0_1();
  v4 = *(v3 + 128);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 136);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(&v0[v7]);
  OUTLINED_FUNCTION_0_1();
  v10 = *(v9 + 152);
  sub_217006714();
  OUTLINED_FUNCTION_34();
  (*(v11 + 8))(&v0[v10]);
  return v0;
}

uint64_t sub_216E1E580(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E1E5D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E1E630(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E1E6A4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACA410);
  __swift_project_value_buffer(v0, qword_27CACA410);
  return sub_217007C94();
}

unint64_t sub_216E1E804()
{
  result = qword_280E426A8[0];
  if (!qword_280E426A8[0])
  {
    type metadata accessor for ModalFlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E426A8);
  }

  return result;
}

double sub_216E1E85C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a2;
  v43 = a1;
  v2 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v41 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v34 = v13;
  MEMORY[0x28223BE20](v14);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v37 = v16;
  v38 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v19 = *(v6 + 16);
  v42 = v4;
  v19(v11, v43, v4);
  v20 = v40;
  sub_21700D224();
  if (v20)
  {
    (*(v6 + 8))(v43, v42);
    v21 = OUTLINED_FUNCTION_1_74();
    v22(v21);
  }

  else
  {
    v40 = v6;
    (*(v37 + 32))(v39, v18, v38);
    v24 = v34;
    sub_21700CE04();
    v25 = v35;
    v19(v35, v43, v42);
    v26 = v36;
    sub_216ED9A20(v24, v25, v36);
    v27 = OUTLINED_FUNCTION_2_60();
    v28(v27);
    v29 = OUTLINED_FUNCTION_1_74();
    v30(v29);
    v31 = type metadata accessor for ModalFlowAction();
    v32 = v39;
    sub_216E1EC44(v26, v39 + *(v31 + 20));
    result = 500.0;
    *(v32 + *(v31 + 24)) = xmmword_217015580;
  }

  return result;
}

uint64_t sub_216E1EC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216E1ECA8()
{
  result = qword_280E2CFE0[0];
  if (!qword_280E2CFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CFE0);
  }

  return result;
}

uint64_t sub_216E1ECFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v8 = sub_217006DE4();
  v6[20] = v8;
  OUTLINED_FUNCTION_2(v8);
  v6[21] = v9;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = sub_217006E04();
  v6[24] = v10;
  OUTLINED_FUNCTION_2(v10);
  v6[25] = v11;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v12 = sub_217006E24();
  v6[29] = v12;
  OUTLINED_FUNCTION_2(v12);
  v6[30] = v13;
  v6[31] = OUTLINED_FUNCTION_80();
  v14 = sub_217006BF4();
  v6[32] = v14;
  OUTLINED_FUNCTION_2(v14);
  v6[33] = v15;
  v6[34] = OUTLINED_FUNCTION_80();
  v6[35] = *(a5 - 8);
  v6[36] = OUTLINED_FUNCTION_80();
  MusicItemStationAction = type metadata accessor for CreateMusicItemStationAction();
  v6[37] = MusicItemStationAction;
  OUTLINED_FUNCTION_2(MusicItemStationAction);
  v6[38] = v17;
  v6[39] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v6[40] = sub_21700EA24();
  v19 = sub_21700E9B4();
  v6[41] = v19;
  v6[42] = v18;

  return MEMORY[0x2822009F8](sub_216E1EFB0, v19, v18);
}

uint64_t sub_216E1EFB0()
{
  v1 = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_116();
  sub_2169FC06C(v2, v1, v3, v4);
  v5 = v36;
  v0[43] = v38;
  v0[44] = v39;
  v0[45] = v40;
  if (qword_27CAB6110 != -1)
  {
    swift_once();
  }

  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[15];
  v10 = sub_217007CA4();
  v0[46] = __swift_project_value_buffer(v10, qword_27CACA440);
  (*(v6 + 16))(v7, v9, v8);
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[38];
  v15 = v0[39];
  v16 = v0[37];
  if (v13)
  {
    v33 = v12;
    v18 = v0[35];
    v17 = v0[36];
    v35 = v36;
    v19 = v0[18];
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v20 = 136446210;
    (*(v18 + 16))(v17, v15, v19);
    OUTLINED_FUNCTION_116();
    sub_21700E594();
    (*(v14 + 8))(v15, v16);
    v21 = OUTLINED_FUNCTION_116();
    v24 = sub_2166A85FC(v21, v22, v23);
    v5 = v35;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_216679000, v11, v33, "Playing station from %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v25 = v0[5];
  v26 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v25);
  v0[7] = v5;
  v0[8] = v38;
  v0[9] = v39;
  v0[10] = v40;
  v27 = *(v26 + 72);
  sub_21700DF14();
  sub_21677A3F0(v39, v40);
  v34 = (v27 + *v27);
  v28 = swift_task_alloc();
  v0[47] = v28;
  *v28 = v0;
  v28[1] = sub_216E1F35C;
  v29 = v0[18];
  v30 = v0[19];
  v31 = v0[15];

  return (v34)(v31, v0 + 7, v29, v30, v25, v26);
}

uint64_t sub_216E1F35C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  v3[48] = v0;

  sub_21677A4C0(v3[7], v2[8], v2[9], v2[10]);
  v5 = v3[41];
  v6 = v3[42];
  if (v0)
  {
    v7 = sub_216E1F664;
  }

  else
  {
    v7 = sub_216E1F4B8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_216E1F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;

  __swift_project_boxed_opaque_existential_1(v24 + 2, v24[5]);
  swift_getDynamicType();
  OUTLINED_FUNCTION_12_5();
  if (v27())
  {
    v24[13] = v24[17];
    v29 = v24[44];
    v28 = v24[45];
    v30 = v24[16];
    HIBYTE(a11) = 1;
    a12 = 0;
    LOBYTE(a13) = 1;
    MusicItemStationActionImplementation = type metadata accessor for CreateMusicItemStationActionImplementation();
    OUTLINED_FUNCTION_1_197();
    WitnessTable = swift_getWitnessTable();
    sub_2169C7090(v30, &a11 + 7, &a12, MusicItemStationActionImplementation, WitnessTable);

    v33 = v29;
    v34 = v28;
  }

  else
  {

    v33 = OUTLINED_FUNCTION_8();
  }

  sub_21677A510(v33, v34);
  OUTLINED_FUNCTION_0_234();
  v47 = v24[23];
  v48 = v24[22];
  v35 = v24[14];
  v36 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v37 + 104))(v35, v36);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216E1F664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = *(v12 + 384);
  *(v12 + 88) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_8();
  if (swift_dynamicCast())
  {
    if ((*(*(v12 + 264) + 88))(*(v12 + 272), *(v12 + 256)) == *MEMORY[0x277D2A8C8])
    {
      v15 = *(v12 + 272);
      v16 = *(v12 + 248);
      v17 = *(v12 + 232);
      v18 = *(v12 + 240);

      v19 = OUTLINED_FUNCTION_116();
      v20(v19);
      (*(v18 + 32))(v16, v15, v17);
      v21 = sub_217007C84();
      v22 = sub_21700EDA4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_216679000, v21, v22, "Presenting dialog...", v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = swift_task_alloc();
      *(v12 + 392) = v24;
      type metadata accessor for CreateMusicItemStationActionImplementation();
      OUTLINED_FUNCTION_1_197();
      swift_getWitnessTable();
      *v24 = v12;
      v24[1] = sub_216E1F948;
      OUTLINED_FUNCTION_7_3();

      return sub_2169C6750();
    }

    v30 = *(v12 + 264);
    v29 = *(v12 + 272);
    v31 = *(v12 + 256);

    v32 = OUTLINED_FUNCTION_8();
    sub_21677A510(v32, v33);

    (*(v30 + 8))(v29, v31);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_8();
    sub_21677A510(v27, v28);
  }

  v42 = *(v12 + 384);
  OUTLINED_FUNCTION_0_234();

  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v42, a10, a11, a12);
}

uint64_t sub_216E1F948()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v2[50] = v0;

  v4 = v2[41];
  v5 = v2[42];
  if (v0)
  {
    v6 = sub_216E200B4;
  }

  else
  {
    v6 = sub_216E1FA54;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216E1FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 224);
  v28 = *(v24 + 208);
  v29 = *(v24 + 192);
  v30 = *(*(v24 + 200) + 16);
  v30(*(v24 + 216), v27, v29);
  v30(v28, v27, v29);
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v24 + 208);
  v34 = *(v24 + 216);
  v37 = *(v24 + 192);
  v36 = *(v24 + 200);
  if (v33)
  {
    a9 = *(v24 + 184);
    a10 = *(v24 + 160);
    HIDWORD(a11) = v32;
    v38 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    a13 = a12;
    *v38 = 136446466;
    v39 = sub_217006DC4();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v34, v37);
    v43 = sub_2166A85FC(v39, v41, &a13);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    sub_217006DF4();
    v44 = sub_21700E594();
    v46 = v45;
    v42(v35, v37);
    v47 = sub_2166A85FC(v44, v46, &a13);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_216679000, v31, BYTE4(a11), "Performing dialog action %{public}s with kind %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v42 = *(v36 + 8);
    v42(v35, v37);
    v42(v34, v37);
  }

  *(v24 + 408) = v42;
  v49 = *(v24 + 176);
  v48 = *(v24 + 184);
  v50 = *(v24 + 160);
  v51 = *(v24 + 168);
  sub_217006DF4();
  (*(v51 + 104))(v49, *MEMORY[0x277D2A928], v50);
  OUTLINED_FUNCTION_116();
  *(v24 + 440) = sub_217006DD4() & 1;
  v52 = *(v51 + 8);
  v52(v49, v50);
  v52(v48, v50);
  __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
  v53 = OUTLINED_FUNCTION_116();
  *(v24 + 416) = v54(v53);
  v55 = swift_task_alloc();
  *(v24 + 424) = v55;
  *v55 = v24;
  v55[1] = sub_216E1FD78;
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x282189CE0](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216E1FD78()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_216E201B0;
  }

  else
  {
    v5 = sub_216E1FED0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216E1FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 408);
  v29 = *(v24 + 240);
  v28 = *(v24 + 248);
  v31 = *(v24 + 224);
  v30 = *(v24 + 232);
  v32 = *(v24 + 192);

  v27(v31, v32);
  (*(v29 + 8))(v28, v30);

  v33 = *(v24 + 440);
  __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
  swift_getDynamicType();
  OUTLINED_FUNCTION_12_5();
  v35 = v34();
  v37 = *(v24 + 352);
  v36 = *(v24 + 360);
  if ((v35 & 1) != 0 && (v33 & 1) == 0)
  {
    v38 = *(v24 + 128);
    *(v24 + 104) = *(v24 + 136);
    HIBYTE(a11) = 1;
    a12 = 0;
    LOBYTE(a13) = 1;
    MusicItemStationActionImplementation = type metadata accessor for CreateMusicItemStationActionImplementation();
    OUTLINED_FUNCTION_1_197();
    WitnessTable = swift_getWitnessTable();
    sub_2169C7090(v38, &a11 + 7, &a12, MusicItemStationActionImplementation, WitnessTable);
  }

  sub_21677A510(v37, v36);
  OUTLINED_FUNCTION_0_234();
  v53 = *(v24 + 184);
  v54 = *(v24 + 176);
  v41 = *(v24 + 112);
  v42 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v43 + 104))(v41, v42);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216E200B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);
  v15 = *(v12 + 232);

  v16 = OUTLINED_FUNCTION_8();
  sub_21677A510(v16, v17);
  (*(v14 + 8))(v13, v15);
  v27 = *(v12 + 400);
  OUTLINED_FUNCTION_0_234();

  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t sub_216E201B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v29 = *(v12 + 408);
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);
  v16 = *(v12 + 224);
  v15 = *(v12 + 232);
  v17 = *(v12 + 192);

  v18 = OUTLINED_FUNCTION_8();
  sub_21677A510(v18, v19);
  v29(v16, v17);
  (*(v14 + 8))(v13, v15);
  v30 = *(v12 + 432);
  OUTLINED_FUNCTION_0_234();

  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v30, a10, a11, a12);
}

uint64_t sub_216E202D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_2166F2728;

  return sub_216E1ECFC(a1, a2, a3, v10, v12, v13);
}

uint64_t sub_216E2039C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E203D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E20430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216E2049C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACA440);
  __swift_project_value_buffer(v0, qword_27CACA440);
  return sub_217007C94();
}

uint64_t type metadata accessor for StackedTrackTitlesView()
{
  result = qword_27CACA458;
  if (!qword_27CACA458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E20590()
{
  sub_216688154();
  if (v0 <= 0x3F)
  {
    sub_216833F44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_216E2063C@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_21700AC44();
  v5 = sub_2170093C4();
  v11 = 1;
  sub_216E20748(v1, v4, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_216681B64(__dst, &v8, &qword_27CACA468);
  sub_21669987C(v13, &qword_27CACA468);

  memcpy(&v10[7], __dst, 0xC0uLL);
  v6 = v11;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v10, 0xC7uLL);
}

uint64_t sub_216E20748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v4 = sub_217008844();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a1 + 32);
  type metadata accessor for ExplicitBadgingPresenter();
  sub_216A959B0();
  sub_21700DF14();
  v11 = sub_217008CF4();
  v57 = v12;
  if (!v8)
  {

    v11 = 0;
    v56 = 0;
    v57 = 0;
LABEL_9:
    v53 = 0;
    v54 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v13 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    v11 = 0;
    v56 = 0;
    v57 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  v14 = v9;
  if (v10)
  {
    v15 = sub_217009154();
  }

  else
  {
    v15 = sub_2170091A4();
  }

  v16 = v15;
  v59[0] = v11;
  v59[1] = v57;
  v59[2] = v14;
  v59[3] = v8;
  LOWORD(v59[4]) = v10;
  v59[5] = 0;
  LOBYTE(v59[6]) = 0;
  v59[7] = v15;
  v53 = v59[6];
  v54 = v59[4];
  v64 = v11;
  v65 = v57;
  v56 = v14;
  v66 = v14;
  v67 = v8;
  LOWORD(v68) = v10;
  v69 = 0;
  LOBYTE(v70) = 0;
  v71 = v15;
  sub_21680DAEC(v59, v61);
  sub_21680DB48(&v64);
LABEL_12:
  v52 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v17 = type metadata accessor for StackedTrackTitlesView();
  sub_216C0C570(v17, v18, v19, v20, v21, v22, v23, v24, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, KeyPath, v52);
  v25 = sub_217008834();
  (*(v5 + 8))(v7, v4);
  v50 = swift_getKeyPath();
  v80 = 0;
  v26 = *(a1 + 33);
  if (v26)
  {
  }

  else
  {
    v27 = sub_21700AD14();
  }

  v47 = v27;
  v55 = v8;
  v28 = a1[3];
  v29 = v11;
  if (v28)
  {
    v30 = a1[2];
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = 0;
    v46 = 0;
  }

  v31 = v16;
  sub_21700DF14();
  v45 = sub_217009E94();
  v44 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v79 = 0;
  if (v26)
  {
    v33 = v48;
  }

  else
  {
    v33 = sub_21700AD34();
  }

  v34 = 3;
  if ((v25 & 1) == 0)
  {
    v34 = 1;
  }

  v48 = v34;
  v42 = v31;
  v43 = v29;
  v59[0] = v29;
  v59[1] = v57;
  v59[2] = v56;
  v59[3] = v55;
  v59[4] = v54;
  v59[5] = 0;
  v59[6] = v53;
  v59[7] = v31;
  v59[8] = KeyPath;
  v59[9] = v52;
  v59[10] = v50;
  v59[11] = v34;
  LOBYTE(v59[12]) = 0;
  *(&v59[12] + 1) = v81[0];
  HIDWORD(v59[12]) = *(v81 + 3);
  v35 = v47;
  v59[13] = v47;
  memcpy(v58, v59, 0x70uLL);
  v60[0] = v30;
  v60[1] = v28;
  v36 = v30;
  v37 = v45;
  v38 = v46;
  v60[2] = 0;
  v60[3] = v46;
  v39 = v44;
  v60[4] = v44;
  v60[5] = v45;
  v60[6] = v32;
  v60[7] = 1;
  LOBYTE(v60[8]) = 0;
  v60[9] = v33;
  memcpy(&v58[112], v60, 0x50uLL);
  memcpy(v49, v58, 0xC0uLL);
  v61[0] = v36;
  v61[1] = v28;
  v61[2] = 0;
  v61[3] = v38;
  v61[4] = v39;
  v61[5] = v37;
  v61[6] = v32;
  v61[7] = 1;
  v62 = 0;
  v63 = v33;
  sub_216681B64(v59, &v64, &qword_27CACA470);
  sub_216681B64(v60, &v64, &qword_27CAC82C0);
  sub_21669987C(v61, &qword_27CAC82C0);
  v64 = v43;
  v65 = v57;
  v66 = v56;
  v67 = v55;
  v68 = v54;
  v69 = 0;
  v70 = v53;
  v71 = v42;
  v72 = KeyPath;
  v73 = v52;
  v74 = v50;
  v75 = v48;
  v76 = 0;
  *v77 = v81[0];
  *&v77[3] = *(v81 + 3);
  v78 = v35;
  return sub_21669987C(&v64, &qword_27CACA470);
}

unint64_t sub_216E20BC4()
{
  result = qword_27CACA478;
  if (!qword_27CACA478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CACA480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA478);
  }

  return result;
}

MusicUI::MusicAppDestination::SharePageDescriptor::Kind_optional __swiftcall MusicAppDestination.SharePageDescriptor.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21700F5E4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t static MusicAppDestinationContext.none.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicAppDestinationContext(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 20);
  v4 = sub_217005EF4();

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

void sub_216E20CEC()
{
  OUTLINED_FUNCTION_45_28();
  if (v7 && v0 && v1 != v2)
  {
    v3 = v1 + 40;
    v4 = v2 + 40;
    do
    {
      OUTLINED_FUNCTION_44_28();
      v7 = v7 && v5 == v6;
      if (!v7 && (sub_21700F7D4() & 1) == 0)
      {
        break;
      }

      v3 += 16;
      v4 += 16;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_216E20D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        OUTLINED_FUNCTION_7_4();
        v5 = sub_21700AC74();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_216E20E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_2167ADC3C(v3, v9);
      sub_2167ADC3C(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_2167ADC98(v8);
        sub_2167ADC98(v9);
      }

      else
      {
        v6 = sub_21700F7D4();
        sub_2167ADC98(v8);
        sub_2167ADC98(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 72;
      v4 += 72;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_216E20EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistAddableItem() - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_216E2568C(v13, v10);
        sub_216E2568C(v14, v7);
        v16 = static PlaylistAddableItem.== infix(_:_:)(v10, v7);
        sub_216E256E4();
        sub_216E256E4();
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_216E210A8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = sub_217006FE4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = v3 + v13;
    v15 = v1 + v13;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = (v16 - 8);
    v26 = *(v16 + 56);
    v27 = v17;
    while (1)
    {
      v19 = OUTLINED_FUNCTION_82();
      v27(v19);
      if (!v12)
      {
        break;
      }

      v20 = v16;
      (v27)(v10, v15, v4);
      sub_216E25644(&unk_280E4A410, MEMORY[0x277D2AB38]);
      OUTLINED_FUNCTION_191();
      v21 = sub_21700E494();
      v22 = *v18;
      v23 = OUTLINED_FUNCTION_8();
      v22(v23);
      v24 = OUTLINED_FUNCTION_227();
      v22(v24);
      if (v21)
      {
        v15 += v26;
        v14 += v26;
        v25 = v12-- == 1;
        v16 = v20;
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_26();
  }
}

void sub_216E21288()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SocialFindFriendsController.Friend(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = *(v3 + 16);
  if (v9 == *(v1 + 16) && v9 && v3 != v1)
  {
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = v3 + v10;
    v12 = v1 + v10;
    v13 = *(v8 + 72);
    while (1)
    {
      v14 = OUTLINED_FUNCTION_45_0();
      sub_216E2568C(v14, v15);
      if (!v9)
      {
        break;
      }

      sub_216E2568C(v12, v7);
      sub_21700F8F4();
      sub_21700E614();
      v16 = sub_21700F944();
      sub_21700F8F4();
      sub_21700E614();
      v17 = sub_21700F944();
      sub_216E256E4();
      sub_216E256E4();
      v18 = v16 != v17 || v9-- == 1;
      v12 += v13;
      v11 += v13;
      if (v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_26();
  }
}

void sub_216E21468()
{
  OUTLINED_FUNCTION_45_28();
  if (v7 && v0 && v1 != v2)
  {
    v3 = v1 + 40;
    v4 = v2 + 40;
    do
    {
      OUTLINED_FUNCTION_44_28();
      v7 = v7 && v5 == v6;
      if (!v7 && (sub_21700F7D4() & 1) == 0)
      {
        break;
      }

      v3 += 24;
      v4 += 24;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_216E214E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      type metadata accessor for FacetBarItemBox();
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = OUTLINED_FUNCTION_82();
        v7 = sub_216C05D68(v5, v6);

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t MusicAppDestination.AlbumDescriptor.id.getter()
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_4_139();
  v2 = OUTLINED_FUNCTION_45_0();
  sub_216E2568C(v2, v3);
  OUTLINED_FUNCTION_115();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = OUTLINED_FUNCTION_7_4();
      v6(v5);
      sub_21700C164();
      v7 = OUTLINED_FUNCTION_38();
      v8(v7);
    }
  }

  else
  {
    sub_216E256E4();
  }

  return OUTLINED_FUNCTION_45_0();
}

void static MusicAppDestination.AlbumDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v49 = v2;
  v4 = v3;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v47 = v6;
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v44 = v7;
  OUTLINED_FUNCTION_4_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v45 = v9;
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_100_3();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v44 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA490);
  OUTLINED_FUNCTION_36(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_56_21();
  v27 = (v0 + v26);
  sub_216E2568C(v4, v0);
  sub_216E2568C(v49, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_139();
      sub_216E2568C(v0, v21);
      v38 = *v21;
      v37 = v21[1];
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_18;
      }

      if (v38 == *v27 && v37 == v27[1])
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_4_139();
      sub_216E2568C(v0, v1);
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v47;
        v30 = v48;
        v32 = v44;
        (*(v47 + 32))(v44, v27, v48);
        sub_21700BFE4();
        v33 = *(v31 + 8);
        v33(v32, v30);
        v33(v1, v30);
        goto LABEL_23;
      }

      (*(v47 + 8))(v1, v48);
      goto LABEL_20;
    case 3u:
      OUTLINED_FUNCTION_4_139();
      sub_216E2568C(v0, v16);
      v35 = *v16;
      v34 = v16[1];
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_18:

        goto LABEL_20;
      }

      if (v35 == *v27 && v34 == v27[1])
      {
LABEL_21:
      }

      else
      {
LABEL_17:
        sub_21700F7D4();
      }

      goto LABEL_23;
    default:
      OUTLINED_FUNCTION_4_139();
      v28 = OUTLINED_FUNCTION_8();
      sub_216E2568C(v28, v29);
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v45 + 8))(v23, v46);
LABEL_20:
        sub_216697664(v0, &unk_27CACA490);
      }

      else
      {
        v41 = v45;
        v40 = v46;
        OUTLINED_FUNCTION_53_21();
        v42(v12, v27, v40);
        sub_21700C154();
        v43 = *(v41 + 8);
        v43(v12, v40);
        v43(v23, v40);
LABEL_23:
        OUTLINED_FUNCTION_2_166();
        sub_216E256E4();
      }

      OUTLINED_FUNCTION_26();
      return;
  }
}

void MusicAppDestination.AlbumDescriptor.hash(into:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_110();
  v2 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_16();
  v6 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_4_139();
  sub_216E2568C(v0, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = 1;
      goto LABEL_6;
    case 2u:
      (*(v4 + 32))(v1, v16, v2);
      MEMORY[0x21CEA0720](2);
      OUTLINED_FUNCTION_33_37();
      sub_216E25644(v19, v20);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      v21 = OUTLINED_FUNCTION_74_0();
      v22(v21);
      break;
    case 3u:
      v23 = 3;
LABEL_6:
      MEMORY[0x21CEA0720](v23);
      OUTLINED_FUNCTION_38();
      sub_21700E614();

      break;
    default:
      (*(v8 + 32))(v12, v16, v6);
      MEMORY[0x21CEA0720](0);
      sub_216E25644(&qword_27CACA4A0, MEMORY[0x277CD82C8]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      v17 = OUTLINED_FUNCTION_109();
      v18(v17);
      break;
  }

  OUTLINED_FUNCTION_26();
}