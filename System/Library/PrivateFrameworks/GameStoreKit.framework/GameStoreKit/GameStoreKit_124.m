id BorderView.backgroundColor.getter()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

void BorderView.backgroundColor.setter(void *a1)
{
  sub_24F2B8880();
}

void (*BorderView.backgroundColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [objc_opt_self() clearColor];
  return sub_24F2B8740;
}

void sub_24F2B8740(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_24F2B8880();
  }

  else
  {
    v2 = *a1;
    sub_24F2B8880();
  }
}

uint64_t (*BorderView.clipsToBounds.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = 0;
  return sub_24F2B8824;
}

id BorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F2B8880()
{
  swift_getObjectType();
  sub_24F92C888();
  sub_24F92D1E8();

  MEMORY[0x253050C20](0xD00000000000002BLL, 0x800000024FA72530);
  sub_24F91F6C8();
}

uint64_t _s12GameStoreKit10BorderViewC13clipsToBoundsSbvs_0()
{
  swift_getObjectType();
  sub_24F92C888();
  sub_24F92D1E8();

  MEMORY[0x253050C20](0xD000000000000027, 0x800000024FA72500);
  sub_24F91F6C8();
}

void sub_24F2B89F8(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 layer];
  [v3 borderWidth];
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_24F2B8A58@<X0>(uint64_t *a1@<X8>)
{
  result = BorderView.roundedCorners.getter();
  *a1 = result;
  return result;
}

uint64_t EditorialQuote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialQuote.attribution.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialQuote.__allocating_init(id:text:attribution:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a5;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E60169C(a1, &v26, &qword_27F235830);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v21 = a6;
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v24 = v15;
    v25 = v17;
    a6 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  v18 = v30;
  *(v14 + 48) = v29;
  *(v14 + 64) = v18;
  *(v14 + 80) = v31;
  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(a6, v14 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v19 = v23;
  *(v14 + 32) = v22;
  *(v14 + 40) = v19;
  return v14;
}

uint64_t EditorialQuote.init(id:text:attribution:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v23 = a4;
  v24 = a5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v27, &qword_27F235830);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v22 = a6;
    v18 = v17;
    (*(v13 + 8))(v15, v12);
    v25 = v16;
    v26 = v18;
    a6 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v19 = v31;
  *(v7 + 48) = v30;
  *(v7 + 64) = v19;
  *(v7 + 80) = v32;
  sub_24E65E0D4(a6, v7 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v20 = v24;
  *(v7 + 32) = v23;
  *(v7 + 40) = v20;
  return v7;
}

uint64_t EditorialQuote.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v58 = sub_24F91F6B8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F9285B8();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v54 - v8;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = 0xE400000000000000;
  sub_24F928398();
  v61 = sub_24F928348();
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v18, v9);
  if (!v21)
  {
    v35 = 1954047348;
    v27 = v9;
    v28 = a1;
LABEL_7:
    v36 = v65;
    v37 = sub_24F92AC38();
    sub_24F2B97E4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = v35;
    v38[1] = v19;
    v38[2] = v64;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v67 + 8))(v74, v36);
    v22(v28, v27);
    return v36;
  }

  v63 = v21;
  v19 = 0xEB000000006E6F69;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v26 = v15;
  v27 = v9;
  v22(v26, v9);
  v28 = a1;
  v55 = v25;
  if (!v25)
  {
    v35 = 0x7475626972747461;

    goto LABEL_7;
  }

  v64 = v23;
  sub_24F929608();
  sub_24F928398();
  v29 = v65;
  (*(v67 + 16))(v59, v74, v65);
  sub_24F929548();
  v30 = v60;
  v31 = v28;
  sub_24F928398();
  v32 = sub_24F928348();
  v54 = v22;
  if (v33)
  {
    *&v70 = v32;
    *(&v70 + 1) = v33;
    sub_24F92C7F8();
    v34 = v30;
  }

  else
  {
    v39 = v56;
    sub_24F91F6A8();
    v40 = v30;
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v57 + 8))(v39, v58);
    *&v70 = v41;
    *(&v70 + 1) = v43;
    sub_24F92C7F8();
    v34 = v40;
  }

  v44 = v27;
  v22(v34, v27);
  v45 = v62;
  sub_24E60169C(v66, v62, &qword_27F213E68);
  type metadata accessor for EditorialQuote();
  v36 = swift_allocObject();
  sub_24E60169C(v73, &v70, &qword_27F235830);
  v46 = v63;
  if (*(&v71 + 1))
  {
    v47 = v71;
    *(v36 + 48) = v70;
    *(v36 + 64) = v47;
    *(v36 + 80) = v72;
  }

  else
  {
    v48 = v56;
    sub_24F91F6A8();
    v49 = sub_24F91F668();
    v51 = v50;
    (*(v57 + 8))(v48, v58);
    v68 = v49;
    v69 = v51;
    v46 = v63;
    v29 = v65;
    sub_24F92C7F8();
    sub_24E601704(&v70, &qword_27F235830);
  }

  (*(v67 + 8))(v74, v29);
  v54(v31, v44);
  sub_24E601704(v73, &qword_27F235830);
  sub_24E601704(v66, &qword_27F213E68);
  sub_24E65E0D4(v45, v36 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics);
  *(v36 + 16) = v61;
  *(v36 + 24) = v46;
  v52 = v55;
  *(v36 + 32) = v64;
  *(v36 + 40) = v52;
  return v36;
}

uint64_t type metadata accessor for EditorialQuote()
{
  result = qword_27F23E120;
  if (!qword_27F23E120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorialQuote.deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t EditorialQuote.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24F2B97E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2B983C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = EditorialQuote.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24F2B98AC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t TabsInfoProvider.setupFlowAuthority(asPartOf:selectedTabId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[2];
  v5 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  v10 = ASKBagContract.tabs(withFallback:bagKey:)(v6);
  v11 = v7(a2, v10);

  v5(a2, v11);
  v16[2] = v6;
  v16[3] = v5;
  v16[4] = v8;
  v16[5] = v7;
  v16[6] = v9;
  sub_24F2BA384(v11);
  v16[0] = v12;
  v16[1] = v13;
  sub_24F92C7F8();

  sub_24E65864C(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D8B8);
  sub_24F927178();
  sub_24E60169C(a3, v16, &qword_27F23D8B8);
  type metadata accessor for FlowAction();
  sub_24F2BAAB4(&qword_27F219B98, type metadata accessor for FlowAction);
  sub_24F2BAAB4(&qword_27F219BA0, type metadata accessor for FlowAction);
  sub_24F921858();
  sub_24E6585F8(v17);
  return v11;
}

uint64_t TabsInfoProvider.makeTabs(asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[5];
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  v7 = ASKBagContract.tabs(withFallback:bagKey:)(v4);
  v8 = v6(a2, v7);

  v9 = v5(a2, v8);
  sub_24F2BA384(v8);
  sub_24F92C7F8();

  return v9;
}

uint64_t TabsInfoProvider.init(tabsBagKey:defaultTabIdentifiers:fallbackTabs:overrideTabs:tabsToFlowActionsConverter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a6;
  a8[4] = a7;
  a8[5] = a4;
  a8[6] = a5;
  return result;
}

uint64_t sub_24F2B9CCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v9;
  v10 = sub_24F91F9B8();
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E130);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v53 = a1;
  v24 = sub_24ED0F5A8();
  if (!v25)
  {
    return 0;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_16;
  }

  v46 = v4;
  v47 = v6;
  v48 = v5;
  v49 = v25;
  v45 = v24;
  sub_24F91F9A8();
  v27 = *(v54 + 56);
  v27(v23, 0, 1, v10);
  v28 = sub_24F92B098();
  v29 = [v53 stringForKey_];

  if (v29)
  {
    sub_24F92B0D8();

    sub_24F91F978();
  }

  else
  {
    v27(v20, 1, 1, v10);
  }

  v31 = *(v12 + 48);
  sub_24E60169C(v23, v14, &qword_27F224128);
  sub_24E60169C(v20, &v14[v31], &qword_27F224128);
  v32 = *(v54 + 48);
  if (v32(v14, 1, v10) == 1)
  {
    sub_24E601704(v20, &qword_27F224128);
    sub_24E601704(v23, &qword_27F224128);
    if (v32(&v14[v31], 1, v10) == 1)
    {
      sub_24E601704(v14, &qword_27F224128);
      goto LABEL_19;
    }

LABEL_15:
    sub_24E601704(v14, &qword_27F23E130);
    goto LABEL_16;
  }

  sub_24E60169C(v14, v17, &qword_27F224128);
  if (v32(&v14[v31], 1, v10) == 1)
  {
    sub_24E601704(v20, &qword_27F224128);
    sub_24E601704(v23, &qword_27F224128);
    (*(v54 + 8))(v17, v10);
    goto LABEL_15;
  }

  v33 = v54;
  v34 = &v14[v31];
  v35 = v52;
  (*(v54 + 32))(v52, v34, v10);
  sub_24F2BAAB4(&qword_27F23E138, MEMORY[0x277CC9A70]);
  v36 = sub_24F92AFF8();
  v37 = *(v33 + 8);
  v37(v35, v10);
  sub_24E601704(v20, &qword_27F224128);
  sub_24E601704(v23, &qword_27F224128);
  v37(v17, v10);
  sub_24E601704(v14, &qword_27F224128);
  if ((v36 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v38 = v46;
  sub_24ED0F6A4(v46);
  v40 = v47;
  v39 = v48;
  if ((*(v47 + 48))(v38, 1, v48) == 1)
  {

    sub_24E601704(v38, &unk_27F22EC30);
    return 0;
  }

  v41 = v50;
  (*(v40 + 32))(v50, v38, v39);
  v42 = v51;
  sub_24F91F638();
  v43 = Date.hasPassed(hourOfDay:since:)(3, v41);
  v44 = *(v40 + 8);
  v44(v42, v39);
  v44(v41, v39);
  if (v43)
  {
LABEL_16:

    return 0;
  }

  return v45;
}

void sub_24F2BA384(uint64_t a1)
{
  v3 = type metadata accessor for StoreTab();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = *(v1 + 8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v41 = *(v1 + 40);
    v42 = v8;
    v43 = v7;
    v44 = a1;
    v46 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v11, 0);
    v12 = v46;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = *v13;
      if (*v13 <= 4)
      {
        if (v14 <= 1)
        {
          if (v14)
          {
            if (v14 != 1)
            {
LABEL_28:
              v15 = *(v13 - 1);
              v16 = *v13;
              goto LABEL_29;
            }

            v16 = 0xE500000000000000;
            v15 = 0x73656D6167;
          }

          else
          {
            v16 = 0xE500000000000000;
            v15 = 0x7961646F74;
          }
        }

        else
        {
          switch(v14)
          {
            case 2:
              v16 = 0xE400000000000000;
              v15 = 1936748641;
              break;
            case 3:
              v16 = 0xE700000000000000;
              v15 = 0x73657461647075;
              break;
            case 4:
              v16 = 0xE600000000000000;
              v15 = 0x686372616573;
              break;
            default:
              goto LABEL_28;
          }
        }
      }

      else if (v14 > 7)
      {
        switch(v14)
        {
          case 8:
            v16 = 0xE600000000000000;
            v15 = 0x737472616863;
            break;
          case 9:
            v15 = 0x6573616863727570;
            v16 = 0xE900000000000064;
            break;
          case 10:
            v16 = 0xE900000000000073;
            v15 = 0x64616F6C6E776F64;
            break;
          default:
            goto LABEL_28;
        }
      }

      else
      {
        switch(v14)
        {
          case 5:
            v16 = 0xE600000000000000;
            v15 = 0x656461637261;
            break;
          case 6:
            v16 = 0xE800000000000000;
            v15 = 0x6465727574616566;
            break;
          case 7:
            v15 = 0x69726F6765746163;
            v16 = 0xEA00000000007365;
            break;
          default:
            goto LABEL_28;
        }
      }

LABEL_29:
      sub_24E8E2880(*(v13 - 1), v14);
      v46 = v12;
      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_24F4578E0((v17 > 1), v18 + 1, 1);
        v12 = v46;
      }

      v13 += 2;
      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      if (!--v11)
      {
        a1 = v44;
        v8 = v42;
        v7 = v43;
        v9 = v41;
        break;
      }
    }
  }

  v46 = v6;
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_24F2B9CCC(v20);
  v23 = v22;

  if (v23)
  {
    v25 = *(v12 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v25 >= *(v12 + 3) >> 1)
    {
      v12 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v12);
      v50 = v12;
    }

    sub_24EDAB2A8(0, 0, 1, v21, v23);
  }

  v27 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v46 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v27, 0);
    v28 = v46;
    v29 = a1 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v30 = *(v45 + 72);
    do
    {
      sub_24E9E8284(v29, v5);
      v31 = v5[1];
      if (v31 <= 4)
      {
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            v33 = 0xE400000000000000;
            v32 = 1936748641;
          }

          else if (v31 == 3)
          {
            v33 = 0xE700000000000000;
            v32 = 0x73657461647075;
          }

          else
          {
            v33 = 0xE600000000000000;
            v32 = 0x686372616573;
          }

          goto LABEL_64;
        }

        if (v31)
        {
          if (v31 != 1)
          {
LABEL_63:
            v32 = *v5;
            v33 = v5[1];
            goto LABEL_64;
          }

          v33 = 0xE500000000000000;
          v32 = 0x73656D6167;
        }

        else
        {
          v33 = 0xE500000000000000;
          v32 = 0x7961646F74;
        }
      }

      else
      {
        if (v31 <= 7)
        {
          if (v31 == 5)
          {
            v33 = 0xE600000000000000;
            v32 = 0x656461637261;
          }

          else if (v31 == 6)
          {
            v33 = 0xE800000000000000;
            v32 = 0x6465727574616566;
          }

          else
          {
            v32 = 0x69726F6765746163;
            v33 = 0xEA00000000007365;
          }

          goto LABEL_64;
        }

        switch(v31)
        {
          case 8:
            v33 = 0xE600000000000000;
            v32 = 0x737472616863;
            break;
          case 9:
            v32 = 0x6573616863727570;
            v33 = 0xE900000000000064;
            break;
          case 10:
            v33 = 0xE900000000000073;
            v32 = 0x64616F6C6E776F64;
            break;
          default:
            goto LABEL_63;
        }
      }

LABEL_64:
      sub_24E8E2880(*v5, v31);
      v24 = sub_24E9E834C(v5);
      v46 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        v24 = sub_24F4578E0((v34 > 1), v35 + 1, 1);
        v28 = v46;
      }

      *(v28 + 16) = v35 + 1;
      v36 = v28 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v29 += v30;
      --v27;
    }

    while (v27);
  }

  v37 = *(v12 + 2);
  if (v37)
  {
    v38 = 0;
    v39 = (v12 + 40);
    while (v38 < *(v12 + 2))
    {
      v40 = *v39;
      v46 = *(v39 - 1);
      *&v47 = v40;
      MEMORY[0x28223BE20](v24);
      *(&v41 - 2) = &v46;

      if (sub_24E6159B8(sub_24E7FA94C, (&v41 - 2), v28))
      {

        goto LABEL_75;
      }

      ++v38;
      v39 += 2;
      if (v37 == v38)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_72:

    if (*(v28 + 16))
    {
    }

LABEL_75:
  }
}

uint64_t sub_24F2BAA10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24F2BAA58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24F2BAAB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2BAAFC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8618B8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24F2BD558(v5);
  *a1 = v2;
  return result;
}

uint64_t TodayCardTriggerController.__allocating_init(builder:bag:fastExpirationEnabled:persistantStore:)(void *a1, uint64_t a2, char a3, void *a4)
{
  v107 = a4;
  v98 = a2;
  v111 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = v91 - v6;
  v97 = sub_24F92BEE8();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v94 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24F92BE88();
  v91[1] = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v91 - v13;
  v15 = sub_24F9288E8();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F91F648();
  isUniquelyReferenced_nonNull_native = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = v91 - v22;
  sub_24F91F638();
  if (a3)
  {
    v23 = 60.0;
  }

  else
  {
    if (qword_27F210940 != -1)
    {
LABEL_63:
      swift_once();
    }

    (*(v16 + 104))(v18, *MEMORY[0x277D21C38], v15);
    sub_24F92A368();
    v24 = *(v16 + 8);
    v16 += 8;
    v24(v18, v15);
    sub_24F92A408();
    (*(v12 + 8))(v14, v11);
    v23 = *&v117;
  }

  v12 = 0;
  v14 = 0;
  v104 = (isUniquelyReferenced_nonNull_native + 48);
  v99 = (isUniquelyReferenced_nonNull_native + 32);
  v15 = MEMORY[0x277D84F98];
  v102 = (isUniquelyReferenced_nonNull_native + 8);
  v110 = xmmword_24F950E90;
  v100 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  do
  {
    v18 = byte_2861C1FE0[v12 + 32];
    v25 = v111[3];
    v26 = v111[4];
    __swift_project_boxed_opaque_existential_1(v111, v25);
    LOBYTE(v112[0]) = v18;
    v11 = 0;
    (*(v26 + 8))(&v114, v112, v25, v26);
    if (v115)
    {
      sub_24E612E28(&v114, &v117);
      v27 = v107[3];
      v28 = v107[4];
      __swift_project_boxed_opaque_existential_1(v107, v27);
      LOBYTE(v114) = v18;
      v29 = v106;
      (*(v28 + 16))(&v114, v27, v28);
      v30 = v109;
      if ((*v104)(v29, 1, v109) == 1)
      {
        sub_24E601704(v29, &unk_27F22EC30);
        sub_24E615E00(&v117, &v114);
        v31 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_24E61A188(0, v31[2] + 1, 1, v31);
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          v31 = sub_24E61A188((v32 > 1), v33 + 1, 1, v31);
        }

        v31[2] = v33 + 1;
        v108 = v31;
        v34 = &v31[5 * v33];
        goto LABEL_40;
      }

      (*v99)(v105, v29, v30);
      sub_24F91F558();
      v43 = v42;
      v44 = v118;
      v45 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, v118);
      if (v43 <= v23)
      {
        if (((*(v45 + 48))(v44, v45) & 1) == 0)
        {
          sub_24E615E00(&v117, &v114);
          v59 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_24E61A188(0, v59[2] + 1, 1, v59);
          }

          v61 = v59[2];
          v60 = v59[3];
          if (v61 >= v60 >> 1)
          {
            v59 = sub_24E61A188((v60 > 1), v61 + 1, 1, v59);
          }

          v59[2] = v61 + 1;
          v108 = v59;
          sub_24E612E28(&v114, &v59[5 * v61 + 4]);
          v62 = v118;
          v63 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, v118);
          (*(v63 + 40))(v62, v63);
          goto LABEL_46;
        }

        sub_24E615E00(&v117, &v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_24E61A188(0, v101[2] + 1, 1, v101);
        }

        v54 = v101[2];
        v53 = v101[3];
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v101 = sub_24E61A188((v53 > 1), v54 + 1, 1, v101);
        }

        (*v102)(v105, v109);
        v56 = &v121;
      }

      else
      {
        if ((*(v45 + 56))(v44, v45))
        {
          sub_24E615E00(&v117, &v114);
          v46 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_24E61A188(0, v46[2] + 1, 1, v46);
          }

          v48 = v46[2];
          v47 = v46[3];
          if (v48 >= v47 >> 1)
          {
            v46 = sub_24E61A188((v47 > 1), v48 + 1, 1, v46);
          }

          v46[2] = v48 + 1;
          v108 = v46;
          sub_24E612E28(&v114, &v46[5 * v48 + 4]);
LABEL_46:
          v64 = v107[3];
          v65 = v107[4];
          __swift_project_boxed_opaque_existential_1(v107, v64);
          v16 = v118;
          v66 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, v118);
          (*(v66 + 8))(&v114, v16, v66);
          (*(v65 + 24))(&v114, v64, v65);
          (*v102)(v105, v109);
          goto LABEL_47;
        }

        sub_24E615E00(&v117, &v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_24E61A188(0, v100[2] + 1, 1, v100);
        }

        v54 = v100[2];
        v57 = v100[3];
        v55 = v54 + 1;
        if (v54 >= v57 >> 1)
        {
          v100 = sub_24E61A188((v57 > 1), v54 + 1, 1, v100);
        }

        (*v102)(v105, v109);
        v56 = &v120;
      }

      v58 = *(v56 - 32);
      *(v58 + 16) = v55;
      v34 = (v58 + 40 * v54);
LABEL_40:
      sub_24E612E28(&v114, (v34 + 4));
LABEL_47:
      __swift_destroy_boxed_opaque_existential_1(&v117);
      goto LABEL_6;
    }

    sub_24E601704(&v114, &qword_27F23E148);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v15;
    v35 = sub_24E76EAD8(v18);
    v37 = v15[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v11 = v36;
    if (v15[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = v35;
        sub_24E8B68B0();
        v35 = v67;
        v15 = v117;
        if (v11)
        {
LABEL_27:
          v49 = v15[7] + 24 * v35;
          v50 = *v49;
          v51 = *(v49 + 8);
          *v49 = v110;
          v52 = *(v49 + 16);
          *(v49 + 16) = 3;
          sub_24EC7B180(v50, v51, v52);
          goto LABEL_6;
        }

        goto LABEL_49;
      }
    }

    else
    {
      sub_24E8A8F14(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_24E76EAD8(v18);
      if ((v11 & 1) != (v41 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }
    }

    v15 = v117;
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_49:
    v15[(v35 >> 6) + 8] |= 1 << v35;
    *(v15[6] + v35) = v18;
    v68 = v15[7] + 24 * v35;
    *v68 = v110;
    *(v68 + 16) = 3;
    v69 = v15[2];
    v39 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v39)
    {
      goto LABEL_62;
    }

    v15[2] = v70;
LABEL_6:
    ++v12;
  }

  while (v12 != 4);
  sub_24E615E00(v107, &v117);
  type metadata accessor for TodayCardTriggerController();
  v71 = swift_allocObject();
  sub_24E74EC40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  *&v114 = v72;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v96 + 104))(v95, *MEMORY[0x277D85260], v97);
  v73 = sub_24F92BF38();
  v74 = v108;
  v71[9] = v108;
  v75 = MEMORY[0x277D84F90];
  v71[10] = MEMORY[0x277D84F90];
  v71[11] = v75;
  v76 = v101;
  v77 = v100;
  v71[12] = v101;
  v71[13] = v77;
  v71[7] = v73;
  v71[8] = v15;
  sub_24E615E00(&v117, (v71 + 2));
  if (v74[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E140);
    v78 = sub_24F92A9E8();
  }

  else
  {
    v79 = v76[2];
    v80 = MEMORY[0x277D84F90];
    if (v79)
    {
      v113 = MEMORY[0x277D84F90];

      sub_24F45814C(0, v79, 0);
      v80 = v113;
      v81 = (v76 + 4);
      do
      {
        sub_24E615E00(v81, &v114);
        v82 = v115;
        v83 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, v115);
        (*(v83 + 16))(v112, v82, v83);
        __swift_destroy_boxed_opaque_existential_1(&v114);
        v84 = v112[0];
        v85 = v112[1];
        v113 = v80;
        v87 = *(v80 + 16);
        v86 = *(v80 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_24F45814C((v86 > 1), v87 + 1, 1);
          v80 = v113;
        }

        *(v80 + 16) = v87 + 1;
        v88 = v80 + 16 * v87;
        *(v88 + 32) = v84;
        *(v88 + 40) = v85;
        v81 += 40;
        --v79;
      }

      while (v79);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E140);
    *&v114 = v80;
    v78 = sub_24F92A988();
  }

  v89 = v78;

  __swift_destroy_boxed_opaque_existential_1(&v117);
  (*v102)(v103, v109);
  v71[14] = v89;
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v111);
  return v71;
}

uint64_t sub_24F2BBD44()
{
  sub_24F2BBFE4();
}

uint64_t sub_24F2BBD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E150);
  sub_24F92BF18();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  TriggerPersistantStore.markTriggersSeen(_:)(v6[0]);
  v1 = *(v6[0]._rawValue + 2);
  if (v1)
  {
    v2 = v6[0]._rawValue + 32;
    do
    {
      sub_24E615E00(v2, v6);
      v3 = v7;
      v4 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v4 + 32))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

double sub_24F2BBE7C@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E158);
  sub_24F92BF18();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_24F2BBF00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[8];
  swift_beginAccess();
  v5 = a1[9];
  swift_beginAccess();
  v6 = a1[10];
  swift_beginAccess();
  *&v7 = v6;
  v8 = a1[12];
  *(&v7 + 1) = a1[11];
  *&v9 = v4;
  *(&v9 + 1) = v5;
  *a2 = v9;
  *(a2 + 16) = v7;
  v10 = a1[13];
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
}

uint64_t sub_24F2BBFE4()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 56);
  aBlock[4] = sub_24F2BD45C;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_137;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v12 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_24F2BC284(uint64_t a1)
{
  v2 = sub_24F927D88();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927D98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v13 = *(a1 + 72);
  v14 = *(v13 + 16);
  if (v14)
  {
    v34 = sub_24E74EC40();
    v33 = v2;
    v32 = v4;
    v31 = v8;
    v15 = v13 + 32;
    v30 = *MEMORY[0x277D851C8];
    v29 = (v9 + 104);
    v28 = (v9 + 8);
    v27 = v38;
    v26 = (v35 + 8);
    ++v25;
    v23 = v13;

    v24 = v11;
    do
    {
      sub_24E615E00(v15, v40);
      v16 = v24;
      v17 = v31;
      (*v29)(v24, v30, v31);
      v35 = sub_24F92BF48();
      (*v28)(v16, v17);
      sub_24E612E28(v40, v39);
      v18 = swift_allocObject();
      *(v18 + 16) = a1;
      sub_24E612E28(v39, v18 + 24);
      v38[2] = sub_24F2BD480;
      v38[3] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v38[0] = sub_24EAF8248;
      v38[1] = &block_descriptor_20_3;
      v19 = _Block_copy(aBlock);

      sub_24F927DA8();
      v36 = MEMORY[0x277D84F90];
      sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310);
      v20 = v32;
      v21 = v33;
      sub_24F92C6A8();
      v22 = v35;
      MEMORY[0x2530518B0](0, v7, v20, v19);
      _Block_release(v19);

      (*v26)(v20, v21);
      (*v25)(v7, v5);

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_24F2BC784(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(a2, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_24E612E28(v9, v6 + 24);
  v7 = *(v4 + 24);

  v7(sub_24F2BD504, v6, v3, v4);
}

uint64_t sub_24F2BC884(char a1, uint64_t a2, void *a3)
{
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v20 = v5;
    v15 = a3[3];
    v16 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v15);
    (*(v16 + 8))(&v22, v15, v16);
    LOBYTE(v15) = v22;
    sub_24F927D78();
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v15;
    *(v17 + 25) = a1 & 1;
    aBlock[4] = sub_24F2BD548;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_32;
    v18 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v8, v12, v18);
    _Block_release(v18);
    (*(v6 + 8))(v8, v20);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_24F2BCB24(void *a1, void *a2, char a3)
{
  result = swift_beginAccess();
  v7 = a1[9];
  v46 = *(v7 + 16);
  if (v46)
  {
    v45 = a1;
    v8 = v7 + 32;
    v9 = 0x800000024FA42E60;

    v10 = 0;
    v11 = a2;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_66;
      }

      sub_24E615E00(v8, v52);
      v12 = v53;
      v13 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      (*(v13 + 8))(&v49, v12, v13);
      v14 = 0xD000000000000013;
      v15 = v49 == 2 ? 0x686374615777656ELL : 0xD000000000000013;
      v16 = v49 == 2 ? 0xEF676E6972696150 : 0x800000024FA42E60;
      v17 = v49 ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v18 = v49 ? 0x800000024FA42E30 : 0xED000065726F7453;
      v19 = v49 <= 1u ? v17 : v15;
      a2 = (v49 <= 1u ? v18 : v16);
      if (v11 == 2)
      {
        v14 = 0x686374615777656ELL;
        v20 = 0xEF676E6972696150;
      }

      else
      {
        v20 = 0x800000024FA42E60;
      }

      v21 = v11 ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v22 = v11 ? 0x800000024FA42E30 : 0xED000065726F7453;
      v23 = v11 <= 1 ? v21 : v14;
      v24 = (v11 <= 1 ? v22 : v20);
      if (v19 == v23 && a2 == v24)
      {
        break;
      }

      v25 = sub_24F92CE08();

      __swift_destroy_boxed_opaque_existential_1(v52);
      if (v25)
      {
        goto LABEL_43;
      }

      ++v10;
      v8 += 40;
      if (v46 == v10)
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_43:

    v9 = a1;
    swift_beginAccess();
    sub_24EA0EAC0(v10, v52);
    swift_endAccess();
    if (a3)
    {
      sub_24E615E00(v52, &v49);
      swift_beginAccess();
      a2 = a1[11];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1[11] = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_45:
        v28 = a2[2];
        v27 = a2[3];
        if (v28 >= v27 >> 1)
        {
          a2 = sub_24E61A188((v27 > 1), v28 + 1, 1, a2);
        }

        a2[2] = v28 + 1;
        sub_24E612E28(&v49, &a2[5 * v28 + 4]);
        *(v9 + 88) = a2;
        goto LABEL_53;
      }

LABEL_66:
      a2 = sub_24E61A188(0, a2[2] + 1, 1, a2);
      *(v9 + 88) = a2;
      goto LABEL_45;
    }

    sub_24E615E00(v52, &v49);
    swift_beginAccess();
    v29 = a1[10];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    a1[10] = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_24E61A188(0, v29[2] + 1, 1, v29);
      a1[10] = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_24E61A188((v31 > 1), v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    sub_24E612E28(&v49, &v29[5 * v32 + 4]);
    v45[10] = v29;
LABEL_53:
    swift_endAccess();
    if (*(*(v9 + 72) + 16))
    {
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    swift_beginAccess();
    *&v49 = *(v9 + 88);

    sub_24EA0C184(v33);

    sub_24F2BAAFC(&v49);

    v34 = v49;
    v35 = *(v49 + 16);
    if (v35)
    {
      v48 = MEMORY[0x277D84F90];
      sub_24F45814C(0, v35, 0);
      v36 = v48;
      v37 = v34 + 32;
      do
      {
        sub_24E615E00(v37, &v49);
        v38 = v50;
        v39 = v51;
        __swift_project_boxed_opaque_existential_1(&v49, v50);
        (*(v39 + 16))(v47, v38, v39);
        __swift_destroy_boxed_opaque_existential_1(&v49);
        v40 = v47[0];
        v41 = v47[1];
        v48 = v36;
        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_24F45814C((v42 > 1), v43 + 1, 1);
          v36 = v48;
        }

        *(v36 + 16) = v43 + 1;
        v44 = v36 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v37 += 40;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    *&v49 = v36;
    sub_24F92A9C8();
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  return result;
}

uint64_t sub_24F2BD054@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *(result + 16);
  if (v23)
  {
    v22 = result + 32;
    swift_beginAccess();
    v4 = 0;
    v24 = MEMORY[0x277D84F90];
    v21 = a2;
    do
    {
      v30 = v4;
      v6 = (v22 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = *(a2 + 88);
      v10 = *(v9 + 16);

      if (v10)
      {
        v11 = 0;
        v12 = v9 + 32;
        while (1)
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          sub_24E615E00(v12, &v27);
          v13 = v28;
          v14 = v29;
          __swift_project_boxed_opaque_existential_1(&v27, v28);
          (*(v14 + 16))(v25, v13, v14);
          if (v25[0] == v8 && v25[1] == v7)
          {

            goto LABEL_17;
          }

          v16 = sub_24F92CE08();

          if (v16)
          {
            break;
          }

          ++v11;
          result = __swift_destroy_boxed_opaque_existential_1(&v27);
          v12 += 40;
          if (v10 == v11)
          {
            goto LABEL_3;
          }
        }

LABEL_17:

        sub_24E612E28(&v27, v26);
        sub_24E612E28(v26, &v27);
        sub_24E615E00(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a2 = v21;
        v5 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_24E61A188(0, v24[2] + 1, 1, v24);
        }

        v19 = v24[2];
        v18 = v24[3];
        if (v19 >= v18 >> 1)
        {
          v24 = sub_24E61A188((v18 > 1), v19 + 1, 1, v24);
        }

        __swift_destroy_boxed_opaque_existential_1(&v27);
        v24[2] = v19 + 1;
        result = sub_24E612E28(v26, &v24[5 * v19 + 4]);
      }

      else
      {
LABEL_3:

        a2 = v21;
        v5 = v30;
      }

      v4 = v5 + 1;
    }

    while (v4 != v23);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  *a3 = v24;
  return result;
}

uint64_t TodayCardTriggerController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t TodayCardTriggerController.__deallocating_deinit()
{
  TodayCardTriggerController.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2BD48C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_60()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24F2BD510()
{

  return swift_deallocObject();
}

uint64_t sub_24F2BD558(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A20);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24F2BD7B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24F2BD660(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24F2BD660(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_24E615E00(v8, &v21);
      sub_24E615E00(v8 - 40, v18);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v11 = TodayCardTrigger.displayRank.getter(v9, v10);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = TodayCardTrigger.displayRank.getter(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      if (v11 >= v14)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 += 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_24E612E28(v8, &v21);
      v15 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v15;
      *(v8 + 32) = *(v8 - 8);
      result = sub_24E612E28(&v21, v8 - 40);
      v8 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F2BD7B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24E86164C(v8);
      v8 = result;
    }

    v118 = v8;
    v95 = *(v8 + 16);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = *(v8 + 16 * v95);
        v97 = v8;
        v98 = *(v8 + 16 * (v95 - 1) + 32);
        v8 = *(v8 + 16 * (v95 - 1) + 40);
        sub_24F2BDF44((*a3 + 40 * v96), (*a3 + 40 * v98), *a3 + 40 * v8, v7);
        if (v5)
        {
        }

        if (v8 < v96)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_24E86164C(v97);
        }

        if (v95 - 2 >= *(v97 + 2))
        {
          goto LABEL_116;
        }

        v99 = &v97[16 * v95];
        *v99 = v96;
        *(v99 + 1) = v8;
        v118 = v97;
        result = sub_24E8615C0(v95 - 1);
        v8 = v118;
        v95 = *(v118 + 16);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v20 = v7 + 1;
    }

    else
    {
      v110 = v6;
      v102 = v5;
      v10 = *a3;
      sub_24E615E00(*a3 + 40 * (v7 + 1), &v115);
      v11 = 40 * v7;
      v12 = v10 + 40 * v7;
      sub_24E615E00(v12, v112);
      v13 = v116;
      v14 = v117;
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v107 = TodayCardTrigger.displayRank.getter(v13, v14);
      v15 = v113;
      v16 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v17 = TodayCardTrigger.displayRank.getter(v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v112);
      result = __swift_destroy_boxed_opaque_existential_1(&v115);
      v104 = v7;
      v18 = v7 + 2;
      v19 = v12 + 80;
      while (1)
      {
        v20 = v110;
        if (v110 == v18)
        {
          break;
        }

        sub_24E615E00(v19, &v115);
        sub_24E615E00(v19 - 40, v112);
        v21 = v116;
        v22 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v23 = TodayCardTrigger.displayRank.getter(v21, v22);
        v24 = v113;
        v7 = v114;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v25 = TodayCardTrigger.displayRank.getter(v24, v7);
        __swift_destroy_boxed_opaque_existential_1(v112);
        result = __swift_destroy_boxed_opaque_existential_1(&v115);
        ++v18;
        v19 += 40;
        if (v107 < v17 == v23 >= v25)
        {
          v20 = v18 - 1;
          break;
        }
      }

      v5 = v102;
      v9 = v104;
      if (v107 < v17)
      {
        if (v20 < v104)
        {
          goto LABEL_119;
        }

        if (v104 < v20)
        {
          v26 = v8;
          v27 = 40 * v20 - 40;
          v28 = v20;
          v29 = v20;
          do
          {
            if (v9 != --v29)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v30 = v33 + v11;
              v7 = v33 + v27;
              sub_24E612E28((v33 + v11), &v115);
              v31 = *(v7 + 32);
              v32 = *(v7 + 16);
              *v30 = *v7;
              *(v30 + 16) = v32;
              *(v30 + 32) = v31;
              result = sub_24E612E28(&v115, v7);
            }

            ++v9;
            v27 -= 40;
            v11 += 40;
          }

          while (v9 < v29);
          v8 = v26;
          v9 = v104;
          v20 = v28;
        }
      }
    }

    v34 = a3[1];
    if (v20 < v34)
    {
      if (__OFSUB__(v20, v9))
      {
        goto LABEL_118;
      }

      if (v20 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v34)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v20 != v7)
        {
          break;
        }
      }
    }

    v7 = v20;
    if (v20 < v9)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v36 = *(v8 + 16);
    v35 = *(v8 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_24E615ED8((v35 > 1), v36 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 16 * v36;
    *(v38 + 32) = v9;
    *(v38 + 40) = v7;
    v39 = *v106;
    if (!*v106)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v8 + 32);
          v42 = *(v8 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_48:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = (v8 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = (v8 + 32 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v67 = (v8 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_62:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = v8 + 16 * v40;
        v72 = *(v70 + 32);
        v71 = *(v70 + 40);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_69:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = *(v8 + 32 + 16 * v78);
        v80 = *(v8 + 32 + 16 * v40 + 8);
        sub_24F2BDF44((*a3 + 40 * v79), (*a3 + 40 * *(v8 + 32 + 16 * v40)), *a3 + 40 * v80, v39);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v78 >= *(v8 + 16))
        {
          goto LABEL_103;
        }

        v81 = v8 + 16 * v78;
        *(v81 + 32) = v79;
        *(v81 + 40) = v80;
        v118 = v8;
        result = sub_24E8615C0(v40);
        v8 = v118;
        v37 = *(v118 + 16);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = v8 + 32 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = (v8 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = (v8 + 32 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v100 = v8;
  v103 = v5;
  v105 = v9;
  v82 = *a3;
  v83 = *a3 + 40 * v20;
  v84 = v9 - v20;
  v108 = v7;
LABEL_81:
  v111 = v20;
  v85 = v84;
  v86 = v83;
  while (1)
  {
    sub_24E615E00(v86, &v115);
    sub_24E615E00(v86 - 40, v112);
    v87 = v116;
    v88 = v117;
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v89 = TodayCardTrigger.displayRank.getter(v87, v88);
    v90 = v113;
    v91 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    v92 = TodayCardTrigger.displayRank.getter(v90, v91);
    __swift_destroy_boxed_opaque_existential_1(v112);
    result = __swift_destroy_boxed_opaque_existential_1(&v115);
    if (v89 >= v92)
    {
LABEL_80:
      v20 = v111 + 1;
      v83 += 40;
      --v84;
      v7 = v108;
      if (v111 + 1 != v108)
      {
        goto LABEL_81;
      }

      v5 = v103;
      v9 = v105;
      v8 = v100;
      if (v108 < v105)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    sub_24E612E28(v86, &v115);
    v93 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v93;
    *(v86 + 32) = *(v86 - 8);
    sub_24E612E28(&v115, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_24F2BDF44(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  v49 = __dst;
  if (v8 >= v10)
  {
    v13 = __dst;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v13[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v24 = v5;
      goto LABEL_35;
    }

    while (1)
    {
      __dsta = v5;
      v25 = (v5 - 40);
      v26 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v12 = (v26 + 40);
        v29 = (v4 + 40);
        sub_24E615E00(v26, v46);
        v5 = v25;
        sub_24E615E00(v25, v43);
        v30 = v47;
        v31 = v48;
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v32 = TodayCardTrigger.displayRank.getter(v30, v31);
        v34 = v44;
        v33 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v35 = TodayCardTrigger.displayRank.getter(v34, v33);
        __swift_destroy_boxed_opaque_existential_1(v43);
        __swift_destroy_boxed_opaque_existential_1(v46);
        if (v32 < v35)
        {
          break;
        }

        v13 = v49;
        if (v29 != v12)
        {
          v36 = *v26;
          v37 = *(v26 + 16);
          *(v4 + 32) = *(v26 + 32);
          *v4 = v36;
          *(v4 + 16) = v37;
        }

        v27 = v26 - 40;
        v4 -= 40;
        v28 = v26 > v13;
        v26 -= 40;
        v25 = v5;
        if (!v28)
        {
          v12 = (v27 + 40);
          v24 = __dsta;
          goto LABEL_35;
        }
      }

      v13 = v49;
      v24 = v5;
      if (v29 != __dsta)
      {
        v38 = *v5;
        v39 = *(v5 + 1);
        *(v4 + 32) = *(v5 + 4);
        *v4 = v38;
        *(v4 + 16) = v39;
      }

      if (v12 <= v13 || v5 <= v6)
      {
        v12 = (v26 + 40);
        goto LABEL_35;
      }
    }
  }

  if (__dst != __src || &__src[40 * v8] <= __dst)
  {
    v11 = __dst;
    memmove(__dst, __src, 40 * v8);
    __dst = v11;
  }

  v12 = &__dst[40 * v8];
  if (v7 < 40 || v5 >= v4)
  {
    v24 = v6;
    v13 = v49;
    goto LABEL_35;
  }

  v13 = v49;
  do
  {
    sub_24E615E00(v5, v46);
    sub_24E615E00(v13, v43);
    v14 = v47;
    v15 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v16 = TodayCardTrigger.displayRank.getter(v14, v15);
    v17 = v44;
    v18 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v19 = TodayCardTrigger.displayRank.getter(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (v16 < v19)
    {
      v20 = v5;
      v21 = v6 == v5;
      v5 += 40;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v6 + 4) = *(v20 + 4);
      *v6 = v22;
      *(v6 + 1) = v23;
      goto LABEL_14;
    }

    v20 = v13;
    v21 = v6 == v13;
    v13 += 40;
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_14:
    v6 += 40;
  }

  while (v13 < v12 && v5 < v4);
  v24 = v6;
LABEL_35:
  v40 = (v12 - v13) / 40;
  if (v24 != v13 || v24 >= &v13[40 * v40])
  {
    memmove(v24, v13, 40 * v40);
  }

  return 1;
}

void sub_24F2BE2E4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24F92C6F8();
    sub_24E69A5C4(0, &qword_27F23E1B0);
    sub_24ECFF898();
    sub_24F92BAE8();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_24F92C778() || (sub_24E69A5C4(0, &qword_27F23E1B0), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_24:
      sub_24E6586B4();
      return;
    }

LABEL_17:
    v12 = [v11 type];
    v13 = v12 - 1;
    if ((v12 - 1) <= 2)
    {
      v14 = [v11 value];
      v19 = sub_24F92B0D8();
      v20 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E6189EC(0, *(v21 + 2) + 1, 1, v21);
      }

      v17 = *(v21 + 2);
      v16 = *(v21 + 3);
      if (v17 >= v16 >> 1)
      {
        v21 = sub_24E6189EC((v16 > 1), v17 + 1, 1, v21);
      }

      *(v21 + 2) = v17 + 1;
      v18 = &v21[24 * v17];
      v18[32] = v13;
      *(v18 + 5) = v19;
      *(v18 + 6) = v20;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_24F2BE598(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_24F92C738();
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x253052270](v3, a1);
    }

    else
    {
      if (v3 >= *(v13 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_24F92B0D8();
    v9 = v8;

    LOBYTE(v6) = sub_24ED7C5F0(&v12, v7, v9);

    if ((v6 & 1) == 0)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_24F2BE704(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_24F2BE760@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 providerManager];

  v9 = [v3 defaultProvider];
  v4 = [v3 providers];
  sub_24E69A5C4(0, &qword_27F225FA8);
  v5 = sub_24F92B5A8();

  v6 = [v3 faceTimeProvider];
  v7 = [v3 telephonyProvider];

  *a1 = v3;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;

  return v9;
}

void sub_24F2BE8A0(uint64_t *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v75 = a3;
  v3 = a1[1];
  v88 = *a1;
  v4 = a1[2];
  v82 = a1[3];
  v83 = v3;
  v84 = a1[4];
  v85 = v4;
  v5 = a1[6];
  v76 = a1[7];
  v77 = v5;
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v78 = a2[2];
  v79 = v6;
  v9 = a2[4];
  v72 = a2[5];
  v73 = v9;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 providerManager];

  if (v7)
  {

    v12 = v8;
  }

  else
  {
    v13 = [v11 providers];
    sub_24E69A5C4(0, &qword_27F225FA8);
    v12 = sub_24F92B5A8();
  }

  v91 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v80 = v11;
    v81 = v7;
    v74 = v8;
    if (i)
    {
      v15 = 0;
      v7 = 0;
      v86 = v12 & 0xFFFFFFFFFFFFFF8;
      v87 = v12 & 0xC000000000000001;
      while (1)
      {
        if (v87)
        {
          v16 = MEMORY[0x253052270](v15, v12);
        }

        else
        {
          if (v15 >= *(v86 + 16))
          {
            goto LABEL_55;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v8 = v12;
        v19 = [v16 identifier];
        v20 = sub_24F92B0D8();
        v22 = v21;

        v89 = v20;
        v90 = v22;
        MEMORY[0x28223BE20](v23);
        v71 = &v89;
        v11 = sub_24E6159B8(sub_24E7FA94C, v70, v88);

        if (v11)
        {
          v11 = &v91;
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        else
        {
        }

        ++v15;
        if (v18 == i)
        {
          v11 = v91;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v7 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_19:

    if (!v85)
    {
      break;
    }

    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      v24 = sub_24F92C738();

      if (!v24)
      {
LABEL_60:

        v26 = 0;
LABEL_61:
        v55 = v26;
        if (!v84)
        {
          goto LABEL_42;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v24 = *(v11 + 16);

      if (!v24)
      {
        goto LABEL_60;
      }
    }

    v12 = 0;
    v8 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v25 = MEMORY[0x253052270](v12, v11);
      }

      else
      {
        if (v12 >= *(v11 + 16))
        {
          goto LABEL_57;
        }

        v25 = *(v11 + 8 * v12 + 32);
      }

      v26 = v25;
      v27 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v28 = [v25 identifier];
      v29 = sub_24F92B0D8();
      v31 = v30;

      if (v29 == v83 && v85 == v31)
      {

LABEL_53:

        goto LABEL_61;
      }

      v33 = sub_24F92CE08();

      if (v33)
      {
        goto LABEL_53;
      }

      ++v12;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  if (v81 && v79)
  {
    v34 = v79;
  }

  else
  {
    v34 = [v80 defaultProvider];
  }

  v26 = v34;
  v35 = [v34 identifier];
  v36 = sub_24F92B0D8();
  v38 = v37;

  v89 = v36;
  v90 = v38;
  MEMORY[0x28223BE20](v39);
  v71 = &v89;
  LOBYTE(v35) = sub_24E6159B8(sub_24E7FAFB0, v70, v88);

  if (v35)
  {
    goto LABEL_61;
  }

  v26 = 0;
  if (v84)
  {
LABEL_62:

    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      goto LABEL_82;
    }

    for (j = *(v11 + 16); j; j = sub_24F92C738())
    {
      v57 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x253052270](v57, v11);
        }

        else
        {
          if (v57 >= *(v11 + 16))
          {
            goto LABEL_81;
          }

          v58 = *(v11 + 8 * v57 + 32);
        }

        v41 = v58;
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v60 = [v58 identifier];
        v61 = sub_24F92B0D8();
        v63 = v62;

        if (v61 == v82 && v84 == v63)
        {

LABEL_79:

          goto LABEL_84;
        }

        v65 = sub_24F92CE08();

        if (v65)
        {
          goto LABEL_79;
        }

        ++v57;
        if (v59 == j)
        {
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }

LABEL_83:

    v41 = 0;
    goto LABEL_84;
  }

LABEL_42:
  if (v81 && v78)
  {
    v40 = v78;
  }

  else
  {
    v40 = [v80 defaultProvider];
  }

  v41 = v40;
  if (![v40 supportsAudioAndVideo])
  {

LABEL_50:
    v41 = 0;
    v47 = v80;
    v48 = v81;
    if (v81)
    {
      goto LABEL_85;
    }

LABEL_51:
    v49 = v47;
    v50 = [v49 faceTimeProvider];
    v51 = v47;
    v52 = [v49 telephonyProvider];

    v53 = v26;
    v54 = v41;
    goto LABEL_86;
  }

  v42 = [v41 identifier];
  v43 = sub_24F92B0D8();
  v45 = v44;

  v89 = v43;
  v90 = v45;
  MEMORY[0x28223BE20](v46);
  v71 = &v89;
  LOBYTE(v42) = sub_24E6159B8(sub_24E7FAFB0, v70, v88);

  if ((v42 & 1) == 0)
  {

    goto LABEL_50;
  }

LABEL_84:
  v66 = v41;
  v47 = v80;
  v48 = v81;
  if (!v81)
  {
    goto LABEL_51;
  }

LABEL_85:
  v67 = v73;
  v50 = v73;
  v68 = v72;
  v51 = v47;
  v52 = v72;
  sub_24F2D4698(v48, v79, v78, v74, v67, v68);
  v53 = v41;
  v54 = v26;
LABEL_86:

  v69 = v75;
  *v75 = v51;
  v69[1] = v26;
  v69[2] = v41;
  v69[3] = v11;
  v69[4] = v50;
  v69[5] = v52;
}

uint64_t sub_24F2BF054@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Score(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v38 = a3;
    v56 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    result = sub_24F2CC85C(v56, &v37 - v11, type metadata accessor for Score);
    if (v14 == 1)
    {
LABEL_3:
      v16 = v38;
      sub_24F2CC924(v13, v38, type metadata accessor for Score);
      (*(v7 + 56))(v16, 0, 1, v6);
    }

    else
    {
      v51 = a2 + 12;
      v47 = a2 + 15;
      v48 = a2 + 13;
      v40 = a2 + 16;
      v41 = a2 + 14;
      v46 = a2 + 17;
      v39 = a2 + 18;
      v54 = a2 + 22;
      v55 = a2 + 19;
      v49 = a2 + 23;
      v50 = a2 + 20;
      v42 = a2 + 24;
      v43 = a2 + 21;
      v52 = a2 + 27;
      v53 = a2 + 25;
      v44 = a2 + 28;
      v45 = a2 + 26;
      v17 = 1;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        sub_24F2CC85C(v56 + *(v7 + 72) * v17, v9, type metadata accessor for Score);
        sub_24F91F5C8();
        v20 = exp(v19 * 0.693147181 / a2[11]);
        v21 = *v13;
        if (v21 <= 2)
        {
          v22 = v51;
          if (*v13)
          {
            v22 = v48;
            if (v21 != 1)
            {
              v22 = v41;
            }
          }
        }

        else if (*v13 > 4u)
        {
          v22 = v46;
          if (v21 != 5)
          {
            v22 = v39;
          }
        }

        else
        {
          v22 = v47;
          if (v21 != 3)
          {
            v22 = v40;
          }
        }

        v23 = *v22;
        v24 = v13[1];
        if (v24 > 2)
        {
          v25 = v54;
          if (v24 != 3)
          {
            v25 = v49;
            if (v24 != 4)
            {
              v25 = v42;
            }
          }
        }

        else
        {
          v25 = v55;
          if (v13[1])
          {
            v25 = v50;
            if (v24 != 1)
            {
              v25 = v43;
            }
          }
        }

        v26 = *v25;
        if (v13[2] > 1u)
        {
          v27 = v52;
          if (v13[2] != 2)
          {
            v27 = v44;
          }
        }

        else
        {
          v27 = v53;
          if (v13[2])
          {
            v27 = v45;
          }
        }

        v28 = *v27;
        sub_24F91F5C8();
        v30 = exp(v29 * 0.693147181 / a2[11]);
        v31 = *v9;
        if (v31 <= 2)
        {
          v32 = v51;
          if (*v9)
          {
            v32 = v48;
            if (v31 != 1)
            {
              v32 = v41;
            }
          }
        }

        else if (*v9 > 4u)
        {
          v32 = v46;
          if (v31 != 5)
          {
            v32 = v39;
          }
        }

        else
        {
          v32 = v47;
          if (v31 != 3)
          {
            v32 = v40;
          }
        }

        v33 = *v32;
        v34 = v9[1];
        if (v34 > 2)
        {
          v35 = v54;
          if (v34 != 3)
          {
            v35 = v49;
            if (v34 != 4)
            {
              v35 = v42;
            }
          }
        }

        else
        {
          v35 = v55;
          if (v9[1])
          {
            v35 = v50;
            if (v34 != 1)
            {
              v35 = v43;
            }
          }
        }

        if (v9[2] > 1u)
        {
          v36 = v52;
          if (v9[2] != 2)
          {
            v36 = v44;
          }
        }

        else
        {
          v36 = v53;
          if (v9[2])
          {
            v36 = v45;
          }
        }

        if (v20 * v23 * v26 * v28 >= v30 * v33 * *v35 * *v36)
        {
          result = sub_24F2CC8C4(v9, type metadata accessor for Score);
        }

        else
        {
          sub_24F2CC8C4(v13, type metadata accessor for Score);
          result = sub_24F2CC924(v9, v13, type metadata accessor for Score);
        }

        ++v17;
        if (v18 == v14)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    (*(v7 + 56))(a3, 1, 1, v6, v12);
  }

  return result;
}

void *sub_24F2BF550(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  if (sub_24F92B0D8() == a1 && v8 == a2)
  {

    v12 = v6;
    return v6;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    v11 = v6;
    return v6;
  }

  if (sub_24F92B0D8() == a1 && v13 == a2)
  {

    goto LABEL_33;
  }

  v15 = sub_24F92CE08();

  if (v15)
  {
LABEL_33:
    v35 = v7;
    return v7;
  }

  v16 = sub_24F92B198();
  v18 = v17;
  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v20 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x253052270](v20, v5);
      }

      else
      {
        if (v20 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v22 = *(v5 + 8 * v20 + 32);
      }

      v6 = v22;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v22 identifier];
      sub_24F92B0D8();

      v25 = sub_24F92B198();
      v27 = v26;

      if (v25 == v16 && v27 == v18)
      {
LABEL_35:

LABEL_36:

        return v6;
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        goto LABEL_36;
      }

      v30 = [v6 bundleIdentifier];
      if (v30)
      {
        v31 = v30;
        sub_24F92B0D8();

        v32 = sub_24F92B198();
        v34 = v33;

        if (v32 == v16 && v34 == v18)
        {
          goto LABEL_35;
        }

        v21 = sub_24F92CE08();

        if (v21)
        {
          goto LABEL_36;
        }
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  return 0;
}

uint64_t sub_24F2BF82C(void *a1, uint64_t a2)
{
  sub_24E69A5C4(0, &qword_27F21BCB0);
  if (sub_24F92C408())
  {
    if (a2 == 2)
    {
      v4 = "com.apple.spotlightui";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x72656469766F7270;
      v6 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      v7 = [a1 localizedName];
      goto LABEL_7;
    }

    if (a2 == 1)
    {
      v4 = "CALL_PROVIDER_VIDEO";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x72656469766F7270;
      v6 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      v7 = [a1 localizedName];
LABEL_7:
      v8 = v7;
      v9 = sub_24F92B0D8();
      v11 = v10;

      *(inited + 48) = v9;
      *(inited + 56) = v11;
      v12 = sub_24E6086DC(inited);
      swift_setDeallocating();
      sub_24E601704(v6, &qword_27F219F90);
      v13._object = (v4 | 0x8000000000000000);
      v13._countAndFlagsBits = 0xD000000000000013;
      countAndFlagsBits = localizedString(_:with:)(v13, v12)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  v16 = [a1 localizedName];
  v17 = sub_24F92B0D8();

  return v17;
}

unint64_t sub_24F2BFA4C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F2CD040(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24F2BFA78@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F2CD020(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24F2BFAA4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F2CD030(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24F2BFAD0()
{
  BYTE8(v3) = 0;
  sub_24F92CA38();
  MEMORY[0x253050C20](32, 0xE100000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](32, 0xE100000000000000);
  *&v3 = *(v0 + 2);
  sub_24F92CA38();
  MEMORY[0x253050C20](2128928, 0xE300000000000000);
  type metadata accessor for Score(0);
  sub_24F91F648();
  sub_24F2D4580(&qword_27F229EE8);
  v1 = sub_24F92CD88();
  MEMORY[0x253050C20](v1);

  return *(&v3 + 1);
}

void sub_24F2BFC1C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 providerManager];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F941C80;
  *(v6 + 32) = a1;
  v7 = v5;
  v8 = a1;
  if (([v8 supportsAudioOnly] & 1) != 0 || objc_msgSend(v8, sel_supportsAudioAndVideo))
  {
    v9 = v8;
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if ([v8 supportsAudioAndVideo])
  {
    v11 = v8;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 faceTimeProvider];
  v14 = [v7 telephonyProvider];

  *a2 = v7;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v6;
  a2[4] = v13;
  a2[5] = v14;
}

__n128 sub_24F2BFD7C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v16 = *(a2 + 32);
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 providerManager];

  if (([a1 supportsAudioOnly] & 1) != 0 || objc_msgSend(a1, sel_supportsAudioAndVideo))
  {
    v11 = a1;
    v12 = a1;
  }

  else
  {
    v11 = v5;
    v12 = v5;
  }

  v13 = v11;
  if (![a1 supportsAudioAndVideo])
  {

    v14 = v8;
    a1 = v8;
  }

  a3->n128_u64[0] = v10;
  a3->n128_u64[1] = v12;
  a3[1].n128_u64[0] = a1;
  a3[1].n128_u64[1] = v7;
  result = v16;
  a3[2] = v16;
  return result;
}

void *sub_24F2BFEB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253052270](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 bundleIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = sub_24F92B0D8();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return v9;
        }

        v17 = sub_24F92CE08();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

void *sub_24F2C0014(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  result = sub_24F2BFEB0(a1, a2);
  if (!result)
  {
    result = sub_24F2BF550(a1, a2);
    if (!result)
    {
      if (v6 >> 62)
      {
        goto LABEL_22;
      }

      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        while (1)
        {
          v9 = 0;
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          while ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x253052270](v9, v6);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_18:
              __break(1u);
LABEL_19:

              return v3;
            }

LABEL_9:
            v3 = v10;
            v12 = [v10 localizedName];
            v13 = sub_24F92B0D8();
            v15 = v14;

            if (v13 == a1 && v15 == a2)
            {
              goto LABEL_19;
            }

            v17 = sub_24F92CE08();

            if (v17)
            {
              return v3;
            }

            result = 0;
            ++v9;
            if (v11 == v8)
            {
              return result;
            }
          }

          if (v9 < *(v18 + 16))
          {
            break;
          }

          __break(1u);
LABEL_22:
          v8 = sub_24F92C738();
          if (!v8)
          {
            return 0;
          }
        }

        v10 = *(v6 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

  return result;
}

id sub_24F2C01B4()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_27F39E1E0 = result;
  return result;
}

uint64_t sub_24F2C01E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  v1 = *MEMORY[0x277CF7D90];
  *(inited + 32) = *MEMORY[0x277CF7D88];
  *(inited + 36) = v1;
  *(inited + 40) = *MEMORY[0x277CF7D78];
  v2 = sub_24F45DB1C(inited);
  result = swift_setDeallocating();
  off_27F23E160 = v2;
  return result;
}

uint64_t sub_24F2C027C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000024FA72850;
  sub_24F92D038();
}

void sub_24F2C0318(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v212 = a8;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E298);
  MEMORY[0x28223BE20](v204);
  v203 = v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v202 = v176 - v21;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB0);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v209 = (v176 - v22);
  v207 = type metadata accessor for SocialGameCallHistory.CallNode(0);
  v210 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v208 = v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v176 - v28;
  v217 = sub_24F91F648();
  v211 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v206 = v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v205 = v176 - v32;
  MEMORY[0x28223BE20](v33);
  v216 = v176 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = v176 - v36;
  MEMORY[0x28223BE20](v38);
  v214 = v176 - v39;
  MEMORY[0x28223BE20](v40);
  v215 = v176 - v41;
  MEMORY[0x28223BE20](v42);
  v213 = v176 - v43;
  swift_beginAccess();
  v44 = *(a2 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
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
LABEL_124:
    __break(1u);
LABEL_125:
    swift_once();
LABEL_98:
    v153 = sub_24F9220D8();
    __swift_project_value_buffer(v153, qword_27F39E958);

    v154 = sub_24F9220B8();
    v155 = sub_24F92BDB8();

    v156 = os_log_type_enabled(v154, v155);
    v61 = v211;
    if (v156)
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v159 = v12;
      v160 = isUniquelyReferenced_nonNull_native;
      v161 = v158;
      v219 = v158;
      *v157 = 136446210;
      v162 = sub_24E7620D4(v159, a2, &v219);

      *(v157 + 4) = v162;
      _os_log_impl(&dword_24E5DD000, v154, v155, "Missing start focus event for %{public}s", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v161);
      MEMORY[0x2530542D0](v161, -1, -1);
      MEMORY[0x2530542D0](v157, -1, -1);
    }

    else
    {
    }

LABEL_112:
    (*(v61 + 8))(v213, v217);
    return;
  }

  *(a2 + 16) = v46;
  v47 = [isUniquelyReferenced_nonNull_native eventBody];
  if (!v47)
  {
    return;
  }

  v48 = v47;
  v49 = [v47 bundleID];
  v50 = v48;
  if (!v49)
  {

    return;
  }

  v51 = v49;
  v199 = v50;
  v12 = sub_24F92B0D8();
  a2 = v52;

  if (sub_24F4D36F8(v12, a2, a3))
  {

LABEL_6:

    return;
  }

  v53 = sub_24F4D36F8(v12, a2, a5);
  isUniquelyReferenced_nonNull_native = v199;
  if (v53)
  {
    swift_beginAccess();
    v54 = *(a6 + 24);
    v55 = v214;
    if (v54)
    {
      v194 = *(a6 + 16);
    }

    else
    {

      v194 = v12;
      v54 = a2;
    }
  }

  else
  {
    if (a7 && (sub_24F4D36F8(v12, a2, a7) & 1) == 0)
    {

      swift_beginAccess();
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      goto LABEL_6;
    }

    swift_beginAccess();
    *(a6 + 16) = v12;
    *(a6 + 24) = a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = v199;

    v194 = v12;
    v54 = a2;
    v55 = v214;
  }

  v56 = [isUniquelyReferenced_nonNull_native absoluteTimestamp];
  if (!v56)
  {

    return;
  }

  v57 = v56;
  sub_24F91F608();

  if ([isUniquelyReferenced_nonNull_native starting])
  {

    v58 = v212;
    swift_beginAccess();
    v59 = v58[2];
    if (*(v59 + 16))
    {
      v60 = sub_24E76D644(v12, a2);
      v61 = v211;
      if (v62)
      {
        (*(v211 + 16))(v29, *(v59 + 56) + *(v211 + 72) * v60, v217);
        v63 = 0;
      }

      else
      {
        v63 = 1;
      }
    }

    else
    {
      v63 = 1;
      v61 = v211;
    }

    v163 = *(v61 + 56);
    v164 = v217;
    v163(v29, v63, 1, v217);
    swift_endAccess();
    v165 = (*(v61 + 48))(v29, 1, v164);
    sub_24E601704(v29, &unk_27F22EC30);
    if (v165 == 1)
    {
      v166 = v213;
      v167 = v217;
      (*(v61 + 16))(v26, v213, v217);
      v163(v26, 0, 1, v167);
      swift_beginAccess();
      sub_24E988988(v26, v12, a2);
      swift_endAccess();

      (*(v61 + 8))(v166, v167);
      return;
    }

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v168 = sub_24F9220D8();
    __swift_project_value_buffer(v168, qword_27F39E958);

    v169 = sub_24F9220B8();
    v170 = sub_24F92BDB8();

    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v219 = v172;
      *v171 = 136446210;
      v173 = sub_24E7620D4(v12, a2, &v219);

      *(v171 + 4) = v173;
      _os_log_impl(&dword_24E5DD000, v169, v170, "Duplicate start focus event for %{public}s", v171, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v172);
      MEMORY[0x2530542D0](v172, -1, -1);
      MEMORY[0x2530542D0](v171, -1, -1);
    }

    else
    {
    }

    goto LABEL_112;
  }

  v64 = v212;
  swift_beginAccess();
  v65 = v64[2];
  if (!*(v65 + 16) || (v66 = sub_24E76D644(v12, a2), (v67 & 1) == 0))
  {

    swift_endAccess();
    if (qword_27F211458 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_125;
  }

  LODWORD(v197) = v53;
  v188 = a10;
  v187 = a9;
  v68 = *(v65 + 56);
  v69 = v211;
  v70 = v68 + *(v211 + 72) * v66;
  v198 = v12;
  v71 = v211 + 16;
  v72 = *(v211 + 16);
  v73 = v217;
  v72(v215, v70, v217);
  swift_endAccess();
  (*(v69 + 56))(v26, 1, 1, v73);
  swift_beginAccess();
  sub_24E988988(v26, v198, a2);
  swift_endAccess();
  v181 = v71;
  v180 = v72;
  v72(v55, v213, v73);
  v74 = *(v188 + 16);
  v75 = v187;
  swift_beginAccess();
  swift_beginAccess();
  v190 = 0;
  v189 = 0;
  v76 = *(v75 + 16);
  v186 = v74;
  v77 = v207;
  v78 = v208;
  if (v76 < v74)
  {
    v189 = 0;
    v190 = 0;
    v177 = v197 ^ 1;
    v179 = (v211 + 32);
    v12 = (v211 + 8);
    v184 = a12;
    v176[1] = a11;
    v182 = *MEMORY[0x277CF7DA8];
    v193 = v54;
    v185 = (v211 + 8);
    v178 = v37;
    while (1)
    {
      if (v76 < 0)
      {
        goto LABEL_120;
      }

      sub_24F2CC85C(v188 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v76, v78, type metadata accessor for SocialGameCallHistory.CallNode);
      v79 = sub_24F2D4580(&qword_27F2363D0);
      if (sub_24F92AF78() & 1) != 0 || (sub_24F92AF78())
      {
        isUniquelyReferenced_nonNull_native = v77;
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = v77;
      v82 = *(v78 + *(v77 + 24));
      if (v82 >> 62)
      {
        break;
      }

      a2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
        goto LABEL_35;
      }

LABEL_29:
      v77 = isUniquelyReferenced_nonNull_native;
      v80 = sub_24F91F588();
      sub_24F2CC8C4(v78, type metadata accessor for SocialGameCallHistory.CallNode);
      if ((v80 & 1) == 0)
      {

        goto LABEL_115;
      }

      v81 = *(v187 + 16);
      v45 = __OFADD__(v81, 1);
      v76 = v81 + 1;
      isUniquelyReferenced_nonNull_native = v199;
      if (v45)
      {
        goto LABEL_121;
      }

      *(v187 + 16) = v76;
      if (v76 >= v186)
      {
        goto LABEL_113;
      }
    }

    a2 = sub_24F92C738();
    if (!a2)
    {
      goto LABEL_29;
    }

LABEL_35:
    v197 = v79;
    v83 = 0;
    v198 = v82 & 0xC000000000000001;
    v192 = v82 & 0xFFFFFFFFFFFFFF8;
    v191 = v82 + 32;
    v195 = v82;
    v196 = a2;
    while (1)
    {
      if (v198)
      {
        v84 = MEMORY[0x253052270](v83, v82);
      }

      else
      {
        if (v83 >= *(v192 + 16))
        {
          goto LABEL_119;
        }

        v84 = *(v191 + 8 * v83);
      }

      v85 = v84;
      v45 = __OFADD__(v83++, 1);
      if (v45)
      {
        goto LABEL_118;
      }

      v86 = [v84 date];
      if (!v86)
      {

        goto LABEL_37;
      }

      v87 = v86;
      sub_24F91F608();

      v212 = v85;
      [v85 duration];
      v88 = v216;
      sub_24F91F568();
      if (sub_24F92AF78() & 1) != 0 || (sub_24F92AF78())
      {

        v89 = *v12;
        v90 = v217;
        (*v12)(v88, v217);
        v89(v37, v90);
LABEL_47:
        v82 = v195;
        a2 = v196;
        goto LABEL_37;
      }

      v91 = sub_24F92AF78();
      v92 = v212;
      if ((v91 & 1) == 0 && ((sub_24F92AF78() | v177) & 1) == 0)
      {
        v93 = [v92 initiator];
        if (v93)
        {
          v94 = v93;
          v95 = [v92 remoteParticipantHandles];
          if (v95)
          {
            v96 = v95;
            sub_24E69A5C4(0, &qword_27F23E1B0);
            sub_24ECFF898();
            v97 = sub_24F92BAA8();

            if ((v97 & 0xC000000000000001) != 0)
            {
              v98 = v94;
              v99 = sub_24F92C788();

              if ((v99 & 1) == 0)
              {
                goto LABEL_63;
              }

              isUniquelyReferenced_nonNull_native = v207;
            }

            else
            {
              if (!*(v97 + 16) || (v100 = sub_24F92C3F8(), v101 = -1 << *(v97 + 32), v102 = v100 & ~v101, ((*(v97 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0))
              {
LABEL_62:

                v55 = v214;
                v12 = v185;
LABEL_63:
                swift_beginAccess();
                v92 = v212;
                sub_24ED7ED84(&v218, v212);
                swift_endAccess();

                isUniquelyReferenced_nonNull_native = v207;
                goto LABEL_64;
              }

              v103 = ~v101;
              while (1)
              {
                v104 = *(*(v97 + 48) + 8 * v102);
                v105 = sub_24F92C408();

                if (v105)
                {
                  break;
                }

                v102 = (v102 + 1) & v103;
                if (((*(v97 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
                {
                  goto LABEL_62;
                }
              }

              isUniquelyReferenced_nonNull_native = v207;
              v55 = v214;
              v12 = v185;
            }

            v92 = v212;
          }

          else
          {
          }
        }
      }

LABEL_64:
      v106 = [v92 callStatus];
      if ((v182 & v106) == 0)
      {

        v130 = *v12;
        v131 = v217;
        (*v12)(v216, v217);
        v130(v37, v131);
        v78 = v208;
        goto LABEL_47;
      }

      v107 = v215;
      v108 = v217;
      a2 = v197;
      if (sub_24F92AF88())
      {
        v109 = v107;
      }

      else
      {
        v109 = v37;
      }

      v110 = v205;
      isUniquelyReferenced_nonNull_native = v181;
      v12 = v180;
      v180(v205, v109, v108);
      v111 = v216;
      if (sub_24F92AF78())
      {
        v112 = v55;
      }

      else
      {
        v112 = v111;
      }

      v113 = v206;
      (v12)(v206, v112, v108);
      if ((sub_24F92AF98() & 1) == 0)
      {
        goto LABEL_122;
      }

      v114 = v108;
      a2 = v179;
      v115 = *v179;
      v116 = v202;
      (*v179)(v202, v110, v114);
      v117 = v204;
      v115((v116 + *(v204 + 48)), v113, v114);
      v118 = v203;
      sub_24E60169C(v116, v203, &qword_27F23E298);
      v183 = *(v117 + 48);
      v12 = v209;
      v115(v209, v118, v114);
      v119 = *v185;
      (*v185)(&v183[v118], v114);
      sub_24E6009C8(v116, v118, &qword_27F23E298);
      v115(v12 + *(v201 + 36), (v118 + *(v117 + 48)), v114);
      v183 = v119;
      (v119)(v118, v114);
      v120 = v184;
      swift_beginAccess();
      sub_24E824448(v190);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218 = *(v120 + 16);
      v121 = v218;
      *(v120 + 16) = 0x8000000000000000;
      v123 = sub_24E76E3F4(v212);
      v124 = v121[2];
      v125 = (v122 & 1) == 0;
      v126 = v124 + v125;
      if (__OFADD__(v124, v125))
      {
        goto LABEL_123;
      }

      v127 = v122;
      a2 = v196;
      if (v121[3] >= v126)
      {
        v37 = v178;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8B6B98();
          v121 = v218;
        }
      }

      else
      {
        sub_24E8A9534(v126, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = sub_24E69A5C4(0, &unk_27F23E280);
        v121 = v218;
        v128 = sub_24E76E3F4(v212);
        v37 = v178;
        if ((v127 & 1) != (v129 & 1))
        {
          goto LABEL_127;
        }

        v123 = v128;
      }

      *(v184 + 16) = v121;
      if ((v127 & 1) == 0)
      {
        v132 = sub_24E611134(MEMORY[0x277D84F90]);
        v133 = v212;
        sub_24EC2665C(v123, v212, v132, v121);
        v134 = v133;
      }

      v12 = v121[7];
      sub_24E824448(v189);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v218 = v12[v123];
      v136 = v218;
      v12[v123] = 0x8000000000000000;
      v138 = sub_24E76D644(v194, v193);
      v139 = v136[2];
      v140 = (v137 & 1) == 0;
      v141 = v139 + v140;
      if (__OFADD__(v139, v140))
      {
        goto LABEL_124;
      }

      v142 = v137;
      if (v136[3] >= v141)
      {
        if ((v135 & 1) == 0)
        {
          sub_24E8B6A24();
        }
      }

      else
      {
        sub_24E8A9280(v141, v135);
        v143 = sub_24E76D644(v194, v193);
        if ((v142 & 1) != (v144 & 1))
        {
          sub_24F92CF88();
          __break(1u);
LABEL_127:
          sub_24F92CF88();
          __break(1u);
          return;
        }

        v138 = v143;
      }

      v12[v123] = v218;

      v145 = v12[v123];
      if ((v142 & 1) == 0)
      {
        sub_24EC275F0(v138, v194, v193, MEMORY[0x277D84F90], v145);
      }

      v146 = *(v145 + 56);
      v147 = *(v146 + 8 * v138);
      v148 = swift_isUniquelyReferenced_nonNull_native();
      *(v146 + 8 * v138) = v147;
      v12 = v185;
      if ((v148 & 1) == 0)
      {
        v147 = sub_24E61A1AC(0, v147[2] + 1, 1, v147);
        *(v146 + 8 * v138) = v147;
      }

      v150 = v147[2];
      v149 = v147[3];
      if (v150 >= v149 >> 1)
      {
        v147 = sub_24E61A1AC(v149 > 1, v150 + 1, 1, v147);
        *(v146 + 8 * v138) = v147;
      }

      isUniquelyReferenced_nonNull_native = v207;
      v147[2] = v150 + 1;
      sub_24E6009C8(v209, v147 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v150, &qword_27F213DB0);
      swift_endAccess();

      v151 = v217;
      v152 = v183;
      (v183)(v216, v217);
      v152(v37, v151);
      v189 = sub_24F2D4E44;
      v190 = sub_24F2C1ADC;
      v78 = v208;
      v55 = v214;
      v82 = v195;
LABEL_37:
      if (v83 == a2)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_113:

  v12 = (v211 + 8);
LABEL_115:
  v174 = *v12;
  v175 = v217;
  (*v12)(v55, v217);
  v174(v215, v175);
  v174(v213, v175);
  sub_24E824448(v190);
  sub_24E824448(v189);
}

unint64_t sub_24F2C1ADC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E611134(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

id sub_24F2C1B10()
{
  v0 = objc_opt_self();
  v1 = sub_24F92B098();
  v2 = [v0 countryCodeForNumber_];

  v3 = sub_24F92B098();
  v4 = [v0 internationalizedUnformattedNumber:v3 countryCode:v2];

  if (v4)
  {
    sub_24F92B0D8();

    v4 = sub_24F92B198();
  }

  return v4;
}

uint64_t sub_24F2C1C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for Player(0);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2C1D04, 0, 0);
}

uint64_t sub_24F2C1D04()
{
  v272 = v0;
  v271[1] = *MEMORY[0x277D85DE8];
  if (qword_27F211458 != -1)
  {
LABEL_196:
    swift_once();
  }

  v1 = (v0 + 16);
  v236 = v0 + 64;
  v237 = v0 + 72;
  v234 = v0 + 80;
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E958);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BDA8();

  v266 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v271[0] = v7;
    *v6 = 136380675;
    v8 = MEMORY[0x253050F40](v5, MEMORY[0x277D837D0]);
    v10 = sub_24E7620D4(v8, v9, v271);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "handlesToQuery: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  if (qword_27F210FC8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 120);
  v12 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v13 = sub_24F92B588();
  v14 = [v12 initWithKeysToFetch_];

  v15 = objc_opt_self();
  v16 = sub_24F92B588();
  v17 = [v15 predicateForContactsMatchingHandleStrings_];

  [v14 setPredicate_];
  v18 = MEMORY[0x277D84F90];
  *(v266 + 64) = sub_24E60D924(MEMORY[0x277D84F90]);
  *(v266 + 72) = sub_24E60D924(v18);
  *(v266 + 80) = sub_24E60D924(v18);
  v19 = *(v11 + 16);
  v20 = swift_allocObject();
  v20[2] = v236;
  v20[3] = v237;
  v20[4] = v234;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F2D463C;
  *(v21 + 24) = v20;
  *(v266 + 48) = sub_24F2D4658;
  *(v266 + 56) = v21;
  *(v266 + 16) = MEMORY[0x277D85DD0];
  *(v266 + 24) = 1107296256;
  *(v266 + 32) = sub_24F2BE704;
  *(v266 + 40) = &block_descriptor_138;
  v22 = _Block_copy(v1);

  *(v266 + 88) = 0;
  v231 = v14;
  v23 = [v19 enumerateContactsWithFetchRequest:v14 error:v266 + 88 usingBlock:v22];
  _Block_release(v22);
  v24 = *(v266 + 88);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_198:
    __break(1u);
  }

  if (!v23)
  {
    v25 = sub_24F91F278();

    swift_willThrow();
    v26 = v25;
    v27 = sub_24F9220B8();
    v28 = sub_24F92BDB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      v31 = v25;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_24E5DD000, v27, v28, "Failed to enumerate handle contacts: %{public}@", v29, 0xCu);
      sub_24E601704(v30, &qword_27F227B20);
      MEMORY[0x2530542D0](v30, -1, -1);
      MEMORY[0x2530542D0](v29, -1, -1);
    }

    else
    {
    }
  }

  v33 = sub_24F9220B8();
  v34 = sub_24F92BDA8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24E5DD000, v33, v34, "PHONE", v35, 2u);
    MEMORY[0x2530542D0](v35, -1, -1);
  }

  v0 = *v236 + 64;
  v36 = -1;
  v37 = -1 << *(*v236 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(*v236 + 64);
  v39 = (63 - v37) >> 6;
  v246 = *v236;

  v40 = 0;
  v238 = v39;
  v242 = v0;
  while (v38)
  {
LABEL_22:
    v250 = v38;
    v254 = v40;
    v42 = __clz(__rbit64(v38)) | (v40 << 6);
    v43 = (*(v246 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v46 = *(*(v246 + 56) + 8 * v42);

    v0 = sub_24F9220B8();
    v47 = sub_24F92BDA8();
    if (os_log_type_enabled(v0, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v271[0] = v49;
      *v48 = 136380675;
      v50 = sub_24E7620D4(v45, v44, v271);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_24E5DD000, v0, v47, "\t%{private}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x2530542D0](v49, -1, -1);
      MEMORY[0x2530542D0](v48, -1, -1);
    }

    else
    {
    }

    if (v46 >> 62)
    {
      v51 = sub_24F92C738();
      if (!v51)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v51 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        goto LABEL_16;
      }
    }

    if (v51 < 1)
    {
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v52 = 0;
    v53 = v46 & 0xC000000000000001;
    v258 = v46 & 0xC000000000000001;
    v262 = v51;
    do
    {
      if (v53)
      {
        v54 = MEMORY[0x253052270](v52, v46);
      }

      else
      {
        v54 = *(v46 + 8 * v52 + 32);
      }

      v55 = v54;
      v56 = sub_24F9220B8();
      v57 = sub_24F92BDA8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v46;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v271[0] = v60;
        *v59 = 136380931;
        v61 = [v55 displayName];
        if (v61)
        {
          v62 = v61;
          v63 = sub_24F92B0D8();
          v65 = v64;
        }

        else
        {
          v65 = 0xE100000000000000;
          v63 = 45;
        }

        v66 = sub_24E7620D4(v63, v65, v271);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2082;
        v67 = [v55 identifier];
        v68 = sub_24F92B0D8();
        v70 = v69;

        v71 = sub_24E7620D4(v68, v70, v271);

        *(v59 + 14) = v71;
        _os_log_impl(&dword_24E5DD000, v56, v57, "\t\t%{private}s (%{public}s)", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v60, -1, -1);
        MEMORY[0x2530542D0](v59, -1, -1);

        v46 = v58;
        v53 = v258;
        v51 = v262;
      }

      else
      {
      }

      ++v52;
    }

    while (v51 != v52);
LABEL_16:
    v38 = (v250 - 1) & v250;

    v39 = v238;
    v0 = v242;
    v40 = v254;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v41 >= v39)
    {
      break;
    }

    v38 = *(v0 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_22;
    }
  }

  v72 = sub_24F9220B8();
  v73 = sub_24F92BDA8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_24E5DD000, v72, v73, "EMAIL", v74, 2u);
    MEMORY[0x2530542D0](v74, -1, -1);
  }

  v0 = *v237 + 64;
  v75 = -1;
  v76 = -1 << *(*v237 + 32);
  if (-v76 < 64)
  {
    v75 = ~(-1 << -v76);
  }

  v77 = v75 & *(*v237 + 64);
  v78 = (63 - v76) >> 6;
  v247 = *v237;

  v79 = 0;
  v239 = v78;
  v243 = v0;
  while (2)
  {
    if (v77)
    {
LABEL_52:
      v251 = v77;
      v255 = v79;
      v81 = __clz(__rbit64(v77)) | (v79 << 6);
      v82 = (*(v247 + 48) + 16 * v81);
      v84 = *v82;
      v83 = v82[1];
      v85 = *(*(v247 + 56) + 8 * v81);

      v0 = sub_24F9220B8();
      v86 = sub_24F92BDA8();
      if (os_log_type_enabled(v0, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v271[0] = v88;
        *v87 = 136380675;
        v89 = sub_24E7620D4(v84, v83, v271);

        *(v87 + 4) = v89;
        _os_log_impl(&dword_24E5DD000, v0, v86, "\t%{private}s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x2530542D0](v88, -1, -1);
        MEMORY[0x2530542D0](v87, -1, -1);
      }

      else
      {
      }

      if (v85 >> 62)
      {
        v90 = sub_24F92C738();
        if (v90)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v90 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v90)
        {
LABEL_57:
          if (v90 < 1)
          {
            goto LABEL_188;
          }

          v91 = 0;
          v92 = v85 & 0xC000000000000001;
          v259 = v85 & 0xC000000000000001;
          v263 = v90;
          do
          {
            if (v92)
            {
              v93 = MEMORY[0x253052270](v91, v85);
            }

            else
            {
              v93 = *(v85 + 8 * v91 + 32);
            }

            v94 = v93;
            v95 = sub_24F9220B8();
            v96 = sub_24F92BDA8();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = v85;
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v271[0] = v99;
              *v98 = 136380931;
              v100 = [v94 displayName];
              if (v100)
              {
                v101 = v100;
                v102 = sub_24F92B0D8();
                v104 = v103;
              }

              else
              {
                v104 = 0xE100000000000000;
                v102 = 45;
              }

              v105 = sub_24E7620D4(v102, v104, v271);

              *(v98 + 4) = v105;
              *(v98 + 12) = 2082;
              v106 = [v94 identifier];
              v107 = sub_24F92B0D8();
              v109 = v108;

              v110 = sub_24E7620D4(v107, v109, v271);

              *(v98 + 14) = v110;
              _os_log_impl(&dword_24E5DD000, v95, v96, "\t\t%{private}s (%{public}s)", v98, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2530542D0](v99, -1, -1);
              MEMORY[0x2530542D0](v98, -1, -1);

              v85 = v97;
              v92 = v259;
              v90 = v263;
            }

            else
            {
            }

            ++v91;
          }

          while (v90 != v91);
        }
      }

      v77 = (v251 - 1) & v251;

      v78 = v239;
      v0 = v243;
      v79 = v255;
      continue;
    }

    break;
  }

  while (1)
  {
    v80 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      goto LABEL_181;
    }

    if (v80 >= v78)
    {
      break;
    }

    v77 = *(v0 + 8 * v80);
    ++v79;
    if (v77)
    {
      v79 = v80;
      goto LABEL_52;
    }
  }

  v111 = sub_24F9220B8();
  v112 = sub_24F92BDA8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_24E5DD000, v111, v112, "SOCIAL", v113, 2u);
    MEMORY[0x2530542D0](v113, -1, -1);
  }

  v0 = *v234 + 64;
  v114 = -1;
  v115 = -1 << *(*v234 + 32);
  if (-v115 < 64)
  {
    v114 = ~(-1 << -v115);
  }

  v116 = v114 & *(*v234 + 64);
  v117 = (63 - v115) >> 6;
  v248 = *v234;

  v118 = 0;
  v240 = v117;
  v244 = v0;
  while (2)
  {
    if (v116)
    {
LABEL_82:
      v252 = v116;
      v256 = v118;
      v120 = __clz(__rbit64(v116)) | (v118 << 6);
      v121 = (*(v248 + 48) + 16 * v120);
      v123 = *v121;
      v122 = v121[1];
      v124 = *(*(v248 + 56) + 8 * v120);

      v125 = sub_24F9220B8();
      v126 = sub_24F92BDA8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v271[0] = v128;
        *v127 = 136380675;
        v129 = sub_24E7620D4(v123, v122, v271);

        *(v127 + 4) = v129;
        _os_log_impl(&dword_24E5DD000, v125, v126, "\t%{private}s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v128);
        MEMORY[0x2530542D0](v128, -1, -1);
        MEMORY[0x2530542D0](v127, -1, -1);
      }

      else
      {
      }

      if (v124 >> 62)
      {
        v0 = sub_24F92C738();
        if (v0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v0 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
LABEL_87:
          if (v0 < 1)
          {
            goto LABEL_189;
          }

          v130 = 0;
          v131 = v124 & 0xC000000000000001;
          v260 = v124 & 0xC000000000000001;
          v264 = v0;
          do
          {
            if (v131)
            {
              v132 = MEMORY[0x253052270](v130, v124);
            }

            else
            {
              v132 = *(v124 + 8 * v130 + 32);
            }

            v133 = v132;
            v134 = sub_24F9220B8();
            v135 = sub_24F92BDA8();

            if (os_log_type_enabled(v134, v135))
            {
              v136 = v124;
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v271[0] = v138;
              *v137 = 136380931;
              v139 = [v133 displayName];
              if (v139)
              {
                v140 = v139;
                v141 = sub_24F92B0D8();
                v143 = v142;
              }

              else
              {
                v143 = 0xE100000000000000;
                v141 = 45;
              }

              v144 = sub_24E7620D4(v141, v143, v271);

              *(v137 + 4) = v144;
              *(v137 + 12) = 2082;
              v145 = [v133 identifier];
              v146 = sub_24F92B0D8();
              v148 = v147;

              v149 = sub_24E7620D4(v146, v148, v271);

              *(v137 + 14) = v149;
              _os_log_impl(&dword_24E5DD000, v134, v135, "\t\t%{private}s (%{public}s)", v137, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2530542D0](v138, -1, -1);
              MEMORY[0x2530542D0](v137, -1, -1);

              v124 = v136;
              v131 = v260;
              v0 = v264;
            }

            else
            {
            }

            ++v130;
          }

          while (v0 != v130);
        }
      }

      v116 = (v252 - 1) & v252;

      v117 = v240;
      v0 = v244;
      v118 = v256;
      continue;
    }

    break;
  }

  while (1)
  {
    v119 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_182;
    }

    if (v119 >= v117)
    {
      break;
    }

    v116 = *(v0 + 8 * v119);
    ++v118;
    if (v116)
    {
      v118 = v119;
      goto LABEL_82;
    }
  }

  v150 = v266;
  v151 = *(v266 + 112);

  v152 = MEMORY[0x277D84F90];
  v249 = sub_24E60D924(MEMORY[0x277D84F90]);
  v269 = sub_24E608B7C(v152);
  v233 = *(v151 + 16);
  if (v233)
  {
    v153 = 0;
    v154 = 0;
    v232 = *(v266 + 152);
    v155 = *(v266 + 136);
    v241 = *(v266 + 128);
    v257 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v235 = *(v266 + 112) + v257;
    v267 = *(v155 + 72);
    while (1)
    {
      v156 = *(v150 + 152);
      v245 = v154;
      sub_24F2CC85C(v235 + v154 * v267, v156, type metadata accessor for Player);
      v270 = MEMORY[0x277D84F90];
      if (*(v156 + *(v241 + 40) + 8))
      {
        v157 = sub_24F92B198();
        if (*(*v237 + 16))
        {
          sub_24E76D644(v157, v158);
          v160 = v159;

          if (v160)
          {

            sub_24EA0B0D8(v161);
          }
        }

        else
        {
        }

        v162 = objc_opt_self();
        v163 = sub_24F92B098();
        v164 = [v162 countryCodeForNumber_];

        v165 = sub_24F92B098();
        v166 = [v162 internationalizedUnformattedNumber:v165 countryCode:v164];

        if (v166)
        {
          sub_24F92B0D8();

          v167 = sub_24F92B198();
          v169 = v168;

          if (*(*v236 + 16))
          {
            sub_24E76D644(v167, v169);
            v171 = v170;

            if (v171)
            {

              sub_24EA0B0D8(v172);
            }
          }

          else
          {
          }
        }
      }

      v271[0] = MEMORY[0x277D84FA0];
      v173 = sub_24F2CC3DC(&v270);
      v174 = v173;
      v175 = v270;
      v176 = v270 >> 62;
      if (v270 >> 62)
      {
        v177 = sub_24F92C738();
        v0 = v177 - v174;
        if (v177 < v174)
        {
          goto LABEL_190;
        }
      }

      else
      {
        v177 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v0 = v177 - v173;
        if (v177 < v173)
        {
          goto LABEL_190;
        }
      }

      if (v174 < 0)
      {
        goto LABEL_191;
      }

      if (v176)
      {
        v178 = sub_24F92C738();
      }

      else
      {
        v178 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v178 < v177)
      {
        goto LABEL_192;
      }

      v179 = __OFSUB__(0, v0);
      v0 = -v0;
      if (v179)
      {
        goto LABEL_193;
      }

      if (v176)
      {
        v180 = sub_24F92C738();
      }

      else
      {
        v180 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v179 = __OFADD__(v180, v0);
      v0 += v180;
      if (v179)
      {
        goto LABEL_194;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v176)
      {
        goto LABEL_132;
      }

LABEL_133:
      v175 = sub_24F92C8F8();
      v270 = v175;
LABEL_134:
      sub_24EDAB8D4(v174, v177, 0);

      if (v175 >> 62)
      {
        v181 = sub_24F92C738();
        if (!v181)
        {
          goto LABEL_162;
        }

LABEL_136:
        v182 = 0;
        v261 = v175;
        v265 = v175 & 0xC000000000000001;
        v253 = v175 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v265)
          {
            v183 = MEMORY[0x253052270](v182, v175);
          }

          else
          {
            if (v182 >= *(v253 + 16))
            {
              goto LABEL_186;
            }

            v183 = *(v175 + 8 * v182 + 32);
          }

          v184 = v182 + 1;
          if (__OFADD__(v182, 1))
          {
            goto LABEL_183;
          }

          v186 = *(v266 + 144);
          v185 = *(v266 + 152);
          v187 = v183;
          v188 = [v183 identifier];
          v189 = sub_24F92B0D8();
          v0 = v190;

          sub_24F2CC85C(v185, v186, type metadata accessor for Player);
          sub_24E824448(v153);
          v191 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v271[0] = v269;
          v194 = sub_24E76D644(v189, v0);
          v195 = *(v269 + 16);
          v196 = (v193 & 1) == 0;
          v197 = v195 + v196;
          if (__OFADD__(v195, v196))
          {
            goto LABEL_184;
          }

          v198 = v193;
          if (*(v269 + 24) >= v197)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v193 & 1) == 0)
              {
                goto LABEL_151;
              }
            }

            else
            {
              sub_24E8B07DC();
              v191 = v271[0];
              if ((v198 & 1) == 0)
              {
                goto LABEL_151;
              }
            }
          }

          else
          {
            sub_24E89DAD4(v197, isUniquelyReferenced_nonNull_native);
            v199 = v271[0];
            v200 = sub_24E76D644(v189, v0);
            if ((v198 & 1) != (v201 & 1))
            {
              goto LABEL_173;
            }

            v194 = v200;
            v191 = v199;
            if ((v198 & 1) == 0)
            {
LABEL_151:
              v191[(v194 >> 6) + 8] |= 1 << v194;
              v202 = (v191[6] + 16 * v194);
              *v202 = v189;
              v202[1] = v0;
              *(v191[7] + 8 * v194) = MEMORY[0x277D84F90];
              v203 = v191[2];
              v179 = __OFADD__(v203, 1);
              v204 = v203 + 1;
              if (v179)
              {
                goto LABEL_185;
              }

              v191[2] = v204;
LABEL_153:
              v269 = v191;
              v205 = v191[7];
              v206 = *(v205 + 8 * v194);
              v207 = swift_isUniquelyReferenced_nonNull_native();
              *(v205 + 8 * v194) = v206;
              if ((v207 & 1) == 0)
              {
                v206 = sub_24E618138(0, v206[2] + 1, 1, v206);
                *(v205 + 8 * v194) = v206;
              }

              v209 = v206[2];
              v208 = v206[3];
              v0 = v209 + 1;
              if (v209 >= v208 >> 1)
              {
                *(v205 + 8 * v194) = sub_24E618138(v208 > 1, v209 + 1, 1, v206);
              }

              v210 = *(v266 + 144);

              v211 = *(v205 + 8 * v194);
              *(v211 + 16) = v0;
              sub_24F2CC924(v210, v211 + v257 + v209 * v267, type metadata accessor for Player);
              ++v182;
              v153 = sub_24F2D4E44;
              v175 = v261;
              if (v184 == v181)
              {
                goto LABEL_162;
              }

              continue;
            }
          }

          break;
        }

        goto LABEL_153;
      }

      v181 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v181)
      {
        goto LABEL_136;
      }

LABEL_162:
      v212 = **(v266 + 152);
      v0 = *(v232 + 8);

      v213 = v249;
      v214 = swift_isUniquelyReferenced_nonNull_native();
      v271[0] = v249;
      v215 = sub_24E76D644(v212, v0);
      v217 = *(v249 + 16);
      v218 = (v216 & 1) == 0;
      v179 = __OFADD__(v217, v218);
      v219 = v217 + v218;
      if (v179)
      {
        goto LABEL_195;
      }

      v220 = v216;
      if (*(v249 + 24) >= v219)
      {
        if (v214)
        {
          if (v216)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v226 = v215;
          sub_24E8B2BA4();
          v215 = v226;
          v213 = v271[0];
          v249 = v271[0];
          if (v220)
          {
            goto LABEL_103;
          }
        }
      }

      else
      {
        sub_24E8A2144(v219, v214);
        v221 = v271[0];
        v215 = sub_24E76D644(v212, v0);
        if ((v220 & 1) != (v222 & 1))
        {
LABEL_173:

          return sub_24F92CF88();
        }

        v213 = v221;
        v249 = v221;
        if (v220)
        {
LABEL_103:
          *(v213[7] + 8 * v215) = v175;

          goto LABEL_104;
        }
      }

      v213[(v215 >> 6) + 8] |= 1 << v215;
      v223 = (v213[6] + 16 * v215);
      *v223 = v212;
      v223[1] = v0;
      *(v213[7] + 8 * v215) = v175;
      v224 = v213[2];
      v179 = __OFADD__(v224, 1);
      v225 = v224 + 1;
      if (v179)
      {
        goto LABEL_198;
      }

      v213[2] = v225;
LABEL_104:
      v154 = v245 + 1;
      v150 = v266;
      sub_24F2CC8C4(*(v266 + 152), type metadata accessor for Player);
      if (v245 + 1 == v233)
      {
        goto LABEL_177;
      }
    }

    if (!v176)
    {
      if (v0 <= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_134;
      }

      goto LABEL_133;
    }

LABEL_132:
    sub_24F92C738();
    goto LABEL_133;
  }

  v153 = 0;
LABEL_177:
  v228 = *(v150 + 96);

  v229 = *(v150 + 80);
  v268 = *(v150 + 64);

  sub_24E824448(v153);

  *v228 = v268;
  *(v228 + 16) = v229;
  *(v228 + 24) = v249;
  *(v228 + 32) = v269;
  v230 = *(v150 + 8);

  return v230();
}

uint64_t sub_24F2C3708(void *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v5 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E458);
  v6 = sub_24F92B5A8();

  if (v6 >> 62)
  {
LABEL_30:
    v7 = sub_24F92C738();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v163 = 0;
      v153 = objc_opt_self();
      v155 = v6 & 0xC000000000000001;
      v151 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v155)
        {
          v13 = MEMORY[0x253052270](v8, v6);
        }

        else
        {
          if (v8 >= *(v151 + 16))
          {
            goto LABEL_28;
          }

          v13 = *(v6 + 8 * v8 + 32);
        }

        v11 = v13;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v14 = [v13 value];
        v15 = [v14 stringValue];

        v16 = v15;
        v17 = v15;
        if (!v15)
        {
          sub_24F92B0D8();
          v17 = sub_24F92B098();

          sub_24F92B0D8();
          v16 = sub_24F92B098();
        }

        v18 = v15;
        v19 = [v153 countryCodeForNumber_];

        v20 = [v153 internationalizedUnformattedNumber:v16 countryCode:v19];
        if (v20)
        {
          v21 = v11;
          v22 = v7;
          v23 = v6;
          sub_24F92B0D8();

          v24 = sub_24F92B198();
          v26 = v25;

          sub_24E824448(v163);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *a3;
          *a3 = 0x8000000000000000;
          v6 = sub_24E76D644(v24, v26);
          v30 = v28[2];
          v31 = (v29 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_27;
          }

          v33 = v29;
          if (v28[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v32, isUniquelyReferenced_nonNull_native);
            v34 = sub_24E76D644(v24, v26);
            if ((v33 & 1) != (v35 & 1))
            {
LABEL_138:
              result = sub_24F92CF88();
              __break(1u);
              return result;
            }

            v6 = v34;
          }

          *a3 = v28;

          v36 = *a3;
          if (v33)
          {
          }

          else
          {
            v36[(v6 >> 6) + 8] |= 1 << v6;
            v37 = (v36[6] + 16 * v6);
            *v37 = v24;
            v37[1] = v26;
            *(v36[7] + 8 * v6) = MEMORY[0x277D84F90];
            v38 = v36[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_29;
            }

            v36[2] = v40;
          }

          v9 = (v36[7] + 8 * v6);
          v10 = a1;
          MEMORY[0x253050F00]();
          if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v163 = sub_24F2D4E44;
          v6 = v23;
          v7 = v22;
          v11 = v21;
          v12 = v8 + 1;
        }

        ++v8;
        if (v12 == v7)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v163 = 0;
LABEL_32:

  v41 = [a1 emailAddresses];
  v42 = sub_24F92B5A8();

  if (v42 >> 62)
  {
    goto LABEL_59;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43)
  {
LABEL_34:
    v44 = 0;
    v45 = 0;
    v158 = v42;
    v161 = v42 & 0xC000000000000001;
    v156 = v42 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v161)
      {
        v46 = MEMORY[0x253052270](v44, v42);
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v44 >= *(v156 + 16))
        {
          goto LABEL_58;
        }

        v46 = *(v42 + 8 * v44 + 32);
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          v43 = sub_24F92C738();
          if (!v43)
          {
            break;
          }

          goto LABEL_34;
        }
      }

      v48 = v46;
      v49 = [v46 value];
      v50 = [v49 stringValue];

      sub_24F92B0D8();
      v51 = sub_24F92B198();
      v53 = v52;

      sub_24E824448(v45);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *a4;
      *a4 = 0x8000000000000000;
      v56 = sub_24E76D644(v51, v53);
      v57 = *(v42 + 16);
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_56;
      }

      v60 = v55;
      if (*(v42 + 24) >= v59)
      {
        if ((v54 & 1) == 0)
        {
          sub_24E8B2BA4();
        }
      }

      else
      {
        sub_24E8A2144(v59, v54);
        v61 = sub_24E76D644(v51, v53);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_138;
        }

        v56 = v61;
      }

      *a4 = v42;

      v42 = *a4;
      if (v60)
      {
      }

      else
      {
        *(v42 + 8 * (v56 >> 6) + 64) |= 1 << v56;
        v63 = (*(v42 + 48) + 16 * v56);
        *v63 = v51;
        v63[1] = v53;
        *(*(v42 + 56) + 8 * v56) = MEMORY[0x277D84F90];
        v64 = *(v42 + 16);
        v39 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v39)
        {
          goto LABEL_57;
        }

        *(v42 + 16) = v65;
      }

      v66 = (*(v42 + 56) + 8 * v56);
      v67 = a1;
      MEMORY[0x253050F00]();
      if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      ++v44;
      v45 = sub_24F2D4E44;
      v42 = v158;
      if (v47 == v43)
      {
        goto LABEL_61;
      }
    }
  }

  v45 = 0;
LABEL_61:

  v68 = [a1 socialProfiles];
  v69 = sub_24F92B5A8();

  if (v69 >> 62)
  {
    goto LABEL_133;
  }

  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v70)
  {
LABEL_63:
    v71 = 0;
    v152 = 0;
    v154 = 0;
    v159 = v69;
    v162 = v69 & 0xC000000000000001;
    v149 = v69 & 0xFFFFFFFFFFFFFF8;
    v150 = 0;
    v157 = v70;
    while (1)
    {
      if (v162)
      {
        v72 = MEMORY[0x253052270](v71, v69);
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (v71 >= *(v149 + 16))
        {
          goto LABEL_126;
        }

        v72 = *(v69 + 8 * v71 + 32);
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
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
          v70 = sub_24F92C738();
          if (!v70)
          {
            break;
          }

          goto LABEL_63;
        }
      }

      v166 = v72;
      v74 = [v72 value];
      v75 = [v74 service];
      v76 = sub_24F92B0D8();
      v78 = v77;

      if (v76)
      {
        v79 = 0;
      }

      else
      {
        v79 = v78 == 0xE000000000000000;
      }

      if (v79)
      {
      }

      else
      {
        v80 = sub_24F92CE08();

        if ((v80 & 1) == 0)
        {
          v81 = [v74 service];
          sub_24F92B0D8();

          v82 = sub_24F92B198();
          v84 = v83;

          sub_24E824448(v154);
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v86 = *a5;
          *a5 = 0x8000000000000000;
          v69 = sub_24E76D644(v82, v84);
          v88 = v86[2];
          v89 = (v87 & 1) == 0;
          v90 = v88 + v89;
          if (__OFADD__(v88, v89))
          {
            goto LABEL_127;
          }

          v91 = v87;
          if (v86[3] >= v90)
          {
            if ((v85 & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v90, v85);
            v92 = sub_24E76D644(v82, v84);
            if ((v91 & 1) != (v93 & 1))
            {
              goto LABEL_138;
            }

            v69 = v92;
          }

          *a5 = v86;

          v94 = *a5;
          if (v91)
          {
          }

          else
          {
            v94[(v69 >> 6) + 8] |= 1 << v69;
            v95 = (v94[6] + 16 * v69);
            *v95 = v82;
            v95[1] = v84;
            *(v94[7] + 8 * v69) = MEMORY[0x277D84F90];
            v96 = v94[2];
            v39 = __OFADD__(v96, 1);
            v97 = v96 + 1;
            if (v39)
            {
              goto LABEL_130;
            }

            v94[2] = v97;
          }

          v98 = (v94[7] + 8 * v69);
          v99 = a1;
          MEMORY[0x253050F00]();
          v70 = v157;
          if (*((*v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v154 = sub_24F2D4E44;
          v69 = v159;
        }
      }

      v100 = [v74 username];
      v101 = sub_24F92B0D8();
      v103 = v102;

      if (v101 || v103 != 0xE000000000000000)
      {
        v104 = sub_24F92CE08();

        if ((v104 & 1) == 0)
        {
          v105 = [v74 username];
          sub_24F92B0D8();

          v106 = sub_24F92B198();
          v69 = v107;

          sub_24E824448(v152);
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v109 = *a5;
          *a5 = 0x8000000000000000;
          v111 = sub_24E76D644(v106, v69);
          v112 = v109[2];
          v113 = (v110 & 1) == 0;
          v114 = v112 + v113;
          if (__OFADD__(v112, v113))
          {
            goto LABEL_128;
          }

          v115 = v110;
          if (v109[3] >= v114)
          {
            if ((v108 & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v114, v108);
            v116 = sub_24E76D644(v106, v69);
            if ((v115 & 1) != (v117 & 1))
            {
              goto LABEL_138;
            }

            v111 = v116;
          }

          *a5 = v109;

          v118 = *a5;
          if (v115)
          {
          }

          else
          {
            v118[(v111 >> 6) + 8] |= 1 << v111;
            v119 = (v118[6] + 16 * v111);
            *v119 = v106;
            v119[1] = v69;
            *(v118[7] + 8 * v111) = MEMORY[0x277D84F90];
            v120 = v118[2];
            v39 = __OFADD__(v120, 1);
            v121 = v120 + 1;
            if (v39)
            {
              goto LABEL_131;
            }

            v118[2] = v121;
          }

          v122 = (v118[7] + 8 * v111);
          v123 = a1;
          MEMORY[0x253050F00]();
          v70 = v157;
          v69 = v159;
          if (*((*v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v152 = sub_24F2D4E44;
        }
      }

      else
      {
      }

      v124 = [v74 userIdentifier];
      v125 = sub_24F92B0D8();
      v127 = v126;

      if (!v125 && v127 == 0xE000000000000000)
      {
      }

      else
      {
        v128 = sub_24F92CE08();

        if (v128)
        {
        }

        else
        {
          v129 = [v74 userIdentifier];
          sub_24F92B0D8();

          v130 = sub_24F92B198();
          v69 = v131;

          sub_24E824448(v150);
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v133 = *a5;
          *a5 = 0x8000000000000000;
          v135 = sub_24E76D644(v130, v69);
          v136 = v133[2];
          v137 = (v134 & 1) == 0;
          v138 = v136 + v137;
          if (__OFADD__(v136, v137))
          {
            goto LABEL_129;
          }

          v139 = v134;
          if (v133[3] >= v138)
          {
            if ((v132 & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v138, v132);
            v140 = sub_24E76D644(v130, v69);
            if ((v139 & 1) != (v141 & 1))
            {
              goto LABEL_138;
            }

            v135 = v140;
          }

          *a5 = v133;

          v142 = *a5;
          if (v139)
          {
          }

          else
          {
            v142[(v135 >> 6) + 8] |= 1 << v135;
            v143 = (v142[6] + 16 * v135);
            *v143 = v130;
            v143[1] = v69;
            *(v142[7] + 8 * v135) = MEMORY[0x277D84F90];
            v144 = v142[2];
            v39 = __OFADD__(v144, 1);
            v145 = v144 + 1;
            if (v39)
            {
              goto LABEL_132;
            }

            v142[2] = v145;
          }

          v146 = (v142[7] + 8 * v135);
          v147 = a1;
          MEMORY[0x253050F00]();
          v70 = v157;
          v69 = v159;
          if (*((*v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v150 = sub_24F2D4E44;
        }
      }

      ++v71;
      if (v73 == v70)
      {
        goto LABEL_135;
      }
    }
  }

  v152 = 0;
  v154 = 0;
  v150 = 0;
LABEL_135:

  sub_24E824448(v163);
  sub_24E824448(v45);
  sub_24E824448(v154);
  sub_24E824448(v152);

  return sub_24E824448(v150);
}

unint64_t sub_24F2C4620@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E60DE58(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_24F2C4650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v42 = type metadata accessor for SocialUser();
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  if (*(v2[41] + 16))
  {
    v19 = *a1;
    v18 = a1[1];

    sub_24E76D644(v19, v18);
    if (v20)
    {
    }
  }

  sub_24F2CC85C(a1, v9, type metadata accessor for Player);
  v21 = type metadata accessor for Player(0);
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v22 = v2[3];
  v23 = v2[4];
  v24 = v2[5];
  v25 = v2[6];
  v27 = v3[7];
  v26 = v3[8];
  v44[0] = v22;
  v44[1] = v23;
  v44[2] = v24;
  v44[3] = v25;
  v44[4] = v27;
  v44[5] = v26;
  v28 = v24;

  v29 = v27;
  v30 = v26;
  v31 = v22;
  v32 = v23;
  SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(v9, v44, 0, 0, v12);
  if ((*(v13 + 48))(v12, 1, v42) == 1)
  {
    sub_24E601704(v12, &unk_27F253B40);
    v33 = type metadata accessor for SocialUserGroup();
    return (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  }

  else
  {
    sub_24F2CC924(v12, v17, type metadata accessor for SocialUser);
    v35 = v40;
    sub_24F2CC85C(v17, v40, type metadata accessor for SocialUser);
    v36 = v41;
    SocialUserGroup.init(user:)(v35, v41);
    sub_24F2CC8C4(v17, type metadata accessor for SocialUser);
    v37 = type metadata accessor for SocialUserGroup();
    if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
    {
      v38 = *(v37 + 20);
      sub_24E601704(v36 + v38, &qword_27F22DF80);
      v39 = type metadata accessor for PlayerAvatar.Overlay(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v36 + v38, 0, 1, v39);
    }

    return sub_24E6009C8(v36, v43, &unk_27F23E230);
  }
}

uint64_t sub_24F2C4AEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, __n128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v245) = a6;
  v237 = a3;
  v238 = a7;
  v232 = a2;
  v246 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v207 - v10;
  v12 = sub_24F9289E8();
  v209 = *(v12 - 8);
  v210 = v12;
  MEMORY[0x28223BE20](v12);
  v208 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_24F91EAA8();
  v217 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v239 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v15 - 8);
  v227 = &v207 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E180);
  v225 = *(v17 - 8);
  v226 = v17;
  MEMORY[0x28223BE20](v17);
  v222 = &v207 - v18;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E188);
  v221 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v219 = &v207 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E190);
  v223 = *(v20 - 8);
  v224 = v20;
  MEMORY[0x28223BE20](v20);
  v220 = &v207 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B40);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v207 - v23;
  v25 = type metadata accessor for SocialUser();
  v243 = *(v25 - 8);
  v244 = v25;
  MEMORY[0x28223BE20](v25);
  v218 = &v207 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v207 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v207 - v31;
  v33 = type metadata accessor for SocialUserGroup();
  v34 = *(v33 - 1);
  MEMORY[0x28223BE20](v33);
  v36 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5[2];
  v257 = a5[1];
  *v258 = v37;
  v256 = *a5;
  v39 = *(v38 + 20);
  v40 = type metadata accessor for PlayerAvatar.Overlay(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v233 = v39;
  v212 = v42;
  v213 = v40;
  v211 = v41 + 56;
  (v42)(&v36[v39], 1, 1);
  v43 = &v36[v33[8]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v36[v33[10]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v234 = v44;
  v44[16] = -1;
  v45 = v33[11];
  v46 = type metadata accessor for CallProviderConversationHandleSet();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v235 = v45;
  v236 = v36;
  v49 = &v36[v45];
  v50 = v246;
  v215 = v48;
  v216 = v46;
  v214 = v47 + 56;
  (v48)(v49, 1, 1);
  v51 = [v50 remoteParticipantHandles];
  if (!v51)
  {
    v70 = v238;
    v248.n128_u64[0] = *a4;
    sub_24E601704(&v248, &unk_27F23E1A0);
    *&v247[0] = a4[1];
    sub_24E601704(v247, &unk_27F23E1A0);
    v255 = a4[2];
    sub_24E601704(&v255, &unk_27F23E1A0);
    v254 = a4[3];
    sub_24E601704(&v254, &unk_27F23E1A0);
    v253 = a4[4];
    sub_24E601704(&v253, &unk_27F22E000);
    sub_24F2CC7F4(&v256);

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v71 = sub_24F9220D8();
    __swift_project_value_buffer(v71, qword_27F39E958);
    v72 = v50;
    v73 = sub_24F9220B8();
    v74 = sub_24F92BDB8();

    if (!os_log_type_enabled(v73, v74))
    {

LABEL_59:
      v157 = v235;
      v160 = v236;
      v159 = v233;
      v158 = v234;
      goto LABEL_60;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = v34;
    v231 = v33;
    v78 = v76;
    v252 = v76;
    *v75 = 136446210;
    v79 = [v72 uniqueId];
    v80 = sub_24F92B0D8();
    v82 = v81;

    v83 = sub_24E7620D4(v80, v82, &v252);

    *(v75 + 4) = v83;
    _os_log_impl(&dword_24E5DD000, v73, v74, "Missing remoteParticipantHandles for %{public}s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x2530542D0](v78, -1, -1);
    MEMORY[0x2530542D0](v75, -1, -1);

    goto LABEL_37;
  }

  v52 = v51;
  v207 = v11;
  v229 = v34;
  v231 = v33;
  sub_24E69A5C4(0, &qword_27F23E1B0);
  sub_24ECFF898();
  v53 = sub_24F92BAA8();

  sub_24F2BE2E4(v53);
  v55 = v54;

  v250 = MEMORY[0x277D84FA0];
  v56 = *a4;
  v254 = a4[1];
  v255 = v56;
  v57 = a4[2];
  v252 = a4[3];
  v253 = v57;
  v242 = a4;
  v251 = a4[4];
  v58 = v50;
  v59 = *(v55 + 16);
  sub_24E60169C(&v255, &v248, &unk_27F23E1A0);
  sub_24E60169C(&v254, &v248, &unk_27F23E1A0);
  sub_24E60169C(&v253, &v248, &unk_27F23E1A0);
  sub_24E60169C(&v252, &v248, &unk_27F23E1A0);
  sub_24E60169C(&v251, &v248, &unk_27F22E000);
  sub_24F2CC824(&v256, &v248);
  v60 = v58;
  v241 = v60;
  v230 = v55;
  if (v59)
  {
    v61 = (v243 + 48);
    v62 = (v55 + 48);
    v246 = MEMORY[0x277D84F90];
    v63 = v242;
    do
    {
      v65 = *(v62 - 1);
      v64 = *v62;
      v248.n128_u8[0] = *(v62 - 16);
      v248.n128_u64[1] = v65;
      *v249 = v64;

      sub_24F2CB790(&v248, v63, &v256, v245 & 1, v60, v24);

      if ((*v61)(v24, 1, v244) == 1)
      {
        sub_24E601704(v24, &unk_27F253B40);
      }

      else
      {
        sub_24F2CC924(v24, v32, type metadata accessor for SocialUser);
        sub_24F2CC924(v32, v29, type metadata accessor for SocialUser);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v66 = v246;
        }

        else
        {
          v66 = sub_24E6189C4(0, v246[2] + 1, 1, v246);
        }

        v68 = v66[2];
        v67 = v66[3];
        if (v68 >= v67 >> 1)
        {
          v66 = sub_24E6189C4(v67 > 1, v68 + 1, 1, v66);
        }

        v66[2] = v68 + 1;
        v69 = (v243[80] + 32) & ~v243[80];
        v246 = v66;
        sub_24F2CC924(v29, v66 + v69 + *(v243 + 9) * v68, type metadata accessor for SocialUser);
        v60 = v241;
        v63 = v242;
      }

      v62 += 3;
      --v59;
    }

    while (v59);
  }

  else
  {
    v246 = MEMORY[0x277D84F90];
  }

  sub_24F2CC7F4(&v256);
  sub_24E601704(&v255, &unk_27F23E1A0);
  sub_24E601704(&v254, &unk_27F23E1A0);
  sub_24E601704(&v253, &unk_27F23E1A0);
  sub_24E601704(&v252, &unk_27F23E1A0);
  sub_24E601704(&v251, &unk_27F22E000);
  sub_24E601704(&v255, &unk_27F23E1A0);
  sub_24E601704(&v254, &unk_27F23E1A0);
  sub_24E601704(&v253, &unk_27F23E1A0);
  sub_24E601704(&v252, &unk_27F23E1A0);
  sub_24E601704(&v251, &unk_27F22E000);
  v84 = [v60 serviceProvider];
  if (!v84)
  {

    sub_24F2CC7F4(&v256);

    v70 = v238;
    v34 = v229;
    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v107 = sub_24F9220D8();
    __swift_project_value_buffer(v107, qword_27F39E958);
    v108 = v60;
    v109 = sub_24F9220B8();
    v110 = sub_24F92BDB8();

    if (!os_log_type_enabled(v109, v110))
    {

LABEL_58:

      v33 = v231;
      goto LABEL_59;
    }

    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v248.n128_u64[0] = v112;
    *v111 = 136446210;
    v113 = [v108 uniqueId];
    v77 = v34;
    v114 = sub_24F92B0D8();
    v116 = v115;

    v117 = sub_24E7620D4(v114, v116, &v248);

    *(v111 + 4) = v117;
    _os_log_impl(&dword_24E5DD000, v109, v110, "Missing service provider for call %{public}s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v112);
    MEMORY[0x2530542D0](v112, -1, -1);
    MEMORY[0x2530542D0](v111, -1, -1);

LABEL_37:
    v118 = v236;
    sub_24E601704(v236 + v233, &qword_27F22DF80);
    sub_24E640000(*v234, *(v234 + 1), v234[16]);
    sub_24E601704(v118 + v235, &unk_27F23E170);
    return (*(v77 + 56))(v238, 1, 1, v231);
  }

  v85 = v84;
  v86 = sub_24F92B0D8();
  v88 = v87;

  v248 = v256;
  *v249 = v257;
  *&v249[16] = *v258;
  v89 = sub_24F2BF550(v86, v88);
  v70 = v238;
  v34 = v229;
  if (!v89)
  {

    sub_24F2CC7F4(&v256);

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v135 = sub_24F9220D8();
    __swift_project_value_buffer(v135, qword_27F39E958);

    v136 = sub_24F9220B8();
    v137 = sub_24F92BDB8();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = v70;
      v139 = v60;
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v248.n128_u64[0] = v141;
      *v140 = 136446210;
      v142 = sub_24E7620D4(v86, v88, &v248);

      *(v140 + 4) = v142;
      _os_log_impl(&dword_24E5DD000, v136, v137, "Missing provider matching %{public}s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x2530542D0](v141, -1, -1);
      MEMORY[0x2530542D0](v140, -1, -1);

      v70 = v138;
    }

    else
    {
    }

    v33 = v231;
    v158 = v234;
    v157 = v235;
    v159 = v233;

    v160 = v236;
    goto LABEL_60;
  }

  v90 = v89;

  v91 = v246[2];
  if (!v91)
  {

    sub_24F2CC7F4(&v256);

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v143 = sub_24F9220D8();
    __swift_project_value_buffer(v143, qword_27F39E958);
    v144 = v241;
    v145 = sub_24F9220B8();
    v146 = sub_24F92BDB8();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v242 = v90;
      v149 = v148;
      v248.n128_u64[0] = v148;
      *v147 = 136446210;
      v150 = v34;
      v151 = [v144 uniqueId];
      v152 = sub_24F92B0D8();
      v154 = v153;

      v155 = sub_24E7620D4(v152, v154, &v248);

      *(v147 + 4) = v155;
      _os_log_impl(&dword_24E5DD000, v145, v146, "Missing users for call %{public}s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x2530542D0](v149, -1, -1);
      MEMORY[0x2530542D0](v147, -1, -1);

      v156 = v236;
      sub_24E601704(v236 + v233, &qword_27F22DF80);
      sub_24E640000(*v234, *(v234 + 1), v234[16]);
      sub_24E601704(v156 + v235, &unk_27F23E170);
      return (*(v150 + 56))(v238, 1, 1, v231);
    }

    goto LABEL_58;
  }

  v242 = v90;
  v92 = v246 + ((v243[80] + 32) & ~v243[80]);
  v93 = *(v243 + 9);
  v94 = v218;
  v244 = (v217 + 8);
  *&v245 = v93;
  v95 = MEMORY[0x277D84F90];
  do
  {
    sub_24F2CC85C(v92, v94, type metadata accessor for SocialUser);
    v96 = v94[5];
    if (v96)
    {
      if (v94[7])
      {
        v97 = v94[6];
        v98 = v94[7];
      }

      else
      {
        v97 = 0;
        v98 = 0xE000000000000000;
      }

      v99 = v94[4];
      v248.n128_u64[0] = v97;
      v248.n128_u64[1] = v98;

      MEMORY[0x253050C20](32, 0xE100000000000000);

      MEMORY[0x253050C20](v99, v96);

      v100 = v239;
      sub_24F91E9F8();
      sub_24E600AEC();
      v101 = sub_24F92C538();
      v103 = v102;
      (*v244)(v100, v240);

      sub_24F2CC8C4(v94, type metadata accessor for SocialUser);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_24E615CF4(0, *(v95 + 2) + 1, 1, v95);
      }

      v105 = *(v95 + 2);
      v104 = *(v95 + 3);
      if (v105 >= v104 >> 1)
      {
        v95 = sub_24E615CF4((v104 > 1), v105 + 1, 1, v95);
      }

      *(v95 + 2) = v105 + 1;
      v106 = &v95[16 * v105];
      *(v106 + 4) = v101;
      *(v106 + 5) = v103;
    }

    else
    {
      sub_24F2CC8C4(v94, type metadata accessor for SocialUser);
    }

    v92 += v245;
    --v91;
  }

  while (v91);
  *&v247[0] = v95;
  v120 = v221;
  v121 = v219;
  (*(v221 + 104))(v219, *MEMORY[0x277CC8AF0], v228);
  v123 = v225;
  v122 = v226;
  v124 = v222;
  (*(v225 + 104))(v222, *MEMORY[0x277CC8B08], v226);
  *&v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F23E1B8, &unk_27F2285F0);
  v125 = v220;
  sub_24F91E978();
  (*(v123 + 8))(v124, v122);
  (*(v120 + 8))(v121, v228);
  sub_24E602068(&unk_27F23E1C0, &unk_27F23E190);
  v126 = v224;
  sub_24F92B3E8();
  (*(v223 + 8))(v125, v126);

  v127 = v248.n128_u64[1];
  v128 = v248.n128_u64[0];
  v129 = [v242 bundleIdentifier];
  if (v129)
  {
    v130 = v129;
    v131 = sub_24F92B0D8();
    v133 = v132;

    v134 = sub_24F4D36F8(v131, v133, v232);
    v33 = v231;
    if (v134)
    {

      v70 = v238;
LABEL_56:
      v164 = v242;

      sub_24F2CC7F4(&v256);

      v157 = v235;
      v160 = v236;
      v159 = v233;
      v158 = v234;
      v34 = v229;
LABEL_60:
      sub_24E601704(v160 + v159, &qword_27F22DF80);
      sub_24E640000(*v158, *(v158 + 1), v158[16]);
      sub_24E601704(v160 + v157, &unk_27F23E170);
      return (*(v34 + 56))(v70, 1, 1, v33);
    }

    v243 = v128;
    v163 = sub_24F4D36F8(v131, v133, v237);

    v70 = v238;
    if (v163)
    {

      goto LABEL_56;
    }

    v228 = v127;
    v248.n128_u64[0] = v131;
    v248.n128_u64[1] = v133;
    v165 = v239;
    sub_24F91EA28();
    sub_24E600AEC();
    v166 = sub_24F92C578();
    v168 = v167;
    (*v244)(v165, v240);
    if (v168)
    {
      v131 = v166;
    }

    else
    {

      v168 = v133;
    }

    v170 = v209;
    v169 = v210;
    v171 = v208;
    v128 = v243;
    v248.n128_u64[0] = 0x3A6E6F6369707061;
    v248.n128_u64[1] = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v131, v168);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
    v173 = v227;
    (*(v170 + 32))(v227, v171, v169);
    *(v173 + v172) = 0;
    v174 = v213;
    swift_storeEnumTagMultiPayload();
    v162 = v174;
    v161 = 0;
  }

  else
  {
    v228 = v127;

    v161 = 1;
    v162 = v213;
  }

  v212(v227, v161, 1, v162);
  sub_24E69A5C4(0, &qword_27F21BCB0);
  v175 = v258[0];
  v176 = v242;
  v177 = sub_24F92C408();

  v243 = v128;
  if (v177 & 1) != 0 || (v178 = v258[1], v179 = sub_24F92C408(), v178, (v179))
  {
    v247[0] = v256;
    v247[1] = v257;
    v247[2] = *v258;
    sub_24F2BFD7C(v176, v247, &v248);
  }

  else
  {
    sub_24F2CC7F4(&v256);
    sub_24F2BFC1C(v176, &v248);
  }

  v244 = v248.n128_u64[1];
  v180 = v248.n128_u64[0];
  v181 = *v249;
  v245 = *&v249[8];
  v182 = *&v249[24];
  v183 = v176;
  v184 = v231;
  v185 = v236;
  v186 = (v236 + v231[9]);
  v187 = [v183 identifier];
  v188 = sub_24F92B0D8();
  v190 = v189;

  *v185 = v188;
  v185[1] = v190;
  sub_24EAC2650(v227, v185 + v233);
  v191 = [v241 uniqueId];
  v192 = sub_24F92B0D8();
  v194 = v193;

  v195 = (v185 + v184[6]);
  *v195 = v192;
  v195[1] = v194;
  v196 = (v185 + v184[7]);
  v197 = v228;
  *v196 = v243;
  v196[1] = v197;
  *v186 = 0;
  v186[1] = 0;
  v198 = v234;
  sub_24E640000(*v234, *(v234 + 1), v234[16]);
  *v198 = 0;
  *(v198 + 1) = 0;
  v198[16] = -1;
  v199 = v244;
  v248.n128_u64[0] = v180;
  v248.n128_u64[1] = v244;
  *v249 = v181;
  *&v249[8] = v245;
  *&v249[24] = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v243 = v181;

  v201 = *(&v245 + 1);
  v202 = v182;
  v203 = v180;
  v204 = v199;
  sub_24F26E39C(v230, (inited + 32));
  v205 = v207;
  sub_24F4B6440(&v248, inited, 0, v207);

  sub_24E601704(v227, &qword_27F22DF80);
  v215(v205, 0, 1, v216);
  sub_24F1416E4(v205, v185 + v235);
  *(v185 + v184[12]) = v246;

  v206 = v238;
  sub_24F2CC85C(v185, v238, type metadata accessor for SocialUserGroup);
  (*(v229 + 56))(v206, 0, 1, v184);
  return sub_24F2CC8C4(v185, type metadata accessor for SocialUserGroup);
}

long double sub_24F2C65AC(unsigned __int8 *a1)
{
  type metadata accessor for Score(0);
  sub_24F91F5C8();
  v4 = *a1;
  if (v4 <= 2)
  {
    v7 = v1 + 13;
    if (v4 != 1)
    {
      v7 = v1 + 14;
    }

    if (*a1)
    {
      v6 = v7;
    }

    else
    {
      v6 = v1 + 12;
    }
  }

  else if (*a1 > 4u)
  {
    if (v4 == 5)
    {
      v6 = v1 + 17;
    }

    else
    {
      v6 = v1 + 18;
    }
  }

  else
  {
    v5 = v4 == 3;
    v6 = v1 + 15;
    if (!v5)
    {
      v6 = v1 + 16;
    }
  }

  v8 = *v6;
  v9 = v1 + 19;
  v10 = a1[1];
  v11 = v1 + 22;
  v12 = v1 + 23;
  if (v10 != 4)
  {
    v12 = v1 + 24;
  }

  if (v10 != 3)
  {
    v11 = v12;
  }

  v13 = v1 + 20;
  if (v10 != 1)
  {
    v13 = v1 + 21;
  }

  if (a1[1])
  {
    v9 = v13;
  }

  if (a1[1] > 2u)
  {
    v9 = v11;
  }

  v14 = *v9;
  v15 = v1 + 25;
  v16 = v1 + 27;
  if (a1[2] != 2)
  {
    v16 = v1 + 28;
  }

  if (a1[2])
  {
    v15 = v1 + 26;
  }

  if (a1[2] > 1u)
  {
    v15 = v16;
  }

  v17 = *v15;
  return exp(v3 * 0.693147181 / v1[11]) * v8 * v14 * v17;
}

unint64_t sub_24F2C66F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, NSObject *a6, uint64_t a7)
{
  v8 = v7;
  v718 = a7;
  v725 = a6;
  v682 = a5;
  v637 = a4;
  v629 = a3;
  v647 = a1;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E200);
  v671 = *(v694 - 8);
  MEMORY[0x28223BE20](v694);
  v685 = &v621 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v684 = &v621 - v12;
  MEMORY[0x28223BE20](v13);
  v670 = &v621 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E208);
  MEMORY[0x28223BE20](v15 - 8);
  v676 = &v621 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E210);
  MEMORY[0x28223BE20](v17 - 8);
  v704 = &v621 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v701 = &v621 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v21 - 8);
  v678 = &v621 - v22;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v632 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v669 = &v621 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v24 - 8);
  v677 = &v621 - v25;
  *&v721 = COERCE_DOUBLE(type metadata accessor for Player.LastPlayedTogetherInfo(0));
  v631 = *(v721 - 8);
  MEMORY[0x28223BE20](v721);
  v668 = &v621 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0);
  v711 = *(v710 - 8);
  MEMORY[0x28223BE20](v710);
  v689 = &v621 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v697 = &v621 - v29;
  MEMORY[0x28223BE20](v30);
  v688 = &v621 - v31;
  MEMORY[0x28223BE20](v32);
  v675 = &v621 - v33;
  MEMORY[0x28223BE20](v34);
  v665 = &v621 - v35;
  MEMORY[0x28223BE20](v36);
  v715 = (&v621 - v37);
  MEMORY[0x28223BE20](v38);
  v653 = &v621 - v39;
  v712 = type metadata accessor for Score(0);
  v662 = *(v712 - 8);
  MEMORY[0x28223BE20](v712);
  v692 = &v621 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v700 = &v621 - v42;
  MEMORY[0x28223BE20](v43);
  v707 = &v621 - v44;
  MEMORY[0x28223BE20](v45);
  v674 = &v621 - v46;
  MEMORY[0x28223BE20](v47);
  v644 = &v621 - v48;
  MEMORY[0x28223BE20](v49);
  v626 = &v621 - v50;
  MEMORY[0x28223BE20](v51);
  v656 = &v621 - v52;
  MEMORY[0x28223BE20](v53);
  v655 = &v621 - v54;
  MEMORY[0x28223BE20](v55);
  v664 = &v621 - v56;
  MEMORY[0x28223BE20](v57);
  *&v714 = &v621 - v58;
  MEMORY[0x28223BE20](v59);
  v652 = &v621 - v60;
  v733 = type metadata accessor for Player(0);
  v734 = *(v733 - 8);
  MEMORY[0x28223BE20](v733);
  v705 = (&v621 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  v642 = &v621 - v63;
  MEMORY[0x28223BE20](v64);
  v623 = &v621 - v65;
  MEMORY[0x28223BE20](v66);
  v687 = (&v621 - v67);
  MEMORY[0x28223BE20](v68);
  v693 = (&v621 - v69);
  MEMORY[0x28223BE20](v70);
  v730 = &v621 - v71;
  MEMORY[0x28223BE20](v72);
  v729 = (&v621 - v73);
  MEMORY[0x28223BE20](v74);
  v667 = &v621 - v75;
  MEMORY[0x28223BE20](v76);
  v666 = &v621 - v77;
  v78 = type metadata accessor for SocialUser();
  v708 = *(v78 - 8);
  MEMORY[0x28223BE20](v78 - 8);
  v719 = (&v621 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v80);
  *&v736 = &v621 - v81;
  MEMORY[0x28223BE20](v82);
  *&v722 = &v621 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230);
  MEMORY[0x28223BE20](v84 - 8);
  v686 = &v621 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v713 = (&v621 - v87);
  MEMORY[0x28223BE20](v88);
  v651 = &v621 - v89;
  v720 = type metadata accessor for SocialUserGroup();
  v645 = *(v720 - 8);
  MEMORY[0x28223BE20](v720);
  v699 = &v621 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v690 = &v621 - v92;
  MEMORY[0x28223BE20](v93);
  v696 = &v621 - v94;
  MEMORY[0x28223BE20](v95);
  v727 = (&v621 - v96);
  MEMORY[0x28223BE20](v97);
  v660 = &v621 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v99 - 8);
  v628 = &v621 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v627 = &v621 - v102;
  MEMORY[0x28223BE20](v103);
  *&v737 = &v621 - v104;
  MEMORY[0x28223BE20](v105);
  v738 = &v621 - v106;
  v107 = type metadata accessor for Game();
  v741 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v641 = (&v621 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v109);
  v735 = (&v621 - v110);
  MEMORY[0x28223BE20](v111);
  v113 = (&v621 - v112);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v114 - 8);
  v643 = &v621 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v118 = &v621 - v117;
  MEMORY[0x28223BE20](v119);
  v121 = &v621 - v120;
  v724 = 0;
  v726 = sub_24F91F648();
  v702 = *(v726 - 8);
  MEMORY[0x28223BE20](v726);
  v636 = &v621 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v123);
  v633 = &v621 - v124;
  MEMORY[0x28223BE20](v125);
  v649 = &v621 - v126;
  MEMORY[0x28223BE20](v127);
  v634 = &v621 - v128;
  MEMORY[0x28223BE20](v129);
  v650 = &v621 - v130;
  MEMORY[0x28223BE20](v131);
  v638 = &v621 - v132;
  MEMORY[0x28223BE20](v133);
  v703 = &v621 - v134;
  MEMORY[0x28223BE20](v135);
  v698 = &v621 - v136;
  MEMORY[0x28223BE20](v137);
  v691 = &v621 - v138;
  MEMORY[0x28223BE20](v139);
  v625 = &v621 - v140;
  MEMORY[0x28223BE20](v141);
  v624 = &v621 - v142;
  MEMORY[0x28223BE20](v143);
  v654 = &v621 - v144;
  MEMORY[0x28223BE20](v145);
  v147 = &v621 - v146;
  MEMORY[0x28223BE20](v148);
  v728 = &v621 - v149;
  MEMORY[0x28223BE20](v150);
  v740 = &v621 - v151;
  MEMORY[0x28223BE20](v152);
  *&v723 = &v621 - v153;
  MEMORY[0x28223BE20](v154);
  v732 = (&v621 - v155);
  MEMORY[0x28223BE20](v156);
  v659 = &v621 - v157;
  MEMORY[0x28223BE20](v158);
  v635 = &v621 - v159;
  sub_24F91F638();
  v683 = v121;
  v160 = v121;
  v161 = v741;
  sub_24E60169C(a2, v160, &qword_27F216FE0);
  v162 = a2;
  v163 = v725;
  sub_24E60169C(v162, v118, &qword_27F216FE0);
  v164 = *(v161 + 48);
  v680 = v161 + 48;
  v681 = v107;
  v679 = v164;
  v165 = v164(v118, 1, v107);
  v630 = v147;
  if (v165 == 1)
  {
    sub_24E601704(v118, &qword_27F216FE0);
  }

  else
  {
    sub_24F2CC924(v118, v113, type metadata accessor for Game);
    v166 = sub_24F4D36F8(*v113, v113[1], v163);
    sub_24F2CC8C4(v113, type metadata accessor for Game);
    if (v166)
    {
      v167 = v683;
      sub_24E601704(v683, &qword_27F216FE0);
      (*(v161 + 56))(v167, 1, 1, v681);
    }
  }

  v168 = v726;
  v169 = v721;
  v170 = v705;
  v171 = v738;
  if (qword_27F211458 != -1)
  {
    goto LABEL_371;
  }

  while (1)
  {
    v172 = sub_24F9220D8();
    v173 = __swift_project_value_buffer(v172, qword_27F39E958);
    sub_24E60169C(v647, v171, &unk_27F23E1F0);
    v706 = v173;
    v174 = sub_24F9220B8();
    v175 = sub_24F92BD98();
    v176 = os_log_type_enabled(v174, v175);
    v739 = v8;
    v177 = ChallengeInfo;
    if (v176)
    {
      v178 = swift_slowAlloc();
      v741 = swift_slowAlloc();
      v747.n128_u64[0] = v741;
      *v178 = 136380931;
      v179 = *&v737;
      sub_24E60169C(v171, *&v737, &unk_27F23E1F0);
      v180 = v733;
      if ((*(v734 + 48))(v179, 1, v733) == 1)
      {
        sub_24E601704(v179, &unk_27F23E1F0);
        v181 = 0xE100000000000000;
        v182 = 45;
      }

      else
      {
        v183 = (v179 + *(v180 + 28));
        v184 = v179;
        v182 = *v183;
        v181 = v183[1];

        sub_24F2CC8C4(v184, type metadata accessor for Player);
      }

      sub_24E601704(v171, &unk_27F23E1F0);
      v185 = sub_24E7620D4(v182, v181, &v747);

      *(v178 + 4) = v185;
      *(v178 + 12) = 2081;
      v186 = v683;
      swift_beginAccess();
      if (v679(v186, 1, v681))
      {
        v171 = 0xE100000000000000;
        v187 = 45;
        v177 = ChallengeInfo;
        v169 = v721;
      }

      else
      {
        v188 = v735;
        sub_24F2CC85C(v186, v735, type metadata accessor for Game);
        if (v188[7])
        {
          v189 = v188[6];
          v171 = v188[7];
        }

        else
        {
          v189 = v188[4];
          v171 = v188[5];
        }

        v177 = ChallengeInfo;
        v169 = v721;

        sub_24F2CC8C4(v188, type metadata accessor for Game);
        v187 = v189;
        v8 = v739;
      }

      v190 = sub_24E7620D4(v187, v171, &v747);

      *(v178 + 14) = v190;
      _os_log_impl(&dword_24E5DD000, v174, v175, "Calculating suggestions for player %{private}s in game %{private}s…", v178, 0x16u);
      v191 = v741;
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v191, -1, -1);
      MEMORY[0x2530542D0](v178, -1, -1);

      v170 = v705;
    }

    else
    {

      sub_24E601704(v171, &unk_27F23E1F0);
    }

    v663 = sub_24E60DB34(MEMORY[0x277D84F90]);
    v752 = v663;
    v192 = v693;
    if (v682 != 2 && (v682 & 1) != 0)
    {
      v193 = MEMORY[0x277D84F90];
      goto LABEL_130;
    }

    sub_24F91F638();
    v194 = v8;
    v195 = *(v8 + 264);
    v197 = *(v195 + 64);
    v170 = v195 + 64;
    v196 = v197;
    v198 = 1 << *(*(v8 + 264) + 32);
    if (v198 < 64)
    {
      v199 = ~(-1 << v198);
    }

    else
    {
      v199 = -1;
    }

    v200 = v199 & v196;
    v731 = *(v8 + 264);

    swift_beginAccess();
    v201 = 0;
    v202 = (v198 + 63) >> 6;
    v741 = &v725[7];
    *&v716 = v645 + 48;
    v709 = (v702 + 16);
    v717 = v702 + 8;
    v735 = MEMORY[0x277D84F90];
    v672 = v202;
    v673 = v170;
    while (2)
    {
      if (v200)
      {
        goto LABEL_32;
      }

      do
      {
        v203 = v201 + 1;
        if (__OFADD__(v201, 1))
        {
          goto LABEL_365;
        }

        if (v203 >= v202)
        {

          v8 = v194;
          v217 = *(v194 + 240);
          if (!(v217 >> 62))
          {
            v170 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_89;
          }

          goto LABEL_373;
        }

        v200 = *(v170 + 8 * v203);
        ++v201;
      }

      while (!v200);
      v201 = v203;
LABEL_32:
      v204 = __clz(__rbit64(v200));
      v200 &= v200 - 1;
      v205 = v204 | (v201 << 6);
      v206 = (*(*&v731 + 48) + 16 * v205);
      v171 = *v206;
      v207 = v206[1];
      v208 = *(*(*&v731 + 56) + 8 * v205);
      v209 = v725;
      if (v725[2].isa)
      {
        sub_24F92D068();

        v8 = v208;

        sub_24F92B218();
        v210 = sub_24F92D0B8();
        v211 = -1 << LOBYTE(v209[4].isa);
        v212 = v210 & ~v211;
        if (((*(v741 + ((v212 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v212) & 1) == 0)
        {
          goto LABEL_43;
        }

        v213 = ~v211;
        while (1)
        {
          v214 = (v725[6].isa + 16 * v212);
          v215 = *v214 == v171 && v214[1] == v207;
          if (v215 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v212 = (v212 + 1) & v213;
          if (((*(v741 + ((v212 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v212) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v194 = v739;
LABEL_26:

        v202 = v672;
        v170 = v673;
        continue;
      }

      break;
    }

    v8 = v208;

LABEL_43:
    v216 = v683;
    if (v679(v683, 1, v681))
    {

      v194 = v739;
      goto LABEL_45;
    }

    v194 = v739;
    if (*v216 == v171 && v216[1] == v207)
    {

      v661 = 0;
    }

    else
    {
      v218 = sub_24F92CE08();

      v661 = 0;
      if ((v218 & 1) == 0)
      {
LABEL_45:
        v661 = 1;
      }
    }

    v170 = v732;
    if (v8 >> 62)
    {
      v217 = sub_24F92C738();
      v219 = v217;
      if (!v217)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v219 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v219)
      {
        goto LABEL_26;
      }
    }

    v171 = 0;
    v648 = v8 & 0xC000000000000001;
    v621 = v8 + 32;
    v622 = v8 & 0xFFFFFFFFFFFFFF8;
    v639 = v219;
    v640 = v8;
    while (2)
    {
      if (v648)
      {
        v220 = MEMORY[0x253052270](v171, v8);
        goto LABEL_60;
      }

      if (v171 < *(v622 + 16))
      {
        v220 = *(v621 + 8 * v171);
LABEL_60:
        v169 = v220;
        v221 = __OFADD__(v171++, 1);
        if (v221)
        {
          goto LABEL_368;
        }

        v222 = [v220 date];
        if (!v222)
        {

          v169 = v721;
          if (v171 == v219)
          {
            goto LABEL_26;
          }

          continue;
        }

        v658 = v171;
        v223 = v222;
        sub_24F91F608();

        [v169 duration];
        sub_24F91F568();
        v224 = *(v194 + 248);

        v646 = sub_24F4D429C(v169, v224);

        v225 = *(v194 + 320);
        v753[0] = *(v194 + 304);
        v753[1] = v225;
        v754 = *(v194 + 336);
        v760 = v753[0];
        v761 = v225;
        v762[0] = v754;
        v226 = *(v194 + 32);
        v737 = *(v194 + 24);
        v227 = v194;
        v738 = v226;
        v229 = *(v194 + 40);
        v228 = *(v194 + 48);
        v230 = *(v194 + 56);
        v657 = *(v227 + 64);
        v747.n128_f64[0] = v737;
        v747.n128_u64[1] = v226;
        v748 = v229;
        v749 = v228;
        v750 = v230;
        v751 = v657;
        v231 = v169;
        v232 = v725;

        sub_24E60169C(&v760, v755, &unk_27F23E1A0);
        sub_24E60169C(&v760 + 8, v755, &unk_27F23E1A0);
        sub_24E60169C(&v761, v755, &unk_27F23E1A0);
        sub_24E60169C(&v761 + 8, v755, &unk_27F23E1A0);
        sub_24E60169C(v762, v755, &unk_27F22E000);
        v233 = v229;

        v234 = v230;
        v235 = v657;
        v236 = *&v737;
        v237 = v738;
        v238 = v651;
        sub_24F2C4AEC(v231, v232, v718, v753, &v747, 0, v651);
        v239 = v720;
        if ((**&v716)(v238, 1, v720) == 1)
        {

          v240 = *v717;
          v168 = v726;
          (*v717)(v723, v726);
          v241 = v732;
          (v240)(v732, v168);
          v217 = sub_24E601704(v238, &unk_27F23E230);
          v194 = v739;
          v169 = v721;
          v170 = v241;
          goto LABEL_85;
        }

        v657 = v231;
        v242 = v660;
        sub_24F2CC924(v238, v660, type metadata accessor for SocialUserGroup);
        v243 = *(v242 + *(v239 + 48));
        v244 = *(v243 + 16);
        v169 = v721;
        v245 = *&v722;
        if (!v244)
        {
          v738 = MEMORY[0x277D84F90];
          v248 = v739;
LABEL_78:
          v262 = (v646 & 1) == 0;
          v263 = v248;
          v264 = v724;
          v265 = sub_24F2CF568(v738, v263);
          v724 = v264;

          if (v265 == 4)
          {
            v265 = 3;
          }

          v266 = v652;
          v168 = v726;
          (*v709)(&v652[*(v712 + 28)], v723, v726);
          *v266 = v262;
          v266[1] = v661;
          v266[2] = v265;
          v267 = *(v710 + 48);
          v268 = v653;
          sub_24F2CC85C(v266, v653, type metadata accessor for Score);
          sub_24F2CC85C(v660, v268 + v267, type metadata accessor for SocialUserGroup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v735 = sub_24E618B0C(0, v735[2] + 1, 1, v735);
          }

          v269 = v657;
          v271 = v735[2];
          v270 = v735[3];
          if (v271 >= v270 >> 1)
          {
            v735 = sub_24E618B0C(v270 > 1, v271 + 1, 1, v735);
          }

          sub_24F2CC8C4(v652, type metadata accessor for Score);
          v272 = *v717;
          (*v717)(v723, v168);
          v273 = v732;
          (v272)(v732, v168);
          v274 = v735;
          v735[2] = v271 + 1;
          v170 = v273;
          sub_24E6009C8(v653, v274 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v271, &qword_27F2138C0);
          v217 = sub_24F2CC8C4(v660, type metadata accessor for SocialUserGroup);
          v194 = v739;
LABEL_85:
          v219 = v639;
          v8 = v640;
          v171 = v658;
          if (v658 == v639)
          {
            goto LABEL_26;
          }

          continue;
        }

        v246 = v708;
        v247 = v243 + ((*(v708 + 80) + 32) & ~*(v708 + 80));
        v248 = v739;
        swift_beginAccess();
        v249 = *(v246 + 72);
        v738 = MEMORY[0x277D84F90];
        v737 = v249;
        while (2)
        {
          sub_24F2CC85C(v247, v245, type metadata accessor for SocialUser);
          v250 = *(v245 + 24);
          if (v250)
          {
            v251 = *(v248 + 288);
            if (*(v251 + 16))
            {
              v252 = v245;
              v253 = *(v245 + 16);

              v254 = sub_24E76D644(v253, v250);
              if (v255)
              {
                v256 = v667;
                sub_24F2CC85C(*(v251 + 56) + *(v734 + 72) * v254, v667, type metadata accessor for Player);

                v257 = v666;
                sub_24F2CC924(v256, v666, type metadata accessor for Player);
                v258 = *(v257 + *(v733 + 76));
                sub_24F2CC8C4(v257, type metadata accessor for Player);
                sub_24F2CC8C4(v252, type metadata accessor for SocialUser);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v738 = sub_24E618B58(0, *(v738 + 16) + 1, 1, v738);
                }

                v169 = v721;
                v249 = v737;
                v260 = *(v738 + 16);
                v259 = *(v738 + 24);
                if (v260 >= v259 >> 1)
                {
                  v738 = sub_24E618B58((v259 > 1), v260 + 1, 1, v738);
                }

                v261 = v738;
                *(v738 + 16) = v260 + 1;
                *(v261 + v260 + 32) = 2 - v258;
                v248 = v739;
                v245 = *&v722;
LABEL_68:
                v247 += *&v249;
                if (!--v244)
                {
                  goto LABEL_78;
                }

                continue;
              }

              v245 = v252;
              v249 = v737;
            }
          }

          break;
        }

        sub_24F2CC8C4(v245, type metadata accessor for SocialUser);
        v169 = v721;
        goto LABEL_68;
      }

      break;
    }

    __break(1u);
LABEL_373:
    v619 = v217;
    *&v170 = COERCE_DOUBLE(sub_24F92C738());
    v217 = v619;
LABEL_89:
    v193 = v735;
    if (*&v170 != 0.0)
    {
      v738 = v217 & 0xC000000000000001;
      *&v723 = v217 & 0xFFFFFFFFFFFFFF8;
      *&v722 = v217 + 32;
      v732 = v217;

      v275 = v170;
      while (1)
      {
        v221 = __OFSUB__(v275, 1);
        v276 = v275 - 1;
        if (v221)
        {
          break;
        }

        v741 = v276;
        if (v738)
        {
          v277 = COERCE_DOUBLE(MEMORY[0x253052270]());
        }

        else
        {
          if ((v276 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_363:
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
            goto LABEL_366;
          }

          if (v276 >= *(v723 + 16))
          {
            goto LABEL_363;
          }

          *&v277 = *(*&v722 + 8 * v276);
        }

        *&v170 = v277;
        v278 = *(v8 + 256);

        v171 = sub_24F4D429C(v170, v278);

        if ((v171 & 1) != 0 || (v279 = [v170 date]) == 0)
        {
        }

        else
        {
          v735 = v193;
          v280 = v279;
          sub_24F91F608();

          [v170 duration];
          sub_24F91F568();
          v281 = *(v8 + 320);
          v755[0] = *(v8 + 304);
          v755[1] = v281;
          v756 = *(v8 + 336);
          v757 = v755[0];
          v758 = v281;
          v759 = v756;
          v282 = *(v8 + 24);
          v731 = *(v8 + 32);
          v284 = *(v8 + 40);
          v283 = *(v8 + 48);
          v286 = *(v8 + 56);
          v285 = *(v8 + 64);
          v747.n128_u64[0] = v282;
          v747.n128_f64[1] = v731;
          v748 = v284;
          v749 = v283;
          v750 = v286;
          v751 = v285;
          v737 = COERCE_DOUBLE(v170);
          v287 = v725;

          v288 = v718;

          sub_24E60169C(&v757, v746, &unk_27F23E1A0);
          sub_24E60169C(&v757 + 8, v746, &unk_27F23E1A0);
          sub_24E60169C(&v758, v746, &unk_27F23E1A0);
          sub_24E60169C(&v758 + 8, v746, &unk_27F23E1A0);
          sub_24E60169C(&v759, v746, &unk_27F22E000);
          v289 = v284;

          v290 = v286;
          v291 = v285;
          v292 = v282;
          v171 = *&v737;
          v293 = *&v731;
          v294 = v713;
          sub_24F2C4AEC(v171, v287, v288, v755, &v747, 0, v713);
          v295 = v720;
          if ((**&v716)(v294, 1, v720) != 1)
          {
            v297 = v727;
            sub_24F2CC924(v294, v727, type metadata accessor for SocialUserGroup);
            v298 = *(v297 + *(v295 + 48));
            v299 = *(v298 + 16);
            v300 = v736;
            if (!v299)
            {
              v305 = MEMORY[0x277D84F90];
              v303 = v739;
              v306 = v740;
LABEL_117:
              v318 = v303;
              v319 = v724;
              v320 = sub_24F2CF568(v305, v318);
              v724 = v319;

              if (v320 == 4)
              {
                v320 = 3;
              }

              v321 = *&v714;
              v168 = v726;
              (*v709)(*&v714 + *(v712 + 28), v728, v726);
              *v321 = 1286;
              *(v321 + 2) = v320;
              v322 = *(v710 + 48);
              v323 = v321;
              v324 = v715;
              sub_24F2CC85C(v323, v715, type metadata accessor for Score);
              sub_24F2CC85C(v727, v324 + v322, type metadata accessor for SocialUserGroup);
              v193 = v735;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v193 = sub_24E618B0C(0, *(v193 + 16) + 1, 1, v193);
              }

              v169 = v721;
              v325 = v737;
              v327 = *(v193 + 16);
              v326 = *(v193 + 24);
              if (v327 >= v326 >> 1)
              {
                v193 = sub_24E618B0C(v326 > 1, v327 + 1, 1, v193);
              }

              sub_24F2CC8C4(*&v714, type metadata accessor for Score);
              v171 = v717;
              v328 = *v717;
              v170 = v728;
              (*v717)(v728, v168);
              (v328)(v306, v168);
              *(v193 + 16) = v327 + 1;
              sub_24E6009C8(v715, v193 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v327, &qword_27F2138C0);
              sub_24F2CC8C4(v727, type metadata accessor for SocialUserGroup);
              v8 = v739;
              goto LABEL_92;
            }

            v301 = v708;
            v302 = v298 + ((*(v708 + 80) + 32) & ~*(v708 + 80));
            v303 = v739;
            swift_beginAccess();
            v304 = *(v301 + 72);
            v305 = MEMORY[0x277D84F90];
            v306 = v740;
            while (2)
            {
              sub_24F2CC85C(v302, v300, type metadata accessor for SocialUser);
              v307 = *(v300 + 24);
              if (v307)
              {
                v308 = *(v303 + 288);
                if (*(v308 + 16))
                {
                  v309 = v300;
                  v310 = *(v300 + 16);

                  v311 = sub_24E76D644(v310, v307);
                  if (v312)
                  {
                    v313 = v730;
                    sub_24F2CC85C(*(v308 + 56) + *(v734 + 72) * v311, v730, type metadata accessor for Player);

                    v314 = v729;
                    sub_24F2CC924(v313, v729, type metadata accessor for Player);
                    v315 = *(v314 + *(v733 + 76));
                    sub_24F2CC8C4(v314, type metadata accessor for Player);
                    sub_24F2CC8C4(v309, type metadata accessor for SocialUser);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v305 = sub_24E618B58(0, *(v305 + 2) + 1, 1, v305);
                    }

                    v306 = v740;
                    v317 = *(v305 + 2);
                    v316 = *(v305 + 3);
                    if (v317 >= v316 >> 1)
                    {
                      v305 = sub_24E618B58((v316 > 1), v317 + 1, 1, v305);
                    }

                    *(v305 + 2) = v317 + 1;
                    v305[v317 + 32] = 2 - v315;
                    v303 = v739;
                    v300 = v736;
LABEL_107:
                    v302 += v304;
                    if (!--v299)
                    {
                      goto LABEL_117;
                    }

                    continue;
                  }

                  v300 = v309;
                  v306 = v740;
                }
              }

              break;
            }

            sub_24F2CC8C4(v300, type metadata accessor for SocialUser);
            goto LABEL_107;
          }

          v296 = *v717;
          v170 = v728;
          v168 = v726;
          (*v717)(v728, v726);
          (v296)(v740, v168);
          sub_24E601704(v294, &unk_27F23E230);
          v193 = v735;
          v169 = v721;
          v8 = v739;
        }

LABEL_92:
        v275 = v741;
        if (!v741)
        {
          goto LABEL_125;
        }
      }

      __break(1u);
LABEL_125:
    }

    v171 = v630;
    (*v709)(v630, v659, v168);
    v329 = sub_24F9220B8();
    v330 = sub_24F92BDA8();
    v331 = os_log_type_enabled(v329, v330);
    v192 = v693;
    if (v331)
    {
      v332 = swift_slowAlloc();
      v741 = v329;
      v333 = v332;
      *v332 = 134217984;
      LODWORD(v740) = v330;
      sub_24F91F5C8();
      v335 = v334;
      v336 = *v717;
      (*v717)(v171, v168);
      *(v333 + 1) = -v335;
      v171 = v741;
      _os_log_impl(&dword_24E5DD000, v741, v740, "\tRecent call processing: %fs", v333, 0xCu);
      MEMORY[0x2530542D0](v333, -1, -1);
    }

    else
    {

      v336 = *v717;
      (*v717)(v171, v168);
    }

    (v336)(v659, v168);
    v177 = ChallengeInfo;
    v170 = v705;
LABEL_130:
    sub_24F91F638();
    v337 = *(v8 + 272);
    v729 = *(v337 + 16);
    if (*&v729 != 0.0)
    {
      v338 = v734;
      v728 = (v337 + ((*(v734 + 80) + 32) & ~*(v734 + 80)));
      v730 = v337;

      swift_beginAccess();
      swift_beginAccess();
      v727 = (v645 + 48);
      v717 = v631 + 48;
      v709 = (v338 + 48);
      v339 = 0;
      *&v716 = v632 + 48;
      v732 = (v702 + 16);
      *&v736 = v702 + 32;
      v740 = v702 + 8;
      v715 = (v662 + 48);
      *&v340 = 136315138;
      v723 = v340;
      while (1)
      {
        if (v339 >= *(v730 + 16))
        {
          goto LABEL_367;
        }

        v341 = *(v734 + 72);
        v741 = v339;
        sub_24F2CC85C(&v728[v341 * v339], v192, type metadata accessor for Player);
        v342 = v687;
        sub_24F2CC85C(v192, v687, type metadata accessor for Player);
        v343 = sub_24F9220B8();
        v344 = sub_24F92BDA8();
        v345 = os_log_type_enabled(v343, v344);
        v735 = v193;
        if (v345)
        {
          v346 = swift_slowAlloc();
          v347 = swift_slowAlloc();
          v742 = v347;
          *v346 = v723;
          v348 = *v342;
          v349 = v342[1];

          sub_24F2CC8C4(v342, type metadata accessor for Player);
          v350 = sub_24E7620D4(v348, v349, &v742);
          v193 = v735;

          *(v346 + 4) = v350;
          v169 = v721;
          _os_log_impl(&dword_24E5DD000, v343, v344, "\tProcessing friend %s…", v346, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v347);
          v351 = v347;
          v177 = ChallengeInfo;
          MEMORY[0x2530542D0](v351, -1, -1);
          v352 = v346;
          v170 = v705;
          MEMORY[0x2530542D0](v352, -1, -1);
        }

        else
        {

          sub_24F2CC8C4(v342, type metadata accessor for Player);
        }

        v171 = v686;
        v192 = v693;
        sub_24F2C4650(v693, v686);
        if ((*v727)(v171, 1, v720) == 1)
        {
          sub_24E601704(v171, &unk_27F23E230);
          sub_24F2CC85C(v192, v170, type metadata accessor for Player);
          v353 = sub_24F9220B8();
          v171 = sub_24F92BDB8();
          if (os_log_type_enabled(v353, v171))
          {
            v354 = swift_slowAlloc();
            v355 = swift_slowAlloc();
            v742 = v355;
            *v354 = v723;
            v356 = *v705;
            v357 = v705[1];

            sub_24F2CC8C4(v705, type metadata accessor for Player);
            v358 = sub_24E7620D4(v356, v357, &v742);
            v193 = v735;

            *(v354 + 4) = v358;
            v169 = v721;
            _os_log_impl(&dword_24E5DD000, v353, v171, "\t\tUnable to make social user group for friend %s", v354, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v355);
            v359 = v355;
            v177 = ChallengeInfo;
            MEMORY[0x2530542D0](v359, -1, -1);
            v360 = v354;
            v170 = v705;
            MEMORY[0x2530542D0](v360, -1, -1);
          }

          else
          {

            sub_24F2CC8C4(v170, type metadata accessor for Player);
          }

          goto LABEL_133;
        }

        sub_24F2CC924(v171, v696, type metadata accessor for SocialUserGroup);
        if (v682)
        {
          v361 = v192[1];
          v362 = *v192 & 0xFFFFFFFFFFFFLL;
          if ((v361 & 0x2000000000000000) != 0)
          {
            v362 = HIBYTE(v361) & 0xF;
          }

          if (v362)
          {
            v363 = v664;
            sub_24F91F618();
            *v363 = 1285;
            *(v363 + 2) = 1;
            v364 = *(v710 + 48);
            v365 = v363;
            v366 = v665;
            sub_24F2CC85C(v365, v665, type metadata accessor for Score);
            sub_24F2CC85C(v696, v366 + v364, type metadata accessor for SocialUserGroup);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v193 = sub_24E618B0C(0, *(v193 + 16) + 1, 1, v193);
            }

            v368 = *(v193 + 16);
            v367 = *(v193 + 24);
            if (v368 >= v367 >> 1)
            {
              v193 = sub_24E618B0C(v367 > 1, v368 + 1, 1, v193);
            }

            sub_24F2CC8C4(v664, type metadata accessor for Score);
            sub_24F2CC8C4(v696, type metadata accessor for SocialUserGroup);
            *(v193 + 16) = v368 + 1;
            v369 = v193 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v368;
            v370 = v665;
LABEL_262:
            sub_24E6009C8(v370, v369, &qword_27F2138C0);
            goto LABEL_263;
          }
        }

        LODWORD(v718) = 2 - *(v192 + *(v733 + 76));
        v371 = v677;
        sub_24E60169C(v192 + *(v733 + 64), v677, &unk_27F23E220);
        if ((*v717)(v371, 1, v169) == 1)
        {
          sub_24E601704(v371, &unk_27F23E220);
          v731 = MEMORY[0x277D84F90];
          v372 = v678;
          goto LABEL_177;
        }

        v373 = v371;
        v374 = v668;
        sub_24F2CC924(v373, v668, type metadata accessor for Player.LastPlayedTogetherInfo);
        v375 = *v374;
        v376 = v374[1];
        if (sub_24F4D36F8(*v374, v376, v725))
        {
          sub_24F2CC8C4(v374, type metadata accessor for Player.LastPlayedTogetherInfo);
          v731 = MEMORY[0x277D84F90];
          v372 = v678;
          v169 = v721;
          goto LABEL_177;
        }

        v377 = v683;
        if (!v679(v683, 1, v681) && (v375 == *v377 && v376 == v377[1] || (sub_24F92CE08() & 1) != 0))
        {
          v380 = 0;
        }

        else
        {
          v378 = v668;
          v379 = *(v668 + 96);
          if (*(v668 + 104) == 1)
          {
            if (v379)
            {
              v380 = 1;
            }

            else
            {
              v380 = 4;
            }
          }

          else if (v379)
          {
            v381 = v627;
            sub_24E60169C(v647, v627, &unk_27F23E1F0);
            if ((*v709)(v381, 1, v733) == 1)
            {
              sub_24E601704(v381, &unk_27F23E1F0);
            }

            else
            {
              v382 = v381;
              v383 = v623;
              sub_24F2CC924(v382, v623, type metadata accessor for Player);
              if (*(v378 + 105))
              {
                v384 = v383;
                v385 = v733;
                v386 = *(v384 + *(v733 + 56));
                sub_24F2CC8C4(v384, type metadata accessor for Player);
                if ((v386 & 1) == 0)
                {
                  if (*(v192 + *(v385 + 56)))
                  {
                    v380 = 2;
                  }

                  else
                  {
                    v380 = 3;
                  }

                  goto LABEL_174;
                }
              }

              else
              {
                sub_24F2CC8C4(v383, type metadata accessor for Player);
              }
            }

            v380 = 2;
          }

          else
          {
            v380 = 4;
          }
        }

LABEL_174:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v745 = v752;
        sub_24E81FC80(v380, v375, v376, isUniquelyReferenced_nonNull_native);
        v663 = v745;
        v752 = v745;
        swift_endAccess();
        v388 = v655;
        sub_24F91F5D8();
        *v388 = 2;
        v388[1] = v380;
        v388[2] = v718;
        v389 = COERCE_DOUBLE(sub_24E618B30(0, 1, 1, MEMORY[0x277D84F90]));
        v391 = *(*&v389 + 16);
        v390 = *(*&v389 + 24);
        v731 = v389;
        if (v391 >= v390 >> 1)
        {
          v731 = COERCE_DOUBLE(sub_24E618B30(v390 > 1, v391 + 1, 1, *&v731));
        }

        v193 = v735;
        v169 = v721;
        v392 = v731;
        *(*&v731 + 16) = v391 + 1;
        sub_24F2CC924(v655, *&v392 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v391, type metadata accessor for Score);
        sub_24F2CC8C4(v668, type metadata accessor for Player.LastPlayedTogetherInfo);
        v8 = v739;
        v372 = v678;
LABEL_177:
        sub_24E60169C(v192 + *(v733 + 68), v372, &unk_27F247220);
        if ((**&v716)(v372, 1, v177) == 1)
        {
          sub_24E601704(v372, &unk_27F247220);
          goto LABEL_206;
        }

        v393 = v372;
        v394 = v669;
        sub_24F2CC924(v393, v669, type metadata accessor for Player.LastChallengeInfo);
        v395 = *v394;
        v396 = v394[1];
        if (sub_24F4D36F8(*v394, v396, v725))
        {
          sub_24F2CC8C4(v394, type metadata accessor for Player.LastChallengeInfo);
          v193 = v735;
          v169 = v721;
          goto LABEL_206;
        }

        v397 = v683;
        v398 = v679(v683, 1, v681);
        v399 = v642;
        if (!v398 && (v395 == *v397 && v396 == v397[1] || (sub_24F92CE08() & 1) != 0))
        {
          v402 = 0;
        }

        else
        {
          v400 = v669;
          v401 = *(v669 + 96);
          if (*(v669 + 104) == 1)
          {
            if (v401)
            {
              v402 = 1;
            }

            else
            {
              v402 = 4;
            }
          }

          else if (v401)
          {
            v403 = v628;
            sub_24E60169C(v647, v628, &unk_27F23E1F0);
            if ((*v709)(v403, 1, v733) == 1)
            {
              sub_24E601704(v403, &unk_27F23E1F0);
            }

            else
            {
              sub_24F2CC924(v403, v399, type metadata accessor for Player);
              if (*(v400 + 105))
              {
                v404 = v399;
                v405 = v733;
                v406 = *(v404 + *(v733 + 56));
                sub_24F2CC8C4(v404, type metadata accessor for Player);
                if ((v406 & 1) == 0)
                {
                  if (*(v192 + *(v405 + 56)))
                  {
                    v402 = 2;
                  }

                  else
                  {
                    v402 = 3;
                  }

                  goto LABEL_201;
                }
              }

              else
              {
                sub_24F2CC8C4(v399, type metadata accessor for Player);
              }
            }

            v402 = 2;
          }

          else
          {
            v402 = 4;
          }
        }

LABEL_201:
        swift_beginAccess();
        v407 = swift_isUniquelyReferenced_nonNull_native();
        v745 = v752;
        sub_24E81FC80(v402, v395, v396, v407);
        v663 = v745;
        v752 = v745;
        swift_endAccess();
        v408 = v656;
        sub_24F91F5D8();
        *v408 = 3;
        v408[1] = v402;
        v408[2] = v718;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v731 = COERCE_DOUBLE(sub_24E618B30(0, *(*&v731 + 16) + 1, 1, *&v731));
        }

        v193 = v735;
        v169 = v721;
        v410 = *(*&v731 + 16);
        v409 = *(*&v731 + 24);
        if (v410 >= v409 >> 1)
        {
          v731 = COERCE_DOUBLE(sub_24E618B30(v409 > 1, v410 + 1, 1, *&v731));
        }

        v411 = v731;
        *(*&v731 + 16) = v410 + 1;
        sub_24F2CC924(v656, *&v411 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v410, type metadata accessor for Score);
        sub_24F2CC8C4(v669, type metadata accessor for Player.LastChallengeInfo);
        v8 = v739;
LABEL_206:
        v412 = *(v8 + 296);
        if (!*(v412 + 16))
        {
          v170 = v705;
          goto LABEL_255;
        }

        v414 = *v192;
        v413 = v192[1];

        v415 = sub_24E76D644(v414, v413);
        if ((v416 & 1) == 0)
        {

          v177 = ChallengeInfo;
          v170 = v705;
          goto LABEL_255;
        }

        v737 = *(*(v412 + 56) + 8 * v415);

        v417 = v643;
        v171 = &unk_24F959350;
        sub_24E60169C(v683, v643, &qword_27F216FE0);
        v418 = v679(v417, 1, v681);
        v177 = ChallengeInfo;
        if (v418 == 1)
        {
          sub_24E601704(v417, &qword_27F216FE0);
          v419 = v701;
          v170 = v705;
        }

        else
        {
          v420 = v417;
          v421 = v641;
          sub_24F2CC924(v420, v641, type metadata accessor for Game);
          v422 = v421;
          v423 = *(v421 + 105);
          v419 = v701;
          v170 = v705;
          if (v423 == 1 && *(v192 + *(v733 + 56)) == 1)
          {
            v171 = *&v737;
            if (*(*&v737 + 16))
            {
              v424 = sub_24E76D644(*v422, v422[1]);
              v422 = v641;
              v419 = v701;
              if (v425)
              {
                v426 = v702;
                v427 = *(v171 + 56) + *(v702 + 72) * v424;
                v738 = *(v702 + 16);
                (v738)(v625, v427, v168);

                v428 = v624;
                (*(v426 + 32))(v624, v625, v168);
                v429 = v626;
                (v738)(v626 + *(v712 + 28), v428, v168);
                *v429 = 4;
                *(v429 + 2) = v718;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v731 = COERCE_DOUBLE(sub_24E618B30(0, *(*&v731 + 16) + 1, 1, *&v731));
                }

                v431 = *(*&v731 + 16);
                v430 = *(*&v731 + 24);
                if (v431 >= v430 >> 1)
                {
                  v731 = COERCE_DOUBLE(sub_24E618B30(v430 > 1, v431 + 1, 1, *&v731));
                }

                (*v740)(v624, v168);
                v432 = v731;
                *(*&v731 + 16) = v431 + 1;
                sub_24F2CC924(v626, *&v432 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v431, type metadata accessor for Score);
                sub_24F2CC8C4(v641, type metadata accessor for Game);
                v8 = v739;
                goto LABEL_255;
              }
            }
          }

          sub_24F2CC8C4(v422, type metadata accessor for Game);
        }

        if (*(*&v737 + 16))
        {
          v433 = v737;
          sub_24F91F548();
          v713 = 0;
          v434 = 0;
          v436 = *(*&v433 + 64);
          v8 = *&v433 + 64;
          v435 = v436;
          v722 = *&v8;
          v437 = 1 << *(v8 - 32);
          if (v437 < 64)
          {
            v438 = ~(-1 << v437);
          }

          else
          {
            v438 = -1;
          }

          v439 = v438 & v435;
          v440 = ((v437 + 63) >> 6);
          v714 = -2.68156159e154;
          v168 = v736;
          v738 = v440;
LABEL_227:
          v441 = v434;
          while (v439)
          {
            v169 = v441;
LABEL_239:
            v446 = __clz(__rbit64(v439));
            v439 &= v439 - 1;
            v447 = v446 | (v169 << 6);
            v448 = (*(*&v737 + 48) + 16 * v447);
            v449 = *v448;
            v450 = v448[1];
            v451 = v702;
            v452 = v698;
            v453 = v726;
            (*(v702 + 16))(v698, *(*&v737 + 56) + *(v702 + 72) * v447, v726);
            v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E250);
            v455 = *(v454 + 48);
            v456 = v704;
            *v704 = v449;
            *(v456 + 1) = v450;
            v457 = v452;
            v168 = v736;
            (*(v451 + 32))(&v456[v455], v457, v453);
            (*(*(v454 - 8) + 56))(v456, 0, 1, v454);

            v434 = v169;
            v458 = v456;
            v419 = v701;
LABEL_240:
            sub_24E6009C8(v458, v419, &unk_27F23E210);
            v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E250);
            if ((*(*(v459 - 8) + 48))(v419, 1, v459) == 1)
            {

              v469 = sub_24E76C464(v713, *&v714, v663);
              if (v469 == 6)
              {
                v470 = 4;
              }

              else
              {
                v470 = v469;
              }

              v471 = v644;
              v168 = v726;
              (*v732)(&v644[*(v712 + 28)], v691, v726);
              *v471 = 5;
              v471[1] = v470;
              v471[2] = v718;
              v472 = swift_isUniquelyReferenced_nonNull_native();
              v193 = v735;
              if ((v472 & 1) == 0)
              {
                v731 = COERCE_DOUBLE(sub_24E618B30(0, *(*&v731 + 16) + 1, 1, *&v731));
              }

              v177 = ChallengeInfo;
              v169 = v721;
              v170 = v705;
              v192 = v693;
              v474 = *(*&v731 + 16);
              v473 = *(*&v731 + 24);
              if (v474 >= v473 >> 1)
              {
                v731 = COERCE_DOUBLE(sub_24E618B30(v473 > 1, v474 + 1, 1, *&v731));
              }

              (*v740)(v691, v168);
              v475 = v731;
              *(*&v731 + 16) = v474 + 1;
              sub_24F2CC924(v644, *&v475 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v474, type metadata accessor for Score);
              v8 = v739;
              goto LABEL_255;
            }

            v460 = *v419;
            v170 = *(v419 + 8);
            v8 = *v168;
            v461 = v419 + *(v459 + 48);
            v171 = v703;
            v462 = v726;
            (*v168)(v703, v461, v726);
            if (sub_24F4D36F8(v460, v170, v725))
            {
              v442 = *v740;
              v443 = v171;
              v444 = v462;
            }

            else
            {
              v463 = sub_24F91F588();
              v442 = *v740;
              if (v463)
              {
                v466 = v691;
                v467 = v726;
                v442(v691, v726);

                v468 = v466;
                v168 = v736;
                (v8)(v468, v171, v467);
                v713 = v460;
                v714 = *&v170;
                v440 = v738;
                goto LABEL_227;
              }

              v443 = v171;
              v444 = v726;
            }

            v442(v443, v444);

            v441 = v434;
            v440 = v738;
          }

          if (v440 <= v441 + 1)
          {
            v445 = (v441 + 1);
          }

          else
          {
            v445 = v440;
          }

          v434 = v445 - 1;
          while (1)
          {
            v169 = v441 + 1;
            if (__OFADD__(v441, 1))
            {
              goto LABEL_364;
            }

            if (v169 >= v440)
            {
              v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E250);
              v465 = v704;
              (*(*(v464 - 8) + 56))(v704, 1, 1, v464);
              v458 = v465;
              v439 = 0;
              goto LABEL_240;
            }

            v439 = *(*&v722 + 8 * v169);
            ++v441;
            if (v439)
            {
              goto LABEL_239;
            }
          }
        }

LABEL_255:

        v171 = *&v731;

        v477 = v676;
        v478 = v8;
        v479 = v724;
        sub_24F2BF054(v476, v478, v676);
        v724 = v479;
        swift_bridgeObjectRelease_n();
        if ((*v715)(v477, 1, v712) != 1)
        {
          v480 = v674;
          sub_24F2CC924(v477, v674, type metadata accessor for Score);
          v481 = *(v710 + 48);
          v482 = v480;
          v483 = v675;
          sub_24F2CC85C(v482, v675, type metadata accessor for Score);
          sub_24F2CC85C(v696, v483 + v481, type metadata accessor for SocialUserGroup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v193 = sub_24E618B0C(0, *(v193 + 16) + 1, 1, v193);
          }

          v485 = *(v193 + 16);
          v484 = *(v193 + 24);
          if (v485 >= v484 >> 1)
          {
            v193 = sub_24E618B0C(v484 > 1, v485 + 1, 1, v193);
          }

          sub_24F2CC8C4(v674, type metadata accessor for Score);
          sub_24F2CC8C4(v696, type metadata accessor for SocialUserGroup);
          *(v193 + 16) = v485 + 1;
          v369 = v193 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v485;
          v370 = v675;
          goto LABEL_262;
        }

        sub_24F2CC8C4(v696, type metadata accessor for SocialUserGroup);
        sub_24E601704(v477, &qword_27F23E208);
LABEL_263:
        v8 = v739;
LABEL_133:
        v339 = v741 + 1;
        sub_24F2CC8C4(v192, type metadata accessor for Player);
        if (v339 == v729)
        {

          break;
        }
      }
    }

    v169 = v702;
    v486 = *(v702 + 16);
    v171 = v638;
    v709 = (v702 + 16);
    v705 = v486;
    (v486)(v638, v654, v168);
    v487 = sub_24F9220B8();
    v488 = sub_24F92BDA8();
    v489 = v8;
    if (os_log_type_enabled(v487, v488))
    {
      v490 = v488;
      v491 = swift_slowAlloc();
      *v491 = 134217984;
      sub_24F91F5C8();
      v493 = v492;
      v713 = *(v169 + 8);
      (v713)(v171, v168);
      *(v491 + 4) = -v493;
      _os_log_impl(&dword_24E5DD000, v487, v490, "\tFriend processing: %fs", v491, 0xCu);
      MEMORY[0x2530542D0](v491, -1, -1);
    }

    else
    {

      v713 = *(v169 + 8);
      (v713)(v171, v168);
    }

    v494 = v690;
    sub_24F91F638();
    v495 = MEMORY[0x277D84F90];
    v741 = sub_24E60DC30(MEMORY[0x277D84F90]);
    v8 = v724;
    *&v736 = *(v193 + 16);
    v735 = v193;
    if (!v736)
    {
      break;
    }

    *&v170 = 0.0;
    v734 = *(v710 + 48);
    v732 = ((*(v711 + 80) + 32) & ~*(v711 + 80));
    v733 = v732 + v193;
    v731 = 0.693147181;
    v738 = v495;
    while (v170 < *(v193 + 16))
    {
      v740 = *(v711 + 72);
      v496 = v688;
      sub_24E60169C(v733 + v740 * v170, v688, &qword_27F2138C0);
      sub_24F2CC924(v496, v707, type metadata accessor for Score);
      sub_24F2CC924(v496 + v734, v494, type metadata accessor for SocialUserGroup);
      v497 = *(v494 + *(v720 + 48));
      v498 = *(v497 + 16);
      if (v498)
      {
        v724 = v8;
        v742 = MEMORY[0x277D84F90];
        sub_24F4577CC(v498);
        v499 = v497 + ((*(v708 + 80) + 32) & ~*(v708 + 80));
        v500 = *(v708 + 72);
        v501 = v742;
        do
        {
          v502 = v719;
          sub_24F2CC85C(v499, v719, type metadata accessor for SocialUser);
          v503 = *v502;
          v504 = v502[1];

          sub_24F2CC8C4(v502, type metadata accessor for SocialUser);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_24F4578E0(0, v501[2].isa + 1, 1);
            v501 = v742;
          }

          isa = v501[2].isa;
          v505 = v501[3].isa;
          if (isa >= v505 >> 1)
          {
            sub_24F4578E0((v505 > 1), isa + 1, 1);
            v501 = v742;
          }

          v501[2].isa = (isa + 1);
          v507 = &v501[2 * isa];
          v507[4].isa = v503;
          v507[5].isa = v504;
          v499 += v500;
          --v498;
        }

        while (v498);
        v168 = v726;
        v8 = v724;
      }

      else
      {
        v501 = MEMORY[0x277D84F90];
      }

      v742 = v501;

      sub_24E8C0BD4(&v742);
      v508 = v741;
      v724 = v8;
      if (*&v8 != 0.0)
      {
        goto LABEL_375;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
      v169 = sub_24F92AF68();
      v510 = v509;

      v489 = v739;
      if (v508[2].isa && (v511 = sub_24E76D644(v169, v510), (v512 & 1) != 0))
      {
        v513 = v670;
        sub_24E60169C(v508[7].isa + *(v671 + 72) * v511, v670, &qword_27F23E200);
        v514 = *(v513 + *(v694 + 48));
        sub_24F2CC924(v513, v700, type metadata accessor for Score);
        v515 = v707;
        sub_24F91F5C8();
        v517 = *(v489 + 88);
        v518 = exp(v516 * v731 / v517);
        v520 = *(v489 + 96);
        v519 = *(v489 + 104);
        v522 = *(v489 + 112);
        v521 = *(v489 + 120);
        v523 = *(v489 + 128);
        v524 = *(v489 + 136);
        v525 = *(v489 + 144);
        v526 = *v515;
        *&v723 = v521;
        v722 = v524;
        v737 = v517;
        if (v526 <= 2)
        {
          v524 = v520;
          if (v526)
          {
            v524 = v519;
            if (v526 != 1)
            {
              v524 = v522;
            }
          }
        }

        else if (v526 > 4)
        {
          if (v526 != 5)
          {
            v524 = *&v525;
          }
        }

        else
        {
          v524 = v521;
          if (v526 != 3)
          {
            v524 = *&v523;
          }
        }

        v538 = *(v489 + 152);
        v539 = *(v489 + 160);
        v540 = *(v489 + 168);
        v541 = *(v489 + 176);
        v543 = *(v489 + 184);
        v542 = *(v489 + 192);
        v544 = v707[1];
        *&v730 = v541;
        if (v544 > 2)
        {
          if (v544 != 3)
          {
            v541 = *&v543;
            if (v544 != 4)
            {
              v541 = v542;
            }
          }
        }

        else
        {
          v541 = *&v538;
          if (v544)
          {
            v541 = *&v539;
            if (v544 != 1)
            {
              v541 = *&v540;
            }
          }
        }

        v725 = v543;
        v727 = v539;
        *&v717 = v542;
        v718 = v540;
        v545 = *(v489 + 200);
        v729 = *(v489 + 208);
        v546 = *(v489 + 216);
        v728 = *(v489 + 224);
        v547 = v707[2];
        v716 = v522;
        v715 = v523;
        v714 = *&v525;
        *&v721 = v519;
        if (v547 > 1)
        {
          v549 = v518;
          v548 = v546;
          if (v547 != 2)
          {
            v546 = *&v728;
          }
        }

        else
        {
          v548 = v546;
          v549 = v518;
          v546 = v545;
          if (v547)
          {
            v546 = *&v729;
          }
        }

        v171 = v700;
        sub_24F91F5C8();
        v551 = exp(v550 * v731 / v737);
        v552 = *v171;
        if (v552 <= 2)
        {
          if (*v171)
          {
            v520 = *&v721;
            if (v552 != 1)
            {
              v520 = v716;
            }
          }
        }

        else if (*v171 > 4u)
        {
          v520 = v722;
          if (v552 != 5)
          {
            v520 = v714;
          }
        }

        else
        {
          v520 = *&v723;
          if (v552 != 3)
          {
            v520 = *&v715;
          }
        }

        v553 = *(v700 + 1);
        if (v553 > 2)
        {
          v538 = v730;
          if (v553 != 3)
          {
            v538 = v725;
            if (v553 != 4)
            {
              v538 = v717;
            }
          }
        }

        else if (*(v700 + 1))
        {
          v538 = v727;
          if (v553 != 1)
          {
            v538 = v718;
          }
        }

        if (*(v700 + 2) > 1u)
        {
          v545 = v548;
          if (*(v700 + 2) != 2)
          {
            v545 = *&v728;
          }
        }

        else if (*(v700 + 2))
        {
          v545 = *&v729;
        }

        if (v551 * v520 * *&v538 * v545 >= v549 * v524 * v541 * v546)
        {

          sub_24F2CC8C4(v700, type metadata accessor for Score);
          sub_24F2CC8C4(v707, type metadata accessor for Score);
          v494 = v690;
          sub_24F2CC8C4(v690, type metadata accessor for SocialUserGroup);
          v193 = v735;
          v8 = v724;
        }

        else
        {
          v554 = *(v694 + 48);
          v555 = v684;
          sub_24F2CC85C(v707, v684, type metadata accessor for Score);
          *(v555 + v554) = v514;
          v556 = v555;
          v171 = v685;
          sub_24E6009C8(v556, v685, &qword_27F23E200);
          v557 = swift_isUniquelyReferenced_nonNull_native();
          v742 = v508;
          sub_24E81FDB0(v171, v169, v510, v557);

          v558 = v742;
          v559 = swift_isUniquelyReferenced_nonNull_native();
          v741 = v558;
          if ((v559 & 1) == 0)
          {
            v738 = sub_24ECDE27C(v738);
          }

          v8 = v724;
          sub_24F2CC8C4(v700, type metadata accessor for Score);
          v193 = v735;
          if ((v514 & 0x8000000000000000) != 0)
          {
            goto LABEL_369;
          }

          if (v514 >= *(v738 + 16))
          {
            goto LABEL_370;
          }

          v560 = v732 + v738 + v514 * v740;
          sub_24F2D45C4(v707, v560, type metadata accessor for Score);
          v494 = v690;
          sub_24F2D45C4(v690, &v560[*(v710 + 48)], type metadata accessor for SocialUserGroup);
        }
      }

      else
      {
        v737 = *&v170;
        v527 = *(v694 + 48);
        v528 = v707;
        v529 = v684;
        sub_24F2CC85C(v707, v684, type metadata accessor for Score);
        v530 = v169;
        v169 = v738;
        *(v529 + v527) = *(v738 + 16);
        v531 = v529;
        v532 = v685;
        sub_24E6009C8(v531, v685, &qword_27F23E200);
        v533 = swift_isUniquelyReferenced_nonNull_native();
        v742 = v508;
        sub_24E81FDB0(v532, v530, v510, v533);

        v741 = v742;
        v534 = *(v710 + 48);
        v535 = v528;
        v536 = v697;
        sub_24F2CC85C(v535, v697, type metadata accessor for Score);
        v494 = v690;
        sub_24F2CC85C(v690, v536 + v534, type metadata accessor for SocialUserGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_24E618B0C(0, *(v169 + 16) + 1, 1, v169);
        }

        v193 = v735;
        v8 = v724;
        *&v170 = v737;
        v171 = *(v169 + 16);
        v537 = *(v169 + 24);
        if (v171 >= v537 >> 1)
        {
          v169 = sub_24E618B0C(v537 > 1, v171 + 1, 1, v169);
        }

        sub_24F2CC8C4(v707, type metadata accessor for Score);
        sub_24F2CC8C4(v494, type metadata accessor for SocialUserGroup);
        *(v169 + 16) = v171 + 1;
        v738 = v169;
        sub_24E6009C8(v697, v732 + v169 + v171 * v740, &qword_27F2138C0);
        v489 = v739;
      }

      if (++v170 == v736)
      {
        goto LABEL_339;
      }
    }

LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:
    swift_once();
  }

  v738 = v495;
LABEL_339:

  v561 = v634;
  (v705)(v634, v650, v168);
  v562 = sub_24F9220B8();
  v563 = v168;
  v564 = sub_24F92BDA8();
  if (os_log_type_enabled(v562, v564))
  {
    v565 = v561;
    v566 = swift_slowAlloc();
    *v566 = 134217984;
    sub_24F91F5C8();
    v568 = v567;
    (v713)(v565, v563);
    *(v566 + 4) = -v568;
    _os_log_impl(&dword_24E5DD000, v562, v564, "\tDe-Dupe: %fs", v566, 0xCu);
    MEMORY[0x2530542D0](v566, -1, -1);
  }

  else
  {

    (v713)(v561, v563);
  }

  v569 = v692;
  sub_24F91F638();
  v742 = v738;

  sub_24F2CF474(&v742, v489);

  v570 = v699;
  if (*&v8 != 0.0)
  {
    goto LABEL_377;
  }

  *&v732 = 0.0;
  v571 = v742;

  v572 = sub_24F9220B8();
  *&v8 = COERCE_DOUBLE(sub_24F92BDA8());
  if (os_log_type_enabled(v572, v8))
  {
    v573 = swift_slowAlloc();
    *v573 = 0;
    _os_log_impl(&dword_24E5DD000, v572, v8, "\tSuggestions", v573, 2u);
    v574 = v573;
    v569 = v692;
    MEMORY[0x2530542D0](v574, -1, -1);
  }

  v734 = v571;
  v733 = v571[2].isa;
  if (v733)
  {
    v576 = v734 + ((*(v711 + 80) + 32) & ~*(v711 + 80));
    *&v577 = *(v710 + 48);
    v741 = *(v711 + 72);
    *&v575 = 136315395;
    v736 = v575;
    v578 = v733;
    v737 = v577;
    do
    {
      v579 = v689;
      sub_24E60169C(v576, v689, &qword_27F2138C0);
      sub_24F2CC924(v579, v569, type metadata accessor for Score);
      sub_24F2CC924(v579 + *&v577, v570, type metadata accessor for SocialUserGroup);
      *&v8 = COERCE_DOUBLE(sub_24F9220B8());
      v580 = sub_24F92BDA8();
      if (os_log_type_enabled(v8, v580))
      {
        v581 = swift_slowAlloc();
        v740 = swift_slowAlloc();
        v745 = v740;
        *v581 = v736;
        v742 = 0;
        v743 = 0xE000000000000000;
        v744 = *v569;
        sub_24F92CA38();
        MEMORY[0x253050C20](32, 0xE100000000000000);
        v744 = v569[1];
        sub_24F92CA38();
        MEMORY[0x253050C20](32, 0xE100000000000000);
        v744 = v569[2];
        sub_24F92CA38();
        MEMORY[0x253050C20](2128928, 0xE300000000000000);
        sub_24F2D4580(&qword_27F229EE8);
        v582 = sub_24F92CD88();
        MEMORY[0x253050C20](v582);

        v583 = v742;
        v584 = v743;
        sub_24F2CC8C4(v692, type metadata accessor for Score);
        v585 = sub_24E7620D4(v583, v584, &v745);

        *(v581 + 4) = v585;
        *(v581 + 12) = 2081;
        v586 = (v699 + *(v720 + 28));
        v587 = *v586;
        v588 = v586[1];

        sub_24F2CC8C4(v699, type metadata accessor for SocialUserGroup);
        v589 = sub_24E7620D4(v587, v588, &v745);
        v569 = v692;

        *(v581 + 14) = v589;
        _os_log_impl(&dword_24E5DD000, v8, v580, "\t\t%s | %{private}s", v581, 0x16u);
        v590 = v740;
        swift_arrayDestroy();
        v570 = v699;
        MEMORY[0x2530542D0](v590, -1, -1);
        v577 = v737;
        MEMORY[0x2530542D0](v581, -1, -1);
      }

      else
      {

        sub_24F2CC8C4(v570, type metadata accessor for SocialUserGroup);
        sub_24F2CC8C4(v569, type metadata accessor for Score);
      }

      v576 += v741;
      --v578;
    }

    while (v578);
  }

  if (v637)
  {
    v591 = v734;
    v592 = *(v734 + 16);

    v593 = v726;
    v595 = v635;
    v594 = v636;
    if (v592 < v733)
    {
      __break(1u);
LABEL_375:
      for (i = v724; ; i = v8)
      {

        __break(1u);
LABEL_377:
        ;
      }
    }

    v596 = 0;
    v597 = v591 + ((*(v711 + 80) + 32) & ~*(v711 + 80));
    v598 = (2 * v733) | 1;
  }

  else
  {
    v599 = v734;

    sub_24E6B7CA4(v629, v599);
    v597 = v600;
    v596 = v601;
    v598 = v602;
    v593 = v726;
    v595 = v635;
    v594 = v636;
  }

  v603 = v739;

  swift_unknownObjectRetain();
  sub_24F2CC98C(v597, v596, v598, v603);
  v741 = v604;

  swift_unknownObjectRelease();

  v605 = v633;
  (v705)(v633, v649, v593);
  v606 = sub_24F9220B8();
  v607 = sub_24F92BDA8();
  if (os_log_type_enabled(v606, v607))
  {
    v608 = v605;
    v609 = swift_slowAlloc();
    *v609 = 134217984;
    sub_24F91F5C8();
    v611 = v610;
    (v713)(v608, v593);
    *(v609 + 4) = -v611;
    _os_log_impl(&dword_24E5DD000, v606, v607, "\tScoring: %fs", v609, 0xCu);
    MEMORY[0x2530542D0](v609, -1, -1);
  }

  else
  {

    (v713)(v605, v593);
  }

  (v705)(v594, v595, v593);
  v612 = sub_24F9220B8();
  v613 = sub_24F92BD98();
  if (os_log_type_enabled(v612, v613))
  {
    v614 = swift_slowAlloc();
    *v614 = 134217984;
    sub_24F91F5C8();
    v616 = v615;
    v617 = v713;
    (v713)(v594, v593);
    *(v614 + 4) = -v616;
    _os_log_impl(&dword_24E5DD000, v612, v613, "Total suggestions time: %fs", v614, 0xCu);
    MEMORY[0x2530542D0](v614, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v617 = v713;
    (v713)(v594, v593);
  }

  v617(v649, v593);
  v617(v650, v593);
  v617(v654, v593);
  v617(v595, v593);

  sub_24E601704(v683, &qword_27F216FE0);
  return v741;
}