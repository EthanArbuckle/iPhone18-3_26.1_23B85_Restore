char *ClearAppUsageDataAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearAppUsageDataAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearAppUsageDataAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t ClearAppUsageDataAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearAppUsageDataAction()
{
  result = qword_27F234450;
  if (!qword_27F234450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF3B2AC@<X0>(uint64_t *a1@<X8>)
{
  v80 = a1;
  v2 = sub_24F924B38();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F9241F8();
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223968);
  v69 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223970);
  MEMORY[0x28223BE20](v67);
  v7 = &v67 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223978);
  MEMORY[0x28223BE20](v71);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223980);
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v67 - v11;
  v12 = *(v1 + 64);
  v88 = v12;
  v13 = *(v1 + 48);
  v86[2] = *(v1 + 32);
  v87 = v13;
  v14 = *(v1 + 16);
  v86[0] = *v1;
  v86[1] = v14;
  v15 = *(&v87 + 1);
  v79 = v16;
  if (*(&v87 + 1))
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v12;
    v18 = sub_24E972460;
  }

  else
  {
    v18 = CGSizeMake;
    v17 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  MEMORY[0x28223BE20](v19);
  *(&v67 - 2) = v86;
  sub_24E5FCA4C(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223988);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223990);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223998);
  v22 = sub_24E602068(&qword_27F2239A0, &qword_27F223998);
  v82 = v21;
  v83 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v20;
  v83 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v68;
  sub_24F926F88();
  v25 = v87;
  v26 = sub_24F927618();
  v28 = v27;
  (*(v69 + 32))(v7, v24, v70);
  v29 = &v7[*(v67 + 36)];
  *v29 = v25;
  *(v29 + 1) = v26;
  *(v29 + 2) = v28;
  v30 = &v9[*(v71 + 36)];
  v31 = *MEMORY[0x277CE0118];
  v32 = v76;
  v70 = *(v76 + 104);
  v33 = v77;
  v70(v30, v31, v77);
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0) + 36)] = 256;
  sub_24E6009C8(v7, v9, &qword_27F223970);

  v34 = v72;
  sub_24F9241E8();
  sub_24E9A0198();
  sub_24E9A0334(&qword_27F212838, MEMORY[0x277CDDB18]);
  v35 = v74;
  sub_24F926178();
  (*(v73 + 8))(v34, v35);
  sub_24E601704(v9, &qword_27F223978);
  v84 = sub_24F9271D8();
  v85 = sub_24E9A0334(&qword_27F214E38, MEMORY[0x277CE1260]);
  v36 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v37 = v70;
  v70(v36, v31, v33);
  __swift_project_boxed_opaque_existential_1(&v82, v84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = &v67;
  v39 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = (&v67 - v40);
  v42 = v75;
  (v37)(v75, *MEMORY[0x277CE0128], v33, v39);
  LOBYTE(v25) = sub_24F924B28();
  v43 = v33;
  v44 = v81;
  (*(v32 + 8))(v42, v43);
  *v41 = ((v25 & 1) == 0) | 0xC00C000000000000;
  swift_getAssociatedConformanceWitness();
  v45 = sub_24F927348();
  v46 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239D0);
  v49 = v78;
  v48 = v79;
  v50 = v80;
  (*(v78 + 16))(v80 + v47[9], v44, v79);
  *v50 = v45;
  v50[1] = v46;
  v50[2] = 0x4008000000000000;
  v51 = v50 + v47[10];

  *v51 = sub_24F923398() & 1;
  *(v51 + 1) = v52;
  v51[16] = v53 & 1;
  v54 = v50 + v47[11];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v55 = qword_27F24E488;
  v56 = sub_24F923398();
  v58 = v57;
  v60 = v59;
  v61 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239D8) + 36);
  *v61 = v55;
  v61[8] = v56 & 1;
  *(v61 + 2) = v58;
  v61[24] = v60 & 1;
  LOBYTE(v55) = sub_24F923398();
  v63 = v62;
  LOBYTE(v58) = v64;

  (*(v49 + 8))(v44, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239E0);
  v66 = v50 + *(result + 36);
  *v66 = v55 & 1;
  *(v66 + 1) = v63;
  v66[16] = v58 & 1;
  return result;
}

uint64_t sub_24EF3BC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_24F9248C8();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223998);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223990);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  *v8 = sub_24F927618();
  v8[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239E8);
  sub_24EF3BF24(a1, v8 + *(v13 + 44));
  sub_24F9248B8();
  v14 = sub_24E602068(&qword_27F2239A0, &qword_27F223998);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v20);
  sub_24E601704(v8, &qword_27F223998);
  v22 = *a1;
  v23 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  *&v22 = v6;
  *(&v22 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_24F9269C8();

  return (*(v18 + 8))(v11, v15);
}

uint64_t sub_24EF3BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_24F924848();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F0);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v53 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F8);
  MEMORY[0x28223BE20](v59);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v12;
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - v14;
  v15 = sub_24F9271D8();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A00);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A08);
  MEMORY[0x28223BE20](v21);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24F924B38();
  (*(*(v30 - 8) + 104))(v17, v29, v30);
  v31 = a1;
  if (*(a1 + 48))
  {
    v32 = *(a1 + 48);
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v32 = sub_24F926D08();
  }

  sub_24E9A0384(v17, v20);
  *&v20[*(v18 + 36)] = v32;

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v20, v25, &qword_27F223A00);
  v33 = &v25[*(v21 + 36)];
  v34 = v71;
  *v33 = v70;
  *(v33 + 1) = v34;
  *(v33 + 2) = v72;
  sub_24E6009C8(v25, v28, &qword_27F223A08);
  v35 = v31;
  LOBYTE(v67) = *(v31 + 34);
  SystemImage.rawValue.getter();
  v36 = sub_24F926DF8();
  v37 = sub_24F925908();
  (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
  v38 = sub_24F925968();
  sub_24E601704(v7, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  v67 = v36;
  v68 = KeyPath;
  v69 = v38;
  sub_24F925958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
  sub_24E60156C();
  v40 = v60;
  sub_24F9260C8();

  v41 = *(v35 + 24);
  v67 = v41;
  LOBYTE(v68) = *(v35 + 32);
  if (v68 == 1)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_24F92BDC8();
    v42 = sub_24F9257A8();
    sub_24F921FD8();

    v43 = v54;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v67, &qword_27F223A10);
    (*(v55 + 8))(v43, v56);
    if (v66 != 1)
    {
      goto LABEL_12;
    }
  }

  v44 = *(v35 + 40);
  if (!v44)
  {
    if (*(v35 + 33))
    {
      v45 = sub_24F926C88();
LABEL_13:
      v44 = v45;
      goto LABEL_14;
    }

LABEL_12:
    v45 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_13;
  }

LABEL_14:
  v46 = v58;
  (*(v62 + 32))(v58, v40, v63);
  *(v46 + *(v59 + 36)) = v44;
  v47 = v61;
  sub_24E6009C8(v46, v61, &qword_27F2239F8);
  v48 = v57;
  sub_24E9A03F0(v28, v57);
  v49 = v64;
  sub_24EF3C6E0(v47, v64);
  v50 = v65;
  sub_24E9A03F0(v48, v65);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A18);
  sub_24EF3C6E0(v49, v50 + *(v51 + 48));
  sub_24E601704(v47, &qword_27F2239F8);
  sub_24E601704(v28, &qword_27F223A08);
  sub_24E601704(v49, &qword_27F2239F8);
  return sub_24E601704(v48, &qword_27F223A08);
}

uint64_t sub_24EF3C690()
{

  return swift_deallocObject();
}

uint64_t sub_24EF3C6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SmallBreakout.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SmallBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SmallBreakout.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v62 = *v3;
  v72 = sub_24F9285B8();
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = v60 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v60 - v19;
  v3[6] = 0;
  v63 = v3 + 6;
  v73 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v67 = v14;
  v65 = v15;
  if (v22)
  {
    v74 = v21;
    v75 = v22;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v11;
    v28 = v14;
    v30 = v29;
    (*(v27 + 8))(v13, v10);
    v74 = v26;
    v75 = v30;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v66 = v23;
  v23(v24, v25);
  v31 = v77;
  *(v3 + 4) = v76;
  *(v3 + 5) = v31;
  v3[12] = v78;
  sub_24F929608();
  sub_24F928398();
  v32 = v69 + 16;
  v33 = *(v69 + 16);
  v34 = v72;
  (v33)(v79, v68, v72);
  v35 = v64;
  sub_24F929548();
  v70 = v3;
  v61 = OBJC_IVAR____TtC12GameStoreKit13SmallBreakout_impressionMetrics;
  sub_24E65E0D4(v35, v3 + OBJC_IVAR____TtC12GameStoreKit13SmallBreakout_impressionMetrics);
  v36 = v34;
  v37 = v71;
  v33();
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v38 = v37;
  v39 = v33;
  v40 = v32;
  (v33)(v79, v38, v36);
  sub_24EF3D434(&qword_27F225B08, type metadata accessor for BreakoutDetails);
  sub_24F929548();
  v41 = v76;
  if (v76)
  {
    v70[2] = v76;
    v64 = v41;
    type metadata accessor for OfferDisplayProperties();

    v42 = v73;
    sub_24F928398();
    v43 = v79;
    v44 = v72;
    (v39)(v79, v71, v72);
    v60[1] = v40;
    v60[0] = v39;
    sub_24EF3D434(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
    sub_24F929548();
    v70[3] = v76;
    type metadata accessor for Artwork();
    sub_24F928398();
    v45 = v71;
    (v39)(v43, v71, v44);
    sub_24EF3D434(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v46 = v70;
    v70[4] = v76;
    v47 = v42;
    sub_24F928398();
    v48 = JSONObject.appStoreColor.getter();
    v49 = v66;
    v50 = v67;
    v66(v17, v67);
    v46[5] = v48;
    v51 = v46;
    type metadata accessor for Action();
    sub_24F928398();
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v17, v45);
    v49(v17, v50);
    swift_beginAccess();
    v46[6] = v52;

    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_24F928398();
    v53 = v72;
    (v60[0])(v79, v45, v72);
    sub_24EF3D434(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_24F929548();

    v54 = *(v69 + 8);
    v54(v68, v53);
    v49(v47, v67);
    v54(v45, v53);
    v46[7] = v74;
  }

  else
  {
    v55 = sub_24F92AC38();
    sub_24EF3D434(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v56 = 0x736C6961746564;
    v56[1] = 0xE700000000000000;
    v56[2] = v62;
    (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D22530], v55);
    swift_willThrow();
    v57 = *(v69 + 8);
    v58 = v72;
    v57(v68, v72);
    v66(v73, v67);
    v57(v71, v58);
    v51 = v70;

    sub_24E6585F8((v51 + 8));
    sub_24EB05BC8(v51 + v61);
    type metadata accessor for SmallBreakout();
    swift_deallocPartialClassInstance();
  }

  return v51;
}

uint64_t type metadata accessor for SmallBreakout()
{
  result = qword_27F234468;
  if (!qword_27F234468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SmallBreakout.backgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_24EF3D1DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

uint64_t sub_24EF3D274(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t SmallBreakout.deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit13SmallBreakout_impressionMetrics);
  return v0;
}

uint64_t SmallBreakout.__deallocating_deinit()
{
  SmallBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF3D434(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24EF3D48C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SmallBreakout();
  v7 = swift_allocObject();
  result = SmallBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF3D554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_24EF3D5AC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EF3D760()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EF3D7B8()
{
  result = qword_27F216298;
  if (!qword_27F216298)
  {
    type metadata accessor for GameCenterSignOutAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216298);
  }

  return result;
}

uint64_t sub_24EF3D810(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF3D8AC, 0, 0);
}

uint64_t sub_24EF3D8AC()
{
  v1 = v0[10];
  v2 = [objc_opt_self() local];
  v0[6] = sub_24EF3DC28;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24E9FABA0;
  v0[5] = &block_descriptor_93;
  v3 = _Block_copy(v0 + 2);
  [v2 signOutAndOptOut:1 completionHandler:v3];
  _Block_release(v3);

  v4 = type metadata accessor for Player(0);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v0[12] = 0;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_24EF3DA44;
  v6 = v0[10];

  return sub_24F64B8C4(v6, v0 + 12);
}

uint64_t sub_24EF3DA44()
{
  v1 = *(*v0 + 80);

  sub_24E601704(v1, &unk_27F23E1F0);

  return MEMORY[0x2822009F8](sub_24EF3DB6C, 0, 0);
}

uint64_t sub_24EF3DB6C()
{
  v1 = *(v0 + 64);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void sub_24EF3DC28(NSObject *a1)
{
  if (!a1)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E8E0);
    oslog = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, oslog, v11, "Sign out succeeded.", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8E0);
  v4 = a1;
  oslog = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, oslog, v5, "Sign out error but continue to proceed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

uint64_t sub_24EF3DE84(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v11[4] = &unk_24F9B2E30;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24EF3E008()
{

  return swift_deallocObject();
}

uint64_t sub_24EF3E040(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EF3D810(a1, v4);
}

uint64_t sub_24EF3E0EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EF3E178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v109 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v96 - v11;
  v119 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v119);
  v129 = (&v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for PlayerAvatarView(0);
  v118 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v117 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v96 - v15;
  v17 = sub_24F929888();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v104 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v103);
  v106 = &v96 - v23;
  v108 = type metadata accessor for OverlappingPlayerAvatarsView();
  MEMORY[0x28223BE20](v108);
  v105 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v107 = &v96 - v25;
  v26 = type metadata accessor for Player(0) - 8;
  MEMORY[0x28223BE20](v26);
  v115 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v116 = &v96 - v30;
  v31 = *(a1 + 16);
  if (v31)
  {
    v97 = v22;
    v98 = v18;
    v99 = v17;
    v100 = a2;
    v32 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v111 = (v5 + 56);
    v127 = *(v29 + 72);
    v33 = MEMORY[0x277D84F90];
    v96 = v32;
    v34 = v32;
    v35 = v31;
    v114 = v31;
    v113 = v4;
    v112 = v16;
    v110 = v9;
    do
    {
      v124 = v35;
      v125 = v34;
      v126 = v33;
      v36 = v116;
      sub_24E70D960(v34, v116);
      v37 = *(v36 + 24);
      v122 = *(v36 + 16);
      v38 = type metadata accessor for PlayerAvatar.Overlay(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 56);
      v41 = v120;
      v123 = v38;
      v40(v120, 1, 1, v38);
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      v42 = v119;
      v121 = *(v119 + 20);
      v43 = v129;
      v40(v129 + v121, 1, 1, v38);
      v44 = v43 + *(v42 + 24);
      v132 = 0;
      v130 = 0u;
      v131 = 0u;
      *v44 = 0u;
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0;

      sub_24E61DA68(&v130, v44, qword_27F21B590);
      *v43 = v122;
      v43[1] = v37;

      v45 = v121;
      sub_24E61DA68(v41, v43 + v121, &qword_27F22DF80);
      sub_24E61DA68(&v133, v44, qword_27F21B590);
      v46 = v117;
      sub_24F928948();
      sub_24EF3F088(v36, type metadata accessor for Player);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v47 = v43 + v45;
      v48 = v110;
      sub_24E60169C(v47, v110, &qword_27F22DF80);
      v49 = *(v128 + 20);
      if ((*(v39 + 48))(v48, 1, v123) == 1)
      {
        sub_24E601704(v48, &qword_27F22DF80);
        v50 = 1;
        v51 = v113;
      }

      else
      {
        v52 = v109;
        sub_24EF3F0E8(v48, v109, type metadata accessor for PlayerAvatar.Overlay);
        v51 = v113;
        v53 = v52 + *(v113 + 20);
        *v53 = 0;
        *(v53 + 8) = 1;
        v54 = (v52 + *(v51 + 24));
        *v54 = 0;
        v54[1] = 0;
        sub_24EF3F0E8(v52, v46 + v49, type metadata accessor for PlayerAvatarView.Overlay);
        v50 = 0;
      }

      v55 = v112;
      (*v111)(v46 + v49, v50, 1, v51);
      v56 = v128;
      v57 = v46 + *(v128 + 24);
      sub_24E60169C(v44, &v133, qword_27F24EC90);
      sub_24EF3F088(v129, type metadata accessor for PlayerAvatar);
      v58 = v134;
      *v57 = v133;
      *(v57 + 16) = v58;
      *(v57 + 32) = v135;
      *(v46 + *(v56 + 28)) = 7;
      sub_24EF3F0E8(v46, v55, type metadata accessor for PlayerAvatarView);
      v33 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_24E619074(0, v33[2] + 1, 1, v33);
      }

      v62 = v33[2];
      v61 = v33[3];
      if (v62 >= v61 >> 1)
      {
        v33 = sub_24E619074(v61 > 1, v62 + 1, 1, v33);
      }

      v63 = v124;
      v33[2] = v62 + 1;
      sub_24EF3F0E8(v55, v33 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v62, type metadata accessor for PlayerAvatarView);
      v34 = v125 + v127;
      v35 = v63 - 1;
    }

    while (v35);
    *&v133 = 0x4010000000000000;
    sub_24E66ED98();
    v64 = v105;
    sub_24F9237C8();
    v65 = v108;
    *(v64 + *(v108 + 20)) = v33;
    v66 = v64 + *(v65 + 24);
    *v66 = 3;
    *(v66 + 8) = 0;
    *(v64 + *(v65 + 28)) = 2;
    v67 = *MEMORY[0x277CDFA10];
    v68 = sub_24F923E98();
    v69 = v106;
    (*(*(v68 - 8) + 104))(v106, v67, v68);
    sub_24EF3F040(&qword_27F22DF90, MEMORY[0x277CDFA28]);
    result = sub_24F92AFF8();
    if (result)
    {
      v71 = sub_24EF3F040(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
      v72 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      v73 = v103;
      v129 = v71;
      sub_24F9263F8();
      sub_24E601704(v69, &qword_27F21CCC8);
      sub_24EF3F088(v64, type metadata accessor for OverlappingPlayerAvatarsView);
      v133 = 0u;
      v134 = 0u;
      v130 = 0u;
      v131 = 0u;
      v74 = v104;
      sub_24F929828();
      sub_24E601704(&v130, &qword_27F2129B0);
      sub_24E601704(&v133, &qword_27F2129B0);
      v75 = MEMORY[0x277D84F90];
      v76 = v96;
      do
      {
        v77 = v76;
        v78 = v115;
        sub_24E70D960(v76, v115);
        v80 = *v78;
        v79 = v78[1];

        sub_24EF3F088(v78, type metadata accessor for Player);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_24E615CF4(0, *(v75 + 2) + 1, 1, v75);
        }

        v82 = *(v75 + 2);
        v81 = *(v75 + 3);
        if (v82 >= v81 >> 1)
        {
          v75 = sub_24E615CF4((v81 > 1), v82 + 1, 1, v75);
        }

        *(v75 + 2) = v82 + 1;
        v83 = &v75[16 * v82];
        *(v83 + 4) = v80;
        *(v83 + 5) = v79;
        v76 = v77 + v127;
        --v60;
      }

      while (v60);
      *&v133 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
      v84 = sub_24F92AF68();
      v86 = v85;

      *(&v134 + 1) = MEMORY[0x277D837D0];
      *&v133 = v84;
      *(&v133 + 1) = v86;
      v87 = v97;
      sub_24F929868();
      v88 = *(v98 + 8);
      v89 = v99;
      v88(v74, v99);
      sub_24E601704(&v133, &qword_27F2129B0);
      *&v133 = v108;
      *(&v133 + 1) = v73;
      *&v134 = v129;
      *(&v134 + 1) = v72;
      swift_getOpaqueTypeConformance2();
      v90 = v100;
      v91 = v102;
      v92 = v107;
      sub_24F925EE8();
      v88(v87, v89);
      (*(v101 + 8))(v92, v91);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234508);
      return (*(*(v93 - 8) + 56))(v90, 0, 1, v93);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234508);
    v95 = *(*(v94 - 8) + 56);

    return v95(a2, 1, 1, v94);
  }

  return result;
}

uint64_t sub_24EF3F040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF3F088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF3F0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF3F154()
{
  result = qword_27F234510;
  if (!qword_27F234510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F234518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2344F8);
    type metadata accessor for OverlappingPlayerAvatarsView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8);
    sub_24EF3F040(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234510);
  }

  return result;
}

unint64_t sub_24EF3F2F8()
{
  result = qword_27F2163D8;
  if (!qword_27F2163D8)
  {
    type metadata accessor for UpdateImpedimentCompletionStatesAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163D8);
  }

  return result;
}

uint64_t sub_24EF3F350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = type metadata accessor for ImpedimentFlowDestinationStates();
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_24EF3F404;

  return MEMORY[0x28217F228](v3 + 2, v4, v4);
}

uint64_t sub_24EF3F404()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EF3F85C;
  }

  else
  {
    v2 = sub_24EF3F518;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF3F518()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *v1;
  if (v3 != 2)
  {
    v4 = v3 & 1;
    v2[16] = v3 & 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_24E5DD000, v6, v7, "completedWelcome is set to %{BOOL}d", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v1 = v0[4];
  }

  v9 = v1[1];
  if (v9 != 2)
  {
    v10 = v9 & 1;
    v2[17] = v9 & 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BD98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_24E5DD000, v12, v13, "completedCrossUse is set to %{BOOL}d", v14, 8u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v1 = v0[4];
  }

  v15 = v1[2];
  if (v15 != 2)
  {
    v16 = v15 & 1;
    v2[18] = v15 & 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    __swift_project_value_buffer(v17, qword_27F39E8E0);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v18, v19, "completedProfileCreation is set to %{BOOL}d", v20, 8u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }
  }

  v21 = v0[3];
  v22 = *MEMORY[0x277D21CA8];
  v23 = sub_24F928AE8();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  v24 = v0[1];

  return v24();
}

uint64_t sub_24EF3F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24EF3FAAC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EB65B58(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9B2F88;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EF3FAAC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EF3FB10()
{
  v1 = (type metadata accessor for UpdateImpedimentCompletionStatesAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24EF3FBF8(uint64_t a1)
{
  v4 = *(type metadata accessor for UpdateImpedimentCompletionStatesAction() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EF3F350(a1, v6, v1 + v5);
}

uint64_t sub_24EF3FCEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void (*ArcadePage.init(deserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v71 = a2;
  v63 = sub_24F9285B8();
  v5 = *(v63 - 8);
  v6 = MEMORY[0x28223BE20](v63);
  v59 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v75 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v58 = v13;
  v25 = *(v13 + 8);
  v69 = v13 + 8;
  v70 = v12;
  v68 = v25;
  v25(v21, v12);
  v26 = (v3 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v26 = v22;
  v26[1] = v24;
  v60 = v26;
  type metadata accessor for ArcadeFooter();
  sub_24F928398();
  v66 = v5;
  v27 = *(v5 + 16);
  v28 = v71;
  v29 = v63;
  v27(v11, v71, v63);
  sub_24EF4062C(&qword_27F232A28, type metadata accessor for ArcadeFooter);
  v55 = v11;
  sub_24F929548();
  v30 = v3;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = *&v72[0];
  v31 = v62;
  sub_24F928398();
  v32 = v64;
  v33 = v28;
  v34 = v29;
  v61 = v5 + 16;
  v67 = v27;
  v27(v64, v33, v29);
  v35 = v65;
  sub_24EE5B05C(v31, v32, v72);
  if (v35)
  {
    (*(v66 + 8))(v71, v29);
    v68(v75, v70);

    type metadata accessor for ArcadePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v73;
    v37 = v74;
    v38 = v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
    v39 = v72[1];
    *v38 = v72[0];
    *(v38 + 16) = v39;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    v64 = type metadata accessor for Action();
    v65 = 0;
    sub_24F928398();
    v40 = v71;
    v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v71);
    v68(v21, v70);
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = v41;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v42 = v55;
    v43 = v40;
    v67(v55, v40, v34);
    sub_24EF4062C(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
    sub_24F929548();
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = *&v72[0];
    type metadata accessor for ArcadeLockup();
    v44 = v75;
    sub_24F928398();
    v67(v42, v43, v34);
    sub_24EF4062C(&qword_27F2294D8, type metadata accessor for ArcadeLockup);
    v45 = v34;
    sub_24F929548();
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = *&v72[0];
    sub_24F928398();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v43);
    v47 = v70;
    v48 = v68;
    v68(v21, v70);
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v46;
    v49 = v56;
    sub_24F928398();
    LOBYTE(v46) = sub_24F928278();
    v48(v49, v47);
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v46 & 1;
    v50 = v57;
    (*(v58 + 16))(v57, v44, v47);
    v34 = v59;
    v67(v59, v43, v45);
    v51 = v65;
    v52 = GenericPage.init(deserializing:using:)(v50, v34);
    if (!v51)
    {
      v34 = v52;
    }

    (*(v66 + 8))(v43, v45);
    v68(v44, v70);
  }

  return v34;
}

uint64_t type metadata accessor for ArcadePage()
{
  result = qword_27F2345A0;
  if (!qword_27F2345A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF4062C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArcadePage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:footer:titleEffect:autoUpsellAction:shouldForceAutoUpsell:subscriptionLockup:subscriptionOfferAction:subscriptionOfferDisplayProperties:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v96 = a8;
  LODWORD(v83) = a7;
  v102 = a6;
  v82 = a5;
  v95 = a4;
  v79 = a2;
  v80 = a1;
  v97 = a20;
  v94 = a15;
  v90 = a12;
  v99 = a11;
  v88 = a10;
  v89 = a9;
  LODWORD(v87) = a16;
  v93 = a13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v22 - 8);
  v77 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v81 = &v76 - v25;
  MEMORY[0x28223BE20](v26);
  v92 = &v76 - v27;
  MEMORY[0x28223BE20](v28);
  v91 = &v76 - v29;
  v100 = sub_24F928818();
  v30 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - v33;
  v101 = &v76 - v33;
  v35 = swift_allocObject();
  v36 = *(a14 + 32);
  v37 = (v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v37 = a2;
  v37[1] = a3;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = a13;
  LOBYTE(v37) = *(a14 + 40);
  v38 = v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v39 = *(a14 + 16);
  *v38 = *a14;
  *(v38 + 16) = v39;
  *(v38 + 32) = v36;
  *(v38 + 40) = v37;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = a18;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = a19;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = a17;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v94;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v87;
  sub_24E60169C(v102, v104, &qword_27F2129B0);
  v84 = v30;
  v78 = *(v30 + 16);
  v40 = v34;
  v41 = v100;
  v78(v40, v99, v100);
  v42 = v91;
  sub_24E60169C(v97, v91, &qword_27F2218B0);
  v43 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v44 = a3;

  v85 = a18;

  v86 = a19;

  v87 = a17;
  v45 = v92;

  v46 = sub_24EEF0A68(v80);
  v48 = v47;

  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v46;
  v49 = v42;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v48;
  v50 = (v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v50 = v79;
  v50[1] = v44;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v95;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v82;
  sub_24E60169C(v104, v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v83;
  swift_beginAccess();
  *(v35 + v43) = v96;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v51 = v98;
  v52 = v78;
  v78(v98, v101, v41);
  sub_24E60169C(v49, v45, &qword_27F2218B0);
  *(v35 + 16) = 0;
  v52(v35 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v51, v41);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v90;
  v53 = v45;
  v54 = v45;
  v55 = v81;
  sub_24E60169C(v54, v81, &qword_27F2218B0);
  v56 = sub_24F9285B8();
  v83 = *(v56 - 8);
  v57 = *(v83 + 48);
  v58 = v55;
  if (v57(v55, 1, v56) == 1)
  {

    sub_24E601704(v97, &qword_27F2218B0);
    v59 = *(v84 + 8);
    v60 = v100;
    v59(v99, v100);
    sub_24E601704(v102, &qword_27F2129B0);
    sub_24E601704(v53, &qword_27F2218B0);
    v59(v98, v60);
    sub_24E601704(v49, &qword_27F2218B0);
    v59(v101, v60);
    sub_24E601704(v104, &qword_27F2129B0);
    v61 = v55;
    v62 = &qword_27F2218B0;
  }

  else
  {
    v63 = qword_27F2105F0;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v64, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v65 = v103;
    v66 = v92;
    if (v103)
    {
    }

    v67 = *(v83 + 8);
    v67(v58, v56);
    if (v65)
    {
      v68 = v77;
      sub_24E60169C(v66, v77, &qword_27F2218B0);
      if (v57(v68, 1, v56) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v97, &qword_27F2218B0);
        v74 = *(v84 + 8);
        v75 = v100;
        v74(v99, v100);
        sub_24E601704(v102, &qword_27F2129B0);
        sub_24E601704(v92, &qword_27F2218B0);
        v74(v98, v75);
        sub_24E601704(v91, &qword_27F2218B0);
        v74(v101, v75);
        sub_24E601704(v104, &qword_27F2129B0);
        v67(v77, v56);
        return v35;
      }

      sub_24E601704(v97, &qword_27F2218B0);
      v69 = *(v84 + 8);
      v70 = v100;
      v69(v99, v100);
      sub_24E601704(v102, &qword_27F2129B0);
      sub_24E601704(v92, &qword_27F2218B0);
      v69(v98, v70);
      sub_24E601704(v91, &qword_27F2218B0);
      v69(v101, v70);
      sub_24E601704(v104, &qword_27F2129B0);
      v61 = v68;
      v62 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v97, &qword_27F2218B0);
      v71 = *(v84 + 8);
      v72 = v100;
      v71(v99, v100);
      sub_24E601704(v102, &qword_27F2129B0);
      sub_24E601704(v66, &qword_27F2218B0);
      v71(v98, v72);
      sub_24E601704(v91, &qword_27F2218B0);
      v71(v101, v72);
      v61 = v104;
      v62 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v61, v62);
  return v35;
}

uint64_t ArcadePage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:footer:titleEffect:autoUpsellAction:shouldForceAutoUpsell:subscriptionLockup:subscriptionOfferAction:subscriptionOfferDisplayProperties:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v89 = a8;
  LODWORD(v83) = a7;
  v100 = a6;
  v81 = a5;
  v94 = a4;
  v79 = a2;
  v80 = a1;
  v95 = a20;
  v101 = a19;
  v92 = a17;
  v93 = a15;
  v88 = a12;
  v97 = a11;
  v86 = a10;
  v87 = a9;
  LODWORD(v85) = a16;
  v90 = a13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v24 - 8);
  v78 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v82 = &v77 - v27;
  MEMORY[0x28223BE20](v28);
  v98 = &v77 - v29;
  MEMORY[0x28223BE20](v30);
  v99 = &v77 - v31;
  v32 = sub_24F928818();
  v91 = v32;
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v96 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v77 - v36;
  v38 = *(a14 + 32);
  v39 = (v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v39 = a2;
  v39[1] = a3;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = a13;
  LOBYTE(v39) = *(a14 + 40);
  v40 = v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v41 = *(a14 + 16);
  *v40 = *a14;
  *(v40 + 16) = v41;
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = a18;
  v42 = v100;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = v101;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = a17;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v93;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v85;
  sub_24E60169C(v42, v103, &qword_27F2129B0);
  v84 = v33;
  v43 = *(v33 + 16);
  v43(v37, v97, v32);
  v44 = v99;
  sub_24E60169C(v95, v99, &qword_27F2218B0);
  v45 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v85 = a18;

  v46 = sub_24EEF0A68(v80);
  v48 = v47;

  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v46;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v48;
  v49 = (v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v49 = v79;
  v49[1] = a3;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v94;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v81;
  v50 = v91;
  sub_24E60169C(v103, v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v83;
  swift_beginAccess();
  *(v21 + v45) = v89;

  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v51 = v96;
  v43(v96, v37, v50);
  v52 = v98;
  sub_24E60169C(v44, v98, &qword_27F2218B0);
  *(v21 + 16) = 0;
  v53 = v50;
  v54 = v82;
  v43((v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v51, v53);
  *(v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v88;
  sub_24E60169C(v52, v54, &qword_27F2218B0);
  v55 = sub_24F9285B8();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1)
  {

    sub_24E601704(v95, &qword_27F2218B0);
    v58 = *(v84 + 8);
    v59 = v91;
    v58(v97, v91);
    sub_24E601704(v100, &qword_27F2129B0);
    sub_24E601704(v98, &qword_27F2218B0);
    v58(v96, v59);
    sub_24E601704(v99, &qword_27F2218B0);
    v58(v37, v59);
    sub_24E601704(v103, &qword_27F2129B0);
    v60 = v54;
    v61 = &qword_27F2218B0;
  }

  else
  {
    v83 = v37;
    v62 = v84;
    v63 = qword_27F2105F0;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v64, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v65 = v102;
    if (v102)
    {
    }

    v66 = *(v56 + 8);
    v66(v54, v55);
    v67 = v98;
    if (v65)
    {
      v68 = v78;
      sub_24E60169C(v98, v78, &qword_27F2218B0);
      if (v57(v68, 1, v55) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v95, &qword_27F2218B0);
        v74 = *(v62 + 8);
        v75 = v67;
        v76 = v91;
        v74(v97, v91);
        sub_24E601704(v100, &qword_27F2129B0);
        sub_24E601704(v75, &qword_27F2218B0);
        v74(v96, v76);
        sub_24E601704(v99, &qword_27F2218B0);
        v74(v83, v76);
        sub_24E601704(v103, &qword_27F2129B0);
        v66(v78, v55);
        return v21;
      }

      sub_24E601704(v95, &qword_27F2218B0);
      v69 = *(v62 + 8);
      v70 = v91;
      v69(v97, v91);
      sub_24E601704(v100, &qword_27F2129B0);
      sub_24E601704(v67, &qword_27F2218B0);
      v69(v96, v70);
      sub_24E601704(v99, &qword_27F2218B0);
      v69(v83, v70);
      sub_24E601704(v103, &qword_27F2129B0);
      v60 = v68;
      v61 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v95, &qword_27F2218B0);
      v71 = *(v62 + 8);
      v72 = v91;
      v71(v97, v91);
      sub_24E601704(v100, &qword_27F2129B0);
      sub_24E601704(v67, &qword_27F2218B0);
      v71(v96, v72);
      sub_24E601704(v99, &qword_27F2218B0);
      v71(v83, v72);
      v60 = v103;
      v61 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v60, v61);
  return v21;
}

uint64_t ArcadePage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v98 = a8;
  LODWORD(v83) = a7;
  v82 = a5;
  v96 = a4;
  v80 = a3;
  v79 = a2;
  v81 = a1;
  v92 = a12;
  v85 = a10;
  v86 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v95 = &v77 - v20;
  MEMORY[0x28223BE20](v21);
  v94 = &v77 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  v26 = sub_24F928818();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v93 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v99 = &v77 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v77 - v33;
  v89 = a6;
  sub_24E60169C(a6, v102, &qword_27F2129B0);
  v84 = v27;
  v35 = *(v27 + 16);
  v88 = a11;
  v35(v34, a11, v26);
  v87 = a13;
  sub_24E60169C(a13, v25, &qword_27F2218B0);
  type metadata accessor for ArcadePage();
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v37 = a2;
  v38 = v80;
  v37[1] = v80;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = 0;
  v39 = v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 40) = 3;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = 0;
  sub_24E60169C(v102, v101, &qword_27F2129B0);
  v90 = v34;
  v35(v31, v34, v26);
  v91 = v25;
  v40 = v94;
  sub_24E60169C(v25, v94, &qword_27F2218B0);
  v41 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v42 = sub_24EEF0A68(v81);
  v44 = v43;
  v45 = v26;

  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v42;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v44;
  v46 = (v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v46 = v79;
  v46[1] = v38;
  v47 = v40;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v96;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v82;
  sub_24E60169C(v101, v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v83;
  swift_beginAccess();
  v48 = v99;
  *(v36 + v41) = v98;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v49 = v93;
  v35(v93, v48, v26);
  v50 = v95;
  sub_24E60169C(v40, v95, &qword_27F2218B0);
  *(v36 + 16) = 0;
  v35((v36 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v49, v26);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v92;
  v51 = v50;
  v52 = v50;
  v53 = v97;
  sub_24E60169C(v52, v97, &qword_27F2218B0);
  v54 = sub_24F9285B8();
  v83 = *(v54 - 8);
  v55 = *(v83 + 48);
  v56 = v53;
  v57 = v54;
  v58 = v56;
  if (v55() == 1)
  {

    sub_24E601704(v87, &qword_27F2218B0);
    v59 = *(v84 + 8);
    v59(v88, v45);
    sub_24E601704(v89, &qword_27F2129B0);
    sub_24E601704(v51, &qword_27F2218B0);
    v59(v49, v45);
    sub_24E601704(v47, &qword_27F2218B0);
    v59(v99, v45);
    sub_24E601704(v101, &qword_27F2129B0);
    sub_24E601704(v91, &qword_27F2218B0);
    v59(v90, v45);
    sub_24E601704(v102, &qword_27F2129B0);
    v60 = v58;
    v61 = &qword_27F2218B0;
  }

  else
  {
    v62 = v84;
    v63 = qword_27F2105F0;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v64, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v65 = v100;
    v66 = v45;
    v67 = v83;
    if (v100)
    {
    }

    v70 = *(v67 + 8);
    v68 = v67 + 8;
    v69 = v70;
    v70(v97, v57);
    v71 = v95;
    if (v65)
    {
      v72 = v78;
      sub_24E60169C(v95, v78, &qword_27F2218B0);
      if ((v55)(v72, 1, v57) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v87, &qword_27F2218B0);
        v76 = *(v62 + 8);
        v76(v88, v66);
        v83 = v68;
        sub_24E601704(v89, &qword_27F2129B0);
        sub_24E601704(v95, &qword_27F2218B0);
        v76(v93, v66);
        sub_24E601704(v94, &qword_27F2218B0);
        v76(v99, v66);
        sub_24E601704(v101, &qword_27F2129B0);
        sub_24E601704(v91, &qword_27F2218B0);
        v76(v90, v66);
        sub_24E601704(v102, &qword_27F2129B0);
        v69(v78, v57);
        return v36;
      }

      sub_24E601704(v87, &qword_27F2218B0);
      v73 = *(v62 + 8);
      v73(v88, v66);
      sub_24E601704(v89, &qword_27F2129B0);
      sub_24E601704(v95, &qword_27F2218B0);
      v73(v93, v66);
      sub_24E601704(v94, &qword_27F2218B0);
      v73(v99, v66);
      sub_24E601704(v101, &qword_27F2129B0);
      sub_24E601704(v91, &qword_27F2218B0);
      v73(v90, v66);
      sub_24E601704(v102, &qword_27F2129B0);
      v60 = v72;
      v61 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v87, &qword_27F2218B0);
      v74 = *(v62 + 8);
      v74(v88, v66);
      sub_24E601704(v89, &qword_27F2129B0);
      sub_24E601704(v71, &qword_27F2218B0);
      v74(v93, v66);
      sub_24E601704(v94, &qword_27F2218B0);
      v74(v99, v66);
      sub_24E601704(v101, &qword_27F2129B0);
      sub_24E601704(v91, &qword_27F2218B0);
      v74(v90, v66);
      v60 = v102;
      v61 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v60, v61);
  return v36;
}

uint64_t ArcadePage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);

  return v1;
}

id ArcadePage.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  return sub_24ED21BB0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24EF429AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v113 = &v87 - v9;
  MEMORY[0x28223BE20](v10);
  v115 = &v87 - v11;
  MEMORY[0x28223BE20](v12);
  v118 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  v17 = sub_24F928818();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v114 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v111 = v22;
    v112 = v16;
    v110 = a1;

    v28 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v121 = v28;
    sub_24EA0AE3C(v29);
    v100 = v121;
    v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    if (v30)
    {
      v109 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v108 = v30;
    }

    else
    {
      v31 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
      v109 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v108 = v31;
    }

    v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
    sub_24E60169C(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v121, &qword_27F2129B0);
    v32 = v110;
    if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) == 1)
    {
      v98 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v98 = 0;
    }

    v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v34 = *(v2 + v33);
    if (!v34)
    {
      swift_beginAccess();
    }

    v102 = v34;
    v35 = *(v2 + 16);
    v88 = v7;
    if (v35)
    {
      v36 = *(v32 + 16);

      v101 = sub_24ED64DBC(v36);
    }

    else
    {
      v101 = *(v32 + 16);
    }

    v37 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v38 = *(v18 + 16);
    v105 = v18 + 16;
    v106 = v38;
    v38(v25, (v2 + v37), v17);
    v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v39 = v18;
    v92 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer);
    v40 = v92;
    v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
    v42 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
    v43 = v17;
    v44 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
    v93 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
    v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction);
    v97 = v39;
    v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell);
    v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup);
    v45 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction);
    v117 = v43;
    v90 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32);
    v46 = v90;
    v91 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties);
    v47 = v91;
    v107 = v25;
    v48 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40);
    v89 = v48;
    v103 = sub_24F9285B8();
    v116 = *(v103 - 8);
    v49 = v112;
    (*(v116 + 56))(v112, 1, 1, v103);
    type metadata accessor for ArcadePage();
    v2 = swift_allocObject();
    v50 = (v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
    v51 = v108;
    *v50 = v109;
    v50[1] = v51;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = v40;
    v52 = v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
    *v52 = v41;
    *(v52 + 8) = v42;
    v53 = v93;
    *(v52 + 16) = v44;
    *(v52 + 24) = v53;
    *(v52 + 32) = v46;
    *(v52 + 40) = v48;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = v45;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = v47;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = v104;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v95;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v94;
    sub_24E60169C(&v121, v120, &qword_27F2129B0);
    v54 = v111;
    v106(v111, v107, v117);
    v55 = v118;
    sub_24E60169C(v49, v118, &qword_27F2218B0);
    v56 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
    v57 = v44;
    v58 = v55;
    v59 = v117;
    sub_24ED21BB0(v41, v42, v57, v53, v90, v89);

    v60 = v108;

    v61 = sub_24EEF0A68(v100);
    v63 = v62;

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v61;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v63;
    v64 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    *v64 = v109;
    v64[1] = v60;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v99;
    sub_24E60169C(v120, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v98;
    swift_beginAccess();
    *(v2 + v56) = v102;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v65 = v114;
    v66 = v106;
    v106(v114, v54, v59);
    v67 = v58;
    v68 = v115;
    sub_24E60169C(v67, v115, &qword_27F2218B0);
    *(v2 + 16) = 0;
    v66(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v65, v59);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v96;
    v69 = v113;
    sub_24E60169C(v68, v113, &qword_27F2218B0);
    v70 = *(v116 + 48);
    if (v70(v69, 1, v103) == 1)
    {

      sub_24E601704(v68, &qword_27F2218B0);
      v71 = v69;
      v72 = *(v97 + 8);
      v72(v65, v59);
      sub_24E601704(v118, &qword_27F2218B0);
      v72(v111, v59);
      sub_24E601704(v120, &qword_27F2129B0);
      sub_24E601704(v112, &qword_27F2218B0);
      v72(v107, v59);
    }

    else
    {
      v73 = v97;
      v74 = qword_27F2105F0;

      if (v74 != -1)
      {
        swift_once();
      }

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v75, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F9285C8();
      v76 = v119;
      v71 = v88;
      if (v119)
      {
      }

      v77 = *(v116 + 8);
      v78 = v103;
      v116 += 8;
      v77(v113, v103);
      v79 = v115;
      if (!v76)
      {

        sub_24E601704(v79, &qword_27F2218B0);
        v83 = *(v73 + 8);
        v84 = v117;
        v83(v114, v117);
        sub_24E601704(v118, &qword_27F2218B0);
        v83(v111, v84);
        sub_24E601704(v120, &qword_27F2129B0);
        sub_24E601704(v112, &qword_27F2218B0);
        v83(v107, v84);
        sub_24E601704(&v121, &qword_27F2129B0);
        return v2;
      }

      sub_24E60169C(v115, v71, &qword_27F2218B0);
      v80 = v70(v71, 1, v78);
      v81 = v117;
      if (v80 != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v79, &qword_27F2218B0);
        v85 = *(v73 + 8);
        v85(v114, v81);
        sub_24E601704(v118, &qword_27F2218B0);
        v85(v111, v81);
        sub_24E601704(v120, &qword_27F2129B0);
        sub_24E601704(v112, &qword_27F2218B0);
        v85(v107, v81);
        sub_24E601704(&v121, &qword_27F2129B0);
        v77(v71, v103);
        return v2;
      }

      sub_24E601704(v79, &qword_27F2218B0);
      v82 = *(v73 + 8);
      v82(v114, v81);
      sub_24E601704(v118, &qword_27F2218B0);
      v82(v111, v81);
      sub_24E601704(v120, &qword_27F2129B0);
      sub_24E601704(v112, &qword_27F2218B0);
      v82(v107, v81);
    }

    sub_24E601704(&v121, &qword_27F2129B0);
    sub_24E601704(v71, &qword_27F2218B0);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_24EF43814()
{

  sub_24EF43964(*(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40));
}

uint64_t ArcadePage.deinit()
{
  v0 = GenericPage.deinit();

  sub_24EF43964(*(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40));

  return v0;
}

void *sub_24EF43964(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return result;
    }
  }

  else
  {

    result = a2;
    a2 = a3;
  }
}

uint64_t ArcadePage.__deallocating_deinit()
{
  ArcadePage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF43B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF43BC4, 0, 0);
}

uint64_t sub_24EF43BC4()
{
  type metadata accessor for ArtworkLoader();
  sub_24F928FD8();
  sub_24F92A758();
  v0[10] = v0[2];
  sub_24F92B7F8();
  v0[11] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EF43C90, v2, v1);
}

uint64_t sub_24EF43C90()
{
  v1 = *(v0 + 56);

  *(v0 + 96) = sub_24E7E9768(v1, 128.0, 128.0);

  return MEMORY[0x2822009F8](sub_24EF43D14, 0, 0);
}

uint64_t sub_24EF43D14()
{
  v1 = v0[12];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = swift_allocObject();
    v0[13] = v5;
    swift_weakInit();
    v6 = swift_task_alloc();
    v0[14] = v6;
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v2;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_24EF43EF8;
    v9 = v0[8];
    v8 = v0[9];

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000027, 0x800000024FA64A00, sub_24EF456D8, v6, v9);
  }

  else
  {
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[3];

    v13 = sub_24F91F6B8();
    (*(*(v13 - 8) + 16))(v12, v10, v13);
    v14 = v0[6];
    v15 = v11;

    v16 = v0[1];

    return v16(0, v14);
  }
}

uint64_t sub_24EF43EF8()
{

  return MEMORY[0x2822009F8](sub_24EF4402C, 0, 0);
}

uint64_t sub_24EF4402C()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[3];

  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = *(v2 + 64);
  v7 = sub_24F91F6B8();
  (*(*(v7 - 8) + 32))(v3, &v1[v6], v7);

  v8 = v0[1];

  return v8(v4, v5);
}

uint64_t sub_24EF44104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v34 = a3;
  v35 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0);
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36);
  v37 = v31 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(v11 + 16);
    v31[1] = Strong;
    v17(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    sub_24EF456E8();
    sub_24F92C7F8();
    v18 = *(v7 + 16);
    v19 = v10;
    v31[0] = v10;
    v20 = v36;
    v18(v37, v35, v36);
    v17(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v19);
    v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v34;
    v24 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v21, v37, v20);
    *(v25 + v22) = v23;
    (*(v11 + 32))(v25 + v24, v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31[0]);
    *(v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v26 = v23;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v33, 0, v38, sub_24EF458BC, v25);

    return sub_24E601704(v38, &qword_27F235830);
  }

  else
  {
    v28 = *(v13 + 64);
    v29 = v34;
    *v15 = 0;
    *(v15 + 1) = v29;
    (*(v11 + 16))(&v15[v28], a4, v10);
    v30 = v29;
    return sub_24F92B798();
  }
}

uint64_t sub_24EF4447C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (a1)
  {
    v16 = *(a8 + 48);
    v17 = *(v13 + 64);
    *v15 = a1;
    *(v15 + 1) = v16;
    v18 = sub_24F91F6B8();
    (*(*(v18 - 8) + 16))(&v15[v17], a7, v18);
    v19 = v16;
    a6 = a1;
  }

  else
  {
    v20 = *(v13 + 64);
    *v15 = 0;
    *(v15 + 1) = a6;
    v21 = sub_24F91F6B8();
    (*(*(v21 - 8) + 16))(&v15[v20], a7, v21);
  }

  v22 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0);
  return sub_24F92B798();
}

uint64_t sub_24EF445D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24EF44694;

  return sub_24EF43B1C(a1, a2, a3, a4);
}

uint64_t sub_24EF44694(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_24EF44798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = sub_24F91F4A8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_24EF44938;

  return MEMORY[0x28217F228](v5 + 2, v7, v7);
}

uint64_t sub_24EF44938()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24EF45144;
  }

  else
  {
    v2 = sub_24EF44A4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF44A4C()
{
  v2 = v0 + 9;
  v1 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v0[16] = v0[2];
  sub_24F928968();
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0 + 8;
  v6 = v0[8];
  v7 = v0[10];
  v8 = *(v0[11] + 32);
  v8(v0[13], v0[9], v7);
  sub_24F91F398();
  sub_24F91F488();

  if (v5(v6, 1, v7) == 1)
  {
    (*(v0[11] + 8))(v0[13], v0[10]);
LABEL_4:
    sub_24E601704(*v2, &qword_27F228530);
    if (qword_27F211460 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E970);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "Invalid URL for artwork", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[3];

    v16 = sub_24F91F6B8();
    (*(*(v16 - 8) + 16))(v15, v13, v16);
    v17 = v0[5];
    v18 = v14;

    v19 = v0[1];

    return v19(0, v17);
  }

  v8(v0[12], v0[8], v0[10]);
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_24EF44D84;
  v22 = v0[12];

  return sub_24F40FAE0(v22);
}

uint64_t sub_24EF44D84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_24EF45374;
  }

  else
  {
    v4 = sub_24EF44E98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EF44E98()
{
  v1 = sub_24F9289A8();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_27F20FEE0 != -1)
  {
    v24 = v1;
    swift_once();
    v1 = v24;
  }

  v2 = v0[7];
  v3 = v1;
  v4 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v4);
  v5 = type metadata accessor for ColorGroup();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
  {
    sub_24E601704(v0[7], &qword_27F2190D8);

LABEL_6:

    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[5];
    v9 = *(v0[11] + 8);
    v9(v0[12], v7);
    v9(v6, v7);
    v10 = v8;
    v11 = v0[5];
    goto LABEL_8;
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[7];

  sub_24E77D068(v16);

  sub_24E77ACC8();
  v11 = sub_24F92C3B8();

  v17 = *(v15 + 8);
  v17(v13, v14);
  v17(v12, v14);
LABEL_8:
  v18 = v0[18];
  v20 = v0[3];
  v19 = v0[4];
  v21 = sub_24F91F6B8();
  (*(*(v21 - 8) + 16))(v20, v19, v21);

  v22 = v0[1];

  return v22(v18, v11);
}

uint64_t sub_24EF45144()
{
  v1 = v0[15];
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E970);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error downloading image: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];
  v13 = sub_24F91F6B8();
  (*(*(v13 - 8) + 16))(v12, v10, v13);
  v14 = v0[5];
  v15 = v11;

  v16 = v0[1];

  return v16(0, v14);
}

uint64_t sub_24EF45374()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v6 = v0[19];
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E970);
  v8 = v6;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24E5DD000, v9, v10, "Error downloading image: %@", v11, 0xCu);
    sub_24E601704(v12, &qword_27F227B20);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];
  v18 = sub_24F91F6B8();
  (*(*(v18 - 8) + 16))(v17, v15, v18);
  v19 = v0[5];
  v20 = v16;

  v21 = v0[1];

  return v21(0, v19);
}

uint64_t sub_24EF455E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24EF45A00;

  return sub_24EF44798(a1, a2, a3, a4);
}

uint64_t sub_24EF456A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24EF456E8()
{
  result = qword_27F2551B0;
  if (!qword_27F2551B0)
  {
    sub_24F91F6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2551B0);
  }

  return result;
}

uint64_t sub_24EF45740()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24EF458BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_24F91F6B8() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v4 + v11);
  v15 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EF4447C(a1, a2, a3, a4, v4 + v10, v14, v4 + v13, v15);
}

uint64_t UnimplementedAdvertInteractionMetricsReporter.advertWasInteracted(with:completion:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_24EF45A64(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

unint64_t sub_24EF45B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_24EAEB0D4;
  *(v0 + 24) = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_24EF46E60;
  *(v1 + 24) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EF46E60;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24EAEB320;
  *(v3 + 24) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670);
  qword_27F2345D8 = v4;
  result = sub_24E9E955C();
  qword_27F2345C0 = v3;
  qword_27F234600 = v4;
  unk_27F234608 = result;
  qword_27F2345E0 = result;
  unk_27F2345E8 = v0;
  qword_27F234628 = v4;
  unk_27F234630 = result;
  qword_27F234610 = v1;
  qword_27F234650 = v4;
  unk_27F234658 = result;
  qword_27F234638 = v2;
  return result;
}

uint64_t static TagFacetRibbonLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F210C70 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_24EF45D0C(&qword_27F2345C0, v2);
}

__n128 TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 112);
  *(a5 + 120) = *(a4 + 96);
  *(a5 + 136) = v5;
  v6 = *(a4 + 144);
  *(a5 + 152) = *(a4 + 128);
  *(a5 + 168) = v6;
  v7 = *(a4 + 48);
  *(a5 + 56) = *(a4 + 32);
  *(a5 + 72) = v7;
  v8 = *(a4 + 80);
  *(a5 + 88) = *(a4 + 64);
  *(a5 + 104) = v8;
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 40) = v10;
  return result;
}

void TagFacetRibbonLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v45 = sub_24F92CDB8();
  v14 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v46 = &v36 - v18;
  v19 = *v7;
  if (*(*v7 + 16))
  {
    v38 = a2;
    v20 = [a1 traitCollection];
    v37 = sub_24F92BFB8();

    v44 = a1;
    v21 = [a1 traitCollection];
    v48 = sub_24EF46264(v19, v21, a3, a4, a5, a6);

    v22 = *(v19 + 16);

    v43 = v22;
    if (v22)
    {
      v23 = 0;
      v24 = v19 + 32;
      v41 = *MEMORY[0x277D84688];
      v40 = (v14 + 104);
      v39 = *MEMORY[0x277D84680];
      v25 = (v14 + 8);
      v42 = v19;
      v26 = v47;
      while (v23 < *(v19 + 16))
      {
        sub_24E615E00(v24, v52);
        v27 = v48[2];
        if (v23 == v27)
        {

          __swift_destroy_boxed_opaque_existential_1(v52);
          goto LABEL_13;
        }

        if (v23 >= v27)
        {
          goto LABEL_15;
        }

        v28 = &v48[4 * v23];
        v29 = *(v28 + 3);
        v50 = *(v28 + 2);
        v51 = v29;
        sub_24E612E28(v52, v53);
        v55 = v51;
        v54 = v50;
        v49 = v53[4];
        __swift_project_boxed_opaque_existential_1(v53, v53[3]);
        v30 = *v40;
        v31 = v46;
        v32 = v45;
        (*v40)(v46, v41, v45);
        v30(v26, v39, v32);
        CGPoint.rounded(_:)(v31, *&v50, *(&v50 + 1));
        CGSize.rounded(_:)(v26, *&v51, *(&v51 + 1));
        v33 = *v25;
        (*v25)(v26, v32);
        v33(v31, v32);
        v34 = [v44 traitCollection];
        sub_24F92BF88();
        sub_24F92C1E8();

        sub_24F922228();
        sub_24EF46798(v53);
        v24 += 40;
        ++v23;
        v19 = v42;
        if (v43 == v23)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_8:

LABEL_13:
      v35 = v37;
      sub_24F922128();
    }
  }

  else
  {

    sub_24F922128();
  }
}

void *sub_24EF46264(char *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v8 = v6;
  v65 = MEMORY[0x277D84F90];
  v15 = sub_24F92BF98();
  v16 = 1;
  if (v15)
  {
    v16 = 2;
  }

  v57 = v6[v16];
  v17 = sub_24EF469CC(a1, a3, a4, a5, a6);
  v66.origin.x = a3;
  v66.origin.y = a4;
  v66.size.width = a5;
  v66.size.height = a6;
  CGRectGetMinY(v66);
  if (v17 < 0)
  {
    goto LABEL_53;
  }

  v7 = *(a1 + 2);
  if (v7 < v17)
  {
    goto LABEL_54;
  }

  v55 = a2;
  a2 = (a1 + 32);
  if (v7 == v17)
  {

    v60 = a1;
  }

  else
  {
    sub_24E6B8918(a1, (a1 + 32), 0, (2 * v17) | 1);
    v60 = v19;
  }

  v6 = ((2 * v7) | 1);
  v18 = a1;
  if (v17)
  {
    goto LABEL_55;
  }

  for (i = a1; ; i = v51)
  {
    v53 = a2;
    if (v57 < 1 || !v17)
    {
      break;
    }

    v52 = v6;
    v21 = 0;
    v6 = 0;
    MinX = a3;
    v23 = a4;
    Width = a5;
    Height = a6;
    a2 = v55;
    v54 = v8;
    while (1)
    {
      v59 = v6;
      v26 = v7;
      v27 = a1;

      v7 = v60;
      a1 = sub_24EF46AD4(v60, MinX, v23, Width, Height);

      v6 = &v65;
      v18 = sub_24EA0ABE0(a1);
      v28 = __OFADD__(v21, v17);
      v21 += v17;
      if (v28)
      {
        break;
      }

      v6 = sub_24EF469CC(i, a3, a4, a5, a6);

      v58 = v6;
      v17 = v6 + v21;
      if (__OFADD__(v21, v6))
      {
        goto LABEL_48;
      }

      if (v17 < v21)
      {
        goto LABEL_49;
      }

      if (v26 < v21)
      {
        goto LABEL_50;
      }

      if (v21 < 0)
      {
        goto LABEL_51;
      }

      if (v26 < v17)
      {
        goto LABEL_52;
      }

      v29 = v8;
      v30 = a2;
      v31 = v27;
      if (v26 != v6)
      {
        sub_24E6B8918(v27, v53, v21, (2 * v17) | 1);
        v31 = v44;
      }

      v60 = v31;
      v32 = v65;
      v33 = v65[2];
      v56 = v65;
      if (v33)
      {
        *&v64[0] = MEMORY[0x277D84F90];
        sub_24F45824C(0, v33, 0);
        v34 = *&v64[0];
        v35 = v32 + 7;
        v7 = v26;
        do
        {
          MaxY = CGRectGetMaxY(*(v35 - 3));
          *&v64[0] = v34;
          v38 = *(v34 + 16);
          v37 = *(v34 + 24);
          if (v38 >= v37 >> 1)
          {
            v39 = MaxY;
            sub_24F45824C((v37 > 1), v38 + 1, 1);
            MaxY = v39;
            v34 = *&v64[0];
          }

          *(v34 + 16) = v38 + 1;
          *(v34 + 8 * v38 + 32) = MaxY;
          v35 += 4;
          --v33;
        }

        while (v33);
        v8 = v54;
        a2 = v55;
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
        a2 = v30;
        v8 = v29;
        v7 = v26;
      }

      *&v40 = COERCE_DOUBLE(sub_24ED6EC84(v34));
      v42 = v41;

      if (v42)
      {
        __swift_project_boxed_opaque_existential_1(v8 + 8, v8[11]);
        sub_24F9223B8();
        v23 = v43 + 0.0;
      }

      else
      {
        v23 = *&v40;
      }

      a1 = v27;

      v67.origin.x = a3;
      v67.origin.y = a4;
      v67.size.width = a5;
      v67.size.height = a6;
      MinX = CGRectGetMinX(v67);
      v68.origin.x = a3;
      v68.origin.y = a4;
      v68.size.width = a5;
      v68.size.height = a6;
      Width = CGRectGetWidth(v68);
      v69.origin.x = a3;
      v69.origin.y = a4;
      v69.size.width = a5;
      v69.size.height = a6;
      Height = CGRectGetHeight(v69);
      i = v27;
      if (v17)
      {
        sub_24E6B8918(v27, v53, v17, v52);
        i = v45;
      }

      v6 = (v59 + 1);
      if ((v59 + 1) != v57)
      {
        v17 = v58;
        if (v58 > 0)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

LABEL_47:
    __break(1u);
LABEL_48:
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
    sub_24E6B8918(v18, a2, v17, v6);
  }

  v56 = MEMORY[0x277D84F90];
LABEL_37:

  v46 = 0;
  a1 = &v61;
  v8 = v56;
  while (1)
  {
    v47 = 0uLL;
    v17 = v7;
    v48 = 0uLL;
    v49 = 0uLL;
    if (v46 != v7)
    {
      if (v46 >= v7)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v17 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_46;
      }

      *&v61 = v46;
      sub_24E615E00(v53 + 40 * v46, &v61 + 8);
      v47 = v61;
      v48 = v62;
      v49 = v63;
    }

    v64[0] = v47;
    v64[1] = v48;
    v64[2] = v49;
    if (!v49)
    {
      return v56;
    }

    v60 = v47;
    sub_24E612E28((v64 + 8), &v61);
    a2 = *(&v62 + 1);
    v6 = __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    sub_24F922248();
    v18 = __swift_destroy_boxed_opaque_existential_1(&v61);
    v46 = v17;
  }
}

uint64_t sub_24EF46798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F234660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGFloat TagFacetRibbonLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = *v3;
  if (!*(*v3 + 2))
  {
    return *MEMORY[0x277D22A78];
  }

  v8 = [a1 traitCollection];
  v9 = sub_24F92BFB8();

  v10 = [a1 traitCollection];
  v11 = sub_24EF46264(v4, v10, 0.0, 0.0, a2, a3);

  v12 = *(v11 + 2);
  if (v12)
  {
    v24 = a2;
    v13 = v11[4];
    v14 = v11[5];
    v15 = v11[6];
    v16 = v11[7];
    v17 = v12 - 1;
    if (v12 != 1)
    {
      v18 = v11 + 11;
      do
      {
        v19 = *(v18 - 3);
        v20 = *(v18 - 2);
        v22 = *(v18 - 1);
        v21 = *v18;
        v26.origin.x = v13;
        v26.origin.y = v14;
        v26.size.width = v15;
        v26.size.height = v16;
        MaxY = CGRectGetMaxY(v26);
        v27.origin.x = v19;
        v27.origin.y = v20;
        v27.size.width = v22;
        v27.size.height = v21;
        if (MaxY < CGRectGetMaxY(v27))
        {
          v13 = v19;
          v14 = v20;
          v15 = v22;
          v16 = v21;
        }

        v18 += 4;
        --v17;
      }

      while (v17);
    }

    v28.origin.x = v13;
    v28.origin.y = v14;
    v28.size.width = v15;
    v28.size.height = v16;
    CGRectGetMaxY(v28);

    return v24;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_24EF469CC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = 0.0;
  v13 = (a1 + 32);
  while (v11 != v10)
  {
    ++v10;
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_24F9222A8();
    v15 = v12 + v14;
    __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
    sub_24F9223B8();
    v12 = v15 + v16;
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    v13 += 5;
    if (v12 > CGRectGetWidth(v18))
    {
      return v10 - 1;
    }
  }

  return v11;
}

char *sub_24EF46AD4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Width = CGRectGetWidth(*&a2);
  v31 = a2;
  v32 = a3;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  MinX = CGRectGetMinX(v37);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = a1 + 32;
  v14 = MEMORY[0x277D84F90];
  do
  {
    sub_24E615E00(v13, v35);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_24F9222A8();
    v16 = v15;
    v18 = v17;
    v38.origin.x = v31;
    v38.origin.y = v32;
    v38.size.width = a4;
    v38.size.height = a5;
    MinY = CGRectGetMinY(v38);
    __swift_project_boxed_opaque_existential_1(v6 + 13, v6[16]);
    sub_24F9223B8();
    v21 = MinY + v20;
    v39.origin.x = v31;
    v39.origin.y = v32;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetWidth(v39);
    if (v16 > Width)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = MinX;
    }

    if (v16 <= Width)
    {
      v23 = v16;
    }

    else
    {
      v21 = 0.0;
      v23 = 0.0;
    }

    if (v16 > Width)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_24E617B8C(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = *(v14 + 2);
    v25 = *(v14 + 3);
    if (v26 >= v25 >> 1)
    {
      v14 = sub_24E617B8C((v25 > 1), v26 + 1, 1, v14);
    }

    *(v14 + 2) = v26 + 1;
    v27 = &v14[32 * v26];
    v27[4] = v22;
    v27[5] = v21;
    v27[6] = v23;
    v27[7] = v24;
    if (v23 > 0.0)
    {
      __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
      sub_24F9223B8();
      v29 = v28;
      v40.origin.x = v22;
      v40.origin.y = v21;
      v40.size.width = v23;
      v40.size.height = v24;
      MinX = MinX + v29 + CGRectGetWidth(v40);
      v41.origin.x = v22;
      v41.origin.y = v21;
      v41.size.width = v23;
      v41.size.height = v24;
      Width = Width - (v29 + CGRectGetWidth(v41));
    }

    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_24F922248();
    __swift_destroy_boxed_opaque_existential_1(v35);
    v13 += 40;
    --v12;
  }

  while (v12);
  return v14;
}

uint64_t sub_24EF46D88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24EF46DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_24EF46EA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  (*(v4 + 104))(&v23 - v16, *MEMORY[0x277CE0558], v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = *(v8 + 56);
  sub_24EDEBCCC(a2, v10);
  sub_24EDEBCCC(v17, &v10[v18]);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    sub_24EDEBCCC(v10, v13);
    if (v19(&v10[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v18], v3);
      sub_24EDEBD3C();
      v21 = sub_24F92AFF8();
      v22 = *(v4 + 8);
      v22(v6, v3);
      sub_24E601704(v17, &qword_27F215598);
      v22(v13, v3);
      sub_24E601704(v10, &qword_27F215598);
      return (v21 & 1) != 0;
    }

    sub_24E601704(v17, &qword_27F215598);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_24E601704(v10, &unk_27F254F20);
    return 0;
  }

  sub_24E601704(v17, &qword_27F215598);
  if (v19(&v10[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v10, &qword_27F215598);
  return 1;
}

unint64_t sub_24EF47230()
{
  result = qword_27F234678;
  if (!qword_27F234678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234678);
  }

  return result;
}

GameStoreKit::ComponentSeparator::Position_optional __swiftcall ComponentSeparator.Position.init(rawValue:)(Swift::String rawValue)
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

uint64_t ComponentSeparator.Position.rawValue.getter()
{
  v1 = 7368564;
  v2 = 0x676E696461656CLL;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x6D6F74746F62;
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

_BYTE *ComponentSeparator.init(position:leadingInset:trailingInset:color:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

void *ComponentSeparator.color.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void static ComponentSeparator.thickness(compatibleWith:)(void *a1)
{
  if ((sub_24F92BF98() & 1) == 0)
  {
    [a1 displayScale];
    if (v2 <= 0.0)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 scale];
    }
  }
}

double ComponentSeparator.height(in:)(void *a1)
{
  v1 = [a1 traitCollection];
  sub_24F922D08();
  v3 = v2;

  return v3;
}

double ComponentSeparator.frame(forBoundingRect:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *v5;
  v11 = [a1 traitCollection];
  if ((sub_24F92BF98() & 1) == 0)
  {
    [v11 displayScale];
    if (v12 <= 0.0)
    {
      v13 = [objc_opt_self() mainScreen];
      [v13 scale];
    }
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v14 = sub_24F92CE08();

  if (v14)
  {
    v15 = 1;
    if (v10 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (v10 > 1)
  {
LABEL_13:

    v15 = 1;
    goto LABEL_14;
  }

  v15 = sub_24F92CE08();

LABEL_7:
  if (!v10)
  {
LABEL_19:

LABEL_20:
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_14:
  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    goto LABEL_19;
  }

  v17 = sub_24F92CE08();

  if (v17)
  {
    goto LABEL_20;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
LABEL_22:
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      CGRectGetMinX(*&v18);
    }

    else
    {
      CGRectGetMaxX(*&v18);
    }

    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    CGRectGetMinY(v31);
  }

  else
  {
    CGRectGetMinX(*&v18);
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    if (v10)
    {
      CGRectGetMaxY(*&v22);
    }

    else
    {
      CGRectGetMinY(*&v22);
    }
  }

  sub_24F92C1D8();
  v27 = v26;

  return v27;
}

BOOL static ComponentSeparator.== infix(_:_:)(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  v6 = sub_24F0D1ECC(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

unint64_t sub_24EF47984()
{
  result = qword_27F234680;
  if (!qword_27F234680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234680);
  }

  return result;
}

double CGPoint.rounded(_:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v24 = a2;
  v14 = *(v7 + 16);
  v14(&v21 - v12, a1, v6, v11);
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = *MEMORY[0x277D84678];
  if (v16 == *MEMORY[0x277D84678])
  {
    v18 = round(a2);
    v24 = v18;
  }

  else if (v16 == *MEMORY[0x277D84670])
  {
    v18 = rint(a2);
    v24 = v18;
  }

  else
  {
    if (v16 == *MEMORY[0x277D84680])
    {
      goto LABEL_6;
    }

    if (v16 == *MEMORY[0x277D84688])
    {
      goto LABEL_8;
    }

    if (v16 == *MEMORY[0x277D84660])
    {
      v18 = trunc(a2);
      v24 = v18;
      goto LABEL_15;
    }

    if (v16 != *MEMORY[0x277D84668])
    {
      v22 = a1;
      sub_24F92BA48();
      a1 = v22;
      (*(v7 + 8))(v13, v6);
      v18 = v24;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v18 = floor(a2);
      v24 = v18;
    }

    else
    {
LABEL_6:
      v18 = ceil(a2);
      v24 = v18;
    }
  }

LABEL_15:
  v23 = a3;
  (v14)(v9, a1, v6);
  v19 = v15(v9, v6);
  if (v19 != v17 && v19 != *MEMORY[0x277D84670] && v19 != *MEMORY[0x277D84680] && v19 != *MEMORY[0x277D84688] && v19 != *MEMORY[0x277D84660] && v19 != *MEMORY[0x277D84668])
  {
    sub_24F92BA48();
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

double CGPoint.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [v7 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);

  return v10;
}

{
  [a2 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [a2 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);
  return v10;
}

uint64_t sub_24EF47F7C(uint64_t a1)
{
  v2 = sub_24F9234D8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F9244A8();
}

uint64_t sub_24EF48044@<X0>(void *a1@<X8>)
{
  sub_24E6E4B8C();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EF48094()
{
  sub_24E6E4B8C();

  return sub_24F924878();
}

uint64_t ProductPageCardBackgroundView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for ProductPageCardBackgroundView() + 20);
  result = swift_getKeyPath();
  *v2 = result;
  v2[8] = 0;
  return result;
}

uint64_t type metadata accessor for ProductPageCardBackgroundView()
{
  result = qword_27F2346C0;
  if (!qword_27F2346C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF481E0@<X0>(void *a1@<X8>)
{
  sub_24E6E4B8C();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EF48234@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24EF49304(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F9234D8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24EF4841C()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ProductPageCardBackgroundView() + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t ProductPageCardBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_24F9234D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234688);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234690);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234698);
  MEMORY[0x28223BE20](v45);
  v48 = &v43 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346A0);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - v14;
  v15 = sub_24F924258();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_24F924B38();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v17 = _Q0;
  sub_24EF48234(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  LOBYTE(v20) = sub_24F9234C8();
  v27 = *(v2 + 8);
  v27(v4, v1);
  v27(v7, v1);
  if ((v20 & 1) == 0)
  {
    v51 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346A8);
    sub_24E602068(&qword_27F2346B0, &qword_27F2346A8);
  }

  v28 = sub_24F9238D8();
  sub_24E6EB910(v17, v10);
  *&v10[*(v8 + 52)] = v28;
  *&v10[*(v8 + 56)] = 256;
  v29 = sub_24F927618();
  v31 = v30;
  v32 = &v12[*(v44 + 36)];
  sub_24EF48B24(v17, v32);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346B8) + 36));
  *v33 = v29;
  v33[1] = v31;
  sub_24E6009C8(v10, v12, &qword_27F234688);
  v34 = sub_24EF4841C();
  swift_getKeyPath();
  v51 = v34;
  sub_24EF48D98();
  sub_24F91FD88();

  swift_beginAccess();
  LODWORD(v31) = *(v34 + 16);

  if ((v31 - 1) >= 2)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = v48;
  sub_24E6009C8(v12, v48, &qword_27F234690);
  *(v36 + *(v45 + 36)) = v35;
  v37 = sub_24F9276C8();
  v38 = sub_24EF4841C();
  swift_getKeyPath();
  v50 = v38;
  sub_24F91FD88();

  swift_beginAccess();
  v39 = *(v38 + 16);

  v40 = v46;
  sub_24E6009C8(v36, v46, &qword_27F234698);
  v41 = v40 + *(v47 + 36);
  *v41 = v37;
  *(v41 + 8) = v39;
  sub_24E6009C8(v40, v49, &qword_27F2346A0);
  return sub_24E6EB974(v17);
}

uint64_t sub_24EF48B24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = sub_24F9234D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_24EF48234(&v20 - v12);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
  v14 = sub_24F9234C8();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if (v14)
  {
    sub_24F926C88();
    v16 = sub_24F926D08();

    sub_24E6EB910(v21, v6);
    v17 = &v6[*(v3 + 36)];
    *v17 = v16;
    *(v17 + 8) = xmmword_24F9B3410;
    *(v17 + 3) = 0x4010000000000000;
    sub_24E6009C8(v6, a2, &qword_27F21A1C8);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v4 + 56))(a2, v18, 1, v3);
}

unint64_t sub_24EF48D98()
{
  result = qword_27F2189A8;
  if (!qword_27F2189A8)
  {
    type metadata accessor for FlowPreviewEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2189A8);
  }

  return result;
}

uint64_t sub_24EF48E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EF48F00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_24EF48FC8()
{
  sub_24EF49084(319, &qword_27F222B10, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_24EF49084(319, &qword_27F2346D0, type metadata accessor for FlowPreviewEnvironment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF49084(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EF490DC()
{
  result = qword_27F2346D8;
  if (!qword_27F2346D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2346A0);
    sub_24EF49194();
    sub_24E602068(&qword_27F234700, qword_27F234708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2346D8);
  }

  return result;
}

unint64_t sub_24EF49194()
{
  result = qword_27F2346E0;
  if (!qword_27F2346E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234698);
    sub_24EF49220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2346E0);
  }

  return result;
}

unint64_t sub_24EF49220()
{
  result = qword_27F2346E8;
  if (!qword_27F2346E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234690);
    sub_24E602068(&qword_27F2346F0, &qword_27F234688);
    sub_24E602068(&qword_27F2346F8, &qword_27F2346B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2346E8);
  }

  return result;
}

uint64_t sub_24EF49304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF49374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  type metadata accessor for RefreshChallengeDetailAction();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF494D8, 0, 0);
}

uint64_t sub_24EF494D8()
{
  v17 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[18];
  v3 = sub_24F9220D8();
  v0[27] = __swift_project_value_buffer(v3, qword_27F39E778);
  sub_24ECB334C(v2, v1);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_24ECB33B0(v7);
    v12 = sub_24E7620D4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24E5DD000, v4, v5, "RefreshChallengeDetailActionImplementation refreshing challenge: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {

    sub_24ECB33B0(v7);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_24EF496F8;

  return MEMORY[0x28217F228](v0 + 7, v13, v13);
}

uint64_t sub_24EF496F8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24EF49E30;
  }

  else
  {
    v2 = sub_24EF4980C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF4980C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v0[30] = sub_24F92B7F8();
  v0[31] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EF498D8, v2, v1);
}

uint64_t sub_24EF498D8()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 256) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24EF49960, 0, 0);
}

uint64_t sub_24EF49960()
{
  *(v0 + 264) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EF499EC, v2, v1);
}

uint64_t sub_24EF499EC()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24EF4A86C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);

  return MEMORY[0x2822009F8](sub_24EF49B24, 0, 0);
}

uint64_t sub_24EF49B24()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  sub_24F920FF8();
  v4 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234790);
  v5 = sub_24F920878();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[34] = v8;
  *(v8 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v8 + v7, v1, v3);
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D0CFA0], v5);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_24EF49D00;
  v10 = v0[25];

  return MEMORY[0x282165180](v10, v8, v4, v12);
}

uint64_t sub_24EF49D00()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_24EF4A100;
  }

  else
  {
    v2 = sub_24EF49FEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF49E30()
{
  v1 = v0[29];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "RefreshChallengeDetailActionImplementation failed to refresh challenge: %@", v5, 0xCu);
    sub_24E6D44CC(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[17];
  v10 = *MEMORY[0x277D21CA8];
  v11 = sub_24F928AE8();
  (*(*(v11 - 8) + 104))(v9, v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24EF49FEC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[17];
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_24F928AE8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EF4A100()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[36];
  v5 = v4;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "RefreshChallengeDetailActionImplementation failed to refresh challenge: %@", v8, 0xCu);
    sub_24E6D44CC(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[17];
  v13 = *MEMORY[0x277D21CA8];
  v14 = sub_24F928AE8();
  (*(*(v14 - 8) + 104))(v12, v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24EF4A360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  refreshed = type metadata accessor for RefreshChallengeDetailAction();
  v10 = *(refreshed - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  sub_24ECB334C(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24EF4A69C(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9B35F0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EF4A5A0()
{
  v1 = (type metadata accessor for RefreshChallengeDetailAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EF4A69C(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshChallengeDetailAction();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24EF4A700(uint64_t a1)
{
  v4 = *(type metadata accessor for RefreshChallengeDetailAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EF49374(a1, v1 + v5, v6);
}

uint64_t sub_24EF4A81C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EF4A86C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InAppPurchaseInstallPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD00000000000001ELL;
  *(a2 + 1) = 0x800000024F9B3610;
  v4 = *(type metadata accessor for InAppPurchaseInstallPageIntent() + 20);
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for InAppPurchaseInstallPageIntent()
{
  result = qword_27F2347A8;
  if (!qword_27F2347A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InAppPurchaseInstallPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InAppPurchaseInstallPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseInstallPageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall InAppPurchaseInstallPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for InAppPurchaseInstallPageIntent();
    v5 = isa;
    v8 = sub_24F91F398();
    v7 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v8, v6}];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF4AC14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF4AC74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EF4AD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t sub_24EF4ADD8()
{
  sub_24E9421D0();
  result = sub_24F92C3D8();
  qword_27F39D090 = result;
  return result;
}

void sub_24EF4AE14(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t sub_24EF4AE84()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_24E857CC8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF4AF0C()
{
  v1 = v0;
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F929758();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v8 = sub_24F91EB48();
  if (v8)
  {
    v9 = sub_24E9E1CDC(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  *&v31 = 6778732;
  *(&v31 + 1) = 0xE300000000000000;
  sub_24E612B0C(&v31, v30);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v11;
  sub_24E81C1D4(v30, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v13 = v29;
  if (qword_27F210C78 != -1)
  {
    swift_once();
  }

  v14 = qword_27F39D090;
  v32 = sub_24E9421D0();
  *&v31 = v14;
  sub_24E612B0C(&v31, v30);
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v13;
  sub_24E81C1D4(v30, 0x726556746E657665, 0xEC0000006E6F6973, v16);
  v17 = v29;
  v32 = v10;
  *&v31 = 0xD00000000000001BLL;
  *(&v31 + 1) = 0x800000024FA64AF0;
  sub_24E612B0C(&v31, v30);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v17;
  sub_24E81C1D4(v30, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v18);
  v19 = v29;
  v20 = v1[11];
  v21 = v1[12];
  v32 = v10;
  *&v31 = v20;
  *(&v31 + 1) = v21;
  sub_24E612B0C(&v31, v30);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v19;
  sub_24E81C1D4(v30, 0x726574726F706572, 0xEC00000044495555, v22);
  v23 = v29;
  if (v9)
  {

    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v23;
    sub_24EF4B5B4(v9, sub_24F05AC64, 0, v24, &v31);
  }

  sub_24F929728();
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v25 = sub_24F92AAE8();
  __swift_project_value_buffer(v25, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v32 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  sub_24F9283D8();
  sub_24E857CC8(&v31);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  sub_24F9299F8();
  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  sub_24F9299E8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EF4B5B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_24F0F1D50(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_24E612B0C(v47, v45);
  v14 = *a5;
  result = sub_24E76D644(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_24E89873C(v20, a4 & 1);
    result = sub_24E76D644(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24F92CF88();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_24E8AD8E4();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_24E643A9C(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1(v25 + v24);
    sub_24E612B0C(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_24E612B0C(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_24F0F1D50(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_24E612B0C(v47, v45);
        v34 = *a5;
        result = sub_24E76D644(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_24E89873C(v38, 1);
          result = sub_24E76D644(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_24E643A9C(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_1(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1(v33 + v32);
          sub_24E612B0C(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_24E612B0C(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_24F0F1D50(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_24E6586B4();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t WidgetTodayCardTemplate.storyId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WidgetTodayCardTemplate.heading.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetTodayCardTemplate.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *WidgetTodayCardTemplate.backgroundColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t WidgetTodayCardTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WidgetTodayCardTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t WidgetTodayCardTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v69 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v60 - v8;
  v9 = sub_24F9285B8();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v60 - v12;
  v13 = sub_24F92AC28();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v70 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v30 = v26;
  v31 = v15;
  v32 = *(v16 + 8);
  v32(v30, v31);
  if (!v29)
  {
    v48 = sub_24F92AC38();
    sub_24EF4D75C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x644979726F7473;
    v49[1] = 0xE700000000000000;
    v49[2] = v69;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v32(v70, v31);
    v47 = v75;
    goto LABEL_5;
  }

  v3[2] = v27;
  v3[3] = v29;
  v33 = v3;
  v34 = v70;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v32(v23, v31);
  v33[4] = v35;
  v33[5] = v37;
  sub_24F928398();
  v38 = sub_24F928348();
  v40 = v39;
  v32(v23, v31);
  v33[6] = v38;
  v33[7] = v40;
  sub_24F928398();
  LOBYTE(v38) = sub_24F928278();
  v32(v20, v31);
  *(v33 + 64) = (v38 == 2) | v38 & 1;
  v41 = v66;
  sub_24F928398();
  v42 = v67;
  sub_24F9282B8();
  v66 = v31;
  v32(v41, v31);
  v43 = v34;
  if ((*(v71 + 48))(v42, 1, v72) == 1)
  {
    sub_24E601704(v42, &qword_27F2213B0);
    v44 = sub_24F92AC38();
    sub_24EF4D75C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v45 = 0x777472416E6F6369;
    v46 = v69;
    v45[1] = 0xEB000000006B726FLL;
    v45[2] = v46;
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D22530], v44);
    swift_willThrow();
    v32(v34, v66);

    v47 = v75;
    v3 = v33;
LABEL_5:
    swift_deallocPartialClassInstance();
    (*(v73 + 8))(v47, v74);
    return v3;
  }

  v3 = v33;
  v61 = v32;
  v50 = (*(v71 + 32))(v68, v42, v72);
  MEMORY[0x28223BE20](v50);
  v51 = v75;
  *(&v60 - 2) = v75;
  type metadata accessor for Artwork();
  v52 = v63;
  v53 = sub_24F92ABB8();
  if (!v52)
  {
    v33[9] = v53;
    sub_24F928398();
    (*(v73 + 16))(v62, v51, v74);
    sub_24EF4D75C(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v33[10] = v76;
    sub_24F928398();
    v54 = JSONObject.appStoreColor.getter();
    v55 = v66;
    v56 = v61;
    v61(v23, v66);
    v3[11] = v54;
    sub_24F928398();
    v57 = v64;
    sub_24F928268();
    v56(v23, v55);
    sub_24E6009C8(v57, v3 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, &qword_27F228530);
    sub_24F928398();
    v58 = v65;
    sub_24F928288();
    v56(v43, v55);
    v56(v23, v55);
    (*(v71 + 8))(v68, v72);
    sub_24E6009C8(v58, v3 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, &unk_27F22EC30);
    (*(v73 + 8))(v75, v74);
    return v3;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24EF4C4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  type metadata accessor for Artwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EF4D75C(&qword_27F219660, type metadata accessor for Artwork);
  return sub_24F929548();
}

uint64_t WidgetTodayCardTemplate.hash(into:)()
{
  v1 = sub_24F91F648();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v18 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_24F92B218();
  if (*(v0 + 40))
  {
    sub_24F92D088();
    sub_24F92B218();
    if (*(v0 + 56))
    {
LABEL_3:
      sub_24F92D088();
      sub_24F92B218();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24F92D088();
    if (*(v0 + 56))
    {
      goto LABEL_3;
    }
  }

  sub_24F92D088();
LABEL_6:
  v13 = v19;
  sub_24F92D088();
  sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, v12, &qword_27F228530);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_24F92D088();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_24F92D088();
    sub_24EF4D75C(&qword_27F2252E0, MEMORY[0x277CC9260]);
    sub_24F92AEF8();
    (*(v7 + 8))(v9, v6);
  }

  sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, v5, &unk_27F22EC30);
  v14 = v20;
  if ((*(v13 + 48))(v5, 1, v20) == 1)
  {
    return sub_24F92D088();
  }

  v16 = v18;
  (*(v13 + 32))(v18, v5, v14);
  sub_24F92D088();
  sub_24EF4D75C(&qword_27F2252E8, MEMORY[0x277CC9578]);
  sub_24F92AEF8();
  return (*(v13 + 8))(v16, v14);
}

uint64_t WidgetTodayCardTemplate.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, &qword_27F228530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, &unk_27F22EC30);
  return v0;
}

uint64_t WidgetTodayCardTemplate.__deallocating_deinit()
{
  WidgetTodayCardTemplate.deinit();

  return swift_deallocClassInstance();
}

uint64_t WidgetTodayCardTemplate.hashValue.getter()
{
  sub_24F92D068();
  WidgetTodayCardTemplate.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EF4CC18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = WidgetTodayCardTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF4CC80()
{
  sub_24F92D068();
  WidgetTodayCardTemplate.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EF4CCE8()
{
  sub_24F92D068();
  WidgetTodayCardTemplate.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit23WidgetTodayCardTemplateC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F648();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2347D0);
  MEMORY[0x28223BE20](v9);
  v51 = &v46 - v10;
  v11 = sub_24F91F4A8();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C18);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v20)
  {
    if (!v21 || (*(a1 + 32) != *(a2 + 32) || v20 != v21) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v21)
  {
    goto LABEL_44;
  }

  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  if (v22)
  {
    if (!v23 || (*(a1 + 48) != *(a2 + 48) || v22 != v23) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v23)
  {
    goto LABEL_44;
  }

  if (*(a1 + 64) != *(a2 + 64) || (sub_24EA16044(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    goto LABEL_44;
  }

  v49 = v4;
  v24 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!v24)
    {
      goto LABEL_44;
    }

    v48 = *(a1 + 80);

    LODWORD(v48) = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v48, v24);

    if ((v48 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v24)
  {
    goto LABEL_44;
  }

  v25 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!v25)
    {
      goto LABEL_44;
    }

    v47 = *(a1 + 88);
    v48 = sub_24E77ACC8();
    v46 = v25;
    v47 = v47;
    v26 = sub_24F92C408();

    if ((v26 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v25)
  {
    goto LABEL_44;
  }

  v27 = OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url;
  v28 = *(v17 + 48);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, v19, &qword_27F228530);
  v48 = v28;
  sub_24E60169C(a2 + v27, &v19[v28], &qword_27F228530);
  v29 = *(v53 + 48);
  if (v29(v19, 1, v11) == 1)
  {
    if (v29(&v19[v48], 1, v11) == 1)
    {
      sub_24E601704(v19, &qword_27F228530);
      goto LABEL_37;
    }

LABEL_35:
    v30 = &qword_27F226C18;
    v31 = v19;
LABEL_43:
    sub_24E601704(v31, v30);
    goto LABEL_44;
  }

  sub_24E60169C(v19, v16, &qword_27F228530);
  if (v29(&v19[v48], 1, v11) == 1)
  {
    (*(v53 + 8))(v16, v11);
    goto LABEL_35;
  }

  v32 = v53;
  (*(v53 + 32))(v13, &v19[v48], v11);
  sub_24EF4D75C(&qword_27F226C38, MEMORY[0x277CC9260]);
  LODWORD(v48) = sub_24F92AFF8();
  v33 = *(v32 + 8);
  v33(v13, v11);
  v33(v16, v11);
  sub_24E601704(v19, &qword_27F228530);
  if ((v48 & 1) == 0)
  {
LABEL_44:
    v41 = 0;
    return v41 & 1;
  }

LABEL_37:
  v34 = OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate;
  v35 = *(v9 + 48);
  v36 = a1 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate;
  v37 = v51;
  sub_24E60169C(v36, v51, &unk_27F22EC30);
  sub_24E60169C(a2 + v34, v37 + v35, &unk_27F22EC30);
  v38 = v52;
  v39 = *(v52 + 48);
  v40 = v49;
  if (v39(v37, 1, v49) != 1)
  {
    sub_24E60169C(v37, v8, &unk_27F22EC30);
    if (v39(v37 + v35, 1, v40) != 1)
    {
      v43 = v37 + v35;
      v44 = v50;
      (*(v38 + 32))(v50, v43, v40);
      sub_24EF4D75C(&qword_27F2347D8, MEMORY[0x277CC9578]);
      v41 = sub_24F92AFF8();
      v45 = *(v38 + 8);
      v45(v44, v40);
      v45(v8, v40);
      sub_24E601704(v37, &unk_27F22EC30);
      return v41 & 1;
    }

    (*(v38 + 8))(v8, v40);
    goto LABEL_42;
  }

  if (v39(v37 + v35, 1, v40) != 1)
  {
LABEL_42:
    v30 = &qword_27F2347D0;
    v31 = v37;
    goto LABEL_43;
  }

  sub_24E601704(v37, &unk_27F22EC30);
  v41 = 1;
  return v41 & 1;
}

uint64_t type metadata accessor for WidgetTodayCardTemplate()
{
  result = qword_27F2347C0;
  if (!qword_27F2347C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF4D58C()
{
  sub_24EF4D708(319, &qword_27F218378, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_24EF4D708(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EF4D708(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EF4D75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UILabel.stringValue.getter()
{
  v1 = [v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92B0D8();

  return v3;
}

void sub_24EF4D80C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92B0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void UILabel.stringValue.setter()
{
  v1 = sub_24F92B098();

  [v0 setText_];
}

void (*UILabel.stringValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92B0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_24EF4D95C;
}

void sub_24EF4D95C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    v3 = sub_24F92B098();

    [v2 setText_];
  }

  else
  {
    v3 = sub_24F92B098();

    [v2 setText_];
  }
}

id UILabel.stringColor.getter()
{
  v1 = [v0 textColor];

  return v1;
}

void UILabel.stringColor.setter(void *a1)
{
  [v1 setTextColor_];
}

void (*UILabel.stringColor.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 textColor];
  return sub_24EF4DAF0;
}

void sub_24EF4DAF0(id *a1)
{
  v1 = *a1;
  [a1[1] setTextColor_];
}

id (*UILabel.alignment.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 textAlignment];
  return sub_24EF4DBB0;
}

uint64_t sub_24EF4DBC4()
{
  v1 = [*v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92B0D8();

  return v3;
}

void sub_24EF4DC2C()
{
  v1 = *v0;
  v2 = sub_24F92B098();

  [v1 setText_];
}

void (*sub_24EF4DC90(uint64_t **a1))(void *a1)
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
  v2[4] = UILabel.stringValue.modify(v2);
  return sub_24E622878;
}

id sub_24EF4DD04()
{
  v1 = [*v0 textColor];

  return v1;
}

void sub_24EF4DD3C(void *a1)
{
  [*v1 setTextColor_];
}

void (*sub_24EF4DD84(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 textColor];
  return sub_24EF4DAF0;
}

id (*sub_24EF4DE04(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 textAlignment];
  return sub_24EF4DBB0;
}

void sub_24EF4DE5C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_24F92B098();
  [v2 setText_];
}

id sub_24EF4DEC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textColor];
  *a2 = result;
  return result;
}

id sub_24EF4DF10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textAlignment];
  *a2 = result;
  return result;
}

uint64_t GuidedSearchQuery.init(searchTerm:selectedTokens:optimizationTerm:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t GuidedSearchQuery.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = 0xEA00000000006D72;
  sub_24F928398();
  v39 = sub_24F928348();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  if (v18)
  {
    v42 = v18;
    v43 = a1;
    v16 = 0xEE00736E656B6F54;
    sub_24F928398();
    sub_24F9282B8();
    v19(v12, v7);
    v20 = sub_24F92AC28();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {

      sub_24E8F2EE8(v6);
LABEL_9:
      v22 = v43;
      v23 = 0x64657463656C6573;
      goto LABEL_10;
    }

    v24 = sub_24F92ABC8();
    (*(v21 + 8))(v6, v20);
    if (!v24)
    {

      goto LABEL_9;
    }

    v38 = v24;
    v23 = 0xD000000000000010;
    v16 = 0x800000024FA64B90;
    v25 = v41;
    v22 = v43;
    sub_24F928398();
    v26 = sub_24F928348();
    v28 = v27;
    v19(v25, v7);
    if (v28)
    {
      v29 = sub_24F45D828(v38);

      v30 = sub_24F9285B8();
      (*(*(v30 - 8) + 8))(v44, v30);
      result = (v19)(v22, v7);
      v32 = v40;
      v33 = v42;
      *v40 = v39;
      v32[1] = v33;
      v32[2] = v29;
      v32[3] = v26;
      v32[4] = v28;
      return result;
    }
  }

  else
  {
    v22 = a1;
    v23 = 0x6554686372616573;
  }

LABEL_10:
  v34 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v35 = v23;
  v35[1] = v16;
  v35[2] = &type metadata for GuidedSearchQuery;
  (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
  swift_willThrow();
  v36 = sub_24F9285B8();
  (*(*(v36 - 8) + 8))(v44, v36);
  return (v19)(v22, v7);
}

uint64_t GuidedSearchQuery.searchTerm.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GuidedSearchQuery.optimizationTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

GameStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.merging(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v3 = v1;
  v4 = *v2;
  v14 = sub_24EF4F1A0(v4, contentsOf._rawValue);
  v6 = sub_24EF4F49C(v5);
  v8 = v7;

  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v9 = v4 >> 62 ? sub_24F92C738() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = 0;
      while (1)
      {
        if (v9 == v10)
        {
          v10 = 0;
LABEL_16:
          sub_24F14A464(v10, v10, v6);
          goto LABEL_17;
        }

        if ((v4 & 0xC000000000000001) == 0)
        {
          break;
        }

        v12 = *(MEMORY[0x253052270](v10, v4) + 32);
        swift_unknownObjectRelease();
        if (v12 != 1)
        {
          goto LABEL_16;
        }

LABEL_10:
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_21;
        }
      }

      if (v10 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      if (!sub_24F92C738())
      {
        goto LABEL_17;
      }
    }

    if ((*(*(v4 + 8 * v10 + 32) + 32) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_17:

  if (v8 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_19;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_19:
  result.tokens._rawValue = sub_24EA0B88C(v8);
LABEL_26:
  *v3 = v14;
  return result;
}

GameStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.updateSelection(ofTokenAt:to:)(Swift::Int ofTokenAt, Swift::Bool to)
{
  v4 = to;
  v6 = v2;
  v14 = *v3;

  sub_24EA0E780(ofTokenAt);
  v7 = GuidedSearchToken.withSelection(_:)(v4);

  v8 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_23:
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      if (v8)
      {
        v10 = sub_24F92C738();
        goto LABEL_17;
      }

      v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
      sub_24F14A578(v10, v10, v7);

      *v6 = v14;
      return result;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((*(*(v14 + 8 * v10 + 32) + 32) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_22;
    }
  }

  v12 = *(MEMORY[0x253052270](v10, v14) + 32);
  swift_unknownObjectRelease();
  if (v12 == 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (!v8)
  {
    result.tokens._rawValue = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_17:
  result.tokens._rawValue = sub_24F92C738();
LABEL_18:
  if (result.tokens._rawValue < v10)
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

GameStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.selectedOnly()()
{
  v2 = v0;
  v3 = *v1;
  v10 = MEMORY[0x277D84F90];
  if (*v1 >> 62)
  {
LABEL_16:
    result.tokens._rawValue = sub_24F92C738();
    rawValue = result.tokens._rawValue;
    if (result.tokens._rawValue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    rawValue = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (rawValue)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          result.tokens._rawValue = MEMORY[0x253052270](v5, v3);
          v7 = result.tokens._rawValue;
          v8 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v10;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v3 + 8 * v5 + 32);

          v8 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        swift_beginAccess();
        if (v7[32])
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          result.tokens._rawValue = sub_24F92C958();
        }

        else
        {
        }

        ++v5;
        if (v8 == rawValue)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:
  *v2 = v9;
  return result;
}

uint64_t GuidedSearchTokenCollection.endIndex.getter()
{
  if (*v0 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t GuidedSearchTokenCollection.subscript.getter(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
LABEL_8:
    JUMPOUT(0x253052270);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_24EF4EA68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if (a4 >> 62)
  {
    v10 = result;
    v11 = a4;
    v12 = a2;
    v13 = a3;
    result = sub_24F92C738();
    if (v10 < 0 || result < v10)
    {
      goto LABEL_23;
    }

    v14 = sub_24F92C738();
    a3 = v13;
    a2 = v12;
    a4 = v11;
    v5 = v14;
    result = v10;
    if (v13 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 < result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a3 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  if (v5 < a3)
  {
    goto LABEL_22;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_12:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v9 = result;
    v8 = sub_24F92C738();
    result = v9;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 0 || v8 < result)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_24EF4EB94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v5 = a2;
  result = sub_24F92C738();
  a2 = v5;
  if (v3 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < result)
  {
    *a2 = v3;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *sub_24EF4EC04(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v4 = result;
  v3 = sub_24F92C738();
  result = v4;
  if (v2 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v2 < v3)
  {
    *result = v2;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24EF4EC88@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_24F92C738();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

uint64_t (*sub_24EF4ECD8(uint64_t *a1, uint64_t (**a2)()))()
{
  result = *a2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x253052270](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a1 = v5;
    a1[1] = v5;
    return sub_24EF4ED58;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF4ED60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = *v2;
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = result;
    result = sub_24F92C738();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v7 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v7 = result;
      a2 = v2;
      result = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[1] = v4;
    a2[2] = result;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_24EF4EDF8@<X0>(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_24F92C738();
    if (result < 0)
    {
      __break(1u);
    }

    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

BOOL sub_24EF4EE50()
{
  if (*v0 >> 62)
  {
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_24EF4EEAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else if (!(*v3 >> 62))
  {
    result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v6 = a3;
  result = sub_24F92C738();
  a3 = v6;
  if (v4 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (result >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24EF4EF1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_24EF4EA68(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_24EF4EF58(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*v2 >> 62)
  {
    result = sub_24F92C738();
    if (v3 < 0 || result < v3)
    {
      goto LABEL_10;
    }

    result = sub_24F92C738();
    if (v4 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 <= result)
  {
    if (v4 < 0)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

LABEL_4:
    if (result >= v4)
    {
      return v4 - v3;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *sub_24EF4EFE4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_24EF4F000(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_24EF4F01C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EF4F038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*v2 >> 62)
  {
    v5 = a2;
    result = sub_24F92C738();
    a2 = v5;
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v3 < result)
  {
    *a2 = v3 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t *sub_24EF4F0A0(uint64_t *result)
{
  v2 = *result;
  if (*v1 >> 62)
  {
    v4 = result;
    v3 = sub_24F92C738();
    result = v4;
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v2 < v3)
  {
    *result = v2 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t sub_24EF4F124()
{
  v1 = sub_24E6B7F88(*v0);

  return v1;
}

uint64_t sub_24EF4F1A0(unint64_t a1, unint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v20 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1;
    v17 = a1 + 32;

    v3 = 0;
    while (v20)
    {
      a1 = MEMORY[0x253052270](v3, v19);
      v6 = a1;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        goto LABEL_42;
      }

LABEL_15:
      if (a2 >> 62)
      {
        a1 = sub_24F92C738();
        v8 = a1;
      }

      else
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      v10 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v8 == v9)
        {

          MEMORY[0x253050F00](v14);
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v5 = v22;
          goto LABEL_8;
        }

        if (v10)
        {
          v11 = MEMORY[0x253052270](v9, a2);
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v11 = *(a2 + 8 * v9 + 32);
        }

        if (*(v11 + 16) == *(v6 + 16) && *(v11 + 24) == *(v6 + 24))
        {
          break;
        }

        v13 = sub_24F92CE08();

        if (v13)
        {
          goto LABEL_35;
        }

        v7 = __OFADD__(v9++, 1);
        if (v7)
        {
          goto LABEL_41;
        }
      }

LABEL_35:
      if (v10)
      {
        v4 = MEMORY[0x253052270](v9, a2);
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }
      }

      MEMORY[0x253050F00](v4);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v5 = v22;
      sub_24EA0E780(v9);

LABEL_8:
      if (v3 == v2)
      {
        return v5;
      }
    }

    if (v3 >= *(v18 + 16))
    {
      goto LABEL_43;
    }

    v6 = *(v17 + 8 * v3);

    v7 = __OFADD__(v3++, 1);
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v15 = a1;
    v2 = sub_24F92C738();
    a1 = v15;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_24EF4F49C(unint64_t result)
{
  v1 = result;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24F92C738();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v5 = *(MEMORY[0x253052270](v3, v1) + 32);
        v6 = swift_unknownObjectRetain();
        if (v5 == 1)
        {
          MEMORY[0x253050F00](v6);
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          swift_unknownObjectRelease();
          v4 = v11;
        }

        else
        {
          MEMORY[0x253050F00]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          swift_unknownObjectRelease();
        }

        ++v3;
      }

      while (v2 != v3);
    }

    else
    {
      v7 = v1 + 32;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v8 = *(*v7 + 32);
        v9 = swift_retain_n();
        if (v8 == 1)
        {
          MEMORY[0x253050F00](v9);
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v4 = v11;
        }

        else
        {
          MEMORY[0x253050F00]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
        }

        v7 += 8;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EF4F734()
{
  result = qword_27F2347E0;
  if (!qword_27F2347E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2347E0);
  }

  return result;
}

unint64_t sub_24EF4F804()
{
  result = qword_27F2347F8;
  if (!qword_27F2347F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2347F8);
  }

  return result;
}

unint64_t sub_24EF4F85C()
{
  result = qword_27F234800;
  if (!qword_27F234800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234800);
  }

  return result;
}

uint64_t sub_24EF4F92C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2347F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EF4F9A8()
{
  result = qword_27F234818;
  if (!qword_27F234818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234818);
  }

  return result;
}

uint64_t sub_24EF4FA3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0);
    sub_24E62A758();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ReusableSupplementaryRegistration.elementKind.getter()
{
  v0 = sub_24EF4FDB0();

  return v0;
}

uint64_t ReusableSupplementaryRegistration.reuseIdentifier.getter()
{
  v0 = sub_24EF4FDB8();

  return v0;
}

uint64_t ReusableSupplementaryRegistration.dequeueConfiguredSupplementary(at:in:)(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 5);
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 24);
  v8 = v3;
  return sub_24EDE51C0(&v5, a1);
}

void ReusableSupplementaryRegistration.reconfigureSupplementary(at:in:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[4];
  v8 = sub_24F92B098();
  v9 = sub_24F91F9D8();
  v11 = [a2 supplementaryViewForElementKind:v8 atIndexPath:v9];

  if (v11)
  {
    v10 = swift_dynamicCastUnknownClass();
    if (v10)
    {
      v7(v10, v5, v6, a1);
    }
  }
}

uint64_t sub_24EF4FD38()
{
  v0 = sub_24EF4FDB0();

  return v0;
}

uint64_t sub_24EF4FD70()
{
  v0 = sub_24EF4FDB8();

  return v0;
}

uint64_t sub_24EF4FE10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double Artwork.Style.iconHeight(fromWidth:)(double result)
{
  v2 = *v1;
  if (((1 << v2) & 0x15F) == 0)
  {
    v3 = result * 3.0;
    if (v2 == 5)
    {
      return v3 * 0.25;
    }

    else
    {
      return v3 / 5.0;
    }
  }

  return result;
}

double Artwork.Style.iconCornerRadius(for:isPlaceholder:)(char a1, double a2, double a3)
{
  v5 = *v3;
  result = 0.0;
  if (v5 > 3)
  {
    if (*v3 > 5u)
    {
      if (v5 == 6)
      {
        Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, a2 + a2, a3 + a3);
      }

      else if (v5 == 7)
      {

        return ASKHomeScreenIconsGetScaledTVCornerRadiusForSize(a2);
      }

      return result;
    }

    if (v5 != 4)
    {
      return a3 * 0.5;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }

LABEL_18:
    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    return v7 * 0.5;
  }

  if (*v3 > 1u)
  {
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else if (!*v3)
  {
    return result;
  }

  return ASKHomeScreenIconsGetScaledCornerRadiusForSize(a2, a3);
}

uint64_t Artwork.Style.orIfUnspecified(_:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 > 3u || *v2)
  {
    v7 = sub_24F92CE08();

    if ((v7 & 1) == 0)
    {
      v4 = v5;
    }
  }

  else
  {
  }

  *a2 = v4;
  return result;
}

double Artwork.Style.iconWidth(fromHeight:)(double result)
{
  v2 = *v1;
  if (((1 << v2) & 0x15F) == 0)
  {
    if (v2 == 5)
    {
      v3 = 4.0;
    }

    else
    {
      v3 = 5.0;
    }

    return result * v3 / 3.0;
  }

  return result;
}

uint64_t Artwork.Style.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t Artwork.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6669636570736E75;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0x646E756F72;
    }

    if (*v0)
    {
      v6 = 0x526465646E756F72;
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
    v2 = 7364969;
    v3 = 0x746365527674;
    if (v1 != 7)
    {
      v3 = 0x656E726F64616E75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 != 4)
    {
      v4 = 1819044208;
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

uint64_t sub_24EF50324()
{
  sub_24F92D068();
  sub_24F2032F0();
  return sub_24F92D0B8();
}

uint64_t sub_24EF50374()
{
  sub_24F92D068();
  sub_24F2032F0();
  return sub_24F92D0B8();
}

unint64_t sub_24EF503C4@<X0>(unint64_t *a1@<X8>)
{
  result = Artwork.Style.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24EF503F0()
{
  result = qword_27F2348B8;
  if (!qword_27F2348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2348B8);
  }

  return result;
}

uint64_t ShareGameActivitySettingsSection.init(settings:)@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(type metadata accessor for ShareGameActivitySettingsSection() + 20);
  sub_24F926F28();
  *v1 = v3;
  *(v1 + 8) = v4;
  type metadata accessor for GamesSettings(0);
  sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  return sub_24F927378();
}

uint64_t type metadata accessor for ShareGameActivitySettingsSection()
{
  result = qword_27F234920;
  if (!qword_27F234920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareGameActivitySettingsSection.body.getter()
{
  sub_24EF5185C(&v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C8);
  sub_24EF51E50();
  sub_24EF52154();
  return sub_24F9272C8();
}

uint64_t sub_24EF50610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v36 = type metadata accessor for ShareGameActivitySettingsSection();
  v32 = *(v36 - 1);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348F8);
  v33 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348E8);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v31 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348E0);
  MEMORY[0x28223BE20](v40);
  v39 = &v31 - v12;
  if (qword_27F211790 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24C470;
  v51 = *algn_27F24C478;

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v5 + 8))(v7, v4);
  v31 = sub_24E600AEC();
  sub_24F9270E8();
  v35 = v4;
  sub_24F927358();
  v13 = v44;
  swift_getKeyPath();
  v44 = v13;
  v34 = sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v14 = *(v13 + 16);

  LOBYTE(v44) = v14;
  sub_24EF526D4(a1, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v16 = swift_allocObject();
  sub_24EF5273C(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_24E602068(&qword_27F234900, &qword_27F2348F8);
  v18 = v42;
  sub_24F926AC8();

  (*(v33 + 8))(v9, v18);
  if (qword_27F2117B8 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24C4D0;
  v51 = *algn_27F24C4D8;
  v19 = a1 + *(v36 + 5);
  v20 = *v19;
  v21 = *(v19 + 8);
  v48 = v20;
  v49 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  v22 = sub_24F926F58();
  v36 = &v31;
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348F0);
  v44 = v42;
  v45 = MEMORY[0x277D839B0];
  v46 = v17;
  v47 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F234908, &qword_27F2348F0);
  v23 = v38;
  v24 = v39;
  v25 = v43;
  sub_24F926908();

  (*(v37 + 8))(v25, v23);
  sub_24F927358();
  v26 = v44;
  swift_getKeyPath();
  v44 = v26;
  sub_24F91FD88();

  LOBYTE(v25) = *(v26 + 17);

  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v29 = (v24 + *(v40 + 36));
  *v29 = KeyPath;
  v29[1] = sub_24E600A48;
  v29[2] = v28;
  sub_24EF51F0C();
  sub_24F9262F8();
  return sub_24EF527E0(v24);
}

void sub_24EF50DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  sub_24F927358();
  swift_getKeyPath();
  sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v0 = *(v6 + 16);

  if ((v0 & 1) == 0)
  {
    sub_24F927358();
    swift_getKeyPath();
    sub_24F91FD88();

    v1 = *(v6 + 17);

    if ((v1 & 1) == 0)
    {
      type metadata accessor for ShareGameActivitySettingsSection();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
      sub_24F926F48();
      if (qword_27F211450 != -1)
      {
        swift_once();
      }

      v2 = sub_24F9220D8();
      __swift_project_value_buffer(v2, qword_27F39E940);
      v3 = sub_24F9220B8();
      v4 = sub_24F92BD98();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_24E5DD000, v3, v4, "Turn off confirmation dialog is presented.", v5, 2u);
        MEMORY[0x2530542D0](v5, -1, -1);
      }
    }
  }
}

uint64_t sub_24EF51018@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v39 - v4;
  v41 = sub_24F924138();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShareGameActivitySettingsSection();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  MEMORY[0x28223BE20](v11);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234948);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v39 - v19;
  if (qword_27F2117C8 != -1)
  {
    swift_once();
  }

  v51 = qword_27F24C4F0;
  v52 = *algn_27F24C4F8;
  sub_24EF526D4(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_24EF5273C(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_24E600AEC();

  sub_24F926FB8();
  sub_24F924128();
  sub_24E602068(&qword_27F222D00, &qword_27F222D08);
  v22 = v48;
  sub_24F9264A8();
  (*(v5 + 8))(v7, v41);
  v40 = *(v49 + 1);
  v41 = (v49 + 8);
  v40(v16, v22);
  if (qword_27F211580 != -1)
  {
    swift_once();
  }

  v51 = qword_27F39EBC8;
  v52 = unk_27F39EBD0;

  v23 = v43;
  sub_24F9232D8();
  v24 = sub_24F9232F8();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_24EF526D4(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_24EF5273C(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v20);
  sub_24F926FA8();
  v26 = v42;
  v27 = *(v42 + 16);
  v29 = v44;
  v28 = v45;
  v27(v45, v50, v44);
  v30 = *(v49 + 2);
  v31 = v46;
  v32 = v16;
  v49 = v16;
  v33 = v48;
  v30(v46, v32, v48);
  v34 = v47;
  v27(v47, v28, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234950);
  v30(&v34[*(v35 + 48)], v31, v33);
  v36 = v40;
  v40(v49, v33);
  v37 = *(v26 + 8);
  v37(v50, v29);
  v36(v31, v33);
  return (v37)(v28, v29);
}

uint64_t sub_24EF51620()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  sub_24F927358();
  sub_24ECC5568();
}

uint64_t sub_24EF51674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  sub_24F927358();
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings);
    sub_24F91FD78();
  }
}

uint64_t sub_24EF517B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2117C0 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_24EF5185C@<D0>(__int128 *a1@<X8>)
{
  v38 = a1;
  v1 = sub_24F91F2B8();
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  sub_24F927358();
  v7 = v42;
  swift_getKeyPath();
  *&v42 = v7;
  sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings);
  sub_24F91FD88();

  v8 = *(v7 + 16);

  if (v8 != 1)
  {
    sub_24F927358();
    v14 = v42;
    v15 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
    v16 = [v15 ams_activeiTunesAccount];

    if (v16)
    {

      swift_getKeyPath();
      *&v42 = v14;
      sub_24F91FD88();

      v17 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
      swift_beginAccess();
      sub_24EF525F4(v14 + v17, v6);

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
      v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
      sub_24EF52664(v6);
      if (v19 != 1)
      {
        if (qword_27F2117B0 != -1)
        {
          swift_once();
        }

        v20 = __swift_project_value_buffer(v1, qword_27F24C4B8);
        (*(v37 + 16))(v3, v20, v1);
        *&v39 = sub_24F925E08();
        *(&v39 + 1) = v21;
        *&v40 = v22 & 1;
        *(&v40 + 1) = v23;
        LOBYTE(v41) = 0;
LABEL_19:
        sub_24F924E28();
        v39 = v42;
        v40 = v43;
        LOBYTE(v41) = v44;
        HIBYTE(v41) = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (qword_27F211798 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v1, qword_27F24C480);
    (*(v37 + 16))(v3, v27, v1);
    *&v39 = sub_24F925E08();
    *(&v39 + 1) = v29;
    *&v40 = v28 & 1;
    *(&v40 + 1) = v30;
    LOBYTE(v41) = 1;
    goto LABEL_19;
  }

  sub_24F927358();
  v9 = v42;
  swift_getKeyPath();
  *&v42 = v9;
  sub_24F91FD88();

  v10 = *(v9 + 19);

  if (v10 == 1)
  {
    if (qword_27F2117A0 != -1)
    {
      swift_once();
    }

    v42 = xmmword_27F24C498;
    sub_24E600AEC();

    *&v39 = sub_24F925E18();
    *(&v39 + 1) = v11;
    *&v40 = v12 & 1;
    *(&v40 + 1) = v13;
    LOBYTE(v41) = 0;
  }

  else
  {
    if (qword_27F2117A8 != -1)
    {
      swift_once();
    }

    v42 = xmmword_27F24C4A8;
    sub_24E600AEC();

    *&v39 = sub_24F925E18();
    *(&v39 + 1) = v25;
    *&v40 = v24 & 1;
    *(&v40 + 1) = v26;
    LOBYTE(v41) = 1;
  }

  sub_24F924E28();
  v39 = v42;
  v40 = v43;
  v41 = v44;
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0);
  sub_24E8C5A10();
  sub_24F924E28();
  result = *&v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v38;
  *v38 = v42;
  v35[1] = v32;
  *(v35 + 32) = v33;
  *(v35 + 33) = v34;
  return result;
}

unint64_t sub_24EF51E50()
{
  result = qword_27F2348D0;
  if (!qword_27F2348D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348C0);
    sub_24EF51F0C();
    sub_24EF5210C(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2348D0);
  }

  return result;
}

unint64_t sub_24EF51F0C()
{
  result = qword_27F2348D8;
  if (!qword_27F2348D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348F8);
    sub_24E602068(&qword_27F234900, &qword_27F2348F8);
    swift_getOpaqueTypeConformance2();
    sub_24E600AEC();
    sub_24E602068(&qword_27F234908, &qword_27F2348F0);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2348D8);
  }

  return result;
}

uint64_t sub_24EF5210C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF52154()
{
  result = qword_27F234910;
  if (!qword_27F234910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348C8);
    sub_24E8C5A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234910);
  }

  return result;
}

uint64_t sub_24EF521F4()
{
  sub_24EF5185C(&v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C8);
  sub_24EF51E50();
  sub_24EF52154();
  return sub_24F9272C8();
}

uint64_t sub_24EF522B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24EF523A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24EF5246C()
{
  sub_24EF524F0();
  if (v0 <= 0x3F)
  {
    sub_24E654514();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF524F0()
{
  if (!qword_27F234930)
  {
    type metadata accessor for GamesSettings(255);
    v0 = sub_24F927398();
    if (!v1)
    {
      atomic_store(v0, &qword_27F234930);
    }
  }
}

unint64_t sub_24EF5254C()
{
  result = qword_27F234938;
  if (!qword_27F234938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234940);
    sub_24EF51E50();
    sub_24EF52154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234938);
  }

  return result;
}

uint64_t sub_24EF525F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF52664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF526D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareGameActivitySettingsSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF5273C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareGameActivitySettingsSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF527E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_42()
{
  v1 = *(type metadata accessor for ShareGameActivitySettingsSection() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24EF52970(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShareGameActivitySettingsSection() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24EF52A10(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v3, 0);
    v5 = v23;
    v6 = *(sub_24F920B08() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      sub_24EF55C54(&v21);
      v9 = v21;
      v10 = v22;
      v23 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v12 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v7 += v8;
      --v3;
    }

    while (v3);
  }

  v14 = objc_opt_self();
  v15 = sub_24F92B588();

  v16 = [v14 localizedStringByJoiningStrings_];

  v17 = sub_24F92B0D8();
  v19 = v18;

  v21 = v17;
  v22 = v19;
  if (a2)
  {
    MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA460A0);
    return v21;
  }

  return v17;
}

uint64_t sub_24EF52BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for ChallengeDefinitionDetail(0);
  sub_24E60169C(v1 + *(v15 + 52), v14, &qword_27F212A00);
  v16 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    v17 = sub_24F91F648();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    sub_24EF5CFB4(v14, v11, type metadata accessor for Leaderboard);
    sub_24EF5C1F4(&v11[*(v9 + 24)], v5, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24EF5C310(v11, type metadata accessor for Leaderboard);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
    v20 = 1;
    v21 = (*(*(v19 - 8) + 48))(v5, 1, v19);
    v22 = sub_24F91F648();
    v23 = *(v22 - 8);
    if (v21 != 1)
    {
      (*(*(v22 - 8) + 32))(v8, v5, v22);
      v20 = 0;
    }

    (*(v23 + 56))(v8, v20, 1, v22);
    return sub_24E6009C8(v8, a1, &unk_27F22EC30);
  }
}

void sub_24EF52F44(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E861818(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_24EF58B84(v4);
  *a1 = v2;
}

uint64_t sub_24EF52FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v132 = a6;
  v127 = a5;
  v126 = a4;
  v121 = a3;
  v133 = a2;
  v9 = 0;
  v143 = sub_24F9202F8();
  v122 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v119 - v12;
  v124 = sub_24F920B68();
  v145 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v120 = &v119 - v15;
  v150 = sub_24F920B08();
  v153 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v140 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v139 = &v119 - v18;
  v146 = sub_24F920AF8();
  v125 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v159 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v20 - 8);
  v129 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = &v119 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v119 - v25;
  v131 = sub_24F920BC8();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  *&v158 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v119 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v119 - v35;
  v37 = sub_24F9210E8();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = sub_24F920B18();
  a7[1] = v41;
  a7[2] = sub_24F920B38();
  a7[3] = v42;
  a7[4] = sub_24F920A78();
  a7[5] = v43;
  v134 = a1;
  sub_24F920B78();
  v44 = (*(v38 + 48))(v36, 1, v37);
  v135 = a7;
  if (v44 != 1)
  {
    (*(v38 + 32))(v40, v36, v37);
    (*(v38 + 16))(v33, v40, v37);
    (*(v38 + 56))(v33, 0, 1, v37);
    sub_24F3D6C4C(v33, v26);
    (*(v38 + 8))(v40, v37);
    v138 = type metadata accessor for ChallengeDefinitionDetail(0);
    sub_24E6009C8(v26, v135 + v138[7], &qword_27F213FB0);
    goto LABEL_7;
  }

  sub_24E601704(v36, &qword_27F21E3C0);
  v138 = type metadata accessor for ChallengeDefinitionDetail(0);
  v45 = v138[7];
  v46 = sub_24F9289E8();
  (*(*(v46 - 8) + 56))(a7 + v45, 1, 1, v46);
  if (qword_27F2113B8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v47 = sub_24F9220D8();
    __swift_project_value_buffer(v47, qword_27F39E778);
    v48 = v130;
    v49 = v131;
    (*(v130 + 16))(v30, v134, v131);
    v50 = sub_24F9220B8();
    v51 = sub_24F92BDB8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v160 = v53;
      *v52 = 136315138;
      v54 = sub_24F920B18();
      v56 = v55;
      (*(v48 + 8))(v30, v49);
      v57 = sub_24E7620D4(v54, v56, &v160);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_24E5DD000, v50, v51, "Challenge definition %s is missing artwork", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x2530542D0](v53, -1, -1);
      MEMORY[0x2530542D0](v52, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v30, v49);
    }

LABEL_7:
    v58 = v146;
    v59 = sub_24F920A68();
    type metadata accessor for ChallengeDefinitionDetail(0);
    v30 = v138;
    v60 = v59 & 1;
    v61 = v135;
    *(v135 + v138[8]) = v60;
    *(v61 + *(v30 + 9)) = sub_24F920A98() & 1;
    v160 = sub_24F920BB8();

    sub_24EF52F44(&v160);
    if (v9)
    {
      break;
    }

    v62 = v160;
    v9 = v160[2];
    if (v9)
    {
      v160 = MEMORY[0x277D84F90];
      sub_24F458600(0, v9, 0);
      v63 = 0;
      v64 = v160;
      v151 = *MEMORY[0x277D0D130];
      *&v158 = v125 + 104;
      v149 = (v153 + 8);
      v136 = (v153 + 16);
      v144 = *MEMORY[0x277D0D140];
      v157 = xmmword_24F93DE60;
      v137 = v62;
      v152 = v9;
      while (v63 < v62[2])
      {
        v65 = v62[v63 + 4];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A68);
        v30 = ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v155 = *(v153 + 72);
        v156 = v66;
        v67 = swift_allocObject();
        *(v67 + 16) = v157;
        v154 = *v158;
        v154(v159, v151, v58);

        sub_24F920AB8();
        if (*(v65 + 16) == 1)
        {
          if (v65 == v67 || (v68 = *v136, v69 = v139, v70 = v150, (*v136)(v139, &v30[v65], v150), v148 = v64, v71 = v140, v68(v140, &v30[v67], v70), sub_24EF5B41C(&qword_27F212AE8, MEMORY[0x277D0D188]), v147 = sub_24F92AFF8(), v72 = *v149, v73 = v71, v64 = v148, (*v149)(v73, v70), v74 = v69, v62 = v137, v72(v74, v70), (v147 & 1) != 0))
          {

            v75 = swift_allocObject();
            *(v75 + 16) = v157;
            v58 = v146;
            v154(v159, v144, v146);
            sub_24F920AB8();

            v65 = v75;
          }

          else
          {
            swift_setDeallocating();
            v72(&v30[v67], v150);
            swift_deallocClassInstance();
            v58 = v146;
          }
        }

        else
        {
          swift_setDeallocating();
          (*v149)(&v30[v67], v150);
          swift_deallocClassInstance();
        }

        v160 = v64;
        v77 = v64[2];
        v76 = v64[3];
        if (v77 >= v76 >> 1)
        {
          sub_24F458600((v76 > 1), v77 + 1, 1);
          v64 = v160;
        }

        ++v63;
        v64[2] = v77 + 1;
        v64[v77 + 4] = v65;
        v9 = v152;
        if (v152 == v63)
        {

          v61 = v135;
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {

      v64 = MEMORY[0x277D84F90];
LABEL_22:
      v78 = v138;
      *(v61 + v138[10]) = v64;
      v79 = v127;
      *(v61 + v78[12]) = v127;
      v80 = v129;
      sub_24E60169C(v132, v129, &qword_27F2198F8);
      v81 = sub_24F920A88();
      v82 = *(v81 - 8);
      v83 = *(v82 + 48);
      if (v83(v80, 1, v81) == 1)
      {
        if (*(v79 + 16))
        {
          v84 = v79 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
          v85 = v128;
          (*(v82 + 16))(v128, v84, v81);
          v86 = 0;
        }

        else
        {
          v86 = 1;
          v85 = v128;
        }

        (*(v82 + 56))(v85, v86, 1, v81);
        v87 = v129;
        if (v83(v129, 1, v81) != 1)
        {
          sub_24E601704(v87, &qword_27F2198F8);
        }
      }

      else
      {
        v85 = v128;
        (*(v82 + 32))(v128, v80, v81);
        (*(v82 + 56))(v85, 0, 1, v81);
      }

      v88 = v138;
      v89 = v135;
      sub_24E6009C8(v85, v135 + v138[16], &qword_27F2198F8);
      sub_24E60169C(v133, v89 + v88[13], &qword_27F212A00);
      if (os_variant_has_internal_content())
      {
        v90 = sub_24F92CE08();

        v91 = MEMORY[0x277D84F90];
        if (v90 & 1) == 0 && (v121)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A70);
          v91 = swift_allocObject();
          *(v91 + 16) = xmmword_24F9479A0;
          *&v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A68);
          v92 = swift_allocObject();
          v158 = xmmword_24F93DE60;
          *(v92 + 16) = xmmword_24F93DE60;
          v93 = *MEMORY[0x277D0D160];
          v148 = v64;
          v94 = *(v125 + 104);
          v95 = v159;
          v94(v159, v93, v58);
          sub_24F920AB8();
          *(v91 + 32) = v92;
          v96 = swift_allocObject();
          *(v96 + 16) = v158;
          v97 = v93;
          v98 = v146;
          v94(v95, v97, v146);
          sub_24F920AB8();
          *(v91 + 40) = v96;
          v99 = swift_allocObject();
          *(v99 + 16) = v158;
          v94(v95, *MEMORY[0x277D0D158], v98);
          v64 = v148;
          v89 = v135;
          sub_24F920AB8();
          *(v91 + 48) = v99;
        }
      }

      else
      {

        v91 = MEMORY[0x277D84F90];
      }

      *(v89 + v138[11]) = v91;
      v100 = sub_24F920B98();
      if (!v100)
      {
        goto LABEL_41;
      }

      v9 = v124;
      v30 = v123;
      v159 = *(v100 + 16);
      if (!v159)
      {
LABEL_40:

LABEL_41:
        v108 = 0;
        v109 = 0;
LABEL_42:
        v110 = (v135 + v138[14]);
        *v110 = v108;
        v110[1] = v109;
        v111 = v126;
        v112 = v131;
        v113 = v130;
        if (v126)
        {
          if (!*(v126 + 16))
          {

            goto LABEL_45;
          }
        }

        else
        {
LABEL_45:
          if (v64[2])
          {
          }

          else
          {
            v111 = 0;
          }
        }

        *(v135 + v138[15]) = v111;
        v114 = v134;
        sub_24F920AA8();
        sub_24E601704(v132, &qword_27F2198F8);
        sub_24E601704(v133, &qword_27F212A00);
        return (*(v113 + 8))(v114, v112);
      }

      v101 = 0;
      *&v157 = v145 + 16;
      v156 = (v122 + 8);
      *&v158 = v145 + 8;
      v148 = v64;
      while (v101 < *(v100 + 16))
      {
        v102 = v100;
        (*(v145 + 16))(v30, v100 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v101, v9);
        v103 = v141;
        sub_24F920B58();
        v104 = v142;
        sub_24F920228();
        sub_24EF5B41C(&qword_27F21E3C8, MEMORY[0x277D0C9F8]);
        v105 = v143;
        v106 = sub_24F92C678();
        v107 = *v156;
        (*v156)(v104, v105);
        v107(v103, v105);
        if (v106)
        {

          v116 = v145 + 32;
          v117 = v120;
          (*(v145 + 32))(v120, v30, v9);
          v108 = sub_24F920B48();
          v109 = v118;
          (*(v116 - 24))(v117, v9);
          v64 = v148;
          goto LABEL_42;
        }

        ++v101;
        (*v158)(v30, v9);
        v64 = v148;
        v100 = v102;
        if (v159 == v101)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF54554@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_63:
    if ((result != 0x6574696D696C6E55 || a2 != 0xE900000000000064) && (sub_24F92CE08() & 1) == 0)
    {
      v28 = sub_24F920A88();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }

    v27 = MEMORY[0x277D0D0F0];
    goto LABEL_70;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v29 = result;
    v30 = a2;

    v9 = sub_24F2D9F38(v29, v30, 10);
    v32 = v31;

    result = v29;
    a2 = v30;
    if (v32)
    {
      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = result;
      v37 = a2;
      v7 = sub_24F92C928();
      result = v36;
      v5 = v38;
      a2 = v37;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v9 = 0;
          if (v7)
          {
            v16 = v7 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        v9 = 0;
        if (v7)
        {
          while (1)
          {
            v22 = *v7 - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v40 = v5;
      if (v5)
      {
        goto LABEL_63;
      }

LABEL_69:
      *a3 = v9;
      v27 = MEMORY[0x277D0D0E8];
LABEL_70:
      v33 = *v27;
      v34 = sub_24F920A88();
      v35 = *(v34 - 8);
      (*(v35 + 104))(a3, v33, v34);
      return (*(v35 + 56))(a3, 0, 1, v34);
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v39[0] = result;
  v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v9 = 0;
        v24 = v39;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v9 = 0;
        v13 = v39 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v9 = 0;
      v19 = v39 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_24EF54990@<X0>(void *a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EF5C1F4(v1, v7, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24EF5CFB4(v7, v4, type metadata accessor for Leaderboard);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  v20 = xmmword_24F93DE60;
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x6F6272656461656CLL;
  *(inited + 40) = 0xEB00000000647261;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A30);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v20;
  v12 = (v11 + v10);
  v13 = v9[14];
  *v12 = 0x6F6272656461656CLL;
  v12[1] = 0xEB00000000647261;
  sub_24EF5C1F4(v4, v12 + v13, type metadata accessor for Leaderboard);
  v14 = sub_24E60F384(v11);
  swift_setDeallocating();
  sub_24E601704(v12, &qword_27F213060);
  swift_deallocClassInstance();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307E8);
  *(inited + 80) = sub_24EF5C25C();
  *(inited + 48) = v14;
  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F212F18);
  v16 = sub_24E80FFAC(v15);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  v18 = v21;
  v21[3] = v17;
  v18[4] = sub_24E6060B8();
  *v18 = v16;
  return sub_24EF5C310(v4, type metadata accessor for Leaderboard);
}

uint64_t sub_24EF54CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A40);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A48);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF5CF0C();
  v11 = v30;
  sub_24F92D108();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_24F92CC78();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_24E643448() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_24F92C918();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v20 = v22;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_24EF5CF60();
  sub_24F92CBA8();
  type metadata accessor for Leaderboard(0);
  sub_24EF5B41C(&qword_27F21B488, type metadata accessor for Leaderboard);
  v22 = v10;
  sub_24F92CC68();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_24EF5CFB4(v4, v12, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24EF550E0(uint64_t a1)
{
  v2 = sub_24EF5CF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF5511C(uint64_t a1)
{
  v2 = sub_24EF5CF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF55158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EF551E4(uint64_t a1)
{
  v2 = sub_24EF5CF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF55220(uint64_t a1)
{
  v2 = sub_24EF5CF60();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_24EF5528C(uint64_t *a1, uint64_t *a2)
{
  v53 = sub_24F920AF8();
  v43 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_24F920B08();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = *a1;
  v42 = *a2;
  v16 = *(v15 + 16);
  v17 = 0.0;
  v18 = 0.0;
  if (v16)
  {
    v50 = *(v44 + 16);
    v19 = v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v49 = *(v44 + 72);
    v20 = (v43 + 11);
    v48 = *MEMORY[0x277D0D160];
    v47 = *MEMORY[0x277D0D158];
    v46 = *MEMORY[0x277D0D138];
    v45 = *MEMORY[0x277D0D130];
    v41 = *MEMORY[0x277D0D140];
    v40 = *MEMORY[0x277D0D150];
    v39 = *MEMORY[0x277D0D148];
    v38 = v43 + 1;
    v51 = (v44 + 16);
    v21 = (v44 + 8);
    v50(v14, v19, v8, v12);
    while (1)
    {
      sub_24F920AC8();
      v25 = (*v20)(v7, v53);
      v23 = 1.0;
      if (v25 != v48)
      {
        if (v25 == v47)
        {
          v22 = 0x404E000000000000;
LABEL_4:
          v23 = *&v22;
          goto LABEL_5;
        }

        if (v25 == v46)
        {
          v22 = 0x40AC200000000000;
          goto LABEL_4;
        }

        if (v25 == v45)
        {
          v22 = 0x40F5180000000000;
          goto LABEL_4;
        }

        if (v25 == v41)
        {
          v22 = 0x4122750000000000;
          goto LABEL_4;
        }

        if (v25 == v40)
        {
          v22 = 0x4143C68000000000;
          goto LABEL_4;
        }

        if (v25 == v39)
        {
          v22 = 0x417E133800000000;
          goto LABEL_4;
        }

        (*v38)(v7, v53);
      }

LABEL_5:
      v24 = sub_24F920AD8();
      (*v21)(v14, v8);
      v12.n128_f64[0] = v23 * v24;
      v18 = v18 + v12.n128_f64[0];
      v19 += v49;
      if (!--v16)
      {
        break;
      }

      v50(v14, v19, v8, v12);
    }
  }

  v26 = *(v42 + 16);
  if (v26)
  {
    v27 = v44 + 16;
    v51 = *(v44 + 16);
    v28 = v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v50 = *(v44 + 72);
    v29 = (v43 + 11);
    LODWORD(v49) = *MEMORY[0x277D0D160];
    v48 = *MEMORY[0x277D0D158];
    v47 = *MEMORY[0x277D0D138];
    v46 = *MEMORY[0x277D0D130];
    v45 = *MEMORY[0x277D0D140];
    LODWORD(v44) = *MEMORY[0x277D0D150];
    LODWORD(v42) = *MEMORY[0x277D0D148];
    ++v43;
    v30 = (v27 - 8);
    v17 = 0.0;
    v51(v10, v28, v8, v12);
    while (1)
    {
      v35 = v52;
      sub_24F920AC8();
      v36 = (*v29)(v35, v53);
      v32 = 1.0;
      if (v36 != v49)
      {
        if (v36 == v48)
        {
          v31 = 0x404E000000000000;
LABEL_23:
          v32 = *&v31;
          goto LABEL_24;
        }

        if (v36 == v47)
        {
          v31 = 0x40AC200000000000;
          goto LABEL_23;
        }

        if (v36 == v46)
        {
          v31 = 0x40F5180000000000;
          goto LABEL_23;
        }

        if (v36 == v45)
        {
          v31 = 0x4122750000000000;
          goto LABEL_23;
        }

        if (v36 == v44)
        {
          v31 = 0x4143C68000000000;
          goto LABEL_23;
        }

        if (v36 == v42)
        {
          v31 = 0x417E133800000000;
          goto LABEL_23;
        }

        (*v43)(v52, v53);
      }

LABEL_24:
      v33 = sub_24F920AD8();
      (*v30)(v10, v8);
      v34.n128_f64[0] = v32 * v33;
      v17 = v17 + v34.n128_f64[0];
      v28 += v50;
      if (!--v26)
      {
        return v18 < v17;
      }

      v51(v10, v28, v8, v34);
    }
  }

  return v18 < v17;
}

id sub_24EF55828()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  result = [v0 setUnitsStyle_];
  qword_27F234958 = v0;
  return result;
}

uint64_t sub_24EF55878(double a1)
{
  v38 = sub_24F920AF8();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F920B08();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ChallengeDefinitionDetail(0);
  v21[1] = result;
  v22 = v1;
  v29 = *(v1 + *(result + 40));
  v28 = *(v29 + 16);
  if (v28)
  {
    v10 = 0;
    v27 = v29 + 32;
    v37 = v26 + 16;
    v11 = (v3 + 88);
    v36 = *MEMORY[0x277D0D160];
    v35 = *MEMORY[0x277D0D158];
    v34 = *MEMORY[0x277D0D138];
    v33 = *MEMORY[0x277D0D130];
    v32 = *MEMORY[0x277D0D140];
    v25 = *MEMORY[0x277D0D150];
    v23 = (v3 + 8);
    v12 = (v26 + 8);
    v24 = *MEMORY[0x277D0D148];
    do
    {
      if (v10 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      result = *(v27 + 8 * v10);
      v13 = *(result + 16);
      if (!v13)
      {
        if (a1 != 0.0)
        {
          goto LABEL_4;
        }
      }

      v30 = v10;
      v31 = result;
      v14 = result + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v39 = *(v26 + 72);
      v15 = *(v26 + 16);

      v16 = 0.0;
      do
      {
        v15(v8, v14, v6);
        sub_24F920AC8();
        v20 = (*v11)(v5, v38);
        v18 = 1.0;
        if (v20 != v36)
        {
          if (v20 == v35)
          {
            v17 = 0x404E000000000000;
LABEL_9:
            v18 = *&v17;
            goto LABEL_10;
          }

          if (v20 == v34)
          {
            v17 = 0x40AC200000000000;
            goto LABEL_9;
          }

          if (v20 == v33)
          {
            v17 = 0x40F5180000000000;
            goto LABEL_9;
          }

          if (v20 == v32)
          {
            v17 = 0x4122750000000000;
            goto LABEL_9;
          }

          if (v20 == v25)
          {
            v17 = 0x4143C68000000000;
            goto LABEL_9;
          }

          if (v20 == v24)
          {
            v17 = 0x417E133800000000;
            goto LABEL_9;
          }

          (*v23)(v5, v38);
        }

LABEL_10:
        v19 = sub_24F920AD8();
        (*v12)(v8, v6);
        v16 = v16 + v18 * v19;
        v14 += v39;
        --v13;
      }

      while (v13);
      result = v31;
      if (v16 == a1)
      {
        return result;
      }

      v10 = v30;
LABEL_4:
      ++v10;
    }

    while (v10 != v28);
  }
}