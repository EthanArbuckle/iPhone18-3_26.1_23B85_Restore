uint64_t PrivacyType.init(id:title:detail:artwork:categories:style:clickAction:wantsScrollFocus:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v12 = v11;
  v31 = a6;
  v32 = a7;
  v33 = a11;
  v34 = a2;
  v37 = a10;
  v35 = a9;
  v36 = a3;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a8;
  sub_24E60169C(a1, &v40, &qword_27F235830);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a4;
    v24 = v23;
    (*(v18 + 8))(v20, v17);
    v38 = v22;
    v39 = v24;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v25 = v44;
  *(v12 + 80) = v43;
  *(v12 + 96) = v25;
  *(v12 + 112) = v45;
  sub_24E65E0D4(v33, v12 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics);
  v26 = v36;
  *(v12 + 16) = v34;
  *(v12 + 24) = v26;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v27 = v32;
  *(v12 + 48) = v31;
  *(v12 + 56) = v27;
  *(v12 + 64) = v21;
  *(v12 + 72) = v35;
  *(v12 + 65) = v37 & 1;
  return v12;
}

uint64_t PrivacyType.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v88 = sub_24F91F6B8();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v76 - v11;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v76 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  sub_24F928398();
  v92 = sub_24F928348();
  v30 = v29;
  v33 = *(v13 + 8);
  v32 = v13 + 8;
  v31 = v33;
  v33(v28, v12);
  if (!v30)
  {
    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x656C746974;
LABEL_10:
    v55 = 0xE500000000000000;
    goto LABEL_11;
  }

  v95 = v30;
  sub_24F928398();
  v84 = sub_24F928348();
  v35 = v34;
  v31(v25, v12);
  if (!v35)
  {

    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x6C6961746564;
    v55 = 0xE600000000000000;
LABEL_11:
    v53[1] = v55;
    v53[2] = v97;
    v56 = MEMORY[0x277D22530];
LABEL_12:
    (*(*(v52 - 8) + 104))(v54, *v56, v52);
    swift_willThrow();
    (*(v98 + 8))(v106, v99);
    v31(a1, v12);
    return a1;
  }

  v85 = v35;
  sub_24F928398();
  sub_24F928348();
  v37 = v36;
  v31(v22, v12);
  if (!v37)
  {

    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x656C797473;
    goto LABEL_10;
  }

  v38 = sub_24F92CB88();

  if (v38 >= 3)
  {

    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v54 = v58;
    v59 = MEMORY[0x277D84F90];
    *v58 = 0x656C797473;
    v58[1] = 0xE500000000000000;
    v58[2] = v97;
    v58[3] = v59;
    v56 = MEMORY[0x277D22540];
    goto LABEL_12;
  }

  v82 = v38;
  sub_24F929608();
  sub_24F928398();
  v83 = v12;
  v79 = *(v98 + 16);
  v39 = v90;
  v77 = v31;
  v40 = v106;
  v41 = v99;
  v79(v90, v106, v99);
  sub_24F929548();
  v81 = v32;
  v42 = v94;
  v43 = v40;
  v44 = v79;
  v79(v94, v43, v41);
  type metadata accessor for Artwork();
  sub_24F928398();
  v44(v39, v42, v41);
  sub_24F0D9EC8(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v80 = v105;
  sub_24F928398();
  v44(v39, v42, v41);
  v45 = v83;
  type metadata accessor for PrivacyCategory();
  sub_24F0D9EC8(&qword_27F232A88, type metadata accessor for PrivacyCategory);
  v46 = v77;
  v90 = sub_24F92B698();
  type metadata accessor for Action();
  sub_24F928398();
  v79 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v42);
  v46(v19, v45);
  v47 = v89;
  sub_24F928398();
  v78 = sub_24F928278();
  v46(v47, v45);
  v48 = v91;
  sub_24F928398();
  v49 = sub_24F928348();
  v51 = a1;
  if (v50)
  {
    *&v102 = v49;
    *(&v102 + 1) = v50;
  }

  else
  {
    v60 = v86;
    sub_24F91F6A8();
    v61 = sub_24F91F668();
    v63 = v62;
    (*(v87 + 8))(v60, v88);
    *&v102 = v61;
    *(&v102 + 1) = v63;
  }

  sub_24F92C7F8();
  v64 = v46;
  v46(v48, v45);
  v65 = v93;
  sub_24E60169C(v96, v93, &qword_27F213E68);
  a1 = swift_allocObject();
  sub_24E60169C(&v105, &v102, &qword_27F235830);
  if (*(&v103 + 1))
  {
    v66 = v103;
    *(a1 + 80) = v102;
    *(a1 + 96) = v66;
    *(a1 + 112) = v104;
  }

  else
  {
    v67 = v86;
    sub_24F91F6A8();
    v68 = sub_24F91F668();
    v70 = v69;
    (*(v87 + 8))(v67, v88);
    v100 = v68;
    v101 = v70;
    sub_24F92C7F8();
    sub_24E601704(&v102, &qword_27F235830);
  }

  v71 = v99;
  v72 = *(v98 + 8);
  v72(v106, v99);
  v64(v51, v45);
  sub_24E601704(&v105, &qword_27F235830);
  v72(v94, v71);
  sub_24E601704(v96, &qword_27F213E68);
  sub_24E65E0D4(v65, a1 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics);
  v73 = v95;
  *(a1 + 16) = v92;
  *(a1 + 24) = v73;
  v74 = v85;
  *(a1 + 32) = v84;
  *(a1 + 40) = v74;
  v75 = v90;
  *(a1 + 48) = v80;
  *(a1 + 56) = v75;
  *(a1 + 64) = v82;
  *(a1 + 72) = v79;
  *(a1 + 65) = v78 & 1;
  return a1;
}

uint64_t PrivacyType.deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t PrivacyType.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

unint64_t sub_24F0D9B80()
{
  result = qword_27F239268;
  if (!qword_27F239268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239268);
  }

  return result;
}

uint64_t type metadata accessor for PrivacyType()
{
  result = qword_27F239278;
  if (!qword_27F239278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0D9C68@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24F0D9EC8(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_24F0D9D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyType.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24F0D9D88()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F0D9EC8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24F0D9F64@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 18;
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27F22B5B8;
  sub_24F926E98();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v7 = sub_24F926E88();

  (*(v3 + 8))(v5, v2);
  sub_24F9238C8();
  *&v11[38] = v14;
  *&v11[22] = v13;
  *&v11[6] = v12;
  v8 = *&v11[16];
  *(a1 + 18) = *v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v8;
  result = *&v11[32];
  *(a1 + 50) = *&v11[32];
  *(a1 + 64) = *&v11[46];
  return result;
}

uint64_t sub_24F0DA198(uint64_t a1)
{
  v2 = sub_24F91F648();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EA0);
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v9 = sub_24F92A9E8();
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210C60 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_27F233E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C78);
  sub_24F928868();

  if (v45[0])
  {
  }

  else
  {
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    (*(v43 + 16))(v8, v10, v4);
    v45[0] = MEMORY[0x277D84F98];
    sub_24F928878();
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F928868();

  v11 = v45[0];
  if (!v45[0])
  {
    goto LABEL_14;
  }

  if (!*(v45[0] + 16) || (v12 = sub_24E76D644(*(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey), *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey + 8)), (v13 & 1) == 0))
  {

LABEL_14:
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    (*(v43 + 16))(v42, v10, v4);
    v23 = sub_24F928858();
    if (*v22)
    {
      v24 = v22;
      v38 = v4;
      v25 = v9;
      v27 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
      v26 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey + 8);
      v28 = v39;
      sub_24F91F638();
      sub_24F91F5E8();
      v30 = v29;
      (*(v40 + 8))(v28, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *v24;
      *v24 = 0x8000000000000000;
      v32 = v26;
      v9 = v25;
      v4 = v38;
      sub_24E8223AC(v27, v32, isUniquelyReferenced_nonNull_native, v30);
      *v24 = v44;
    }

    v23(v45, 0);

    (*(v43 + 8))(v42, v4);
    v33 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction);
    v46 = type metadata accessor for Action();
    v47 = sub_24F0DA940(&qword_27F216DE8, type metadata accessor for Action);
    v45[0] = v33;
    type metadata accessor for RateLimitedActionImplementation();

    swift_getWitnessTable();
    sub_24F1489C4(v45);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v34 = sub_24E74EC40();
    swift_retain_n();
    v35 = sub_24F92BEF8();
    v46 = v34;
    v47 = MEMORY[0x277D225C0];
    v45[0] = v35;
    sub_24F92A958();

    goto LABEL_17;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit + 8) & 1) == 0)
  {
    v15 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit);
    v16 = v39;
    sub_24F91F638();
    sub_24F91F5E8();
    v18 = v17;
    (*(v40 + 8))(v16, v41);
    if (v15 < v18 - v14)
    {
      goto LABEL_14;
    }
  }

  v19 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction);
  if (!v19)
  {
    type metadata accessor for RateLimitedActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v37 = swift_allocError();
    sub_24F92A9A8();

    return v9;
  }

  v46 = type metadata accessor for Action();
  v47 = sub_24F0DA940(&qword_27F216DE8, type metadata accessor for Action);
  v45[0] = v19;
  type metadata accessor for RateLimitedActionImplementation();
  swift_retain_n();
  swift_getWitnessTable();
  sub_24F1489C4(v45);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v20 = sub_24E74EC40();
  swift_retain_n();
  v21 = sub_24F92BEF8();
  v46 = v20;
  v47 = MEMORY[0x277D225C0];
  v45[0] = v21;
  sub_24F92A958();

LABEL_17:

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v9;
}

uint64_t sub_24F0DA940(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *Artwork.Variant.init(format:quality:supportsWideGamut:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t Artwork.Variant.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  sub_24F928398();
  sub_24F0DAC1C();
  sub_24F928208();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v21 = v22;
  sub_24F928398();
  v13 = sub_24F928258();
  v19 = v14;
  v12(v11, v5);
  sub_24F928398();
  v15 = sub_24F928278();
  v16 = sub_24F9285B8();
  (*(*(v16 - 8) + 8))(v20, v16);
  v12(a1, v5);
  result = (v12)(v8, v5);
  *a3 = v21;
  *(a3 + 8) = v13;
  *(a3 + 16) = v19 & 1;
  *(a3 + 17) = v15 & 1;
  return result;
}

unint64_t sub_24F0DAC1C()
{
  result = qword_27F239388;
  if (!qword_27F239388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239388);
  }

  return result;
}

uint64_t Artwork.Variant.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92B218();

  sub_24F92D088();
  if (!v2)
  {
    MEMORY[0x253052A00](v1);
  }

  return sub_24F92D088();
}

uint64_t Artwork.Variant.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92D088();
  if (!v2)
  {
    MEMORY[0x253052A00](v1);
  }

  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t sub_24F0DAE78()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92D088();
  if (!v2)
  {
    MEMORY[0x253052A00](v1);
  }

  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit7ArtworkC7VariantV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((sub_24F0C96A0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return v4 ^ v7 ^ 1u;
}

unint64_t sub_24F0DAFE4()
{
  result = qword_27F239390;
  if (!qword_27F239390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239390);
  }

  return result;
}

uint64_t _s7VariantVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s7VariantVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

char *EditorialSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v181 = a2;
  v170 = sub_24F91F6B8();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_24F9285B8();
  v180 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v179 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v135 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v172 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v175 = &v135 - v10;
  MEMORY[0x28223BE20](v11);
  v176 = &v135 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v13 - 8);
  v173 = (&v135 - v14);
  v183 = sub_24F928388();
  v15 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v165 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v135 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v135 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v135 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v135 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v135 - v36;
  v182 = a1;
  sub_24F928398();
  sub_24F0DE3EC();
  v38 = v177;
  sub_24F928218();
  if (v38)
  {
    (*(v180 + 8))(v181, v184);
    v39 = *(v15 + 8);
    v40 = v183;
    v39(v182, v183);
    v39(v37, v40);
    return v25;
  }

  v154 = v28;
  v155 = v25;
  v160 = v22;
  v156 = v19;
  v166 = v31;
  v164 = 0;
  v41 = *(v15 + 8);
  v177 = v15 + 8;
  v42 = v183;
  v41(v37, v183);
  v43 = LOBYTE(v198[0]);
  sub_24F928398();
  v44 = v173;
  sub_24F9282B8();
  v174 = v41;
  v41(v34, v42);
  v45 = sub_24F92AC28();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v163 = v43;
  if (v47 == 1)
  {
    sub_24E601704(v44, &qword_27F2213B0);
    v171 = 0;
  }

  else
  {
    v48 = v164;
    v171 = sub_24F92ABB8();
    v164 = v48;
    (*(v46 + 8))(v44, v45);
  }

  v49 = v179;
  v50 = v181;
  v51 = v178;
  v52 = v166;
  sub_24F929608();
  sub_24F928398();
  v54 = v180 + 16;
  v53 = *(v180 + 16);
  v55 = v184;
  v53(v51, v50, v184);
  sub_24F929548();
  v173 = v53;
  v53(v49, v50, v55);
  if (v171)
  {
    v56 = v182;
    sub_24F928398();
    sub_24F0DE890();
    sub_24F928248();
    v57 = v183;
    v58 = v52;
    v25 = v174;
    (v174)(v52, v183);
    v59 = LOBYTE(v198[0]);
    if (LOBYTE(v198[0]) == 4)
    {

      v60 = sub_24F92AC38();
      sub_24F0DE848(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v61 = 0x476B726F77747261;
      v61[1] = 0xEF65707954646972;
      v61[2] = v167;
      (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D22530], v60);
      swift_willThrow();
      v62 = *(v180 + 8);
      v63 = v184;
      v62(v181, v184);
      (v25)(v56, v57);
      v64 = v179;
      v65 = v63;
LABEL_39:
      v62(v64, v65);
      sub_24E601704(v176, &qword_27F213E68);
      return v25;
    }
  }

  else
  {
    v59 = 4;
    v57 = v183;
    v58 = v52;
    v25 = v174;
    v56 = v182;
  }

  v153 = v59;
  v66 = type metadata accessor for Artwork();
  sub_24F928398();
  v173(v178, v179, v184);
  v158 = sub_24F0DE848(&qword_27F219660, type metadata accessor for Artwork);
  v159 = v66;
  sub_24F929548();
  v161 = v198[0];
  sub_24F928398();
  v157 = JSONObject.appStoreColor.getter();
  (v25)(v58, v57);
  if (v163 <= 2)
  {
    if (v163)
    {
      v25 = v178;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v163 == 3)
  {
LABEL_17:
    v25 = v178;
    goto LABEL_18;
  }

  v25 = v178;
  if (v163 != 4)
  {

    goto LABEL_19;
  }

LABEL_18:
  v67 = sub_24F92CE08();

  if (v67)
  {
LABEL_19:
    if (v161)
    {
      if (v157)
      {
        goto LABEL_21;
      }

      v131 = sub_24F92AC38();
      sub_24F0DE848(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v132 = 0x6F6C6F43746E6974;
      v132[1] = 0xE900000000000072;
      v132[2] = v167;
      (*(*(v131 - 8) + 104))(v132, *MEMORY[0x277D22530], v131);
      swift_willThrow();
    }

    else
    {

      v129 = sub_24F92AC38();
      sub_24F0DE848(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v130 = 0x6B726F77747261;
      v130[1] = 0xE700000000000000;
      v130[2] = v167;
      (*(*(v129 - 8) + 104))(v130, *MEMORY[0x277D22530], v129);
      swift_willThrow();
    }

    v62 = *(v180 + 8);
    v133 = v184;
    v62(v181, v184);
    (v174)(v56, v183);
    v64 = v179;
    v65 = v133;
    goto LABEL_39;
  }

LABEL_21:
  type metadata accessor for Lockup();
  sub_24F928398();
  v68 = v179;
  v69 = v184;
  v70 = v173;
  v173(v25, v179, v184);
  sub_24F0DE848(&qword_27F221FB8, type metadata accessor for Lockup);
  sub_24F929548();
  v152 = v198[0];
  sub_24F928398();
  v70(v25, v68, v69);
  sub_24E951DC0();
  sub_24F929548();
  v71 = LODWORD(v198[0]) | ((WORD2(v198[0]) | (BYTE6(v198[0]) << 16)) << 32);
  if (LOBYTE(v198[0]) == 2)
  {
    v72 = v174;
    v73 = v183;
    v74 = v156;
    v75 = v160;
    v76 = v154;
    if (qword_27F2110F8 != -1)
    {
      swift_once();
    }

    v151 = dword_27F23E728;
    v150 = BYTE1(dword_27F23E728);
    v149 = BYTE2(dword_27F23E728);
    v148 = HIBYTE(dword_27F23E728);
    v147 = byte_27F23E72C;
    v146 = byte_27F23E72D;
    v145 = byte_27F23E72E;
  }

  else
  {
    v150 = (v71 >> 8) & 1;
    v149 = (v71 >> 16) & 1;
    v148 = (v71 >> 24) & 1;
    v147 = HIDWORD(v71) & 1;
    v146 = (v71 >> 40) & 1;
    v151 = LODWORD(v198[0]) | ((WORD2(v198[0]) | (BYTE6(v198[0]) << 16)) << 32);
    v145 = HIWORD(v71) & 1;
    v72 = v174;
    v73 = v183;
    v74 = v156;
    v75 = v160;
    v76 = v154;
  }

  v77 = v179;
  sub_24F928398();
  v78 = sub_24F928348();
  v162 = v54;
  if (v79)
  {
    v190 = v78;
    v191 = v79;
  }

  else
  {
    v80 = v168;
    sub_24F91F6A8();
    v81 = sub_24F91F668();
    v83 = v82;
    (*(v169 + 8))(v80, v170);
    v190 = v81;
    v191 = v83;
    v75 = v160;
    v72 = v174;
  }

  sub_24F92C7F8();
  v72(v76, v73);
  v84 = v155;
  sub_24F928398();
  v160 = sub_24F928348();
  v156 = v85;
  v72(v84, v73);
  sub_24F928398();
  v155 = sub_24F928348();
  v154 = v86;
  v72(v75, v73);
  sub_24F928398();
  v144 = sub_24F928348();
  v143 = v87;
  v72(v74, v73);
  type metadata accessor for Video();
  v88 = v166;
  sub_24F928398();
  v89 = v178;
  v90 = v184;
  v91 = v173;
  v173(v178, v77, v184);
  sub_24F0DE848(&qword_27F221590, type metadata accessor for Video);
  sub_24F929548();
  v142 = v198[7];
  sub_24F928398();
  v91(v89, v77, v90);
  sub_24F929548();
  v141 = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650);
  sub_24F928398();
  v91(v89, v77, v90);
  sub_24E705AFC();
  sub_24F929548();
  v140 = v196;
  sub_24F928398();
  v91(v89, v77, v90);
  type metadata accessor for AppEventFormattedDate();
  sub_24F0DE848(&qword_27F22D450, type metadata accessor for AppEventFormattedDate);
  v139 = sub_24F92B698();
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v92 = v183;
  v93 = v174;
  (v174)(v88, v183);
  v138 = v195;
  v94 = v165;
  sub_24F928398();
  v137 = sub_24F928348();
  v136 = v95;
  v93(v94, v92);
  sub_24F928398();
  v96 = v184;
  v173(v89, v77, v184);
  sub_24F929548();
  v159 = v194;
  v97 = type metadata accessor for Action();
  sub_24F928398();
  v167 = v97;
  v98 = static Action.tryToMakeInstance(byDeserializing:using:)(v88, v77);
  v99 = v96;
  v100 = v98;
  v93(v88, v92);
  sub_24E60169C(v176, v175, &qword_27F213E68);
  sub_24F928398();
  sub_24EABA874();
  sub_24F928208();
  v93(v88, v92);
  LODWORD(v165) = v193;
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v101 = v181;
  v173(v89, v181, v99);
  sub_24F0DE848(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
  v102 = v100;
  sub_24F929548();
  v178 = v192;
  type metadata accessor for EditorialSearchResult();
  v25 = swift_allocObject();
  v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type] = v163;
  v103 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title];
  v104 = v156;
  *v103 = v160;
  v103[1] = v104;
  v105 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle];
  v106 = v154;
  *v105 = v155;
  v105[1] = v106;
  v107 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline];
  v108 = v143;
  *v107 = v144;
  v107[1] = v108;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialArtwork] = v161;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialVideo] = v142;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_iconArtwork] = v141;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAdamIds] = v171;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAppIcons] = v140;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_lockup] = v152;
  v109 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions];
  *v109 = v151 & 1;
  v109[1] = v150;
  v109[2] = v149;
  v109[3] = v148;
  v109[4] = v147;
  v109[5] = v146;
  v109[6] = v145;
  v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_artworkGridType] = v153;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_appEventFormattedDates] = v139;
  v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_mediaOverlayStyle] = v138;
  v110 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText];
  v111 = v136;
  *v110 = v137;
  v110[1] = v111;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeArtwork] = v159;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor] = v157;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_clickAction] = v102;
  sub_24E60169C(v198, &v190, &qword_27F235830);
  if (v102)
  {
    v173 = sub_24F0DE848(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v167 = 0;
    v173 = 0;
  }

  v112 = v180;
  v113 = v170;
  v114 = v169;
  v115 = v168;
  sub_24E60169C(v175, v172, &qword_27F213E68);
  *&v25[OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity] = 0;
  sub_24E60169C(&v190, &v187, &qword_27F235830);
  v116 = v174;
  v117 = v182;
  if (*(&v188 + 1))
  {
    v118 = v188;
    *(v25 + 24) = v187;
    *(v25 + 40) = v118;
    *(v25 + 7) = v189;
  }

  else
  {

    sub_24F91F6A8();
    v119 = sub_24F91F668();
    v120 = v113;
    v121 = v102;
    v122 = v119;
    v124 = v123;
    (*(v114 + 8))(v115, v120);
    v185 = v122;
    v102 = v121;
    v186 = v124;
    v101 = v181;
    sub_24F92C7F8();
    sub_24E601704(&v187, &qword_27F235830);
  }

  v125 = *(v112 + 8);
  v126 = v184;
  v125(v101, v184);
  v116(v117, v183);
  sub_24E601704(&v190, &qword_27F235830);
  sub_24E601704(v175, &qword_27F213E68);
  sub_24E601704(v198, &qword_27F235830);
  v125(v179, v126);
  sub_24E601704(v176, &qword_27F213E68);
  *(v25 + 8) = v102;
  *(v25 + 9) = 0;
  v127 = v167;
  *(v25 + 10) = 0;
  *(v25 + 11) = v127;
  *(v25 + 12) = v173;
  sub_24E65E0D4(v172, &v25[OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics]);
  v25[17] = 2;
  v25[16] = v165;
  v128 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *&v25[v128] = v178;
  return v25;
}

GameStoreKit::EditorialSearchResultType_optional __swiftcall EditorialSearchResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialSearchResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x65706F6C65766564;
  v4 = 0x6369736162;
  if (v1 != 4)
  {
    v4 = 0x746E657645707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697463656C6C6F63;
  if (v1 != 1)
  {
    v5 = 0x79726F7473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F0DCEB8()
{
  sub_24F92B218();
}

void sub_24F0DCFC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE900000000000072;
  v6 = 0x65706F6C65766564;
  v7 = 0xE500000000000000;
  v8 = 0x6369736162;
  if (v2 != 4)
  {
    v8 = 0x746E657645707061;
    v7 = 0xED000079726F7453;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x697463656C6C6F63;
  if (v2 != 1)
  {
    v10 = 0x79726F7473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

GameStoreKit::ArtworkGridType_optional __swiftcall ArtworkGridType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ArtworkGridType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  v2 = 0x72614C6172747865;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x656772616CLL;
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

uint64_t sub_24F0DD16C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0DD224()
{
  sub_24F92B218();
}

uint64_t sub_24F0DD2C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0DD388(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6C616D73;
  v4 = 0xEA00000000006567;
  v5 = 0x72614C6172747865;
  if (*v1 != 2)
  {
    v5 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656772616CLL;
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

uint64_t EditorialSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title);

  return v1;
}

uint64_t EditorialSearchResult.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle);

  return v1;
}

uint64_t EditorialSearchResult.tagline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);

  return v1;
}

void EditorialSearchResult.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void *EditorialSearchResult.tintColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor);
  v2 = v1;
  return v1;
}

void sub_24F0DD5D4(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) == 2 && (v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type), v2 <= 5))
  {
    *a1 = 0x30403030403uLL >> (8 * v2);
  }

  else
  {
    *a1 = 4;
  }
}

uint64_t sub_24F0DD61C()
{
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_24F92CE08();
  }

  return v1 & 1;
}

uint64_t EditorialSearchResult.badgeText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText);

  return v1;
}

uint64_t sub_24F0DD710@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for EditorialSearchResult();
  *a1 = v1;
}

uint64_t sub_24F0DD754()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type);
  if (v1 <= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type))
    {
      if (v1 == 1)
      {
        v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
        if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
        {
          v3 = 0xD000000000000033;
          v4 = 0x800000024FA6B710;
LABEL_18:
          v9._countAndFlagsBits = 0;
          v9._object = 0xE000000000000000;
          countAndFlagsBits = localizedString(_:comment:)(*&v3, v9)._countAndFlagsBits;
          goto LABEL_19;
        }
      }

      else
      {
        v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
        if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
        {
          v3 = 0xD00000000000002ELL;
          v4 = 0x800000024FA6B6E0;
          goto LABEL_18;
        }
      }

LABEL_15:
      countAndFlagsBits = *v2;
LABEL_19:

      return countAndFlagsBits;
    }

    v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
    {
      goto LABEL_15;
    }

    v6 = "Search.EditorialSearchResultType.Heading.Category";
LABEL_17:
    v4 = (v6 - 32) | 0x8000000000000000;
    v3 = 0xD000000000000031;
    goto LABEL_18;
  }

  if (v1 == 3)
  {
    v7._countAndFlagsBits = 0xD000000000000032;
    v7._object = 0x800000024FA6B6A0;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    return localizedString(_:comment:)(v7, v8)._countAndFlagsBits;
  }

  else
  {
    if (v1 != 4)
    {
      v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
      if (*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
      {
        goto LABEL_15;
      }

      v6 = "Search.EditorialSearchResultType.Heading.AppEvent";
      goto LABEL_17;
    }

    return 0;
  }
}

uint64_t EditorialSearchResult.__allocating_init(id:type:title:subtitle:tagline:editorialArtwork:editorialVideo:iconArtwork:collectionAdamIds:collectionAppIcons:lockup:editorialDisplayOptions:artworkGridType:appEventFormattedDates:mediaOverlayStyle:tintColor:badgeText:badgeArtwork:clickAction:impressionMetrics:condensedBehavior:searchAdOpportunity:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v73 = a8;
  v72 = a7;
  v69 = a6;
  v67 = a5;
  v75 = a1;
  v82 = a24;
  v70 = a23;
  v79 = a21;
  v80 = a22;
  v81 = a19;
  v78 = a20;
  v74 = a14;
  v71 = a13;
  v68 = a12;
  v76 = a17;
  v77 = a25;
  v66 = sub_24F91F6B8();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v30 - 8);
  v83 = &v63 - v31;
  v32 = swift_allocObject();
  v33 = *a15;
  v34 = a15[1];
  v35 = a15[2];
  v36 = a15[3];
  v37 = a15[4];
  v38 = a15[5];
  v39 = a15[6];
  v40 = *a16;
  v41 = *a18;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type) = *a2;
  v42 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title);
  *v42 = a3;
  v42[1] = a4;
  v43 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle);
  *v43 = v67;
  v43[1] = v69;
  v44 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
  *v44 = v72;
  v44[1] = v73;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialArtwork) = a9;
  v45 = v70;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialVideo) = a10;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_iconArtwork) = a11;
  v46 = v75;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAdamIds) = v68;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAppIcons) = v71;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_lockup) = v74;
  v47 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  *v47 = v33;
  v47[1] = v34;
  v47[2] = v35;
  v47[3] = v36;
  v47[4] = v37;
  v47[5] = v38;
  v47[6] = v39;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_artworkGridType) = v40;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_appEventFormattedDates) = v76;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_mediaOverlayStyle) = v41;
  v48 = *v77;
  v49 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText);
  v51 = v79;
  v50 = v80;
  *v49 = v78;
  v49[1] = v51;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeArtwork) = v50;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor) = v81;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_clickAction) = v45;
  sub_24E60169C(v46, v89, &qword_27F235830);
  if (v45)
  {
    v52 = type metadata accessor for Action();
    v53 = sub_24F0DE848(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v54 = v82;
  sub_24E60169C(v82, v83, &qword_27F213E68);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v89, &v86, &qword_27F235830);
  if (*(&v87 + 1))
  {
    v55 = v87;
    *(v32 + 24) = v86;
    *(v32 + 40) = v55;
    *(v32 + 56) = v88;
  }

  else
  {

    v56 = v64;
    sub_24F91F6A8();
    v57 = v48;
    v58 = sub_24F91F668();
    v60 = v59;
    (*(v65 + 8))(v56, v66);
    v84 = v58;
    v48 = v57;
    v54 = v82;
    v85 = v60;
    sub_24F92C7F8();
    sub_24E601704(&v86, &qword_27F235830);
  }

  sub_24E601704(v54, &qword_27F213E68);
  sub_24E601704(v46, &qword_27F235830);
  sub_24E601704(v89, &qword_27F235830);
  *(v32 + 64) = v45;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  *(v32 + 88) = v52;
  *(v32 + 96) = v53;
  sub_24E65E0D4(v83, v32 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v32 + 17) = 2;
  *(v32 + 16) = v48;
  v61 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v32 + v61) = a26;
  return v32;
}

uint64_t EditorialSearchResult.init(id:type:title:subtitle:tagline:editorialArtwork:editorialVideo:iconArtwork:collectionAdamIds:collectionAppIcons:lockup:editorialDisplayOptions:artworkGridType:appEventFormattedDates:mediaOverlayStyle:tintColor:badgeText:badgeArtwork:clickAction:impressionMetrics:condensedBehavior:searchAdOpportunity:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v27 = v26;
  v75 = a8;
  v74 = a7;
  v71 = a6;
  v69 = a5;
  v83 = a24;
  v72 = a23;
  v81 = a22;
  v80 = a21;
  v82 = a19;
  v79 = a20;
  v76 = a14;
  v73 = a13;
  v70 = a12;
  v68 = a11;
  v78 = a25;
  v77 = a17;
  v67 = sub_24F91F6B8();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v33 - 8);
  v84 = &v64 - v34;
  v35 = *a15;
  v36 = a15[1];
  v37 = a15[2];
  v38 = a15[3];
  v39 = a15[4];
  v40 = a15[5];
  v41 = a15[6];
  v42 = *a16;
  v43 = *a18;
  v44 = a1;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type) = *a2;
  v45 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title);
  *v45 = a3;
  v45[1] = a4;
  v46 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle);
  *v46 = v69;
  v46[1] = v71;
  v47 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
  *v47 = v74;
  v47[1] = v75;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialArtwork) = a9;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialVideo) = a10;
  v48 = v72;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_iconArtwork) = v68;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAdamIds) = v70;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAppIcons) = v73;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_lockup) = v76;
  v49 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  *v49 = v35;
  v49[1] = v36;
  v49[2] = v37;
  v49[3] = v38;
  v49[4] = v39;
  v49[5] = v40;
  v49[6] = v41;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_artworkGridType) = v42;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_appEventFormattedDates) = v77;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_mediaOverlayStyle) = v43;
  v50 = *v78;
  v51 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText);
  v52 = v80;
  *v51 = v79;
  v51[1] = v52;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeArtwork) = v81;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor) = v82;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_clickAction) = v48;
  sub_24E60169C(a1, v93, &qword_27F235830);
  if (v48)
  {
    v53 = type metadata accessor for Action();
    v54 = sub_24F0DE848(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v55 = v83;
  sub_24E60169C(v83, v84, &qword_27F213E68);
  *(v27 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v93, &v87, &qword_27F235830);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {

    v56 = v65;
    sub_24F91F6A8();
    v57 = v50;
    v58 = sub_24F91F668();
    v60 = v59;
    (*(v66 + 8))(v56, v67);
    v85 = v58;
    v50 = v57;
    v55 = v83;
    v86 = v60;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830);
  }

  sub_24E601704(v55, &qword_27F213E68);
  sub_24E601704(v44, &qword_27F235830);
  sub_24E601704(v93, &qword_27F235830);
  v61 = v91;
  *(v27 + 24) = v90;
  *(v27 + 40) = v61;
  *(v27 + 56) = v92;
  *(v27 + 64) = v48;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  *(v27 + 88) = v53;
  *(v27 + 96) = v54;
  sub_24E65E0D4(v84, v27 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v27 + 17) = 2;
  *(v27 + 16) = v50;
  v62 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v27 + v62) = a26;

  return v27;
}

unint64_t sub_24F0DE3EC()
{
  result = qword_27F239398;
  if (!qword_27F239398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239398);
  }

  return result;
}

uint64_t sub_24F0DE440()
{
}

uint64_t EditorialSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t EditorialSearchResult.__deallocating_deinit()
{
  EditorialSearchResult.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0DE71C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for EditorialSearchResult();
  *a1 = v3;
}

void sub_24F0DE764(_BYTE *a1@<X8>)
{
  if (*(*v1 + 16) == 2 && (v2 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type), v2 <= 5))
  {
    *a1 = 0x30403030403uLL >> (8 * v2);
  }

  else
  {
    *a1 = 4;
  }
}

void sub_24F0DE7B0(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

uint64_t type metadata accessor for EditorialSearchResult()
{
  result = qword_27F2393B8;
  if (!qword_27F2393B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0DE848(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F0DE890()
{
  result = qword_27F2393A0;
  if (!qword_27F2393A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393A0);
  }

  return result;
}

unint64_t sub_24F0DE8E8()
{
  result = qword_27F2393A8;
  if (!qword_27F2393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393A8);
  }

  return result;
}

unint64_t sub_24F0DE940()
{
  result = qword_27F2393B0;
  if (!qword_27F2393B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393B0);
  }

  return result;
}

unint64_t ForceAskToBuyReason.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

GameStoreKit::ForceAskToBuyReason_optional __swiftcall ForceAskToBuyReason.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_24F0DEC40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "gnF";
  }

  else
  {
    v4 = "exceptionDeleted";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "exceptionDeleted";
  }

  else
  {
    v7 = "gnF";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

unint64_t sub_24F0DECF4()
{
  result = qword_27F2393C8;
  if (!qword_27F2393C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393C8);
  }

  return result;
}

uint64_t sub_24F0DED48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0DEDCC()
{
  sub_24F92B218();
}

uint64_t sub_24F0DEE3C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0DEEBC@<X0>(char *a1@<X8>)
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

void sub_24F0DEF1C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "exceptionDeleted";
  }

  else
  {
    v3 = "gnF";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t AppOfferButtonPresenter.actionForCurrentState.getter()
{
  sub_24F0E3A20(&v4);
  v0 = v4;
  if (v4)
  {
    v1 = &qword_27F2129B0;
    v2 = &v5;
  }

  else
  {
    v1 = &unk_27F233748;
    v2 = &v4;
  }

  sub_24E601704(v2, v1);
  return v0;
}

uint64_t AppOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v17 = *(a6 + 24);
  v16 = *(a6 + 32);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v19 = sub_24F0E85D8(a1, a2, a3, a4, a5, v18, a7, a8, a9, a10, a11, v11, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v19;
}

char *sub_24F0DF09C()
{
  result = 0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 73);
  if (v7 <= 2)
  {
    if (*(v0 + 73))
    {
      if (v7 != 1)
      {
        return result;
      }

      v12 = *v0;
      if (v3 == 1)
      {
        return 0;
      }
    }

    else
    {
      v3 = ((*(v0 + 41) << 8) | ((*(v0 + 45) | (*(v0 + 47) << 16)) << 40) | v6);
      v12 = *(v0 + 32);
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      v2 = *(v0 + 48);
      LOBYTE(v6) = *(v0 + 72);
      if (v3 == 1)
      {
        return 0;
      }
    }

    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v71 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
        sub_24F0E8910(v12, v3, v2, v4);
        v72 = v3;
        v73 = [v71 init];
        v74 = [v73 stringFromByteCount_];
        v75 = sub_24F92B0D8();
        v120 = v76;

        v77 = [v73 stringFromByteCount_];
        v78 = sub_24F92B0D8();
        v80 = v79;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93A400;
        *(inited + 32) = 0x6574656C706D6F63;
        *(inited + 40) = 0xEF746E756F635F64;
        *(inited + 48) = v75;
        *(inited + 56) = v120;
        *(inited + 64) = 0x6F635F6C61746F74;
        *(inited + 72) = 0xEB00000000746E75;
        *(inited + 80) = v78;
        *(inited + 88) = v80;
        v82 = sub_24E6086DC(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
        swift_arrayDestroy();
        v83._countAndFlagsBits = 0xD000000000000017;
        v83._object = 0x800000024FA6BAE0;
        countAndFlagsBits = localizedString(_:with:)(v83, v82)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      return 0;
    }

    if (!v3)
    {
      return 0;
    }

    if (v4)
    {
      v42 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
      sub_24F0E8910(v12, v3, v2, v4);
      v43 = v3;
      v44 = v4;
      v45 = [v42 init];
      v46 = [v44 completedUnitCount];
      result = [v43 completedUnitCount];
      if (!__OFADD__(v46, result))
      {
        v47 = [v45 stringFromByteCount_];
        v48 = sub_24F92B0D8();
        v119 = v49;

        if ([v44 completedUnitCount] < 1 || (v50 = objc_msgSend(v43, sel_totalUnitCount), result = objc_msgSend(v44, sel_totalUnitCount), v5 = &result[v50], !__OFADD__(v50, result)))
        {
          v51 = [v45 stringFromByteCount_];
          v52 = sub_24F92B0D8();
          v54 = v53;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_24F93A400;
          *(v55 + 32) = 0x6574656C706D6F63;
          *(v55 + 40) = 0xEF746E756F635F64;
          *(v55 + 48) = v48;
          *(v55 + 56) = v119;
          *(v55 + 64) = 0x6F635F6C61746F74;
          *(v55 + 72) = 0xEB00000000746E75;
          *(v55 + 80) = v52;
          *(v55 + 88) = v54;
          v56 = sub_24E6086DC(v55);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
          swift_arrayDestroy();
          v57._countAndFlagsBits = 0xD000000000000017;
          v57._object = 0x800000024FA6BAE0;
          v58 = localizedString(_:with:)(v57, v56)._countAndFlagsBits;

          return v58;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

    sub_24F0E8910(v12, v3, v2, 0);

    goto LABEL_48;
  }

  switch(v7)
  {
    case 5u:
      if (v6)
      {
        if (!v3 || !v4)
        {
          return 0;
        }

        v13 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
        v14 = v3;
        v15 = v4;
        v16 = [v13 init];
        v17 = [v15 completedUnitCount];
        result = [v14 completedUnitCount];
        if (__OFADD__(v17, result))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          return result;
        }

        v18 = [v16 stringFromByteCount_];
        v19 = sub_24F92B0D8();
        v21 = v20;

        v22 = [v15 completedUnitCount];
        v23 = v5;
        if (v22 >= 1)
        {
          v24 = [v14 totalUnitCount];
          result = [v15 totalUnitCount];
          v23 = &result[v24];
          if (__OFADD__(v24, result))
          {
            goto LABEL_65;
          }
        }

        v25 = [v16 stringFromByteCount_];
        v26 = sub_24F92B0D8();
        v28 = v27;

        if (v5)
        {
          if (v5 >= 1)
          {
            v29 = sub_24F92BD08();
            if ((v30 & 1) == 0)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v29 = sub_24F92BD08();
          if ((v102 & 1) == 0)
          {
LABEL_58:
            v112 = [v16 stringFromByteCount_];
            v118 = sub_24F92B0D8();
            v114 = v113;

            v122 = ".AdditionalContent.NoThroughput";
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
            v115 = swift_initStackObject();
            *(v115 + 16) = xmmword_24F9479A0;
            *(v115 + 32) = 0x6574656C706D6F63;
            *(v115 + 40) = 0xEF746E756F635F64;
            *(v115 + 48) = v19;
            *(v115 + 56) = v21;
            *(v115 + 64) = 0x6F635F6C61746F74;
            *(v115 + 72) = 0xEB00000000746E75;
            *(v115 + 80) = v26;
            *(v115 + 88) = v28;
            *(v115 + 96) = 0xD000000000000010;
            *(v115 + 104) = 0x800000024FA6BBC0;
            *(v115 + 112) = v118;
            *(v115 + 120) = v114;
            v104 = sub_24E6086DC(v115);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
            swift_arrayDestroy();
            v105 = 0xD000000000000022;
LABEL_59:
            v106 = v122 | 0x8000000000000000;
            goto LABEL_60;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
        v103 = swift_initStackObject();
        *(v103 + 16) = xmmword_24F93A400;
        *(v103 + 32) = 0x6574656C706D6F63;
        *(v103 + 40) = 0xEF746E756F635F64;
        *(v103 + 48) = v19;
        *(v103 + 56) = v21;
        *(v103 + 64) = 0x6F635F6C61746F74;
        *(v103 + 72) = 0xEB00000000746E75;
        *(v103 + 80) = v26;
        *(v103 + 88) = v28;
        v104 = sub_24E6086DC(v103);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
        swift_arrayDestroy();
        v105 = 0xD00000000000002FLL;
        v106 = 0x800000024FA6BB60;
LABEL_60:
        v116 = localizedString(_:with:)(*&v105, v104)._countAndFlagsBits;

        return v116;
      }

      if (!v2)
      {
        v8 = "OfferButton.Hint.Paused";
        v9 = 0xD00000000000001FLL;
        goto LABEL_6;
      }

      [*(v0 + 16) fractionCompleted];
      v60 = v59;
      v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v2 setNumberStyle_];
      v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v62 = [v2 stringFromNumber_];

      if (v62)
      {
        v63 = sub_24F92B0D8();
        v65 = v64;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
        v66 = swift_initStackObject();
        *(v66 + 16) = xmmword_24F93DE60;
        *(v66 + 32) = 0xD000000000000010;
        v67 = v66 + 32;
        *(v66 + 40) = 0x800000024FA6BB40;
        *(v66 + 48) = v63;
        *(v66 + 56) = v65;
        v68 = sub_24E6086DC(v66);
        swift_setDeallocating();
        sub_24E601704(v67, &qword_27F219F90);
        v69._countAndFlagsBits = 0xD00000000000001BLL;
        v69._object = 0x800000024FA6BB20;
        v70 = localizedString(_:with:)(v69, v68)._countAndFlagsBits;

        return v70;
      }

LABEL_48:

      return 0;
    case 4u:
      if (v3 && v4)
      {
        v31 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
        v14 = v3;
        v15 = v4;
        v16 = [v31 init];
        v32 = [v14 completedUnitCount];
        result = [v15 completedUnitCount];
        if (__OFADD__(v32, result))
        {
          __break(1u);
        }

        else
        {
          v33 = [v16 stringFromByteCount_];
          v34 = sub_24F92B0D8();
          v36 = v35;

          if ([v15 completedUnitCount] < 1)
          {
            if (v5 >= 1)
            {
              v85 = [v16 stringFromByteCount_];
              v39 = sub_24F92B0D8();
              v41 = v86;

LABEL_45:
              v87 = sub_24F92BD08();
              if ((v88 & 1) == 0)
              {
                v89 = [v16 stringFromByteCount_];
                v90 = sub_24F92B0D8();
                v121 = v14;
                v92 = v91;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
                v93 = swift_initStackObject();
                *(v93 + 16) = xmmword_24F9479A0;
                *(v93 + 32) = 0x6574656C706D6F63;
                *(v93 + 40) = 0xEF746E756F635F64;
                *(v93 + 48) = v34;
                *(v93 + 56) = v36;
                *(v93 + 64) = 0x6F635F6C61746F74;
                *(v93 + 72) = 0xEB00000000746E75;
                *(v93 + 80) = v39;
                *(v93 + 88) = v41;
                *(v93 + 96) = 0xD000000000000010;
                *(v93 + 104) = 0x800000024FA6BBC0;
                *(v93 + 112) = v90;
                *(v93 + 120) = v92;
                v94 = sub_24E6086DC(v93);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
                swift_arrayDestroy();
                v95._countAndFlagsBits = 0xD00000000000001CLL;
                v95._object = 0x800000024FA5BA40;
                v96 = localizedString(_:with:)(v95, v94)._countAndFlagsBits;

                return v96;
              }

LABEL_52:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
              v99 = swift_initStackObject();
              *(v99 + 16) = xmmword_24F93A400;
              *(v99 + 32) = 0x6574656C706D6F63;
              *(v99 + 40) = 0xEF746E756F635F64;
              *(v99 + 48) = v34;
              *(v99 + 56) = v36;
              *(v99 + 64) = 0x6F635F6C61746F74;
              *(v99 + 72) = 0xEB00000000746E75;
              *(v99 + 80) = v39;
              *(v99 + 88) = v41;
              v100 = sub_24E6086DC(v99);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
              swift_arrayDestroy();
              v101._countAndFlagsBits = 0xD000000000000029;
              v101._object = 0x800000024FA6BBE0;
              v96 = localizedString(_:with:)(v101, v100)._countAndFlagsBits;

              return v96;
            }

            [v14 totalUnitCount];
            goto LABEL_26;
          }

          v37 = [v14 totalUnitCount];
          result = [v15 totalUnitCount];
          if (!__OFADD__(v37, result))
          {
LABEL_26:
            v38 = [v16 stringFromByteCount_];
            v39 = sub_24F92B0D8();
            v41 = v40;

            if (v5)
            {
              if (v5 < 1)
              {
                goto LABEL_52;
              }

              goto LABEL_45;
            }

            v97 = sub_24F92BD08();
            if (v98)
            {
              goto LABEL_52;
            }

            v107 = [v16 stringFromByteCount_];
            v117 = sub_24F92B0D8();
            v108 = v36;
            v110 = v109;

            v122 = "OfferButton.Arcade.Title.Open";
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_24F9479A0;
            *(v111 + 32) = 0x6574656C706D6F63;
            *(v111 + 40) = 0xEF746E756F635F64;
            *(v111 + 48) = v34;
            *(v111 + 56) = v108;
            *(v111 + 64) = 0x6F635F6C61746F74;
            *(v111 + 72) = 0xEB00000000746E75;
            *(v111 + 80) = v39;
            *(v111 + 88) = v41;
            *(v111 + 96) = 0xD000000000000010;
            *(v111 + 104) = 0x800000024FA6BBC0;
            *(v111 + 112) = v117;
            *(v111 + 120) = v110;
            v104 = sub_24E6086DC(v111);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v105 = 0xD00000000000001CLL;
            goto LABEL_59;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      return 0;
    case 3u:
      v8 = "de.Title.PreorderedSubscribed";
      v9 = 0xD000000000000022;
LABEL_6:
      v10 = v8 | 0x8000000000000000;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      return localizedString(_:comment:)(*&v9, v11)._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_24F0DFFE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 10) = *(a1 + 58);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 10) = *(a2 + 58);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_24F0E59AC(v7, v9) & 1;
}

uint64_t sub_24F0E0078(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_24F0E8528(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t AppOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_24F0E8528(a1, a2);

  return swift_unknownObjectRelease();
}

void (*AppOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F0E0198;
}

void sub_24F0E0198(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_24F0E846C();
    *(v3 + 24) = v4;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v2[5];
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 104))(v5, sel_offerButtonTapped, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F0E846C();
    *(v3 + 24) = v4;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = v2[5];
      v9 = *(v8 + 24);
      v10 = swift_getObjectType();
      (*(v9 + 104))(v8, sel_offerButtonTapped, v10, v9);
      swift_unknownObjectRelease();
    }

    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  swift_unknownObjectRelease();

  free(v2);
}

void AppOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void AppOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t sub_24F0E0324(uint64_t result)
{
  if (*(v1 + 158) != (result & 1))
  {
    if (*(v1 + 158))
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = *(v2 + 88);

      v5(sub_24F0E899C, v4, ObjectType, v2);
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v6 = *(v1 + 24);
      v7 = swift_getObjectType();
      (*(v6 + 96))(v7, v6);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F0E0458()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 158);
    *(v1 + 158) = 0;
    sub_24F0E0324(v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v16 = *(a6 + 24);
  v15 = *(a6 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_24F0E4FF4(a1, a2, v25, v26, v27, v20, v28, v29, a9, a10, a11, v11, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v22;
}

uint64_t sub_24F0E0630(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 240);
    v6 = *(result + 273);
    v7 = 2;
    if (v6 > 3)
    {
      if (v6 != 4 && v6 != 5)
      {
        goto LABEL_11;
      }

      v8 = (v5 >> 8) & 1;
    }

    else if (v6 == 1)
    {
      v8 = (v5 >> 8) & 1;
    }

    else
    {
      if (v6 != 3)
      {
LABEL_11:
        sub_24F0E06F0(a1, a2, v7);
      }

      LODWORD(v8) = *(result + 200);
    }

    v7 = v8 & 1;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_24F0E06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_24F0E3824();
  if (result)
  {
    v9 = *(v3 + 40);
    if (v9)
    {
      v10 = *(v9 + 72);
      if (*(v10 + 16))
      {

        v11 = sub_24E76DB58(12);
        if (v12)
        {
          v13 = (*(v10 + 56) + 16 * v11);
          v15 = *v13;
          v14 = v13[1];

          v16 = *(v4 + 216);
          v17 = *(v4 + 248);
          v32 = *(v4 + 232);
          v33[0] = v17;
          *(v33 + 10) = *(v4 + 258);
          v30 = *(v4 + 200);
          v31 = v16;
          v28 = v32;
          v29[0] = v17;
          *(v29 + 10) = *(v33 + 10);
          v26 = v30;
          v27 = v16;
          *(v4 + 200) = v15;
          *(v4 + 208) = v14;
          *(v4 + 273) = 11;

          sub_24EF7172C(&v30, v24);
          sub_24EF71698(&v26);
          sub_24F0E3770(&v30);
          sub_24EF71698(&v30);
        }
      }
    }
  }

  if (a1)
  {
    v18 = swift_unknownObjectRetain();
    sub_24F0E2A04(v18, a2, a3, &v26);
    v19 = *(v4 + 216);
    v20 = *(v4 + 248);
    v32 = *(v4 + 232);
    v33[0] = v20;
    *(v33 + 10) = *(v4 + 258);
    v30 = *(v4 + 200);
    v31 = v19;
    v24[2] = v32;
    v25[0] = v20;
    *(v25 + 10) = *(v33 + 10);
    v24[0] = v30;
    v24[1] = v19;
    v21 = v27;
    *(v4 + 200) = v26;
    *(v4 + 258) = *(v29 + 10);
    v22 = v28;
    *(v4 + 248) = v29[0];
    *(v4 + 232) = v22;
    *(v4 + 216) = v21;
    sub_24EF7172C(&v30, v23);
    sub_24EF7172C(&v26, v23);
    sub_24EF71698(v24);
    sub_24F0E3770(&v30);
    sub_24EF71698(&v30);
    sub_24EF71698(&v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F0E08BC()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_16;
  }

  if (*(v1 + 122) != 1 || ((v2 = *(v1 + 97), v3 = v2 > 0xC, v4 = (1 << v2) & 0x1380, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v11 = *(v1 + 72);
    if (*(v11 + 16))
    {

      v12 = sub_24E76DB58(0);
      if (v13)
      {
        countAndFlagsBits = *(*(v11 + 56) + 16 * v12);

        goto LABEL_23;
      }
    }

LABEL_16:
    v15 = *(v0 + 32);
    if (v15 && *(v15 + 24))
    {
      countAndFlagsBits = *(v15 + 16);

      return countAndFlagsBits;
    }

    if (v1 && *(v1 + 208) == 1)
    {

      v16._object = 0x800000024FA5BAC0;
      v16._countAndFlagsBits = 0xD000000000000015;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v16)._countAndFlagsBits;

      goto LABEL_25;
    }

    v17._object = 0x800000024FA5BAC0;
    v17._countAndFlagsBits = 0xD000000000000015;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v17, v18)._countAndFlagsBits;
LABEL_23:

    return countAndFlagsBits;
  }

  v6 = *(v1 + 72);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_24E76DB58(13);
    if (v9)
    {
      countAndFlagsBits = *(*(v6 + 56) + 16 * v8);

LABEL_25:

      return countAndFlagsBits;
    }
  }

  if (*(v1 + 208) != 1)
  {
    v19._countAndFlagsBits = 0xD00000000000002BLL;
    v19._object = 0x800000024FA6B8C0;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v19, v20)._countAndFlagsBits;
    goto LABEL_25;
  }

  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = 0x800000024FA6B8C0;
  countAndFlagsBits = localizedStringForAdsLanguage(_:)(v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_24F0E0AA8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }
  }

  return 0;
}

uint64_t sub_24F0E0B2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v9, ObjectType, a2);
    if (v12 >> 60)
    {
      if (v12 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(v9);
LABEL_12:
        LOBYTE(v8) = 1;
        goto LABEL_13;
      }

      v6 = v11 | v13;
      v7 = v9[3] | v9[2] | v9[1];
      if (v12 != 0x8000000000000000 || v6 | v9[0] | v10 | v7)
      {
        if (v12 == 0x8000000000000000 && v9[0] == 4)
        {
          v8 = v6 | v10 | v7;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v9[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v8) = 0;
LABEL_13:
    *(v4 + 354) = v8;
    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_24F0E0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 240);
    v8 = *(result + 273);
    v9 = 2;
    if (v8 > 3)
    {
      if (v8 != 4 && v8 != 5)
      {
        goto LABEL_11;
      }

      v10 = (v7 >> 8) & 1;
    }

    else if (v8 == 1)
    {
      v10 = (v7 >> 8) & 1;
    }

    else
    {
      if (v8 != 3)
      {
LABEL_11:
        sub_24F0E06F0(a3, a4, v9);
      }

      LODWORD(v10) = *(result + 200);
    }

    v9 = v10 & 1;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_24F0E0D10()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27F2105D0 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F22D7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v3 = *(v1 + 240);
    v4 = *(v1 + 273);
    v5 = 2;
    if (v4 > 3)
    {
      if (v4 != 4 && v4 != 5)
      {
        goto LABEL_13;
      }

      v6 = (v3 >> 8) & 1;
    }

    else if (v4 == 1)
    {
      v6 = (v3 >> 8) & 1;
    }

    else
    {
      if (v4 != 3)
      {
LABEL_13:
        sub_24F0E06F0(*(v1 + 128), *(v1 + 136), v5);
        _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
      }

      LODWORD(v6) = *(v1 + 200);
    }

    v5 = v6 & 1;
    goto LABEL_13;
  }

  return result;
}

void sub_24F0E0EE8()
{
  if (qword_27F2105D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F22D7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v2 = *(v0 + 240);
  v3 = *(v0 + 273);
  v4 = 2;
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v5 = (v2 >> 8) & 1;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      LODWORD(v5) = *(v0 + 200);
    }

    goto LABEL_11;
  }

  if (v3 == 4 || v3 == 5)
  {
    v5 = (v2 >> 8) & 1;
LABEL_11:
    v4 = v5 & 1;
  }

LABEL_12:
  sub_24F0E06F0(*(v0 + 128), *(v0 + 136), v4);

  _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t AppOfferButtonPresenter.deinit()
{
  [*(v0 + 160) removeObserver_];
  if (*(v0 + 128))
  {
    v1 = *(v0 + 136);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();

  sub_24E601704(v0 + 168, &qword_27F2129B0);
  sub_24EF71118(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), HIBYTE(*(v0 + 272)));
  sub_24EF710F0(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352));
  return v0;
}

uint64_t AppOfferButtonPresenter.__deallocating_deinit()
{
  AppOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0E11FC()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 304);
  v43 = *(v0 + 312);
  v44 = *(v0 + 320);
  v5 = *(v0 + 352);
  if (v5 >> 8 > 0xFE || (v5 & 0xFF00) != 0x500)
  {
    return 0;
  }

  v6 = *(v0 + 321);
  v7 = (v0 + 322);
  if (v1 >= 0.97 || (v8 = *(v0 + 273), v8 > 9) || ((1 << v8) & 0x244) == 0)
  {
    *&v40 = v1;
    *(&v40 + 1) = v3;
    *&v41 = v2;
    v21 = *(v0 + 312);
    *(&v41 + 1) = v4;
    *v42 = v21;
    v42[8] = *(v0 + 320);
    v42[9] = v6;
    *&v42[10] = *v7;
    *&v42[24] = *(v0 + 336);
    *&v42[40] = v5;
    sub_24EF7172C(&v40, v35);
    goto LABEL_11;
  }

  v9 = *(v0 + 328);
  v33[2] = *(v0 + 312);
  v34[0] = v9;
  *(v34 + 10) = *(v0 + 338);
  v10 = *(v0 + 296);
  v33[0] = *(v0 + 280);
  v33[1] = v10;
  *(v0 + 280) = 0x3FF0000000000000;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 321) = v6 & 1;
  *(v0 + 353) = 5;
  *v35 = v1;
  v35[1] = v3;
  v35[2] = v2;
  v36 = v44;
  v35[3] = v4;
  v35[4] = v43;
  v37 = v6;
  v11 = *v7;
  *&v38[14] = *(v0 + 336);
  *v38 = v11;
  v39 = v5;
  sub_24EF7172C(v35, &v40);
  sub_24E601704(v33, &qword_27F234EF8);
  v12 = objc_opt_self();
  if ([v12 disableActions])
  {
LABEL_11:

    return 0;
  }

  [v12 begin];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v13 = *(v0 + 148);
    v31 = *(v0 + 144);
    v32 = v13;
    v14 = *(v0 + 248);
    *v42 = *(v0 + 232);
    *&v42[16] = v14;
    *&v42[26] = *(v0 + 258);
    v15 = *(v0 + 216);
    v40 = *(v0 + 200);
    v41 = v15;
    v16 = *(v0 + 40);
    sub_24EF7172C(&v40, &aBlock);
    sub_24F0E15B8(&v40, v16, &aBlock);
    sub_24EF71698(&v40);
    v24 = aBlock;
    v25 = v27;
    (*(v22 + 64))(0, 0, &v31, &v24, v6 & 1, ObjectType, 1.0);
    swift_unknownObjectRelease();
    sub_24E97D004(v25, *(&v25 + 1));
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = 0x3FD6666666666666;
  *(v18 + 24) = v17;
  v29 = sub_24F0E8B80;
  v30 = v18;
  aBlock = MEMORY[0x277D85DD0];
  *&v27 = 1107296256;
  *(&v27 + 1) = sub_24EAF8248;
  v28 = &block_descriptor_21_0;
  v19 = _Block_copy(&aBlock);

  [v12 setCompletionBlock_];
  _Block_release(v19);
  [v12 commit];

  return 1;
}

unsigned __int8 *sub_24F0E15B8@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v12 = 0;
    v11 = 16;
    v13 = 3;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v4 = *(a2 + 240);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = result[73];
      if (v5 <= 9 && ((0x207u >> v5) & 1) != 0)
      {
        v6 = qword_24F9C8EB8[result[73]];
        v7 = a2;
        v8 = objc_opt_self();

        v9 = sub_24F92B588();
        LODWORD(v6) = [v8 isCapableOfAction:v6 capabilities:v9];

        a2 = v7;
        if (!v6)
        {
          v11 = *(v7 + 97);
          v13 = *(v7 + 104);
          v12 = *(v7 + 112);
          result = sub_24E9534EC(v13, v12);
          v10 = 5;
          goto LABEL_15;
        }
      }
    }
  }

  v10 = *(a2 + 96);
  v11 = *(a2 + 97);
  v13 = *(a2 + 104);
  v12 = *(a2 + 112);
  result = sub_24E9534EC(v13, v12);
  if (v10 == 7)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v11 == 16)
  {
    v11 = 0;
  }

  if (v13 == 3)
  {
    v13 = 0;
    v12 = 0;
  }

LABEL_15:
  *a3 = v10;
  *(a3 + 1) = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_24F0E16F4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(1);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v8 = *(v1 + 208);
    if (*(v1 + 121) == 1)
    {

      v9 = 0x800000024FA6BA60;
      v10 = 0xD00000000000001CLL;
      if (!v8)
      {
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(*&v10, v11)._countAndFlagsBits;
LABEL_13:
        v13 = countAndFlagsBits;

        return v13;
      }

LABEL_12:
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(*&v10)._countAndFlagsBits;
      goto LABEL_13;
    }

    v7 = 0x800000024FA6BA40;
    if (*(v1 + 208))
    {

      v10 = 0xD00000000000001CLL;
      v9 = 0x800000024FA6BA40;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0x800000024FA6BA40;
  }

  v14 = 0xD00000000000001CLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v15)._countAndFlagsBits;
}

uint64_t sub_24F0E1828()
{
  v1 = *(v0 + 40);
  if (v1)
  {

    v2 = sub_24F0E08BC();
    v4 = *(v1 + 224);
    if (v4)
    {
      if (v2 == *(v1 + 216) && v4 == v3)
      {

LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        *(inited + 32) = 0x6563697270;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = sub_24F0E08BC();
        *(inited + 56) = v9;
        v10 = sub_24E6086DC(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F219F90);
        v11._object = 0x800000024FA6BA80;
        v11._countAndFlagsBits = 0xD000000000000018;
        countAndFlagsBits = localizedString(_:with:)(v11, v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      v6 = sub_24F92CE08();

      if (v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  return sub_24F0E08BC();
}

uint64_t sub_24F0E19A4()
{
  v1 = *(v0 + 273);
  if (v1 == 11)
  {
    v2 = 1;
    return v2 & 1;
  }

  if (v1 != 8)
  {
    v3 = (v0 + 200);
    v4 = *(v0 + 40);
    if (v4)
    {
      if (*(v4 + 96) == 5)
      {
        if (qword_27F2105D0 != -1)
        {
          swift_once();
        }

        v5 = sub_24F92AAE8();
        __swift_project_value_buffer(v5, qword_27F22D7F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F928448();
LABEL_10:
        sub_24F9283A8();
        sub_24F92A588();

        v2 = 0;
        return v2 & 1;
      }

      v8 = *(v0 + 248);
      v19 = *(v0 + 232);
      *v20 = v8;
      *&v20[10] = *(v0 + 258);
      v9 = *(v0 + 216);
      v17 = *v3;
      v18 = v9;
      v10 = *(v4 + 240);
      if (v10)
      {
        if (*(v10 + 16))
        {
          if (v20[25] <= 9u && ((0x207u >> v20[25]) & 1) != 0)
          {
            v11 = qword_24F9C8EB8[v20[25]];
            v12 = objc_opt_self();
            sub_24EF7172C(&v17, &v16);

            v13 = sub_24F92B588();
            LODWORD(v11) = [v12 isCapableOfAction:v11 capabilities:v13];
            sub_24EF71698(&v17);

            if (!v11)
            {
              if (qword_27F2105D0 != -1)
              {
                swift_once();
              }

              v15 = sub_24F92AAE8();
              __swift_project_value_buffer(v15, qword_27F22D7F8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
              sub_24F928468();
              *(swift_allocObject() + 16) = xmmword_24F93A400;
              sub_24F928448();
              goto LABEL_10;
            }
          }
        }
      }
    }

    else
    {
      v6 = *(v0 + 248);
      v19 = *(v0 + 232);
      *v20 = v6;
      *&v20[10] = *(v0 + 258);
      v7 = *(v0 + 216);
      v17 = *v3;
      v18 = v7;
    }

    v2 = !sub_24F0E3824();
    return v2 & 1;
  }

  v2 = *(v0 + 159);
  return v2 & 1;
}

uint64_t sub_24F0E1D30(uint64_t a1)
{
  v20 = sub_24F927D88();
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DE8();
  v19 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_24E69A5C4(0, &qword_27F222300);
  v14 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v18 = *(v8 + 8);
  v18(v11, v7);
  aBlock[4] = sub_24F0E8B8C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_24_0;
  v15 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  v16 = v20;
  sub_24F92C6A8();
  MEMORY[0x253051820](v13, v6, v3, v15);
  _Block_release(v15);

  (*(v23 + 8))(v3, v16);
  (*(v21 + 8))(v6, v22);
  return (v18)(v13, v19);
}

uint64_t sub_24F0E20D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

unsigned __int8 *sub_24F0E2128@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (!v2[4])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
    v17 = 0uLL;
    v18 = -256;
    goto LABEL_44;
  }

  v5 = v2;
  v41 = *result;
  v6 = *(result + 1) | ((*(result + 5) | (result[7] << 16)) << 32);
  v35 = *(result + 2);
  v36 = *(result + 1);
  v34 = *(result + 3);
  v7 = *(result + 6);
  v38 = *(result + 5);
  v39 = *(result + 4);
  v37 = *(result + 7);
  v8 = v2[9];
  v9 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v8);
  v10 = *(v9 + 8);

  v11 = v10(v8, v9);
  v12 = v2[5];
  if (v12)
  {
    v13 = v12[120];
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v43[0]) = v41;
    *(v43 + 1) = v6;
    HIBYTE(v43[0]) = BYTE6(v6);
    *(v43 + 5) = WORD2(v6);
    v43[1] = v36;
    v43[2] = v35;
    v43[3] = v34;
    v43[4] = v39;
    v43[5] = v38;
    v43[6] = v7;
    v43[7] = v37;
    sub_24F0E257C(v43, v44);
    v18 = v48;
    if (HIBYTE(v48) <= 0xFEu)
    {
      v14 = v44[0];
      v15 = v44[1];
      v16 = v44[2];
      v5 = v44[3];
      v40 = v46;
      v42 = v45;
      v7 = v47;

      v4 = v40;
      v17 = v42;
      goto LABEL_44;
    }

    goto LABEL_8;
  }

  v13 = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  type metadata accessor for SelectAppAction();
  if (swift_dynamicCastClass())
  {
    v19 = v7 >> 60;
    if (v7 >> 60 == 1)
    {
      if (!v12 || (v41 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v12[122])
      {
        goto LABEL_41;
      }

      v29 = v12[16];
      if (v29 <= 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v19 != 4)
      {
        if (v19 == 8)
        {
          if ((v20 = v41 | (v6 << 8), v21 = v35 | v36 | v34, v7 == 0x8000000000000000) && !(v21 | v39 | v38 | v37 | v20) || v7 == 0x8000000000000000 && v20 == 4 && !(v21 | v39 | v38 | v37))
          {
            v14 = sub_24F0E08BC();
            v15 = v22;
            if ((v13 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_34:

            v16 = 0;
            v5 = 0;
LABEL_43:
            v18 = 2560;
            goto LABEL_44;
          }
        }

LABEL_33:
        v14 = sub_24F0E08BC();
        v15 = v30;
        goto LABEL_34;
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      v29 = v12[16];
      if (v29 <= 1)
      {
LABEL_38:
        v7 = sub_24F92CE08();

        v14 = sub_24F0E08BC();
        v15 = v31;
        if (v7)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    if (v29 == 2)
    {
      goto LABEL_38;
    }

LABEL_41:
    v14 = sub_24F0E08BC();
    v15 = v32;
LABEL_42:
    v16 = sub_24F0E0AA8();
    v5 = v33;

    goto LABEL_43;
  }

  type metadata accessor for UnhideAppAction();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden;
    v25 = v23;
    swift_beginAccess();
    if (*(v25 + v24) == 1)
    {
      v14 = sub_24F0E08BC();
      v15 = v26;
      v16 = sub_24F0E0AA8();
      v5 = v27;

      v7 = 0;
      v18 = 0;
      v17 = xmmword_24F9406F0;
LABEL_36:
      v4 = 0uLL;
      goto LABEL_44;
    }
  }

  if ((sub_24F0E26CC(v5[16], v5[17]) & 1) == 0)
  {

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
    v17 = 0uLL;
    v18 = -256;
    goto LABEL_36;
  }

  v16 = v5;
  v14 = sub_24F0E2828();
  v15 = v28;

  v18 = 2304;
LABEL_44:
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v5;
  *(a2 + 32) = v17;
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  *(a2 + 72) = v18;
  return result;
}

uint64_t sub_24F0E257C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  if (v4 >> 60 == 3)
  {
    goto LABEL_10;
  }

  if (v4 >> 60 != 8)
  {
    result = 0;
    object = 0;
    v13 = 0;
    v11 = -256;
    goto LABEL_16;
  }

  v5 = a1[4];
  v6 = *a1;
  v7 = a1[5] | a1[7];
  v8 = a1[3] | a1[2] | a1[1];
  if (v4 == 0x8000000000000000 && (v7 | *a1 | v5 | v8) == 0)
  {
    goto LABEL_10;
  }

  result = 0;
  v11 = -256;
  if (v4 != 0x8000000000000000 || v6 != 4)
  {
    object = 0;
    v13 = 0;
    goto LABEL_16;
  }

  object = 0;
  v13 = 0;
  if (!(v7 | v5 | v8))
  {
LABEL_10:
    v14 = *(v2 + 40);
    if (v14 && *(v14 + 208) == 1)
    {

      v15._object = 0x800000024FA500B0;
      v15._countAndFlagsBits = 0xD000000000000016;
      v16 = localizedStringForAdsLanguage(_:)(v15);

      object = v16._object;
      result = v16._countAndFlagsBits;
    }

    else
    {
      v17._object = 0x800000024FA500B0;
      v17._countAndFlagsBits = 0xD000000000000016;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = localizedString(_:comment:)(v17, v18);
      object = v19._object;
      result = v19._countAndFlagsBits;
    }

    v11 = 0;
    v13 = 1;
  }

LABEL_16:
  *a2 = result;
  *(a2 + 8) = object;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_24F0E26CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 124) != 1)
  {
    return 0;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v8 = *(v3 + 40);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v9 = sub_24F3E5298(v8, v4, 0);
  v10 = [v9 isPlaceholder];

  if (v10)
  {
    return 0;
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(v14, *(v5 + 157), ObjectType, a2);
    v12 = v15 >> 60;
    if ((v15 >> 60) > 4)
    {
      if (v12 != 6 && v12 != 5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      if (v12 != 4)
      {
LABEL_14:
        sub_24E88D2AC(v14);
        return 1;
      }
    }

    sub_24E88D2AC(v14);
    return 0;
  }

  return 1;
}

uint64_t sub_24F0E2828()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v7 = 0x800000024FA5BA00;
LABEL_6:
    v8 = 0xD000000000000016;
    goto LABEL_17;
  }

  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {

    v3 = sub_24E76DB58(4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  if (*(v1 + 16) > 2u)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      v7 = 0x800000024FA5BA00;
      if (*(v1 + 208) == 1)
      {

        v10 = 0xD000000000000016;
        v11 = 0x800000024FA5BA00;
LABEL_15:
        countAndFlagsBits = localizedStringForAdsLanguage(_:)(*&v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      goto LABEL_6;
    }
  }

  if (*(v1 + 208) == 1)
  {

    v10 = 0xD00000000000001DLL;
    v11 = 0x800000024FA5BA20;
    goto LABEL_15;
  }

  v8 = 0xD00000000000001DLL;
  v7 = 0x800000024FA5BA20;
LABEL_17:
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v13)._countAndFlagsBits;
}

unint64_t sub_24F0E2A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v69, *(v4 + 157), ObjectType, a2);
  v10 = *(v4 + 40);
  if (v10)
  {
    v11 = *(v10 + 123);
    v12 = *(v10 + 120) ^ 1 | v11;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  v64[0] = v69;
  v64[1] = v70;
  v64[2] = v71;
  v64[3] = v72;
  result = sub_24F0E2128(v64, v65);
  LODWORD(v14) = HIBYTE(v68);
  if (v14 <= 0xFE)
  {
    a3 = v67;
    v63 = v66;
    v10 = v65[4];
    v22 = v65[5];
    v25 = v65[2];
    a2 = v65[3];
    v21 = v68;
    v15 = v65[0];
    a1 = v65[1];
    result = sub_24E88D2AC(&v69);
    v20 = v63;
    v19 = v25;
    v11 = v15 >> 8;
    v23 = v22 >> 8;
    v24 = v22 & 0xFFFFFFFFFFFF0000;
    goto LABEL_11;
  }

  LOBYTE(v15) = v69;
  v16 = *(&v72 + 5) | (BYTE7(v72) << 16);
  v17 = v16 >> 20;
  if (v16 >> 20 <= 3)
  {
    if (v16 >> 20 > 1)
    {
      if (v17 == 2)
      {
        v15 = sub_24F0E337C();
        a1 = v26;
        result = sub_24E88D2AC(&v69);
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v11 = v15 >> 8;
        LOBYTE(v14) = 2;
        goto LABEL_11;
      }

      if (v11)
      {
        v40 = sub_24F0E36E4(6);
LABEL_30:
        v15 = v40;
        a1 = v41;
        v45 = sub_24F0E0AA8();
        a2 = v46;
        result = sub_24E88D2AC(&v69);
        v19 = v45;
LABEL_31:
        v10 = 0;
        a3 = 0;
        v21 = 0;
        LOBYTE(v14) = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v11 = v15 >> 8;
        v20 = 0uLL;
        LOBYTE(v22) = 1;
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    if (!v17)
    {
      result = sub_24F0E30C8(a1, a2, a3, 2u);
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      LOBYTE(v15) = result & 1;
      LOBYTE(v14) = 3;
      goto LABEL_11;
    }

    if ((v69 & 1) == 0)
    {
      result = sub_24F0E3474();
      a1 = v52;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = result >> 8;
      LOBYTE(v14) = 7;
      goto LABEL_40;
    }

    if (v10)
    {
      if (*(v10 + 122) == 1)
      {
        v15 = sub_24F0E356C();
        a1 = v38;
        result = sub_24F0E0AA8();
        v19 = result;
        a2 = v39;
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v11 = v15 >> 8;
        LOBYTE(v14) = 8;
        goto LABEL_11;
      }

      if (*(v10 + 16) <= 1u || *(v10 + 16) == 2)
      {
        v56 = sub_24F92CE08();

        if ((v56 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      v15 = sub_24F0E08BC();
      a1 = v57;
      result = sub_24F0E0AA8();
      v19 = result;
      a2 = v58;
      goto LABEL_31;
    }

LABEL_55:
    result = sub_24F0E30C8(a1, a2, a3, 0);
    v19 = 0;
    a2 = 0;
    v10 = 0;
    v21 = 0;
    LOBYTE(v22) = 0;
    v24 = 0;
    LOBYTE(v15) = 0;
    v11 = 0;
    LOBYTE(v23) = result & 1;
    goto LABEL_56;
  }

  v11 = *(&v69 + 1) | ((*(&v69 + 5) | (BYTE7(v69) << 16)) << 32);
  v14 = v70;
  v62 = *(&v71 + 1);
  v10 = v72;
  if (v16 >> 20 > 5)
  {
    if (v17 == 6)
    {
      v22 = v71;
      v59 = *(&v70 + 1);
      v33 = v71;
      v60 = v14;
      v34 = v14;
      v35 = v59;
      v36 = a2;
      a2 = v22;
      v37 = sub_24F0E30C8(a1, v36, a3, 2u);
      result = sub_24E88D2AC(&v69);
      v19 = v59;
      a1 = v60;
      v21 = 0;
      v24 = 0;
      LOBYTE(v22) = v10 & 1;
      LOBYTE(v23) = v37 & 1;
      LOBYTE(v14) = 5;
      v10 = v62;
      goto LABEL_11;
    }

    if (v17 == 7)
    {
      v15 = sub_24F0E2828();
      a1 = v18;
      result = sub_24E88D2AC(&v69);
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = v15 >> 8;
      LOBYTE(v14) = 9;
      goto LABEL_11;
    }

    v42 = v69 | (v11 << 8);
    v43 = v72 | ((*(&v72 + 1) | ((*&v16 & 0xFFFFFFLL) << 32)) << 8);
    v24 = *(&v72 + 1);
    v44 = v70 | *(&v69 + 1) | *(&v70 + 1);
    if (v43 == 0x8000000000000000 && !(v44 | v71 | *(&v71 + 1) | *(&v72 + 1) | v42))
    {
LABEL_28:
      if (v12)
      {
        v40 = sub_24F0E08BC();
        goto LABEL_30;
      }

LABEL_33:
      v51 = sub_24F0E30C8(a1, a2, a3, 2u);
      result = sub_24E88D2AC(&v69);
      v19 = 0;
      a2 = 0;
      v10 = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      v24 = 0;
      LOBYTE(v15) = 0;
      v11 = 0;
      LOBYTE(v23) = v51 & 1;
LABEL_56:
      a1 = 1;
      LOBYTE(v14) = 1;
      goto LABEL_11;
    }

    v53 = v44 | v71 | *(&v71 + 1);
    if (v42 != 1 || v53 || v43 != 0x8000000000000000 || *(&v72 + 1))
    {
      if (v42 == 2 && !v53 && v43 == 0x8000000000000000 && !*(&v72 + 1))
      {
        a1 = 0;
        v19 = 0;
        a2 = 0;
        v10 = 0;
        a3 = 0;
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        LOBYTE(v15) = 0;
        v11 = 0;
        v20 = 0uLL;
        LOBYTE(v14) = 12;
        goto LABEL_11;
      }

      if (v42 != 3 || v53 || v43 != 0x8000000000000000 || *(&v72 + 1))
      {
        goto LABEL_28;
      }

      result = sub_24F0E36E4(12);
      a1 = v55;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = result >> 8;
      LOBYTE(v14) = 11;
    }

    else
    {
      result = sub_24F0E3284();
      a1 = v54;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = result >> 8;
      LOBYTE(v14) = 6;
    }

LABEL_40:
    LOBYTE(v15) = result;
    goto LABEL_11;
  }

  if (v17 == 4)
  {
    LOBYTE(v22) = v72 & 1;
    v27 = v71;
    v28 = v71;
    v29 = v14;
    v30 = a1;
    a1 = v14;
    v31 = a2;
    a2 = v27;
    v32 = sub_24F0E30C8(v30, v31, a3, 2u);
    result = sub_24E88D2AC(&v69);
    v19 = 0;
    v21 = 0;
    v24 = 0;
    LOBYTE(v23) = v32 & 1;
    LOBYTE(v14) = 1;
    v10 = v62;
  }

  else
  {
    v22 = v71;
    v47 = v71;
    v61 = v14;
    v48 = v14;
    v49 = a2;
    a2 = v22;
    v50 = sub_24F0E30C8(a1, v49, a3, 2u);
    result = sub_24E88D2AC(&v69);
    v19 = 0;
    v21 = 0;
    v24 = 0;
    LOBYTE(v22) = v10 & 1;
    a1 = v61;
    v10 = v62;
    LOBYTE(v23) = v50 & 1;
    LOBYTE(v14) = 4;
  }

LABEL_11:
  *a4 = v15 | (v11 << 8);
  *(a4 + 8) = a1;
  *(a4 + 16) = v19;
  *(a4 + 24) = a2;
  *(a4 + 32) = v10;
  *(a4 + 40) = v24 | v22 | (v23 << 8);
  *(a4 + 48) = v20;
  *(a4 + 64) = a3;
  *(a4 + 72) = v21;
  *(a4 + 73) = v14;
  return result;
}

uint64_t sub_24F0E30C8(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (*(v4 + 156) != 1)
  {
    goto LABEL_10;
  }

  v19 = v4;
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 56);
  if (v8(ObjectType, a2))
  {
    v9 = swift_getObjectType();
    (*(a2 + 8))(&v22, ObjectType, a2);
    v20 = v22;
    v21 = v23;
    v10.underlyingAdamID._countAndFlagsBits = &v20;
    v10.underlyingAdamID._object = v9;
    v11 = AppStateController.isLocalApplication(for:)(v10);
    swift_unknownObjectRelease();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (a3 == 2)
  {
    v12 = *(v19 + 40);
    if (v12 && (*(v12 + 120) & 1) != 0 || v8(ObjectType, a2) && (v14 = v13, v15 = swift_getObjectType(), (*(a2 + 8))(&v22, ObjectType, a2), v20 = v22, v21 = v23, v16 = (*(v14 + 96))(&v20, a4, v15, v14), swift_unknownObjectRelease(), , (v16 & 1) != 0))
    {
      a3 = 1;
      return a3 & 1;
    }

LABEL_10:
    a3 = 0;
  }

  return a3 & 1;
}

uint64_t sub_24F0E3284()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(8);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x800000024FA651F0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD00000000000001CLL;
      v8._object = 0x800000024FA651F0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x800000024FA651F0;
  }

  v10 = 0xD00000000000001CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_24F0E337C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(5);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x800000024FA5BAA0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x800000024FA5BAA0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x800000024FA5BAA0;
  }

  v10 = 0xD000000000000018;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_24F0E3474()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(7);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x800000024FA5BA60;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD00000000000001BLL;
      v8._object = 0x800000024FA5BA60;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x800000024FA5BA60;
  }

  v10 = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_24F0E356C()
{
  result = 0x6C69662E6C6C6562;
  v2 = *(v0 + 40);
  if (v2 && *(v2 + 122) == 1)
  {
    if (*(v2 + 16) > 1u)
    {
      if (*(v2 + 16) != 2)
      {

        goto LABEL_12;
      }

      v3 = 0x6C69662E6C6C6562;
    }

    else
    {
      v3 = 0x6C69662E6C6C6562;
    }

    v4 = sub_24F92CE08();

    if ((v4 & 1) == 0)
    {
      v5 = *(v2 + 80);
      if (!*(v5 + 16))
      {
        return v3;
      }

      v6 = sub_24E76DB58(0);
      if ((v7 & 1) == 0)
      {
LABEL_15:

        return v3;
      }

LABEL_14:
      v3 = *(*(v5 + 56) + 16 * v6);

      goto LABEL_15;
    }

LABEL_12:
    result = 0x72616D6B63656863;
    v5 = *(v2 + 80);
    if (!*(v5 + 16))
    {
      return result;
    }

    v3 = 0x72616D6B63656863;

    v6 = sub_24E76DB58(15);
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_24F0E36E4(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 72);
    if (*(v3 + 16))
    {

      v5 = sub_24E76DB58(a1);
      if (v6)
      {
        v7 = *(*(v3 + 56) + 16 * v5);

        return v7;
      }
    }
  }

  return sub_24F0E08BC();
}

void sub_24F0E3770(_OWORD *a1)
{
  v3 = *(v1 + 328);
  v9[2] = *(v1 + 312);
  v10[0] = v3;
  *(v10 + 10) = *(v1 + 338);
  v4 = *(v1 + 296);
  v9[0] = *(v1 + 280);
  v9[1] = v4;
  v5 = a1[3];
  *(v1 + 312) = a1[2];
  *(v1 + 328) = v5;
  *(v1 + 338) = *(a1 + 58);
  v6 = a1[1];
  *(v1 + 280) = *a1;
  *(v1 + 296) = v6;
  sub_24E601704(v9, &qword_27F234EF8);
  if (*(v1 + 273))
  {
    v7 = *(v1 + 158);
    *(v1 + 158) = 0;
    sub_24EF7172C(a1, v8);
    sub_24F0E0324(v7);
  }

  else
  {
    sub_24EF7172C(a1, v8);
  }

  _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

BOOL sub_24F0E3824()
{
  if (*(v0 + 273) >= 3u)
  {
    v1 = 3;
  }

  else
  {
    v1 = *(v0 + 273);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v5[0] = v1;
  v2 = RestrictionsProtocol.doesAllow(_:properties:)(v5, *(v0 + 40));
  if (v2)
  {
    if (qword_27F2105D0 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F22D7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F928448();
    v6 = &type metadata for RestrictionsCheckIntent;
    v5[0] = v1;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F92A588();
  }

  return !v2;
}

void sub_24F0E3A20(unint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 216);
  v6 = *(v1 + 248);
  v55[2] = *(v1 + 232);
  v56[0] = v6;
  *(v56 + 10) = *(v1 + 258);
  v55[0] = *(v1 + 200);
  v55[1] = v5;
  v7 = *(v1 + 40);
  sub_24EF7172C(v55, &v52);
  sub_24F0E15B8(v55, v7, &v52);
  sub_24EF71698(v55);
  v8 = *(v2 + 32);
  if (!v8 || v52 == 5)
  {
    sub_24E97D004(v53, v54);
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v50 = v53;
  v51 = v54;
  Strong = *(v2 + 128);
  v9 = *(v2 + 136);

  if (sub_24F0E26CC(Strong, v9))
  {
    type metadata accessor for OfferStateAction();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      type metadata accessor for CompoundAction();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions);
        v48 = v8;
        v49 = a1;
        v46 = v9;
        v47 = Strong;
        if (v14 >> 62)
        {
LABEL_135:
          v15 = sub_24F92C738();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15)
        {
          v16 = 0;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              MEMORY[0x253052270](v16, v14);
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_133;
              }

              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            v18 = swift_dynamicCastClass();
            if (v18)
            {
              break;
            }

            ++v16;
            if (v17 == v15)
            {
              goto LABEL_21;
            }
          }

          v12 = v18;
        }

        else
        {
LABEL_21:

          v12 = 0;
        }

        v8 = v48;
        a1 = v49;
        v9 = v46;
        Strong = v47;
      }

      else
      {
        v12 = 0;
      }
    }

    if (sub_24F0E3824())
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v19 = v12;
      v20 = *(v12 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction);
      if (v20)
      {
        *a1 = v20;
        if (Strong)
        {
          ObjectType = swift_getObjectType();

          swift_unknownObjectRetain();

          sub_24E97D004(v50, v51);
        }

        else
        {

          sub_24E97D004(v50, v51);
          ObjectType = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        *(a1 + 8) = Strong;
        *(a1 + 32) = ObjectType;
        goto LABEL_70;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v19 = v12;
    }

    v22 = *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction);
    if (v22)
    {
      type metadata accessor for SheetAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v23 = swift_getObjectType();
LABEL_67:

          sub_24E97D004(v50, v51);
          *a1 = v22;
          *(a1 + 8) = Strong;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = v23;
LABEL_70:
          *(a1 + 40) = 2;
          return;
        }
      }

      else if (Strong)
      {
        v23 = swift_getObjectType();
        swift_unknownObjectRetain();
        goto LABEL_67;
      }

      v23 = 0;
      goto LABEL_67;
    }
  }

LABEL_37:
  v24 = *(v2 + 273);
  if (v24 <= 5)
  {
    if (v24 - 1 >= 4)
    {
      if (*(v2 + 273))
      {
        goto LABEL_116;
      }

      type metadata accessor for OfferConfirmationAction();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        if (*(v2 + 158) == 1)
        {
          v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction);
          if (Strong)
          {
            v4 = swift_getObjectType();
            swift_unknownObjectRetain();

            v33 = 0;
          }

          else
          {

            v33 = 0;
            v4 = 0;
          }
        }

        else
        {
          v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction);

          v33 = 1;
          Strong = v2;
        }

        sub_24E97D004(v50, v51);
        v8 = v32;
        goto LABEL_145;
      }

      goto LABEL_139;
    }

    goto LABEL_45;
  }

  if (*(v2 + 273) > 9u)
  {
    if (v24 == 10)
    {
      goto LABEL_139;
    }

    if (v24 != 11)
    {
      goto LABEL_116;
    }

LABEL_45:
    type metadata accessor for OfferConfirmationAction();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v26 = *(v27 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction);
      if (Strong)
      {
        v4 = swift_getObjectType();
        swift_unknownObjectRetain();
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_62;
    }

    type metadata accessor for OfferStateAction();
    if (swift_dynamicCastClass() && Strong)
    {

      v28 = swift_unknownObjectRetain();
      OfferStateAction.preferredAction(for:)(v28, v9);
      type metadata accessor for SheetAction();
      if (swift_dynamicCastClass())
      {

        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v4 = swift_getObjectType();

          swift_unknownObjectRelease();
LABEL_101:
          sub_24E97D004(v50, v51);
          v33 = 2;
          Strong = v30;
          goto LABEL_145;
        }

        swift_unknownObjectRelease();
        goto LABEL_127;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for CompoundAction();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v47 = Strong;
      v35 = *(v34 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions);
      v52 = MEMORY[0x277D84F90];
      if (v35 >> 62)
      {
        v14 = sub_24F92C738();
      }

      else
      {
        v14 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v8;
      v49 = a1;

      if (v14)
      {
        v36 = 0;
        v4 = v35 & 0xC000000000000001;
        v37 = MEMORY[0x277D84F90];
        v46 = v9;
        while (2)
        {
          v38 = v36;
          while (1)
          {
            if (v4)
            {
              MEMORY[0x253052270](v38, v35);
              v36 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_131;
              }
            }

            else
            {
              if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_132;
              }

              v36 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }
            }

            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v38;
            if (v36 == v14)
            {
              v9 = v46;
              goto LABEL_92;
            }
          }

          MEMORY[0x253050F00]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v37 = v52;
          v9 = v46;
          if (v36 != v14)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }

LABEL_92:
      v39 = v37;
      if (v37 >> 62)
      {
        v8 = v48;
        a1 = v49;
        if (sub_24F92C738())
        {
          goto LABEL_94;
        }
      }

      else
      {
        v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = v48;
        a1 = v49;
        if (v40)
        {
LABEL_94:
          if ((v39 & 0xC000000000000001) != 0)
          {
            MEMORY[0x253052270](0, v39);
          }

          else
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_148;
            }
          }

          if (!Strong)
          {

LABEL_120:

LABEL_142:
            sub_24E97D004(v50, v51);
            goto LABEL_143;
          }

          v41 = swift_unknownObjectRetain();
          OfferStateAction.preferredAction(for:)(v41, v9);
          type metadata accessor for SheetAction();
          if (swift_dynamicCastClass())
          {

            swift_beginAccess();
            v42 = swift_unknownObjectWeakLoadStrong();
            if (v42)
            {
              v30 = v42;
              v4 = swift_getObjectType();

              swift_unknownObjectRelease();

              goto LABEL_101;
            }

            swift_unknownObjectRelease();

LABEL_127:
            sub_24E97D004(v50, v51);
            Strong = 0;
LABEL_143:
            v4 = 0;
            goto LABEL_144;
          }

          swift_unknownObjectRelease();

LABEL_140:
          v4 = swift_getObjectType();
          swift_unknownObjectRetain();
          goto LABEL_141;
        }
      }
    }

LABEL_139:
    if (!Strong)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (v24 - 6 < 2 || v24 != 8)
  {
    goto LABEL_45;
  }

  type metadata accessor for OfferStateAction();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    type metadata accessor for CompoundAction();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v14 = *(v43 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions);
      v49 = a1;
      if (!(v14 >> 62))
      {
        v44 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_105;
      }

LABEL_148:
      v44 = sub_24F92C738();
LABEL_105:

      if (!v44)
      {
LABEL_123:

        sub_24E97D004(v50, v51);

        Strong = 0;
        v8 = 0;
        v4 = 0;
        v33 = 0;
        a1 = v49;
        goto LABEL_145;
      }

      v45 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](v45, v14);
          a1 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v45 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_134;
          }

          v4 = *(v14 + 8 * v45 + 32);

          a1 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }
        }

        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v45;
        if (a1 == v44)
        {
          goto LABEL_123;
        }
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v49;
      if (Strong)
      {
        v4 = swift_getObjectType();

LABEL_141:
        sub_24E97D004(v50, v51);
LABEL_144:
        v33 = 2;
        goto LABEL_145;
      }

      goto LABEL_120;
    }

LABEL_116:

    sub_24E97D004(v50, v51);
    Strong = 0;
    v8 = 0;
    v4 = 0;
    v33 = 0;
    goto LABEL_145;
  }

  v26 = *(v25 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_24E97D004(v50, v51);
    v4 = 0;
    goto LABEL_63;
  }

  v4 = swift_getObjectType();
LABEL_62:

  sub_24E97D004(v50, v51);
LABEL_63:
  v33 = 2;
  v8 = v26;
LABEL_145:
  *a1 = v8;
  *(a1 + 8) = Strong;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = v33;
}

uint64_t sub_24F0E4550()
{
  v1 = v0;
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_24F927E88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  sub_24F0E3A20(&v61);
  if (v61)
  {
    v55 = v61;
    v56[0] = *v62;
    *(v56 + 9) = *&v62[9];
    v13 = *(v0 + 40);
    if (v13)
    {
      v14 = *(v13 + 32);
      v49 = *(v13 + 24);
      v15 = qword_27F210FF8;
      v50 = v14;
      v51 = v1;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v6, qword_27F23C300);
      v17 = *(v7 + 16);
      v17(v12, v16, v6);
      v18 = sub_24F92B858();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      v17(v9, v12, v6);
      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      (*(v7 + 32))(v21 + v19, v9, v6);
      v22 = (v21 + v20);
      v23 = v50;
      *v22 = v49;
      v22[1] = v23;
      sub_24F1F2908(0, 0, v5, &unk_24FA0A150, v21);

      sub_24E601704(v5, &unk_27F21B570);
      (*(v7 + 8))(v12, v6);
      v1 = v51;
    }

    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v24 = sub_24F92AAE8();
    __swift_project_value_buffer(v24, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v25 = sub_24F0E89A4(&v55, &v61);
    v26 = (*(*v61 + 192))(v25);
    v28 = v27;

    *(&v58 + 1) = MEMORY[0x277D837D0];
    *&v57 = v26;
    *(&v57 + 1) = v28;
    sub_24F9283D8();
    sub_24E601704(&v57, &qword_27F2129B0);
    sub_24E601704(&v61 + 8, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = v1;
      v30 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 8);
      v1 = v29;
      (*(v32 + 8))(v55, &v55 + 8, ObjectType);
      swift_unknownObjectRelease();
    }

    sub_24F0E89A4(&v55, &v61);

    v33 = v62[24];
    sub_24E601704(&v61 + 8, &qword_27F2129B0);
    if (v33 == 2)
    {
      return sub_24E601704(&v55, &qword_27F2393D8);
    }

    v34 = *(v1 + 158);
    *(v1 + 158) = v33 & 1;
    sub_24F0E0324(v34);
    if (*(v1 + 158) == 1)
    {
      _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
      return sub_24E601704(&v55, &qword_27F2393D8);
    }

    if (!*(v1 + 128))
    {
      return sub_24E601704(&v55, &qword_27F2393D8);
    }

    v37 = *(v1 + 136);
    v38 = (v1 + 200);
    v39 = *(v1 + 273);
    v40 = *(v1 + 241);
    if ((v39 - 4) >= 2 && v39 != 1)
    {
      if (v39 != 3)
      {
        v41 = 2;
        goto LABEL_22;
      }

      v40 = *v38;
    }

    v41 = v40 & 1;
LABEL_22:
    v42 = swift_unknownObjectRetain();
    sub_24F0E2A04(v42, v37, v41, &v57);
    v43 = *(v1 + 248);
    *&v62[16] = *(v1 + 232);
    v63[0] = v43;
    *(v63 + 10) = *(v1 + 258);
    v44 = *(v1 + 216);
    v61 = *v38;
    *v62 = v44;
    v53[2] = *&v62[16];
    v54[0] = v43;
    *(v54 + 10) = *(v63 + 10);
    v53[0] = v61;
    v53[1] = v44;
    *(v1 + 258) = *(v60 + 10);
    v45 = v57;
    v46 = v58;
    v47 = v60[0];
    *(v1 + 232) = v59;
    *(v1 + 248) = v47;
    *v38 = v45;
    *(v1 + 216) = v46;
    sub_24EF7172C(&v61, v52);
    sub_24EF7172C(&v57, v52);
    sub_24EF71698(v53);
    sub_24F0E3770(&v61);
    sub_24EF71698(&v61);
    sub_24EF71698(&v57);
    swift_unknownObjectRelease();
    return sub_24E601704(&v55, &qword_27F2393D8);
  }

  sub_24E601704(&v61, &qword_27F233748);
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v35 = sub_24F92AAE8();
  __swift_project_value_buffer(v35, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();
}

uint64_t sub_24F0E4E78(uint64_t a1, uint64_t a2)
{
  sub_24F0E8528(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_24F0E4EB4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24F0E4F4C;
}

void sub_24F0E4F4C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_24F0E8528(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F0E8528(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

uint64_t sub_24F0E4FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v92 = a5;
  v88 = a4;
  v90 = a3;
  v91 = a1;
  v86 = a11;
  v85 = a10;
  v84 = a9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233758);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v80 - v18;
  v98[3] = a13;
  v98[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
  v20 = *(*(a13 - 8) + 32);
  v80[0] = boxed_opaque_existential_1;
  v80[1] = a13;
  v20(boxed_opaque_existential_1, a6, a13);
  v21 = *a7;
  v22 = a7[1];
  v23 = a7[2];
  v24 = a7[3];
  v25 = a7[4];
  v26 = a7[5];
  v27 = *a8 | (*(a8 + 2) << 32);
  *(a12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a12 + 158) = 0;
  *(a12 + 160) = [objc_opt_self() defaultCenter];
  *(a12 + 168) = 0u;
  v87 = a12 + 168;
  *(a12 + 184) = 0u;
  *(a12 + 280) = 0u;
  *(a12 + 296) = 0u;
  *(a12 + 312) = 0u;
  *(a12 + 328) = 0u;
  *(a12 + 344) = 0;
  *(a12 + 352) = -256;
  *(a12 + 354) = 0;
  *(a12 + 200) = 0;
  *(a12 + 273) = 3;
  v89 = a2;
  *(a12 + 32) = a2;
  v28 = v91;
  *(a12 + 40) = v91;
  *(a12 + 150) = v21;
  *(a12 + 151) = v22;
  *(a12 + 152) = v23;
  *(a12 + 153) = v24;
  *(a12 + 154) = v25;
  *(a12 + 155) = v26;
  if (v27 == 3)
  {
    v93[0] = v21;
    v93[1] = v22;
    v93[2] = v23;
    v93[3] = v24;
    v93[4] = v25;
    v93[5] = v26;
    sub_24E9536D8(v93, &aBlock, 0);
    LOBYTE(v27) = aBlock;
    v29.i32[0] = *(&aBlock + 1);
    v30 = vmovl_u8(v29).u64[0];
    LOBYTE(v31) = BYTE5(aBlock);
  }

  else
  {
    v32 = vdupq_n_s64(v27);
    v30 = vmovn_s32(vuzp1q_s32(vshlq_u64(v32, xmmword_24F99A2D0), vshlq_u64(v32, xmmword_24F99A2C0)));
    v31 = v27 >> 40;
  }

  *(a12 + 144) = v27;
  *(a12 + 145) = vuzp1_s8(v30, v30).u32[0];
  *(a12 + 149) = v31;
  *(a12 + 156) = v84 & 1;
  v33 = v92;
  sub_24E615E00(v92, a12 + 48);
  sub_24E615E00(v98, a12 + 88);
  *(a12 + 159) = v85 & 1;
  *(a12 + 157) = v86 & 1;
  v34 = v88;
  if (v28)
  {
    ObjectType = swift_getObjectType();
    v36 = *(v28 + 32);
    *&aBlock = *(v28 + 24);
    *(&aBlock + 1) = v36;
    v37 = *(v34 + 56);

    swift_retain_n();
    v38 = v37(&aBlock, ObjectType, v34);
    v40 = v39;

    *(a12 + 128) = v38;
    *(a12 + 136) = v40;
    v41 = swift_getObjectType();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = *(v40 + 72);

    v43(a12, sub_24EEFE270, v42, v41, v40);
    v28 = v91;
    v33 = v92;

    v44 = *(v28 + 64);
    if (v44)
    {
      *&aBlock = *(v28 + 56);
      *(&aBlock + 1) = v44;

      v37(&aBlock, ObjectType, v88);
      v46 = v45;

      v47 = swift_getObjectType();
      (*(v46 + 16))(&aBlock, v47, v46);
      if (*&v97[0] >> 60)
      {
        if (*&v97[0] >> 60 != 8)
        {
LABEL_13:
          sub_24E88D2AC(&aBlock);
LABEL_23:
          LOBYTE(v50) = 1;
          goto LABEL_24;
        }

        v48 = *(&v96 + 1) | *(&v97[0] + 1);
        v49 = *(&v95 + 1) | v95 | *(&aBlock + 1);
        if (*&v97[0] != 0x8000000000000000 || v48 | aBlock | v96 | v49)
        {
          if (*&v97[0] == 0x8000000000000000 && aBlock == 4)
          {
            v50 = v48 | v96 | v49;
            if (!v50)
            {
LABEL_24:
              *(a12 + 354) = v50;
              v78 = swift_allocObject();
              swift_weakInit();
              v79 = *(v46 + 72);

              v79(a12, sub_24EEFE348, v78, v47, v46);
              swift_unknownObjectRelease();

              v28 = v91;
              v33 = v92;
              v58 = *(a12 + 128);
              if (!v58)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }
          }

          goto LABEL_13;
        }
      }

      else if (aBlock != 1)
      {
        goto LABEL_23;
      }

      LOBYTE(v50) = 0;
      goto LABEL_24;
    }
  }

  else
  {
    *(a12 + 128) = 0;
    *(a12 + 136) = 0;

    v51 = sub_24F0E08BC();
    v53 = v52;
    v54 = sub_24F0E0AA8();
    v55 = *(a12 + 248);
    v96 = *(a12 + 232);
    v97[0] = v55;
    *(v97 + 10) = *(a12 + 258);
    v56 = *(a12 + 216);
    aBlock = *(a12 + 200);
    v95 = v56;
    *(a12 + 200) = v51;
    *(a12 + 208) = v53;
    *(a12 + 216) = v54;
    *(a12 + 224) = v57;
    *(a12 + 232) = xmmword_24F9406F0;
    *(a12 + 248) = 0;
    *(a12 + 256) = 0;
    *(a12 + 264) = 0;
    *(a12 + 272) = 0;
    sub_24EF71698(&aBlock);
  }

  v58 = *(a12 + 128);
  if (v58)
  {
LABEL_16:
    v59 = *(a12 + 136);
    v60 = swift_unknownObjectRetain();
    sub_24F0E06F0(v60, v59, 2);
    v61 = v33[3];
    v62 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v61);
    (*(v62 + 16))(v61, v62);
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    v64[2] = v63;
    v64[3] = v58;
    v64[4] = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08);
    sub_24E602068(&qword_27F233760, &qword_27F22DE08);
    swift_unknownObjectRetain();
    sub_24F9288B8();
    v65 = v81;
    sub_24F9288D8();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*(v82 + 8))(v65, v83);
  }

LABEL_17:
  if (v28 && (*(v28 + 136) & 1) == 0)
  {
    v66 = *(a12 + 160);

    v67 = sub_24F92B098();
    [v66 addObserver:a12 selector:sel_isEnabledDidChange_ name:v67 object:sub_24F92CDE8()];

    swift_unknownObjectRelease();
  }

  v68 = *(a12 + 160);
  v69 = *MEMORY[0x277CEC2F0];
  v70 = objc_opt_self();
  v71 = v68;
  v72 = [v70 mainQueue];
  v73 = swift_allocObject();
  swift_weakInit();
  *&v96 = sub_24EEFE278;
  *(&v96 + 1) = v73;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v95 = sub_24EEFA694;
  *(&v95 + 1) = &block_descriptor_114;
  v74 = _Block_copy(&aBlock);

  v75 = [v71 addObserverForName:v69 object:0 queue:v72 usingBlock:v74];
  _Block_release(v74);

  *(&v95 + 1) = swift_getObjectType();
  swift_unknownObjectRelease();

  *&aBlock = v75;
  __swift_destroy_boxed_opaque_existential_1(v98);
  v76 = v87;
  swift_beginAccess();
  sub_24E8E7708(&aBlock, v76);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return a12;
}

uint64_t sub_24F0E59AC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *a1;
  v10 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v15 = a1[40];
  v16 = a1[41];
  v17 = *(a1 + 6);
  v18 = *(a1 + 7);
  v19 = *(a1 + 8);
  v20 = a1[72];
  switch(a1[73])
  {
    case 1u:
      if (*(a2 + 73) != 1)
      {
        goto LABEL_67;
      }

      v32 = v9 | (v10 << 8);
      v33 = *(a2 + 41);
      if (v11 == 1)
      {
        if (v4 == 1)
        {
          v34 = a1[41];
          sub_24F0E8910(v3, 1, v6, v5);
          goto LABEL_70;
        }

LABEL_65:
        v70 = v32;
        v71 = v11;
        v72 = v12;
        v73 = v14;
        v74 = v13;
        v75 = v15;
        v76 = v3;
        v77 = v4;
        v78 = v6;
        v79 = v5;
        v80 = v7;
        v81 = v8;
        sub_24EF7172C(a2, &v64);
        sub_24EF7172C(a1, &v64);
        goto LABEL_66;
      }

      if (v4 == 1)
      {
        goto LABEL_65;
      }

      v34 = a1[41];
      v64 = v3;
      v65 = v4;
      v66 = v6;
      v67 = v5;
      v68 = v7;
      v69 = v8 & 1;
      v82[0] = v32;
      v82[1] = v11;
      v82[2] = v12;
      v82[3] = v14;
      v82[4] = v13;
      v83 = v15 & 1;
      v48 = v4;
      v49 = v5;
      v50 = v6;
      sub_24EF7172C(a2, &v70);
      sub_24EF7172C(a1, &v70);
      v51 = sub_24ED2F6DC(v82, &v64);

      sub_24EF71698(a1);
      if (v51)
      {
LABEL_70:
        v31 = v34 ^ v33;
LABEL_71:
        v47 = v31 ^ 1;
        return v47 & 1;
      }

      goto LABEL_67;
    case 2u:
      if (*(a2 + 73) != 2)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    case 3u:
      if (*(a2 + 73) != 3)
      {
        goto LABEL_67;
      }

      v31 = v9 ^ v3;
      goto LABEL_71;
    case 4u:
      if (*(a2 + 73) != 4)
      {
        goto LABEL_67;
      }

      goto LABEL_33;
    case 5u:
      if (*(a2 + 73) != 5)
      {
        goto LABEL_67;
      }

LABEL_33:
      v35 = a1[41];
      v36 = *(a2 + 41);
      v64 = v9 | (v10 << 8);
      v65 = v11;
      v66 = v12;
      v67 = v14;
      v68 = v13;
      v69 = v15 & 1;
      v70 = v3;
      v71 = v4;
      v72 = v6;
      v73 = v5;
      v74 = v7;
      v75 = v8 & 1;
      if ((sub_24ED2F6DC(&v64, &v70) & 1) == 0)
      {
        goto LABEL_67;
      }

      v31 = v35 ^ v36;
      goto LABEL_71;
    case 6u:
      if (*(a2 + 73) == 6)
      {
        goto LABEL_36;
      }

      goto LABEL_67;
    case 7u:
      if (*(a2 + 73) != 7)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    case 8u:
      if (*(a2 + 73) != 8)
      {
        goto LABEL_67;
      }

      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v44 = v5;
        v45 = v6;
        v46 = sub_24F92CE08();
        v6 = v45;
        v5 = v44;
        if ((v46 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (!v14)
      {
        goto LABEL_62;
      }

      goto LABEL_50;
    case 9u:
      if (*(a2 + 73) != 9)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    case 0xAu:
      if (*(a2 + 73) != 10)
      {
        goto LABEL_67;
      }

      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v40 = v5;
        v41 = v6;
        v42 = sub_24F92CE08();
        v6 = v41;
        v5 = v40;
        if ((v42 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (!v14)
      {
LABEL_62:
        if (v5)
        {
          goto LABEL_67;
        }

        goto LABEL_79;
      }

LABEL_50:
      if (v5 && (v12 == v6 && v14 == v5 || (sub_24F92CE08() & 1) != 0))
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    case 0xBu:
      if (*(a2 + 73) != 11)
      {
        goto LABEL_67;
      }

LABEL_36:
      if ((v9 | (v10 << 8)) == v3 && v11 == v4)
      {
        goto LABEL_79;
      }

      return sub_24F92CE08();
    case 0xCu:
      if (*(a2 + 73) != 12)
      {
        goto LABEL_67;
      }

      if (*(a2 + 72))
      {
        goto LABEL_67;
      }

      v30 = vorrq_s8(*(a2 + 40), *(a2 + 56));
      if (v3 | *&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v4 | v6 | v5 | v7)
      {
        goto LABEL_67;
      }

      goto LABEL_79;
    default:
      if (*(a2 + 73))
      {
        goto LABEL_67;
      }

      v22 = *(a1 + 23);
      v23 = *(a1 + 42);
      v61 = *(a2 + 48);
      v62 = *(a2 + 56);
      v63 = *(a2 + 40);
      v59 = *(a2 + 64);
      v60 = *(a2 + 72);
      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v57 = a1[41];
        v58 = v5;
        v24 = v6;
        v55 = *(a1 + 42);
        v56 = *(a1 + 23);
        v25 = sub_24F92CE08();
        v23 = v55;
        v22 = v56;
        v16 = v57;
        v5 = v58;
        v6 = v24;
        if ((v25 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (!v14)
      {
        if (v5)
        {
          goto LABEL_67;
        }

LABEL_73:
        v52 = (v15 | (v16 << 8) | (v23 << 16) | (v22 << 48));
        if (v52 == 1)
        {
          v53 = v63;
          if (v63 == 1)
          {
LABEL_79:
            v47 = 1;
            return v47 & 1;
          }
        }

        else
        {
          v53 = v63;
          if (v63 != 1)
          {
            v70 = v7;
            v71 = v63;
            v72 = v61;
            v73 = v62;
            v74 = v59;
            v75 = v60 & 1;
            v64 = v13;
            v65 = v52;
            v66 = v17;
            v67 = v18;
            v68 = v19;
            v69 = v20 & 1;
            sub_24F0E8910(v7, v63, v61, v62);
            sub_24F0E8910(v13, v52, v17, v18);
            v54 = sub_24ED2F6DC(&v64, &v70);

            sub_24EF712B4(v13, v52, v17, v18);
            if ((v54 & 1) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_79;
          }
        }

        v70 = v13;
        v71 = v52;
        v72 = v17;
        v73 = v18;
        v74 = v19;
        v75 = v20;
        v76 = v7;
        v77 = v53;
        v78 = v61;
        v79 = v62;
        v80 = v59;
        v81 = v60;
        sub_24F0E8910(v7, v53, v61, v62);
        sub_24F0E8910(v13, v52, v17, v18);
LABEL_66:
        sub_24E601704(&v70, &qword_27F2393D0);
        goto LABEL_67;
      }

      if (v5)
      {
        if (v12 == v6 && v14 == v5)
        {
          goto LABEL_73;
        }

        v26 = v16;
        v27 = v22;
        v28 = v23;
        v29 = sub_24F92CE08();
        v23 = v28;
        v22 = v27;
        v16 = v26;
        if (v29)
        {
          goto LABEL_73;
        }
      }

LABEL_67:
      v47 = 0;
      return v47 & 1;
  }
}

void _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  if ((sub_24F0E11FC() & 1) == 0)
  {
    v2 = *(v0 + 216);
    v3 = (v0 + 200);
    v4 = *(v0 + 248);
    v389[2] = *(v0 + 232);
    v390[0] = v4;
    v389[0] = *(v0 + 200);
    v389[1] = v2;
    *(v390 + 10) = *(v0 + 258);
    v5 = *(v0 + 40);
    sub_24EF7172C(v389, &v385);
    sub_24F0E15B8(v389, v5, &v385);
    sub_24EF71698(v389);
    v6 = v385;
    v7 = BYTE1(v385);
    v8 = *(&v385 + 1);
    v9 = v386;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_54:
      sub_24E97D004(v8, v9);
      return;
    }

    v362 = v5;
    v366 = v6;
    v372 = v7;
    v10 = *(v1 + 216);
    v381 = *v3;
    v382 = v10;
    v11 = *(v1 + 248);
    v383 = *(v1 + 232);
    *&v384[10] = *(v1 + 258);
    v374 = *(v1 + 24);
    *v384 = v11;
    v12 = v381;
    v13 = *(&v381 + 1) | ((*(&v381 + 5) | (BYTE7(v381) << 16)) << 32);
    v14 = *(&v381 + 1);
    v15 = BYTE9(v383);
    switch(v384[25])
    {
      case 1:
        v81 = v8;
        ObjectType = swift_getObjectType();
        v83 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v83;
        *(v388 + 10) = *(v1 + 258);
        v84 = *(v1 + 216);
        v385 = *v3;
        v386 = v84;
        sub_24EF7172C(&v385, &v377);
        v85 = sub_24F0DF09C();
        v87 = v86;
        sub_24EF71698(&v385);
        v88 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v88;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v347 = v81;
        v378 = v81;
        v379 = v9;
        v31 = v374;
        (*(v374 + 80))(v85, v87, &v375, &v377, v15 & 1, ObjectType, v374);

        if (!*(v1 + 128))
        {
          goto LABEL_62;
        }

        v89 = *(v1 + 136);
        v90 = swift_getObjectType();
        v91 = *(v89 + 16);
        swift_unknownObjectRetain();
        v91(&v377, v90, v89);
        v92 = v380;
        sub_24E88D2AC(&v377);
        if (v92 >> 60 == 4)
        {
          if (v362 && *(v362 + 208) == 1)
          {

            v93._countAndFlagsBits = 0xD000000000000018;
            v93._object = 0x800000024FA62940;
            v94 = localizedStringForAdsLanguage(_:)(v93);

            object = v94._object;
            countAndFlagsBits = v94._countAndFlagsBits;
          }

          else
          {
            v172._countAndFlagsBits = 0xD000000000000018;
            v172._object = 0x800000024FA62940;
            v173._countAndFlagsBits = 0;
            v173._object = 0xE000000000000000;
            v174 = localizedString(_:comment:)(v172, v173);
            object = v174._object;
            countAndFlagsBits = v174._countAndFlagsBits;
          }

          v31 = v374;
          (*(v374 + 128))(countAndFlagsBits, object, ObjectType, v374);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v31 = v374;
LABEL_62:
          if (v362 && *(v362 + 208) == 1)
          {

            v165._object = 0x800000024FA59D50;
            v165._countAndFlagsBits = 0xD00000000000001CLL;
            v166 = localizedStringForAdsLanguage(_:)(v165);

            v167 = v166._object;
            v168 = v166._countAndFlagsBits;
          }

          else
          {
            v169._object = 0x800000024FA59D50;
            v169._countAndFlagsBits = 0xD00000000000001CLL;
            v170._countAndFlagsBits = 0;
            v170._object = 0xE000000000000000;
            v171 = localizedString(_:comment:)(v169, v170);
            v167 = v171._object;
            v168 = v171._countAndFlagsBits;
          }

          (*(v31 + 128))(v168, v167, ObjectType, v31);
        }

        (*(v31 + 144))(0x6F6C6E776F646572, 0xEA00000000006461, ObjectType, v31);
        v8 = v347;
        goto LABEL_53;
      case 2:
        v55 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v56 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v56;
        *(v388 + 10) = *(v1 + 258);
        v57 = *(v1 + 216);
        v385 = *v3;
        v386 = v57;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v58 = sub_24F0DF09C();
        v59 = v14;
        v61 = v60;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v55, v59, v58, v61, &v377, v24, v374);

        (*(v31 + 128))(v55, v59, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x657461647075;
        goto LABEL_51;
      case 3:
        v62 = swift_getObjectType();
        v63 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v63;
        *(v388 + 10) = *(v1 + 258);
        v64 = *(v1 + 216);
        v385 = *v3;
        v386 = v64;
        sub_24EF7172C(&v385, &v377);
        v65 = sub_24F0DF09C();
        v67 = v66;
        sub_24EF71698(&v385);
        v68 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v68;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 56))(v65, v67, &v375, &v377, v12 & 1, v62, v374);

        if (v362 && *(v362 + 208) == 1)
        {

          v69._countAndFlagsBits = 0xD000000000000022;
          v69._object = 0x800000024FA6BA10;
          v70 = localizedStringForAdsLanguage(_:)(v69);

          v71 = v70._object;
          v72 = v70._countAndFlagsBits;
        }

        else
        {
          v134._countAndFlagsBits = 0xD000000000000022;
          v134._object = 0x800000024FA6BA10;
          v135._countAndFlagsBits = 0;
          v135._object = 0xE000000000000000;
          v136 = localizedString(_:comment:)(v134, v135);
          v71 = v136._object;
          v72 = v136._countAndFlagsBits;
        }

        (*(v374 + 128))(v72, v71, v62, v374);
        (*(v374 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v62, v374);
        goto LABEL_53;
      case 4:
        v351 = v382;
        v359 = *(&v381 + 1);
        *&v34 = v381 | (v13 << 8);
        v35 = swift_getObjectType();
        v36 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v36;
        *(v388 + 10) = *(v1 + 258);
        v37 = *(v1 + 216);
        v385 = *v3;
        v386 = v37;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v38 = sub_24F0DF09C();
        v40 = v39;
        sub_24EF71698(&v385);
        v41 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v41;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 64))(v38, v40, &v375, &v377, v15 & 1, v35, v374, v34);

        if (v362 && *(v362 + 208) == 1)
        {

          v42._object = 0x800000024FA5BA40;
          v42._countAndFlagsBits = 0xD00000000000001CLL;
          v43 = localizedStringForAdsLanguage(_:)(v42);

          v44 = v43._object;
          v45 = v43._countAndFlagsBits;
        }

        else
        {
          v131._object = 0x800000024FA5BA40;
          v131._countAndFlagsBits = 0xD00000000000001CLL;
          v132._countAndFlagsBits = 0;
          v132._object = 0xE000000000000000;
          v133 = localizedString(_:comment:)(v131, v132);
          v44 = v133._object;
          v45 = v133._countAndFlagsBits;
        }

        (*(v374 + 128))(v45, v44, v35, v374);
        (*(v374 + 144))(0x64616F6C6E776F64, 0xEB00000000676E69, v35, v374);
        goto LABEL_43;
      case 5:
        v351 = v382;
        v359 = *(&v381 + 1);
        *&v97 = v381 | (v13 << 8);
        v98 = swift_getObjectType();
        v99 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v99;
        *(v388 + 10) = *(v1 + 258);
        v100 = *(v1 + 216);
        v385 = *v3;
        v386 = v100;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v101 = sub_24F0DF09C();
        v103 = v102;
        sub_24EF71698(&v385);
        v104 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v104;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 64))(v101, v103, &v375, &v377, v15 & 1, v98, v374, v97);

        if (v362 && *(v362 + 208) == 1)
        {

          v105._object = 0x800000024FA5BA40;
          v105._countAndFlagsBits = 0xD00000000000001CLL;
          v106 = localizedStringForAdsLanguage(_:)(v105);

          v107 = v106._object;
          v108 = v106._countAndFlagsBits;
        }

        else
        {
          v137._object = 0x800000024FA5BA40;
          v137._countAndFlagsBits = 0xD00000000000001CLL;
          v138._countAndFlagsBits = 0;
          v138._object = 0xE000000000000000;
          v139 = localizedString(_:comment:)(v137, v138);
          v107 = v139._object;
          v108 = v139._countAndFlagsBits;
        }

        (*(v374 + 128))(v108, v107, v98, v374);
        (*(v374 + 144))(0x696C6C6174736E69, 0xEA0000000000676ELL, v98, v374);
LABEL_43:

        goto LABEL_53;
      case 6:
        v109 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v110 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v110;
        *(v388 + 10) = *(v1 + 258);
        v111 = *(v1 + 216);
        v385 = *v3;
        v386 = v111;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v112 = sub_24F0DF09C();
        v113 = v14;
        v115 = v114;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v109, v113, v112, v115, &v377, v24, v374);

        (*(v31 + 128))(v109, v113, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x64616F6C6E776F64;
        goto LABEL_29;
      case 7:
        v73 = v381 | (v13 << 8);
        v74 = swift_getObjectType();
        v75 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v75;
        *(v388 + 10) = *(v1 + 258);
        v76 = *(v1 + 216);
        v385 = *v3;
        v386 = v76;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v77 = sub_24F0DF09C();
        v78 = v14;
        v80 = v79;
        sub_24EF71698(&v385);
        LOBYTE(v377) = 5;
        BYTE1(v377) = v372;
        v378 = 0;
        v379 = 0;
        v31 = v374;
        (*(v374 + 32))(v73, v78, v77, v80, &v377, v74, v374);

        sub_24E97D004(v378, v379);
        (*(v31 + 128))(v73, v78, v74, v31);
        (*(v374 + 144))(0x6573616863727570, 0xE900000000000064, v74, v374);
        goto LABEL_53;
      case 8:
        if (*(v1 + 159) == 1)
        {
          if (v362)
          {
            v127 = *(&v381 + 1);
            if (*(v362 + 126) == 2)
            {
              v353 = v381 | (v13 << 8);
              v128 = *(&v382 + 1);
              if (*(v362 + 208) == 1)
              {
                sub_24EF7172C(&v381, &v385);

                v129._countAndFlagsBits = 0xD00000000000002DLL;
                v129._object = 0x800000024FA6B9E0;
                v130 = localizedStringForAdsLanguage(_:)(v129);
                v344 = v130._countAndFlagsBits;
                v361 = v130._object;
              }

              else
              {

                v230._countAndFlagsBits = 0xD00000000000002DLL;
                v230._object = 0x800000024FA6B9E0;
                v231._countAndFlagsBits = 0;
                v231._object = 0xE000000000000000;
                v232 = localizedString(_:comment:)(v230, v231);
                v344 = v232._countAndFlagsBits;
                v361 = v232._object;
              }

              v197 = v374;
              v194 = v366;
              v195 = 0;
              v198 = v128;
              if (v372 == 3 || v372 == 6)
              {
                v194 = 0;
                v196 = 0;
              }

              else if (v372 == 8)
              {
                v357 = v128;
                if (qword_27F210200 != -1)
                {
                  swift_once();
                }

                v233 = qword_27F2287C0;
                v234 = objc_opt_self();
                v195 = v233;
                v196 = [v234 whiteColor];
                v194 = 5;
                v198 = v357;
              }

              else
              {
                sub_24E9534EC(v8, v9);
                v198 = v128;
                v195 = v8;
                v196 = v9;
              }

              goto LABEL_131;
            }

            v175 = *(v362 + 121);
          }

          else
          {
            v127 = *(&v381 + 1);
            v175 = 0;
          }

          if (v372 == 6 || v372 == 3)
          {
            v353 = v381 | (v13 << 8);
            v355 = *(&v382 + 1);
            if (v362 && (*(v362 + 208) & 1) != 0)
            {
              sub_24EF7172C(&v381, &v385);

              v189._object = 0x800000024FA6B9C0;
              v189._countAndFlagsBits = 0xD00000000000001CLL;
              v190 = localizedStringForAdsLanguage(_:)(v189);
              v344 = v190._countAndFlagsBits;
              v361 = v190._object;

              if ((v175 & 1) == 0)
              {
                goto LABEL_101;
              }
            }

            else
            {

              v191._object = 0x800000024FA6B9C0;
              v191._countAndFlagsBits = 0xD00000000000001CLL;
              v192._countAndFlagsBits = 0;
              v192._object = 0xE000000000000000;
              v193 = localizedString(_:comment:)(v191, v192);
              v344 = v193._countAndFlagsBits;
              v361 = v193._object;
              if ((v175 & 1) == 0)
              {
                if (!v362)
                {
                  v346 = v9;
                  v349 = v8;
                  goto LABEL_138;
                }

LABEL_101:
                v346 = v9;
                v349 = v8;
                if (*(v362 + 208) == 1)
                {

                  v226._object = 0x800000024FA6B9C0;
                  v226._countAndFlagsBits = 0xD00000000000001CLL;
                  v227 = localizedStringForAdsLanguage(_:)(v226);
                  v228 = v227._countAndFlagsBits;
                  v229 = v227._object;

                  goto LABEL_139;
                }

LABEL_138:
                v278._object = 0x800000024FA6B9C0;
                v278._countAndFlagsBits = 0xD00000000000001CLL;
                v279._countAndFlagsBits = 0;
                v279._object = 0xE000000000000000;
                v280 = localizedString(_:comment:)(v278, v279);
                v228 = v280._countAndFlagsBits;
                v229 = v280._object;

LABEL_139:
                if (!v355)
                {
LABEL_141:
                  v281 = swift_getObjectType();
                  v282 = *(v1 + 248);
                  v387 = *(v1 + 232);
                  v388[0] = v282;
                  *(v388 + 10) = *(v1 + 258);
                  v283 = *(v1 + 216);
                  v385 = *v3;
                  v386 = v283;
                  sub_24EF7172C(&v385, &v377);
                  v284 = sub_24F0DF09C();
                  v286 = v285;
                  sub_24EF71698(&v385);
                  LOBYTE(v377) = 5;
                  BYTE1(v377) = v372;
                  v378 = 0;
                  v379 = 0;
                  v287 = *(v374 + 32);
                  sub_24E9534EC(0, 0);
                  v287(v228, v229, v284, v286, &v377, v281, v374);
                  v31 = v374;

                  sub_24E97D004(v378, v379);
                  v195 = 0;
                  v274 = 0;
                  v9 = v346;
                  v8 = v349;
                  goto LABEL_153;
                }

LABEL_140:

                goto LABEL_141;
              }
            }

            v194 = 0;
            v195 = 0;
            v196 = 0;
            v197 = v374;
            v198 = v355;
LABEL_131:
            if (v198)
            {
            }

            goto LABEL_133;
          }

          if (*(&v382 + 1))
          {
            v356 = *(&v382 + 1);
            if (v175)
            {
              v203 = v381 | (v13 << 8);
              v204 = v382;
              if (v362 && *(v362 + 208) == 1)
              {
                sub_24EF7172C(&v381, &v385);
                sub_24E9534EC(v8, v9);

                v205._countAndFlagsBits = 0xD000000000000016;
                v205._object = 0x800000024FA500B0;
                v206 = localizedStringForAdsLanguage(_:)(v205);
                v361 = v206._object;
                v207 = v206._countAndFlagsBits;
              }

              else
              {
                sub_24EF7172C(&v381, &v385);
                sub_24E9534EC(v8, v9);
                v301._countAndFlagsBits = 0xD000000000000016;
                v301._object = 0x800000024FA500B0;
                v302._countAndFlagsBits = 0;
                v302._object = 0xE000000000000000;
                v303 = localizedString(_:comment:)(v301, v302);
                v207 = v303._countAndFlagsBits;
                v361 = v303._object;
              }

              v31 = v374;
              v304 = swift_getObjectType();
              v305 = *(v1 + 154);
              LODWORD(v377) = *(v1 + 150);
              WORD2(v377) = v305;
              LOBYTE(v385) = v366;
              BYTE1(v385) = v372;
              *(&v385 + 1) = v8;
              *&v386 = v9;
              (*(v31 + 40))(v203, v127, v204, v356, &v377, &v385, v304, v31);

              v195 = v8;
              v274 = v9;
              goto LABEL_154;
            }

            v354 = v382;
            if (v362 && *(v362 + 208) == 1)
            {
              sub_24EF7172C(&v381, &v385);

              v275._object = 0x800000024FA6B9C0;
              v275._countAndFlagsBits = 0xD00000000000001CLL;
              v276 = localizedStringForAdsLanguage(_:)(v275);
              v277 = v276._countAndFlagsBits;
              v370 = v276._object;
            }

            else
            {

              v306._object = 0x800000024FA6B9C0;
              v306._countAndFlagsBits = 0xD00000000000001CLL;
              v307._countAndFlagsBits = 0;
              v307._object = 0xE000000000000000;
              v308 = localizedString(_:comment:)(v306, v307);
              v277 = v308._countAndFlagsBits;
              v370 = v308._object;
              if (!v362)
              {
                goto LABEL_151;
              }
            }

            if (*(v362 + 208) == 1)
            {

              v309._object = 0x800000024FA6B9C0;
              v309._countAndFlagsBits = 0xD00000000000001CLL;
              v310 = localizedStringForAdsLanguage(_:)(v309);
              v344 = v310._countAndFlagsBits;
              v361 = v310._object;

LABEL_152:
              v314 = swift_getObjectType();
              v315 = *(v1 + 154);
              v375 = *(v1 + 150);
              v376 = v315;
              v316 = *(v1 + 248);
              v387 = *(v1 + 232);
              v388[0] = v316;
              *(v388 + 10) = *(v1 + 258);
              v317 = *(v1 + 216);
              v385 = *v3;
              v386 = v317;
              sub_24EF7172C(&v385, &v377);
              v365 = sub_24F0DF09C();
              v319 = v318;
              sub_24EF71698(&v385);
              LOBYTE(v377) = 5;
              BYTE1(v377) = v372;
              v378 = 0;
              v379 = 0;
              v320 = *(v374 + 24);
              sub_24E9534EC(0, 0);
              v320(v277, v370, v354, v356, &v375, v365, v319, &v377, v314, v374);
              v31 = v374;

              sub_24E97D004(v378, v379);
              v195 = 0;
              v274 = 0;
              goto LABEL_153;
            }

LABEL_151:
            v311._object = 0x800000024FA6B9C0;
            v311._countAndFlagsBits = 0xD00000000000001CLL;
            v312._countAndFlagsBits = 0;
            v312._object = 0xE000000000000000;
            v313 = localizedString(_:comment:)(v311, v312);
            v344 = v313._countAndFlagsBits;
            v361 = v313._object;

            goto LABEL_152;
          }

          if (v175)
          {
            v353 = v381 | (v13 << 8);
            if (v362 && *(v362 + 208) == 1)
            {
              sub_24EF7172C(&v381, &v385);
              sub_24E9534EC(v8, v9);

              v271._countAndFlagsBits = 0xD000000000000016;
              v271._object = 0x800000024FA500B0;
              v272 = localizedStringForAdsLanguage(_:)(v271);
              v344 = v272._countAndFlagsBits;
              v361 = v272._object;
            }

            else
            {
              sub_24EF7172C(&v381, &v385);
              sub_24E9534EC(v8, v9);
              v327._countAndFlagsBits = 0xD000000000000016;
              v327._object = 0x800000024FA500B0;
              v328._countAndFlagsBits = 0;
              v328._object = 0xE000000000000000;
              v329 = localizedString(_:comment:)(v327, v328);
              v344 = v329._countAndFlagsBits;
              v361 = v329._object;
            }

            v195 = v8;
            v196 = v9;
            v197 = v374;
            v194 = v366;
LABEL_133:
            v369 = swift_getObjectType();
            LOBYTE(v385) = v194;
            BYTE1(v385) = v372;
            *(&v385 + 1) = v195;
            *&v386 = v196;
            v273 = *(v197 + 48);
            sub_24E9534EC(v195, v196);
            v273(v353, v127, &v385, v369, v374);
            v274 = v196;
            v31 = v374;

            sub_24E97D004(*(&v385 + 1), v386);
LABEL_153:
            v207 = v344;
LABEL_154:
            v321 = swift_getObjectType();
            (*(v31 + 128))(v207, v361, v321, v31);
            sub_24E97D004(v195, v274);
LABEL_53:
            v158 = swift_getObjectType();
            v159 = sub_24F0E19A4();
            (*(v31 + 16))(v159 & 1, v158, v31);
            swift_unknownObjectRelease();
            goto LABEL_54;
          }

          v346 = v9;
          v349 = v8;
          if (v362 && *(v362 + 208) == 1)
          {
            sub_24EF7172C(&v381, &v385);

            v325._object = 0x800000024FA6B9C0;
            v325._countAndFlagsBits = 0xD00000000000001CLL;
            v326 = localizedStringForAdsLanguage(_:)(v325);
            v228 = v326._countAndFlagsBits;
            v229 = v326._object;
          }

          else
          {

            v330._object = 0x800000024FA6B9C0;
            v330._countAndFlagsBits = 0xD00000000000001CLL;
            v331._countAndFlagsBits = 0;
            v331._object = 0xE000000000000000;
            v332 = localizedString(_:comment:)(v330, v331);
            v229 = v332._object;
            v228 = v332._countAndFlagsBits;
            if (!v362)
            {
LABEL_166:
              v335._object = 0x800000024FA6B9C0;
              v335._countAndFlagsBits = 0xD00000000000001CLL;
              v336._countAndFlagsBits = 0;
              v336._object = 0xE000000000000000;
              v337 = localizedString(_:comment:)(v335, v336);
              v344 = v337._countAndFlagsBits;
              v361 = v337._object;
              goto LABEL_140;
            }
          }

          if (*(v362 + 208) == 1)
          {

            v333._object = 0x800000024FA6B9C0;
            v333._countAndFlagsBits = 0xD00000000000001CLL;
            v334 = localizedStringForAdsLanguage(_:)(v333);
            v344 = v334._countAndFlagsBits;
            v361 = v334._object;

            goto LABEL_141;
          }

          goto LABEL_166;
        }

        v145 = v382;

        v345 = v9;
        v348 = v8;
        if (v362 && *(v362 + 126) == 2)
        {

          v146 = *(v362 + 208);

          if (v146 == 1)
          {

            v147._countAndFlagsBits = 0xD00000000000002DLL;
            v147._object = 0x800000024FA6B9E0;
            v148 = localizedStringForAdsLanguage(_:)(v147);
            v149 = v362;
            v150 = v148._countAndFlagsBits;
            v151 = v148._object;
          }

          else
          {
            v235._countAndFlagsBits = 0xD00000000000002DLL;
            v235._object = 0x800000024FA6B9E0;
            v236._countAndFlagsBits = 0;
            v236._object = 0xE000000000000000;
            v237 = localizedString(_:comment:)(v235, v236);
            v149 = v362;
            v150 = v237._countAndFlagsBits;
            v151 = v237._object;
          }

          v179 = swift_getObjectType();
          v238 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v238;
          *(v388 + 10) = *(v1 + 258);
          v239 = *(v1 + 216);
          v385 = *v3;
          v386 = v239;
          sub_24EF7172C(&v385, &v377);
          v240 = sub_24F0DF09C();
          v242 = v241;
          sub_24EF71698(&v385);
          LOBYTE(v377) = 5;
          BYTE1(v377) = v372;
          v378 = 0;
          v379 = 0;
          v31 = v374;
          (*(v374 + 32))(v150, v151, v240, v242, &v377, v179, v374);

          sub_24E97D004(v378, v379);
          if (*(v149 + 208) == 1)
          {
            v243._countAndFlagsBits = 0xD00000000000002DLL;
            v243._object = 0x800000024FA6B9E0;
            v244 = localizedStringForAdsLanguage(_:)(v243);

            v187 = v244._object;
            v188 = v244._countAndFlagsBits;
          }

          else
          {

            v245._countAndFlagsBits = 0xD00000000000002DLL;
            v245._object = 0x800000024FA6B9E0;
            v246._countAndFlagsBits = 0;
            v246._object = 0xE000000000000000;
            v247 = localizedString(_:comment:)(v245, v246);
            v187 = v247._object;
            v188 = v247._countAndFlagsBits;
          }

          v8 = v348;
          goto LABEL_118;
        }

        if (v7 == 6 || v7 == 3)
        {

          if (v362 && *(v362 + 208) == 1)
          {
            swift_retain_n();
            v160._object = 0x800000024FA6B9C0;
            v160._countAndFlagsBits = 0xD00000000000001CLL;
            v161 = localizedStringForAdsLanguage(_:)(v160);
            v162 = v362;
            v163 = v161._countAndFlagsBits;
            v164 = v161._object;
          }

          else
          {

            v176._object = 0x800000024FA6B9C0;
            v176._countAndFlagsBits = 0xD00000000000001CLL;
            v177._countAndFlagsBits = 0;
            v177._object = 0xE000000000000000;
            v178 = localizedString(_:comment:)(v176, v177);
            v162 = v362;
            v163 = v178._countAndFlagsBits;
            v164 = v178._object;
          }

          v179 = swift_getObjectType();
          v180 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v180;
          *(v388 + 10) = *(v1 + 258);
          v181 = *(v1 + 216);
          v385 = *v3;
          v386 = v181;
          sub_24EF7172C(&v385, &v377);
          v182 = sub_24F0DF09C();
          v184 = v183;
          sub_24EF71698(&v385);
          LOBYTE(v377) = 5;
          BYTE1(v377) = v372;
          v378 = 0;
          v379 = 0;
          v31 = v374;
          (*(v374 + 32))(v163, v164, v182, v184, &v377, v179, v374);

          sub_24E97D004(v378, v379);
          v8 = v348;
          if (v162)
          {
            if (*(v162 + 208) == 1)
            {
              v185._object = 0x800000024FA6B9C0;
              v185._countAndFlagsBits = 0xD00000000000001CLL;
              v186 = localizedStringForAdsLanguage(_:)(v185);

              v187 = v186._object;
              v188 = v186._countAndFlagsBits;
LABEL_118:
              (*(v31 + 128))(v188, v187, v179, v31);
              v9 = v345;
              goto LABEL_53;
            }
          }

          v248._object = 0x800000024FA6B9C0;
          v248._countAndFlagsBits = 0xD00000000000001CLL;
          v249._countAndFlagsBits = 0;
          v249._object = 0xE000000000000000;
          v250 = localizedString(_:comment:)(v248, v249);
          v187 = v250._object;
          v188 = v250._countAndFlagsBits;
          goto LABEL_118;
        }

        if (*(&v382 + 1))
        {
          if (v362 && *(v362 + 208) == 1)
          {
            swift_retain_n();
            v199._countAndFlagsBits = 0xD000000000000016;
            v199._object = 0x800000024FA500B0;
            v200 = localizedStringForAdsLanguage(_:)(v199);
            v201 = v200._countAndFlagsBits;
            v202 = v200._object;
          }

          else
          {

            v251._countAndFlagsBits = 0xD000000000000016;
            v251._object = 0x800000024FA500B0;
            v252._countAndFlagsBits = 0;
            v252._object = 0xE000000000000000;
            v253 = localizedString(_:comment:)(v251, v252);
            v201 = v253._countAndFlagsBits;
            v202 = v253._object;
          }

          v254 = swift_getObjectType();
          v255 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v255;
          v256 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v256;
          *(v388 + 10) = *(v1 + 258);
          v258 = *v3;
          v257 = *(v1 + 216);
          v259 = v254;
          v385 = v258;
          v386 = v257;
          sub_24EF7172C(&v385, &v377);
          v260 = sub_24F0DF09C();
          v262 = v261;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v348;
          v379 = v345;
          v31 = v374;
          (*(v374 + 24))(v201, v202, v145, *(&v145 + 1), &v375, v260, v262, &v377, v259, v374);

          if (v362)
          {
            if (*(v362 + 208))
            {
              v263._countAndFlagsBits = 0xD000000000000016;
              v263._object = 0x800000024FA500B0;
              v264 = localizedStringForAdsLanguage(_:)(v263);

              v265 = v264._object;
              v266 = v264._countAndFlagsBits;
LABEL_157:
              (*(v374 + 128))(v266, v265, v259, v374);
LABEL_170:
              v9 = v345;
              v8 = v348;
              goto LABEL_53;
            }
          }

          v322._countAndFlagsBits = 0xD000000000000016;
          v322._object = 0x800000024FA500B0;
          v323._countAndFlagsBits = 0;
          v323._object = 0xE000000000000000;
          v324 = localizedString(_:comment:)(v322, v323);
          v265 = v324._object;
          v266 = v324._countAndFlagsBits;
          goto LABEL_157;
        }

        if (v362 && *(v362 + 208) == 1)
        {
          swift_retain_n();
          v267._countAndFlagsBits = 0xD000000000000016;
          v267._object = 0x800000024FA500B0;
          v268 = localizedStringForAdsLanguage(_:)(v267);
          v269 = v268._countAndFlagsBits;
          v270 = v268._object;
        }

        else
        {

          v288._countAndFlagsBits = 0xD000000000000016;
          v288._object = 0x800000024FA500B0;
          v289._countAndFlagsBits = 0;
          v289._object = 0xE000000000000000;
          v290 = localizedString(_:comment:)(v288, v289);
          v269 = v290._countAndFlagsBits;
          v270 = v290._object;
        }

        v291 = swift_getObjectType();
        v292 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v292;
        *(v388 + 10) = *(v1 + 258);
        v293 = *(v1 + 216);
        v385 = *v3;
        v386 = v293;
        sub_24EF7172C(&v385, &v377);
        v294 = sub_24F0DF09C();
        v296 = v295;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v348;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v269, v270, v294, v296, &v377, v291, v374);

        if (!v362)
        {
          goto LABEL_168;
        }

        if (*(v362 + 208))
        {
          v297._countAndFlagsBits = 0xD000000000000016;
          v297._object = 0x800000024FA500B0;
          v298 = localizedStringForAdsLanguage(_:)(v297);

          v299 = v298._object;
          v300 = v298._countAndFlagsBits;
        }

        else
        {

LABEL_168:
          v338._countAndFlagsBits = 0xD000000000000016;
          v338._object = 0x800000024FA500B0;
          v339._countAndFlagsBits = 0;
          v339._object = 0xE000000000000000;
          v340 = localizedString(_:comment:)(v338, v339);
          v299 = v340._object;
          v300 = v340._countAndFlagsBits;
        }

        (*(v374 + 128))(v300, v299, v291, v374);
        goto LABEL_170;
      case 9:
        v47 = v381 | (v13 << 8);
        v48 = swift_getObjectType();
        v49 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v49;
        *(v388 + 10) = *(v1 + 258);
        v50 = *(v1 + 216);
        v385 = *v3;
        v386 = v50;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v51 = sub_24F0DF09C();
        v52 = v14;
        v54 = v53;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v47, v52, v51, v54, &v377, v48, v374);

        (*(v31 + 128))(v47, v52, v48, v31);
        (*(v374 + 144))(1852141679, 0xE400000000000000, v48, v374);
        goto LABEL_53;
      case 0xA:
        v360 = *(&v381 + 1);
        v117 = v381 | (v13 << 8);
        if (*(&v382 + 1))
        {
          v118 = v381 | (v13 << 8);
          v119 = *(&v382 + 1);
          v352 = v382;
          v363 = swift_getObjectType();
          v120 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v120;
          v121 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v121;
          *(v388 + 10) = *(v1 + 258);
          v122 = *(v1 + 216);
          v385 = *v3;
          v386 = v122;
          sub_24EF7172C(&v381, &v377);
          sub_24EF7172C(&v385, &v377);
          v123 = sub_24F0DF09C();
          v125 = v124;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v8;
          v379 = v9;
          v31 = v374;
          v126 = v360;
          (*(v374 + 24))(v118, v360, v352, v119, &v375, v123, v125, &v377, v363, v374);
          v117 = v118;
        }

        else
        {
          v152 = swift_getObjectType();
          v153 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v153;
          *(v388 + 10) = *(v1 + 258);
          v154 = *(v1 + 216);
          v385 = *v3;
          v386 = v154;
          sub_24EF7172C(&v381, &v377);
          sub_24EF7172C(&v385, &v377);
          v155 = sub_24F0DF09C();
          v157 = v156;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v8;
          v379 = v9;
          v31 = v374;
          v126 = v360;
          (*(v374 + 32))(v117, v360, v155, v157, &v377, v152, v374);
        }

        v24 = swift_getObjectType();
        (*(v31 + 128))(v117, v126, v24, v31);
        v32 = *(v31 + 144);
        v33 = 0x7463656C6573;
LABEL_51:
        v116 = 0xE600000000000000;
        goto LABEL_52;
      case 0xB:
        v23 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v25 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v25;
        *(v388 + 10) = *(v1 + 258);
        v26 = *(v1 + 216);
        v385 = *v3;
        v386 = v26;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v27 = sub_24F0DF09C();
        v28 = v14;
        v30 = v29;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v23, v28, v27, v30, &v377, v24, v374);

        (*(v31 + 128))(v23, v28, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x7463697274736572;
LABEL_29:
        v116 = 0xEA00000000006465;
LABEL_52:
        v32(v33, v116, v24, v31);
        goto LABEL_53;
      case 0xC:
        v46 = swift_getObjectType();
        LOBYTE(v385) = 5;
        BYTE1(v385) = v7;
        *(&v385 + 1) = 0;
        *&v386 = 0;
        v31 = v374;
        (*(v374 + 48))(0x72616D6B63656863, 0xE90000000000006BLL, &v385, v46, v374);
        sub_24E97D004(*(&v385 + 1), v386);
        goto LABEL_53;
      default:
        v350 = v382;

        v358 = *(&v381 + 1);

        sub_24F0E8910(v383, *(&v383 + 1), *v384, *&v384[8]);
        sub_24EF712B4(v383, (BYTE8(v383) | (BYTE9(v383) << 8) | (*(&v383 + 10) << 16) | (HIWORD(v383) << 48)), *v384, *&v384[8]);
        if (*(v1 + 158) != 1)
        {
          v22 = *(&v382 + 1);
          v364 = v381 | (v13 << 8);
          sub_24E9534EC(v8, v9);
          v140 = sub_24F0E1828();
          v342 = v141;
          v343 = v140;
          v142 = v8;
          v143 = v9;
          v144 = v366;
          goto LABEL_96;
        }

        v16 = sub_24F0E16F4();
        v342 = v17;
        v343 = v16;
        if (!v362)
        {
          goto LABEL_94;
        }

        v18 = *(v362 + 88);
        if (!*(v18 + 16))
        {
          goto LABEL_94;
        }

        v19 = sub_24E76DB58(1);
        if (v20)
        {
          v21 = (*(v18 + 56) + 16 * v19);
          v350 = *v21;
          v22 = v21[1];
        }

        else
        {

LABEL_94:
          v350 = 0;
          v22 = 0;
        }

        v143 = 0;
        v144 = 2;
        v142 = 2;
        v358 = v208;
        v364 = v343;
LABEL_96:
        v371 = v142;
        if (v22)
        {
          v367 = v144;
          v341 = swift_getObjectType();
          v209 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v209;
          v210 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v210;
          *(v388 + 10) = *(v1 + 258);
          v211 = *(v1 + 216);
          v385 = *v3;
          v386 = v211;
          sub_24EF7172C(&v385, &v377);
          v212 = sub_24F0DF09C();
          v214 = v213;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v367;
          BYTE1(v377) = v372;
          v378 = v371;
          v379 = v143;
          v31 = v374;
          v215 = *(v374 + 24);
          sub_24E9534EC(v371, v143);
          v215(v364, v358, v350, v22, &v375, v212, v214, &v377, v341, v374);

          sub_24E97D004(v378, v379);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
          v216 = swift_allocObject();
          *(v216 + 16) = xmmword_24F93A400;
          *(v216 + 32) = v350;
          *(v216 + 40) = v22;
          *(v216 + 48) = v343;
          *(v216 + 56) = v342;
          v377 = v216;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
          sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
          v217 = sub_24F92AF68();
          v219 = v218;

          (*(v374 + 128))(v217, v219, v341, v374);
        }

        else
        {
          v368 = swift_getObjectType();
          v220 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v220;
          *(v388 + 10) = *(v1 + 258);
          v221 = *(v1 + 216);
          v385 = *v3;
          v386 = v221;
          sub_24EF7172C(&v385, &v377);
          v222 = sub_24F0DF09C();
          v224 = v223;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v144;
          BYTE1(v377) = v372;
          v378 = v371;
          v379 = v143;
          v31 = v374;
          v373 = *(v374 + 32);
          sub_24E9534EC(v371, v143);
          v373(v364, v358, v222, v224, &v377, v368, v374);

          sub_24E97D004(v378, v379);
          (*(v374 + 128))(v343, v342, v368, v374);
        }

        v225 = swift_getObjectType();
        (*(v31 + 144))(7628135, 0xE300000000000000, v225, v31);
        sub_24E97D004(v371, v143);
        goto LABEL_53;
    }
  }
}

uint64_t sub_24F0E846C()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 112))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 24);
    v5 = swift_getObjectType();
    (*(v4 + 96))(v5, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24F0E8528(uint64_t a1, uint64_t a2)
{
  sub_24F0E846C();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 104))(v2, sel_offerButtonTapped, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24F0E85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = a7;
  v26 = a8;
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v16 = *(a13 - 8);
  MEMORY[0x28223BE20](a12);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a6, a13);
  return sub_24F0E4FF4(a1, v21, v22, v23, v24, v18, v25, v26, a9, a10, a11, v19, a13, a14);
}

uint64_t sub_24F0E8710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit19AppOfferButtonStateO27DownloadProgressInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit19AppOfferButtonStateO(uint64_t a1)
{
  if ((*(a1 + 73) & 0xFu) <= 0xB)
  {
    return *(a1 + 73) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24F0E8830(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 74))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 73);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24F0E8878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F0E88D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 73) = a2;
  return result;
}

void sub_24F0E8910(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != 1)
  {
    v6 = a4;
    v7 = a2;

    v8 = a3;
  }
}

uint64_t sub_24F0E8964()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F0E89A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2393D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0E8A14()
{
  v1 = sub_24F927E88();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0E8B08()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F0E8B48()
{

  return swift_deallocObject();
}

uint64_t sub_24F0E8BB4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 24) = a1;
  *(v5 + 64) = *v4;
  return MEMORY[0x2822009F8](sub_24F0E8C04, 0, 0);
}

uint64_t sub_24F0E8C04()
{
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E9A0);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[3];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "Starting snapshot for %ld artworks, size:", v6, 0xCu);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];
  v13 = swift_task_alloc();
  v0[9] = v13;
  v13[2] = v8;
  v13[3] = v12;
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = v9;
  v13[7] = v7;
  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  *v14 = v0;
  v14[1] = sub_24F0E8E1C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x800000024FA6BC80, sub_24F0EF58C, v13, v15);
}

uint64_t sub_24F0E8E1C()
{

  return MEMORY[0x2822009F8](sub_24F0F1D4C, 0, 0);
}

uint64_t sub_24F0E8F34()
{
  v6[0] = sub_24F92BEE8();
  v0 = *(v6[0] - 8);
  MEMORY[0x28223BE20](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DB8();
  v6[1] = MEMORY[0x277D84F90];
  sub_24F0F1C94(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v6[0]);
  result = sub_24F92BF38();
  qword_27F2393E0 = result;
  return result;
}

uint64_t sub_24F0E9198(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0E925C, 0, 0);
}

uint64_t sub_24F0E925C()
{
  v33 = v0;
  v1 = *(v0[15] + 64);
  v0[18] = v1;
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  sub_24F0F1984(v3);
  os_unfair_lock_unlock((v1 + 64));
  if (v3)
  {
    v8 = v0[14];

    *v8 = v3;
    v8[1] = v2;
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v7;
    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[15];
    v31 = 0;
    v32 = 0xE000000000000000;
    v12 = *(v11 + 72);
    if (v12 > 3)
    {
      v13 = 0xE600000000000000;
      if (v12 > 5)
      {
        if (v12 == 6)
        {
          v14 = 0x437055656E4FLL;
        }

        else
        {
          v14 = 0x447055656E4FLL;
        }
      }

      else if (v12 == 4)
      {
        v14 = 0x417055656E4FLL;
      }

      else
      {
        v14 = 0x427055656E4FLL;
      }
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = 0xE300000000000000;
        v14 = 7233862;
      }

      else
      {
        v13 = 0xEC0000006C616369;
        v14 = 0x7274656D6D797341;
      }
    }

    else if (v12)
    {
      v13 = 0xE700000000000000;
      v14 = 0x70556565726854;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x70556F7754;
    }

    MEMORY[0x253050C20](v14, v13);

    v16 = v31;
    v15 = v32;
    v0[19] = v32;
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    v0[20] = __swift_project_value_buffer(v17, qword_27F39E9A0);

    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_24E7620D4(v16, v15, &v31);
      _os_log_impl(&dword_24E5DD000, v18, v19, "Initializing renderer components for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2530542D0](v21, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    v25 = sub_24F92B858();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = v23;

    v27 = sub_24F77BBD8(0, 0, v22, &unk_24F9C90E0, v26);
    v0[21] = v27;
    sub_24E601704(v22, &unk_27F21B570);
    v28 = swift_task_alloc();
    v0[22] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    *v28 = v0;
    v28[1] = sub_24F0E969C;
    v30 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 8, v27, &type metadata for GamesThreeDimensionalRealityRenderer.RendererComponents, v29, v30);
  }
}

uint64_t sub_24F0E969C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_24F0E9C10;
  }

  else
  {
    v2 = sub_24F0E97E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F0E97E0()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 96);
  sub_24F92B7F8();
  *(v0 + 192) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0E9884, v3, v2);
}

void sub_24F0E9884()
{
  v1 = *(v0 + 184);

  sub_24F0EBF7C(v0 + 16);
  *(v0 + 200) = v1;
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24F0E992C, 0, 0);
  }
}

void sub_24F0E992C()
{
  v21 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v0 + 16;
  os_unfair_lock_lock((v2 + 64));
  sub_24F0F1ACC((v2 + 16));
  os_unfair_lock_unlock((v2 + 64));
  if (!v1)
  {
    v3 = *(v0 + 120);

    v19 = 0;
    v20 = 0xE000000000000000;
    v4 = *(v3 + 72);
    if (v4 > 3)
    {
      v5 = 0xE600000000000000;
      if (v4 > 5)
      {
        if (v4 == 6)
        {
          v6 = 0x437055656E4FLL;
        }

        else
        {
          v6 = 0x447055656E4FLL;
        }
      }

      else if (v4 == 4)
      {
        v6 = 0x417055656E4FLL;
      }

      else
      {
        v6 = 0x427055656E4FLL;
      }
    }

    else if (*(v3 + 72) > 1u)
    {
      if (v4 == 2)
      {
        v5 = 0xE300000000000000;
        v6 = 7233862;
      }

      else
      {
        v5 = 0xEC0000006C616369;
        v6 = 0x7274656D6D797341;
      }
    }

    else if (*(v3 + 72))
    {
      v5 = 0xE700000000000000;
      v6 = 0x70556565726854;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x70556F7754;
    }

    MEMORY[0x253050C20](v6, v5);

    v8 = v19;
    v7 = v20;

    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_24E7620D4(v8, v7, &v19);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_24E5DD000, v9, v10, "Successfully created renderer components for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2530542D0](v12, -1, -1);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    else
    {
    }

    v14 = *(v0 + 112);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    v16 = *(v0 + 48);

    *v14 = v18;
    v14[1] = v17;
    v14[2] = v16;
    v15 = *(v0 + 8);

    v15();
  }
}

uint64_t sub_24F0E9C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0E9C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[119] = a4;
  v4[113] = a1;
  v5 = sub_24F91FC38();
  v4[122] = v5;
  v4[123] = *(v5 - 8);
  v4[124] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2394C0);
  v4[125] = swift_task_alloc();
  v6 = sub_24F91FC68();
  v4[126] = v6;
  v4[127] = *(v6 - 8);
  v4[128] = swift_task_alloc();
  v7 = sub_24F91FCC8();
  v4[129] = v7;
  v4[130] = *(v7 - 8);
  v4[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0E9E28, 0, 0);
}

uint64_t sub_24F0E9E28()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2394C8);
  swift_asyncLet_begin();
  *(v0 + 1056) = sub_24F92B7F8();
  *(v0 + 1064) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0E9F0C, v2, v1);
}

uint64_t sub_24F0E9F0C()
{

  sub_24F921428();
  swift_allocObject();
  *(v0 + 1072) = sub_24F921418();
  *(v0 + 1080) = 0;

  return MEMORY[0x282200928](v0 + 16, v0 + 760, sub_24F0E9FEC, v0 + 768);
}

uint64_t sub_24F0E9FEC()
{
  v1 = v0[95];
  v0[136] = v1;

  v2 = swift_task_alloc();
  v0[137] = v2;
  v3 = sub_24F91FD28();
  v0[138] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  *v2 = v0;
  v2[1] = sub_24F0EA0D8;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 101, v1, v3, v4, v5);
}

uint64_t sub_24F0EA0D8()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_24F0EB9DC;
  }

  else
  {
    v2 = sub_24F0EA2CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F0EA228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EA2CC()
{
  v0[140] = v0[101];
  v0[141] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA360, v2, v1);
}

uint64_t sub_24F0EA360()
{

  swift_allocObject();
  *(v0 + 1136) = sub_24F91FBD8();

  return MEMORY[0x2822009F8](sub_24F0EA3E8, 0, 0);
}

uint64_t sub_24F0EA3E8()
{
  *(v0 + 1144) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA474, v2, v1);
}

uint64_t sub_24F0EA474()
{

  swift_allocObject();
  *(v0 + 1152) = sub_24F91FBD8();

  return MEMORY[0x2822009F8](sub_24F0EA4FC, 0, 0);
}

uint64_t sub_24F0EA4FC()
{
  v1 = MTLCreateSystemDefaultDevice();
  v0[145] = v1;
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200920](v1, v2, v3, v4);
  }

  v5 = v1;
  v6 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  v0[146] = v6;
  [v6 setPixelFormat_];
  [v6 setCompressionType_];
  [v6 setUsage_];
  [v6 setWidth_];
  [v6 setHeight_];
  v7 = [v5 newTextureWithDescriptor_];
  v0[147] = v7;
  if (!v7)
  {
    sub_24F0F1B84();
    v0[152] = swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();

    v3 = sub_24F0EAABC;
    v1 = v0 + 2;
    v2 = v0 + 95;
    v4 = v0 + 108;

    return MEMORY[0x282200920](v1, v2, v3, v4);
  }

  v0[148] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA6FC, v9, v8);
}

uint64_t sub_24F0EA6FC()
{

  sub_24F91FC98();

  return MEMORY[0x2822009F8](sub_24F0EA774, 0, 0);
}

uint64_t sub_24F0EA774()
{
  sub_24F91FC58();
  *(v0 + 1192) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA828, v2, v1);
}

uint64_t sub_24F0EA828()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[126];

  sub_24F91FCB8();
  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v0[150] = v7;
  v0[151] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);

  return MEMORY[0x2822009F8](sub_24F0EA90C, 0, 0);
}

uint64_t sub_24F0EA90C()
{
  if (*(v0[59].i64[1] + 72) > 3u || *(v0[59].i64[1] + 72))
  {
    v2 = sub_24F92CE08();

    if (v2)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    v1 = vbslq_s8(vdupq_n_s32(v3), xmmword_24F9C8F20, xmmword_24F9C8F10);
  }

  else
  {

    v1 = xmmword_24F9C8F20;
  }

  v0[60] = v1;
  v0[76].i64[1] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EAB7C, v5, v4);
}

uint64_t sub_24F0EAAD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EAB7C()
{

  sub_24F91FAF8();

  return MEMORY[0x2822009F8](sub_24F0EAC20, 0, 0);
}

uint64_t sub_24F0EAC20()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 952);
  v3 = sub_24F91FC18();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_24F91FBF8();
  sub_24F0EF924(&unk_2861C1288);
  v5 = (3.1416 * v4.f32[0]) / 180.0;
  v6 = vmuls_lane_f32(3.1416, *v4.f32, 1) / 180.0;
  v7 = vmuls_lane_f32(3.1416, v4, 2) / 180.0;
  sub_24F0EF924(&unk_2861BFBB8);
  v35 = v8;
  v9 = __sincosf_stret(v5 * 0.5);
  v36 = vmulq_n_f32(v35, v9.__sinval);
  sub_24F0EF924(&unk_2861BFBE8);
  v34 = v10;
  v11 = __sincosf_stret(v6 * 0.5);
  v12 = vmulq_n_f32(v34, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vrev64q_s32(v12);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v38 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v12, v9.__cosval), v15, v36, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v36.f32, 1), vextq_s8(v14, v14, 8uLL), v36.f32[0]));
  sub_24F0EF924(&unk_2861BFC18);
  v37 = v16;
  v17 = __sincosf_stret(v7 * 0.5);
  v18 = vmulq_n_f32(v37, v17.__sinval);
  v18.i32[3] = LODWORD(v17.__cosval);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vrev64q_s32(v18);
  v21.i32[0] = v19.i32[1];
  v21.i32[3] = v19.i32[2];
  v39 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v19, 8uLL), *v38.f32, 1), vextq_s8(v20, v20, 8uLL), v38.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v18, v38, 3), v21, v38, 2));
  v22 = sub_24F91FB18();
  v23[1] = v39;
  v22(v0 + 696, 0);
  v24 = MEMORY[0x277D84F90];
  *(v0 + 856) = MEMORY[0x277D84F90];
  if ((*(v2 + 72) - 4) > 3u)
  {
    v25 = &unk_2861C0DE8;
  }

  else
  {
    v25 = *(&off_27968EA00 + (*(v2 + 72) - 4));
  }

  v26 = v25[2];
  *(v0 + 1232) = v26;

  if (v26)
  {
    v27 = *(v0 + 952);
    *(v0 + 1240) = objc_opt_self();
    *(v0 + 1345) = *(v27 + 72);
    *(v0 + 1272) = 0;
    *(v0 + 1280) = sub_24F92B7E8();
    v28 = sub_24F92B778();
    v30 = v29;
    v31 = sub_24F0EB158;
  }

  else
  {
    *(v0 + 1248) = v24;
    *(v0 + 1256) = sub_24F92B7E8();
    v28 = sub_24F92B778();
    v30 = v32;
    v31 = sub_24F0EAF34;
  }

  return MEMORY[0x2822009F8](v31, v28, v30);
}

uint64_t sub_24F0EAF34()
{

  sub_24F91FAD8();

  return MEMORY[0x2822009F8](sub_24F0EAFC8, 0, 0);
}

uint64_t sub_24F0EAFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v5 = *(v4 + 1248);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 1264) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = *(v4 + 1248);
    v12 = *(v4 + 1176);
    v13 = *(v4 + 1152);
    v14 = *(v4 + 1136);
    v15 = *(v4 + 1120);
    v16 = *(v4 + 1072);
    v17 = *(v4 + 904);

    swift_unknownObjectRelease();
    *v17 = v16;
    v17[1] = v14;
    v17[2] = v12;
    v17[3] = v15;
    v17[4] = v13;
    v17[5] = v11;
    a3 = sub_24F0EB924;
    v6 = v4 + 16;
    a2 = v4 + 760;
    a4 = v4 + 912;

    return MEMORY[0x282200920](v6, a2, a3, a4);
  }

  v6 = sub_24F92C738();
  *(v4 + 1264) = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x282200920](v6, a2, a3, a4);
  }

  v7 = *(v4 + 1248);
  *(v4 + 1320) = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x253052270](0);
  }

  else
  {
  }

  *(v4 + 1328) = v8;
  *(v4 + 1336) = sub_24F92B7E8();
  v10 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EB71C, v10, v9);
}

uint64_t sub_24F0EB158()
{

  swift_allocObject();
  *(v0 + 1288) = sub_24F91FBD8();

  return MEMORY[0x2822009F8](sub_24F0EB1E0, 0, 0);
}

uint64_t sub_24F0EB1E0()
{
  v1 = *(v0 + 1345);
  [*(v0 + 1240) whiteColor];
  if ((v1 - 4) > 3u)
  {
    v4 = &unk_2861C0DE8;
  }

  else
  {
    v4 = *(&off_27968EA00 + (v1 - 4));
  }

  if (*(v0 + 1272) >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {

    sub_24F91FC28();
    *(v0 + 1296) = sub_24F92B7E8();
    v5 = sub_24F92B778();
    v7 = v6;
    v4 = sub_24F0EB2F8;
    v2 = v5;
    v3 = v7;
  }

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_24F0EB2F8()
{

  sub_24F91FC98();

  return MEMORY[0x2822009F8](sub_24F0EB370, 0, 0);
}

uint64_t sub_24F0EB370()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2394D8);
  v4 = swift_allocObject();
  v0[163] = v4;
  *(v4 + 16) = xmmword_24F93DE60;
  v5 = MEMORY[0x277CDAEC8];
  *(v4 + 56) = v3;
  *(v4 + 64) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  v0[164] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EB46C, v8, v7);
}

uint64_t sub_24F0EB46C()
{
  v1 = v0[150];
  v2 = v0[131];
  v3 = v0[129];

  sub_24F91FCA8();

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_24F0EB514, 0, 0);
}

uint64_t sub_24F0EB514()
{
  v1 = *(v0 + 1272);
  *(v0 + 1344) = *(v0 + 1345);
  v2 = sub_24EE7860C();
  if (v1 >= *(v2 + 2))
  {
    __break(1u);
  }

  else
  {
    v17 = v2[*(v0 + 1272) + 2];

    v3 = sub_24F91FB18();
    *(v4 + 16) = v17;
    v3(v0 + 728, 0);

    MEMORY[0x253050F00](v5);
    if (*((*(v0 + 856) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 856) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_24F92B5E8();
LABEL_3:
  v6 = *(v0 + 1232);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v9 = *(v0 + 976);
  v10 = *(v0 + 1272) + 1;
  sub_24F92B638();

  (*(v8 + 8))(v7, v9);
  if (v10 == v6)
  {
    *(v0 + 1248) = *(v0 + 856);
    *(v0 + 1256) = sub_24F92B7E8();
    v11 = sub_24F92B778();
    v13 = v12;
    v14 = sub_24F0EAF34;
  }

  else
  {
    ++*(v0 + 1272);
    *(v0 + 1280) = sub_24F92B7E8();
    v11 = sub_24F92B778();
    v13 = v15;
    v14 = sub_24F0EB158;
  }

  return MEMORY[0x2822009F8](v14, v11, v13);
}

uint64_t sub_24F0EB71C()
{

  sub_24F91FAD8();

  return MEMORY[0x2822009F8](sub_24F0EB7B0, 0, 0);
}

uint64_t sub_24F0EB7B0()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1264);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 1248);
    v4 = *(v0 + 1176);
    v5 = *(v0 + 1152);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1120);
    v8 = *(v0 + 1072);
    v9 = *(v0 + 904);

    swift_unknownObjectRelease();
    *v9 = v8;
    v9[1] = v6;
    v9[2] = v4;
    v9[3] = v7;
    v9[4] = v5;
    v9[5] = v3;

    return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_24F0EB924, v0 + 912);
  }

  else
  {
    ++*(v0 + 1320);
    if ((*(v0 + 1248) & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x253052270]();
    }

    else
    {
    }

    *(v0 + 1328) = v10;
    *(v0 + 1336) = sub_24F92B7E8();
    v12 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F0EB71C, v12, v11);
  }
}

uint64_t sub_24F0EB940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EB9DC()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_24F0EBA48, v0 + 816);
}

uint64_t sub_24F0EBA64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EBB08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0EBBA4, 0, 0);
}

uint64_t sub_24F0EBBA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  v6 = sub_24F77BE4C(0, 0, v2, &unk_24F9C9120, v5);
  sub_24E601704(v2, &unk_27F21B570);
  *v3 = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F0EBCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_24F0EBCE8, 0, 0);
}

uint64_t sub_24F0EBCE8()
{
  v1 = *(v0 + 48);
  sub_24F91FD28();
  *(v0 + 80) = *(v1 + 72);
  v2 = sub_24EE783E0();
  v4 = v3;
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27F22B5B8;
  v6 = qword_27F22B5B8;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_24F0EBE18;

  return MEMORY[0x282129BD0](v2, v4, v5);
}

uint64_t sub_24F0EBE18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_24F0EBF64;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_24F0EBF40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F0EBF7C(uint64_t a1)
{
  v2 = sub_24F91FCF8();
  v3 = *(v2 - 8);
  v19 = v2;
  v20 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9213B8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F921408();
  sub_24F9213F8();
  sub_24F0F1C94(&unk_27F2394B0, MEMORY[0x277CDB218]);
  sub_24F921448();
  v7(v21, 0);
  v18 = a1;

  v8 = sub_24F921408();
  sub_24F921448();
  v8(v21, 0);
  sub_24F921398();
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  sub_24F9213A8();

  v10 = sub_24F9213D8();
  sub_24F9213C8();
  v10(v21, 0);
  sub_24F91FD28();
  sub_24F91FAE8();
  sub_24F0F1C94(&qword_27F21CE10, MEMORY[0x277CDB190]);
  v11 = v19;
  sub_24F92BB88();
  sub_24F92BC08();
  result = (*(v20 + 8))(v5, v11);
  if (v21[0] == v21[5])
  {
    v13 = v18;
    result = sub_24F91FAD8();
    v14 = *(v13 + 40);
    if (v14 >> 62)
    {
      result = sub_24F92C738();
      v15 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        return result;
      }
    }

    if (v15 < 1)
    {
      __break(1u);
    }

    else if ((v14 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        MEMORY[0x253052270](i, v14);
        sub_24F91FAD8();
        result = swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = v14 + 32;
      do
      {
        v17 += 8;

        sub_24F91FAD8();

        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_24F0EC340(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  sub_24F0EF50C(*a1);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  v11 = v8;

  swift_unknownObjectRetain();

  return sub_24E60169C(&v11, &v10, &qword_27F239400);
}

uint64_t sub_24F0EC3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_24F91F6B8();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v4[21] = *(v7 + 64);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = sub_24F9289E8();
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v4[26] = *(v9 + 64);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE28);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239470);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239450);
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0EC728, 0, 0);
}

uint64_t sub_24F0EC728()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  if (v2)
  {
    v35 = *(v0 + 304);
    v3 = *(v0 + 288);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v31 = **(v0 + 80);
    v32 = *(*(v0 + 280) + 48);
    v33 = *(v0 + 160);
    v34 = *(v0 + 200);
    v29 = *(v3 + 72);
    v30 = *(v0 + 208) + 7;
    do
    {
      v43 = v2;
      v7 = *(v0 + 304);
      v8 = *(v0 + 232);
      v39 = v8;
      v41 = *(v0 + 224);
      v9 = *(v0 + 216);
      v10 = *(v0 + 184);
      v11 = *(v0 + 192);
      v37 = v11;
      v12 = *(v0 + 152);
      v36 = v12;
      v40 = *(v0 + 96);
      v42 = v4;
      sub_24E60169C(v4, v7, &unk_27F239450);
      v13 = sub_24F92B858();
      v38 = *(v13 - 8);
      (*(v38 + 56))(v8, 1, 1, v13);
      v14 = *(v34 + 32);
      v14(v9, v7, v11);
      v15 = *(v33 + 32);
      v15(v10, v35 + v32, v12);
      v16 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v17 = (v30 + v16) & 0xFFFFFFFFFFFFFFF8;
      v18 = (*(v33 + 80) + v17 + 8) & ~*(v33 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      v14(v19 + v16, v9, v37);
      *(v19 + v17) = v40;
      v15(v19 + v18, v10, v36);
      sub_24E60169C(v39, v41, &unk_27F21B570);
      LODWORD(v17) = (*(v38 + 48))(v41, 1, v13);

      v20 = *(v0 + 224);
      if (v17 == 1)
      {
        sub_24E601704(*(v0 + 224), &unk_27F21B570);
      }

      else
      {
        sub_24F92B848();
        (*(v38 + 8))(v20, v13);
      }

      if (*(v19 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_24F92B778();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = &unk_24F9C90C8;
      *(v24 + 24) = v19;

      if (v23 | v21)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 232);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_24E601704(v6, &unk_27F21B570);
      v4 = v42 + v29;
      v2 = v43 - 1;
    }

    while (v43 != 1);
  }

  sub_24F92B7A8();
  *(v0 + 320) = MEMORY[0x277D84F90];
  v25 = swift_task_alloc();
  *(v0 + 328) = v25;
  *v25 = v0;
  v25[1] = sub_24F0ECBB0;
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);

  return MEMORY[0x2822002E8](v26, 0, 0, v27);
}

uint64_t sub_24F0ECBB0()
{

  return MEMORY[0x2822009F8](sub_24F0ECCAC, 0, 0);
}

uint64_t sub_24F0ECCAC()
{
  v1 = v0[31];
  v49 = *(v0[14] + 48);
  if (v49(v1, 1, v0[13]) == 1)
  {
    v2 = v0[39];
    (*(v0[33] + 8))(v0[34], v0[32]);
    if (v2)
    {
      v3 = 0;
      v4 = v0[36];
      v5 = v0[11] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = v0[20];
      v48 = (v6 + 32);
      v46 = (v6 + 8);
      v47 = (v0[25] + 8);
      v50 = MEMORY[0x277D84F90];
      v44 = *(v0[35] + 48);
      v45 = v0[37];
      v43 = *(v4 + 72);
      do
      {
        v15 = v0[40];
        v16 = v0[30];
        v17 = v0[22];
        v18 = v0[19];
        v19 = v0[13];
        sub_24E60169C(v5, v0[37], &unk_27F239450);
        (*v48)(v17, v45 + v44, v18);
        *(swift_task_alloc() + 16) = v17;
        sub_24E7AAD1C(sub_24F0F1964, v15, v16);

        v20 = v49(v16, 1, v19);
        v21 = v0[30];
        if (v20 == 1)
        {
          v22 = v0[16];
          sub_24E601704(v21, &qword_27F21CE28);
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
          (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_24E61798C(0, v50[2] + 1, 1, v50);
          }

          v25 = v50[2];
          v24 = v50[3];
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            v27 = sub_24E61798C(v24 > 1, v25 + 1, 1, v50);
            v26 = v25 + 1;
            v50 = v27;
          }

          v7 = v0 + 16;
        }

        else
        {
          v28 = v0[17];
          v29 = v0[15];
          sub_24E6009C8(v21, v28, &qword_27F213800);
          sub_24E60169C(v28, v29, &qword_27F213800);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_24E61798C(0, v50[2] + 1, 1, v50);
          }

          v25 = v50[2];
          v30 = v50[3];
          if (v25 >= v30 >> 1)
          {
            v50 = sub_24E61798C(v30 > 1, v25 + 1, 1, v50);
          }

          sub_24E601704(v0[17], &qword_27F213800);
          v7 = v0 + 15;
          v26 = v25 + 1;
        }

        ++v3;
        v8 = *v7;
        v9 = v0[39];
        v10 = v0[37];
        v11 = v0[24];
        v12 = v0[22];
        v13 = v0[19];
        v14 = v0[14];
        v50[2] = v26;
        sub_24E6009C8(v8, v50 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, &qword_27F213800);
        (*v47)(v10, v11);
        (*v46)(v12, v13);
        v5 += v43;
      }

      while (v3 != v9);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v40 = v0[9];

    *v40 = v50;

    v41 = v0[1];

    return v41();
  }

  else
  {
    sub_24E6009C8(v1, v0[18], &qword_27F213800);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v0[40];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_24E61798C(0, v32[2] + 1, 1, v0[40]);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_24E61798C(v33 > 1, v34 + 1, 1, v32);
    }

    v35 = v0[18];
    v36 = v0[14];
    v32[2] = v34 + 1;
    sub_24E6009C8(v35, v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, &qword_27F213800);
    v0[40] = v32;
    v37 = swift_task_alloc();
    v0[41] = v37;
    *v37 = v0;
    v37[1] = sub_24F0ECBB0;
    v38 = v0[31];
    v39 = v0[32];

    return MEMORY[0x2822002E8](v38, 0, 0, v39);
  }
}

uint64_t sub_24F0ED2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  v6[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0ED380, 0, 0);
}

uint64_t sub_24F0ED380()
{
  v1 = sub_24F9289A8();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_27F20FEE0 != -1)
  {
    v16 = v1;
    swift_once();
    v1 = v16;
  }

  v2 = v0[6];
  v3 = v1;
  v4 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v4);
  v5 = type metadata accessor for ColorGroup();
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5);
  v7 = v0[6];
  if (v6 == 1)
  {
    sub_24E601704(v0[6], &qword_27F2190D8);

LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  sub_24E77D068(v7);

  sub_24E69A5C4(0, &qword_27F2394A0);
  v8 = sub_24F92C3B8();
LABEL_8:
  v0[7] = v8;
  v9 = v0[2];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  v0[8] = v10;
  v11 = *(v10 + 64);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_24F0ED58C;
  v13 = v0[4];
  v14 = v0[5];

  return sub_24EF44798(v9 + v11, v13, v14, v8);
}

uint64_t sub_24F0ED58C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_24F0ED6A8, 0, 0);
}

uint64_t sub_24F0ED6A8()
{
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 80);
  (*(*(v1 - 8) + 56))();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F0ED74C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239480);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_24E60169C(a1, v10, &qword_27F213800);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    sub_24E601704(v10, &qword_27F213800);
    v20 = 1;
  }

  else
  {

    (*(v4 + 32))(v18, v10 + *(v19 + 64), v3);
    v20 = 0;
  }

  v21 = *(v4 + 56);
  v21(v18, v20, 1, v3);
  (*(v4 + 16))(v15, v33, v3);
  v21(v15, 0, 1, v3);
  v22 = *(v32 + 48);
  sub_24E60169C(v18, v7, &qword_27F21CE20);
  sub_24E60169C(v15, &v7[v22], &qword_27F21CE20);
  v23 = v4;
  v24 = *(v4 + 48);
  if (v24(v7, 1, v3) != 1)
  {
    sub_24E60169C(v7, v34, &qword_27F21CE20);
    if (v24(&v7[v22], 1, v3) != 1)
    {
      v26 = v23;
      v27 = v31;
      (*(v23 + 32))(v31, &v7[v22], v3);
      sub_24F0F1C94(&unk_27F239490, MEMORY[0x277CC95F0]);
      v28 = v34;
      v25 = sub_24F92AFF8();
      v29 = *(v26 + 8);
      v29(v27, v3);
      sub_24E601704(v15, &qword_27F21CE20);
      sub_24E601704(v18, &qword_27F21CE20);
      v29(v28, v3);
      sub_24E601704(v7, &qword_27F21CE20);
      return v25 & 1;
    }

    sub_24E601704(v15, &qword_27F21CE20);
    sub_24E601704(v18, &qword_27F21CE20);
    (*(v23 + 8))(v34, v3);
    goto LABEL_9;
  }

  sub_24E601704(v15, &qword_27F21CE20);
  sub_24E601704(v18, &qword_27F21CE20);
  if (v24(&v7[v22], 1, v3) != 1)
  {
LABEL_9:
    sub_24E601704(v7, &unk_27F239480);
    v25 = 0;
    return v25 & 1;
  }

  sub_24E601704(v7, &qword_27F21CE20);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_24F0EDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v27 = a4;
  v26 = sub_24F927D88();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v25 - v18;
  if (qword_27F210EC8 != -1)
  {
    swift_once();
  }

  v25[1] = qword_27F2393E0;
  (*(v17 + 16))(v19, a1, v16);
  v20 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = v27;
  (*(v17 + 32))(v21 + v20, v19, v16);
  aBlock[4] = sub_24F0EF67C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_115;
  v22 = _Block_copy(aBlock);

  sub_24F927DA8();
  v31 = MEMORY[0x277D84F90];
  sub_24F0F1C94(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  v23 = v26;
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v15, v12, v22);
  _Block_release(v22);
  (*(v30 + 8))(v12, v23);
  (*(v28 + 8))(v15, v29);
}