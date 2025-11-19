uint64_t sub_24EB14850()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EB14940(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F92A498() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24EB141D0(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

BOOL Color.isDark.getter()
{
  sub_24E77ACC8();

  v0 = sub_24F92C3B8();
  [v0 _luminance];
  v2 = v1;

  return v2 < 0.5;
}

BOOL Color.isDark(threshold:)(double a1)
{
  sub_24E77ACC8();

  v2 = sub_24F92C3B8();
  [v2 _luminance];
  v4 = v3;

  return v4 < a1;
}

uint64_t sub_24EB14B6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24EB14C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  v19[10] = a3;
  v19[11] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2289C0);
  v19[12] = a4;
  v19[13] = sub_24EB15848();
  sub_24F925178();
  sub_24F926DC8();
  v19[9] = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_24F927018();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_24F924998();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a1;
  v19[7] = a2;
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_24E7896B8(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_24EB14E34@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a1;
  v21 = a4;
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2289C0);
  v7 = sub_24EB15848();
  v23 = a2;
  v24 = v6;
  v25 = a3;
  v26 = v7;
  sub_24F925178();
  v8 = sub_24F926DC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v20(v13);
  sub_24F926DA8();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  sub_24E7896B8(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_24E7896B8(v15, v8, v16);
  return (v17)(v15, v8);
}

uint64_t sub_24EB1507C(uint64_t a1)
{
  v2 = sub_24F924B48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_24EB1593C();
  sub_24F92BB88();
  result = sub_24F92BC08();
  if (v9 < v8[1])
  {
    __break(1u);
  }

  else
  {
    v8[2] = v9;
    swift_getKeyPath();
    (*(v3 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    (*(v3 + 32))(v7 + v6, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2289D8);
    sub_24E62A6CC();
    sub_24EB158CC();
    return sub_24F927228();
  }

  return result;
}

uint64_t sub_24EB15268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217718);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v10 = sub_24F927308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2289E8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v53 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = *a1;
  sub_24F924B58();
  sub_24F927628();
  sub_24F9242E8();
  (*(v11 + 32))(v19, v13, v10);
  v24 = &v19[*(v15 + 44)];
  v25 = v63;
  *(v24 + 4) = v62;
  *(v24 + 5) = v25;
  *(v24 + 6) = v64;
  v26 = v59;
  *v24 = v58;
  *(v24 + 1) = v26;
  v27 = v61;
  *(v24 + 2) = v60;
  *(v24 + 3) = v27;
  sub_24E6009C8(v19, v22, &qword_27F2289E8);
  sub_24F924B48();
  sub_24EB1593C();
  sub_24F92BB88();
  sub_24F92BC08();
  result = sub_24F92BBF8();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v23 >= result - 1)
    {
      v48 = 1;
      v42 = v55;
    }

    else
    {
      sub_24F9271E8();
      v29 = sub_24F9251C8();
      *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)] = v29;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598) + 36);
      v31 = *MEMORY[0x277CE13B8];
      v32 = sub_24F927748();
      (*(*(v32 - 8) + 104))(&v4[v30], v31, v32);
      LOBYTE(v31) = sub_24F9257F8();
      sub_24F923318();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217788) + 36)];
      *v41 = v31;
      *(v41 + 1) = v34;
      *(v41 + 2) = v36;
      *(v41 + 3) = v38;
      *(v41 + 4) = v40;
      v41[40] = 0;
      LOBYTE(v31) = sub_24F925868();
      sub_24F923318();
      v42 = v55;
      v43 = &v4[*(v55 + 36)];
      *v43 = v31;
      *(v43 + 1) = v44;
      *(v43 + 2) = v45;
      *(v43 + 3) = v46;
      *(v43 + 4) = v47;
      v43[40] = 0;
      sub_24E6009C8(v4, v9, &qword_27F217710);
      v48 = 0;
    }

    (*(v54 + 56))(v9, v48, 1, v42);
    v49 = v53;
    sub_24E60169C(v22, v53, &qword_27F2289E8);
    v50 = v56;
    sub_24E60169C(v9, v56, &qword_27F217718);
    v51 = v57;
    sub_24E60169C(v49, v57, &qword_27F2289E8);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2289F0);
    sub_24E60169C(v50, v51 + *(v52 + 48), &qword_27F217718);
    sub_24E601704(v9, &qword_27F217718);
    sub_24E601704(v22, &qword_27F2289E8);
    sub_24E601704(v50, &qword_27F217718);
    return sub_24E601704(v49, &qword_27F2289E8);
  }

  return result;
}

unint64_t sub_24EB15848()
{
  result = qword_27F2289C8;
  if (!qword_27F2289C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2289C0);
    sub_24EB158CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2289C8);
  }

  return result;
}

unint64_t sub_24EB158CC()
{
  result = qword_27F2289D0;
  if (!qword_27F2289D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2289D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2289D0);
  }

  return result;
}

unint64_t sub_24EB1593C()
{
  result = qword_27F2289E0;
  if (!qword_27F2289E0)
  {
    sub_24F924B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2289E0);
  }

  return result;
}

uint64_t sub_24EB15994()
{
  v1 = sub_24F924B48();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EB15A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F924B48();

  return sub_24EB15268(a1, a2);
}

uint64_t sub_24EB15A9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2289C0);
  sub_24EB15848();
  sub_24F925178();
  sub_24F926DC8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927018();
  return swift_getWitnessTable();
}

uint64_t OfferItem.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_badge);

  return v1;
}

uint64_t OfferItem.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_subtitle);

  return v1;
}

uint64_t OfferItem.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_description);

  return v1;
}

uint64_t OfferItem.formattedEndDateString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_formattedEndDateString);

  return v1;
}

uint64_t OfferItem.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit9OfferItem_endDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfferItem.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_offerLockup);
  *(v1 + 56) = type metadata accessor for Lockup();
  *(v1 + 64) = sub_24EB17BC4(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t OfferItem.__allocating_init(id:moduleArtwork:moduleVideo:iapArtwork:mediaOverlayStyle:title:subtitle:description:formattedEndDateString:badge:offerLockup:supportsStreamlinedBuy:endDate:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v52 = a8;
  v53 = a1;
  v56 = a18;
  v55 = a16;
  v54 = a15;
  v50 = a7;
  v51 = a14;
  v48 = a17;
  v49 = a13;
  v47 = a12;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v26 = *a5;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_moduleArtwork) = a2;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_moduleVideo) = a3;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_iapArtwork) = a4;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_mediaOverlayStyle) = v26;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_title) = a6;
  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_subtitle);
  v28 = v52;
  *v27 = v50;
  v27[1] = v28;
  v29 = (v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_description);
  *v29 = a9;
  v29[1] = a10;
  v30 = (v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_formattedEndDateString);
  *v30 = a11;
  v30[1] = v47;
  v31 = (v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_badge);
  v32 = v48;
  v33 = v51;
  *v31 = v49;
  v31[1] = v33;
  v34 = v53;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_offerLockup) = v54;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_supportsStreamlinedBuy) = v55;
  v35 = OBJC_IVAR____TtC12GameStoreKit9OfferItem_endDate;
  v36 = sub_24F91F648();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v25 + v35, v32, v36);
  sub_24E60169C(v34, v62, &qword_27F235830);
  sub_24E60169C(a19, v25 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v62, &v59, &qword_27F235830);
  if (*(&v60 + 1))
  {
    v38 = v60;
    *(v25 + 24) = v59;
    *(v25 + 40) = v38;
    *(v25 + 56) = v61;
  }

  else
  {
    v39 = v44;
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v45 + 8))(v39, v46);
    v57 = v40;
    v58 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v59, &qword_27F235830);
  }

  sub_24E601704(a19, &qword_27F213E68);
  (*(v37 + 8))(v32, v36);
  sub_24E601704(v34, &qword_27F235830);
  sub_24E601704(v62, &qword_27F235830);
  *(v25 + 16) = 2;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v56;
  return v25;
}

uint64_t OfferItem.init(id:moduleArtwork:moduleVideo:iapArtwork:mediaOverlayStyle:title:subtitle:description:formattedEndDateString:badge:offerLockup:supportsStreamlinedBuy:endDate:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v55 = a8;
  v53 = a7;
  v51 = a6;
  v56 = a1;
  v59 = a18;
  v58 = a16;
  v57 = a15;
  v54 = a14;
  v52 = a13;
  v50 = a12;
  v49 = a11;
  v48 = sub_24F91F6B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v47 - v28;
  LOBYTE(v28) = *a5;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_moduleArtwork) = a2;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_moduleVideo) = a3;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_iapArtwork) = a4;
  v30 = v29;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_mediaOverlayStyle) = v28;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_title) = v51;
  v31 = (v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_subtitle);
  v32 = v55;
  *v31 = v53;
  v31[1] = v32;
  v33 = (v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_description);
  *v33 = a9;
  v33[1] = a10;
  v34 = (v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_formattedEndDateString);
  v35 = v56;
  v36 = v50;
  *v34 = v49;
  v34[1] = v36;
  v37 = (v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_badge);
  v38 = v54;
  *v37 = v52;
  v37[1] = v38;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_offerLockup) = v57;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_supportsStreamlinedBuy) = v58;
  v39 = OBJC_IVAR____TtC12GameStoreKit9OfferItem_endDate;
  v40 = sub_24F91F648();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v20 + v39, a17, v40);
  sub_24E60169C(v35, v68, &qword_27F235830);
  sub_24E60169C(a19, v30, &qword_27F213E68);
  sub_24E60169C(v68, &v62, &qword_27F235830);
  if (*(&v63 + 1))
  {
    v65 = v62;
    v66 = v63;
    v67 = v64;
  }

  else
  {
    sub_24F91F6A8();
    v42 = sub_24F91F668();
    v44 = v43;
    (*(v47 + 8))(v26, v48);
    v60 = v42;
    v61 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v62, &qword_27F235830);
  }

  sub_24E601704(a19, &qword_27F213E68);
  (*(v41 + 8))(a17, v40);
  sub_24E601704(v35, &qword_27F235830);
  sub_24E601704(v68, &qword_27F235830);
  v45 = v66;
  *(v20 + 24) = v65;
  *(v20 + 40) = v45;
  *(v20 + 56) = v67;
  *(v20 + 16) = 2;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v59;
  sub_24E65E0D4(v30, v20 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
  return v20;
}

uint64_t OfferItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v134 = a2;
  v130 = v3;
  v129 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v120 = &v101 - v6;
  v7 = sub_24F91F648();
  v122 = *(v7 - 8);
  v123 = v7;
  MEMORY[0x28223BE20](v7);
  v121 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_24F9285B8();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v118 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v101 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v101 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v117 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v119 = &v101 - v19;
  MEMORY[0x28223BE20](v20);
  v124 = &v101 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v101 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v101 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v101 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v101 - v31;
  v33 = a1;
  sub_24F928398();
  v115 = sub_24F928348();
  v116 = v16;
  v35 = v34;
  v38 = *(v16 + 8);
  v36 = v16 + 8;
  v37 = v38;
  v38(v32, v15);
  v131 = v36;
  v132 = v15;
  if (v35)
  {
    v127 = v35;
    sub_24F928398();
    v111 = sub_24F928348();
    v40 = v39;
    v37(v29, v15);
    if (v40)
    {
      v113 = v40;
      v36 = 0x636F4C726566666FLL;
      sub_24F928398();
      v41 = sub_24F928278();
      v114 = v37;
      v37(v26, v15);
      v42 = v133 + 16;
      v105 = v41;
      if (v41)
      {
        type metadata accessor for InAppPurchaseLockup();
        v43 = v33;
        sub_24F928398();
        v44 = *v42;
        v45 = v135;
        (*v42)(v14, v134, v135);
        v46 = &qword_27F228A00;
        v47 = type metadata accessor for InAppPurchaseLockup;
      }

      else
      {
        type metadata accessor for Lockup();
        v43 = v33;
        sub_24F928398();
        v44 = *v42;
        v45 = v135;
        (*v42)(v14, v134, v135);
        v46 = &qword_27F221FB8;
        v47 = type metadata accessor for Lockup;
      }

      sub_24EB17BC4(v46, v47);
      sub_24F929548();
      if (v136)
      {
        v110 = v44;
        v108 = v136;

        v54 = type metadata accessor for Artwork();
        sub_24F928398();
        v55 = v134;
        v56 = v110;
        v110(v14, v134, v135);
        v57 = v42 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v58 = v43;
        v107 = sub_24EB17BC4(&qword_27F219660, type metadata accessor for Artwork);
        v106 = v54;
        sub_24F929548();
        v112 = v136;
        type metadata accessor for Video();
        sub_24F928398();
        v59 = v135;
        v56(v14, v55, v135);
        sub_24EB17BC4(&qword_27F221590, type metadata accessor for Video);
        sub_24F929548();
        v60 = v136;
        v109 = v58;
        sub_24F928398();
        v61 = v55;
        v62 = v55;
        v45 = v59;
        v104 = v57;
        v56(v14, v62, v59);
        sub_24F929548();
        v63 = v136;
        if (!v112 && !v60 && !v136)
        {

          v36 = sub_24F92AC38();
          sub_24EB17BC4(&qword_27F2213B8, MEMORY[0x277D22548]);
          swift_allocError();
          v64 = MEMORY[0x277D84F90];
          *v65 = *v130;
          v65[1] = v64;
          (*(*(v36 - 8) + 104))(v65, *MEMORY[0x277D22538], v36);
          swift_willThrow();

          v43 = v109;
          v53 = v61;
LABEL_18:
          v37 = v114;
          goto LABEL_19;
        }

        v107 = v60;
        v68 = v124;
        v43 = v109;
        sub_24F928398();
        v36 = v125;
        v110(v125, v61, v45);
        v69 = v126;
        v70 = sub_24F0151C0(v68, v36);
        if (v69)
        {

          v53 = v61;
          goto LABEL_18;
        }

        v126 = v70;
        v106 = v63;
        v72 = v128;
        sub_24F928398();
        sub_24EA303C8();
        sub_24F928208();
        v73 = v132;
        v74 = v114;
        v114(v72, v132);
        v103 = v136;
        sub_24F928398();
        v124 = sub_24F928348();
        v125 = v75;
        v74(v72, v73);
        sub_24F928398();
        v102 = sub_24F928348();
        v77 = v76;
        v74(v72, v73);
        v78 = v119;
        sub_24F928398();
        v79 = v120;
        sub_24F928288();
        v80 = v79;
        v74(v78, v73);
        v81 = v122;
        v82 = v123;
        if ((*(v122 + 48))(v79, 1, v123) != 1)
        {
          v85 = *(v81 + 32);
          v86 = v81;
          v87 = v121;
          v85(v121, v80, v82);
          v88 = v130;
          *(v130 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_moduleArtwork) = v112;
          *(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_moduleVideo) = v107;
          *(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_iapArtwork) = v106;
          *(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_mediaOverlayStyle) = v103;
          *(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_title) = v126;
          v89 = (v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_subtitle);
          *v89 = v102;
          v89[1] = v77;
          v90 = (v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_description);
          v91 = v113;
          *v90 = v111;
          v90[1] = v91;
          v92 = (v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_formattedEndDateString);
          v93 = v125;
          *v92 = v124;
          v92[1] = v93;
          v94 = (v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_badge);
          v95 = v127;
          *v94 = v115;
          v94[1] = v95;
          *(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_offerLockup) = v108;
          *(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_supportsStreamlinedBuy) = v105 & 1;
          (*(v86 + 16))(v88 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_endDate, v87, v82);
          v96 = v117;
          v97 = v109;
          (*(v116 + 16))(v117, v109, v132);
          v98 = v118;
          v110(v118, v134, v45);

          v99 = AppPromotion.init(deserializing:using:)(v96, v98);
          v100 = v122;
          v36 = v99;

          (*(v133 + 8))(v134, v45);
          v114(v97, v132);
          (*(v100 + 8))(v121, v123);
          return v36;
        }

        sub_24E601704(v79, &unk_27F22EC30);
        v36 = sub_24F92AC38();
        sub_24EB17BC4(&qword_27F2213B8, MEMORY[0x277D22548]);
        swift_allocError();
        *v83 = 0x65746144646E65;
        v84 = v129;
        v83[1] = 0xE700000000000000;
        v83[2] = v84;
        (*(*(v36 - 8) + 104))(v83, *MEMORY[0x277D22530], v36);
        swift_willThrow();

        v43 = v109;
      }

      else
      {

        v66 = sub_24F92AC38();
        sub_24EB17BC4(&qword_27F2213B8, MEMORY[0x277D22548]);
        swift_allocError();
        *v67 = 0x636F4C726566666FLL;
        v67[1] = 0xEB0000000070756BLL;
        v67[2] = v129;
        (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
        swift_willThrow();
      }

      v53 = v134;
      goto LABEL_18;
    }

    v48 = sub_24F92AC38();
    sub_24EB17BC4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v50 = v49;
    *v49 = 0x7470697263736564;
    v51 = 0xEB000000006E6F69;
  }

  else
  {
    v48 = sub_24F92AC38();
    sub_24EB17BC4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v50 = v49;
    *v49 = 0x6567646162;
    v51 = 0xE500000000000000;
  }

  v52 = v129;
  v49[1] = v51;
  v49[2] = v52;
  (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D22530], v48);
  swift_willThrow();
  v43 = v33;
  v53 = v134;
  v45 = v135;
LABEL_19:
  (*(v133 + 8))(v53, v45);
  v37(v43, v132);
  swift_deallocPartialClassInstance();
  return v36;
}

uint64_t sub_24EB1781C()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit9OfferItem_endDate;
  v2 = sub_24F91F648();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t OfferItem.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);

  v1 = OBJC_IVAR____TtC12GameStoreKit9OfferItem_endDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OfferItem.__deallocating_deinit()
{
  OfferItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EB17ABC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9OfferItem_offerLockup);
  *(v2 + 56) = type metadata accessor for Lockup();
  *(v2 + 64) = sub_24EB17BC4(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_24EB17B6C(uint64_t a1)
{
  result = sub_24EB17BC4(&qword_27F228A08, type metadata accessor for OfferItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EB17BC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for OfferItem()
{
  result = qword_27F228A10;
  if (!qword_27F228A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB17C60()
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

uint64_t sub_24EB17DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  v46 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = *(v0 + 16);
  v13 = *(v12 + 240);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v12 + 232);
  if (!v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = *(v0 + 24);
  v43 = v14;
  v44 = v16;
  v41 = v4;
  type metadata accessor for OfferButtonViewModel();
  v17 = swift_allocObject();
  v42 = v1;
  v18 = v17;
  v19 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v49) = 0;
  v45 = v15;

  sub_24F923058();
  (*(v9 + 32))(v18 + v19, v11, v8);
  v20 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8);
  sub_24F923058();
  v21 = v41;
  (*(v5 + 32))(v18 + v20, v7, v41);
  v22 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v49 = xmmword_24F943570;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0);
  sub_24F923058();
  (*(v46 + 32))(v18 + v22, v3, v42);
  v23 = v18 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = (v18 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v24 = 0xD000000000000015;
  v24[1] = 0x800000024FA3FE10;
  v25 = (v18 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v25 = 0;
  v25[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = 4;
  v26 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v44;
  v27 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v28 = *(v5 + 8);
  v29 = v43;

  v28(v18 + v27, v21);
  v30 = v45;
  v56 = v29;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v49 = xmmword_24F943590;
  v50 = 0;
  v51 = 0;
  v52 = 4;
  v54 = 0;
  v53 = 0;
  v55 = 0;
  sub_24F923058();
  swift_endAccess();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v30;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928FD8();

  sub_24F92A758();

  v31 = v49;
  v32 = v29;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v35 = v26;
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v33;
    *(v36 + 32) = v30;
    *(v36 + 40) = v32;
    *(v36 + 48) = 0;
    *(v36 + 60) = 0;
    *(v36 + 56) = 3;
    *(v36 + 62) = 16843009;
    *(v36 + 66) = 257;
    v37 = *&v31[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v37 lock];
    sub_24F213714(v18, sub_24E690EC8, v36, v31);
    [v37 unlock];

    v26 = v35;
  }

  v38 = &v31[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v38) = (v38[8] & 0xC0) == 128;
  WORD2(v56) = 0;
  LODWORD(v56) = 3;
  v48 = 257;
  v47 = 16843009;
  v39 = *(v18 + v26);

  sub_24EEFB79C(v38, v30, v32, 0, &v56, &v47, v39);

  return v18;
}

uint64_t sub_24EB18430()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PosterLockupViewModel()
{
  result = qword_27F228A20;
  if (!qword_27F228A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB18504()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EB1853C()
{

  return swift_deallocObject();
}

uint64_t sub_24EB185AC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24EB19324(v6);
  return sub_24F92C958();
}

void sub_24EB18628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  if (a2)
  {

    v11 = sub_24F45D828(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() proxyForLocalPlayer];
  v13 = [v12 gameStatServicePrivate];

  v14 = sub_24F92B098();
  if (v11)
  {
    v15 = sub_24F92BA98();
  }

  else
  {
    v15 = 0;
  }

  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v9, v6);
  aBlock[4] = sub_24EB1B60C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA60B8;
  aBlock[3] = &block_descriptor_51;
  v18 = _Block_copy(aBlock);

  [v13 getGamesFriendsPlayed:0 type:v14 fetchOptions:1 withinSecs:a3 matchingBundleIDs:v15 handler:v18];
  swift_unknownObjectRelease();

  _Block_release(v18);
}

uint64_t sub_24EB188B0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = type metadata accessor for PlayActivity();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_24F91F648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  if (a2)
  {
    v62 = a2;
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A38);
    return sub_24F92B788();
  }

  v53 = v5;
  v59 = v47 - v16;
  v55 = v17;
  v20 = v15;

  v62 = sub_24EC4E0E0(v21);
  sub_24EB185AC(&v62);
  isUniquelyReferenced_nonNull_native = v62;
  if (v62 < 0 || (v62 & 0x4000000000000000) != 0)
  {
LABEL_37:
    v54 = sub_24F92C738();
    if (v54)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v54 = *(v62 + 16);
    if (v54)
    {
LABEL_6:
      v56 = v20;
      v57 = v11;
      v58 = v8;
      v47[1] = a3;
      a3 = 0;
      v60 = 0;
      v61 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v52 = (v13 + 4);
      v50 = v6;
      v51 = (v13 + 2);
      v23 = MEMORY[0x277D84F98];
      v48 = (v13 + 1);
      v49 = isUniquelyReferenced_nonNull_native;
      v20 = v54;
      v24 = v55;
      while (1)
      {
        if (v61)
        {
          v25 = MEMORY[0x253052270](a3, isUniquelyReferenced_nonNull_native);
          v26 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (a3 >= *(isUniquelyReferenced_nonNull_native + 16))
          {
            goto LABEL_36;
          }

          v25 = *(isUniquelyReferenced_nonNull_native + 8 * a3 + 32);
          v26 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v6 = v25;
        v27 = [v6 lastPlayedGame];
        if (v27)
        {
          v28 = v27;
          v11 = [v27 bundleIdentifier];

          v8 = sub_24F92B0D8();
          v13 = v29;

          v30 = [v6 lastPlayedDate];
          if (v30)
          {
            v31 = v30;
            sub_24F91F608();

            v32 = v59;
            v33 = v56;
            (*v52)(v59, v24, v56);
            v34 = v57;
            sub_24F3FAC70(v6, 0, 0, v57);
            v11 = v58;
            sub_24E70D960(v34, v58);
            (*v51)(v11 + *(v53 + 20), v32, v33);
            sub_24E824448(v60);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62 = v23;
            v20 = sub_24E76D644(v8, v13);
            v36 = v23[2];
            v37 = (v35 & 1) == 0;
            v38 = v36 + v37;
            if (__OFADD__(v36, v37))
            {
              goto LABEL_35;
            }

            v39 = v35;
            if (v23[3] >= v38)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v23 = v62;
                if ((v35 & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                sub_24E8B1F10();
                v23 = v62;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
              sub_24E8A0A54(v38, isUniquelyReferenced_nonNull_native);
              v40 = sub_24E76D644(v8, v13);
              if ((v39 & 1) != (v41 & 1))
              {
                sub_24F92CF88();
                __break(1u);

                __break(1u);
                return result;
              }

              v20 = v40;
              v23 = v62;
              if ((v39 & 1) == 0)
              {
LABEL_27:
                sub_24EC275F0(v20, v8, v13, MEMORY[0x277D84F90], v23);
                goto LABEL_28;
              }
            }

LABEL_28:
            v11 = v23[7];
            v13 = v11[v20];
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v11[v20] = v13;
            if ((v42 & 1) == 0)
            {
              v13 = sub_24E6186D4(0, v13[2] + 1, 1, v13);
              v11[v20] = v13;
            }

            v44 = v13[2];
            v43 = v13[3];
            v8 = (v44 + 1);
            if (v44 >= v43 >> 1)
            {
              v11[v20] = sub_24E6186D4(v43 > 1, v44 + 1, 1, v13);
            }

            sub_24E71BF38(v57);
            (*v48)(v59, v56);
            v45 = v11[v20];
            *(v45 + 16) = v8;
            sub_24EB1B6B0(v58, v45 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v50[9] * v44);
            v60 = sub_24E95DAD0;
            v20 = v54;
            v24 = v55;
            isUniquelyReferenced_nonNull_native = v49;
            goto LABEL_9;
          }
        }

LABEL_9:
        ++a3;
        if (v26 == v20)
        {

          v46 = v60;
          goto LABEL_39;
        }
      }
    }
  }

  v46 = 0;
  v23 = MEMORY[0x277D84F98];
LABEL_39:
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A38);
  sub_24F92B798();
  return sub_24E824448(v46);
}

uint64_t sub_24EB18EAC(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v35 - v18;
  v20 = *a2;
  v21 = &selRef_systemBackgroundColor;
  v22 = [*a1 lastPlayedDate];
  v37 = v19;
  if (v22)
  {
    v23 = v22;
    sub_24F91F608();

    v24 = *(v10 + 32);
    v24(v8, v15, v9);
    v36 = *(v10 + 56);
    v36(v8, 0, 1, v9);
    v24(v19, v8, v9);
    v21 = &selRef_systemBackgroundColor;
  }

  else
  {
    v36 = *(v10 + 56);
    v36(v8, 1, 1, v9);
    sub_24F91F618();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E728998(v8);
    }
  }

  v25 = [v20 v21[76]];
  if (v25)
  {
    v26 = v25;
    sub_24F91F608();

    v27 = *(v10 + 32);
    v28 = v38;
    v27(v38, v15, v9);
    v36(v28, 0, 1, v9);
    v27(v12, v28, v9);
    v29 = v37;
  }

  else
  {
    v30 = v38;
    v36(v38, 1, 1, v9);
    sub_24F91F618();
    v31 = (*(v10 + 48))(v30, 1, v9);
    v29 = v37;
    if (v31 != 1)
    {
      sub_24E728998(v30);
    }
  }

  v32 = sub_24F91F588();
  v33 = *(v10 + 8);
  v33(v12, v9);
  v33(v29, v9);
  return v32 & 1;
}

uint64_t sub_24EB1926C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24EB1AF28)(v5, a3);
}

void sub_24EB19324(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E960F78();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24EB198A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EB19428(0, v2, 1, a1);
  }
}

void sub_24EB19428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = sub_24F91F648();
  MEMORY[0x28223BE20](v13);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v56 = (v18 + 32);
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 lastPlayedDate];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        sub_24F91F608();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_24E728998(v12);
        }
      }

      v32 = [v61 lastPlayedDate];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        sub_24F91F608();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_24E728998(v55);
        }
      }

      v41 = v60;
      v42 = sub_24F91F588();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EB198A0(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v140 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v165 = &v140 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = &v140 - v20;
  MEMORY[0x28223BE20](v21);
  v163 = &v140 - v22;
  MEMORY[0x28223BE20](v23);
  v152 = a3;
  v153 = &v140 - v26;
  if (*(a3 + 8) < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v135 = a4;
LABEL_109:
    v169 = v135;
    a4 = *(v135 + 2);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v136 = *&v135[16 * a4];
        v137 = v135;
        v138 = *&v135[16 * a4 + 24];
        sub_24EB1A5E4((*v152 + 8 * v136), (*v152 + 8 * *&v135[16 * a4 + 16]), (*v152 + 8 * v138), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v138 < v136)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_24E86164C(v137);
        }

        if (a4 - 2 >= *(v137 + 2))
        {
          goto LABEL_135;
        }

        v139 = &v137[16 * a4];
        *v139 = v136;
        *(v139 + 1) = v138;
        v169 = v137;
        sub_24E8615C0(a4 - 1);
        v135 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v27 = *(a3 + 8);
  v141 = a4;
  v28 = 0;
  v162 = (v24 + 32);
  v166 = (v24 + 56);
  v155 = (v24 + 48);
  v160 = (v24 + 8);
  v29 = MEMORY[0x277D84F90];
  v156 = v16;
  v157 = v25;
  while (1)
  {
    v30 = v28;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v154 = v27;
      v143 = v29;
      a4 = *v152;
      v31 = *(*v152 + 8 * (v28 + 1));
      v167 = *(*v152 + 8 * v28);
      v32 = v167;
      v168 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_24EB18EAC(&v168, &v167);
      if (v5)
      {

        return;
      }

      v34 = v28 + 2;
      v142 = v28;
      v147 = 8 * v28;
      v35 = (a4 + 8 * v28 + 16);
      v150 = 0;
      while (1)
      {
        v43 = v154;
        if (v154 == v34)
        {
          break;
        }

        v44 = *(v35 - 1);
        v45 = *v35;
        v46 = v44;
        v164 = v45;
        v47 = [v45 lastPlayedDate];
        if (v47)
        {
          v48 = v47;
          v49 = v163;
          sub_24F91F608();

          v50 = *v162;
          v51 = v149;
          (*v162)(v149, v49, v16);
          v52 = *v166;
          (*v166)(v51, 0, 1, v16);
          (v50)(v153, v51, v16);
        }

        else
        {
          v52 = *v166;
          v53 = v149;
          (*v166)(v149, 1, 1, v16);
          sub_24F91F618();
          if ((*v155)(v53, 1, v16) != 1)
          {
            sub_24E728998(v53);
          }
        }

        v54 = [v46 lastPlayedDate];
        if (v54)
        {
          v36 = v163;
          v37 = v54;
          sub_24F91F608();

          v38 = *v162;
          v39 = v151;
          (*v162)(v151, v36, v16);
          v52(v39, 0, 1, v16);
          v40 = v148;
          (v38)(v148, v39, v16);
        }

        else
        {
          v55 = v151;
          v52(v151, 1, 1, v16);
          v40 = v148;
          sub_24F91F618();
          if ((*v155)(v55, 1, v16) != 1)
          {
            sub_24E728998(v151);
          }
        }

        v41 = v153;
        a4 = sub_24F91F588();
        a3 = v160;
        v42 = *v160;
        (*v160)(v40, v16);
        v42(v41, v16);

        ++v34;
        ++v35;
        v5 = v150;
        if ((v159 ^ a4))
        {
          v43 = v34 - 1;
          break;
        }
      }

      v29 = v143;
      v30 = v142;
      v56 = v147;
      if (v159)
      {
        if (v43 < v142)
        {
          goto LABEL_140;
        }

        if (v142 < v43)
        {
          v57 = 8 * v43 - 8;
          v58 = v43;
          v59 = v142;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v152;
              if (!*v152)
              {
                goto LABEL_144;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v152[1];
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v30))
      {
        goto LABEL_137;
      }

      if (v43 - v30 < v141)
      {
        if (__OFADD__(v30, v141))
        {
          goto LABEL_138;
        }

        if (v30 + v141 < v62)
        {
          v62 = v30 + v141;
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v135 = sub_24E86164C(a4);
          goto LABEL_109;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v28 = v43;
    if (v43 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v63 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v63;
    }

    else
    {
      v29 = sub_24E615ED8(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v29 + 2);
    v64 = *(v29 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v29 = sub_24E615ED8((v64 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v65;
    v66 = &v29[16 * a3];
    *(v66 + 4) = v30;
    *(v66 + 5) = v28;
    v67 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v29 + 4);
          v69 = *(v29 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_125;
          }

          v84 = &v29[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_128;
          }

          v90 = &v29[16 * a3 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_132;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a3 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v29[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_127;
        }

        v97 = &v29[16 * a3];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v65)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v152)
        {
          goto LABEL_143;
        }

        v105 = v29;
        v106 = *&v29[16 * a4 + 32];
        v107 = *&v29[16 * a3 + 40];
        sub_24EB1A5E4((*v152 + 8 * v106), (*v152 + 8 * *&v29[16 * a3 + 32]), (*v152 + 8 * v107), v67);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_24E86164C(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v105[16 * a4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v169 = v105;
        a4 = &v169;
        sub_24E8615C0(a3);
        v29 = v169;
        v65 = *(v169 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v29[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_123;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_124;
      }

      v79 = &v29[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_126;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_129;
      }

      if (v83 >= v75)
      {
        v101 = &v29[16 * a3 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v104)
        {
          a3 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v27 = v152[1];
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v145 = v62;
  v143 = v29;
  v150 = v5;
  v159 = *v152;
  v109 = v159 + 8 * v43 - 8;
  v142 = v30;
  v110 = v30 - v43;
LABEL_87:
  v154 = v43;
  v111 = *(v159 + 8 * v43);
  v146 = v110;
  v147 = v109;
  while (1)
  {
    v112 = *v109;
    v113 = v111;
    v114 = v112;
    v164 = v113;
    v115 = [v113 lastPlayedDate];
    if (v115)
    {
      v116 = v163;
      v117 = v115;
      sub_24F91F608();

      v118 = *v162;
      v119 = v158;
      (*v162)(v158, v116, v16);
      v120 = *v166;
      (*v166)(v119, 0, 1, v16);
      (v118)(v165, v119, v16);
    }

    else
    {
      v120 = *v166;
      v121 = v158;
      (*v166)(v158, 1, 1, v16);
      sub_24F91F618();
      if ((*v155)(v121, 1, v16) != 1)
      {
        sub_24E728998(v121);
      }
    }

    v122 = [v114 lastPlayedDate];
    if (v122)
    {
      v123 = v163;
      v124 = v122;
      sub_24F91F608();

      v125 = v161;
      v126 = *v162;
      v127 = v123;
      v128 = v156;
      (*v162)(v161, v127, v156);
      v120(v125, 0, 1, v128);
      v129 = v157;
      v126();
      v16 = v128;
    }

    else
    {
      v130 = v161;
      v16 = v156;
      v120(v161, 1, 1, v156);
      v129 = v157;
      sub_24F91F618();
      if ((*v155)(v130, 1, v16) != 1)
      {
        sub_24E728998(v161);
      }
    }

    v131 = v165;
    a4 = sub_24F91F588();
    a3 = v160;
    v132 = *v160;
    (*v160)(v129, v16);
    v132(v131, v16);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v43 = v154 + 1;
      v109 = v147 + 8;
      v110 = v146 - 1;
      if (v154 + 1 != v145)
      {
        goto LABEL_87;
      }

      v5 = v150;
      v29 = v143;
      v30 = v142;
      v28 = v145;
      if (v145 < v142)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v159)
    {
      break;
    }

    v133 = *v109;
    v111 = *(v109 + 8);
    *v109 = v111;
    *(v109 + 8) = v133;
    v109 -= 8;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_24EB1A5E4(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v85 - v11;
  MEMORY[0x28223BE20](v12);
  v93 = &v85 - v13;
  MEMORY[0x28223BE20](v14);
  v91 = &v85 - v15;
  v16 = sub_24F91F648();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v89 = (&v85 - v22);
  MEMORY[0x28223BE20](v23);
  v97 = &v85 - v24;
  MEMORY[0x28223BE20](v25);
  v95 = &v85 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v100 = a3;
  v29 = a3 - a2;
  v30 = v29 / 8;
  if (v27 >> 3 >= v29 / 8)
  {
    v85 = a1;
    if (a4 != a2 || &a2[v30] <= a4)
    {
      memmove(a4, a2, 8 * v30);
    }

    v99 = &a4[v30];
    if (v29 >= 8 && a2 > v85)
    {
      v91 = (v17 + 32);
      v95 = (v17 + 56);
      v86 = (v17 + 48);
      v88 = (v17 + 8);
      v57 = &selRef_systemBackgroundColor;
      v98 = a4;
      v58 = v87;
LABEL_32:
      v94 = a2;
      v59 = a2 - 1;
      --v100;
      v60 = v99;
      v89 = v59;
      do
      {
        v61 = *--v60;
        v62 = *v59;
        v63 = v61;
        v64 = v62;
        v65 = [v63 v57[76]];
        v93 = v63;
        if (v65)
        {
          v66 = v97;
          v67 = v65;
          sub_24F91F608();

          v68 = v90;
          v69 = *v91;
          (*v91)(v90, v66, v16);
          v70 = *v95;
          (*v95)(v68, 0, 1, v16);
          v69(v96, v68, v16);
        }

        else
        {
          v70 = *v95;
          v71 = v90;
          (*v95)(v90, 1, 1, v16);
          sub_24F91F618();
          if ((*v86)(v71, 1, v16) != 1)
          {
            sub_24E728998(v71);
          }
        }

        v72 = [v64 v57[76]];
        if (v72)
        {
          v73 = v64;
          v74 = v97;
          v75 = v72;
          sub_24F91F608();

          v76 = v92;
          v77 = *v91;
          v78 = v74;
          v64 = v73;
          v58 = v87;
          (*v91)(v92, v78, v16);
          v70(v76, 0, 1, v16);
          v77(v58, v76, v16);
        }

        else
        {
          v79 = v92;
          v70(v92, 1, 1, v16);
          sub_24F91F618();
          if ((*v86)(v79, 1, v16) != 1)
          {
            sub_24E728998(v92);
          }
        }

        v80 = v96;
        v81 = sub_24F91F588();
        v82 = *v88;
        (*v88)(v58, v16);
        (v82)(v80, v16);

        if (v81)
        {
          v57 = &selRef_systemBackgroundColor;
          v83 = v89;
          if (v100 + 1 != v94)
          {
            *v100 = *v89;
          }

          a4 = v98;
          if (v99 <= v98 || (a2 = v83, v83 <= v85))
          {
            a2 = v83;
            goto LABEL_52;
          }

          goto LABEL_32;
        }

        v57 = &selRef_systemBackgroundColor;
        if (v100 + 1 != v99)
        {
          *v100 = *v60;
        }

        --v100;
        v99 = v60;
        a4 = v98;
        v59 = v89;
      }

      while (v60 > v98);
      v99 = v60;
      a2 = v94;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      memmove(a4, a1, 8 * v28);
    }

    v99 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v31 = a1;
      if (a2 < v100)
      {
        v92 = (v17 + 32);
        v96 = (v17 + 56);
        v88 = (v17 + 48);
        v90 = (v17 + 8);
        while (1)
        {
          v94 = a2;
          v32 = *a2;
          v98 = a4;
          v33 = *a4;
          v34 = v32;
          v35 = v33;
          v36 = [v34 lastPlayedDate];
          if (v36)
          {
            v37 = v36;
            v38 = v97;
            sub_24F91F608();

            v39 = v91;
            v40 = *v92;
            (*v92)(v91, v38, v16);
            v41 = *v96;
            (*v96)(v39, 0, 1, v16);
            v40(v95, v39, v16);
          }

          else
          {
            v41 = *v96;
            v42 = v91;
            (*v96)(v91, 1, 1, v16);
            sub_24F91F618();
            if ((*v88)(v42, 1, v16) != 1)
            {
              sub_24E728998(v42);
            }
          }

          v43 = [v35 lastPlayedDate];
          if (v43)
          {
            v44 = v31;
            v45 = v97;
            v46 = v43;
            sub_24F91F608();

            v47 = v93;
            v48 = *v92;
            v49 = v45;
            v31 = v44;
            (*v92)(v93, v49, v16);
            v41(v47, 0, 1, v16);
            v50 = v89;
            v48(v89, v47, v16);
          }

          else
          {
            v51 = v93;
            v41(v93, 1, 1, v16);
            v50 = v89;
            sub_24F91F618();
            if ((*v88)(v51, 1, v16) != 1)
            {
              sub_24E728998(v93);
            }
          }

          v52 = v95;
          v53 = sub_24F91F588();
          v54 = v50;
          v55 = *v90;
          (*v90)(v54, v16);
          v55(v52, v16);

          if ((v53 & 1) == 0)
          {
            break;
          }

          v56 = v94;
          a2 = v94 + 1;
          a4 = v98;
          if (v31 != v94)
          {
            goto LABEL_22;
          }

LABEL_23:
          ++v31;
          if (a4 >= v99 || a2 >= v100)
          {
            goto LABEL_25;
          }
        }

        v56 = v98;
        a4 = v98 + 1;
        a2 = v94;
        if (v31 == v98)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v31 = *v56;
        goto LABEL_23;
      }

LABEL_25:
      a2 = v31;
    }
  }

LABEL_52:
  if (a2 != a4 || a2 >= (a4 + ((v99 - a4 + (v99 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v99 - a4));
  }

  return 1;
}

uint64_t sub_24EB1AF28(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for ASKBagContract();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_24EB1B044;

  return MEMORY[0x28217F228](v1 + 2, v3, v3);
}

uint64_t sub_24EB1B044()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EB1B50C;
  }

  else
  {
    v2 = sub_24EB1B158;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB1B158()
{
  v0[11] = v0[2];
  if (qword_27F210A20 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_24F92A398();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v5 = v0[3];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A30);
  *v7 = v0;
  v7[1] = sub_24EB1B304;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD00000000000003CLL, 0x800000024FA534B0, sub_24EB1B570, v6, v8);
}

uint64_t sub_24EB1B304()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24EB1B498;
  }

  else
  {

    v2 = sub_24EB1B420;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB1B420()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EB1B498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB1B50C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB1B578()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A38);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EB1B60C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A38) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EB188B0(a1, a2, v6);
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EB1B6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayActivity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CopyTextAction.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit14CopyTextAction_text);

  return v1;
}

char *CopyTextAction.__allocating_init(title:text:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit14CopyTextAction_text];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v18 + 8))(a5, v17);
  sub_24E601704(v38, &qword_27F235830);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *CopyTextAction.init(title:text:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit14CopyTextAction_text);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v41, &qword_27F235830);
  v26 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t CopyTextAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit14CopyTextAction_text);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 1954047348;
    v25 = v27;
    v24[1] = 0xE400000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t CopyTextAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t CopyTextAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyTextAction()
{
  result = qword_27F228A40;
  if (!qword_27F228A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SearchGhostHintMetricsTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

double SearchGhostHintMetricsTracker.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintPrefix.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintTerm.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintTermPhase.getter()
{
  if (*(v0 + 24))
  {
    return *&aPending_2[8 * *(v0 + 48)];
  }

  else
  {
    return 0;
  }
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintTermLastDisplayed.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.trackPendingExpansion(of:from:)(Swift::String of, Swift::String from)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = from;
  *(v2 + 32) = of;
  *(v2 + 48) = 0;

  sub_24EAD7A40(v3, v4);
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.trackDisplayedExpansion(of:from:)(Swift::String of, Swift::String from)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    object = of._object;
    countAndFlagsBits = of._countAndFlagsBits;
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v2 + 16) == from._countAndFlagsBits && v3 == from._object;
    if (v8 || (sub_24F92CE08() & 1) != 0)
    {
      v9 = v6 == countAndFlagsBits && v7 == object;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
        *(v2 + 48) = 1;
        swift_beginAccess();
        *(v2 + 56) = countAndFlagsBits;
        *(v2 + 64) = object;
      }
    }
  }
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.trackDeletedExpansion(of:from:)(Swift::String of, Swift::String from)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 16) == from._countAndFlagsBits && v3 == from._object;
    if (v6 || (countAndFlagsBits = of._countAndFlagsBits, object = of._object, v9 = sub_24F92CE08(), of._object = object, v10 = v9, of._countAndFlagsBits = countAndFlagsBits, (v10 & 1) != 0))
    {
      v11 = v4 == of._countAndFlagsBits && v5 == of._object;
      if (v11 || (sub_24F92CE08() & 1) != 0)
      {
        *(v2 + 48) = 2;
      }
    }
  }
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.clearTrackedState()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_24EAD7A40(v1, v2);
}

uint64_t SearchGhostHintMetricsTracker.deinit()
{
  sub_24EAD7A40(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t SearchGhostHintMetricsTracker.__deallocating_deinit()
{
  sub_24EAD7A40(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24EB1C858()
{
  if (!*(*v0 + 24))
  {
    return 0;
  }

  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_24EB1C89C()
{
  if (!*(*v0 + 24))
  {
    return 0;
  }

  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_24EB1C908()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_24EB1C9C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6579616C70736964;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x646574656C6564;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E69646E6570;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6579616C70736964;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x646574656C6564;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E69646E6570;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_24EB1CAD4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB1CB7C()
{
  sub_24F92B218();
}

uint64_t sub_24EB1CC10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB1CCB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EB1CDA0();
  *a1 = result;
  return result;
}

void sub_24EB1CCE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6579616C70736964;
  if (v2 != 1)
  {
    v5 = 0x646574656C6564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69646E6570;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24EB1CD4C()
{
  result = qword_27F228A50;
  if (!qword_27F228A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228A50);
  }

  return result;
}

uint64_t sub_24EB1CDA0()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24EB1CE48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24F922348();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

uint64_t sub_24EB1CECC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24F922348();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t PosterLockupLayout.Metrics.headingTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

void PosterLockupLayout.Metrics.logoMargin.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t PosterLockupLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t PosterLockupLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t PosterLockupLayout.Metrics.footerTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 152);

  return sub_24E612C80(a1, v1 + 152);
}

uint64_t PosterLockupLayout.Metrics.footerBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t PosterLockupLayout.Metrics.init(headingTopSpace:logoMargin:titleTopSpace:offerButtonTopSpace:footerTopSpace:footerBottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_24E612C80(a1, a6);
  a6[5] = a7;
  a6[6] = a8;
  a6[7] = a9;
  a6[8] = a10;
  sub_24E612C80(a2, (a6 + 9));
  sub_24E612C80(a3, (a6 + 14));
  sub_24E612C80(a4, (a6 + 19));

  return sub_24E612C80(a5, (a6 + 24));
}

__n128 PosterLockupLayout.init(metrics:gradient:poster:header:logoArt:fallbackTitle:offerButton:footer:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *(a4 + 16);
  *(a9 + 352) = *a4;
  *(a9 + 368) = v16;
  *(a9 + 384) = *(a4 + 32);
  sub_24E612C80(a2, a9 + 272);
  sub_24E612C80(a3, a9 + 232);
  v17 = *(a5 + 16);
  *(a9 + 312) = *a5;
  *(a9 + 328) = v17;
  *(a9 + 344) = *(a5 + 32);
  v18 = *(a6 + 16);
  *(a9 + 392) = *a6;
  *(a9 + 408) = v18;
  *(a9 + 424) = *(a6 + 32);
  sub_24E612C80(a7, a9 + 432);
  v19 = *(a8 + 16);
  *(a9 + 472) = *a8;
  *(a9 + 488) = v19;
  *(a9 + 504) = *(a8 + 32);
  v20 = *(a1 + 208);
  *(a9 + 192) = *(a1 + 192);
  *(a9 + 208) = v20;
  *(a9 + 224) = *(a1 + 224);
  v21 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v21;
  v22 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v22;
  v23 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v23;
  v24 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v24;
  v25 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v25;
  result = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = result;
  return result;
}

uint64_t PosterLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v41 = a2;
  v40 = sub_24F92CDB8();
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v6 + 232), *(v6 + 256));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v6 + 272), *(v6 + 296));
  sub_24F922228();
  sub_24E60169C(v6 + 352, &v45, &qword_27F229780);
  v42 = a4;
  v43 = a5;
  if (v46)
  {
    sub_24E612C80(&v45, v47);
    __swift_project_boxed_opaque_existential_1(v47, v48);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = v43;
    v49.size.height = a6;
    CGRectGetWidth(v49);
    __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
    a5 = v43;
    sub_24F9223C8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24E601704(&v45, &qword_27F229780);
  }

  v44 = a3;
  if (a6 >= a5)
  {
    v15 = a6;
    v20 = a5 - (*(v6 + 48) + *(v6 + 64));
    v16 = v42;
    if (qword_27F210270 != -1)
    {
      swift_once();
    }

    v19 = ceil(v20);
    v21 = sub_24F922348();
    __swift_project_value_buffer(v21, qword_27F228A70);
    sub_24F922308();
  }

  else
  {
    v15 = a6;
    v16 = v42;
    if (qword_27F210270 != -1)
    {
      swift_once();
    }

    v17 = sub_24F922348();
    __swift_project_value_buffer(v17, qword_27F228A70);
    sub_24F9222F8();
    v19 = ceil(v18);
  }

  v22 = v44;
  v50.origin.x = v44;
  v50.origin.y = v16;
  v50.size.width = a5;
  v23 = v15;
  v50.size.height = v15;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v22;
  v51.origin.y = v16;
  v51.size.width = a5;
  v51.size.height = v23;
  v39 = MinX + floor((CGRectGetWidth(v51) - v19) * 0.5);
  v52.origin.x = v22;
  v52.origin.y = v16;
  v52.size.width = a5;
  v52.size.height = v23;
  CGRectGetMinY(v52);
  v53.origin.x = v22;
  v53.origin.y = v16;
  v53.size.width = a5;
  v53.size.height = v23;
  CGRectGetHeight(v53);
  v54.origin.x = v22;
  v54.origin.y = v16;
  v54.size.width = a5;
  v54.size.height = v23;
  CGRectGetHeight(v54);
  sub_24E60169C(v6 + 312, &v45, &qword_27F229780);
  if (v46)
  {
    sub_24E612C80(&v45, v47);
    sub_24E60169C(v6 + 392, &v45, &unk_27F22B200);
    if (v46)
    {
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(&v45);
    }

    else
    {
      sub_24E601704(&v45, &unk_27F22B200);
    }

    v25 = v44;
    __swift_project_boxed_opaque_existential_1(v47, v48);
LABEL_23:
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v47);
    v26 = v43;
    goto LABEL_24;
  }

  sub_24E601704(&v45, &qword_27F229780);
  sub_24E60169C(v6 + 392, &v45, &unk_27F22B200);
  if (v46)
  {
    sub_24E612C80(&v45, v47);
    sub_24E60169C(v6 + 312, &v45, &qword_27F229780);
    v25 = v44;
    if (v46)
    {
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(&v45);
    }

    else
    {
      sub_24E601704(&v45, &qword_27F229780);
    }

    __swift_project_boxed_opaque_existential_1(v47, v48);
    goto LABEL_23;
  }

  sub_24E601704(&v45, &unk_27F22B200);
  sub_24E60169C(v6 + 312, v47, &qword_27F229780);
  v25 = v44;
  if (v48)
  {
    __swift_project_boxed_opaque_existential_1(v47, v48);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24E601704(v47, &qword_27F229780);
  }

  v26 = v43;
  sub_24E60169C(v6 + 392, v47, &unk_27F22B200);
  if (v48)
  {
    __swift_project_boxed_opaque_existential_1(v47, v48);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24E601704(v47, &unk_27F22B200);
  }

LABEL_24:
  sub_24E60169C(v6 + 472, v47, &qword_27F229780);
  if (v48)
  {
    __swift_project_boxed_opaque_existential_1(v47, v48);
    sub_24F922288();
    v37 = v27;
    v43 = v28;
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24E601704(v47, &qword_27F229780);
    v37 = 0;
    v43 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v6 + 432), *(v6 + 456));
  sub_24F922288();
  v29 = *(v6 + 456);
  v39 = *(v6 + 464);
  v38 = __swift_project_boxed_opaque_existential_1((v6 + 432), v29);
  v55.origin.x = v25;
  v30 = v42;
  v55.origin.y = v42;
  v55.size.width = v26;
  v55.size.height = v23;
  CGRectGetMinX(v55);
  v56.origin.x = v25;
  v56.origin.y = v30;
  v56.size.width = v26;
  v56.size.height = v23;
  CGRectGetMaxY(v56);
  __swift_project_boxed_opaque_existential_1((v6 + 192), *(v6 + 216));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v31 = *(v12 + 8);
  v32 = v40;
  v31(v14, v40);
  __swift_project_boxed_opaque_existential_1((v6 + 152), *(v6 + 176));
  sub_24E8ED7D8();
  v36 = a1;
  v33 = v31;
  sub_24F9223A8();
  v31(v14, v32);
  sub_24F922228();
  sub_24E60169C(v6 + 472, v47, &qword_27F229780);
  if (v48)
  {
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v34 = v44;
    v57.origin.x = v44;
    v57.origin.y = v30;
    v57.size.width = v26;
    v57.size.height = v23;
    CGRectGetMinX(v57);
    v58.origin.x = v34;
    v58.origin.y = v30;
    v58.size.width = v26;
    v58.size.height = v23;
    CGRectGetMaxY(v58);
    __swift_project_boxed_opaque_existential_1((v6 + 192), *(v6 + 216));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v33(v14, v32);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24E601704(v47, &qword_27F229780);
  }

  return sub_24F922128();
}

double _s12GameStoreKit18PosterLockupLayoutV23maximiumLogoArtworkSize7metrics09containerJ0So6CGSizeVAC7MetricsV_AHtFZ_0(uint64_t a1, double a2, double a3)
{
  if (a3 >= a2)
  {
    v6 = a2 - (*(a1 + 48) + *(a1 + 64));
    if (qword_27F210270 != -1)
    {
      swift_once();
    }

    v5 = ceil(v6);
    v7 = sub_24F922348();
    __swift_project_value_buffer(v7, qword_27F228A70);
    sub_24F922308();
  }

  else
  {
    if (qword_27F210270 != -1)
    {
      swift_once();
    }

    v3 = sub_24F922348();
    __swift_project_value_buffer(v3, qword_27F228A70);
    sub_24F9222F8();
    return ceil(v4);
  }

  return v5;
}

uint64_t sub_24EB1E0C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
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

uint64_t sub_24EB1E110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
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
      *(result + 512) = 1;
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

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void CrossfireReferralFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_project_value_buffer(v2, qword_27F22E430);
  sub_24F929AD8();
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  sub_24EB6B68C(a1, (v3 == 2) | v3 & 1);
}

uint64_t sub_24EB1E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E6541E4;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

void sub_24EB1E39C(uint64_t a1)
{
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_project_value_buffer(v2, qword_27F22E430);
  sub_24F929AD8();
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  sub_24EB6B68C(a1, (v3 == 2) | v3 & 1);
}

uint64_t MetricsActivityFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MetricsActivityFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v28 = a1;
  if (qword_27F210278 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v2 = sub_24EB6B3B8();
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v3, qword_27F22E400);
    v4 = MEMORY[0x277D837D0];
    sub_24F929AD8();
    if (*(&v26 + 1))
    {
      *(&v27[0] + 1) = v4;
      sub_24E612B0C(&v26, &v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v22[0] = v2;
      sub_24E81C1D4(&v23, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
      v2 = *&v22[0];
    }

    v6 = 0;
    v21 = v2;
    v7 = v2 + 64;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    if (v10)
    {
      break;
    }

LABEL_10:
    if (v11 <= v6 + 1)
    {
      v13 = v6 + 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v10 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  while (1)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v21 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_24E643A9C(*(v21 + 56) + 32 * v16, v22);
    *&v23 = v19;
    *(&v23 + 1) = v18;
    sub_24E612B0C(v22, &v24);

    v14 = v12;
LABEL_18:
    v26 = v23;
    v27[0] = v24;
    v27[1] = v25;
    if (!*(&v23 + 1))
    {
      break;
    }

    sub_24E612B0C(v27, &v23);
    __swift_mutable_project_boxed_opaque_existential_1(v28, *(v28 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v23);

    if (v1)
    {
      break;
    }

    v6 = v14;
    if (!v10)
    {
      goto LABEL_10;
    }
  }
}

uint64_t _s12GameStoreKit29MetricsActivityFieldsProviderVACycfC_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void CrossfireReferralCandidateFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v2 = off_27F229AB8;
  swift_beginAccess();
  if (v2[20] != 2 && (*(v2 + 241) & 1) != 0)
  {
    sub_24EB6B68C(a1, 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EB1EB28(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 8) == 0)
      {
LABEL_13:
        if ((a1 & 4) == 0 || (v1 & 4) != 0)
        {
          return v1;
        }

        return v1 | 4;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 8) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_12;
  }

  if ((a1 & 2) != 0)
  {
    v1 = 2;
    if ((a1 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v1 = 0;
  if ((a1 & 8) != 0)
  {
LABEL_12:
    v1 |= 8uLL;
    goto LABEL_13;
  }

LABEL_7:
  if ((a1 & 4) != 0)
  {
    return v1 | 4;
  }

  return v1;
}

uint64_t sub_24EB1EBF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D1>)
{
  v52 = a2;
  v5 = sub_24F924038();
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = v35 - v6;
  v46 = v5;
  v7 = sub_24F924038();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = v35 - v8;
  v65 = a1;
  v66 = MEMORY[0x277CDF918];
  v9 = MEMORY[0x277CDF918];
  v10 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v63 = WitnessTable;
  v64 = v9;
  v44 = v10;
  v11 = swift_getWitnessTable();
  v55 = v7;
  v56 = v11;
  v12 = v7;
  v42 = v7;
  v13 = v11;
  v43 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v15 = OpaqueTypeMetadata2;
  v16 = sub_24F924038();
  v55 = v12;
  v56 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_24E8F20E4();
  v19 = sub_24EB1F6A8();
  v61 = OpaqueTypeConformance2;
  v62 = v19;
  v20 = swift_getWitnessTable();
  v55 = v15;
  v56 = &type metadata for IsDebugFocusOverlayEnabled;
  v57 = v16;
  v58 = OpaqueTypeConformance2;
  v59 = v18;
  v60 = v20;
  v21 = MEMORY[0x277CE0E68];
  v22 = swift_getOpaqueTypeMetadata2();
  v38 = v22;
  v55 = v15;
  v56 = &type metadata for IsDebugFocusOverlayEnabled;
  v37 = v15;
  v57 = v16;
  v58 = OpaqueTypeConformance2;
  v39 = v18;
  v59 = v18;
  v60 = v20;
  v35[1] = v21;
  v36 = swift_getOpaqueTypeConformance2();
  v55 = v15;
  v56 = &type metadata for IsDebugFocusOverlayEnabled;
  v57 = v22;
  v58 = OpaqueTypeConformance2;
  v59 = v18;
  v60 = v36;
  v23 = swift_getOpaqueTypeMetadata2();
  v40 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v35 - v24;
  v26 = sub_24F924038();
  v41 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v35 - v27;
  sub_24F925838();
  v29 = v48;
  sub_24F926A48();
  sub_24F925858();
  v50 = a3;
  v30 = v47;
  v31 = v46;
  sub_24F926A48();
  (*(v51 + 8))(v29, v31);
  v32 = v42;
  View.platformFocusSection()(v42, v43, v25);
  (*(v49 + 8))(v30, v32);
  sub_24F925838();
  v55 = v37;
  v56 = &type metadata for IsDebugFocusOverlayEnabled;
  v57 = v38;
  v58 = OpaqueTypeConformance2;
  v59 = v39;
  v60 = v36;
  v33 = swift_getOpaqueTypeConformance2();
  sub_24F926A48();
  (*(v40 + 8))(v25, v23);
  sub_24F925858();
  v53 = v33;
  v54 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_24F926A48();
  return (*(v41 + 8))(v28, v26);
}

uint64_t View.platformFocusSection()@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v16 = a1;
  v17 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v8 = v15 - v7;
  sub_24F9262E8();
  v15[4] = a1;
  v15[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v9 = sub_24F924038();
  v16 = a1;
  v17 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_24E8F20E4();
  v12 = sub_24EB1F6A8();
  v22 = OpaqueTypeConformance2;
  v23 = v12;
  WitnessTable = swift_getWitnessTable();
  v16 = OpaqueTypeMetadata2;
  v17 = &type metadata for IsDebugFocusOverlayEnabled;
  v18 = v9;
  v19 = OpaqueTypeConformance2;
  v20 = v11;
  v21 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v16 = OpaqueTypeMetadata2;
  v17 = &type metadata for IsDebugFocusOverlayEnabled;
  v18 = v9;
  v19 = OpaqueTypeConformance2;
  v20 = v11;
  v21 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  return (*(v6 + 8))(v8, OpaqueTypeMetadata2);
}

uint64_t sub_24EB1F3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v18 = sub_24F924038();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24E8F20E4();
  v27 = OpaqueTypeConformance2;
  v28 = sub_24EB1F6A8();
  WitnessTable = swift_getWitnessTable();
  v21 = OpaqueTypeMetadata2;
  v22 = &type metadata for IsDebugFocusOverlayEnabled;
  v23 = v18;
  v24 = OpaqueTypeConformance2;
  v25 = v17;
  v26 = WitnessTable;
  v4 = swift_getOpaqueTypeMetadata2();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_24F9275A8();
  sub_24F926CF8();
  v11 = swift_checkMetadataState();
  sub_24EB1F70C();

  v21 = v11;
  v22 = &type metadata for IsDebugFocusOverlayEnabled;
  v23 = v18;
  v24 = OpaqueTypeConformance2;
  v25 = v17;
  v26 = WitnessTable;
  v12 = swift_getOpaqueTypeConformance2();
  sub_24E7896B8(v7, v4, v12);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_24E7896B8(v10, v4, v12);
  return (v13)(v10, v4);
}

unint64_t sub_24EB1F6A8()
{
  result = qword_27F2551A0;
  if (!qword_27F2551A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2551A0);
  }

  return result;
}

uint64_t sub_24EB1F70C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  sub_24E8F20E4();
  sub_24EB1F6A8();
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24EB1F7F4()
{
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EB1F6A8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EB1F960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25[1] = a1;
  v26 = a7;
  v27 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v13 = sub_24F924038();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  sub_24F927618();
  sub_24EB1FC40();
  v20 = v26;
  sub_24F926A08();
  v21 = sub_24EB1F6A8();
  v33 = v20;
  v34 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v16, v13, WitnessTable);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_24E7896B8(v19, v13, WitnessTable);
  return (v23)(v19, v13);
}

uint64_t sub_24EB1FBC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  *&v9 = *(v1 + 16);
  *(&v9 + 1) = v2;
  v10 = *(v1 + 32);
  v11 = 0u;
  v12 = 0u;
  *&v13 = v3;
  *(&v13 + 1) = 0x4024000000000000;
  v14 = 0;
  *(a1 + 80) = 0;
  v4 = v12;
  v5 = v13;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v6 = v10;
  *a1 = v9;
  *(a1 + 16) = v6;
  return sub_24EB1FB58(&v9, &v8);
}

unint64_t sub_24EB1FC40()
{
  result = qword_27F228AB8;
  if (!qword_27F228AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228AB8);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_24EB1FCF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFF9 && *(a1 + 168))
  {
    return (*a1 + 1073741818);
  }

  HIDWORD(v3) = (*(a1 + 56) >> 2) & 0x7FFFF80 | (*(a1 + 56) >> 1);
  LODWORD(v3) = *(a1 + 56);
  v4 = (v3 >> 29) ^ 0x3FFFFFFF;
  if (v4 >= 0x3FFFFFF9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_24EB1FD54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFFFFFA)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1073741818;
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0u;
      *(result + 24) = 0u;
      *(result + 8) = 0u;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 56) = (4 * (((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27))) & 0xFFFFFE00 | (2 * ((((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27)) & 0x7FLL));
    }
  }

  return result;
}

uint64_t sub_24EB1FE0C(uint64_t a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 80);
  v5 = *(v1 + 81);
  v7 = *(v1 + 88);
  v6 = *(v1 + 96);
  v9 = *(v1 + 104);
  v8 = *(v1 + 112);
  v11 = *(v1 + 120);
  v10 = *(v1 + 128);
  v12 = *(v1 + 136);
  v24 = *(v1 + 144);
  v25 = *(v1 + 152);
  v26 = *(v1 + 160);
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  sub_24F92D088();
  if (v3 != 104)
  {
    Shelf.ContentType.rawValue.getter();
    sub_24F92B218();
  }

  sub_24F92D088();
  Shelf.ContentsMetadata.hash(into:)(a1);
  if (v4 == 104)
  {
    sub_24F92D088();
    if (v5 != 104)
    {
LABEL_5:
      sub_24F92D088();
      Shelf.ContentType.rawValue.getter();
      sub_24F92B218();

      goto LABEL_8;
    }
  }

  else
  {
    sub_24F92D088();
    Shelf.ContentType.rawValue.getter();
    sub_24F92B218();

    if (v5 != 104)
    {
      goto LABEL_5;
    }
  }

  sub_24F92D088();
LABEL_8:
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  MEMORY[0x253052A30](*&v13);
  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  MEMORY[0x253052A30](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x253052A30](*&v15);
  if (v8 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v8;
  }

  MEMORY[0x253052A30](*&v16);
  if (v11 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v11;
  }

  MEMORY[0x253052A30](*&v17);
  if (v10 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  MEMORY[0x253052A30](*&v18);
  if (v12 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v12;
  }

  MEMORY[0x253052A30](*&v19);
  v20 = v24;
  if (v24 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x253052A30](*&v20);
  v21 = v25;
  if (v25 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x253052A30](*&v21);
  v22 = v26;
  if (v26 == 0.0)
  {
    v22 = 0.0;
  }

  return MEMORY[0x253052A30](*&v22);
}

uint64_t sub_24EB200AC()
{
  sub_24F92D068();
  sub_24EB1FE0C(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EB200F0()
{
  sub_24F92D068();
  sub_24EB1FE0C(v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EB20134()
{
  result = qword_27F228AC0;
  if (!qword_27F228AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228AC0);
  }

  return result;
}

BOOL sub_24EB20188(char *a1, char *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  v75 = *(a1 + 40);
  v76 = v6;
  v77 = *(a1 + 9);
  v73 = *(a1 + 8);
  v74 = v5;
  v7 = a1[80];
  v57 = a1[81];
  v8 = *(a1 + 11);
  v54 = *(a1 + 13);
  v55 = *(a1 + 12);
  v52 = *(a1 + 15);
  v53 = *(a1 + 14);
  v50 = *(a1 + 17);
  v51 = *(a1 + 16);
  v49 = *(a1 + 18);
  v47 = *(a1 + 19);
  v45 = *(a1 + 20);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 24);
  v13 = *(a2 + 56);
  v80 = *(a2 + 40);
  v81 = v13;
  v82 = *(a2 + 9);
  v78 = *(a2 + 8);
  v79 = v12;
  v14 = a2[80];
  v56 = a2[81];
  v16 = *(a2 + 11);
  v15 = *(a2 + 12);
  v18 = *(a2 + 13);
  v17 = *(a2 + 14);
  v20 = *(a2 + 15);
  v19 = *(a2 + 16);
  v21 = *(a2 + 17);
  v48 = *(a2 + 18);
  v46 = *(a2 + 19);
  v44 = *(a2 + 20);
  LOBYTE(v71[0]) = v2;
  LOBYTE(v69[0]) = v9;
  v22 = Shelf.ContentType.rawValue.getter();
  v24 = v23;
  if (v22 == Shelf.ContentType.rawValue.getter() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_24F92CE08();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == 104)
  {
    result = 0;
    if (v10 != 104)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v10 == 104)
  {
    return 0;
  }

  LOBYTE(v71[0]) = v3;
  LOBYTE(v69[0]) = v10;
  v29 = Shelf.ContentType.rawValue.getter();
  v31 = v30;
  if (v29 == Shelf.ContentType.rawValue.getter() && v31 == v32)
  {

    if (v4 != v11)
    {
      return 0;
    }

LABEL_8:
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v64 = v73;
    v65 = v74;
    v61 = v80;
    v62 = v81;
    v63 = v82;
    v59 = v78;
    v60 = v79;
    sub_24EA1F04C(&v73, v58);
    sub_24EA1F04C(&v78, v58);
    v28 = _s12GameStoreKit5ShelfC16ContentsMetadataO2eeoiySbAE_AEtFZ_0(&v64, &v59);
    v69[2] = v61;
    v69[3] = v62;
    v70 = v63;
    v69[0] = v59;
    v69[1] = v60;
    sub_24EA1E790(v69);
    v71[2] = v66;
    v71[3] = v67;
    v72 = v68;
    v71[0] = v64;
    v71[1] = v65;
    sub_24EA1E790(v71);
    if (v28)
    {
      if (v7 == 104)
      {
        if (v14 != 104)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 104)
        {
          return 0;
        }

        LOBYTE(v64) = v7;
        LOBYTE(v59) = v14;
        v34 = Shelf.ContentType.rawValue.getter();
        v36 = v35;
        if (v34 == Shelf.ContentType.rawValue.getter() && v36 == v37)
        {
        }

        else
        {
          v38 = sub_24F92CE08();

          if ((v38 & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v57 == 104)
      {
        if (v56 == 104)
        {
          goto LABEL_34;
        }
      }

      else if (v56 != 104)
      {
        LOBYTE(v64) = v57;
        LOBYTE(v59) = v56;
        v39 = Shelf.ContentType.rawValue.getter();
        v41 = v40;
        if (v39 == Shelf.ContentType.rawValue.getter() && v41 == v42)
        {
        }

        else
        {
          v43 = sub_24F92CE08();

          if ((v43 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_34:
        if (v8 == v16 && v55 == v15 && v54 == v18 && v53 == v17 && v52 == v20 && v51 == v19 && v50 == v21 && v49 == v48 && v47 == v46)
        {
          return v45 == v44;
        }
      }
    }

    return 0;
  }

  v33 = sub_24F92CE08();

  result = 0;
  if (v33)
  {
LABEL_7:
    if ((v4 ^ v11))
    {
      return result;
    }

    goto LABEL_8;
  }

  return result;
}

__n128 StrokeFocusButtonStyle.init(id:shape:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E612C80(a2, a3 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(a1 + 32);
  return result;
}

uint64_t FillFocusButtonStyle.init(id:shape:color:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(a4 + 40) = sub_24F927348();
  *(a4 + 48) = a3;
  v12 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 32) = *(a1 + 32);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t StrokeFocusButtonStyle.shape.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

double StrokeFocusButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_24F9241F8();
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F925728();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AC8);
  v43 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  (*(v8 + 16))(v10, v44, v7, v16);
  sub_24F926F98();
  sub_24F9241E8();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70);
  sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v19 = v45;
  sub_24F926178();
  (*(v46 + 8))(v6, v19);
  v20 = v14;
  v21 = v15;
  v22 = v43;
  v23 = v11;
  v24 = v47;
  (*(v12 + 8))(v20, v23);
  sub_24E615E00(v24 + 40, v48);
  sub_24EB20CC4(v48, a2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AD8);
  (*(v22 + 16))(a2 + v25[9], v18, v21);
  v26 = a2 + v25[10];
  *v26 = sub_24F923398() & 1;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28 & 1;
  v29 = a2 + v25[11];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v30 = qword_27F24E488;
  v31 = sub_24F923398();
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AE0) + 36);
  *v36 = v30;
  *(v36 + 8) = v31 & 1;
  *(v36 + 16) = v33;
  *(v36 + 24) = v35 & 1;
  LOBYTE(v30) = sub_24F923398();
  v38 = v37;
  LOBYTE(v33) = v39;
  sub_24EB22F68(v48);
  (*(v22 + 8))(v18, v21);
  v40 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AE8) + 36);
  *v40 = v30 & 1;
  *(v40 + 8) = v38;
  *(v40 + 16) = v33 & 1;
  sub_24E60169C(v24, v48, &qword_27F235830);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AF0);
  return sub_24E74DA20(v48, a2 + *(v41 + 36));
}

uint64_t sub_24EB20CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FillFocusButtonStyle.shape.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t FillFocusButtonStyle.color.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

double FillFocusButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44[0] = a1;
  v3 = sub_24F9241F8();
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F925728();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AC8);
  v47 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v44 - v17;
  v19 = v7;
  v20 = v44[1];
  (*(v8 + 16))(v10, v44[0], v19, v16);
  sub_24F926F98();
  sub_24F9241E8();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70);
  sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v21 = v45;
  sub_24F926178();
  (*(v46 + 8))(v6, v21);
  (*(v12 + 8))(v14, v11);
  v22 = *(v20 + 40);
  v23 = *(v20 + 48);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AF8);
  v25 = *(v47 + 16);
  v26 = a2 + v24[9];
  v46 = v15;
  v25(v26, v18, v15);
  *a2 = v22;
  a2[1] = v23;
  v27 = a2 + v24[10];
  swift_retain_n();
  swift_retain_n();
  *v27 = sub_24F923398() & 1;
  *(v27 + 1) = v28;
  v27[16] = v29 & 1;
  v30 = a2 + v24[11];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v31 = qword_27F24E488;
  v32 = sub_24F923398();
  v34 = v33;
  v36 = v35;
  v37 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B00) + 36);
  *v37 = v31;
  v37[8] = v32 & 1;
  *(v37 + 2) = v34;
  v37[24] = v36 & 1;
  LOBYTE(v31) = sub_24F923398();
  v39 = v38;
  LOBYTE(v34) = v40;

  (*(v47 + 8))(v18, v46);
  v41 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B08) + 36);
  *v41 = v31 & 1;
  *(v41 + 1) = v39;
  v41[16] = v34 & 1;
  sub_24E60169C(v20, v48, &qword_27F235830);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B10);
  return sub_24E74DA20(v48, a2 + *(v42 + 36));
}

double sub_24EB212D4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v48 = a1;
  v49 = sub_24F9241F8();
  v2 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F925728();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AC8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = v5;
  v19 = v18;
  (*(v6 + 16))(v8, v48, v17, v14);
  sub_24F926F98();
  sub_24F9241E8();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70);
  sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v20 = v49;
  sub_24F926178();
  (*(v2 + 8))(v4, v20);
  v21 = v12;
  v22 = v13;
  (*(v10 + 8))(v21, v9);
  sub_24E615E00(v51 + 40, v52);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_24F923F58();
  swift_getAssociatedConformanceWitness();
  v24 = sub_24F927348();
  v25 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(v52);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228C78);
  v27 = v16;
  v28 = v16;
  v29 = v50;
  (*(v19 + 16))(v50 + v26[9], v28, v22);
  *v29 = v24;
  v29[1] = v25;
  v29[2] = 0x4000000000000000;
  v30 = v29 + v26[10];

  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = v29 + v26[11];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = qword_27F24E488;
  v35 = sub_24F923398();
  v37 = v36;
  v39 = v38;
  v40 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228C80) + 36);
  *v40 = v34;
  v40[8] = v35 & 1;
  *(v40 + 2) = v37;
  v40[24] = v39 & 1;
  LOBYTE(v34) = sub_24F923398();
  v42 = v41;
  LOBYTE(v37) = v43;

  (*(v19 + 8))(v27, v22);
  v44 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228C88) + 36);
  *v44 = v34 & 1;
  *(v44 + 1) = v42;
  v44[16] = v37 & 1;
  sub_24E60169C(v51, v52, &qword_27F235830);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228C90);
  return sub_24E74DA20(v52, v29 + *(v45 + 36));
}

double GlowFocusButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v42 = a1;
  v2 = sub_24F9241F8();
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F925728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AC8);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v7 + 16))(v9, v42, v6, v16);
  sub_24F926F98();
  sub_24F9241E8();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70);
  sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v19 = v43;
  sub_24F926178();
  (*(v44 + 8))(v5, v19);
  v20 = v13;
  v21 = v14;
  v22 = v10;
  v23 = v45;
  (*(v11 + 8))(v20, v22);
  (*(v15 + 16))(v23, v18, v14);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B18);
  v25 = v23 + *(v24 + 40);
  *v25 = sub_24F923398() & 1;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27 & 1;
  v28 = v23 + *(v24 + 44);
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v29 = qword_27F24E488;
  v30 = sub_24F923398();
  v32 = v31;
  v34 = v33;
  v35 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B20) + 36);
  *v35 = v29;
  *(v35 + 8) = v30 & 1;
  *(v35 + 16) = v32;
  *(v35 + 24) = v34 & 1;
  LOBYTE(v29) = sub_24F923398();
  v37 = v36;
  LOBYTE(v32) = v38;
  (*(v15 + 8))(v18, v21);
  v39 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B28) + 36);
  *v39 = v29 & 1;
  *(v39 + 8) = v37;
  *(v39 + 16) = v32 & 1;
  sub_24E60169C(v46, v47, &qword_27F235830);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228B30);
  return sub_24E74DA20(v47, v23 + *(v40 + 36));
}

uint64_t sub_24EB21D74(uint64_t a1)
{
  v2 = sub_24F925728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_24F9256F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925708();
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_24EB2398C(qword_27F228BC8, MEMORY[0x277CDE500]);
  sub_24F9262B8();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EB21F98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v38 = a3;
  v5 = a2[5];
  v34 = a2[3];
  v35 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v30 = &v29 - v10;
  v33 = a2[2];
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = sub_24F924E38();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  if (*v3 == 1)
  {
    sub_24F924ED8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_24E7896B8(v14, v11, AssociatedConformanceWitness);
    v22 = *(v12 + 8);
    v22(v14, v11);
    sub_24E7896B8(v17, v11, AssociatedConformanceWitness);
    v23 = swift_getAssociatedConformanceWitness();
    sub_24ECCCBA0(v14, v11);
    v22(v14, v11);
    v22(v17, v11);
  }

  else
  {
    sub_24F924ED8();
    v23 = swift_getAssociatedConformanceWitness();
    v24 = v30;
    sub_24E7896B8(v8, AssociatedTypeWitness, v23);
    v25 = *(v31 + 8);
    v25(v8, AssociatedTypeWitness);
    sub_24E7896B8(v24, AssociatedTypeWitness, v23);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_24ECCCC98(v8, v11, AssociatedTypeWitness);
    v25(v8, AssociatedTypeWitness);
    v25(v24, AssociatedTypeWitness);
  }

  v39 = AssociatedConformanceWitness;
  v40 = v23;
  v26 = v37;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v20, v26, WitnessTable);
  return (*(v36 + 8))(v20, v26);
}

uint64_t sub_24EB22414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_24F9241F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F925728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v16 - v13;
  (*(v7 + 16))(v9, v16[0], v6, v12);
  sub_24F926F98();
  sub_24F9241E8();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70);
  sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
  sub_24F926178();
  (*(v3 + 8))(v5, v2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_24EB226B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v43 = sub_24F9241F8();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F925728();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AC8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = v5;
  v20 = v19;
  (*(v6 + 16))(v8, v42, v18, v15);
  sub_24F926F98();
  sub_24F9241E8();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70);
  sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v21 = v43;
  sub_24F926178();
  (*(v2 + 8))(v4, v21);
  v22 = v12;
  v23 = v44;
  (*(v10 + 8))(v22, v9);
  (*(v14 + 16))(v23, v17, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228C98);
  v25 = v23 + *(v24 + 40);
  *v25 = sub_24F923398() & 1;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27 & 1;
  v28 = v23 + *(v24 + 44);
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v29 = qword_27F24E488;
  v30 = sub_24F923398();
  v32 = v31;
  v34 = v33;
  v35 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228CA0) + 36);
  *v35 = v29;
  *(v35 + 8) = v30 & 1;
  *(v35 + 16) = v32;
  *(v35 + 24) = v34 & 1;
  LOBYTE(v29) = sub_24F923398();
  v37 = v36;
  LOBYTE(v32) = v38;
  (*(v14 + 8))(v17, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228CA8);
  v40 = v23 + *(result + 36);
  *v40 = v29 & 1;
  *(v40 + 8) = v37;
  *(v40 + 16) = v32 & 1;
  return result;
}

uint64_t sub_24EB22B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F925728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33[-v13 - 8];
  (*(v7 + 16))(v9, a1, v6, v12);
  sub_24F926F98();
  sub_24E615E00(v3, v33);
  sub_24E60169C(v33, a2, &qword_27F228BA8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228BB0);
  (*(v11 + 16))(a2 + v15[9], v14, v10);
  v16 = a2 + v15[10];
  *v16 = sub_24F923398() & 1;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18 & 1;
  v19 = a2 + v15[11];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v20 = qword_27F24E488;
  v21 = sub_24F923398();
  v23 = v22;
  v25 = v24;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228BB8) + 36);
  *v26 = v20;
  *(v26 + 8) = v21 & 1;
  *(v26 + 16) = v23;
  *(v26 + 24) = v25 & 1;
  LOBYTE(v20) = sub_24F923398();
  v28 = v27;
  LOBYTE(v23) = v29;
  sub_24EB23840(v33);
  (*(v11 + 8))(v14, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228BC0);
  v31 = a2 + *(result + 36);
  *v31 = v20 & 1;
  *(v31 + 8) = v28;
  *(v31 + 16) = v23 & 1;
  return result;
}

uint64_t sub_24EB22E30@<X0>(_BYTE *a1@<X8>)
{
  sub_24EB23788();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EB22E80@<X0>(_BYTE *a1@<X8>)
{
  sub_24EB23788();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EB22F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24EB2304C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EB23094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EB230F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EB2314C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_24EB231BC()
{
  result = qword_27F228B38;
  if (!qword_27F228B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228AF0);
    sub_24EB23248();
    sub_24EB2338C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B38);
  }

  return result;
}

unint64_t sub_24EB23248()
{
  result = qword_27F228B40;
  if (!qword_27F228B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228AE8);
    sub_24EB232D4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B40);
  }

  return result;
}

unint64_t sub_24EB232D4()
{
  result = qword_27F228B48;
  if (!qword_27F228B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228AE0);
    sub_24E602068(&qword_27F228B50, &qword_27F228AD8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B48);
  }

  return result;
}

unint64_t sub_24EB2338C()
{
  result = qword_27F228B58;
  if (!qword_27F228B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B58);
  }

  return result;
}

unint64_t sub_24EB233E4()
{
  result = qword_27F228B60;
  if (!qword_27F228B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228B10);
    sub_24EB23470();
    sub_24EB2338C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B60);
  }

  return result;
}

unint64_t sub_24EB23470()
{
  result = qword_27F228B68;
  if (!qword_27F228B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228B08);
    sub_24EB234FC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B68);
  }

  return result;
}

unint64_t sub_24EB234FC()
{
  result = qword_27F228B70;
  if (!qword_27F228B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228B00);
    sub_24E602068(&qword_27F228B78, &qword_27F228AF8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B70);
  }

  return result;
}

unint64_t sub_24EB235B8()
{
  result = qword_27F228B80;
  if (!qword_27F228B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228B30);
    sub_24EB23644();
    sub_24EB2338C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B80);
  }

  return result;
}

unint64_t sub_24EB23644()
{
  result = qword_27F228B88;
  if (!qword_27F228B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228B28);
    sub_24EB236D0();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B88);
  }

  return result;
}

unint64_t sub_24EB236D0()
{
  result = qword_27F228B90;
  if (!qword_27F228B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228B20);
    sub_24E602068(&qword_27F228B98, &qword_27F228B18);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228B90);
  }

  return result;
}

unint64_t sub_24EB23788()
{
  result = qword_27F228BA0;
  if (!qword_27F228BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228BA0);
  }

  return result;
}

uint64_t sub_24EB23840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB238A8()
{
  v1 = sub_24F925728();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EB2398C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EB23A0C()
{
  result = swift_checkMetadataState();
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

uint64_t sub_24EB23AA8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v26 = &a1[v9 + 1] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v26);
        }

        else
        {
          return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        v24 = v23 >= 2;
        v25 = (v23 + 2147483646) & 0x7FFFFFFF;
        if (v24)
        {
          return (v25 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_24EB23CD4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 1] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

unint64_t sub_24EB24000()
{
  result = qword_27F228C50;
  if (!qword_27F228C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228BC0);
    sub_24EB2408C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228C50);
  }

  return result;
}

unint64_t sub_24EB2408C()
{
  result = qword_27F228C58;
  if (!qword_27F228C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228BB8);
    sub_24E602068(&qword_27F228C60, &qword_27F228BB0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228C58);
  }

  return result;
}

unint64_t sub_24EB24148()
{
  result = qword_27F228C68;
  if (!qword_27F228C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227B70);
    sub_24F9241F8();
    sub_24E602068(&qword_27F227B80, &qword_27F227B70);
    sub_24EB2398C(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E73A224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228C68);
  }

  return result;
}

uint64_t sub_24EB24294()
{
  sub_24F9256F8();
  sub_24EB2398C(qword_27F228BC8, MEMORY[0x277CDE500]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EB2439C()
{
  result = qword_27F228CB0;
  if (!qword_27F228CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228C90);
    sub_24EB24428();
    sub_24EB2338C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228CB0);
  }

  return result;
}

unint64_t sub_24EB24428()
{
  result = qword_27F228CB8;
  if (!qword_27F228CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228C88);
    sub_24EB244B4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228CB8);
  }

  return result;
}

unint64_t sub_24EB244B4()
{
  result = qword_27F228CC0;
  if (!qword_27F228CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228C80);
    sub_24E602068(&qword_27F228CC8, &qword_27F228C78);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228CC0);
  }

  return result;
}

unint64_t sub_24EB24570()
{
  result = qword_27F228CD0;
  if (!qword_27F228CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228CA8);
    sub_24EB245FC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228CD0);
  }

  return result;
}

unint64_t sub_24EB245FC()
{
  result = qword_27F228CD8;
  if (!qword_27F228CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228CA0);
    sub_24E602068(qword_27F228CE0, &qword_27F228C98);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228CD8);
  }

  return result;
}

uint64_t sub_24EB246B4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_24F924E38();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

BOOL DiffablePagePresenter.UpdatePhase.isUpdating.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = 1;
  v5 = 2;
  return static DiffablePagePresenter.UpdatePhase.== infix(_:_:)(&v6, v4);
}

BOOL static DiffablePagePresenter.UpdatePhase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      v10 = v2;
      sub_24E5FCA4C(v3);
LABEL_14:
      sub_24EB249FC(v6, v7, v8, v9);
      sub_24EB24A60(v2, v3, v4, v5);
      sub_24EB24A60(v6, v7, v8, v9);
      return 0;
    }

    if (v4 | v3 | v2)
    {
      if (v9 != 2 || v6 != 1 || (v8 | v7) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (v9 != 2 || (v8 | v7 | v6) != 0)
    {
      goto LABEL_14;
    }

    sub_24EB249FC(*a2, *(a2 + 8), v8, v9);
    sub_24EB24A60(v2, v3, v4, 2);
    sub_24EB24A60(v6, v7, v8, v9);
    return 1;
  }

  else
  {
    if (*(a2 + 24))
    {
      swift_unknownObjectRetain();
      goto LABEL_14;
    }

    sub_24EB249FC(*a2, *(a2 + 8), v8, 0);
    sub_24EB249FC(v2, v3, v4, 0);
    sub_24EB249FC(v6, v7, v8, 0);
    sub_24EB249FC(v2, v3, v4, 0);
    sub_24EB24A60(v2, v3, v4, 0);
    sub_24EB24A60(v6, v7, v8, 0);
    sub_24EB24A60(v2, v3, v4, 0);
    sub_24EB24A60(v6, v7, v8, 0);
    return v2 == v6;
  }
}

void *sub_24EB249FC(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v6 = result;

    return sub_24E5FCA4C(a2);
  }

  else if (!a4)
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

void *sub_24EB24A60(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return sub_24E824448(a2);
  }

  else if (!a4)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24EB24AC4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

uint64_t sub_24EB24ADC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EB24B1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit21DiffablePagePresenterC11UpdatePhaseOyx_G(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_24EB24B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EB24BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EB24C04(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void *static GKLocalPlayer.currentAcknowledgedPlayer.getter()
{
  v0 = [swift_getObjCClassFromMetadata() currentLocalPlayer];
  if (!v0)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
    goto LABEL_9;
  }

  v1 = v0;
  if (([v0 hasAcknowledgedLatestGDPR] & 1) == 0)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

LABEL_9:

    return 0;
  }

  return v1;
}

uint64_t AppEventFormattedDate.displayText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayText);

  return v1;
}

uint64_t AppEventFormattedDate.countdownStringKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownStringKey);

  return v1;
}

uint64_t AppEventFormattedDate.__allocating_init(displayFromDate:displayText:showLiveIndicator:countdownToDate:countdownStringKey:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_24E6C4F90(a1, v14 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayFromDate);
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayText);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_showLiveIndicator) = a4;
  sub_24E6C4F90(a5, v14 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownToDate);
  v16 = (v14 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownStringKey);
  *v16 = a6;
  v16[1] = a7;
  return v14;
}

uint64_t AppEventFormattedDate.init(displayFromDate:displayText:showLiveIndicator:countdownToDate:countdownStringKey:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_24E6C4F90(a1, v7 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayFromDate);
  v14 = (v7 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayText);
  *v14 = a2;
  v14[1] = a3;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_showLiveIndicator) = a4;
  sub_24E6C4F90(a5, v7 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownToDate);
  v15 = (v7 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownStringKey);
  *v15 = a6;
  v15[1] = a7;
  return v7;
}

uint64_t AppEventFormattedDate.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v44 = &v41[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v41[-v18];
  sub_24F928398();
  v46 = v19;
  sub_24F928288();
  v20 = *(v4 + 8);
  v20(v9, v3);
  sub_24F928398();
  v43 = sub_24F928348();
  v22 = v21;
  v20(v9, v3);
  sub_24F928398();
  v42 = sub_24F928278();
  v20(v6, v3);
  sub_24F928398();
  sub_24F928288();
  v20(v9, v3);
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v26 = v9;
  v27 = v16;
  v28 = v22;
  v20(v26, v3);
  if (v22)
  {
    goto LABEL_2;
  }

  v35 = sub_24F91F648();
  if ((*(*(v35 - 8) + 48))(v27, 1, v35) == 1)
  {

LABEL_6:
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v37 = MEMORY[0x277D84F90];
    *v38 = v47;
    v38[1] = v37;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22538], v36);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v48, v39);
    v20(a1, v3);
    sub_24E728998(v46);
    sub_24E728998(v27);
    return a1;
  }

  if (!v25)
  {
    goto LABEL_6;
  }

LABEL_2:
  v29 = sub_24F9285B8();
  (*(*(v29 - 8) + 8))(v48, v29);
  v20(a1, v3);
  v30 = v44;
  sub_24E6C4F90(v46, v44);
  v31 = v28;
  v32 = v45;
  sub_24E728A00(v27, v45);
  a1 = swift_allocObject();
  sub_24E6C4F90(v30, a1 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayFromDate);
  v33 = (a1 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayText);
  *v33 = v43;
  v33[1] = v31;
  *(a1 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_showLiveIndicator) = v42 & 1;
  sub_24E6C4F90(v32, a1 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownToDate);
  v34 = (a1 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownStringKey);
  *v34 = v23;
  v34[1] = v25;
  sub_24E728998(v27);
  return a1;
}

uint64_t AppEventFormattedDate.deinit()
{
  sub_24E728998(v0 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayFromDate);

  sub_24E728998(v0 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownToDate);

  return v0;
}

uint64_t AppEventFormattedDate.__deallocating_deinit()
{
  sub_24E728998(v0 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_displayFromDate);

  sub_24E728998(v0 + OBJC_IVAR____TtC12GameStoreKit21AppEventFormattedDate_countdownToDate);

  return swift_deallocClassInstance();
}

uint64_t sub_24EB2572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AppEventFormattedDate.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppEventFormattedDate()
{
  result = qword_27F228D68;
  if (!qword_27F228D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB257AC()
{
  sub_24E728940();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t TodayWidgetContainerTemplate.refreshDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_refreshDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayWidgetContainerTemplate.originalResponseDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_originalResponseDate);

  return v1;
}

uint64_t TodayWidgetContainerTemplate.originalResponseHash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_originalResponseHash);

  return v1;
}

uint64_t TodayWidgetContainerTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayWidgetContainerTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayWidgetContainerTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v78 = v3;
  v76 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v65 - v6;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x28223BE20](v7);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v65 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = sub_24F92AC28();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v26 = v22;
  v29 = *(v14 + 8);
  v28 = v14 + 8;
  v27 = v29;
  v29(v21, v13);
  if ((*(v23 + 48))(v12, 1, v26) == 1)
  {
    sub_24E601704(v12, &qword_27F2213B0);
    v30 = sub_24F92AC38();
    sub_24EB267BC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v31 = 0x697463656C6C6F63;
    v32 = v76;
    v31[1] = 0xEB00000000736E6FLL;
    v31[2] = v32;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    v27(v77, v13);
    v33 = v79;
    v34 = v78;
    goto LABEL_6;
  }

  v67 = v28;
  v68 = v23;
  v35 = *(v23 + 32);
  v69 = v26;
  v36 = v35(v25, v12, v26);
  MEMORY[0x28223BE20](v36);
  *(&v65 - 2) = v79;
  type metadata accessor for TodayWidgetCardCollectionTemplate();
  v37 = v71;
  v38 = sub_24F92ABB8();
  if (!v37)
  {
    v71 = v25;
    v39 = v77;
    v40 = v78;
    v78[2] = v38;
    sub_24F928398();
    v41 = v72;
    sub_24F928288();
    v66 = v13;
    v42 = v13;
    v43 = v27;
    v27(v18, v42);
    v44 = v74;
    v45 = v75;
    if ((*(v75 + 48))(v41, 1, v74) != 1)
    {
      v50 = v73;
      (*(v45 + 32))(v73, v41, v44);
      (*(v45 + 16))(v40 + OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_refreshDate, v50, v44);
      v51 = v40;
      v52 = v70;
      v53 = v66;
      v76 = 0;
      sub_24F928398();
      v54 = sub_24F928348();
      v55 = v39;
      v57 = v56;
      v43(v52, v53);
      v58 = (v51 + OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_originalResponseDate);
      *v58 = v54;
      v58[1] = v57;
      sub_24F928398();
      v59 = sub_24F928348();
      v61 = v60;
      v43(v55, v53);
      v43(v52, v53);
      (*(v75 + 8))(v73, v44);
      (*(v68 + 8))(v71, v69);
      v34 = v78;
      v62 = (v78 + OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_originalResponseHash);
      *v62 = v59;
      v62[1] = v61;
      v63 = sub_24F9285B8();
      (*(*(v63 - 8) + 8))(v79, v63);
      return v34;
    }

    sub_24E601704(v41, &unk_27F22EC30);
    v46 = sub_24F92AC38();
    sub_24EB267BC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v47 = 0x4468736572666572;
    v48 = v76;
    v47[1] = 0xEB00000000657461;
    v47[2] = v48;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    v43(v39, v66);
    (*(v68 + 8))(v71, v69);

    v33 = v79;
    v34 = v40;
LABEL_6:
    swift_deallocPartialClassInstance();
    v49 = sub_24F9285B8();
    (*(*(v49 - 8) + 8))(v33, v49);
    return v34;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24EB262C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  type metadata accessor for TodayWidgetCardCollectionTemplate();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EB267BC(&qword_27F228D88, type metadata accessor for TodayWidgetCardCollectionTemplate);
  return sub_24F929548();
}

uint64_t TodayWidgetContainerTemplate.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_refreshDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TodayWidgetContainerTemplate.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit28TodayWidgetContainerTemplate_refreshDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EB26614@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayWidgetContainerTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t type metadata accessor for TodayWidgetContainerTemplate()
{
  result = qword_27F228D78;
  if (!qword_27F228D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB266D0()
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

uint64_t sub_24EB267BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArcadePageUrls.init(subscriberUrl:nonSubscriberUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E911D90(a1, a3);
  v5 = a3 + *(type metadata accessor for ArcadePageUrls() + 20);

  return sub_24E911D90(a2, v5);
}

uint64_t type metadata accessor for ArcadePageUrls()
{
  result = qword_27F228D90;
  if (!qword_27F228D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadePageUrls.nonSubscriberUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArcadePageUrls() + 20);

  return sub_24E99091C(v3, a1);
}

uint64_t sub_24EB2697C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EB26A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24EB26A84()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t ProductWriteAReview.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductWriteAReview.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ProductWriteAReview.__allocating_init(id:writeReviewAction:supportAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E9BBAA8(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t ProductWriteAReview.init(id:writeReviewAction:supportAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E9BBAA8(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t ProductWriteAReview.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v32 = a1;
  sub_24F928398();
  v16 = sub_24F928348();
  if (v17)
  {
    v33 = v16;
    v34 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v19 = v6;
    v21 = v20;
    (*(v19 + 8))(v8, v5);
    v33 = v18;
    v34 = v21;
  }

  sub_24F92C7F8();
  v22 = *(v10 + 8);
  v22(v15, v9);
  v23 = v36;
  *(v3 + 32) = v35;
  *(v3 + 48) = v23;
  *(v3 + 64) = v37;
  type metadata accessor for Action();
  v24 = v32;
  sub_24F928398();
  v25 = v31;
  v26 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v31);
  v22(v12, v9);
  *(v3 + 16) = v26;
  sub_24F928398();
  v27 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v25);
  v28 = sub_24F9285B8();
  (*(*(v28 - 8) + 8))(v25, v28);
  v22(v24, v9);
  v22(v12, v9);
  *(v3 + 24) = v27;
  return v3;
}

uint64_t ProductWriteAReview.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t ProductWriteAReview.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_24EB271E8()
{
  result = qword_27F228DA0;
  if (!qword_27F228DA0)
  {
    type metadata accessor for ProductWriteAReview();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228DA0);
  }

  return result;
}

uint64_t sub_24EB27280@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductWriteAReview();
  v7 = swift_allocObject();
  result = ProductWriteAReview.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ContingentOfferDetailPage.__allocating_init(contingentOffer:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v74) = a6;
  v72 = a4;
  v73 = a5;
  v75 = a8;
  v76 = a12;
  v77 = a11;
  v78 = a10;
  v79 = a9;
  v80 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v61 - v18);
  MEMORY[0x28223BE20](v20);
  v67 = &v61 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  v32 = swift_allocObject();
  v33 = *v73;
  v69 = a1;
  v70 = a2;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_contingentOffer) = a1;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_artwork) = a2;
  v71 = a3;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_video) = a3;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v33;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v74;
  sub_24E60169C(v79, v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v78, v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v77, v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
  v68 = v26;
  v34 = *(v26 + 16);
  v34(v31, v80, v25);
  sub_24E60169C(v76, v24, &qword_27F2218B0);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 1;
  v34(v28, v31, v25);
  v73 = v24;
  v35 = v24;
  v36 = v67;
  sub_24E60169C(v35, v67, &qword_27F2218B0);
  *(v32 + 16) = 0;
  v34((v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v28, v25);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v75;
  sub_24E60169C(v36, v19, &qword_27F2218B0);
  v37 = sub_24F9285B8();
  v66 = *(v37 - 8);
  v38 = *(v66 + 48);
  v74 = v19;
  if (v38(v19, 1, v37) == 1)
  {

    sub_24E601704(v76, &qword_27F2218B0);
    sub_24E601704(v77, &qword_27F223CE8);
    sub_24E601704(v78, &qword_27F223CE8);
    sub_24E601704(v79, &qword_27F223CE8);
    v39 = *(v68 + 8);
    v39(v80, v25);
    sub_24E601704(v36, &qword_27F2218B0);
    v39(v28, v25);
    sub_24E601704(v73, &qword_27F2218B0);
    v39(v31, v25);
    v40 = v74;
  }

  else
  {
    v62 = v28;
    v63 = v25;
    v41 = v36;
    v42 = v68;
    v64 = v31;
    v43 = qword_27F2105F0;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = v38;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v45, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v46 = v81;
    v47 = v66;
    if (v81)
    {
    }

    v48 = *(v47 + 8);
    v48(v74, v37);
    if (!v46)
    {

      sub_24E601704(v76, &qword_27F2218B0);
      sub_24E601704(v77, &qword_27F223CE8);
      sub_24E601704(v78, &qword_27F223CE8);
      sub_24E601704(v79, &qword_27F223CE8);
      v55 = *(v42 + 8);
      v56 = v63;
      v55(v80, v63);
      sub_24E601704(v41, &qword_27F2218B0);
      v55(v62, v56);
      sub_24E601704(v73, &qword_27F2218B0);
      v55(v64, v56);
      return v32;
    }

    v74 = v48;
    v49 = v65;
    sub_24E60169C(v41, v65, &qword_27F2218B0);
    v50 = v44(v49, 1, v37);
    v51 = v41;
    v52 = v62;
    if (v50 != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v76, &qword_27F2218B0);
      v57 = v49;
      sub_24E601704(v77, &qword_27F223CE8);
      sub_24E601704(v78, &qword_27F223CE8);
      sub_24E601704(v79, &qword_27F223CE8);
      v58 = *(v42 + 8);
      v59 = v63;
      v58(v80, v63);
      sub_24E601704(v51, &qword_27F2218B0);
      v58(v52, v59);
      sub_24E601704(v73, &qword_27F2218B0);
      v58(v64, v59);
      v74(v57, v37);
      return v32;
    }

    sub_24E601704(v76, &qword_27F2218B0);
    sub_24E601704(v77, &qword_27F223CE8);
    sub_24E601704(v78, &qword_27F223CE8);
    sub_24E601704(v79, &qword_27F223CE8);
    v53 = *(v42 + 8);
    v54 = v63;
    v53(v80, v63);
    sub_24E601704(v51, &qword_27F2218B0);
    v53(v52, v54);
    sub_24E601704(v73, &qword_27F2218B0);
    v53(v64, v54);
    v40 = v49;
  }

  sub_24E601704(v40, &qword_27F2218B0);
  return v32;
}

char *ContingentOfferDetailPage.init(contingentOffer:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v69) = a6;
  v67 = a4;
  v68 = a5;
  v70 = a8;
  v71 = a12;
  v72 = a11;
  v73 = a10;
  v74 = a9;
  v75 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v63 = &v56 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v26 = sub_24F928818();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v56 - v31;
  v33 = *v68;
  v61 = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_contingentOffer) = a1;
  v65 = a2;
  v66 = a3;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_artwork) = a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_video) = a3;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v33;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v69;
  sub_24E60169C(v74, v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v73, v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v72, v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
  v64 = v27;
  v34 = *(v27 + 16);
  v34(v32, v75, v26);
  sub_24E60169C(v71, v25, &qword_27F2218B0);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 1;
  v34(v29, v32, v26);
  v69 = v25;
  v35 = v25;
  v36 = v63;
  sub_24E60169C(v35, v63, &qword_27F2218B0);
  *(v12 + 16) = 0;
  v34((v12 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v29, v26);
  v68 = v12;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v70;
  sub_24E60169C(v36, v20, &qword_27F2218B0);
  v37 = sub_24F9285B8();
  v60 = *(v37 - 8);
  v38 = *(v60 + 48);
  v39 = v20;
  if (v38(v20, 1, v37) == 1)
  {

    sub_24E601704(v71, &qword_27F2218B0);
    sub_24E601704(v72, &qword_27F223CE8);
    sub_24E601704(v73, &qword_27F223CE8);
    sub_24E601704(v74, &qword_27F223CE8);
    v40 = *(v64 + 8);
    v40(v75, v26);
    sub_24E601704(v36, &qword_27F2218B0);
    v40(v29, v26);
    sub_24E601704(v69, &qword_27F2218B0);
    v40(v32, v26);
    v41 = v20;
  }

  else
  {
    v42 = v38;
    v62 = v39;
    v56 = v29;
    v57 = v26;
    v43 = v36;
    v44 = v64;
    v58 = v32;
    v45 = qword_27F2105F0;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v46, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v47 = v76;
    v48 = v57;
    v49 = v60;
    if (v76)
    {
    }

    v50 = v62;
    v62 = *(v49 + 8);
    v62(v50, v37);
    if (!v47)
    {

      sub_24E601704(v71, &qword_27F2218B0);
      sub_24E601704(v72, &qword_27F223CE8);
      sub_24E601704(v73, &qword_27F223CE8);
      sub_24E601704(v74, &qword_27F223CE8);
      v53 = *(v44 + 8);
      v53(v75, v48);
      sub_24E601704(v43, &qword_27F2218B0);
      v53(v56, v48);
      sub_24E601704(v69, &qword_27F2218B0);
      v53(v58, v48);
      return v68;
    }

    v51 = v59;
    sub_24E60169C(v43, v59, &qword_27F2218B0);
    if (v42(v51, 1, v37) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v71, &qword_27F2218B0);
      sub_24E601704(v72, &qword_27F223CE8);
      sub_24E601704(v73, &qword_27F223CE8);
      sub_24E601704(v74, &qword_27F223CE8);
      v54 = *(v44 + 8);
      v54(v75, v48);
      sub_24E601704(v43, &qword_27F2218B0);
      v54(v56, v48);
      sub_24E601704(v69, &qword_27F2218B0);
      v54(v58, v48);
      v62(v51, v37);
      return v68;
    }

    sub_24E601704(v71, &qword_27F2218B0);
    sub_24E601704(v72, &qword_27F223CE8);
    sub_24E601704(v73, &qword_27F223CE8);
    sub_24E601704(v74, &qword_27F223CE8);
    v52 = *(v44 + 8);
    v52(v75, v48);
    sub_24E601704(v43, &qword_27F2218B0);
    v52(v56, v48);
    sub_24E601704(v69, &qword_27F2218B0);
    v52(v58, v48);
    v41 = v51;
  }

  sub_24E601704(v41, &qword_27F2218B0);
  return v68;
}

uint64_t ContingentOfferDetailPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = v3;
  v58 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v51 - v7;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v68 = sub_24F928388();
  v65 = *(v68 - 8);
  v14 = MEMORY[0x28223BE20](v68);
  v59 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  type metadata accessor for ContingentOffer();
  v70 = a1;
  sub_24F928398();
  v21 = *(v9 + 16);
  v66 = a2;
  v22 = a2;
  v69 = v8;
  v23 = v21;
  v24 = v9 + 16;
  v21(v13, v22, v8);
  sub_24EB29220(&qword_27F228DA8, type metadata accessor for ContingentOffer);
  sub_24F929548();
  v64 = v71;
  if (v71)
  {
    v58 = v9;
    type metadata accessor for Artwork();
    sub_24F928398();
    v25 = v66;
    v26 = v69;
    v23(v13, v66, v69);
    v63 = v24;
    v55 = v18;
    v27 = v23;
    v53 = v23;
    sub_24EB29220(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v28 = v71;
    type metadata accessor for Video();
    sub_24F928398();
    v27(v13, v25, v26);
    sub_24EB29220(&qword_27F221590, type metadata accessor for Video);
    sub_24F929548();
    v29 = v67;
    *(v67 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_contingentOffer) = v64;
    v30 = v71;
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_artwork) = v28;
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_video) = v30;
    v56 = v30;

    v57 = v28;

    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v31 = (v65 + 8);
    v32 = *(v65 + 8);
    v33 = v68;
    v32(v20, v68);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v71;
    v34 = v55;
    sub_24F928398();
    v35 = sub_24F928278();
    v54 = v32;
    v55 = v31;
    v32(v34, v33);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v35 & 1;
    sub_24F928AD8();
    sub_24F928398();
    v52 = v13;
    v36 = v66;
    v37 = v69;
    v38 = v53;
    v53(v52, v66, v69);
    v39 = v61;
    sub_24F929548();
    v40 = v67;
    sub_24EB29268(v39, v67 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics);
    sub_24F928398();
    v41 = v52;
    v38(v52, v36, v37);
    sub_24F929548();
    sub_24EB29268(v39, v40 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics);
    v42 = v70;
    sub_24F928398();
    v43 = v66;
    v38(v41, v66, v37);
    sub_24F929548();
    sub_24EB29268(v39, v67 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics);
    v44 = v59;
    v45 = v42;
    (*(v65 + 16))(v59, v42, v68);
    v46 = v60;
    v38(v60, v43, v69);
    v47 = v62;
    v48 = AppPromotionDetailPage.init(deserializing:using:)(v44, v46);
    if (!v47)
    {
      v46 = v48;
    }

    (*(v58 + 8))(v43, v69);
    v54(v45, v68);
  }

  else
  {
    v46 = sub_24F92AC38();
    sub_24EB29220(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x65676E69746E6F63;
    v49[1] = 0xEF726566664F746ELL;
    v49[2] = v58;
    (*(*(v46 - 8) + 104))(v49, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    (*(v9 + 8))(v66, v69);
    (*(v65 + 8))(v70, v68);
    type metadata accessor for ContingentOfferDetailPage();
    swift_deallocPartialClassInstance();
  }

  return v46;
}

uint64_t sub_24EB28FC0()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
}

uint64_t ContingentOfferDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
  return v0;
}

uint64_t ContingentOfferDetailPage.__deallocating_deinit()
{
  ContingentOfferDetailPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContingentOfferDetailPage()
{
  result = qword_27F228DB0;
  if (!qword_27F228DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB29220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EB29268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24EB292E0()
{
  sub_24EB293E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EB293E8()
{
  if (!qword_27F228DC0)
  {
    sub_24F928AD8();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F228DC0);
    }
  }
}

uint64_t TapToRate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_24F9285B8();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v38 - v7;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v38 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v40 = v9;
  v22 = *(v9 + 8);
  v22(v18, v8);
  v23 = (v3 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_title);
  *v23 = v19;
  v23[1] = v21;
  sub_24F928398();
  v24 = sub_24F9282C8();
  v48 = v8;
  v22(v15, v8);
  if ((v24 & 0x100000000) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v45 = v3;
  v46 = a1;
  v26 = v3 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_rating;
  *v26 = v25;
  *(v26 + 4) = 0;
  v27 = v42;
  sub_24F928398();
  v28 = v47;
  v29 = v43;
  v38 = *(v47 + 16);
  v38(v43, v50, v49);
  type metadata accessor for RateAction();
  v30 = swift_allocObject();
  v31 = v44;
  v32 = RateAction.init(deserializing:using:)(v27, v29);
  if (v31)
  {
    (*(v28 + 8))(v50, v49);
    v22(v46, v48);

    type metadata accessor for TapToRate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v22;
    v33 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_rateAction) = v32;
    v34 = v39;
    (*(v40 + 16))(v39, v33, v48);
    v35 = v41;
    v36 = v49;
    v38(v41, v50, v49);
    v30 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v34, v35);
    (*(v47 + 8))(v50, v36);
    v44(v33, v48);
  }

  return v30;
}

uint64_t TapToRate.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_title);

  return v1;
}

uint64_t sub_24EB29990()
{
}

uint64_t TapToRate.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t TapToRate.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRate()
{
  result = qword_27F228DC8;
  if (!qword_27F228DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentModeViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_24EB29C58(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DE0);
  MEMORY[0x28223BE20](v22);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DE8);
  MEMORY[0x28223BE20](v9);
  v23 = &v22 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (v3 == 2)
  {
    goto LABEL_3;
  }

  v16 = sub_24F9234E8();
  if ((v16 & 1) == 0)
  {
    if (sub_24F9234E8())
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF8);
      (*(*(v19 - 8) + 16))(v13, a1, v19);
      v20 = &v13[*(v11 + 36)];
      *v20 = 0;
      *(v20 + 4) = 257;
      sub_24E60169C(v13, v8, &qword_27F228DF0);
      goto LABEL_8;
    }

LABEL_3:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF8);
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_24EB2A07C();
    sub_24EB2A18C();
    return sub_24F924E28();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF8);
  (*(*(v17 - 8) + 16))(v13, a1, v17);
  v18 = &v13[*(v11 + 36)];
  *v18 = 0;
  *(v18 + 4) = 1;
  sub_24E60169C(v13, v8, &qword_27F228DF0);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_24EB2A100();
  v21 = v23;
  sub_24F924E28();
  sub_24E60169C(v21, v6, &qword_27F228DE8);
  swift_storeEnumTagMultiPayload();
  sub_24EB2A07C();
  sub_24EB2A18C();
  sub_24F924E28();
  sub_24E601704(v21, &qword_27F228DE8);
  return sub_24E601704(v13, &qword_27F228DF0);
}

unint64_t sub_24EB2A07C()
{
  result = qword_27F228E00;
  if (!qword_27F228E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228DE8);
    sub_24EB2A100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E00);
  }

  return result;
}

unint64_t sub_24EB2A100()
{
  result = qword_27F228E08;
  if (!qword_27F228E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228DF0);
    sub_24EB2A18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E08);
  }

  return result;
}

unint64_t sub_24EB2A18C()
{
  result = qword_27F228E10;
  if (!qword_27F228E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E10);
  }

  return result;
}

unint64_t sub_24EB2A1F4()
{
  result = qword_27F228E18;
  if (!qword_27F228E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E20);
    sub_24EB2A07C();
    sub_24EB2A18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E18);
  }

  return result;
}

void *SponsoredSearchOrganic.init(adamId:assetInformation:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t SponsoredSearchOrganic.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void SponsoredSearchOrganic.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F92C318();
  v5 = sub_24F92C2F8();
  v7 = v6;

  if (v7)
  {
    v8 = sub_24F92C318();
    v9 = [v8 toDictionary];

    if (v9)
    {
      v10 = sub_24F92AE38();

      *a2 = v5;
      a2[1] = v7;
      a2[2] = v10;
      return;
    }

    sub_24F92C318();
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
  }

  else
  {
    sub_24F92C318();
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
  }

  sub_24F92A828();
  swift_willThrow();
}

Swift::Int __swiftcall ProductPresenter.numberOfNonShelfRows(for:)(Swift::Int a1)
{
  v3 = sub_24ED570C8();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(v3 + 8 * a1 + 32);

      v5 = *(v4 + 16);

      if (v5 == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_29;
  }

  v15 = MEMORY[0x253052270](a1, v3);

  v16 = *(v15 + 16);
  swift_unknownObjectRelease();
  if (v16 == 2)
  {
LABEL_5:
    v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded) == 1)
    {
      if (v6)
      {
        v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
      }

      else
      {
        v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
      swift_beginAccess();
      v10 = *(v7 + v9);

      if (!(v10 >> 62))
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

        return v11;
      }

LABEL_29:
      v11 = sub_24F92C738();
      goto LABEL_14;
    }

    if (v6)
    {
      v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return 1;
      }
    }

    v12 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
    swift_beginAccess();
    v13 = *(v8 + v12);

    if (v13 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v11)
    {
      return v11;
    }

    return 1;
  }

LABEL_24:

  return sub_24ED58388(a1);
}

double ProductPresenter.data(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (sub_24F91FA28() < 2)
  {
    if (qword_27F2106C0 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F942000;
    sub_24F9283A8();
    v7 = sub_24F91FA78();
    v27 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
    sub_24F928438();
    sub_24E857CC8(v26);
    sub_24F9283A8();
    v9 = sub_24F91FA28();
    v27 = MEMORY[0x277D83B88];
    v26[0] = v9;
    sub_24F928438();
    sub_24E857CC8(v26);
    sub_24F9283A8();
    sub_24F92A5A8();

    goto LABEL_44;
  }

  v10 = sub_24ED570C8();
  if (v10 >> 62)
  {
    v11 = sub_24F92C738();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24F91FA18() >= v11)
  {
    goto LABEL_44;
  }

  v12 = sub_24ED570C8();
  v13 = sub_24F91FA18();
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v12 + 8 * v13 + 32);

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_38;
  }

  v14 = MEMORY[0x253052270](v13, v12);
LABEL_12:

  if (*(v14 + 16) != 2)
  {
    sub_24ED58CEC(a2);

    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
LABEL_43:

LABEL_44:
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -256;
      return result;
    }
  }

  v17 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v12 = *(v15 + v17);

  if (!(v12 >> 62))
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v28 = MEMORY[0x277D84F90];
      sub_24F92C978();
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  if (!sub_24F92C738())
  {
LABEL_42:

    goto LABEL_43;
  }

  v25 = sub_24F92C738();
  if (!v25)
  {
    goto LABEL_48;
  }

  v18 = v25;
  v28 = MEMORY[0x277D84F90];
  sub_24F92C978();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_23:
  v19 = 0;
  v20 = v12 & 0xC000000000000001;
  do
  {
    if (v20)
    {
      MEMORY[0x253052270](v19, v12);
    }

    else
    {
    }

    ++v19;

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v18 != v19);
  for (i = v28; ; i = MEMORY[0x277D84F90])
  {
    v22 = sub_24F91FA08();
    if (v20)
    {
      break;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v12 + 8 * v22 + 32);

      goto LABEL_33;
    }

    __break(1u);
LABEL_48:
    v20 = v12 & 0xC000000000000001;
  }

  v23 = MEMORY[0x253052270](v22, v12);
LABEL_33:

  v24 = *(v3 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded);
  *a2 = v23;
  *(a2 + 8) = i;
  *(a2 + 16) = v24;
  *(a2 + 41) = 1;
  return result;
}

unint64_t ProductPresenter.isSelectable(at:)()
{
  v0 = sub_24ED570C8();
  result = sub_24F91FA18();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ProductPresenter.reloadTopLockup()()
{
  if (sub_24F92CE08())
  {
    return;
  }

  v1 = sub_24ED570C8();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_15:

    return;
  }

LABEL_29:
  v3 = sub_24F92C738();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_5:
  v12 = v0;
  v4 = 0;
  v0 = 0xE500000000000000;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (*(v5 + 16) <= 1u && *(v5 + 16))
    {
      break;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      goto LABEL_20;
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

LABEL_20:

  if (*(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v8 = *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v8 = *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v8)
    {
      return;
    }
  }

  sub_24ED4E9F0(v8);
  v9 = v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_24EB2B00C()
{
  v0 = sub_24ED570C8();
  result = sub_24F91FA18();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EB2B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F929158();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EB2B224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F929158();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EB2B374()
{
  sub_24EB39C98(319, &qword_27F228E38, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24EB2B580(319, &qword_27F228E48, &unk_27F22E000, &unk_24F984240, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24EB39CFC(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24E833194();
          if (v4 <= 0x3F)
          {
            type metadata accessor for NetworkConnectionMonitor();
            if (v5 <= 0x3F)
            {
              sub_24F929158();
              if (v6 <= 0x3F)
              {
                sub_24EB2B580(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EB2B580(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24EB2B600@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchResultsPageView(0);
  sub_24E60169C(v1 + *(v10 + 56), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EB2B7E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchResultsPageView(0);
  sub_24E60169C(v1 + *(v10 + 60), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_24EB2B9D0()
{
  v1 = sub_24F925218();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v4);
  v54 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v56 = &v43[-v12];
  MEMORY[0x28223BE20](v13);
  v53 = &v43[-v14];
  MEMORY[0x28223BE20](v15);
  v55 = &v43[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v43[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v43[-v21];
  v52 = v0;
  sub_24EB2B600(&v43[-v21]);
  v23 = v2[13];
  v49 = *MEMORY[0x277CE0558];
  v48 = v23;
  v23(v19);
  v47 = v2[7];
  v47(v19, 0, 1, v1);
  v51 = v4;
  v24 = *(v4 + 48);
  sub_24E60169C(v22, v8, &qword_27F215598);
  sub_24E60169C(v19, &v8[v24], &qword_27F215598);
  v57 = v2;
  v25 = v2[6];
  v26 = v25(v8, 1, v1);
  v50 = v25;
  if (v26 == 1)
  {
    sub_24E601704(v19, &qword_27F215598);
    sub_24E601704(v22, &qword_27F215598);
    if (v25(&v8[v24], 1, v1) == 1)
    {
      v27 = v8;
LABEL_10:
      sub_24E601704(v27, &qword_27F215598);
      return 10.0;
    }
  }

  else
  {
    v28 = v55;
    sub_24E60169C(v8, v55, &qword_27F215598);
    if (v25(&v8[v24], 1, v1) != 1)
    {
      v36 = &v8[v24];
      v37 = v46;
      (v57[4])(v46, v36, v1);
      sub_24EB388F4(&qword_27F215650, MEMORY[0x277CE0570]);
      v44 = sub_24F92AFF8();
      v38 = v57[1];
      v38(v37, v1);
      sub_24E601704(v19, &qword_27F215598);
      sub_24E601704(v22, &qword_27F215598);
      v38(v55, v1);
      sub_24E601704(v8, &qword_27F215598);
      result = 10.0;
      if (v44)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_24E601704(v19, &qword_27F215598);
    sub_24E601704(v22, &qword_27F215598);
    (v57[1])(v28, v1);
  }

  sub_24E601704(v8, &unk_27F254F20);
LABEL_7:
  v29 = v53;
  sub_24EB2B7E8(v53);
  v30 = v56;
  v48(v56, v49, v1);
  v47(v30, 0, 1, v1);
  v31 = *(v51 + 48);
  v32 = v54;
  sub_24E60169C(v29, v54, &qword_27F215598);
  sub_24E60169C(v30, &v32[v31], &qword_27F215598);
  v33 = v50;
  if (v50(v32, 1, v1) == 1)
  {
    sub_24E601704(v30, &qword_27F215598);
    sub_24E601704(v29, &qword_27F215598);
    if (v33(&v32[v31], 1, v1) == 1)
    {
      v27 = v32;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v35 = v45;
  sub_24E60169C(v32, v45, &qword_27F215598);
  if (v33(&v32[v31], 1, v1) == 1)
  {
    sub_24E601704(v56, &qword_27F215598);
    sub_24E601704(v29, &qword_27F215598);
    (v57[1])(v35, v1);
LABEL_13:
    sub_24E601704(v32, &unk_27F254F20);
    return 20.0;
  }

  v39 = v57;
  v40 = v46;
  (v57[4])(v46, &v32[v31], v1);
  sub_24EB388F4(&qword_27F215650, MEMORY[0x277CE0570]);
  v41 = sub_24F92AFF8();
  v42 = v39[1];
  v42(v40, v1);
  sub_24E601704(v56, &qword_27F215598);
  sub_24E601704(v29, &qword_27F215598);
  v42(v35, v1);
  sub_24E601704(v32, &qword_27F215598);
  result = 10.0;
  if ((v41 & 1) == 0)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_24EB2C188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v76 = sub_24F921738();
  v3 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v71 - v9;
  v10 = type metadata accessor for SearchResultsPageView(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v12;
  v14 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E58);
  MEMORY[0x28223BE20](v88);
  v86 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E60);
  v17 = *(v16 - 8);
  v78 = v16;
  v79 = v17;
  MEMORY[0x28223BE20](v16);
  v89 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E68);
  v20 = *(v19 - 8);
  v81 = v19;
  v82 = v20;
  MEMORY[0x28223BE20](v19);
  v94 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E70);
  v83 = *(v22 - 8);
  v84 = v22;
  MEMORY[0x28223BE20](v22);
  v80 = &v71 - v23;
  v92 = type metadata accessor for SearchResultsPageView;
  sub_24EB391A8(v2, v14, type metadata accessor for SearchResultsPageView);
  v24 = *(v11 + 80);
  v93 = v13;
  v25 = (v24 + 16) & ~v24;
  v91 = v24;
  v73 = swift_allocObject();
  v90 = type metadata accessor for SearchResultsPageView;
  sub_24EB39210(v14, v73 + v25, type metadata accessor for SearchResultsPageView);
  v77 = v14;
  sub_24EB391A8(v2, v14, type metadata accessor for SearchResultsPageView);
  v87 = v25;
  v72 = swift_allocObject();
  sub_24EB39210(v14, v72 + v25, type metadata accessor for SearchResultsPageView);
  sub_24F921728();
  v26 = v74;
  v27 = v76;
  sub_24F9271B8();
  (*(v3 + 8))(v5, v27);
  sub_24E60169C(v26, v75, &qword_27F228E50);
  type metadata accessor for GameSearchResultsPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E78);
  sub_24F921AA8();
  sub_24F921A58();
  sub_24EB38268();
  sub_24EB388F4(&qword_27F215638, MEMORY[0x277D7EBB0]);
  sub_24EB388F4(&qword_27F215640, MEMORY[0x277D7EB90]);
  v28 = v86;
  sub_24F921D08();
  sub_24E601704(v26, &qword_27F228E50);
  v29 = *(v2 + 8);
  v30 = &v28[*(v88 + 52)];
  *v30 = *v2;
  *(v30 + 1) = v29;
  v31 = *(v2 + 200);
  *&v116[0] = *(v2 + 192);
  *(&v116[0] + 1) = v31;
  v116[1] = *(v2 + 208);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  MEMORY[0x25304CAF0](v106, v32);
  v116[0] = v106[0];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v34 = sub_24E602068(&qword_27F228F08, &qword_27F228E58);
  v35 = sub_24E9D38B0();
  v36 = v86;
  sub_24F926AB8();

  sub_24E601704(v36, &qword_27F228E58);
  *&v116[0] = *(v2 + 224);
  *(v116 + 8) = *(v2 + 232);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215710);
  MEMORY[0x25304CAF0](v106, v37);
  v38 = v77;
  sub_24EB391A8(v2, v77, v92);
  v39 = v87;
  v40 = swift_allocObject();
  sub_24EB39210(v38, v40 + v39, v90);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E000);
  *&v116[0] = v88;
  *(&v116[0] + 1) = v33;
  *&v116[1] = v34;
  *(&v116[1] + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_24EB389BC();
  v43 = v78;
  v44 = v89;
  sub_24F926AB8();

  (*(v79 + 8))(v44, v43);
  v45 = *(v2 + 112);
  v46 = *(v2 + 144);
  v113 = *(v2 + 128);
  v114 = v46;
  v47 = *(v2 + 144);
  v115 = *(v2 + 160);
  v48 = *(v2 + 48);
  v49 = *(v2 + 80);
  v109 = *(v2 + 64);
  v110 = v49;
  v50 = *(v2 + 80);
  v51 = *(v2 + 112);
  v111 = *(v2 + 96);
  v112 = v51;
  v52 = *(v2 + 16);
  v106[0] = *v2;
  v106[1] = v52;
  v53 = *(v2 + 48);
  v55 = *v2;
  v54 = *(v2 + 16);
  v107 = *(v2 + 32);
  v108 = v53;
  v103 = v113;
  v104 = v47;
  v105 = *(v2 + 160);
  v99 = v109;
  v100 = v50;
  v101 = v111;
  v102 = v45;
  v95 = v55;
  v96 = v54;
  v97 = v107;
  v98 = v48;
  sub_24EB391A8(v2, v38, v92);
  v56 = v87;
  v57 = swift_allocObject();
  sub_24EB39210(v38, v57 + v56, v90);
  sub_24E7B6680(v106, v116);
  *&v116[0] = v43;
  *(&v116[0] + 1) = v86;
  *&v116[1] = OpaqueTypeConformance2;
  *(&v116[1] + 1) = v42;
  v58 = v80;
  swift_getOpaqueTypeConformance2();
  sub_24EB38B74();
  v59 = v81;
  v60 = v94;
  sub_24F926AB8();

  v116[8] = v103;
  v116[9] = v104;
  v116[10] = v105;
  v116[4] = v99;
  v116[5] = v100;
  v116[6] = v101;
  v116[7] = v102;
  v116[0] = v95;
  v116[1] = v96;
  v116[2] = v97;
  v116[3] = v98;
  sub_24EB38BC8(v116);
  (*(v82 + 8))(v60, v59);
  v61 = *(v2 + 248);
  LOBYTE(v59) = sub_24F925818();
  sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v59)
  {
    sub_24F925848();
  }

  v62 = sub_24EA91914(v61);
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_24F925808();
  *&v95 = v62;
  *(&v95 + 1) = v64;
  *&v96 = v66;
  *(&v96 + 1) = v68;
  LOBYTE(v97) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F30);
  v69 = v85;
  sub_24F9252D8();
  return (*(v83 + 32))(v69, v58, v84);
}

uint64_t sub_24EB2CC30(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_24F92B7F8();
  v2[7] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_24EB2CCC8, v4, v3);
}

uint64_t sub_24EB2CCC8()
{
  v1 = v0[6];
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38);
  sub_24F926F38();
  v0[10] = v0[4];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_24EB2CD94;
  v5 = v0[5];

  return sub_24F7D6014(v5);
}

uint64_t sub_24EB2CD94()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24EB2CF14;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24EB2CEB0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24EB2CEB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB2CF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB2CF84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v107 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F40);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v87 - v5;
  v6 = type metadata accessor for SearchResultsPageView(0);
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E98);
  MEMORY[0x28223BE20](v102);
  v9 = (&v87 - v8);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E90);
  v93 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v92 = &v87 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E88);
  v95 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v94 = &v87 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F48);
  v98 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v97 = &v87 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F50);
  MEMORY[0x28223BE20](v101);
  v104 = &v87 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F58);
  v91 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v100 = &v87 - v14;
  v15 = type metadata accessor for EmptyState();
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v87 - v19;
  v99 = a2;
  v21 = *(a2 + 184);
  *&v109 = *(a2 + 176);
  *(&v109 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38);
  sub_24F926F38();
  v22 = *&v113[0];
  swift_getKeyPath();
  *&v109 = v22;
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
  swift_beginAccess();
  sub_24E60169C(v22 + v23, v20, &qword_27F228F60);

  v24 = type metadata accessor for GameSearchResultsPage(0);
  if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
  {
    sub_24E601704(v20, &qword_27F228F60);
    *&v109 = 0xD000000000000011;
    *(&v109 + 1) = 0x800000024FA539A0;
    sub_24F92C7F8();
    v111 = 0;
    v110 = 0u;
    v109 = 0u;
    v25 = v15[6];
    v26 = sub_24F92A6D8();
    (*(*(v26 - 8) + 56))(&v17[v25], 1, 1, v26);
    v27 = v15[7];
    v28 = sub_24F929608();
    (*(*(v28 - 8) + 56))(&v17[v27], 1, 1, v28);
    v29._countAndFlagsBits = 0xD000000000000022;
    v29._object = 0x800000024FA539C0;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v31 = localizedString(_:comment:)(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x6554686372616573;
    *(inited + 40) = 0xEA00000000006D72;
    v33 = *(v99 + 24);
    *(inited + 48) = *(v99 + 16);
    *(inited + 56) = v33;

    v34 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F219F90);
    v35._countAndFlagsBits = 0xD000000000000025;
    v35._object = 0x800000024FA539F0;
    v36 = localizedString(_:with:)(v35, v34);

    v114 = 0;
    memset(v113, 0, sizeof(v113));
    *(v17 + 56) = 0u;
    *(v17 + 9) = 0;
    *(v17 + 40) = 0u;
    sub_24E7D5870(&v109, (v17 + 40));
    v37 = &v17[v15[8]];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v17[v15[9]] = v31;
    *&v17[v15[10]] = v36;
    *&v17[v15[11]] = 0;
    v38 = &v17[v15[12]];
    *(v38 + 32) = 0;
    *v38 = 0u;
    *(v38 + 16) = 0u;
    sub_24E7D5870(v113, v38);
    v39 = &v17[v15[13]];
    *v39 = 0;
    *(v39 + 1) = 0;
    v17[v15[14]] = 2;
    v17[v15[15]] = 0;
    *&v109 = swift_getKeyPath();
    BYTE8(v109) = 0;
    v99 = sub_24E78AE10();
    v40 = v100;
    sub_24F921D38();

    v41 = v91;
    (*(v91 + 16))(v104, v40, v108);
    swift_storeEnumTagMultiPayload();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EA0);
    v43 = sub_24E602068(&qword_27F228EA8, &qword_27F228E98);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EB0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950);
    v47 = sub_24EB384F4();
    v48 = sub_24E669340();
    v49 = sub_24EB38868();
    *&v109 = v45;
    *(&v109 + 1) = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
    *&v110 = v46;
    *(&v110 + 1) = v47;
    v111 = v48;
    v112 = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v109 = v44;
    *(&v109 + 1) = OpaqueTypeConformance2;
    v51 = swift_getOpaqueTypeConformance2();
    *&v109 = v102;
    *(&v109 + 1) = v42;
    *&v110 = v43;
    *(&v110 + 1) = v51;
    v52 = swift_getOpaqueTypeConformance2();
    *&v109 = v103;
    *(&v109 + 1) = v52;
    v53 = swift_getOpaqueTypeConformance2();
    *&v109 = v105;
    *(&v109 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    *&v109 = &type metadata for EmptyStateComponent;
    *(&v109 + 1) = v99;
    swift_getOpaqueTypeConformance2();
    v54 = v108;
    sub_24F924E28();
    (*(v41 + 8))(v100, v54);
    return sub_24EB38C2C(v17, type metadata accessor for EmptyState);
  }

  else
  {
    v56 = *(v20 + 2);

    sub_24EB38C2C(v20, type metadata accessor for GameSearchResultsPage);
    *v9 = sub_24F927618();
    v9[1] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F68);
    *&v109 = v56;
    swift_getKeyPath();
    v58 = v89;
    sub_24EB391A8(v99, v89, type metadata accessor for SearchResultsPageView);
    v59 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v60 = swift_allocObject();
    sub_24EB39210(v58, v60 + v59, type metadata accessor for SearchResultsPageView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F70);
    sub_24E602068(&qword_27F228F78, &qword_27F225D58);
    sub_24EB38D50();
    v61 = sub_24F927228();
    v100 = &v87;
    MEMORY[0x28223BE20](v61);
    sub_24F924C88();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EA0);
    v63 = sub_24E602068(&qword_27F228EA8, &qword_27F228E98);
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EB0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940);
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950);
    v67 = sub_24EB384F4();
    v68 = sub_24E669340();
    v69 = sub_24EB38868();
    *&v109 = v65;
    *(&v109 + 1) = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
    *&v110 = v66;
    *(&v110 + 1) = v67;
    v111 = v68;
    v112 = v69;
    v70 = swift_getOpaqueTypeConformance2();
    *&v109 = v64;
    *(&v109 + 1) = v70;
    v86 = swift_getOpaqueTypeConformance2();
    v71 = v92;
    v72 = v102;
    sub_24F926218();
    sub_24E601704(v9, &qword_27F228E98);
    v73 = v96;
    sub_24F925078();
    v74 = sub_24F925088();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    v75 = sub_24F925818();
    *&v109 = v72;
    *(&v109 + 1) = v62;
    v110 = __PAIR128__(v86, v63);
    v76 = swift_getOpaqueTypeConformance2();
    v77 = v94;
    v78 = v103;
    MEMORY[0x25304C060](v73, v75, v103, v76);
    sub_24E601704(v73, &qword_27F228F40);
    (*(v93 + 8))(v71, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FC8);
    sub_24F9242C8();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_24F93DE60;
    sub_24F9242B8();
    *&v109 = v78;
    *(&v109 + 1) = v76;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v97;
    v82 = v105;
    MEMORY[0x25304C1C0](2, v79, v105, v80);

    (*(v95 + 8))(v77, v82);
    v83 = v98;
    v84 = v106;
    (*(v98 + 16))(v104, v81, v106);
    swift_storeEnumTagMultiPayload();
    *&v109 = v82;
    *(&v109 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    v85 = sub_24E78AE10();
    *&v109 = &type metadata for EmptyStateComponent;
    *(&v109 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v83 + 8))(v81, v84);
  }
}

uint64_t sub_24EB2E150@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v66 = sub_24F921738();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for GameSearchResultsTab(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FB0);
  MEMORY[0x28223BE20](v67);
  v82 = &v63 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FA0);
  MEMORY[0x28223BE20](v71);
  v77 = &v63 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F90);
  MEMORY[0x28223BE20](v76);
  v19 = &v63 - v18;
  sub_24EB391A8(a1, v11, type metadata accessor for GameSearchResultsTab);
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  v22 = *(a2 + 24);
  v24 = *(a2 + 26);
  v23 = *(a2 + 27);
  v74 = *(a2 + 25);
  v75 = v22;
  v86 = v22;
  v87 = v74;
  v88 = v24;
  v89 = v23;
  v72 = v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  MEMORY[0x25304CAF0](&v84);
  v79 = v20;
  v80 = v19;
  v78 = v21;
  v73 = v24;
  if (v85)
  {
    if (v21 == v84 && v85 == v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_24F92CE08();
    }
  }

  else
  {
    v25 = 0;
  }

  sub_24E615E00((a2 + 296), &v14[v12[6]]);
  v26 = *(a2 + 42);
  v27 = *(a2 + 23);
  v86 = *(a2 + 22);
  v87 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38);
  sub_24F926F38();
  v28 = *(type metadata accessor for SearchResultsPageView(0) + 52);
  v29 = v12[9];
  v30 = sub_24F929158();
  (*(*(v30 - 8) + 16))(&v14[v29], &a2[v28], v30);
  sub_24EB39210(v11, v14, type metadata accessor for GameSearchResultsTab);
  v14[v12[5]] = v25 & 1;
  *&v14[v12[7]] = v26;
  type metadata accessor for SearchResultsPageViewModel();
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F927378();
  v31 = &v14[v12[10]];
  sub_24F929EB8();
  v84 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v87;
  *v31 = v86;
  *(v31 + 1) = v32;
  sub_24F921728();
  v33 = v65;
  v34 = v66;
  (*(v65 + 16))(v64, v8, v66);
  sub_24F926F28();
  (*(v33 + 8))(v8, v34);
  v35 = &v14[v12[12]];
  LOBYTE(v84) = 0;
  sub_24F926F28();
  v36 = v87;
  *v35 = v86;
  *(v35 + 1) = v36;
  v37 = sub_24F926C28();
  MEMORY[0x28223BE20](v37);
  *(&v63 - 4) = v38;
  *(&v63 - 3) = 0x3FE0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215960);
  sub_24EB388F4(&qword_27F228FB8, type metadata accessor for SearchResultsPageView.TabContentView);
  sub_24E669340();
  v62 = sub_24EB390CC();
  v39 = v68;
  sub_24F926B08();

  sub_24EB38C2C(v14, type metadata accessor for SearchResultsPageView.TabContentView);
  KeyPath = swift_getKeyPath();
  v41 = v82;
  (*(v69 + 32))(v82, v39, v70);
  v42 = v41 + *(v67 + 36);
  *v42 = KeyPath;
  *(v42 + 8) = 0;
  v44 = v74;
  v43 = v75;
  v86 = v75;
  v87 = v74;
  v46 = v72;
  v45 = v73;
  v88 = v73;
  v89 = v72;
  MEMORY[0x25304CAF0](&v84, v83);
  v47 = v79;
  v48 = v80;
  v50 = v77;
  v49 = v78;
  if (!v85)
  {
    goto LABEL_13;
  }

  if (v78 != v84 || v85 != v79)
  {
    v52 = sub_24F92CE08();

    v51 = 1.0;
    if (v52)
    {
      goto LABEL_14;
    }

LABEL_13:
    v51 = 0.0;
    goto LABEL_14;
  }

  v51 = 1.0;
LABEL_14:
  sub_24E6009C8(v82, v50, &qword_27F228FB0);
  *(v50 + *(v71 + 36)) = v51;
  v86 = v43;
  v87 = v44;
  v88 = v45;
  v89 = v46;
  MEMORY[0x25304CAF0](&v84, v83);
  if (!v85)
  {
    goto LABEL_19;
  }

  if (v49 == v84 && v85 == v47)
  {

    v53 = 2.0;
    goto LABEL_20;
  }

  v54 = sub_24F92CE08();

  v53 = 2.0;
  if ((v54 & 1) == 0)
  {
LABEL_19:
    v53 = 1.0;
  }

LABEL_20:
  sub_24E6009C8(v50, v48, &qword_27F228FA0);
  *(v48 + *(v76 + 36)) = v53;
  v86 = v43;
  v87 = v44;
  v88 = v45;
  v89 = v46;

  MEMORY[0x25304CAF0](&v84, v83);
  if (v85)
  {
    if (v49 == v84 && v85 == v47)
    {

      v55 = 0;
    }

    else
    {
      v56 = sub_24F92CE08();

      v55 = v56 ^ 1;
    }
  }

  else
  {

    v55 = 1;
  }

  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  *(v58 + 16) = v55 & 1;
  v59 = v81;
  sub_24E6009C8(v48, v81, &qword_27F228F90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F70);
  v61 = (v59 + *(result + 36));
  *v61 = v57;
  v61[1] = sub_24E600A48;
  v61[2] = v58;
  return result;
}

uint64_t sub_24EB2EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = sub_24F924C18();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228ED0);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v53 - v6;
  v7 = type metadata accessor for SearchResultsPageView.ToolbarView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215940);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EB0);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - v11;
  v12 = *(a1 + 16);
  v13 = *(a2 + 200);
  v69 = *(a2 + 192);
  v70 = v13;
  v71 = *(a2 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  sub_24F927198();
  v53 = v74;
  v15 = v75;
  v14 = v76;
  v16 = *(a2 + 184);
  v69 = *(a2 + 176);
  v70 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38);
  sub_24F926F38();
  v17 = *(a2 + 288);
  *&v74 = *(a2 + 280);
  *(&v74 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F58();
  v18 = v69;
  v19 = v70;
  v20 = v71;
  *&v9[*(v7 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  *v9 = v12;
  *(v9 + 8) = v53;
  *(v9 + 3) = v15;
  *(v9 + 4) = v14;
  type metadata accessor for SearchResultsPageViewModel();
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F927378();
  v21 = &v9[*(v7 + 28)];
  *v21 = v18;
  *(v21 + 1) = v19;
  *(v21 + 2) = v20;
  v22 = sub_24EB388F4(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView);
  v23 = v54;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228ED8);
  v69 = v7;
  v70 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E8F20E4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EE8);
  v27 = sub_24EB38750();
  v28 = v56;
  v69 = v56;
  v70 = &type metadata for IsDebugFocusOverlayEnabled;
  *&v71 = v26;
  *(&v71 + 1) = OpaqueTypeConformance2;
  v72 = v25;
  v73 = v27;
  *&v53 = MEMORY[0x277CE0E68];
  swift_getOpaqueTypeConformance2();
  v29 = v55;
  sub_24F926B08();
  (*(v57 + 8))(v23, v28);
  sub_24EB38C2C(v9, type metadata accessor for SearchResultsPageView.ToolbarView);
  LOBYTE(v9) = sub_24F925818();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EC8) + 36);
  *v38 = v9;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  LOBYTE(v9) = sub_24F925828();
  sub_24EB2B9D0();
  sub_24F923318();
  v39 = v58;
  v40 = v29 + *(v58 + 36);
  *v40 = v9;
  *(v40 + 8) = v41;
  *(v40 + 16) = v42;
  *(v40 + 24) = v43;
  *(v40 + 32) = v44;
  *(v40 + 40) = 0;
  v66 = sub_24F926C28();
  v67 = 0x3FE0000000000000;
  v68 = v29;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215950);
  v46 = sub_24EB384F4();
  v47 = sub_24E669340();
  v52 = sub_24EB38868();
  v48 = v59;
  sub_24F926B08();

  sub_24E601704(v29, &qword_27F215940);
  v49 = v62;
  sub_24F924C08();
  v69 = v39;
  v70 = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
  *&v71 = v45;
  *(&v71 + 1) = v46;
  v72 = v47;
  v73 = v52;
  swift_getOpaqueTypeConformance2();
  v50 = v60;
  sub_24F9265B8();
  (*(v63 + 8))(v49, v65);
  return (*(v61 + 8))(v48, v50);
}