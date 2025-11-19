uint64_t sub_24ECD02FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 14 || v1 == 11)
  {
    v3 = *(a1 + 72);
    if (!*(v3 + 16))
    {
LABEL_13:
      v10 = 0;
      v11 = 0;
      return v10;
    }

    v4 = 0x7061726761726170;
    v5 = 0x7478655468;
  }

  else
  {
    if (v1 != 1)
    {
      goto LABEL_13;
    }

    v3 = *(a1 + 72);
    if (!*(v3 + 16))
    {
      goto LABEL_13;
    }

    v4 = 0x52746E65746E6F63;
    v5 = 0x676E697461;
  }

  v6 = sub_24E76D644(v4, v5 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v6, &v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  return v10;
}

uint64_t sub_24ECD03D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 72);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_24E76D644(0x676E69746172, 0xE600000000000000);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_24E643A9C(*(v2 + 56) + 32 * v3, v8);
  sub_24E9421D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v7 doubleValue];
  v6 = v5;

  return v6;
}

uint64_t sub_24ECD04A4(uint64_t a1)
{
  if (*(a1 + 120))
  {

    if (Artwork.URLTemplate.isSystemImage.getter())
    {
      v1 = sub_24F924978();

      return v1;
    }
  }

  if (BadgeType.rawValue.getter() == 0x676E69746172 && v3 == 0xE600000000000000)
  {

LABEL_9:

    return sub_24F924978();
  }

  v4 = sub_24F92CE08();

  if (v4)
  {
    goto LABEL_9;
  }

  return sub_24F9249A8();
}

uint64_t sub_24ECD05BC(uint64_t a1)
{
  v2 = *(a1 + 17);
  if (v2 == 2)
  {
    result = sub_24ECD02FC(a1);
    if (v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v2 != 13)
  {
LABEL_7:
    result = *(a1 + 32);
    if (result)
    {
      v5 = *(a1 + 24);

      return v5;
    }

    return result;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  if (*(a1 + 16))
  {
    result = 0;
    if (!*(a1 + 32))
    {
      return result;
    }

LABEL_15:
    v10 = sub_24F69ADAC();
    v12 = 8236;
    v13 = 0xE200000000000000;
    MEMORY[0x253050C20](v10);

    MEMORY[0x253050C20](v12, v13);

    return v14;
  }

  v6 = *(a1 + 72);
  if (*(v6 + 16))
  {
    v7 = sub_24E76D644(0x676E69746172, 0xE600000000000000);
    if (v8)
    {
      sub_24E643A9C(*(v6 + 56) + 32 * v7, &v12);
      sub_24E9421D0();
      if (swift_dynamicCast())
      {
        [v11 doubleValue];
      }
    }
  }

  result = sub_24F92BA38();
  v14 = result;
  v15 = v9;
  if (*(a1 + 32))
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_24ECD0758()
{
  result = qword_27F22D6E0;
  if (!qword_27F22D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D6E0);
  }

  return result;
}

void __swiftcall SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)(GameStoreKit::SearchTextSnapshot *__return_ptr retstr, Swift::String prefixText, Swift::Bool prefixIsProvisional, Swift::String_optional expansionText)
{
  retstr->prefixText = prefixText;
  retstr->prefixIsProvisional = prefixIsProvisional;
  retstr->expansionText = expansionText;
}

uint64_t _s12GameStoreKit18SearchTextSnapshotV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v9 = sub_24F92CE08();
  result = 0;
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
LABEL_9:
    if (v4)
    {
      if (v6 && (v3 == v7 && v4 == v6 || (sub_24F92CE08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24ECD089C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_24F92B3A8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ECD08E4@<X0>(uint64_t a1@<X8>)
{
  sub_24F923BB8();
  sub_24ECD246C(&qword_27F2195F8, MEMORY[0x277CDF7F8]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (v9[4] == v9[0])
  {
    v2 = sub_24F923A38();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_24F92BC88();
    v6 = v5;
    v7 = sub_24F923A38();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_24ECD0A7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_24F92C6B8();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 9;
  }

  else
  {
    result = sub_24EFB2FB8(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

void *sub_24ECD0AF8(uint64_t a1)
{
  v2 = sub_24F92C6B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_24ECD223C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_24ECD0B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D6F8);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_24F92C6B8();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v13 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_24ECD22D0(&v6[v10], v7, *(a1 + 36), 0, a1);
    a2[1] = v11;
    sub_24E61C0A8(&v6[v10], a2 + *(v4 + 48));
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_24ECD0CFC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_24F92C6E8();
    v5 = v4;
    v6 = sub_24F92C798();
    v8 = v7;
    v9 = MEMORY[0x253052090](v3, v5, v6, v7);
    sub_24E6586A8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24E6586A8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24F92C6B8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24EFB3064(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_24E6586A8(v3, v5, v2 != 0);
  return v12;
}

void (*TodayCardMediaMultiAppFallback.init(deserializing:using:)(char *a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v80 = a2;
  v75 = v3;
  v68 = *v3;
  v81 = sub_24F9285B8();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v62 - v7;
  MEMORY[0x28223BE20](v8);
  v65 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v64 = &v62 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v63 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v76 = &v62 - v30;
  v82 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v67 = v16;
  v31 = *(v16 + 8);
  v74 = v15;
  v71 = v31;
  v31(v25, v15);
  v77 = v27;
  v78 = v26;
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0);
    v32 = sub_24F92AC38();
    sub_24ECD246C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v33 = 0x7370756B636F6CLL;
    v34 = v68;
    v33[1] = 0xE700000000000000;
    v33[2] = v34;
    (*(*(v32 - 1) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v79 + 8))(v80, v81);
    v71(v82, v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v77 + 32))(v76, v14, v78);
    sub_24F929608();
    sub_24F928398();
    v35 = *(v79 + 16);
    v36 = v65;
    v37 = v80;
    v38 = v81;
    v35(v65);
    sub_24F929548();
    v39 = v73;
    v68 = v35;
    (v35)(v73, v37, v38);
    (*(v77 + 16))(v63, v76, v78);
    (v35)(v36, v39, v38);
    type metadata accessor for Lockup();
    sub_24ECD246C(&qword_27F221FB8, type metadata accessor for Lockup);
    v40 = sub_24F92B6A8();
    v41 = v75;
    *&v75[OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups] = v40;
    v42 = v82;
    sub_24F928398();
    v43 = sub_24F928348();
    v45 = v44;
    v46 = v22;
    v47 = v74;
    v48 = v71;
    v71(v46, v74);
    v49 = &v41[OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText];
    *v49 = v43;
    v49[1] = v45;
    v50 = v64;
    sub_24F928398();
    v51 = sub_24F928258();
    LOBYTE(v45) = v52;
    v48(v50, v47);
    v53 = 4;
    if ((v45 & 1) == 0)
    {
      v53 = v51;
    }

    *&v41[OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit] = v53;
    v54 = v66;
    (*(v67 + 16))(v66, v42, v47);
    v55 = v69;
    (v68)(v69, v80, v81);
    v56 = v70;
    v57 = TodayCardMedia.init(deserializing:using:)(v54, v55);
    if (v56)
    {
      v32 = *(v79 + 8);
      v58 = v81;
      v32(v80, v81);
      v48(v82, v47);
      v32(v73, v58);
    }

    else
    {
      v32 = v57;
      v60 = *(v79 + 8);
      v61 = v81;
      v60(v80, v81);
      v48(v82, v47);
      v60(v73, v61);
    }

    sub_24E601704(v72, &qword_27F213E68);
    (*(v77 + 8))(v76, v78);
  }

  return v32;
}

uint64_t TodayCardMediaMultiAppFallback.__allocating_init(lockups:additionalText:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups) = a1;
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit) = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_24E60169C(a5, v14 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v25, &v22, &qword_27F235830);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(a5, &qword_27F213E68);
  sub_24E601704(v25, &qword_27F235830);
  *(v14 + 16) = 3;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaMultiAppFallback.init(lockups:additionalText:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups) = a1;
  v18 = (v6 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText);
  *v18 = a2;
  v18[1] = a3;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit) = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_24E60169C(a5, v17, &qword_27F213E68);
  sub_24E60169C(v35, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  sub_24E601704(a5, &qword_27F213E68);
  sub_24E601704(v35, &qword_27F235830);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 3;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaMultiAppFallback.additionalText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText);

  return v1;
}

char *TodayCardMediaMultiAppFallback.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TodayCardMediaMultiAppFallback.dominantStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups);
  v21 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x253052270](v6, v2);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

      v8 = *(result + 48);

      v9 = swift_unknownObjectRelease();
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_9:
      v6 = v4;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = sub_24F92C738();
      if (!v3)
      {
        goto LABEL_22;
      }

      goto LABEL_3;
    }

    if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v4 = v6 + 1;
    if (!*(*(v2 + 32 + 8 * v6) + 48))
    {
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x253050F00](v9);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v5 = v21;
  }

  while (v4 != v3);
LABEL_23:
  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_25:
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x253052270](v11, v5);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_48;
        }

        v14 = *(result + 64);
        swift_unknownObjectRelease();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v10 = sub_24F92C738();
          if (!v10)
          {
            break;
          }

          goto LABEL_25;
        }

        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v13 = v11 + 1;
        v14 = *(*(v5 + 32 + 8 * v11) + 64);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24E618F74(0, *(v12 + 2) + 1, 1, v12);
      }

      v11 = v13;
      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_24E618F74((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v12[v16 + 32] = v14;
      if (v13 == v10)
      {
        goto LABEL_42;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_42:

  v17 = sub_24F45DD60(v12);

  if (*(v17 + 16) == 1)
  {
    sub_24ECD0A7C(v17, &v20);

    v18 = v20;
    if (v20 == 9)
    {
      v18 = 1;
    }
  }

  else
  {

    v18 = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_24ECD20A8()
{
}

uint64_t TodayCardMediaMultiAppFallback.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaMultiAppFallback.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

void *sub_24ECD223C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24ECD22D0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = type metadata accessor for Player(0);
    sub_24E70D960(v7 + *(*(v9 - 8) + 72) * a2, v6);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TodayCardMediaMultiAppFallback()
{
  result = qword_27F22D6E8;
  if (!qword_27F22D6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECD246C(unint64_t *a1, void (*a2)(uint64_t))
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

id static UIViewPropertyAnimator.fadeInPropertyAnimator.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753D0]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v0 timingParameters:0.15];

  return v1;
}

uint64_t sub_24ECD2530(void *a1, char a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = &v54 - v10;
  if (![a1 hasMessagesExtension])
  {
LABEL_9:
    if ([a1 supportsIPad] & 1) != 0 || (objc_msgSend(a1, sel_supportsIPhone))
    {
      v19 = 0;
    }

    else
    {
      v19 = [a1 supportsRealityDevice] ^ 1;
    }

    v20 = [a1 supportsIPad];
    v55 = v4;
    if ((v20 & 1) != 0 || ([a1 supportsIPhone] & 1) != 0 || (objc_msgSend(a1, sel_supportsRealityDevice) & 1) == 0)
    {
      if (a2)
      {
        v22 = [a1 appIconArtworkURLString];
        if (v22)
        {
          v23 = v22;
          v54 = sub_24F92B0D8();
          v25 = v24;

          v26 = 25186;
        }

        else
        {
          if (v19)
          {
            v26 = 25193;
          }

          else
          {
            v26 = 24937;
          }

          v40 = [a1 appIconCompatibleArtworkURLString];
          if (v40)
          {
            v41 = v40;
            v54 = sub_24F92B0D8();
            v25 = v42;
          }

          else
          {
            v43 = [a1 iconURLString];
            v44 = sub_24F92B0D8();
            v46 = v45;

            v58 = v44;
            v59 = v46;
            strcpy(v57, "{w}x{h}bb.{f}");
            v57[7] = -4864;
            strcpy(v56, "{w}x{h}{c}.{f}");
            v56[15] = -18;
            sub_24E600AEC();
            v54 = sub_24F92C568();
            v25 = v47;
          }
        }

        v21 = 2;
        goto LABEL_36;
      }

      if (v19)
      {
        v21 = 8;
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 3;
    }

    v27 = [a1 iconURLString];
    v54 = sub_24F92B0D8();
    v25 = v28;

    v26 = 25186;
    if (!v19)
    {
      v29 = 0;
LABEL_37:
      v48 = sub_24F929608();
      (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
      type metadata accessor for Artwork();
      v36 = swift_allocObject();
      *(v36 + 152) = 0u;
      *(v36 + 168) = 0u;
      *(v36 + 184) = 0;
      sub_24F91F6A8();
      v49 = sub_24F91F668();
      v51 = v50;
      (*(v5 + 8))(v7, v55);
      v58 = v49;
      v59 = v51;
      sub_24F92C7F8();
      sub_24E60169C(v11, v36 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
      *(v36 + 16) = v54;
      *(v36 + 24) = v25;
      *(v36 + 32) = vdupq_n_s64(0x404E000000000000uLL);
      *(v36 + 48) = v29;
      *(v36 + 56) = 0;
      *(v36 + 72) = v26;
      *(v36 + 80) = 0xE200000000000000;
      *(v36 + 64) = v21;
      *(v36 + 104) = MEMORY[0x277D84F90];
      v58 = v26;
      v59 = 0xE200000000000000;
      goto LABEL_38;
    }

LABEL_36:
    v29 = [objc_opt_self() clearColor];
    goto LABEL_37;
  }

  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = sub_24F92B0D8();
    v16 = v15;

    if (v14 == 0xD000000000000013 && 0x800000024FA59DD0 == v16)
    {

      goto LABEL_26;
    }

    v18 = sub_24F92CE08();

    if (v18)
    {
      goto LABEL_26;
    }
  }

  if (![a1 isHiddenFromSpringboard])
  {
    goto LABEL_9;
  }

LABEL_26:
  v30 = [a1 ovalIconURLString];
  if (v30)
  {
    v31 = v30;
    v32 = sub_24F92B0D8();
    v34 = v33;

    v35 = sub_24F929608();
    (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
    type metadata accessor for Artwork();
    v36 = swift_allocObject();
    *(v36 + 152) = 0u;
    *(v36 + 168) = 0u;
    *(v36 + 184) = 0;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v5 + 8))(v7, v4);
    v58 = v37;
    v59 = v39;
    sub_24F92C7F8();
    sub_24E60169C(v11, v36 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
    *(v36 + 16) = v32;
    *(v36 + 24) = v34;
    *(v36 + 32) = xmmword_24F995420;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 72) = 25186;
    *(v36 + 80) = 0xE200000000000000;
    *(v36 + 64) = 5;
    *(v36 + 104) = MEMORY[0x277D84F90];
    v58 = 25186;
    v59 = 0xE200000000000000;
LABEL_38:
    v52 = Artwork.Crop.preferredContentMode.getter();
    sub_24E601704(v11, &qword_27F213E68);
    *(v36 + 88) = v52;
    *(v36 + 96) = 3;
    return v36;
  }

  return 0;
}

id sub_24ECD2C04(void *a1, uint64_t a2)
{
  v73 = sub_24F91F6B8();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71 - v6;
  v8 = sub_24F9294C8();
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928AD8();
  v86 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v71 - v13;
  v85 = sub_24F928698();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = &v71 - v25;
  result = [a1 productURL];
  if (result)
  {
    v79 = v10;
    v80 = v7;
    v28 = result;
    sub_24F91F428();

    v29 = a1;

    v30 = sub_24ECD5680(v29, a2);
    v31 = *(v20 + 16);
    v76 = v26;
    v31(v22, v26, v19);
    (*(v20 + 56))(v18, 1, 1, v19);
    type metadata accessor for ShareSheetData();
    v32 = swift_allocObject();
    v33 = *(v20 + 32);
    v77 = v19;
    v33(v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v22, v19);
    sub_24E6009C8(v18, v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, &qword_27F228530);
    v75 = v32;
    *(v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v30 | 0x4000000000000000;
    v74 = v30;

    *&v93[0] = [v29 storeItemID];
    v34 = sub_24F92CD88();
    v78 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
    v36 = sub_24F92A2C8();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_24F93A400;
    v41 = v40 + v39;
    if (qword_27F2102B8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v36, qword_27F229C80);
    v43 = *(v37 + 16);
    v43(v41, v42, v36);
    v44 = v82;
    if (qword_27F2102A0 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v36, qword_27F229C38);
    v43(v41 + v38, v45, v36);
    v46 = sub_24E805DFC(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v47 = MEMORY[0x277D84F90];
    v48 = sub_24EA200BC(MEMORY[0x277D84F90]);
    type metadata accessor for ClickMetricsEvent();
    inited = swift_initStackObject();
    inited[6] = 0x70756B636F6CLL;
    inited[7] = 0xE600000000000000;
    v50 = v78;
    inited[4] = v34;
    inited[5] = v50;
    v51 = MEMORY[0x277D84FA0];
    inited[8] = v46;
    inited[9] = v51;
    inited[2] = v48;
    inited[3] = v47;
    sub_24E98C2FC();
    swift_setDeallocating();
    ClickMetricsEvent.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
    v52 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_24F93DE60;
    v54 = *(v44 + 16);
    v78 = v15;
    v54(v53 + v52, v15, v85);
    sub_24F9294B8();
    v55 = v84;
    sub_24F928AA8();
    v94 = 0;
    memset(v93, 0, sizeof(v93));
    v56 = *(v86 + 16);
    v57 = v83;
    v58 = v79;
    v56(v83, v55, v79);
    v59 = sub_24F929608();
    v60 = v80;
    (*(*(v59 - 8) + 56))(v80, 1, 1, v59);
    type metadata accessor for BlankAction();
    v61 = swift_allocObject();
    sub_24E60169C(v93, v92, &qword_27F235830);
    v56((v61 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v57, v58);
    sub_24E60169C(v60, v61 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
    v62 = (v61 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v62 = 0u;
    v62[1] = 0u;
    v63 = v61 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v92, &v89, &qword_27F235830);
    if (*(&v90 + 1))
    {
      v64 = v90;
      *v63 = v89;
      *(v63 + 16) = v64;
      *(v63 + 32) = v91;
    }

    else
    {
      v65 = v71;
      sub_24F91F6A8();
      v66 = sub_24F91F668();
      v68 = v67;
      (*(v72 + 8))(v65, v73);
      v87 = v66;
      v88 = v68;
      sub_24F92C7F8();
      sub_24E601704(&v89, &qword_27F235830);
    }

    v69 = v77;

    sub_24E601704(v92, &qword_27F235830);
    sub_24E601704(v60, &qword_27F213E68);
    v70 = *(v86 + 8);
    v70(v83, v58);
    sub_24E601704(v93, &qword_27F235830);
    v70(v84, v58);
    (*(v44 + 8))(v78, v85);
    (*(v20 + 8))(v76, v69);
    *(v61 + 16) = 0u;
    *(v61 + 32) = 0u;
    type metadata accessor for LockupContextMenuData();
    result = swift_allocObject();
    *(result + 2) = v75;
    *(result + 3) = v61;
  }

  return result;
}

uint64_t sub_24ECD368C(void *a1)
{
  v2 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"internal";
  *(v3 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"internal";
  v6 = @"convergence";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (!IsAnyOf || (v9 = [objc_opt_self() standardUserDefaults], v10 = sub_24F92B098(), v11 = objc_msgSend(v9, sel_stringArrayForKey_, v10), v9, v10, !v11))
  {
    v12 = [a1 appCapabilities];
    if (!v12)
    {
      return 0;
    }

    v11 = v12;
  }

  v13 = sub_24F92B5A8();

  return v13;
}

uint64_t Lockup.__allocating_init(fromPurchase:isAppleSiliconSupportEnabled:isRosettaAvailable:isHidden:bag:appStateController:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v202 = a7;
  v223 = a6;
  v224 = a5;
  LODWORD(v230) = a4;
  v205 = sub_24F91F648();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_24F928818();
  v208 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v219 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v218 = &v193 - v11;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v193 - v12;
  v221 = sub_24F91F6B8();
  v216 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v215 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v201 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v199 = &v193 - v17;
  MEMORY[0x28223BE20](v18);
  v207 = &v193 - v19;
  MEMORY[0x28223BE20](v20);
  v213 = &v193 - v21;
  v232 = sub_24F928AD8();
  v225 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v217 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v214 = &v193 - v24;
  MEMORY[0x28223BE20](v25);
  v209 = &v193 - v26;
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v212 = &v193 - v29;
  v30 = [a1 longTitle];
  v31 = sub_24F92B0D8();
  v33 = v32;

  *&v246 = [a1 storeItemID];
  v233 = sub_24F92CD88();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24F93FC20;
  *(v36 + 32) = 0x726F646E6576;
  *(v36 + 40) = 0xE600000000000000;

  v37 = [a1 developerName];
  v38 = sub_24F92B0D8();
  v40 = v39;

  v41 = MEMORY[0x277D837D0];
  *(v36 + 48) = v38;
  *(v36 + 56) = v40;
  *(v36 + 72) = v41;
  *(v36 + 80) = 0x656D614E707061;
  *(v36 + 88) = 0xE700000000000000;
  *(v36 + 96) = v31;
  v220 = v31;
  *(v36 + 104) = v33;
  *(v36 + 120) = v41;
  *(v36 + 128) = 0x6449656C646E7562;
  *(v36 + 136) = 0xE800000000000000;
  v222 = v33;

  v42 = [a1 bundleID];
  v43 = sub_24F92B0D8();
  v45 = v44;

  *(v36 + 144) = v43;
  *(v36 + 152) = v45;
  *(v36 + 168) = v41;
  strcpy((v36 + 176), "isRedownload");
  *(v36 + 189) = 0;
  *(v36 + 190) = -5120;
  *(v36 + 216) = MEMORY[0x277D839B0];
  *(v36 + 192) = 1;
  v46 = sub_24E608448(v36);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = [a1 redownloadParams];
  sub_24F92B0D8();

  v48 = sub_24E910830();
  v50 = v49;

  *(&v247 + 1) = v41;
  *&v246 = v48;
  *(&v246 + 1) = v50;
  v51 = v209;
  sub_24E612B0C(&v246, &v243);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v240 = v46;
  sub_24E81C1D4(&v243, 0x6D61726150797562, 0xE900000000000073, isUniquelyReferenced_nonNull_native);
  v53 = v240;
  v54._countAndFlagsBits = 0xD00000000000001CLL;
  v54._object = 0x800000024FA59D50;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v56 = localizedString(_:comment:)(v54, v55);
  countAndFlagsBits = v56._countAndFlagsBits;
  object = v56._object;

  v229 = a1;
  v57 = v35;
  v58 = v225;
  v59 = [a1 bundleID];
  v60 = sub_24F92B0D8();
  v62 = v61;

  *(&v250 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  *&v249 = v53;
  v63 = v212;
  sub_24F928A98();
  type metadata accessor for OfferAction();
  v64 = swift_allocObject();
  v65 = (v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v65 = v233;
  v65[1] = v57;
  sub_24E643A9C(&v249, v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v66 = (v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v66 = 0;
  v66[1] = 0;
  v67 = (v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v67 = v60;
  v67[1] = v62;
  v68 = v213;
  v69 = (v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v69 = 0;
  v69[1] = 0;
  *(v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = 0;
  *(v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = 0;
  *(v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = 2;
  *(v64 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = 0;
  v70 = v58[2];
  v248 = 0;
  v246 = 0u;
  v247 = 0u;
  v195 = v58 + 2;
  v194 = v70;
  v70(v51, v63, v232);
  v71 = sub_24F929608();
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v228 = v71;
  v227 = v73;
  v226 = v72 + 56;
  (v73)(v68, 1, 1);
  v74 = (v64 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v74 = 0u;
  v74[1] = 0u;
  sub_24E60169C(&v246, &v240, &qword_27F235830);
  v231 = v57;
  if (*(&v241 + 1))
  {
    v243 = v240;
    v244 = v241;
    v245 = v242;
    v75 = v221;
  }

  else
  {
    v76 = v215;
    sub_24F91F6A8();
    v77 = v51;
    v78 = sub_24F91F668();
    v80 = v79;
    v75 = v221;
    (*(v216 + 8))(v76, v221);
    v238 = v78;
    v51 = v77;
    v239 = v80;
    sub_24F92C7F8();
    sub_24E601704(&v240, &qword_27F235830);
    v57 = v231;
  }

  sub_24E601704(&v246, &qword_27F235830);
  v81 = v58[1];
  v82 = v232;
  v212 = (v58 + 1);
  v193 = v81;
  v81(v63, v232);
  __swift_destroy_boxed_opaque_existential_1(&v249);
  v83 = v64 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v84 = v244;
  *v83 = v243;
  *(v83 + 1) = v84;
  *(v83 + 4) = v245;
  sub_24E6009C8(v68, v64 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  v85 = object;
  v64[2] = countAndFlagsBits;
  v64[3] = v85;
  v64[4] = 0;
  v64[5] = 0;
  v88 = v58[4];
  v86 = (v58 + 4);
  v87 = v88;
  v88(v64 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v51, v82);
  v89 = v224;
  if (v230)
  {
    v225 = v86;
    v90._countAndFlagsBits = 0xD000000000000018;
    v90._object = 0x800000024FA59DB0;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    v92 = localizedString(_:comment:)(v90, v91);
    v213 = v92._countAndFlagsBits;
    type metadata accessor for UnhideAppAction();
    v93 = swift_allocObject();
    *(v93 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
    v94 = (v93 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
    *v94 = v233;
    v94[1] = v57;
    *(v93 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_offerAction) = v64;
    v248 = 0;
    v246 = 0u;
    v247 = 0u;

    sub_24F928A98();
    v95 = v207;
    v227(v207, 1, 1, v228);
    v230 = v93;
    v96 = (v93 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v96 = 0u;
    v96[1] = 0u;
    sub_24E60169C(&v246, &v240, &qword_27F235830);
    if (*(&v241 + 1))
    {
      v243 = v240;
      v244 = v241;
      v245 = v242;
    }

    else
    {
      v97 = v215;
      sub_24F91F6A8();
      v98 = sub_24F91F668();
      v100 = v99;
      v101 = v97;
      v95 = v207;
      (*(v216 + 8))(v101, v75);
      *&v249 = v98;
      *(&v249 + 1) = v100;
      sub_24F92C7F8();
      sub_24E601704(&v240, &qword_27F235830);
    }

    sub_24E601704(&v246, &qword_27F235830);
    v102 = v230;
    v103 = v230 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v104 = v244;
    *v103 = v243;
    *(v103 + 16) = v104;
    *(v103 + 32) = v245;
    sub_24E6009C8(v95, &v102[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68);
    *(v102 + 2) = v213;
    *(v102 + 3) = v92._object;
    *(v102 + 4) = 0;
    *(v102 + 5) = 0;
    v87(&v102[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v214, v232);
  }

  else
  {
    v230 = v64;
  }

  v105 = v229;
  v106 = [v229 bundleID];
  v107 = sub_24F92B0D8();
  v109 = v108;

  if ([v105 is32BitOnly])
  {
    v110 = 5;
  }

  else
  {
    v111 = [v105 requiredCapabilities];
    if (v111)
    {
      v112 = v111;
      sub_24F92B5A8();
    }

    v113 = objc_opt_self();
    v114 = sub_24F92B588();

    v115 = [v113 hasCapabilities_];

    if (v115)
    {
      v110 = 0;
    }

    else
    {
      v110 = 5;
    }
  }

  v116 = [v105 contentRatingFlags];
  v117 = sub_24ECD368C(v105);
  v118 = MEMORY[0x277D84F90];
  v119 = sub_24E60C36C(MEMORY[0x277D84F90]);
  v120 = sub_24E60C36C(v118);
  v121 = sub_24E60C36C(v118);
  type metadata accessor for OfferDisplayProperties();
  v122 = swift_allocObject();
  *(v122 + 16) = 0;
  v123 = v231;
  *(v122 + 24) = v233;
  *(v122 + 32) = v123;
  *(v122 + 40) = v107;
  *(v122 + 48) = v109;
  *(v122 + 56) = 0;
  *(v122 + 64) = 0;
  *(v122 + 72) = v119;
  *(v122 + 80) = v120;
  *(v122 + 88) = v121;
  *(v122 + 96) = v110;
  *(v122 + 97) = 0;
  *(v122 + 104) = 0;
  *(v122 + 112) = 0;
  *(v122 + 119) = 0;
  *(v122 + 128) = v116;
  *(v122 + 136) = 0;
  *(v122 + 144) = 0u;
  *(v122 + 160) = 0u;
  *(v122 + 176) = 0u;
  *(v122 + 192) = 0u;
  *(v122 + 208) = 0;
  *(v122 + 216) = 0;
  *(v122 + 224) = 0;
  *(v122 + 232) = 0;
  *(v122 + 240) = v117;
  if (v89)
  {
    v124 = qword_27F210C10;

    if (v124 != -1)
    {
      swift_once();
    }

    v125 = v196;
    sub_24F92A3B8();
    v126 = v198;
    sub_24F92A408();

    (*(v197 + 8))(v125, v126);
    v127 = v246;
  }

  else
  {
    v127 = 0;
  }

  v128 = v229;
  v129 = v231;
  v225 = sub_24ECD2530(v229, v127);
  if (v225)
  {
    v130 = sub_24F929D18();
    v132 = v131;
    v248 = 0;
    v246 = 0u;
    v247 = 0u;
    *&v243 = 0;
    *(&v243 + 1) = 0xE000000000000000;
    sub_24F92C888();

    *&v243 = 0xD00000000000001BLL;
    *(&v243 + 1) = 0x800000024FA59D70;
    MEMORY[0x253050C20](v233, v129);

    MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA59D90);
    v133 = v218;
    sub_24F91F488();

    v249 = 0u;
    v250 = 0u;
    v134 = v217;
    sub_24F928A98();
    type metadata accessor for FlowAction();
    v135 = swift_allocObject();
    *(v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v136 = v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v136 = 0u;
    *(v136 + 16) = 0u;
    *(v136 + 32) = 0;
    v137 = (v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v137 = 0;
    v137[1] = 0;
    *(v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 1;
    sub_24E60169C(v133, v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    v138 = (v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v138 = 0;
    v138[1] = 0;
    v139 = v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v139 = xmmword_24F9406F0;
    *(v139 + 24) = 0;
    *(v139 + 32) = 0;
    *(v139 + 16) = 0;
    *(v139 + 40) = 0;
    *(v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
    *(v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v140 = (v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v140 = v130;
    v140[1] = v132;
    sub_24E60169C(&v246, &v243, &qword_27F235830);
    v194(v135 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v134, v232);
    v227((v135 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics), 1, 1, v228);
    v141 = (v135 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v141 = 0u;
    v141[1] = 0u;
    v142 = v135 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(&v243, &v240, &qword_27F235830);
    if (*(&v241 + 1))
    {
      v143 = v241;
      *v142 = v240;
      *(v142 + 16) = v143;
      *(v142 + 32) = v242;
    }

    else
    {
      v145 = v215;
      sub_24F91F6A8();
      v146 = sub_24F91F668();
      v148 = v147;
      (*(v216 + 8))(v145, v221);
      v238 = v146;
      v239 = v148;
      sub_24F92C7F8();
      sub_24E601704(&v240, &qword_27F235830);
    }

    sub_24E601704(&v243, &qword_27F235830);
    *(v135 + 16) = 0u;
    *(v135 + 32) = 0u;

    FlowAction.setPageData(_:)(&v249);

    v193(v217, v232);
    sub_24E601704(&v249, &qword_27F2129B0);
    sub_24E601704(v218, &qword_27F228530);
    sub_24E601704(&v246, &qword_27F235830);

    v149 = [v128 bundleID];
    v232 = sub_24F92B0D8();
    v218 = v150;

    swift_retain_n();

    v151 = v219;
    sub_24F928808();
    type metadata accessor for ProductPage();
    v152 = swift_allocObject();
    v153 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
    v154 = MEMORY[0x277D84F90];
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
    v155 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;

    *(v152 + v155) = sub_24E609890(v154);
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = 0;
    swift_beginAccess();
    *(v152 + v153) = v154;

    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v154;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = 2;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = 0;
    v156 = sub_24E609890(v154);
    swift_beginAccess();
    *(v152 + v155) = v156;

    v157 = v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
    *v157 = 0u;
    *(v157 + 16) = 0u;
    *(v157 + 32) = 0u;
    *(v157 + 48) = 0;
    v158 = (v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
    *v158 = 0;
    v158[1] = 0;
    v159 = v208;
    v160 = v200;
    (*(v208 + 16))(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics, v151, v200);
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = 0;
    v161 = (v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
    *v161 = 0;
    v161[1] = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = 0;
    v162 = v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
    *(v162 + 8) = 1;
    *v162 = 0;
    v163 = (v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
    *v163 = 0;
    v163[1] = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v122;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = 0;
    *(v152 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = 0;
    v248 = 0;
    v246 = 0u;
    v247 = 0u;
    v164 = v199;
    v227(v199, 1, 1, v228);
    *(v152 + 424) = 4;
    sub_24E60169C(&v246, &v240, &qword_27F235830);
    if (*(&v241 + 1))
    {
      v243 = v240;
      v244 = v241;
      v245 = v242;
    }

    else
    {

      v165 = v215;
      sub_24F91F6A8();
      v166 = sub_24F91F668();
      v168 = v167;
      (*(v216 + 8))(v165, v221);
      v236 = v166;
      v237 = v168;
      v159 = v208;
      sub_24F92C7F8();
      sub_24E601704(&v240, &qword_27F235830);
    }

    v169 = v244;
    *(v152 + 448) = v243;
    *(v152 + 464) = v169;
    *(v152 + 480) = v245;
    sub_24E60169C(v164, v152 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
    v170 = v231;
    *(v152 + 16) = v233;
    *(v152 + 24) = v170;
    v171 = v218;
    *(v152 + 32) = v232;
    *(v152 + 40) = v171;
    *(v152 + 48) = v225;
    *(v152 + 56) = 0;
    *(v152 + 64) = 0u;
    *(v152 + 80) = 0u;
    v172 = v222;
    *(v152 + 96) = v220;
    *(v152 + 104) = v172;
    *(v152 + 120) = 0;
    *(v152 + 128) = 0;
    *(v152 + 112) = 0;
    *(v152 + 136) = 2;
    *(v152 + 144) = 0;
    *(v152 + 152) = 0;
    *(v152 + 216) = 0u;
    *(v152 + 200) = 0u;
    *(v152 + 184) = 0u;
    *(v152 + 376) = 0u;
    *(v152 + 392) = 0u;
    *(v152 + 408) = 0x8000;
    *(v152 + 360) = 0;
    *(v152 + 416) = 0;
    *(v152 + 432) = MEMORY[0x277D84FA0];
    *(v152 + 168) = 0;
    *(v152 + 176) = 0;
    *(v152 + 160) = 0;
    *(v152 + 248) = 0;
    *(v152 + 256) = 0;
    *(v152 + 232) = v230;
    *(v152 + 240) = v122;
    *(v152 + 264) = 0u;
    *(v152 + 280) = 0u;
    *(v152 + 296) = 0u;
    *(v152 + 312) = 0u;
    *(v152 + 328) = 0u;

    sub_24E601704(v164, &qword_27F213E68);
    sub_24E601704(&v246, &qword_27F235830);
    (*(v159 + 8))(v219, v160);
    *(v152 + 344) = MEMORY[0x277D84F90];
    *(v152 + 352) = 0;
    *(v152 + 440) = 0;
    *(v152 + 368) = 0;

    v174 = _s12GameStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(v173);
    v175 = v174;
    if (v174)
    {
      v174 = type metadata accessor for ShelfBasedProductPage();
    }

    else
    {
      *(&v246 + 1) = 0;
      *&v247 = 0;
    }

    *&v246 = v175;
    *(&v247 + 1) = v174;
    FlowAction.setPageData(_:)(&v246);
    sub_24E601704(&v246, &qword_27F2129B0);
    v176 = (v135 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    swift_beginAccess();
    v177 = v202;
    *v176 = v223;
    v176[1] = v177;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v178 = v229;
    v179 = [v229 datePurchased];
    v180 = v203;
    sub_24F91F608();

    v181 = sub_24EE59294(v180);
    v183 = v182;
    (*(v204 + 8))(v180, v205);
    if (v183)
    {
      v232 = v181;
      v221 = v183;
    }

    else
    {
      v184 = [v178 developerName];
      v232 = sub_24F92B0D8();
      v221 = v185;
    }

    v248 = 0;
    v246 = 0u;
    v247 = 0u;
    v236 = v233;
    v237 = v170;
    v186 = [v178 bundleID];
    v233 = sub_24F92B0D8();
    v231 = v187;

    v235 = 2;
    v188 = v225;
    v189 = sub_24ECD2C04(v178, v225);
    v190 = v201;
    v227(v201, 1, 1, v228);
    v243 = 0u;
    v244 = 0u;
    LOWORD(v245) = 0x8000;
    v234 = 0;
    v191 = *(v206 + 392);

    v144 = v191(&v246, &v236, v233, v231, v188, 0, 0, 0, v220, v222, v232, v221, 0, &v235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v243, 0, v230, v122, v135, 0, 0, 0, 0, 0, 0, 0, 0, 0, MEMORY[0x277D84F90], &v234, 0, v189, MEMORY[0x277D84FA0], 0, v190, 0);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    return 0;
  }

  return v144;
}

uint64_t sub_24ECD5680(void *a1, uint64_t a2)
{
  if ([a1 hasMessagesExtension])
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (!v5)
    {
LABEL_8:
      v11 = [a1 isHiddenFromSpringboard];
      goto LABEL_12;
    }

    v6 = sub_24F92B0D8();
    v8 = v7;

    if (v6 == 0xD000000000000013 && 0x800000024FA59DD0 == v8)
    {
    }

    else
    {
      v10 = sub_24F92CE08();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  [a1 storeItemID];
  v12 = sub_24F92CD88();
  v14 = v13;
  v15 = [a1 longTitle];
  v16 = sub_24F92B0D8();
  v18 = v17;

  v19 = [a1 genreName];
  v20 = sub_24F92B0D8();
  v22 = v21;

  if (v11)
  {

    v23 = a2;
  }

  else
  {
    v23 = 0;
  }

  type metadata accessor for ShareSheetProductMetadata();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = v14;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = v16;
  *(result + 56) = v18;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = v20;
  *(result + 88) = v22;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = a2;
  *(result + 120) = v11;
  *(result + 128) = v23;
  *(result + 136) = 0;
  return result;
}

void *NestedCollectionViewImpressionsCoordinator.__allocating_init(collectionView:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  result[3] = a1;
  result[4] = v3;
  result[2] = 0;
  return result;
}

void *NestedCollectionViewImpressionsCoordinator.init(collectionView:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v1[3] = a1;
  v1[4] = v2;
  v1[2] = 0;
  return v1;
}

uint64_t sub_24ECD58E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  swift_retain_n();

  if (v2)
  {
    sub_24ECD606C();
  }

  return result;
}

uint64_t sub_24ECD5958(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  if (a1)
  {
    sub_24ECD606C();
  }

  return result;
}

uint64_t (*sub_24ECD59C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ECD5A18;
}

uint64_t sub_24ECD5A18(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0 && *(*(a1 + 24) + 16))
  {

    sub_24ECD606C();
  }

  return result;
}

uint64_t sub_24ECD5A7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_24ECD5B14(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_24ECD5B5C()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x277D84F90];
}

uint64_t sub_24ECD5BDC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5 + 40;
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v11 = sub_24F91FA08();
  result = swift_beginAccess();
  v13 = *(v2 + 32);
  if (v11 < *(v13 + 16))
  {
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_24E615E00(v13 + 40 * v11 + 32, v19);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      sub_24F92ADC8();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_24EB05BC8(v6);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        swift_beginAccess();
        if (*(v2 + 16))
        {

          [a1 frame];
          ImpressionsCalculator.addElement(_:at:)(v10, v14, v15, v16, v17);
        }

        (*(v8 + 8))(v10, v7);
      }

      return __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  return result;
}

uint64_t sub_24ECD5E0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_24F929608();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_24EB05BC8(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  if (*(v3 + 16))
  {

    [a2 frame];
    ImpressionsCalculator.addElement(_:at:)(v12, v14, v15, v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t NestedCollectionViewImpressionsCoordinator.deinit()
{

  return v0;
}

uint64_t NestedCollectionViewImpressionsCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24ECD606C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v34 - v3;
  v4 = sub_24F929608();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91FA78();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1[3];
  v13 = [v44 indexPathsForVisibleItems];
  v14 = sub_24F92B5A8();

  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v34[1] = v15;
    v18 = v15 + v17;
    swift_beginAccess();
    swift_beginAccess();
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v42 = (v19 - 8);
    v43 = v20;
    v36 = (v5 + 32);
    v37 = (v5 + 48);
    v41 = *(v19 + 56);
    v35 = (v5 + 8);
    v38 = v19;
    v39 = v8;
    v20(v12, v18, v8);
    while (1)
    {
      v21 = sub_24F91F9D8();
      v22 = [v44 cellForItemAtIndexPath_];

      result = sub_24F91FA08();
      v24 = v1[4];
      if (result >= *(v24 + 16))
      {

        (*v42)(v12, v8);
      }

      else
      {
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        sub_24E615E00(v24 + 40 * result + 32, v45);
        if (v22)
        {
          v25 = v7;
          __swift_project_boxed_opaque_existential_1(v45, v45[3]);
          v26 = v4;
          v27 = v40;
          sub_24F92ADC8();
          v28 = v27;
          v4 = v26;
          if ((*v37)(v28, 1, v26) == 1)
          {

            v29 = v39;
            (*v42)(v12, v39);
            sub_24EB05BC8(v28);
            v8 = v29;
            v7 = v25;
          }

          else
          {
            v7 = v25;
            (*v36)(v25, v28, v4);
            if (v1[2])
            {

              [v22 frame];
              ImpressionsCalculator.addElement(_:at:)(v25, v30, v31, v32, v33);
            }

            else
            {
            }

            (*v35)(v25, v4);
            v8 = v39;
            (*v42)(v12, v39);
          }
        }

        else
        {
          (*v42)(v12, v8);
        }

        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v18 += v41;
      if (!--v16)
      {
      }

      v43(v12, v18, v8);
    }
  }
}

uint64_t sub_24ECD6500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24ECD6550@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

__n128 SegmentBubbleLayout.init(primaryText:metrics:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24E612C80(a1, v11);
  v5 = *a2;
  *&v12[24] = a2[1];
  v6 = a2[3];
  *&v12[40] = a2[2];
  *&v12[56] = v6;
  *&v12[72] = *(a2 + 8);
  *&v12[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D700);
  v7 = swift_allocObject();
  v8 = *&v12[48];
  *(v7 + 80) = *&v12[32];
  *(v7 + 96) = v8;
  *(v7 + 112) = *&v12[64];
  v9 = v11[1];
  *(v7 + 16) = v11[0];
  *(v7 + 32) = v9;
  result = *&v12[16];
  *(v7 + 48) = *v12;
  *(v7 + 64) = result;
  *a3 = v7;
  return result;
}

uint64_t SegmentBubbleLayout.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E615E00(v3 + 16, a1);
}

uint64_t SegmentBubbleLayout.primaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24ECD690C(v3 + 16, v10);
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_24E612C80(a1, v10);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24ECD6944(v10, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D700);
    v6 = swift_allocObject();
    v7 = v10[5];
    v6[5] = v10[4];
    v6[6] = v7;
    v6[7] = v10[6];
    v8 = v10[1];
    v6[1] = v10[0];
    v6[2] = v8;
    v9 = v10[3];
    v6[3] = v10[2];
    v6[4] = v9;

    *v1 = v6;
  }

  return result;
}

void (*SegmentBubbleLayout.primaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24E615E00(v5 + 16, v4);
  return sub_24ECD6A10;
}

void sub_24ECD6A10(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24E615E00(*a1, v2 + 40);
    SegmentBubbleLayout.primaryText.setter((v2 + 40));
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    SegmentBubbleLayout.primaryText.setter(*a1);
  }

  free(v2);
}

uint64_t SegmentBubbleLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24ECD6AC4(v3 + 56, a1);
}

uint64_t SegmentBubbleLayout.metrics.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24ECD690C(v3 + 16, v10);
  sub_24ECD6BEC(a1, v11 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24ECD6944(v10, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D700);
    v6 = swift_allocObject();
    v7 = v11[3];
    v6[5] = v11[2];
    v6[6] = v7;
    v6[7] = v11[4];
    v8 = v10[1];
    v6[1] = v10[0];
    v6[2] = v8;
    v9 = v11[1];
    v6[3] = v11[0];
    v6[4] = v9;

    *v1 = v6;
  }

  return result;
}

void (*SegmentBubbleLayout.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24ECD6AC4(v5 + 56, v4);
  return sub_24ECD6CB8;
}

void sub_24ECD6CB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24ECD6AC4(*a1, v2 + 72);
    SegmentBubbleLayout.metrics.setter(v2 + 72);
    sub_24ECD6D20(v2);
  }

  else
  {
    SegmentBubbleLayout.metrics.setter(*a1);
  }

  free(v2);
}

double SegmentBubbleLayout.measurements(fitting:in:)()
{
  v1 = sub_24F92CDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  swift_beginAccess();
  v6 = *(v5 + 104);
  v7 = *(v5 + 120);
  sub_24ECD6AC4(v5 + 56, v11);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_24E615E00(v5 + 16, v11);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_24F922288();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7 + v6 + v9;
}

uint64_t SegmentBubbleLayout.placeChildren(relativeTo:in:)(double a1, double a2, double a3, double a4)
{
  *&v11[5] = a4;
  *&v11[1] = a3;
  *&v11[4] = a2;
  *&v11[3] = a1;
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v4;
  swift_beginAccess();
  v11[2] = *(v9 + 120);
  sub_24ECD6AC4(v9 + 56, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_24E615E00(v9 + 16, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_24F922288();
  sub_24F92BDF8();
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_24E615E00(v9 + 16, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return sub_24F922138();
}

uint64_t SegmentBubbleLayout.Metrics.init(bubbleHeight:layoutMargins:)@<X0>(__int128 *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  result = sub_24E612C80(a1, a2);
  a2[5] = a3;
  a2[6] = a4;
  a2[7] = a5;
  a2[8] = a6;
  return result;
}

uint64_t sub_24ECD7224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E615E00(v3 + 16, a2);
}

uint64_t sub_24ECD72A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24ECD6AC4(v3 + 56, a2);
}

uint64_t sub_24ECD734C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24ECD7394(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24ECD7400()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D708);
  __swift_project_value_buffer(v4, qword_27F22D708);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD7554()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E74EC40();
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F22D720 = result;
  return result;
}

double sub_24ECD77A4()
{
  result = 0.5;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_27F22D728 = _Q1;
  unk_27F22D738 = xmmword_24F995580;
  return result;
}

id PlaybackCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackCoordinator.init()()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_24E60EABC(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds] = MEMORY[0x277D84FA0];
  v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive] = 1;
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackWorkItem] = 0;
  if (qword_27F210558 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v3 = swift_allocObject();
  v10 = unk_27F22D738;
  v11 = xmmword_27F22D728;
  *(v3 + 48) = sub_24E60EA98(v2);
  *(v3 + 56) = v2;
  *(v3 + 64) = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v11;
  *(v3 + 32) = v10;
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker] = v3;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PlaybackCoordinator();
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v8 = [v5 defaultCenter];
  [v8 addObserver:v6 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

  return v6;
}

uint64_t sub_24ECD7A1C()
{
  v1 = v0;
  swift_unknownObjectWeakAssign();
  if (qword_27F210558 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v2 = swift_allocObject();
  v7 = unk_27F22D738;
  v8 = xmmword_27F22D728;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 48) = sub_24E60EA98(MEMORY[0x277D84F90]);
  *(v2 + 56) = v3;
  *(v2 + 64) = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v8;
  *(v2 + 32) = v7;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker) = v2;

  sub_24EEDBA34();
  v4 = *(v2 + 64);

  v5 = sub_24F45DA90(v4);

  *(v1 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v5;
}

void sub_24ECD7B64()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 40);
    v15 = v11;
    v14(ObjectType, v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_24ECD7CBC()
{
  v1 = sub_24F927DE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F927D88();
  MEMORY[0x28223BE20](v8);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) == 1 && *(*(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) + 16))
  {
    v16 = v2;
    v17 = v1;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_24ECD9020;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_68;
    v15 = _Block_copy(aBlock);
    v18 = MEMORY[0x277D84F90];
    sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    sub_24F92C6A8();
    sub_24F927E28();
    swift_allocObject();
    v10 = sub_24F927E08();

    v11 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackWorkItem;
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackWorkItem))
    {

      sub_24F927E18();
    }

    *(v0 + v11) = v10;

    v13 = v16;
    v12 = v17;
    if (qword_27F210550 != -1)
    {
      swift_once();
    }

    sub_24F927DD8();
    sub_24F927E58();
    v14 = *(v13 + 8);
    v14(v4, v12);
    if (*(v0 + v11))
    {

      sub_24F92BEA8();

      v14(v7, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24ECD8058(uint64_t a1)
{
  v2 = sub_24F927D88();
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v8 = sub_24F92BEF8();
  aBlock[4] = sub_24ECD91FC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_26_0;
  v9 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_24ECD8314()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v55 = Strong;
  if (*(Strong + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) != 1)
  {
    v34 = *(Strong + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds);
    v35 = 1 << *(v34 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v34 + 56);
    v38 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;

    swift_beginAccess();
    v39 = 0;
    v40 = (v35 + 63) >> 6;
    if (v37)
    {
      goto LABEL_42;
    }

    do
    {
LABEL_38:
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v41 >= v40)
      {

        return;
      }

      v37 = *(v34 + 56 + 8 * v41);
      ++v39;
    }

    while (!v37);
    v39 = v41;
    while (1)
    {
LABEL_42:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      sub_24E65864C(*(v34 + 48) + 40 * (v42 | (v39 << 6)), &v58);
      v57 = *&v59[1];
      v56[0] = v58;
      v56[1] = v59[0];
      v43 = *&v55[v38];
      if (!*(v43 + 16))
      {
        goto LABEL_37;
      }

      v44 = sub_24E76D934(v56);
      if (v45)
      {
        v46 = *(v43 + 56) + 16 * v44;
        v47 = *(v46 + 8);
        v48 = *v46;
        sub_24E6585F8(v56);

        ObjectType = swift_getObjectType();
        (*(v47 + 40))(ObjectType, v47);

        if (!v37)
        {
          goto LABEL_38;
        }
      }

      else
      {

LABEL_37:
        sub_24E6585F8(v56);
        if (!v37)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;
  swift_beginAccess();
  v3 = *&v1[v2];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*&v1[v2] + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v54 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds;
  v10 = (v7 + 63) >> 6;
  v51 = *&v1[v2];

  v11 = 0;
  v50 = v10;
  while (v9)
  {
    v12 = v11;
LABEL_13:
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    sub_24E65864C(*(v51 + 48) + 40 * v13, &v58);
    v14 = *(v51 + 56) + 16 * v13;
    v15 = *(v14 + 8);
    v16 = *&v59[0];
    v52 = *(v59 + 8);
    v53 = v58;
    v17 = *(&v59[0] + 1);
    v18 = *v14;
    if (!v17)
    {
LABEL_46:

      return;
    }

    v19 = v18;
    v9 &= v9 - 1;
    v58 = v53;
    *&v59[0] = v16;
    *(v59 + 8) = v52;
    v20 = *&v1[v54];
    if (!*(v20 + 16))
    {
      goto LABEL_20;
    }

    v21 = sub_24F92C7B8();
    v22 = -1 << *(v20 + 32);
    v23 = v21 & ~v22;
    if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_19:

      v1 = v55;
      v10 = v50;
      goto LABEL_20;
    }

    v24 = ~v22;
    while (1)
    {
      sub_24E65864C(*(v20 + 48) + 40 * v23, v56);
      v25 = MEMORY[0x253052150](v56, &v58);
      sub_24E6585F8(v56);
      if (v25)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v33 = swift_getObjectType();
    v1 = v55;
    v10 = v50;
    if ((*(v15 + 16))(v33, v15))
    {
LABEL_20:
      v26 = *&v1[v54];
      if (!*(v26 + 16))
      {
        goto LABEL_26;
      }

      v27 = sub_24F92C7B8();
      v28 = -1 << *(v26 + 32);
      v29 = v27 & ~v28;
      if ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          sub_24E65864C(*(v26 + 48) + 40 * v29, v56);
          v31 = MEMORY[0x253052150](v56, &v58);
          sub_24E6585F8(v56);
          if (v31)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        sub_24E6585F8(&v58);
        v11 = v12;
        v1 = v55;
        v10 = v50;
      }

      else
      {
LABEL_25:

        v1 = v55;
        v10 = v50;
LABEL_26:
        v32 = swift_getObjectType();
        if ((*(v15 + 16))(v32, v15))
        {
          (*(v15 + 40))(v32, v15);
          goto LABEL_30;
        }

        sub_24E6585F8(&v58);

        v11 = v12;
      }
    }

    else
    {
      (*(v15 + 32))(v33, v15);
LABEL_30:

      sub_24E6585F8(&v58);
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_46;
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_13;
    }
  }

LABEL_50:
  __break(1u);
}

void sub_24ECD8864(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 8);
    v8 = a1;
    v7(v15, ObjectType, a2);
    swift_beginAccess();
    v9 = v8;
    sub_24E989B28(a1, a2, v15);
    swift_endAccess();
    v10 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker;
    memset(v15, 0, sizeof(v15));
    v16 = 1;

    sub_24EED9160(a1, a2, v15);

    v11 = *(v3 + v10);

    sub_24EEDBA34();
    v12 = *(v11 + 64);

    v13 = sub_24F45DA90(v12);

    *(v3 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v13;

    sub_24ECD7CBC();
  }

  else
  {
    if (qword_27F210548 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F22D708);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5B8();
  }
}

void sub_24ECD8AF0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);
    v8 = a1;
    if (v7(ObjectType, a2))
    {
      (*(a2 + 40))(ObjectType, a2);
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker;
    v10 = *(a2 + 8);
    v11 = v8;

    v10(v16, ObjectType, a2);
    swift_beginAccess();
    sub_24EB443C0(v16);
    sub_24E6585F8(v16);
    swift_endAccess();

    v12 = *(v3 + v9);

    sub_24EEDBA34();
    v13 = *(v12 + 64);

    v14 = sub_24F45DA90(v13);

    *(v3 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v14;

    sub_24ECD7CBC();
    v10(v16, ObjectType, a2);
    swift_beginAccess();
    v15 = sub_24EB443D8(v16);
    sub_24E6585F8(v16);
    swift_endAccess();
  }
}

void sub_24ECD8CD4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker);

  sub_24EEDBA34();
  v3 = *(v2 + 64);

  v4 = sub_24F45DA90(v3);

  *(v1 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v4;

  sub_24ECD7CBC();
}

void sub_24ECD8DA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_24E857CC8(&v7);
    return;
  }

  v2 = Strong;
  v3 = sub_24F92B098();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    if (v5 == 2)
    {
      *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) = 1;
      sub_24ECD7CBC();
    }
  }
}

id PlaybackCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24ECD8FE8()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CollectionPresenterViewUpdate()
{
  result = qword_27F22D780;
  if (!qword_27F22D780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECD9258()
{
  sub_24ECD931C();
  if (v0 <= 0x3F)
  {
    sub_24ECD9384(319, &qword_27F22D798, MEMORY[0x277CC9AF8]);
    if (v1 <= 0x3F)
    {
      sub_24ECD9384(319, &qword_27F22D7A0, sub_24ECD93D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24ECD931C()
{
  if (!qword_27F22D790)
  {
    sub_24F91FA78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F22D790);
    }
  }
}

void sub_24ECD9384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24ECD93D0()
{
  if (!qword_27F22D7A8)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22D7A8);
    }
  }
}

uint64_t sub_24ECD9434()
{
  v0 = sub_24F92AAB8();
  __swift_allocate_value_buffer(v0, qword_27F39C380);
  __swift_project_value_buffer(v0, qword_27F39C380);
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27F22B5B8;
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_24F92B0D8();
  }

  return sub_24F92AAC8();
}

uint64_t sub_24ECD9620()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C428);
  __swift_project_value_buffer(v4, qword_27F39C428);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD97E0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D7B0);
  __swift_project_value_buffer(v4, qword_27F22D7B0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD9958()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D7C8);
  __swift_project_value_buffer(v4, qword_27F22D7C8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD9B60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24ECD9C24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24F92AAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_27F39C380);
  (*(v4 + 16))(v6, v8, v3);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD9D74()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C4A0);
  __swift_project_value_buffer(v4, qword_27F39C4A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t SearchResultsPage.__allocating_init(shelves:unavailableReason:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:searchClearAction:searchCancelAction:context:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  LODWORD(v79) = a8;
  LODWORD(v78) = a7;
  v75 = a5;
  v88 = a18;
  v86 = a3;
  v87 = a17;
  v89 = a16;
  v90 = a6;
  v91 = a15;
  v92 = a14;
  v81 = a13;
  v82 = a19;
  v93 = a12;
  v85 = a9;
  v76 = a10;
  v77 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v84 = &v72 - v25;
  MEMORY[0x28223BE20](v26);
  v80 = &v72 - v27;
  v83 = sub_24F928818();
  v28 = *(v83 - 8);
  MEMORY[0x28223BE20](v83 - 8);
  v94 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v31 = *(a2 + 32);
  v32 = *(a2 + 40);
  v74 = *a4;
  v33 = *(a4 + 2);
  v34 = *(a4 + 24);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete) = 0;
  v35 = sub_24EEF0A68(a1);
  v37 = v36;

  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering) = v35;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping) = v37;
  v38 = v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason;
  v39 = *(a2 + 16);
  v40 = v82;
  *v38 = *a2;
  *(v38 + 16) = v39;
  *(v38 + 32) = v31;
  *(v38 + 40) = v32;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message) = v86;
  v41 = v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  *v41 = v74;
  *(v41 + 16) = v33;
  *(v41 + 24) = v34;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions) = v75;
  sub_24E60169C(v90, v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled) = v78;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v79;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink) = v85;
  v42 = v77;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens) = v76;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries) = v42;
  sub_24E60169C(v92, v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E60169C(v91, v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
  v43 = v88;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction) = v87;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction) = v43;
  v79 = v28;
  v44 = *(v28 + 16);
  v45 = v94;
  v46 = v83;
  v44(v94, v93, v83);
  v47 = v40;
  v48 = v40;
  v49 = v46;
  v50 = v80;
  sub_24E60169C(v48, v80, &qword_27F2218B0);
  *(v30 + 16) = v89;
  v44((v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v45, v46);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v81;
  v51 = v84;
  sub_24E60169C(v50, v84, &qword_27F2218B0);
  v52 = sub_24F9285B8();
  v77 = *(v52 - 8);
  v78 = v52;
  v53 = *(v77 + 48);
  if ((v53)(v51, 1) == 1)
  {
    sub_24E601704(v47, &qword_27F2218B0);
    sub_24E601704(v91, &qword_27F213E68);
    sub_24E601704(v92, &qword_27F213E68);
    v54 = *(v79 + 8);
    v54(v93, v49);
    sub_24E601704(v90, &qword_27F2129B0);
    sub_24E601704(v50, &qword_27F2218B0);
    v54(v94, v49);
    v55 = v51;
  }

  else
  {
    v76 = v53;
    v56 = qword_27F2105F0;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v57, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v58 = v95;
    v60 = v77;
    v59 = v78;
    if (v95)
    {
    }

    v61 = *(v60 + 8);
    v61(v84, v59);
    if (!v58)
    {

      sub_24E601704(v82, &qword_27F2218B0);
      sub_24E601704(v91, &qword_27F213E68);
      sub_24E601704(v92, &qword_27F213E68);
      v67 = *(v79 + 8);
      v68 = v83;
      v67(v93, v83);
      sub_24E601704(v90, &qword_27F2129B0);
      sub_24E601704(v50, &qword_27F2218B0);
      v67(v94, v68);
      return v30;
    }

    v62 = v73;
    sub_24E60169C(v50, v73, &qword_27F2218B0);
    v63 = v76(v62, 1, v59);
    v64 = v82;
    if (v63 != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v64, &qword_27F2218B0);
      sub_24E601704(v91, &qword_27F213E68);
      sub_24E601704(v92, &qword_27F213E68);
      v69 = *(v79 + 8);
      v70 = v83;
      v69(v93, v83);
      sub_24E601704(v90, &qword_27F2129B0);
      sub_24E601704(v80, &qword_27F2218B0);
      v69(v94, v70);
      v61(v62, v59);
      return v30;
    }

    sub_24E601704(v64, &qword_27F2218B0);
    sub_24E601704(v91, &qword_27F213E68);
    sub_24E601704(v92, &qword_27F213E68);
    v65 = *(v79 + 8);
    v66 = v83;
    v65(v93, v83);
    sub_24E601704(v90, &qword_27F2129B0);
    sub_24E601704(v80, &qword_27F2218B0);
    v65(v94, v66);
    v55 = v62;
  }

  sub_24E601704(v55, &qword_27F2218B0);
  return v30;
}

uint64_t SearchResultsPage.init(shelves:unavailableReason:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:searchClearAction:searchCancelAction:context:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  LODWORD(v81) = a8;
  LODWORD(v80) = a7;
  v76 = a5;
  v83 = a19;
  v88 = a18;
  v86 = a3;
  v87 = a17;
  v89 = a16;
  v90 = a6;
  v91 = a15;
  v92 = a14;
  v93 = a12;
  v78 = a11;
  v79 = a13;
  v85 = a9;
  v77 = a10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v24 - 8);
  v72 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = &v71 - v27;
  MEMORY[0x28223BE20](v28);
  v82 = &v71 - v29;
  v30 = sub_24F928818();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 32);
  v35 = *(a2 + 40);
  v75 = *a4;
  v74 = *(a4 + 2);
  v73 = *(a4 + 24);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete) = 0;
  v36 = sub_24EEF0A68(a1);
  v38 = v37;

  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering) = v36;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping) = v38;
  v39 = v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason;
  v40 = *(a2 + 16);
  v41 = v83;
  *v39 = *a2;
  *(v39 + 16) = v40;
  *(v39 + 32) = v34;
  *(v39 + 40) = v35;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message) = v86;
  v42 = v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  *v42 = v75;
  *(v42 + 16) = v74;
  *(v42 + 24) = v73;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions) = v76;
  sub_24E60169C(v90, v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled) = v80;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v81;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink) = v85;
  v43 = v78;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens) = v77;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries) = v43;
  sub_24E60169C(v92, v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E60169C(v91, v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
  v44 = v88;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction) = v87;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction) = v44;
  v81 = v31;
  v45 = *(v31 + 16);
  v45(v33, v93, v30);
  v46 = v41;
  v47 = v41;
  v48 = v82;
  sub_24E60169C(v47, v82, &qword_27F2218B0);
  *(v20 + 16) = v89;
  v80 = v33;
  v45((v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v33, v30);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v79;
  v49 = v84;
  sub_24E60169C(v48, v84, &qword_27F2218B0);
  v50 = sub_24F9285B8();
  v77 = *(v50 - 8);
  v78 = v50;
  v51 = *(v77 + 48);
  if ((v51)(v49, 1) == 1)
  {
    sub_24E601704(v46, &qword_27F2218B0);
    sub_24E601704(v91, &qword_27F213E68);
    sub_24E601704(v92, &qword_27F213E68);
    v52 = *(v81 + 8);
    v52(v93, v30);
    sub_24E601704(v90, &qword_27F2129B0);
    sub_24E601704(v48, &qword_27F2218B0);
    v52(v80, v30);
    v53 = v49;
  }

  else
  {
    v54 = v48;
    v55 = qword_27F2105F0;

    if (v55 != -1)
    {
      swift_once();
    }

    v76 = v30;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v56, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v57 = v94;
    v59 = v77;
    v58 = v78;
    if (v94)
    {
    }

    v60 = *(v59 + 8);
    v60(v84, v58);
    if (!v57)
    {

      sub_24E601704(v83, &qword_27F2218B0);
      sub_24E601704(v91, &qword_27F213E68);
      sub_24E601704(v92, &qword_27F213E68);
      v66 = *(v81 + 8);
      v67 = v76;
      v66(v93, v76);
      sub_24E601704(v90, &qword_27F2129B0);
      sub_24E601704(v54, &qword_27F2218B0);
      v66(v80, v67);
      return v20;
    }

    v61 = v72;
    sub_24E60169C(v54, v72, &qword_27F2218B0);
    v62 = v51(v61, 1, v58);
    v63 = v83;
    if (v62 != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v63, &qword_27F2218B0);
      sub_24E601704(v91, &qword_27F213E68);
      sub_24E601704(v92, &qword_27F213E68);
      v68 = *(v81 + 8);
      v69 = v76;
      v68(v93, v76);
      sub_24E601704(v90, &qword_27F2129B0);
      sub_24E601704(v82, &qword_27F2218B0);
      v68(v80, v69);
      v60(v61, v58);
      return v20;
    }

    sub_24E601704(v63, &qword_27F2218B0);
    sub_24E601704(v91, &qword_27F213E68);
    sub_24E601704(v92, &qword_27F213E68);
    v64 = *(v81 + 8);
    v65 = v76;
    v64(v93, v76);
    sub_24E601704(v90, &qword_27F2129B0);
    sub_24E601704(v82, &qword_27F2218B0);
    v64(v80, v65);
    v53 = v61;
  }

  sub_24E601704(v53, &qword_27F2218B0);
  return v20;
}

void (*SearchResultsPage.init(deserializing:using:)(char *a1, uint64_t a2))(void, void)
{
  v3 = v2;
  v123 = a2;
  v115 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v104 - v8;
  v125 = sub_24F9285B8();
  v120 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v104 - v11;
  MEMORY[0x28223BE20](v12);
  v129 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v104 - v15;
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v109 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v106 = &v104 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v104 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v104 - v28;
  v30 = sub_24F92AC28();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v105 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v122 = &v104 - v34;
  v3[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete] = 0;
  v124 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v35 = v31;
  v117 = v18;
  v36 = (v18 + 8);
  v37 = *(v18 + 8);
  v37(v29, v17);
  if ((*(v35 + 48))(v16, 1, v30) == 1)
  {
    sub_24E601704(v16, &qword_27F2213B0);
    v38 = sub_24F92AC38();
    sub_24ECDE4FC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v39 = 0x7365766C656873;
    v40 = v115;
    v39[1] = 0xE700000000000000;
    v39[2] = v40;
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D22530], v38);
    swift_willThrow();
    (*(v120 + 8))(v123, v125);
    v37(v124, v17);
    type metadata accessor for SearchResultsPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v118 = v37;
    v119 = v36;
    v116 = v3;
    v112 = v17;
    v41 = v120;
    (*(v35 + 32))(v122, v16, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x277D84F90];
    *&v126 = v42;
    v43 = v30;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v44, qword_27F22D8D8);
    v45 = v129;
    sub_24F928528();

    (*(v35 + 16))(v105, v122, v43);
    v115 = *(v41 + 16);
    v104 = v35;
    v46 = v121;
    v47 = v125;
    v115(v121, v45, v125);
    type metadata accessor for Shelf();
    sub_24ECDE4FC(&qword_27F2265E0, type metadata accessor for Shelf);
    v48 = sub_24F92B6A8();
    v49 = sub_24EEF0A68(v48);
    v51 = v50;

    v105 = v43;
    v52 = v116;
    *&v116[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering] = v49;
    *&v52[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping] = v51;
    v53 = v52;
    sub_24F928398();
    v54 = v129;
    v55 = v47;
    v56 = v47;
    v57 = v115;
    v115(v46, v129, v56);
    sub_24ECDE134();
    sub_24F929548();
    v58 = &v53[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason];
    v59 = v127;
    *v58 = v126;
    v58[1] = v59;
    v58[2] = v128;
    type metadata accessor for SearchResultsMessage();
    sub_24F928398();
    v57(v46, v54, v55);
    v114 = v41 + 16;
    sub_24ECDE4FC(&qword_27F2230F8, type metadata accessor for SearchResultsMessage);
    sub_24F929548();
    v60 = v116;
    *&v116[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message] = v126;
    sub_24F928398();
    v57(v46, v54, v55);
    sub_24E90362C();
    sub_24F929548();
    v61 = v127;
    v62 = BYTE8(v127);
    v63 = v60;
    v64 = &v60[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets];
    *v64 = v126;
    *(v64 + 2) = v61;
    v64[24] = v62;
    v65 = v108;
    sub_24F928398();
    v66 = v112;
    (*(v117 + 56))(v65, 0, 1);
    v67 = *(v64 + 1);
    v68 = *(v64 + 2);
    v69 = v64[24];
    *&v126 = *v64;
    *(&v126 + 1) = v67;
    *&v127 = v68;
    BYTE8(v127) = v69;
    sub_24E903680(v126);
    v70 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v65, &v126, v123);
    sub_24E9036C4(v126);
    sub_24E601704(v65, &qword_27F212F48);
    v71 = v63;
    *&v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions] = v70;
    sub_24F928398();
    sub_24F928368();
    v72 = v118;
    v118(v26, v66);
    v73 = &v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage];
    v74 = v127;
    *v73 = v126;
    v73[1] = v74;
    v75 = v106;
    sub_24F928398();
    LOBYTE(v70) = sub_24F928278();
    v72(v75, v66);
    v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled] = v70 & 1;
    v76 = v107;
    sub_24F928398();
    LOBYTE(v70) = sub_24F928278();
    v72(v76, v66);
    v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled] = v70 & 1;
    type metadata accessor for LinkableText();
    sub_24F928398();
    v77 = v129;
    v78 = v125;
    v79 = v115;
    v115(v121, v129, v125);
    sub_24ECDE4FC(&qword_27F21C360, type metadata accessor for LinkableText);
    sub_24F929548();
    *&v71[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120);
    sub_24F928398();
    v80 = v121;
    v79(v121, v77, v78);
    sub_24ECDE448();
    sub_24F929548();
    *&v71[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D828);
    sub_24F928398();
    v81 = v129;
    v82 = v125;
    v79(v80, v129, v125);
    sub_24ECDE544();
    sub_24F929548();
    v83 = v116;
    *&v116[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries] = v126;
    sub_24F929608();
    sub_24F928398();
    v79(v80, v81, v82);
    v84 = v79;
    v85 = v110;
    sub_24F929548();
    v86 = v83;
    sub_24E65E0D4(v85, &v83[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics]);
    sub_24F928398();
    v87 = v129;
    v84(v80, v129, v125);
    v88 = v112;
    sub_24F929548();
    v89 = v86;
    sub_24E65E0D4(v85, &v86[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics]);
    type metadata accessor for Action();
    v90 = v124;
    sub_24F928398();
    v91 = static Action.tryToMakeInstance(byDeserializing:using:)(v26, v87);
    v92 = v118;
    v118(v26, v88);
    *&v89[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction] = v91;
    sub_24F928398();
    v93 = static Action.tryToMakeInstance(byDeserializing:using:)(v26, v87);
    v94 = v125;
    v95 = v123;
    v92(v26, v88);
    *&v89[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction] = v93;
    v96 = v109;
    v97 = v90;
    v98 = v88;
    (*(v117 + 16))(v109, v90, v88);
    v99 = v111;
    v115(v111, v95, v94);
    v100 = v113;
    v101 = BasePage.init(deserializing:using:)(v96, v99);
    if (v100)
    {
      v36 = *(v120 + 8);
      v36(v95, v94);
      v118(v97, v98);
      v36(v129, v94);
    }

    else
    {
      v36 = v101;
      v102 = *(v120 + 8);
      v102(v95, v94);
      v118(v97, v98);
      v102(v129, v94);
    }

    (*(v104 + 8))(v122, v105);
  }

  return v36;
}

uint64_t SearchResultsPage.unavailableReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_24ECDE61C(v2, v3);
}

uint64_t SearchResultsPage.facets.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_24E903680(v3);
}

BOOL sub_24ECDC320()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  while (2)
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_24E65864C(v7, v17);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_4:
      ++v8;
      sub_24E6585F8(v17);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v17);
    if ((v9 & 1) == 0)
    {

      goto LABEL_4;
    }

    v10 = sub_24E6585F8(v17);
    MEMORY[0x253050F00](v10);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v18;
    if (v4 - 1 != v8)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_27:
    v11 = sub_24F92C738();
  }

  else
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  do
  {
    v13 = v12;
    if (v11 == v12)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x253052270](v12, v3);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(v3 + 8 * v12 + 32);

      if (__OFADD__(v13, 1))
      {
LABEL_23:
        __break(1u);
        break;
      }
    }

    swift_beginAccess();
    v15 = *(*(v14 + 24) + 16);

    v12 = v13 + 1;
  }

  while (!v15);

  return v11 != v13;
}

uint64_t sub_24ECDC5B8(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();

  v5 = sub_24F159E30(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_24ECDC644(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v107 - v9;
  MEMORY[0x28223BE20](v10);
  v119 = &v107 - v11;
  MEMORY[0x28223BE20](v12);
  v135 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v138 = &v107 - v18;
  v19 = sub_24F928818();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v118 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v107 - v23;
  v134 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for SearchResultsPage);
  v144 = v134;
  v25 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for SearchResultsPage);
  if (v25 >> 62)
  {
    goto LABEL_59;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v27 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
    v132 = MEMORY[0x277D84F90];
    v133 = v20;
    v137 = v24;
    v136 = v16;
    v117 = v19;
    v107 = v7;
    if (!v26)
    {

      goto LABEL_67;
    }

    v28 = __OFSUB__(v26, 1);
    v29 = v26 - 1;
    if (v28)
    {
      __break(1u);
      goto LABEL_61;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
LABEL_61:
      v24 = MEMORY[0x253052270](v29);
      v20 = MEMORY[0x277D84F90];
      goto LABEL_9;
    }

    v20 = MEMORY[0x277D84F90];
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v24 = *(v25 + 8 * v29 + 32);

LABEL_9:

    v30 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
    swift_beginAccess();
    v130 = v30;
    v4 = *(a1 + v30);
    v142 = v20;
    v31 = *(v4 + 16);
    v16 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

    v25 = swift_beginAccess();
    if (!v31)
    {
      v7 = v20;
      goto LABEL_24;
    }

    v19 = 0;
    v32 = v4 + 32;
    v128 = v31 - 1;
    v7 = MEMORY[0x277D84F90];
    v131 = v24;
    v129 = v4 + 32;
    do
    {
      v24 = (v32 + 40 * v19);
      v20 = v19;
      while (1)
      {
        if (v20 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        sub_24E65864C(v24, &v143);
        if (*(*&v16[a1] + 16))
        {
          break;
        }

LABEL_13:
        ++v20;
        v25 = sub_24E6585F8(&v143);
        v24 += 40;
        if (v31 == v20)
        {
          v24 = v131;
          goto LABEL_24;
        }
      }

      sub_24E76D934(&v143);
      if ((v33 & 1) == 0)
      {

        goto LABEL_13;
      }

      v34 = sub_24E6585F8(&v143);
      MEMORY[0x253050F00](v34);
      if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v19 = v20 + 1;
      v25 = sub_24F92B638();
      v7 = v142;
      v24 = v131;
      v32 = v129;
    }

    while (v128 != v20);
LABEL_24:

    if (!(v7 >> 62))
    {
      v27 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

LABEL_65:

LABEL_66:

LABEL_67:
      v48 = v27[152];
      swift_beginAccess();
      v49 = *(a1 + v48);
      v50 = MEMORY[0x277D84F90];
      v140 = MEMORY[0x277D84F90];
      v51 = *(v49 + 16);
      v52 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

      swift_beginAccess();
      if (!v51)
      {
        goto LABEL_78;
      }

      v53 = 0;
      v54 = v49 + 32;
      v132 = v51 - 1;
      v134 = v49 + 32;
LABEL_69:
      v55 = v54 + 40 * v53;
      v56 = v53;
      while (1)
      {
        if (v56 >= *(v49 + 16))
        {
          __break(1u);
          goto LABEL_92;
        }

        sub_24E65864C(v55, &v143);
        if (*(*(a1 + v52) + 16))
        {

          sub_24E76D934(&v143);
          if (v57)
          {

            v58 = sub_24E6585F8(&v143);
            MEMORY[0x253050F00](v58);
            if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v53 = v56 + 1;
            sub_24F92B638();
            v50 = v140;
            v54 = v134;
            if (v132 == v56)
            {
LABEL_78:

              sub_24EA0AE3C(v50);
              v59 = v117;
              goto LABEL_79;
            }

            goto LABEL_69;
          }
        }

        ++v56;
        sub_24E6585F8(&v143);
        v55 += 40;
        if (v51 == v56)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_64:
    v27 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
    if (!sub_24F92C738())
    {
      goto LABEL_65;
    }

LABEL_26:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v7 + 32);

        goto LABEL_29;
      }

      __break(1u);
LABEL_95:
      v95 = sub_24F92C738();
      v36 = v95 - 1;
      if (!__OFSUB__(v95, 1))
      {
        goto LABEL_32;
      }

LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v4 = MEMORY[0x253052270](0, v7);
LABEL_29:

    if ((MEMORY[0x253052150](&v24[OBJC_IVAR____TtC12GameStoreKit5Shelf_id], v4 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id) & 1) == 0)
    {

      goto LABEL_66;
    }

    v20 = v134 >> 62;
    if (v134 >> 62)
    {
      goto LABEL_95;
    }

    v35 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      goto LABEL_97;
    }

LABEL_32:
    v37 = *(v24 + 3);
    v129 = v4;
    v143 = v37;

    sub_24EA0AEC0(v38);
    v39 = v143;
    LOBYTE(v143) = 104;
    v4 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v39, &v143, 1, 2);

    v40 = v134;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v20 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v40 = sub_24ECDE380(v40);
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v36 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v4;

    v144 = v40;
    v4 = *(a1 + v130);
    v141 = MEMORY[0x277D84F90];
    v42 = *(v4 + 16);

    v25 = swift_beginAccess();
    if (v42)
    {
      v7 = 0;
      v19 = v4 + 32;
      v134 = (v42 - 1);
      v132 = MEMORY[0x277D84F90];
      v131 = v24;
LABEL_39:
      v20 = v19 + 40 * v7;
      v24 = v7;
      while (v24 < *(v4 + 16))
      {
        sub_24E65864C(v20, &v143);
        if (*(*&v16[a1] + 16))
        {

          sub_24E76D934(&v143);
          if (v43)
          {
            v20 = v4 + 32;

            v44 = sub_24E6585F8(&v143);
            MEMORY[0x253050F00](v44);
            if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v7 = (v24 + 1);
            v25 = sub_24F92B638();
            v132 = v141;
            if (v134 != v24)
            {
              goto LABEL_39;
            }

            goto LABEL_50;
          }
        }

        ++v24;
        v25 = sub_24E6585F8(&v143);
        v20 += 40;
        if (v42 == v24)
        {
          goto LABEL_50;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      v4 = v25;
      v26 = sub_24F92C738();
      v25 = v4;
      continue;
    }

    break;
  }

LABEL_50:

  v45 = v132;
  v36 = v132 >> 62;
  if (!(v132 >> 62))
  {
    v20 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v20 != 0;
    if (v20 >= v4)
    {
      if ((v132 & 0xC000000000000001) != 0)
      {
        goto LABEL_53;
      }

LABEL_107:

      goto LABEL_108;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

LABEL_100:
  v96 = sub_24F92C738();
  if (v96 < 0)
  {
    goto LABEL_105;
  }

  v20 = v96;
  v4 = v96 != 0;
  if (sub_24F92C738() < v4)
  {
    goto LABEL_104;
  }

  if (sub_24F92C738() < v20)
  {
    __break(1u);
    goto LABEL_104;
  }

LABEL_106:
  v45 = v132;
  if ((v132 & 0xC000000000000001) == 0)
  {
    goto LABEL_107;
  }

LABEL_53:
  if (v20 <= 1)
  {
    goto LABEL_107;
  }

  type metadata accessor for Shelf();

  v46 = v4;
  do
  {
    v47 = v46 + 1;
    sub_24F92C8C8();
    v46 = v47;
  }

  while (v20 != v47);
LABEL_108:

  if (v36)
  {
    v97 = sub_24F92CB18();
    v98 = v100;
    v4 = v101;
    v99 = v102;

    if (v99)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v97 = v45 & 0xFFFFFFFFFFFFFF8;
  v98 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
  v99 = (2 * v20) | 1;
  if ((v99 & 1) == 0)
  {
LABEL_112:
    sub_24E6B8B64(v97, v98, v4, v99);
    v104 = v103;
    v59 = v117;
    goto LABEL_119;
  }

LABEL_113:
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v105 = swift_dynamicCastClass();
  if (!v105)
  {
    swift_unknownObjectRelease();
    v105 = MEMORY[0x277D84F90];
  }

  v106 = *(v105 + 16);

  if (__OFSUB__(v99 >> 1, v4))
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v106 != (v99 >> 1) - v4)
  {
LABEL_122:
    swift_unknownObjectRelease_n();
    goto LABEL_112;
  }

  v104 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v59 = v117;
  if (!v104)
  {
    v104 = MEMORY[0x277D84F90];
LABEL_119:
    swift_unknownObjectRelease();
  }

  sub_24EA0AE3C(v104);

LABEL_79:
  v111 = v144;
  v60 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason);
  v125 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8);
  v61 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 16);
  v62 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 24);
  v63 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 40);
  v124 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 32);
  v132 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message);
  v64 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
  v123 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
  v127 = v64;
  v126 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
  v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions);
  v122 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 24);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &v143, &qword_27F2129B0);
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled);
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled);
  v131 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink);
  v108 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens);
  v109 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries);
  v65 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v114 = *(v133 + 16);
  v115 = v133 + 16;
  v114(v137, v2 + v65, v59);
  v116 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, v138, &qword_27F213E68);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, v136, &qword_27F213E68);
  v130 = *(v2 + 16);
  v128 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction);
  v129 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction);
  v121 = sub_24F9285B8();
  v134 = *(v121 - 8);
  (*(v134 + 56))(v135, 1, 1, v121);
  type metadata accessor for SearchResultsPage();
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete) = 0;
  sub_24ECDE61C(v60, v125);
  sub_24E903680(v123);

  v66 = v110;

  v67 = sub_24EEF0A68(v111);
  v69 = v68;

  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering) = v67;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping) = v69;
  v70 = (v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason);
  v71 = v125;
  *v70 = v60;
  v70[1] = v71;
  v70[2] = v61;
  v70[3] = v62;
  v70[4] = v124;
  v70[5] = v63;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message) = v132;
  v72 = v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  v73 = v127;
  *v72 = v123;
  *(v72 + 8) = v73;
  *(v72 + 16) = v126;
  *(v72 + 24) = v122;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions) = v66;
  sub_24E60169C(&v143, v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled) = v113;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v112;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink) = v131;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens) = v108;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries) = v109;
  sub_24E60169C(v138, v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E60169C(v136, v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction) = v128;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction) = v129;
  v74 = v118;
  v75 = v114;
  v114(v118, v137, v59);
  v76 = v119;
  sub_24E60169C(v135, v119, &qword_27F2218B0);
  *(v2 + 16) = v130;
  v75(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v74, v59);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v116;
  v77 = v120;
  v78 = v121;
  sub_24E60169C(v76, v120, &qword_27F2218B0);
  v53 = *(v134 + 48);
  if ((v53)(v77, 1, v78) == 1)
  {

    sub_24E601704(v76, &qword_27F2218B0);
    v79 = *(v133 + 8);
    v79(v74, v59);
    sub_24E601704(v135, &qword_27F2218B0);
    sub_24E601704(v136, &qword_27F213E68);
    sub_24E601704(v138, &qword_27F213E68);
    v79(v137, v59);
    sub_24E601704(&v143, &qword_27F2129B0);
    v80 = v77;
    v81 = &qword_27F2218B0;
    goto LABEL_88;
  }

  v52 = v59;
  v82 = qword_27F2105F0;

  if (v82 != -1)
  {
LABEL_92:
    swift_once();
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v83, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  sub_24F9285C8();
  v84 = v139;
  v85 = v107;
  v86 = v137;
  v87 = v118;
  if (v139)
  {
  }

  v88 = *(v134 + 8);
  v89 = v121;
  v134 += 8;
  v88(v120, v121);
  if (v84)
  {
    v90 = v119;
    sub_24E60169C(v119, v85, &qword_27F2218B0);
    if ((v53)(v85, 1, v89) == 1)
    {
      sub_24E601704(v90, &qword_27F2218B0);
      v91 = *(v133 + 8);
      v91(v87, v52);
      sub_24E601704(v135, &qword_27F2218B0);
      sub_24E601704(v136, &qword_27F213E68);
      sub_24E601704(v138, &qword_27F213E68);
      v91(v86, v52);
      sub_24E601704(&v143, &qword_27F2129B0);
      v80 = v85;
      v81 = &qword_27F2218B0;
      goto LABEL_88;
    }

    sub_24ECDF110();
    sub_24E601704(v90, &qword_27F2218B0);
    v94 = *(v133 + 8);
    v94(v87, v52);
    sub_24E601704(v135, &qword_27F2218B0);
    sub_24E601704(v136, &qword_27F213E68);
    sub_24E601704(v138, &qword_27F213E68);
    v94(v86, v52);
    sub_24E601704(&v143, &qword_27F2129B0);
    v88(v85, v121);
  }

  else
  {
    sub_24E601704(v119, &qword_27F2218B0);
    v92 = *(v133 + 8);
    v92(v87, v52);
    sub_24E601704(v135, &qword_27F2218B0);
    sub_24E601704(v136, &qword_27F213E68);
    sub_24E601704(v138, &qword_27F213E68);
    v92(v86, v52);
    v81 = &qword_27F2129B0;
    v80 = &v143;
LABEL_88:
    sub_24E601704(v80, v81);
  }

  return v2;
}

uint64_t sub_24ECDDCDC()
{

  sub_24ECDE680(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8));

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);
}

uint64_t SearchResultsPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24ECDE680(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8));

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t SearchResultsPage.__deallocating_deinit()
{
  SearchResultsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ECDE090@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24ECDC644(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SearchResultsPage()
{
  result = qword_27F22D840;
  if (!qword_27F22D840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ECDE134()
{
  result = qword_27F22D810;
  if (!qword_27F22D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D810);
  }

  return result;
}

uint64_t sub_24ECDE380(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24F92C738();
  }

  return sub_24F92C8F8();
}

unint64_t sub_24ECDE448()
{
  result = qword_27F22D818;
  if (!qword_27F22D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225120);
    sub_24ECDE4FC(&qword_27F22D820, type metadata accessor for GuidedSearchToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D818);
  }

  return result;
}

uint64_t sub_24ECDE4FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ECDE544()
{
  result = qword_27F22D830;
  if (!qword_27F22D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D828);
    sub_24ECDE5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D830);
  }

  return result;
}

unint64_t sub_24ECDE5C8()
{
  result = qword_27F22D838;
  if (!qword_27F22D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D838);
  }

  return result;
}

uint64_t sub_24ECDE61C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24ECDE680(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_24ECDE744()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ECDE978(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for DismissDashboardNotifier();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_24ECDEA64;

  return MEMORY[0x28217F228](v1 + 2, v2, v2);
}

uint64_t sub_24ECDEA64()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EA53D04;
  }

  else
  {
    v2 = sub_24ECDEB78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECDEB78()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_24F92B7F8();

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_24EA998B8(0, 0, v1, &unk_24F9957A0, v6);

  v8 = *MEMORY[0x277D21CA8];
  v9 = sub_24F928AE8();
  (*(*(v9 - 8) + 104))(v2, v8, v9);

  v10 = v0[1];

  return v10();
}

unint64_t sub_24ECDED0C()
{
  result = qword_27F216288;
  if (!qword_27F216288)
  {
    type metadata accessor for DismissDashboardAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216288);
  }

  return result;
}

uint64_t sub_24ECDED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F995798;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24ECDEEF0()
{

  return swift_deallocObject();
}

uint64_t sub_24ECDEF28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24ECDE978(a1);
}

uint64_t sub_24ECDEFD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECDF01C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECDF05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EE189B0(a1, v4, v5, v6);
}

void sub_24ECDF110()
{
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v0, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  sub_24F9285C8();
  if (v6)
  {
    swift_beginAccess();
    v1 = *(v6 + 16);

    if (*(v1 + 16))
    {
      v2 = [objc_opt_self() defaultCenter];
      if (qword_27F2105E8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F22D8D0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      sub_24F92C7F8();
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D8F0);
      *(inited + 72) = v1;
      sub_24E608210(inited);
      swift_setDeallocating();
      sub_24ECDF670(inited + 32);
      v5 = sub_24F92AE28();

      [v2 postNotificationName:v3 object:0 userInfo:{v5, 0x7364496D616461, 0xE700000000000000}];
    }

    else
    {
    }
  }
}

uint64_t sub_24ECDF340(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v3, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  result = sub_24F9285C8();
  if (v10)
  {
    swift_beginAccess();
    v5 = *(v10 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_24E6164C0(0, *(v5 + 2) + 1, 1, v5);
      *(v10 + 16) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_24E6164C0((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
    *(v10 + 16) = v5;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24ECDF49C()
{
  result = sub_24F92B098();
  qword_27F22D8D0 = result;
  return result;
}

id static RemotePersonalizationNotificationDetails.notificationName.getter()
{
  if (qword_27F2105E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22D8D0;

  return v1;
}

uint64_t sub_24ECDF558()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_allocate_value_buffer(v0, qword_27F22D8D8);
  __swift_project_value_buffer(v0, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  return sub_24F928588();
}

uint64_t sub_24ECDF5E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38);
  __swift_allocate_value_buffer(v0, qword_27F39C540);
  __swift_project_value_buffer(v0, qword_27F39C540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  return sub_24F928588();
}

uint64_t sub_24ECDF670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArticlePageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - v6;
  v43 = sub_24F91F4A8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F928388();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v46 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v49 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v47 = v20;
    v48 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v12 + 8);
  v24 = v44;
  v23(v17, v44);
  v25 = v46;
  sub_24F928398();
  v26 = v42;
  sub_24F928268();
  v23(v14, v24);
  v27 = v41;
  v28 = v43;
  if ((*(v41 + 48))(v26, 1, v43) == 1)
  {
    sub_24E70E058(v26);
    v29 = v24;
    v30 = sub_24F92AC38();
    sub_24ECDFFA0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for ArticlePageIntent();
    *v32 = 7107189;
    v32[1] = 0xE300000000000000;
    v32[2] = v33;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v45, v34);
    v23(v25, v29);
    return sub_24E6585F8(v49);
  }

  else
  {
    v36 = sub_24F9285B8();
    (*(*(v36 - 8) + 8))(v45, v36);
    v23(v25, v24);
    v37 = *(v27 + 32);
    v38 = v40;
    v37(v40, v26, v28);
    v39 = type metadata accessor for ArticlePageIntent();
    return (v37)(v49 + *(v39 + 20), v38, v28);
  }
}

uint64_t type metadata accessor for ArticlePageIntent()
{
  result = qword_27F22D908;
  if (!qword_27F22D908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArticlePageIntent.init(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  v6 = *(type metadata accessor for ArticlePageIntent() + 20);
  v7 = sub_24F91F4A8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t ArticlePageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticlePageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ArticlePageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_24E65864C(v1, v9);
  v6 = [v3 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  type metadata accessor for ArticlePageIntent();
  v9[0] = sub_24F91F398();
  v9[1] = v7;
  v8 = [v3 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v8)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24ECDFFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ECE0000(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECE00C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ECE0164()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AppLaunchMetricsEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  AppLaunchMetricsEvent.init()();
  return v0;
}

uint64_t AppLaunchMetricsEvent.init()()
{
  if (qword_27F210600 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_27F22D918 + 1);
  *(v0 + 32) = xmmword_27F22D918;
  *(v0 + 40) = v1;
  v2 = objc_opt_self();

  v3 = [v2 processInfo];
  [v3 ask_launchTime];
  v5 = v4;

  *(v0 + 48) = v5;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 120) = MEMORY[0x277D84F90];
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 513;
  *(v0 + 208) = 0;
  *(v0 + 16) = sub_24E608448(v6);
  *(v0 + 24) = &unk_2861C0A50;
  return v0;
}

uint64_t AppLaunchMetricsEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_27F210600 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_27F22D918 + 1);
  v2[4] = xmmword_27F22D918;
  v2[5] = v6;
  v7 = objc_opt_self();

  v8 = [v7 processInfo];
  [v8 ask_launchTime];
  v10 = v9;

  v2[6] = v10;
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = 0;
  *(v2 + 80) = 1;
  v2[11] = 0;
  *(v2 + 96) = 1;
  v2[13] = 0;
  *(v2 + 112) = 1;
  v2[15] = MEMORY[0x277D84F90];
  v2[16] = 0;
  *(v2 + 136) = 1;
  v2[18] = 0;
  *(v2 + 152) = 1;
  v2[20] = 0;
  *(v2 + 168) = 1;
  v2[22] = 0;
  *(v2 + 184) = 1;
  v2[24] = 0;
  *(v2 + 100) = 513;
  v2[26] = 0;
  v11 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v12 = 0xD000000000000015;
  v12[1] = 0x800000024F995900;
  v12[2] = v5;
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D22528], v11);
  swift_willThrow();
  v13 = sub_24F9285B8();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = sub_24F928388();
  (*(*(v14 - 8) + 8))(a1, v14);

  return swift_deallocPartialClassInstance();
}

uint64_t sub_24ECE060C()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  v4 = sub_24F91F668();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27F22D918 = v4;
  unk_27F22D920 = v6;
  return result;
}

uint64_t static AppLaunchMetricsEvent.launchCorrelationKey.getter()
{
  if (qword_27F210600 != -1)
  {
    swift_once();
  }

  v0 = xmmword_27F22D918;

  return v0;
}

uint64_t AppLaunchMetricsEvent.launchCorrelationKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppLaunchMetricsEvent.topic.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

unint64_t AppLaunchMetricsEvent.description.getter()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppLaunchMetricsEvent.metricsData.getter(v3);
  v4 = sub_24F928688();
  (*(v1 + 8))(v3, v0);
  v10 = v4;
  v11 = sub_24ECE1BD0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D928);
  sub_24ECE1DB8();
  sub_24E600AEC();
  v5 = sub_24F92B4D8();
  v7 = v6;

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_24F92C888();

  v10 = 0xD000000000000016;
  v11 = 0x800000024FA5A190;
  MEMORY[0x253050C20](v5, v7);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v10;
}

unint64_t AppLaunchMetricsEvent.metricsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v117 = sub_24F92AB48();
  v107 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24F928698();
  v4 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F92A1F8();
  v115 = *(v112 - 1);
  MEMORY[0x28223BE20](v112);
  v111 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D837D0];
  *(&v120[0] + 1) = MEMORY[0x277D837D0];
  *&v119 = 0x636E75614C707061;
  *(&v119 + 1) = 0xE900000000000068;
  sub_24E612B0C(&v119, v133);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = v7;
  sub_24E81C1D4(v133, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v10 = v132;
  v134 = v132;
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = sub_24E9421D0();
  *(&v120[0] + 1) = v12;
  *&v119 = v11;
  sub_24E612B0C(&v119, v133);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v10;
  sub_24E81C1D4(v133, 0x726556746E657665, 0xEC0000006E6F6973, v13);
  v14 = v132;
  swift_beginAccess();
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  *(&v120[0] + 1) = v8;
  v17 = 0x800000024FA5A1B0;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v15 = 0xD000000000000011;
  }

  *&v119 = v15;
  *(&v119 + 1) = v17;
  sub_24E612B0C(&v119, v133);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v131 = v14;
  sub_24E81C1D4(v133, 0x6369706F74, 0xE500000000000000, v18);
  v19 = v131;
  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  *(&v120[0] + 1) = v8;
  *&v119 = v20;
  *(&v119 + 1) = v21;
  sub_24E612B0C(&v119, v133);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v131 = v19;
  result = sub_24E81C1D4(v133, 0xD000000000000014, 0x800000024FA44C30, v22);
  v24 = v131;
  v134 = v131;
  v25 = *(v2 + 48);
  v108 = v4;
  if (v25 <= 0.0)
  {
    goto LABEL_10;
  }

  v26 = v25 * 1000.0;
  if (*&v26 >> 52 > 0x7FEuLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v26 < 9.22337204e18)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    if (v27)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v27;
      sub_24E612B0C(&v119, v133);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v24;
      sub_24E81C1D4(v133, 0xD000000000000010, 0x800000024FA5A1D0, v28);
      v134 = v131;
      goto LABEL_11;
    }

LABEL_10:
    sub_24E98EF1C(0xD000000000000010, 0x800000024FA5A1D0, &v119);
    sub_24E857CC8(&v119);
LABEL_11:
    swift_beginAccess();
    v29 = sub_24E99058C(*(v2 + 72), *(v2 + 80));
    if (v29)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v29;
      sub_24E612B0C(&v119, v133);
      v30 = v134;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v30;
      sub_24E81C1D4(v133, 0x7472617453676162, 0xEC000000656D6954, v31);
      v134 = v130;
    }

    else
    {
      sub_24E98EF1C(0x7472617453676162, 0xEC000000656D6954, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v32 = sub_24E99058C(*(v2 + 88), *(v2 + 96));
    if (v32)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v32;
      sub_24E612B0C(&v119, v133);
      v33 = v134;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v129 = v33;
      sub_24E81C1D4(v133, 0x756C696146676162, 0xEE00656D69546572, v34);
      v134 = v129;
    }

    else
    {
      sub_24E98EF1C(0x756C696146676162, 0xEE00656D69546572, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v35 = sub_24E99058C(*(v2 + 104), *(v2 + 112));
    if (v35)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v35;
      sub_24E612B0C(&v119, v133);
      v36 = v134;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v36;
      sub_24E81C1D4(v133, 0x6563637553676162, 0xEE00656D69547373, v37);
      v134 = v128;
    }

    else
    {
      sub_24E98EF1C(0x6563637553676162, 0xEE00656D69547373, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v38 = *(v2 + 120);
    v39 = *(v38 + 16);
    if (v39)
    {
      v104 = v12;
      v105 = v2;
      *&v119 = MEMORY[0x277D84F90];

      sub_24F457900(0, v39, 0);
      v40 = v119;
      v41 = *(v115 + 16);
      v42 = *(v115 + 80);
      v103 = v38;
      v43 = v38 + ((v42 + 32) & ~v42);
      v109 = *(v115 + 72);
      v110 = v41;
      ++v108;
      v115 += 16;
      v44 = (v115 - 8);
      do
      {
        v45 = v111;
        v46 = v112;
        (v110)(v111, v43, v112);
        v47 = v113;
        JSNetworkPerformanceMetrics.metricsData.getter();
        v48 = sub_24F928688();
        (*v108)(v47, v114);
        (*v44)(v45, v46);
        *&v119 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_24F457900((v49 > 1), v50 + 1, 1);
          v40 = v119;
        }

        *(v40 + 16) = v50 + 1;
        *(v40 + 8 * v50 + 32) = v48;
        v43 += v109;
        --v39;
      }

      while (v39);

      *(&v120[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
      *&v119 = v40;
      sub_24E612B0C(&v119, v133);
      v51 = v134;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v51;
      sub_24E81C1D4(v133, 0x7374736575716572, 0xE800000000000000, v52);
      v134 = v127;
      v12 = v104;
      v2 = v105;
    }

    swift_beginAccess();
    v53 = sub_24E99058C(*(v2 + 128), *(v2 + 136));
    if (v53)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v53;
      sub_24E612B0C(&v119, v133);
      v54 = v134;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v126 = v54;
      sub_24E81C1D4(v133, 0xD000000000000010, 0x800000024FA5A1F0, v55);
      v134 = v126;
    }

    else
    {
      sub_24E98EF1C(0xD000000000000010, 0x800000024FA5A1F0, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v56 = sub_24E99058C(*(v2 + 144), *(v2 + 152));
    if (v56)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v56;
      sub_24E612B0C(&v119, v133);
      v57 = v134;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v57;
      sub_24E81C1D4(v133, 0x457075746553736ALL, 0xEE00656D6954646ELL, v58);
      v134 = v125;
    }

    else
    {
      sub_24E98EF1C(0x457075746553736ALL, 0xEE00656D6954646ELL, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v59 = sub_24E99058C(*(v2 + 160), *(v2 + 168));
    if (v59)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v59;
      sub_24E612B0C(&v119, v133);
      v60 = v134;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v124 = v60;
      sub_24E81C1D4(v133, 0xD000000000000011, 0x800000024FA5A210, v61);
      v134 = v124;
    }

    else
    {
      sub_24E98EF1C(0xD000000000000011, 0x800000024FA5A210, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v62 = sub_24E99058C(*(v2 + 176), *(v2 + 184));
    if (v62)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v62;
      sub_24E612B0C(&v119, v133);
      v63 = v134;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v123 = v63;
      sub_24E81C1D4(v133, 0xD000000000000011, 0x800000024FA44C50, v64);
      v134 = v123;
    }

    else
    {
      sub_24E98EF1C(0xD000000000000011, 0x800000024FA44C50, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v65 = sub_24E99058C(*(v2 + 192), *(v2 + 200));
    if (v65)
    {
      *(&v120[0] + 1) = v12;
      *&v119 = v65;
      sub_24E612B0C(&v119, v133);
      v66 = v134;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v66;
      sub_24E81C1D4(v133, 0xD000000000000019, 0x800000024FA5A230, v67);
      v134 = v122;
    }

    else
    {
      sub_24E98EF1C(0xD000000000000019, 0x800000024FA5A230, &v119);
      sub_24E857CC8(&v119);
    }

    swift_beginAccess();
    v68 = *(v2 + 201);
    if (v68 != 2)
    {
      v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      *(&v120[0] + 1) = v12;
      *&v119 = v69;
      sub_24E612B0C(&v119, v133);
      v70 = v134;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v70;
      sub_24E81C1D4(v133, 0xD000000000000014, 0x800000024FA5A270, v71);
      v134 = v121;
    }

    swift_beginAccess();
    v72 = *(v2 + 208);
    if (v72)
    {
      v73 = *(v72 + 16);
      v74 = MEMORY[0x277D84F90];
      if (v73)
      {
        *&v133[0] = MEMORY[0x277D84F90];

        sub_24F457900(0, v73, 0);
        v74 = *&v133[0];
        v75 = v107;
        v76 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v109 = v72;
        v77 = v72 + v76;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
        v79 = *(v75 + 16);
        v75 += 16;
        v112 = v79;
        v113 = v78;
        v80 = *(v75 + 56);
        v107 = v75;
        v110 = (v75 - 8);
        v111 = v80;
        while (1)
        {
          v114 = v74;
          v115 = v73;
          (v112)(v116, v77, v117);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
          v81 = swift_allocObject();
          v81[4] = 0x656D614E65707974;
          v81[5] = 0xE800000000000000;
          v82 = sub_24F92AB38();
          v81[9] = MEMORY[0x277D837D0];
          v81[6] = v82;
          v81[7] = v83;
          v81[10] = 0x5464657370616C65;
          v81[11] = 0xEB00000000656D69;
          sub_24F92AB28();
          v81[15] = MEMORY[0x277D839F8];
          v81[12] = v84;
          v85 = sub_24F92CB58();

          sub_24EA20328((v81 + 4), &v119);
          v86 = v119;
          result = sub_24E76D644(v119, *(&v119 + 1));
          if (v87)
          {
            break;
          }

          *(v85 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v85[6] + 16 * result) = v86;
          result = sub_24E612B0C(v120, (v85[7] + 32 * result));
          v88 = v85[2];
          v89 = __OFADD__(v88, 1);
          v90 = v88 + 1;
          if (v89)
          {
            goto LABEL_65;
          }

          v85[2] = v90;
          sub_24EA20328((v81 + 10), &v119);
          v91 = v119;
          result = sub_24E76D644(v119, *(&v119 + 1));
          if (v92)
          {
            break;
          }

          *(v85 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v85[6] + 16 * result) = v91;
          result = sub_24E612B0C(v120, (v85[7] + 32 * result));
          v93 = v85[2];
          v89 = __OFADD__(v93, 1);
          v94 = v93 + 1;
          if (v89)
          {
            goto LABEL_65;
          }

          v85[2] = v94;

          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*v110)(v116, v117);
          v74 = v114;
          *&v133[0] = v114;
          v96 = *(v114 + 16);
          v95 = *(v114 + 24);
          if (v96 >= v95 >> 1)
          {
            sub_24F457900((v95 > 1), v96 + 1, 1);
            v74 = *&v133[0];
          }

          *(v74 + 16) = v96 + 1;
          *(v74 + 8 * v96 + 32) = v85;
          v77 += v111;
          v73 = v115 - 1;
          if (v115 == 1)
          {

            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_56:
      *(&v120[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
      *&v119 = v74;
      sub_24E612B0C(&v119, v133);
      v98 = v134;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v98;
      sub_24E81C1D4(v133, 0xD000000000000011, 0x800000024FA5A250, v99);
      v97 = v118;
      if (*(v118 + 16))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v97 = v134;
      if (*(v134 + 16))
      {
LABEL_57:
        v100 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
        if (v101)
        {
          sub_24E643A9C(*(v97 + 56) + 32 * v100, &v119);
          if (swift_dynamicCast())
          {
            v102 = HIBYTE(*(&v133[0] + 1)) & 0xFLL;
            if ((*(&v133[0] + 1) & 0x2000000000000000) == 0)
            {
              v102 = *&v133[0] & 0xFFFFFFFFFFFFLL;
            }

            if (!v102)
            {
            }
          }
        }
      }
    }

    return sub_24F928658();
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_24ECE1BD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x253050C20](*a1, a1[1]);
  MEMORY[0x253050C20](8250, 0xE200000000000000);
  result = sub_24F92CA38();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_24ECE1C8C()
{
}

uint64_t AppLaunchMetricsEvent.deinit()
{

  return v0;
}

uint64_t AppLaunchMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24ECE1DB8()
{
  result = qword_27F22D930;
  if (!qword_27F22D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D930);
  }

  return result;
}

Swift::String __swiftcall localizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v2 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v3 = *(v2 + 2);

  os_unfair_lock_unlock(v2 + 6);
  if (v3)
  {
    v4 = *(v3 + 16);
    swift_unknownObjectRetain();

    v5 = sub_24F92B098();
    v6 = [v4 string_];

    v7 = sub_24F92B0D8();
    v9 = v8;
    swift_unknownObjectRelease();

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
    v13 = sub_24F91F088();
    v15 = v14;

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 == 0xE100000000000000;
    }

    if (v16 || (sub_24F92CE08() & 1) != 0)
    {

      if (qword_27F2103D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v17 = qword_27F22B5B8;
      v13 = sub_24F91F088();
      v15 = v18;
    }

    v10 = v13;
    v11 = v15;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall localizedStringForDecimal(_:_:)(NSNumber_optional a1, Swift::Int a2)
{
  v2 = *&a1.is_nil;
  isa = a1.value.super.super.isa;
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v4 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v4 + 6);
  if (!v5)
  {
    if (isa)
    {
      v11 = [isa stringValue];
      isa = sub_24F92B0D8();
      v10 = v12;

      goto LABEL_10;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  swift_unknownObjectRetain();

  v7 = [v6 decimal:isa :v2];
  if (!v7)
  {
    swift_unknownObjectRelease();
    isa = 0;
    goto LABEL_9;
  }

  v8 = v7;
  isa = sub_24F92B0D8();
  v10 = v9;

  swift_unknownObjectRelease();
LABEL_10:
  v13 = isa;
  v14 = v10;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall localizedString(_:with:)(Swift::String _, Swift::OpaquePointer with)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v4 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v4 + 6);
  if (v5)
  {
    v6 = *(v5 + 16);
    swift_unknownObjectRetain();

    v7 = sub_24F92B098();
    v8 = sub_24F92AE28();
    v9 = [v6 string:v7 with:v8];

    v10 = sub_24F92B0D8();
    v12 = v11;
    swift_unknownObjectRelease();

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v15 = countAndFlagsBits;
    v16 = object;
    v17 = 0;
    v18 = 0xE000000000000000;

    v19 = localizedString(_:comment:)(*&v15, *&v17);
    v14 = v19._object;
    v13 = v19._countAndFlagsBits;
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall localizedStringReferencingWiFi(_:comment:)(Swift::String _, Swift::String comment)
{
  object = comment._object;
  countAndFlagsBits = comment._countAndFlagsBits;
  v4 = _._object;
  v5 = _._countAndFlagsBits;
  if ([objc_opt_self() wapiCapability])
  {
    v6 = 1312902231;
  }

  else
  {
    v6 = 1229343063;
  }

  v13 = v6 & 0xFFFF0000FFFFFFFFLL | 0x5F00000000;
  MEMORY[0x253050C20](v5, v4);
  v7._countAndFlagsBits = v13;
  v7._object = 0xE500000000000000;
  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v9 = localizedString(_:comment:)(v7, v8);

  v10 = v9._countAndFlagsBits;
  v11 = v9._object;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_24ECE242C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D950);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_27F22D938 = result;
  return result;
}

uint64_t sub_24ECE2470(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_24ECE24B8()
{
  swift_unknownObjectRelease();
  sub_24E601704(v0 + 24, &qword_27F223248);

  v1 = OBJC_IVAR____TtC12GameStoreKit19PrimaryLocalization_legacyLocale;
  v2 = sub_24F91F7C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::String __swiftcall localizedStringForAdsLanguage(_:)(Swift::String a1)
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v1 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (v2)
  {
    sub_24EA28268(v2 + 24, &v19);
    if (v20)
    {
      sub_24E612E28(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v3 = sub_24F92AD38();
      v5 = v4;

      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_24E601704(&v19, &qword_27F223248);
      v11 = *(v2 + 16);
      v12 = sub_24F92B098();
      if (*(v2 + 72))
      {

        v13 = sub_24F92B098();
      }

      else
      {
        v13 = 0;
      }

      v14 = [v11 stringForPreferredLocale:v12 :v13];

      v3 = sub_24F92B0D8();
      v5 = v15;
    }
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v3 = sub_24F91F088();
    v5 = v7;

    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 0xE100000000000000;
    }

    if (v8 || (sub_24F92CE08() & 1) != 0)
    {

      if (qword_27F2103D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = qword_27F22B5B8;
      v3 = sub_24F91F088();
      v5 = v10;
    }
  }

  v16 = v3;
  v17 = v5;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::String_optional __swiftcall localizedFileSize(_:)(NSNumber a1)
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v2 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v3 = *(v2 + 2);

  os_unfair_lock_unlock(v2 + 6);
  if (v3 && (v4 = *(v3 + 16), swift_unknownObjectRetain(), , v5 = [v4 fileSize_], swift_unknownObjectRelease(), v5))
  {
    v6 = sub_24F92B0D8();
    v8 = v7;

    v9 = v8;
    v10 = v6;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v7 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v8 = *(v7 + 2);

  os_unfair_lock_unlock(v7 + 6);
  if (v8)
  {
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();

    v10 = sub_24F92B098();
    v11 = [v9 stringWithCount:v10 :a3];

    v12 = sub_24F92B0D8();
    swift_unknownObjectRelease();

    return v12;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v15 = sub_24F91F088();
    v17 = v16;

    if (!v15 && v17 == 0xE100000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      if (qword_27F2103D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v18 = qword_27F22B5B8;
      sub_24F91F088();
    }

    v19 = sub_24F91F7C8();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D83B88];
    *(v20 + 16) = xmmword_24F93DE60;
    v22 = MEMORY[0x277D83C10];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = a3;
    v23 = sub_24F92B108();

    sub_24E601704(v6, &qword_27F21FAD8);
    return v23;
  }
}

uint64_t type metadata accessor for PrimaryLocalization()
{
  result = qword_27F22D940;
  if (!qword_27F22D940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECE2D08()
{
  result = sub_24F91F7C8();
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

uint64_t CrossfireReferralActionImplementation.perform(_:asPartOf:)(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v6 = a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData);
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 24);
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v10 = *(v6 + 40);
  v14 = v7;
  v15 = *(v6 + 8);
  v16 = v8;
  v17 = v9;
  v18 = v10;

  sub_24E90BCC4(v9, v10);
  sub_24EB6C854(&v14);
  v11 = v17;
  v12 = v18;

  sub_24E7B6564(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

unint64_t sub_24ECE2F6C()
{
  result = qword_27F22D958;
  if (!qword_27F22D958)
  {
    type metadata accessor for CrossfireReferralAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D958);
  }

  return result;
}

uint64_t sub_24ECE2FC4(uint64_t *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v7 = v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData);
  v9 = *(v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 24);
  v10 = *(v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v11 = *(v7 + 40);
  v15 = v8;
  v16 = *(v7 + 8);
  v17 = v9;
  v18 = v10;
  v19 = v11;

  sub_24E90BCC4(v10, v11);
  sub_24EB6C854(&v15);
  v12 = v18;
  v13 = v19;

  sub_24E7B6564(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

uint64_t SynchronizedAppStateDataSource.performExpectedAppStateUpdates(async:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a3;
  v8 = sub_24F927DC8();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927D88();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(a5 + 24))(a4, a5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  aBlock[0] = v17;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  if (a1)
  {
    sub_24F92C6A8();
    v18 = swift_allocObject();
    v19 = v28;
    *(v18 + 16) = v27;
    *(v18 + 24) = v19;
    aBlock[4] = sub_24E97225C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_69;
    v20 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v10, v15, v20);
    _Block_release(v20);

    (*(v25 + 8))(v10, v26);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v22 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v22);
    v23 = v28;
    *(&v24 - 2) = v27;
    *(&v24 - 1) = v23;
    sub_24F92BF08();

    return (*(v12 + 8))(v15, v11);
  }
}

void SynchronizedAppStateDataSource.state(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 24))(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BE00);
  sub_24F92BF18();
}

uint64_t sub_24ECE369C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24ECE36EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_24E7728F0(a2, a3);
    if (v11)
    {
      v12 = (*(v9 + 56) + (v10 << 6));
      v14 = v12[2];
      v13 = v12[3];
      v15 = v12[1];
      v20[0] = *v12;
      v20[1] = v15;
      v20[2] = v14;
      v20[3] = v13;
      v16 = v12[1];
      *a4 = *v12;
      a4[1] = v16;
      v17 = v12[3];
      a4[2] = v12[2];
      a4[3] = v17;
      sub_24E8B9478(v20, &v19);

      return result;
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = xmmword_24F962330;
  return result;
}

double sub_24ECE37D8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  if (*(v8 + 16) && (v9 = sub_24E7728F0(a1, a2), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + (v9 << 6));
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[1];
    v19[0] = *v11;
    v19[1] = v14;
    v19[2] = v13;
    v19[3] = v12;
    v15 = v11[1];
    *a5 = *v11;
    a5[1] = v15;
    v16 = v11[3];
    a5[2] = v11[2];
    a5[3] = v16;
    sub_24E8B9478(v19, &v18);
  }

  else
  {

    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    a5[3] = xmmword_24F962330;
  }

  return result;
}

uint64_t sub_24ECE3984()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D960);
  sub_24F92BF18();
  return v1;
}

uint64_t sub_24ECE3A08(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D960);
  sub_24F92BF18();

  return v4;
}

uint64_t sub_24ECE3ACC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_24ECE3B54@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.init(imageAspectRatio:imageWidth:headingTopSpace:bodyTopSpace:textInsets:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = sub_24F922348();
  (*(*(v18 - 8) + 32))(a5, a1, v18);
  v19 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  sub_24E612C80(a2, a5 + v19[5]);
  sub_24E612C80(a3, a5 + v19[6]);
  result = sub_24E612C80(a4, a5 + v19[7]);
  v21 = (a5 + v19[8]);
  *v21 = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 20);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.headingTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.textInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_24ECE40E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24ECE40E0(a1, a5);
  v9 = type metadata accessor for ArcadeWelcomeItemViewLayout(0);
  sub_24E612C80(a2, a5 + v9[5]);
  sub_24E612C80(a3, a5 + v9[6]);
  v10 = a5 + v9[7];

  return sub_24E612C80(a4, v10);
}

double ArcadeWelcomeItemViewLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  sub_24ECE4294(a1, v6);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);
  v4 = v3;

  return v4;
}

uint64_t sub_24ECE4294@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_24F92CDB8();
  v20 = v4;
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F9479A0;
  v25 = type metadata accessor for ArcadeWelcomeItemViewLayout(0);
  v8 = (v2 + v25[7]);
  v9 = v8[3];
  v19[1] = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v24 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1((v2 + *(v24 + 20)), *(v2 + *(v24 + 20) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v21 = *(v21 + 8);
  (v21)(v6, v4);
  sub_24F922308();
  sub_24F922268();
  v30 = MEMORY[0x277D839F8];
  v31 = MEMORY[0x277D22A30];
  v28 = MEMORY[0x277D22A30];
  v29[0] = 0;
  *(&v27 + 1) = MEMORY[0x277D839F8];
  *&v26 = 0;
  sub_24E615E00(v32, v7 + 32);
  sub_24E615E00(v29, v7 + 80);
  sub_24E930DFC(&v26, v7 + 120);
  *(v7 + 72) = 256;
  *(v7 + 160) = 8;
  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_24E930E6C(&v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1((v3 + v25[5]), *(v3 + v25[5] + 24));
  v10 = v24;
  sub_24F922258();
  __swift_project_boxed_opaque_existential_1((v3 + *(v10 + 24)), *(v3 + *(v10 + 24) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = v11;
  v13 = v20;
  v14 = v21;
  (v21)(v6, v20);
  v30 = MEMORY[0x277D85048];
  v31 = MEMORY[0x277D225F8];
  v29[0] = v12;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_24E615E00(v32, v7 + 168);
  sub_24E615E00(v29, v7 + 216);
  sub_24E930DFC(&v26, v7 + 256);
  *(v7 + 208) = 257;
  *(v7 + 296) = 10;
  sub_24E930E6C(&v26);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1((v3 + v25[6]), *(v3 + v25[6] + 24));
  sub_24F922258();
  __swift_project_boxed_opaque_existential_1((v3 + *(v24 + 28)), *(v3 + *(v24 + 28) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16 = v15;
  v14(v6, v13);
  v30 = MEMORY[0x277D85048];
  v31 = MEMORY[0x277D225F8];
  v29[0] = v16;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_24E615E00(v32, v7 + 304);
  sub_24E615E00(v29, v7 + 352);
  sub_24E930DFC(&v26, v7 + 392);
  *(v7 + 344) = 257;
  *(v7 + 432) = 10;
  sub_24E930E6C(&v26);
  __swift_destroy_boxed_opaque_existential_1(v32);
  result = __swift_destroy_boxed_opaque_existential_1(v29);
  v18 = v23;
  *v23 = 1;
  *(v18 + 1) = v7;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_24ECE4294(a1, v12);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

uint64_t sub_24ECE4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_24ECE4294(a1, v12);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

double sub_24ECE48A0(uint64_t a1, double a2)
{
  sub_24ECE4294(a1, v6);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);
  v4 = v3;

  return v4;
}

uint64_t sub_24ECE4994()
{
  result = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0);
    if (v2 <= 0x3F)
    {
      result = sub_24E8EFB54(319, &qword_27F237A20);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24ECE4C2C()
{
  sub_24F922348();
  if (v0 <= 0x3F)
  {
    sub_24E8EFB54(319, &qword_27F237A40);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24ECE4CF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, float64_t a12@<D7>, uint64_t a13, double a14)
{
  v46 = a11;
  v47 = a12;
  v45 = a6;
  v44 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  sub_24E60169C(a1, &v44 - v24, &unk_27F23A690);
  sub_24E60169C(a2, &v25[*(v23 + 56)], &unk_27F23A690);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v26 = v52[5];
  swift_getKeyPath();
  sub_24F928A48();

  v52[2] = v52[3];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v27 == 0xEB00000000726564)
  {

    goto LABEL_5;
  }

  v28 = sub_24F92CE08();

  if (v28)
  {
LABEL_5:
    swift_getKeyPath();
    sub_24F928A48();

    v29 = v48;
    if (v48 != 104)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  sub_24F928A48();

  v29 = v52[4];
LABEL_7:
  v30 = type metadata accessor for PageEnvironment();
  v31 = *(a3 + *(v30 + 24));
  if (a5 > 1580.0)
  {
    a5 = 1580.0;
  }

  if (v31)
  {
    if (*(a3 + *(v30 + 32)))
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 16.0;
    }
  }

  else
  {
    v32 = dbl_24F995CE8[sub_24E6B00B4(a5)];
  }

  v33 = v26 ^ 1;
  v34 = sub_24E6B00B4(a5);
  swift_getKeyPath();
  sub_24F928A48();

  if (v52[1])
  {
    v49 = v33 & 1;
    sub_24ECE740C(v32, dbl_24F995D30[v34], dbl_24F995D30[v34]);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0xD000000000000012, 0x800000024FA5A3B0, &v49, 0, v35, v44, a5, v45, a7, a8, a9, a10, v46, v47, a13, a14);
    return sub_24E601704(v25, &unk_27F23A680);
  }

  if (v29 <= 62)
  {
    if (v29 != 23 && v29 != 55)
    {
LABEL_27:
      v52[0] = v33 & 1;
      if (v31)
      {
        sub_24E69C15C(2.0, v32);
      }

      else
      {
        sub_24EF29A90(v32);
      }

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4164697267, 0xE500000000000000, v52, 0, v42, v44, a5, v45, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), v46, v47, a13, a14);
      return sub_24E601704(v25, &unk_27F23A680);
    }

LABEL_23:
    v50 = v33 & 1;
    _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    sub_24EE7C714(v31, v32);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4264697267, 0xE500000000000000, &v50, 0, v36, v44, a5, v45, a7, a8, a9, a10, v46, v47, a13, a14);
    return sub_24E601704(v25, &unk_27F23A680);
  }

  if (v29 != 63 && v29 != 87)
  {
    if (v29 != 99)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v51 = v33 & 1;
  if (qword_27F210620 != -1)
  {
    swift_once();
  }

  v37 = qword_27F39C590;
  v38 = *MEMORY[0x277D768C8];
  v39 = *(MEMORY[0x277D768C8] + 8);
  v40 = *(MEMORY[0x277D768C8] + 16);
  v41 = *(MEMORY[0x277D768C8] + 24);

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x65656C426C6C7566, 0xE900000000000064, &v51, 0, v37, v44, a5, v45, v38, v39, v40, v41, v46, v47, a13, a14);
  return sub_24E601704(v25, &unk_27F23A680);
}

uint64_t sub_24ECE520C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D988);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2 - 8];
  v4 = *(v0 + 24);
  if (*(v4 + 16) != 1)
  {
    return 0;
  }

  sub_24E615E00(v4 + 32, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  v5 = type metadata accessor for ComponentGrid();
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  v8 = 1;
  (*(v7 + 56))(v3, v6 ^ 1u, 1, v5);
  if ((*(v7 + 48))(v3, 1, v5))
  {
    if (*(v4 + 16) && (sub_24E615E00(v4 + 32, v11), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0), type metadata accessor for RibbonBar(), (swift_dynamicCast() & 1) != 0))
    {

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  sub_24E601704(v3, &qword_27F22D988);
  return v8;
}

uint64_t sub_24ECE53DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, float64_t a12@<D7>, uint64_t a13, double a14)
{
  v60 = a3;
  v56 = a11;
  v57 = a12;
  v55 = a6;
  v54 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v54 - v29;
  sub_24E60169C(a1, &v54 - v29, &unk_27F23A690);
  sub_24E60169C(a2, &v30[*(v22 + 56)], &unk_27F23A690);
  v61 = v30;
  sub_24E60169C(v30, v27, &unk_27F23A680);
  v31 = *(v22 + 56);
  sub_24E60169C(v27, v24, &unk_27F23A690);
  v32 = *(v22 + 56);
  v58 = v24;
  v59 = v31;
  sub_24E60169C(&v27[v31], &v24[v32], &unk_27F23A690);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v33 = v66[5];
  swift_getKeyPath();
  sub_24F928A48();

  v66[2] = v66[3];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v34 == 0xEB00000000726564)
  {

    goto LABEL_5;
  }

  v35 = sub_24F92CE08();

  if (v35)
  {
LABEL_5:
    swift_getKeyPath();
    sub_24F928A48();

    v36 = v62;
    if (v62 != 104)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  sub_24F928A48();

  v36 = v66[4];
LABEL_7:
  v37 = type metadata accessor for PageEnvironment();
  v38 = *(v60 + *(v37 + 24));
  if (a5 > 1580.0)
  {
    a5 = 1580.0;
  }

  if (v38 == 1)
  {
    if (*(v60 + *(v37 + 32)))
    {
      v39 = 0.0;
    }

    else
    {
      v39 = 16.0;
    }
  }

  else
  {
    v39 = dbl_24F995CE8[sub_24E6B00B4(a5)];
  }

  v40 = v33 ^ 1;
  v41 = sub_24E6B00B4(a5);
  swift_getKeyPath();
  sub_24F928A48();

  if (v66[1] != 1)
  {
    if (v36 <= 62)
    {
      if (v36 != 23 && v36 != 55)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v36 == 63 || v36 == 87)
      {
        v65 = v40 & 1;
        v44 = v59;
        if (qword_27F210620 != -1)
        {
          swift_once();
        }

        v45 = qword_27F39C590;
        v46 = *MEMORY[0x277D768C8];
        v47 = *(MEMORY[0x277D768C8] + 8);
        v48 = *(MEMORY[0x277D768C8] + 16);
        v49 = *(MEMORY[0x277D768C8] + 24);

        PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x65656C426C6C7566, 0xE900000000000064, &v65, 0, v45, v54, a5, v55, v46, v47, v48, v49, v56, v57, a13, a14);
        v50 = v58;
        goto LABEL_32;
      }

      if (v36 != 99)
      {
LABEL_28:
        v66[0] = v40 & 1;
        if (v38)
        {
          sub_24E69C15C(2.0, v39);
        }

        else
        {
          sub_24EF29A90(v39);
        }

        v52 = v58;
        v44 = v59;
        PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4164697267, 0xE500000000000000, v66, 0, v51, v54, a5, v55, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), v56, v57, a13, a14);
        v50 = v52;
LABEL_32:
        sub_24E601704(v50, &unk_27F23A680);
        sub_24E601704(v61, &unk_27F23A680);
        goto LABEL_33;
      }
    }

    v64 = v40 & 1;
    _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    sub_24EE7C714(v38, v39);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4264697267, 0xE500000000000000, &v64, 0, v43, v54, a5, v55, a7, a8, a9, a10, v56, v57, a13, a14);
    goto LABEL_24;
  }

  v63 = v40 & 1;
  sub_24ECE740C(v39, dbl_24F995D30[v41], dbl_24F995D30[v41]);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0xD000000000000012, 0x800000024FA5A3B0, &v63, 0, v42, v54, a5, v55, a7, a8, a9, a10, v56, v57, a13, a14);
LABEL_24:
  sub_24E601704(v58, &unk_27F23A680);
  sub_24E601704(v61, &unk_27F23A680);
  v44 = v59;
LABEL_33:
  sub_24E601704(&v27[v44], &unk_27F23A690);
  return sub_24E601704(v27, &unk_27F23A690);
}

double sub_24ECE5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_24E60169C(a2, &v11[-v7], &unk_27F23A690);
  sub_24E60169C(a3, &v8[*(v6 + 56)], &unk_27F23A690);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  sub_24E601704(v8, &unk_27F23A680);
  v9 = v12 == 17 || v12 == 63;
  result = 20.0;
  if (v9)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_24ECE5BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24ECE520C();
  *a1 = result & 1;
  return result;
}

uint64_t Ratings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v28 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  LOBYTE(a7) = *a2;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v28;
  v23[1] = a10;
  sub_24E65E064(a1, v30);
  v29 = a7;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v30, &v29, v20);
  sub_24E601704(a1, &qword_27F235830);
  return v25;
}

uint64_t Ratings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v28 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  LOBYTE(a7) = *a2;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v28;
  v23[1] = a10;
  sub_24E65E064(a1, v30);
  v29 = a7;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v30, &v29, v21);
  sub_24E601704(a1, &qword_27F235830);
  return v25;
}

uint64_t Ratings.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v66 - v4;
  v5 = sub_24F91F6B8();
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v66 - v12;
  MEMORY[0x28223BE20](v13);
  v69 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v76 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  if (v28)
  {
    v78 = v27;
    v79 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v30 = v5;
    v31 = v23;
    v33 = v32;
    v71[1](v7, v30);
    v78 = v29;
    v79 = v33;
    v23 = v31;
  }

  sub_24F92C7F8();
  v34 = *(v9 + 8);
  v34(v26, v8);
  sub_24F928398();
  sub_24E9C07DC();
  sub_24F928208();
  v71 = v23;
  v34(v23, v8);
  v77 = v78;
  sub_24F928398();
  v35 = sub_24F928348();
  v67 = v36;
  v68 = v35;
  v34(v20, v8);
  sub_24F928398();
  v37 = sub_24F9282C8();
  v34(v17, v8);
  v38 = v69;
  sub_24F928398();
  v39 = v72;
  sub_24F9282B8();
  v40 = v34;
  v41 = v8;
  v42 = v40;
  v40(v38, v8);
  v43 = sub_24F92AC28();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v39, 1, v43) == 1)
  {
    sub_24E601704(v39, &qword_27F2213B0);
    v69 = 0;
  }

  else
  {
    sub_24E9421D0();
    v69 = sub_24F92ABC8();
    (*(v44 + 8))(v39, v43);
  }

  if ((v37 & 0x100000000) != 0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *&v37;
  }

  v46 = v70;
  v47 = v76;
  sub_24F928398();
  v48 = sub_24F928258();
  v50 = v49;
  v51 = v42;
  v42(v46, v8);
  if (v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = v48;
  }

  v72 = v52;
  v53 = v73;
  v54 = v47;
  sub_24F928398();
  v55 = sub_24F928258();
  v57 = v56;
  v42(v53, v8);
  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55;
  }

  v59 = v71;
  sub_24F928398();
  v60 = sub_24F928348();
  v62 = v61;
  v51(v59, v41);
  v63 = (*(v74 + 168))(v80, &v77, v68, v67, v69, v72, v58, v60, v45, v62);
  v64 = sub_24F9285B8();
  (*(*(v64 - 8) + 8))(v75, v64);
  v51(v54, v41);
  return v63;
}

uint64_t Ratings.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);

  return v1;
}

uint64_t Ratings.status.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);

  return v1;
}

uint64_t sub_24ECE6674()
{
}

uint64_t Ratings.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t Ratings.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Ratings()
{
  result = qword_27F22D990;
  if (!qword_27F22D990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_24ECE6914()
{
  type metadata accessor for AppLaunchMetricsEvent();
  swift_allocObject();
  result = AppLaunchMetricsEvent.init()();
  off_27F22D9A0 = result;
  return result;
}

id sub_24ECE6954()
{
  result = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  qword_27F22D9A8 = result;
  return result;
}

id static PendingAppLaunch.didFailToLaunch()()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v5 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v5[20] = v7;
    *(v5 + 168) = 0;
  }

  return [v4 unlock];
}

id static PendingAppLaunch.didBuildDependencies(_:)()
{
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v1 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    v2 = sub_24F92AB58();
    swift_beginAccess();
    v1[26] = v2;
  }

  return [v0 unlock];
}

id static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F927E38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((byte_27F22D288 & 1) == 0)
  {
    sub_24E74EC40();
    *v9 = sub_24F92BEF8();
    (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
    v12 = sub_24F927E68();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      if (qword_27F210618 == -1)
      {
LABEL_9:
        v13 = qword_27F22D9A8;
        [qword_27F22D9A8 lock];
        sub_24ECE6F54(a2, a3, a1);
        return [v13 unlock];
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_9;
  }

  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v10 = sub_24F92AAE8();
  __swift_project_value_buffer(v10, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  off_27F22D9A0 = 0;
}

void sub_24ECE6F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_24F928698();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v13 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v15 = v14;
    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    v13[22] = v15;
    *(v13 + 184) = 0;
    swift_beginAccess();
    v13[7] = a1;
    v13[8] = a2;

    if (sub_24EA76370())
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      v19[3] = type metadata accessor for AppLaunchMetricsEvent();
      v19[0] = v13;

      sub_24F928438();
      sub_24E857CC8(v19);
      sub_24F92A588();
    }

    AppLaunchMetricsEvent.metricsData.getter(v8);
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v17 = sub_24F929AB8();
    __swift_project_value_buffer(v17, qword_27F22E3B8);
    sub_24F929138();

    (*(v6 + 8))(v8, v5);
    off_27F22D9A0 = 0;
  }
}

__n128 sub_24ECE7324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  if (qword_27F210640 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  *(v0 + 32) = xmmword_24F944DE0;
  *(v0 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 88) = _Q0;
  *(v0 + 104) = xmmword_27F22E220;
  __asm { FMOV            V0.2D, #20.0 }

  *(v0 + 120) = _Q0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  result = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 16);
  *(v0 + 160) = *MEMORY[0x277D768C8];
  *(v0 + 176) = v8;
  qword_27F39C590 = v0;
  return result;
}

__n128 sub_24ECE740C(double a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  *(v6 + 32) = xmmword_24F944DE0;
  *(v6 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v6 + 88) = _Q0;
  *(v6 + 104) = a2;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 128) = a3;
  *(v6 + 152) = 1;
  v12 = MEMORY[0x277D768C8];
  *(v6 + 136) = a1;
  *(v6 + 144) = a1;
  result = *v12;
  v14 = *(v12 + 16);
  *(v6 + 160) = *v12;
  *(v6 + 176) = v14;
  return result;
}

__n128 sub_24ECE74B4(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  if (qword_27F210640 != -1)
  {
    v12 = v2;
    swift_once();
    v2 = v12;
  }

  *(v2 + 32) = xmmword_24F944DE0;
  *(v2 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 88) = _Q0;
  *(v2 + 104) = xmmword_27F22E220;
  __asm { FMOV            V0.2D, #20.0 }

  *(v2 + 120) = _Q0;
  *(v2 + 152) = 1;
  v9 = MEMORY[0x277D768C8];
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  result = *v9;
  v11 = *(v9 + 16);
  *(v2 + 160) = *v9;
  *(v2 + 176) = v11;
  return result;
}

uint64_t sub_24ECE75A0(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_24E8617F0(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_24ECE7F0C(v9, a2, a3);
  *a1 = v6;
  return result;
}

double HorizontalAlignmentLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_24ECEAC9C(*v3, a1, &v5, a2, a3);
  sub_24ECEB94C(&v5);
  return v5.var0;
}

void HorizontalAlignmentLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *v26 = a2;
  *&v26[8] = a3;
  v6 = *v5;
  *&v26[16] = a4;
  *&v26[24] = a5;
  sub_24ECEAC9C(*v5, a1, &v37, a4, a5);
  v31 = 0.0;
  v32 = 0.0;
  v33 = 1;
  v34 = xmmword_24F995DF0;
  v35 = xmmword_24F995DF0;
  v36 = xmmword_24F995DF0;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      *v29 = v8;
      sub_24ECEB97C(v9, &v29[8]);
      if (!*&v29[40])
      {
        break;
      }

      v10 = *v29;
      *v29 = *&v29[8];
      *&v29[16] = *&v29[24];
      *&v29[32] = *&v29[40];
      *&v29[48] = *&v29[56];
      *&v29[64] = *&v29[72];
      *&v29[80] = *&v29[88];
      *&v29[96] = *&v29[104];
      *&v29[112] = *&v29[120];
      *&v29[128] = *&v29[136];
      *&v29[144] = *&v29[152];
      *&v29[160] = *&v29[168];
      *&v29[176] = v30;
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v10 >= *(v38 + 16))
      {
        goto LABEL_38;
      }

      v11 = (v38 + (v10 << 6));
      v13 = v11[6];
      v12 = v11[7];
      v27 = v11[8];
      v28 = v11[9];
      v14 = v11[10];
      v15 = v11[11];
      v16 = v14 + CGRectGetMinX(*v26);
      v17 = v15 + CGRectGetMinY(*v26);
      __swift_project_boxed_opaque_existential_1(&v29[8], *&v29[32]);
      v18 = v13;
      sub_24F92C1D8();
      sub_24F922228();
      HIBYTE(v33) = 1;
      if (v33)
      {
        sub_24EE6A1B8(v16, v17, v13, v12, v13, v12, v27, v28);
      }

      else
      {
        v20 = v31;
        v19 = v32;
        v39.origin.x = v16;
        v39.origin.y = v17;
        v39.size.width = v18;
        v39.size.height = v12;
        if (*(&v34 + 1) < CGRectGetMaxY(v39))
        {
          v40.origin.x = v16;
          v40.origin.y = v17;
          v40.size.width = v18;
          v40.size.height = v12;
          if (CGRectGetMaxY(v40) <= v19)
          {
            v41.origin.x = v16;
            v41.origin.y = v17;
            v41.size.width = v18;
            v41.size.height = v12;
            *(&v34 + 1) = CGRectGetMaxY(v41);
          }
        }

        v42.origin.x = v16;
        v42.origin.y = v17;
        v42.size.width = v18;
        v42.size.height = v12;
        if (*(&v35 + 1) < CGRectGetMaxX(v42))
        {
          v43.origin.x = v16;
          v43.origin.y = v17;
          v43.size.width = v18;
          v43.size.height = v12;
          if (CGRectGetMaxX(v43) <= v20)
          {
            v44.origin.x = v16;
            v44.origin.y = v17;
            v44.size.width = v18;
            v44.size.height = v12;
            *(&v35 + 1) = CGRectGetMaxX(v44);
          }
        }

        v45.origin.x = v16;
        v45.origin.y = v17;
        v45.size.width = v18;
        v45.size.height = v12;
        v21 = v27 + CGRectGetMinY(v45);
        if (v21 > 0.0 && v21 <= v19)
        {
          if (v21 < *&v36)
          {
            *&v36 = v21;
          }

          if (*(&v36 + 1) < v21)
          {
            *(&v36 + 1) = v21;
          }
        }

        v46.origin.x = v16;
        v46.origin.y = v17;
        v46.size.width = v18;
        v46.size.height = v12;
        v23 = CGRectGetMaxY(v46) - v28;
        if (v23 > 0.0 && v23 <= v19)
        {
          if (v23 < *&v36)
          {
            *&v36 = v23;
          }

          if (*(&v36 + 1) < v23)
          {
            *(&v36 + 1) = v23;
          }
        }
      }

      ++v8;
      sub_24ECEB9B4(v29);
      v9 += 184;
    }

    while (v7 != v8);
    v25 = HIBYTE(v33);
    sub_24ECEB94C(&v37);
    if (v25 != 1)
    {
      goto LABEL_35;
    }

    sub_24F922138();
  }

  else
  {
    sub_24ECEB94C(&v37);
LABEL_35:
    sub_24F922168();
  }
}

double sub_24ECE7A54(uint64_t a1, double a2, double a3)
{
  sub_24ECEAC9C(*v3, a1, &v5, a2, a3);
  sub_24ECEB94C(&v5);
  return v5.var0;
}

_BYTE *static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v19 = *a5;
  v12 = *(a5 + 1);
  v13 = *(a5 + 2);
  v21 = *a6;
  v14 = *a7;
  v16 = *(a7 + 1);
  v15 = *(a7 + 2);
  v17 = a7[24];
  *(a8 + 32) = swift_getObjectType();
  *(a8 + 40) = a2;
  *(a8 + 8) = a1;
  sub_24E615E00(a3, a8 + 48);
  sub_24E615E00(a4, a8 + 88);
  *a8 = a1;
  *(a8 + 128) = v19;
  *(a8 + 136) = v12;
  *(a8 + 144) = v13;
  *(a8 + 152) = v14;
  *(a8 + 160) = v16;
  *(a8 + 168) = v15;
  *(a8 + 176) = v17;
  *(a8 + 177) = v21;

  return swift_unknownObjectRetain();
}

uint64_t static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
LABEL_5:
    *a3 = v3;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  v6 = a3;
  sub_24ECEB97C((v4 & 0x7FFFFFFFFFFFFFFFLL) + 16, v9);
  v7 = v10;
  result = sub_24ECEB9B4(v9);
  v5 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    a3 = v6;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t HorizontalAlignmentLayout.ChildSourceOffset.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

GameStoreKit::HorizontalAlignmentLayout::SizingPolicy::Priority_optional __swiftcall HorizontalAlignmentLayout.SizingPolicy.Priority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 3 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24ECE7CF8()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](3 - v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ECE7D78()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](3 - v1);
  return sub_24F92D0B8();
}

uint64_t HorizontalAlignmentLayout.HorizontalGravity.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

__n128 sub_24ECE7EE8()
{
  xmmword_27F22D9B0 = 0uLL;
  result = *MEMORY[0x277D22A78];
  v1 = *(MEMORY[0x277D22A78] + 16);
  xmmword_27F22D9C0 = *MEMORY[0x277D22A78];
  xmmword_27F22D9D0 = v1;
  qword_27F22D9E0 = 0;
  unk_27F22D9E8 = 0;
  return result;
}

uint64_t sub_24ECE7F0C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_24F92CD78();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08);
        v9 = sub_24F92B618();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_24ECE8024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_5:
    v35 = a3;
    v7 = v6;
    v19 = v5;
    while (1)
    {
      sub_24ECEBE24(v5, &v24);
      v8 = v5 - 12;
      sub_24ECEBE24((v5 - 12), v23);
      sub_24ECEBE24(&v24, v20);
      v9 = v22;
      sub_24ECEB9B4(v21);
      sub_24ECEBE24(v23, v20);
      v10 = v22;
      sub_24ECEB9B4(v21);
      sub_24ECEBE94(v23);
      result = sub_24ECEBE94(&v24);
      if (v9 >= v10)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v19 + 12;
        --v6;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v32 = v5[8];
      v33 = v5[9];
      v34[0] = v5[10];
      *(v34 + 10) = *(v5 + 170);
      v28 = v5[4];
      v29 = v5[5];
      v30 = v5[6];
      v31 = v5[7];
      v24 = *v5;
      v25 = v5[1];
      v26 = v5[2];
      v27 = v5[3];
      v11 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v11;
      v12 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v12;
      v13 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v13;
      v14 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v14;
      v15 = *(v5 - 11);
      *v5 = *v8;
      v5[1] = v15;
      v16 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v16;
      *(v5 - 4) = v32;
      *(v5 - 3) = v33;
      *(v5 - 2) = v34[0];
      *(v5 - 22) = *(v34 + 10);
      *(v5 - 8) = v28;
      *(v5 - 7) = v29;
      *(v5 - 6) = v30;
      *(v5 - 5) = v31;
      *v8 = v24;
      *(v5 - 11) = v25;
      *(v5 - 10) = v26;
      *(v5 - 9) = v27;
      v5 -= 12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ECE8228(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_6:
    v37 = a3;
    v7 = v6;
    v21 = v5;
    while (1)
    {
      sub_24ECEBE24(v5, &v26);
      v8 = v5 - 12;
      sub_24ECEBE24((v5 - 12), v25);
      sub_24ECEBE24(&v26, v22);
      v9 = v24;
      sub_24ECEB9B4(v23);
      sub_24ECEBE24(v25, v22);
      v10 = v24;
      sub_24ECEB9B4(v23);
      if (v9)
      {
        if ((v10 & 1) == 0)
        {
          sub_24ECEBE94(v25);
          result = sub_24ECEBE94(&v26);
LABEL_5:
          a3 = v37 + 1;
          v5 = v21 + 12;
          --v6;
          if (v37 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v11 = v25[0] < v26;
      }

      else
      {
        if (v10)
        {
          sub_24ECEBE94(v25);
          result = sub_24ECEBE94(&v26);
          goto LABEL_17;
        }

        v11 = v26 < v25[0];
      }

      v12 = v11;
      sub_24ECEBE94(v25);
      result = sub_24ECEBE94(&v26);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v34 = v5[8];
      v35 = v5[9];
      v36[0] = v5[10];
      *(v36 + 10) = *(v5 + 170);
      v30 = v5[4];
      v31 = v5[5];
      v32 = v5[6];
      v33 = v5[7];
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v13 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v13;
      v14 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v14;
      v15 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v15;
      v16 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v16;
      v17 = *(v5 - 11);
      *v5 = *v8;
      v5[1] = v17;
      v18 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v18;
      *(v5 - 4) = v34;
      *(v5 - 3) = v35;
      *(v5 - 2) = v36[0];
      *(v5 - 22) = *(v36 + 10);
      *(v5 - 8) = v30;
      *(v5 - 7) = v31;
      *(v5 - 6) = v32;
      *(v5 - 5) = v33;
      *v8 = v26;
      *(v5 - 11) = v27;
      *(v5 - 10) = v28;
      *(v5 - 9) = v29;
      v5 -= 12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_24ECE8478(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_6:
    v37 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_24ECEBE24(v5, &v26);
      v7 = v5 - 12;
      sub_24ECEBE24((v5 - 12), v25);
      sub_24ECEBE24(&v26, v22);
      v8 = v24;
      sub_24ECEB9B4(v23);
      sub_24ECEBE24(v25, v22);
      v9 = v24;
      sub_24ECEB9B4(v23);
      if (3 - v9 >= (3 - v8))
      {
        if (v9 != v8)
        {
          sub_24ECEBE94(v25);
          result = sub_24ECEBE94(&v26);
LABEL_5:
          a3 = v37 + 1;
          v5 = v21 + 12;
          v6 = v20 - 1;
          if (v37 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v10 = v26;
        v11 = v25[0];
        sub_24ECEBE94(v25);
        result = sub_24ECEBE94(&v26);
        if (v10 >= v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_24ECEBE94(v25);
        result = sub_24ECEBE94(&v26);
      }

      if (!v4)
      {
        break;
      }

      v34 = v5[8];
      v35 = v5[9];
      v36[0] = v5[10];
      *(v36 + 10) = *(v5 + 170);
      v30 = v5[4];
      v31 = v5[5];
      v32 = v5[6];
      v33 = v5[7];
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v12 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v12;
      v13 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v13;
      v14 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v14;
      v15 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v15;
      v16 = *(v5 - 11);
      *v5 = *v7;
      v5[1] = v16;
      v17 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v17;
      *(v5 - 4) = v34;
      *(v5 - 3) = v35;
      *(v5 - 2) = v36[0];
      *(v5 - 22) = *(v36 + 10);
      *(v5 - 8) = v30;
      *(v5 - 7) = v31;
      *(v5 - 6) = v32;
      *(v5 - 5) = v33;
      *v7 = v26;
      *(v5 - 11) = v27;
      *(v5 - 10) = v28;
      *(v5 - 9) = v29;
      v5 -= 12;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ECE86C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v96 = result;
  v117 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v5 = *v96;
    if (!*v96)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24E86164C(v9);
      v9 = result;
    }

    v86 = v6;
    v116 = v9;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*v117)
      {
        v6 = (v87 - 1);
        v88 = *&v9[16 * v87];
        v89 = *&v9[16 * v87 + 24];
        sub_24ECEA268((*v117 + 192 * v88), (*v117 + 192 * *&v9[16 * v87 + 16]), (*v117 + 192 * v89), v5);
        if (v86)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v87 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v90 = &v9[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        v116 = v9;
        result = sub_24E8615C0(v87 - 1);
        v9 = v116;
        v87 = *(v116 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v11 = *v117;
      sub_24ECEBE24(*v117 + 192 * (v8 + 1), &v105);
      v91 = 192 * v8;
      sub_24ECEBE24(v11 + 192 * v8, v104);
      sub_24ECEBE24(&v105, v101);
      v99 = v103;
      sub_24ECEB9B4(v102);
      sub_24ECEBE24(v104, v101);
      v97 = v103;
      sub_24ECEB9B4(v102);
      sub_24ECEBE94(v104);
      result = sub_24ECEBE94(&v105);
      v94 = v8;
      v12 = v8 + 2;
      v13 = v11 + 192 * v8 + 384;
      while (v7 != v12)
      {
        sub_24ECEBE24(v13, &v105);
        sub_24ECEBE24(v13 - 192, v104);
        sub_24ECEBE24(&v105, v101);
        v14 = v103;
        sub_24ECEB9B4(v102);
        sub_24ECEBE24(v104, v101);
        v5 = v6;
        v15 = v7;
        v16 = v103;
        sub_24ECEB9B4(v102);
        sub_24ECEBE94(v104);
        result = sub_24ECEBE94(&v105);
        v17 = v14 < v16;
        v7 = v15;
        v6 = v5;
        v18 = !v17;
        ++v12;
        v13 += 192;
        if ((((v99 < v97) ^ v18) & 1) == 0)
        {
          v7 = v12 - 1;
          break;
        }
      }

      v10 = v8;
      if (v99 < v97)
      {
        if (v7 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v7)
        {
          v19 = 192 * v7 - 192;
          v20 = v7;
          v21 = v91;
          do
          {
            if (v10 != --v7)
            {
              v23 = *v117;
              if (!*v117)
              {
                goto LABEL_128;
              }

              v22 = (v23 + v19);
              v113 = *&v21[v23 + 128];
              v114 = *&v21[v23 + 144];
              v115[0] = *&v21[v23 + 160];
              *(v115 + 10) = *&v21[v23 + 170];
              v109 = *&v21[v23 + 64];
              v110 = *&v21[v23 + 80];
              v111 = *&v21[v23 + 96];
              v112 = *&v21[v23 + 112];
              v105 = *&v21[v23];
              v106 = *&v21[v23 + 16];
              v107 = *&v21[v23 + 32];
              v108 = *&v21[v23 + 48];
              v5 = v21;
              result = memmove(&v21[v23], (v23 + v19), 0xC0uLL);
              v21 = v5;
              v22[8] = v113;
              v22[9] = v114;
              v22[10] = v115[0];
              *(v22 + 170) = *(v115 + 10);
              v22[4] = v109;
              v22[5] = v110;
              v22[6] = v111;
              v22[7] = v112;
              *v22 = v105;
              v22[1] = v106;
              v22[2] = v107;
              v22[3] = v108;
            }

            ++v10;
            v19 -= 192;
            v21 += 192;
          }

          while (v10 < v7);
          v10 = v94;
          v7 = v20;
        }
      }
    }

    v24 = v117[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_121;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 < v24)
        {
          v24 = v10 + a4;
        }

        if (v24 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v24)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_24E615ED8((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v10;
    *(v28 + 5) = v8;
    v29 = *v96;
    if (!*v96)
    {
      goto LABEL_130;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_109;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_112;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_116;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_111;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_114;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v117)
        {
          goto LABEL_127;
        }

        v69 = *&v9[16 * v68 + 32];
        v5 = *&v9[16 * v30 + 40];
        sub_24ECEA268((*v117 + 192 * v69), (*v117 + 192 * *&v9[16 * v30 + 32]), (*v117 + 192 * v5), v29);
        if (v6)
        {
        }

        if (v5 < v69)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v70 = &v9[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v5;
        v116 = v9;
        result = sub_24E8615C0(v30);
        v9 = v116;
        v27 = *(v116 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_107;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_108;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_110;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_113;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_117;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v117[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v98 = v24;
  v92 = v6;
  v71 = v7;
  v72 = *v117;
  v5 = *v117 + 192 * v71;
  v95 = v10;
  v100 = v71;
  v73 = v10 - v71;
LABEL_83:
  v74 = v73;
  v75 = v5;
  while (1)
  {
    sub_24ECEBE24(v75, &v105);
    v76 = v75 - 12;
    sub_24ECEBE24((v75 - 12), v104);
    sub_24ECEBE24(&v105, v101);
    v77 = v103;
    sub_24ECEB9B4(v102);
    sub_24ECEBE24(v104, v101);
    v78 = v103;
    sub_24ECEB9B4(v102);
    sub_24ECEBE94(v104);
    result = sub_24ECEBE94(&v105);
    if (v77 >= v78)
    {
LABEL_82:
      v5 += 192;
      --v73;
      if (++v100 != v98)
      {
        goto LABEL_83;
      }

      v6 = v92;
      v8 = v98;
      v10 = v95;
      if (v98 < v95)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v72)
    {
      break;
    }

    v113 = v75[8];
    v114 = v75[9];
    v115[0] = v75[10];
    *(v115 + 10) = *(v75 + 170);
    v109 = v75[4];
    v110 = v75[5];
    v111 = v75[6];
    v112 = v75[7];
    v105 = *v75;
    v106 = v75[1];
    v107 = v75[2];
    v108 = v75[3];
    v79 = *(v75 - 3);
    v75[8] = *(v75 - 4);
    v75[9] = v79;
    v80 = *(v75 - 1);
    v75[10] = *(v75 - 2);
    v75[11] = v80;
    v81 = *(v75 - 7);
    v75[4] = *(v75 - 8);
    v75[5] = v81;
    v82 = *(v75 - 5);
    v75[6] = *(v75 - 6);
    v75[7] = v82;
    v83 = *(v75 - 11);
    *v75 = *v76;
    v75[1] = v83;
    v84 = *(v75 - 9);
    v75[2] = *(v75 - 10);
    v75[3] = v84;
    *(v75 - 4) = v113;
    *(v75 - 3) = v114;
    *(v75 - 2) = v115[0];
    *(v75 - 22) = *(v115 + 10);
    *(v75 - 8) = v109;
    *(v75 - 7) = v110;
    *(v75 - 6) = v111;
    *(v75 - 5) = v112;
    *v76 = v105;
    *(v75 - 11) = v106;
    *(v75 - 10) = v107;
    *(v75 - 9) = v108;
    v75 -= 12;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}