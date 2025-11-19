uint64_t sub_21A08D69C()
{
  sub_21A0E6DAC();
  sub_21A0E481C();
  sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  sub_21A0E626C();
  sub_21A0E495C();
  sub_21A08E0C4(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A08D79C()
{
  sub_21A0E481C();
  sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  sub_21A0E626C();
  sub_21A0E495C();
  sub_21A08E0C4(&qword_27CCD9828, MEMORY[0x277CC9578]);
  return sub_21A0E615C();
}

uint64_t sub_21A08D884()
{
  sub_21A0E6DAC();
  sub_21A0E481C();
  sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  sub_21A0E626C();
  sub_21A0E495C();
  sub_21A08E0C4(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A08D980()
{
  sub_21A07B7D0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD4B0);
  swift_allocObject();
  return sub_21A0E508C();
}

uint64_t sub_21A08D9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAccessToken();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A08DA8C()
{
  result = sub_21A0E481C();
  if (v1 <= 0x3F)
  {
    result = sub_21A0E495C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A08DBB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A08DC1C(uint64_t a1, char a2, void *a3)
{
  v52 = a3;
  v5 = type metadata accessor for ActivityAccessToken();
  v48 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - v10;
  v51 = sub_21A0E481C();
  v45 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEE8);
  result = MEMORY[0x28223BE20](v15, v16);
  v49 = &v42 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(result + 48);
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v46 = *(v18 + 72);
    v47 = v21;
    v50 = (v45 + 32);
    v43 = (v45 + 8);
    while (1)
    {
      v25 = v49;
      sub_21A08DFF0(v22, v49);
      v26 = *v50;
      (*v50)(v14, v25, v51);
      v27 = v25 + v47;
      v28 = v11;
      sub_21A08D9E0(v27, v11);
      v29 = *v52;
      v31 = sub_219F9FD40(v14);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        break;
      }

      v35 = v30;
      if (v29[3] >= v34)
      {
        if ((a2 & 1) == 0)
        {
          sub_21A0D5C2C();
        }
      }

      else
      {
        sub_21A0D4234(v34, a2 & 1);
        v36 = sub_219F9FD40(v14);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_17;
        }

        v31 = v36;
      }

      v38 = *v52;
      if (v35)
      {
        v23 = *(v48 + 72) * v31;
        v24 = v44;
        sub_21A07B9F0(v38[7] + v23, v44);
        v11 = v28;
        sub_219F7DF80(v28);
        (*v43)(v14, v51);
        result = sub_21A08E060(v24, v38[7] + v23);
      }

      else
      {
        v38[(v31 >> 6) + 8] |= 1 << v31;
        v26((v38[6] + *(v45 + 72) * v31), v14, v51);
        v11 = v28;
        result = sub_21A08D9E0(v28, v38[7] + *(v48 + 72) * v31);
        v39 = v38[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_16;
        }

        v38[2] = v41;
      }

      v22 += v46;
      a2 = 1;
      if (!--v20)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_21A0E6D0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21A08DFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A08E060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAccessToken();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A08E0C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A08E130()
{
  result = qword_27CCDD4B8;
  if (!qword_27CCDD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4B8);
  }

  return result;
}

unint64_t sub_21A08E188()
{
  result = qword_27CCDD4C0;
  if (!qword_27CCDD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4C0);
  }

  return result;
}

BOOL static DynamicValueSelectionCapabilities.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

NewsLiveActivitiesCore::DynamicValueSelectionCapabilities __swiftcall DynamicValueSelectionCapabilities.init(dynamicIsland:alwaysOnDisplay:displayScale:)(Swift::Bool dynamicIsland, Swift::Bool alwaysOnDisplay, NewsLiveActivitiesCore::DisplayScale displayScale)
{
  v4 = *displayScale.rawValue;
  *v3 = dynamicIsland;
  *(v3 + 1) = alwaysOnDisplay;
  *(v3 + 8) = v4;
  LOBYTE(result.displayScale.rawValue) = alwaysOnDisplay;
  result.dynamicIsland = dynamicIsland;
  return result;
}

NewsLiveActivitiesCore::DynamicValueSelectionCapabilities __swiftcall DynamicValueSelectionCapabilities.with(dynamicIsland:alwaysOnDisplay:displayScale:)(Swift::Bool_optional dynamicIsland, Swift::Bool_optional alwaysOnDisplay, NewsLiveActivitiesCore::DisplayScale_optional displayScale)
{
  if (dynamicIsland.value == 2)
  {
    value = *v4;
  }

  else
  {
    value = dynamicIsland.value;
  }

  if (alwaysOnDisplay.value == 2)
  {
    v6 = v4[1];
  }

  else
  {
    v6 = alwaysOnDisplay.value;
  }

  if (*(displayScale.value.rawValue + 8))
  {
    rawValue = (v4 + 8);
  }

  else
  {
    rawValue = displayScale.value.rawValue;
  }

  v8 = *rawValue;
  *v3 = value & 1;
  *(v3 + 1) = v6 & 1;
  *(v3 + 8) = v8;
  LOBYTE(result.displayScale.rawValue) = alwaysOnDisplay;
  result.dynamicIsland = dynamicIsland.value;
  return result;
}

uint64_t DynamicValueSelectionCapabilities.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_21A0E6DCC();
  sub_21A0E6DCC();
  return MEMORY[0x21CED2490](v1);
}

uint64_t DynamicValueSelectionCapabilities.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_21A0E6DAC();
  sub_21A0E6DCC();
  sub_21A0E6DCC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A08E3CC()
{
  v1 = *(v0 + 8);
  sub_21A0E6DAC();
  sub_21A0E6DCC();
  sub_21A0E6DCC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A08E43C()
{
  v1 = *(v0 + 8);
  sub_21A0E6DCC();
  sub_21A0E6DCC();
  return MEMORY[0x21CED2490](v1);
}

uint64_t sub_21A08E488()
{
  v1 = *(v0 + 8);
  sub_21A0E6DAC();
  sub_21A0E6DCC();
  sub_21A0E6DCC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

BOOL sub_21A08E4F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

uint64_t DynamicValueSelectionCapabilities.description.getter()
{
  v1 = v0[1];
  if (*v0 != 1)
  {
    v2 = MEMORY[0x277D84F90];
    if (!v0[1])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_219FA15AC(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_219FA15AC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, "Dynamic Island");
  v5[47] = -18;
  if (v1)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_219FA15AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_219FA15AC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000011;
    *(v8 + 5) = 0x800000021A10AF10;
  }

LABEL_12:
  sub_21A0E686C();

  strcpy(v19, "Display Scale=");
  HIBYTE(v19[1]) = -18;
  sub_21A015854();
  v9 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v9);

  v10 = v19[0];
  v11 = v19[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_219FA15AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_219FA15AC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = v10;
  *(v14 + 5) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
  sub_219F65B54();
  v15 = sub_21A0E618C();
  v17 = v16;

  MEMORY[0x21CED1980](v15, v17);

  MEMORY[0x21CED1980](125, 0xE100000000000000);
  return 123;
}

unint64_t sub_21A08E7E8()
{
  result = qword_27CCDD4C8;
  if (!qword_27CCDD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4C8);
  }

  return result;
}

uint64_t sub_21A08E84C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21A08E854(uint64_t a1)
{
  v2 = sub_219F48E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A08E890(uint64_t a1)
{
  v2 = sub_219F48E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsroomActivityID.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewsroomActivityID.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NewsroomActivityID.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = v0[1];
  v14[2] = v10;
  v14[3] = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A08EBFC()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = v0[1];
  v14[2] = v10;
  v14[3] = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

unint64_t sub_21A08EDC4()
{
  result = qword_27CCDD4D8;
  if (!qword_27CCDD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4D8);
  }

  return result;
}

uint64_t sub_21A08EE1C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21A0E481C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a3 + 8))(a2, a3);
  v14 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v15 = 0;
    v20 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19[0] = a4;
    v19[1] = v9 + 16;
    while (v15 < *(v14 + 16))
    {
      (*(v9 + 16))(v12, v20 + *(v9 + 72) * v15, v8);
      v24 = sub_21A0E472C();
      v25 = v16;
      v22 = qword_21A100348[a1];
      v23 = 0xE800000000000000;
      sub_219F3F130();
      v17 = sub_21A0E677C();

      if (v17)
      {

        a4 = v19[0];
        (*(v9 + 32))(v19[0], v12, v8);
        v18 = 0;
        return (*(v9 + 56))(a4, v18, 1, v8);
      }

      ++v15;
      result = (*(v9 + 8))(v12, v8);
      if (v21 == v15)
      {

        v18 = 1;
        a4 = v19[0];
        return (*(v9 + 56))(a4, v18, 1, v8);
      }
    }

    __break(1u);
  }

  else
  {

    v18 = 1;
    return (*(v9 + 56))(a4, v18, 1, v8);
  }

  return result;
}

uint64_t sub_21A08F08C(void *a1)
{
  v2 = sub_21A0E46CC();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A0E481C();
  v33 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  v14 = [a1 appConfiguration];
  if ([v14 respondsToSelector_])
  {
    v15 = [v14 liveActivityAssetServerURLs];
    swift_unknownObjectRelease();
    if (v15)
    {
      v16 = sub_21A0E639C();

      result = v16;
      if (*(v16 + 16))
      {
        return result;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v18 = [a1 appConfiguration];
  v19 = [objc_opt_self() liveActivityBaseURLForConfiguration_];
  if (v19)
  {
    v20 = v19;
    sub_21A0E479C();

    v31 = v18;
    v21 = v33;
    (*(v33 + 32))(v13, v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA640);
    v30 = v6;
    v27 = *(v21 + 72);
    v28 = 2 * v27;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21A0F2E40;
    v34 = 0x617461646174656DLL;
    v35 = 0xE800000000000000;
    v22 = *MEMORY[0x277CC91D8];
    v23 = v32;
    v24 = *(v32 + 104);
    v24(v5, v22, v2);
    sub_219F3F130();
    sub_21A0E47FC();
    v25 = *(v23 + 8);
    v25(v5, v2);
    v34 = 0x6E6F697463656C65;
    v35 = 0xE800000000000000;
    v24(v5, v22, v2);
    sub_21A0E47FC();
    v25(v5, v2);
    v34 = 0x676F6C626576696CLL;
    v35 = 0xE800000000000000;
    v24(v5, v22, v2);
    sub_21A0E47FC();
    v25(v5, v2);
    swift_unknownObjectRelease();
    (*(v33 + 8))(v13, v30);
    return v29;
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }
}

NewsLiveActivitiesCore::ActivityFont_optional __swiftcall ActivityFont.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFont.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x33656C746974;
    v7 = 0x6C64616568627573;
    if (v1 != 2)
    {
      v7 = 2036625250;
    }

    if (*v0)
    {
      v6 = 0x656E696C64616568;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x326E6F6974706163;
    v3 = 0x65746F6E746F6F66;
    if (v1 != 7)
    {
      v3 = 0x30326863746177;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x74756F6C6C6163;
    if (v1 != 4)
    {
      v4 = 0x6E6F6974706163;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21A08F664@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityFont.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsLiveActivitiesCore::ActivityFontLeading_optional __swiftcall ActivityFontLeading.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFontLeading.rawValue.getter()
{
  v1 = 0x65736F6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7468676974;
  }
}

uint64_t sub_21A08F824(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65736F6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7468676974;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x65736F6F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7468676974;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

void sub_21A08F924(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65736F6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7468676974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21A08FA2C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A08FAC8()
{
  sub_21A0E626C();
}

uint64_t sub_21A08FB50()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

NewsLiveActivitiesCore::ActivityFontWeight_optional __swiftcall ActivityFontWeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFontWeight.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6B63616C62;
    v7 = 0x7976616568;
    if (v1 != 2)
    {
      v7 = 0x746867696CLL;
    }

    if (*v0)
    {
      v6 = 1684828002;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x646C6F62696D6573;
    v3 = 1852401780;
    if (v1 != 7)
    {
      v3 = 0x67694C6172746C75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D756964656DLL;
    if (v1 != 4)
    {
      v4 = 0x72616C75676572;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_21A08FD48()
{
  result = qword_27CCDD4E0;
  if (!qword_27CCDD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4E0);
  }

  return result;
}

unint64_t sub_21A08FDA0()
{
  result = qword_27CCDD4E8;
  if (!qword_27CCDD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4E8);
  }

  return result;
}

uint64_t sub_21A08FE0C@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityFontWeight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21A08FEE8()
{
  result = qword_27CCDD4F0;
  if (!qword_27CCDD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4F0);
  }

  return result;
}

uint64_t sub_21A08FF54(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_21A0E6DAC();
  a3(v7, v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A08FFC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_21A0E6DAC();
  a4(v8, v6);
  return sub_21A0E6DFC();
}

uint64_t getEnumTagSinglePayload for SFSymbolConfiguration.Weight(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFSymbolConfiguration.Weight(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A090180()
{
  result = qword_27CCDD4F8;
  if (!qword_27CCDD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD4F8);
  }

  return result;
}

unint64_t sub_21A0901D4()
{
  result = qword_27CCDD500;
  if (!qword_27CCDD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD500);
  }

  return result;
}

unint64_t sub_21A090228()
{
  result = qword_27CCDD508;
  if (!qword_27CCDD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD508);
  }

  return result;
}

__n128 ActivityPhotoTheme.init(border:background:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_219F6409C(v11, &qword_27CCD9F78);
  v6 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v6;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  sub_219F6409C(v13, &qword_27CCD9F78);
  v8 = *(a2 + 48);
  *(a3 + 120) = *(a2 + 32);
  *(a3 + 136) = v8;
  *(a3 + 152) = *(a2 + 64);
  *(a3 + 168) = *(a2 + 80);
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 88) = *a2;
  *(a3 + 104) = v10;
  return result;
}

uint64_t ActivityPhotoTheme.border.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_21A080B1C(v9, v8);
}

__n128 ActivityPhotoTheme.border.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCD9F78);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t ActivityPhotoTheme.background.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_21A080B1C(v9, v8);
}

__n128 ActivityPhotoTheme.background.setter(uint64_t a1)
{
  v3 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v3;
  v8[4] = *(v1 + 152);
  v9 = *(v1 + 168);
  v4 = *(v1 + 104);
  v8[0] = *(v1 + 88);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCD9F78);
  v5 = *(a1 + 48);
  *(v1 + 120) = *(a1 + 32);
  *(v1 + 136) = v5;
  *(v1 + 152) = *(a1 + 64);
  *(v1 + 168) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  return result;
}

uint64_t sub_21A090578()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x726564726F62;
  }
}

uint64_t sub_21A0905B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564726F62 && a2 == 0xE600000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21A090694(uint64_t a1)
{
  v2 = sub_21A09111C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0906D0(uint64_t a1)
{
  v2 = sub_21A09111C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityPhotoTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD510);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - v7;
  v9 = v1[3];
  v32 = v1[2];
  v33 = v9;
  v34 = v1[4];
  v35 = *(v1 + 10);
  v10 = v1[1];
  v30 = *v1;
  v31 = v10;
  v11 = *(v1 + 136);
  v38 = *(v1 + 120);
  v39 = v11;
  v40 = *(v1 + 152);
  v41 = *(v1 + 21);
  v12 = *(v1 + 104);
  v36 = *(v1 + 88);
  v37 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A080B1C(&v30, &v24);
  sub_21A09111C();
  sub_21A0E6EAC();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8);
  sub_21A081F7C(&qword_27CCDA4E0);
  sub_21A0E6B6C();
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  sub_219F6409C(v22, &qword_27CCD9F78);
  if (!v2)
  {
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v16 = v36;
    v17 = v37;
    v42 = 1;
    sub_21A080B1C(&v36, v14);
    sub_21A0E6B6C();
    v14[2] = v18;
    v14[3] = v19;
    v14[4] = v20;
    v15 = v21;
    v14[0] = v16;
    v14[1] = v17;
    sub_219F6409C(v14, &qword_27CCD9F78);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityPhotoTheme.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v5 = v1[20];
  v4 = v1[21];
  if (!v3)
  {
    sub_21A0E6DCC();
    if (v5)
    {
      goto LABEL_3;
    }

    return sub_21A0E6DCC();
  }

  v6 = v1[10];
  sub_21A0E6DCC();
  ActivityFill.hash(into:)(a1);
  sub_219F91544(a1, v3);
  sub_219F6AB48(a1, v6);
  if (!v5)
  {
    return sub_21A0E6DCC();
  }

LABEL_3:
  sub_21A0E6DCC();
  ActivityFill.hash(into:)(a1);
  sub_219F91544(a1, v5);

  return sub_219F6AB48(a1, v4);
}

uint64_t ActivityPhotoTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityPhotoTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ActivityPhotoTheme.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v34 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21A09111C();
  sub_21A0E6E7C();
  if (v2)
  {
    v53 = v2;
    v111 = 0;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v95 = 0;
    v96 = v54;
    v97 = v55;
    v98 = v56;
    v99 = v111;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v104 = 0;
    v110 = 0;
  }

  else
  {
    v50 = a2;
    v51 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8);
    v84 = 0;
    sub_21A081F7C(&qword_27CCDA580);
    sub_21A0E6A8C();
    v12 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    v111 = v89;
    v48 = v91;
    v49 = v90;
    v46 = v93;
    v47 = v92;
    v45 = v94;
    memset(v82, 0, sizeof(v82));
    v83 = 0;
    sub_219F6409C(v82, &qword_27CCD9F78);
    v70 = 1;
    sub_21A0E6A8C();
    v53 = 0;
    (*(v51 + 8))(v9, v5);
    v13 = v71;
    v14 = v72;
    v51 = v72;
    v15 = v73;
    v43 = v71;
    v44 = v73;
    v16 = v76;
    v38 = v77;
    v39 = v74;
    v17 = v78;
    v41 = v78;
    v42 = v76;
    v37 = v79;
    v18 = v80;
    v40 = v80;
    v35 = v75;
    v36 = v81;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    sub_219F6409C(v57, &qword_27CCD9F78);
    v19 = v54;
    *&v59 = v12;
    *(&v59 + 1) = v54;
    v60 = v55;
    *&v61 = v56;
    *(&v61 + 1) = v111;
    *&v62 = v49;
    *(&v62 + 1) = v48;
    *&v63 = v47;
    *(&v63 + 1) = v46;
    *&v64 = v45;
    *(&v64 + 1) = v13;
    *&v65 = v14;
    *(&v65 + 1) = v15;
    v20 = v39;
    v21 = v35;
    *&v66 = v39;
    *(&v66 + 1) = v35;
    *&v67 = v16;
    v22 = v38;
    *(&v67 + 1) = v38;
    *&v68 = v17;
    v23 = v37;
    *(&v68 + 1) = v37;
    *&v69 = v18;
    v24 = v36;
    *(&v69 + 1) = v36;
    v25 = v64;
    v26 = v50;
    v50[4] = v63;
    v26[5] = v25;
    v27 = v59;
    v28 = v60;
    v29 = v62;
    v26[2] = v61;
    v26[3] = v29;
    *v26 = v27;
    v26[1] = v28;
    v30 = v65;
    v31 = v66;
    v32 = v69;
    v26[9] = v68;
    v26[10] = v32;
    v33 = v67;
    v26[7] = v31;
    v26[8] = v33;
    v26[6] = v30;
    sub_21A091170(&v59, &v95);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v95 = v12;
    v96 = v19;
    v97 = v55;
    v98 = v56;
    v99 = v111;
    v100 = v49;
    v101 = v48;
    v102 = v47;
    v103 = v46;
    v104 = v45;
    *&v105 = v43;
    *(&v105 + 1) = v51;
    *&v106 = v44;
    *(&v106 + 1) = v20;
    *&v107 = v21;
    *(&v107 + 1) = v42;
    *&v108 = v22;
    *(&v108 + 1) = v41;
    *&v109 = v23;
    *(&v109 + 1) = v40;
    v110 = v24;
  }

  return sub_21A02FCBC(&v95);
}

uint64_t sub_21A09109C()
{
  sub_21A0E6DAC();
  ActivityPhotoTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0910E0()
{
  sub_21A0E6DAC();
  ActivityPhotoTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

unint64_t sub_21A09111C()
{
  result = qword_27CCDD518;
  if (!qword_27CCDD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD518);
  }

  return result;
}

unint64_t sub_21A0911AC()
{
  result = qword_27CCDD528;
  if (!qword_27CCDD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD528);
  }

  return result;
}

unint64_t sub_21A091224()
{
  result = qword_27CCDD530;
  if (!qword_27CCDD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD530);
  }

  return result;
}

unint64_t sub_21A09127C()
{
  result = qword_27CCDD538;
  if (!qword_27CCDD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD538);
  }

  return result;
}

unint64_t sub_21A0912D4()
{
  result = qword_27CCDD540;
  if (!qword_27CCDD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD540);
  }

  return result;
}

uint64_t ActivityFill.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A0E554C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v47[13] = *(v2 + 61);
  v14 = v2[3];
  v46 = v2[2];
  *v47 = v14;
  v15 = v2[1];
  v44 = *v2;
  v45 = v15;
  v16 = *&v47[16] | (v47[20] << 32);
  v17 = (v47[20] >> 4) & 3;
  if (v17)
  {
    if (v17 == 1)
    {
      v47[20] = (v16 & 0xCFFFFFFFFFLL) >> 32;
      v18 = v2[1];
      *v40 = *v2;
      *&v40[16] = v18;
      *&v40[32] = v2[2];
      *&v40[41] = *(v2 + 41);
      (*(v6 + 16))(v9, a1, v5);
      sub_21A018DC8(&v44, &v41);
      sub_21A03DE04(v40, v9, &v41);
      if (v41)
      {
        *&v40[8] = v42;
        *&v40[24] = v43;
        *v40 = v41;
      }

      else
      {
        *v40 = sub_21A0E5BEC();
      }
    }

    else
    {
      v27 = *(v44 + 16);
      if ((~(*(v44 + 92) << 32) & 0x3E00000000) != 0)
      {
        v29 = *(v44 + 88) | (*(v44 + 92) << 32);
        if (*(v44 + 16) <= 1u)
        {
          if (!*(v44 + 16))
          {
            v33 = *(v44 + 40);
            *v40 = *(v44 + 24);
            *&v40[16] = v33;
            v34 = *(v44 + 72);
            *&v40[32] = *(v44 + 56);
            *&v40[48] = v34;
            *&v40[64] = v29;
            v40[68] = BYTE4(v29);
            ActivityFill.resolve(in:)(&v41, a1);
            goto LABEL_26;
          }

          v38 = *(v44 + 40);
          *v40 = *(v44 + 24);
          *&v40[16] = v38;
          v39 = *(v44 + 72);
          *&v40[32] = *(v44 + 56);
          *&v40[48] = v39;
          *&v40[64] = v29;
          v40[68] = BYTE4(v29);
          ActivityFill.resolve(in:)(&v41, a1);
          v32 = 1;
        }

        else if (v27 == 2)
        {
          v35 = *(v44 + 40);
          *v40 = *(v44 + 24);
          *&v40[16] = v35;
          v36 = *(v44 + 72);
          *&v40[32] = *(v44 + 56);
          *&v40[48] = v36;
          *&v40[64] = v29;
          v40[68] = BYTE4(v29);
          ActivityFill.resolve(in:)(&v41, a1);
          v32 = 2;
        }

        else
        {
          v30 = *(v44 + 40);
          *v40 = *(v44 + 24);
          *&v40[16] = v30;
          v31 = *(v44 + 72);
          *&v40[32] = *(v44 + 56);
          *&v40[48] = v31;
          *&v40[64] = v29;
          v40[68] = BYTE4(v29);
          if (v27 == 3)
          {
            ActivityFill.resolve(in:)(&v41, a1);
            v32 = 3;
          }

          else
          {
            ActivityFill.resolve(in:)(&v41, a1);
            v32 = 4;
          }
        }

        *&v42 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD548);
        sub_21A091938();
        goto LABEL_26;
      }

      if (*(v44 + 16) <= 1u)
      {
        if (*(v44 + 16))
        {
          v28 = sub_21A0E570C();
        }

        else
        {
          v28 = sub_21A0E56DC();
        }
      }

      else if (v27 == 2)
      {
        v28 = sub_21A0E56FC();
      }

      else if (v27 == 3)
      {
        v28 = sub_21A0E56CC();
      }

      else
      {
        v28 = sub_21A0E56EC();
      }

      *v40 = v28;
    }
  }

  else
  {
    v47[20] = (v16 & 0xCFFFFFFFFFLL) >> 32;
    *&v40[32] = v46;
    *&v40[48] = *v47;
    *&v40[61] = *&v47[13];
    *&v40[16] = v45;
    *v40 = v44;
    sub_21A0E541C();
    sub_21A0E54BC();
    sub_219F89010(v13);
    sub_219F894D4(v13);
    sub_21A0E5C6C();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    *v40 = v20;
    *&v40[4] = v22;
    *&v40[8] = v24;
    *&v40[12] = v26;
  }

LABEL_26:
  result = sub_21A0E52BC();
  *a2 = result;
  return result;
}

uint64_t ActivityFill.Hierarchical.resolve(in:)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      result = sub_21A0E570C();
    }

    else
    {
      result = sub_21A0E56DC();
    }
  }

  else if (v3 == 2)
  {
    result = sub_21A0E56FC();
  }

  else if (v3 == 3)
  {
    result = sub_21A0E56CC();
  }

  else
  {
    result = sub_21A0E56EC();
  }

  *a1 = result;
  return result;
}

unint64_t sub_21A091938()
{
  result = qword_27CCDD550;
  if (!qword_27CCDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD550);
  }

  return result;
}

uint64_t sub_21A0919D8@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      result = sub_21A0E570C();
    }

    else
    {
      result = sub_21A0E56DC();
    }
  }

  else if (v3 == 2)
  {
    result = sub_21A0E56FC();
  }

  else if (v3 == 3)
  {
    result = sub_21A0E56CC();
  }

  else
  {
    result = sub_21A0E56EC();
  }

  *a1 = result;
  return result;
}

unint64_t NewsLiveActivityContentState.Payload.name.getter()
{
  v1 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0953E0(v0, v4, type metadata accessor for NewsLiveActivityContentState.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1953719668;
  v7 = 0x457972616D697270;
  if (EnumCaseMultiPayload != 2)
  {
    v7 = 0x676F6C426576696CLL;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0xD000000000000010;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  sub_21A09532C(v4, type metadata accessor for NewsLiveActivityContentState.Payload);
  return v8;
}

uint64_t sub_21A091B80@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NewsLiveActivityContentState(0);
  sub_21A0953E0(v1 + *(v15 + 20), v14, type metadata accessor for NewsLiveActivityContentState.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21A0952C4(v14, v6, type metadata accessor for PrimaryElectionContentState);
      v19 = *(v3 + 20);
      sub_219F45500(&v6[v19], a1, &qword_27CCD97F0);
      v20 = type metadata accessor for PrimaryElectionData;
      v21 = &v6[v19];
    }

    else
    {
      v22 = sub_21A0E495C();
      (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
      v20 = type metadata accessor for NewsLiveActivityContentState.Payload;
      v21 = v14;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21A09532C(v14, type metadata accessor for NewsLiveActivityContentState.Payload);
      v17 = sub_21A0E495C();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    sub_21A0952C4(v14, v10, type metadata accessor for NationalElectionContentState);
    sub_219FB9870(a1);
    v20 = type metadata accessor for NationalElectionContentState;
    v21 = v10;
  }

  return sub_21A09532C(v21, v20);
}

uint64_t static NewsLiveActivityContentState.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NewsLiveActivityContentState(0) + 20);

  return _s22NewsLiveActivitiesCore0aB20ActivityContentStateV7PayloadO2eeoiySbAE_AEtFZ_0(a1 + v5, a2 + v5);
}

uint64_t NewsLiveActivityContentState.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t NewsLiveActivityContentState.identifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t NewsLiveActivityContentState.payload.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NewsLiveActivityContentState(0) + 20);

  return sub_21A095260(a1, v3);
}

uint64_t NewsLiveActivityContentState.init(identifier:payload:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  v6 = type metadata accessor for NewsLiveActivityContentState(0);
  return sub_21A0952C4(a2, a3 + *(v6 + 20), type metadata accessor for NewsLiveActivityContentState.Payload);
}

uint64_t NewsLiveActivityContentState.init(identifier:source:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1[1];
  *a4 = *a1;
  a4[1] = v6;
  v7 = (a4 + *(type metadata accessor for NewsLiveActivityContentState(0) + 20));
  *v7 = a2;
  v7[1] = a3;
  type metadata accessor for NewsLiveActivityContentState.Payload(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NewsLiveActivityContentState.Payload.hash(into:)(uint64_t a1, uint64_t a2)
{
  v48 = MEMORY[0x28223BE20](a1, a2);
  v3 = type metadata accessor for ActivityHeaderData();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v45 - v9;
  v47 = type metadata accessor for LiveBlogContentState();
  MEMORY[0x28223BE20](v47, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0953E0(v2, v25, type metadata accessor for NewsLiveActivityContentState.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21A0952C4(v25, v17, type metadata accessor for PrimaryElectionContentState);
      v29 = v48;
      MEMORY[0x21CED2490](2);
      PrimaryElectionContentState.hash(into:)(v29);
      v30 = type metadata accessor for PrimaryElectionContentState;
      v31 = v17;
    }

    else
    {
      sub_21A0952C4(v25, v13, type metadata accessor for LiveBlogContentState);
      v33 = v48;
      MEMORY[0x21CED2490](3);
      sub_219F45500(v13, v10, &qword_27CCD9608);
      if ((*(v46 + 48))(v10, 1, v3) == 1)
      {
        sub_21A0E6DCC();
      }

      else
      {
        sub_21A0952C4(v10, v6, type metadata accessor for ActivityHeaderData);
        sub_21A0E6DCC();
        ActivityHeaderData.hash(into:)(v33);
        sub_21A09532C(v6, type metadata accessor for ActivityHeaderData);
      }

      v34 = v47;
      v35 = &v13[*(v47 + 20)];
      v36 = *(v35 + 3);
      v53[2] = *(v35 + 2);
      v53[3] = v36;
      v53[4] = *(v35 + 4);
      v37 = *v35;
      v53[1] = *(v35 + 1);
      v53[0] = v37;
      LiveBlogBodyData.hash(into:)();
      v38 = &v13[v34[6]];
      v39 = v38[1];
      if (v39)
      {
        v40 = *v38;
        v41 = v38[3];
        sub_21A0E6DCC();

        sub_21A0E626C();
        sub_21A0E6DCC();
        if (v41)
        {
          sub_21A0E626C();
        }

        sub_219F87F74(v40, v39);
      }

      else
      {
        sub_21A0E6DCC();
      }

      v42 = v34[7];
      memcpy(v52, &v13[v42], sizeof(v52));
      memcpy(v53, &v13[v42], 0x9E9uLL);
      if (sub_219F88A28(v53) == 1)
      {
        sub_21A0E6DCC();
      }

      else
      {
        memcpy(v49, v52, sizeof(v49));
        sub_21A0E6DCC();
        memcpy(v50, v52, 0x9E9uLL);
        sub_21A080104(v50, v51);
        LiveBlogTheme.hash(into:)(v33, v43);
        memcpy(v51, v49, 0x9E9uLL);
        sub_21A080160(v51);
      }

      v44 = *&v13[v34[8]];
      sub_21A0E6DCC();
      if (v44)
      {
        sub_219F7D3D0(v33, v44);
      }

      v30 = type metadata accessor for LiveBlogContentState;
      v31 = v13;
    }

    return sub_21A09532C(v31, v30);
  }

  if (EnumCaseMultiPayload)
  {
    sub_21A0952C4(v25, v21, type metadata accessor for NationalElectionContentState);
    v32 = v48;
    MEMORY[0x21CED2490](1);
    NationalElectionContentState.hash(into:)(v32);
    v30 = type metadata accessor for NationalElectionContentState;
    v31 = v21;
    return sub_21A09532C(v31, v30);
  }

  v27 = *(v25 + 1);
  MEMORY[0x21CED2490](0);
  if (!v27)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t NewsLiveActivityContentState.Payload.hashValue.getter()
{
  sub_21A0E6DAC();
  NewsLiveActivityContentState.Payload.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A092744()
{
  sub_21A0E6DAC();
  NewsLiveActivityContentState.Payload.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A092788()
{
  sub_21A0E6DAC();
  NewsLiveActivityContentState.Payload.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0927C8()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21A092808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21A0928EC(uint64_t a1)
{
  v2 = sub_21A09538C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A092928(uint64_t a1)
{
  v2 = sub_21A09538C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsLiveActivityContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD558);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A09538C();
  sub_21A0E6EAC();
  v10 = v3[1];
  v13 = *v3;
  v14 = v10;
  v12[15] = 0;
  sub_21A02C7FC();

  sub_21A0E6BBC();

  if (!v2)
  {
    type metadata accessor for NewsLiveActivityContentState(0);
    LOBYTE(v13) = 1;
    type metadata accessor for NewsLiveActivityContentState.Payload(0);
    sub_219F42EEC(&qword_27CCDD568, type metadata accessor for NewsLiveActivityContentState.Payload);
    sub_21A0E6BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NewsLiveActivityContentState.hash(into:)(uint64_t a1)
{
  sub_21A0E626C();
  type metadata accessor for NewsLiveActivityContentState(0);
  return NewsLiveActivityContentState.Payload.hash(into:)(a1, v2);
}

uint64_t NewsLiveActivityContentState.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  type metadata accessor for NewsLiveActivityContentState(0);
  NewsLiveActivityContentState.Payload.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t NewsLiveActivityContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD570);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for NewsLiveActivityContentState(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A09538C();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v14 = v22;
  v15 = v13;
  v27 = 0;
  sub_21A02C850();
  v16 = v24;
  sub_21A0E6ADC();
  v17 = v26;
  *v15 = v25;
  v15[1] = v17;
  LOBYTE(v25) = 1;
  sub_219F42EEC(&qword_27CCDD578, type metadata accessor for NewsLiveActivityContentState.Payload);
  sub_21A0E6ADC();
  (*(v14 + 8))(v9, v16);
  sub_21A0952C4(v6, v15 + *(v10 + 20), type metadata accessor for NewsLiveActivityContentState.Payload);
  sub_21A0953E0(v15, v21, type metadata accessor for NewsLiveActivityContentState);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_21A09532C(v15, type metadata accessor for NewsLiveActivityContentState);
}

uint64_t sub_21A092F38()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  NewsLiveActivityContentState.Payload.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A092FD4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  NewsLiveActivityContentState.Payload.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A093028(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return static NewsLiveActivityContentState.Payload.== infix(_:_:)(a1 + v7, a2 + v7);
}

uint64_t sub_21A0930AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000018;
  }

  if (v2)
  {
    v4 = "lar";
  }

  else
  {
    v4 = "multipleOpposingEntities";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (*a2)
  {
    v7 = "multipleOpposingEntities";
  }

  else
  {
    v7 = "lar";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();
  }

  return v9 & 1;
}

uint64_t sub_21A093158()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0931D8()
{
  sub_21A0E626C();
}

uint64_t sub_21A093244()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0932C0@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21A093320(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "multipleOpposingEntities";
  }

  else
  {
    v3 = "lar";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_21A093360()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_21A09339C@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21A093400(uint64_t a1)
{
  v2 = sub_219FB7310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A09343C(uint64_t a1)
{
  v2 = sub_219FB7310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A093478(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F697463656C65;
  if (v2 != 1)
  {
    v3 = 0x676F6C426576696CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1953719668;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x6E6F697463656C65;
  if (*a2 != 1)
  {
    v6 = 0x676F6C426576696CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1953719668;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();
  }

  return v9 & 1;
}

uint64_t sub_21A093574()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A093610()
{
  sub_21A0E626C();
}

uint64_t sub_21A093698()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A093730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A095B2C();
  *a1 = result;
  return result;
}

void sub_21A093760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x6E6F697463656C65;
  if (v2 != 1)
  {
    v4 = 0x676F6C426576696CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1953719668;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_21A0937B8()
{
  v1 = 0x6E6F697463656C65;
  if (*v0 != 1)
  {
    v1 = 0x676F6C426576696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953719668;
  }
}

uint64_t sub_21A09380C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A095B2C();
  *a1 = result;
  return result;
}

uint64_t sub_21A093834(uint64_t a1)
{
  v2 = sub_21A095448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A093870(uint64_t a1)
{
  v2 = sub_21A095448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A0938AC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A093908()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A093950@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21A0939C8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21A093A20(uint64_t a1)
{
  v2 = sub_21A09549C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A093A5C(uint64_t a1)
{
  v2 = sub_21A09549C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A093AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A093B30(uint64_t a1)
{
  v2 = sub_21A0954F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A093B6C(uint64_t a1)
{
  v2 = sub_21A0954F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsLiveActivityContentState.Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABA8);
  v69 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v3);
  v73 = &v65 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD580);
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v5);
  v74 = &v65 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD588);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v7);
  v76 = &v65 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD590);
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v9);
  v11 = &v65 - v10;
  v75 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  v13 = MEMORY[0x28223BE20](v75, v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v65 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v65 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = (&v65 - v26);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v65 - v29;
  v31 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_21A095448();
  v32 = v82;
  sub_21A0E6E7C();
  if (!v32)
  {
    v68 = v27;
    v33 = v15;
    v34 = v76;
    v66 = v19;
    v67 = v23;
    v36 = v78;
    v35 = v79;
    v37 = v81;
    v82 = v30;
    v38 = v77;
    v39 = sub_21A0E6AFC();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_219F825A0();
    if (v41 == 3 || v90 != v91 >> 1)
    {
      v42 = sub_21A0E68BC();
      swift_allocError();
      v44 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
      *v44 = v75;
      sub_21A0E6A2C();
      sub_21A0E68AC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v80 + 8))(v11, v38);
    }

    else
    {
      if (!v41)
      {
        LOBYTE(v84) = 0;
        sub_21A0954F0();
        sub_21A0E6A1C();
        v46 = v70;
        v47 = sub_21A0E6A5C();
        v48 = v80;
        v57 = v56;
        (*(v71 + 8))(v34, v46);
        (*(v48 + 8))(v11, v38);
        swift_unknownObjectRelease();
        v58 = v68;
        *v68 = v47;
        v58[1] = v57;
        swift_storeEnumTagMultiPayload();
        v59 = v58;
        v60 = v82;
        sub_21A0952C4(v59, v82, type metadata accessor for NewsLiveActivityContentState.Payload);
LABEL_16:
        sub_21A0952C4(v60, v35, type metadata accessor for NewsLiveActivityContentState.Payload);
        return __swift_destroy_boxed_opaque_existential_1(v83);
      }

      if (v41 != 1)
      {
        type metadata accessor for LiveBlogContentState();
        LOBYTE(v84) = 2;
        sub_219F42EEC(&qword_27CCDD5A0, type metadata accessor for LiveBlogContentState);
        sub_21A0E6ADC();
        (*(v80 + 8))(v11, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v49 = v33;
LABEL_12:
        v60 = v82;
        sub_21A0952C4(v49, v82, type metadata accessor for NewsLiveActivityContentState.Payload);
        goto LABEL_16;
      }

      LOBYTE(v84) = 1;
      sub_21A09549C();
      sub_21A0E6A1C();
      sub_219FB7310();
      sub_21A0E6A1C();
      v50 = v36;
      v51 = sub_21A0E6AFC();
      v52 = (2 * *(v51 + 16)) | 1;
      v84 = v51;
      v85 = v51 + 32;
      v86 = 0;
      v87 = v52;
      if (sub_219F82598() != 2 && v86 == v87 >> 1)
      {
        v53 = v69;
        type metadata accessor for PrimaryElectionContentState();
        v92 = 1;
        sub_219F42EEC(&qword_27CCDD5B0, type metadata accessor for PrimaryElectionContentState);
        v54 = v66;
        sub_21A0E6ADC();
        v55 = v72;
        (*(v53 + 8))(v73, v50);
        (*(v55 + 8))(v74, v81);
        (*(v80 + 8))(v11, v38);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v49 = v54;
        goto LABEL_12;
      }

      v61 = v37;
      v62 = sub_21A0E68BC();
      swift_allocError();
      v64 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
      *v64 = v75;
      sub_21A0E6A2C();
      sub_21A0E68AC();
      (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
      swift_willThrow();
      (*(v69 + 8))(v73, v36);
      (*(v72 + 8))(v74, v61);
      (*(v80 + 8))(v11, v38);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t NewsLiveActivityContentState.Payload.encode(to:)(void *a1)
{
  v33 = type metadata accessor for LiveBlogContentState();
  MEMORY[0x28223BE20](v33, v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v31, v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v29, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD5C8);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD5D0);
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A095448();
  sub_21A0E6EAC();
  sub_21A0953E0(v34, v16, type metadata accessor for NewsLiveActivityContentState.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = v30;
      sub_21A0952C4(v16, v30, type metadata accessor for PrimaryElectionContentState);
      v39 = 1;
      sub_219F42EEC(&qword_27CCDD5E0, type metadata accessor for PrimaryElectionContentState);
      v25 = v36;
      sub_21A0E6BBC();
      v26 = type metadata accessor for PrimaryElectionContentState;
    }

    else
    {
      v24 = v32;
      sub_21A0952C4(v16, v32, type metadata accessor for LiveBlogContentState);
      v40 = 2;
      sub_219F42EEC(&qword_27CCDD5D8, type metadata accessor for LiveBlogContentState);
      v25 = v36;
      sub_21A0E6BBC();
      v26 = type metadata accessor for LiveBlogContentState;
    }

    sub_21A09532C(v24, v26);
    return (*(v35 + 8))(v20, v25);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21A0952C4(v16, v8, type metadata accessor for NationalElectionContentState);
    v38 = 1;
    sub_219F42EEC(&qword_27CCDD5E8, type metadata accessor for NationalElectionContentState);
    v27 = v36;
    sub_21A0E6BBC();
    sub_21A09532C(v8, type metadata accessor for NationalElectionContentState);
    return (*(v35 + 8))(v20, v27);
  }

  else
  {
    v37 = 0;
    sub_21A0954F0();
    v22 = v36;
    sub_21A0E6B2C();
    sub_21A0E6B3C();

    (*(v28 + 8))(v12, v9);
    return (*(v35 + 8))(v20, v22);
  }
}

uint64_t _s22NewsLiveActivitiesCore0aB20ActivityContentStateV7PayloadO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = type metadata accessor for LiveBlogContentState();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v51 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v50 - v20);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = (&v50 - v24);
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v50 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD670);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v33 = &v50 - v32;
  v34 = (&v50 + *(v31 + 56) - v32);
  sub_21A0953E0(a1, &v50 - v32, type metadata accessor for NewsLiveActivityContentState.Payload);
  sub_21A0953E0(v53, v34, type metadata accessor for NewsLiveActivityContentState.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21A0953E0(v33, v21, type metadata accessor for NewsLiveActivityContentState.Payload);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v44 = type metadata accessor for PrimaryElectionContentState;
        v45 = v21;
LABEL_17:
        sub_21A09532C(v45, v44);
        goto LABEL_18;
      }

      v38 = v51;
      sub_21A0952C4(v34, v51, type metadata accessor for PrimaryElectionContentState);
      v39 = _s22NewsLiveActivitiesCore27PrimaryElectionContentStateV2eeoiySbAC_ACtFZ_0(v21, v38);
      v40 = type metadata accessor for PrimaryElectionContentState;
      sub_21A09532C(v38, type metadata accessor for PrimaryElectionContentState);
      v41 = v21;
    }

    else
    {
      sub_21A0953E0(v33, v17, type metadata accessor for NewsLiveActivityContentState.Payload);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v44 = type metadata accessor for LiveBlogContentState;
        v45 = v17;
        goto LABEL_17;
      }

      v43 = v52;
      sub_21A0952C4(v34, v52, type metadata accessor for LiveBlogContentState);
      v39 = static LiveBlogContentState.== infix(_:_:)(v17, v43);
      v40 = type metadata accessor for LiveBlogContentState;
      sub_21A09532C(v43, type metadata accessor for LiveBlogContentState);
      v41 = v17;
    }

    v42 = v40;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21A0953E0(v33, v28, type metadata accessor for NewsLiveActivityContentState.Payload);
    v37 = *v28;
    v36 = v28[1];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_18:
      sub_21A095B78(v33);
LABEL_19:
      v39 = 0;
      return v39 & 1;
    }

    v47 = v34[1];
    if (v36)
    {
      if (v47)
      {
        if (v37 != *v34 || v36 != v47)
        {
          v49 = sub_21A0E6C5C();

          if (v49)
          {
            goto LABEL_33;
          }

LABEL_31:
          sub_21A09532C(v33, type metadata accessor for NewsLiveActivityContentState.Payload);
          goto LABEL_19;
        }

LABEL_33:
        sub_21A09532C(v33, type metadata accessor for NewsLiveActivityContentState.Payload);
        v39 = 1;
        return v39 & 1;
      }
    }

    else if (!v47)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_21A0953E0(v33, v25, type metadata accessor for NewsLiveActivityContentState.Payload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v44 = type metadata accessor for NationalElectionContentState;
    v45 = v25;
    goto LABEL_17;
  }

  sub_21A0952C4(v34, v12, type metadata accessor for NationalElectionContentState);
  v39 = _s22NewsLiveActivitiesCore28NationalElectionContentStateV2eeoiySbAC_ACtFZ_0(v25, v12);
  sub_21A09532C(v12, type metadata accessor for NationalElectionContentState);
  v41 = v25;
  v42 = type metadata accessor for NationalElectionContentState;
LABEL_13:
  sub_21A09532C(v41, v42);
  sub_21A09532C(v33, type metadata accessor for NewsLiveActivityContentState.Payload);
  return v39 & 1;
}

uint64_t sub_21A095260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivityContentState.Payload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0952C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A09532C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A09538C()
{
  result = qword_27CCDD560;
  if (!qword_27CCDD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD560);
  }

  return result;
}

uint64_t sub_21A0953E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A095448()
{
  result = qword_27CCDD598;
  if (!qword_27CCDD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD598);
  }

  return result;
}

unint64_t sub_21A09549C()
{
  result = qword_27CCDD5A8;
  if (!qword_27CCDD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD5A8);
  }

  return result;
}

unint64_t sub_21A0954F0()
{
  result = qword_27CCDD5C0;
  if (!qword_27CCDD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD5C0);
  }

  return result;
}

unint64_t sub_21A095608()
{
  result = qword_27CCDD5F8;
  if (!qword_27CCDD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD5F8);
  }

  return result;
}

unint64_t sub_21A095660()
{
  result = qword_27CCDD600;
  if (!qword_27CCDD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD600);
  }

  return result;
}

unint64_t sub_21A0956B8()
{
  result = qword_27CCDD608;
  if (!qword_27CCDD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD608);
  }

  return result;
}

unint64_t sub_21A095710()
{
  result = qword_27CCDD610;
  if (!qword_27CCDD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD610);
  }

  return result;
}

unint64_t sub_21A095768()
{
  result = qword_27CCDD618;
  if (!qword_27CCDD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD618);
  }

  return result;
}

unint64_t sub_21A0957C0()
{
  result = qword_27CCDD620;
  if (!qword_27CCDD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD620);
  }

  return result;
}

unint64_t sub_21A095818()
{
  result = qword_27CCDD628;
  if (!qword_27CCDD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD628);
  }

  return result;
}

unint64_t sub_21A095870()
{
  result = qword_27CCDD630;
  if (!qword_27CCDD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD630);
  }

  return result;
}

unint64_t sub_21A0958C8()
{
  result = qword_27CCDD638;
  if (!qword_27CCDD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD638);
  }

  return result;
}

unint64_t sub_21A095920()
{
  result = qword_27CCDD640;
  if (!qword_27CCDD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD640);
  }

  return result;
}

unint64_t sub_21A095978()
{
  result = qword_27CCDD648;
  if (!qword_27CCDD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD648);
  }

  return result;
}

unint64_t sub_21A0959D0()
{
  result = qword_27CCDD650;
  if (!qword_27CCDD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD650);
  }

  return result;
}

unint64_t sub_21A095A28()
{
  result = qword_27CCDD658;
  if (!qword_27CCDD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD658);
  }

  return result;
}

unint64_t sub_21A095A80()
{
  result = qword_27CCDD660;
  if (!qword_27CCDD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD660);
  }

  return result;
}

unint64_t sub_21A095AD8()
{
  result = qword_27CCDD668;
  if (!qword_27CCDD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD668);
  }

  return result;
}

uint64_t sub_21A095B2C()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21A095B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A095C18(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata, a2);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_21A0E5E7C();
}

double sub_21A095DE8@<D0>(_OWORD *a1@<X8>)
{
  sub_21A004A50();
  sub_21A0E555C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21A095E38()
{
  sub_21A004A50();

  return sub_21A0E556C();
}

uint64_t sub_21A095E98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a5;
  v101 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v101, v9);
  v102 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21A0E5FFC();
  v113 = *(v114 - 8);
  v12 = MEMORY[0x28223BE20](v114, v11);
  v112 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v104 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v103 = &v100 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v105 = &v100 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v100 - v25;
  v109 = sub_21A0E5FCC();
  v106 = *(v109 - 8);
  v28 = MEMORY[0x28223BE20](v109, v27);
  v111 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v110 = &v100 - v31;
  v32 = a1[1];
  v119 = *a1;
  v123 = v32;
  v118 = *(v14 + 16);
  v122 = a2;
  v118(v26, a2, a3);
  v33 = *(v14 + 80);
  v117 = (v33 + 32) & ~v33;
  v34 = (v15 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  v120 = a4;
  v115 = v14;
  v121 = *(v14 + 32);
  v36 = v35;
  v108 = v35;
  v37 = v26;
  v38 = a3;
  v121(v35 + ((v33 + 32) & ~v33), v37, a3);
  v39 = (v36 + v34);
  v40 = v119;
  v41 = v123;
  *v39 = v119;
  v39[1] = v41;
  v42 = v105;
  v43 = a3;
  v44 = v118;
  v118(v105, a2, v43);
  v45 = swift_allocObject();
  v107 = v45;
  v46 = v38;
  *(v45 + 16) = v38;
  *(v45 + 24) = a4;
  v47 = v117;
  v48 = v42;
  v49 = v46;
  (v121)(v45 + v117, v48);
  v50 = (v45 + v34);
  v51 = v123;
  *v50 = v40;
  v50[1] = v51;
  v52 = v103;
  v53 = v122;
  v44(v103, v122, v49);
  v54 = swift_allocObject();
  v105 = v54;
  v55 = v120;
  *(v54 + 16) = v49;
  *(v54 + 24) = v55;
  v56 = v54 + v47;
  v57 = v121;
  v121(v56, v52, v49);
  v58 = (v54 + v34);
  v59 = v119;
  v60 = v123;
  *v58 = v119;
  v58[1] = v60;
  v61 = v104;
  v118(v104, v53, v49);
  v62 = swift_allocObject();
  v118 = v62;
  v63 = v120;
  *(v62 + 16) = v49;
  *(v62 + 24) = v63;
  v64 = v49;
  v57(v62 + v117, v61, v49);
  v65 = (v62 + v34);
  *v65 = v59;
  v65[1] = v60;
  v66 = v63;
  swift_getAssociatedTypeWitness();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v67 = sub_21A0E53AC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = sub_21A099724();
  v146 = AssociatedConformanceWitness;
  v147 = v69;
  v70 = v69;
  v71 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  *&v131[0] = v67;
  *(&v131[0] + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v131[0] = v67;
  *(&v131[0] + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v131[0] = OpaqueTypeMetadata2;
  *(&v131[0] + 1) = OpaqueTypeConformance2;
  v119 = swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  v75 = sub_21A0E53AC();
  v144 = swift_getAssociatedConformanceWitness();
  v145 = v70;
  v121 = v70;
  v123 = v71;
  v76 = swift_getWitnessTable();
  *&v131[0] = v75;
  *(&v131[0] + 1) = v76;
  v77 = swift_getOpaqueTypeMetadata2();
  *&v131[0] = v75;
  *(&v131[0] + 1) = v76;
  v78 = swift_getOpaqueTypeConformance2();
  *&v131[0] = v77;
  *(&v131[0] + 1) = v78;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v119 = sub_21A0E5E6C();
  swift_getAssociatedTypeWitness();
  v79 = sub_21A0E53AC();
  v142 = swift_getAssociatedConformanceWitness();
  v143 = v70;
  v80 = swift_getWitnessTable();
  *&v131[0] = v79;
  *(&v131[0] + 1) = v80;
  v81 = swift_getOpaqueTypeMetadata2();
  *&v131[0] = v79;
  *(&v131[0] + 1) = v80;
  v82 = swift_getOpaqueTypeConformance2();
  *&v131[0] = v81;
  *(&v131[0] + 1) = v82;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v119 = sub_21A0E5E6C();
  swift_getAssociatedTypeWitness();
  v104 = sub_21A0E53AC();
  swift_getAssociatedTypeWitness();
  v103 = sub_21A0E53AC();
  swift_getAssociatedTypeWitness();
  sub_21A0E53AC();
  v117 = swift_getWitnessTable();
  v83 = swift_getAssociatedConformanceWitness();
  v84 = v121;
  v140 = v83;
  v141 = v121;
  swift_getWitnessTable();
  v138 = swift_getAssociatedConformanceWitness();
  v139 = v84;
  swift_getWitnessTable();
  v85 = v109;
  v136 = swift_getAssociatedConformanceWitness();
  v137 = v84;
  swift_getWitnessTable();
  v86 = v110;
  v87 = v122;
  v88 = v111;
  sub_21A0E5FAC();
  v89 = sub_21A0E576C();
  v90 = v112;
  sub_21A0E5FEC();
  MEMORY[0x21CED1670](v89, v90, 26.0);
  (*(v113 + 8))(v90, v114);
  v91 = *(v106 + 8);
  v91(v88, v85);
  (*(v66 + 152))(v131, v64, v66);
  v92 = v134 | (v135 << 32);
  if ((~v132 & 0xFFFFFFFE) != 0 || (v92 & 0xFE00000000) != 0x200000000)
  {
    v124 = v131[0];
    v125 = v131[1];
    v126 = v131[2];
    v127 = v132;
    v128 = v133;
    v129 = v134;
    v130 = BYTE4(v92);
    v93 = *MEMORY[0x277CDF3C0];
    v94 = sub_21A0E524C();
    v95 = v102;
    (*(*(v94 - 8) + 104))(v102, v93, v94);
    v96 = *(v101 + 20);
    v97 = *MEMORY[0x277CE0210];
    v98 = sub_21A0E565C();
    (*(*(v98 - 8) + 104))(v95 + v96, v97, v98);
    sub_219F89010(v95);
    sub_21A099E8C(v95, type metadata accessor for ActivityColorEnvironment);
  }

  sub_21A0E5F8C();

  (*(v115 + 8))(v87, v64);
  return (v91)(v86, v85);
}

uint64_t sub_21A096B80@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD678);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v103 = &v94 - v4;
  v5 = type metadata accessor for LiveBlogContentState();
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v98 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v104 = &v94 - v10;
  v11 = type metadata accessor for LiveBlogStaticAttributes();
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v97 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v102 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD680);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v100 = &v94 - v19;
  v20 = type metadata accessor for PrimaryElectionContentState();
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v96 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v101 = &v94 - v25;
  v26 = type metadata accessor for PrimaryElectionStaticAttributes();
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v99 = &v94 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD688);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v94 = &v94 - v35;
  v36 = type metadata accessor for NationalElectionContentState(0);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  v40 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v41);
  v95 = &v94 - v42;
  v43 = type metadata accessor for NationalElectionStaticAttributes();
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v47 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v94 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97D0);
  v52 = v51 - 8;
  MEMORY[0x28223BE20](v51, v53);
  v55 = &v94 - v54;
  v56 = *(type metadata accessor for NewsLiveActivityAttributes(0) + 28);
  v57 = v1 + *(type metadata accessor for NewsDynamicIsland() + 20);
  v58 = *(type metadata accessor for NewsLiveActivityContentState(0) + 20);
  v59 = *(v52 + 56);
  sub_21A099D74(v1 + v56, v55, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  sub_21A099D74(&v57[v58], &v55[v59], type metadata accessor for NewsLiveActivityContentState.Payload);
  type metadata accessor for NewsLiveActivityContentState.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v81 = v105;
        v105[3] = &type metadata for ErrorFallbackDynamicIsland;
        *(v81 + 32) = sub_21A099D20();
        v72 = type metadata accessor for PrimaryElectionContentState;
        goto LABEL_16;
      }

      v64 = v99;
      sub_21A099E24(v55, v99, type metadata accessor for PrimaryElectionStaticAttributes);
      v65 = v101;
      sub_21A099E24(&v55[v59], v101, type metadata accessor for PrimaryElectionContentState);
      sub_21A099D74(v64, v30, type metadata accessor for PrimaryElectionStaticAttributes);
      v66 = v96;
      sub_21A099D74(v65, v96, type metadata accessor for PrimaryElectionContentState);
      v67 = v100;
      sub_219F641B8(v30, v66, v100);
      v68 = type metadata accessor for PrimaryElectionDynamicIsland();
      if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
      {
        sub_219F6409C(v67, &qword_27CCDD680);
        v106 = 0u;
        v107 = 0u;
        v108 = 0;
        v69 = v105;
        v105[3] = &type metadata for ErrorFallbackDynamicIsland;
        *(v69 + 32) = sub_21A099D20();
        sub_21A099E8C(v65, type metadata accessor for PrimaryElectionContentState);
        v70 = type metadata accessor for PrimaryElectionStaticAttributes;
LABEL_13:
        v79 = v70;
        v80 = v64;
        goto LABEL_20;
      }

      *(&v107 + 1) = v68;
      v108 = sub_21A099DDC(&qword_27CCDD6A8, type metadata accessor for PrimaryElectionDynamicIsland);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
      sub_21A099E24(v67, boxed_opaque_existential_1, type metadata accessor for PrimaryElectionDynamicIsland);
      sub_21A099E8C(v65, type metadata accessor for PrimaryElectionContentState);
      v89 = type metadata accessor for PrimaryElectionStaticAttributes;
    }

    else
    {
      type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v82 = v105;
        v105[3] = &type metadata for ErrorFallbackDynamicIsland;
        *(v82 + 32) = sub_21A099D20();
        v72 = type metadata accessor for LiveBlogContentState;
        goto LABEL_16;
      }

      v64 = v102;
      sub_21A099E24(v55, v102, type metadata accessor for LiveBlogStaticAttributes);
      v73 = v104;
      sub_21A099E24(&v55[v59], v104, type metadata accessor for LiveBlogContentState);
      v74 = v97;
      sub_21A099D74(v64, v97, type metadata accessor for LiveBlogStaticAttributes);
      v75 = v98;
      sub_21A099D74(v73, v98, type metadata accessor for LiveBlogContentState);
      v76 = v103;
      sub_219F85B64(v74, v75);
      v77 = type metadata accessor for LiveBlogDynamicIsland();
      if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
      {
        sub_219F6409C(v76, &qword_27CCDD678);
        v106 = 0u;
        v107 = 0u;
        v108 = 0;
        v78 = v105;
        v105[3] = &type metadata for ErrorFallbackDynamicIsland;
        *(v78 + 32) = sub_21A099D20();
        sub_21A099E8C(v73, type metadata accessor for LiveBlogContentState);
        v70 = type metadata accessor for LiveBlogStaticAttributes;
        goto LABEL_13;
      }

      *(&v107 + 1) = v77;
      v108 = sub_21A099DDC(&qword_27CCDD6A0, type metadata accessor for LiveBlogDynamicIsland);
      v90 = __swift_allocate_boxed_opaque_existential_1(&v106);
      sub_21A099E24(v76, v90, type metadata accessor for LiveBlogDynamicIsland);
      sub_21A099E8C(v73, type metadata accessor for LiveBlogContentState);
      v89 = type metadata accessor for LiveBlogStaticAttributes;
    }

    v91 = v89;
    v92 = v64;
LABEL_26:
    sub_21A099E8C(v92, v91);
    return sub_219F3EBE0(&v106, v105);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21A099E8C(&v55[v59], type metadata accessor for NewsLiveActivityContentState.Payload);
    v62 = *v1;
    v61 = v1[1];
    v63 = v105;
    v105[3] = &type metadata for TestDynamicIsland;
    v63[4] = sub_21A099EEC();
    *v63 = v62;
    v63[1] = v61;

    return sub_21A099E8C(v55, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  }

  type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v71 = v105;
    v105[3] = &type metadata for ErrorFallbackDynamicIsland;
    *(v71 + 32) = sub_21A099D20();
    v72 = type metadata accessor for NationalElectionContentState;
LABEL_16:
    sub_21A099E8C(&v55[v59], v72);
    return sub_21A099E8C(v55, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  }

  sub_21A099E24(v55, v50, type metadata accessor for NationalElectionStaticAttributes);
  v84 = v95;
  sub_21A099E24(&v55[v59], v95, type metadata accessor for NationalElectionContentState);
  sub_21A099D74(v50, v47, type metadata accessor for NationalElectionStaticAttributes);
  sub_21A099D74(v84, v40, type metadata accessor for NationalElectionContentState);
  v85 = v94;
  sub_219FF0748(v47, v40, v94);
  v86 = type metadata accessor for NationalElectionDynamicIsland();
  if ((*(*(v86 - 8) + 48))(v85, 1, v86) != 1)
  {
    *(&v107 + 1) = v86;
    v108 = sub_21A099DDC(&qword_27CCDD6B0, type metadata accessor for NationalElectionDynamicIsland);
    v93 = __swift_allocate_boxed_opaque_existential_1(&v106);
    sub_21A099E24(v85, v93, type metadata accessor for NationalElectionDynamicIsland);
    sub_21A099E8C(v84, type metadata accessor for NationalElectionContentState);
    v91 = type metadata accessor for NationalElectionStaticAttributes;
    v92 = v50;
    goto LABEL_26;
  }

  sub_219F6409C(v85, &qword_27CCDD688);
  v106 = 0u;
  v107 = 0u;
  v108 = 0;
  v87 = v105;
  v105[3] = &type metadata for ErrorFallbackDynamicIsland;
  *(v87 + 32) = sub_21A099D20();
  sub_21A099E8C(v84, type metadata accessor for NationalElectionContentState);
  v79 = type metadata accessor for NationalElectionStaticAttributes;
  v80 = v50;
LABEL_20:
  result = sub_21A099E8C(v80, v79);
  if (*(&v107 + 1))
  {
    return sub_219F6409C(&v106, &qword_27CCDD698);
  }

  return result;
}

uint64_t sub_21A09775C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a2;
  v59 = a3;
  v57 = a1;
  v60 = a6;
  swift_getAssociatedTypeWitness();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  sub_21A0E53AC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = sub_21A099724();
  v46 = v88;
  v45 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x277CE3EB8];
  v63 = a5;
  v64 = swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_21A0E53AC();
  v83 = swift_getAssociatedConformanceWitness();
  v84 = v88;
  swift_getWitnessTable();
  v65 = swift_getOpaqueTypeMetadata2();
  v85 = v65;
  v86 = swift_getOpaqueTypeConformance2();
  v37[1] = v86;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v54 = sub_21A0E5E6C();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_21A0E609C();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v8);
  v50 = v37 - v9;
  v85 = OpaqueTypeMetadata2;
  v86 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v10 = sub_21A0E609C();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v48 = v37 - v12;
  v38 = a4;
  swift_getAssociatedTypeWitness();
  v13 = sub_21A0E53AC();
  v81 = swift_getAssociatedConformanceWitness();
  v82 = v46;
  v14 = swift_getWitnessTable();
  v85 = v13;
  v86 = v14;
  v42 = swift_getOpaqueTypeMetadata2();
  v85 = v13;
  v86 = v14;
  v43 = swift_getOpaqueTypeConformance2();
  v15 = sub_21A0E605C();
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v39 = v37 - v17;
  v18 = sub_21A0E605C();
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v37[0] = v37 - v20;
  v21 = sub_21A0E60DC();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A0E605C();
  v40 = *(v23 - 8);
  v41 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v26 = v37 - v25;
  sub_21A0E60BC();
  v27 = v38;
  v28 = v63;
  v76 = v38;
  v77 = v63;
  v29 = v57;
  v30 = v58;
  v78 = v57;
  v79 = v58;
  v31 = v59;
  v80 = v59;
  sub_21A0E606C();
  sub_21A0E60CC();
  v71 = v27;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75 = v31;
  v32 = v37[0];
  sub_21A0E606C();
  sub_21A0E60AC();
  v66 = v27;
  v67 = v28;
  v68 = v29;
  v69 = v30;
  v70 = v31;
  v33 = v39;
  sub_21A0E606C();
  v34 = v48;
  sub_21A098C78();
  v35 = v50;
  sub_21A098D2C();
  sub_21A098D2C();
  (*(v53 + 8))(v35, v56);
  (*(v51 + 8))(v34, v52);
  (*(v46 + 8))(v33, v47);
  (*(v44 + 8))(v32, v45);
  return (*(v40 + 8))(v26, v41);
}

uint64_t sub_21A097F4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v41 = a1;
  v42 = a2;
  v46 = a5;
  v7 = sub_21A0E537C();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v14 = sub_21A0E53AC();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = AssociatedConformanceWitness;
  v19 = sub_21A099724();
  v49 = AssociatedConformanceWitness;
  v50 = v19;
  WitnessTable = swift_getWitnessTable();
  v47 = v14;
  v48 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v35 - v27;
  (*(a4 + 104))(v36, a4);
  swift_getKeyPath();
  v47 = v41;
  v48 = v42;

  sub_21A0E5A8C();

  (*(v40 + 8))(v13, AssociatedTypeWitness);
  v30 = v43;
  v29 = v44;
  v31 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDF9D8], v45);
  sub_21A0E5AAC();
  (*(v29 + 8))(v30, v31);
  (*(v39 + 8))(v17, v14);
  v32 = *(v21 + 16);
  v32(v28, v25, OpaqueTypeMetadata2);
  v33 = *(v21 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v46, v28, OpaqueTypeMetadata2);
  return (v33)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_21A0983B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v41 = a1;
  v42 = a2;
  v46 = a5;
  v7 = sub_21A0E537C();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v14 = sub_21A0E53AC();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = AssociatedConformanceWitness;
  v19 = sub_21A099724();
  v49 = AssociatedConformanceWitness;
  v50 = v19;
  WitnessTable = swift_getWitnessTable();
  v47 = v14;
  v48 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v35 - v27;
  (*(a4 + 112))(v36, a4);
  swift_getKeyPath();
  v47 = v41;
  v48 = v42;

  sub_21A0E5A8C();

  (*(v40 + 8))(v13, AssociatedTypeWitness);
  v30 = v43;
  v29 = v44;
  v31 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDF9D8], v45);
  sub_21A0E5AAC();
  (*(v29 + 8))(v30, v31);
  (*(v39 + 8))(v17, v14);
  v32 = *(v21 + 16);
  v32(v28, v25, OpaqueTypeMetadata2);
  v33 = *(v21 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v46, v28, OpaqueTypeMetadata2);
  return (v33)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_21A098814@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v41 = a1;
  v42 = a2;
  v46 = a5;
  v7 = sub_21A0E537C();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v14 = sub_21A0E53AC();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = AssociatedConformanceWitness;
  v19 = sub_21A099724();
  v49 = AssociatedConformanceWitness;
  v50 = v19;
  WitnessTable = swift_getWitnessTable();
  v47 = v14;
  v48 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v35 - v27;
  (*(a4 + 120))(v36, a4);
  swift_getKeyPath();
  v47 = v41;
  v48 = v42;

  sub_21A0E5A8C();

  (*(v40 + 8))(v13, AssociatedTypeWitness);
  v30 = v43;
  v29 = v44;
  v31 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDF9D8], v45);
  sub_21A0E5AAC();
  (*(v29 + 8))(v30, v31);
  (*(v39 + 8))(v17, v14);
  v32 = *(v21 + 16);
  v32(v28, v25, OpaqueTypeMetadata2);
  v33 = *(v21 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v46, v28, OpaqueTypeMetadata2);
  return (v33)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_21A098C78()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return sub_21A0E607C();
}

uint64_t sub_21A098D2C()
{
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21A0E5E6C();
  swift_getWitnessTable();
  return sub_21A0E607C();
}

uint64_t sub_21A098DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v25 = a1;
  v26 = a2;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v11 = sub_21A0E53AC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25 - v18;
  (*(a4 + 128))(a3, a4);
  swift_getKeyPath();
  v31 = v25;
  v32 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  sub_21A0E5A8C();

  (*(v27 + 8))(v10, AssociatedTypeWitness);
  v21 = sub_21A099724();
  v29 = AssociatedConformanceWitness;
  v30 = v21;
  swift_getWitnessTable();
  v22 = *(v12 + 16);
  v22(v19, v16, v11);
  v23 = *(v12 + 8);
  v23(v16, v11);
  v22(v28, v19, v11);
  return (v23)(v19, v11);
}

uint64_t sub_21A0990E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v25 = a1;
  v26 = a2;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v11 = sub_21A0E53AC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25 - v18;
  (*(a4 + 136))(a3, a4);
  swift_getKeyPath();
  v31 = v25;
  v32 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  sub_21A0E5A8C();

  (*(v27 + 8))(v10, AssociatedTypeWitness);
  v21 = sub_21A099724();
  v29 = AssociatedConformanceWitness;
  v30 = v21;
  swift_getWitnessTable();
  v22 = *(v12 + 16);
  v22(v19, v16, v11);
  v23 = *(v12 + 8);
  v23(v16, v11);
  v22(v28, v19, v11);
  return (v23)(v19, v11);
}

uint64_t sub_21A0993C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v25 = a1;
  v26 = a2;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
  v11 = sub_21A0E53AC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25 - v18;
  (*(a4 + 144))(a3, a4);
  swift_getKeyPath();
  v31 = v25;
  v32 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  sub_21A0E5A8C();

  (*(v27 + 8))(v10, AssociatedTypeWitness);
  v21 = sub_21A099724();
  v29 = AssociatedConformanceWitness;
  v30 = v21;
  swift_getWitnessTable();
  v22 = *(v12 + 16);
  v22(v19, v16, v11);
  v23 = *(v12 + 8);
  v23(v16, v11);
  v22(v28, v19, v11);
  return (v23)(v19, v11);
}

uint64_t sub_21A0996B0(uint64_t (*a1)(unint64_t, void, void))
{
  v2 = *(*(v1 + 16) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(v1 + v3, *v4, v4[1]);
}

unint64_t sub_21A099724()
{
  result = qword_27CCD9770;
  if (!qword_27CCD9770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9770);
  }

  return result;
}

uint64_t sub_21A0997E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = *(OpaqueTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v16 - v11;
  sub_21A0E605C();
  sub_21A0E604C();
  v13 = *(v5 + 16);
  v13(v12, v9, OpaqueTypeMetadata2);
  v14 = *(v5 + 8);
  v14(v9, OpaqueTypeMetadata2);
  v13(a3, v12, OpaqueTypeMetadata2);
  return (v14)(v12, OpaqueTypeMetadata2);
}

uint64_t sub_21A09996C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a5;
  v42 = a3;
  v36 = a4;
  v44 = a1;
  v45 = a6;
  v49 = a3;
  v50 = a5;
  OpaqueTypeConformance2 = MEMORY[0x277CE3EB8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v39 = &v34 - v14;
  v15 = *(a2 - 8);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - v21;
  v35 = &v34 - v21;
  sub_21A0E609C();
  sub_21A0E608C();
  v34 = *(v15 + 16);
  v34(v22, v19, a2);
  v37 = *(v15 + 8);
  v40 = v15 + 8;
  v37(v19, a2);
  v24 = v41;
  v23 = v42;
  sub_21A0E605C();
  sub_21A0E604C();
  v49 = v23;
  v50 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v7;
  v26 = *(v7 + 16);
  v27 = OpaqueTypeMetadata2;
  v28 = v39;
  v26(v39, v11, OpaqueTypeMetadata2);
  v29 = *(v25 + 8);
  v44 = v25 + 8;
  v29(v11, v27);
  v30 = v35;
  v34(v19, v35, a2);
  v49 = v19;
  v26(v11, v28, v27);
  v50 = v11;
  v48[0] = a2;
  v48[1] = v27;
  v46 = v36;
  v47 = OpaqueTypeConformance2;
  sub_21A095C18(&v49, 2uLL, v48);
  v31 = v27;
  v29(v28, v27);
  v32 = v37;
  v37(v30, a2);
  v29(v11, v31);
  return v32(v19, a2);
}

uint64_t type metadata accessor for NewsDynamicIsland()
{
  result = qword_27CCDD6C0;
  if (!qword_27CCDD6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A099D20()
{
  result = qword_27CCDD690;
  if (!qword_27CCDD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD690);
  }

  return result;
}

uint64_t sub_21A099D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A099DDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A099E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A099E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A099EEC()
{
  result = qword_27CCDD6B8;
  if (!qword_27CCDD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD6B8);
  }

  return result;
}

uint64_t sub_21A099F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_219FBE79C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_21A0E67CC();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_219FBE79C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_219FEA040(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_219FEA040(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21A09A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = type metadata accessor for RemoteAssetKey();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A09A244, v3, 0);
}

uint64_t sub_21A09A244()
{
  v31 = v0;
  v1 = v0[10];
  v2 = v0[9];
  v3 = sub_21A0E473C();
  v5 = v4;
  v0[15] = v3;
  v0[16] = v4;
  v7 = *v2;
  v6 = v2[1];
  v8 = v1[17];
  v9 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v8);
  v30[0] = v7;
  v30[1] = v6;
  v30[2] = v3;
  v30[3] = v5;
  v10 = *(v9 + 24);

  v10(v30, v8, v9);

  if (qword_280C88468 != -1)
  {
    swift_once();
  }

  v11 = v0[14];
  v12 = v0[9];
  v13 = sub_21A0E516C();
  v0[17] = __swift_project_value_buffer(v13, qword_280C88470);
  sub_21A0160DC(v12, v11);

  v14 = sub_21A0E514C();
  v15 = sub_21A0E66BC();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[14];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30[0] = v19;
    *v18 = 136446466;
    v20 = *v17;
    v21 = v17[1];

    sub_21A09B6D0(v17);
    v22 = sub_219F50144(v20, v21, v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_219F50144(v3, v5, v30);
    _os_log_impl(&dword_219F39000, v14, v15, "About to write contents of asset. Activity=%{public}s, Name=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v19, -1, -1);
    MEMORY[0x21CED2D30](v18, -1, -1);
  }

  else
  {

    sub_21A09B6D0(v17);
  }

  v23 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
  v29 = (*(v24 + 32) + **(v24 + 32));
  v25 = swift_task_alloc();
  v0[18] = v25;
  *v25 = v0;
  v25[1] = sub_21A09A594;
  v27 = v0[7];
  v26 = v0[8];

  return v29(v27, v26, v23, v24);
}

uint64_t sub_21A09A594()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_21A09A8B8;
  }

  else
  {
    v4 = sub_21A09A6C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21A09A6C0()
{
  v17 = v0;
  sub_21A0160DC(v0[9], v0[13]);

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  if (v3)
  {
    v5 = v0[15];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = *v6;
    v10 = v6[1];

    sub_21A09B6D0(v6);
    v11 = sub_219F50144(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_219F50144(v5, v4, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_219F39000, v1, v2, "Successfully written contents of asset. Activity=%{public}s, Name=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {
    v13 = v0[13];

    sub_21A09B6D0(v13);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v14 = v0[1];

  return v14();
}

uint64_t sub_21A09A8B8()
{
  v26 = v0;
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[9];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_21A0160DC(v3, v2);

  v4 = v1;
  v5 = sub_21A0E514C();
  v6 = sub_21A0E669C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v23 = v0[15];
    v24 = v0[19];
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v9 = 136446722;
    v13 = *v8;
    v12 = v8[1];

    sub_21A09B6D0(v8);
    v14 = sub_219F50144(v13, v12, v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    v15 = sub_219F50144(v23, v7, v25);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2112;
    v16 = v24;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&dword_219F39000, v5, v6, "Failed writing contents of asset. Activity=%{public}s, Name=%{public}s, Error=%@", v9, 0x20u);
    sub_219F8590C(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v11, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {
    v18 = v0[12];

    sub_21A09B6D0(v18);
  }

  v19 = v0[19];
  sub_21A09B67C();
  swift_allocError();
  *v20 = v19;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_21A09AB50(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_21A09AB78, v1, 0);
}

uint64_t sub_21A09AB78()
{
  v17 = v0;
  if (qword_280C88468 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  v0[7] = __swift_project_value_buffer(v1, qword_280C88470);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v5, v4, &v16);
    _os_log_impl(&dword_219F39000, v2, v3, "About to remove assets for an activity. ID=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  v11 = v10[17];
  v12 = v10[18];
  __swift_project_boxed_opaque_existential_1(v10 + 14, v11);
  v0[2] = v9;
  v0[3] = v8;
  v15 = (*(v12 + 32) + **(v12 + 32));
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_21A09ADDC;

  return v15(v0 + 2, v11, v12);
}

uint64_t sub_21A09ADDC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_21A09B034;
  }

  else
  {
    v4 = sub_21A09AEF4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21A09AEF4()
{
  v10 = v0;

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_219F50144(v4, v3, &v9);
    _os_log_impl(&dword_219F39000, v1, v2, "Removed assets for an activity. ID=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CED2D30](v6, -1, -1);
    MEMORY[0x21CED2D30](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21A09B034()
{
  v18 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_219F50144(v7, v6, &v17);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to delete assets for an activity. ID=%{public}s, Error=%@", v8, 0x16u);
    sub_219F8590C(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  v13 = v0[9];
  sub_21A09B67C();
  swift_allocError();
  *v14 = v13;
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_21A09B208()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21A09B240()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_21A09B260, v2, 0);
}

uint64_t sub_21A09B260()
{
  v1 = *(v0 + 16);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_21A09B388;

  return v6(v2, v3);
}

uint64_t sub_21A09B388(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_21A09B4A0, v2, 0);
}

uint64_t sub_21A09B4A0()
{
  v1 = sub_21A099F6C(*(v0 + 32));

  v2 = sub_219F4D7A4(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21A09B534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F49B18;

  return sub_21A09A194(a1, a2, a3);
}

uint64_t sub_21A09B5E4(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F4996C;

  return sub_21A09AB50(a1);
}

unint64_t sub_21A09B67C()
{
  result = qword_27CCDD6D0;
  if (!qword_27CCDD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD6D0);
  }

  return result;
}

uint64_t sub_21A09B6D0(uint64_t a1)
{
  v2 = type metadata accessor for RemoteAssetKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A09B72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAssetKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PresidentialCandidateWatchResultStackView()
{
  result = qword_27CCDD6D8;
  if (!qword_27CCDD6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A09B814()
{
  type metadata accessor for PresidentialElectionData.Entity(319);
  if (v0 <= 0x3F)
  {
    sub_219F66008();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A09B8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityAssetView(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD6F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v91 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v95 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v97 = &v90 - v17;
  v92 = sub_21A0E554C();
  v18 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v19);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PresidentialCandidateWatchResultStackView();
  v23 = *(v22 + 24);
  v96 = a1;
  v24 = a1 + v23;
  v25 = *v24;
  LODWORD(v24) = *(v24 + 8);
  v98 = v7;
  if (v24 == 1)
  {
    if ((v25 & 1) == 0)
    {
      return (*(v9 + 56))(a2, 1, 1, v8);
    }
  }

  else
  {

    sub_21A0E66AC();
    v26 = sub_21A0E575C();
    v99 = v9;
    v27 = v8;
    v28 = v26;
    sub_21A0E512C();

    v8 = v27;
    v9 = v99;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F68370(v25, 0);
    (*(v18 + 8))(v21, v92);
    if (LOBYTE(v121[0]) != 1)
    {
      return (*(v9 + 56))(a2, 1, 1, v8);
    }
  }

  v29 = v96 + *(v22 + 20);
  v30 = v29 + *(type metadata accessor for PresidentialElectionData.Entity(0) + 28);
  v31 = type metadata accessor for ElectionEntityTheme();
  v32 = v95;
  sub_219F45500(v30 + *(v31 + 28), v95, &qword_27CCD98D8);
  if ((*(v93 + 48))(v32, 1, v94) == 1)
  {
    sub_219F6409C(v32, &qword_27CCD98D8);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  v99 = v9;
  v94 = v8;
  v96 = a2;
  v34 = v97;
  sub_219F4D494(v32, v97, &qword_27CCD98D0);
  sub_219F45500(v34, v98 + *(v4 + 20), &qword_27CCD98D0);
  v35 = (v30 + *(v31 + 32));
  v36 = v35[3];
  v124 = v35[2];
  v125 = v36;
  v126 = v35[4];
  *&v127 = *(v35 + 10);
  v37 = v35[1];
  v122 = *v35;
  v123 = v37;
  PoliticalPartyTheme.thumbnail.getter(v100);
  nullsub_1(v100, v38);
  v39 = v35[3];
  v103 = v35[2];
  v104[0] = v39;
  *(v104 + 13) = *(v35 + 61);
  v40 = v35[1];
  v101 = *v35;
  v102 = v40;
  sub_219F72F28(&v101, v121);
  v95 = v4;
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v41 = qword_27CCDBDB0;
  v42 = *(&v101 + 1);
  v43 = v102;
  v44 = v103;
  v92 = *&v104[0];
  v93 = v101;
  v90 = *(&v104[0] + 1);
  v45 = LODWORD(v104[1]) | (BYTE4(v104[1]) << 32);
  memset(v105, 0, sizeof(v105));
  v106 = 0;
  sub_219F72F28(&v101, v121);
  swift_bridgeObjectRetain_n();
  sub_219F6409C(v105, &qword_27CCD9F78);
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  sub_219F6409C(v107, &qword_27CCD9F78);
  *&v109 = v93;
  *(&v109 + 1) = v42;
  v110 = v43;
  v111 = v44;
  *&v112 = v92;
  *(&v112 + 1) = v90;
  *&v113 = v45;
  *(&v113 + 1) = v41;
  *&v114 = MEMORY[0x277D84F90];
  *(&v114 + 1) = v93;
  *v115 = v42;
  *&v115[8] = v43;
  *&v115[24] = v44;
  *&v115[40] = v92;
  *&v116 = v90;
  *(&v116 + 1) = v45;
  *&v117 = v41;
  *(&v117 + 1) = MEMORY[0x277D84F90];
  nullsub_1(&v109, v46);
  KeyPath = swift_getKeyPath();
  v48 = v98;
  *v98 = KeyPath;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 0;
  *(v48 + 8) = 0u;
  v49 = v95;
  v50 = (v48 + *(v95 + 24));
  sub_219F5EC1C(v118);
  v51 = v118[9];
  v50[8] = v118[8];
  v50[9] = v51;
  v50[10] = v118[10];
  v52 = v118[5];
  v50[4] = v118[4];
  v50[5] = v52;
  v53 = v118[7];
  v50[6] = v118[6];
  v50[7] = v53;
  v54 = v118[1];
  *v50 = v118[0];
  v50[1] = v54;
  v55 = v118[3];
  v50[2] = v118[2];
  v50[3] = v55;
  v56 = (v48 + *(v49 + 28));
  sub_219F5EC1C(v119);
  v57 = v119[5];
  v56[4] = v119[4];
  v56[5] = v57;
  v58 = v119[10];
  v59 = v119[8];
  v56[9] = v119[9];
  v56[10] = v58;
  v60 = v119[7];
  v56[6] = v119[6];
  v56[7] = v60;
  v56[8] = v59;
  v61 = v119[1];
  *v56 = v119[0];
  v56[1] = v61;
  v62 = v119[3];
  v56[2] = v119[2];
  v56[3] = v62;
  *(v48 + *(v49 + 32)) = 0;
  v63 = v50[9];
  v120[8] = v50[8];
  v120[9] = v63;
  v120[10] = v50[10];
  v64 = v50[5];
  v120[4] = v50[4];
  v120[5] = v64;
  v65 = v50[6];
  v120[7] = v50[7];
  v120[6] = v65;
  v66 = v50[1];
  v120[0] = *v50;
  v120[1] = v66;
  v67 = v50[2];
  v120[3] = v50[3];
  v120[2] = v67;
  sub_219F6409C(v120, &qword_27CCDA4A8);
  v68 = v100[5];
  v50[4] = v100[4];
  v50[5] = v68;
  v69 = v100[10];
  v50[9] = v100[9];
  v50[10] = v69;
  v70 = v100[8];
  v50[7] = v100[7];
  v50[8] = v70;
  v50[6] = v100[6];
  v71 = v100[1];
  *v50 = v100[0];
  v50[1] = v71;
  v72 = v100[3];
  v50[2] = v100[2];
  v50[3] = v72;
  v73 = v56[9];
  v121[8] = v56[8];
  v121[9] = v73;
  v121[10] = v56[10];
  v74 = v56[5];
  v121[4] = v56[4];
  v121[5] = v74;
  v75 = v56[6];
  v121[7] = v56[7];
  v121[6] = v75;
  v76 = v56[1];
  v121[0] = *v56;
  v121[1] = v76;
  v77 = v56[2];
  v121[3] = v56[3];
  v121[2] = v77;
  sub_219F6409C(v121, &qword_27CCD9B40);
  v78 = v116;
  v56[8] = *&v115[32];
  v56[9] = v78;
  v56[10] = v117;
  v79 = v114;
  v56[4] = v113;
  v56[5] = v79;
  v80 = *&v115[16];
  v56[6] = *v115;
  v56[7] = v80;
  v81 = v110;
  *v56 = v109;
  v56[1] = v81;
  v82 = v112;
  v56[2] = v111;
  v56[3] = v82;
  v83 = v91;
  sub_219F9DD20(v48, v91);
  *(v83 + *(v49 + 32)) = 1;
  sub_219F9DD84(v48);
  sub_21A0E5E3C();
  sub_21A0E53BC();
  sub_219F6409C(v97, &qword_27CCD98D0);
  v84 = v94;
  v85 = (v83 + *(v94 + 36));
  v86 = v127;
  v85[4] = v126;
  v85[5] = v86;
  v85[6] = v128;
  v87 = v123;
  *v85 = v122;
  v85[1] = v87;
  v88 = v125;
  v85[2] = v124;
  v85[3] = v88;
  v89 = v96;
  sub_219F4D494(v83, v96, &qword_27CCDD6F0);
  return (*(v99 + 56))(v89, 0, 1, v84);
}

uint64_t sub_21A09C16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v37 - v6;
  v8 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - v13;
  v37[1] = *(a1 + *(type metadata accessor for PresidentialCandidateWatchResultStackView() + 20));
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
  sub_21A0E678C();
  (*(v11 + 8))(v14, v10);
  sub_21A0E588C();
  v15 = *MEMORY[0x277CE09A0];
  v16 = sub_21A0E57FC();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  sub_21A0E589C();
  sub_219F6409C(v7, &qword_27CCD9FC8);
  v18 = sub_21A0E599C();
  v20 = v19;
  LOBYTE(v15) = v21;
  v23 = v22;

  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0);
  sub_21A0E53DC();
  *v24 = swift_getKeyPath();
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v23;
  LODWORD(v24) = sub_21A0E56DC();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD700) + 36)) = v24;
  LOBYTE(v24) = sub_21A0E576C();
  sub_21A0E51EC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD708) + 36);
  *v33 = v24;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD710);
  v36 = (a2 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = 0x3FE999999999999ALL;
  return result;
}

uint64_t sub_21A09C588@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD6E8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD6F0);
  (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD6F8);
  *(a1 + v9[14]) = v7;
  *(a1 + v9[15]) = 1;
  sub_21A09B8C4(v1, v6);
  sub_21A09C6AC(v6, a1);
  return sub_21A09C16C(v1, a1 + v9[13]);
}

uint64_t sub_21A09C6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD6E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21A09C72C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  v8 = sub_21A0E485C();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_21A09CCFC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21A09C990;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  [v7 signatureFromData:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_21A09C908(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD720);
    return sub_21A0E648C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD720);
    return sub_21A0E649C();
  }
}

uint64_t sub_21A09C990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_21A0E620C();
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

uint64_t sub_21A09CA28(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_21A09CA48, 0, 0);
}

uint64_t sub_21A09CA48()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9648);
  *v4 = v0;
  v4[1] = sub_21A09CB58;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x727574616E676973, 0xEF293A726F662865, sub_21A09CCF4, v3, v5);
}

uint64_t sub_21A09CB58()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21A09CC90;
  }

  else
  {

    v2 = sub_21A09CC74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A09CC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A09CCFC(int a1, int a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD720);

  return sub_21A09C908(a1, a2, a3);
}

uint64_t PrimaryCandidateTheme.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrimaryCandidateTheme.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrimaryCandidateTheme.lastName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrimaryCandidateTheme.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PrimaryCandidateTheme.id.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrimaryCandidateTheme.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PrimaryCandidateTheme.winnerForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v9 = *(v1 + 80);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 109);
  v3 = *(v10 + 13);
  v4 = *(v1 + 64);
  v8[0] = *(v1 + 48);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_219F72F28(v8, v7);
}

__n128 PrimaryCandidateTheme.winnerForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  v7[2] = *(v1 + 80);
  v8[0] = v3;
  *(v8 + 13) = *(v1 + 109);
  v4 = *(v1 + 64);
  v7[0] = *(v1 + 48);
  v7[1] = v4;
  sub_219F72F84(v7);
  v5 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v5;
  *(v1 + 109) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = result;
  return result;
}

__n128 PrimaryCandidateTheme.init(name:lastName:id:winnerForeground:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v8 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v8;
  *(a8 + 109) = *(a7 + 61);
  result = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = result;
  return result;
}

unint64_t sub_21A09D020()
{
  v1 = 1701667182;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656D614E7473616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21A09D08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A09DEF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A09D0B4(uint64_t a1)
{
  v2 = sub_21A09DC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A09D0F0(uint64_t a1)
{
  v2 = sub_21A09DC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryCandidateTheme.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD728);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - v6;
  v8 = *(v1 + 24);
  v14[3] = *(v1 + 16);
  v14[2] = v8;
  v9 = *(v1 + 40);
  v14[1] = *(v1 + 32);
  v14[0] = v9;
  v10 = *(v1 + 96);
  v24 = *(v1 + 80);
  *v25 = v10;
  *&v25[13] = *(v1 + 109);
  v11 = *(v1 + 64);
  v22 = *(v1 + 48);
  v23 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A09DC4C();
  sub_21A0E6EAC();
  LOBYTE(v18) = 0;
  v12 = v26;
  sub_21A0E6B7C();
  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_21A0E6B7C();
    LOBYTE(v18) = 2;
    sub_21A0E6B7C();
    v20 = v24;
    v21[0] = *v25;
    *(v21 + 13) = *&v25[13];
    v18 = v22;
    v19 = v23;
    v17 = 3;
    sub_219F72F28(&v22, v15);
    sub_219FA35D8();
    sub_21A0E6BBC();
    v15[2] = v20;
    *v16 = v21[0];
    *&v16[13] = *(v21 + 13);
    v15[1] = v19;
    v15[0] = v18;
    sub_219F72F84(v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PrimaryCandidateTheme.hash(into:)(uint64_t a1)
{
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  return ActivityFill.hash(into:)(a1);
}

uint64_t PrimaryCandidateTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  ActivityFill.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t PrimaryCandidateTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD738);
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v6);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A09DC4C();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  LOBYTE(v36[0]) = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v27 = v10;
  LOBYTE(v36[0]) = 1;
  v13 = sub_21A0E6A9C();
  v28 = v14;
  v25 = v13;
  LOBYTE(v36[0]) = 2;
  v24 = sub_21A0E6A9C();
  v26 = v15;
  v41 = 3;
  sub_219FA3584();
  sub_21A0E6ADC();
  (*(v9 + 8))(v8, v50);
  v48 = v44;
  v49[0] = *v45;
  *(v49 + 13) = *&v45[13];
  v46 = v42;
  v47 = v43;
  v17 = v27;
  v16 = v28;
  *&v29 = v27;
  *(&v29 + 1) = v12;
  *&v30 = v25;
  *(&v30 + 1) = v28;
  v18 = v26;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  *&v35[13] = *&v45[13];
  *v35 = *v45;
  v34 = v44;
  v33 = v43;
  v32 = v42;
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  *(a2 + 109) = *&v35[13];
  v20 = *v35;
  v21 = v33;
  *(a2 + 80) = v34;
  *(a2 + 96) = v20;
  v22 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v22;
  *(a2 + 64) = v21;
  sub_219F72ECC(&v29, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v17;
  v36[1] = v12;
  v36[2] = v25;
  v36[3] = v16;
  v36[4] = v24;
  v36[5] = v18;
  v39 = v48;
  *v40 = v49[0];
  *&v40[13] = *(v49 + 13);
  v37 = v46;
  v38 = v47;
  return sub_219F72FD8(v36);
}

uint64_t sub_21A09D86C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_21A09D878()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  ActivityFill.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A09D928(uint64_t a1)
{
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  return ActivityFill.hash(into:)(a1);
}

uint64_t sub_21A09D9B4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  ActivityFill.hash(into:)(v1);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore21PrimaryCandidateThemeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v38[2] = *(a1 + 5);
  v39[0] = v10;
  *(v39 + 13) = *(a1 + 109);
  v11 = *(a1 + 4);
  v38[0] = *(a1 + 3);
  v38[1] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  *(v41 + 13) = *(a2 + 109);
  v18 = *(a2 + 6);
  v40[2] = *(a2 + 5);
  v41[0] = v18;
  v19 = *(a2 + 4);
  v40[0] = *(a2 + 3);
  v40[1] = v19;
  if (v4 == v12 && v5 == v13 || (sub_21A0E6C5C()) && (v6 == v14 && v8 == v15 || (sub_21A0E6C5C()) && (v7 == v16 && v9 == v17 || (sub_21A0E6C5C()))
  {
    v20 = *(a1 + 6);
    v32 = *(a1 + 5);
    v33[0] = v20;
    *(v33 + 13) = *(a1 + 109);
    v21 = *(a1 + 4);
    v30 = *(a1 + 3);
    v31 = v21;
    v22 = *(a2 + 6);
    v28 = *(a2 + 5);
    v29[0] = v22;
    *(v29 + 13) = *(a2 + 109);
    v23 = *(a2 + 4);
    v26 = *(a2 + 3);
    v27 = v23;
    sub_219F72F28(v38, v36);
    sub_219F72F28(v40, v36);
    v24 = static ActivityFill.== infix(_:_:)(&v30, &v26);
    v34[2] = v28;
    v35[0] = v29[0];
    *(v35 + 13) = *(v29 + 13);
    v34[0] = v26;
    v34[1] = v27;
    sub_219F72F84(v34);
    v36[2] = v32;
    v37[0] = v33[0];
    *(v37 + 13) = *(v33 + 13);
    v36[0] = v30;
    v36[1] = v31;
    sub_219F72F84(v36);
  }

  else
  {
    return 0;
  }

  return v24;
}

unint64_t sub_21A09DC4C()
{
  result = qword_27CCDD730;
  if (!qword_27CCDD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD730);
  }

  return result;
}

unint64_t sub_21A09DCA4()
{
  result = qword_27CCDD740;
  if (!qword_27CCDD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD740);
  }

  return result;
}

__n128 __swift_memcpy117_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21A09DD24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 117))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A09DD6C(uint64_t result, int a2, int a3)
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
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 117) = 1;
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

    *(result + 117) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A09DDF4()
{
  result = qword_27CCDD748;
  if (!qword_27CCDD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD748);
  }

  return result;
}

unint64_t sub_21A09DE4C()
{
  result = qword_27CCDD750;
  if (!qword_27CCDD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD750);
  }

  return result;
}

unint64_t sub_21A09DEA4()
{
  result = qword_27CCDD758;
  if (!qword_27CCDD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD758);
  }

  return result;
}

uint64_t sub_21A09DEF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A10AFD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 SFSymbolConfiguration.init(name:weight:scale:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  v5 = *a2;
  v6 = *a3;
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u8[1] = v5;
  a4[1].n128_u8[2] = v6;
  return result;
}

uint64_t SFSymbolConfiguration.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_219F79C1C();
}

double sub_21A09E0B0()
{
  *&result = 1937204590;
  xmmword_27CCDD760 = xmmword_21A101A90;
  byte_27CCDD770 = 1;
  *&byte_27CCDD771 = 777;
  return result;
}

uint64_t static SFSymbolConfiguration.news.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCD9208 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *(&xmmword_27CCDD760 + 1);
  v3 = byte_27CCDD770;
  v4 = *&byte_27CCDD771;
  *a1 = xmmword_27CCDD760;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;

  return sub_219F79C1C();
}

void sub_21A09E15C()
{
  qword_27CCDD778 = 0xD000000000000018;
  unk_27CCDD780 = 0x800000021A10AFF0;
  byte_27CCDD788 = 1;
  *algn_27CCDD789 = 777;
}

uint64_t static SFSymbolConfiguration.checkmark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCD9210 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_27CCDD780;
  v3 = byte_27CCDD788;
  v4 = *algn_27CCDD789;
  *a1 = qword_27CCDD778;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;

  return sub_219F79C1C();
}

NewsLiveActivitiesCore::SFSymbolConfiguration::Weight_optional __swiftcall SFSymbolConfiguration.Weight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SFSymbolConfiguration.Weight.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6B63616C62;
    v7 = 0x7976616568;
    if (v1 != 2)
    {
      v7 = 0x746867696CLL;
    }

    if (*v0)
    {
      v6 = 1684828002;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x646C6F62696D6573;
    v3 = 1852401780;
    if (v1 != 7)
    {
      v3 = 0x67694C6172746C75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D756964656DLL;
    if (v1 != 4)
    {
      v4 = 0x72616C75676572;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21A09E380@<X0>(uint64_t *a1@<X8>)
{
  result = SFSymbolConfiguration.Weight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsLiveActivitiesCore::SFSymbolConfiguration::Scale_optional __swiftcall SFSymbolConfiguration.Scale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SFSymbolConfiguration.Scale.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

void sub_21A09E460(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21A09E4C0()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A09E57C()
{
  sub_21A0E626C();
}

uint64_t sub_21A09E624()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A09E6DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A0A0770();
  *a1 = result;
  return result;
}

void sub_21A09E70C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE600000000000000;
  v5 = 0x746867696577;
  if (*v1 != 2)
  {
    v5 = 0x656C616373;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C616E7265746E69;
    v2 = 0xEC000000656D614ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21A09E784()
{
  v1 = 1701667182;
  v2 = 0x746867696577;
  if (*v0 != 2)
  {
    v2 = 0x656C616373;
  }

  if (*v0)
  {
    v1 = 0x6C616E7265746E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21A09E7F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A0A0770();
  *a1 = result;
  return result;
}

uint64_t sub_21A09E820(uint64_t a1)
{
  v2 = sub_21A0A0174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A09E85C(uint64_t a1)
{
  v2 = sub_21A0A0174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SFSymbolConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD790);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0A0174();
  sub_21A0E6E7C();
  if (v2)
  {
    v10 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v34 = a1;
  v35 = v6;
  v30 = 0;
  v32 = v9;
  v33 = v5;
  v11 = sub_21A0E6AFC();
  v12 = *(v11 + 16);
  v31 = v11;
  v13 = (v11 + 32);
  v14 = (v11 + 32);
  v15 = a2;
  while (1)
  {
    v17 = v12;
    if (!v12)
    {
      break;
    }

    if (!*v14)
    {

      a2 = v15;
LABEL_14:

      v41 = 0;
      v19 = v33;
      goto LABEL_18;
    }

    v16 = sub_21A0E6C5C();

    ++v14;
    v12 = v17 - 1;
    a2 = v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  v18 = *(v31 + 16);
  v19 = v33;
  while (1)
  {
    if (!v18)
    {

      sub_21A0A0270();
      swift_allocError();
      swift_willThrow();
      (*(v35 + 8))(v32, v19);
      goto LABEL_20;
    }

    if (*v13 <= 1u && *v13)
    {
      break;
    }

    v20 = sub_21A0E6C5C();

    ++v13;
    --v18;
    a2 = v15;
    if (v20)
    {
      goto LABEL_17;
    }
  }

LABEL_17:

  v36 = 1;
LABEL_18:
  v21 = v32;
  v22 = v30;
  v23 = sub_21A0E6A9C();
  if (v22)
  {
    (*(v35 + 8))(v21, v19);
LABEL_20:
    v10 = v34;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v26 = v23;
  v27 = v24;
  v39 = 2;
  sub_21A0A01C8();
  sub_21A0E6A8C();
  v28 = v40;
  v37 = 3;
  sub_21A0A021C();
  sub_21A0E6A8C();
  (*(v35 + 8))(v21, v19);
  v29 = v38;
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v17 == 0;
  *(a2 + 17) = v28;
  *(a2 + 18) = v29;
  sub_219F79C1C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_219F79CD8();
}

uint64_t SFSymbolConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD7B8);
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v11 - v5;
  v7 = v1[16];
  v8 = v1[17];
  v12 = v1[18];
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0A0174();
  sub_21A0E6EAC();
  if (v7)
  {
    v21 = 1;
  }

  else
  {
    v16 = 0;
  }

  v9 = v14;
  sub_21A0E6B7C();
  if (!v9)
  {
    v20 = v13;
    v19 = 2;
    sub_21A0A02C4();
    sub_21A0E6B6C();
    v18 = v12;
    v17 = 3;
    sub_21A0A0318();
    sub_21A0E6B6C();
  }

  return (*(v15 + 8))(v6, v3);
}

uint64_t SFSymbolConfiguration.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  LOWORD(v8) = *(v0 + 17);
  v14[1] = *v0;
  v14[2] = v10;
  v15 = v11;
  v16 = v8;
  v14[0] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_219F79C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A09F268()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  LOWORD(v8) = *(v0 + 17);
  v14[1] = *v0;
  v14[2] = v10;
  v15 = v11;
  v16 = v8;
  v14[0] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_219F79C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t SFSymbolConfiguration.description.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  if (*(v0 + 16))
  {
    v4 = 0x6C616E7265746E69;
    v5 = 0xE900000000000028;
  }

  else
  {
    v4 = 0x2863696C627570;
    v5 = 0xE700000000000000;
  }

  MEMORY[0x21CED1980](*v0, *(v0 + 8));
  MEMORY[0x21CED1980](41, 0xE100000000000000);
  MEMORY[0x21CED1980](v4, v5);

  if (v1 != 9)
  {
    MEMORY[0x21CED1980](0x746867696557202CLL, 0xE90000000000003DLL);
    sub_21A0E697C();
    MEMORY[0x21CED1980](0, 0xE000000000000000);
  }

  if (v2 != 3)
  {
    MEMORY[0x21CED1980](0x3D656C616353202CLL, 0xE800000000000000);
    sub_21A0E697C();
    MEMORY[0x21CED1980](0, 0xE000000000000000);
  }

  return 0x3D656D614ELL;
}

uint64_t SFSymbolConfiguration.Name.description.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0x6C616E7265746E69;
  }

  else
  {
    v1 = 0x2863696C627570;
  }

  v3 = v1;
  MEMORY[0x21CED1980](*v0, *(v0 + 8));
  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_21A09F68C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x656772616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t SFSymbolConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[17];
  v4 = v1[18];
  MEMORY[0x21CED2490](v1[16]);
  sub_21A0E626C();
  if (v3 != 9)
  {
    sub_21A0E6DCC();
    sub_219F7A96C(a1, v3);
    if (v4 != 3)
    {
      goto LABEL_3;
    }

    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  if (v4 == 3)
  {
    return sub_21A0E6DCC();
  }

LABEL_3:
  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t SFSymbolConfiguration.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21A0E6DAC();
  SFSymbolConfiguration.hash(into:)(v4);
  return sub_21A0E6DFC();
}

uint64_t sub_21A09F900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21A0E6DAC();
  SFSymbolConfiguration.hash(into:)(v4);
  return sub_21A0E6DFC();
}

uint64_t sub_21A09F960()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21A0E6DAC();
  SFSymbolConfiguration.hash(into:)(v4);
  return sub_21A0E6DFC();
}

uint64_t SFSymbolConfiguration.Name.hash(into:)()
{
  MEMORY[0x21CED2490](*(v0 + 16));

  return sub_21A0E626C();
}

uint64_t SFSymbolConfiguration.Name.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A09FA70()
{
  v1 = *(v0 + 16);
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A09FAD4()
{
  MEMORY[0x21CED2490](*(v0 + 16));

  return sub_21A0E626C();
}

uint64_t sub_21A09FB28()
{
  v1 = *(v0 + 16);
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A09FB88()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A09FC20()
{
  sub_21A0E626C();
}

uint64_t sub_21A09FCA4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A09FD38()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7A96C(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A09FD80()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7A96C(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore21SFSymbolConfigurationV4NameO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_219F79C1C();
    sub_219F79C1C();
    sub_219F79CD8();
    sub_219F79CD8();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v9 = sub_21A0E6C5C();
    sub_219F79C1C();
    sub_219F79C1C();
    sub_219F79CD8();
    sub_219F79CD8();
    return v9 & 1;
  }

LABEL_15:
  sub_219F79C1C();
  sub_219F79C1C();
  sub_219F79CD8();
  sub_219F79CD8();
  return 1;
}

BOOL _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 18);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 18);
  v19[0] = *a1;
  v19[1] = v2;
  v20 = v3;
  v17[0] = v6;
  v17[1] = v7;
  v18 = v8;
  sub_219F79C1C();
  sub_219F79C1C();
  LOBYTE(v6) = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV4NameO2eeoiySbAE_AEtFZ_0(v19, v17);
  sub_219F79CD8();
  sub_219F79CD8();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v4 == 9)
  {
    if (v9 != 9)
    {
      return 0;
    }
  }

  else if (v9 == 9 || (sub_21A0B0F08(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 3)
  {
    return v10 == 3;
  }

  if (v10 == 3)
  {
    return 0;
  }

  v12 = 0x6C6C616D73;
  if (v5)
  {
    if (v5 == 1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x6D756964656DLL;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x656772616CLL;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x6C6C616D73;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v15 = 0xE600000000000000;
      v12 = 0x6D756964656DLL;
    }

    else
    {
      v15 = 0xE500000000000000;
      v12 = 0x656772616CLL;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (v14 == v12 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_21A0E6C5C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_21A0A0174()
{
  result = qword_27CCDD798;
  if (!qword_27CCDD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD798);
  }

  return result;
}

unint64_t sub_21A0A01C8()
{
  result = qword_27CCDD7A0;
  if (!qword_27CCDD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7A0);
  }

  return result;
}

unint64_t sub_21A0A021C()
{
  result = qword_27CCDD7A8;
  if (!qword_27CCDD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7A8);
  }

  return result;
}

unint64_t sub_21A0A0270()
{
  result = qword_27CCDD7B0;
  if (!qword_27CCDD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7B0);
  }

  return result;
}

unint64_t sub_21A0A02C4()
{
  result = qword_27CCDD7C0;
  if (!qword_27CCDD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7C0);
  }

  return result;
}

unint64_t sub_21A0A0318()
{
  result = qword_27CCDD7C8;
  if (!qword_27CCDD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7C8);
  }

  return result;
}

unint64_t sub_21A0A0370()
{
  result = qword_27CCDD7D0;
  if (!qword_27CCDD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7D0);
  }

  return result;
}

unint64_t sub_21A0A03C8()
{
  result = qword_27CCDD7D8;
  if (!qword_27CCDD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7D8);
  }

  return result;
}

unint64_t sub_21A0A0420()
{
  result = qword_27CCDD7E0;
  if (!qword_27CCDD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7E0);
  }

  return result;
}

unint64_t sub_21A0A0478()
{
  result = qword_27CCDD7E8;
  if (!qword_27CCDD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7E8);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_21A0A04E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A0A0528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityLinearGradient.UnitPoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityLinearGradient.UnitPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_21A0A066C()
{
  result = qword_27CCDD7F0;
  if (!qword_27CCDD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7F0);
  }

  return result;
}

unint64_t sub_21A0A06C4()
{
  result = qword_27CCDD7F8;
  if (!qword_27CCDD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD7F8);
  }

  return result;
}

unint64_t sub_21A0A071C()
{
  result = qword_27CCDD800;
  if (!qword_27CCDD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD800);
  }

  return result;
}

uint64_t sub_21A0A0770()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21A0A07BC()
{
  result = qword_27CCDD808;
  if (!qword_27CCDD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD808);
  }

  return result;
}

unint64_t sub_21A0A0810()
{
  result = qword_27CCDD810;
  if (!qword_27CCDD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD810);
  }

  return result;
}

uint64_t type metadata accessor for ActivityFlexibleUpdateGraphicView()
{
  result = qword_27CCDD818;
  if (!qword_27CCDD818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A0A08F4@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v78 - v4;
  v6 = type metadata accessor for ActivityAssetView(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v79 = &v78 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v78 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA470);
  MEMORY[0x28223BE20](v81, v17);
  v19 = &v78 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9B8);
  MEMORY[0x28223BE20](v80, v20);
  v22 = &v78 - v21;
  sub_219F45500(v1, v5, &qword_27CCD98D0);
  v23 = *(type metadata accessor for ActivityFlexibleUpdateGraphicView() + 20);
  v82 = v1;
  memcpy(v116, (v1 + v23), 0x2C0uLL);
  if (sub_219FB2448(v116) == 1)
  {
    sub_219FB2474(v115);
  }

  else
  {
    sub_219F45500(v116, v115, &qword_27CCDA9B0);
    memcpy(v115, v116, sizeof(v115));
  }

  *v10 = swift_getKeyPath();
  *(v10 + 24) = 0u;
  v10[40] = 0;
  *(v10 + 8) = 0u;
  v24 = &v10[v6[6]];
  v25 = v109;
  sub_219F5EC1C(v109);
  v26 = v109[9];
  *(v24 + 8) = v109[8];
  *(v24 + 9) = v26;
  *(v24 + 10) = v109[10];
  v27 = v109[5];
  *(v24 + 4) = v109[4];
  *(v24 + 5) = v27;
  v28 = v109[7];
  *(v24 + 6) = v109[6];
  *(v24 + 7) = v28;
  v29 = v109[1];
  *v24 = v109[0];
  *(v24 + 1) = v29;
  v30 = v109[3];
  *(v24 + 2) = v109[2];
  *(v24 + 3) = v30;
  v31 = &v10[v6[7]];
  sub_219F5EC1C(v110);
  v32 = v110[9];
  *(v31 + 8) = v110[8];
  *(v31 + 9) = v32;
  *(v31 + 10) = v110[10];
  v33 = v110[5];
  *(v31 + 4) = v110[4];
  *(v31 + 5) = v33;
  v34 = v110[7];
  *(v31 + 6) = v110[6];
  *(v31 + 7) = v34;
  v35 = v110[1];
  *v31 = v110[0];
  *(v31 + 1) = v35;
  v36 = v110[3];
  *(v31 + 2) = v110[2];
  *(v31 + 3) = v36;
  v10[v6[8]] = 0;
  sub_219F4D494(v5, &v10[v6[5]], &qword_27CCD98D0);
  memcpy(v111, v115, sizeof(v111));
  if (sub_219FB24B0(v111) != 1)
  {
    v25 = v111;
    sub_219F45500(v111, v97, &qword_27CCDA4A8);
  }

  v37 = v25[9];
  v106 = v25[8];
  v107 = v37;
  v108 = v25[10];
  v38 = v25[5];
  v102 = v25[4];
  v103 = v38;
  v39 = v25[6];
  v105 = v25[7];
  v104 = v39;
  v40 = v25[1];
  v98 = *v25;
  v99 = v40;
  v41 = v25[3];
  v100 = v25[2];
  v101 = v41;
  v42 = *(v24 + 9);
  v96[8] = *(v24 + 8);
  v96[9] = v42;
  v96[10] = *(v24 + 10);
  v43 = *(v24 + 5);
  v96[4] = *(v24 + 4);
  v96[5] = v43;
  v44 = *(v24 + 7);
  v96[6] = *(v24 + 6);
  v96[7] = v44;
  v45 = *(v24 + 1);
  v96[0] = *v24;
  v96[1] = v45;
  v46 = *(v24 + 3);
  v96[2] = *(v24 + 2);
  v96[3] = v46;
  sub_219F6409C(v96, &qword_27CCDA4A8);
  v47 = v107;
  *(v24 + 8) = v106;
  *(v24 + 9) = v47;
  *(v24 + 10) = v108;
  v48 = v103;
  *(v24 + 4) = v102;
  *(v24 + 5) = v48;
  v49 = v105;
  *(v24 + 6) = v104;
  *(v24 + 7) = v49;
  v50 = v99;
  *v24 = v98;
  *(v24 + 1) = v50;
  v51 = v101;
  *(v24 + 2) = v100;
  *(v24 + 3) = v51;
  memcpy(v97, v115, sizeof(v97));
  if (sub_219FB24B0(v97) == 1)
  {
    v52 = v110;
  }

  else
  {
    v52 = &v97[176];
    sub_219F45500(&v97[176], &v85, &qword_27CCD9B40);
    sub_219F6409C(v115, &qword_27CCDA9B0);
  }

  v53 = v52[9];
  v93 = v52[8];
  v94 = v53;
  v95 = v52[10];
  v54 = v52[5];
  v89 = v52[4];
  v90 = v54;
  v55 = v52[7];
  v91 = v52[6];
  v92 = v55;
  v56 = v52[1];
  v85 = *v52;
  v86 = v56;
  v57 = v52[3];
  v87 = v52[2];
  v88 = v57;
  v58 = *(v31 + 9);
  v84[8] = *(v31 + 8);
  v84[9] = v58;
  v84[10] = *(v31 + 10);
  v59 = *(v31 + 5);
  v84[4] = *(v31 + 4);
  v84[5] = v59;
  v60 = *(v31 + 7);
  v84[6] = *(v31 + 6);
  v84[7] = v60;
  v61 = *(v31 + 1);
  v84[0] = *v31;
  v84[1] = v61;
  v62 = *(v31 + 3);
  v84[2] = *(v31 + 2);
  v84[3] = v62;
  sub_219F6409C(v84, &qword_27CCD9B40);
  v63 = v94;
  *(v31 + 8) = v93;
  *(v31 + 9) = v63;
  *(v31 + 10) = v95;
  v64 = v90;
  *(v31 + 4) = v89;
  *(v31 + 5) = v64;
  v65 = v92;
  *(v31 + 6) = v91;
  *(v31 + 7) = v65;
  v66 = v86;
  *v31 = v85;
  *(v31 + 1) = v66;
  v67 = v88;
  *(v31 + 2) = v87;
  *(v31 + 3) = v67;
  v68 = v79;
  sub_219FB24D4(v10, v79);
  sub_219FB24D4(v68, v16);
  v16[v6[8]] = 1;
  type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  sub_219FB24D4(v16, v19);
  v69 = &v19[*(v81 + 36)];
  v70 = v113;
  *v69 = v112;
  *(v69 + 1) = v70;
  *(v69 + 2) = v114;
  v71 = &v22[*(v80 + 36)];
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
  v73 = *MEMORY[0x277CE1048];
  v74 = sub_21A0E5CEC();
  (*(*(v74 - 8) + 104))(v71 + v72, v73, v74);
  *v71 = swift_getKeyPath();
  sub_219F4D494(v19, v22, &qword_27CCDA470);
  v75 = v83;
  sub_219F4D494(v22, v83, &qword_27CCDA9B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9C0);
  v77 = v75 + *(result + 36);
  *v77 = 0x3FF0000000000000;
  *(v77 + 8) = 0;
  return result;
}

uint64_t sub_21A0A101C@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v113 = &v102 - v3;
  v109 = type metadata accessor for ActivityAssetView(0);
  v5 = MEMORY[0x28223BE20](v109, v4);
  v105 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v106 = &v102 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v108 = &v102 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA470);
  MEMORY[0x28223BE20](v107, v12);
  v112 = &v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9A8);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v111 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v110 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v102 - v32;
  v34 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  sub_219F45500(v115 + *(v34 + 24), v24, &qword_27CCD98D8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_219F6409C(v24, &qword_27CCD98D8);
    return (*(v15 + 56))(v114, 1, 1, v14);
  }

  else
  {
    v103 = v14;
    v36 = v114;
    sub_219F4D494(v24, v33, &qword_27CCD98D0);
    v104 = v33;
    sub_219F45500(v33, v30, &qword_27CCD98D0);
    updated = type metadata accessor for ActivityFlexibleUpdateGraphicView();
    memcpy(v145, (v115 + *(updated + 20)), sizeof(v145));
    if (sub_219FB2448(v145) == 1)
    {
      sub_219FB2474(v144);
    }

    else
    {
      sub_219F45500(&v145[352], v144, &qword_27CCDA9B0);
      memcpy(v144, &v145[352], sizeof(v144));
    }

    v38 = v15;
    v39 = v109;
    v40 = v105;
    *v40 = swift_getKeyPath();
    *(v40 + 24) = 0u;
    v40[40] = 0;
    *(v40 + 8) = 0u;
    v41 = &v40[v39[6]];
    v42 = v141;
    sub_219F5EC1C(v141);
    v43 = v141[9];
    *(v41 + 8) = v141[8];
    *(v41 + 9) = v43;
    *(v41 + 10) = v141[10];
    v44 = v141[5];
    *(v41 + 4) = v141[4];
    *(v41 + 5) = v44;
    v45 = v141[7];
    *(v41 + 6) = v141[6];
    *(v41 + 7) = v45;
    v46 = v141[1];
    *v41 = v141[0];
    *(v41 + 1) = v46;
    v47 = v141[3];
    *(v41 + 2) = v141[2];
    *(v41 + 3) = v47;
    v48 = &v40[v39[7]];
    sub_219F5EC1C(v142);
    v49 = v142[9];
    *(v48 + 8) = v142[8];
    *(v48 + 9) = v49;
    *(v48 + 10) = v142[10];
    v50 = v142[5];
    *(v48 + 4) = v142[4];
    *(v48 + 5) = v50;
    v51 = v142[7];
    *(v48 + 6) = v142[6];
    *(v48 + 7) = v51;
    v52 = v142[1];
    *v48 = v142[0];
    *(v48 + 1) = v52;
    v53 = v142[3];
    *(v48 + 2) = v142[2];
    *(v48 + 3) = v53;
    v40[v39[8]] = 0;
    sub_219F4D494(v30, &v40[v39[5]], &qword_27CCD98D0);
    memcpy(v143, v144, sizeof(v143));
    if (sub_219FB24B0(v143) != 1)
    {
      v42 = v143;
      sub_219F45500(v143, v129, &qword_27CCDA4A8);
    }

    v54 = v42[9];
    v138 = v42[8];
    v139 = v54;
    v140 = v42[10];
    v55 = v42[5];
    v134 = v42[4];
    v135 = v55;
    v56 = v42[6];
    v137 = v42[7];
    v136 = v56;
    v57 = v42[1];
    v130 = *v42;
    v131 = v57;
    v58 = v42[2];
    v133 = v42[3];
    v132 = v58;
    v59 = *(v41 + 9);
    v128[8] = *(v41 + 8);
    v128[9] = v59;
    v128[10] = *(v41 + 10);
    v60 = *(v41 + 5);
    v128[4] = *(v41 + 4);
    v128[5] = v60;
    v61 = *(v41 + 7);
    v128[6] = *(v41 + 6);
    v128[7] = v61;
    v62 = *(v41 + 1);
    v128[0] = *v41;
    v128[1] = v62;
    v63 = *(v41 + 3);
    v128[2] = *(v41 + 2);
    v128[3] = v63;
    sub_219F6409C(v128, &qword_27CCDA4A8);
    v64 = v139;
    *(v41 + 8) = v138;
    *(v41 + 9) = v64;
    *(v41 + 10) = v140;
    v65 = v135;
    *(v41 + 4) = v134;
    *(v41 + 5) = v65;
    v66 = v137;
    *(v41 + 6) = v136;
    *(v41 + 7) = v66;
    v67 = v131;
    *v41 = v130;
    *(v41 + 1) = v67;
    v68 = v133;
    *(v41 + 2) = v132;
    *(v41 + 3) = v68;
    memcpy(v129, v144, sizeof(v129));
    if (sub_219FB24B0(v129) == 1)
    {
      v69 = v142;
    }

    else
    {
      v69 = &v129[176];
      sub_219F45500(&v129[176], &v117, &qword_27CCD9B40);
      sub_219F6409C(v144, &qword_27CCDA9B0);
    }

    v70 = v103;
    v71 = v69[9];
    v125 = v69[8];
    v126 = v71;
    v127 = v69[10];
    v72 = v69[5];
    v121 = v69[4];
    v122 = v72;
    v73 = v69[7];
    v123 = v69[6];
    v124 = v73;
    v74 = v69[1];
    v117 = *v69;
    v118 = v74;
    v75 = v69[3];
    v119 = v69[2];
    v120 = v75;
    v76 = *(v48 + 9);
    v116[8] = *(v48 + 8);
    v116[9] = v76;
    v116[10] = *(v48 + 10);
    v77 = *(v48 + 5);
    v116[4] = *(v48 + 4);
    v116[5] = v77;
    v78 = *(v48 + 7);
    v116[6] = *(v48 + 6);
    v116[7] = v78;
    v79 = *(v48 + 1);
    v116[0] = *v48;
    v116[1] = v79;
    v80 = *(v48 + 3);
    v116[2] = *(v48 + 2);
    v116[3] = v80;
    sub_219F6409C(v116, &qword_27CCD9B40);
    v81 = v126;
    *(v48 + 8) = v125;
    *(v48 + 9) = v81;
    *(v48 + 10) = v127;
    v82 = v122;
    *(v48 + 4) = v121;
    *(v48 + 5) = v82;
    v83 = v124;
    *(v48 + 6) = v123;
    *(v48 + 7) = v83;
    v84 = v118;
    *v48 = v117;
    *(v48 + 1) = v84;
    v85 = v120;
    *(v48 + 2) = v119;
    *(v48 + 3) = v85;
    v86 = v40;
    v87 = v106;
    sub_219FB24D4(v86, v106);
    v88 = v87;
    v89 = v108;
    sub_219FB24D4(v88, v108);
    *(v89 + v39[8]) = 1;
    sub_21A0E5E3C();
    sub_21A0E52AC();
    v90 = v112;
    sub_219FB24D4(v89, v112);
    v91 = (v90 + *(v107 + 36));
    v92 = v147;
    *v91 = v146;
    v91[1] = v92;
    v91[2] = v148;
    v93 = sub_21A0E57FC();
    v94 = v113;
    (*(*(v93 - 8) + 56))(v113, 1, 1, v93);
    v95 = sub_21A0E589C();
    sub_219F6409C(v94, &qword_27CCD9FC8);
    sub_219F6409C(v104, &qword_27CCD98D0);
    KeyPath = swift_getKeyPath();
    v97 = v90;
    v98 = v111;
    sub_219F4D494(v97, v111, &qword_27CCDA470);
    v99 = (v98 + *(v70 + 36));
    *v99 = KeyPath;
    v99[1] = v95;
    v100 = v98;
    v101 = v110;
    sub_219F4D494(v100, v110, &qword_27CCDA9A8);
    sub_219F4D494(v101, v36, &qword_27CCDA9A8);
    return (*(v38 + 56))(v36, 0, 1, v70);
  }
}

uint64_t sub_21A0A1998@<X0>(uint64_t a1@<X8>)
{
  sub_21A0A08F4(a1);
  v2 = sub_21A0E5E2C();
  v4 = v3;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA998) + 36);
  sub_21A0A101C(v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA9A0);
  v7 = (v5 + *(result + 36));
  *v7 = v2;
  v7[1] = v4;
  return result;
}

uint64_t sub_21A0A1A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = &v36 - v6;
  v7 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NationalElectionTheme();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1D0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for NationalElectionViewData();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NationalElectionWatchContentView();
  v39 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 24);
  v30 = type metadata accessor for NationalElectionUpdate(0);
  v31 = *(*(v30 - 8) + 56);
  v38 = v29;
  v31(&v28[v29], 1, 1, v30);
  v40 = a1;
  sub_21A0A42B4(a1, v28, type metadata accessor for NationalElectionTheme);
  v32 = v37;
  sub_21A0A42B4(v28, v14, type metadata accessor for NationalElectionTheme);
  sub_21A0A42B4(v32, v10, type metadata accessor for NationalElectionContentState);
  sub_21A0D61F0(v14, v10, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_21A0A431C(v32, type metadata accessor for NationalElectionContentState);
    sub_21A0A431C(v40, type metadata accessor for NationalElectionStaticAttributes);
    sub_219F6409C(v18, &qword_27CCDB1D0);
    sub_21A0A431C(v28, type metadata accessor for NationalElectionTheme);
    sub_219F6409C(&v28[v38], &qword_27CCDB1C8);
    return (*(v39 + 56))(v41, 1, 1, v24);
  }

  else
  {
    sub_21A0A424C(v18, v23, type metadata accessor for NationalElectionViewData);
    sub_21A0A42B4(v23, &v28[*(v24 + 20)], type metadata accessor for NationalElectionViewData);
    sub_21A0A42B4(v28, v14, type metadata accessor for NationalElectionTheme);
    sub_21A0A42B4(v32, v10, type metadata accessor for NationalElectionContentState);
    v34 = v36;
    sub_21A0D68E4(v14, v10, v36);
    sub_21A0A431C(v32, type metadata accessor for NationalElectionContentState);
    sub_21A0A431C(v40, type metadata accessor for NationalElectionStaticAttributes);
    sub_21A0A431C(v23, type metadata accessor for NationalElectionViewData);
    sub_219FF0CE0(v34, &v28[v38]);
    v35 = v41;
    sub_21A0A42B4(v28, v41, type metadata accessor for NationalElectionWatchContentView);
    (*(v39 + 56))(v35, 0, 1, v24);
    return sub_21A0A431C(v28, type metadata accessor for NationalElectionWatchContentView);
  }
}

uint64_t type metadata accessor for NationalElectionWatchContentView()
{
  result = qword_27CCDD828;
  if (!qword_27CCDD828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A0A1FF0()
{
  sub_21A0E541C();
  type metadata accessor for ActivityColorEnvironment();
  return sub_21A0E54BC();
}

uint64_t sub_21A0A202C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD838);
  sub_21A0A22CC(v1, v3);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD840) + 36)) = xmmword_21A1022A0;
  v4 = v1 + *(type metadata accessor for NationalElectionTheme() + 40);
  v5 = *(v4 + 32);
  v6 = *(v4 + 64);
  v24[3] = *(v4 + 48);
  v24[4] = v6;
  v25 = *(v4 + 80);
  v7 = *(v4 + 16);
  v24[0] = *v4;
  v24[1] = v7;
  v24[2] = v5;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD848) + 36);
  v9 = *(v4 + 48);
  *(v8 + 32) = *(v4 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(v4 + 64);
  *(v8 + 80) = *(v4 + 80);
  v10 = *(v4 + 16);
  *v8 = *v4;
  *(v8 + 16) = v10;
  v11 = type metadata accessor for NewsWatchContentViewModifier();
  v12 = *(v11 + 20);
  *(v8 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  swift_storeEnumTagMultiPayload();
  v13 = v8 + *(v11 + 24);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD850) + 36);
  sub_21A0A42B4(v1, v14, type metadata accessor for NationalElectionTheme);
  v15 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v16 = v14 + *(v15 + 20);
  *v16 = swift_getKeyPath();
  *(v16 + 96) = 0;
  v17 = v14 + *(v15 + 24);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD858) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF8) + 28);
  v20 = *MEMORY[0x277CDF3D0];
  v21 = sub_21A0E524C();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  return sub_219F45500(v24, v23, &qword_27CCDAB00);
}

uint64_t sub_21A0A22CC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v163 = v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD860);
  MEMORY[0x28223BE20](v157, v4);
  v140 = (&v135 - v5);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD868);
  v7 = MEMORY[0x28223BE20](v137, v6);
  v138 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v139 = &v135 - v10;
  v11 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v152 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD870);
  MEMORY[0x28223BE20](v153, v14);
  v156 = (&v135 - v15);
  v149 = sub_21A0E558C();
  v144 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v16);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_21A0E536C();
  v143 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v18);
  v141 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB240);
  v148 = *(v150 - 8);
  v21 = MEMORY[0x28223BE20](v150, v20);
  v145 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v147 = &v135 - v24;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD878);
  MEMORY[0x28223BE20](v162, v25);
  v155 = &v135 - v26;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD880);
  MEMORY[0x28223BE20](v159, v27);
  v161 = &v135 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD888);
  MEMORY[0x28223BE20](v160, v29);
  v151 = (&v135 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD890);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v154 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v158 = (&v135 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v135 - v39;
  v41 = type metadata accessor for NationalElectionUpdate(0);
  v42 = *(v41 - 8);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = (&v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44, v47);
  v49 = (&v135 - v48);
  v50 = type metadata accessor for NationalElectionWatchContentView();
  sub_219F45500(v2 + *(v50 + 24), v40, &qword_27CCDB1C8);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_219F6409C(v40, &qword_27CCDB1C8);
    sub_21A0E5E3C();
    sub_21A0E52AC();
    v153 = v188;
    v156 = v192;
    v157 = v190;
    v155 = v193;
    v172 = 1;
    v171 = v189;
    v170 = v191;
    v51 = sub_21A0E559C();
    v52 = v158;
    *v158 = v51;
    v52[1] = 0;
    *(v52 + 16) = 1;
    v53 = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD898);
    v55 = v2;
    sub_21A0A3774(v2, v53 + *(v54 + 44));
    v56 = v2 + *(v50 + 20);
    v57 = type metadata accessor for PresidentialElectionData(0);
    v58 = (v56 + v57[5]);
    v59 = *v58;
    v60 = type metadata accessor for PresidentialElectionData.Entity(0);
    v61 = *(v60 + 28);
    v62 = type metadata accessor for ElectionEntityTheme();
    v63 = v58 + v61 + *(v62 + 32);
    *(v174 + 13) = *(v63 + 61);
    v64 = *(v63 + 2);
    v174[0] = *(v63 + 3);
    v65 = *(v63 + 1);
    v173[2] = *(v63 + 2);
    v66 = *v63;
    v173[1] = *(v63 + 1);
    v173[0] = *v63;
    v67 = (v56 + v57[6]);
    v68 = v67 + *(v60 + 28) + *(v62 + 32);
    *&v177[13] = *(v68 + 61);
    v69 = *(v68 + 1);
    v70 = *(v68 + 3);
    v176 = *(v68 + 2);
    *v177 = v70;
    v71 = *(v68 + 1);
    v175[0] = *v68;
    v175[1] = v71;
    v72 = v57[7];
    v73 = *(v63 + 3);
    *(&v187[3] + 13) = *(v63 + 61);
    v187[2] = v64;
    v187[3] = v73;
    v74 = *v67;
    v187[0] = v66;
    v187[1] = v65;
    v75 = *(v56 + v72);
    *&v168[3] = v175[0];
    v76 = *(v68 + 3);
    *&v168[64] = *(v68 + 61);
    *&v168[51] = v76;
    *&v168[35] = v176;
    *&v168[19] = v69;
    sub_219F72F28(v173, v186);
    sub_219F72F28(v175, v186);
    sub_21A0E5E3C();
    sub_21A0E52AC();
    *&v169[3] = v194;
    *&v169[19] = v195;
    *&v169[35] = v196;
    LOBYTE(v57) = sub_21A0E579C();
    sub_21A0E51EC();
    LOBYTE(v186[0]) = 0;
    *v178 = v59;
    *&v178[1] = v74;
    *&v178[2] = v75;
    *&v178[7] = v187[2];
    *&v178[9] = v187[3];
    *(&v178[10] + 5) = *(&v187[3] + 13);
    *&v178[3] = v187[0];
    *&v178[5] = v187[1];
    *(&v178[11] + 5) = *v168;
    *(&v178[19] + 5) = *&v168[64];
    *(&v178[17] + 5) = *&v168[48];
    *(&v178[15] + 5) = *&v168[32];
    *(&v178[13] + 5) = *&v168[16];
    HIDWORD(v178[26]) = *&v169[47];
    *(&v178[24] + 5) = *&v169[32];
    *(&v178[22] + 5) = *&v169[16];
    *(&v178[20] + 5) = *v169;
    LOBYTE(v178[27]) = v57;
    v178[28] = v77;
    v178[29] = v78;
    v178[30] = v79;
    v178[31] = v80;
    LOBYTE(v178[32]) = 0;
    v81 = sub_21A0E55BC();
    LOBYTE(v181[0]) = 1;
    sub_21A0A39D4(v55, v187);
    memcpy(v179, v187, 0x15DuLL);
    memcpy(v180, v187, 0x15DuLL);
    sub_219F45500(v179, v186, &qword_27CCDB2D0);
    sub_219F6409C(v180, &qword_27CCDB2D0);
    memcpy(&v167[7], v179, 0x15DuLL);
    LOBYTE(v61) = v181[0];
    LOBYTE(v60) = sub_21A0E578C();
    sub_21A0E51EC();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    LOBYTE(v187[0]) = 0;
    sub_21A0E591C();
    sub_21A0E586C();
    v90 = sub_21A0E58CC();

    KeyPath = swift_getKeyPath();
    v181[0] = v81;
    v181[1] = 0;
    LOBYTE(v181[2]) = v61;
    memcpy(&v181[2] + 1, v167, 0x164uLL);
    LOBYTE(v181[47]) = v60;
    v181[48] = v83;
    v181[49] = v85;
    v181[50] = v87;
    v181[51] = v89;
    LOBYTE(v181[52]) = 0;
    v181[53] = KeyPath;
    v181[54] = v90;
    sub_21A0E5E3C();
    sub_21A0E52AC();
    v152 = v199;
    v150 = v201;
    v148 = v197;
    v149 = v202;
    v184 = 1;
    v183 = v198;
    v182 = v200;
    LOBYTE(KeyPath) = v172;
    LOBYTE(v81) = v171;
    LOBYTE(v90) = v170;
    v92 = v154;
    sub_219F45500(v53, v154, &qword_27CCDD890);
    memcpy(v166, v178, sizeof(v166));
    memcpy(v165, v181, sizeof(v165));
    LOBYTE(v60) = v184;
    LOBYTE(v58) = v183;
    LOBYTE(v61) = v182;
    v93 = v151;
    *v151 = 0;
    *(v93 + 8) = KeyPath;
    *(v93 + 16) = v153;
    *(v93 + 24) = v81;
    v94 = v156;
    *(v93 + 32) = v157;
    *(v93 + 40) = v90;
    v95 = v155;
    *(v93 + 48) = v94;
    *(v93 + 56) = v95;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD8A0);
    sub_219F45500(v92, v93 + v96[12], &qword_27CCDD890);
    v97 = v96[16];
    memcpy(v185, v166, 0x101uLL);
    memcpy((v93 + v97), v166, 0x101uLL);
    v98 = v96[20];
    memcpy(v186, v165, sizeof(v186));
    memcpy((v93 + v98), v165, 0x1B8uLL);
    v99 = v93 + v96[24];
    *v99 = 0;
    *(v99 + 8) = v60;
    *(v99 + 16) = v148;
    *(v99 + 24) = v58;
    *(v99 + 32) = v152;
    *(v99 + 40) = v61;
    v100 = v149;
    *(v99 + 48) = v150;
    *(v99 + 56) = v100;
    memcpy(v187, v165, 0x1B8uLL);
    sub_219F45500(v178, v164, &qword_27CCDD8A8);
    sub_219F45500(v181, v164, &qword_27CCDD8B0);
    sub_219F45500(v185, v164, &qword_27CCDD8A8);
    sub_219F45500(v186, v164, &qword_27CCDD8B0);
    sub_219F6409C(v187, &qword_27CCDD8B0);
    memcpy(v164, v166, 0x101uLL);
    sub_219F6409C(v164, &qword_27CCDD8A8);
    sub_219F6409C(v92, &qword_27CCDD890);
    sub_219F45500(v93, v161, &qword_27CCDD888);
    swift_storeEnumTagMultiPayload();
    sub_21A0A416C();
    sub_219F3E490(&qword_27CCDD8D8, &qword_27CCDD888);
    sub_21A0E56BC();
    sub_219F6409C(v181, &qword_27CCDD8B0);
    sub_219F6409C(v178, &qword_27CCDD8A8);
    sub_219F6409C(v93, &qword_27CCDD888);
    return sub_219F6409C(v158, &qword_27CCDD890);
  }

  else
  {
    sub_21A0A424C(v40, v49, type metadata accessor for NationalElectionUpdate);
    v158 = v49;
    sub_21A0A42B4(v49, v46, type metadata accessor for NationalElectionUpdate);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v102 = v152;
      sub_21A0A424C(v46, v152, type metadata accessor for NationalElectionUpdate.Hero);
      sub_21A0E5E3C();
      sub_21A0E52AC();
      v154 = *&v187[0];
      v151 = *&v187[2];
      v135 = *&v187[1];
      v136 = *(&v187[2] + 1);
      LOBYTE(v181[0]) = 1;
      v165[0] = BYTE8(v187[0]);
      v164[0] = BYTE8(v187[1]);
      v103 = v102;
      v104 = v139;
      sub_21A0A42B4(v103, v139, type metadata accessor for NationalElectionUpdate.Hero);
      v105 = v141;
      sub_21A0E535C();
      v106 = v142;
      sub_21A0E557C();
      v107 = sub_21A0A4664(&qword_27CCDB298, MEMORY[0x277CDF870]);
      v108 = sub_21A0A4664(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
      v110 = v146;
      v109 = v147;
      v111 = v149;
      sub_21A0E522C();
      (*(v144 + 8))(v106, v111);
      (*(v143 + 8))(v105, v110);
      v112 = v148;
      v113 = v150;
      (*(v148 + 16))(v145, v109, v150);
      v186[0] = v110;
      v186[1] = v111;
      v186[2] = v107;
      v186[3] = v108;
      swift_getOpaqueTypeConformance2();
      v114 = sub_21A0E52CC();
      (*(v112 + 8))(v109, v113);
      v115 = v138;
      *(v104 + *(v137 + 36)) = v114;
      LOBYTE(v107) = v181[0];
      LOBYTE(v113) = v165[0];
      LOBYTE(v108) = v164[0];
      sub_219F45500(v104, v115, &qword_27CCDD868);
      v116 = v140;
      *v140 = 0;
      *(v116 + 8) = v107;
      *(v116 + 16) = v154;
      *(v116 + 24) = v113;
      *(v116 + 32) = v135;
      *(v116 + 40) = v108;
      v117 = v136;
      *(v116 + 48) = v151;
      *(v116 + 56) = v117;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD8E0);
      sub_219F45500(v115, v116 + *(v118 + 48), &qword_27CCDD868);
      sub_219F6409C(v115, &qword_27CCDD868);
      sub_219F45500(v116, v156, &qword_27CCDD860);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD8C8);
      sub_219F3E490(&qword_27CCDD8C0, &qword_27CCDD8C8);
      sub_219F3E490(&qword_27CCDD8D0, &qword_27CCDD860);
      v119 = v155;
      sub_21A0E56BC();
      sub_219F6409C(v116, &qword_27CCDD860);
      sub_219F6409C(v104, &qword_27CCDD868);
      sub_21A0A431C(v152, type metadata accessor for NationalElectionUpdate.Hero);
    }

    else
    {
      v120 = v46[1];
      v154 = *v46;
      v121 = v46[2];
      v122 = v46[3];
      v151 = v120;
      v152 = v121;
      v123 = v141;
      sub_21A0E535C();
      v124 = v142;
      sub_21A0E557C();
      v125 = sub_21A0A4664(&qword_27CCDB298, MEMORY[0x277CDF870]);
      v126 = sub_21A0A4664(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
      v127 = v146;
      v128 = v147;
      v129 = v149;
      sub_21A0E522C();
      (*(v144 + 8))(v124, v129);
      (*(v143 + 8))(v123, v127);
      v130 = v148;
      v131 = v150;
      (*(v148 + 16))(v145, v128, v150);
      *&v187[0] = v127;
      *(&v187[0] + 1) = v129;
      *&v187[1] = v125;
      *(&v187[1] + 1) = v126;
      swift_getOpaqueTypeConformance2();
      v132 = sub_21A0E52CC();
      (*(v130 + 8))(v128, v131);
      v133 = v156;
      *v156 = 0x4000000000000000;
      *(v133 + 8) = 0;
      v134 = v151;
      v133[2] = v154;
      v133[3] = v134;
      v133[4] = v152;
      v133[5] = v122;
      v133[6] = v132;

      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD8C8);
      sub_219F3E490(&qword_27CCDD8C0, &qword_27CCDD8C8);
      sub_219F3E490(&qword_27CCDD8D0, &qword_27CCDD860);
      v119 = v155;
      sub_21A0E56BC();
    }

    sub_219F45500(v119, v161, &qword_27CCDD878);
    swift_storeEnumTagMultiPayload();
    sub_21A0A416C();
    sub_219F3E490(&qword_27CCDD8D8, &qword_27CCDD888);
    sub_21A0E56BC();
    sub_219F6409C(v119, &qword_27CCDD878);
    return sub_21A0A431C(v158, type metadata accessor for NationalElectionUpdate);
  }
}

uint64_t sub_21A0A3774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for PresidentialCandidateWatchResultStackView();
  v4 = v3 - 8;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v28 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v28 - v18;
  v20 = a1 + *(type metadata accessor for NationalElectionWatchContentView() + 20);
  v21 = type metadata accessor for PresidentialElectionData(0);
  sub_21A0A42B4(v20 + *(v21 + 20), &v19[*(v4 + 28)], type metadata accessor for PresidentialElectionData.Entity);
  *v19 = 0;
  v22 = &v19[*(v4 + 32)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_21A0A42B4(v20 + *(v21 + 24), &v16[*(v4 + 28)], type metadata accessor for PresidentialElectionData.Entity);
  *v16 = 1;
  v23 = &v16[*(v4 + 32)];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_21A0A42B4(v19, v12, type metadata accessor for PresidentialCandidateWatchResultStackView);
  sub_21A0A42B4(v16, v8, type metadata accessor for PresidentialCandidateWatchResultStackView);
  v24 = v29;
  sub_21A0A42B4(v12, v29, type metadata accessor for PresidentialCandidateWatchResultStackView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD8E8);
  v26 = v24 + *(v25 + 48);
  *v26 = 0x4034000000000000;
  *(v26 + 8) = 0;
  sub_21A0A42B4(v8, v24 + *(v25 + 64), type metadata accessor for PresidentialCandidateWatchResultStackView);
  sub_21A0A431C(v16, type metadata accessor for PresidentialCandidateWatchResultStackView);
  sub_21A0A431C(v19, type metadata accessor for PresidentialCandidateWatchResultStackView);
  sub_21A0A431C(v8, type metadata accessor for PresidentialCandidateWatchResultStackView);
  return sub_21A0A431C(v12, type metadata accessor for PresidentialCandidateWatchResultStackView);
}

uint64_t sub_21A0A39D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for NationalElectionWatchContentView() + 20);
  v4 = type metadata accessor for PresidentialElectionData(0);
  v5 = v3 + *(v4 + 20);
  v6 = type metadata accessor for PresidentialElectionData.Entity(0);
  v7 = (v5 + *(v6 + 28));
  if (v7[3])
  {
    v61 = v7[3];
    v62 = v7[2];
  }

  else
  {
    v61 = v7[5];
    v62 = v7[4];
  }

  v59 = *(v5 + 16);
  v60 = *(v5 + 8);
  v57 = *(v5 + 32);
  v58 = *(v5 + 24);
  v52 = *(v5 + 40) | (*(v5 + 42) << 16);
  sub_219F79BC0(v60, v59);

  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v5 + 43) > 1u)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 92) = 62;
    v51 = 0x2000000000;
    *(v11 + 88) = 0;
  }

  else
  {
    v8 = v7 + *(type metadata accessor for ElectionEntityTheme() + 32);
    v9 = *(v8 + 3);
    v83 = *(v8 + 2);
    *v84 = v9;
    *&v84[13] = *(v8 + 61);
    v10 = *v8;
    v82 = *(v8 + 1);
    v81 = v10;
    sub_219F72F28(&v81, v105);
    v11 = v81;
    v44 = *(&v82 + 1);
    v45 = v82;
    v55 = *(&v83 + 1);
    v43 = v83;
    v56 = *(&v81 + 1);
    v53 = *&v84[8];
    v54 = *v84;
    v51 = *&v84[16] | (v84[20] << 32);
  }

  v12 = v3 + *(v4 + 24);
  v13 = *(v6 + 28);
  v14 = (v12 + v13);
  if (*(v12 + v13 + 24))
  {
    v15 = v14[2];
    v16 = *(v12 + v13 + 24);
  }

  else
  {
    v15 = v14[4];
    v16 = v14[5];
  }

  v49 = *(v12 + 16);
  v50 = *(v12 + 8);
  v47 = *(v12 + 32);
  v48 = *(v12 + 24);
  v46 = *(v12 + 40) | (*(v12 + 42) << 16);
  sub_219F79BC0(v50, v49);

  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v12 + 43) > 1u)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = 1;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    v27 = 62;
    *(v20 + 92) = 62;
    v28 = 0x2000000000;
    *(v20 + 88) = 0;
  }

  else
  {
    v17 = v14 + *(type metadata accessor for ElectionEntityTheme() + 32);
    v18 = *(v17 + 3);
    v83 = *(v17 + 2);
    *v84 = v18;
    *&v84[13] = *(v17 + 61);
    v19 = *v17;
    v82 = *(v17 + 1);
    v81 = v19;
    sub_219F72F28(&v81, v105);
    v21 = *(&v81 + 1);
    v20 = v81;
    v22 = *(&v82 + 1);
    v23 = v82;
    v24 = *(&v83 + 1);
    v25 = v83;
    v26 = *v84;
    v27 = *&v84[8];
    v28 = *&v84[16] | (v84[20] << 32);
  }

  *&v64 = v62;
  *(&v64 + 1) = v61;
  v65 = 0u;
  memset(v66, 0, 19);
  *&v66[24] = v60;
  *&v67 = v59;
  *(&v67 + 1) = v58;
  *&v68 = v57;
  *&v73 = v15;
  *(&v73 + 1) = v16;
  *&v74 = v50;
  *(&v74 + 1) = v49;
  *&v75 = v48;
  *(&v75 + 1) = v47;
  v76[2] = BYTE2(v46);
  *v76 = v46;
  memset(&v76[8], 0, 35);
  *&v77 = v20;
  *(&v77 + 1) = v21;
  *&v78 = v23;
  *(&v78 + 1) = v22;
  *&v79 = v25;
  *(&v79 + 1) = v24;
  *v80 = v26;
  *&v80[8] = v27;
  v80[20] = BYTE4(v28);
  *&v80[16] = v28;
  *&v63[151] = *v80;
  *&v63[164] = *&v80[13];
  BYTE10(v68) = BYTE2(v52);
  WORD4(v68) = v52;
  *&v69 = v11;
  *(&v69 + 1) = v56;
  *&v70 = v45;
  *(&v70 + 1) = v44;
  *&v71 = v43;
  *(&v71 + 1) = v55;
  *v72 = v54;
  *&v72[8] = v53;
  *&v63[23] = v74;
  *&v63[7] = v73;
  *&v63[103] = v77;
  *&v63[87] = *&v76[32];
  *&v63[71] = *&v76[16];
  *&v63[55] = *v76;
  *&v63[135] = v79;
  *&v63[119] = v78;
  *&v63[39] = v75;
  *(a2 + 289) = *&v63[112];
  *(a2 + 305) = *&v63[128];
  *(a2 + 321) = *&v63[144];
  *(a2 + 333) = *&v63[156];
  *(a2 + 257) = *&v63[80];
  *(a2 + 273) = *&v63[96];
  v72[20] = BYTE4(v51);
  *&v72[16] = v51;
  v88 = v71;
  *v89 = *v72;
  v29 = v64;
  v30 = v65;
  v31 = *v66;
  v32 = *&v66[16];
  v33 = v67;
  v34 = v68;
  v36 = v69;
  v35 = v70;
  *&v89[13] = *&v72[13];
  *(a2 + 160) = *&v89[16];
  *(a2 + 176) = 1;
  v81 = v29;
  v82 = v30;
  v86 = v36;
  v87 = v35;
  *&v84[16] = v33;
  v85 = v34;
  v83 = v31;
  *v84 = v32;
  v37 = *v89;
  *(a2 + 128) = v88;
  *(a2 + 144) = v37;
  v38 = v85;
  *(a2 + 64) = *&v84[16];
  *(a2 + 80) = v38;
  v39 = v87;
  *(a2 + 96) = v86;
  *(a2 + 112) = v39;
  v40 = v82;
  *a2 = v81;
  *(a2 + 16) = v40;
  v41 = *v84;
  *(a2 + 32) = v83;
  *(a2 + 48) = v41;
  *(a2 + 168) = 0;
  *(a2 + 225) = *&v63[48];
  *(a2 + 241) = *&v63[64];
  *(a2 + 177) = *v63;
  *(a2 + 193) = *&v63[16];
  *(a2 + 209) = *&v63[32];
  v90[0] = v15;
  v90[1] = v16;
  v90[2] = v50;
  v90[3] = v49;
  v90[4] = v48;
  v90[5] = v47;
  v92 = BYTE2(v46);
  v91 = v46;
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  v95 = v20;
  v96 = v21;
  v97 = v23;
  v98 = v22;
  v99 = v25;
  v100 = v24;
  v101 = v26;
  v102 = v27;
  v104 = BYTE4(v28);
  v103 = v28;
  sub_219F45500(&v64, v105, &qword_27CCDB2E8);
  sub_219F45500(&v73, v105, &qword_27CCDB2E8);
  sub_219F6409C(v90, &qword_27CCDB2E8);
  v105[0] = v62;
  v105[1] = v61;
  v106 = 0u;
  memset(v107, 0, sizeof(v107));
  v108 = v60;
  v109 = v59;
  v110 = v58;
  v111 = v57;
  v113 = BYTE2(v52);
  v112 = v52;
  v114 = v11;
  v115 = v56;
  v116 = v45;
  v117 = v44;
  v118 = v43;
  v119 = v55;
  v120 = v54;
  v121 = v53;
  v123 = BYTE4(v51);
  v122 = v51;
  return sub_219F6409C(v105, &qword_27CCDB2E8);
}

uint64_t sub_21A0A40A4(uint64_t a1)
{
  v2 = sub_21A0E524C();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21A0E542C();
}

unint64_t sub_21A0A416C()
{
  result = qword_27CCDD8B8;
  if (!qword_27CCDD8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD878);
    sub_219F3E490(&qword_27CCDD8C0, &qword_27CCDD8C8);
    sub_219F3E490(&qword_27CCDD8D0, &qword_27CCDD860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD8B8);
  }

  return result;
}

uint64_t sub_21A0A424C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0A42B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0A431C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A0A437C()
{
  result = qword_27CCDD8F0;
  if (!qword_27CCDD8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD858);
    sub_21A0A4434();
    sub_219F3E490(&qword_27CCDAB40, &qword_27CCDAAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD8F0);
  }

  return result;
}

unint64_t sub_21A0A4434()
{
  result = qword_27CCDD8F8;
  if (!qword_27CCDD8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD850);
    sub_21A0A44F0();
    sub_21A0A4664(&qword_27CCDB308, type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD8F8);
  }

  return result;
}

unint64_t sub_21A0A44F0()
{
  result = qword_27CCDD900;
  if (!qword_27CCDD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD848);
    sub_21A0A45AC();
    sub_21A0A4664(&qword_27CCDAB38, type metadata accessor for NewsWatchContentViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD900);
  }

  return result;
}

unint64_t sub_21A0A45AC()
{
  result = qword_27CCDD908;
  if (!qword_27CCDD908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD840);
    sub_219F3E490(&qword_27CCDD910, &qword_27CCDD918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD908);
  }

  return result;
}

uint64_t sub_21A0A4664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NationalElectionTheme.president.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 NationalElectionTheme.president.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t NationalElectionTheme.senate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v4 = v1[6];
  v3 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 NationalElectionTheme.senate.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[2] = v5;
  v1[3].n128_u64[0] = v2;
  v1[3].n128_u64[1] = v3;
  return result;
}

uint64_t NationalElectionTheme.house.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[9];
  v4 = v1[10];
  v3 = v1[11];
  *a1 = v1[8];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 NationalElectionTheme.house.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[4] = v5;
  v1[5].n128_u64[0] = v2;
  v1[5].n128_u64[1] = v3;
  return result;
}

uint64_t NationalElectionTheme.winnerBadge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 129);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;

  return sub_219F79C1C();
}

__n128 NationalElectionTheme.winnerBadge.setter(uint64_t a1)
{
  v7 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);

  sub_219F79CD8();
  result = v7;
  *(v1 + 96) = v7;
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 129) = v5;
  return result;
}

uint64_t NationalElectionTheme.minimalTheme.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 32);

  return sub_21A0A726C(a1, v3);
}

__n128 NationalElectionTheme.keylineTint.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 36);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 61) = *(v3 + 61);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 NationalElectionTheme.keylineTint.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 36);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 61) = *(a1 + 61);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t NationalElectionTheme.backgroundTint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 40);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_219F45500(v12, v11, &qword_27CCDAB00);
}

__n128 NationalElectionTheme.backgroundTint.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 40);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_219F6409C(v9, &qword_27CCDAB00);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t NationalElectionTheme.systemActionForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 44);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_219F45500(v12, v11, &qword_27CCDAB00);
}

__n128 NationalElectionTheme.systemActionForeground.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NationalElectionTheme() + 44);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_219F6409C(v9, &qword_27CCDAB00);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

unint64_t sub_21A0A4E68()
{
  v1 = *v0;
  v2 = 0x6E65646973657270;
  v3 = 0x756F72676B636162;
  if (v1 != 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x546C616D696E696DLL;
  if (v1 != 4)
  {
    v4 = 0x54656E696C79656BLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6573756F68;
  if (v1 != 2)
  {
    v5 = 0x614272656E6E6977;
  }

  if (*v0)
  {
    v2 = 0x6574616E6573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21A0A4F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0A78CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A0A4FBC(uint64_t a1)
{
  v2 = sub_21A0A72DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0A4FF8(uint64_t a1)
{
  v2 = sub_21A0A72DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionTheme.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v40 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0A72DC();
  sub_21A0E6EAC();
  v10 = *(v3 + 8);
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  *&v63 = *v3;
  *(&v63 + 1) = v10;
  *&v64 = v12;
  *(&v64 + 1) = v11;
  LOBYTE(v57) = 0;
  sub_21A0A7330();

  sub_21A0E6BBC();

  if (!v2)
  {
    v13 = *(v3 + 40);
    v15 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v63 = *(v3 + 32);
    *(&v63 + 1) = v13;
    *&v64 = v15;
    *(&v64 + 1) = v14;
    LOBYTE(v57) = 1;

    sub_21A0E6BBC();

    v16 = *(v3 + 72);
    v18 = *(v3 + 80);
    v17 = *(v3 + 88);
    *&v63 = *(v3 + 64);
    *(&v63 + 1) = v16;
    *&v64 = v18;
    *(&v64 + 1) = v17;
    LOBYTE(v57) = 2;

    sub_21A0E6BBC();

    v19 = *(v3 + 104);
    v21 = *(v3 + 112);
    v20 = *(v3 + 120);
    v22 = *(v3 + 128);
    v23 = *(v3 + 129);
    *&v63 = *(v3 + 96);
    *(&v63 + 1) = v19;
    *&v64 = v21;
    *(&v64 + 1) = v20;
    LOBYTE(v65) = v22;
    *(&v65 + 1) = v23;
    LOBYTE(v57) = 3;

    sub_219F79C1C();
    sub_21A0A7384();
    sub_21A0E6BBC();

    sub_219F79CD8();
    v24 = type metadata accessor for NationalElectionTheme();
    v74 = 4;
    type metadata accessor for ActivityMinimalAppearanceTheme();
    sub_21A0A7604(&qword_27CCDD940, type metadata accessor for ActivityMinimalAppearanceTheme);
    sub_21A0E6B6C();
    v25 = (v3 + v24[9]);
    v26 = v25[3];
    v72 = v25[2];
    *v73 = v26;
    *&v73[13] = *(v25 + 61);
    v27 = v25[1];
    v70 = *v25;
    v71 = v27;
    v69 = 5;
    sub_219F81DC8();
    sub_21A0E6B6C();
    v28 = (v3 + v24[10]);
    v29 = v28[3];
    v30 = v28[1];
    v65 = v28[2];
    v66 = v29;
    v31 = v28[3];
    v67 = v28[4];
    v32 = v28[1];
    v63 = *v28;
    v64 = v32;
    v59 = v65;
    v60 = v31;
    v61 = v28[4];
    v68 = *(v28 + 10);
    v62 = *(v28 + 10);
    v57 = v63;
    v58 = v30;
    v56 = 6;
    sub_219F45500(&v63, v51, &qword_27CCDAB00);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0);
    sub_21A0A7480(&qword_27CCDD948);
    v75 = v33;
    sub_21A0E6B6C();
    v49[2] = v59;
    v49[3] = v60;
    v49[4] = v61;
    v50 = v62;
    v49[0] = v57;
    v49[1] = v58;
    sub_219F6409C(v49, &qword_27CCDAB00);
    v34 = v3 + v24[11];
    v35 = *(v34 + 48);
    v36 = *(v34 + 16);
    v52 = *(v34 + 32);
    v53 = v35;
    v37 = *(v34 + 48);
    v54 = *(v34 + 64);
    v38 = *(v34 + 16);
    v51[0] = *v34;
    v51[1] = v38;
    v45 = v52;
    v46 = v37;
    v47 = *(v34 + 64);
    v55 = *(v34 + 80);
    v48 = *(v34 + 80);
    v43 = v51[0];
    v44 = v36;
    v42 = 7;
    sub_219F45500(v51, v40, &qword_27CCDAB00);
    sub_21A0E6B6C();
    v40[2] = v45;
    v40[3] = v46;
    v40[4] = v47;
    v41 = v48;
    v40[0] = v43;
    v40[1] = v44;
    sub_219F6409C(v40, &qword_27CCDAB00);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NationalElectionTheme.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v63 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v63 - v6;
  v68 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v10 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v64 = &v63 - v13;
  v14 = *(v1 + 24);
  sub_219F6B0E4(a1, *v1);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v14);
  v15 = *(v1 + 56);
  sub_219F6B0E4(a1, *(v1 + 32));
  sub_21A0E626C();
  MEMORY[0x21CED2490](v15);
  v16 = *(v1 + 88);
  sub_219F6B0E4(a1, *(v1 + 64));
  sub_21A0E626C();
  MEMORY[0x21CED2490](v16);
  v17 = *(v1 + 128);
  v18 = *(v2 + 129);
  v67 = v2;
  v19 = *(v2 + 130);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v17);
  sub_21A0E626C();
  if (v18 == 9)
  {
    sub_21A0E6DCC();
    if (v19 != 3)
    {
LABEL_3:
      sub_21A0E6DCC();
      sub_21A0E626C();

      goto LABEL_6;
    }
  }

  else
  {
    sub_21A0E6DCC();
    sub_219F7A96C(a1, v18);
    if (v19 != 3)
    {
      goto LABEL_3;
    }
  }

  sub_21A0E6DCC();
LABEL_6:
  v20 = v67;
  v66 = type metadata accessor for NationalElectionTheme();
  v21 = v64;
  sub_219F45500(v20 + *(v66 + 32), v64, &qword_27CCD9628);
  if (v65[6](v21, 1, v68) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_219F88A5C(v21, v10);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *(v10 + *(v4 + 28)));
    v22 = *(v4 + 32);
    v65 = v10;
    v23 = *(v10 + v22);
    MEMORY[0x21CED2490](*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v23 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v26 = *(v63 + 72);
      do
      {
        sub_219F45500(v25, v7, &qword_27CCD98C8);
        v27 = sub_219F73104();
        sub_219FC5A20(a1, v4, v27);
        sub_219F6409C(v7, &qword_27CCD98C8);
        v25 += v26;
        --v24;
      }

      while (v24);
    }

    v28 = v68;
    v29 = v65;
    v30 = v65 + *(v68 + 20);
    v31 = *(v30 + 9);
    v96 = *(v30 + 8);
    v97 = v31;
    v98 = *(v30 + 10);
    v32 = *(v30 + 5);
    v92 = *(v30 + 4);
    v93 = v32;
    v33 = *(v30 + 7);
    v94 = *(v30 + 6);
    v95 = v33;
    v34 = *(v30 + 1);
    v88 = *v30;
    v89 = v34;
    v35 = *(v30 + 3);
    v90 = *(v30 + 2);
    v91 = v35;
    sub_21A02EB6C(a1);
    v36 = (v29 + *(v28 + 24));
    v37 = v36[9];
    v85 = v36[8];
    v86 = v37;
    v87 = v36[10];
    v38 = v36[5];
    v81 = v36[4];
    v82 = v38;
    v39 = v36[7];
    v83 = v36[6];
    v84 = v39;
    v40 = v36[1];
    v77 = *v36;
    v78 = v40;
    v41 = v36[3];
    v79 = v36[2];
    v80 = v41;
    sub_21A02EB6C(a1);
    sub_21A0A755C(v29, type metadata accessor for ActivityMinimalAppearanceTheme);
    v20 = v67;
  }

  v42 = v66;
  v43 = (v20 + *(v66 + 36));
  v44 = *(v43 + 6);
  v45 = *(v43 + 16) | (*(v43 + 68) << 32);
  if ((~*(v43 + 12) & 0xFFFFFFFE) != 0 || (v45 & 0xFE00000000) != 0x200000000)
  {
    v46 = *(v43 + 7);
    v47 = v43[1];
    v69 = *v43;
    v70 = v47;
    v71 = v43[2];
    v72 = v44;
    v73 = v46;
    BYTE4(v74) = BYTE4(v45);
    LODWORD(v74) = v45;
    sub_21A0E6DCC();
    ActivityColor.hash(into:)();
  }

  else
  {
    sub_21A0E6DCC();
  }

  v48 = (v20 + *(v42 + 40));
  v49 = *(v48 + 6);
  v50 = *(v48 + 8);
  if ((~*(v48 + 12) & 0xFFFFFFFE) != 0 || (v50 & 0xFE00000000) != 0x200000000)
  {
    v52 = *(v48 + 9);
    v51 = *(v48 + 10);
    v53 = *(v48 + 7);
    v54 = v48[1];
    v69 = *v48;
    v70 = v54;
    v71 = v48[2];
    sub_21A0E6DCC();
    v72 = v49;
    v73 = v53;
    v74 = v50;
    v75 = v52;
    v76 = v51;
    ActivityColor.hash(into:)();
    sub_219F91544(a1, v52);
    sub_219F70020(a1, v51);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v55 = (v20 + *(v42 + 44));
  v56 = *(v55 + 6);
  v57 = *(v55 + 8);
  if ((~*(v55 + 12) & 0xFFFFFFFE) == 0 && (v57 & 0xFE00000000) == 0x200000000)
  {
    return sub_21A0E6DCC();
  }

  v60 = *(v55 + 9);
  v59 = *(v55 + 10);
  v61 = *(v55 + 7);
  v62 = v55[1];
  v69 = *v55;
  v70 = v62;
  v71 = v55[2];
  sub_21A0E6DCC();
  v72 = v56;
  v73 = v61;
  v74 = v57;
  v75 = v60;
  v76 = v59;
  ActivityColor.hash(into:)();
  sub_219F91544(a1, v60);
  return sub_219F70020(a1, v59);
}

uint64_t NationalElectionTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t NationalElectionTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD950);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v49 - v8;
  v10 = type metadata accessor for NationalElectionTheme();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11[10];
  v16 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v17 = *(*(v16 - 8) + 56);
  v97 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = &v14[v11[11]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *(v18 + 3) = xmmword_21A0EB370;
  v18[68] = 2;
  *(v18 + 16) = 0;
  v19 = &v14[v11[12]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = xmmword_21A0EB370;
  *(v19 + 8) = 0x200000000;
  *(v19 + 9) = 0;
  v55 = v19;
  v56 = v14;
  *(v19 + 10) = 0;
  v20 = &v14[v11[13]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 3) = xmmword_21A0EB370;
  *(v20 + 9) = 0;
  *(v20 + 10) = 0;
  *(v20 + 8) = 0x200000000;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_21A0A72DC();
  v22 = v54;
  sub_21A0E6E7C();
  if (v22)
  {
    v23 = v56;
    __swift_destroy_boxed_opaque_existential_1(v57);
    v24 = v55;
    sub_219F6409C(v23 + v97, &qword_27CCD9628);
    v25 = *(v24 + 3);
    v87 = *(v24 + 2);
    v88 = v25;
    v89 = *(v24 + 4);
    v90 = *(v24 + 10);
    v26 = *(v24 + 1);
    v85 = *v24;
    v86 = v26;
    sub_219F6409C(&v85, &qword_27CCDAB00);
    v27 = *(v20 + 3);
    v93 = *(v20 + 2);
    v94 = v27;
    v95 = *(v20 + 4);
    v96 = *(v20 + 10);
    v28 = *(v20 + 1);
    v91 = *v20;
    v92 = v28;
    return sub_219F6409C(&v91, &qword_27CCDAB00);
  }

  else
  {
    LOBYTE(v85) = 0;
    sub_21A0A73D8();
    sub_21A0E6ADC();
    v29 = v92;
    v30 = v56;
    *v56 = v91;
    *(v30 + 16) = v29;
    LOBYTE(v85) = 1;
    v54 = v9;
    sub_21A0E6ADC();
    v49[1] = 0;
    v31 = v92;
    *(v30 + 32) = v91;
    *(v30 + 48) = v31;
    LOBYTE(v85) = 2;
    sub_21A0E6ADC();
    v32 = v97;
    v33 = v92;
    *(v30 + 64) = v91;
    *(v30 + 80) = v33;
    LOBYTE(v85) = 3;
    sub_21A0A742C();
    sub_21A0E6ADC();
    v34 = *(&v91 + 1);
    v35 = v93;
    v36 = *(&v93 + 1);
    *(v30 + 96) = v91;
    *(v30 + 104) = v34;
    *(v30 + 112) = v92;
    *(v30 + 128) = v35;
    *(v30 + 129) = v36;
    LOBYTE(v91) = 4;
    sub_21A0A7604(&qword_27CCDD968, type metadata accessor for ActivityMinimalAppearanceTheme);
    sub_21A0E6A8C();
    sub_21A0A726C(v51, v30 + v32);
    v80 = 5;
    sub_219F81E1C();
    sub_21A0E6A8C();
    v37 = *v84;
    *(v18 + 2) = v83;
    *(v18 + 3) = v37;
    *(v18 + 61) = *&v84[13];
    v38 = v82;
    *v18 = v81;
    *(v18 + 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0);
    v79 = 6;
    sub_21A0A7480(&qword_27CCDD970);
    sub_21A0E6A8C();
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v78 = v96;
    v73 = v91;
    v74 = v92;
    v39 = v55;
    v40 = *(v55 + 3);
    v87 = *(v55 + 2);
    v88 = v40;
    v89 = *(v55 + 4);
    v90 = *(v55 + 10);
    v41 = *(v55 + 1);
    v85 = *v55;
    v86 = v41;
    sub_219F6409C(&v85, &qword_27CCDAB00);
    v42 = v76;
    *(v39 + 2) = v75;
    *(v39 + 3) = v42;
    *(v39 + 4) = v77;
    *(v39 + 10) = v78;
    v43 = v74;
    *v39 = v73;
    *(v39 + 1) = v43;
    v66 = 7;
    sub_21A0E6A8C();
    (*(v52 + 8))(v54, v53);
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v58 = v67;
    v59 = v68;
    v44 = *(v20 + 3);
    v64[2] = *(v20 + 2);
    v64[3] = v44;
    v64[4] = *(v20 + 4);
    v65 = *(v20 + 10);
    v45 = *(v20 + 1);
    v64[0] = *v20;
    v64[1] = v45;
    sub_219F6409C(v64, &qword_27CCDAB00);
    v46 = v61;
    *(v20 + 2) = v60;
    *(v20 + 3) = v46;
    *(v20 + 4) = v62;
    *(v20 + 10) = v63;
    v47 = v59;
    *v20 = v58;
    *(v20 + 1) = v47;
    sub_21A0A74F8(v30, v50);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return sub_21A0A755C(v30, type metadata accessor for NationalElectionTheme);
  }
}