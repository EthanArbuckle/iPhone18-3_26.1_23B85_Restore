unint64_t sub_24EE60C68()
{
  result = qword_27F231CF8;
  if (!qword_27F231CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CF8);
  }

  return result;
}

unint64_t sub_24EE60CC4()
{
  result = qword_27F231D00;
  if (!qword_27F231D00)
  {
    type metadata accessor for UpsellGridContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231D00);
  }

  return result;
}

uint64_t PerformanceTestRunner.failed(_:with:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v8 = sub_24F92B188();
  (*(a4 + 16))(a1, v8, v9, a3, a4);
}

uint64_t SearchResultsUnavailableReason.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsUnavailableReason.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchResultsUnavailableReason.init(title:message:action:contextCard:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t SearchResultsUnavailableReason.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v47 = a2;
  v46 = sub_24F9285B8();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v18 = *(v7 + 8);
  v17 = v7 + 8;
  v19 = v6;
  v20 = v6;
  v21 = v18;
  v18(v12, v20);
  v43 = v16;
  if (v16)
  {
    v42 = v14;
    v36 = v13;
    sub_24F928398();
    v22 = sub_24F928348();
    v40 = v23;
    v41 = v22;
    v24 = v19;
    v21(v9, v19);
    type metadata accessor for Action();
    sub_24F928398();
    v25 = v45;
    v37 = v24;
    v38 = v17;
    v26 = v47;
    v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v47);
    v21(v9, v24);
    type metadata accessor for SearchResultsContextCard();
    v27 = v36;
    sub_24F928398();
    v28 = v46;
    (*(v4 + 16))(v44, v26, v46);
    sub_24EE612B4(&qword_27F2230F0, type metadata accessor for SearchResultsContextCard);
    sub_24F929548();
    (*(v4 + 8))(v26, v28);
    result = (v21)(v27, v37);
    v30 = v48;
    v31 = v43;
    *v25 = v42;
    v25[1] = v31;
    v32 = v40;
    v25[2] = v41;
    v25[3] = v32;
    v25[4] = v39;
    v25[5] = v30;
  }

  else
  {
    v33 = sub_24F92AC38();
    sub_24EE612B4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v34 = 0x656C746974;
    v34[1] = 0xE500000000000000;
    v34[2] = &type metadata for SearchResultsUnavailableReason;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v4 + 8))(v47, v46);
    return (v21)(v13, v19);
  }

  return result;
}

uint64_t sub_24EE612B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EE61324(id a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 1) == 0)
  {
    [a1 setLargeTitleDisplayMode_];
    [a1 _setSupportsTwoLineLargeTitles_];
  }

  v22 = [a1 scrollEdgeAppearance];
  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  }

  v7 = [a1 standardAppearance];
  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  }

  [v22 _setTitleControlHidden_];
  [v7 _setTitleControlHidden_];
  [a1 setScrollEdgeAppearance_];
  [a1 setStandardAppearance_];
  v8 = [a1 rightBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_24E69A5C4(0, &qword_27F231D28);
    v10 = sub_24F92B5A8();

    if (!(v10 >> 62))
    {
LABEL_9:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_9;
    }
  }

  v11 = sub_24F92C738();
LABEL_10:
  v12 = (a4 >> 8) & 1;
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
      goto LABEL_32;
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x253052270](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      v15 = v14;
      [v14 setHidden_];
    }
  }

  v16 = [a1 trailingItemGroups];
  sub_24E69A5C4(0, &qword_27F231D20);
  v17 = sub_24F92B5A8();

  if (v17 >> 62)
  {
    v18 = sub_24F92C738();
    if (v18)
    {
LABEL_19:
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x253052270](j, v17);
          }

          else
          {
            v20 = *(v17 + 8 * j + 32);
          }

          v21 = v20;
          [v20 setHidden_];
        }

        goto LABEL_28;
      }

LABEL_32:
      __break(1u);
      return;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_19;
    }
  }

LABEL_28:
}

void sub_24EE61658(void *a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_24EE61324(a1, a2, *v2, v3 | *(v2 + 8));
}

uint64_t sub_24EE61688(uint64_t a1)
{
  v2 = sub_24F925338();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v86 = &v77[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D08);
  MEMORY[0x28223BE20](v5);
  v87 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v85 = &v77[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v77[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v77[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v84 = &v77[-v18];
  MEMORY[0x28223BE20](v19);
  v80 = &v77[-v20];
  MEMORY[0x28223BE20](v21);
  v83 = &v77[-v22];
  MEMORY[0x28223BE20](v23);
  v82 = &v77[-v24];
  MEMORY[0x28223BE20](v25);
  v27 = &v77[-v26];
  MEMORY[0x28223BE20](v28);
  v30 = &v77[-v29];
  MEMORY[0x28223BE20](v31);
  v33 = &v77[-v32];
  MEMORY[0x28223BE20](v34);
  v36 = &v77[-v35];
  v89 = a1;
  sub_24EE6223C(a1, &v77[-v35]);
  sub_24F925328();
  v92 = *(v3 + 56);
  v93 = v3 + 56;
  v92(v33, 0, 1, v2);
  v88 = v5;
  v37 = *(v5 + 48);
  sub_24EE6223C(v33, v14);
  v91 = v36;
  sub_24EE6223C(v36, &v14[v37]);
  v90 = v3;
  v38 = *(v3 + 48);
  if (v38(v14, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F231D10);
    if (v38(&v14[v37], 1, v2) == 1)
    {
      sub_24E601704(v14, &qword_27F231D10);
LABEL_17:
      sub_24E601704(v89, &qword_27F231D10);
      v53 = v91;
      v54 = &qword_27F231D10;
LABEL_29:
      sub_24E601704(v53, v54);
      return 0;
    }

    goto LABEL_6;
  }

  sub_24EE6223C(v14, v30);
  if (v38(&v14[v37], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F231D10);
    (*(v90 + 8))(v30, v2);
LABEL_6:
    sub_24E601704(v14, &qword_27F231D08);
    goto LABEL_7;
  }

  v48 = v90;
  v49 = *(v90 + 32);
  v79 = v38;
  v50 = v86;
  v49(v86, &v14[v37], v2);
  sub_24EE6231C();
  v78 = sub_24F92AFF8();
  v51 = *(v48 + 8);
  v52 = v50;
  v38 = v79;
  v51(v52, v2);
  sub_24E601704(v33, &qword_27F231D10);
  v51(v30, v2);
  sub_24E601704(v14, &qword_27F231D10);
  if (v78)
  {
    goto LABEL_17;
  }

LABEL_7:
  sub_24F925318();
  v92(v27, 0, 1, v2);
  v39 = v88;
  v40 = *(v88 + 48);
  sub_24EE6223C(v27, v11);
  v41 = v91;
  sub_24EE6223C(v91, &v11[v40]);
  if (v38(v11, 1, v2) == 1)
  {
    sub_24E601704(v27, &qword_27F231D10);
    if (v38(&v11[v40], 1, v2) == 1)
    {
      sub_24E601704(v11, &qword_27F231D10);
LABEL_25:
      sub_24E601704(v89, &qword_27F231D10);
      sub_24E601704(v41, &qword_27F231D10);
      return 2;
    }

    goto LABEL_12;
  }

  v42 = v82;
  sub_24EE6223C(v11, v82);
  if (v38(&v11[v40], 1, v2) == 1)
  {
    sub_24E601704(v27, &qword_27F231D10);
    (*(v90 + 8))(v42, v2);
LABEL_12:
    sub_24E601704(v11, &qword_27F231D08);
    goto LABEL_13;
  }

  v58 = v90;
  v59 = &v11[v40];
  v60 = v86;
  (*(v90 + 32))(v86, v59, v2);
  sub_24EE6231C();
  LODWORD(v79) = sub_24F92AFF8();
  v61 = *(v58 + 8);
  v61(v60, v2);
  sub_24E601704(v27, &qword_27F231D10);
  v61(v42, v2);
  v41 = v91;
  v39 = v88;
  sub_24E601704(v11, &qword_27F231D10);
  if (v79)
  {
    goto LABEL_25;
  }

LABEL_13:
  v43 = v83;
  sub_24F9252F8();
  v92(v43, 0, 1, v2);
  v44 = *(v39 + 48);
  v45 = v85;
  sub_24EE6223C(v43, v85);
  sub_24EE6223C(v41, &v45[v44]);
  if (v38(v45, 1, v2) == 1)
  {
    sub_24E601704(v43, &qword_27F231D10);
    v46 = v38(&v45[v44], 1, v2);
    v47 = v84;
    if (v46 == 1)
    {
      sub_24E601704(v45, &qword_27F231D10);
LABEL_32:
      sub_24E601704(v89, &qword_27F231D10);
      sub_24E601704(v41, &qword_27F231D10);
      return 3;
    }

    goto LABEL_20;
  }

  v55 = v80;
  sub_24EE6223C(v45, v80);
  if (v38(&v45[v44], 1, v2) == 1)
  {
    sub_24E601704(v43, &qword_27F231D10);
    (*(v90 + 8))(v55, v2);
    v47 = v84;
LABEL_20:
    sub_24E601704(v45, &qword_27F231D08);
    goto LABEL_21;
  }

  v64 = v90;
  v65 = &v45[v44];
  v66 = v86;
  (*(v90 + 32))(v86, v65, v2);
  sub_24EE6231C();
  v67 = sub_24F92AFF8();
  v68 = v43;
  v69 = *(v64 + 8);
  v69(v66, v2);
  sub_24E601704(v68, &qword_27F231D10);
  v69(v55, v2);
  v41 = v91;
  sub_24E601704(v85, &qword_27F231D10);
  v47 = v84;
  if (v67)
  {
    goto LABEL_32;
  }

LABEL_21:
  sub_24F925308();
  v92(v47, 0, 1, v2);
  v56 = *(v39 + 48);
  v57 = v87;
  sub_24EE6223C(v47, v87);
  sub_24EE622AC(v41, &v57[v56]);
  if (v38(v57, 1, v2) != 1)
  {
    v63 = v87;
    sub_24EE6223C(v87, v81);
    if (v38(&v63[v56], 1, v2) != 1)
    {
      v70 = v90;
      v71 = v81;
      v72 = v87;
      v73 = &v87[v56];
      v74 = v86;
      (*(v90 + 32))(v86, v73, v2);
      sub_24EE6231C();
      v75 = sub_24F92AFF8();
      sub_24E601704(v89, &qword_27F231D10);
      v76 = *(v70 + 8);
      v76(v74, v2);
      sub_24E601704(v47, &qword_27F231D10);
      v76(v71, v2);
      sub_24E601704(v72, &qword_27F231D10);
      return (v75 & 1) != 0;
    }

    sub_24E601704(v89, &qword_27F231D10);
    sub_24E601704(v47, &qword_27F231D10);
    (*(v90 + 8))(v81, v2);
LABEL_28:
    v54 = &qword_27F231D08;
    v53 = v87;
    goto LABEL_29;
  }

  sub_24E601704(v89, &qword_27F231D10);
  sub_24E601704(v47, &qword_27F231D10);
  if (v38(&v87[v56], 1, v2) != 1)
  {
    goto LABEL_28;
  }

  sub_24E601704(v87, &qword_27F231D10);
  return 1;
}

uint64_t sub_24EE6223C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE622AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE6231C()
{
  result = qword_27F231D18;
  if (!qword_27F231D18)
  {
    sub_24F925338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231D18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PageViewNavigationItemAdaptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PageViewNavigationItemAdaptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t AnyGenericPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OpenIntentModel<>.init(id:url:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v6);
  v7 = *(v4 + 20);
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a2, v8);
  sub_24EE63394(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
  sub_24F929188();
  (*(v9 + 8))(a2, v8);
  return sub_24E6585F8(a1);
}

uint64_t type metadata accessor for ClosedGenericPageIntent()
{
  result = qword_27F231D38;
  if (!qword_27F231D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClosedGenericPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    sub_24EE63394(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for ClosedGenericPageIntent();
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
    v39 = type metadata accessor for ClosedGenericPageIntent();
    return (v37)(v49 + *(v39 + 20), v38, v28);
  }
}

uint64_t ClosedGenericPageIntent.init(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  v6 = *(type metadata accessor for ClosedGenericPageIntent() + 20);
  v7 = sub_24F91F4A8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t ClosedGenericPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClosedGenericPageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ClosedGenericPageIntent.makeValue(in:)(JSContext in)
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
  type metadata accessor for ClosedGenericPageIntent();
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

uint64_t AnyGenericPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a3;
  v26 = a2;
  v25[0] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v25 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_24F928398();
  sub_24F928268();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_24E70E058(v7);
    v17 = sub_24F92AC38();
    sub_24EE63394(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v19 = v18;
    v20 = type metadata accessor for AnyGenericPageIntent();
    *v19 = 7107189;
    v19[1] = 0xE300000000000000;
    v19[2] = v20;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22530], v17);
    swift_willThrow();
    v21 = sub_24F9285B8();
    (*(*(v21 - 8) + 8))(v26, v21);
    return (v16)(v27, v8);
  }

  else
  {
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v26, v23);
    v16(v27, v8);
    v24 = *(v13 + 32);
    v24(v15, v7, v12);
    return (v24)(v25[0], v15, v12);
  }
}

uint64_t AnyGenericPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

JSValue __swiftcall AnyGenericPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = sub_24F91F398();
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EE63394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE63480(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24EE63540(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_24EE635E4()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE63664(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE636E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewWillBeginDecelerating(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(_, willDecelerate, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

uint64_t CompoundScrollObserver.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v11 = *(v4 + v9);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = (v11 + 40);
    do
    {
      v14 = *v13;
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 48);
      swift_unknownObjectRetain();
      v16(a1, a2, ObjectType, v14, a3, a4);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EE63F28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EE63F4C, 0, 0);
}

uint64_t sub_24EE63F4C()
{
  v1 = (*(v0[3] + 136))(v0[2]);
  if (v1)
  {
    v2 = v1;
    v1();
    sub_24E824448(v2);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v8 = (*(v0[3] + 224) + **(v0[3] + 224));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_24E7B25A8;
    v6 = v0[3];
    v7 = v0[2];

    return v8(v7, v6);
  }
}

uint64_t sub_24EE640D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24F9294C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F928818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = (*(a2 + 120))(a1, a2, v12);
  if (v15)
  {
    v20[1] = v15;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_24F92AD48();
    swift_unknownObjectRelease();
    v16 = *(v8 + 32);
    v16(v14, v10, v7);
    v16(a3, v14, v7);
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v18 = MEMORY[0x277D84F90];
    sub_24E608448(MEMORY[0x277D84F90]);
    sub_24F9294B8();
    sub_24EA200BC(v18);
    sub_24F928748();
  }

  return (*(v8 + 56))(a3, 0, 1, v7);
}

unint64_t sub_24EE64434(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 120))() || (swift_getAssociatedTypeWitness(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231E38), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  v2 = *(&v7 + 1);
  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_24E601704(&v6, &qword_27F231E30);
    return 0;
  }

  v3 = v8;
  __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
  v4 = ((*(v3 + 8))(v2, v3) >> 3) & 1;
  __swift_destroy_boxed_opaque_existential_1(&v6);
  return v4;
}

void *sub_24EE6454C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  (*(a2 + 96))(a1, a2, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    v10 = &v7[*(v8 + 36)];
    v11 = *v10;
    v12 = *(*v10 + 16);
    if (v12)
    {
      v13 = v10[1];
      v9 = sub_24EAE6938(*(*v10 + 16), 0);
      v14 = sub_24EAE8D14(&v17, (v9 + 4), v12, v11, v13);

      if (v14 == v12)
      {
LABEL_7:
        sub_24E601704(v7, &qword_27F22ACF0);
        return v9;
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  sub_24E601704(v7, &qword_27F22C688);
  return MEMORY[0x277D84F90];
}

char *sub_24EE6470C(uint64_t a1, uint64_t a2)
{
  v5 = sub_24EE6454C(a1, a2);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  swift_unknownObjectRetain();
  v7 = sub_24EB0B16C(sub_24EE64F9C, v6, v5);

  return v7;
}

uint64_t sub_24EE647B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  (*(a3 + 96))(a2, a3, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F22C688);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }

  else
  {
    v15 = *&v11[*(v12 + 40)];
    if (*(v15 + 16) && (v16 = sub_24E76DD40(a1), (v17 & 1) != 0))
    {
      v20[1] = *(*(v15 + 56) + 8 * v16);
      type metadata accessor for Shelf();

      sub_24F928A78();
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v19 - 8) + 56))(a4, v18, 1, v19);
    return sub_24E601704(v11, &qword_27F22ACF0);
  }
}

void *sub_24EE649DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = sub_24EE6470C(a1, a2);
  swift_getKeyPath();
  v9 = *(v8 + 2);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v11 = v5 + 16;
    v12 = *(v5 + 16);
    v13 = *(v5 + 80);
    v22[1] = v8;
    v14 = &v8[(v13 + 32) & ~v13];
    v23 = *(v11 + 56);
    v24 = v12;
    v15 = (v11 - 8);
    do
    {
      v24(v7, v14, v4);
      swift_getAtKeyPath();
      (*v15)(v7, v4);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v14 += v23;
      --v9;
    }

    while (v9);

    v16 = v25;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = v10;
  if (v16 >> 62)
  {
LABEL_23:
    v17 = sub_24F92C738();
    if (v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_8:
      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x253052270](v18, v16);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v10 = v25;
            break;
          }
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v19 = *(v16 + 8 * v18 + 32);

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_19;
          }
        }

        switch(*(v19 + 16))
        {
          case 1:
          case 3:
          case 4:
          case 0xD:
          case 0xF:
          case 0x11:
          case 0x15:
          case 0x17:
          case 0x18:
          case 0x1F:
          case 0x21:
          case 0x22:
          case 0x23:
          case 0x2F:
          case 0x36:
          case 0x37:
          case 0x38:
          case 0x3A:
          case 0x3F:
          case 0x4A:
          case 0x57:
          case 0x5D:
          case 0x63:
          case 0x64:
          case 0x66:
            v10 = &v25;
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            break;
          default:

            break;
        }

        ++v18;
        if (v20 == v17)
        {
          goto LABEL_20;
        }
      }
    }
  }

  return v10;
}

uint64_t sub_24EE64E70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EE63F28(a1, a2);
}

uint64_t sub_24EE64F14@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  result = sub_24F928A58();
  *a1 = v3;
  return result;
}

uint64_t sub_24EE64F64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t AppEventDetailPagePresenter.__allocating_init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24EE65588(a1, a2);

  return v4;
}

uint64_t AppEventDetailPagePresenter.init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24EE65588(a1, a2);

  return v2;
}

uint64_t sub_24EE650C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EE6512C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EE651CC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_27F210788;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_27F230F98;
    v5 = v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EE653A4()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EE6546C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view);
}

uint64_t AppEventDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view);

  return v0;
}

uint64_t AppEventDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;

  sub_24E883630(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE65588(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_appEventDetailPage) = a2;

  v5 = sub_24EC8415C(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppEventDetailPage();
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_24EE658F0();
  v7[0] = a2;
  swift_beginAccess();

  sub_24EA095A4(v7, v5 + 40);
  swift_endAccess();
  sub_24EC832DC();

  sub_24ECB9448(v7);
  return v5;
}

uint64_t sub_24EE65670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EE656CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for AppEventDetailPagePresenter()
{
  result = qword_27F231E48;
  if (!qword_27F231E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EE658F0()
{
  result = qword_27F231E58;
  if (!qword_27F231E58)
  {
    type metadata accessor for AppEventDetailPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231E58);
  }

  return result;
}

uint64_t SearchLandingPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_24F9285B8();
  v39 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v32 = v30 - v7;
  v8 = sub_24F928388();
  v31 = *(v8 - 8);
  v9 = v31;
  MEMORY[0x28223BE20](v8);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  sub_24F928398();
  v17 = sub_24F928258();
  v19 = v18;
  v20 = *(v9 + 8);
  v38 = v8;
  v20(v16, v8);
  v21 = v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount;
  *v21 = v17;
  *(v21 + 8) = v19 & 1;
  sub_24F928398();
  LOBYTE(v17) = sub_24F928278();
  v34 = v20;
  v30[1] = v9 + 8;
  v20(v13, v8);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles) = v17 & 1;
  v22 = v3;
  type metadata accessor for SearchFocusPage();
  sub_24F928398();
  v23 = *(v39 + 16);
  v25 = v35;
  v24 = v36;
  v23(v32, v36, v35);
  sub_24EE65D60();
  sub_24F929548();
  *(v22 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage) = v40;
  v26 = v33;
  (*(v31 + 16))(v33, a1, v38);
  v27 = v37;
  v23(v37, v24, v25);
  v28 = GenericPage.init(deserializing:using:)(v26, v27);
  (*(v39 + 8))(v24, v25);
  v34(a1, v38);
  return v28;
}

unint64_t sub_24EE65D60()
{
  result = qword_27F231E60;
  if (!qword_27F231E60)
  {
    type metadata accessor for SearchFocusPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231E60);
  }

  return result;
}

uint64_t SearchLandingPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v81 = a8;
  LODWORD(v75) = a7;
  v73 = a5;
  v79 = a4;
  v68 = a3;
  v67 = a2;
  v66 = a1;
  v76 = a12;
  v80 = a10;
  v70 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v77 = &v63 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = sub_24F928818();
  v65 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles) = 0;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage) = 0;
  v74 = a6;
  sub_24E60169C(a6, v83, &qword_27F2129B0);
  v69 = v24;
  v32 = *(v24 + 16);
  v72 = a11;
  v32(v29, a11, v23);
  v71 = a13;
  sub_24E60169C(a13, v22, &qword_27F2218B0);
  v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v34 = sub_24EEF0A68(v66);
  v36 = v35;

  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v34;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v38 = v68;
  *v37 = v67;
  v37[1] = v38;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v79;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v73;
  v39 = v65;
  sub_24E60169C(v83, v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v75;
  swift_beginAccess();
  *(v30 + v33) = v81;
  v40 = v76;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v75 = v29;
  v32(v26, v29, v39);
  v41 = v77;
  sub_24E60169C(v22, v77, &qword_27F2218B0);
  *(v30 + 16) = v80;
  v73 = v26;
  v32((v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v26, v39);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v40;
  v42 = v78;
  sub_24E60169C(v41, v78, &qword_27F2218B0);
  v43 = sub_24F9285B8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v42, 1, v43) == 1)
  {

    sub_24E601704(v71, &qword_27F2218B0);
    v46 = *(v69 + 8);
    v46(v72, v39);
    sub_24E601704(v74, &qword_27F2129B0);
    sub_24E601704(v41, &qword_27F2218B0);
    v46(v73, v39);
    sub_24E601704(v22, &qword_27F2218B0);
    v46(v75, v39);
    sub_24E601704(v83, &qword_27F2129B0);
    v47 = v42;
    v48 = &qword_27F2218B0;
  }

  else
  {
    v67 = v45;
    v68 = v22;
    v49 = v69;
    v50 = qword_27F2105F0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v51, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v52 = v82;
    v53 = v49;
    if (v82)
    {
    }

    v54 = *(v44 + 8);
    v55 = v78;
    v78 = v44 + 8;
    v54(v55, v43);
    v56 = v77;
    v57 = v71;
    if (v52)
    {
      v58 = v64;
      sub_24E60169C(v77, v64, &qword_27F2218B0);
      if (v67(v58, 1, v43) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v57, &qword_27F2218B0);
        v62 = *(v53 + 8);
        v62(v72, v39);
        sub_24E601704(v74, &qword_27F2129B0);
        sub_24E601704(v56, &qword_27F2218B0);
        v62(v73, v39);
        sub_24E601704(v68, &qword_27F2218B0);
        v62(v75, v39);
        sub_24E601704(v83, &qword_27F2129B0);
        v54(v64, v43);
        return v30;
      }

      sub_24E601704(v57, &qword_27F2218B0);
      v59 = *(v53 + 8);
      v59(v72, v39);
      sub_24E601704(v74, &qword_27F2129B0);
      sub_24E601704(v56, &qword_27F2218B0);
      v59(v73, v39);
      sub_24E601704(v68, &qword_27F2218B0);
      v59(v75, v39);
      sub_24E601704(v83, &qword_27F2129B0);
      v47 = v58;
      v48 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v57, &qword_27F2218B0);
      v60 = *(v53 + 8);
      v60(v72, v39);
      sub_24E601704(v74, &qword_27F2129B0);
      sub_24E601704(v56, &qword_27F2218B0);
      v60(v73, v39);
      sub_24E601704(v68, &qword_27F2218B0);
      v60(v75, v39);
      v47 = v83;
      v48 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v47, v48);
  return v30;
}

uint64_t SearchLandingPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a4;
  v80 = a8;
  LODWORD(v78) = a7;
  v77 = a5;
  v75 = a3;
  v70 = a2;
  v69 = a1;
  v81 = a12;
  v84 = a10;
  v72 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v15 - 8);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v66 - v18;
  MEMORY[0x28223BE20](v19);
  v82 = &v66 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = sub_24F928818();
  v68 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v66 - v29;
  v31 = v13 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles) = 0;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage) = 0;
  v76 = a6;
  sub_24E60169C(a6, v86, &qword_27F2129B0);
  v71 = v25;
  v32 = *(v25 + 16);
  v74 = a11;
  v32(v30, a11, v24);
  v73 = a13;
  sub_24E60169C(a13, v23, &qword_27F2218B0);
  v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v34 = sub_24EEF0A68(v69);
  v36 = v35;

  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v34;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v38 = v75;
  *v37 = v70;
  v37[1] = v38;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v79;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v77;
  sub_24E60169C(v86, v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v78;
  swift_beginAccess();
  *(v13 + v33) = v80;

  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v77 = v30;
  v39 = v68;
  v32(v27, v30, v68);
  v78 = v23;
  v40 = v23;
  v41 = v82;
  sub_24E60169C(v40, v82, &qword_27F2218B0);
  *(v13 + 16) = v84;
  v42 = (v13 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics);
  v75 = v27;
  v43 = v27;
  v44 = v13;
  v45 = v39;
  v32(v42, v43, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v81;
  v46 = v83;
  sub_24E60169C(v41, v83, &qword_27F2218B0);
  v47 = sub_24F9285B8();
  v70 = *(v47 - 8);
  v48 = *(v70 + 48);
  v49 = v47;
  if ((v48)(v46, 1) == 1)
  {

    sub_24E601704(v73, &qword_27F2218B0);
    v50 = *(v71 + 8);
    v50(v74, v45);
    sub_24E601704(v76, &qword_27F2129B0);
    sub_24E601704(v41, &qword_27F2218B0);
    v50(v75, v45);
    sub_24E601704(v78, &qword_27F2218B0);
    v50(v77, v45);
    sub_24E601704(v86, &qword_27F2129B0);
    v51 = v46;
    v52 = &qword_27F2218B0;
  }

  else
  {
    v53 = v71;
    v54 = v45;
    v55 = qword_27F2105F0;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v56, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v57 = v85;
    v58 = v53;
    if (v85)
    {
    }

    v59 = *(v70 + 8);
    v59(v83, v49);
    v60 = v82;
    if (v57)
    {
      v61 = v67;
      sub_24E60169C(v82, v67, &qword_27F2218B0);
      if (v48(v61, 1, v49) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v73, &qword_27F2218B0);
        v65 = *(v58 + 8);
        v65(v74, v54);
        sub_24E601704(v76, &qword_27F2129B0);
        sub_24E601704(v60, &qword_27F2218B0);
        v65(v75, v54);
        sub_24E601704(v78, &qword_27F2218B0);
        v65(v77, v54);
        sub_24E601704(v86, &qword_27F2129B0);
        v59(v67, v49);
        return v44;
      }

      sub_24E601704(v73, &qword_27F2218B0);
      v62 = *(v58 + 8);
      v62(v74, v54);
      sub_24E601704(v76, &qword_27F2129B0);
      sub_24E601704(v60, &qword_27F2218B0);
      v62(v75, v54);
      sub_24E601704(v78, &qword_27F2218B0);
      v62(v77, v54);
      sub_24E601704(v86, &qword_27F2129B0);
      v51 = v61;
      v52 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v73, &qword_27F2218B0);
      v63 = *(v58 + 8);
      v63(v74, v54);
      sub_24E601704(v76, &qword_27F2129B0);
      sub_24E601704(v60, &qword_27F2218B0);
      v63(v75, v54);
      sub_24E601704(v78, &qword_27F2218B0);
      v63(v77, v54);
      v51 = v86;
      v52 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v51, v52);
  return v44;
}

uint64_t SearchLandingPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t SearchLandingPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchLandingPage()
{
  result = qword_27F231E68;
  if (!qword_27F231E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FramedArtworkViewModel()
{
  result = qword_27F231E78;
  if (!qword_27F231E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DeepLinkWithReferrerIntent.init(url:isIncomingURL:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = sub_24F91F4A8();
  v14 = *(a3 + 16);
  v15 = *a3;
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for DeepLinkWithReferrerIntent();
  *(a4 + *(v11 + 20)) = a2;
  v12 = a4 + *(v11 + 24);
  result = v15;
  *v12 = v15;
  *(v12 + 16) = v14;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  return result;
}

uint64_t type metadata accessor for DeepLinkWithReferrerIntent()
{
  result = qword_27F231E90;
  if (!qword_27F231E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeepLinkWithReferrerIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeepLinkWithReferrerIntent.referrerData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeepLinkWithReferrerIntent() + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_24E90BCC4(v5, v6);
}

JSValue __swiftcall DeepLinkWithReferrerIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_7;
  }

  isa = result.super.isa;
  v14 = sub_24F91F398();
  v7 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v14, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_24F92C328();
  v8 = type metadata accessor for DeepLinkWithReferrerIntent();
  LOBYTE(v15) = *(v1 + *(v8 + 20));
  v9 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v15}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24F92C328();
  v10 = (v1 + *(v8 + 24));
  v11 = v10[4];
  v12 = *(v10 + 40);
  v16 = *v10;
  v17 = *(v10 + 1);
  v18 = v10[3];
  LOBYTE(v19) = v12;

  sub_24E90BCC4(v11, v12);
  v13 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v16, v17, v18, v11, v19}];
  result.super.isa = swift_unknownObjectRelease();
  if (v13)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_24EE676E0()
{
  result = qword_27F231E88;
  if (!qword_27F231E88)
  {
    type metadata accessor for DeepLinkWithReferrerIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231E88);
  }

  return result;
}

uint64_t sub_24EE67774(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_24EE67854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_24EE67910()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE679F4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v36 = sub_24F927538();
  MEMORY[0x28223BE20](v36);
  v35 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9D8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v35 - v5);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231EB0);
  MEMORY[0x28223BE20](v37);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231EB8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  type metadata accessor for LockupContentView(0);
  v40 = 0x4044000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  v40 = 0x404B000000000000;
  sub_24F9237C8();
  v40 = 0x4051800000000000;
  sub_24F9237C8();
  v40 = 0x4055800000000000;
  sub_24F9237C8();
  type metadata accessor for LockupViewModel();
  sub_24EE681EC(&qword_27F2282E0, type metadata accessor for LockupViewModel);

  *v6 = sub_24F923C28();
  v6[1] = v12;
  v13 = sub_24F925808();
  v14 = v6 + *(v4 + 44);
  *v14 = v13;
  __asm { FMOV            V0.2D, #22.0 }

  *(v14 + 8) = _Q0;
  *(v14 + 24) = _Q0;
  v14[40] = 0;
  if (v38)
  {
    sub_24F927458();
  }

  v20 = sub_24F9238D8();
  v21 = sub_24F925808();
  sub_24E6009C8(v6, v8, &qword_27F22E9D8);
  v22 = &v8[*(v37 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = &v11[*(v9 + 36)];
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  v27 = *(*(v26 - 8) + 104);
  v27(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #28.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  sub_24E6009C8(v8, v11, &qword_27F231EB0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231EC0);
  v30 = v39;
  v31 = v39 + *(v29 + 36);
  v32 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v27((v31 + v32[6]), v25, v26);
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0x403C000000000000;
  *(v31 + v32[7]) = 1;
  v33 = v31 + v32[8];
  *v33 = 0;
  *(v33 + 8) = 1;
  return sub_24E6009C8(v11, v30, &qword_27F231EB8);
}

unint64_t sub_24EE67EBC()
{
  result = qword_27F231EA0;
  if (!qword_27F231EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231EA0);
  }

  return result;
}

unint64_t sub_24EE67FC0()
{
  result = qword_27F231EC8;
  if (!qword_27F231EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231EC0);
    sub_24EE6807C();
    sub_24EE681EC(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231EC8);
  }

  return result;
}

unint64_t sub_24EE6807C()
{
  result = qword_27F231ED0;
  if (!qword_27F231ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231EB8);
    sub_24EE68134();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231ED0);
  }

  return result;
}

unint64_t sub_24EE68134()
{
  result = qword_27F231ED8[0];
  if (!qword_27F231ED8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231EB0);
    sub_24ED3374C();
    sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F231ED8);
  }

  return result;
}

uint64_t sub_24EE681EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Locale.normalizedLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F718();
  if (!v9)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v8 == 29281 && v9 == 0xE200000000000000)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  sub_24F91F778();
  v11 = sub_24F91F718();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  if (!v13)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v11 == 29281 && v13 == 0xE200000000000000)
  {
  }

  else
  {
    v15 = sub_24F92CE08();

    if ((v15 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  return sub_24F91F778();
}

uint64_t static Locale.digitsAreArabic.getter()
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v0 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 6);
  if (v1)
  {
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();

    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v4 = [v2 decimal:v3 :0];

    if (v4)
    {
      v5 = sub_24F92B0D8();
      v7 = v6;

      if (v5 == 41433 && v7 == 0xA200000000000000)
      {

        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_24F92CE08();
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_24EE68544()
{
  sub_24F91F708();
  v0 = sub_24F92B358();

  return v0 & 1;
}

uint64_t Locale.baseWritingDirection.getter()
{
  sub_24F91F708();
  v0 = sub_24F91F728();

  v1 = 1;
  if (v0 != 2)
  {
    v1 = -1;
  }

  if (v0 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

double Locale.paragraphLineHeightMultiple.getter()
{
  sub_24F91F708();
  v0 = sub_24F92B358();

  v1 = 1.3;
  if ((v0 & 1) == 0)
  {
    sub_24F91F708();
    v2 = sub_24F92B358();

    if ((v2 & 1) == 0)
    {
      sub_24F91F708();
      v3 = sub_24F92B358();

      if (v3)
      {
        return 1.3;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v1;
}

uint64_t Locale.prefersSmallerText.getter()
{
  sub_24F91F708();
  v0 = sub_24F92B358();

  if (v0)
  {
    return 1;
  }

  sub_24F91F708();
  v1 = sub_24F92B358();

  if (v1)
  {
    return 1;
  }

  sub_24F91F708();
  v3 = sub_24F92B358();

  return v3 & 1;
}

uint64_t sub_24EE68754()
{
  v0 = sub_24F92CB88();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EE687A8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_24EE687D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24EE6884C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24EE688B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24EE68928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24EE68998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EE68754();
  *a1 = result;
  return result;
}

uint64_t sub_24EE689C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EE687A8(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t HttpActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = sub_24F91E968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A498();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v51 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222D10);
  sub_24F928FD8();
  sub_24F92A758();
  v44 = v54[0];
  v45 = v13;
  v47 = v9;
  v48 = a2;
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F2222A8);
  sub_24F92A758();
  v14 = v54[0];
  v46 = v54[0];
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  v52 = v54[0];
  v15 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v15 setIncludeClientVersions_];
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v17 = [v16 ams_activeiTunesAccount];

  [v15 setAccount_];
  [v15 setClientInfo_];
  v18 = [objc_allocWithZone(MEMORY[0x277CEE6E0]) init];
  [v15 setResponseDecoder_];

  v19 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  v20 = a1;
  swift_beginAccess();
  if (*(a1 + v19))
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [v15 setAnisetteType_];
  [v15 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C318);
  sub_24EC5C9B4();
  v22 = sub_24F91E8E8();
  (*(v6 + 8))(v8, v5);
  v23 = [v15 requestByEncodingRequest:v22 parameters:0];

  sub_24F92A9D8();
  v24 = sub_24F929638();
  v25 = MEMORY[0x277D21FB0];
  v55 = v24;
  v56 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v54);
  sub_24F929628();
  sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v54);
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v44;
  v55 = v24;
  v56 = v25;
  __swift_allocate_boxed_opaque_existential_1(v54);
  v44 = v27;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320);
  sub_24EC5D1A0();
  v43 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v54);
  v28 = v49;
  v29 = v50;
  v30 = v45;
  v31 = v47;
  (*(v49 + 16))(v50, v45, v47);
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = *(v53 + 16);
  *(v34 + 16) = v35;
  *(v34 + 24) = v20;
  (*(v28 + 32))(v34 + v32, v29, v31);
  v36 = v51;
  *(v34 + v33) = v51;
  v37 = v48;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v20;
  v38[4] = v36;
  v38[5] = v37;
  v39 = v36;
  v40 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v41 = sub_24F92BEF8();
  v55 = v40;
  v56 = MEMORY[0x277D225C0];
  v54[0] = v41;
  sub_24F92A958();

  (*(v28 + 8))(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v39;
}

uint64_t sub_24EE690A8()
{

  return swift_deallocObject();
}

uint64_t sub_24EE690E0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v24[0] = a5;
  v28 = a4;
  v25 = a3;
  v27 = sub_24F928AE8();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v11 = sub_24F92AAE8();
  v24[1] = __swift_project_value_buffer(v11, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F9283A8();
  v32 = type metadata accessor for HttpAction();
  v31[0] = a2;

  sub_24F928458();
  v29 = a2;
  sub_24E601704(v31, &qword_27F2129B0);
  sub_24F9283A8();
  v12 = sub_24F92A498();
  v32 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v25, v12);
  sub_24F928458();
  sub_24E601704(v31, &qword_27F2129B0);
  sub_24F9283A8();
  v32 = sub_24E69A5C4(0, qword_27F231F60);
  v31[0] = v26;
  v14 = v26;
  sub_24F928458();
  sub_24E601704(v31, &qword_27F2129B0);
  sub_24F92A598();

  v15 = v27;
  (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v27);
  sub_24F92A9C8();
  (*(v8 + 8))(v10, v15);
  v16 = [objc_opt_self() defaultCenter];
  v17 = sub_24F92B098();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v31[0] = 0x746C75736572;
  v31[1] = 0xE600000000000000;
  sub_24F92C7F8();
  *(inited + 96) = type metadata accessor for HttpActionImplementation.Result();
  *(inited + 72) = 0;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470);
  v19 = sub_24F92AE28();

  [v16 postNotificationName:v17 object:0 userInfo:v19];

  v20 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction;
  v21 = v29;
  result = swift_beginAccess();
  v23 = *(v21 + v20);
  if (v23)
  {
    v32 = type metadata accessor for Action();
    v33 = sub_24EE69E54(&qword_27F216DE8, type metadata accessor for Action);
    v31[0] = v23;
    type metadata accessor for HttpActionImplementation();
    swift_retain_n();
    swift_getWitnessTable();
    sub_24F1489C4(v31);

    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return result;
}

uint64_t sub_24EE696A8()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EE69798(id *a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_24F92A498() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EE690E0(a1, v7, v1 + v5, v8, v9, v3);
}

void sub_24EE69854(void *a1, uint64_t a2)
{
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v17 = type metadata accessor for HttpAction();
  v16[0] = a2;

  sub_24F928458();
  sub_24E601704(v16, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v5 = v20;
  v6 = v21;
  v17 = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704(v16, &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();
  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_24F92B098();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v16[0] = 0x746C75736572;
  v16[1] = 0xE600000000000000;
  sub_24F92C7F8();
  *(inited + 96) = type metadata accessor for HttpActionImplementation.Result();
  *(inited + 72) = 1;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470);
  v11 = sub_24F92AE28();

  [v8 postNotificationName:v9 object:0 userInfo:v11];

  v16[0] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0 || (v13 = v19, v16[0] = v19, sub_24EE69E54(&qword_27F212598, type metadata accessor for AMSError), sub_24F91F218(), v13, v19 != 6))
  {
    v14 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction;
    swift_beginAccess();
    v15 = *(a2 + v14);
    if (v15)
    {
      v17 = type metadata accessor for Action();
      v18 = sub_24EE69E54(&qword_27F216DE8, type metadata accessor for Action);
      v16[0] = v15;
      type metadata accessor for HttpActionImplementation();
      swift_retain_n();
      swift_getWitnessTable();
      sub_24F1489C4(v16);

      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }
}

uint64_t sub_24EE69D6C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE69E54(unint64_t *a1, void (*a2)(uint64_t))
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

int8x16_t FrameAccumulator.init(mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 17) = 0;
  v3 = vdup_n_s32(v2);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(xmmword_24F995DF0, vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *(a2 + 40) = result;
  *(a2 + 24) = result;
  *(a2 + 56) = xmmword_24F995DF0;
  return result;
}

Swift::Void __swiftcall FrameAccumulator.add(frame:with:)(__C::CGRect frame, JUMeasurements with)
{
  *(v2 + 17) = 1;
  if (*(v2 + 16))
  {

    sub_24EE6A1B8(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, with.var0, with.var1, with.var2, with.var3);
  }

  else
  {
    sub_24EE6A344(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, with.var0, with.var1, with.var2, with.var3, *v2, *(v2 + 8));
  }
}

uint64_t FrameAccumulator.layoutRect()()
{
  if (*(v0 + 17) == 1)
  {
    return sub_24F922138();
  }

  else
  {
    return sub_24F922168();
  }
}

JUMeasurements __swiftcall FrameAccumulator.measurements()()
{
  v1 = sub_24F922C28();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9221D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 17) == 1)
  {
    sub_24F922138();
  }

  else
  {
    sub_24F922168();
  }

  sub_24F922158();
  v10 = v9;
  sub_24F922158();
  v12 = v11;
  sub_24F9221C8();
  sub_24F922BE8();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v4, v1);
  sub_24F9221C8();
  sub_24F922BB8();
  v17 = v16;
  v15(v4, v1);
  (*(v6 + 8))(v8, v5);
  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

void sub_24EE6A1B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  if (CGRectGetMinY(*&a1) < v8[3])
  {
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    v8[3] = CGRectGetMinY(v19);
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (v8[4] < CGRectGetMaxY(v20))
  {
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v8[4] = CGRectGetMaxY(v21);
  }

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectGetMinX(v22) < v8[5])
  {
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    v8[5] = CGRectGetMinX(v23);
  }

  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  if (v8[6] < CGRectGetMaxX(v24))
  {
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v8[6] = CGRectGetMaxX(v25);
  }

  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v15 = CGRectGetMinY(v26) + a7;
  v16 = v8[7];
  if (v15 < v16)
  {
    v8[7] = v15;
    v16 = v15;
  }

  v17 = v8[8];
  if (v17 < v15)
  {
    v8[8] = v15;
    v17 = v15;
  }

  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v18 = CGRectGetMaxY(v27) - a8;
  if (v18 < v16)
  {
    v8[7] = v18;
  }

  if (v17 < v18)
  {
    v8[8] = v18;
  }
}

void sub_24EE6A344(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (v18[4] < CGRectGetMaxY(*&a1))
  {
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    if (CGRectGetMaxY(v29) <= a10)
    {
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      v18[4] = CGRectGetMaxY(v30);
    }
  }

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  if (v18[6] < CGRectGetMaxX(v31))
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    if (CGRectGetMaxX(v32) <= a9)
    {
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      v18[6] = CGRectGetMaxX(v33);
    }
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  v25 = CGRectGetMinY(v34) + a7;
  if (v25 > 0.0 && v25 <= a10)
  {
    if (v25 < v18[7])
    {
      v18[7] = v25;
    }

    if (v18[8] < v25)
    {
      v18[8] = v25;
    }
  }

  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v27 = CGRectGetMaxY(v35) - a8;
  if (v27 > 0.0 && v27 <= a10)
  {
    if (v27 < v18[7])
    {
      v18[7] = v27;
    }

    if (v18[8] < v27)
    {
      v18[8] = v27;
    }
  }
}

uint64_t sub_24EE6A4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
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

uint64_t sub_24EE6A50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FrameAccumulator.AccumulationMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t Artwork.toGameCenterArtwork()()
{
  v55 = sub_24F920168();
  v1 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F231FE8);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v40 - v4;
  v5 = sub_24F920118();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v40 - v9;
  v10 = sub_24F920098();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v44 = sub_24F920058();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;

  v41 = v18;
  sub_24F920038();

  v45 = v14;
  sub_24F920038();
  v48 = v0;
  v19 = *(v0 + 104);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v6 + 48);
    v51 = (v6 + 16);
    v52 = (v6 + 32);
    v53 = v1;
    v49 = v1 + 32;
    v50 = (v6 + 8);
    v22 = v19 + 49;
    v23 = MEMORY[0x277D84F90];
    v24 = v56;
    do
    {
      sub_24F9200F8();
      if ((*v21)(v24, 1, v5) == 1)
      {
        sub_24E601704(v24, qword_27F231FE8);
      }

      else
      {
        v25 = v5;
        v26 = v57;
        (*v52)(v57, v24, v25);
        v27 = v26;
        v5 = v25;
        (*v51)(v54, v27, v25);
        sub_24F920138();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_24E61613C(0, v23[2] + 1, 1, v23);
        }

        v29 = v23[2];
        v28 = v23[3];
        v24 = v56;
        if (v29 >= v28 >> 1)
        {
          v23 = sub_24E61613C(v28 > 1, v29 + 1, 1, v23);
        }

        (*v50)(v57, v25);
        v23[2] = v29 + 1;
        (*(v53 + 32))(v23 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v58, v55);
      }

      v22 += 24;
      --v20;
    }

    while (v20);
  }

  v58 = sub_24F9201A8();
  v31 = v41;
  v30 = v42;
  v32 = v44;
  (*(v42 + 16))(v40, v41, v44);
  v33 = v47;
  v34 = *(v48 + 48);
  v36 = v45;
  v35 = v46;
  (*(v46 + 16))(v43, v45, v47);
  v37 = v34;
  v38 = sub_24F920178();
  (*(v35 + 8))(v36, v33);
  (*(v30 + 8))(v31, v32);
  return v38;
}

uint64_t sub_24EE6ABC8(uint64_t a1)
{
  v2 = sub_24F920118();
  v3 = *(v2 - 8);
  v77 = v2;
  v78 = v3;
  MEMORY[0x28223BE20](v2);
  v76 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24F920168();
  v5 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = v59 - v11;
  v12 = sub_24F920098();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F920058();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F920188();
  v20 = sub_24F920048();
  v64 = v21;
  v65 = v20;
  (*(v17 + 8))(v19, v16);
  sub_24F9200B8();
  v23 = v22;
  v25 = v24;
  v63 = sub_24F920068();
  sub_24F9200A8();
  v62 = sub_24F920048();
  v27 = v26;
  (*(v13 + 8))(v15, v12);
  v28 = sub_24F920198();
  v29 = *(v28 + 16);
  if (v29)
  {
    v60 = v27;
    v61 = a1;
    v30 = v5 + 16;
    v75 = *(v5 + 16);
    v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v59[1] = v28;
    v32 = v28 + v31;
    v33 = *(v5 + 72);
    v73 = (v78 + 8);
    v74 = v33;
    v34 = (v5 + 8);
    v78 = MEMORY[0x277D84F90];
    v35 = v70;
    v36 = v30;
    do
    {
      v37 = v36;
      v75(v7, v32, v35);
      v38 = v76;
      sub_24F920148();
      sub_24F920108();
      (*v73)(v38, v77);
      v39 = sub_24F92CB88();

      if (v39 >= 4)
      {
        (*v34)(v7, v35);
      }

      else
      {
        v72 = sub_24F920158();
        v71 = v40;
        v41 = sub_24F920128();
        v42 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_24E61841C(0, *(v42 + 2) + 1, 1, v42);
        }

        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        if (v44 >= v43 >> 1)
        {
          v78 = sub_24E61841C((v43 > 1), v44 + 1, 1, v42);
        }

        else
        {
          v78 = v42;
        }

        v35 = v70;
        (*v34)(v7, v70);
        v45 = v78;
        *(v78 + 2) = v44 + 1;
        v46 = &v45[24 * v44];
        v46[32] = v39;
        *(v46 + 5) = v72;
        v46[48] = v71 & 1;
        v46[49] = v41 & 1;
      }

      v32 += v74;
      --v29;
      v36 = v37;
    }

    while (v29);

    v27 = v60;
    v47 = v78;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v48 = sub_24F929608();
  v49 = v69;
  (*(*(v48 - 8) + 56))(v69, 1, 1, v48);
  type metadata accessor for Artwork();
  v50 = swift_allocObject();
  *(v50 + 152) = 0u;
  *(v50 + 168) = 0u;
  *(v50 + 184) = 0;
  v51 = v66;
  sub_24F91F6A8();
  v52 = sub_24F91F668();
  v54 = v53;
  (*(v67 + 8))(v51, v68);
  v79 = v52;
  v80 = v54;
  sub_24F92C7F8();
  sub_24E643844(v49, v50 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics);
  v55 = v64;
  *(v50 + 16) = v65;
  *(v50 + 24) = v55;
  *(v50 + 32) = v23;
  *(v50 + 40) = v25;
  v56 = v62;
  *(v50 + 48) = v63;
  *(v50 + 56) = 0;
  *(v50 + 72) = v56;
  *(v50 + 80) = v27;
  *(v50 + 64) = 0;
  *(v50 + 104) = v47;
  v79 = v56;
  v80 = v27;
  v57 = Artwork.Crop.preferredContentMode.getter();

  sub_24E601704(v49, &qword_27F213E68);

  *(v50 + 88) = v57;
  *(v50 + 96) = 3;
  return v50;
}

uint64_t ReusableCellRegistration.init(reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ReusableCellRegistration.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReusableCellRegistration.configurationHandler.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24EE6B308()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

GameStoreKit::SearchResultCondensedBehavior_optional __swiftcall SearchResultCondensedBehavior.init(rawValue:)(Swift::String rawValue)
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

uint64_t SearchResultCondensedBehavior.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x737961776C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736E496E656877;
  }
}

uint64_t sub_24EE6B418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726576656ELL;
  if (v2 != 1)
  {
    v4 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74736E496E656877;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656C6C61;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74736E496E656877;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656C6C61;
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

unint64_t sub_24EE6B518()
{
  result = qword_27F232070;
  if (!qword_27F232070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232070);
  }

  return result;
}

uint64_t sub_24EE6B56C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE6B614()
{
  sub_24F92B218();
}

uint64_t sub_24EE6B6A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EE6B758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064656C6C61;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74736E496E656877;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EE6B7CC()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE6B85C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24EE6B9DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24EE6BB64()
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v0 <= 0x3F)
  {
    sub_24EE77628(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24EE7768C(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24EE77628(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EE6BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE6BE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

__n128 sub_24EE6BFC4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if ((sub_24E747804() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  if (*(v4 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions) != 1)
  {
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons;
  v6 = *(v4 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v6 >> 62)
  {
LABEL_34:
    v7 = sub_24F92C738();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24EAC4868(v7) != 5)
  {
    v5 = *(v4 + v5);
    if (v5)
    {
      v19 = MEMORY[0x277D84F90];
      if (v5 >> 62)
      {
        v13 = sub_24F92C738();
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13)
      {
        v14 = 0;
        v4 = MEMORY[0x277D84F90];
        do
        {
          v15 = v14;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x253052270](v15, v5);
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v16 = *(v5 + 8 * v15 + 32);

              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            swift_beginAccess();
            v17 = *(v16 + 48);
            if (v17)
            {
              break;
            }

            swift_endAccess();

            ++v15;
            if (v14 == v13)
            {
              goto LABEL_30;
            }
          }

          v18 = v17;

          sub_24F926BF8();
          swift_endAccess();

          MEMORY[0x253050F00]();
          if (*(v19 + 16) >= *(v19 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v4 = v19;
        }

        while (v14 != v13);
      }

      else
      {
        v4 = MEMORY[0x277D84F90];
      }

LABEL_30:
    }

    else
    {
      v4 = 0;
    }

    sub_24F3DFA60(v4, *(v2 + 25), v20);
  }

  else
  {
LABEL_7:
    sub_24E70D8E0(v20);
  }

  v8 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v8;
  *(a1 + 160) = v20[10];
  v9 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v9;
  v10 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v10;
  v11 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v11;
  result = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = result;
  return result;
}

__n128 sub_24EE6C264@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video))
  {
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork))
  {
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo))
  {
    goto LABEL_6;
  }

  if (*(v3 + 16))
  {
    goto LABEL_6;
  }

  v9 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v10 = *(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v10)
  {
    goto LABEL_6;
  }

  if (v10 >> 62)
  {
LABEL_36:
    if (sub_24F92C738() >= 1)
    {
      goto LABEL_11;
    }

LABEL_6:
    sub_24E70D8E0(v20);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_6;
  }

LABEL_11:
  v3 = *(v3 + v9);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      v9 = sub_24F92C738();
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      do
      {
        v13 = v11;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x253052270](v13, v3);
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v14 = *(v3 + 8 * v13 + 32);

            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          swift_beginAccess();
          v15 = *(v14 + 48);
          if (v15)
          {
            break;
          }

          swift_endAccess();

          ++v13;
          if (v11 == v9)
          {
            goto LABEL_32;
          }
        }

        v16 = v1;
        v17 = v15;

        sub_24F926BF8();
        swift_endAccess();

        MEMORY[0x253050F00]();
        if (*(v19 + 16) >= *(v19 + 24) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v12 = v19;
        v1 = v16;
      }

      while (v11 != v9);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

LABEL_32:
  }

  else
  {
    v12 = 0;
  }

  v18 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  sub_24F3DFA60(v12, *(v1 + *(v18 + 32)), v20);
LABEL_7:
  v4 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v4;
  *(a1 + 160) = v20[10];
  v5 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v5;
  v6 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v6;
  v7 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v7;
  result = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = result;
  return result;
}

__n128 sub_24EE6C54C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (!sub_24EA12978())
  {
    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  if (*(v4 + 88) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 80);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v5 >> 62)
  {
LABEL_34:
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24EAC4868(v6) != 5)
  {
    v12 = *(v4 + 80);
    if (v12)
    {
      v19 = MEMORY[0x277D84F90];
      if (v12 >> 62)
      {
        v13 = sub_24F92C738();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13)
      {
        v14 = 0;
        v4 = MEMORY[0x277D84F90];
        do
        {
          v15 = v14;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x253052270](v15, v12);
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v16 = *(v12 + 8 * v15 + 32);

              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            swift_beginAccess();
            v17 = *(v16 + 48);
            if (v17)
            {
              break;
            }

            swift_endAccess();

            ++v15;
            if (v14 == v13)
            {
              goto LABEL_30;
            }
          }

          v18 = v17;

          sub_24F926BF8();
          swift_endAccess();

          MEMORY[0x253050F00]();
          if (*(v19 + 16) >= *(v19 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v4 = v19;
        }

        while (v14 != v13);
      }

      else
      {
        v4 = MEMORY[0x277D84F90];
      }

LABEL_30:
    }

    else
    {
      v4 = 0;
    }

    sub_24F3DFA60(v4, *(v2 + qword_27F39B4B8), v20);
  }

  else
  {
LABEL_7:
    sub_24E70D8E0(v20);
  }

  v7 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v7;
  *(a1 + 160) = v20[10];
  v8 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v8;
  v9 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v9;
  v10 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v10;
  result = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = result;
  return result;
}

__n128 sub_24EE6C7E0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions) != 1)
  {
    goto LABEL_7;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v5 >> 62)
  {
LABEL_34:
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24EAC4868(v6) != 5)
  {
    v3 = *(v3 + v4);
    if (v3)
    {
      v19 = MEMORY[0x277D84F90];
      if (v3 >> 62)
      {
        v4 = sub_24F92C738();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        do
        {
          v14 = v12;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x253052270](v14, v3);
              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v15 = *(v3 + 8 * v14 + 32);

              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            swift_beginAccess();
            v16 = *(v15 + 48);
            if (v16)
            {
              break;
            }

            swift_endAccess();

            ++v14;
            if (v12 == v4)
            {
              goto LABEL_30;
            }
          }

          v17 = v1;
          v18 = v16;

          sub_24F926BF8();
          swift_endAccess();

          MEMORY[0x253050F00]();
          if (*(v19 + 16) >= *(v19 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v13 = v19;
          v1 = v17;
        }

        while (v12 != v4);
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

LABEL_30:
    }

    else
    {
      v13 = 0;
    }

    sub_24F3DFA60(v13, *(v1 + qword_27F39A5E8), v20);
  }

  else
  {
LABEL_7:
    sub_24E70D8E0(v20);
  }

  v7 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v7;
  *(a1 + 160) = v20[10];
  v8 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v8;
  v9 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v9;
  v10 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v10;
  result = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EE6CA9C@<X0>(uint64_t a1@<X8>)
{
  sub_24EE75504(v1, a1, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  v3 = type metadata accessor for GamesArticlePageEditorialStoryCardView(0);
  v4 = *(v1 + v3[5]);
  v5 = *(v1 + v3[6]);
  v6 = *(v1 + v3[7]);
  v7 = (v1 + v3[8]);
  v16 = *v7;
  v17 = v7[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927198();
  v8 = *(v1 + v3[9]);
  v9 = type metadata accessor for GamesArticlePageEditorialStoryCardView.CardView(0);
  *(a1 + v9[5]) = v4;
  *(a1 + v9[6]) = v5;
  *(a1 + v9[7]) = v6;
  v10 = a1 + v9[8];
  *v10 = v13;
  *(v10 + 8) = v14;
  *(v10 + 16) = v15;
  *(a1 + v9[9]) = v8;
  v11 = (a1 + v9[10]);
  sub_24F926F28();
  *v11 = v16;
  v11[1] = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321A0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24EE6CBFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v71 = type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0);
  MEMORY[0x28223BE20](v71);
  v4 = &v66[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321C8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v6 = &v66[-v5];
  v7 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321D0);
  MEMORY[0x28223BE20](v73);
  v78 = &v66[-v10];
  v11 = type metadata accessor for GamesArticlePageEditorialStoryCardView.CardView(0);
  v12 = *(v2 + v11[7]) == 1;
  v74 = v6;
  if (v12)
  {
    LODWORD(v72) = sub_24F1CE104();
  }

  else
  {
    LODWORD(v72) = 0;
  }

  v13 = *v2;
  sub_24EE75504(*v2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, &v9[v7[5]], type metadata accessor for EditorialStoryCard.Badge);
  sub_24E60169C(v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, &v9[v7[6]], &qword_27F215340);
  sub_24E60169C(v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, &v9[v7[7]], &qword_27F215340);
  v14 = *(type metadata accessor for ArticlePageEditorialStoryCardViewModel() + 24);
  v15 = *(v2 + v14) != 4;
  sub_24EE75504(v2 + v14, &v9[v7[9]], _s9ViewModelVMa);
  v16 = *(v2 + v11[6]);
  v17 = (v2 + v11[10]);
  v18 = *v17;
  v69 = v17[1];
  v79 = v18;
  v80 = v69;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F58();
  v19 = v84;
  v20 = v85;
  v21 = v2 + v11[8];
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v21) = v21[16];
  *&v84 = v22;
  *(&v84 + 1) = v23;
  LOBYTE(v85) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927198();
  v24 = v79;
  v25 = v80;
  v70 = v11;
  v67 = v72 & 1;
  *v9 = v72 & 1;
  v9[v7[8]] = v15;
  v9[v7[10]] = v16;
  v26 = v81;
  v27 = &v9[v7[11]];
  *v27 = v19;
  *(v27 + 2) = v20;
  v28 = &v9[v7[12]];
  *v28 = v24;
  *(v28 + 1) = v25;
  v28[16] = v26;
  v29 = v7[13];
  *&v9[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v64 = sub_24F9275C8();
  v65 = v30;
  BYTE8(v63) = 0;
  *&v63 = 0x7FF0000000000000;
  BYTE8(v62) = 1;
  *&v62 = 0;
  sub_24F9242E8();
  v31 = v9;
  v32 = v78;
  sub_24EE76AC4(v31, v78, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v33 = &v32[*(v73 + 36)];
  v34 = v89;
  v33[4] = v88;
  v33[5] = v34;
  v33[6] = v90;
  v35 = v85;
  *v33 = v84;
  v33[1] = v35;
  v36 = v87;
  v33[2] = v86;
  v33[3] = v36;
  v73 = sub_24F927618();
  v72 = v37;
  sub_24EE75504(v2, v4, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  v38 = *(v2 + v11[5]);
  v82 = v18;
  v83 = v69;

  sub_24F926F58();
  v39 = v79;
  v40 = v80;
  v41 = v81;
  v42 = v71;
  *&v4[*(v71 + 20)] = v38;
  v4[v42[6]] = v16;
  v4[v42[7]] = v67;
  v43 = &v4[v42[8]];
  *v43 = v39;
  v43[1] = v40;
  v43[2] = v41;
  v44 = v42[9];
  *&v4[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v45 = v42[10];
  *&v4[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v46 = v42[11];
  *&v4[v46] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v47 = sub_24F927618();
  v49 = v48;
  v50 = sub_24F926C38();
  MEMORY[0x28223BE20](v50);
  *&v66[-80] = 0x756F72676B636142;
  *&v66[-72] = 0xEA0000000000646ELL;
  *&v66[-64] = v47;
  *&v66[-56] = v49;
  v62 = 0u;
  v63 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321D8);
  sub_24EE754B4(&qword_27F2321E0, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  sub_24E6695B8();
  v64 = sub_24EE75A5C();
  v51 = v74;
  sub_24F926B08();

  sub_24EE77E88(v4, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  if (*(v2 + v70[9]) == 1)
  {
    v52 = sub_24F925808();
  }

  else
  {
    v52 = sub_24F925848();
  }

  v53 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321F0);
  v55 = v77;
  v56 = v77 + *(v54 + 36);
  v57 = sub_24F924058();
  (*(v75 + 32))(v56, v51, v76);
  v58 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321F8) + 36);
  *v58 = v57;
  *(v58 + 8) = v53;
  v59 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232200) + 36));
  v60 = v72;
  *v59 = v73;
  v59[1] = v60;
  return sub_24E6009C8(v78, v55, &qword_27F2321D0);
}

uint64_t sub_24EE6D420@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93FC20;
  sub_24F926C98();
  *(v5 + 32) = sub_24F9273C8();
  *(v5 + 40) = v6;
  sub_24F926C88();
  sub_24F926D08();

  *(v5 + 48) = sub_24F9273C8();
  *(v5 + 56) = v7;
  sub_24F926C88();
  sub_24F926D08();

  *(v5 + 64) = sub_24F9273C8();
  *(v5 + 72) = v8;
  sub_24F926C88();
  sub_24F926D08();

  *(v5 + 80) = sub_24F9273C8();
  *(v5 + 88) = v9;
  v10 = (v2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 32));
  v11 = v10[1];
  v12 = v10[2];
  v18[1] = *v10;
  v18[2] = v11;
  v18[3] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
  MEMORY[0x25304CAF0](v18, v13);
  v14 = 1.0 - (v18[0] + 100.0) / a2;
  result = sub_24F927898();
  *a1 = xmmword_24F9A8940;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x4000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0x3FE0000000000000;
  *(a1 + 56) = v14;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_24EE6D5E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v52) = a3;
  v54 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232248);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v51 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232250);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232258);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232260);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v53 = v51 - v19;
  *v8 = sub_24F927618();
  v8[1] = v20;
  v21 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232268) + 44);
  v51[1] = a1;
  sub_24EE6DBD4(a2, a1, v21);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v8, v12, &qword_27F232248);
  v22 = &v12[*(v10 + 44)];
  v23 = v81[7];
  *(v22 + 4) = v81[6];
  *(v22 + 5) = v23;
  *(v22 + 6) = v81[8];
  v24 = v81[3];
  *v22 = v81[2];
  *(v22 + 1) = v24;
  v25 = v81[5];
  *(v22 + 2) = v81[4];
  *(v22 + 3) = v25;
  v26 = a2;
  v27 = *(a2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 28));
  LOBYTE(a2) = v52;
  LOBYTE(v10) = v27 & ~v52;
  sub_24F923998();
  sub_24EE6D420(v63, v28);
  *&v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  sub_24F926F28();
  *(&v65[3] + 6) = v63[3];
  *(&v65[4] + 6) = v63[4];
  *(&v65[5] + 6) = v64[0];
  *(&v65[5] + 15) = *(v64 + 9);
  *(v65 + 6) = v63[0];
  *(&v65[1] + 6) = v63[1];
  v29 = v74;
  *(&v65[2] + 6) = v63[2];
  sub_24E6009C8(v12, v16, &qword_27F232250);
  v30 = &v16[*(v14 + 44)];
  v31 = v65[2];
  *(v30 + 50) = v65[3];
  v32 = v65[5];
  *(v30 + 66) = v65[4];
  *(v30 + 82) = v32;
  *(v30 + 97) = *(&v65[5] + 15);
  v33 = v65[1];
  *(v30 + 2) = v65[0];
  *(v30 + 18) = v33;
  *v30 = v10 & 1;
  v30[1] = 0;
  *(v30 + 34) = v31;
  *(v30 + 120) = v29;
  v34 = sub_24F927618();
  v36 = v35;
  sub_24EE6E06C(a2, v26, &v74);
  v52 = v74;
  v37 = v75;
  LOBYTE(v10) = BYTE8(v75);
  v38 = v53;
  sub_24E6009C8(v16, v53, &qword_27F232258);
  v39 = v38 + *(v18 + 44);
  *v39 = v52;
  *(v39 + 16) = v37;
  *(v39 + 24) = v10;
  *(v39 + 32) = v34;
  *(v39 + 40) = v36;
  v40 = sub_24F927618();
  v42 = v41;
  sub_24EE6E860(v26, &v56);
  *&v66 = v40;
  *(&v66 + 1) = v42;
  v71 = v60;
  v72 = v61;
  v73[0] = v62[0];
  *(v73 + 9) = *(v62 + 9);
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v43 = v38;
  v44 = v54;
  sub_24E6009C8(v43, v54, &qword_27F232260);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232270) + 36));
  v46 = v73[0];
  v45[6] = v72;
  v45[7] = v46;
  *(v45 + 121) = *(v73 + 9);
  v47 = v69;
  v45[2] = v68;
  v45[3] = v47;
  v48 = v71;
  v45[4] = v70;
  v45[5] = v48;
  v49 = v67;
  *v45 = v66;
  v45[1] = v49;
  *&v74 = v40;
  *(&v74 + 1) = v42;
  v79 = v60;
  v80 = v61;
  v81[0] = v62[0];
  *(v81 + 9) = *(v62 + 9);
  v75 = v56;
  v76 = v57;
  v77 = v58;
  v78 = v59;
  sub_24E60169C(&v66, &v55, &qword_27F232278);
  return sub_24E601704(&v74, &qword_27F232278);
}

uint64_t sub_24EE6DBD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_24F923F78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  MEMORY[0x28223BE20](v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 24);
  v43 = *(*a1 + 16);
  v39 = *(a1 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 24));
  if (v39 != 1)
  {
    v12 = *(v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo);
    if (!v12)
    {
      v13 = &OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork;
      goto LABEL_7;
    }

LABEL_5:
    v38 = 0;
    goto LABEL_8;
  }

  v12 = *(v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video);
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = &OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork;
LABEL_7:
  v38 = *(v10 + *v13);

  v12 = 0;
LABEL_8:
  sub_24E701D04(v43);

  sub_24F7699B0(v7);
  v14 = sub_24EE6C264(v44);
  (*(v5 + 8))(v7, v4, v14);
  v15 = *(v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v15)
  {
    goto LABEL_19;
  }

  if (v15 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x253052270](0, v15);

    v21 = *(v20 + 48);
    v21;
    swift_unknownObjectRelease();
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(*(v15 + 32) + 48);
    if (v17)
    {
      v18 = v17;
LABEL_15:
      v19 = sub_24F926BF8();
LABEL_20:
      sub_24F923998();
      *v9 = v43;
      *(v9 + 1) = v11;
      *(v9 + 2) = v38;
      *(v9 + 3) = v12;
      v22 = v44[1];
      *(v9 + 2) = v44[0];
      *(v9 + 3) = v22;
      v23 = v44[5];
      *(v9 + 6) = v44[4];
      *(v9 + 7) = v23;
      v24 = v44[3];
      *(v9 + 4) = v44[2];
      *(v9 + 5) = v24;
      v25 = v44[10];
      v26 = v44[8];
      *(v9 + 11) = v44[9];
      *(v9 + 12) = v25;
      v27 = v44[7];
      *(v9 + 8) = v44[6];
      *(v9 + 9) = v27;
      *(v9 + 10) = v26;
      *(v9 + 26) = v19;
      *(v9 + 27) = v28;
      *(v9 + 28) = v29;
      v9[232] = v39;
      type metadata accessor for ArticlePageViewModel();
      sub_24EE754B4(&qword_27F216838, type metadata accessor for ArticlePageViewModel);

      *(v9 + 30) = sub_24F923C28();
      *(v9 + 31) = v30;
      v31 = v40;
      v32 = *(v40 + 48);
      *&v9[v32] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v33 = *(v31 + 52);
      *&v9[v33] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      sub_24F923998();
      sub_24F923998();
      sub_24F9275F8();
      sub_24F9238C8();
      v34 = v42;
      sub_24EE76AC4(v9, v42, type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322A0);
      v35 = (v34 + *(result + 36));
      v36 = v44[12];
      *v35 = v44[11];
      v35[1] = v36;
      v35[2] = v44[13];
      return result;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_24EE6E06C(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = sub_24F91F6B8();
  v8 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v59 - v11;
  if ((a1 & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
LABEL_51:
    *a3 = v17;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    return;
  }

  v12 = *a2;
  v13 = *(*a2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v13)
  {
    v21 = sub_24EE6E7B8(MEMORY[0x277D84F90]);
    v3 = v22;
    v14 = v23;
    v25 = v24;
    if (v24)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_23:
      sub_24E6B8BA4(v21, v3, v14, v25);
      v30 = v29;
LABEL_30:
      swift_unknownObjectRelease();
LABEL_31:
      if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
      {
        v25 = sub_24F92C738();
        if (!v25)
        {
LABEL_46:

          v54 = MEMORY[0x277D84F90];
          goto LABEL_47;
        }
      }

      else
      {
        v25 = *(v30 + 16);
        if (!v25)
        {
          goto LABEL_46;
        }
      }

      v81 = MEMORY[0x277D84F90];
      v21 = &v81;
      sub_24F92C978();
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_unknownObjectRelease_n();
      v8 = v4;
    }

    v60 = v12;
    v61 = a2;
    v62 = a3;
    v33 = 0;
    v34 = v30;
    v66 = v30 & 0xC000000000000001;
    v63 = (v8 + 8);
    v67 = v25;
    v68 = v30;
    do
    {
      if (v66)
      {
        v41 = MEMORY[0x253052270](v33, v34);
      }

      else
      {
        v41 = *(v34 + 8 * v33 + 32);
      }

      sub_24E65864C(v41 + 112, v79);
      v42 = swift_dynamicCast();
      v38 = *(&v76 + 1);
      v36 = v76;
      v43 = *(v41 + 24);
      v69 = *(v41 + 16);
      v44 = *(v41 + 32);
      v45 = *(v41 + 40);
      v47 = *(v41 + 48);
      v46 = *(v41 + 56);
      v48 = *(v41 + 64);
      v72 = *(v41 + 88);
      v49 = *(v41 + 96);
      v70 = v48;
      v71 = v49;
      v50 = *(v41 + 104);
      sub_24E60169C(v41 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, v73, &qword_27F213E68);
      type metadata accessor for Artwork();
      v51 = swift_allocObject();
      *(v51 + 152) = 0u;
      *(v51 + 168) = 0u;
      *(v51 + 184) = 0;
      v52 = v46;

      v53 = v47;
      if (!v42 || !v38)
      {
        v35 = v64;
        sub_24F91F6A8();
        v36 = sub_24F91F668();
        v38 = v37;
        (*v63)(v35, v65);
      }

      ++v33;
      v74 = v36;
      v75 = v38;
      sub_24F92C7F8();

      v39 = v77;
      *(v51 + 112) = v76;
      *(v51 + 128) = v39;
      *(v51 + 144) = v78;
      v40 = v73;
      sub_24E60169C(v73, v51 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
      *(v51 + 16) = v69;
      *(v51 + 24) = v43;
      *(v51 + 32) = v44;
      *(v51 + 40) = v45;
      *(v51 + 48) = v47;
      *(v51 + 56) = v46;
      *(v51 + 72) = 24937;
      *(v51 + 80) = 0xE200000000000000;
      *(v51 + 64) = v70;
      *(v51 + 104) = v50;
      sub_24E601704(v40, &qword_27F213E68);
      *(v51 + 88) = v72;
      *(v51 + 96) = v71;
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v34 = v68;
    }

    while (v67 != v33);

    v54 = v81;
    a3 = v62;
    a2 = v61;
    v12 = v60;
LABEL_47:
    v55 = *(v12 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isArticle3DIconsFallbackEnabled);
    v56 = *(a2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 24));
    if (v55)
    {
      v57 = a2[1];
      *&v76 = v54;
      *(&v76 + 1) = v56;
      *&v77 = v57;
      BYTE8(v77) = 0;
      sub_24EE76C64();
      sub_24EE76CB8();
    }

    else
    {
      *&v76 = v54;
      *(&v76 + 1) = v56;
      *&v77 = 0;
      BYTE8(v77) = 1;
      sub_24EE76C64();
      sub_24EE76CB8();
    }

    sub_24F924E28();
    v17 = v79[0];
    v18 = v79[1];
    v19 = v79[2];
    v20 = v80;
    goto LABEL_51;
  }

  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v21 = *(*a2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
    }

    else
    {
      v21 = (v13 & 0xFFFFFFFFFFFFFF8);
    }

    v25 = sub_24F92C738();
    if (sub_24F92C738() < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v25 >= 3)
    {
      v58 = 3;
    }

    else
    {
      v58 = v25;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v16 = v58;
    }

    else
    {
      v16 = 3;
    }

    if (sub_24F92C738() >= v16)
    {
LABEL_8:
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (v16)
        {
          type metadata accessor for Artwork();
          swift_bridgeObjectRetain_n();
          sub_24F92C8C8();
          if (v16 != 1)
          {
            sub_24F92C8C8();
            if (v16 != 2)
            {
              sub_24F92C8C8();
            }
          }

          if (v14)
          {
LABEL_22:

            v21 = sub_24F92CB18();
            v3 = v26;
            v14 = v27;
            v25 = v28;

            if ((v25 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (v14)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v14 = 0;
      v21 = (v13 & 0xFFFFFFFFFFFFFF8);
      v3 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v25 = (2 * v16) | 1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      v4 = v8;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      if (!__OFSUB__(v25 >> 1, v14))
      {
        if (v32 == (v25 >> 1) - v14)
        {
          v30 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v8 = v4;
          if (v30)
          {
            goto LABEL_31;
          }

          v30 = MEMORY[0x277D84F90];
          goto LABEL_30;
        }

        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 >= v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_24EE6E7B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_24F92C738();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_24EAEACA0(v3, 0);
  sub_24EA10C44(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

double sub_24EE6E860@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 24)))
  {
    v3 = sub_24F926C88();
    sub_24F927618();
    sub_24F9242E8();
    v8 = v3;
    sub_24EE76C58(&v8);
  }

  else
  {
    sub_24F923998();
    sub_24EE6E9E0(v11);
    v8 = *v11;
    v9 = *&v11[8];
    v10 = *&v11[24];
    sub_24EE76BCC(&v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232280);
  sub_24E86BC28();
  sub_24EE76BD4();
  sub_24F924E28();
  v4 = v14;
  a2[4] = v13;
  a2[5] = v4;
  a2[6] = v15[0];
  *(a2 + 105) = *(v15 + 9);
  v5 = *&v11[16];
  *a2 = *v11;
  a2[1] = v5;
  result = *&v11[32];
  v7 = v12;
  a2[2] = *&v11[32];
  a2[3] = v7;
  return result;
}

double sub_24EE6E9E0@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  *(v3 + 32) = sub_24F9273C8();
  *(v3 + 40) = v4;
  sub_24F926C88();
  v5 = (v1 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 32));
  v6 = v5[1];
  v7 = v5[2];
  *&v14 = *v5;
  *(&v14 + 1) = v6;
  *&v15 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
  MEMORY[0x25304CAF0](&v13, v8);
  *(v3 + 48) = sub_24F9273C8();
  *(v3 + 56) = v9;
  sub_24F926C98();
  *(v3 + 64) = sub_24F9273C8();
  *(v3 + 72) = v10;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  result = *&v14;
  v12 = v15;
  *a1 = v14;
  *(a1 + 16) = v12;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_24EE6EB48@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = sub_24F923F78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F7699B0(v10);
  v11 = sub_24F1CE098();
  (*(v8 + 8))(v10, v7);
  sub_24EE75504(v3, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  result = sub_24EE76AC4(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  *(v13 + v12 + v6) = v11;
  *a2 = sub_24EE76B2C;
  a2[1] = v13;
  return result;
}

uint64_t sub_24EE6ED30@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232368);
  MEMORY[0x28223BE20](v71);
  v68 = (&v66 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v66 - v4;
  v69 = type metadata accessor for ColorGroup();
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232370);
  MEMORY[0x28223BE20](v70);
  v7 = &v66 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232378);
  MEMORY[0x28223BE20](v76);
  v9 = &v66 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232380);
  MEMORY[0x28223BE20](v77);
  v11 = &v66 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232388);
  MEMORY[0x28223BE20](v81);
  v84 = &v66 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232390);
  MEMORY[0x28223BE20](v83);
  v78 = &v66 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232398);
  MEMORY[0x28223BE20](v80);
  v15 = &v66 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323A0);
  MEMORY[0x28223BE20](v75);
  v17 = &v66 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323A8);
  MEMORY[0x28223BE20](v85);
  v79 = &v66 - v18;
  v19 = type metadata accessor for MixedMediaItemView();
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323B0);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v26 = *v1;
  if (*v1)
  {
    v27 = v1[1];
    v74 = v23;

    v28 = sub_24EE6FB74(v1);
    *&v21[*(v19 + 32)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    *&v21[*(v19 + 36)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
    swift_storeEnumTagMultiPayload();
    *v21 = v26;
    *(v21 + 1) = v27;
    v21[16] = 4;
    v21[17] = v28;
    v21[18] = HIBYTE(v28) & 1;
    sub_24EE754B4(&qword_27F2323D0, type metadata accessor for MixedMediaItemView);
    sub_24F9265E8();
    sub_24EE77E88(v21, type metadata accessor for MixedMediaItemView);
    sub_24E60169C(v25, v15, &qword_27F2323B0);
    swift_storeEnumTagMultiPayload();
    sub_24EE77A28();
    sub_24EE77B14();
    sub_24F924E28();
    sub_24E60169C(v17, v78, &qword_27F2323A0);
    swift_storeEnumTagMultiPayload();
    sub_24EE7799C();
    sub_24EE77D18();
    v29 = v79;
    sub_24F924E28();
    sub_24E601704(v17, &qword_27F2323A0);
    sub_24E60169C(v29, v84, &qword_27F2323A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24EE77910();
    sub_24E7EBBCC();
    sub_24F924E28();
    sub_24E601704(v29, &qword_27F2323A8);
    v30 = v25;
    v31 = &qword_27F2323B0;
    return sub_24E601704(v30, v31);
  }

  v32 = v72;
  v33 = v73;
  v67 = v9;
  v34 = v74;
  if (v1[3])
  {

    sub_24EE6FF1C(v35, v11);

    sub_24E60169C(v11, v15, &qword_27F232380);
    swift_storeEnumTagMultiPayload();
    sub_24EE77A28();
    sub_24EE77B14();
    sub_24F924E28();
    sub_24E60169C(v17, v78, &qword_27F2323A0);
    swift_storeEnumTagMultiPayload();
    sub_24EE7799C();
    sub_24EE77D18();
    v36 = v79;
    sub_24F924E28();
    sub_24E601704(v17, &qword_27F2323A0);
    sub_24E60169C(v36, v84, &qword_27F2323A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24EE77910();
    sub_24E7EBBCC();
    sub_24F924E28();

    sub_24E601704(v36, &qword_27F2323A8);
    v30 = v11;
    v31 = &qword_27F232380;
    return sub_24E601704(v30, v31);
  }

  if (v1[2])
  {

    sub_24EE6FF1C(v37, v11);
    v38 = v11;
    sub_24E60169C(v11, v7, &qword_27F232380);
    swift_storeEnumTagMultiPayload();
    sub_24EE77B14();
    sub_24EE77DA4();
    v39 = v67;
    sub_24F924E28();
    sub_24E60169C(v39, v78, &qword_27F232378);
    swift_storeEnumTagMultiPayload();
    sub_24EE7799C();
    sub_24EE77D18();
    v40 = v79;
    sub_24F924E28();
    sub_24E601704(v39, &qword_27F232378);
    sub_24E60169C(v40, v84, &qword_27F2323A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24EE77910();
    sub_24E7EBBCC();
    sub_24F924E28();

    sub_24E601704(v40, &qword_27F2323A8);
    v30 = v38;
    v31 = &qword_27F232380;
    return sub_24E601704(v30, v31);
  }

  v42 = v84;
  if (v1[26])
  {
    v43 = v7;
    v44 = v1[26];
    v45 = qword_27F20FEE0;

    if (v45 != -1)
    {
      swift_once();
    }

    ColorGrouping.colorGroup(for:)(v46);

    v47 = (*(v32 + 48))(v33, 1, v69) == 1;
    v48 = v78;
    v49 = v44;
    v50 = v71;
    v51 = v67;
    if (!v47)
    {
      v54 = v34;
      v55 = v79;
      v80 = v49;
      sub_24EE76AC4(v33, v54, type metadata accessor for ColorGroup);
      v56 = sub_24F927618();
      v57 = v68;
      *v68 = v56;
      *(v57 + 8) = v58;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
      sub_24F5955E8(v54, v57 + *(v59 + 44));
      v60 = sub_24F927618();
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_24F93A400;
      *(v63 + 32) = sub_24F926C88();
      *(v63 + 40) = sub_24F926C98();
      MEMORY[0x25304CD70](v63);
      sub_24F923BD8();
      v64 = v86;
      v65 = v57 + *(v50 + 36);
      *v65 = v60;
      *(v65 + 8) = v62;
      *(v65 + 16) = v64;
      *(v65 + 24) = v87;
      *(v65 + 40) = v88;
      sub_24E60169C(v57, v43, &qword_27F232368);
      swift_storeEnumTagMultiPayload();
      sub_24EE77B14();
      sub_24EE77DA4();
      sub_24F924E28();
      sub_24E60169C(v51, v48, &qword_27F232378);
      swift_storeEnumTagMultiPayload();
      sub_24EE7799C();
      sub_24EE77D18();
      sub_24F924E28();
      sub_24E601704(v51, &qword_27F232378);
      sub_24E60169C(v55, v84, &qword_27F2323A8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
      sub_24EE77910();
      sub_24E7EBBCC();
      sub_24F924E28();

      sub_24E601704(v55, &qword_27F2323A8);
      sub_24E601704(v57, &qword_27F232368);
      return sub_24EE77E88(v74, type metadata accessor for ColorGroup);
    }

    sub_24E601704(v33, &qword_27F2190D8);
    v42 = v84;
  }

  v52 = sub_24F926C98();
  v53 = sub_24F925808();
  *v42 = v52;
  *(v42 + 8) = v53;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
  sub_24EE77910();
  sub_24E7EBBCC();
  return sub_24F924E28();
}

uint64_t sub_24EE6FB74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  sub_24F769764(v16);
  v27 = a1;
  sub_24F769764(v13);
  v17 = *(v3 + 56);
  sub_24E6009C8(v16, v5, &qword_27F215598);
  sub_24E6009C8(v13, &v5[v17], &qword_27F215598);
  v18 = sub_24F925218();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(&v5[v17], 1, v18) != 1)
  {
    sub_24E60169C(&v5[v17], v10, &qword_27F215598);
    if ((*(v19 + 88))(v10, v18) == *MEMORY[0x277CE0558])
    {
      sub_24E601704(&v5[v17], &qword_27F215598);
      sub_24E601704(v5, &qword_27F215598);
      v21 = 0;
      v22 = 256;
      return v22 | v21;
    }

    (*(v19 + 8))(v10, v18);
  }

  if (v20(v5, 1, v18) != 1)
  {
    v23 = v26;
    sub_24E60169C(v5, v26, &qword_27F215598);
    if ((*(v19 + 88))(v23, v18) == *MEMORY[0x277CE0558])
    {
      sub_24E601704(&v5[v17], &qword_27F215598);
      sub_24E601704(v5, &qword_27F215598);
      v22 = 0;
      v21 = 0;
      return v22 | v21;
    }

    (*(v19 + 8))(v23, v18);
  }

  v24 = *(v27 + 232);
  sub_24E601704(v5, &unk_27F254F20);
  if (v24)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v21 = 1;
  return v22 | v21;
}

uint64_t sub_24EE6FF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = v6;
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkWithFallbackView();
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323F8);
  MEMORY[0x28223BE20](v63);
  v62 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323E8);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v61 - v12;
  v13 = sub_24F922348();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  if (a1)
  {

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v21 = *(v2 + 216);
    v20 = *(v2 + 224);
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v23 = v22;
    sub_24F9222E8();
    if (v23 >= v24)
    {
      sub_24F922308();
      v27 = v28;
      v26 = v21;
    }

    else
    {
      sub_24F9222F8();
      v26 = v25;
      v27 = v20;
    }

    v29 = *(v14 + 8);
    v29(v16, v13);
    v29(v19, v13);
  }

  else
  {
    v26 = *(v2 + 216);
    v27 = *(v2 + 224);
    v20 = v27;
    v21 = v26;
  }

  v30 = *(v2 + 176);
  v78 = *(v2 + 160);
  v79 = v30;
  v80 = *(v2 + 192);
  v31 = *(v2 + 112);
  v74 = *(v2 + 96);
  v75 = v31;
  v32 = *(v2 + 144);
  v76 = *(v2 + 128);
  v77 = v32;
  v33 = *(v2 + 48);
  v70 = *(v2 + 32);
  v71 = v33;
  v34 = *(v2 + 80);
  v72 = *(v2 + 64);
  v73 = v34;
  sub_24E60169C(&v70, v69, &qword_27F22E660);
  v35 = sub_24EE70534();
  v36 = v7[7];
  v37 = *MEMORY[0x277CE1010];
  v38 = sub_24F926E68();
  (*(*(v38 - 8) + 104))(&v9[v36], v37, v38);
  *v9 = a1;
  *(v9 + 1) = v26;
  *(v9 + 2) = v27;
  *(v9 + 3) = v21;
  *(v9 + 4) = v20;
  v39 = &v9[v7[8]];
  *v39 = 1;
  *(v39 + 24) = 0u;
  *(v39 + 40) = 0u;
  *(v39 + 56) = 0u;
  *(v39 + 72) = 0u;
  *(v39 + 88) = 0u;
  v39[104] = 0;
  *(v39 + 8) = 0u;
  v40 = &v9[v7[9]];
  v41 = v79;
  *(v40 + 8) = v78;
  *(v40 + 9) = v41;
  *(v40 + 10) = v80;
  v42 = v75;
  *(v40 + 4) = v74;
  *(v40 + 5) = v42;
  v43 = v77;
  *(v40 + 6) = v76;
  *(v40 + 7) = v43;
  v44 = v71;
  *v40 = v70;
  *(v40 + 1) = v44;
  v45 = v73;
  *(v40 + 2) = v72;
  *(v40 + 3) = v45;
  *&v9[v7[10]] = 0;
  v9[v7[11]] = v35 & 1;

  sub_24F927618();
  sub_24F9242E8();
  v46 = v9;
  v47 = v62;
  sub_24EE76AC4(v46, v62, type metadata accessor for ArtworkWithFallbackView);
  v48 = (v47 + *(v63 + 36));
  v49 = v69[5];
  v48[4] = v69[4];
  v48[5] = v49;
  v48[6] = v69[6];
  v50 = v69[1];
  *v48 = v69[0];
  v48[1] = v50;
  v51 = v69[3];
  v48[2] = v69[2];
  v48[3] = v51;
  sub_24EE77C5C();
  v52 = v64;
  sub_24F9265E8();
  sub_24E601704(v47, &qword_27F2323F8);
  v53 = v67;
  sub_24EE75504(v3, v67, type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView);
  v54 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v55 = (v65 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  sub_24EE76AC4(v53, v56 + v54, type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView);
  *(v56 + v55) = a1;
  v57 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v57 = v26;
  v57[1] = v27;
  v58 = v68;
  sub_24E6009C8(v52, v68, &qword_27F2323E8);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232380) + 36));
  *v59 = sub_24EE7818C;
  v59[1] = v56;
  v59[2] = 0;
  v59[3] = 0;
}

uint64_t sub_24EE70534()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v2 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_24EE70614@<Q0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322B0);
  v33[1] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322B8);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v35 = v33 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322C0) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = v33 - v15;
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0x4038000000000000;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322C8);
  sub_24EE70AFC(v1, &v9[*(v16 + 44)]);
  v17 = v1[*(v3 + 48)];
  v34 = v1;
  if (v17)
  {
    v18 = 0x4040000000000000;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = 0x4040000000000000;
  }

  else
  {
    v19 = 0x403E000000000000;
  }

  v20 = sub_24F925808();
  sub_24E6009C8(v9, v12, &qword_27F2322A8);
  v21 = &v12[*(v10 + 36)];
  *v21 = v20;
  *(v21 + 1) = 0;
  *(v21 + 2) = v18;
  *(v21 + 3) = v19;
  *(v21 + 4) = v18;
  v21[40] = 0;
  sub_24EE75504(v1, v6, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_24EE76AC4(v6, v23 + v22, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  sub_24EE76DA0();
  v24 = v35;
  sub_24F9267B8();

  sub_24E601704(v12, &qword_27F2322B0);
  sub_24EE75504(v34, v6, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v25 = swift_allocObject();
  sub_24EE76AC4(v6, v25 + v22, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v26 = v36;
  (*(v38 + 32))(v36, v24, v39);
  v27 = (v26 + *(v37 + 44));
  *v27 = sub_24E7BC238;
  v27[1] = 0;
  v27[2] = sub_24EE77214;
  v27[3] = v25;
  sub_24F9275C8();
  sub_24F9242E8();
  v28 = v40;
  sub_24E6009C8(v26, v40, &qword_27F2322C0);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322E0) + 36);
  v30 = v46;
  *(v29 + 64) = v45;
  *(v29 + 80) = v30;
  *(v29 + 96) = v47;
  v31 = v42;
  *v29 = v41;
  *(v29 + 16) = v31;
  result = v44;
  *(v29 + 32) = v43;
  *(v29 + 48) = result;
  return result;
}

uint64_t sub_24EE70AFC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v82 - v7;
  v90 = type metadata accessor for EditorialComponentOverlayView();
  MEMORY[0x28223BE20](v90);
  v94 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322E8);
  v95 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v96 = &v82 - v17;
  v89 = sub_24F923E98();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  v25 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  v29 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v86 = &v82 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322F8);
  MEMORY[0x28223BE20](v34 - 8);
  v93 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v38 = *a1;
  v99 = a1;
  v100 = &v82 - v39;
  v97 = v9;
  v98 = a2;
  if (v38 == 1)
  {
    v83 = v15;
    v40 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
    sub_24EE75504(&a1[v40[5]], v27, type metadata accessor for EditorialStoryCard.Badge);
    sub_24E60169C(&a1[v40[6]], v24, &qword_27F215340);
    sub_24E60169C(&a1[v40[7]], v21, &qword_27F215340);
    v41 = 0;
    v42 = a1[v40[10]];
    if ((v42 & 1) == 0)
    {
      v43 = v87;
      sub_24F769788(v87);
      v44 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v88 + 8))(v43, v89);
      if (v44)
      {
        v41 = 0x4089000000000000;
      }

      else
      {
        v41 = 0x407E000000000000;
      }
    }

    *&v31[v28[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    sub_24EE76AC4(v27, v31, type metadata accessor for EditorialStoryCard.Badge);
    sub_24E6009C8(v24, &v31[v28[5]], &qword_27F215340);
    sub_24E6009C8(v21, &v31[v28[6]], &qword_27F215340);
    v31[v28[7]] = v42 ^ 1;
    v45 = &v31[v28[8]];
    *v45 = v41;
    v45[8] = v42;
    v46 = v28[10];
    sub_24F925898();
    v47 = sub_24F9258E8();

    *&v31[v46] = v47;
    v48 = v28[11];
    sub_24F925888();
    v49 = sub_24F9258E8();

    *&v31[v48] = v49;
    v50 = v28[12];
    sub_24F9259D8();
    v51 = sub_24F9258E8();

    *&v31[v50] = v51;
    v52 = v86;
    sub_24EE76AC4(v31, v86, type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack);
    v53 = v52;
    v54 = v100;
    sub_24EE76AC4(v53, v100, type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack);
    (*(v29 + 56))(v54, 0, 1, v28);
    v15 = v83;
    v9 = v97;
  }

  else
  {
    (*(v29 + 56))(v37);
  }

  v55 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  v56 = v99;
  v57 = 1;
  v58 = v96;
  if (v99[*(v55 + 32)] == 1)
  {
    v59 = v55;
    v60 = v94;
    sub_24EE75504(&v99[*(v55 + 36)], v94, _s9ViewModelVMa);
    v61 = v56[*(v59 + 40)];
    v62 = v90;
    v63 = *(v90 + 32);
    *(v60 + v63) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    *(v60 + v62[5]) = 1;
    *(v60 + v62[6]) = v61 ^ 1;
    *(v60 + v62[7]) = 1;
    if ((v61 & 1) == 0)
    {
      v64 = v87;
      sub_24F769788(v87);
      v65 = v88;
      v66 = *(v88 + 56);
      v67 = v84;
      v68 = v89;
      v66(v84, 1, 1, v89);
      v69 = v85;
      v66(v85, 1, 1, v68);
      sub_24EF13DC0(v67, v69);
      sub_24E601704(v69, &qword_27F2140C0);
      sub_24E601704(v67, &qword_27F2140C0);
      (*(v65 + 8))(v64, v68);
    }

    sub_24F927618();
    v9 = v97;
    sub_24F9242E8();
    v70 = v92;
    sub_24EE76AC4(v94, v92, type metadata accessor for EditorialComponentOverlayView);
    v71 = (v70 + *(v9 + 36));
    v72 = v106;
    v71[4] = v105;
    v71[5] = v72;
    v71[6] = v107;
    v73 = v102;
    *v71 = v101;
    v71[1] = v73;
    v74 = v104;
    v71[2] = v103;
    v71[3] = v74;
    v75 = v70;
    v76 = v91;
    sub_24E6009C8(v75, v91, &qword_27F2322E8);
    sub_24E6009C8(v76, v58, &qword_27F2322E8);
    v57 = 0;
  }

  (*(v95 + 56))(v58, v57, 1, v9);
  v77 = v100;
  v78 = v93;
  sub_24E60169C(v100, v93, &qword_27F2322F8);
  sub_24E60169C(v58, v15, &qword_27F2322F0);
  v79 = v98;
  sub_24E60169C(v78, v98, &qword_27F2322F8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232300);
  sub_24E60169C(v15, v79 + *(v80 + 48), &qword_27F2322F0);
  sub_24E601704(v58, &qword_27F2322F0);
  sub_24E601704(v77, &qword_27F2322F8);
  sub_24E601704(v15, &qword_27F2322F0);
  return sub_24E601704(v78, &qword_27F2322F8);
}

uint64_t sub_24EE7163C()
{
  type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  return sub_24F927178();
}

void *sub_24EE716B0(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v9 = *v3;
  v10 = v5;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
  result = MEMORY[0x25304CAF0](&v8);
  if (v2 != v8)
  {
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v8 = v2;
    return sub_24F927178();
  }

  return result;
}

uint64_t sub_24EE71758@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  sub_24E60169C(v1 + *(v10 + 36), v9, &qword_27F216950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F9234D8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24EE71964@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v102 = sub_24F925508();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232098);
  MEMORY[0x28223BE20](v90);
  v98 = v83 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320A0);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = v83 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320A8);
  MEMORY[0x28223BE20](v88);
  v87 = v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320B0);
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = v83 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320B8);
  MEMORY[0x28223BE20](v91);
  v95 = v83 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320C0);
  MEMORY[0x28223BE20](v96);
  v97 = v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v10);
  v12 = v83 - v11;
  v13 = sub_24F9234D8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v83 - v18;
  sub_24EE71758(v83 - v18);
  (*(v14 + 104))(v16, *MEMORY[0x277CDF3C0], v13);
  v20 = sub_24F9234C8();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  v22 = sub_24F9251C8();
  v23 = *(v10 + 36);
  v24 = sub_24F927748();
  v25 = MEMORY[0x277CE13B8];
  if ((v20 & 1) == 0)
  {
    v25 = MEMORY[0x277CE13B0];
  }

  (*(*(v24 - 8) + 104))(&v12[v23], *v25, v24);
  *v12 = v22;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v26 = sub_24F9238D8();
  v27 = sub_24F924C98();
  v107 = 0;
  v89 = v26;
  sub_24EE72724(v103, v26, v105);
  v121 = *&v105[192];
  v122[0] = *&v105[208];
  *(v122 + 9) = *&v105[217];
  v117 = *&v105[128];
  v118 = *&v105[144];
  v120 = *&v105[176];
  v119 = *&v105[160];
  v113 = *&v105[64];
  v114 = *&v105[80];
  v116 = *&v105[112];
  v115 = *&v105[96];
  v109 = *v105;
  v110 = *&v105[16];
  v112 = *&v105[48];
  v111 = *&v105[32];
  v123[12] = *&v105[192];
  v124[0] = *&v105[208];
  *(v124 + 9) = *&v105[217];
  v123[8] = *&v105[128];
  v123[9] = *&v105[144];
  v123[11] = *&v105[176];
  v123[10] = *&v105[160];
  v123[4] = *&v105[64];
  v123[5] = *&v105[80];
  v123[7] = *&v105[112];
  v123[6] = *&v105[96];
  v123[0] = *v105;
  v123[1] = *&v105[16];
  v123[3] = *&v105[48];
  v123[2] = *&v105[32];
  sub_24E60169C(&v109, v104, &qword_27F2320C8);
  sub_24E601704(v123, &qword_27F2320C8);
  *(&v106[11] + 7) = v120;
  *(&v106[12] + 7) = v121;
  *(&v106[13] + 7) = v122[0];
  v106[14] = *(v122 + 9);
  *(&v106[7] + 7) = v116;
  *(&v106[8] + 7) = v117;
  *(&v106[9] + 7) = v118;
  *(&v106[10] + 7) = v119;
  *(&v106[3] + 7) = v112;
  *(&v106[4] + 7) = v113;
  *(&v106[5] + 7) = v114;
  *(&v106[6] + 7) = v115;
  *(v106 + 7) = v109;
  *(&v106[1] + 7) = v110;
  *(&v106[2] + 7) = v111;
  v28 = v107;
  v83[1] = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  sub_24F927628();
  v82 = v29;
  sub_24F9242E8();
  *&v108[55] = v124[5];
  *&v108[71] = v124[6];
  *&v108[87] = v124[7];
  *&v108[103] = v125;
  *&v108[7] = v124[2];
  *&v108[23] = v124[3];
  *&v108[39] = v124[4];
  *&v105[193] = v106[11];
  *&v105[209] = v106[12];
  *&v105[225] = v106[13];
  *&v105[241] = v106[14];
  *&v105[129] = v106[7];
  *&v105[145] = v106[8];
  *&v105[161] = v106[9];
  *&v105[177] = v106[10];
  *&v105[65] = v106[3];
  *&v105[81] = v106[4];
  *&v105[97] = v106[5];
  *&v105[113] = v106[6];
  *&v105[17] = v106[0];
  *v105 = v27;
  *&v105[8] = 0;
  v105[16] = v28;
  *&v105[33] = v106[1];
  *&v105[49] = v106[2];
  *&v105[321] = *&v108[64];
  *&v105[337] = *&v108[80];
  *&v105[353] = *&v108[96];
  *&v105[257] = *v108;
  *&v105[273] = *&v108[16];
  *&v105[289] = *&v108[32];
  *&v105[305] = *&v108[48];
  *&v105[368] = *(&v125 + 1);
  v30 = sub_24F9275B8();
  v32 = v31;
  sub_24F926CA8();
  v33 = memcpy(v104, v105, sizeof(v104));
  v83[0] = v83;
  MEMORY[0x28223BE20](v33);
  v83[-10] = 0x6361745374786554;
  v83[-9] = 0xE90000000000006BLL;
  v83[-8] = v30;
  v83[-7] = v32;
  v79 = 0u;
  v80 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320D8);
  sub_24EE74CD4();
  sub_24E6695B8();
  v81 = sub_24EE74D8C();
  v34 = v84;
  sub_24F926B08();
  sub_24E601704(v105, &qword_27F2320D0);

  v81 = sub_24F927628();
  v82 = v35;
  BYTE8(v80) = 1;
  *&v80 = 0;
  BYTE8(v79) = 1;
  *&v79 = 0;
  sub_24F9242E8();
  v36 = v87;
  (*(v85 + 32))(v87, v34, v86);
  v37 = (v36 + *(v88 + 36));
  v38 = *&v104[16];
  *v37 = *v104;
  v37[1] = v38;
  v39 = *&v104[96];
  v37[5] = *&v104[80];
  v37[6] = v39;
  v40 = *&v104[64];
  v37[3] = *&v104[48];
  v37[4] = v40;
  v37[2] = *&v104[32];
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v41 = sub_24F9248C8();
  __swift_project_value_buffer(v41, qword_27F39F078);
  sub_24EE74E44();
  v42 = v92;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v36, &qword_27F2320A8);
  v43 = *(sub_24F924258() + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_24F924B38();
  v46 = v98;
  (*(*(v45 - 8) + 104))(&v98[v43], v44, v45);
  __asm { FMOV            V0.2D, #12.0 }

  *v46 = _Q0;
  *(v46 + *(sub_24F924248() + 20)) = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v52 = sub_24F926D08();

  *(v46 + *(v90 + 52)) = v52;
  v53 = v95;
  sub_24EE74F54(v46, v95);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232108);
  v56 = v93;
  v55 = v94;
  (*(v93 + 16))(v53 + v54[9], v42, v94);
  v57 = v53 + v54[10];
  *v57 = sub_24F923398() & 1;
  *(v57 + 8) = v58;
  *(v57 + 16) = v59 & 1;
  v60 = v53 + v54[11];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v61 = qword_27F24E488;
  v62 = sub_24F923398();
  v64 = v63;
  v66 = v65;
  v67 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232110) + 36);
  *v67 = v61;
  *(v67 + 8) = v62 & 1;
  *(v67 + 16) = v64;
  *(v67 + 24) = v66 & 1;
  LOBYTE(v61) = sub_24F923398();
  v69 = v68;
  LOBYTE(v64) = v70;
  sub_24E601704(v46, &qword_27F232098);
  (*(v56 + 8))(v42, v55);
  v71 = v53 + *(v91 + 36);
  *v71 = v61 & 1;
  *(v71 + 8) = v69;
  *(v71 + 16) = v64 & 1;
  v72 = v97;
  v73 = &v97[*(v96 + 36)];
  *v73 = 0u;
  *(v73 + 1) = 0u;
  v73[32] = sub_24F923398() & 1;
  *(v73 + 5) = v74;
  v73[48] = v75 & 1;
  v76 = *(type metadata accessor for FocusableItemScrollViewOffsetModifier() + 24);
  *&v73[v76] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8);
  swift_storeEnumTagMultiPayload();
  sub_24E6009C8(v53, v72, &qword_27F2320B8);
  v77 = v99;
  sub_24F9254E8();
  sub_24EE74FD4();
  sub_24F926678();

  (*(v100 + 8))(v77, v102);
  return sub_24E601704(v72, &qword_27F2320C0);
}

uint64_t sub_24EE72724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v162 = &v152 - v10;
  v11 = sub_24F91EF78();
  v170 = *(v11 - 8);
  v171 = v11;
  MEMORY[0x28223BE20](v11);
  v169 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v168 = &v152 - v14;
  v15 = sub_24F91EE38();
  v166 = *(v15 - 8);
  v167 = v15;
  MEMORY[0x28223BE20](v15);
  v165 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F91F008();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v164 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v152 - v21;
  MEMORY[0x28223BE20](v22);
  v155 = &v152 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v152 - v25;
  v27 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v174 + 1) = a1;
  sub_24EE75504(a1, v29, type metadata accessor for EditorialStoryCard.Badge);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138);
  v31 = (*(*(v30 - 8) + 48))(v29, 2, v30);
  v154 = a2;
  v163 = a3;
  *&v174 = v18;
  v172 = v17;
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = sub_24F927628();
      v34 = v33;
      v35 = sub_24F925828();
      sub_24F923318();
      *&v199 = 0x4030000000000000;
      *(&v199 + 1) = v32;
      *&v200 = v34;
      *(&v200 + 1) = a2;
      LOBYTE(v201) = v35;
      *(&v201 + 1) = v36;
      *&v202[0] = v37;
      *(&v202[0] + 1) = v38;
      *&v202[1] = v39;
      BYTE8(v202[1]) = 0;
      v194 = v201;
      v195[0] = v202[0];
      *(v195 + 9) = *(v202 + 9);
      v192 = v199;
      v193 = v200;
      LOBYTE(v176) = 0;
      BYTE9(v195[1]) = 0;

      sub_24E60169C(&v199, &v182, &qword_27F232140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232140);
      sub_24EE751D4();
      sub_24F924E28();
      v184 = v190;
      v185[0] = v191[0];
      *(v185 + 10) = *(v191 + 10);
      v182 = v188;
      v183 = v189;
      LOBYTE(v180[0]) = 1;
      BYTE10(v185[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232168);
      sub_24EE75318();
      sub_24EE75428();
      sub_24F924E28();
      sub_24E601704(&v199, &qword_27F232140);
      v205 = v194;
      v206[0] = v195[0];
      *(v206 + 11) = *(v195 + 11);
      v203 = v192;
      v204 = v193;
    }

    else
    {
      LOBYTE(v199) = 0;
      BYTE9(v195[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232180);
      sub_24EE753A4();
      sub_24F924E28();
      v194 = v184;
      v195[0] = v185[0];
      *(v195 + 10) = *(v185 + 10);
      v192 = v182;
      v193 = v183;
      LOBYTE(v188) = 0;
      BYTE10(v195[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232168);
      sub_24EE75318();
      sub_24EE75428();
      sub_24F924E28();
    }

    v48 = v17;
    v49 = v18;
    v50 = v173;
  }

  else
  {
    v156 = v8;
    (*(v18 + 32))(v26, v29, v17);
    v40 = v165;
    sub_24F91EE18();
    sub_24EE754B4(&qword_27F225C00, MEMORY[0x277CC8B30]);
    v42 = v167;
    v41 = v168;
    sub_24F92BB88();
    v43 = v169;
    sub_24F92BC08();
    sub_24EE754B4(&unk_27F22D350, MEMORY[0x277CC8C20]);
    v44 = v171;
    v45 = sub_24F92AFF8();
    v46 = *(v170 + 8);
    v46(v43, v44);
    v46(v41, v44);
    (*(v166 + 8))(v40, v42);
    if (v45)
    {
      v201 = 0u;
      v202[0] = 0u;
      v199 = 0u;
      v200 = 0u;
      v47 = 0;
    }

    else
    {
      (*(v174 + 16))(v155, v26, v172);
      v51 = sub_24F925DF8();
      v53 = v52;
      v55 = v54;
      type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
      v56 = sub_24F925C98();
      v58 = v57;
      v60 = v59;
      sub_24E600B40(v51, v53, v55 & 1);

      *&v192 = v154;
      v161 = sub_24F925C58();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      sub_24E600B40(v56, v58, v60 & 1);

      v67 = sub_24F925828();
      sub_24F923318();
      LOBYTE(v192) = v64 & 1;
      LOBYTE(v182) = 0;
      *&v199 = v161;
      *(&v199 + 1) = v62;
      LOBYTE(v200) = v64 & 1;
      *(&v200 + 1) = v66;
      LOBYTE(v201) = v67;
      *(&v201 + 1) = v68;
      *&v202[0] = v69;
      *(&v202[0] + 1) = v70;
    }

    v50 = v173;
    *&v202[1] = v47;
    BYTE8(v202[1]) = 0;
    v194 = v201;
    v195[0] = v202[0];
    *(v195 + 9) = *(v202 + 9);
    v192 = v199;
    v193 = v200;
    LOBYTE(v176) = 1;
    BYTE9(v195[1]) = 1;
    sub_24E60169C(&v199, &v182, &qword_27F232180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232180);
    sub_24EE753A4();
    sub_24F924E28();
    v184 = v190;
    v185[0] = v191[0];
    *(v185 + 10) = *(v191 + 10);
    v182 = v188;
    v183 = v189;
    LOBYTE(v180[0]) = 0;
    BYTE10(v185[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232168);
    sub_24EE75318();
    sub_24EE75428();
    sub_24F924E28();
    sub_24E601704(&v199, &qword_27F232180);
    v49 = v174;
    v48 = v172;
    (*(v174 + 8))(v26, v172);
    v205 = v194;
    v206[0] = v195[0];
    *(v206 + 11) = *(v195 + 11);
    v203 = v192;
    v204 = v193;
    v8 = v156;
  }

  v71 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  v72 = *(&v174 + 1);
  v73 = v162;
  sub_24E60169C(*(&v174 + 1) + *(v71 + 20), v162, &qword_27F215340);
  v74 = *(v49 + 48);
  v75 = v74(v73, 1, v48);
  v157 = v71;
  if (v75 == 1)
  {
    sub_24E601704(v73, &qword_27F215340);
    v173 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v158 = 0;
  }

  else
  {
    v153 = v74;
    v156 = v8;
    (*(v49 + 32))(v50, v73, v48);
    v76 = v165;
    sub_24F91EE18();
    sub_24EE754B4(&qword_27F225C00, MEMORY[0x277CC8B30]);
    v77 = v167;
    v78 = v168;
    sub_24F92BB88();
    v79 = v169;
    sub_24F92BC08();
    sub_24EE754B4(&unk_27F22D350, MEMORY[0x277CC8C20]);
    v80 = v171;
    v81 = sub_24F92AFF8();
    v82 = *(v170 + 8);
    v82(v79, v80);
    v82(v78, v80);
    (*(v166 + 8))(v76, v77);
    if (v81)
    {
      v49 = v174;
      v48 = v172;
      (*(v174 + 8))(v173, v172);
      v173 = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      v160 = 0;
      v158 = 0;
      v8 = v156;
      v71 = v157;
      v72 = *(&v174 + 1);
    }

    else
    {
      (*(v174 + 16))(v155, v173, v172);
      v83 = sub_24F925DF8();
      v85 = v84;
      v87 = v86;
      v71 = v157;
      v88 = sub_24F925C98();
      v90 = v89;
      LODWORD(v162) = v91;
      v93 = v92;
      sub_24E600B40(v83, v85, v87 & 1);
      v72 = *(&v174 + 1);

      v94 = v174;
      v48 = v172;
      (*(v174 + 8))(v173, v172);
      KeyPath = swift_getKeyPath();
      v96 = v162 & 1;
      v173 = v88;
      v162 = v90;
      v160 = v96;
      sub_24E5FD138(v88, v90, v96);
      v161 = v93;

      v159 = KeyPath;

      v158 = 3;
      v49 = v94;
      v8 = v156;
    }

    v74 = v153;
  }

  sub_24E60169C(v72 + *(v71 + 24), v8, &qword_27F215340);
  if (v74(v8, 1, v48) == 1)
  {
    sub_24E601704(v8, &qword_27F215340);
  }

  else
  {
    (*(v49 + 32))(v164, v8, v48);
    v97 = v165;
    sub_24F91EE18();
    sub_24EE754B4(&qword_27F225C00, MEMORY[0x277CC8B30]);
    v98 = v167;
    v99 = v168;
    sub_24F92BB88();
    v100 = v169;
    sub_24F92BC08();
    sub_24EE754B4(&unk_27F22D350, MEMORY[0x277CC8C20]);
    v101 = v171;
    v102 = sub_24F92AFF8();
    v103 = *(v170 + 8);
    v103(v100, v101);
    v103(v99, v101);
    (*(v166 + 8))(v97, v98);
    if ((v102 & 1) == 0)
    {
      (*(v174 + 16))(v155, v164, v48);
      v115 = sub_24F925DF8();
      v117 = v116;
      v119 = v118;
      v120 = sub_24F925C98();
      v122 = v121;
      v124 = v123;
      sub_24E600B40(v115, v117, v119 & 1);

      *&v192 = v154;
      v104 = sub_24F925C58();
      v105 = v125;
      v127 = v126;
      v106 = v128;
      sub_24E600B40(v120, v122, v124 & 1);

      v107 = swift_getKeyPath();
      v129 = sub_24F925818();
      sub_24F923318();
      v111 = v130;
      v112 = v131;
      v113 = v132;
      v114 = v133;
      (*(v174 + 8))(v164, v172);
      LOBYTE(v192) = v127 & 1;
      LOBYTE(v182) = 0;
      LOBYTE(v188) = 0;
      v110 = v127 & 1;
      v109 = v129;
      v108 = 2;
      goto LABEL_22;
    }

    (*(v174 + 8))(v164, v48);
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
LABEL_22:
  v170 = v106;
  v171 = v110;
  v172 = v108;
  *&v174 = 0;
  *(&v174 + 1) = v109;
  v178 = v205;
  v179[0] = v206[0];
  *(v179 + 11) = *(v206 + 11);
  v180[2] = v205;
  v181[0] = v206[0];
  *(v181 + 11) = *(v206 + 11);
  v176 = v203;
  v177 = v204;
  v180[0] = v203;
  v180[1] = v204;
  *(v191 + 11) = *(v206 + 11);
  v190 = v205;
  v191[0] = v206[0];
  v188 = v203;
  v189 = v204;
  *&v182 = v104;
  *(&v182 + 1) = v105;
  *&v183 = v110;
  *(&v183 + 1) = v106;
  *&v184 = v107;
  *(&v184 + 1) = v108;
  *&v185[0] = 0;
  *(&v185[0] + 1) = v109;
  *&v185[1] = v111;
  *(&v185[1] + 1) = v112;
  *&v186 = v113;
  *(&v186 + 1) = v114;
  v187 = 0;
  sub_24E60169C(v180, &v192, &qword_27F232190);
  v134 = v173;
  v135 = v161;
  v136 = v162;
  v138 = v159;
  v137 = v160;
  v139 = v107;
  v140 = v105;
  v141 = v158;
  sub_24ED1A264(v173, v162, v160, v161);
  sub_24E60169C(&v182, &v192, &qword_27F232198);
  sub_24ED1A2B4(v134, v136, v137, v135);
  *&v175[55] = v185[0];
  *&v175[71] = v185[1];
  *&v175[87] = v186;
  v175[103] = v187;
  *&v175[7] = v182;
  *&v175[23] = v183;
  *&v175[39] = v184;
  v142 = v188;
  v143 = v189;
  v144 = v191[1];
  v145 = v163;
  *(v163 + 48) = v191[0];
  *(v145 + 64) = v144;
  v146 = v190;
  *(v145 + 16) = v143;
  *(v145 + 32) = v146;
  *v145 = v142;
  *(v145 + 80) = v134;
  *(v145 + 88) = v136;
  *(v145 + 96) = v137;
  *(v145 + 104) = v135;
  *(v145 + 112) = v138;
  *(v145 + 120) = v141;
  *(v145 + 128) = 0;
  v147 = *&v175[16];
  *(v145 + 129) = *v175;
  *(v145 + 145) = v147;
  v148 = *&v175[48];
  *(v145 + 161) = *&v175[32];
  v149 = *&v175[64];
  v150 = *&v175[80];
  *(v145 + 225) = *&v175[96];
  *(v145 + 209) = v150;
  *(v145 + 193) = v149;
  *(v145 + 177) = v148;
  *&v192 = v104;
  *(&v192 + 1) = v140;
  *&v193 = v171;
  *(&v193 + 1) = v170;
  *&v194 = v139;
  *(&v194 + 1) = v172;
  v195[0] = v174;
  *&v195[1] = v111;
  *(&v195[1] + 1) = v112;
  v196 = v113;
  v197 = v114;
  v198 = 0;
  sub_24E601704(&v192, &qword_27F232198);
  sub_24ED1A2B4(v134, v136, v137, v135);
  v201 = v178;
  v202[0] = v179[0];
  *(v202 + 11) = *(v179 + 11);
  v199 = v176;
  v200 = v177;
  return sub_24E601704(&v199, &qword_27F232190);
}

__n128 sub_24EE739D4@<Q0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  if (a1 >> 62)
  {
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v15;
  if (v15 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15 != 2;
  }

  v18 = sub_24EAE3FA0(v17);
  v63 = sub_24E8E8C20(v18);

  if (a2)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 0.15;
  }

  v62 = v16;
  if (v16 == 4)
  {
    v60 = 0;
    v20 = 0;
    v59 = -1065353216;
  }

  else if (v16)
  {
    v60 = 0;
    v59 = 0;
    v20 = 1;
  }

  else
  {
    v59 = 0;
    v20 = 0;
    v60 = 0x3ECCCCCDBFD9999ALL;
  }

  v65 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232340);
  sub_24F926F28();
  *&v21 = *&v64[0];
  v58 = v21;
  v57 = *(&v64[0] + 1);
  v65 = 0;
  sub_24F926F28();
  v56 = v64[0];
  sub_24F91FD28();
  swift_allocObject();
  v65 = sub_24F91FBD8();
  sub_24F926F28();
  v54 = *(&v64[0] + 1);
  v55 = *&v64[0];
  sub_24F91FAC8();
  v65 = MEMORY[0x253045440](0);
  sub_24F926F28();
  v52 = *(&v64[0] + 1);
  v53 = *&v64[0];
  sub_24F91FBE8();
  swift_allocObject();
  v65 = sub_24F91FBD8();
  sub_24F926F28();
  v50 = *(&v64[0] + 1);
  v51 = *&v64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = -1119379610;
  *(inited + 36) = v19;
  *(inited + 40) = 1097125811;
  sub_24F0EF924(inited);
  v49 = v23;
  swift_setDeallocating();
  v66 = v20;
  v24 = v63;
  v25 = v63[2];
  if (v25)
  {
    v45 = v14;
    v46 = a2;
    v47 = a4;
    v48 = a3;
    v65 = MEMORY[0x277D84F90];
    sub_24F458020(0, v25, 0);
    v26 = v65;
    v27 = v25;
    v28 = (v24 + 4);
    v44 = v27;
    v29 = v27;
    do
    {
      sub_24E615E00(v28, v64);
      sub_24E615E00(v64, v11);
      sub_24F91F6A8();
      __swift_destroy_boxed_opaque_existential_1(v64);
      v65 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_24F458020(v30 > 1, v31 + 1, 1);
        v26 = v65;
      }

      *(v26 + 16) = v31 + 1;
      sub_24E6009C8(v11, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, &qword_27F21EFE0);
      v28 += 40;
      --v29;
    }

    while (v29);

    a3 = v48;
    a4 = v47;
    LOBYTE(a2) = v46;
    v14 = v45;
    v25 = v44;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v32 = 0.49;
  if (v61 == 1)
  {
    v32 = 0.8;
  }

  v33 = 0.9;
  if (a2)
  {
    v33 = 1.0;
  }

  v34 = v33 * v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  v36 = sub_24EE1DF70(v14, v25);
  v37 = v66;
  *a4 = v49;
  *(a4 + 16) = v60;
  *(a4 + 24) = v59;
  *(a4 + 28) = v37;
  *&v38 = v58;
  *(&v38 + 1) = v57;
  result = v56;
  *(a4 + 32) = v38;
  *(a4 + 48) = result;
  *(a4 + 64) = v36;
  *(a4 + 72) = 0;
  v40 = v54;
  *(a4 + 80) = v55;
  *(a4 + 88) = v40;
  v41 = v52;
  *(a4 + 96) = v53;
  *(a4 + 104) = v41;
  v42 = v50;
  *(a4 + 112) = v51;
  *(a4 + 120) = v42;
  *(a4 + 128) = v62;
  *(a4 + 132) = v34;
  *(a4 + 136) = v34 * 200.0;
  *(a4 + 144) = 0;
  *(a4 + 152) = v26;
  *(a4 + 160) = a3;
  return result;
}

uint64_t sub_24EE7400C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 1.25;
  if (v4 != 2)
  {
    v5 = 1.15;
  }

  if (v4 == 1)
  {
    v6 = 1.5;
  }

  else
  {
    v6 = v5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = sub_24F925828();
  result = sub_24F923318();
  *a2 = a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_24EE77908;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  *(a2 + 64) = v13;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_24EE7412C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, a3 * 88.0, a3 * 88.0);
  v6 = type metadata accessor for SwiftUIArtworkView(0);
  v7 = v6[6];
  v8 = *MEMORY[0x277CE1010];
  v9 = sub_24F926E68();
  (*(*(v9 - 8) + 104))(a2 + v7, v8, v9);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v4;
  *(a2 + 24) = 1;
  v10 = a2 + v6[7];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(a2 + v6[8]) = 2;
  *(a2 + v6[9]) = 1;

  *&v19 = sub_24F92C7A8();
  *(&v19 + 1) = v11;
  MEMORY[0x253050C20](64, 0xE100000000000000);
  v12 = sub_24F92BA38();
  MEMORY[0x253050C20](v12);

  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232350) + 52)) = v19;
  sub_24F927618();
  sub_24F9238C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232358) + 36));
  *v13 = v19;
  v13[1] = v20;
  v13[2] = v21;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232360) + 36));
  v15 = *(sub_24F924258() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = v5;
  v14[1] = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8);
  *(v14 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24EE74388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v21 = sub_24F927618();
  v23 = v22;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v24 = byte_27F39DBC1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a5;
  *&v34 = a8;
  *(&v34 + 1) = a9;
  *&v35 = a10;
  *(&v35 + 1) = a11;
  *&v36 = a6;
  *(&v36 + 1) = 0x4024000000000000;
  LOBYTE(v37) = byte_27F39DBC1;
  *(&v37 + 1) = v21;
  v38 = v23;
  sub_24EE75504(a1, a7, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  v25 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321D8) + 36);
  v26 = v37;
  *(v25 + 64) = v36;
  *(v25 + 80) = v26;
  *(v25 + 96) = v38;
  v27 = v33;
  *v25 = v32;
  *(v25 + 16) = v27;
  v28 = v35;
  *(v25 + 32) = v34;
  *(v25 + 48) = v28;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  *&v39[4] = a8;
  *&v39[5] = a9;
  *&v39[6] = a10;
  *&v39[7] = a11;
  v39[8] = a6;
  v39[9] = 0x4024000000000000;
  v40 = v24;
  v41 = v21;
  v42 = v23;

  sub_24E60169C(&v32, v31, &qword_27F215A98);
  return sub_24E601704(v39, &qword_27F215A98);
}

void *sub_24EE74580@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v20 = sub_24F927618();
  v22 = v21;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  *&v29 = a8;
  *(&v29 + 1) = a9;
  *&v30 = a10;
  *(&v30 + 1) = a11;
  *&v31 = a6;
  *(&v31 + 1) = 0x4024000000000000;
  LOBYTE(v32) = byte_27F39DBC1;
  *(&v32 + 1) = v20;
  v33 = v22;
  memcpy(__dst, a1, 0x178uLL);
  *&__dst[55] = v31;
  *&__dst[57] = v32;
  *&__dst[47] = v27;
  *&__dst[49] = v28;
  *&__dst[51] = v29;
  *&__dst[53] = v30;
  __dst[59] = v22;
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = a4;
  v34[3] = a5;
  *&v34[4] = a8;
  *&v34[5] = a9;
  *&v34[6] = a10;
  *&v34[7] = a11;
  v34[8] = a6;
  v34[9] = 0x4024000000000000;
  v35 = byte_27F39DBC1;
  v36 = v20;
  v37 = v22;

  sub_24E60169C(a1, v39, &qword_27F2320D0);
  sub_24E60169C(&v27, v39, &qword_27F215A98);
  sub_24E601704(v34, &qword_27F215A98);
  memcpy(v38, __dst, sizeof(v38));
  memcpy(v39, __dst, sizeof(v39));
  sub_24E60169C(v38, v26, &qword_27F2320D8);
  sub_24E601704(v39, &qword_27F2320D8);
  return memcpy(a7, v38, 0x1E0uLL);
}

uint64_t sub_24EE7481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v21 = sub_24F927618();
  v23 = v22;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v24 = byte_27F39DBC1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a5;
  *&v34 = a8;
  *(&v34 + 1) = a9;
  *&v35 = a10;
  *(&v35 + 1) = a11;
  *&v36 = a6;
  *(&v36 + 1) = 0x4024000000000000;
  LOBYTE(v37) = byte_27F39DBC1;
  *(&v37 + 1) = v21;
  v38 = v23;
  sub_24E60169C(a1, a7, &qword_27F215968);
  v25 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215970) + 36);
  v26 = v37;
  *(v25 + 64) = v36;
  *(v25 + 80) = v26;
  *(v25 + 96) = v38;
  v27 = v33;
  *v25 = v32;
  *(v25 + 16) = v27;
  v28 = v35;
  *(v25 + 32) = v34;
  *(v25 + 48) = v28;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  *&v39[4] = a8;
  *&v39[5] = a9;
  *&v39[6] = a10;
  *&v39[7] = a11;
  v39[8] = a6;
  v39[9] = 0x4024000000000000;
  v40 = v24;
  v41 = v21;
  v42 = v23;

  sub_24E60169C(&v32, v31, &qword_27F215A98);
  return sub_24E601704(v39, &qword_27F215A98);
}

uint64_t sub_24EE74A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v21 = sub_24F927618();
  v23 = v22;
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v24 = byte_27F39DBC1;
  *&v33 = a2;
  *(&v33 + 1) = a3;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  *&v35 = a8;
  *(&v35 + 1) = a9;
  *&v36 = a10;
  *(&v36 + 1) = a11;
  *&v37 = a6;
  *(&v37 + 1) = 0x4024000000000000;
  LOBYTE(v38) = byte_27F39DBC1;
  *(&v38 + 1) = v21;
  v39 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AB0);
  (*(*(v25 - 8) + 16))(a7, a1, v25);
  v26 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AB8) + 36);
  v27 = v38;
  *(v26 + 64) = v37;
  *(v26 + 80) = v27;
  *(v26 + 96) = v39;
  v28 = v34;
  *v26 = v33;
  *(v26 + 16) = v28;
  v29 = v36;
  *(v26 + 32) = v35;
  *(v26 + 48) = v29;
  v40[0] = a2;
  v40[1] = a3;
  v40[2] = a4;
  v40[3] = a5;
  *&v40[4] = a8;
  *&v40[5] = a9;
  *&v40[6] = a10;
  *&v40[7] = a11;
  v40[8] = a6;
  v40[9] = 0x4024000000000000;
  v41 = v24;
  v42 = v21;
  v43 = v23;

  sub_24E60169C(&v33, v32, &qword_27F215A98);
  return sub_24E601704(v40, &qword_27F215A98);
}

void *sub_24EE74C30@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = *(v2 + 10);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_24EE74580(__dst, v4, v5, v6, v7, v12, a2, v8, v9, v10, v11);
}

unint64_t sub_24EE74CD4()
{
  result = qword_27F2320E0;
  if (!qword_27F2320E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D0);
    sub_24E602068(&qword_27F2320E8, &qword_27F2320F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2320E0);
  }

  return result;
}

unint64_t sub_24EE74D8C()
{
  result = qword_27F2320F8;
  if (!qword_27F2320F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D8);
    sub_24EE74CD4();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2320F8);
  }

  return result;
}

unint64_t sub_24EE74E44()
{
  result = qword_27F232100;
  if (!qword_27F232100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320D8);
    sub_24EE74CD4();
    sub_24E6695B8();
    sub_24EE74D8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232100);
  }

  return result;
}

uint64_t sub_24EE74F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE74FD4()
{
  result = qword_27F232118;
  if (!qword_27F232118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320C0);
    sub_24EE75090();
    sub_24EE754B4(&qword_27F2201B0, type metadata accessor for FocusableItemScrollViewOffsetModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232118);
  }

  return result;
}

unint64_t sub_24EE75090()
{
  result = qword_27F232120;
  if (!qword_27F232120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320B8);
    sub_24EE7511C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232120);
  }

  return result;
}

unint64_t sub_24EE7511C()
{
  result = qword_27F232128;
  if (!qword_27F232128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232110);
    sub_24E602068(&qword_27F232130, &qword_27F232108);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232128);
  }

  return result;
}

unint64_t sub_24EE751D4()
{
  result = qword_27F232148;
  if (!qword_27F232148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232140);
    sub_24EE75260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232148);
  }

  return result;
}

unint64_t sub_24EE75260()
{
  result = qword_27F232150;
  if (!qword_27F232150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232158);
    sub_24EB3D608();
    sub_24E602068(&qword_27F2293F0, &qword_27F2293F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232150);
  }

  return result;
}

unint64_t sub_24EE75318()
{
  result = qword_27F232170;
  if (!qword_27F232170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232160);
    sub_24EE753A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232170);
  }

  return result;
}

unint64_t sub_24EE753A4()
{
  result = qword_27F232178;
  if (!qword_27F232178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232180);
    sub_24E6AF8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232178);
  }

  return result;
}

unint64_t sub_24EE75428()
{
  result = qword_27F232188;
  if (!qword_27F232188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232168);
    sub_24EE751D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232188);
  }

  return result;
}

uint64_t sub_24EE754B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE75504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE755A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EE75670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24EE75764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  if (v11 <= 0x3F)
  {
    type metadata accessor for ArticlePageViewModel();
    if (v12 <= 0x3F)
    {
      sub_24EE7768C(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v13 <= 0x3F)
      {
        a7(319, a4, a5, a6);
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EE75878()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2320C0);
  sub_24EE74FD4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE758E0()
{
  result = qword_27F2321B8;
  if (!qword_27F2321B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321A0);
    sub_24EE754B4(&qword_27F2321C0, type metadata accessor for GamesArticlePageEditorialStoryCardView.CardView);
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2321B8);
  }

  return result;
}

unint64_t sub_24EE75A5C()
{
  result = qword_27F2321E8;
  if (!qword_27F2321E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321D8);
    sub_24EE754B4(&qword_27F2321E0, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2321E8);
  }

  return result;
}

uint64_t sub_24EE75B58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24EE75CF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_24EE75E84()
{
  type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArticlePageViewModel();
    if (v1 <= 0x3F)
    {
      sub_24EE7768C(319, &qword_27F228FF8, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24EE77628(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24E684120();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EE75FC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = _s9ViewModelVMa();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[11] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24EE761B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = _s9ViewModelVMa();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[13];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24EE76384()
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v0 <= 0x3F)
  {
    sub_24EE77628(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _s9ViewModelVMa();
      if (v2 <= 0x3F)
      {
        sub_24EE7768C(319, &qword_27F228FF8, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24EE7768C(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_24EE77628(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_24EE7652C()
{
  result = qword_27F232228;
  if (!qword_27F232228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321F0);
    sub_24EE765E4();
    sub_24E602068(&qword_27F232240, &qword_27F232200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232228);
  }

  return result;
}

unint64_t sub_24EE765E4()
{
  result = qword_27F232230;
  if (!qword_27F232230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2321D0);
    sub_24EE754B4(&qword_27F232238, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232230);
  }

  return result;
}

uint64_t sub_24EE766D8()
{
  v1 = type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(type metadata accessor for ArticlePageEditorialStoryCardViewModel() + 24);

  v5 = v4 + *(_s9ViewModelVMa() + 24);
  v6 = type metadata accessor for IconRowViewModel();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v8(v5 + *(v6 + 20), v7);
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923F78();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F925218();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F925218();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v3 + v14, 1, v15))
    {
      (*(v16 + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE76AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE76B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = *(v6 + *(v5 + 64));

  return sub_24EE6D5E8(a1, v6, v7, a2);
}

unint64_t sub_24EE76BD4()
{
  result = qword_27F232288;
  if (!qword_27F232288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232288);
  }

  return result;
}

unint64_t sub_24EE76C64()
{
  result = qword_27F232290;
  if (!qword_27F232290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232290);
  }

  return result;
}

unint64_t sub_24EE76CB8()
{
  result = qword_27F232298;
  if (!qword_27F232298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232298);
  }

  return result;
}

uint64_t sub_24EE76D30()
{
  type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);

  return sub_24EE7163C();
}

unint64_t sub_24EE76DA0()
{
  result = qword_27F2322D0;
  if (!qword_27F2322D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322B0);
    sub_24E602068(&qword_27F2322D8, &qword_27F2322A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2322D0);
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138);
  if (!(*(*(v5 - 8) + 48))(v3 + v4, 2, v5))
  {
    v6 = sub_24F91F008();
    (*(*(v6 - 8) + 8))(v3 + v4, v6);
  }

  v7 = v1[6];
  v8 = sub_24F91F008();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v11 = v1[7];
  if (!v10(v3 + v11, 1, v8))
  {
    (*(v9 + 8))(v3 + v11, v8);
  }

  v12 = v3 + v1[9];

  v13 = v12 + *(_s9ViewModelVMa() + 24);
  v14 = type metadata accessor for IconRowViewModel();
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v16 = *(*(v15 - 8) + 8);
    v16(v13, v15);
    v16(v13 + *(v14 + 20), v15);
  }

  v17 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F923E98();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_24EE77214(double *a1)
{
  v3 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE716B0(a1, v4);
}

uint64_t sub_24EE772C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 248);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE77390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 248) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EE77440()
{
  sub_24EE7768C(319, &qword_27F2191D0, &type metadata for MixedMediaItem, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24EE77628(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24EE77628(319, &qword_27F232318, type metadata accessor for Video, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24EE7768C(319, &qword_27F22E608, &type metadata for EditorialGradientBackgroundViewModel, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24EE7768C(319, &qword_27F220EC0, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
            if (v5 <= 0x3F)
            {
              sub_24E68408C();
              if (v6 <= 0x3F)
              {
                sub_24E684120();
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

void sub_24EE77628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24EE7768C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24EE77724()
{
  result = qword_27F232330;
  if (!qword_27F232330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322E0);
    sub_24EE777B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232330);
  }

  return result;
}

unint64_t sub_24EE777B0()
{
  result = qword_27F232338;
  if (!qword_27F232338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2322B0);
    sub_24EE76DA0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21A718, &qword_27F21A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232338);
  }

  return result;
}

unint64_t sub_24EE77910()
{
  result = qword_27F2323B8;
  if (!qword_27F2323B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323A8);
    sub_24EE7799C();
    sub_24EE77D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323B8);
  }

  return result;
}

unint64_t sub_24EE7799C()
{
  result = qword_27F2323C0;
  if (!qword_27F2323C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323A0);
    sub_24EE77A28();
    sub_24EE77B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323C0);
  }

  return result;
}

unint64_t sub_24EE77A28()
{
  result = qword_27F2323C8;
  if (!qword_27F2323C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323B0);
    sub_24EE754B4(&qword_27F2323D0, type metadata accessor for MixedMediaItemView);
    sub_24EE754B4(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323C8);
  }

  return result;
}

unint64_t sub_24EE77B14()
{
  result = qword_27F2323D8;
  if (!qword_27F2323D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232380);
    sub_24EE77BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323D8);
  }

  return result;
}

unint64_t sub_24EE77BA0()
{
  result = qword_27F2323E0;
  if (!qword_27F2323E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323E8);
    sub_24EE77C5C();
    sub_24EE754B4(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323E0);
  }

  return result;
}

unint64_t sub_24EE77C5C()
{
  result = qword_27F2323F0;
  if (!qword_27F2323F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2323F8);
    sub_24EE754B4(&qword_27F22E6B8, type metadata accessor for ArtworkWithFallbackView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2323F0);
  }

  return result;
}

unint64_t sub_24EE77D18()
{
  result = qword_27F232400;
  if (!qword_27F232400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232378);
    sub_24EE77B14();
    sub_24EE77DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232400);
  }

  return result;
}

unint64_t sub_24EE77DA4()
{
  result = qword_27F232408;
  if (!qword_27F232408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232368);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    sub_24E602068(&qword_27F232410, &qword_27F255470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232408);
  }

  return result;
}

uint64_t sub_24EE77E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE77EE8()
{
  v1 = type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2)
  {
  }

  if (*(v2 + 4))
  {
  }

  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(&v2[v3], 1, v4))
    {
      (*(v5 + 8))(&v2[v3], v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 52);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(&v2[v6], 1, v7))
    {
      (*(v8 + 8))(&v2[v6], v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE7818C()
{
  v1 = *(type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24F403A04(*(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_24EE7823C()
{
  result = qword_27F232418;
  if (!qword_27F232418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232418);
  }

  return result;
}

unint64_t sub_24EE78294()
{
  result = qword_27F232420;
  if (!qword_27F232420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232428);
    sub_24E602068(&qword_27F232430, &qword_27F232438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232420);
  }

  return result;
}

unint64_t sub_24EE78350()
{
  result = qword_27F232440;
  if (!qword_27F232440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232448);
    sub_24EE77910();
    sub_24E7EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232440);
  }

  return result;
}

uint64_t sub_24EE783E0()
{
  v1 = *v0;
  if ((v1 & 0xFC) == 4)
  {
    strcpy(v9, "Scene_Games_");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    MEMORY[0x253050C20](((v1 - 4) << 40) + 0x417055656E4FLL, 0xE600000000000000);
  }

  else
  {
    sub_24F92C888();

    v2 = 0xE500000000000000;
    v9[0] = 0x70415F656E656353;
    v9[1] = 0xEF5F65726F745370;
    v3 = 0x70556F7754;
    v4 = 0xE300000000000000;
    v5 = 7233862;
    if (v1 != 2)
    {
      v5 = 0x7274656D6D797341;
      v4 = 0xEC0000006C616369;
    }

    if (v1)
    {
      v3 = 0x70556565726854;
      v2 = 0xE700000000000000;
    }

    if (v1 <= 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v1 <= 1)
    {
      v7 = v2;
    }

    else
    {
      v7 = v4;
    }

    MEMORY[0x253050C20](v6, v7);
  }

  return v9[0];
}

uint64_t IconCollectionStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x70556F7754;
  v3 = 0x437055656E4FLL;
  if (v1 != 6)
  {
    v3 = 0x447055656E4FLL;
  }

  v4 = 0x417055656E4FLL;
  if (v1 != 4)
  {
    v4 = 0x427055656E4FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7233862;
  if (v1 != 2)
  {
    v5 = 0x7274656D6D797341;
  }

  if (*v0)
  {
    v2 = 0x70556565726854;
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

_OWORD *sub_24EE7860C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232478);
  if (v1 > 5)
  {
    if (v1 == 6)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F942000;
      result[2] = xmmword_24F9A9250;
      result[3] = xmmword_24F9A9260;
      result[4] = xmmword_24F9A9270;
      v3 = xmmword_24F9A9280;
      v4 = xmmword_24F9A9290;
      goto LABEL_11;
    }

    if (v1 == 7)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F979FB0;
      result[2] = xmmword_24F9A91D0;
      result[3] = xmmword_24F9A91E0;
      result[4] = xmmword_24F9A91F0;
      result[5] = xmmword_24F9A9200;
      result[6] = xmmword_24F9A9210;
      result[7] = xmmword_24F9A9220;
      result[8] = xmmword_24F9A9230;
      result[9] = xmmword_24F9A9240;
      return result;
    }
  }

  else
  {
    if (v1 == 4)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F93A070;
      result[2] = xmmword_24F9A92A0;
      result[3] = xmmword_24F9A9300;
      result[4] = xmmword_24F9A9310;
      result[5] = xmmword_24F9A9320;
      result[6] = xmmword_24F9A9330;
      result[7] = xmmword_24F9A9340;
      return result;
    }

    if (v1 == 5)
    {
      result = swift_allocObject();
      result[1] = xmmword_24F93A070;
      result[2] = xmmword_24F9A92A0;
      result[3] = xmmword_24F9A92B0;
      result[4] = xmmword_24F9A92C0;
      result[5] = xmmword_24F9A92D0;
      result[6] = xmmword_24F9A92E0;
      result[7] = xmmword_24F9A92F0;
      return result;
    }
  }

  result = swift_allocObject();
  result[1] = xmmword_24F942000;
  result[2] = xmmword_24F9A9350;
  result[3] = xmmword_24F9A9360;
  result[4] = xmmword_24F9A9370;
  v3 = xmmword_24F9A9380;
  v4 = xmmword_24F9A9390;
LABEL_11:
  result[5] = v3;
  result[6] = v4;
  return result;
}

GameStoreKit::IconCollectionStyle_optional __swiftcall IconCollectionStyle.init(rawValue:)(Swift::String rawValue)
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

void sub_24EE788A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x70556F7754;
  v5 = 0x437055656E4FLL;
  if (v2 != 6)
  {
    v5 = 0x447055656E4FLL;
  }

  v6 = 0x417055656E4FLL;
  if (v2 != 4)
  {
    v6 = 0x427055656E4FLL;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 7233862;
  if (v2 != 2)
  {
    v8 = 0x7274656D6D797341;
    v7 = 0xEC0000006C616369;
  }

  if (*v1)
  {
    v4 = 0x70556565726854;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

GameStoreKit::MediaPageHeader::Style_optional __swiftcall MediaPageHeader.Style.init(rawValue:)(Swift::String rawValue)
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

uint64_t MediaPageHeader.Style.rawValue.getter()
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

uint64_t sub_24EE78AD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_24EE78B6C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE78BE4()
{
  sub_24F92B218();
}

uint64_t sub_24EE78C48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE78CBC@<X0>(char *a1@<X8>)
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

void sub_24EE78D1C(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MediaPageHeader.__allocating_init(id:badge:title:subtitle:artwork:video:collectionIcons:useGeneratedBackgroundGradient:backgroundColor:placementStyle:backgroundStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, char *a13, uint64_t a14)
{
  v39 = a8;
  v40 = a4;
  v43 = a5;
  v44 = a6;
  v41 = a2;
  v42 = a3;
  v16 = sub_24F91F6B8();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x28223BE20](v16);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = *a12;
  v20 = *a13;
  v21 = a1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_artwork) = a7;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_video) = v39;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_collectionIcons) = a9;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = a10;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor) = a11;
  v22 = v40;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_placementStyle) = v19;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundStyle) = v20;
  sub_24E60169C(a1, v50, &qword_27F235830);
  v23 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v24 = sub_24F91F008();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v18 + v23, v22, v24);
  sub_24E60169C(a14, v18 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68);
  v26 = v18 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  sub_24E60169C(v50, &v47, &qword_27F235830);
  if (*(&v48 + 1))
  {
    v27 = v48;
    *v26 = v47;
    *(v26 + 16) = v27;
    *(v26 + 32) = v49;
  }

  else
  {
    v28 = v36;
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v37 + 8))(v28, v38);
    v45 = v29;
    v46 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v47, &qword_27F235830);
  }

  sub_24E601704(a14, &qword_27F213E68);
  (*(v25 + 8))(v22, v24);
  sub_24E601704(v21, &qword_27F235830);
  sub_24E601704(v50, &qword_27F235830);
  v32 = v42;
  *(v18 + 16) = v41;
  *(v18 + 24) = v32;
  v33 = (v18 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;
  return v18;
}

uint64_t MediaPageHeader.init(id:badge:title:subtitle:artwork:video:collectionIcons:useGeneratedBackgroundGradient:backgroundColor:placementStyle:backgroundStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, _BYTE *a12, char *a13, uint64_t a14)
{
  v15 = v14;
  v46 = a8;
  v45 = a7;
  v49 = a5;
  v50 = a6;
  v41 = a4;
  v48 = a3;
  v47 = a2;
  v44 = a10;
  v42 = a9;
  v43 = a11;
  v40 = sub_24F91F6B8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v38 - v20;
  v22 = sub_24F91F008();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v24) = *a12;
  v26 = *a13;
  v27 = a1;
  v28 = v41;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_artwork) = v45;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_video) = v46;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_collectionIcons) = v42;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = v44;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor) = v43;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_placementStyle) = v24;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundStyle) = v26;
  v46 = v27;
  sub_24E60169C(v27, v59, &qword_27F235830);
  (*(v23 + 16))(v25, v28, v22);
  v45 = a14;
  sub_24E60169C(a14, v21, &qword_27F213E68);
  sub_24E60169C(v59, &v53, &qword_27F235830);
  if (*(&v54 + 1))
  {
    v56 = v53;
    v57 = v54;
    v58 = v55;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v39 + 8))(v18, v40);
    v51 = v29;
    v52 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v53, &qword_27F235830);
  }

  sub_24E601704(v45, &qword_27F213E68);
  (*(v23 + 8))(v28, v22);
  sub_24E601704(v46, &qword_27F235830);
  sub_24E601704(v59, &qword_27F235830);
  v32 = v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  *(v32 + 32) = v58;
  v33 = v57;
  *v32 = v56;
  *(v32 + 16) = v33;
  v34 = v48;
  *(v15 + 16) = v47;
  *(v15 + 24) = v34;
  (*(v23 + 32))(v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_title, v25, v22);
  v35 = (v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  v36 = v50;
  *v35 = v49;
  v35[1] = v36;
  sub_24E65E0D4(v21, v15 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics);
  return v15;
}

uint64_t MediaPageHeader.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v123 = a2;
  v108 = sub_24F91F6B8();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = v103 - v5;
  v115 = sub_24F92AC28();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v104 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = v103 - v8;
  v130 = sub_24F9285B8();
  v122 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v126 = v103 - v15;
  v16 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v16 - 8);
  v125 = sub_24F91F008();
  v120 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v103 - v19;
  v21 = sub_24F928388();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v117 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v116 = v103 - v25;
  MEMORY[0x28223BE20](v26);
  v113 = v103 - v27;
  MEMORY[0x28223BE20](v28);
  v111 = v103 - v29;
  MEMORY[0x28223BE20](v30);
  v110 = v103 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v103 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v103 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = v103 - v39;
  v128 = a1;
  sub_24F928398();
  sub_24F928348();
  v42 = v41;
  v43 = *(v22 + 8);
  v131 = v22 + 8;
  v132 = v21;
  v129 = v43;
  v43(v40, v21);
  if (v42)
  {
    sub_24F91F0B8();
    v118 = v20;
    sub_24F91F018();
    sub_24F929608();
    sub_24F928398();
    v45 = v122 + 16;
    v44 = *(v122 + 16);
    v46 = v123;
    v47 = v130;
    v44(v119, v123, v130);
    v109 = v37;
    sub_24F929548();
    v48 = v127;
    v44(v127, v46, v47);
    sub_24F928398();
    v49 = v112;
    sub_24F9282B8();
    v129(v34, v132);
    v50 = v114;
    v51 = v115;
    v52 = (*(v114 + 48))(v49, 1, v115);
    v103[1] = v45;
    v103[0] = v44;
    if (v52 == 1)
    {
      sub_24E601704(v49, &qword_27F2213B0);
      v104 = 0;
      v53 = v119;
    }

    else
    {
      v57 = v105;
      v58 = v47;
      (*(v50 + 32))(v105, v49, v51);
      (*(v50 + 16))(v104, v57, v51);
      v59 = v119;
      v44(v119, v48, v58);
      type metadata accessor for Artwork();
      sub_24EE7A694(&qword_27F219660, type metadata accessor for Artwork);
      v104 = sub_24F92B6A8();
      (*(v50 + 8))(v57, v51);
      v53 = v59;
    }

    v60 = v110;
    sub_24F928398();
    v61 = sub_24F928348();
    v63 = v118;
    v64 = v109;
    if (v62)
    {
      v138 = v61;
      v139 = v62;
    }

    else
    {
      v65 = v53;
      v66 = v106;
      sub_24F91F6A8();
      v67 = sub_24F91F668();
      v69 = v68;
      v70 = v66;
      v53 = v65;
      v64 = v109;
      (*(v107 + 8))(v70, v108);
      v138 = v67;
      v139 = v69;
    }

    sub_24F92C7F8();
    v71 = v60;
    v72 = v132;
    v73 = v129;
    v129(v71, v132);
    v74 = v111;
    sub_24F928398();
    v119 = sub_24F928348();
    v115 = v75;
    v73(v74, v72);
    v76 = *(v120 + 16);
    v110 = (v120 + 16);
    v111 = v76;
    (v76)(v124, v63, v125);
    v77 = v113;
    sub_24F928398();
    v114 = sub_24F928348();
    v112 = v78;
    v73(v77, v72);
    type metadata accessor for Artwork();
    sub_24F928398();
    v79 = v127;
    v80 = v130;
    v81 = v103[0];
    (v103[0])(v53, v127, v130);
    sub_24EE7A694(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v113 = v144;
    type metadata accessor for Video();
    sub_24F928398();
    v81(v53, v79, v80);
    sub_24EE7A694(&qword_27F221590, type metadata accessor for Video);
    sub_24F929548();
    v82 = v142;
    v83 = v116;
    sub_24F928398();
    LODWORD(v109) = sub_24F928278();
    v84 = v132;
    v85 = v129;
    v129(v83, v132);
    v86 = v117;
    sub_24F928398();
    v116 = JSONObject.appStoreColor.getter();
    v85(v86, v84);
    sub_24F928398();
    sub_24E951EBC();
    sub_24F928248();
    v85(v64, v84);
    LODWORD(v117) = v141;
    sub_24F928398();
    sub_24EE7A6DC();
    sub_24F928208();
    v85(v64, v84);
    LOBYTE(v86) = v140;
    v87 = v121;
    sub_24E60169C(v126, v121, &qword_27F213E68);
    type metadata accessor for MediaPageHeader();
    v54 = swift_allocObject();
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_artwork) = v113;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_video) = v82;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_collectionIcons) = v104;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = v109 & 1;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor) = v116;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_placementStyle) = v117;
    *(v54 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundStyle) = v86;
    sub_24E60169C(v143, &v138, &qword_27F235830);
    (v111)(v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_title, v124, v125);
    sub_24E60169C(v87, v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68);
    v88 = v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
    sub_24E60169C(&v138, &v135, &qword_27F235830);
    v89 = v85;
    if (*(&v136 + 1))
    {
      v90 = v136;
      *v88 = v135;
      *(v88 + 16) = v90;
      *(v88 + 32) = v137;
    }

    else
    {
      v91 = v106;
      sub_24F91F6A8();
      v92 = sub_24F91F668();
      v94 = v93;
      (*(v107 + 8))(v91, v108);
      v133 = v92;
      v134 = v94;
      sub_24F92C7F8();
      sub_24E601704(&v135, &qword_27F235830);
    }

    v95 = *(v122 + 8);
    v96 = v130;
    v95(v123, v130);
    v89(v128, v132);
    sub_24E601704(&v138, &qword_27F235830);
    sub_24E601704(v121, &qword_27F213E68);
    v97 = *(v120 + 8);
    v98 = v125;
    v97(v124, v125);
    sub_24E601704(v143, &qword_27F235830);
    v95(v127, v96);
    sub_24E601704(v126, &qword_27F213E68);
    v97(v118, v98);
    v99 = v115;
    *(v54 + 16) = v119;
    *(v54 + 24) = v99;
    v100 = (v54 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
    v101 = v112;
    *v100 = v114;
    v100[1] = v101;
  }

  else
  {
    v54 = sub_24F92AC38();
    sub_24EE7A694(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v55 = 0x656C746974;
    v56 = v118;
    v55[1] = 0xE500000000000000;
    v55[2] = v56;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v122 + 8))(v123, v130);
    v129(v128, v132);
  }

  return v54;
}

uint64_t sub_24EE7A694(unint64_t *a1, void (*a2)(uint64_t))
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