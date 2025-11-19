__n128 sub_24F29F9BC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

unint64_t sub_24F29F9D0()
{
  result = qword_27F235598;
  if (!qword_27F235598)
  {
    type metadata accessor for GenericPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235598);
  }

  return result;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  [a2 displayScale];
  if (v6 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v7 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  return CGFloat.rounded(_:toScale:)(a1, v7, a3);
}

{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  if (v6 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v7 = *&qword_27F23DC18;
  }

  else
  {
    [v5 displayScale];
  }

  v8 = CGFloat.rounded(_:toScale:)(a1, v7, a3);

  return v8;
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x277D84668])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_24F92BA48();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

uint64_t sub_24F29FD88()
{
  result = sub_24F29FDA8();
  qword_27F23DC18 = v1;
  return result;
}

uint64_t sub_24F29FDA8()
{
  v10 = 0x3FF0000000000000;
  if ([objc_opt_self() isMainThread])
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 nativeScale];
    v2 = v1;

    v3 = 0;
    v10 = v2;
    return sub_24E824448(v3);
  }

  sub_24E74EC40();
  v4 = sub_24F92BEF8();
  v5 = swift_allocObject();
  *(v5 + 16) = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24F2A000C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_24E972460;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_134;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    v3 = sub_24F2A000C;
    return sub_24E824448(v3);
  }

  __break(1u);
  return result;
}

void sub_24F29FF98(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 nativeScale];
  v4 = v3;

  *a1 = v4;
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

GameStoreKit::InformationRibbon::Alignment_optional __swiftcall InformationRibbon.Alignment.init(rawValue:)(Swift::String rawValue)
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

uint64_t InformationRibbon.Alignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x656966697473756ALL;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_24F2A00DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656966697473756ALL;
  }

  else
  {
    v3 = 0x7265746E6563;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x656966697473756ALL;
  }

  else
  {
    v5 = 0x7265746E6563;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_24F2A0184()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2A0208()
{
  sub_24F92B218();
}

uint64_t sub_24F2A0278()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2A02F8@<X0>(char *a1@<X8>)
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

void sub_24F2A0358(uint64_t *a1@<X8>)
{
  v2 = 0x7265746E6563;
  if (*v1)
  {
    v2 = 0x656966697473756ALL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InformationRibbon.__allocating_init(id:badges:hasTopSeparator:hasBottomSeparator:separatorsAreFullWidth:alignment:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *a6, uint64_t a7)
{
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a6;
  sub_24E60169C(a1, &v28, &qword_27F235830);
  if (*(&v29 + 1))
  {
    v17 = v29;
    *(v15 + 32) = v28;
    *(v15 + 48) = v17;
    *(v15 + 64) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v22 = a7;
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v26 = v18;
    v27 = v20;
    a7 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(a7, v15 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics);
  *(v15 + 16) = v25;
  *(v15 + 24) = a3 & 1;
  *(v15 + 25) = v23 & 1;
  *(v15 + 26) = v24 & 1;
  *(v15 + 27) = v16;
  return v15;
}

uint64_t InformationRibbon.init(id:badges:hasTopSeparator:hasBottomSeparator:separatorsAreFullWidth:alignment:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *a6, uint64_t a7)
{
  v8 = v7;
  v24 = a4;
  v25 = a5;
  v26 = a2;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a6;
  sub_24E60169C(a1, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v23 = a7;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v27 = v18;
    v28 = v20;
    a7 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v21 = v33;
  *(v8 + 32) = v32;
  *(v8 + 48) = v21;
  *(v8 + 64) = v34;
  sub_24E65E0D4(a7, v8 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics);
  *(v8 + 16) = v26;
  *(v8 + 24) = a3 & 1;
  *(v8 + 25) = v24 & 1;
  *(v8 + 26) = v25 & 1;
  *(v8 + 27) = v17;
  return v8;
}

uint64_t InformationRibbon.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v64 = sub_24F91F6B8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_24F9285B8();
  v5 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v85 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v60[-v8];
  v10 = sub_24F928388();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v67 = &v60[-v13];
  MEMORY[0x28223BE20](v14);
  v66 = &v60[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v60[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v60[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v60[-v24];
  sub_24F929608();
  sub_24F928398();
  v76 = v5;
  v26 = *(v5 + 16);
  v70 = v9;
  v27 = v9;
  v28 = v71;
  v26(v27, a2, v71);
  v78 = v25;
  sub_24F929548();
  v29 = v85;
  v75 = a2;
  v26(v85, a2, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214490);
  v77 = a1;
  sub_24F928398();
  v26(v70, v29, v28);
  sub_24E62B34C();
  v30 = v20;
  sub_24F929548();
  if (*v84)
  {
    v70 = *v84;
    v31 = v28;
    v32 = v65;
    sub_24F928398();
    v61 = sub_24F928278();
    v33 = *(v72 + 8);
    v34 = v32;
    v35 = v73;
    v33(v34, v73);
    v36 = v66;
    sub_24F928398();
    LODWORD(v72) = sub_24F928278();
    v33(v36, v35);
    v37 = v67;
    sub_24F928398();
    LODWORD(v66) = sub_24F928278();
    v33(v37, v35);
    sub_24F928398();
    sub_24F2A1138();
    sub_24F928208();
    v33(v30, v35);
    LODWORD(v67) = v84[0];
    v38 = v68;
    sub_24F928398();
    v39 = sub_24F928348();
    if (v40)
    {
      *&v81 = v39;
      *(&v81 + 1) = v40;
    }

    else
    {
      v44 = v62;
      sub_24F91F6A8();
      v45 = sub_24F91F668();
      v47 = v46;
      (*(v63 + 8))(v44, v64);
      *&v81 = v45;
      *(&v81 + 1) = v47;
    }

    sub_24F92C7F8();
    v48 = v38;
    v49 = v35;
    v33(v48, v35);
    v51 = v75;
    v50 = v76;
    v52 = v69;
    sub_24E60169C(v78, v69, &qword_27F213E68);
    v43 = swift_allocObject();
    sub_24E60169C(v84, &v81, &qword_27F235830);
    if (*(&v82 + 1))
    {
      v53 = v82;
      *(v43 + 32) = v81;
      *(v43 + 48) = v53;
      *(v43 + 64) = v83;
    }

    else
    {
      v54 = v62;
      sub_24F91F6A8();
      v55 = sub_24F91F668();
      v57 = v56;
      (*(v63 + 8))(v54, v64);
      v79 = v55;
      v80 = v57;
      v52 = v69;
      v50 = v76;
      sub_24F92C7F8();
      sub_24E601704(&v81, &qword_27F235830);
    }

    v58 = *(v50 + 8);
    v58(v51, v31);
    v33(v77, v49);
    sub_24E601704(v84, &qword_27F235830);
    v58(v85, v31);
    sub_24E601704(v78, &qword_27F213E68);
    sub_24E65E0D4(v52, v43 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics);
    *(v43 + 16) = v70;
    *(v43 + 24) = v61 & 1;
    *(v43 + 25) = v72 & 1;
    *(v43 + 26) = v66 & 1;
    *(v43 + 27) = v67;
  }

  else
  {
    v41 = sub_24F92AC38();
    sub_24F2A12F8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v42 = 0x736567646162;
    v42[1] = 0xE600000000000000;
    v42[2] = v74;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    v43 = *(v76 + 8);
    (v43)(v75, v28);
    (*(v72 + 8))(v77, v73);
    (v43)(v85, v28);
    sub_24E601704(v78, &qword_27F213E68);
  }

  return v43;
}

unint64_t sub_24F2A1138()
{
  result = qword_27F23DC20;
  if (!qword_27F23DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC20);
  }

  return result;
}

uint64_t InformationRibbon.deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t InformationRibbon.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

unint64_t sub_24F2A125C()
{
  result = qword_27F23DC28;
  if (!qword_27F23DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC28);
  }

  return result;
}

uint64_t sub_24F2A12F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InformationRibbon()
{
  result = qword_27F23DC38;
  if (!qword_27F23DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2A138C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = InformationRibbon.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24F2A13FC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ArtworkLoaderConfig.__allocating_init(template:size:scale:crop:format:quality:useWideGamut:)(uint64_t *a1, uint64_t *a2, char *a3, uint64_t a4, char a5, char a6, double a7, double a8, double a9)
{
  v10 = v9;
  v20 = swift_allocObject();
  v21 = *a1;
  v22 = a1[1];
  v23 = *a2;
  v24 = a2[1];
  v25 = *a3;
  *(v20 + 16) = *a1;
  *(v20 + 24) = v22;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  *(v20 + 72) = v25;
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;
  *(v20 + 64) = a9;
  *(v20 + 80) = a4;
  *(v20 + 88) = a5 & 1;
  *(v20 + 89) = a6;
  v28[0] = v21;
  v28[1] = v22;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (a7 <= 0.0 || a8 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v28[3] = v10;
    v28[0] = v20;

    sub_24F928458();
    sub_24E601704(v28, &qword_27F2129B0);
    sub_24F92A5B8();
  }

  return v20;
}

uint64_t ArtworkLoaderConfig.template.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ArtworkLoaderConfig.crop.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)(uint64_t *a1, uint64_t *a2, char *a3, uint64_t a4, char a5, char a6, double a7, double a8, double a9)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  v16 = *a3;
  *(v9 + 16) = *a1;
  *(v9 + 24) = v13;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 72) = v16;
  *(v9 + 48) = v14;
  *(v9 + 56) = v15;
  *(v9 + 64) = a9;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5 & 1;
  *(v9 + 89) = a6;
  v19[0] = v12;
  v19[1] = v13;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (a7 <= 0.0 || a8 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v19[3] = type metadata accessor for ArtworkLoaderConfig();
    v19[0] = v9;

    sub_24F928458();
    sub_24E601704(v19, &qword_27F2129B0);
    sub_24F92A5B8();
  }

  return v9;
}

uint64_t sub_24F2A197C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32) * v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC48);
  result = swift_initStackObject();
  *(result + 16) = xmmword_24F93FC20;
  *(result + 32) = 0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = result;
  v6 = v1 * v2;
  result = sub_24F92CD88();
  *(v5 + 40) = result;
  *(v5 + 48) = v7;
  *(v5 + 56) = 1;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 < 9.22337204e18)
  {
    *(v5 + 64) = sub_24F92CD88();
    *(v5 + 72) = v8;
    *(v5 + 80) = 2;
    *(v5 + 88) = sub_24F2A2258();
    *(v5 + 96) = v9;
    *(v5 + 104) = 3;
    if (*(v0 + 72) > 1u)
    {
      if (*(v0 + 72) == 2)
      {
        v10 = 0xE400000000000000;
        v11 = 1667851624;
      }

      else
      {
        v10 = 0xE300000000000000;
        v11 = 7496556;
      }
    }

    else if (*(v0 + 72))
    {
      v10 = 0xE400000000000000;
      v11 = 1734701162;
    }

    else
    {
      v10 = 0xE300000000000000;
      v11 = 6778480;
    }

    *(v5 + 112) = v11;
    *(v5 + 120) = v10;
    v12 = sub_24E60B4B0(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC50);
    swift_arrayDestroy();
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    if (v15)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        sub_24F91F488();
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        do
        {
LABEL_22:
          v15 &= v15 - 1;
          sub_24E600AEC();

          sub_24F92C568();
        }

        while (v15);
        continue;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24F2A1CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 2;
  *(inited + 40) = sub_24F2A2258();
  *(inited + 48) = v2;
  *(inited + 56) = 3;
  if (*(v0 + 72) > 1u)
  {
    if (*(v0 + 72) == 2)
    {
      v3 = 0xE400000000000000;
      v4 = 1667851624;
    }

    else
    {
      v3 = 0xE300000000000000;
      v4 = 7496556;
    }
  }

  else if (*(v0 + 72))
  {
    v3 = 0xE400000000000000;
    v4 = 1734701162;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 6778480;
  }

  *(inited + 64) = v4;
  *(inited + 72) = v3;
  v5 = sub_24E60B4B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC50);
  swift_arrayDestroy();
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v13 = sub_24F92B098();

      return v13;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_16:
        v8 &= v8 - 1;
        sub_24E600AEC();

        sub_24F92C568();
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F2A1F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2A197C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F228530);
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v11[3] = type metadata accessor for ArtworkLoaderConfig();
    v11[0] = v0;

    sub_24F9283B8();
    sub_24E601704(v11, &qword_27F2129B0);
    sub_24F92A5A8();

    return sub_24F92B098();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = sub_24F91F3B8();
    (*(v5 + 8))(v7, v4);
    return v10;
  }
}

uint64_t sub_24F2A2258()
{
  if (*(v0 + 88) != 1)
  {
    v4 = *(v0 + 48);

    v1 = sub_24F92CD88();
    MEMORY[0x253050C20](v1);

    MEMORY[0x253050C20](45, 0xE100000000000000);

    if (*(v0 + 89) != 1)
    {
      return v4;
    }

LABEL_5:
    MEMORY[0x253050C20](3362861, 0xE300000000000000);
    return v4;
  }

  if (*(v0 + 89) == 1)
  {
    v4 = *(v0 + 48);

    goto LABEL_5;
  }

  v3 = *(v0 + 48);

  return v3;
}

BOOL sub_24F2A234C()
{
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    return 1;
  }

  if (*(v0 + 32) <= 0.0)
  {
    return 0;
  }

  return *(v0 + 40) > 0.0;
}

uint64_t sub_24F2A23D8()
{
  v1 = *(v0 + 32);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v0 + 40);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v3 + v6 / 2;
  if (__OFADD__(v3, v6 / 2))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F2A24AC()
{
  v0 = sub_24F92BA38();
  MEMORY[0x253050C20](v0);

  MEMORY[0x253050C20](120, 0xE100000000000000);
  v1 = sub_24F92BA38();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](64, 0xE100000000000000);
  v2 = sub_24F92BA38();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](14968, 0xE200000000000000);
  sub_24F92CA38();
  return 0;
}

unint64_t sub_24F2A2598()
{
  MEMORY[0x253050C20](0x6574616C706D6574, 0xEA0000000000203ALL);
  sub_24F92CA38();
  MEMORY[0x253050C20](8236, 0xE200000000000000);
  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](0x203A657A6973, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  sub_24F92CA38();
  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0, 0xE000000000000000);

  v0 = sub_24F92BA38();
  MEMORY[0x253050C20](v0);

  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0x203A656C616373, 0xE700000000000000);

  MEMORY[0x253050C20](0x203A74616D726F66, 0xE800000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](0x203A706F7263, 0xE600000000000000);
  sub_24F92CA38();

  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](41, 0xE100000000000000);

  return 0xD000000000000014;
}

uint64_t ArtworkLoaderConfig.deinit()
{

  return v0;
}

uint64_t ArtworkLoaderConfig.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F2A299C()
{
  sub_24F92D068();
  v0 = sub_24F2A23D8();
  MEMORY[0x253052A00](v0);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit19ArtworkLoaderConfigC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (sub_24F0C96A0(*(a1 + 72), *(a2 + 72)))
  {
    v6 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
    if (v6 || (sub_24F92CE08()) && *(a1 + 64) == *(a2 + 64) && (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_24F92CE08()))
    {
      v7 = *(a2 + 88);
      if (*(a1 + 88))
      {
        if (!*(a2 + 88))
        {
          return v7 & 1;
        }

        goto LABEL_24;
      }

      if (*(a1 + 80) != *(a2 + 80))
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
LABEL_24:
        v7 = *(a1 + 89) ^ *(a2 + 89) ^ 1;
        return v7 & 1;
      }
    }
  }

  v7 = 0;
  return v7 & 1;
}

unint64_t sub_24F2A2B18()
{
  result = qword_27F23DC58;
  if (!qword_27F23DC58)
  {
    type metadata accessor for ArtworkLoaderConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC58);
  }

  return result;
}

uint64_t ProductStarRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v20);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  return v25;
}

uint64_t ProductStarRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v21);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  return v25;
}

uint64_t ProductStarRatings.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t ProductStarRatings.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductStarRatings()
{
  result = qword_27F23DC60;
  if (!qword_27F23DC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2A3210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 multiplayerServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F2A4C08;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_135;
  v10 = _Block_copy(aBlock);

  [v7 getMultiPlayerGroups_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F2A3404(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78);
    return sub_24F92B788();
  }

  else
  {
    if (a1)
    {
      sub_24F2A4CAC();
      sub_24F92B598();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78);
    return sub_24F92B798();
  }
}

uint64_t sub_24F2A34C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return sub_24F2A356C(a3);
}

uint64_t sub_24F2A356C(uint64_t a1)
{
  v1[11] = a1;
  v1[12] = *(type metadata accessor for Player(0) - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_24F9288E8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_24F91F648();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2A3778, 0, 0);
}

uint64_t sub_24F2A3778()
{
  *(v0 + 216) = sub_24F92B7F8();
  *(v0 + 224) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F2A3810, v2, v1);
}

uint64_t sub_24F2A3810()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 232) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F2A3898, 0, 0);
}

uint64_t sub_24F2A3898()
{
  *(v0 + 240) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F2A3924, v2, v1);
}

uint64_t sub_24F2A3924()
{
  v1 = v0[29];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[31] = *v2;
  v0[32] = v2[1];

  v3 = swift_task_alloc();
  v0[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC70);
  *v3 = v0;
  v3[1] = sub_24F2A3A9C;

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0x70756F7247746567, 0xEB00000000292873, sub_24F2A3210, 0, v4);
}

uint64_t sub_24F2A3A9C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_24F2A3EB0;
  }

  else
  {
    v2 = sub_24F2A3BB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2A3BB8()
{
  v28 = v0;
  v1 = v0[7];
  v0[35] = v1;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v0[36] = i;
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v0 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v6 participants];
      v27 = 0;
      sub_24F92B598();

      v9 = v3;
      v10 = v3;
      v11 = *(v3 + 16);
      v12 = *(v5 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v5 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v15, 1, v5);
      }

      v3 = v9;
      if (*(v10 + 16))
      {
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v11)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v16 = *(v5 + 2);
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_37;
          }

          *(v5 + 2) = v18;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_35;
        }
      }

      ++v4;
      if (v0 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_25:
  v19 = sub_24F45D828(v5);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = sub_24EAE678C(*(v19 + 16), 0);
    v22 = sub_24EAE7C84(&v27, v21 + 4, v20, v19);
    sub_24E6586B4();
    if (v22 == v20)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:
  v26[37] = v21;
  v23 = swift_task_alloc();
  v26[38] = v23;
  *v23 = v26;
  v23[1] = sub_24F2A3F78;
  v24 = v26[11];

  return sub_24E6473DC(v21, 1, v24);
}

uint64_t sub_24F2A3EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2A3F78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {

    v4 = sub_24F2A42A0;
  }

  else
  {
    v4 = sub_24F2A40A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F2A40A0()
{

  *(v0 + 64) = MEMORY[0x277D84FA0];
  v1 = type metadata accessor for ASKBagContract();
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_24F2A4164;

  return MEMORY[0x28217F228](v0 + 72, v1, v1);
}

uint64_t sub_24F2A4164()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_24F2A4AA4;
  }

  else
  {
    v2 = sub_24F2A4370;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2A42A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2A4370()
{
  v73 = v0;
  v1 = v0[9];
  sub_24F91F638();
  if (qword_27F210A40 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v70 = v0[36];
    v66 = v0[25];
    v2 = v0[23];
    v68 = v0[22];
    v3 = v0[20];
    v4 = v0[21];
    v6 = v0[18];
    v5 = v0[19];
    v8 = v0[16];
    v7 = v0[17];
    (*(v3 + 104))(v4, *MEMORY[0x277D21C40], v5);
    v56 = v1;
    sub_24F92A368();
    (*(v3 + 8))(v4, v5);
    sub_24F92A408();
    (*(v7 + 8))(v6, v8);
    v1 = v66;
    sub_24F91F568();
    v9 = *(v2 + 8);
    v9(v66, v68);
    v10 = MEMORY[0x277D84F90];
    if (!v70)
    {
      break;
    }

    v11 = 0;
    v12 = v0[35];
    v13 = v0[13];
    v67 = v0[12];
    v69 = v0[39];
    v64 = v12 & 0xC000000000000001;
    v57 = v12 + 32;
    v58 = v12 & 0xFFFFFFFFFFFFFF8;
    v59 = MEMORY[0x277D84F90];
    v60 = v9;
    while (1)
    {
      if (v64)
      {
        v14 = MEMORY[0x253052270](v11, v0[35]);
      }

      else
      {
        if (v11 >= *(v58 + 16))
        {
          goto LABEL_54;
        }

        v14 = *(v57 + 8 * v11);
      }

      v15 = v14;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v1 = v0[26];
      [v14 playedAt];
      sub_24F91F5D8();
      if (sub_24F91F598())
      {
        v63 = v11;
        v17 = [v15 participants];
        v72 = 0;
        sub_24F92B598();

        if (v72)
        {
          v18 = v72;
        }

        else
        {
          v18 = v10;
        }

        v65 = v15;
        v1 = [v15 groupID];
        v61 = sub_24F92B0D8();
        v62 = v19;

        v20 = *(v18 + 16);
        if (v20)
        {
          v21 = 0;
          v22 = (v18 + 40);
          v71 = v10;
          while (v21 < *(v18 + 16))
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v25 = v23 == v0[31] && v24 == v0[32];
            if (!v25 && (sub_24F92CE08() & 1) == 0 && *(v69 + 16))
            {
              v1 = v0[39];

              v26 = sub_24E76D644(v23, v24);
              if (v27)
              {
                v29 = v0[14];
                v28 = v0[15];
                v30 = *(v67 + 72);
                sub_24E70D960(*(v69 + 56) + v30 * v26, v29);

                sub_24E61C0A8(v29, v28);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v71 = sub_24E618138(0, v71[2] + 1, 1, v71);
                }

                v32 = v71[2];
                v31 = v71[3];
                v1 = (v32 + 1);
                if (v32 >= v31 >> 1)
                {
                  v71 = sub_24E618138(v31 > 1, v32 + 1, 1, v71);
                }

                v33 = v0[15];
                v71[2] = v1;
                sub_24E61C0A8(v33, v71 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + v32 * v30);
                v10 = MEMORY[0x277D84F90];
              }

              else
              {
              }
            }

            ++v21;
            v22 += 2;
            if (v20 == v21)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
          break;
        }

        v71 = v10;
LABEL_33:

        v34 = v71;
        v35 = v71[2];
        if (v35)
        {
          v72 = v10;
          sub_24F4578E0(0, v35, 0);
          v36 = v72;
          v37 = v71 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v38 = *(v67 + 72);
          do
          {
            v39 = v0[13];
            sub_24E70D960(v37, v39);
            v40 = *v39;
            v41 = *(v13 + 8);

            sub_24E71BF38(v39);
            v72 = v36;
            v43 = *(v36 + 16);
            v42 = *(v36 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_24F4578E0((v42 > 1), v43 + 1, 1);
              v36 = v72;
            }

            *(v36 + 16) = v43 + 1;
            v44 = v36 + 16 * v43;
            *(v44 + 32) = v40;
            *(v44 + 40) = v41;
            v37 += v38;
            --v35;
          }

          while (v35);
          v10 = MEMORY[0x277D84F90];
          v34 = v71;
        }

        else
        {
          v36 = v10;
        }

        v45 = sub_24F45D828(v36);

        v9 = v60;
        v11 = v63;
        v1 = v65;
        if (v34[2] <= 1uLL || (sub_24F4D4EB4(v45, v0[8]) & 1) != 0)
        {
          v60(v0[24], v0[22]);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_24E6195A8(0, *(v59 + 2) + 1, 1, v59);
          }

          v47 = *(v59 + 2);
          v46 = *(v59 + 3);
          if (v47 >= v46 >> 1)
          {
            v59 = sub_24E6195A8((v46 > 1), v47 + 1, 1, v59);
          }

          v48 = v0[24];
          v49 = v0[22];
          *(v59 + 2) = v47 + 1;
          v50 = &v59[24 * v47];
          *(v50 + 4) = v61;
          *(v50 + 5) = v62;
          *(v50 + 6) = v71;
          v1 = v0 + 8;
          sub_24ED7FF20(&v72, v45);

          v60(v48, v49);
        }
      }

      else
      {
        v9(v0[24], v0[22]);
      }

      if (v11 == v0[36])
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v59 = MEMORY[0x277D84F90];
LABEL_49:
  v51 = v0[26];
  v52 = v9;
  v53 = v0[22];

  v52(v51, v53);

  v54 = v0[1];

  return v54(v59);
}

uint64_t sub_24F2A4AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2A4B74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F2A4C08(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78);

  return sub_24F2A3404(a1, a2);
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F2A4CAC()
{
  result = qword_27F23DC80;
  if (!qword_27F23DC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23DC80);
  }

  return result;
}

uint64_t Artwork.ImageScale.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24F926E78();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_27968F4D8 + v3);

  return v5(a1, v6, v4);
}

UIImageSymbolConfiguration_optional __swiftcall Artwork.configuration(with:)(UIImageSymbolConfiguration_optional with)
{
  isa = with.value.super.super.isa;
  if (*(v1 + 96) > 1u)
  {
    if (*(v1 + 96) != 2)
    {
LABEL_11:
      v8 = isa;
      goto LABEL_12;
    }

    v3 = 3;
  }

  else if (*(v1 + 96))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [objc_opt_self() configurationWithScale_];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  if (!isa)
  {

    goto LABEL_11;
  }

  v6 = isa;
  isa = [v5 configurationByApplyingConfiguration_];

LABEL_12:
  v9 = isa;
  result.value.super.super.isa = v9;
  result.is_nil = v7;
  return result;
}

uint64_t Artwork.ImageScale.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Artwork.ImageScale.rawValue.getter()
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

uint64_t sub_24F2A4EFC(_BYTE *a1, _BYTE *a2)
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F2A4FF0()
{
  result = qword_27F23DC88;
  if (!qword_27F23DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC88);
  }

  return result;
}

uint64_t sub_24F2A5044()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2A50DC()
{
  sub_24F92B218();
}

uint64_t sub_24F2A5160()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2A5200(uint64_t *a1@<X8>)
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

uint64_t AchievementSummaryLayout.Metrics.achievementStackInsets.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t AchievementSummaryLayout.Metrics.outOfTotalLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return sub_24E612C80(a1, v1 + 8);
}

uint64_t AchievementSummaryLayout.Metrics.chevronLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_24E612C80(a1, v1 + 48);
}

uint64_t AchievementSummaryLayout.Metrics.chevronTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);

  return sub_24E612C80(a1, v1 + 88);
}

uint64_t AchievementSummaryLayout.Metrics.componentHeight.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 128) = v2;
  return result;
}

uint64_t AchievementSummaryLayout.Metrics.init(achievementStackInsets:outOfTotalLeadingMargin:chevronLeadingMargin:chevronTrailingMargin:componentHeight:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v9 = *a5;
  *a6 = *a1;
  sub_24E612C80(a2, (a6 + 1));
  sub_24E612C80(a3, (a6 + 6));
  result = sub_24E612C80(a4, (a6 + 11));
  a6[16] = v9;
  return result;
}

__n128 AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v12;
  *(a7 + 128) = *(a1 + 128);
  v13 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v13;
  v14 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v14;
  v15 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v15;
  sub_24E612C80(a2, a7 + 136);
  sub_24E612C80(a3, a7 + 176);
  sub_24E612C80(a4, a7 + 216);
  sub_24E612C80(a5, a7 + 256);
  result = *a6;
  v17 = *(a6 + 16);
  *(a7 + 296) = *a6;
  *(a7 + 312) = v17;
  *(a7 + 328) = *(a6 + 32);
  return result;
}

double AchievementSummaryLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v12 = sub_24F92BF98();

  if (v12)
  {
    sub_24E94275C((v3 + 37), &v19);
    if (v20)
    {
      sub_24E612C80(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_24F922298();
      __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v13 = *(v7 + 8);
      v13(v10, v6);
      __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v13(v10, v6);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_24E942EA8(&v19);
      __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v15 = *(v7 + 8);
      v15(v10, v6);
      __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v15(v10, v6);
    }

    __swift_project_boxed_opaque_existential_1(v3 + 17, v3[20]);
    sub_24F92C228();
    sub_24F922298();
    v16 = *v3;
    *&v19 = a1;
    v17 = *(*v16 + 104);
    v17(v21, &v19);
    *&v19 = a1;
    v17(v21, &v19);
    __swift_project_boxed_opaque_existential_1(v3 + 22, v3[25]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v3 + 32, v3[35]);
    sub_24F922298();
  }

  else
  {
    v14 = v3[16];
    *&v19 = a1;
    (*(*v14 + 104))(v21, &v19);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v7 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return a2;
}

double static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 128);
  v13 = a2;
  (*(*v11 + 104))(v14, &v13, v8);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a3;
}

uint64_t AchievementSummaryLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v101 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]);
  sub_24F922298();
  v18 = v17;
  v20 = v19;
  v126.origin.x = a3;
  v126.origin.y = a4;
  v126.size.width = a5;
  v126.size.height = a6;
  MidX = CGRectGetMidX(v126);
  v22 = *v6;
  *&v120 = a1;
  v23 = *(*v22 + 104);
  *&v24 = *v22 + 104;
  v23(&v122, &v120);
  v107 = v18;
  v25 = MidX - *&v125 - v18;
  v127.origin.x = a3;
  v127.origin.y = a4;
  v127.size.width = a5;
  v127.size.height = a6;
  MinX = CGRectGetMinX(v127);
  *&v120 = a1;
  v23(&v122, &v120);
  v27 = MinX + v123;
  if (v25 > MinX + v123)
  {
    v27 = v25;
  }

  v116 = v27;
  v128.origin.x = a3;
  v128.origin.y = a4;
  v128.size.width = a5;
  v128.size.height = a6;
  MinY = CGRectGetMinY(v128);
  *&v120 = a1;
  v111 = *&v23;
  v110 = v24;
  v23(&v122, &v120);
  v29 = v122;
  sub_24E94275C((v6 + 37), &v120);
  v117 = a3;
  height = v20;
  v112 = v14;
  if (v121)
  {
    sub_24E612C80(&v120, &v122);
    __swift_project_boxed_opaque_existential_1(&v122, v125);
    sub_24F922298();
    v31 = v30;
    v119 = MinY;
    v33 = v32;
    v129.origin.x = a3;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    MaxX = CGRectGetMaxX(v129);
    x = v29;
    v35 = MaxX;
    __swift_project_boxed_opaque_existential_1(v6 + 11, v6[14]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v37 = v36;
    v38 = *(*&v14 + 8);
    v38(v16, v13);
    v98 = v35 - v37 - v31;
    v130.origin.x = a3;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    MidY = CGRectGetMidY(v130);
    v99 = v33;
    v40 = v33 * -0.5;
    MinY = v119;
    v97 = floor(MidY + v40);
    __swift_project_boxed_opaque_existential_1(v6 + 6, v6[9]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v42 = v41;
    v38(v16, v13);
    v100 = v31;
    v43 = v31 + v42;
    v20 = height;
    __swift_project_boxed_opaque_existential_1(v6 + 11, v6[14]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v45 = v44;
    v46 = v13;
    v38(v16, v13);
    v47 = v43 + v45;
    v29 = x;
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  else
  {
    v46 = v13;
    sub_24E942EA8(&v120);
    v98 = 0.0;
    v97 = 0.0;
    v100 = 0.0;
    v99 = 0.0;
    v47 = 0.0;
  }

  v106 = MinY + v29;
  v48 = [a1 traitCollection];
  v49 = sub_24F92BF98();

  v50 = v116;
  if ((v49 & 1) == 0)
  {
    v51 = v117;
    v131.origin.x = v117;
    v131.origin.y = a4;
    v131.size.width = a5;
    v131.size.height = a6;
    v50 = CGRectGetMidX(v131);
    v132.origin.x = v51;
    v132.origin.y = a4;
    v132.size.width = a5;
    v132.size.height = a6;
    v52 = CGRectGetMinX(v132);
    *&v120 = a1;
    v53 = v111;
    (*&v111)(&v122, &v120);
    v54 = v52 + v123;
    v133.origin.x = v116;
    v133.origin.y = v106;
    v133.size.width = v107;
    v133.size.height = v20;
    v55 = v54 + CGRectGetWidth(v133);
    *&v120 = a1;
    (*&v53)(&v122, &v120);
    if (v50 <= v55 + *&v125)
    {
      v50 = v55 + *&v125;
    }
  }

  v56 = v117;
  v134.origin.x = v117;
  v134.origin.y = a4;
  v134.size.width = a5;
  v134.size.height = a6;
  v57 = CGRectGetMaxX(v134);
  x = v50;
  v58 = v57 - v47 - v50;
  v59 = ceil(v58 * 0.44);
  __swift_project_boxed_opaque_existential_1(v7 + 22, v7[25]);
  v135.origin.x = v56;
  v135.origin.y = a4;
  v135.size.width = a5;
  v135.size.height = a6;
  CGRectGetHeight(v135);
  sub_24F922288();
  v61 = v60;
  v119 = v62;
  y = v63;
  __swift_project_boxed_opaque_existential_1(v7 + 27, v7[30]);
  v136.origin.x = v56;
  v136.origin.y = a4;
  v136.size.width = a5;
  v136.size.height = a6;
  CGRectGetHeight(v136);
  sub_24F922288();
  width = v64;
  v113 = v65;
  v108 = v66;
  __swift_project_boxed_opaque_existential_1(v7 + 32, v7[35]);
  v137.origin.x = v56;
  v137.origin.y = a4;
  v137.size.width = a5;
  v137.size.height = a6;
  CGRectGetHeight(v137);
  sub_24F922298();
  v104 = v67;
  v69 = v68;
  v70 = [a1 traitCollection];
  v71 = sub_24F92BF98();

  v102 = a6;
  v103 = a4;
  v114 = v69;
  if (v71)
  {
    v138.origin.x = v116;
    v138.origin.y = v106;
    v138.size.width = v107;
    v138.size.height = height;
    MaxY = CGRectGetMaxY(v138);
    *&v120 = a1;
    (*&v111)(&v122, &v120);
    v73 = MaxY + v124;
  }

  else
  {
    v139.origin.x = v56;
    v139.origin.y = a4;
    v139.size.width = a5;
    v139.size.height = a6;
    v73 = floor((CGRectGetHeight(v139) - (v119 + v69)) * 0.5);
  }

  if (v59 >= v61)
  {
    v74 = v61;
  }

  else
  {
    v74 = v59;
  }

  v75 = x;
  v140.origin.x = x;
  v140.origin.y = v73;
  v140.size.width = v74;
  v76 = v119;
  v140.size.height = v119;
  v77 = CGRectGetMaxX(v140);
  __swift_project_boxed_opaque_existential_1(v7 + 1, v7[4]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v79 = v78;
  (*(*&v112 + 8))(v16, v46);
  v141.origin.x = v75;
  v141.origin.y = v73;
  v141.size.width = v74;
  v141.size.height = v76;
  v80 = v58 - CGRectGetWidth(v141);
  if (v80 >= width)
  {
    v80 = width;
  }

  v111 = v80;
  v110 = v77 + v79;
  y = y + v73 - v108;
  v142.origin.x = v75;
  v142.origin.y = v73;
  v142.size.width = v74;
  v142.size.height = v76;
  v112 = CGRectGetMinX(v142);
  v143.origin.x = v75;
  v143.origin.y = v73;
  width = v74;
  v143.size.width = v74;
  v143.size.height = v76;
  v108 = CGRectGetMaxY(v143);
  if (v58 >= v104)
  {
    v81 = v104;
  }

  else
  {
    v81 = v58;
  }

  v82 = [a1 traitCollection];
  v83 = sub_24F92BF68();

  v104 = v81;
  if ((v83 & 1) == 0)
  {
    v84 = v106;
    v85 = v116;
    v144.origin.x = v116;
    v144.origin.y = v106;
    v96 = a5;
    v86 = v107;
    v144.size.width = v107;
    v87 = height;
    v144.size.height = height;
    v88 = CGRectGetMinX(v144);
    v145.origin.x = v110;
    v145.origin.y = y;
    v145.size.width = v111;
    v145.size.height = v113;
    v89 = CGRectGetMaxX(v145);
    v146.origin.x = v112;
    v146.origin.y = v108;
    v146.size.width = v81;
    v146.size.height = v114;
    v90 = CGRectGetMaxX(v146);
    if (v89 > v90)
    {
      v90 = v89;
    }

    v91 = v90 - v88;
    v147.origin.x = v117;
    v147.origin.y = v103;
    v147.size.width = v96;
    v147.size.height = v102;
    v92 = ceil((CGRectGetWidth(v147) - v91) * 0.5);
    v148.origin.x = v85;
    v148.origin.y = v84;
    v148.size.width = v86;
    v148.size.height = v87;
    v93 = v92 - CGRectGetMinX(v148);
    v149.origin.x = v85;
    v149.origin.y = v84;
    v149.size.width = v86;
    v149.size.height = v87;
    v150 = CGRectOffset(v149, v93, 0.0);
    height = v150.size.height;
    v150.origin.x = x;
    v150.origin.y = v73;
    v150.size.width = width;
    v150.size.height = v119;
    v151 = CGRectOffset(v150, v93, 0.0);
    x = v151.origin.x;
    width = v151.size.width;
    v119 = v151.size.height;
    v151.origin.x = v110;
    v151.origin.y = y;
    v151.size.width = v111;
    v151.size.height = v113;
    v152 = CGRectOffset(v151, v93, 0.0);
    v110 = v152.origin.x;
    y = v152.origin.y;
    v111 = v152.size.width;
    v113 = v152.size.height;
    v152.origin.x = v112;
    v152.origin.y = v108;
    v152.size.width = v104;
    v152.size.height = v114;
    v153 = CGRectOffset(v152, v93, 0.0);
    v112 = v153.origin.x;
    v108 = v153.origin.y;
    v104 = v153.size.width;
    v114 = v153.size.height;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 17, v7[20]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 22, v7[25]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 27, v7[30]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 32, v7[35]);
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E94275C((v7 + 37), &v122);
  if (*&v125 == 0.0)
  {
    sub_24E942EA8(&v122);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v122, v125);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  return sub_24F922128();
}

uint64_t sub_24F2A697C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2A69C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2A6A6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2A6AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2A6B24()
{
  v1 = v0;
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929DD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F2A6D28();
  v11 = [v1 session];
  sub_24F929DC8();
  v12 = *(v10 + 2);
  if (v12)
  {
    v19 = v7;
    v20 = v6;
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = &v10[(*(v13 + 64) + 32) & ~*(v13 + 64)];
    v17 = *(v13 + 56);
    do
    {
      v14(v5, v16, v2);
      sub_24F929DB8();
      (*(v13 - 8))(v5, v2);
      v16 += v17;
      --v12;
    }

    while (v12);

    v7 = v19;
    v6 = v20;
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

char *sub_24F2A6D28()
{
  v0 = sub_24F928418();
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_24F91F4A8();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v25 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  if (qword_27F210C00 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    sub_24F92A428();
    sub_24F92A3F8();
    (*(v13 + 8))(v15, v12);
    if (!v38[0])
    {
      return MEMORY[0x277D84F90];
    }

    v16 = sub_24E9E2340(v38[0]);

    if (!v16)
    {
      return MEMORY[0x277D84F90];
    }

    v37 = *(v16 + 16);
    if (!v37)
    {
      break;
    }

    v13 = 0;
    v34 = (v32 + 32);
    v35 = (v32 + 48);
    v26 = "eArray8@NSError16";
    v17 = MEMORY[0x277D84F90];
    v18 = (v16 + 40);
    v25 = xmmword_24F93DE60;
    v33 = v4;
    v27 = v11;
    v28 = v5;
    v36 = v16;
    while (v13 < *(v16 + 16))
    {
      v15 = *(v18 - 1);
      v12 = *v18;

      sub_24F91F488();
      if ((*v35)(v4, 1, v5) == 1)
      {
        sub_24E601704(v4, &qword_27F228530);
        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v20 = sub_24F92AAE8();
        __swift_project_value_buffer(v20, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v25;
        sub_24F928408();
        sub_24F9283F8();
        v38[3] = MEMORY[0x277D837D0];
        v38[0] = v15;
        v38[1] = v12;

        sub_24F9283D8();
        sub_24E601704(v38, &qword_27F2129B0);
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();

        v4 = v33;
        v11 = v27;
        v5 = v28;
        v16 = v36;
      }

      else
      {

        v12 = *v34;
        v21 = v30;
        (*v34)(v30, v4, v5);
        v22 = v29;
        v12(v29, v21, v5);
        v12(v11, v22, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_24E6191C8(0, *(v17 + 2) + 1, 1, v17);
        }

        v15 = *(v17 + 2);
        v23 = *(v17 + 3);
        v16 = v36;
        if (v15 >= v23 >> 1)
        {
          v17 = sub_24E6191C8(v23 > 1, v15 + 1, 1, v17);
        }

        v19 = v32;
        v4 = v33;
        *(v17 + 2) = v15 + 1;
        v12(&v17[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15], v11, v5);
      }

      ++v13;
      v18 += 2;
      if (v37 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v17 = MEMORY[0x277D84F90];
LABEL_19:

  return v17;
}

void *sub_24F2A7354()
{
  result = sub_24E60CFB0(MEMORY[0x277D84F90]);
  qword_27F39E178 = result;
  return result;
}

void *sub_24F2A737C()
{
  result = sub_24E60CFB0(MEMORY[0x277D84F90]);
  qword_27F39E180 = result;
  return result;
}

void *sub_24F2A73A4()
{
  result = sub_24E60CFB0(MEMORY[0x277D84F90]);
  qword_27F39E188 = result;
  return result;
}

uint64_t AccountSectionText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSectionText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSectionText.__allocating_init(id:paragraph:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_24E9BBAA8(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t AccountSectionText.init(id:paragraph:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_24E9BBAA8(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t AccountSectionText.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v39 = sub_24F9285B8();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F6B8();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v35 = v10;
  if (v18)
  {
    v40 = v17;
    v41 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v6;
    v22 = v21;
    (*(v34 + 8))(v8, v20);
    v40 = v19;
    v41 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v10 + 8);
  v24 = v9;
  v23(v15, v9);
  v25 = v43;
  *(v3 + 24) = v42;
  *(v3 + 40) = v25;
  *(v3 + 56) = v44;
  sub_24F928398();
  v26 = v36;
  v27 = v37;
  v28 = v39;
  (*(v37 + 16))(v36, v45, v39);
  v29 = v38;
  v30 = sub_24F0151C0(v12, v26);
  if (v29)
  {
    (*(v27 + 8))(v45, v28);
    v23(v16, v24);
    sub_24E6585F8(v3 + 24);
    type metadata accessor for AccountSectionText();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v30;
    (*(v27 + 8))(v45, v28);
    v23(v16, v24);
    *(v3 + 16) = v31;
  }

  return v3;
}

uint64_t AccountSectionText.deinit()
{

  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t AccountSectionText.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24F2A7B1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSectionText();
  v7 = swift_allocObject();
  result = AccountSectionText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id sub_24F2A7BFC()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }

  return 0;
}

uint64_t NSUserDefaults.arcadeUpsellAutoPresentationCount.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v7);
  }

  return 0;
}

void NSUserDefaults.arcadeUpsellAutoPresentationCount.setter(uint64_t a1)
{
  v3 = sub_24F92B098();
  [v1 setInteger:a1 forKey:v3];
}

uint64_t NSUserDefaults.shelfOrthogonalScrollingBehavior.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v7);
  }

  return 4;
}

void (*NSUserDefaults.arcadeUpsellAutoPresentationCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  return sub_24F2A7F94;
}

void sub_24F2A7F94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_24F92B098();
  [v1 setInteger:v2 forKey:v3];
}

void NSUserDefaults.shelfOrthogonalScrollingBehavior.setter(uint64_t a1)
{
  v3 = sub_24F92B098();
  [v1 setInteger:a1 forKey:v3];
}

void (*NSUserDefaults.shelfOrthogonalScrollingBehavior.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();
  return sub_24F2A80C4;
}

void sub_24F2A80C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_24F92B098();
  [v1 setInteger:v2 forKey:v3];
}

uint64_t sub_24F2A8154@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  *a1 = result;
  return result;
}

void sub_24F2A8180(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24F92B098();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_24F2A81F8@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();
  *a1 = result;
  return result;
}

void sub_24F2A8224(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24F92B098();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_24F2A82B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F920418();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928AD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F2A83B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F920418();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928AD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for UpdateGamedActivityInstanceAction()
{
  result = qword_27F23DC90;
  if (!qword_27F23DC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2A84FC()
{
  result = sub_24F920418();
  if (v1 <= 0x3F)
  {
    result = sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F2A8580@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F928AD8();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F920418();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DCA0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v19 - v7;
  updated = type metadata accessor for UpdateGamedActivityInstanceAction();
  MEMORY[0x28223BE20](updated);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2A8B6C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = updated;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_24F2A8BC0(&qword_27F23C2C8, MEMORY[0x277D0CB18]);
  v15 = v25;
  sub_24F92CC68();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_24F2A8BC0(&qword_27F254CB0, MEMORY[0x277D21C88]);
  sub_24F92CC68();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_24E9BCDAC(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F2A8C08(v17);
}

uint64_t sub_24F2A89A0()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F2A89EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA65660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24F2A8ADC(uint64_t a1)
{
  v2 = sub_24F2A8B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2A8B18(uint64_t a1)
{
  v2 = sub_24F2A8B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F2A8B6C()
{
  result = qword_27F23DCA8;
  if (!qword_27F23DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DCA8);
  }

  return result;
}

uint64_t sub_24F2A8BC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2A8C08(uint64_t a1)
{
  updated = type metadata accessor for UpdateGamedActivityInstanceAction();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_24F2A8C78()
{
  result = qword_27F23DCB0;
  if (!qword_27F23DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DCB0);
  }

  return result;
}

unint64_t sub_24F2A8CD0()
{
  result = qword_27F23DCB8;
  if (!qword_27F23DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DCB8);
  }

  return result;
}

unint64_t sub_24F2A8D28()
{
  result = qword_27F23DCC0[0];
  if (!qword_27F23DCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23DCC0);
  }

  return result;
}

uint64_t ProxyImpressionsTracker.__allocating_init(proxy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProxyImpressionsTracker.init(proxy:)(a1);
  return v2;
}

uint64_t ProxyImpressionsTracker.init(proxy:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  return v1;
}

id ProxyImpressionsTracker.switchProxy(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  [v3 lock];
  sub_24F2A8EF4(v1, a1);

  return [v3 unlock];
}

uint64_t sub_24F2A8EF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_24F2A8F8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  [v7 lock];
  sub_24F2A9038(v3, a1, a2, a3, &v9);

  return [v7 unlock];
}

uint64_t sub_24F2A9038@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, BOOL *a5@<X8>)
{
  v10 = *a1;
  result = swift_beginAccess();
  v12 = a1[2];
  if (v12)
  {
    v13 = *(v10 + 80);
    v14 = *(v10 + 88);
    swift_unknownObjectRetain();
    a4(a2, a3, v13, v14);
    result = swift_unknownObjectRelease();
  }

  *a5 = v12 == 0;
  return result;
}

uint64_t sub_24F2A913C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  [v7 lock];
  sub_24F2A91E0(v3, a1, a2, a3, &v9);
  [v7 unlock];
  return v9;
}

uint64_t sub_24F2A91E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  result = swift_beginAccess();
  if (a1[2])
  {
    v12 = *(v10 + 80);
    v13 = *(v10 + 88);
    swift_unknownObjectRetain();
    v14 = a4(a2, a3, v12, v13);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  *a5 = v14;
  return result;
}

Swift::Void __swiftcall ProxyImpressionsTracker.removeAllImpressions()()
{
  v1 = *(v0 + 24);
  [v1 lock];
  sub_24F2A9348(v0, &v2);

  [v1 unlock];
}

uint64_t sub_24F2A9348@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_24F9296B8();
    result = swift_unknownObjectRelease();
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_24F2A93F4()
{
  sub_24F2A98E4();
  sub_24F92ABA8();
  swift_getWitnessTable();
  return v1;
}

uint64_t sub_24F2A94AC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = swift_allocObject();
  v3 = swift_unknownObjectRetain();
  result = ProxyImpressionsTracker.init(proxy:)(v3);
  *a1 = v2;
  return result;
}

uint64_t ProxyImpressionsTracker.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ProxyImpressionsTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ProxyImpressionsTracker<>.consumeFastImpressions(in:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  [v7 lock];
  sub_24F2A96FC(v3, a1, a2, a3, &v9);
  [v7 unlock];
  return v9;
}

uint64_t sub_24F2A96FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  if (a1[2])
  {
    result = (*(a4 + 8))(a2, a3, *(v10 + 80), a4);
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  *a5 = result;
  return result;
}

uint64_t sub_24F2A97D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24F2A98E4()
{
  result = qword_27F23DD48;
  if (!qword_27F23DD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23DD48);
  }

  return result;
}

uint64_t sub_24F2A9944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F2A9A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FinishChallengeCreationIntent()
{
  result = qword_27F23DD50;
  if (!qword_27F23DD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F2A9B10()
{
  sub_24F2A9BA4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F2A9BA4()
{
  if (!qword_27F21FB48)
  {
    type metadata accessor for GameActivityDraftGameInfo(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21FB48);
    }
  }
}

unint64_t sub_24F2A9BFC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 16) = xmmword_24F942000;
  *(inited + 40) = 0xEB00000000444965;
  v3 = MEMORY[0x277D837D0];
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x656D614E656D6167;
  *(inited + 96) = 0xE800000000000000;
  v7 = v1[2];
  v8 = v1[3];
  *(inited + 128) = v3;
  *(inited + 136) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA72010;
  LOBYTE(v7) = *(v1 + 32);
  v9 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v9;
  *(inited + 160) = v7;
  strcpy((inited + 200), "dismissalStyle");
  *(inited + 215) = -18;
  v10 = type metadata accessor for FinishChallengeCreationIntent();
  v11 = (v1 + *(v10 + 32));
  v12 = *v11;
  v13 = v11[1];
  *(inited + 240) = v3;
  *(inited + 248) = v6;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 256) = 0x6F666E49656D6167;
  *(inited + 264) = 0xE800000000000000;
  v14 = *(v10 + 28);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  *(inited + 304) = sub_24F2A9E68();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E8F2274(v1 + v14, boxed_opaque_existential_1);

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

unint64_t sub_24F2A9E68()
{
  result = qword_27F23DD60;
  if (!qword_27F23DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212B28);
    sub_24F2A9EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DD60);
  }

  return result;
}

unint64_t sub_24F2A9EEC()
{
  result = qword_27F22E350;
  if (!qword_27F22E350)
  {
    type metadata accessor for GameActivityDraftGameInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E350);
  }

  return result;
}

uint64_t AppStoreDeepLink.init(userActivity:refApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v82 = a3;
  v80 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = sub_24F91F4A8();
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = type metadata accessor for AppStoreDeepLink();
  v79 = *(v21 - 8);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v25 = [a1 activityType];
  v26 = sub_24F92B0D8();
  v28 = v27;

  if (sub_24F92B0D8() == v26 && v29 == v28)
  {
  }

  else
  {
    v30 = sub_24F92CE08();

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = [v83 webpageURL];
  if (v31)
  {
    v32 = v31;
    sub_24F91F428();

    v33 = v78;
    (*(v78 + 32))(v20, v17, v13);
    v76 = *(v33 + 16);
    (v76)(v24, v20, v13);
    v34 = sub_24F91F398();
    v35 = &v24[*(v21 + 20)];
    *v35 = v34;
    v35[1] = v36;
    v37 = v82;
    if (!v82)
    {
      v38 = [v83 _sourceApplication];
      if (v38)
      {
        v39 = v38;
        v81 = sub_24F92B0D8();
        v37 = v40;
      }

      else
      {
        v81 = 0;
        v37 = 0;
      }
    }

    v44 = &v24[*(v21 + 24)];
    *v44 = v81;
    v44[1] = v37;

    v45 = [v83 referrerURL];
    v82 = v37;
    v74 = v20;
    if (v45)
    {
      v46 = v45;
      sub_24F91F428();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v76;
    v76 = v21;
    v49 = *(v33 + 56);
    v49(v9, v47, 1, v13);
    sub_24E911D90(v9, v12);
    if ((*(v33 + 48))(v12, 1, v13))
    {
      sub_24E70E058(v12);
      v50 = 0;
      v51 = v48;
      v52 = 0;
    }

    else
    {
      v53 = v75;
      v48(v75, v12, v13);
      sub_24E70E058(v12);
      v51 = v48;
      v50 = sub_24F91F398();
      v52 = v54;
      (*(v33 + 8))(v53, v13);
    }

    v55 = &v24[*(v76 + 28)];
    v75 = v50;
    *v55 = v50;
    v55[1] = v52;
    v56 = v77;
    v51(v77, v24, v13);
    v49(v56, 0, 1, v13);

    v57 = v83;
    v58 = [v83 _originatingProcess];
    v59 = [v57 _sourceApplication];
    if (v59)
    {
      v60 = v59;
      v61 = sub_24F92B0D8();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v64 = v77;
    v65 = v81;
    v66 = v82;
    sub_24EDC3D6C(v77, v58, v61, v63, &v84);

    sub_24E70E058(v64);
    (*(v78 + 8))(v74, v13);
    v67 = v84;
    v68 = v85;
    v69 = v75;
    v70 = v76;
    v71 = &v24[*(v76 + 32)];
    *v71 = v84;
    v71[8] = v68;
    v72 = &v24[*(v70 + 36)];
    *v72 = v65;
    *(v72 + 1) = v66;
    *(v72 + 2) = v69;
    *(v72 + 3) = v52;
    *(v72 + 4) = v67;
    v72[40] = v68;
    v73 = v80;
    sub_24EB76568(v24, v80);
    (*(v79 + 56))(v73, 0, 1, v70);
    return sub_24E90BCC4(v67, v68);
  }

LABEL_9:

  v41 = v80;
  v42 = *(v79 + 56);

  return v42(v41, 1, 1, v21);
}

uint64_t ShareSheetNotesMetadata.itemName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetNotesMetadata.developer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);

  return v1;
}

uint64_t ShareSheetNotesMetadata.category.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);

  return v1;
}

uint64_t ShareSheetNotesMetadata.mediaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);

  return v1;
}

uint64_t ShareSheetNotesMetadata.__allocating_init(itemName:url:developer:category:fileSize:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_24E911D90(a3, v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);
  v19 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
  *v19 = a4;
  v19[1] = a5;
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
  *v20 = a6;
  v20[1] = a7;
  v21 = v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize;
  *v21 = a8;
  *(v21 + 8) = a9 & 1;
  v22 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
  *v22 = a10;
  v22[1] = a11;
  return v18;
}

uint64_t ShareSheetNotesMetadata.init(itemName:url:developer:category:fileSize:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_24E911D90(a3, v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);
  v17 = (v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
  *v17 = a4;
  v17[1] = a5;
  v18 = (v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
  *v18 = a6;
  v18[1] = a7;
  v19 = v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize;
  *v19 = a8;
  *(v19 + 8) = a9 & 1;
  v20 = (v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
  *v20 = a10;
  v20[1] = a11;
  return v11;
}

uint64_t ShareSheetNotesMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetNotesMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetNotesMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v43 = a2;
  v3 = v2;
  v42 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = a1;
  sub_24F928398();
  v15 = sub_24F928348();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v14, v8);
  if (v17)
  {
    v3[2] = v15;
    v3[3] = v17;
    v19 = v44;
    sub_24F928398();
    sub_24F928268();
    v18(v11, v8);
    sub_24E911D90(v7, v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);
    sub_24F928398();
    v20 = sub_24F928348();
    v22 = v21;
    v18(v11, v8);
    v23 = (v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
    *v23 = v20;
    v23[1] = v22;
    sub_24F928398();
    v24 = sub_24F928348();
    v26 = v25;
    v18(v11, v8);
    v27 = (v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
    *v27 = v24;
    v27[1] = v26;
    sub_24F928398();
    v28 = sub_24F9282D8();
    LOBYTE(v26) = v29;
    v18(v11, v8);
    v30 = v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize;
    *v30 = v28;
    v30[8] = v26 & 1;
    sub_24F928398();
    v31 = sub_24F928348();
    v33 = v32;
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v43, v34);
    v18(v19, v8);
    v18(v11, v8);
    v35 = (v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
    *v35 = v31;
    v35[1] = v33;
  }

  else
  {
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v37 = 0x656D614E6D657469;
    v38 = v42;
    v37[1] = 0xE800000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v43, v39);
    v18(v44, v8);
    type metadata accessor for ShareSheetNotesMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for ShareSheetNotesMetadata()
{
  result = qword_27F23DD68;
  if (!qword_27F23DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareSheetNotesMetadata.deinit()
{

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);

  return v0;
}

uint64_t ShareSheetNotesMetadata.__deallocating_deinit()
{

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);

  return swift_deallocClassInstance();
}

uint64_t *sub_24F2AAF04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetNotesMetadata();
  v7 = swift_allocObject();
  result = ShareSheetNotesMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F2AAF78()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F2AB094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2AB0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2AB15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDA8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v65 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDB8);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  *v6 = sub_24F927608();
  v6[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDC0);
  sub_24F2AB734(a1, v6 + *(v14 + 44));
  v15 = sub_24F925868();
  sub_24F923318();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDC8) + 36);
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_24F9257F8();
  sub_24F923318();
  v26 = v6 + *(v4 + 44);
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  v31 = *(a1 + 72);
  sub_24E7538CC(a1, v68);
  v32 = v69 != 0;
  sub_24EA418B4(v68);
  v33 = &v9[*(v7 + 36)];
  *v33 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for LargeButtonForegroundStyleViewModifier();
  v35 = v33 + v34[5];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  *(v33 + v34[6]) = v31;
  *(v33 + v34[7]) = v32;
  v36 = v33 + v34[8];
  *v36 = 0;
  v36[8] = 1;
  v37 = v33 + v34[9];
  *v37 = 0;
  v37[8] = 1;
  v38 = v33 + v34[10];
  *v38 = 0x406E000000000000;
  v38[8] = 0;
  sub_24E6009C8(v6, v9, &qword_27F23DDA8);
  sub_24E7538CC(a1, v68);
  sub_24EA418B4(v68);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v39 = sub_24F9248C8();
  __swift_project_value_buffer(v39, qword_27F39F078);
  sub_24F2AC364();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F23DDB0);
  v69 = sub_24F9271D8();
  v70 = sub_24F2AC564(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_24F924B38();
  (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, v41, v42);
  v43 = v67;
  sub_24E60169C(v68, v67, &qword_27F23DDF8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDA0);
  v46 = v65;
  v45 = v66;
  (*(v65 + 16))(v43 + v44[9], v12, v66);
  v47 = v43 + v44[10];
  *v47 = sub_24F923398() & 1;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49 & 1;
  v50 = v43 + v44[11];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = v45;
  v52 = v46;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v53 = qword_27F24E488;
  v54 = sub_24F923398();
  v56 = v55;
  v58 = v57;
  v59 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DD90) + 36);
  *v59 = v53;
  *(v59 + 8) = v54 & 1;
  *(v59 + 16) = v56;
  *(v59 + 24) = v58 & 1;
  LOBYTE(v53) = sub_24F923398();
  v61 = v60;
  LOBYTE(v56) = v62;
  sub_24E601704(v68, &qword_27F23DDF8);
  (*(v52 + 8))(v12, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DD78);
  v64 = v43 + *(result + 36);
  *v64 = v53 & 1;
  *(v64 + 8) = v61;
  *(v64 + 16) = v56 & 1;
  return result;
}

uint64_t sub_24F2AB734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE08);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE10);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE18);
  MEMORY[0x28223BE20](v17 - 8);
  v48 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = &v46 - v20;
  v23 = *(a1 + 72);
  if (*(a1 + 72))
  {
    (*(v14 + 56))(&v46 - v20, 1, 1, v13, v21);
  }

  else
  {
    *v16 = sub_24F924C88();
    *(v16 + 1) = 0;
    v16[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE20);
    sub_24F2ABC18(a1, &v16[*(v24 + 44)]);
    v46 = v12;
    v25 = *(v13 + 36);
    v26 = v22;
    v27 = a1;
    v28 = v9;
    v29 = *MEMORY[0x277CE13C0];
    v30 = sub_24F927748();
    v31 = &v16[v25];
    v12 = v46;
    v32 = v29;
    v9 = v28;
    a1 = v27;
    v22 = v26;
    (*(*(v30 - 8) + 104))(v31, v32, v30);
    sub_24E6009C8(v16, v26, &qword_27F23DE10);
    (*(v14 + 56))(v26, 0, 1, v13, v33);
  }

  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE20);
  sub_24F2ABC18(a1, &v5[*(v34 + 44)]);
  sub_24E7538CC(a1, v51);
  v35 = v51[3];
  sub_24EA418B4(v51);
  if (v23)
  {
    if (v23 != 1 && v35)
    {
      v36 = sub_24F926C88();
LABEL_11:
      v51[0] = v36;
      goto LABEL_12;
    }

LABEL_10:
    v36 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_11;
  }

  if (!v35)
  {
    goto LABEL_10;
  }

  sub_24F926C88();
  v37 = v9;
  v38 = sub_24F926D08();

  v51[0] = v38;
  v9 = v37;
LABEL_12:
  v39 = sub_24F9238D8();
  sub_24E6009C8(v5, v9, &qword_27F23DE00);
  *&v9[*(v49 + 36)] = v39;
  sub_24E6009C8(v9, v12, &qword_27F23DE08);
  v40 = v12;
  v41 = v48;
  sub_24E60169C(v22, v48, &qword_27F23DE18);
  v42 = v50;
  sub_24E60169C(v12, v50, &qword_27F23DE08);
  v43 = v47;
  sub_24E60169C(v41, v47, &qword_27F23DE18);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE28);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F23DE08);
  sub_24E601704(v40, &qword_27F23DE08);
  sub_24E601704(v22, &qword_27F23DE18);
  sub_24E601704(v42, &qword_27F23DE08);
  return sub_24E601704(v41, &qword_27F23DE18);
}

uint64_t sub_24F2ABC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70) - 8;
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218840);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;

  v12 = sub_24F926DF8();
  v13 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v44 = v12;
  v45 = KeyPath;
  v46 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
  sub_24E60156C();
  sub_24F9268B8();

  v15 = &v11[*(v7 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v17 = *MEMORY[0x277CE1048];
  v18 = sub_24F926E78();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  v19 = *(a1 + 48);
  v44 = *(a1 + 40);
  v45 = v19;
  sub_24E600AEC();

  v20 = sub_24F925E18();
  v22 = v21;
  LOBYTE(v16) = v23;
  sub_24F925A18();
  v24 = sub_24F925C98();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;

  sub_24E600B40(v20, v22, v16 & 1);

  v44 = v24;
  v45 = v26;
  LOBYTE(v15) = v15 & 1;
  LOBYTE(v46) = v15;
  v47 = v29;
  v30 = v39;
  sub_24F9268B8();
  sub_24E600B40(v24, v26, v15);

  v31 = swift_getKeyPath();
  v32 = v40;
  v33 = v30 + *(v41 + 44);
  *v33 = v31;
  *(v33 + 8) = 1;
  *(v33 + 16) = 0;
  sub_24E60169C(v11, v32, &qword_27F218840);
  v34 = v30;
  v35 = v42;
  sub_24E60169C(v30, v42, &qword_27F214B70);
  v36 = v43;
  sub_24E60169C(v32, v43, &qword_27F218840);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE30);
  sub_24E60169C(v35, v36 + *(v37 + 48), &qword_27F214B70);
  sub_24E601704(v34, &qword_27F214B70);
  sub_24E601704(v11, &qword_27F218840);
  sub_24E601704(v35, &qword_27F214B70);
  return sub_24E601704(v32, &qword_27F218840);
}

uint64_t sub_24F2AC024()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F9232F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24E7538CC(v1, v13);
  sub_24F2AC180(v1, v11);
  v6 = swift_allocObject();
  v7 = v12[0];
  v6[3] = v11[2];
  v6[4] = v7;
  *(v6 + 73) = *(v12 + 9);
  v8 = v11[1];
  v6[1] = v11[0];
  v6[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DD78);
  sub_24F2AC210();
  return sub_24F921788();
}

uint64_t sub_24F2AC1B8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

unint64_t sub_24F2AC210()
{
  result = qword_27F23DD80;
  if (!qword_27F23DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DD78);
    sub_24F2AC29C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DD80);
  }

  return result;
}

unint64_t sub_24F2AC29C()
{
  result = qword_27F23DD88;
  if (!qword_27F23DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DD90);
    sub_24E602068(&qword_27F23DD98, &qword_27F23DDA0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DD88);
  }

  return result;
}

unint64_t sub_24F2AC364()
{
  result = qword_27F23DDD0;
  if (!qword_27F23DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DDB0);
    sub_24F2AC420();
    sub_24F2AC564(&qword_27F215EA0, type metadata accessor for LargeButtonForegroundStyleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DDD0);
  }

  return result;
}

unint64_t sub_24F2AC420()
{
  result = qword_27F23DDD8;
  if (!qword_27F23DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DDA8);
    sub_24F2AC4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DDD8);
  }

  return result;
}

unint64_t sub_24F2AC4AC()
{
  result = qword_27F23DDE0;
  if (!qword_27F23DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DDC8);
    sub_24E602068(&qword_27F23DDE8, &qword_27F23DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DDE0);
  }

  return result;
}

uint64_t sub_24F2AC564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GameOverlayPreConsentFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1)
{
  v11 = v1[1];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v10 = MEMORY[0x277D839B0];
  v9[0] = 1;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v2)
  {
    if (v11 & v4)
    {
      v8 = MEMORY[0x277D839B0];
    }

    else
    {
      v8 = MEMORY[0x277D839B0];
      v10 = MEMORY[0x277D839B0];
      v9[0] = 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      result = __swift_destroy_boxed_opaque_existential_1(v9);
    }

    if ((v6 & v5 & 1) == 0)
    {
      v10 = v8;
      v9[0] = 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  return result;
}

double sub_24F2AC800(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v2 = swift_allocObject();
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v2 + 16) = xmmword_24F979FB0;
  *(v2 + 32) = xmmword_24F976090;
  v7 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 48) = v7;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  __asm { FMOV            V6.2D, #3.0 }

  *(v2 + 88) = _Q6;
  __asm { FMOV            V7.2D, #10.0 }

  *(v2 + 104) = _Q7;
  *(v2 + 120) = _Q7;
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  *(v2 + 152) = 1;
  *(v2 + 160) = result;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = xmmword_24F976010;
  *(v2 + 208) = v7;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 248) = _Q6;
  *(v2 + 264) = 0x4028000000000000;
  __asm { FMOV            V6.2D, #12.0 }

  *(v2 + 272) = _Q6;
  *(v2 + 288) = 0x4028000000000000;
  *(v2 + 296) = a1;
  *(v2 + 304) = a1;
  *(v2 + 312) = 1;
  *(v2 + 320) = result;
  *(v2 + 328) = v4;
  *(v2 + 336) = v5;
  *(v2 + 344) = v6;
  *(v2 + 352) = xmmword_24F976080;
  *(v2 + 368) = v7;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x4010000000000000;
  *(v2 + 416) = xmmword_24F9DEA70;
  *(v2 + 432) = _Q6;
  *(v2 + 448) = 0x4028000000000000;
  *(v2 + 456) = a1;
  *(v2 + 464) = a1;
  *(v2 + 472) = 1;
  *(v2 + 480) = result;
  *(v2 + 488) = v4;
  *(v2 + 496) = v5;
  *(v2 + 504) = v6;
  *(v2 + 512) = xmmword_24F976070;
  *(v2 + 528) = v7;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0x4014000000000000;
  __asm { FMOV            V6.2D, #20.0 }

  *(v2 + 576) = xmmword_24F97EE70;
  *(v2 + 592) = _Q6;
  *(v2 + 608) = 0x4034000000000000;
  *(v2 + 616) = a1;
  *(v2 + 624) = a1;
  *(v2 + 632) = 1;
  *(v2 + 640) = result;
  *(v2 + 648) = v4;
  *(v2 + 656) = v5;
  *(v2 + 664) = v6;
  *(v2 + 672) = xmmword_24F976060;
  *(v2 + 688) = v7;
  *(v2 + 704) = 0;
  *(v2 + 710) = v18;
  *(v2 + 706) = v17;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0x4018000000000000;
  *(v2 + 736) = xmmword_24F97EE80;
  *(v2 + 752) = _Q6;
  *(v2 + 768) = 0x4034000000000000;
  *(v2 + 776) = a1;
  *(v2 + 784) = a1;
  *(v2 + 792) = 1;
  *(v2 + 796) = *&v16[3];
  *(v2 + 793) = *v16;
  *(v2 + 800) = result;
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  *(v2 + 824) = v6;
  *(v2 + 832) = xmmword_24F976050;
  *(v2 + 848) = v7;
  *(v2 + 864) = 0;
  *(v2 + 870) = v21;
  *(v2 + 866) = v20;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0x401C000000000000;
  *(v2 + 896) = xmmword_24F97EE90;
  *(v2 + 912) = _Q6;
  *(v2 + 928) = 0x4034000000000000;
  *(v2 + 936) = a1;
  *(v2 + 944) = a1;
  *(v2 + 952) = 1;
  *(v2 + 956) = *&v19[3];
  *(v2 + 953) = *v19;
  *(v2 + 960) = result;
  *(v2 + 968) = v4;
  *(v2 + 976) = v5;
  *(v2 + 984) = v6;
  *(v2 + 992) = xmmword_24F976040;
  *(v2 + 1008) = v7;
  *(v2 + 1024) = 0;
  *(v2 + 1030) = v24;
  *(v2 + 1026) = v23;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0x4020000000000000;
  *(v2 + 1056) = xmmword_24F9DEA80;
  *(v2 + 1072) = _Q6;
  *(v2 + 1088) = 0x4034000000000000;
  *(v2 + 1096) = a1;
  *(v2 + 1104) = a1;
  *(v2 + 1112) = 1;
  *(v2 + 1116) = *&v22[3];
  *(v2 + 1113) = *v22;
  *(v2 + 1120) = result;
  *(v2 + 1128) = v4;
  *(v2 + 1136) = v5;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = xmmword_24F976030;
  *(v2 + 1168) = v7;
  *(v2 + 1184) = 0;
  *(v2 + 1190) = v27;
  *(v2 + 1186) = v26;
  *(v2 + 1192) = 0u;
  *(v2 + 1208) = 0x4028000000000000;
  *(v2 + 1216) = xmmword_24F9DEA90;
  *(v2 + 1232) = _Q6;
  *(v2 + 1248) = 0x4034000000000000;
  *(v2 + 1256) = a1;
  *(v2 + 1264) = a1;
  *(v2 + 1272) = 1;
  *(v2 + 1276) = *&v25[3];
  *(v2 + 1273) = *v25;
  *(v2 + 1280) = result;
  *(v2 + 1288) = v4;
  *(v2 + 1296) = v5;
  *(v2 + 1304) = v6;
  return result;
}

uint64_t ShelfSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 24))(&v14, a1, a2, a4, a6, a7, a8);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(v11 + 24))(a3, a5, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24EE0F5B8(&v14);
    return 0;
  }

  return v12;
}

double ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24F2ACCB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Game();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F2ACE48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Game();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for LeaderboardsOverviewPageIntent()
{
  result = qword_27F23DE48;
  if (!qword_27F23DE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F2ACFFC()
{
  sub_24E7EC9EC(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Game();
    if (v1 <= 0x3F)
    {
      sub_24E7EC9EC(319, &qword_27F214988, type metadata accessor for Player);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F2AD0E0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F21D8F8);
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for LeaderboardsOverviewPageIntent();
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Game();
  *(inited + 136) = sub_24E7EDC68(&qword_27F217960, type metadata accessor for Game);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F2ADF80(v2 + v7, v8, type metadata accessor for Game);
  strcpy((inited + 144), "gameDescriptor");
  *(inited + 159) = -18;
  v9 = (v2 + v6[6]);
  v10 = sub_24F2ADFE8();
  v11 = swift_allocObject();
  v12 = *v9;
  v13 = v9[1];
  *(inited + 184) = &type metadata for GameDescriptor;
  *(inited + 192) = v10;
  *(inited + 160) = v11;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v14 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 248) = sub_24E7EDBB4();
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v14, v15, &unk_27F23E1F0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v16 = *(v2 + v6[8]);
  v17 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v17;
  *(inited + 272) = v16;
  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F2AD3BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2ADE24();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  type metadata accessor for Page.Background(0);
  sub_24E7EDC68(&qword_27F21D920, type metadata accessor for Page.Background);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardsOverviewPageIntent();
    LOBYTE(v14) = 1;
    type metadata accessor for Game();
    sub_24E7EDC68(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_24F2ADF2C();
    sub_24F92CD48();
    LOBYTE(v14) = 3;
    type metadata accessor for Player(0);
    sub_24E7EDC68(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F2AD6A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - v4;
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v25 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE58);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v25 - v10;
  v12 = type metadata accessor for LeaderboardsOverviewPageIntent();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2ADE24();
  v30 = v11;
  v15 = v32;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  type metadata accessor for Page.Background(0);
  LOBYTE(v33) = 0;
  sub_24E7EDC68(&qword_27F21D930, type metadata accessor for Page.Background);
  v17 = v28;
  sub_24F92CC18();
  sub_24E6009C8(v17, v14, &qword_27F21D8F8);
  LOBYTE(v33) = 1;
  sub_24E7EDC68(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  v18 = v12;
  sub_24E636644(v7, v16 + *(v12 + 20));
  v35 = 2;
  sub_24F2ADE78();
  sub_24F92CC68();
  v19 = (v16 + *(v12 + 24));
  v20 = v34;
  *v19 = v33;
  v19[1] = v20;
  type metadata accessor for Player(0);
  LOBYTE(v33) = 3;
  sub_24E7EDC68(&qword_27F213E38, type metadata accessor for Player);
  v21 = v27;
  sub_24F92CC18();
  v22 = v29;
  sub_24E6009C8(v21, v16 + *(v18 + 28), &unk_27F23E1F0);
  LOBYTE(v33) = 4;
  v23 = sub_24F92CC38();
  (*(v22 + 8))(v30, v31);
  *(v16 + *(v18 + 32)) = v23 & 1;
  sub_24F2ADF80(v16, v26, type metadata accessor for LeaderboardsOverviewPageIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F2ADECC(v16, type metadata accessor for LeaderboardsOverviewPageIntent);
}

uint64_t sub_24F2ADC78()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x63736544656D6167;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
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

uint64_t sub_24F2ADD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F2AE164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F2ADD44(uint64_t a1)
{
  v2 = sub_24F2ADE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2ADD80(uint64_t a1)
{
  v2 = sub_24F2ADE24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F2ADE24()
{
  result = qword_27F23DE60;
  if (!qword_27F23DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE60);
  }

  return result;
}

unint64_t sub_24F2ADE78()
{
  result = qword_27F23DE68;
  if (!qword_27F23DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE68);
  }

  return result;
}

uint64_t sub_24F2ADECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F2ADF2C()
{
  result = qword_27F23DE78;
  if (!qword_27F23DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE78);
  }

  return result;
}

uint64_t sub_24F2ADF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F2ADFE8()
{
  result = qword_27F23DE80;
  if (!qword_27F23DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE80);
  }

  return result;
}

unint64_t sub_24F2AE060()
{
  result = qword_27F23DE88;
  if (!qword_27F23DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE88);
  }

  return result;
}

unint64_t sub_24F2AE0B8()
{
  result = qword_27F23DE90;
  if (!qword_27F23DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE90);
  }

  return result;
}

unint64_t sub_24F2AE110()
{
  result = qword_27F23DE98[0];
  if (!qword_27F23DE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23DE98);
  }

  return result;
}

uint64_t sub_24F2AE164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63736544656D6167 && a2 == 0xEE00726F74706972 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
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

uint64_t sub_24F2AE328()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24F2AE380()
{
  result = qword_27F23A780;
  if (!qword_27F23A780)
  {
    type metadata accessor for GameCenterDashboardAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A780);
  }

  return result;
}

void sub_24F2AE3D8(void *a1, void *a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_24F928AE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928418();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = sub_24F92AAE8();
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_27F210578;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(&v29 + 1) = sub_24E69A5C4(0, &qword_27F22FC90);
    *&v28 = v16;
    v17 = v16;
    sub_24F9283D8();
    sub_24E857CC8(&v28);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
    sub_24F92A9C8();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v12;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v11, qword_27F39C3C8);
    (*(v18 + 16))(v14, v19, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    if (a2)
    {
      swift_getErrorValue();
      v20 = v26[2];
      v21 = v27;
      *(&v29 + 1) = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v20, v21);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_24F9283E8();
    sub_24E857CC8(&v28);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    (*(v18 + 8))(v14, v11);
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      type metadata accessor for GameCenterDashboardActionImplementation.Error();
      swift_getWitnessTable();
      v23 = swift_allocError();
      *v24 = 0;
    }

    v25 = a2;
    sub_24F92A9A8();
  }
}

void sub_24F2AE9B4(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v4 = sub_24F92A9E8();
  if (a1)
  {
    v5 = a1;
    v6 = [v5 session];
    v7 = [v6 persistentIdentifier];

    v8 = sub_24F92B0D8();
    v10 = v9;

    v11 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    aBlock = sub_24F92B0D8();
    v30 = v13;

    sub_24F92C7F8();
    v14 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v15 = sub_24F92B098();
    v16 = [v14 initWithString_];

    if (v16)
    {

      *(inited + 96) = sub_24E69A5C4(0, qword_27F238A10);
      *(inited + 72) = v16;
      aBlock = sub_24F92B0D8();
      v30 = v17;
      sub_24F92C7F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_24F93A400;
      strcpy((v18 + 32), "invocationType");
      *(v18 + 47) = -18;
      *(v18 + 48) = 0x72616F6268736164;
      *(v18 + 56) = 0xE900000000000064;
      *(v18 + 64) = 0x656449656E656373;
      *(v18 + 72) = 0xEF7265696669746ELL;
      *(v18 + 80) = v8;
      *(v18 + 88) = v10;
      v19 = sub_24E6086DC(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
      swift_arrayDestroy();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      *(inited + 144) = v19;
      sub_24E608210(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470);
      swift_arrayDestroy();
      v20 = sub_24F92AE28();

      v21 = [objc_opt_self() optionsWithDictionary_];

      if (v11)
      {
        v22 = v11;
        v23 = sub_24F92B098();
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = v4;
        v33 = sub_24F2AF000;
        v34 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v30 = 1107296256;
        v31 = sub_24E6251C8;
        v32 = &block_descriptor_136;
        v25 = _Block_copy(&aBlock);

        [v22 openApplication:v23 withOptions:v21 completion:v25];

        _Block_release(v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    type metadata accessor for GameCenterDashboardActionImplementation.Error();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 1;
    sub_24F92A9A8();
  }
}

uint64_t sub_24F2AEFC8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static AppleAccountBranding.localizedString(_:)(uint64_t a1, void *a2)
{
  v4 = sub_24F91FE58();
  v12 = v4;
  v13 = sub_24F17D9D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11._countAndFlagsBits);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v4);
  LOBYTE(v4) = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(&v11);
  if (v4)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;

    MEMORY[0x253050C20](0x444E41524245525FLL, 0xE800000000000000);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v11, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }
}

int *ArcadePageIntent.init(url:isSubscribed:isTrialAvailable:isTrialEnrolled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24F91F4A8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ArcadePageIntent();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for ArcadePageIntent()
{
  result = qword_27F23DFB0;
  if (!qword_27F23DFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

JSValue __swiftcall ArcadePageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result.super.isa;
  v9 = sub_24F91F398();
  v7 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v9, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24F92C328();
  v8 = type metadata accessor for ArcadePageIntent();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[5]) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_24F92C328();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[6]) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[7]) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_24F92C328();

    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_24F2AF538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2AF598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F2AF678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F4A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24F2AF730()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TopChartsPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TopChartsPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

JSValue __swiftcall TopChartsPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    v4 = result.super.isa;
    v7 = sub_24F91F398();
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for TopChartsPageIntent()
{
  result = qword_27F23DFD0;
  if (!qword_27F23DFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2AFAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2AFB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F2AFB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t ImpressionIdScrollObserver.__allocating_init(_:impressionID:collectionView:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v8 = sub_24F929598();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t ImpressionIdScrollObserver.init(_:impressionID:collectionView:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  v7 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v8 = sub_24F929598();
  (*(*(v8 - 8) + 32))(v3 + v7, a2, v8);
  swift_unknownObjectWeakAssign();

  return v3;
}

void ImpressionIdScrollObserver.didScroll(orthogonalScrollView:in:)(void *a1, uint64_t a2)
{
  v5 = sub_24F91F968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = Strong, v11 = [Strong collectionViewLayout], v10, !v11))
  {
    [a1 contentOffset];
    v16 = v18;
    v17 = [a1 contentSize];
    if (!*(v2 + 16))
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = v2;
  v13 = *(a2 + *(type metadata accessor for ShelfLayoutContext() + 20));
  v14 = [v11 _orthogonalScrollingSections];
  sub_24F91F8D8();

  LOBYTE(v14) = sub_24F91F918();
  (*(v6 + 8))(v8, v5);
  if ((v14 & 1) == 0)
  {

    return;
  }

  [v11 _layoutFrameForSection_];
  [v11 _offsetForOrthogonalScrollingSection_];
  v16 = v15;

  if (*(v12 + 16))
  {
LABEL_7:
    v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
    *&v24[-48] = v16;
    *&v24[-40] = 0;
    *&v24[-32] = v19;
    *&v24[-24] = v20;
    *&v24[-16] = v22;
    *&v24[-8] = v21;
    sub_24EB0B828(sub_24EB0E868, &v24[-64], v23);
  }
}

uint64_t ImpressionIdScrollObserver.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v2 = sub_24F929598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_collectionView);
  return v0;
}

uint64_t ImpressionIdScrollObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v2 = sub_24F929598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_collectionView);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionIdScrollObserver()
{
  result = qword_27F23DFE8;
  if (!qword_27F23DFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2B0148()
{
  result = sub_24F929598();
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

uint64_t TransparentButton.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for TransparentButton();

  a3(v5);
}

uint64_t sub_24F2B02D4(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_24F2B10CC;
  a2[1] = v5;
  return result;
}

uint64_t TransparentButton.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransparentButton.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransparentButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_24F9241F8();
  v33 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &OpaqueTypeMetadata2 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_24F926FC8();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &OpaqueTypeMetadata2 - v9;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  v31 = sub_24E8EB434();
  v47 = v8;
  v48 = v4;
  v49 = WitnessTable;
  v50 = v31;
  v35 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &OpaqueTypeMetadata2 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
  v14 = sub_24F924038();
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &OpaqueTypeMetadata2 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v34 = &OpaqueTypeMetadata2 - v18;
  v42 = v6;
  v43 = v7;
  v44 = v2;

  sub_24F926F88();
  v19 = v38;
  sub_24F9241E8();
  v21 = v32;
  v20 = v33;
  v22 = v31;
  sub_24F926178();
  (*(v40 + 8))(v19, v20);
  (*(v39 + 8))(v10, v8);
  v47 = v8;
  v48 = v20;
  v49 = v21;
  v50 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F115AD8();
  v24 = OpaqueTypeMetadata2;
  sub_24F926268();
  (*(v36 + 8))(v13, v24);
  v25 = sub_24F2B09EC();
  v45 = OpaqueTypeConformance2;
  v46 = v25;
  v26 = swift_getWitnessTable();
  v27 = v34;
  sub_24E7896B8(v16, v14, v26);
  v28 = *(v37 + 8);
  v28(v16, v14);
  sub_24E7896B8(v27, v14, v26);
  return (v28)(v27, v14);
}

uint64_t sub_24F2B08E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransparentButton();
  sub_24E7896B8(a1 + *(v9 + 36), a2, a3);
  sub_24E7896B8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_24F2B09EC()
{
  result = qword_27F212A60;
  if (!qword_27F212A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212A60);
  }

  return result;
}

uint64_t sub_24F2B0A98@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24E972460;
  a2[1] = v5;
}

__n128 sub_24F2B0B14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_24F2B0B20()
{
  result = sub_24E6C5550();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F2B0BA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24F2B0D2C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_24F2B0F7C()
{
  sub_24F926FC8();
  sub_24F9241F8();
  swift_getWitnessTable();
  sub_24E8EB434();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F2B09EC();
  return swift_getWitnessTable();
}

uint64_t sub_24F2B1094()
{

  return swift_deallocObject();
}

uint64_t sub_24F2B110C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for BreakoutDetails.Badge(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_24F9234D8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = _s9ViewModelVMa();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_24F2B12E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for BreakoutDetails.Badge(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_24F9234D8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = _s9ViewModelVMa();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for LargeBreakoutOverlayViewModel()
{
  result = qword_27F23E078;
  if (!qword_27F23E078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F2B14EC()
{
  type metadata accessor for BreakoutDetails.Badge(319);
  if (v0 <= 0x3F)
  {
    sub_24E658094();
    if (v1 <= 0x3F)
    {
      sub_24F9234D8();
      if (v2 <= 0x3F)
      {
        _s9ViewModelVMa();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t SearchEntity.rawValue.getter()
{
  v1 = 0x65706F6C65766564;
  v2 = 0x656461637261;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x79726F7473;
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

GameStoreKit::SearchEntity_optional __swiftcall SearchEntity.init(rawValue:)(Swift::String rawValue)
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

void SearchEntity.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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

  v7 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24F2B171C()
{
  result = qword_27F23E088;
  if (!qword_27F23E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E088);
  }

  return result;
}

uint64_t sub_24F2B1770()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2B1828()
{
  sub_24F92B218();
}

uint64_t sub_24F2B18CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2B198C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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

void sub_24F2B1AB0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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

  v7 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v2;
}

uint64_t PrivacyHeaderLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyHeaderLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t PrivacyHeaderLayout.Metrics.actionButtonLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t PrivacyHeaderLayout.Metrics.bodyOnlyBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t PrivacyHeaderLayout.Metrics.init(bodyTopSpace:bodyBottomSpace:supplementaryItemsTopSpace:supplementaryItemsPadding:supplementaryItemsBottomSpace:actionButtonLeadingMargin:bodyOnlyBottomMargin:maxTextWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = a9 + 280;
  *(a9 + 312) = 0;
  *(a9 + 280) = 0u;
  *(a9 + 296) = 0u;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  sub_24E612C80(a7, a9 + 240);

  return sub_24EA63A70(a8, v17);
}

__n128 PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)@<Q0>(void *__src@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  memcpy(a8, __src, 0x140uLL);
  *(a8 + 320) = a2;
  sub_24E612C80(a3, a8 + 328);
  *(a8 + 368) = a4;
  v15 = *(a5 + 16);
  *(a8 + 376) = *a5;
  *(a8 + 392) = v15;
  *(a8 + 408) = *(a5 + 32);
  result = *a6;
  v17 = *(a6 + 16);
  *(a8 + 416) = *a6;
  *(a8 + 432) = v17;
  *(a8 + 448) = *(a6 + 32);
  *(a8 + 456) = a7;
  return result;
}

double static PrivacyHeaderLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_24F9225E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_24F922618();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x277D22788], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, v18);
  v12 = sub_24F9229A8();
  v13 = MEMORY[0x277D228E0];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t PrivacyHeaderLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8 = v7;
  v22 = *(v4 + 8);
  v22(v6, v3);
  v9 = *(v1 + 456);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    v12 = 0.0;
    v13 = a1;
    do
    {
      sub_24E615E00(v11, &v23);
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      sub_24F922288();
      v15 = v14;
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(&v23);
      v13 = v13 - v15 - v8;
      if (v12 <= v17)
      {
        v12 = v17;
      }

      v11 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = a1;
  }

  sub_24E60169C(v1 + 280, &v23, &qword_27F22F780);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(&v23, v24);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v19 = v18;
    v20 = v22;
    v22(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    if (v19 < v13)
    {
      v13 = v19;
    }
  }

  else
  {
    sub_24E601704(&v23, &qword_27F22F780);
    v20 = v22;
  }

  sub_24F2B2714(&v23);
  _VerticalFlowLayout.measurements(fitting:in:)(v13);

  if ((*(v1 + 320) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 240), *(v1 + 264));
    sub_24E8ED7D8();
    sub_24F9223A8();
    return v20(v6, v3);
  }

  return result;
}

uint64_t sub_24F2B2714@<X0>(uint64_t a1@<X8>)
{
  v75 = 0;
  LODWORD(v3) = *(v1 + 320);
  if (v3 == 1)
  {
    sub_24E60169C(v1 + 376, &v67, &qword_27F229780);
    if (*(&v68 + 1))
    {
      sub_24E612C80(&v67, &v54);
      *(&v58 + 1) = MEMORY[0x277D839F8];
      *&v59 = MEMORY[0x277D22A30];
      *&v57 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
      sub_24E615E00(&v54, &v67);
      sub_24E615E00(&v57, v70);
      WORD4(v69) = 1;
      v74 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_24E9D682C(&v67, &v57);
      v4 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_24E617A24((v5 > 1), v6 + 1, 1, v4);
      }

      sub_24E9D6888(&v67);
      __swift_destroy_boxed_opaque_existential_1(&v54);
      *(v4 + 2) = v6 + 1;
      v7 = &v4[136 * v6];
      *(v7 + 2) = v57;
      v8 = v58;
      v9 = v59;
      v10 = v61;
      *(v7 + 5) = v60;
      *(v7 + 6) = v10;
      *(v7 + 3) = v8;
      *(v7 + 4) = v9;
      v11 = v62;
      v12 = v63;
      v13 = v64;
      *(v7 + 20) = v65;
      *(v7 + 8) = v12;
      *(v7 + 9) = v13;
      *(v7 + 7) = v11;
    }

    else
    {
      sub_24E601704(&v67, &qword_27F229780);
      v4 = MEMORY[0x277D84F90];
    }

    sub_24E615E00(v1 + 328, &v57);
    sub_24E615E00(v1, &v54);
    sub_24E615E00(v1 + 40, v66);
  }

  else
  {
    sub_24E615E00(v1 + 328, &v57);
    *(&v55 + 1) = MEMORY[0x277D839F8];
    *&v56 = MEMORY[0x277D22A30];
    *&v54 = 0;
    v66[3] = MEMORY[0x277D839F8];
    v66[4] = MEMORY[0x277D22A30];
    v66[0] = 0;
    v4 = MEMORY[0x277D84F90];
  }

  sub_24E612C80(&v57, &v67);
  sub_24E615E00(&v54, v70);
  sub_24E60169C(v66, &v71, &qword_27F22F780);
  WORD4(v69) = 0;
  v74 = 8;
  sub_24E601704(v66, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  sub_24E9D682C(&v67, &v57);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v4 = sub_24E617A24(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_24E617A24((v14 > 1), v15 + 1, 1, v4);
  }

  result = sub_24E9D6888(&v67);
  *(v4 + 2) = v15 + 1;
  v17 = &v4[136 * v15];
  v18 = v61;
  v20 = v58;
  v19 = v59;
  *(v17 + 5) = v60;
  *(v17 + 6) = v18;
  *(v17 + 3) = v20;
  *(v17 + 4) = v19;
  v22 = v63;
  v21 = v64;
  v23 = v62;
  *(v17 + 20) = v65;
  *(v17 + 8) = v22;
  *(v17 + 9) = v21;
  *(v17 + 7) = v23;
  *(v17 + 2) = v57;
  if (v3)
  {
    sub_24E60169C(v1 + 416, &v67, &qword_27F229780);
    v50 = a1;
    if (*(&v68 + 1))
    {
      sub_24E612C80(&v67, &v54);
      *(&v58 + 1) = MEMORY[0x277D839F8];
      *&v59 = MEMORY[0x277D22A30];
      *&v57 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
      sub_24E615E00(&v54, &v67);
      sub_24E615E00(&v57, v70);
      WORD4(v69) = 1;
      v74 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_24E9D682C(&v67, &v57);
      v25 = *(v4 + 2);
      v24 = *(v4 + 3);
      if (v25 >= v24 >> 1)
      {
        v4 = sub_24E617A24((v24 > 1), v25 + 1, 1, v4);
      }

      sub_24E9D6888(&v67);
      result = __swift_destroy_boxed_opaque_existential_1(&v54);
      *(v4 + 2) = v25 + 1;
      v26 = &v4[136 * v25];
      *(v26 + 2) = v57;
      v27 = v58;
      v28 = v59;
      v29 = v61;
      *(v26 + 5) = v60;
      *(v26 + 6) = v29;
      *(v26 + 3) = v27;
      *(v26 + 4) = v28;
      v30 = v62;
      v31 = v63;
      v32 = v64;
      *(v26 + 20) = v65;
      *(v26 + 8) = v31;
      *(v26 + 9) = v32;
      *(v26 + 7) = v30;
    }

    else
    {
      result = sub_24E601704(&v67, &qword_27F229780);
    }

    v33 = 0;
    v34 = *(v1 + 368);
    v35 = *(v34 + 16);
    a1 = 136;
    while (1)
    {
      v36 = 0uLL;
      v3 = v35;
      v37 = 0uLL;
      v38 = 0uLL;
      if (v33 != v35)
      {
        if (v33 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v3 = v33 + 1;
        *&v67 = v33;
        result = sub_24E615E00(v34 + 32 + 40 * v33, &v67 + 8);
        v36 = v67;
        v37 = v68;
        v38 = v69;
      }

      v54 = v36;
      v55 = v37;
      v56 = v38;
      if (!v38)
      {
        a1 = v50;
        break;
      }

      v51 = v36;
      sub_24E612C80((&v54 + 8), v66);
      v39 = *(v34 + 16);
      if (v51)
      {
        *(&v58 + 1) = sub_24F922418();
        *&v59 = MEMORY[0x277D226F0];
        __swift_allocate_boxed_opaque_existential_1(&v57);
        sub_24F922408();
      }

      else
      {
        sub_24E615E00(v1 + 80, &v57);
      }

      v40 = 120;
      if (v51 == v39 - 1)
      {
        v40 = 160;
      }

      sub_24E615E00(v1 + v40, v52);
      sub_24E615E00(v66, &v67);
      sub_24E615E00(&v57, v70);
      v71 = v52[0];
      v72 = v52[1];
      v73 = v53;
      WORD4(v69) = 1;
      v74 = 3;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_24E9D682C(&v67, &v57);
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_24E617A24((v41 > 1), v42 + 1, 1, v4);
      }

      sub_24E9D6888(&v67);
      result = __swift_destroy_boxed_opaque_existential_1(v66);
      *(v4 + 2) = v42 + 1;
      v43 = &v4[136 * v42];
      *(v43 + 2) = v57;
      v44 = v58;
      v45 = v59;
      v46 = v61;
      *(v43 + 5) = v60;
      *(v43 + 6) = v46;
      *(v43 + 3) = v44;
      *(v43 + 4) = v45;
      v47 = v62;
      v48 = v63;
      v49 = v64;
      *(v43 + 20) = v65;
      *(v43 + 8) = v48;
      *(v43 + 9) = v49;
      *(v43 + 7) = v47;
      v33 = v3;
    }
  }

  *a1 = v75;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PrivacyHeaderLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v40 = a1;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v5 + 25, v5[28]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v15 = v14;
  v39 = *(v11 + 8);
  v39(v13, v10);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  v45.size.width = a4;
  v45.size.height = a5;
  MaxX = CGRectGetMaxX(v45);
  v17 = v5[57];
  v18 = *(v17 + 16);
  v41.origin.x = a2;
  v41.origin.y = a3;
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_24E615E00(v19, &v43);
      __swift_project_boxed_opaque_existential_1(&v43, v44);
      width = v41.size.width;
      height = v41.size.height;
      sub_24F922288();
      v42 = v22;
      v24 = MaxX - v23;
      v46.origin.x = v41.origin.x;
      v46.origin.y = v41.origin.y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectGetMinY(v46);
      __swift_project_boxed_opaque_existential_1(&v43, v44);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(&v43);
      MaxX = v24 - v15;
      v19 += 40;
      --v18;
    }

    while (v18);
  }

  x = v41.origin.x;
  y = v41.origin.y;
  v28 = v41.size.width;
  v27 = v41.size.height;
  CGRectGetMaxX(v41);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = v28;
  v47.size.height = v27;
  CGRectGetWidth(v47);
  sub_24E60169C((v5 + 35), &v43, &qword_27F22F780);
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v39(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v28 = v41.size.width;
    v27 = v41.size.height;
  }

  else
  {
    sub_24E601704(&v43, &qword_27F22F780);
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = v28;
  v48.size.height = v27;
  CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = v28;
  v49.size.height = v27;
  CGRectGetMinY(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v28;
  v50.size.height = v27;
  CGRectGetHeight(v50);
  sub_24F92C1D8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_24F2B2714(&v43);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v40, v30, v32, v34, v36);
}

uint64_t sub_24F2B317C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_24F2B31C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
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
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2B3294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_24F2B32DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24F2B3380()
{
  result = [objc_allocWithZone(type metadata accessor for HostProcessIdentifier()) init];
  qword_27F23E090 = result;
  return result;
}

id HostProcessIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24F2B342C()
{
  result = sub_24F92B098();
  qword_27F23E098 = result;
  return result;
}

void sub_24F2B34AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F928418();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_27F2110A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F23E0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v11 = MEMORY[0x277D837D0];
  v9 = a1;
  v10 = a2;

  sub_24F9283E8();
  sub_24E857CC8(&v9);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v7 = (v2 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;

  v8 = [objc_opt_self() defaultCenter];
  if (qword_27F211098 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_27F23E098 object:0 userInfo:0];
}

uint64_t sub_24F2B37D8()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24F2B38AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24F2B390C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24F2B39D8()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v2 = v1[1];
  if (v2)
  {
    if (*v1 == 0xD000000000000016 && v2 == 0x800000024FA583C0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_24F92CE08();
    }
  }

  else
  {
    if (qword_27F2110A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F23E0A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_24F2B3B90()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23E0A0);
  __swift_project_value_buffer(v4, qword_27F23E0A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id HostProcessIdentifier.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId];
  v2 = type metadata accessor for HostProcessIdentifier();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id HostProcessIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostProcessIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F2B3DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

JSValue __swiftcall ShelvesIntent.makeValue(in:)(JSContext in)
{
  v46 = sub_24F91F4A8();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v38 = objc_opt_self();
  isa = in.super.isa;
  result.super.isa = [v38 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220690);
  v8 = sub_24F92CB28();
  v9 = v8;
  v10 = v5 + 64;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v44 = v3;
  v41 = v3 + 8;
  v42 = v3 + 16;
  v40 = v8 + 64;
  result.super.isa = v7;
  v37 = result.super.isa;
  v15 = 0;
  v43 = v9;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_11:
      v19 = v16 | (v15 << 6);
      sub_24E65864C(*(v5 + 48) + 40 * v19, v49);
      v20 = v5;
      v21 = *(v5 + 56);
      v23 = v44;
      v22 = v45;
      v24 = v46;
      (*(v44 + 16))(v45, v21 + *(v44 + 72) * v19, v46);
      v48 = sub_24F91F398();
      v26 = v25;
      result.super.isa = (*(v23 + 8))(v22, v24);
      *(v40 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v9 = v43;
      v27 = *(v43 + 48) + 40 * v19;
      v28 = v49[0];
      v29 = v49[1];
      *(v27 + 32) = v50;
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = (*(v9 + 56) + 16 * v19);
      *v30 = v48;
      v30[1] = v26;
      v31 = *(v9 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v9 + 16) = v33;
      v5 = v20;
      v13 = v47;
      if (!v47)
      {
        goto LABEL_6;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_6:
  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v15 >= v14)
    {
      break;
    }

    v18 = *(v10 + 8 * v15);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  *&v49[0] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E0C0);
  v34 = [v38 valueWithObject:sub_24F92CF68() inContext:isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v34)
  {
    goto LABEL_19;
  }

  v35 = v37;
  sub_24F92C328();

  return v35;
}

unint64_t sub_24F2B4308()
{
  result = qword_27F23E0C8;
  if (!qword_27F23E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E0C8);
  }

  return result;
}

unint64_t sub_24F2B4364()
{
  result = qword_27F23E0D0;
  if (!qword_27F23E0D0)
  {
    type metadata accessor for ShelfBatch();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E0D0);
  }

  return result;
}

uint64_t FlowPreviewActionsConfiguration.__allocating_init(actions:offerDisplayProperties:offerActionIndex:destructiveActionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;
  swift_beginAccess();
  *(v12 + 48) = a5;
  *(v12 + 56) = a6 & 1;
  return v12;
}

uint64_t FlowPreviewActionsConfiguration.actions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t FlowPreviewActionsConfiguration.destructiveActionIndex.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t FlowPreviewActionsConfiguration.init(actions:offerDisplayProperties:offerActionIndex:destructiveActionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4 & 1;
  swift_beginAccess();
  *(v6 + 48) = a5;
  *(v6 + 56) = a6 & 1;
  return v6;
}

uint64_t FlowPreviewActionsConfiguration.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowPreviewActionsConfiguration.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t FlowPreviewActionsConfiguration.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = a2;
  v46 = sub_24F9285B8();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_24F92AC28();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  *(v2 + 48) = 0;
  v38 = v2 + 48;
  *(v2 + 56) = 1;
  sub_24F928398();
  sub_24F9282B8();
  v18 = *(v8 + 8);
  v42 = v7;
  v40 = v8 + 8;
  v37 = v18;
  v18(v13, v7);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_24E8F2EE8(v6);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v15 + 32))(v17, v6, v14);
    v20 = type metadata accessor for Action();
    MEMORY[0x28223BE20](v20);
    v21 = v48;
    *(&v36 - 2) = v22;
    *(&v36 - 1) = v21;
    v23 = v44;
    v19 = sub_24F92ABB8();
    v44 = v23;
    (*(v15 + 8))(v17, v14);
  }

  v24 = v41;
  *(v41 + 16) = v19;
  type metadata accessor for OfferDisplayProperties();
  v25 = v45;
  sub_24F928398();
  v26 = v43;
  (*(v43 + 16))(v39, v48, v46);
  sub_24F2B4BF8();
  sub_24F929548();
  *(v24 + 24) = v47;
  sub_24F928398();
  v27 = sub_24F928258();
  v29 = v28;
  v30 = v42;
  v31 = v37;
  v37(v10, v42);
  *(v24 + 32) = v27;
  *(v24 + 40) = v29 & 1;
  sub_24F928398();
  v32 = sub_24F928258();
  v34 = v33;
  v31(v25, v30);
  v31(v10, v30);
  (*(v26 + 8))(v48, v46);
  swift_beginAccess();
  *(v24 + 48) = v32;
  *(v24 + 56) = v34 & 1;
  return v24;
}

unint64_t sub_24F2B4BF8()
{
  result = qword_27F225B10;
  if (!qword_27F225B10)
  {
    type metadata accessor for OfferDisplayProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B10);
  }

  return result;
}

uint64_t FlowPreviewActionsConfiguration.deinit()
{

  return v0;
}

uint64_t FlowPreviewActionsConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F2B4CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = FlowPreviewActionsConfiguration.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Resize.init(_:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v27 = a1;
  v28 = a2;
  v7 = sub_24F922AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_24E615E00(a1, v29);
  v20 = MEMORY[0x277D85048];
  v21 = MEMORY[0x277D225F8];
  *(v19 + 3) = MEMORY[0x277D85048];
  *(v19 + 4) = v21;
  *v19 = a3;
  v22 = *MEMORY[0x277D22980];
  v23 = *(v8 + 104);
  v23(v19, v22, v7);
  *(v16 + 3) = v20;
  *(v16 + 4) = v21;
  *v16 = a4;
  v23(v16, v22, v7);
  v24 = *MEMORY[0x277D22988];
  v23(v13, v24, v7);
  v23(v10, v24, v7);
  sub_24F922AF8();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t ImpressionsScrollObserver.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = sub_24E611020(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ImpressionsScrollObserver.init(_:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 32) = sub_24E611020(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  return v1;
}

void ImpressionsScrollObserver.collectionView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ImpressionsScrollObserver.collectionView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24F2B5150;
}

void sub_24F2B5150(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall ImpressionsScrollObserver.didScroll(in:)(UIScrollView *in)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 && ([(UIScrollView *)in safeAreaInsets], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v13 = v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets, swift_beginAccess(), *v13 = v6, *(v13 + 8) = v8, *(v13 + 16) = v10, *(v13 + 24) = v12, *(v13 + 32) = 0, [(UIScrollView *)in bounds], v14 = *(v3 + 16), v15 = *(v14 + 16), v16 = v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets, swift_beginAccess(), v15))
  {
    v17 = 0;
    v18 = (v14 + 40);
    while (v17 < *(v14 + 16))
    {
      if (*v18 != 1 || (*(v16 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_24F92C208();
      }

      ++v17;
      sub_24F929B08();

      v18 += 16;
      if (v15 == v17)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    swift_beginAccess();
    v19 = 0;
    v20 = *(v2 + 32);
    v23 = *(v20 + 64);
    v21 = v20 + 64;
    v22 = v23;
    v24 = 1 << *(v21 - 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_13:
      v26 &= v26 - 1;
    }

    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v27)
      {
        return;
      }

      v26 = *(v21 + 8 * v28);
      ++v19;
      if (v26)
      {
        v19 = v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t ImpressionsScrollObserver.didScroll(orthogonalScrollView:in:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A8D8);
  MEMORY[0x28223BE20](v66);
  v67 = &v54[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v68 = &v54[-v9];
  MEMORY[0x28223BE20](v10);
  v69 = &v54[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54[-v13];
  v15 = sub_24F929598();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v54[-v22];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v24 = sub_24F929608();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    return sub_24E601704(v14, &qword_27F213E68);
  }

  sub_24F9295B8();
  (*(v25 + 8))(v14, v24);
  v27 = v16[4];
  v70 = v23;
  v59 = v27;
  v60 = v16 + 4;
  v27(v23, v20, v15);
  v28 = *(a2 + *(type metadata accessor for ShelfLayoutContext() + 20));
  swift_beginAccess();
  v29 = *(v2 + 32);
  v30 = *(v29 + 16);
  v31 = v16;
  v61 = a2;
  v57 = v28;
  v58 = v3;
  if (v30 && (v32 = sub_24E7728CC(v28), (v33 & 1) != 0))
  {
    v34 = *(*(v29 + 56) + 8 * v32);

    swift_endAccess();
    v36 = v67;
    v35 = v68;
    if (v34)
    {
      v37 = v31[2];
      v62 = v34;
      v38 = v34 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
      v39 = v69;
      v37(v69, v38, v15);
      v40 = v31[7];
      v40(v39, 0, 1, v15);
      v55 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    swift_endAccess();
    v36 = v67;
    v35 = v68;
  }

  v40 = v31[7];
  v55 = 1;
  v39 = v69;
  v40(v69, 1, 1, v15);
  v62 = 0;
  v37 = v31[2];
LABEL_9:
  v56 = v37;
  v37(v35, v70, v15);
  v40(v35, 0, 1, v15);
  v41 = *(v66 + 48);
  sub_24EE32C14(v39, v36);
  sub_24EE32C14(v35, v36 + v41);
  v67 = v31;
  v42 = v31[6];
  if (v42(v36, 1, v15) == 1)
  {
    sub_24E601704(v35, &qword_27F228618);
    sub_24E601704(v39, &qword_27F228618);
    if (v42(v36 + v41, 1, v15) == 1)
    {
      sub_24E601704(v36, &qword_27F228618);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v43 = v63;
  sub_24EE32C14(v36, v63);
  if (v42(v36 + v41, 1, v15) == 1)
  {
    sub_24E601704(v68, &qword_27F228618);
    sub_24E601704(v69, &qword_27F228618);
    (*(v67 + 1))(v43, v15);
LABEL_14:
    sub_24E601704(v36, &qword_27F22A8D8);
    v44 = v59;
LABEL_15:
    v45 = v58;
    v46 = *(v58 + 16);
    v47 = v65;
    v56(v65, v70, v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    type metadata accessor for ImpressionIdScrollObserver();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v49 + 16) = v46;
    v44(v49 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID, v47, v15);
    swift_unknownObjectWeakAssign();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v45 + 32);
    *(v45 + 32) = 0x8000000000000000;
    sub_24E8206C4(v49, v57, isUniquelyReferenced_nonNull_native);
    *(v45 + 32) = v71;
    swift_endAccess();
LABEL_18:
    ImpressionIdScrollObserver.didScroll(orthogonalScrollView:in:)(v64, v61);

    return (*(v67 + 1))(v70, v15);
  }

  v51 = v65;
  v44 = v59;
  v59(v65, (v36 + v41), v15);
  sub_24F2B5C80();
  v52 = sub_24F92AFF8();
  v53 = *(v67 + 1);
  v53(v51, v15);
  sub_24E601704(v68, &qword_27F228618);
  sub_24E601704(v69, &qword_27F228618);
  v53(v63, v15);
  sub_24E601704(v36, &qword_27F228618);
  if ((v52 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ((v55 & 1) == 0)
  {
    goto LABEL_18;
  }

  return (*(v67 + 1))(v70, v15);
}

uint64_t ImpressionsScrollObserver.deinit()
{

  MEMORY[0x2530543E0](v0 + 24);

  return v0;
}

uint64_t ImpressionsScrollObserver.__deallocating_deinit()
{

  MEMORY[0x2530543E0](v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_24F2B5C80()
{
  result = qword_27F21BCF0;
  if (!qword_27F21BCF0)
  {
    sub_24F929598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BCF0);
  }

  return result;
}

uint64_t sub_24F2B5CD8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_24F2B5DC0(uint64_t result, uint64_t a2)
{
  v3 = v2;
  if ((*(v2 + qword_27F39C790) & 1) == 0)
  {
    v4 = *(v2 + qword_27F22F198);
    if (v4)
    {
      v6 = result;
      v7 = (v4 + *(*v4 + 184));
      swift_beginAccess();
      result = *v7;
      if (*v7 != v6 || v7[1] != a2)
      {
        result = sub_24F92CE08();
        if ((result & 1) == 0)
        {
          *v7 = v6;
          v7[1] = a2;

          v9 = sub_24F2B7534(&qword_27F23CC60, type metadata accessor for SearchChartsAndCategoriesPage);
          v10 = *(v9 + 56);
          v11 = type metadata accessor for SearchChartsAndCategoriesPage();
          v12 = v10(v11, v9);
          v13 = MEMORY[0x277D84F90];
          if (*(v12 + 16))
          {
            v16 = v7;
            v14 = *v7;
            v15 = v16[1];

            v17 = sub_24E7728F0(v14, v15);
            v19 = v18;

            if (v19)
            {
              v20 = *(*(v12 + 56) + 8 * v17);
            }

            else
            {
              v20 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v20 = MEMORY[0x277D84F90];
          }

          v21 = qword_27F22F1A0;
          *(v3 + qword_27F22F1A0) = v20;

          v22 = *(v3 + v21);
          v33 = v13;
          v23 = *(v22 + 16);
          v24 = qword_27F39C780;

          result = swift_beginAccess();
          if (v23)
          {
            v25 = 0;
            v26 = v22 + 32;
            while (1)
            {
              v27 = v26 + 40 * v25;
              v28 = v25;
              while (1)
              {
                if (v28 >= *(v22 + 16))
                {
                  __break(1u);
                  return result;
                }

                sub_24E65864C(v27, &v31);
                if (*(*(v3 + v24) + 16))
                {
                  break;
                }

LABEL_16:
                ++v28;
                result = sub_24E6585F8(&v31);
                v27 += 40;
                if (v23 == v28)
                {
                  goto LABEL_24;
                }
              }

              sub_24E76D934(&v31);
              if ((v29 & 1) == 0)
              {
                break;
              }

              v30 = sub_24E6585F8(&v31);
              MEMORY[0x253050F00](v30);
              if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              v25 = v28 + 1;
              result = sub_24F92B638();
              v13 = v33;
              v26 = v22 + 32;
              if (v23 - 1 == v28)
              {
                goto LABEL_24;
              }
            }

            goto LABEL_16;
          }

LABEL_24:

          v31 = v13;
          v32 = 0;
          sub_24F92AD88();
        }
      }
    }
  }

  return result;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39E1C0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.columnCount.getter()
{
  v1 = v0 + qword_27F39E1C8;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24F2B6B28(a1, a2);

  return v4;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.init(objectGraph:pageUrl:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F2B6B28(a1, a2);

  return v2;
}

uint64_t sub_24F2B6274(void *a1, char a2)
{
  sub_24F2F7418(a1, a2);
  v4 = *(a1 + qword_27F39CEE0);
  v5 = *(a1 + qword_27F39CEE0 + 8);
  v6 = v2 + qword_27F39E1C8;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  v7 = *(a1 + qword_27F39CEE8);
  v8 = qword_27F39E1D0;
  swift_beginAccess();
  *(v2 + v8) = v7;
}

uint64_t sub_24F2B6334(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v50 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v44 - v11, &qword_27F228530);
  swift_beginAccess();
  v13 = v1[3];
  swift_beginAccess();
  v14 = v1[4];
  type metadata accessor for SearchChartsAndCategoriesDiffablePageContentPresenter();
  v15 = swift_allocObject();
  v45 = v12;
  sub_24E60169C(v12, v9, &qword_27F228530);
  v16 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v17 = swift_allocObject();
  v46 = v17;
  sub_24E911D90(v9, v17 + v16);
  *(v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v44 = v6;
  sub_24E60169C(v12, v6, &qword_27F228530);
  sub_24E60169C(v6, v51, &qword_27F228530);
  *(v15 + qword_27F22F198) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v19 = qword_27F39C780;
  v47 = v14;

  swift_retain_n();
  v48 = v13;

  *(v15 + v19) = sub_24E60986C(v18);
  v20 = (v15 + qword_27F22F1A8);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_27F22F1B0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_27F22F1B8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_27F22F1C0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F22F1C8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v15 + qword_27F39C788);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v26 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80);
  swift_allocObject();
  *(v15 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v15 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98);
  swift_allocObject();
  *(v15 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v32 = sub_24F92ADA8();
  sub_24E601704(v44, &qword_27F228530);
  sub_24E601704(v45, &qword_27F228530);
  *(v15 + v31) = v32;
  v33 = qword_27F22F1E0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v35 = *(*(v34 - 8) + 56);
  v35(v15 + v33, 1, 1, v34);
  v36 = v34;
  v37 = v49;
  v35(v15 + qword_27F22F1E8, 1, 1, v36);
  v38 = v51;
  *(v15 + 16) = v50;
  sub_24E911D90(v38, v15 + qword_27F39C7D0);
  v39 = v46;
  *v20 = sub_24F0568D0;
  v20[1] = v39;
  *v22 = 0;
  v22[1] = 0;
  if (v37)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    v41 = sub_24E965688;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  *v21 = v41;
  v21[1] = v40;
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  v42 = v47;
  *(v15 + qword_27F22F1F0) = v48;
  *(v15 + qword_27F39C7D8) = v42;

  return v15;
}

Swift::Void __swiftcall SearchChartsAndCategoriesDiffablePagePresenter.updateTab(for:)(Swift::String a1)
{
  if (*(v1 + qword_27F39CC00))
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E0D8);
    if (swift_dynamicCastClass())
    {

      sub_24F2B5DC0(countAndFlagsBits, object);
    }
  }
}

uint64_t sub_24F2B69FC()
{
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBFE68();

  return v0;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.__deallocating_deinit()
{
  sub_24EBBFE68();

  return swift_deallocClassInstance();
}

uint64_t sub_24F2B6B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v42 = a1;
  v5 = sub_24F92BEE8();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92BE88();
  MEMORY[0x28223BE20](v8);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v40 = &v38 - v11;
  v13 = (v2 + qword_27F39E1C0);
  *v13 = 0;
  v13[1] = 0;
  v14 = v2 + qword_27F39E1C8;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v2 + qword_27F39E1D0) = 0;
  sub_24E60169C(a2, v12, &qword_27F228530);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  *(v2 + qword_27F39CC00) = 0;
  *(v2 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v2 + qword_27F2326C8) = 0;
  v15 = *(*v2 + 640);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC78);
  v17 = *(*(v16 - 8) + 56);
  v17(v2 + v15, 1, 1, v16);
  v18 = *(*v2 + 648);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = *(*v2 + 656);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC68);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v17(v3 + *(*v3 + 664), 1, 1, v16);
  v22 = *(*v2 + 672);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  v24 = *(*v2 + 680);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  v26 = *(*v2 + 688);
  sub_24E74EC40();
  sub_24F927DA8();
  v44 = MEMORY[0x277D84F90];
  sub_24F2B7534(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v38 + 104))(v7, *MEMORY[0x277D85260], v39);
  *(v2 + v26) = sub_24F92BF38();
  sub_24EBD3128(v3 + *(*v3 + 696));
  v27 = (v3 + *(*v3 + 704));
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  v28 = *(*v2 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v2 + v28) = sub_24F92ADA8();
  v29 = *(*v2 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v2 + v29) = sub_24F92ADA8();
  v30 = *(*v2 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v2 + v30) = sub_24F92ADA8();
  *(v2 + *(*v2 + 736)) = 0;
  v31 = (v3 + *(*v3 + 752));
  *v31 = 0;
  v31[1] = 0;
  v32 = v40;
  sub_24E60169C(v40, v2 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v45, v3 + *(*v3 + 744), &qword_27F229490);
  v33 = type metadata accessor for InlineUnifiedMessagePresenter();
  v43.receiver = objc_allocWithZone(v33);
  v43.super_class = v33;
  *(v3 + qword_27F39CC08) = objc_msgSendSuper2(&v43, sel_init);

  v35 = sub_24EBBA1F8(v34, 0, 0, 0);
  v36 = *(*v35 + 1112);

  *(v35 + qword_27F39CC00) = v36(0);

  sub_24EBCAA28(0);

  sub_24E601704(v41, &qword_27F228530);
  sub_24E601704(v45, &qword_27F229490);
  sub_24E601704(v32, &qword_27F228530);
  return v35;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter()
{
  result = qword_27F23E0E0;
  if (!qword_27F23E0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2B73D0()
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

uint64_t sub_24F2B74FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F2B7534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2B759C()
{
  if (*v0)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24F2B75E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F2B76C0(uint64_t a1)
{
  v2 = sub_24F2B796C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2B76FC(uint64_t a1)
{
  v2 = sub_24F2B796C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2B7758@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24F2B7788(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_24F2B7788(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E0F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2B796C();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CC28();
    v10 = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F2B796C()
{
  result = qword_27F23E0F8;
  if (!qword_27F23E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E0F8);
  }

  return result;
}

unint64_t sub_24F2B79D4()
{
  result = qword_27F23E100;
  if (!qword_27F23E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E100);
  }

  return result;
}

unint64_t sub_24F2B7A2C()
{
  result = qword_27F23E108;
  if (!qword_27F23E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E108);
  }

  return result;
}

unint64_t sub_24F2B7A84()
{
  result = qword_27F23E110;
  if (!qword_27F23E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E110);
  }

  return result;
}

void BorderView.borderColor.setter(void *a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    v4 = [a1 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void BorderView.borderWidth.setter(double a1)
{
  v3 = [v1 layer];
  [v3 setBorderWidth_];
}

void BorderView.roundedCorners.setter(char a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 3;
      if ((a1 & 8) == 0)
      {
LABEL_13:
        if ((a1 & 4) != 0 && (v4 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((a1 & 4) != 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = v3;
  [v3 setMaskedCorners_];
}

id BorderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BorderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

id BorderView.borderColor.getter()
{
  v1 = [v0 layer];
  v2 = [v1 borderColor];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

  return v3;
}

void sub_24F2B7F00(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_24F2B7F94(void **a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 layer];
  if (v2)
  {
    v4 = [v2 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void (*BorderView.borderColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_24F2B80E0;
}

void sub_24F2B80E0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v4 = [v2 layer];
    if (v6)
    {
      v5 = [v3 CGColor];
    }

    else
    {
      v5 = 0;
    }

    [v4 setBorderColor_];

    v6 = v3;
  }

  else
  {
    v3 = [v2 layer];
    if (v6)
    {
      v4 = [v6 CGColor];
    }

    else
    {
      v4 = 0;
    }

    [v3 setBorderColor_];
  }
}

double BorderView.borderWidth.getter()
{
  v1 = [v0 layer];
  [v1 borderWidth];
  v3 = v2;

  return v3;
}

void sub_24F2B825C(double *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 layer];
  [v3 setBorderWidth_];
}

void (*BorderView.borderWidth.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 layer];
  [v3 borderWidth];
  v5 = v4;

  *a1 = v5;
  return sub_24F2B8340;
}

void sub_24F2B8340(uint64_t a1)
{
  v1 = *a1;
  v2 = [*(a1 + 8) layer];
  [v2 setBorderWidth_];
}

uint64_t BorderView.roundedCorners.getter()
{
  v1 = [v0 layer];
  v2 = [v1 maskedCorners];

  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      result = 3;
      if ((v2 & 8) == 0)
      {
LABEL_13:
        if ((v2 & 4) != 0 && (result & 4) == 0)
        {
          return result | 4;
        }

        return result;
      }

      goto LABEL_12;
    }

    result = 1;
    if ((v2 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v2 & 2) != 0)
    {
      result = 2;
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    result = 0;
    if ((v2 & 8) != 0)
    {
LABEL_12:
      result |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((v2 & 4) != 0)
  {
    return result | 4;
  }

  return result;
}

void (*BorderView.roundedCorners.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  v4 = [v3 maskedCorners];

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = 2;
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v5 = 0;
    if ((v4 & 8) != 0)
    {
LABEL_12:
      v5 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v4 & 2) == 0)
  {
    v5 = 1;
    if ((v4 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = 3;
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v4 & 4) != 0 && (v5 & 4) == 0)
  {
LABEL_15:
    v5 |= 4uLL;
  }

LABEL_16:
  *a1 = v5;
  return sub_24F2B850C;
}

void sub_24F2B850C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = [a1[1] layer];
  if (a2)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 2;
      if ((v3 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    if ((v3 & 2) != 0)
    {
      v5 = 3;
      if ((v3 & 8) == 0)
      {
LABEL_16:
        if ((v3 & 4) != 0 && (v5 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v5 = 1;
      if ((v3 & 8) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v5 |= 8uLL;
    goto LABEL_16;
  }

  if (v3)
  {
    goto LABEL_10;
  }

  if ((v3 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  if ((v3 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
LABEL_18:
    v5 |= 4uLL;
  }

LABEL_19:
  v6 = v4;
  [v4 setMaskedCorners_];
}