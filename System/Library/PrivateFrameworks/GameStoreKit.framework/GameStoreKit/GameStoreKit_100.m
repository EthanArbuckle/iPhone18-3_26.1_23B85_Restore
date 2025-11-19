uint64_t static AchievementDetailsViewMetrics.defaultMetrics.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F210E90 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27F237800, sizeof(__dst));
  memcpy(a1, &xmmword_27F237800, 0x178uLL);
  return sub_24E76A93C(__dst, &v3);
}

uint64_t sub_24F041F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F041FC0(uint64_t result, int a2, int a3)
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
      *(result + 376) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24F042070(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F91EAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 identifier];
  v9 = sub_24F92B0D8();
  v11 = v10;

  *a2 = v9;
  a2[1] = v11;
  v12 = [a1 localizedName];
  v13 = sub_24F92B0D8();
  v15 = v14;

  a2[2] = v13;
  a2[3] = v15;
  v16 = [a1 bundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24F92B0D8();
    v20 = v19;

    v31 = v18;
    v32 = v20;
    sub_24F91EA28();
    sub_24E600AEC();
    v21 = sub_24F92C578();
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    if (!v23)
    {

      v21 = v18;
      v23 = v20;
    }

    v24 = *(type metadata accessor for CallProvider() + 24);
    v31 = 0x3A6E6F6369707061;
    v32 = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v21, v23);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    v25 = sub_24F9289E8();
    (*(*(v25 - 8) + 56))(a2 + v24, 0, 1, v25);
  }

  else
  {
    v26 = *(type metadata accessor for CallProvider() + 24);
    v27 = sub_24F9289E8();
    (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
  }

  if ([a1 supportsAudioOnly])
  {
    v28 = sub_24F4B6350();
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for CallProvider();
  *(a2 + *(v29 + 28)) = v28 & 1;
  if ([a1 supportsAudioAndVideo] && objc_msgSend(a1, sel_supportsAudioAndVideo))
  {
    v30 = [a1 isSystemProvider];
  }

  else
  {
    v30 = 0;
  }

  *(a2 + *(v29 + 32)) = v30;
}

uint64_t CallProvider.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallProvider.localizedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallProvider.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallProvider() + 24);

  return sub_24E6F66C4(v3, a1);
}

unint64_t CallProvider.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  strcpy((inited + 88), "localizedName");
  *(inited + 102) = -4864;
  v8 = v1[2];
  v9 = v1[3];
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 1852793705;
  *(inited + 152) = 0xE400000000000000;
  v10 = type metadata accessor for CallProvider();
  v11 = v10[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(inited + 192) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E6F66C4(v1 + v11, boxed_opaque_existential_1);
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000024FA69120;
  v13 = MEMORY[0x277D839B0];
  v14 = MEMORY[0x277D22598];
  *(inited + 216) = *(v1 + v10[7]);
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 0xD000000000000015;
  *(inited + 264) = 0x800000024FA69140;
  v15 = *(v1 + v10[8]);
  *(inited + 296) = v13;
  *(inited + 304) = v14;
  *(inited + 272) = v15;

  v16 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v17 = sub_24E80FFAC(v16);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_24F0426B0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1852793705;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A696C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F042758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F043680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F042780(uint64_t a1)
{
  v2 = sub_24F043234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0427BC(uint64_t a1)
{
  v2 = sub_24F043234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237978);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F043234();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for CallProvider();
    v8[13] = 2;
    sub_24F9289E8();
    sub_24E94B634(&qword_27F214060);
    sub_24F92CCF8();
    v8[12] = 3;
    sub_24F92CD18();
    v8[11] = 4;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CallProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237988);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for CallProvider();
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F043234();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v22;
  v15 = v23;
  v28 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v16;
  v20[2] = v16;
  v27 = 1;
  v12[2] = sub_24F92CC28();
  v12[3] = v17;
  sub_24F9289E8();
  v26 = 2;
  sub_24E94B634(&qword_27F214018);
  v20[1] = 0;
  sub_24F92CC18();
  sub_24E94B678(v6, v12 + v10[6]);
  v25 = 3;
  *(v12 + v10[7]) = sub_24F92CC38() & 1;
  v24 = 4;
  v18 = sub_24F92CC38();
  (*(v14 + 8))(v9, v15);
  *(v12 + v10[8]) = v18 & 1;
  sub_24F043288(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24F0432EC(v12);
}

uint64_t _s12GameStoreKit12CallProviderV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24F92CE08() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = type metadata accessor for CallProvider();
  v14 = v22[6];
  v15 = *(v11 + 48);
  sub_24E6F66C4(a1 + v14, v13);
  sub_24E6F66C4(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E6F66C4(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24E94B634(&qword_27F21E3F8);
      v17 = sub_24F92AFF8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_24E601704(v13, &qword_27F213FB0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_24E601704(v13, &qword_27F21E3E8);
    goto LABEL_15;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_24E601704(v13, &qword_27F213FB0);
LABEL_14:
  if (*(a1 + v22[7]) == *(a2 + v22[7]))
  {
    v19 = *(a1 + v22[8]) ^ *(a2 + v22[8]) ^ 1;
    return v19 & 1;
  }

LABEL_15:
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for CallProvider()
{
  result = qword_27F237990;
  if (!qword_27F237990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F043234()
{
  result = qword_27F237980;
  if (!qword_27F237980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237980);
  }

  return result;
}

uint64_t sub_24F043288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0432EC(uint64_t a1)
{
  v2 = type metadata accessor for CallProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F04335C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F04342C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0434DC()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24F04357C()
{
  result = qword_27F2379A0;
  if (!qword_27F2379A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379A0);
  }

  return result;
}

unint64_t sub_24F0435D4()
{
  result = qword_27F2379A8;
  if (!qword_27F2379A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379A8);
  }

  return result;
}

unint64_t sub_24F04362C()
{
  result = qword_27F2379B0;
  if (!qword_27F2379B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379B0);
  }

  return result;
}

uint64_t sub_24F043680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA69120 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA69140 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t StyledText.__allocating_init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v6 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
  v8 = sub_24F91F008();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return v6;
}

GameStoreKit::StyledText::MediaType_optional __swiftcall StyledText.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyledText.MediaType.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x72616D2F74786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C702F74786574;
  }
}

uint64_t sub_24F0439DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x800000024FA3FAD0;
  if (v2 == 1)
  {
    v5 = 0x800000024FA3FAD0;
  }

  else
  {
    v3 = 0x72616D2F74786574;
    v5 = 0xED00006E776F646BLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x616C702F74786574;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E69;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F043AF0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F043BA8()
{
  sub_24F92B218();
}

uint64_t sub_24F043C4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F043D0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x800000024FA3FAD0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C702F74786574;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t StyledText.rawText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F043DBC()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_24F043E38(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_24F043E38(uint64_t a1)
{
  v2 = sub_24F91EE98();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91EEA8();
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_24F91F008();
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = *(a1 + 32);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v23)
  {
    if (v23 == 1)
    {
      v26 = objc_opt_self();

      v27 = [v26 systemFontOfSize_];
      v28 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
      v29 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
      v30 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

      *&v48 = 10;
      *(&v48 + 1) = 0xE100000000000000;
      v49 = v27;
      v50 = v28;
      v51 = 161644770;
      v52 = 0xA400000000000000;
      v53 = v29;
      v54 = 606245;
      v55 = 0xE300000000000000;
      v56 = v30;
      v31 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
      v32 = sub_24E9076BC(v24, v25, &v48);
      [*&v32[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] parse];
      v33 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
      v34 = [*&v32[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator] mutableString];
      if (qword_27F210F48 != -1)
      {
        swift_once();
      }

      sub_24F0A8300(qword_27F39DBA8);

      v35 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
      v36 = [v35 string];
      v24 = sub_24F92B0D8();
    }

    else
    {
      v43 = v20;
      v44 = v19;
      v37 = sub_24F91F4A8();
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
      (*(v45 + 104))(v7, *MEMORY[0x277CC8BB0], v5);
      (*(v46 + 104))(v4, *MEMORY[0x277CC8B98], v47);

      sub_24F91EEB8();
      sub_24F91EFC8();
      v40 = v43;
      v39 = v44;
      (*(v43 + 56))(v14, 0, 1, v44);
      (*(v40 + 32))(v22, v14, v39);
      sub_24E69A5C4(0, &qword_27F223430);
      (*(v40 + 16))(v17, v22, v39);
      v41 = sub_24F92BFD8();
      v42 = [v41 string];
      v24 = sub_24F92B0D8();

      (*(v40 + 8))(v22, v39);
    }
  }

  else
  {
  }

  return v24;
}

uint64_t sub_24F044468(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_24F044484(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = sub_24F043DBC();
  a1[1] = v3;
  return sub_24F0444CC;
}

uint64_t sub_24F0444CC(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t StyledText.init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  *(v3 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
  v8 = sub_24F91F008();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  return v3;
}

uint64_t StyledText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = v2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  sub_24F928398();
  v12 = sub_24F928348();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v16 = v12;
    sub_24F928398();
    sub_24EA87AA4();
    sub_24F928208();
    v15(v8, v5);
    v17 = v30;
    type metadata accessor for StyledText();
    v18 = swift_allocObject();
    v19 = sub_24E609504(MEMORY[0x277D84F90]);
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v29, v20);
    v15(a1, v5);
    *(v18 + 40) = v19;
    v21 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
    v22 = sub_24F91F008();
    (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
    result = v18;
    v24 = (v18 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
    *v24 = 0;
    v24[1] = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v14;
    *(v18 + 32) = v17;
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24F045514(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 0x74786554776172;
    v26[1] = 0xE700000000000000;
    v26[2] = v3;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    v27 = sub_24F9285B8();
    (*(*(v27 - 8) + 8))(v29, v27);
    return (v15)(a1, v5);
  }

  return result;
}

id sub_24F044934(void *a1)
{
  v2 = v1;
  v4 = sub_24F91EE98();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91EEA8();
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - v14;
  swift_beginAccess();
  v16 = *(v1 + 40);

  v17 = a1;
  v18 = sub_24E76C4B0(a1, v16);

  if (!v18)
  {
    v62 = v15;
    v63 = v12;
    v64 = v7;
    v65 = v9;
    v66 = v6;
    v19 = v17;
    v20 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v21 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v22 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();
    *&v73 = 10;
    *(&v73 + 1) = 0xE100000000000000;
    v67 = v19;
    *&v74 = v19;
    *(&v74 + 1) = v20;
    *&v75 = 161644770;
    *(&v75 + 1) = 0xA400000000000000;
    *&v76 = v21;
    *(&v76 + 1) = 606245;
    *&v77 = 0xE300000000000000;
    *(&v77 + 1) = v22;
    v23 = v2;
    if (!*(v2 + 32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
      inited = swift_initStackObject();
      v31 = MEMORY[0x277D74118];
      *(inited + 16) = xmmword_24F93A400;
      v32 = *v31;
      *(inited + 32) = *v31;
      v33 = *(&v74 + 1);
      v34 = sub_24E69A5C4(0, &qword_27F221898);
      *(inited + 40) = v33;
      v35 = *MEMORY[0x277D740A8];
      *(inited + 64) = v34;
      *(inited + 72) = v35;
      v36 = v74;
      *(inited + 104) = sub_24E69A5C4(0, &qword_27F217E58);
      *(inited + 80) = v36;
      v37 = v32;
      v38 = v33;
      v39 = v35;
      v40 = v36;
      v27 = sub_24E608940(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221890);
      swift_arrayDestroy();
      v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v41 = sub_24F92B098();
      type metadata accessor for Key(0);
      sub_24F045514(&qword_27F212318, type metadata accessor for Key);
      v42 = sub_24F92AE28();

      v18 = [v28 initWithString:v41 attributes:v42];

      goto LABEL_8;
    }

    if (*(v2 + 32) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
      v43 = swift_initStackObject();
      v44 = MEMORY[0x277D74118];
      *(v43 + 16) = xmmword_24F93A400;
      v45 = *v44;
      *(v43 + 32) = *v44;
      v46 = *(&v74 + 1);
      v47 = sub_24E69A5C4(0, &qword_27F221898);
      *(v43 + 40) = v46;
      v48 = *MEMORY[0x277D740A8];
      *(v43 + 64) = v47;
      *(v43 + 72) = v48;
      v49 = v74;
      *(v43 + 104) = sub_24E69A5C4(0, &qword_27F217E58);
      *(v43 + 80) = v49;
      v50 = v45;
      v51 = v46;
      v52 = v48;
      v53 = v49;
      sub_24E608940(v43);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221890);
      swift_arrayDestroy();
      sub_24E69A5C4(0, &qword_27F223430);
      v28 = *(v23 + 16);
      v54 = sub_24F91F4A8();
      (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
      (*(v68 + 104))(v65, *MEMORY[0x277CC8BB0], v64);
      (*(v69 + 104))(v66, *MEMORY[0x277CC8B98], v70);

      v27 = v63;
      sub_24F91EEB8();
      sub_24F92BFC8();
      v18 = sub_24F92BFE8();
      goto LABEL_8;
    }

    v24 = *(v2 + 16);
    v25 = *(v2 + 24);
    v72[2] = v75;
    v72[3] = v76;
    v72[4] = v77;
    v72[0] = v73;
    v72[1] = v74;
    v26 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());

    sub_24E8EB83C(&v73, v71);
    v27 = sub_24E9076BC(v24, v25, v72);
    [*(v27 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser) parse];
    v28 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
    v29 = [*(v27 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) mutableString];
    if (qword_27F210F48 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      sub_24F0A8300(qword_27F39DBA8);

      v18 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
LABEL_8:
      swift_beginAccess();
      v55 = *(v23 + 40);
      if ((v55 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (v55 < 0)
      {
        v29 = *(v23 + 40);
      }

      else
      {
        v29 = (v55 & 0xFFFFFFFFFFFFFF8);
      }

      v56 = v18;
      v57 = sub_24F92C738();
      if (!__OFADD__(v57, 1))
      {
        *(v23 + 40) = sub_24F04527C(v29, v57 + 1);
        goto LABEL_15;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    v58 = v18;
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *(v23 + 40);
    sub_24E821CA8(v18, v67, isUniquelyReferenced_nonNull_native);
    *(v23 + 40) = v71[0];
    swift_endAccess();
    sub_24E951D6C(&v73);
  }

  return v18;
}

uint64_t StyledText.deinit()
{

  sub_24E747F58(v0 + OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString);

  return v0;
}

uint64_t StyledText.__deallocating_deinit()
{

  sub_24E747F58(v0 + OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString);

  return swift_deallocClassInstance();
}

uint64_t sub_24F045250@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = StyledText.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F04527C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134C0);
    v2 = sub_24F92CB48();
    v19 = v2;
    sub_24F92CA48();
    v3 = sub_24F92CA78();
    if (v3)
    {
      v4 = v3;
      sub_24E69A5C4(0, &qword_27F217E58);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24E69A5C4(0, &qword_27F223430);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_24E8A6AE4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_24F92C3F8();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24F92CA78();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t type metadata accessor for StyledText()
{
  result = qword_27F2379D0;
  if (!qword_27F2379D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F045514(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F045560()
{
  result = qword_27F2379C8;
  if (!qword_27F2379C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379C8);
  }

  return result;
}

uint64_t sub_24F0455B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F043DBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F0455E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v4 = v3;
  v4[1] = v2;
}

void sub_24F045638()
{
  sub_24E658094();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_OWORD *SearchResultsPageMoreIntent.init(pageToken:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD00000000000001BLL;
  *(a2 + 8) = 0x800000024F9C0AC0;
  return sub_24E612B0C(a1, (a2 + 16));
}

uint64_t SearchResultsPageMoreIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall SearchResultsPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F04592C()
{
  result = qword_27F2379E0;
  if (!qword_27F2379E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379E0);
  }

  return result;
}

id sub_24F045988(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = v5;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ComponentHeightCache.invalidate(items:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_24E615E00(a1, &v4);
    if (*(&v5 + 1))
    {
LABEL_3:
      sub_24E612C80(&v4, v7);
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_24F92B4A8();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *a1;
    v5 = v3;
    v6 = *(a1 + 32);
    if (*(&v3 + 1))
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_24F045B60()
{
  v1 = *v0;
  sub_24F92D068();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x253052A30](*&v2);
  sub_24F92C418();
  return sub_24F92D0B8();
}

uint64_t sub_24F045BCC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x253052A30](*&v1);
  return sub_24F92C418();
}

uint64_t sub_24F045C20()
{
  v1 = *v0;
  sub_24F92D068();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x253052A30](*&v2);
  sub_24F92C418();
  return sub_24F92D0B8();
}

uint64_t sub_24F045C88(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_24EC4BDA8();
  return sub_24F92C408() & 1;
}

uint64_t ComponentHeightCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_24E60FB54(MEMORY[0x277D84F90]);
  return v0;
}

double ComponentHeightCache.height(for:or:)(uint64_t a1, double (*a2)(uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A48();

  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  if (*(v7 + 16) && (v9 = sub_24E76D934(v24), (v10 & 1) != 0))
  {
    v11 = (*(v7 + 56) + 16 * v9);
    v12 = *v11;
    v13 = *(v11 + 1);
    swift_endAccess();
    v14 = v13;
    sub_24E6585F8(v24);
    sub_24EC4BDA8();
    v15 = a1 + *(v6 + 32);
    v16 = *(v15 + *(type metadata accessor for ShelfLayoutContext() + 40));
    v17 = v14;
    v18 = [v16 traitCollection];
    v8 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    LOBYTE(v14) = sub_24F92C408();

    if (v14)
    {
      return v12;
    }
  }

  else
  {
    swift_endAccess();
    v19 = sub_24E6585F8(v24);
  }

  v12 = a2(v19);
  swift_getKeyPath();
  sub_24F928A48();

  v20 = [*(a1 + *(v6 + 32) + *(type metadata accessor for ShelfLayoutContext() + 40)) v8[353]];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_24E821DDC(v20, v24, isUniquelyReferenced_nonNull_native, v12);
  sub_24E6585F8(v24);
  *(v3 + 16) = v23;
  swift_endAccess();
  return v12;
}

uint64_t ComponentHeightCache.cachedHeights(for:)()
{
  v1 = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v2 = *(v17 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24F45824C(0, v2, 0);
    v3 = v16;
    v4 = v17 + 32;
    do
    {
      sub_24E615E00(v4, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_24F928D68();
      swift_beginAccess();
      v5 = *(v1 + 16);
      if (*(v5 + 16) && (v6 = sub_24E76D934(v14), (v7 & 1) != 0))
      {
        v8 = *(v5 + 56) + 16 * v6;
        v9 = *v8;
        v10 = *(v8 + 8);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v9 = 0;
      }

      sub_24E6585F8(v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24F45824C((v11 > 1), v12 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + 8 * v12 + 32) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24F04617C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_24E76D934(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B57A4();
    }

    sub_24E6585F8(*(v8 + 48) + 40 * v6);
    v9 = *(*(v8 + 56) + 16 * v6 + 8);
    sub_24EB54E88(v6, v8);
    *(a2 + 16) = v8;
  }

  return swift_endAccess();
}

uint64_t ComponentHeightCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24F046320()
{
  result = qword_27F2379E8;
  if (!qword_27F2379E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379E8);
  }

  return result;
}

double sub_24F046388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2297E0);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22F7A0);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_24F99D1D0;
  qword_27F39D6E8 = v1;
  return result;
}

uint64_t AppTrailerLockupLayout.init(metrics:taglineText:videoView:lockupView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AppTrailerLockupLayout(0);
  sub_24F0464FC(a1, a5 + *(v10 + 28));
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F9224C8();
  sub_24F046580(a1);
  v11 = *(a3 + 16);
  *(a5 + 40) = *a3;
  *(a5 + 56) = v11;
  *(a5 + 72) = *(a3 + 32);
  sub_24E612C80(a4, a5 + 80);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_24F0464FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F046580(uint64_t a1)
{
  v2 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppTrailerLockupLayout.Metrics.init(taglineSpace:taglineBottomSpace:videoAspectRatio:videoSpacing:lockupSpace:textAndLockupLayoutMargins:isVideoAtTop:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_24E612C80(a1, a7);
  sub_24E612C80(a2, a7 + 40);
  v21 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v22 = v21[6];
  v23 = sub_24F922348();
  (*(*(v23 - 8) + 32))(a7 + v22, a3, v23);
  sub_24E612C80(a4, a7 + v21[7]);
  result = sub_24E612C80(a5, a7 + v21[8]);
  v25 = (a7 + v21[9]);
  *v25 = a8;
  v25[1] = a9;
  v25[2] = a10;
  v25[3] = a11;
  *(a7 + v21[10]) = a6;
  return result;
}

uint64_t AppTrailerLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t AppTrailerLockupLayout.Metrics.taglineBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t AppTrailerLockupLayout.Metrics.videoAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppTrailerLockupLayout.Metrics.videoAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppTrailerLockupLayout.Metrics.videoSpacing.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppTrailerLockupLayout.Metrics.lockupSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppTrailerLockupLayout.Metrics.textAndLockupLayoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t AppTrailerLockupLayout.Metrics.isVideoAtTop.setter(char a1)
{
  result = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AppTrailerLockupLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);

  return sub_24F0464FC(v3, a1);
}

double AppTrailerLockupLayout.measurements(fitting:in:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v32 = sub_24F922348();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9225E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F922618();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277D22788], v10, v15);
  sub_24F9225F8();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v18 = sub_24F922238();
  v19 = MEMORY[0x277D228E0];
  if ((v18 & 1) == 0)
  {
    v20 = v35;
    if (qword_27F210E98 != -1)
    {
      swift_once();
    }

    v37[0] = qword_27F39D6E8;

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(v20, v9);
    (*(v7 + 8))(v9, v6);

    v21 = v2 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
    sub_24E615E00(v21, v36);
    v22 = sub_24F9229A8();
    v38 = v22;
    v39 = v19;
    __swift_allocate_boxed_opaque_existential_1(v37);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_24E615E00(v21 + 40, v36);
    v38 = v22;
    v39 = v19;
    __swift_allocate_boxed_opaque_existential_1(v37);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v23 = v2 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v24 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(v3 + 16))(v5, &v23[*(v24 + 24)], v32);
  v38 = sub_24F922768();
  v39 = MEMORY[0x277D22818];
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_24F922778();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_24E615E00(&v23[*(v24 + 28)], v36);
  v38 = sub_24F9229A8();
  v39 = v19;
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v37);
  v26 = v2[13];
  v25 = v2[14];
  v27 = __swift_project_boxed_opaque_existential_1(v2 + 10, v26);
  v38 = v26;
  v39 = *(v25 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v27, v26);
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_24F9225D8();
  v30 = v29;
  (*(v33 + 8))(v17, v34);
  return v30;
}

void *AppTrailerLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = v6 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  if (*(v13 + *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 40)) == 1)
  {

    return sub_24F04729C(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_24F04831C(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_24F04729C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v111 = a1;
  v107 = a2;
  v106 = sub_24F9221D8();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24F922758();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92CDB8();
  v99 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24F922708();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117 - 8);
  v116 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F922718();
  v110 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v114 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F9226C8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F922748();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v113 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v100 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  sub_24E94275C((v7 + 5), &v125);
  v29 = MEMORY[0x277D227C8];
  v121 = v19;
  v120 = v17;
  v109 = v22;
  v108 = v20;
  if (*(&v126 + 1))
  {
    v112 = v14;
    sub_24E612C80(&v125, v128);
    v30 = *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
    v97 = v7;
    v31 = v7 + v30;
    v32 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v129.origin.x = a3;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    CGRectGetWidth(v129);
    sub_24F922308();
    v34 = v33;
    __swift_project_boxed_opaque_existential_1(v128, v128[3]);
    v130.origin.x = a3;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    CGRectGetWidth(v130);
    sub_24F922268();
    v124[3] = MEMORY[0x277D85048];
    v124[4] = MEMORY[0x277D225F8];
    v124[0] = v34;
    v35 = &v31[*(v32 + 28)];
    v36 = v117;
    sub_24E615E00(v35, v123);
    (*(v20 + 104))(v22, *MEMORY[0x277D227C8], v19);
    v37 = *MEMORY[0x277D227F0];
    v96 = v28;
    v38 = v116;
    v39 = v114;
    v40 = v110;
    (*(v110 + 104))(v114, v37, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8);
    v41 = v115;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_24F93DE60;
    sub_24F9226F8();
    v122 = v42;
    sub_24F049B10(&qword_27F237A50, MEMORY[0x277D227D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0);
    sub_24E9723D4(&qword_27F237A60, &qword_27F2330F0);
    sub_24F92C6A8();
    v43 = v96;
    sub_24F922738();
    (*(v41 + 8))(v38, v36);
    v44 = v40;
    (*(v40 + 8))(v39, v120);
    v45 = v108;
    (*(v108 + 8))(v22, v121);
    sub_24E601704(v123, &qword_27F22F780);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v46 = sub_24E6179B0(0, 1, 1, MEMORY[0x277D84F90]);
    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_24E6179B0(v47 > 1, v48 + 1, 1, v46);
    }

    __swift_destroy_boxed_opaque_existential_1(&v125);
    v46[2] = v48 + 1;
    (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v48, v43, v119);
    __swift_destroy_boxed_opaque_existential_1(v128);
    v49 = v44;
    v14 = v112;
    v29 = MEMORY[0x277D227C8];
    v7 = v97;
  }

  else
  {
    v45 = v20;
    sub_24E601704(&v125, &qword_27F229780);
    v46 = MEMORY[0x277D84F90];
    v49 = v110;
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v50 = sub_24F922238();
  v51 = MEMORY[0x277D227F0];
  v112 = v46;
  if (v50)
  {
    v52 = *v29;
    v53 = *MEMORY[0x277D227F0];
    goto LABEL_17;
  }

  if (qword_27F210E98 != -1)
  {
    swift_once();
  }

  v128[0] = qword_27F39D6E8;

  v54 = v98;
  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(v111, v54);
  v56 = v55;
  v57 = v55;
  (*(v99 + 8))(v54, v14);

  v58 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v59 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  sub_24F922258();
  sub_24E615E00((v59 + 40), &v125);
  v60 = *(v45 + 104);
  v61 = v109;
  LODWORD(v99) = *MEMORY[0x277D227C8];
  v62 = v121;
  v60(v109);
  v63 = *(v49 + 104);
  v64 = v114;
  LODWORD(v98) = *v51;
  v63(v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8);
  v65 = v115;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v124[0] = v66;
  sub_24F049B10(&qword_27F237A50, MEMORY[0x277D227D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0);
  v67 = v117;
  sub_24E9723D4(&qword_27F237A60, &qword_27F2330F0);
  v68 = v116;
  sub_24F92C6A8();
  sub_24F922738();
  v45 = v108;
  (*(v65 + 8))(v68, v67);
  v58 = v110;
  (*(v110 + 8))(v64, v120);
  v69 = v62;
  v46 = v112;
  (*(v45 + 8))(v61, v69);
  sub_24E601704(&v125, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(v128);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_25:
    v46 = sub_24E6179B0(0, v46[2] + 1, 1, v46);
  }

  v71 = v46[2];
  v70 = v46[3];
  v49 = v58;
  v52 = v99;
  v53 = v98;
  if (v71 >= v70 >> 1)
  {
    v46 = sub_24E6179B0(v70 > 1, v71 + 1, 1, v46);
  }

  v112 = v46;
  v46[2] = v71 + 1;
  (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v71, v100, v119);
LABEL_17:
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v100 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v72 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  sub_24F922258();
  v99 = *(v72 + 32);
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v73 = v109;
  (*(v45 + 104))(v109, v52, v121);
  v74 = *(v49 + 104);
  v75 = v49;
  v76 = v114;
  v77 = v53;
  v78 = v120;
  v74(v114, v77, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8);
  v79 = v115;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v124[0] = v80;
  sub_24F049B10(&qword_27F237A50, MEMORY[0x277D227D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0);
  sub_24E9723D4(&qword_27F237A60, &qword_27F2330F0);
  v81 = v78;
  v82 = v116;
  v83 = v117;
  sub_24F92C6A8();
  sub_24F922738();
  (*(v79 + 8))(v82, v83);
  (*(v75 + 8))(v76, v81);
  (*(v45 + 8))(v73, v121);
  sub_24E601704(&v125, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(v128);
  v84 = v112;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_24E6179B0(0, v84[2] + 1, 1, v84);
  }

  v85 = v106;
  v86 = v105;
  v87 = v104;
  v88 = v103;
  v89 = v102;
  v90 = v101;
  v92 = v84[2];
  v91 = v84[3];
  v93 = v84;
  if (v92 >= v91 >> 1)
  {
    v93 = sub_24E6179B0(v91 > 1, v92 + 1, 1, v84);
  }

  *(v93 + 16) = v92 + 1;
  (*(v118 + 32))(v93 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v92, v113, v119);
  sub_24F922728();
  sub_24F9226E8();
  (*(v86 + 8))(v89, v85);
  sub_24F922128();
  return (*(v88 + 8))(v90, v87);
}

void *sub_24F04831C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v85 = a3;
  v13 = sub_24F9221D8();
  v74 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v73 = &MinX - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F922868();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24F922888();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &MinX - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24F9227F8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &MinX - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24F922838();
  v18 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &MinX - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24F922848();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v84 = &MinX - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &MinX - v22;
  v23 = sub_24F92CDB8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &MinX - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v27 = sub_24F922238();
  v76 = a2;
  v75 = v13;
  if (v27)
  {
    goto LABEL_8;
  }

  v64 = v18;
  if (qword_27F210E98 != -1)
  {
    swift_once();
  }

  v90[0] = qword_27F39D6E8;

  sub_24F9220E8();
  v28 = a1;
  Conditional<>.value(in:rounded:)(a1, v26);
  v30 = v29;
  v31 = v29;
  v32 = *(v24 + 8);
  v32(v26, v23);

  result = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  v91.origin.x = v85;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v85;
  v92.origin.y = a4;
  v92.size.width = a5;
  v92.size.height = a6;
  CGRectGetMinY(v92);
  v34 = (v6 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28));
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_24F9223C8();
  v93.origin.x = v85;
  v93.origin.y = a4;
  v93.size.width = a5;
  v93.size.height = a6;
  CGRectGetWidth(v93);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922218();
  CGRectGetMaxY(v94);
  __swift_project_boxed_opaque_existential_1(v34 + 5, v34[8]);
  sub_24E8ED7D8();
  a1 = v28;
  sub_24F9223A8();
  v32(v26, v23);
  v18 = v64;
LABEL_8:
  v66 = a1;
  sub_24E94275C((v6 + 5), &v88);
  v35 = MEMORY[0x277D84F90];
  if (v89)
  {
    sub_24E612C80(&v88, v90);
    type metadata accessor for AppTrailerLockupLayout(0);
    type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v36 = v85;
    v95.origin.x = v85;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    CGRectGetWidth(v95);
    sub_24F922308();
    v38 = v37;
    __swift_project_boxed_opaque_existential_1(v90, v90[3]);
    v96.origin.x = v36;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    CGRectGetWidth(v96);
    sub_24F922268();
    v87[3] = MEMORY[0x277D85048];
    v87[4] = MEMORY[0x277D225F8];
    v87[0] = v38;
    v39 = *MEMORY[0x277D22848];
    v40 = v77;
    v41 = v79;
    (*(v18 + 104))(v77, v39, v79);
    v86 = MEMORY[0x277D84F90];
    sub_24F049B10(&qword_27F22B210, MEMORY[0x277D22838]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
    sub_24E9723D4(&qword_27F22B220, &unk_27F235750);
    v42 = v78;
    v43 = v81;
    sub_24F92C6A8();
    v44 = v65;
    sub_24F922818();
    (*(v80 + 8))(v42, v43);
    v45 = v40;
    v35 = MEMORY[0x277D84F90];
    (*(v18 + 8))(v45, v41);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v46 = sub_24E6179D8(0, 1, 1, v35);
    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_24E6179D8(v47 > 1, v48 + 1, 1, v46);
    }

    __swift_destroy_boxed_opaque_existential_1(&v88);
    v46[2] = v48 + 1;
    (*(v82 + 32))(v46 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v48, v44, v83);
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
    sub_24E601704(&v88, &qword_27F229780);
    v39 = *MEMORY[0x277D22848];
    v46 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v49 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v50 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v65 = v49;
  sub_24F922258();
  v51 = v77;
  v52 = v79;
  (*(v18 + 104))(v77, v39, v79);
  *&v88 = v35;
  sub_24F049B10(&qword_27F22B210, MEMORY[0x277D22838]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
  sub_24E9723D4(&qword_27F22B220, &unk_27F235750);
  v53 = v18;
  v54 = v78;
  v55 = v81;
  sub_24F92C6A8();
  sub_24F922808();
  (*(v80 + 8))(v54, v55);
  (*(v53 + 8))(v51, v52);
  __swift_destroy_boxed_opaque_existential_1(v90);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_24E6179D8(0, v46[2] + 1, 1, v46);
  }

  v56 = v74;
  v57 = v73;
  v58 = v72;
  v59 = v75;
  v61 = v46[2];
  v60 = v46[3];
  if (v61 >= v60 >> 1)
  {
    v46 = sub_24E6179D8(v60 > 1, v61 + 1, 1, v46);
  }

  v46[2] = v61 + 1;
  (*(v82 + 32))(v46 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v61, v84, v83);
  (*(v67 + 104))(v68, *MEMORY[0x277D22870], v69);
  sub_24E615E00(&v65[*(v50 + 28)], v90);
  v62 = v70;
  sub_24F922878();
  sub_24F9227D8();
  (*(v56 + 8))(v57, v59);
  sub_24F922128();
  return (*(v71 + 8))(v62, v58);
}

void *sub_24F04906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v14 = v7 + *(a2 + 28);
  if (*(v14 + *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 40)) == 1)
  {

    return sub_24F04729C(a1, a3, a4, a5, a6, a7);
  }

  else
  {

    return sub_24F04831C(a1, a3, a4, a5, a6, a7);
  }
}

double _s12GameStoreKit22AppTrailerLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v25 = sub_24F922348();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922618();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210E98 != -1)
  {
    swift_once();
  }

  v30[0] = qword_27F39D6E8;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(v29, v15);
  (*(v13 + 8))(v15, v12);

  (*(v7 + 104))(v26, *MEMORY[0x277D22788], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F942000;
  sub_24E615E00(a1, v30);
  v17 = sub_24F9229A8();
  v18 = MEMORY[0x277D228E0];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v30);
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  sub_24F9229B8();
  v19 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(v3 + 16))(v5, a1 + v19[6], v25);
  v20 = sub_24F922768();
  v21 = MEMORY[0x277D22818];
  *(v16 + 136) = v20;
  *(v16 + 144) = v21;
  __swift_allocate_boxed_opaque_existential_1((v16 + 112));
  sub_24F922778();
  sub_24E615E00(a1 + v19[7], v30);
  *(v16 + 176) = v17;
  *(v16 + 184) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + v19[8], v30);
  *(v16 + 216) = v17;
  *(v16 + 224) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 192));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v23 = v22;
  (*(v27 + 8))(v11, v28);
  return v23;
}

uint64_t sub_24F04963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0496FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0497A0()
{
  sub_24E8EFB54(319, &qword_27F2297C0);
  if (v0 <= 0x3F)
  {
    sub_24F049874();
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A20);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AppTrailerLockupLayout.Metrics(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F049874()
{
  if (!qword_27F2297B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F235730);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2297B0);
    }
  }
}

uint64_t sub_24F0498EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F922348();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0499AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922348();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F049A50()
{
  sub_24E8EFB54(319, &qword_27F237A40);
  if (v0 <= 0x3F)
  {
    sub_24F922348();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F049B10(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_24F049B68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

char *TopChartCategory.__allocating_init(genreId:ageBandId:url:shortName:longName:artwork:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  *(v19 + 3) = a2;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  v20 = &v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName];
  *v21 = a8;
  *(v21 + 1) = a9;
  v22 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v23 = sub_24F91F4A8();
  (*(*(v23 - 8) + 32))(&v19[v22], a5, v23);
  *&v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork] = a10;
  *&v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children] = a11;
  return v19;
}

char *TopChartCategory.init(genreId:ageBandId:url:shortName:longName:artwork:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  v13 = &v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName];
  *v13 = a6;
  *(v13 + 1) = a7;
  v14 = &v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName];
  *v14 = a8;
  *(v14 + 1) = a9;
  v15 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v16 = sub_24F91F4A8();
  (*(*(v16 - 8) + 32))(&v11[v15], a5, v16);
  *&v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork] = a10;
  *&v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children] = a11;
  return v11;
}

uint64_t TopChartCategory.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopChartCategory.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TopChartCategory.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v59 = a2;
  v60 = v5;
  v58 = sub_24F9285B8();
  v64 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_24F91F4A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_24F928398();
  sub_24F928268();
  v61 = *(v11 + 8);
  v62 = v11 + 8;
  v21 = v16;
  v22 = v10;
  v61(v21, v10);
  v23 = v17;
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_24E70E058(v9);
    v24 = sub_24F92AC38();
    sub_24F04A4E8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v25 = 7107189;
    v26 = v60;
    v25[1] = 0xE300000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v64 + 8))(v59, v58);
    v61(v63, v10);
    v27 = v57;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v18;
    v53 = v18;
    v54 = v23;
    v29 = *(v18 + 32);
    v55 = v20;
    v29(v20, v9, v23);
    sub_24F928398();
    v30 = sub_24F928348();
    v32 = v31;
    v33 = v61;
    v61(v13, v22);
    v27 = v57;
    v57[2] = v30;
    v27[3] = v32;
    sub_24F928398();
    v34 = sub_24F928348();
    v36 = v35;
    v33(v13, v22);
    v27[4] = v34;
    v27[5] = v36;
    (*(v28 + 16))(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url, v55, v54);
    sub_24F928398();
    v37 = sub_24F928348();
    v39 = v38;
    v52 = v22;
    v33(v13, v22);
    v40 = (v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
    *v40 = v37;
    v40[1] = v39;
    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v42;
    v33(v13, v22);
    v44 = (v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
    *v44 = v41;
    v44[1] = v43;
    type metadata accessor for Artwork();
    sub_24F928398();
    v45 = *(v64 + 16);
    v46 = v56;
    v47 = v58;
    v48 = v59;
    v45(v56, v59, v58);
    sub_24F04A4E8(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork) = v65;
    v49 = v63;
    sub_24F928398();
    v45(v46, v48, v47);
    sub_24F04A4E8(&qword_27F237A68, type metadata accessor for TopChartCategory);
    v50 = sub_24F92B698();
    (*(v64 + 8))(v48, v47);
    v61(v49, v52);
    (*(v53 + 8))(v55, v54);
    *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children) = v50;
  }

  return v27;
}

uint64_t sub_24F04A4E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TopChartCategory()
{
  result = qword_27F237A70;
  if (!qword_27F237A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopChartCategory.genreId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopChartCategory.ageBandId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TopChartCategory.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TopChartCategory.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);

  return v1;
}

uint64_t TopChartCategory.longName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);

  return v1;
}

uint64_t TopChartCategory.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartCategory.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F04A898@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TopChartCategory.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F04A91C()
{
  result = sub_24F91F4A8();
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

uint64_t IdentifiableSearchResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v4 = sub_24F91F6B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F04AAB8()
{
  sub_24F91F668();
  sub_24F92B218();
}

uint64_t IdentifiableSearchResult.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v2 = sub_24F91F6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IdentifiableSearchResult.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v2 = sub_24F91F6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F04AC34()
{
  sub_24F92D068();
  sub_24F91F668();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F04AC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v5 = sub_24F91F6B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F04AD18()
{
  sub_24F92D068();
  sub_24F91F668();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F04AD84()
{
  sub_24F91F668();
  sub_24F92B218();
}

uint64_t sub_24F04AE74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IdentifiableSearchResult()
{
  result = qword_27F237A88;
  if (!qword_27F237A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F04AF08()
{
  sub_24F92D068();
  sub_24F91F668();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F04AF94()
{
  result = sub_24F91F6B8();
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

uint64_t sub_24F04B0A8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Game();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F04B234(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Game();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for GameDetailsChallengesShelfConstructionIntent()
{
  result = qword_27F237A98;
  if (!qword_27F237A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F04B3F8()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24E7D231C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F04B4AC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x61746144627568;
  *(inited + 96) = 0xE700000000000000;
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  *(inited + 128) = &type metadata for ChallengesHubData;
  *(inited + 136) = sub_24EE56F34();
  v11 = swift_allocObject();
  *(inited + 104) = v11;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = v8;
  v11[6] = v10;
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v12 = type metadata accessor for GameDetailsChallengesShelfConstructionIntent();
  v13 = v12[6];
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24F04B838(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7E38E0(v1 + v13, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v15 = v12[7];
  *(inited + 240) = type metadata accessor for Player(0);
  *(inited + 248) = sub_24F04B838(&qword_27F215388, type metadata accessor for Player);
  v16 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E7E38E0(v1 + v15, v16, type metadata accessor for Player);
  *(inited + 256) = 0x756F72676B636162;
  *(inited + 264) = 0xEA0000000000646ELL;
  v17 = v12[8];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 304) = sub_24E7D17FC();
  v18 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E7D14D8(v1 + v17, v18);

  v19 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v20 = sub_24E80FFAC(v19);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v20;
  return result;
}

uint64_t sub_24F04B7F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F04B838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F04B880()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit032DiffableSnapshotPresenterContentE6UpdateOyxG(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_24F04B8DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 9))
  {
    return (*a1 + 120);
  }

  v3 = ((*(a1 + 8) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 8) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F04B930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *(result + 8) = 0;
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_24F04B994(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 8) = *(result + 8) & 1 | (16 * a2);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0x80;
  }

  return result;
}

GameStoreKit::TopShelfPromotionItem::TintStyle_optional __swiftcall TopShelfPromotionItem.TintStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t TopShelfPromotionItem.TintStyle.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24F04BA6C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void *TopShelfPromotionItem.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = v2;
  v53 = sub_24F9285B8();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_24F928388();
  v51 = *(v9 - 8);
  v10 = v51;
  MEMORY[0x28223BE20](v9);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  sub_24F928398();
  v15 = sub_24F928348();
  v17 = v16;
  v18 = *(v10 + 8);
  v18(v14, v9);
  v19 = (v3 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionText);
  *v19 = v15;
  v19[1] = v17;
  v20 = a1;
  sub_24F928398();
  sub_24F04C0A0();
  sub_24F928208();
  v18(v14, v9);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionHeadingTintStyle) = v57;
  v21 = v3;
  v22 = v20;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v18(v14, v9);
  v26 = (v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextTitle);
  *v26 = v23;
  v26[1] = v25;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v18(v14, v9);
  v30 = (v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionImageName);
  *v30 = v27;
  v30[1] = v29;
  sub_24F928398();
  v31 = sub_24F928348();
  v33 = v32;
  v18(v14, v9);
  v34 = (v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextImageName);
  *v34 = v31;
  v34[1] = v33;
  sub_24F928398();
  sub_24F928268();
  v18(v14, v9);
  v49 = v21;
  sub_24E911D90(v8, v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24F928398();
  sub_24F928268();
  v18(v14, v9);
  v35 = v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl;
  v36 = v53;
  sub_24E911D90(v8, v35);
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v52 = v18;
  v18(v14, v9);
  v40 = v50;
  v41 = (v49 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_termsAndConditionsText);
  *v41 = v37;
  v41[1] = v39;
  v42 = v56;
  v43 = *(v51 + 16);
  v51 = v9;
  v43(v40, v22, v9);
  v44 = v54;
  v45 = v55;
  (*(v55 + 16))(v54, v42, v36);
  v46 = TopShelfItem.init(deserializing:using:)(v40, v44);
  (*(v45 + 8))(v42, v36);
  v52(v22, v51);
  return v46;
}

unint64_t sub_24F04C0A0()
{
  result = qword_27F237B28;
  if (!qword_27F237B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237B28);
  }

  return result;
}

uint64_t TopShelfPromotionItem.promotionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionText);

  return v1;
}

uint64_t TopShelfPromotionItem.contextTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextTitle);

  return v1;
}

uint64_t TopShelfPromotionItem.promotionImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionImageName);

  return v1;
}

uint64_t TopShelfPromotionItem.contextImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextImageName);

  return v1;
}

uint64_t TopShelfPromotionItem.termsAndConditionsText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_termsAndConditionsText);

  return v1;
}

uint64_t sub_24F04C25C()
{

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl);
}

uint64_t TopShelfPromotionItem.deinit()
{
  v0 = TopShelfItem.deinit();

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl);

  return v0;
}

uint64_t TopShelfPromotionItem.__deallocating_deinit()
{
  v0 = TopShelfItem.deinit();

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl);

  return swift_deallocClassInstance();
}

unint64_t sub_24F04C4AC()
{
  result = qword_27F237B30;
  if (!qword_27F237B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237B30);
  }

  return result;
}

uint64_t type metadata accessor for TopShelfPromotionItem()
{
  result = qword_27F237B38;
  if (!qword_27F237B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F04C554()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OfferLabelPresenter.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t OfferLabelPresenter.offerLabelText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24F04C670(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a1;
  v2[6] = a2;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v2[8];
    ObjectType = swift_getObjectType();
    v8 = v2[5];
    v9 = v2[6];
    v10 = *(v6 + 8);

    v10(v8, v9, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall OfferLabelPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[8];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = v1[5];
    v5 = v1[6];
    v6 = *(v2 + 8);

    v6(v4, v5, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t OfferLabelPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[8] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[8];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = v2[5];
    v7 = v2[6];
    v8 = *(v4 + 8);

    v8(v6, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*OfferLabelPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F04C9C8;
}

void sub_24F04C9C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[8];
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = v4[5];
      v8 = v4[6];
      v9 = *(v5 + 8);

      v9(v7, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t OfferLabelPresenter.__allocating_init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 64) = 0;
  *(v9 + 48) = 0;
  *(v9 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = a1;
  *(v9 + 88) = a5;
  ObjectType = swift_getObjectType();
  *&v25[0] = v10;
  *(&v25[0] + 1) = v11;
  v13 = *(a4 + 56);

  v14 = v13(v25, ObjectType, a4);
  v16 = v15;

  *(v9 + 72) = v14;
  *(v9 + 80) = v16;
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v16 + 72);
  swift_unknownObjectRetain();

  v19(v9, sub_24F04CFEC, v18, v17, v16);

  (*(v16 + 16))(v24, v17, v16);
  v20 = sub_24F04CFF4(v24);
  v22 = v21;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25[0] = v24[0];
  v25[1] = v24[1];
  v25[2] = v24[2];
  v25[3] = v24[3];
  sub_24E88D2AC(v25);
  swift_beginAccess();
  *(v9 + 40) = v20;
  *(v9 + 48) = v22;

  return v9;
}

uint64_t OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *a2;
  v10 = a2[1];
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 16) = v11;
  *(v6 + 24) = v10;
  *(v6 + 32) = a1;
  *(v6 + 88) = a5;
  ObjectType = swift_getObjectType();
  *&v25[0] = v11;
  *(&v25[0] + 1) = v10;
  v13 = *(a4 + 56);

  v14 = v13(v25, ObjectType, a4);
  v16 = v15;

  *(v6 + 72) = v14;
  *(v6 + 80) = v16;
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v16 + 72);
  swift_unknownObjectRetain();

  v19(v6, sub_24F04D478, v18, v17, v16);

  (*(v16 + 16))(v24, v17, v16);
  v20 = sub_24F04CFF4(v24);
  v22 = v21;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25[0] = v24[0];
  v25[1] = v24[1];
  v25[2] = v24[2];
  v25[3] = v24[3];
  sub_24E88D2AC(v25);
  swift_beginAccess();
  *(v6 + 40) = v20;
  *(v6 + 48) = v22;

  return v6;
}

uint64_t sub_24F04CEF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F04CF28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v8, ObjectType, a2);
    v5 = sub_24F04CFF4(v8);
    v7 = v6;
    v9[0] = v8[0];
    v9[1] = v8[1];
    v9[2] = v8[2];
    v9[3] = v8[3];
    sub_24E88D2AC(v9);
    sub_24F04C670(v5, v7);
  }

  return result;
}

uint64_t sub_24F04CFF4(uint64_t *a1)
{
  v3 = *(v1 + 32);
  result = *(v3 + 126);
  if (!*(v3 + 126))
  {
    return result;
  }

  if (result != 1)
  {
    v7 = *(v3 + 88);
    if (*(v7 + 16))
    {

      v8 = sub_24E76DB58(17);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 16 * v8);

        return v10;
      }
    }

    v17 = "Offer.Label.ComingSoon";
    goto LABEL_21;
  }

  if (*(v1 + 88) == 1)
  {
    v5 = 0x800000024FA69410;
    v6 = 0xD000000000000016;
    if (*(v3 + 208) == 1)
    {
      return localizedStringForAdsLanguage(_:)(*&v6)._countAndFlagsBits;
    }

    goto LABEL_22;
  }

  v11 = a1[6];
  v12 = v11 >> 60;
  if (!(v11 >> 60))
  {
    goto LABEL_17;
  }

  v13 = *a1;
  if (v12 == 1)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v17 = "Offer.Label.Preordered";
LABEL_21:
    v5 = (v17 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000016;
    goto LABEL_22;
  }

  if (v12 != 8)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a1[2] | a1[1];
  v16 = a1[4] | a1[5] | a1[7];
  if (v11 == 0x8000000000000000 && !(v15 | v13 | v14 | v16) || (result = 0, v11 == 0x8000000000000000) && v13 == 4 && !(v15 | v14 | v16))
  {
LABEL_17:
    v6 = 0xD000000000000014;
    v5 = 0x800000024FA693F0;
LABEL_22:
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    return localizedString(_:comment:)(*&v6, v18)._countAndFlagsBits;
  }

  return result;
}

uint64_t OfferLabelPresenter.deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OfferLabelPresenter.__deallocating_deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_24F04D2FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_24F04D348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F04C670(v1, v2);
}

uint64_t sub_24F04D388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F04D3D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return OfferLabelPresenter.view.setter(v2, v1);
}

uint64_t sub_24F04D47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_24F92C6B8();
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
      result = sub_24F4578E0((v13 > 1), v12 + 1, 1);
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
          result = sub_24E6586A8(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_24E6586A8(v6, v23, 0);
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

uint64_t ImpressionsAppendixMetricsTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F237B48);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028(MEMORY[0x277D84FA0]);
  return v0;
}

uint64_t ImpressionsAppendixMetricsTracker.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F237B48);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028(MEMORY[0x277D84FA0]);
  return v0;
}

void ImpressionsAppendixMetricsTracker.updateAppendix(for:including:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_24F927D88();
  v23 = *(v4 - 8);
  v24 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84FA0];
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = *(v21 + 16);
    MEMORY[0x28223BE20](v5);
    *(&v21 - 2) = &v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v16 = v23;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v25 = v17;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v18 = v22;
    v19 = v24;
    v20 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v20);
    *(&v21 - 4) = sub_24F04E1C8;
    *(&v21 - 3) = (&v21 - 4);
    *(&v21 - 2) = v15;
    sub_24F92BF08();
    (*(v16 + 8))(v18, v19);

    return;
  }

  v5 = sub_24F92C738();
  v8 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x253052270](i, a1, v6);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      if ((a2(v10) & 1) != 0 && (type metadata accessor for AppSearchResult(), (v11 = swift_dynamicCastClass()) != 0))
      {
        v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);

        sub_24ED7E42C(&v25, v14, v13);
      }

      else
      {
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t ImpressionsAppendixMetricsTracker.insert(_:)()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = *(*(result + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) + 24);
    v7 = *(v0 + 16);
    MEMORY[0x28223BE20](result);
    v11[-2] = v8;
    v11[-1] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v11[1] = v9;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v10 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v10);
    v11[-4] = sub_24F04E214;
    v11[-3] = &v11[-4];
    v11[-2] = v7;
    sub_24F92BF08();

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_24F04DCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_24ED7E42C(&v6, a2, a3);
}

uint64_t ImpressionsAppendixMetricsTracker.getCondensedLockupAdamIds()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24F92BF18();

  return v1;
}

uint64_t sub_24F04DE00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24F04D47C(*a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall ImpressionsAppendixMetricsTracker.clearAppendix()()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v11 = v6;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v8 = sub_24F04E010;
  v9 = 0;
  v10 = v5;
  sub_24F92BF08();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_24F04E010(void *a1)
{

  *a1 = MEMORY[0x277D84FA0];
  return result;
}

uint64_t ImpressionsAppendixMetricsTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F04E0A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24F92BF18();

  return v1;
}

uint64_t sub_24F04E15C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

uint64_t sub_24F04E21C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

uint64_t AnyArtworkFetchingView<>.fetchArtwork(for:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-v11 - 8];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-v15 - 8];
  sub_24E615E00(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    (*(a4 + 32))(v16, a2, a3, a4);
    return (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

_OWORD *ArcadeSubscriptionDecorator.init(objectGraph:product:appAdamId:subscriptionToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = a4[1];
  *a6 = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = v6;
  *(a6 + 64) = v7;
  return sub_24E612B0C(a5, (a6 + 8));
}

uint64_t ArcadeSubscriptionDecorator.decorate()()
{
  v18 = sub_24F929C38();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v17 = v20[0];
  sub_24E643A9C((v0 + 1), v21);
  v4 = v0[6];
  v16 = v0[5];
  v5 = v0[7];
  v6 = v0[8];
  v7 = qword_27F210278;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_24EB6C148();
  MetricsSystemInfo.init()(&v22);
  v19 = v22;
  v9 = MetricsSystemInfo.dictionaryRepresentation.getter();
  sub_24EBAA4C4(&v22);
  v10 = sub_24E954060(v9);

  v20[0] = 0xD000000000000022;
  v20[1] = 0x800000024FA69490;
  v21[4] = v16;
  v21[5] = v4;
  v21[6] = v5;
  v21[7] = v6;
  v21[8] = v8;
  v21[9] = v10;
  sub_24F929C28();

  sub_24F928FE8();
  v11 = v18;
  (*(v1 + 104))(v3, *MEMORY[0x277D220E8], v18);
  v12 = sub_24F929BD8();

  (*(v1 + 8))(v3, v11);
  v13 = sub_24EB48A68(v20, v12, "GameStoreKit/ArcadeSubscriptionDecorator.swift", 46, 2);

  sub_24F04E85C(v20);
  return v13;
}

uint64_t Conditional.debugDescription.getter()
{
  v1 = *v0;
  sub_24F92C888();

  strcpy(v7, "Conditional<");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](8236, 0xE200000000000000);
  v3 = sub_24F92D1E8();
  MEMORY[0x253050C20](v3);

  v4 = MEMORY[0x253050C20](10302, 0xE200000000000000);
  v5 = (*(*v1 + 96))(v4);
  MEMORY[0x253050C20](v5);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v7[0];
}

uint64_t Conditional.description.getter()
{
  v1 = *v0;
  strcpy(v4, "Conditional(");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = (*(*v1 + 96))();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_24F04EBD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t EngagementToggleAction.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit22EngagementToggleAction_identifier);

  return v1;
}

uint64_t EngagementToggleAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v67 = sub_24F91F6B8();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v62[-v5];
  v6 = sub_24F9285B8();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v62[-v9];
  v10 = sub_24F928AD8();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v74 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v62[-v14];
  MEMORY[0x28223BE20](v13);
  v72 = &v62[-v15];
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v62[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v62[-v22];
  v24 = 0xEA00000000007265;
  sub_24F928398();
  v68 = sub_24F928348();
  v26 = v25;
  v27 = v23;
  v28 = v16;
  v29 = *(v17 + 8);
  v88 = v17 + 8;
  (v29)(v27, v28);
  if (!v26)
  {
    v34 = 0x696669746E656469;
    v33 = a1;
    goto LABEL_5;
  }

  v30 = v26;
  sub_24F928398();
  v31 = sub_24F928278();
  (v29)(v21, v28);
  v32 = a1;
  if (v31 == 2)
  {
    v33 = a1;
    v34 = 0x65756C6176;

    v24 = 0xE500000000000000;
LABEL_5:
    v36 = v78;
    v35 = v79;
    v37 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v38 = v34;
    v38[1] = v24;
    v38[2] = v77;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v36 + 8))(v80, v35);
    (v29)(v33, v28);
    return v29;
  }

  v63 = v31;
  v64 = v29;
  v77 = v28;
  sub_24F928398();
  v39 = v78;
  (*(v78 + 16))(v69, v80, v79);
  v40 = v70;
  v41 = v76;
  sub_24F929548();
  v42 = v75;
  v43 = *(v75 + 48);
  if (v43(v40, 1, v41) == 1)
  {
    v44 = v72;
    sub_24F928A98();
    v45 = v44;
    if (v43(v40, 1, v41) != 1)
    {
      sub_24E601704(v40, &qword_27F223CE8);
    }
  }

  else
  {
    v45 = v72;
    (*(v42 + 32))(v72, v40, v41);
  }

  v46 = *(v42 + 16);
  v47 = v73;
  v46(v73, v45, v41);
  type metadata accessor for EngagementToggleAction();
  v29 = swift_allocObject();
  v48 = (v29 + OBJC_IVAR____TtC12GameStoreKit22EngagementToggleAction_identifier);
  *v48 = v68;
  v48[1] = v30;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit22EngagementToggleAction_value) = v63 & 1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v46(v74, v47, v41);
  v49 = sub_24F929608();
  v50 = v71;
  (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
  v51 = (v29 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v51 = 0u;
  v51[1] = 0u;
  v52 = v29 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v86, &v83);
  if (*(&v84 + 1))
  {
    v53 = v84;
    *v52 = v83;
    *(v52 + 16) = v53;
    *(v52 + 32) = v85;
  }

  else
  {
    v54 = v65;
    sub_24F91F6A8();
    v55 = sub_24F91F668();
    v57 = v56;
    (*(v66 + 8))(v54, v67);
    v81 = v55;
    v82 = v57;
    v50 = v71;
    sub_24F92C7F8();
    sub_24E601704(&v83, &qword_27F235830);
  }

  (*(v39 + 8))(v80, v79);
  v64(v32, v77);
  sub_24E601704(v86, &qword_27F235830);
  v59 = v75;
  v58 = v76;
  v60 = *(v75 + 8);
  v60(v73, v76);
  v60(v72, v58);
  sub_24E65E0D4(v50, v29 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  (*(v59 + 32))(v29 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v74, v58);
  return v29;
}

uint64_t type metadata accessor for EngagementToggleAction()
{
  result = qword_27F237C50;
  if (!qword_27F237C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t EngagementToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t sub_24F04F888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDefinitionDetail();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F04F9C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDefinitionDetail();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for UpdateActivityInstanceAction()
{
  result = qword_27F237C60;
  if (!qword_27F237C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F04FB38()
{
  type metadata accessor for ActivityDefinitionDetail();
  if (v0 <= 0x3F)
  {
    sub_24E6CFC68();
    if (v1 <= 0x3F)
    {
      sub_24F928AD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F04FBDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_24F928AD8();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityDefinitionDetail();
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237C70);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - v8;
  updated = type metadata accessor for UpdateActivityInstanceAction();
  MEMORY[0x28223BE20](updated);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F05020C();
  v30 = v9;
  v13 = v32;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v12;
  v15 = v27;
  v16 = v28;
  LOBYTE(v33) = 0;
  sub_24EF1EB98(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail);
  sub_24F92CC68();
  sub_24EF1EB34(v29, v14);
  LOBYTE(v33) = 1;
  v17 = sub_24F92CC28();
  v18 = (v14 + updated[5]);
  *v18 = v17;
  v18[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  v36 = 2;
  sub_24EE076B8();
  sub_24F92CC68();
  v20 = v14 + updated[6];
  v21 = v34;
  *v20 = v33;
  *(v20 + 16) = v21;
  *(v20 + 32) = v35;
  LOBYTE(v33) = 3;
  sub_24EF1EB98(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v32 = v5;
  v22 = v26;
  sub_24F92CC68();
  (*(v15 + 8))(v30, v31);
  (*(v25 + 32))(v14 + updated[7], v32, v22);
  sub_24F050260(v14, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F0502C4(v14, type metadata accessor for UpdateActivityInstanceAction);
}

uint64_t sub_24F0500B8()
{
  v1 = 0x6974696E69666564;
  v2 = 0x65756E69746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x6E694C7974726170;
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

uint64_t sub_24F050154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F05043C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F05017C(uint64_t a1)
{
  v2 = sub_24F05020C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0501B8(uint64_t a1)
{
  v2 = sub_24F05020C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F05020C()
{
  result = qword_27F237C78;
  if (!qword_27F237C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C78);
  }

  return result;
}

uint64_t sub_24F050260(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateActivityInstanceAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24F0502C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F050338()
{
  result = qword_27F237C80;
  if (!qword_27F237C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C80);
  }

  return result;
}

unint64_t sub_24F050390()
{
  result = qword_27F237C88;
  if (!qword_27F237C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C88);
  }

  return result;
}

unint64_t sub_24F0503E8()
{
  result = qword_27F237C90;
  if (!qword_27F237C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C90);
  }

  return result;
}

uint64_t sub_24F05043C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E694C7974726170 && a2 == 0xE90000000000006BLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t TodayWidgetCardCollectionTemplate.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayWidgetCardCollectionTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayWidgetCardCollectionTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayWidgetCardCollectionTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v57 = v3;
  v56 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v47 - v6;
  v7 = sub_24F91F648();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = sub_24F92AC28();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v23 = v18;
  v24 = *(v13 + 8);
  v24(v23, v12);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0);
    v25 = sub_24F92AC38();
    sub_24F0516EC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 0x7364726163;
    v27 = v56;
    v26[1] = 0xE500000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    v24(v58, v12);
    v28 = v57;
    v29 = v59;
    goto LABEL_6;
  }

  v49 = v24;
  v50 = v12;
  v30 = (*(v20 + 32))(v22, v11, v19);
  MEMORY[0x28223BE20](v30);
  *(&v47 - 2) = v59;
  type metadata accessor for WidgetTodayCardTemplate();
  v31 = v52;
  v32 = sub_24F92ABB8();
  v48 = v22;
  v52 = v19;
  if (!v31)
  {
    v28 = v57;
    *(v57 + 2) = v32;
    sub_24F928398();
    v33 = v55;
    sub_24F928288();
    v34 = v33;
    v35 = v50;
    v36 = v49;
    (v49)(v15);
    v37 = v53;
    v38 = v54;
    if ((*(v53 + 48))(v34, 1, v54) != 1)
    {
      v36(v58, v35);
      (*(v20 + 8))(v48, v52);
      v43 = *(v37 + 32);
      v44 = v51;
      v43(v51, v34, v38);
      v43(&v28[OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate], v44, v38);
      v45 = sub_24F9285B8();
      (*(*(v45 - 8) + 8))(v59, v45);
      return v28;
    }

    sub_24E601704(v34, &unk_27F22EC30);
    v39 = sub_24F92AC38();
    sub_24F0516EC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v40 = 0x4479616C70736964;
    v41 = v56;
    v40[1] = 0xEB00000000657461;
    v40[2] = v41;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    v36(v58, v35);
    (*(v20 + 8))(v48, v52);

    v29 = v59;
LABEL_6:
    swift_deallocPartialClassInstance();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v29, v42);
    return v28;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F050E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetTodayCardTemplate();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24F0516EC(&qword_27F237CB0, type metadata accessor for WidgetTodayCardTemplate);
  return sub_24F929548();
}

uint64_t TodayWidgetCardCollectionTemplate.hash(into:)(uint64_t a1)
{
  sub_24EA1D3B4(a1, *(v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578]);
  return sub_24F92AEF8();
}

uint64_t static TodayWidgetCardCollectionTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24EA14C48(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_24F91F5F8();
}

uint64_t TodayWidgetCardCollectionTemplate.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TodayWidgetCardCollectionTemplate.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TodayWidgetCardCollectionTemplate.hashValue.getter()
{
  sub_24F92D068();
  sub_24EA1D3B4(v2, *(v0 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578]);
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24F0512C0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayWidgetCardCollectionTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F051328()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24EA1D3B4(v3, *(v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578]);
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24F0513D4(uint64_t a1)
{
  sub_24EA1D3B4(a1, *(*v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578]);
  return sub_24F92AEF8();
}

uint64_t sub_24F051464()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24EA1D3B4(v3, *(v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578]);
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24F05150C(uint64_t a1, uint64_t a2)
{
  if ((sub_24EA14C48(*(*a1 + 16), *(*a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_24F91F5F8();
}

uint64_t type metadata accessor for TodayWidgetCardCollectionTemplate()
{
  result = qword_27F237CA0;
  if (!qword_27F237CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F05160C()
{
  result = sub_24F91F648();
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

uint64_t sub_24F0516EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppStoreMetricsFieldsBuilder.addValue(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E643A9C(a1, v6);

  return sub_24E98859C(v6, a2, a3);
}

uint64_t sub_24F0517A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E643A9C(a1, v6);

  return sub_24E98859C(v6, a2, a3);
}

uint64_t LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a2)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a2)
  {
    v11 = a2;
  }

  *a9 = v10;
  *(a9 + 8) = v11;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 65) = a10;
  return result;
}

id LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)@<X0>(id result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 65) = a8 & 1;
  return result;
}

uint64_t LabelPlaceholderCompatibility.layoutTextView.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F922678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = *(v1 + 65);
  if (v15)
  {
    v16 = *(v1 + 64);
    v22[1] = *v1;
    v22[2] = v8;
    v23 = v9;
    *v24 = *(v1 + 17);
    *&v24[3] = *(v1 + 20);
    v25 = v10;
    v26 = v11;
    v27 = v13;
    v28 = v12;
    v29 = v14;
    v30 = v16;
    v31 = v15;
    sub_24F051B10(v6);
    sub_24F922648();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (*(v1 + 16))
    {
      sub_24F922A78();
      swift_allocObject();
      sub_24F051B00(v7, v8, 1);
      v18 = v10;
      v19 = sub_24F922A68();
      v20 = MEMORY[0x277D22908];
    }

    else
    {
      sub_24F9229D8();
      swift_allocObject();
      sub_24F051B00(v7, v8, 0);
      v21 = v10;
      v19 = sub_24F9229C8();
      v20 = MEMORY[0x277D228F0];
    }

    result = swift_getObjectType();
    a1[3] = result;
    a1[4] = v20;
    *a1 = v19;
  }

  return result;
}

id sub_24F051B00(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_24F051B10@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_24F922538();
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = v29 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = *v1;
  v20 = *(v1 + 16);
  v29[1] = *(v1 + 32);
  v29[2] = *(v1 + 40);
  v29[3] = *(v1 + 48);
  v29[4] = *(v1 + 56);
  v22 = (v21 + 8);
  v30 = *(v1 + 64);
  v31 = v19;
  if (v20)
  {
    v23 = v19;
    sub_24F922528();
    sub_24F922518();
    v24 = *v22;
    (*v22)(v5, v2);
    sub_24F9224D8();
    v24(v8, v2);
    sub_24F9224F8();
    v24(v11, v2);
    sub_24F9224E8();
    v24(v14, v2);
    sub_24F922508();
    v24(v17, v2);
    if ((v30 & 1) == 0 || (v25 = sub_24F922658(), sub_24F922668(), sub_24F922668(), sub_24F922668() != v25))
    {
      sub_24F922668();
    }

    return sub_24F922698();
  }

  else
  {
    v29[0] = *(v1 + 8);

    sub_24F922528();
    sub_24F922518();
    v26 = *v22;
    (*v22)(v5, v2);
    sub_24F9224D8();
    v26(v8, v2);
    sub_24F9224F8();
    v26(v11, v2);
    sub_24F9224E8();
    v26(v14, v2);
    sub_24F922508();
    v26(v17, v2);
    if ((v30 & 1) == 0 || (v27 = sub_24F922658(), sub_24F922668(), sub_24F922668(), sub_24F922668() != v27))
    {
      sub_24F922668();
    }

    return sub_24F922688();
  }
}

uint64_t LabelPlaceholderCompatibility.referableLayoutTextView.getter()
{
  v1 = sub_24F922678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 65);
  if (v13)
  {
    v14 = *(v0 + 64);
    v23[0] = *v0;
    v23[1] = v6;
    v24 = v7;
    *v25 = *(v0 + 17);
    *&v25[3] = *(v0 + 20);
    v26 = v9;
    v27 = v8;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v14;
    v32 = v13;
    sub_24F051B10(v4);
    sub_24F922648();
    (*(v2 + 8))(v4, v1);
    v15 = type metadata accessor for _LabelPlaceholderReferableLayoutTextView();
    v16 = objc_allocWithZone(v15);
    sub_24E615E00(v23, v16 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
    v22.receiver = v16;
    v22.super_class = v15;
    v17 = objc_msgSendSuper2(&v22, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_24F0548D4(&qword_27F237CC0);
    return v17;
  }

  else if (*(v0 + 16))
  {
    sub_24F922A78();
    swift_allocObject();
    sub_24F051B00(v5, v6, 1);
    v19 = v9;
    return sub_24F922A68();
  }

  else
  {
    sub_24F9229D8();
    swift_allocObject();
    sub_24F051B00(v5, v6, 0);
    v20 = v9;
    return sub_24F9229C8();
  }
}

double LabelPlaceholderCompatibility.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  *&v6 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a3, *&a2), v5);

  return v6;
}

JUMeasurements __swiftcall LabelPlaceholderCompatibility.measurements(fitting:with:)(CGSize fitting, UITraitCollection with)
{
  isa = with.super.isa;
  v3 = sub_24F922588();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v52 - v7;
  v8 = sub_24F922678();
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  v18 = *(v2 + 40);
  v17 = *(v2 + 48);
  v19 = *(v2 + 56);
  v20 = *(v2 + 64);
  v21 = *(v2 + 65);
  if (v21)
  {
    v57 = *v2;
    v58 = v13;
    v59 = v14;
    *v60 = *(v2 + 17);
    *&v60[3] = *(v2 + 20);
    v61 = v16;
    v62 = v15;
    v63 = v18;
    v64 = v17;
    v65 = v19;
    v66 = v20;
    v67 = v21;
    v22 = v9;
    sub_24F051B10(v11);
    sub_24F922A18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F941C80;
    v24 = isa;
    *(v23 + 32) = isa;
    v25 = v24;
    v26 = sub_24F922A28();
    sub_24F922288();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    (*(v22 + 8))(v11, v8);
  }

  else
  {
    v35 = isa;
    if (v14)
    {
      sub_24F051B00(v12, v13, 1);
      v36 = v16;
      sub_24F922558();
    }

    else
    {
      sub_24F051B00(v12, v13, 0);
      v37 = v16;
      sub_24F922578();
    }

    v39 = v53;
    v38 = v54;
    v40 = v55;
    (*(v54 + 32))(v53, v5, v55);
    sub_24F922A18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24F941C80;
    *(v41 + 32) = v35;
    v42 = v35;
    v43 = sub_24F922A28();
    sub_24F922288();
    v28 = v44;
    v30 = v45;
    v32 = v46;
    v34 = v47;

    (*(v38 + 8))(v39, v40);
  }

  v48 = v28;
  v49 = v30;
  v50 = v32;
  v51 = v34;
  result.var3 = v51;
  result.var2 = v50;
  result.var1 = v49;
  result.var0 = v48;
  return result;
}

double static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, id a11, char a12)
{
  v22 = [a11 traitCollection];
  v23 = v22;
  if (a2)
  {
    sub_24E6C065C();
    v26[0] = a1;
    v26[1] = a2;
    v27 = 0;
    v28 = MEMORY[0x253051BF0](a3, v23);
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8 & 1;
    v34 = a12 & 1;

    *&v24 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), v23);

    sub_24F052864(v26);
  }

  else
  {

    return 0.0;
  }

  return v24;
}

double static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, UITraitCollection a11, char a12)
{
  if (!a2)
  {
    return 0.0;
  }

  sub_24E6C065C();
  v24[0] = a1;
  v24[1] = a2;
  v25 = 0;
  v26 = MEMORY[0x253051BF0](a3, a11.super.isa);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8 & 1;
  v32 = a12 & 1;

  *&v22 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), a11);
  sub_24F052864(v24);
  return v22;
}

double static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, double a9, double a10, unsigned __int8 a11)
{
  v40 = a7;
  v39 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v37[-v20];
  v22 = sub_24F922378();
  v23 = *(v22 - 8);
  *&v24 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v26 = &v37[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = [a8 traitCollection];
  v28 = v27;
  if (a1)
  {
    v38 = a11;
    sub_24E934D5C(a2, v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      v29 = a1;
      sub_24E934E3C(v21);
      v30 = objc_opt_self();
      v31 = *MEMORY[0x277D76918];
      v32 = v29;
      v33 = [v30 preferredFontForTextStyle:v31 compatibleWithTraitCollection:0];
      a4 = 0;
      a5 = 0;
      a3 = 4;
    }

    else
    {
      (*(v23 + 32))(v26, v21, v22);
      sub_24E6C065C();
      v35 = a1;
      v33 = MEMORY[0x253051BF0](v26, v28);
      (*(v23 + 8))(v26, v22);
    }

    v46[0] = a1;
    v46[1] = 0;
    LOBYTE(v47) = 1;
    *(&v47 + 1) = v33;
    *&v48 = a3;
    *(&v48 + 1) = a4;
    *&v49 = a5;
    *(&v49 + 1) = v39;
    LOBYTE(v50) = v40 & 1;
    HIBYTE(v50) = v38 & 1;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v42 = v47;
    v41 = a1;
    sub_24F052F98(v46, v51);
    *&v34 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), v28);

    sub_24F052864(v46);
    v51[2] = v43;
    v51[3] = v44;
    v52 = v45;
    v51[0] = v41;
    v51[1] = v42;
    sub_24F052864(v51);
  }

  else
  {

    return 0.0;
  }

  return v34;
}

double static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, UITraitCollection a8, double a9, double a10, unsigned __int8 a11)
{
  v37 = a7;
  v36 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34[-v20];
  v22 = sub_24F922378();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v34[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return 0.0;
  }

  v35 = a11;
  sub_24E934D5C(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v26 = a1;
    sub_24E934E3C(v21);
    v27 = objc_opt_self();
    v28 = *MEMORY[0x277D76918];
    v29 = v26;
    v30 = [v27 preferredFontForTextStyle:v28 compatibleWithTraitCollection:0];
    a4 = 0;
    a5 = 0;
    a3 = 4;
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    sub_24E6C065C();
    v32 = a1;
    v30 = MEMORY[0x253051BF0](v25, a8.super.isa);
    (*(v23 + 8))(v25, v22);
  }

  v43[0] = a1;
  v43[1] = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = v30;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  *&v46 = a5;
  *(&v46 + 1) = v36;
  LOBYTE(v47) = v37 & 1;
  HIBYTE(v47) = v35 & 1;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v39 = v44;
  v38 = a1;
  sub_24F052F98(v43, v48);
  *&v31 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), a8);
  sub_24F052864(v43);

  v48[2] = v40;
  v48[3] = v41;
  v49 = v42;
  v48[0] = v38;
  v48[1] = v39;
  sub_24F052864(v48);
  return v31;
}

double sub_24F052FD0(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  *&v6 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a3, *&a2), v5);

  return v6;
}

uint64_t sub_24F053058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F0530A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_24F053104(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5 + 24);
  v7 = __swift_project_boxed_opaque_existential_1((v1 + v5), v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  (*(v8 + 16))(&v21 - v10, v9);
  sub_24F922218();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v6);
  *v4 = v13;
  v4[1] = v15;
  v4[2] = v17;
  v4[3] = v19;
  return sub_24F05326C;
}

void sub_24F05326C(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 32) + *(*a1 + 40));
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - v7;
  (*(v5 + 16))(&v9 - v7, v6);
  sub_24F922228();
  (*(v5 + 8))(v8, v3);
  free(v1);
}

uint64_t (*sub_24F053390(uint64_t a1))(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922238();
  (*(v6 + 8))(v9, v4);
  *(a1 + 16) = v10 & 1;
  return sub_24F0534B4;
}

uint64_t sub_24F0534B4(void *a1)
{
  v1 = (*a1 + a1[1]);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_24F922248();
  return (*(v4 + 8))(v7, v2);
}

uint64_t (*sub_24F0535B0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922468();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_24F0536D0;
}

uint64_t (*sub_24F0536E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922448();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_24F053808;
}

uint64_t sub_24F053820(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (a1[1] + a1[2]);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v10);
  a3(v4, v6, v7);
  return (*(v9 + 8))(v12, v6);
}

void (*sub_24F053924(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_24F922498();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_24F053A44;
}

void sub_24F053A44(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*(a1 + 8) + *(a1 + 16));
  v5 = v4[3];
  v6 = __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v8);
  if (a2)
  {
    v11 = v3;
    sub_24F9224A8();
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    sub_24F9224A8();
    (*(v7 + 8))(v10, v5);
  }
}

void (*sub_24F053C18(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F0535B0(v2);
  return sub_24F054918;
}

void (*sub_24F053CBC(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F0536E8(v2);
  return sub_24F054918;
}

uint64_t sub_24F053D60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = (*v4 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v8 = v7[3];
  v9 = v7[4];
  v10 = __swift_project_boxed_opaque_existential_1(v7, v8);
  v11 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, v12);
  a4(a1, v8, v9);
  return (*(v11 + 8))(v14, v8);
}

void (*sub_24F053E68(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F053924(v2);
  return sub_24F054918;
}

uint64_t sub_24F053EDC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v5);
  v8 = sub_24F922428();
  (*(v4 + 8))(v7, v2);
  return v8 & 1;
}

double sub_24F053FD4()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  (*(v4 + 16))(&v11 - v6, v5);
  sub_24F922488();
  v9 = v8;
  (*(v4 + 8))(v7, v2);
  return v9;
}

uint64_t sub_24F05410C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v10);
  v13 = a3(v6, v7);
  (*(v9 + 8))(v12, v6);
  return v13;
}

uint64_t sub_24F05422C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_24F922228();
  return (*(v4 + 8))(v7, v2);
}

void (*sub_24F05434C(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F053104(v2);
  return sub_24EA092C8;
}

uint64_t sub_24F0543D8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_24F922248();
  return (*(v4 + 8))(v7, v2);
}

void (*sub_24F0544D8(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F053390(v2);
  return sub_24F054918;
}

uint64_t sub_24F054564(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = (*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v10);
  LOBYTE(a3) = a3(v6, *(v7 + 8));
  (*(v9 + 8))(v12, v6);
  return a3 & 1;
}

double sub_24F054684(uint64_t a1, uint64_t a2, double (*a3)(uint64_t, void))
{
  v5 = (*v3 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v10);
  v13 = a3(v6, *(v7 + 8));
  (*(v9 + 8))(v12, v6);
  return v13;
}

double sub_24F0547B4()
{
  sub_24E615E00(*v0 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922288();
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_24F0548D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _LabelPlaceholderReferableLayoutTextView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id Array<A>.totalTopSupplementaryHeight.getter(uint64_t a1)
{
  result = sub_24F92B648();
  if (result)
  {
    v3 = 4;
    v4 = 0.0;
    while (1)
    {
      v9 = sub_24F92B628();
      sub_24F92B5D8();
      result = (v9 & 1) != 0 ? *(a1 + 8 * v3) : sub_24F92C8D8();
      v10 = result;
      v11 = (v3 - 3);
      if (__OFADD__(v3 - 4, 1))
      {
        break;
      }

      if ([result alignment] == 1)
      {
        v5 = [v10 layoutSize];
        v6 = [v5 heightDimension];

        [v6 dimension];
        v8 = v7;

        v4 = v4 + v8;
      }

      else
      {
      }

      result = sub_24F92B648();
      ++v3;
      if (v11 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id Array<A>.totalBottomSupplementaryHeight.getter(uint64_t a1)
{
  result = sub_24F92B648();
  if (result)
  {
    v3 = 4;
    v4 = 0.0;
    while (1)
    {
      v9 = sub_24F92B628();
      sub_24F92B5D8();
      result = (v9 & 1) != 0 ? *(a1 + 8 * v3) : sub_24F92C8D8();
      v10 = result;
      v11 = (v3 - 3);
      if (__OFADD__(v3 - 4, 1))
      {
        break;
      }

      if ([result alignment] == 5)
      {
        v5 = [v10 layoutSize];
        v6 = [v5 heightDimension];

        [v6 dimension];
        v8 = v7;

        v4 = v4 + v8;
      }

      else
      {
      }

      result = sub_24F92B648();
      ++v3;
      if (v11 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F054BEC()
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  return sub_24F92B4B8() & 1;
}

uint64_t ComponentPrefetchSizing.init(size:contentMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t Conditional<>.init(property:trueValue:falseValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  type metadata accessor for TraitsExpression();
  v15 = *(v9 + 16);
  v15(v14, a2, a4);
  v15(v11, a3, a4);
  swift_allocObject();
  v16 = sub_24F055018(a1, v14, v11);
  v17 = *(v9 + 8);
  v17(a3, a4);
  v17(a2, a4);
  result = sub_24E5FA814(v16, &v20);
  *v19 = v20;
  return result;
}

void Conditional.evaluate<>(in:)(void *a1)
{
  v2 = objc_allocWithZone(sub_24F922A18());
  v3 = a1;
  v4 = sub_24F922A08();
  Conditional.evaluate(with:)();
}

__n128 sub_24F05500C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24F055018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  *(v3 + 2) = a1;
  v6 = *(v5 + 128);
  v7 = *(*(v6 - 8) + 32);
  v7(&v3[*(v5 + 144)], a2, v6);
  v7(&v3[*(*v3 + 152)], a3, v6);

  return sub_24F04E8C0();
}

uint64_t sub_24F0550E4()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0x79747265706F7270, 0xEA0000000000203ALL);
  sub_24F92D138();
  sub_24F92CDC8();
  MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA64ED0);
  sub_24F92CDC8();
  MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA64EF0);
  sub_24F92CDC8();
  return 0;
}

uint64_t sub_24F055234@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  v4 = 152;
  if (v6)
  {
    v4 = 144;
  }

  return (*(*(*(v3 + 128) - 8) + 16))(a1, &v1[*(*v1 + v4)]);
}

uint64_t sub_24F05531C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v5 = *(*(v2 - 8) + 8);
  v5(&v0[*(*v0 + 144)], v2);
  v3 = &v0[*(*v0 + 152)];

  return (v5)(v3, v2);
}

uint64_t sub_24F0553E4()
{
  v1 = *v0;
  v2 = sub_24F04E8C0();

  v3 = *(v1 + 128);
  v4 = *(*(v3 - 8) + 8);
  v4(v2 + *(*v2 + 144), v3);
  v4(v2 + *(*v2 + 152), v3);
  return v2;
}

uint64_t sub_24F0554A0()
{
  sub_24F0553E4();

  return swift_deallocClassInstance();
}

uint64_t sub_24F055508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  type metadata accessor for TraitsExpression();
  v22 = a3;
  v23 = a4;
  KeyPath = swift_getKeyPath();
  v16 = *(v9 + 16);
  v16(v14, a1, a4);
  v16(v11, a2, a4);
  swift_allocObject();
  v17 = sub_24F055018(KeyPath, v14, v11);
  v18 = *(v9 + 8);
  v18(a2, a4);
  v18(a1, a4);
  result = sub_24E5FA814(v17, &v24);
  *v21 = v24;
  return result;
}

uint64_t sub_24F0556C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F0556F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F055738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF78();
  *a1 = result & 1;
  return result;
}

uint64_t Conditional<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  v15 = *(v8 + 16);
  v15(&v17 - v13, a1, v12);
  (v15)(v10, a1, a3);
  Conditional<>.init(regularValue:compactValue:)(v14, v10, a2, a3, &v18);
  result = (*(v8 + 8))(a1, a3);
  *a4 = v18;
  return result;
}

uint64_t sub_24F0558C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = swift_allocObject();
  sub_24E99091C(a2, v16);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_24E911D90(v16, v20 + v18);
  v50 = a1;
  *(v20 + v19) = a1;
  v21 = v13;
  sub_24E99091C(a2, v13);
  sub_24E99091C(v13, v10);
  *(v17 + qword_27F22F198) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v17 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v23 = qword_27F39C780;

  *(v17 + v23) = sub_24E60986C(v22);
  v24 = (v17 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v17 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v52 = v25;
  v26 = (v17 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v17 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v17 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v17 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v17 + qword_27F39C790) = 0;
  *(v17 + qword_27F22F1D0) = 0;
  *(v17 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v17 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80);
  swift_allocObject();
  *(v17 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v17 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98);
  swift_allocObject();
  *(v17 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v17 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v17 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v36 = sub_24F92ADA8();

  sub_24E70E058(v49);
  sub_24E70E058(v21);
  *(v17 + v35) = v36;
  v37 = qword_27F22F1E0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v39 = *(*(v38 - 8) + 56);
  v39(v17 + v37, 1, 1, v38);
  v40 = v38;
  v41 = v53;
  v39(v17 + qword_27F22F1E8, 1, 1, v40);
  v42 = v51;
  *(v17 + 16) = v50;
  sub_24E911D90(v42, v17 + qword_27F39C7D0);
  *v24 = sub_24F056678;
  v24[1] = v20;
  *v26 = 0;
  v26[1] = 0;
  if (v41)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v44 = sub_24E965688;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = v52;
  *v52 = v44;
  v45[1] = v43;
  *v27 = 0;
  v27[1] = 0;
  *v28 = 0;
  v28[1] = 0;
  v46 = v55;
  *(v17 + qword_27F22F1F0) = v54;
  *(v17 + qword_27F39C7D8) = v46;
  return v17;
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  sub_24E99091C(a2, &v51 - v16);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_24E911D90(v17, v19 + v18);
  v52 = v14;
  v53 = a1;
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v20 = v19;
  sub_24E99091C(a2, v14);
  sub_24E99091C(v14, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v6 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;

  *(v6 + v22) = sub_24E60986C(v21);
  v23 = (v6 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v54 = v27;
  v28 = (v6 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80);
  swift_allocObject();
  *(v6 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98);
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  sub_24E70E058(a2);
  sub_24E70E058(v52);
  *(v6 + v34) = v35;
  v36 = qword_27F22F1E0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v38 = *(*(v37 - 8) + 56);
  v38(v6 + v36, 1, 1, v37);
  v39 = v37;
  v40 = v56;
  v38(v6 + qword_27F22F1E8, 1, 1, v39);
  *(v6 + 16) = v53;
  sub_24E911D90(v55, v6 + qword_27F39C7D0);
  v41 = *v23;
  *v23 = sub_24F056AF0;
  v23[1] = v20;
  sub_24E824448(v41);
  v42 = *v25;
  *v25 = 0;
  v25[1] = 0;
  sub_24E824448(v42);
  if (v40)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v44 = sub_24EC02BCC;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = *v24;
  *v24 = v44;
  v24[1] = v43;
  sub_24E824448(v45);
  v46 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v46);
  v47 = v54;
  v48 = *v54;
  *v54 = 0;
  v47[1] = 0;
  sub_24E824448(v48);
  v49 = v58;
  *(v6 + qword_27F22F1F0) = v57;
  *(v6 + qword_27F39C7D8) = v49;
  return v6;
}

uint64_t sub_24F0563B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E99091C(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E70E058(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229618);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237D70);
    sub_24F056A28();
    swift_allocError();
    *v15 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    (*(v12 + 16))(&v7[*(v5 + 20)], v14, v11);
    *v7 = 0xD000000000000023;
    *(v7 + 1) = 0x800000024FA69790;
    v17 = sub_24EB48C40(v7, a3, "GameStoreKit/SearchChartsAndCategoriesDiffablePageContentPresenter.swift", 72, 2);

    sub_24F056A8C(v7);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24F056704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F05676C()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F0568D0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F0563B0(a1, v1 + v4, v5);
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageContentPresenter()
{
  result = qword_27F237D60;
  if (!qword_27F237D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F056A28()
{
  result = qword_27F237D78;
  if (!qword_27F237D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237D78);
  }

  return result;
}

uint64_t sub_24F056A8C(uint64_t a1)
{
  v2 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.selectedOption.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16);
  v7[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
  v7[1] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 48);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 32);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_24F0570B0(v7, &v6);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v43 = sub_24F928388();
  v42 = *(v43 - 8);
  v14 = MEMORY[0x28223BE20](v43);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v50 = a1;
  sub_24F928398();
  v40 = *(v7 + 16);
  v40(v13, a2, v6);
  v19 = v41;
  PageFacets.Facet.init(deserializing:using:)(v18, v13, v48);
  if (v19)
  {
    (*(v7 + 8))(a2, v6);
    (*(v42 + 8))(v50, v43);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v7;
    v20 = v3 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet;
    v21 = v48[7];
    *(v20 + 6) = v48[6];
    *(v20 + 7) = v21;
    *(v20 + 16) = v49;
    v22 = v48[3];
    *(v20 + 2) = v48[2];
    *(v20 + 3) = v22;
    v23 = v48[5];
    *(v20 + 4) = v48[4];
    *(v20 + 5) = v23;
    v24 = v48[1];
    *v20 = v48[0];
    *(v20 + 1) = v24;
    v25 = v50;
    sub_24F928398();
    v40(v36, a2, v6);
    sub_24EDCB6C8();
    sub_24F929548();
    v26 = (v3 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
    v27 = v45;
    *v26 = v44;
    v26[1] = v27;
    v28 = v47;
    v26[2] = v46;
    v26[3] = v28;
    v29 = v42;
    v30 = v37;
    v31 = v25;
    v32 = v6;
    v33 = v43;
    (*(v42 + 16))(v37, v31, v43);
    v34 = v38;
    v40(v38, a2, v32);
    v6 = Action.init(deserializing:using:)(v30, v34);
    (*(v41 + 8))(a2, v32);
    (*(v29 + 8))(v50, v33);
  }

  return v6;
}

uint64_t sub_24F0570B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F057150()
{
  sub_24E7726D0(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet);
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24);

  return sub_24F0572A0(v1, v2, v3, v4);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  sub_24E7726D0(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet);
  sub_24F0572A0(*(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24));
  return v0;
}

uint64_t sub_24F0572A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet;

  sub_24E7726D0(v0 + v3);
  sub_24F0572A0(*(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction()
{
  result = qword_27F237D80;
  if (!qword_27F237D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::AccessPointMetricsHelper::actionKeys_optional __swiftcall AccessPointMetricsHelper.actionKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessPointMetricsHelper.actionKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E6F697461636F6CLL;
    v7 = 0x6973736572706D69;
    if (v1 != 8)
    {
      v7 = 0x707041666572;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x7954746567726174;
    if (v1 != 5)
    {
      v8 = 0x6449746567726174;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x707954746E657665;
    v3 = 0x6570795465676170;
    v4 = 0x644965676170;
    if (v1 != 3)
    {
      v4 = 0x746E6F4365676170;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x79546E6F69746361;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24F057700@<X0>(uint64_t *a1@<X8>)
{
  result = AccessPointMetricsHelper.actionKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::AccessPointMetricsHelper::impressionKeys_optional __swiftcall AccessPointMetricsHelper.impressionKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.impressionKeys.rawValue.getter()
{
  v1 = 0x657079546469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_24F05783C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F057930()
{
  sub_24F92B218();
}

uint64_t sub_24F057A10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F057B0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x657079546469;
  v5 = 0x800000024FA42AC0;
  v6 = 0xD000000000000012;
  v7 = 0xEF7865646E496E6FLL;
  if (v2 != 3)
  {
    v7 = 0xEE00657079546E6FLL;
  }

  if (v2 != 2)
  {
    v6 = 0x6973736572706D69;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

GameStoreKit::AccessPointMetricsHelper::impressionType_optional __swiftcall AccessPointMetricsHelper.impressionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.impressionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x42656D6F636C6577;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD00000000000001ELL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000020;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F50737365636361;
    v3 = 0xD000000000000017;
    if (v1 != 2)
    {
      v3 = 0x6142656D61476E69;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

void sub_24F057D7C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xED000072656E6E61;
    v9 = 0x42656D6F636C6577;
    if (v2 != 6)
    {
      v9 = 0xD000000000000016;
      v8 = 0x800000024FA42B20;
    }

    v10 = 0x800000024FA3ED00;
    v11 = 0xD00000000000001ELL;
    if (v2 == 4)
    {
      v11 = 0xD000000000000020;
    }

    else
    {
      v10 = 0x800000024FA3ED30;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000746E69;
    v4 = 0x6F50737365636361;
    v5 = 0x800000024FA42B00;
    v6 = 0xD000000000000017;
    if (v2 != 2)
    {
      v6 = 0x6142656D61476E69;
      v5 = 0xEC00000072656E6ELL;
    }

    if (*v1)
    {
      v4 = 0xD000000000000014;
      v3 = 0x800000024FA42A80;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

GameStoreKit::AccessPointMetricsHelper::eventType_optional __swiftcall AccessPointMetricsHelper.eventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessPointMetricsHelper.eventType.rawValue.getter()
{
  v1 = 0x6B63696C63;
  v2 = 0x676F6C616964;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 0x686372616573;
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

uint64_t sub_24F057F94()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F058054()
{
  sub_24F92B218();
}

uint64_t sub_24F058100()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0581C8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B63696C63;
  v4 = 0xE600000000000000;
  v5 = 0x676F6C616964;
  if (*v1 != 2)
  {
    v5 = 0x6973736572706D69;
    v4 = 0xEB00000000736E6FLL;
  }

  if (*v1)
  {
    v3 = 0x686372616573;
    v2 = 0xE600000000000000;
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

uint64_t AccessPointMetricsHelper.actionType.rawValue.getter()
{
  if (*v0)
  {
    return 1852141679;
  }

  else
  {
    return 0x657461676976616ELL;
  }
}

uint64_t sub_24F058284(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1852141679;
  }

  else
  {
    v3 = 0x657461676976616ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1852141679;
  }

  else
  {
    v5 = 0x657461676976616ELL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F058324()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0583A0()
{
  sub_24F92B218();
}

uint64_t sub_24F058408()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F05848C(uint64_t *a1@<X8>)
{
  v2 = 1852141679;
  if (!*v1)
  {
    v2 = 0x657461676976616ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

GameStoreKit::AccessPointMetricsHelper::targetType_optional __swiftcall AccessPointMetricsHelper.targetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.targetType.rawValue.getter()
{
  v1 = 0x6F50737365636361;
  v2 = 0x72656E6E6162;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_24F0585A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F05866C()
{
  sub_24F92B218();
}

uint64_t sub_24F05871C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0587E8(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746E69;
  v3 = 0x6F50737365636361;
  v4 = 0xE600000000000000;
  v5 = 0x72656E6E6162;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000024FA42A80;
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

GameStoreKit::AccessPointMetricsHelper::targetId_optional __swiftcall AccessPointMetricsHelper.targetId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.targetId.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x7250646E65697266;
    v7 = 0x73646E65697266;
    if (v1 != 8)
    {
      v7 = 0x72616F6268736164;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6D65766569686361;
    if (v1 != 5)
    {
      v8 = 0x656C69666F7270;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x656461637261;
    v3 = 0xD000000000000016;
    v4 = 0x6F6272656461656CLL;
    if (v1 != 3)
    {
      v4 = 0x49656C69666F7270;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x614E726579616C70;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24F058B00(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_24F92D068();
  a3(v7, v5);
  return sub_24F92D0B8();
}

uint64_t sub_24F058B70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_24F92D068();
  a4(v8, v6);
  return sub_24F92D0B8();
}

unint64_t sub_24F058BC8@<X0>(unint64_t *a1@<X8>)
{
  result = AccessPointMetricsHelper.targetId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::AccessPointMetricsHelper::pageId_optional __swiftcall AccessPointMetricsHelper.pageId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessPointMetricsHelper.pageId.rawValue.getter()
{
  v1 = 0x6142656D61476E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F50737365636361;
  }
}

uint64_t sub_24F058D70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6142656D61476E69;
  v4 = 0xEC00000072656E6ELL;
  v5 = 0x800000024FA42B50;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000024FA42B50;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F50737365636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF65676150746E69;
  }

  v8 = 0x6142656D61476E69;
  if (*a2 == 1)
  {
    v5 = 0xEC00000072656E6ELL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F50737365636361;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEF65676150746E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F058E84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F058F40()
{
  sub_24F92B218();
}

uint64_t sub_24F058FE8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0590AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65676150746E69;
  v4 = 0xEC00000072656E6ELL;
  v5 = 0x6142656D61476E69;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024FA42B50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F50737365636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

GameStoreKit::AccessPointMetricsHelper::pageType_optional __swiftcall AccessPointMetricsHelper.pageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessPointMetricsHelper.pageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F50737365636361;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000020;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42656D6F636C6577;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F0592F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0593EC()
{
  sub_24F92B218();
}

uint64_t sub_24F0594D4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0595D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E69;
  v4 = 0x6F50737365636361;
  v5 = 0xD000000000000017;
  v6 = 0x800000024FA42B00;
  v7 = 0x800000024FA42B70;
  v8 = 0xD000000000000020;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001ELL;
    v7 = 0x800000024FA42BA0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x42656D6F636C6577;
    v3 = 0xED000072656E6E61;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t AccessPointMetricsHelper.pageContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x72616F6268736164;
  }
}

uint64_t sub_24F0596E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261506472696874;
  }

  else
  {
    v3 = 0x72616F6268736164;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA00000000007974;
  }

  if (*a2)
  {
    v5 = 0x7261506472696874;
  }

  else
  {
    v5 = 0x72616F6268736164;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007974;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F059790()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F05981C()
{
  sub_24F92B218();
}

uint64_t sub_24F059894()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F059928(uint64_t *a1@<X8>)
{
  v2 = 0x72616F6268736164;
  if (*v1)
  {
    v2 = 0x7261506472696874;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA00000000007974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static AccessPointMetricsHelper.postImpressionsEvent(pageFields:hostApp:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_24F929AB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v44 = swift_allocBox();
  v21 = v20;
  sub_24F929AA8();
  v46 = a4;
  v47 = MEMORY[0x277D221C0];

  sub_24F929A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929A48();
  v22 = v42;
  (*(v10 + 8))(v12, v9);

  v23 = *(v14 + 8);
  v23(v19, v13);
  if (v22)
  {
    (*(v14 + 16))(v16, v21, v13);
    v46 = v41;
    v47 = v22;
    v24 = v38;
    sub_24F920028();
    sub_24F929A48();
    (*(v39 + 8))(v24, v40);
    v23(v16, v13);
    (*(v14 + 40))(v21, v19, v13);
  }

  v25 = sub_24E6086DC(&unk_2861C1170);
  sub_24E601704(&unk_2861C1190, &qword_27F219F90);
  v26 = v43;
  if (v43)
  {

    v27 = sub_24E954060(v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v26;
    sub_24EF4B5B4(v27, sub_24F05AC64, 0, isUniquelyReferenced_nonNull_native, &v46);

    v29 = v46;
  }

  else
  {
    v29 = sub_24E954060(v25);
  }

  v30 = sub_24F92B858();
  v31 = v45;
  (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  sub_24F92B7F8();
  v32 = v44;

  v33 = sub_24F92B7E8();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v29;
  v34[5] = v32;
  sub_24EA9A4D8(0, 0, v31, &unk_24F9C1F78, v34);
}

uint64_t sub_24F059E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_24F929AB8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_24F928698();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_24F929158();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_projectBox();
  sub_24F92B7F8();
  v4[17] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F05A018, v9, v8);
}

uint64_t sub_24F05A018()
{

  sub_24F91FF58();
  sub_24F91FF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v1 = sub_24F92A2C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  if (qword_27F210290 != -1)
  {
    swift_once();
  }

  v18 = v0[14];
  v19 = v0[13];
  v5 = v0[12];
  v14 = v0[15];
  v15 = v0[11];
  v6 = v0[9];
  v7 = v0[8];
  v12 = v0[16];
  v13 = v0[7];
  v16 = v0[10];
  v17 = v0[5];
  v8 = __swift_project_value_buffer(v1, qword_27F229C08);
  (*(v2 + 16))(v4 + v3, v8, v1);
  sub_24E805DFC(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();

  sub_24F928658();
  swift_beginAccess();
  (*(v7 + 16))(v6, v12, v13);
  v9 = sub_24F929138();
  (*(v7 + 8))(v6, v13);
  (*(v15 + 8))(v5, v16);
  (*(v18 + 8))(v14, v19);
  *v17 = v9;

  v10 = v0[1];

  return v10();
}

uint64_t static AccessPointMetricsHelper.postPageEvent(hostApp:pageFields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = sub_24F929AB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v35 = swift_allocBox();
  v21 = v20;
  sub_24F929AA8();
  v37 = a3;
  sub_24F929A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  sub_24F929A48();
  v22 = v34;
  (*(v10 + 8))(v12, v9);
  v23 = *(v14 + 8);
  v23(v19, v13);
  if (v22)
  {
    (*(v14 + 16))(v16, v21, v13);
    v37 = v33;
    v38 = v22;
    sub_24F920028();
    sub_24F929A48();
    (*(v31 + 8))(v8, v32);
    v23(v16, v13);
    (*(v14 + 40))(v21, v19, v13);
  }

  v24 = sub_24F92B858();
  v25 = v36;
  (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
  sub_24F92B7F8();
  v26 = v35;

  v27 = sub_24F92B7E8();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v26;
  sub_24EA9A4D8(0, 0, v25, &unk_24F9C1F88, v28);
}

uint64_t sub_24F05A6FC(uint64_t a1)
{
  v1[15] = a1;
  v2 = sub_24F929AB8();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_24F929458();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_24F928698();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = sub_24F929158();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_projectBox();
  sub_24F92B7F8();
  v1[29] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F05A914, v7, v6);
}

uint64_t sub_24F05A914()
{
  v21 = v0[28];
  v1 = v0[27];
  v25 = v0[26];
  v26 = v0[25];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[17];
  v19 = v0[16];
  v20 = v0[18];
  v24 = v0[15];

  sub_24F91FF58();
  sub_24F91FF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v7 = v3;
  sub_24F9293E8();
  v8 = sub_24F929448();
  v10 = v9;
  (*(v2 + 8))(v7, v4);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v11 = sub_24F92A2C8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24F92A288();
  sub_24E805DFC(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  sub_24F928658();
  swift_beginAccess();
  (*(v5 + 16))(v20, v21, v19);
  v15 = sub_24F929138();
  (*(v5 + 8))(v20, v19);
  (*(v22 + 8))(v18, v23);
  (*(v25 + 8))(v1, v26);
  *v24 = v15;

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F05AC64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_24E643A9C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void _s12GameStoreKit24AccessPointMetricsHelperO11recordClick13metricsFields7hostAppySDySSypG_SSSgtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16) && (v5 = sub_24E76D644(0x644965676170, 0xE600000000000000), (v6 & 1) != 0) && (sub_24E643A9C(*(a1 + 56) + 32 * v5, v19), (swift_dynamicCast() & 1) != 0))
  {
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_24E76D644(0x6570795465676170, 0xE800000000000000);
  if (v8)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v7, v19);
    if (swift_dynamicCast())
    {
      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v9 = sub_24E76D644(0x6449746567726174, 0xE800000000000000);
  if (v10)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v9, v19);
    if (swift_dynamicCast())
    {
      if (!*(a1 + 16))
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

LABEL_17:
  v11 = sub_24E76D644(0x7954746567726174, 0xEA00000000006570);
  if (v12)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v11, v19);
    swift_dynamicCast();
  }

LABEL_19:
  v13 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
  v14 = sub_24F92B098();
  v15 = sub_24F92B098();

  v16 = sub_24F92B098();

  v17 = sub_24F92B098();

  v18 = sub_24F92B098();

  if (a3)
  {
    a3 = sub_24F92B098();
  }

  [v13 recordClickWithAction:v14 targetId:v15 targetType:v16 pageId:v17 pageType:v18 hostApp:a3 app:*MEMORY[0x277D0BB48] additionalFields:0];
}

uint64_t sub_24F05AFCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F05B014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F059E5C(a1, v4, v5, v6);
}

uint64_t sub_24F05B0D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F05B114(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24F05A6FC(a1);
}

unint64_t sub_24F05B1CC()
{
  result = qword_27F237D90;
  if (!qword_27F237D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237D90);
  }

  return result;
}

unint64_t sub_24F05B224()
{
  result = qword_27F237D98;
  if (!qword_27F237D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237D98);
  }

  return result;
}

unint64_t sub_24F05B27C()
{
  result = qword_27F237DA0;
  if (!qword_27F237DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DA0);
  }

  return result;
}

unint64_t sub_24F05B2D4()
{
  result = qword_27F237DA8;
  if (!qword_27F237DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DA8);
  }

  return result;
}

unint64_t sub_24F05B32C()
{
  result = qword_27F237DB0;
  if (!qword_27F237DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DB0);
  }

  return result;
}

unint64_t sub_24F05B384()
{
  result = qword_27F237DB8;
  if (!qword_27F237DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DB8);
  }

  return result;
}

unint64_t sub_24F05B3DC()
{
  result = qword_27F237DC0;
  if (!qword_27F237DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DC0);
  }

  return result;
}

unint64_t sub_24F05B434()
{
  result = qword_27F237DC8;
  if (!qword_27F237DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DC8);
  }

  return result;
}

unint64_t sub_24F05B48C()
{
  result = qword_27F237DD0;
  if (!qword_27F237DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DD0);
  }

  return result;
}

unint64_t sub_24F05B4E4()
{
  result = qword_27F237DD8;
  if (!qword_27F237DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DD8);
  }

  return result;
}

unint64_t sub_24F05B5F8()
{
  result = qword_27F237DE0;
  if (!qword_27F237DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DE0);
  }

  return result;
}

unint64_t sub_24F05B64C()
{
  result = qword_27F237DE8;
  if (!qword_27F237DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DE8);
  }

  return result;
}

unint64_t sub_24F05B6A0()
{
  result = qword_27F237DF0;
  if (!qword_27F237DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237DF0);
  }

  return result;
}

uint64_t sub_24F05B704@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v38 = a1;
  v29 = a4;
  v37 = sub_24F91EF38();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F91EF18();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF48();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  (*(v11 + 16))(v13, v5, v10);
  v17 = MEMORY[0x277CC8C08];
  sub_24F05D3BC(&unk_27F237E90, MEMORY[0x277CC8C08]);
  sub_24F92B3F8();
  sub_24F05D3BC(&qword_27F215360, v17);
  v18 = (v6 + 8);
  v30 = (v8 + 8);
  v31 = (v8 + 16);
  while (1)
  {
    v19 = v36;
    sub_24F92BC08();
    sub_24F05D3BC(&unk_27F237EA0, MEMORY[0x277CC8BF8]);
    v20 = v37;
    v21 = sub_24F92AFF8();
    (*v18)(v19, v20);
    if (v21)
    {
      sub_24F05D404(v16);
      v26 = sub_24F91F008();
      return (*(*(v26 - 8) + 32))(v29, v38, v26);
    }

    v22 = sub_24F92BC88();
    v23 = v32;
    v24 = v33;
    (*v31)(v32);
    v22(v39, 0);
    sub_24F92BC18();
    v25 = v40;
    v34(v38, v23);
    if (v25)
    {
      break;
    }

    v40 = 0;
    (*v30)(v23, v24);
  }

  (*v30)(v23, v24);
  v28 = sub_24F91F008();
  (*(*(v28 - 8) + 8))(v38, v28);
  return sub_24F05D404(v16);
}

uint64_t sub_24F05BBA0(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v10 = a2;
  v8 = *(a4 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(type metadata accessor for ItemLayoutContext() - 8);
    result = v6(&v10, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
  }

  while (!v4);
  return result;
}

void sub_24F05BC7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 1)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

BOOL sub_24F05BDB8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 1);
  return v3 != v5;
}

void sub_24F05BE98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 5)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

BOOL sub_24F05BFD4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 5);
  return v3 != v5;
}

uint64_t BasePageLayoutSectionProvider.__allocating_init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_24E612C80(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_24E612C80(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

id sub_24F05C15C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v63 = a8;
  v64 = a5;
  v65 = a6;
  v62 = a9;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v61 = a4;
    v17 = a7;
    v18 = sub_24E69A5C4(0, &qword_27F237E08);
    v19 = a2();
    v20 = swift_beginAccess();
    v21 = v10[8];
    if (*(v19 + 16))
    {
      MEMORY[0x28223BE20](v20);
      v57 = v18;
      v58 = v10 + 2;
      v59 = v21;
      v60 = a10;

      sub_24F05BBA0(sub_24F05D228, 0.0, v56, v19);
      v30 = v29;
      v31 = v10[5];
      v32 = v10[6];
      __swift_project_boxed_opaque_existential_1(v10 + 2, v31);
      v33 = (*(v32 + 8))(a1, a10, v31, v32);
      if (v33 && (v34 = v33, (v35 = swift_conformsToProtocol2()) != 0) && ((*(v35 + 24))(a1, a10, v34, v35) & 1) != 0)
      {
        v36 = v19;
        v37 = v30;
        v38 = 1;
      }

      else
      {
        v36 = v19;
        v37 = v30;
        v38 = 0;
      }

      v27 = sub_24F03CFA4(v36, v38, a1, v63, v62, a10, v37);
    }

    else
    {

      v27 = _sSo23NSCollectionLayoutGroupC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    a7 = v17;
    v48 = [objc_opt_self() sectionWithGroup_];
    v49 = [objc_opt_self() standardUserDefaults];
    v50 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

    [v48 setOrthogonalScrollingBehavior_];
    [v48 setInterGroupSpacing_];
    v51 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a1, v61, a10, v11[7]);
    if (v51)
    {
      aBlock[4] = v51;
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24F05C8A0;
      aBlock[3] = &block_descriptor_107;
      v53 = _Block_copy(aBlock);
    }

    else
    {
      v53 = 0;
    }

    [v48 setVisibleItemsInvalidationHandler_];
    _Block_release(v53);
  }

  else
  {
    v22 = (a2)(v16);
    swift_beginAccess();
    v23 = v10[8];
    v24 = sub_24E69A5C4(0, &qword_27F237E08);
    if (*(v22 + 16))
    {
      MEMORY[0x28223BE20](v24);
      v57 = v25;
      v58 = v10 + 2;
      v59 = v23;
      v60 = a10;

      v26 = sub_24E76CEF8(sub_24F05CA28, v56, v22);
      v61 = a7;
      v39 = v26;
      v40 = v10[5];
      v41 = v10[6];
      __swift_project_boxed_opaque_existential_1(v10 + 2, v40);
      v42 = (*(v41 + 8))(a1, a10, v40, v41);
      if (v42 && (v43 = v42, (v44 = swift_conformsToProtocol2()) != 0) && ((*(v44 + 24))(a1, a10, v43, v44) & 1) != 0)
      {
        v45 = v22;
        v46 = v39;
        v47 = 1;
      }

      else
      {
        v45 = v22;
        v46 = v39;
        v47 = 0;
      }

      v28 = sub_24F03D8CC(v45, v46, v47, a1, v63, v62, a10);

      a7 = v61;
    }

    else
    {

      v28 = _sSo23NSCollectionLayoutGroupC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    v48 = [objc_opt_self() sectionWithGroup_];
  }

  v54 = v48;
  _s12GameStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(v54, a1, v64, v65, a7, a10);

  return v54;
}

id sub_24F05C724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = [objc_opt_self() sectionWithGroup_];
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

  [v12 setOrthogonalScrollingBehavior_];
  [v12 setInterGroupSpacing_];
  v15 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a2, a6, a7, *(v8 + 56));
  if (v15)
  {
    v19[4] = v15;
    v19[5] = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_24F05C8A0;
    v19[3] = &block_descriptor_3_4;
    v17 = _Block_copy(v19);
  }

  else
  {
    v17 = 0;
  }

  [v12 setVisibleItemsInvalidationHandler_];
  _Block_release(v17);
  return v12;
}

uint64_t sub_24F05C8A0(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237E70);
  v9 = sub_24F92B5A8();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t BasePageLayoutSectionProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t BasePageLayoutSectionProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

id _s12GameStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v79 = a1;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  (*(v13 + 8))(v81, a2, v12, v13);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v74 = type metadata accessor for ShelfLayoutContext();
  v14 = *(a2 + *(v74 + 40));
  v15 = a2;
  sub_24E8ED7D8();
  sub_24F9223A8();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  (*(v20 + 16))(v81, a2, v19, v20);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  sub_24E8ED7D8();
  v78 = v14;
  sub_24F9223A8();
  v22 = v21;
  v73 = v11;
  v75 = v8;
  v76 = v9 + 8;
  v77 = v18;
  v18(v11, v8);
  v23 = v70;
  v24 = v15;
  __swift_destroy_boxed_opaque_existential_1(v81);
  v25 = v15 + *(v74 + 28);
  v26 = *(v25 + 368);
  v27 = *(v25 + 384);
  ObjectType = swift_getObjectType();
  v29 = a3;
  v30 = a3;
  v31 = v71;
  v32 = (*(v23 + 8))(v15, v30, v71, ObjectType, v23);
  v80 = MEMORY[0x277D84F90];
  LODWORD(v74) = sub_24F05BDB8(v32) && v17 > 0.0;
  if (v74 == 1)
  {
    v33 = ObjectType;
    sub_24F05BC7C(v32);
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension_];
    v38 = [v36 absoluteDimension_];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    v40 = sub_24F92B098();
    v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v39 elementKind:v40 alignment:1 absoluteOffset:{0.0, -v35}];

    MEMORY[0x253050F00]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    ObjectType = v33;
  }

  sub_24EA0B8B8(v42);
  v43 = sub_24F05BFD4(v32);
  v44 = v79;
  if (v43 && v22 > 0.0)
  {
    sub_24F05BE98(v32);
    v46 = v45;

    v47 = objc_opt_self();
    v48 = [v47 fractionalWidthDimension_];
    v49 = [v47 absoluteDimension_];
    v50 = [objc_opt_self() sizeWithWidthDimension:v48 heightDimension:v49];

    v51 = sub_24F92B098();
    v52 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v50 elementKind:v51 alignment:5 absoluteOffset:{0.0, v46}];

    MEMORY[0x253050F00]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v72 = 1;
  }

  else
  {

    v72 = 0;
  }

  sub_24E69A5C4(0, &qword_27F2250F0);
  v53 = sub_24F92B588();

  [v44 setBoundarySupplementaryItems_];

  (*(v23 + 16))(v24, v29, v31, ObjectType, v23);
  sub_24E69A5C4(0, &unk_27F237E80);
  v54 = sub_24F92B588();

  [v44 setDecorationItems_];

  v55 = v29[3];
  v56 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v55);
  (*(v56 + 24))(v81, v24, v55, v56);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v57 = v73;
  sub_24E8ED7D8();
  sub_24F9223A8();
  v59 = v58;
  v60 = v75;
  v61 = v77;
  v77(v57, v75);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v62 = v29[3];
  v63 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v62);
  (*(v63 + 32))(v81, v24, v62, v63);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v65 = v64;
  v61(v57, v60);
  __swift_destroy_boxed_opaque_existential_1(v81);
  if (v74)
  {
    v66 = 0.0;
    v67 = v59 + 0.0;
    if (v72)
    {
      return [v79 setContentInsets_];
    }

    goto LABEL_15;
  }

  v67 = v17 + v59;
  v66 = 0.0;
  if ((v72 & 1) == 0)
  {
LABEL_15:
    v66 = v22;
  }

  return [v79 setContentInsets_];
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F05D260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_24F05D3BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F05D404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:genericPageMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0xC000000000000000;
  return v6;
}

uint64_t ShareSheetData.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetData.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:productMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x4000000000000000;
  return v6;
}

uint64_t ShareSheetData.Metadata.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v66 = a3;
  v72 = a2;
  v4 = sub_24F9285B8();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v61 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v61 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v61 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v73 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v30 = v26;
  v31 = v13;
  v68 = *(v14 + 8);
  v69 = v14 + 8;
  v68(v30, v13);
  if (v29)
  {
    v32 = v27 == 0x746375646F7270 && v29 == 0xE700000000000000;
    if (v32 || (sub_24F92CE08() & 1) != 0)
    {

      v33 = v73;
      (*(v14 + 16))(v24, v73, v13);
      v35 = v70;
      v34 = v71;
      v36 = v72;
      (*(v70 + 16))(v12, v72, v71);
      type metadata accessor for ShareSheetProductMetadata();
      swift_allocObject();
      v37 = v67;
      v38 = ShareSheetProductMetadata.init(deserializing:using:)(v24, v12);
      if (!v37)
      {
        v39 = v38;
        (*(v35 + 8))(v36, v34);
        result = (v68)(v33, v31);
        v41 = v39 | 0x4000000000000000;
LABEL_9:
        *v66 = v41;
        return result;
      }
    }

    else
    {
      v44 = v27 == 0x656C6369747261 && v29 == 0xE700000000000000;
      v35 = v70;
      if (v44 || (sub_24F92CE08() & 1) != 0)
      {

        v33 = v73;
        (*(v14 + 16))(v21, v73, v31);
        v45 = v65;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v65, v72, v71);
        type metadata accessor for ShareSheetArticleMetadata();
        swift_allocObject();
        v46 = v67;
        v47 = ShareSheetArticleMetadata.init(deserializing:using:)(v21, v45);
        if (!v46)
        {
          v48 = v47;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          *v66 = v48;
          return result;
        }
      }

      else if (v27 == 0x746E657645707061 && v29 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
      {

        v49 = v63;
        v33 = v73;
        (*(v14 + 16))(v63, v73, v31);
        v50 = v64;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v64, v72, v71);
        type metadata accessor for ShareSheetAppEventMetadata();
        swift_allocObject();
        v51 = v67;
        v52 = ShareSheetAppEventMetadata.init(deserializing:using:)(v49, v50);
        if (!v51)
        {
          v53 = v52;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          v41 = v53 | 0x8000000000000000;
          goto LABEL_9;
        }
      }

      else if (v27 == 0x636972656E6567 && v29 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
      {

        v54 = v61;
        v33 = v73;
        (*(v14 + 16))(v61, v73, v31);
        v55 = v62;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v62, v72, v71);
        type metadata accessor for ShareSheetGenericMetadata();
        swift_allocObject();
        v56 = v67;
        v57 = ShareSheetGenericMetadata.init(deserializing:using:)(v54, v55);
        if (!v56)
        {
          v58 = v57;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          v41 = v58 | 0xC000000000000000;
          goto LABEL_9;
        }
      }

      else
      {
        v59 = sub_24F92AC38();
        sub_24E8F2E6C();
        swift_allocError();
        *v60 = v27;
        v60[1] = v29;
        v60[2] = &type metadata for ShareSheetData.Metadata;
        (*(*(v59 - 8) + 104))(v60, *MEMORY[0x277D22520], v59);
        swift_willThrow();
        v33 = v73;
        v34 = v71;
        v36 = v72;
      }
    }
  }

  else
  {
    v42 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v43 = 0x747865746E6F63;
    v43[1] = 0xE700000000000000;
    v43[2] = &type metadata for ShareSheetData.Metadata;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    v33 = v73;
    v34 = v71;
    v36 = v72;
    v35 = v70;
  }

  (*(v35 + 8))(v36, v34);
  return (v68)(v33, v31);
}