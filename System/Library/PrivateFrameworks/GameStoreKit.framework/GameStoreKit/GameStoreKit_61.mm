uint64_t ReviewsPage.__allocating_init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v87 = a8;
  v85 = a7;
  v79 = a6;
  v82 = a4;
  v83 = a5;
  v88 = a3;
  v80 = a2;
  v92 = a19;
  v89 = a18;
  v86 = a15;
  LODWORD(v84) = a14;
  v78 = a11;
  v77 = a10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v20 - 8);
  v75 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v74 - v23;
  MEMORY[0x28223BE20](v24);
  v91 = &v74 - v25;
  MEMORY[0x28223BE20](v26);
  v94 = &v74 - v27;
  v28 = sub_24F928818();
  v76 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v90 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - v32;
  v93 = &v74 - v32;
  v34 = swift_allocObject();
  v35 = a1[1];
  v36 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  *v36 = *a1;
  v36[1] = v35;
  v37 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v38 = v83;
  *v37 = v82;
  v37[1] = v38;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v85;
  v39 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v39 = v87;
  v39[1] = a9;
  v40 = (v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v41 = v78;
  *v40 = v77;
  v40[1] = v41;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = a12;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = a13;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v84;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction) = v92;
  v87 = a16;
  sub_24E60169C(a16, v96, &qword_27F2129B0);
  v82 = v29;
  v83 = a17;
  v42 = *(v29 + 16);
  v42(v33, a17, v28);
  v43 = sub_24F9285B8();
  v44 = *(v43 - 8);
  v45 = v94;
  (*(v44 + 56))(v94, 1, 1, v43);
  v46 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v84 = a12;

  v85 = a13;

  v47 = sub_24EEF0A68(v79);
  v49 = v48;

  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v47;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v49;
  v50 = v90;
  v51 = v91;
  v52 = (v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v53 = v88;
  *v52 = v80;
  v52[1] = v53;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(v96, v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v34 + v46) = 0;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v76;
  v42(v50, v93, v76);
  sub_24E60169C(v45, v51, &qword_27F2218B0);
  *(v34 + 16) = 0;
  v42((v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v50, v54);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v89;
  v55 = v81;
  sub_24E60169C(v51, v81, &qword_27F2218B0);
  v88 = v44;
  v56 = *(v44 + 48);
  if (v56(v55, 1, v43) == 1)
  {

    v57 = *(v82 + 8);
    v57(v83, v54);
    sub_24E601704(v87, &qword_27F2129B0);
    sub_24E601704(v51, &qword_27F2218B0);
    v57(v50, v54);
    sub_24E601704(v94, &qword_27F2218B0);
    v57(v93, v54);
    sub_24E601704(v96, &qword_27F2129B0);
    v58 = v55;
    v59 = &qword_27F2218B0;
  }

  else
  {
    v80 = v43;
    v60 = v54;
    v61 = v82;
    v62 = qword_27F2105F0;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v63, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v64 = v95;
    v65 = v75;
    if (v95)
    {
    }

    v66 = *(v88 + 8);
    v67 = v80;
    v88 += 8;
    v81 = v66;
    (v66)(v55, v80);
    v68 = v83;
    if (v64)
    {
      v69 = v91;
      sub_24E60169C(v91, v65, &qword_27F2218B0);
      if (v56(v65, 1, v67) != 1)
      {
        sub_24ECDF110();

        v73 = *(v61 + 8);
        v73(v68, v60);
        sub_24E601704(v87, &qword_27F2129B0);
        sub_24E601704(v69, &qword_27F2218B0);
        v73(v90, v60);
        sub_24E601704(v94, &qword_27F2218B0);
        v73(v93, v60);
        sub_24E601704(v96, &qword_27F2129B0);
        (v81)(v65, v67);
        return v34;
      }

      v70 = *(v61 + 8);
      v70(v68, v60);
      sub_24E601704(v87, &qword_27F2129B0);
      sub_24E601704(v69, &qword_27F2218B0);
      v70(v90, v60);
      sub_24E601704(v94, &qword_27F2218B0);
      v70(v93, v60);
      sub_24E601704(v96, &qword_27F2129B0);
      v58 = v65;
      v59 = &qword_27F2218B0;
    }

    else
    {

      v71 = *(v61 + 8);
      v71(v68, v60);
      sub_24E601704(v87, &qword_27F2129B0);
      sub_24E601704(v91, &qword_27F2218B0);
      v71(v90, v60);
      sub_24E601704(v94, &qword_27F2218B0);
      v71(v93, v60);
      v58 = v96;
      v59 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v58, v59);
  return v34;
}

uint64_t ReviewsPage.init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v95 = a8;
  v93 = a7;
  v86 = a6;
  v88 = a5;
  v85 = a4;
  v94 = a3;
  v90 = a2;
  v96 = a18;
  v92 = a15;
  v99 = a13;
  v100 = a19;
  LODWORD(v91) = a14;
  v84 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v22 - 8);
  v83 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v87 = &v83 - v25;
  MEMORY[0x28223BE20](v26);
  v98 = &v83 - v27;
  MEMORY[0x28223BE20](v28);
  v101 = &v83 - v29;
  v30 = sub_24F928818();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v97 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v83 - v34;
  v36 = a1[1];
  v37 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  *v37 = *a1;
  v37[1] = v36;
  v38 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v39 = v88;
  *v38 = v85;
  v38[1] = v39;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v93;
  v40 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v40 = v95;
  v40[1] = a9;
  v41 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v42 = v84;
  *v41 = a10;
  v41[1] = v42;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = a12;
  v43 = v100;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v99;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v91;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction) = v43;
  v89 = a16;
  sub_24E60169C(a16, v103, &qword_27F2129B0);
  v88 = v31;
  v85 = *(v31 + 2);
  v93 = a17;
  v85(v35, a17, v30);
  v95 = sub_24F9285B8();
  v44 = *(v95 - 8);
  v45 = v101;
  (*(v44 + 56))(v101, 1, 1, v95);
  v46 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v91 = a12;

  v47 = sub_24EEF0A68(v86);
  v49 = v48;

  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v47;
  v50 = v45;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v49;
  v51 = (v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v52 = v94;
  *v51 = v90;
  v51[1] = v52;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(v103, v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v20 + v46) = 0;
  v53 = v96;

  *(v20 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v97;
  v94 = v35;
  v55 = v85;
  v85(v97, v35, v30);
  v56 = v50;
  v57 = v98;
  sub_24E60169C(v56, v98, &qword_27F2218B0);
  *(v20 + 16) = 0;
  v90 = v30;
  v55(v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v54, v30);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v53;
  v58 = v87;
  sub_24E60169C(v57, v87, &qword_27F2218B0);
  v86 = v44;
  v59 = *(v44 + 48);
  if (v59(v58, 1, v95) == 1)
  {

    v60 = *(v88 + 1);
    v61 = v90;
    v60(v93, v90);
    sub_24E601704(v89, &qword_27F2129B0);
    sub_24E601704(v57, &qword_27F2218B0);
    v60(v54, v61);
    sub_24E601704(v101, &qword_27F2218B0);
    v60(v94, v61);
    sub_24E601704(v103, &qword_27F2129B0);
    v62 = v58;
    v63 = &qword_27F2218B0;
  }

  else
  {
    v64 = v58;
    v65 = v88;
    v66 = qword_27F2105F0;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v67, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v68 = v102;
    v69 = v65;
    if (v102)
    {
    }

    v70 = v86 + 8;
    v71 = *(v86 + 8);
    v72 = v95;
    v71(v64, v95);
    v73 = v83;
    if (v68)
    {
      v74 = v98;
      sub_24E60169C(v98, v83, &qword_27F2218B0);
      if (v59(v73, 1, v72) != 1)
      {
        v86 = v70;
        v80 = v73;
        sub_24ECDF110();

        v81 = v90;
        v82 = *(v69 + 1);
        v82(v93, v90);
        sub_24E601704(v89, &qword_27F2129B0);
        sub_24E601704(v74, &qword_27F2218B0);
        v82(v97, v81);
        sub_24E601704(v101, &qword_27F2218B0);
        v82(v94, v81);
        sub_24E601704(v103, &qword_27F2129B0);
        v71(v80, v72);
        return v20;
      }

      v75 = *(v69 + 1);
      v76 = v90;
      v75(v93, v90);
      sub_24E601704(v89, &qword_27F2129B0);
      sub_24E601704(v74, &qword_27F2218B0);
      v75(v97, v76);
      sub_24E601704(v101, &qword_27F2218B0);
      v75(v94, v76);
      sub_24E601704(v103, &qword_27F2129B0);
      v62 = v73;
      v63 = &qword_27F2218B0;
    }

    else
    {

      v77 = *(v69 + 1);
      v78 = v90;
      v77(v93, v90);
      sub_24E601704(v89, &qword_27F2129B0);
      sub_24E601704(v98, &qword_27F2218B0);
      v77(v97, v78);
      sub_24E601704(v101, &qword_27F2218B0);
      v77(v94, v78);
      v62 = v103;
      v63 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v62, v63);
  return v20;
}

uint64_t sub_24EC43FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ReviewsPage.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  a1[1] = v2;
}

uint64_t ReviewsPage.targetReviewId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);

  return v1;
}

uint64_t ReviewsPage.initialSortOptionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);

  return v1;
}

uint64_t ReviewsPage.sortActionSheetTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);

  return v1;
}

uint64_t sub_24EC441D4(uint64_t a1)
{
  v2 = v1;
  v184 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v4 - 8);
  v175 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v178 = &v162 - v7;
  MEMORY[0x28223BE20](v8);
  v177 = &v162 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v162 - v11;
  MEMORY[0x28223BE20](v13);
  v176 = &v162 - v14;
  MEMORY[0x28223BE20](v15);
  v180 = &v162 - v16;
  MEMORY[0x28223BE20](v17);
  v181 = &v162 - v18;
  MEMORY[0x28223BE20](v19);
  v186 = &v162 - v20;
  v21 = sub_24F928818();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v162 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v162 - v29;
  MEMORY[0x28223BE20](v31);
  v179 = &v162 - v32;
  MEMORY[0x28223BE20](v33);
  v189 = (&v162 - v34);
  MEMORY[0x28223BE20](v35);
  v187 = &v162 - v36;
  v182 = type metadata accessor for ReviewsPage(0);
  v37 = swift_dynamicCastClass();
  v38 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId + 8);
  v183 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  v40 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v39 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v188 = v22;
  v190 = v21;
  v185 = v40;
  if (v37)
  {
    v41 = v37;
    v42 = v184;
    v43 = v21;
    v44 = v38;
    v45 = v39;
    if (!v39)
    {
      v185 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    }

    v177 = v45;
    v46 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8);
    if (v46)
    {
      v172 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
      v171 = v46;
    }

    else
    {
      v61 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8);
      v172 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
      v171 = v61;
    }

    v62 = ShelfBasedPage.shelves.getter(v42, &protocol witness table for GenericPage);
    v63 = sub_24EC40664(type metadata accessor for ReviewsPage);
    v175 = sub_24EC45D60(v62, v63);

    v173 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
    v64 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
    if (v64)
    {
      v184 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v167 = v64;
    }

    else
    {
      v65 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
      v184 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v167 = v65;
    }

    v66 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle + 8);
    v174 = v64;
    v170 = v66;
    if (v66)
    {
      v165 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
      v164 = v66;
    }

    else
    {
      v67 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle + 8);
      v165 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
      v164 = v67;
    }

    v68 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings);
    v168 = v68;
    if (!v68)
    {
      v68 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings);
    }

    v69 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);
    if (v69)
    {
      v166 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);
      v178 = v69;
    }

    else
    {
      v178 = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);

      v166 = 0;
    }

    LODWORD(v163) = *(v41 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews);
    sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v194, &qword_27F2129B0);
    v70 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v71 = *(v22 + 16);
    v72 = v187;
    v71(v187, v2 + v70, v43);
    v169 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v73 = OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction;
    v74 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction);
    v2 = swift_allocObject();
    v75 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
    *v75 = v183;
    v75[1] = v44;
    v76 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
    v77 = v171;
    *v76 = v172;
    v76[1] = v77;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v173;
    v78 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
    v79 = v167;
    *v78 = v184;
    v78[1] = v79;
    v80 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
    v81 = v164;
    *v80 = v165;
    v80[1] = v81;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = v68;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v178;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v163;
    *(v2 + v73) = v74;
    sub_24E60169C(v194, &v192, &qword_27F2129B0);
    v71(v189, v72, v43);
    v82 = v71;
    v183 = sub_24F9285B8();
    v184 = *(v183 - 8);
    v83 = v186;
    (*(v184 + 56))(v186, 1, 1, v183);
    v84 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

    v182 = v68;

    v85 = sub_24EEF0A68(v175);
    v87 = v86;

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v85;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v87;
    v88 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v89 = v177;
    *v88 = v185;
    v88[1] = v89;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
    sub_24E60169C(&v192, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
    swift_beginAccess();
    *(v2 + v84) = 0;
    v90 = v189;
    v91 = v190;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v92 = v179;
    v82(v179, v90, v91);
    v93 = v181;
    sub_24E60169C(v83, v181, &qword_27F2218B0);
    *(v2 + 16) = 0;
    v82((v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v92, v91);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v169;
    v94 = v180;
    sub_24E60169C(v93, v180, &qword_27F2218B0);
    v95 = *(v184 + 48);
    if (v95(v94, 1, v183) == 1)
    {

      v96 = &qword_27F2218B0;
      sub_24E601704(v93, &qword_27F2218B0);
      v97 = v90;
      v98 = *(v188 + 8);
      v98(v92, v91);
      sub_24E601704(v186, &qword_27F2218B0);
      v98(v97, v91);
      sub_24E601704(&v192, &qword_27F2129B0);
      v98(v187, v91);
      sub_24E601704(v194, &qword_27F2129B0);
      v99 = v94;
      goto LABEL_53;
    }

    v185 = v95;
    v100 = qword_27F2105F0;

    if (v100 != -1)
    {
LABEL_57:
      swift_once();
    }

    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v101, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v102 = v193;
    v103 = v176;
    v104 = v181;
    v105 = v179;
    if (v193)
    {
    }

    v106 = *(v184 + 8);
    v107 = v183;
    v184 += 8;
    v106(v180, v183);
    if (v102)
    {
      sub_24E60169C(v104, v103, &qword_27F2218B0);
      if (v185(v103, 1, v107) == 1)
      {

        v96 = &qword_27F2218B0;
        sub_24E601704(v104, &qword_27F2218B0);
        v108 = *(v188 + 8);
        v109 = v190;
        v108(v105, v190);
        sub_24E601704(v186, &qword_27F2218B0);
        v108(v189, v109);
        sub_24E601704(&v192, &qword_27F2129B0);
        v108(v187, v109);
        sub_24E601704(v194, &qword_27F2129B0);
        v99 = v103;
        goto LABEL_53;
      }

      sub_24ECDF110();

      sub_24E601704(v104, &qword_27F2218B0);
      v157 = *(v188 + 8);
      v158 = v190;
      v157(v105, v190);
      sub_24E601704(v186, &qword_27F2218B0);
      v157(v189, v158);
      sub_24E601704(&v192, &qword_27F2129B0);
      v157(v187, v158);
      sub_24E601704(v194, &qword_27F2129B0);
      v106(v103, v107);
      return v2;
    }

    sub_24E601704(v104, &qword_27F2218B0);
    v155 = *(v188 + 8);
    v156 = v190;
    v155(v105, v190);
    sub_24E601704(v186, &qword_27F2218B0);
    v155(v189, v156);
    v96 = &qword_27F2129B0;
    sub_24E601704(&v192, &qword_27F2129B0);
    v155(v187, v156);
LABEL_52:
    v99 = v194;
    goto LABEL_53;
  }

  v186 = v24;
  v172 = v27;
  v173 = v12;
  v174 = v30;
  v47 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8);
  v180 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v179 = v47;
  v48 = v39;

  v189 = v38;

  v181 = v48;

  v49 = ShelfBasedPage.shelves.getter(v184, &protocol witness table for GenericPage);
  v50 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = MEMORY[0x277D84F90];
  v192 = MEMORY[0x277D84F90];
  v53 = *(v51 + 16);
  v54 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v53)
  {
    goto LABEL_39;
  }

  v55 = 0;
  v56 = v51 + 32;
  v176 = v53 - 1;
  v187 = v49;
  v184 = v51 + 32;
  do
  {
    v57 = v56 + 40 * v55;
    v58 = v55;
    while (1)
    {
      if (v58 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      sub_24E65864C(v57, v194);
      if (*(*(a1 + v54) + 16))
      {
        break;
      }

LABEL_9:
      ++v58;
      sub_24E6585F8(v194);
      v57 += 40;
      if (v53 == v58)
      {
        v49 = v187;
        goto LABEL_39;
      }
    }

    sub_24E76D934(v194);
    if ((v59 & 1) == 0)
    {

      goto LABEL_9;
    }

    v60 = sub_24E6585F8(v194);
    MEMORY[0x253050F00](v60);
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v55 = v58 + 1;
    sub_24F92B638();
    v52 = v192;
    v49 = v187;
    v56 = v184;
  }

  while (v176 != v58);
LABEL_39:

  v176 = sub_24EC45D60(v49, v52);

  v163 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
  v110 = v163;
  v111 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
  v170 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v169 = v111;
  v168 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings);
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle + 8);
  v166 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v164 = v112;
  v187 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions);
  LODWORD(v165) = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v194, &qword_27F2129B0);
  v113 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v115 = (v188 + 16);
  v114 = *(v188 + 16);
  v116 = v174;
  v117 = v190;
  v114(v174, v2 + v113, v190);
  v167 = v115;
  v171 = v114;
  v184 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v118 = OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction;
  v119 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction);
  v2 = swift_allocObject();
  v120 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_adamId);
  v121 = v189;
  *v120 = v183;
  v120[1] = v121;
  v122 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId);
  v123 = v179;
  *v122 = v180;
  v122[1] = v123;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions) = v110;
  v124 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v125 = v169;
  *v124 = v170;
  v124[1] = v125;
  v126 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  v127 = v164;
  *v126 = v166;
  v126[1] = v127;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_ratings) = v168;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_productReviewActions) = v187;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_alwaysAllowReviews) = v165;
  *(v2 + v118) = v119;
  sub_24E60169C(v194, &v192, &qword_27F2129B0);
  v128 = v172;
  v114(v172, v116, v117);
  v183 = sub_24F9285B8();
  v189 = *(v183 - 8);
  v129 = v173;
  v189[7](v173, 1, 1, v183);
  v130 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v131 = sub_24EEF0A68(v176);
  v133 = v132;

  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v131;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v133;
  v134 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v135 = v181;
  *v134 = v185;
  v134[1] = v135;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = 0;
  sub_24E60169C(&v192, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v2 + v130) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v136 = v186;
  v137 = v190;
  v138 = v171;
  v171(v186, v128, v190);
  v139 = v177;
  sub_24E60169C(v129, v177, &qword_27F2218B0);
  *(v2 + 16) = 0;
  v140 = v137;
  v138(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v136, v137);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v184;
  v141 = v178;
  v142 = v183;
  sub_24E60169C(v139, v178, &qword_27F2218B0);
  v143 = v189[6];
  if ((v143)(v141, 1, v142) == 1)
  {

    v96 = &qword_27F2218B0;
    sub_24E601704(v139, &qword_27F2218B0);
    v144 = *(v188 + 8);
    v144(v136, v140);
    sub_24E601704(v173, &qword_27F2218B0);
    v144(v172, v140);
    sub_24E601704(&v192, &qword_27F2129B0);
    v144(v174, v140);
    goto LABEL_48;
  }

  v187 = v143;
  v145 = v142;
  v146 = v140;
  v147 = qword_27F2105F0;

  if (v147 != -1)
  {
    swift_once();
  }

  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v148, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  sub_24F9285C8();
  v149 = v191;
  v150 = v188;
  v141 = v175;
  v151 = v186;
  if (v191)
  {
  }

  v152 = v189[1];
  ++v189;
  (v152)(v178, v145);
  v153 = v177;
  if (!v149)
  {
    sub_24E601704(v177, &qword_27F2218B0);
    v159 = *(v150 + 8);
    v159(v151, v146);
    sub_24E601704(v173, &qword_27F2218B0);
    v159(v172, v146);
    v96 = &qword_27F2129B0;
    sub_24E601704(&v192, &qword_27F2129B0);
    v159(v174, v146);
    goto LABEL_52;
  }

  sub_24E60169C(v177, v141, &qword_27F2218B0);
  if ((v187)(v141, 1, v145) == 1)
  {
    v96 = &qword_27F2218B0;
    sub_24E601704(v153, &qword_27F2218B0);
    v154 = *(v150 + 8);
    v154(v151, v146);
    sub_24E601704(v173, &qword_27F2218B0);
    v154(v172, v146);
    sub_24E601704(&v192, &qword_27F2129B0);
    v154(v174, v146);
LABEL_48:
    sub_24E601704(v194, &qword_27F2129B0);
    v99 = v141;
LABEL_53:
    sub_24E601704(v99, v96);
  }

  else
  {
    sub_24ECDF110();
    sub_24E601704(v153, &qword_27F2218B0);
    v161 = *(v150 + 8);
    v161(v151, v146);
    sub_24E601704(v173, &qword_27F2218B0);
    v161(v172, v146);
    sub_24E601704(&v192, &qword_27F2129B0);
    v161(v174, v146);
    sub_24E601704(v194, &qword_27F2129B0);
    (v152)(v141, v145);
  }

  return v2;
}

uint64_t sub_24EC45BA4()
{
}

uint64_t ReviewsPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t ReviewsPage.__deallocating_deinit()
{
  ReviewsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC45D60(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_24EEF0A68(a2);
  v5 = v4;

  v29 = v5;
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = sub_24F92C738();
    v7 = result;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v2;
  if (v7)
  {
    if (v7 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    v8 = 0;
    v27 = v7;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x253052270](v8, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v8 + 32);
      }

      if (*(v5 + 16) && (v12 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id, sub_24E76D934(v11 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id), (v13 & 1) != 0))
      {

        Shelf.mergingWith(_:)(v14);

        MEMORY[0x253050F00](v15);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v10 = v28;
        sub_24EB444A4(v11 + v12);

        v7 = v27;
      }

      else
      {

        MEMORY[0x253050F00](v9);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();

        v10 = v28;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (!(v2 >> 62))
  {
    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_41:

    return v10;
  }

  result = sub_24F92C738();
  v16 = result;
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_21:
  if (v16 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x253052270](i, v2);
        if (*(v5 + 16) && (sub_24E76D934(v18 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id), (v19 & 1) != 0))
        {
          v20 = swift_unknownObjectRetain();
          MEMORY[0x253050F00](v20);
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
            v2 = v26;
          }

          sub_24F92B638();
          swift_unknownObjectRelease();
          v10 = v28;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v21 = (v2 + 32);
      do
      {
        if (*(v29 + 16))
        {
          v22 = *v21;
          v23 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

          sub_24E76D934(v22 + v23);
          if (v24)
          {

            MEMORY[0x253050F00](v25);
            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            sub_24F92B638();

            v10 = v28;
          }

          else
          {
          }
        }

        ++v21;
        --v16;
      }

      while (v16);
    }

    goto LABEL_41;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_24EC4627C()
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

id CompoundScrollObserver.__allocating_init(children:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t CompoundScrollObserver.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
    swift_beginAccess();
    v6 = *(v2 + v5);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v5) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_24E618CD4(0, v6[2] + 1, 1, v6);
      *(v2 + v5) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_24E618CD4((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = v4;
    v10[5] = a2;
    *(v2 + v5) = v6;
    return swift_endAccess();
  }

  return result;
}

id CompoundScrollObserver.init(children:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompoundScrollObserver();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_24EC46510(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t CompoundScrollObserver.removeChild(_:)(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
    result = swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 32); *i != v2; i += 2)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_24EA0E6DC(v6);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundScrollObserver.removeAllChildren()()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t sub_24EC466DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC467AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC4687C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC4694C(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 32);
      swift_unknownObjectRetain();
      v12(a1, a2 & 1, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_24EC46A24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24EC46AF4(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t sub_24EC46BE4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = v10;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        swift_unknownObjectRetain();
        v14(a1, a2, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_24EC46CF8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = 32;
    do
    {
      v13 = *(v10 + v12);
      swift_getObjectType();
      v14 = swift_conformsToProtocol2();
      if (v14)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 8);
        v19 = *(v18 + 56);
        swift_unknownObjectRetain();
        v19(a1, a2, ObjectType, v18, a3, a4);
        swift_unknownObjectRelease();
      }

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  return result;
}

id CompoundScrollObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundScrollObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundScrollObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EC46F44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EC471A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v149 = a2;
  v150 = a3;
  v5 = sub_24F921118();
  v147 = *(v5 - 8);
  v148 = v5;
  MEMORY[0x28223BE20](v5);
  v146 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v145 = &v118 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C110);
  MEMORY[0x28223BE20](v9 - 8);
  v142 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C118);
  v143 = *(v11 - 8);
  v144 = v11;
  MEMORY[0x28223BE20](v11);
  v141 = &v118 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v118 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v118 - v17;
  v19 = sub_24F9289E8();
  v152 = *(v19 - 8);
  v153 = v19;
  MEMORY[0x28223BE20](v19);
  v151 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C120);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v118 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v118 - v26;
  v28 = sub_24F921198();
  if (v29)
  {
    v140 = v28;
    v159 = v29;
    sub_24F921168();
    v30 = sub_24F920FD8();
    if (v3)
    {

      v32 = sub_24F9211A8();
      (*(*(v32 - 8) + 8))(a1, v32);
      return (*(v25 + 8))(v27, v24);
    }

    v138 = v30;
    v139 = v31;
    (*(v25 + 8))(v27, v24);
    sub_24F921158();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C130);
    v40 = *(v39 - 8);
    v41 = a1;
    if ((*(v40 + 48))(v23, 1, v39) == 1)
    {
      sub_24E601704(v23, &qword_27F22C120);
      v137 = sub_24F5E3C58(v138, v139, v140, v159, 85, 0xE100000000000000);
      v43 = v42;
    }

    else
    {
      v44 = sub_24F920F48();
      v43 = v45;
      v137 = v44;
      (*(v40 + 8))(v23, v39);
    }

    sub_24F921178();
    sub_24F3D6C4C(v15, v18);
    v47 = v152;
    v46 = v153;
    v48 = *(v152 + 48);
    if (v48(v18, 1, v153) == 1)
    {
      sub_24EC481E4(v138, v139, v140, v159);
      v49 = v48(v18, 1, v46);
      v50 = v143;
      if (v49 != 1)
      {
        sub_24E601704(v18, &qword_27F213FB0);
      }
    }

    else
    {
      (*(v47 + 32))(v151, v18, v46);
      v50 = v143;
    }

    v51 = v142;
    sub_24F921188();
    v52 = v144;
    if ((*(v50 + 48))(v51, 1, v144) == 1)
    {
      sub_24E601704(v51, &qword_27F22C110);
    }

    else
    {
      v53 = v141;
      (*(v50 + 32))(v141, v51, v52);
      sub_24F920FE8();
      if (v54)
      {
        v100 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
        v101 = sub_24F92B098();

        v55 = [v100 contactForIdentifier_];

        (*(v50 + 8))(v141, v52);
        if (v55)
        {
          v102 = v55;
          v103 = [v102 namePrefix];
          v141 = sub_24F92B0D8();
          v132 = v104;

          v105 = [v102 givenName];
          v134 = sub_24F92B0D8();
          v133 = v106;

          v107 = [v102 middleName];
          v131 = sub_24F92B0D8();
          v130 = v108;

          v109 = [v102 familyName];
          v129 = sub_24F92B0D8();
          v128 = v110;

          v111 = [v102 nameSuffix];
          v127 = sub_24F92B0D8();
          v126 = v112;

          v113 = [v102 nickname];
          v125 = sub_24F92B0D8();
          v124 = v114;

          v115 = v102;
          v116 = sub_24EEA5788();
          v143 = v117;
          v144 = v116;

          goto LABEL_22;
        }

        v141 = 0;
        v134 = 0;
        v133 = 0;
        v131 = 0;
        v130 = 0;
        v129 = 0;
        v128 = 0;
        v127 = 0;
        v126 = 0;
        v125 = 0;
        v124 = 0;
        v143 = 0;
        v144 = 0;
LABEL_21:
        v132 = 1;
LABEL_22:
        v123 = sub_24F921138();
        v122 = sub_24F921148();
        v121 = sub_24F9210F8();
        v120 = v56;
        v136 = v41;
        v135 = v43;
        v142 = v55;
        if (v55)
        {
          v57 = [v55 phoneNumberStrings];
          v119 = sub_24F92B5A8();

          v58 = [v55 emailAddressStrings];
          v118 = sub_24F92B5A8();
        }

        else
        {
          v118 = 0;
          v119 = 0;
        }

        v59 = type metadata accessor for Player(0);
        v60 = v59[13];
        v61 = [objc_opt_self() sharedInstance];
        v62 = [v61 providerManager];

        v63 = [v62 defaultProvider];
        v64 = [v62 providers];
        sub_24E69A5C4(0, &qword_27F225FA8);
        v65 = sub_24F92B5A8();

        v66 = [v62 faceTimeProvider];
        v67 = [v62 telephonyProvider];

        *&v154 = v62;
        *(&v154 + 1) = v63;
        v155 = v63;
        v156 = v65;
        v157 = v66;
        v158 = v67;
        v68 = v63;
        v69 = v150;
        static SocialUser.getHandleSet(contact:contactHandle:includeSocialProfiles:callProviders:)(v142, v144, v143, 0, &v154, &v150[v60]);
        v70 = v154;
        v71 = v155;
        v72 = v157;

        v73 = type metadata accessor for CallProviderConversationHandleSet();
        (*(*(v73 - 8) + 56))(&v69[v60], 0, 1, v73);
        v74 = v145;
        v75 = v136;
        sub_24F921128();
        v76 = v146;
        sub_24F921108();
        sub_24EC4841C();
        v77 = v148;
        LOBYTE(v62) = sub_24F92C678();

        v78 = sub_24F9211A8();
        (*(*(v78 - 8) + 8))(v75, v78);
        v79 = *(v147 + 8);
        v79(v76, v77);
        v79(v74, v77);
        v80 = v59[16];
        PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
        (*(*(PlayedTogetherInfo - 8) + 56))(&v69[v80], 1, 1, PlayedTogetherInfo);
        v82 = v59[17];
        ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
        (*(*(ChallengeInfo - 8) + 56))(&v69[v82], 1, 1, ChallengeInfo);
        result = (*(v152 + 32))(&v69[v59[6]], v151, v153);
        v84 = v139;
        *v69 = v138;
        *(v69 + 1) = v84;
        v85 = v135;
        *(v69 + 2) = v137;
        *(v69 + 3) = v85;
        v86 = &v69[v59[7]];
        v87 = v159;
        *v86 = v140;
        *(v86 + 1) = v87;
        v88 = &v69[v59[8]];
        v89 = v120;
        *v88 = v121;
        v88[1] = v89;
        *&v69[v59[11]] = v119;
        LOBYTE(v88) = v149 & 1;
        *&v69[v59[12]] = v118;
        v90 = &v69[v59[9]];
        v91 = v132;
        *v90 = v141;
        v90[1] = v91;
        v92 = v133;
        v90[2] = v134;
        v90[3] = v92;
        v93 = v130;
        v90[4] = v131;
        v90[5] = v93;
        v94 = v128;
        v90[6] = v129;
        v90[7] = v94;
        v95 = v126;
        v90[8] = v127;
        v90[9] = v95;
        v96 = v124;
        v90[10] = v125;
        v90[11] = v96;
        v97 = &v69[v59[10]];
        v98 = v143;
        *v97 = v144;
        *(v97 + 1) = v98;
        v69[v59[14]] = v62 & 1;
        v99 = &v69[v59[15]];
        *(v99 + 2) = 0u;
        *(v99 + 3) = 0u;
        *v99 = 0u;
        *(v99 + 1) = 0u;
        v69[v59[18]] = 0;
        v69[v59[19]] = 0;
        v69[v59[20]] = v123;
        v69[v59[21]] = v122;
        v69[v59[22]] = v88;
        return result;
      }

      (*(v50 + 8))(v53, v52);
    }

    v141 = 0;
    v134 = 0;
    v133 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v124 = 0;
    v143 = 0;
    v144 = 0;
    v55 = 0;
    goto LABEL_21;
  }

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v34 = sub_24F9220D8();
  __swift_project_value_buffer(v34, qword_27F39E850);
  v35 = sub_24F9220B8();
  v36 = sub_24F92BDB8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_24E5DD000, v35, v36, "Failed to initialize Player from Profile: Nickname is not available.", v37, 2u);
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  sub_24EC483C8();
  swift_allocError();
  swift_willThrow();
  v38 = sub_24F9211A8();
  return (*(*(v38 - 8) + 8))(a1, v38);
}

void sub_24EC481E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_24F5E3C58(a1, a2, a3, a4, 85, 0xE100000000000000);
  v6 = sub_24F5E54A0(a1, a2);
  v7 = [objc_opt_self() availableColors];
  sub_24E69A5C4(0, &qword_27F22C138);
  v8 = sub_24F92B5A8();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x253052270](v6, v8);
    goto LABEL_5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * v6 + 32);
LABEL_5:
    v10 = v9;

    v11 = [v10 color];
    v12 = [v11 CGColor];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C140);
    inited = swift_initStackObject();
    v14 = MEMORY[0x277CEE210];
    *(inited + 16) = xmmword_24F93DE60;
    v15 = *v14;
    *(inited + 32) = v15;
    *(inited + 40) = v12;
    v16 = v15;
    v17 = v12;
    sub_24E609AB0(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F22C148);
    sub_24F928948();

    return;
  }

  __break(1u);
}

unint64_t sub_24EC483C8()
{
  result = qword_27F22C128;
  if (!qword_27F22C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C128);
  }

  return result;
}

unint64_t sub_24EC4841C()
{
  result = qword_27F21E3D0;
  if (!qword_27F21E3D0)
  {
    sub_24F921118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E3D0);
  }

  return result;
}

unint64_t sub_24EC48488()
{
  result = qword_27F22C150;
  if (!qword_27F22C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C150);
  }

  return result;
}

uint64_t AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities) = 0;
  if (*(a1 + 16))
  {
    *(v5 + 40) = a1;
    sub_24E8F997C(a1 + 32, v5 + 48);
    *(v5 + 96) = a1;
    *(v5 + 104) = 1;
    type metadata accessor for AdvertAppearanceTracker();
    v10 = swift_allocObject();
    *(v10 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v10 + 16) = MEMORY[0x277D84F90];
    *(v5 + 120) = v10;
    type metadata accessor for AdvertVisibilityCalculator();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 1025;
    *(v11 + 96) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 40) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 81) = 4;
    *(v11 + 104) = 257;
    *(v5 + 128) = v11;
    *(v5 + 16) = a3 & 1;
    v12 = objc_allocWithZone(MEMORY[0x277D23658]);
    swift_bridgeObjectRetain_n();
    v13 = [v12 init];
    LOBYTE(v11) = [v13 personalizedAds];

    v14 = (v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy);
    v15 = *(type metadata accessor for AdvertRotationStrategy() + 24);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8);
    (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
    *v14 = v11;
    v14[1] = 0;
    sub_24EB3DED0(a2, v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter);
    *(v5 + 112) = 1;
    *(v5 + 24) = a4;
    v17 = *(v5 + 120);
    swift_beginAccess();
    *(v17 + 32) = &protocol witness table for AdvertRotationController;
    swift_unknownObjectWeakAssign();
    v18 = *(v5 + 128);
    swift_beginAccess();
    *(v18 + 96) = &protocol witness table for AdvertRotationController;
    swift_unknownObjectWeakAssign();
    v19 = qword_27F2105A0;

    v23 = a2;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_24F92AAE8();
    __swift_project_value_buffer(v20, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;

    sub_24F928448();

    sub_24F9283A8();
    v21 = *(a1 + 16);

    v24[3] = MEMORY[0x277D83B88];
    v24[0] = v21;
    sub_24F928438();
    sub_24E601704(v24, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F92A588();

    sub_24E601704(v23, &qword_27F229490);
  }

  else
  {
    sub_24E601704(a2, &qword_27F229490);

    MEMORY[0x2530543E0](v5 + 32);
    sub_24E883630(v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming);
    type metadata accessor for AdvertRotationController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t AdvertRotationController.deinit()
{

  MEMORY[0x2530543E0](v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  sub_24EC4B5F0(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, &qword_27F229490);
  return v0;
}

uint64_t sub_24EC48AE8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC48B54(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
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

uint64_t sub_24EC48BF4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EC48C38()
{
  v1 = sub_24F929598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6 + 16;
  swift_beginAccess();
  sub_24E8F997C(v0 + 48, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_24F92ADC8();
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_24E601704(v7, &qword_27F213E68);
    return 0;
  }

  else
  {
    sub_24F9295B8();
    (*(v9 + 8))(v7, v8);
    v11 = sub_24F929558();
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }
}

void sub_24EC48E5C(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24EC4BDA8();
    v6 = sub_24F92C408();

    if (v6)
    {
      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v7 = sub_24F92AAE8();
      __swift_project_value_buffer(v7, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      if (*(v2 + 112) == 1)
      {
        v8 = *(v2 + 128);
        v9 = swift_unknownObjectWeakLoadStrong();
        if (!v9 || (v10 = v9, swift_unknownObjectRelease(), v10 != a1))
        {
          *(v8 + 24) = &protocol witness table for UIView;
          swift_unknownObjectWeakAssign();
          *(v8 + 40) = &protocol witness table for UICollectionView;
          swift_unknownObjectWeakAssign();
          v11 = 0;
          sub_24F031124(&v11);
        }
      }
    }
  }
}

uint64_t sub_24EC4906C(uint64_t a1)
{
  v2 = v1;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v1 + 112) == 1)
  {
    swift_beginAccess();
    sub_24E8F997C(v1 + 48, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    LOBYTE(v6) = SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    if (v6)
    {
      swift_unknownObjectWeakAssign();
      v8 = *(v2 + 128);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v10 = Strong, result = swift_unknownObjectRelease(), v10 != a1))
      {
        *(v8 + 24) = &protocol witness table for UIView;
        swift_unknownObjectWeakAssign();
        *(v8 + 40) = &protocol witness table for UICollectionView;
        swift_unknownObjectWeakAssign();
        LOBYTE(v11[0]) = 0;
        return sub_24F031124(v11);
      }
    }
  }

  return result;
}

uint64_t sub_24EC492B0()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_beginAccess();
    sub_24E8F997C(v0 + 48, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v9);
    sub_24EB3DED0(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v9);
    v7 = v10;
    if (v10)
    {
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 8))(v6, v7, v8);

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    return sub_24E601704(v9, &qword_27F229490);
  }

  return result;
}

uint64_t sub_24EC49500()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 104);
    *(v3 + 104) = 1;
    if ((v4 & 1) == 0)
    {
      v5 = 3;
      return sub_24F031124(&v5);
    }
  }

  return result;
}

uint64_t sub_24EC49690()
{
  v1 = v0;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
    if (v5 == 1)
    {
      LOBYTE(v12[0]) = 3;
      sub_24F031124(v12);
    }

    swift_beginAccess();
    sub_24E8F997C(v1 + 48, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v7 + 8))(v6, v7);
    if (!v8)
    {
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_24EB3DED0(v1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v12);
    v10 = v13;
    if (v13)
    {
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v9, v10, v11);

      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    return sub_24E601704(v12, &qword_27F229490);
  }

  return result;
}

uint64_t sub_24EC49904()
{
  v1 = v0;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_unknownObjectWeakAssign();
    *(v0 + 112) = 0;
    v4 = *(v0 + 128);
    *(v4 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v4 + 40) = 0;
    swift_unknownObjectWeakAssign();
    LOBYTE(v17[0]) = 1;
    result = sub_24F031124(v17);
    *(v4 + 81) = 4;
    v5 = *(v1 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter;
      v8 = v5 + 32;
      do
      {
        sub_24E8F997C(v8, v17);
        v10 = v18;
        v11 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v12 = (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v12)
        {
          sub_24EB3DED0(v1 + v7, v14);
          v13 = v15;
          if (v15)
          {
            v9 = v16;
            __swift_project_boxed_opaque_existential_1(v14, v15);
            (*(v9 + 56))(v12, v13, v9);

            result = __swift_destroy_boxed_opaque_existential_1(v14);
          }

          else
          {

            result = sub_24E601704(v14, &qword_27F229490);
          }
        }

        v8 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_24EC49BC4()
{
  v1 = v0;
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_unknownObjectWeakAssign();
    v4 = *(v0 + 128);
    *(v4 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v4 + 40) = 0;
    swift_unknownObjectWeakAssign();
    LOBYTE(v17[0]) = 1;
    result = sub_24F031124(v17);
    *(v4 + 81) = 4;
    v5 = *(v1 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter;
      v8 = v5 + 32;
      do
      {
        sub_24E8F997C(v8, v17);
        v10 = v18;
        v11 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v12 = (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v12)
        {
          sub_24EB3DED0(v1 + v7, v14);
          v13 = v15;
          if (v15)
          {
            v9 = v16;
            __swift_project_boxed_opaque_existential_1(v14, v15);
            (*(v9 + 56))(v12, v13, v9);

            result = __swift_destroy_boxed_opaque_existential_1(v14);
          }

          else
          {

            result = sub_24E601704(v14, &qword_27F229490);
          }
        }

        v8 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_24EC49E80()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
    result = swift_beginAccess();
    if ((*(v3 + 1) & 1) == 0)
    {
      *(v3 + 1) = 1;
    }
  }

  return result;
}

uint64_t sub_24EC4A01C()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 105);
    *(v3 + 105) = 1;
    if ((v4 & 1) == 0 && *(v3 + 104) == 1)
    {
      v5 = 4;
      return sub_24F031124(&v5);
    }
  }

  return result;
}

uint64_t sub_24EC4A1B8()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 105);
    *(v3 + 105) = 0;
    if (v4 == 1 && *(v3 + 104) == 1)
    {
      v5 = 4;
      return sub_24F031124(&v5);
    }
  }

  return result;
}

uint64_t sub_24EC4A354()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_24EC4BDA8();
    v2 = sub_24F92C408();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_24EC4A3B0(int a1)
{
  v2 = v1;
  v35 = a1;
  v40 = sub_24F91F648();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdvertRotationStrategy();
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  v7 = __swift_project_value_buffer(v6, qword_27F39C440);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v9 = *(sub_24F928468() - 8);
  v10 = ((*(v9 + 80) + 32) & ~*(v9 + 80)) + 2 * *(v9 + 72);
  v11 = swift_allocObject();
  v43 = xmmword_24F93A400;
  *(v11 + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A588();
  }

  v36 = v8;
  v41 = Strong;
  v42 = v7;
  swift_beginAccess();
  sub_24E8F997C(v2 + 48, &v47);
  v13 = v48;
  v14 = v49;
  __swift_project_boxed_opaque_existential_1(&v47, v48);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_14;
  }

  v16 = *(v15 + 40);

  __swift_destroy_boxed_opaque_existential_1(&v47);
  if (!v16)
  {
LABEL_14:
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  v34[0] = v10;
  v34[1] = v6;
  v17 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
  swift_beginAccess();
  v18 = v37;
  sub_24EC4C70C(v2 + v17, v37);
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);

  v21._countAndFlagsBits = v20;
  v21._object = v19;
  LOBYTE(v20) = AdvertAppearanceTracker.isAdvertVisible(for:)(v21);

  v22 = sub_24EC4B80C(v16);
  v23 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
  LOBYTE(v19) = [v23 personalizedAds];

  v24 = v38;
  sub_24F91F638();
  LOBYTE(v23) = AdvertRotationStrategy.shouldPerformRotation(advertIsVisible:onScreenIntervalThreshold:offScreenIntervalThreshold:areAdsPersonalized:on:)(v20 & 1, v19, 1.0, v22);
  (*(v39 + 8))(v24, v40);
  sub_24EC4B5F0(v18);
  if ((v23 & 1) == 0)
  {
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
LABEL_20:
    sub_24F92A588();
  }

  v25 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  v27 = *(v2 + v25);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  *(v2 + v25) = v29;
  v30 = *(v2 + 96);
  v31 = *(v2 + 104);
  v32 = *(v30 + 16);
  if (v31 == v32)
  {
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
LABEL_19:
    sub_24E601704(&v44, &qword_27F2294B0);
    *(swift_allocObject() + 16) = v43;
    sub_24F928448();
    sub_24F9283A8();
    goto LABEL_20;
  }

  if (v31 >= v32)
  {
    goto LABEL_22;
  }

  sub_24E8F997C(v30 + 48 * v31 + 32, &v44);
  *(v2 + 104) = v31 + 1;
  if (!*(&v45 + 1))
  {
    goto LABEL_19;
  }

  sub_24E8EA128(&v44, &v47);
  v33 = v41;
  sub_24EC4AAF0(v41, &v47, v35 & 1);

  return __swift_destroy_boxed_opaque_existential_1(&v47);
}

uint64_t sub_24EC4AAF0(uint64_t a1, void *a2, int a3)
{
  v46 = a1;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v37 - v11;
  swift_beginAccess();
  sub_24E8F997C(v3 + 48, v49);
  v12 = v50;
  v13 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    if (v18)
    {
      v44 = v18;
      v39 = a3;
      v40 = a2;
      v41 = v9;
      v42 = v7;
      v43 = v6;
      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v38 = sub_24F92AAE8();
      v37 = __swift_project_value_buffer(v38, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      v21 = MEMORY[0x277D837D0];
      v48 = MEMORY[0x277D837D0];
      *&v47 = v20;
      *(&v47 + 1) = v19;

      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      sub_24F9283A8();
      v22 = v44;
      v24 = *(v44 + 16);
      v23 = *(v44 + 24);
      v48 = v21;
      *&v47 = v24;
      *(&v47 + 1) = v23;

      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      sub_24F92A588();

      v25 = v3 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v27 = v40;
      v28 = v39;
      v29 = v46;
      if (Strong)
      {
        v30 = *(v25 + 8);
        ObjectType = swift_getObjectType();
        v32 = type metadata accessor for ItemLayoutContext();
        v33 = v45;
        (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
        v34 = ObjectType;
        v22 = v44;
        (*(v30 + 8))(v29, v49, v27, v33, v28 & 1, *(v3 + 24), v34, v30);
        swift_unknownObjectRelease();
        sub_24E601704(v33, &qword_27F2294A8);
      }

      sub_24E8F997C(v27, &v47);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v3 + 48);
      sub_24E8EA128(&v47, (v3 + 48));
      swift_endAccess();
      (*(*v3 + 512))(v29, v49, v27, v28 & 1, *(v3 + 24));
      v35 = v41;
      sub_24F91F638();

      AdvertAppearanceTracker.advertDidLeaveView(for:on:)(v15, v35);

      AdvertAppearanceTracker.advertDidEnterView(for:on:)(v22, v35);

      (*(v42 + 8))(v35, v43);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

void *sub_24EC4B0F8(void *result)
{
  v2 = v1;
  if (*(v1 + 16) == 1)
  {
    v3 = *(v1 + 128);
    [result safeAreaInsets];
    v4 = *(v3 + 64);
    v11[0] = *(v3 + 48);
    v11[1] = v4;
    v12 = *(v3 + 80);
    *(v3 + 48) = v5;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 72) = v8;
    *(v3 + 80) = 0;
    result = sub_24F0310A8(v11);
  }

  v9 = *(v2 + 128);
  if (*(v9 + 105) == 1 && *(v9 + 104) == 1)
  {
    v10 = 2;
    return sub_24F031124(&v10);
  }

  return result;
}

uint64_t sub_24EC4B18C()
{
  v1 = *(v0 + 128);
  if (*(v1 + 105) == 1 && *(v1 + 104) == 1)
  {
    v3 = 2;
    return sub_24F031124(&v3);
  }

  return result;
}

uint64_t sub_24EC4B1EC(uint64_t a1, uint64_t a2)
{
  sub_24EB3DED0(v2 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v7);
  v4 = v8;
  if (!v8)
  {
    return sub_24E601704(v7, &qword_27F229490);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 32))(a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_24EC4B304(uint64_t a1, uint64_t *a2)
{
  sub_24E8F997C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + 48);
  sub_24E8EA128(v5, (v3 + 48));
  return swift_endAccess();
}

uint64_t sub_24EC4B368(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v18 = type metadata accessor for ItemLayoutContext();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_24E601704(v13, &qword_27F2294A8);
  }

  return result;
}

uint64_t AdvertRotationController.__deallocating_deinit()
{
  AdvertRotationController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC4B534()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t type metadata accessor for AdvertRotationController()
{
  result = qword_27F22C160;
  if (!qword_27F22C160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC4B5F0(uint64_t a1)
{
  v2 = type metadata accessor for AdvertRotationStrategy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC4B64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_24EB3DED0(v4 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v17);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v9 + 40))(a1, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E601704(v17, &qword_27F229490);
  }

  v10 = v4 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
  swift_beginAccess();
  v11 = v10 + *(type metadata accessor for AdvertRotationStrategy() + 24);
  sub_24E601704(v11, &qword_27F228300);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8);
  v13 = *(v12 + 48);
  v14 = sub_24F91F648();
  v15 = *(*(v14 - 8) + 16);
  v15(v11, a2, v14);
  v15(v11 + v13, a3, v14);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  return swift_endAccess();
}

double sub_24EC4B80C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD00000000000001DLL, 0x800000024FA57F60), (v3 & 1) != 0) && (sub_24E643A9C(*(v1 + 56) + 32 * v2, v6), (swift_dynamicCast() & 1) != 0) && v5 >= 1)
  {
    return (v5 / 0x3E8uLL);
  }

  else
  {
    return 1.2;
  }
}

uint64_t sub_24EC4B8D0(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v12 = *a2;
  v13 = *a3;
  swift_beginAccess();
  sub_24E8F997C(v4 + 48, v26);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v16 = (*(v15 + 8))(v14, v15);
  if (!v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_24EB3DED0(v4 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v26);
  v18 = v27;
  if (v27)
  {
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v25 = v23;
    v24 = v12;
    (*(v19 + 48))(v17, &v25, &v24, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E601704(v26, &qword_27F229490);
  }

  sub_24F91F638();

  if (v12)
  {
    AdvertAppearanceTracker.advertDidEnterView(for:on:)(v17, v11);
  }

  else
  {
    AdvertAppearanceTracker.advertDidLeaveView(for:on:)(v17, v11);
  }

  if (v13 != 3)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v21 = v23 <= 1 || v23 == 4;
    if (!v21 || v12 < 2)
    {
      goto LABEL_21;
    }

    v22 = 0;
    goto LABEL_20;
  }

  if (v12 >= 2)
  {
    v22 = 1;
LABEL_20:
    sub_24EC4A3B0(v22);
  }

LABEL_21:

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EC4BB38()
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(v0 + 112) == 1)
  {
    swift_beginAccess();
    sub_24E8F997C(v0 + 48, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v9);
    swift_unknownObjectWeakAssign();
    sub_24EB3DED0(v0 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v9);
    v7 = v10;
    if (v10)
    {
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 24))(v6, v7, v8);

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    return sub_24E601704(v9, &qword_27F229490);
  }

  return result;
}

unint64_t sub_24EC4BDA8()
{
  result = qword_27F21BCB0;
  if (!qword_27F21BCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21BCB0);
  }

  return result;
}

void sub_24EC4BDF4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24EC4BDA8();
    v4 = sub_24F92C408();

    if (v4)
    {
      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v5 = sub_24F92AAE8();
      __swift_project_value_buffer(v5, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      if (*(v1 + 112) == 1)
      {
        swift_unknownObjectWeakAssign();
        v6 = *(v1 + 128);
        *(v6 + 24) = 0;
        swift_unknownObjectWeakAssign();
        *(v6 + 40) = 0;
        swift_unknownObjectWeakAssign();
        v7 = 1;
        sub_24F031124(&v7);
        *(v6 + 81) = 4;
      }
    }
  }
}

uint64_t sub_24EC4BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E8F997C(v3 + 48, a2);
}

uint64_t sub_24EC4C034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC4C090(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EC4C0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EC4C14C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24EC4C1A8()
{
  result = type metadata accessor for AdvertRotationStrategy();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EC4C70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertRotationStrategy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC4C770()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C118);
  __swift_project_value_buffer(v4, qword_27F39C118);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id sub_24EC4C8CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27F22C170 = v0;
  return result;
}

id sub_24EC4C930@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v18 - v5;
  result = [v1 rawUpdateDictionary];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_24F92AE38();

  v18[1] = 0x44657361656C6572;
  v18[2] = 0xEB00000000657461;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(v19), (v11 & 1) == 0))
  {

    sub_24E6585F8(v19);
    goto LABEL_10;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, v20);
  sub_24E6585F8(v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v16 = sub_24F91F648();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  if (qword_27F2104C0 != -1)
  {
    swift_once();
  }

  v12 = qword_27F22C170;
  v13 = sub_24F92B098();

  v14 = [v12 dateFromString_];

  if (v14)
  {
    sub_24F91F608();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = sub_24F91F648();
  (*(*(v17 - 8) + 56))(v6, v15, 1, v17);
  return sub_24E6C4F90(v6, a1);
}

uint64_t sub_24EC4CBD0(void *a1, void *a2)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v26 - v16;
  v18 = [a1 installDate];
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  sub_24F91F608();

  v20 = *(v5 + 32);
  v20(v17, v13, v4);
  v21 = [a2 installDate];
  if (!v21)
  {
    (*(v5 + 8))(v17, v4);
LABEL_5:
    v23 = 1;
    return v23 & 1;
  }

  v22 = v21;
  sub_24F91F608();

  v20(v10, v7, v4);
  v23 = sub_24F91F588();
  v24 = *(v5 + 8);
  v24(v10, v4);
  v24(v17, v4);
  return v23 & 1;
}

id sub_24EC4CDDC(void *a1, void *a2)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v66 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v69 = &v63 - v24;
  sub_24EC4C930(v16);
  v25 = v21;
  v26 = *(v21 + 48);
  v27 = v26(v16, 1, v20);
  v67 = a1;
  if (v27 == 1)
  {
    v28 = [a1 timestamp];
    if (v28)
    {
      v29 = v28;
      sub_24F91F608();

      v25 = v21;
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(v25 + 56);
    v31(v13, v30, 1, v20);
    sub_24E6C4F90(v13, v19);
    if (v26(v16, 1, v20) != 1)
    {
      sub_24E601704(v16, &unk_27F22EC30);
    }
  }

  else
  {
    (*(v21 + 32))(v19, v16, v20);
    v31 = *(v21 + 56);
    v31(v19, 0, 1, v20);
  }

  if (v26(v19, 1, v20) == 1)
  {
    v32 = v19;
LABEL_19:
    sub_24E601704(v32, &unk_27F22EC30);
LABEL_20:
    v44 = 1;
    return (v44 & 1);
  }

  v33 = *(v25 + 32);
  v33(v69, v19, v20);
  v34 = v25;
  v35 = v68;
  sub_24EC4C930(v7);
  if (v26(v7, 1, v20) == 1)
  {
    v64 = v33;
    v36 = [v35 timestamp];
    if (v36)
    {
      v37 = v65;
      v38 = v36;
      sub_24F91F608();

      v39 = 0;
    }

    else
    {
      v39 = 1;
      v37 = v65;
    }

    v40 = v34;
    v31(v37, v39, 1, v20);
    sub_24E6C4F90(v37, v10);
    v41 = v26(v7, 1, v20);
    v33 = v64;
    if (v41 != 1)
    {
      sub_24E601704(v7, &unk_27F22EC30);
    }
  }

  else
  {
    v33(v10, v7, v20);
    v31(v10, 0, 1, v20);
    v40 = v34;
  }

  v42 = v26(v10, 1, v20);
  v43 = v67;
  if (v42 == 1)
  {
    (*(v40 + 8))(v69, v20);
    v32 = v10;
    goto LABEL_19;
  }

  v46 = v66;
  v33(v66, v10, v20);
  v47 = v69;
  if ((sub_24F91F5F8() & 1) == 0)
  {
    v59 = v40;
    v44 = sub_24F91F588();
    v60 = *(v59 + 8);
    v60(v46, v20);
    v60(v47, v20);
    return (v44 & 1);
  }

  v48 = v40;
  result = [v43 updateDictionary];
  if (!result)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = result;
  v50 = sub_24F92AE38();

  v70 = 1701667182;
  v71 = 0xE400000000000000;
  sub_24F92C7F8();
  if (!*(v50 + 16) || (v51 = sub_24E76D934(v72), (v52 & 1) == 0))
  {

    sub_24E6585F8(v72);
    goto LABEL_36;
  }

  sub_24E643A9C(*(v50 + 56) + 32 * v51, v73);
  sub_24E6585F8(v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v61 = *(v48 + 8);
    v61(v46, v20);
LABEL_37:
    v61(v47, v20);
    goto LABEL_20;
  }

  v54 = v70;
  v53 = v71;
  result = [v68 updateDictionary];
  if (result)
  {
    v55 = result;
    v56 = sub_24F92AE38();

    v70 = 1701667182;
    v71 = 0xE400000000000000;
    sub_24F92C7F8();
    if (*(v56 + 16) && (v57 = sub_24E76D934(v72), (v58 & 1) != 0))
    {
      sub_24E643A9C(*(v56 + 56) + 32 * v57, v73);
      sub_24E6585F8(v72);

      if (swift_dynamicCast())
      {
        if (v54 == v70 && v53 == v71)
        {
          v44 = 0;
        }

        else
        {
          v44 = sub_24F92CE08();
        }

        v62 = *(v48 + 8);
        v62(v66, v20);
        v62(v47, v20);
        return (v44 & 1);
      }
    }

    else
    {

      sub_24E6585F8(v72);
    }

    v61 = *(v48 + 8);
    v61(v66, v20);
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t UpdatesSorter.Ordering.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t static UpdatesSorter.sortedUpdateLockups(for:ordering:isAppleSiliconSupportEnabled:isRosettaAvailable:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_24F92AAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v49 = *a2;
  if (v49)
  {
    v15 = sub_24EC4CDDC;
  }

  else
  {
    v15 = sub_24EC4CBD0;
  }

  *&v54 = sub_24EC4E190(v16, sub_24EAEACA0, sub_24EA10904);
  sub_24EC4EAC8(&v54, v15);
  v17 = v54;
  v56 = MEMORY[0x277D84F90];
  if ((v54 & 0x8000000000000000) != 0 || (v54 & 0x4000000000000000) != 0)
  {
    goto LABEL_32;
  }

  for (i = *(v54 + 16); i; i = sub_24F92C738())
  {
    v19 = 0;
    v48 = v17 & 0xC000000000000001;
    v45 = "didEndDisplaying";
    v46 = (v4 + 16);
    v44 = (v4 + 8);
    v41 = MEMORY[0x277D84F90];
    v43 = xmmword_24F93A400;
    v42 = v17;
    v47 = i;
    while (1)
    {
      if (v48)
      {
        v20 = MEMORY[0x253052270](v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_31;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v4 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v53 = v19 + 1;
      if (v49)
      {
        sub_24EC4C930(v12);
      }

      else
      {
        v21 = [v20 installDate];
        if (v21)
        {
          v22 = v19;
          v23 = v21;
          sub_24F91F608();

          v19 = v22;
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        v25 = sub_24F91F648();
        (*(*(v25 - 8) + 56))(v9, v24, 1, v25);
        sub_24E6C4F90(v9, v12);
      }

      v26 = v50;
      sub_24E6C4F90(v12, v50);
      v27 = v4;
      if (sub_24EEFE3C0(v27, v26, 1, 1, v19))
      {

        v4 = &v56;
        MEMORY[0x253050F00]();
        v39 = v47;
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
          v17 = v42;
        }

        sub_24F92B638();
        v41 = v56;
        v19 = v53;
        if (v53 == v39)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v52 = v19;
        if (qword_27F2104B8 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v3, qword_27F39C118);
        (*v46)(v6, v28, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v43;
        sub_24F9283A8();
        v29 = [v27 bundleIdentifier];
        if (v29)
        {
          v30 = v29;
          v31 = sub_24F92B0D8();
          v51 = v27;
          v32 = v3;
          v33 = v6;
          v34 = v31;
          v35 = v12;
          v36 = v9;
          v38 = v37;

          *(&v55 + 1) = MEMORY[0x277D837D0];
          *&v54 = v34;
          *(&v54 + 1) = v38;
          v6 = v33;
          v3 = v32;
          v27 = v51;
          v9 = v36;
          v12 = v35;
          v17 = v42;
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }

        sub_24F9283B8();
        sub_24E601704(&v54, &qword_27F2129B0);
        v4 = v6;
        sub_24F92A598();

        (*v44)(v6, v3);

        v19 = v52 + 1;
        if (v53 == v47)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_34:

  return v41;
}

uint64_t static UpdatesSorter.sorted(updates:ordering:)(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = sub_24EC4CDDC;
  }

  else
  {
    v2 = sub_24EC4CBD0;
  }

  v5 = sub_24EC4E190(v3, sub_24EAEACA0, sub_24EA10904);
  sub_24EC4EAC8(&v5, v2);
  return v5;
}

uint64_t sub_24EC4DCE8(void **__dst, id *__src, id *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v55 = &v16[v11];
    if (v9 < 8 || __src >= v7)
    {
LABEL_20:
      v27 = v8;
      goto LABEL_53;
    }

    v17 = __src;
    while (1)
    {
      v18 = v17;
      v19 = v6;
      v20 = v16;
      v21 = *v16;
      v22 = *v17;
      v23 = v21;
      v24 = a5(v22, v23);
      if (v19)
      {

        v41 = v20;
        v42 = v55 - v20 + 7;
        if (v55 - v20 >= 0)
        {
          v42 = v55 - v20;
        }

        v43 = v42 >> 3;
        if (v8 < v20 || v8 >= (v20 + (v42 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v20, 8 * v43);
        }

        else if (v8 != v20)
        {
          v44 = 8 * v43;
          v45 = v8;
          goto LABEL_59;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v18;
      v17 = v18 + 1;
      v16 = v20;
      if (v8 != v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v8;
      v6 = 0;
      if (v16 >= v55 || v17 >= v7)
      {
        goto LABEL_20;
      }
    }

    v26 = v20;
    v16 = v20 + 1;
    v17 = v18;
    if (v8 == v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v26;
    goto LABEL_18;
  }

  v27 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v28;
  }

  v52 = a4;
  v55 = (a4 + 8 * v14);
  if (v12 < 8 || v27 <= v8)
  {
    v16 = a4;
    goto LABEL_53;
  }

  v29 = -a4;
  v50 = -a4;
LABEL_27:
  v53 = v6;
  v51 = v27;
  v30 = v27 - 1;
  v31 = v55;
  v32 = v55 + v29;
  --v7;
  while (1)
  {
    v33 = *--v31;
    v34 = v30;
    v35 = *v30;
    v36 = v33;
    v37 = v35;
    v38 = a5(v36, v37);

    if (v53)
    {
      break;
    }

    v39 = v7 + 1;
    if (v38)
    {
      v40 = v34;
      if (v39 != v51)
      {
        *v7 = *v34;
      }

      v16 = v52;
      v6 = 0;
      if (v55 <= v52 || (v27 = v40, v29 = v50, v40 <= v8))
      {
        v27 = v40;
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    if (v39 != v55)
    {
      *v7 = *v31;
    }

    v32 -= 8;
    --v7;
    v55 = v31;
    v30 = v34;
    if (v31 <= v52)
    {
      v55 = v31;
      v27 = v51;
      v16 = v52;
LABEL_53:
      v48 = v55 - v16 + 7;
      if (v55 - v16 >= 0)
      {
        v48 = v55 - v16;
      }

      if (v27 >= v16 && v27 < (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v16)
      {
        return 1;
      }

      v44 = 8 * (v48 >> 3);
      v45 = v27;
      v41 = v16;
LABEL_59:
      memmove(v45, v41, v44);
      return 1;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = v51;
  v41 = v52;
  if (v51 < v52 || v51 >= (v52 + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v47);
    return 1;
  }

  if (v51 != v52)
  {
    v44 = 8 * v47;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_24EC4E190(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_24F92C738();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_24EC4E234(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v7)
    {
      goto LABEL_20;
    }

    v101 = v7;
    v13 = *v6;
    v14 = *(v13 + 8 * v9);
    v9 = *(v13 + 8 * v12);
    v15 = v14;
    v16 = a5(v9, v15);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v11 + 2;
    v97 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (1)
    {
      v21 = v101;
      if (v101 == v18)
      {
        break;
      }

      v22 = *(v20 - 1);
      v9 = *v20;
      v23 = v22;
      LODWORD(v22) = a5(v9, v23);

      ++v18;
      ++v20;
      if ((v17 ^ v22))
      {
        v21 = v18 - 1;
        break;
      }
    }

    v6 = a3;
    v8 = a4;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v97;
    if (v21 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v21)
    {
      v25 = 8 * v21 - 8;
      v26 = v21;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v12 = v21;
      v11 = v97;
      goto LABEL_20;
    }

    v12 = v21;
    v11 = v97;
LABEL_20:
    v29 = v6[1];
    if (v12 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_132;
    }

    v30 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v6[1];
    }

    if (v30 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v30)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v79 = *v6;
      v80 = v79 + 8 * v12 - 8;
      v98 = v11;
      v81 = v11 - v12;
      v94 = v30;
      do
      {
        v102 = v12;
        v82 = *(v79 + 8 * v12);
        v83 = v81;
        v95 = v80;
        do
        {
          v84 = *v80;
          v9 = v82;
          v85 = v84;
          v86 = a5(v9, v85);
          if (v5)
          {

            return;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_125;
          }

          v88 = *v80;
          v82 = *(v80 + 8);
          *v80 = v82;
          *(v80 + 8) = v88;
          v80 -= 8;
        }

        while (!__CFADD__(v83++, 1));
        v12 = v102 + 1;
        v80 = v95 + 8;
        --v81;
      }

      while (v102 + 1 != v94);
      v12 = v94;
      v6 = a3;
      v11 = v98;
      if (v94 < v98)
      {
        goto LABEL_118;
      }
    }

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24E615ED8(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_24E615ED8((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v31;
    *(v35 + 5) = v12;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v9 = v12;
    if (v33)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_111;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_117;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v38 = *(v10 + 4);
      v39 = *(v10 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_48:
      if (v41)
      {
        goto LABEL_107;
      }

      v54 = &v10[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v60 = &v10[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_114;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v64 = &v10[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_62:
    if (v59)
    {
      goto LABEL_109;
    }

    v67 = &v10[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_112;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_69:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_124;
    }

    v76 = *&v10[16 * v75 + 32];
    v77 = *&v10[16 * v37 + 40];
    sub_24EC4DCE8((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v77 < v76)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24E86164C(v10);
    }

    if (v75 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v78 = &v10[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    sub_24E8615C0(v37);
    v34 = *(v10 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v10 = sub_24E86164C(v10);
LABEL_91:
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*v6)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_24EC4DCE8((*v6 + 8 * v91), (*v6 + 8 * *&v10[16 * v90 + 16]), (*v6 + 8 * v92), v9, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v92 < v91)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24E86164C(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_24E8615C0(v90 - 1);
      v90 = *(v10 + 2);
      if (v90 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_24EC4E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_24EC4E9A4(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = a1[1];
  v5 = sub_24F92CD78();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24EC4EBD4();
        v8 = sub_24F92B618();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_24EC4E234(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_24EC4E8AC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_24EC4EAC8(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E861E6C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_24EC4E9A4(v8, a2);
  return sub_24F92C958();
}

unint64_t sub_24EC4EB60()
{
  result = qword_27F22C178;
  if (!qword_27F22C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C178);
  }

  return result;
}

unint64_t sub_24EC4EBD4()
{
  result = qword_27F225148;
  if (!qword_27F225148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F225148);
  }

  return result;
}

char *ScrollingAlertAction.__allocating_init(title:message:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *&v12[OBJC_IVAR____TtC12GameStoreKit20ScrollingAlertAction_message] = a3;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a4, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  v18 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v35, &v32);
  if (*(&v33 + 1))
  {
    v20 = v33;
    *v19 = v32;
    *(v19 + 1) = v20;
    *(v19 + 4) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v8;
    v23 = a4;
    v24 = a1;
    v25 = a2;
    v26 = v21;
    v27 = v9;
    v29 = v28;
    (*(v27 + 8))(v11, v22);
    v31[1] = v26;
    v31[2] = v29;
    a2 = v25;
    a1 = v24;
    a4 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  (*(v15 + 8))(a4, v14);
  sub_24E601704(v35, &qword_27F235830);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *ScrollingAlertAction.init(title:message:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit20ScrollingAlertAction_message) = a3;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
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
    v22 = sub_24F91F668();
    v30 = a4;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    (*(v31 + 8))(v12, v32);
    v33 = v22;
    v34 = v26;
    a2 = v24;
    a1 = v23;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v41, &qword_27F235830);
  v27 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t ScrollingAlertAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v6 = *v2;
  v43 = v3;
  v44 = v6;
  v45 = sub_24F9285B8();
  v47 = *(v45 - 8);
  v7 = MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  sub_24F928398();
  v20 = sub_24F928328();
  v41 = v12;
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (v20)
  {
    v22 = a1;
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v25 = v24;
    *v24 = 0x656C746974;
    v26 = 0xE500000000000000;
LABEL_5:
    v28 = v44;
    v24[1] = v26;
    v24[2] = v28;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    goto LABEL_6;
  }

  sub_24F928398();
  v27 = sub_24F928328();
  v21(v19, v11);
  if (v27)
  {
    v22 = a1;
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v25 = v24;
    *v24 = 0x6567617373656DLL;
    v26 = 0xE700000000000000;
    goto LABEL_5;
  }

  v39 = v21;
  sub_24F928398();
  v23 = v47 + 16;
  v30 = v45;
  v31 = v46;
  v38 = *(v47 + 16);
  v38(v10, v46, v45);
  v32 = v43;
  v33 = sub_24F0151C0(v17, v10);
  if (!v32)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit20ScrollingAlertAction_message) = v33;
    v34 = v40;
    v35 = *(v41 + 16);
    v44 = v11;
    v35(v40, a1, v11);
    v36 = v42;
    v38(v42, v31, v30);
    v23 = Action.init(deserializing:using:)(v34, v36);
    (*(v47 + 8))(v31, v30);
    v39(a1, v44);
    return v23;
  }

  v22 = a1;
  v21 = v39;
LABEL_6:
  (*(v47 + 8))(v46, v45);
  v21(v22, v11);
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t ScrollingAlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t ScrollingAlertAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollingAlertAction()
{
  result = qword_27F22C180;
  if (!qword_27F22C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC4FA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  v10 = *(ChallengeRematchAction - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](ChallengeRematchAction - 8);
  sub_24EC538D8(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateChallengeRematchAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EC5188C(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F98FC20;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EC4FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = type metadata accessor for CreateChallengeIntent();
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_24EC4FE0C;

  return MEMORY[0x28217F228](v4 + 2, v6, v6);
}

uint64_t sub_24EC4FE0C()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EC506E4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_24EC4FF8C;
    v4 = v2[23];
    v5 = v2[21];

    return MEMORY[0x28217F228](v4, v5, v5);
  }
}

uint64_t sub_24EC4FF8C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_24EC50754;
  }

  else
  {
    v2 = sub_24EC500A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC500A0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v32 = v3[4];
  v33 = v3[2];
  v30 = v3[3];
  v31 = v3[5];
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  v5 = ChallengeRematchAction[6];
  v6 = (v3 + ChallengeRematchAction[5]);
  v28 = v6[1];
  v29 = *v6;
  v27 = *(v3 + v5);
  v26 = *(v3 + v5 + 8);
  v7 = v3 + ChallengeRematchAction[7];
  v25 = *v7;
  v24 = v7[8];
  v8 = *(v3 + ChallengeRematchAction[8]);
  v9 = ChallengeRematchAction[10];
  v10 = (v3 + ChallengeRematchAction[9]);
  v11 = v10[1];
  v23 = *v10;
  v12 = *(v3 + v9);
  v13 = *(v3 + v9 + 8);
  v14 = *(v3 + ChallengeRematchAction[11]);
  sub_24EC51A2C(v3 + ChallengeRematchAction[12], v2 + *(v1 + 56));
  sub_24EC538D8(v3 + ChallengeRematchAction[13], v2 + *(v1 + 60), type metadata accessor for Player);
  *v2 = v33;
  *(v2 + 8) = v30;
  *(v2 + 16) = v32;
  *(v2 + 24) = v31;
  *(v2 + 32) = v29;
  *(v2 + 40) = v28;
  *(v2 + 48) = v27;
  *(v2 + 56) = v26;
  *(v2 + 64) = v25;
  *(v2 + 72) = v24;
  v15 = MEMORY[0x277D84F90];
  *(v2 + 80) = v8;
  *(v2 + 88) = v15;
  *(v2 + 96) = v23;
  *(v2 + 104) = v11;
  *(v2 + 112) = v12;
  *(v2 + 120) = v13;
  *(v2 + 128) = v14;
  v16 = v0[5];
  v34 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);

  v17 = swift_task_alloc();
  v0[28] = v17;
  v18 = sub_24EC53940(&qword_27F21D5E0, type metadata accessor for CreateChallengeIntent);
  *v17 = v0;
  v17[1] = sub_24EC50304;
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[16];

  return MEMORY[0x28217F4B0](v0 + 7, v19, v21, v20, v18, v16, v34);
}

uint64_t sub_24EC50304()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24EC50DCC;
  }

  else
  {
    v2 = sub_24EC50418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC50418()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[30] = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_24EC504C4;
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[16];

  return sub_24EC51AE8(v2, v1, v5, v6, v4, (v0 + 2));
}

uint64_t sub_24EC504C4()
{

  return MEMORY[0x2822009F8](sub_24EC505DC, 0, 0);
}

uint64_t sub_24EC505DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_24EC53988(v0[20], type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);
  v4 = v0[15];
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_24F928AE8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EC506E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC50754()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC507CC()
{
  v2 = *(*v1 + 256);
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_24EC50A14;
  }

  else
  {
    v3 = sub_24EC508F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EC508F8()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 120);
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_24F928AE8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24EC50A14()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC50AE0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_24EC50D08;
  }

  else
  {
    v2 = sub_24EC50BF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC50BF4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 120);
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_24F928AE8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24EC50D08()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_24EC53988(v4, type metadata accessor for CreateChallengeIntent);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC50DCC()
{
  v1 = *(v0 + 232);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  sub_24EC51A9C();
  if (!swift_dynamicCast())
  {
LABEL_15:

    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    v20[1] = sub_24EC50AE0;
    v21 = *(v0 + 184);
    v22 = *(v0 + 128);

    return sub_24EC53060(v22, v21);
  }

  v3 = *(v0 + 112);
  *(v0 + 256) = v3;
  v4 = [v3 domain];
  v5 = sub_24F92B0D8();
  v7 = v6;

  if (v5 == 0xD00000000000001ELL && 0x800000024FA58030 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }
  }

  if ([v3 code] != 1)
  {
    goto LABEL_14;
  }

  v10 = [v3 localizedDescription];
  v11 = sub_24F92B0D8();
  v13 = v12;

  *(v0 + 72) = v11;
  *(v0 + 80) = v13;
  *(v0 + 88) = 892416309;
  *(v0 + 96) = 0xE400000000000000;
  sub_24E600AEC();
  v14 = sub_24F92C5F8();

  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = v3;
  v16 = swift_task_alloc();
  *(v0 + 264) = v16;
  *v16 = v0;
  v16[1] = sub_24EC507CC;
  v17 = *(v0 + 184);
  v18 = *(v0 + 128);

  return sub_24EC529C4(v18, v17);
}

uint64_t sub_24EC510E0()
{
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  v2 = *(*(ChallengeRematchAction - 1) + 80);

  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = *(type metadata accessor for GameActivityDraftGameInfo(0) + 28);
  v5 = sub_24F9289E8();
  v37 = *(v5 - 8);
  v6 = *(v37 + 8);
  v6(v3 + v4, v5);

  v7 = ChallengeRematchAction[12];
  v8 = sub_24F920A88();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = v3 + ChallengeRematchAction[13];

  v11 = type metadata accessor for Player(0);
  v38 = v5;
  v36 = v6;
  v6(v10 + v11[6], v5);

  if (*(v10 + v11[9] + 8) != 1)
  {
  }

  v12 = v10 + v11[13];
  v13 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = type metadata accessor for CallProviderConversationHandle();
    v15 = *(*(v14 - 8) + 48);
    if (!v15(v12, 1, v14))
    {

      v16 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v12 + v16, 1, v38))
      {
        v36(v12 + v16, v38);
      }
    }

    v17 = v12 + *(v13 + 20);
    if (!v15(v17, 1, v14))
    {

      v18 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v17 + v18, 1, v38))
      {
        v36(v17 + v18, v38);
      }
    }
  }

  if (*(v10 + v11[15] + 8))
  {
  }

  v19 = v10 + v11[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v19, 1, PlayedTogetherInfo))
  {

    v21 = type metadata accessor for Game();
    v36(v19 + v21[18], v38);
    v22 = v21[19];
    if (!(*(v37 + 48))(v19 + v22, 1, v38))
    {
      v36(v19 + v22, v38);
    }

    v23 = v21[21];
    v24 = sub_24F920818();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }
  }

  v26 = v10 + v11[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v26, 1, ChallengeInfo))
  {

    v28 = type metadata accessor for Game();
    v36(v26 + v28[18], v38);
    v29 = v28[19];
    if (!(*(v37 + 48))(v26 + v29, 1, v38))
    {
      v36(v26 + v29, v38);
    }

    v30 = v28[21];
    v31 = sub_24F920818();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v26 + v30, 1, v31))
    {
      (*(v32 + 8))(v26 + v30, v31);
    }
  }

  v33 = ChallengeRematchAction[14];
  v34 = sub_24F928AD8();
  (*(*(v34 - 8) + 8))(v3 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_24EC5188C(uint64_t a1, uint64_t a2)
{
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  (*(*(ChallengeRematchAction - 8) + 32))(a2, a1, ChallengeRematchAction);
  return a2;
}

uint64_t sub_24EC518F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for CreateChallengeRematchAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EC4FCB0(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EC519E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EC51A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EC51A9C()
{
  result = qword_27F22C210;
  if (!qword_27F22C210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22C210);
  }

  return result;
}

uint64_t sub_24EC51AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C218);
  v6[23] = swift_task_alloc();
  sub_24F928AD8();
  v6[24] = swift_task_alloc();
  v7 = sub_24F92A6B8();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v9 = sub_24F928AE8();
  v6[32] = v9;
  v6[33] = *(v9 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = type metadata accessor for FinishChallengeCreationIntent();
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC51D14, 0, 0);
}

uint64_t sub_24EC51D14()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  v9 = *(v2 + 28);
  sub_24EC538D8(v4, v1 + v9, type metadata accessor for GameActivityDraftGameInfo);
  v10 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 0, 1, v10);

  v11 = sub_24F92A698();
  *v1 = v6;
  *(v1 + 8) = v5;
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = 1;
  v12 = (v1 + *(v2 + 32));
  *v12 = v11;
  v12[1] = v13;
  v14 = v3[3];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v14);
  v16 = swift_task_alloc();
  v0[37] = v16;
  v17 = sub_24EC53940(&qword_27F22C220, type metadata accessor for FinishChallengeCreationIntent);
  *v16 = v0;
  v16[1] = sub_24EC51ECC;
  v19 = v0[35];
  v18 = v0[36];
  v20 = v0[20];

  return MEMORY[0x28217F4B0](v0 + 7, v18, v20, v19, v17, v14, v15);
}

uint64_t sub_24EC51ECC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24EC525AC;
  }

  else
  {
    v2 = sub_24EC51FE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC51FE0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  sub_24E612C80((v0 + 56), v0 + 16);
  *(v0 + 344) = *MEMORY[0x277D21E18];
  (*(v2 + 104))(v1);
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  *v3 = v0;
  v3[1] = sub_24EC520E0;
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 160);

  return MEMORY[0x28217F468](v5, v0 + 16, v6, v7, v4);
}

uint64_t sub_24EC520E0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  *(*v1 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC52730;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    v6 = sub_24EC52270;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC52270()
{
  v1 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24EC53988(v1, type metadata accessor for FinishChallengeCreationIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EC52348()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[29];
    v3 = v2[30];
    v5 = v2[28];

    (*(v4 + 8))(v3, v5);
    v6 = sub_24EC528B8;
  }

  else
  {
    (*(v2[29] + 8))(v2[30], v2[28]);
    __swift_destroy_boxed_opaque_existential_1((v2 + 12));
    v6 = sub_24EC524A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC524A8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 184);
  (*(*(v0 + 264) + 56))(v4, 0, 1, *(v0 + 256));
  sub_24EC539E8(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC525AC()
{
  sub_24EC53988(v0[36], type metadata accessor for FinishChallengeCreationIntent);
  v1 = *MEMORY[0x277D21E18];
  v0[41] = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  sub_24F928A98();
  sub_24F92A698();
  sub_24F92A668();
  v8 = MEMORY[0x277D223D8];
  v0[15] = v6;
  v0[16] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(v7 + 16))(boxed_opaque_existential_1, v5, v6);
  (*(v3 + 104))(v2, v1, v4);
  v10 = swift_task_alloc();
  v0[42] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  *v10 = v0;
  v10[1] = sub_24EC52348;
  v12 = v0[30];
  v13 = v0[23];
  v14 = v0[20];

  return MEMORY[0x28217F468](v13, v0 + 12, v12, v14, v11);
}

uint64_t sub_24EC52730()
{
  v1 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24EC53988(v1, type metadata accessor for FinishChallengeCreationIntent);
  v2 = *(v0 + 344);
  *(v0 + 328) = *(v0 + 320);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  sub_24F928A98();
  sub_24F92A698();
  sub_24F92A668();
  v9 = MEMORY[0x277D223D8];
  *(v0 + 120) = v7;
  *(v0 + 128) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(v8 + 16))(boxed_opaque_existential_1, v6, v7);
  (*(v4 + 104))(v3, v2, v5);
  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  *v11 = v0;
  v11[1] = sub_24EC52348;
  v13 = *(v0 + 240);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);

  return MEMORY[0x28217F468](v14, v0 + 96, v13, v15, v12);
}

uint64_t sub_24EC528B8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v4 = *(v0 + 184);
  (*(*(v0 + 264) + 56))(v4, 1, 1, *(v0 + 256));
  sub_24EC539E8(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EC529C4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_24F9289E8();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  v2[16] = swift_task_alloc();
  sub_24F928AD8();
  v2[17] = swift_task_alloc();
  v5 = sub_24F92A638();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC52BD8, 0, 0);
}

uint64_t sub_24EC52BD8()
{
  v1 = v0[19];
  v19 = v0[20];
  v20 = v0[18];
  v2 = v0[16];
  v3 = v0[10];
  v21 = v0[9];
  v22 = v0[11];
  sub_24F928A98();
  v4 = sub_24F92A628();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5._countAndFlagsBits = 0xD000000000000036;
  v5._object = 0x800000024FA58050;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  localizedString(_:comment:)(v5, v6);
  v7._countAndFlagsBits = 0xD000000000000038;
  v7._object = 0x800000024FA58090;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  localizedString(_:comment:)(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v9._object = 0x800000024FA580D0;
  v9._countAndFlagsBits = 0xD00000000000001FLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  localizedString(_:comment:)(v9, v10);
  sub_24F92A5D8();
  sub_24F92A5F8();
  sub_24F9289D8();
  sub_24F92A5E8();
  v11 = MEMORY[0x277D223B8];
  v0[5] = v20;
  v0[6] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v1 + 16))(boxed_opaque_existential_1, v19, v20);
  (*(v3 + 104))(v22, *MEMORY[0x277D21E18], v21);
  v13 = swift_task_alloc();
  v0[21] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  *v13 = v0;
  v13[1] = sub_24EC52EC8;
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[7];

  return MEMORY[0x28217F468](v15, v0 + 2, v16, v17, v14);
}

uint64_t sub_24EC52EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC53A50;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2));
    v6 = sub_24EC53A54;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC53060(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_24F9289E8();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  v2[16] = swift_task_alloc();
  sub_24F928AD8();
  v2[17] = swift_task_alloc();
  v5 = sub_24F92A638();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC53274, 0, 0);
}

uint64_t sub_24EC53274()
{
  v1 = v0[16];
  sub_24F928A98();
  v2 = sub_24F92A628();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  if (qword_27F2114C0 != -1)
  {
    swift_once();
  }

  v3 = qword_27F2114C8;

  if (v3 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v4 = qword_27F211588;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];
  v8 = v0[10];
  v17 = v0[9];
  v18 = v0[11];

  sub_24F92A5D8();
  sub_24F92A5F8();
  sub_24F9289D8();
  sub_24F92A5E8();
  v9 = MEMORY[0x277D223B8];
  v0[5] = v7;
  v0[6] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v5 + 16))(boxed_opaque_existential_1, v6, v7);
  (*(v8 + 104))(v18, *MEMORY[0x277D21E18], v17);
  v11 = swift_task_alloc();
  v0[21] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  *v11 = v0;
  v11[1] = sub_24EC535B0;
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[7];

  return MEMORY[0x28217F468](v13, v0 + 2, v14, v15, v12);
}

uint64_t sub_24EC535B0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC5380C;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2));
    v6 = sub_24EC53748;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC53748()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC5380C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC538D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC53940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC53988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EC539E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchAction.term.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);

  return v1;
}

uint64_t SearchAction.source.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);

  return v1;
}

uint64_t SearchAction.originatingTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);

  return v1;
}

uint64_t SearchAction.prefixTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);

  return v1;
}

uint64_t SearchAction.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);

  return v1;
}

void SearchAction.referrerData.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  sub_24EA145F0(v3, v4, v5, v6, v7, v8);
}

void *SearchAction.__allocating_init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, char *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v62 = a8;
  v71 = a1;
  v72 = a2;
  v69 = a17;
  v70 = a18;
  v67 = a15;
  v68 = a16;
  v65 = a13;
  v66 = a14;
  v64 = a12;
  v63 = a11;
  v61 = a10;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = *a6;
  v28 = *a9;
  v29 = *(a20 + 32);
  v30 = *(a20 + 40);
  v31 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v31 = a3;
  v31[1] = a4;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v27;
  v32 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  v33 = v62;
  *v32 = a7;
  v32[1] = v33;
  sub_24E60169C(a5, v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v28;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = v61;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = v63;
  v34 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  v35 = v65;
  *v34 = v64;
  v34[1] = v35;
  v36 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  v37 = v67;
  *v36 = v66;
  v36[1] = v37;
  v38 = v69;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v68;
  v39 = (v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v40 = v70;
  *v39 = v38;
  v39[1] = v40;
  v41 = v26 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v42 = *(a20 + 16);
  *v41 = *a20;
  *(v41 + 1) = v42;
  *(v41 + 4) = v29;
  v41[40] = v30;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v43 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v44 = sub_24F928AD8();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v26 + v43, a19, v44);
  v46 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v47 = sub_24F929608();
  (*(*(v47 - 8) + 56))(v26 + v46, 1, 1, v47);
  v48 = (v26 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  v49 = v26 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v78, &v75, &qword_27F235830);
  if (*(&v76 + 1))
  {
    v50 = v76;
    *v49 = v75;
    *(v49 + 1) = v50;
    *(v49 + 4) = v77;
  }

  else
  {
    v51 = v58;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v53 = a5;
    v55 = v54;
    (*(v59 + 8))(v51, v60);
    v73 = v52;
    v74 = v55;
    a5 = v53;
    sub_24F92C7F8();
    sub_24E601704(&v75, &qword_27F235830);
  }

  (*(v45 + 8))(a19, v44);
  sub_24E601704(a5, &qword_27F228530);
  sub_24E601704(v78, &qword_27F235830);
  v56 = v72;
  v26[2] = v71;
  v26[3] = v56;
  v26[4] = 0;
  v26[5] = 0;
  return v26;
}

void *SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, char *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v66 = a8;
  v64 = a7;
  v63 = a5;
  v76 = a1;
  v77 = a2;
  v74 = a18;
  v73 = a17;
  v72 = a16;
  v71 = a15;
  v70 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a11;
  v65 = a10;
  v75 = a19;
  v62 = sub_24F91F6B8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v59 - v27;
  v29 = sub_24F928AD8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v31) = *a6;
  v33 = *a9;
  v34 = *(a20 + 32);
  LOBYTE(a6) = *(a20 + 40);
  v35 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v35 = a3;
  v35[1] = a4;
  v36 = v32;
  v37 = v63;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v31;
  v38 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  v39 = v66;
  *v38 = v64;
  v38[1] = v39;
  sub_24E60169C(v37, v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v33;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = v65;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = v67;
  v40 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  v41 = v69;
  *v40 = v68;
  v40[1] = v41;
  v42 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  v43 = v71;
  *v42 = v70;
  v42[1] = v43;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v72;
  v44 = (v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v45 = v74;
  *v44 = v73;
  v44[1] = v45;
  v46 = v21 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v47 = *(a20 + 16);
  *v46 = *a20;
  *(v46 + 1) = v47;
  *(v46 + 4) = v34;
  v46[40] = a6;
  v48 = v75;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  (*(v30 + 16))(v36, v75, v29);
  v49 = sub_24F929608();
  (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
  v50 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v50 = 0u;
  v50[1] = 0u;
  sub_24E60169C(v86, &v80, &qword_27F235830);
  if (*(&v81 + 1))
  {
    v83 = v80;
    v84 = v81;
    v85 = v82;
  }

  else
  {
    v51 = v60;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v54 = v53;
    (*(v61 + 8))(v51, v62);
    v78 = v52;
    v79 = v54;
    sub_24F92C7F8();
    sub_24E601704(&v80, &qword_27F235830);
  }

  (*(v30 + 8))(v48, v29);
  sub_24E601704(v37, &qword_27F228530);
  sub_24E601704(v86, &qword_27F235830);
  v55 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v55 + 4) = v85;
  v56 = v84;
  *v55 = v83;
  *(v55 + 1) = v56;
  sub_24E6009C8(v28, v21 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  v57 = v77;
  v21[2] = v76;
  v21[3] = v57;
  v21[4] = 0;
  v21[5] = 0;
  (*(v30 + 32))(v21 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v36, v29);
  return v21;
}

uint64_t SearchAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v115 = a2;
  v120 = v3;
  v112 = *v3;
  v5 = sub_24F9285B8();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v108 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v104 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v102 = v99 - v13;
  MEMORY[0x28223BE20](v12);
  v109 = v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = (v99 - v16);
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v105 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v103 = v99 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v101 = v99 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v99 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v99 - v28;
  v30 = 0xE400000000000000;
  v31 = a1;
  sub_24F928398();
  v32 = sub_24F928348();
  v34 = v33;
  v106 = v18;
  v35 = v18 + 8;
  v36 = *(v18 + 8);
  v37 = v29;
  v38 = v17;
  v39 = v35;
  v36(v37, v38);
  if (!v34)
  {
    v111 = 1836213620;
    v42 = a1;
    goto LABEL_5;
  }

  v111 = 0x6E696769726FLL;
  sub_24F928398();
  sub_24EC55680();
  sub_24F928248();
  v36(v27, v38);
  v40 = v38;
  v41 = v116;
  if (v116 == 15)
  {
    v42 = v31;

    v30 = 0xE600000000000000;
    v38 = v40;
LABEL_5:
    v43 = sub_24F92AC38();
    sub_24EC557C4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v44 = v112;
    *v45 = v111;
    v45[1] = v30;
    v45[2] = v44;
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    (*(v113 + 8))(v115, v114);
    v36(v42, v38);
    swift_deallocPartialClassInstance();
    return v43;
  }

  v46 = v120;
  v47 = (v120 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v47 = v32;
  v47[1] = v34;
  v48 = v40;
  sub_24F928398();
  v49 = v100;
  sub_24F928268();
  v36(v27, v40);
  sub_24E6009C8(v49, v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);
  sub_24F928398();
  sub_24EC556D4();
  sub_24F928248();
  v36(v27, v40);
  *(v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v116;
  *(v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v41;
  sub_24F928398();
  v50 = sub_24F928348();
  v52 = v51;
  v36(v27, v48);
  v53 = (v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  *v53 = v50;
  v53[1] = v52;
  v54 = v101;
  sub_24F928398();
  LOBYTE(v50) = sub_24F928278();
  v36(v54, v48);
  *(v46 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = v50 & 1;
  sub_24F928398();
  v55 = v109;
  sub_24F9282B8();
  v36(v27, v48);
  v56 = v102;
  sub_24E60169C(v55, v102, &qword_27F2213B0);
  v57 = sub_24F92AC28();
  v58 = *(v57 - 8);
  v59 = *(v58 + 6);
  v111 = (v58 + 48);
  v101 = v59;
  v60 = (v59)(v56, 1, v57);
  v112 = v48;
  v99[1] = v39;
  v100 = v58;
  if (v60 == 1)
  {
    sub_24E601704(v56, &qword_27F2213B0);
    v61 = 0;
  }

  else
  {
    v62 = v110;
    v61 = sub_24F92ABB8();
    v110 = v62;
    (*(v58 + 1))(v56, v57);
  }

  v63 = v120;
  *(v120 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = v61;
  sub_24F928398();
  v64 = sub_24F928348();
  v66 = v65;
  v67 = v112;
  v36(v27, v112);
  v68 = (v63 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  *v68 = v64;
  v68[1] = v66;
  sub_24F928398();
  v69 = sub_24F928348();
  v71 = v70;
  v36(v27, v67);
  v72 = (v63 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  *v72 = v69;
  v72[1] = v71;
  v73 = v103;
  sub_24F928398();
  v74 = v104;
  sub_24F9282B8();
  v75 = v67;
  v76 = v36;
  v36(v73, v75);
  if ((v101)(v74, 1, v57) == 1)
  {
    sub_24E601704(v74, &qword_27F2213B0);
    v77 = 0;
  }

  else
  {
    v77 = sub_24F92ABC8();
    v100[1](v74, v57);
  }

  v78 = v120;
  *(v120 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v77;
  sub_24F928398();
  v79 = sub_24F928348();
  v81 = v80;
  v76(v27, v112);
  v82 = (v78 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  *v82 = v79;
  v82[1] = v81;
  sub_24F928398();
  v111 = v76;
  v83 = v113;
  v84 = v114;
  v43 = v113 + 16;
  v85 = *(v113 + 16);
  v86 = v115;
  v85(v107, v115, v114);
  sub_24EC55728();
  sub_24F929548();
  v87 = v118;
  v88 = v119;
  v89 = v78 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  v90 = v117;
  *v89 = v116;
  *(v89 + 16) = v90;
  *(v89 + 32) = v87;
  *(v89 + 40) = v88;
  v91 = v105;
  v92 = *(v106 + 16);
  v107 = v31;
  v93 = v31;
  v94 = v112;
  v92(v105, v93, v112);
  v95 = v108;
  v85(v108, v86, v84);
  v96 = v110;
  v97 = Action.init(deserializing:using:)(v91, v95);
  if (!v96)
  {
    v43 = v97;
  }

  (*(v83 + 8))(v115, v114);
  (v111)(v107, v94);
  sub_24E601704(v109, &qword_27F2213B0);
  return v43;
}

void sub_24EC55220()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32);
  v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 40);

  sub_24EA14B54(v1, v2, v3, v4, v5, v6);
}

uint64_t SearchAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 40));
  return v0;
}

uint64_t SearchAction.__deallocating_deinit()
{
  SearchAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchAction.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EC555A8()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EC55630()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

unint64_t sub_24EC55680()
{
  result = qword_27F22C228;
  if (!qword_27F22C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C228);
  }

  return result;
}

unint64_t sub_24EC556D4()
{
  result = qword_27F22C230;
  if (!qword_27F22C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C230);
  }

  return result;
}

unint64_t sub_24EC55728()
{
  result = qword_27F22C238;
  if (!qword_27F22C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C238);
  }

  return result;
}

uint64_t sub_24EC557C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAction()
{
  result = qword_27F22C248;
  if (!qword_27F22C248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC55860()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MediumAdLockupWithScreenshotsBackground.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v63 = *v2;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v71 = sub_24F928388();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v57 - v14;
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v57 - v21;
  sub_24F929608();
  sub_24F928398();
  v68 = v5;
  v23 = *(v5 + 16);
  v24 = v11;
  v25 = v11;
  v26 = v72;
  v23(v25, v72, v4);
  v70 = v22;
  v59 = v19;
  v60 = v24;
  sub_24F929548();
  v27 = v73;
  v23(v73, v26, v4);
  v28 = v64;
  sub_24F928398();
  v29 = v65;
  v23(v65, v27, v4);
  type metadata accessor for Lockup();
  swift_allocObject();
  v30 = v66;
  v31 = Lockup.init(deserializing:using:)(v28, v29);
  if (v30)
  {
    v32 = *(v68 + 8);
    v32(v72, v4);
    (*(v67 + 1))(a1, v71);
    v32(v73, v4);
    sub_24EB05BC8(v70);
    v33 = v69;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = a1;
    v33 = v69;
    *(v69 + 40) = v31;
    v35 = v59;
    sub_24F928398();
    v58 = v4;
    v23(v60, v73, v4);
    type metadata accessor for Screenshots();
    sub_24EC56A24(&qword_27F2273E0, type metadata accessor for Screenshots);
    *(v33 + 48) = sub_24F92B698();
    v36 = v61;
    v37 = v34;
    sub_24F928398();
    LOBYTE(v34) = sub_24F928278();
    v66 = 0;
    v38 = *(v67 + 1);
    v39 = v36;
    v40 = v71;
    v38(v39, v71);
    *(v33 + 16) = (v34 == 2) | v34 & 1;
    sub_24F928398();
    v41 = JSONObject.appStoreColor.getter();
    v38(v35, v40);
    *(v33 + 56) = v41;
    sub_24F928398();
    v42 = JSONObject.appStoreColor.getter();
    v38(v35, v40);
    v67 = v38;
    *(v33 + 64) = v42;
    v43 = v62;
    sub_24F928398();
    v44 = sub_24F928308();
    v46 = v45;
    v38(v43, v40);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    *(v33 + 24) = v47;
    *(v33 + 32) = v46 & 1;
    sub_24E643844(v70, v33 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
    type metadata accessor for Action();
    v48 = v37;
    sub_24F928398();
    v49 = v72;
    v50 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v72);
    v51 = *(v68 + 8);
    v52 = v58;
    v51(v49, v58);
    v53 = v48;
    v54 = v71;
    v55 = v67;
    v67(v53, v71);
    v55(v35, v54);
    v51(v73, v52);
    sub_24EB05BC8(v70);
    *(v33 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = v50;
  }

  return v33;
}

uint64_t MediumAdLockupWithScreenshotsBackground.__allocating_init(lockup:screenshots:isAnimated:riverSpeed:secondaryTextColor:backgroundColor:impressionMetrics:clickAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5 & 1;
  *(v17 + 56) = a6;
  *(v17 + 64) = a7;
  sub_24E65E0D4(a8, v17 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
  *(v17 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = a9;
  return v17;
}

uint64_t MediumAdLockupWithScreenshotsBackground.init(lockup:screenshots:isAnimated:riverSpeed:secondaryTextColor:backgroundColor:impressionMetrics:clickAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5 & 1;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = a9;
  return v9;
}

void *MediumAdLockupWithScreenshotsBackground.secondaryTextColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *MediumAdLockupWithScreenshotsBackground.backgroundColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t MediumAdLockupWithScreenshotsBackground.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t MediumAdLockupWithScreenshotsBackground.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t MediumAdLockupWithScreenshotsBackground.debugDescription.getter()
{
  sub_24F92C888();
  v1 = sub_24F92D1E8();

  v15 = v1;
  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  v2 = *(v0 + 40);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](93, 0xE100000000000000);

  MEMORY[0x253050C20](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x253050C20](0x6964616548202D20, 0xEC000000203A676ELL);
  v5 = v2[11];
  if (v5)
  {
    v6 = v2[10];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v2[11];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v6, v7);

  MEMORY[0x253050C20](0x3A656C746974202CLL, 0xE900000000000020);
  v8 = v2[13];
  if (v8)
  {
    v9 = v2[12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v2[13];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0x746974627573202CLL, 0xEB000000003A656CLL);
  v11 = v2[15];
  if (v11)
  {
    v12 = v2[14];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v2[15];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v12, v13);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v15;
}

uint64_t MediumAdLockupWithScreenshotsBackground.deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);

  return v0;
}

uint64_t MediumAdLockupWithScreenshotsBackground.__deallocating_deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC56670@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24EC56A24(&qword_27F216DE8, type metadata accessor for Action);
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

uint64_t sub_24EC56718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EC567B4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackground()
{
  result = qword_27F22C260;
  if (!qword_27F22C260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC568F8()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EC56A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC56A6C()
{
  v0 = sub_24F91EAA8();
  __swift_allocate_value_buffer(v0, qword_27F22C270);
  __swift_project_value_buffer(v0, qword_27F22C270);
  return sub_24F91EA08();
}

uint64_t sub_24EC56AE4()
{
  v0 = sub_24F91EAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_27F22C288);
  __swift_project_value_buffer(v0, qword_27F22C288);
  sub_24F91EA08();
  sub_24F91EA78();
  sub_24F91EA88();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_24EC56C40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24F91EAA8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24EC56D14()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22C2A0);
  __swift_project_value_buffer(v4, qword_27F22C2A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EC56EB8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC56F24(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC31BA8;
}

uint64_t sub_24EC56FD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EC57084(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)(_BYTE *a1)
{
  v2 = sub_24F92BEE8();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_24F92BE88();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D20);
  sub_24F928EF8();
  v9 = v71;
  if (!v71)
  {
    v68 = 0;
    goto LABEL_26;
  }

  v67 = v7;
  if (v71 >> 62)
  {
LABEL_23:
    v10 = sub_24F92C738();
    if (v10)
    {
LABEL_4:
      v11 = 0;
      v68 = MEMORY[0x277D84F90];
      do
      {
        v12 = v11;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x253052270](v12, v9);
          }

          else
          {
            if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = v13;
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v15 = [v13 iTunesDSID];
          if (v15)
          {
            break;
          }

          ++v12;
          if (v11 == v10)
          {
            goto LABEL_25;
          }
        }

        v61 = v6;
        v16 = v15;
        v17 = [v15 longLongValue];

        v18 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_24E618DFC(0, *(v18 + 2) + 1, 1, v18);
        }

        v20 = *(v18 + 2);
        v19 = *(v18 + 3);
        v68 = v18;
        if (v20 >= v19 >> 1)
        {
          v68 = sub_24E618DFC((v19 > 1), v20 + 1, 1, v68);
        }

        v21 = v68;
        *(v68 + 2) = v20 + 1;
        *&v21[8 * v20 + 32] = v17;
        v6 = v61;
      }

      while (v11 != v10);
      goto LABEL_25;
    }
  }

  else
  {
    v10 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v68 = MEMORY[0x277D84F90];
LABEL_25:

  v7 = v67;
LABEL_26:
  type metadata accessor for ASDPurchaseHistoryContext(0);
  sub_24F928EF8();
  v22 = v71;
  if (v72)
  {
    v22 = 0;
  }

  v60 = v22;
  sub_24F928EF8();
  v23 = v71;
  if (v72)
  {
    v23 = 0;
  }

  v59 = v23;
  type metadata accessor for ASKBagContract();
  sub_24F928EF8();
  v57 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18);
  sub_24F928FD8();
  sub_24F92A758();
  v58 = type metadata accessor for PurchaseHistoryAppStateDataSource();
  v24 = objc_allocWithZone(v58);
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v56 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue;
  v67 = sub_24E74EC40();
  v53 = "imated";
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v54 = *(v7 + 72);
  v61 = a1;
  v25 = swift_allocObject();
  v52 = xmmword_24F93DE60;
  *(v25 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v70 = v25;
  v50 = sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  v51 = sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  v48 = *MEMORY[0x277D85260];
  v26 = v64;
  v65 = *(v65 + 104);
  v27 = v66;
  (v65)(v64);
  *&v24[v56] = sub_24F92BF38();
  v56 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_callbackQueue;
  v53 = "ppStateDataSource.accessQueue";
  v28 = swift_allocObject();
  *(v28 + 16) = v52;
  v29 = v57;
  sub_24F92BE78();
  v70 = v28;
  sub_24F92C6A8();
  sub_24F927DA8();
  (v65)(v26, v48, v27);
  *&v24[v56] = sub_24F92BF38();
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  v30 = &v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  *v30 = 0;
  v30[8] = 1;
  v31 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers] = 0;
  v32 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F388);
  swift_allocObject();
  *&v24[v32] = sub_24EA4ED84(0);
  v33 = &v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
  *v33 = 0;
  *(v33 + 1) = 0;
  sub_24E615E00(&v71, &v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory]);
  *&v24[v31] = v68;

  v34 = v59;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext] = v60;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext] = v34;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_bag] = v29;
  v69.receiver = v24;
  v69.super_class = v58;

  v35 = objc_msgSendSuper2(&v69, sel_init);
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 defaultCenter];
  v39 = v73;
  v40 = v74;
  __swift_project_boxed_opaque_existential_1(&v71, v73);
  v41 = (*(v40 + 72))(v39, v40);
  [v38 addObserver:v37 selector:sel_purchaseHistoryUpdated_ name:v41 object:0];

  v42 = [v36 defaultCenter];
  sub_24F92AB98();
  v43 = v37;
  v44 = sub_24F92AB78();
  [v42 addObserver:v43 selector:sel_accountsDidChange name:v44 object:sub_24F92AB88()];

  v45 = [v36 defaultCenter];
  if (qword_27F211098 != -1)
  {
    swift_once();
  }

  [v45 addObserver:v43 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1(&v71);
  return v43;
}

id PurchaseHistoryAppStateDataSource.__allocating_init(purchaseHistory:additionalFamilyMembers:initialPurchaseHistoryContext:purchaseHistoryContext:bag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_24EC5B7D8(a1, a2, a3, a4, a5);

  return v12;
}

id PurchaseHistoryAppStateDataSource.init(purchaseHistory:additionalFamilyMembers:initialPurchaseHistoryContext:purchaseHistoryContext:bag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_24EC5B7D8(a1, a2, a3, a4, a5);

  return v5;
}

id PurchaseHistoryAppStateDataSource.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PurchaseHistoryAppStateDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24EC57CF0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext) == 1)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = a1;
    v6[4] = a2;

    sub_24E5FCA4C(a1);
    sub_24EC59204(sub_24EC5BEB8, v6);
  }

  else
  {
    sub_24EC59204(0, 0);
    v7 = (v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v8);
    v17 = (*(v9 + 8))(v8, v9);
    v10 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v10);
    v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v15 = *(v11 + 32);
    sub_24E5FCA4C(a1);

    v15(v17, v12, sub_24EC5BEAC, v14, v10, v11);
  }
}

uint64_t sub_24EC57F00(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = (result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v7 = *(result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v8 = *(result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    v9 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v7);
    v10 = (*(v8 + 8))(v7, v8);
    v11 = v6[4];
    v16 = v6[3];
    v17 = v10;
    __swift_project_boxed_opaque_existential_1(v6, v16);
    v12 = *&v9[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    v15 = *(v11 + 32);

    sub_24E5FCA4C(a2);
    v15(v17, v12, sub_24EC5C9A0, v14, v16, v11);
  }

  else if (a2)
  {
    memset(v18, 0, sizeof(v18));
    v19 = -1;
    return a2(v18);
  }

  return result;
}

uint64_t sub_24EC580B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v6;
  v8[6] = v5;

  sub_24EC59204(sub_24EC5BEC8, v8);
}

void sub_24EC58190(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *&v11[0] = a4;
    *(&v11[0] + 1) = a5;
    sub_24EC599E4(v11, a2, a3);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v12 = -1;
    a2(v11);
  }
}

uint64_t sub_24EC5823C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v2 = *(result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v3 = *(result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    v4 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v2);
    v5 = (*(v3 + 8))(v2, v3);
    v6 = v1[3];
    v7 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    v8 = *&v4[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[3] = 0;
    v10[4] = 0;
    v10[2] = v9;
    v11 = *(v7 + 32);

    v11(v5, v8, sub_24EC5C9A0, v10, v6, v7);
  }

  return result;
}

void sub_24EC58458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25[-v1];
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v3 = sub_24F92AB18();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &qword_27F2330E0);
  }

  else
  {
    v5 = sub_24F92AB08();
    (*(v4 + 8))(v2, v3);
    v6 = [v5 ams_DSID];

    if (v6)
    {
      v7 = [v6 longLongValue];

      v8 = 0;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v8 = 1;
LABEL_6:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_16;
  }

  v10 = *&Strong[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  v11 = Strong[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId + 8];

  if (v8)
  {
    if (v11)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v7 == v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_16:
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = (v13 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
      v15 = *(v13 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
      v16 = *(v13 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
      v17 = v13;
      __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v15);
      v18 = (*(v16 + 8))(v15, v16);
      v19 = v14[3];
      v20 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v19);
      v21 = *&v17[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[3] = 0;
      v23[4] = 0;
      v23[2] = v22;
      v24 = *(v20 + 32);

      v24(v18, v21, sub_24EC5C9A0, v23, v19, v20);
    }
  }
}

uint64_t sub_24EC587CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24F927D88();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;
  aBlock[4] = sub_24EC5C794;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_49_0;
  v11 = _Block_copy(aBlock);

  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_24EC58AD0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27F211090 != -1)
    {
      swift_once();
    }

    v2 = (qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
    swift_beginAccess();
    v3 = v2[1];
    v4 = &v1[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
    *v4 = *v2;
    *(v4 + 1) = v3;

    if (qword_27F2104D8 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F22C2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v6 = &v1[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory];
    v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v8 = *&v1[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v7);
    v9 = (*(v8 + 8))(v7, v8);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    __swift_project_boxed_opaque_existential_1(v6, v10);
    v12 = *&v1[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = v13;
    v15 = *(v11 + 32);

    v15(v9, v12, sub_24EC5C9A0, v14, v10, v11);
  }

  return result;
}

uint64_t sub_24EC58EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *), uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v18 = swift_allocObject();
    *(v18 + 16) = MEMORY[0x277D84F90];
    v17 = a1;
    v12 = *&v8[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v11 = *&v8[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v12);
    v13 = *(v11 + 80);

    sub_24E5FCA4C(a3);
    v14 = v13(v12, v11);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = 1;
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    *(v15 + 48) = v14 & 1;
    *(v15 + 56) = 0;
    *(v15 + 64) = sub_24EC5C804;
    *(v15 + 72) = v10;
    v16 = v8;

    sub_24E971DB8(1, sub_24EC5C994, v15);
  }

  else if (a3)
  {
    memset(v19, 0, sizeof(v19));
    v20 = -1;
    return a3(v19);
  }

  return result;
}

void sub_24EC590D8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = &Strong[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(a1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      if (a3)
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        v13 = -1;
        a3(&v10);
      }

      return;
    }
  }

  if (a3)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v13 = -1;
    a3(&v10);
  }
}

uint64_t sub_24EC59204(uint64_t (*a1)(void), uint64_t a2)
{
  v28 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
  if (v28)
  {
    v5 = *(v28 + 16);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F378);
      v6 = 32;
      swift_allocObject();

      v7 = sub_24EA50028(v5 + 1);
      v23 = (v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
      v24 = a1;
      v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext);
      v27 = v7;
      v25 = a2;
      v8 = a1;
      do
      {
        v29 = *(v28 + v6);
        v10 = v23[3];
        v9 = v23[4];
        __swift_project_boxed_opaque_existential_1(v23, v10);
        v11 = swift_allocObject();
        v11[2] = v27;
        v11[3] = v8;
        v11[4] = v25;
        v12 = *(v9 + 56);

        sub_24E5FCA4C(v8);
        v12(v29, v26, sub_24EC5C8C4, v11, v10, v9);

        v6 += 8;
        --v5;
      }

      while (v5);

      v13 = v23[3];
      v14 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v13);
      v15 = swift_allocObject();
      v15[2] = v27;
      v15[3] = v24;
      v15[4] = v25;
      v16 = *(v14 + 64);

      sub_24E5FCA4C(v24);
      v16(v26, sub_24EC5C9A4, v15, v13, v14);

LABEL_8:
    }
  }

  result = sub_24EC59710();
  if (result)
  {
    v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v18);
    v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    v22 = *(v19 + 64);
    sub_24E5FCA4C(a1);
    v22(v20, sub_24E9BFC84, v21, v18, v19);
    goto LABEL_8;
  }

  if (a1)
  {
    return a1();
  }

  return result;
}

uint64_t sub_24EC594F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v20 = v11;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v14 = sub_24EC5C918;
  v15 = &v17;
  v16 = a2;
  sub_24F92BF08();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EC59710()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate);
  v10[4] = sub_24EC599D8;
  v10[5] = 0;
  v10[6] = v5;
  v6 = sub_24F92BF18();
  if (v11)
  {
    return 0;
  }

  v10[1] = v10;
  v12 = 1;
  MEMORY[0x28223BE20](v6);
  v10[-2] = &v12;
  v10[0] = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v11 = v8;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  v9 = sub_24F92C6A8();
  MEMORY[0x28223BE20](v9);
  v10[-4] = sub_24EC5C738;
  v10[-3] = &v10[-4];
  v10[-2] = v5;
  sub_24F92BF08();
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_24EC599E4(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v7 = a1[1];
  *&v24[0] = *a1;
  *(&v24[0] + 1) = v7;
  AdamId.numberValue.getter();
  if (v9)
  {
    v10 = v9;
    v23 = a2;
    v11 = [v9 longLongValue];

    v12 = (v4 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v13 = *(v4 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v14 = *(v4 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v13);
    v22 = (*(v14 + 16))(v11, v13, v14);
    v15 = v12[3];
    v16 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v15);
    v17 = *(v4 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v23;
    v19[4] = a3;
    v19[5] = v8;
    v19[6] = v7;
    v20 = *(v16 + 32);

    v20(v22, v17, sub_24EC5C2B8, v19, v15, v16);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
    v25 = -1;
    return a2(v24);
  }
}

uint64_t sub_24EC59BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    v23 = sub_24E804518(inited);
    swift_setDeallocating();
    sub_24EC36F48(inited + 32);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x277D84F90];
    v16 = *&v12[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v17 = *&v12[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v16);
    v18 = *(v17 + 80);

    v19 = v18(v16, v17);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = 0;
    *(v20 + 32) = v15;
    *(v20 + 40) = a1;
    *(v20 + 48) = v19 & 1;
    *(v20 + 56) = v23;
    *(v20 + 64) = sub_24EC5C5CC;
    *(v20 + 72) = v14;
    v21 = v12;

    sub_24E971DB8(1, sub_24EC5C650, v20);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
    v25 = -1;
    return a3(v24);
  }
}

void sub_24EC59E0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v194 = a7;
  v195 = a8;
  v190 = a6;
  v202 = a4;
  v208 = a1;
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v198 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v197 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v196 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v170 - v16;
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v18 = sub_24F92AB18();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v199 = v13;
  if (v20 == 1)
  {
    sub_24E601704(v17, &qword_27F2330E0);
LABEL_15:
    v34 = v194;
    v33 = v195;
    if (a2)
    {
      v35 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
      v36 = v208;
      swift_beginAccess();
      swift_beginAccess();

      sub_24EA0B4CC(v37);
      swift_endAccess();
      *(v36 + v35) = MEMORY[0x277D84F98];

      v38 = v36 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId;
      *v38 = 0;
      *(v38 + 8) = 1;
    }

LABEL_142:
    v166 = swift_allocObject();
    v166[2] = v34;
    v166[3] = v33;
    v166[4] = a3;
    *&v226 = sub_24EC5C694;
    *(&v226 + 1) = v166;
    *&v224 = MEMORY[0x277D85DD0];
    *(&v224 + 1) = 1107296256;
    *&v225 = sub_24EAF8248;
    *(&v225 + 1) = &block_descriptor_63;
    v167 = _Block_copy(&v224);

    v168 = v196;
    sub_24F927DA8();
    *&v236 = MEMORY[0x277D84F90];
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    v169 = v198;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v168, v169, v167);
    _Block_release(v167);
    (*(v11 + 8))(v169, v10);
    (*(v197 + 8))(v168, v199);

    return;
  }

  v21 = sub_24F92AB08();
  (*(v19 + 8))(v17, v18);
  v22 = [v21 ams_DSID];

  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = [v22 longLongValue];

  v24 = v208;
  v25 = v208 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId;
  if ((*(v208 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId + 8) & 1) != 0 || v23 != *v25) && (a2)
  {
    v26 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
    swift_beginAccess();
    swift_beginAccess();

    sub_24EA0B4CC(v27);
    swift_endAccess();
    *(v208 + v26) = MEMORY[0x277D84F98];
    v24 = v208;

    *v25 = v23;
    *(v25 + 8) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B60);
  v28 = swift_allocObject();
  v188 = xmmword_24F93DE60;
  *(v28 + 16) = xmmword_24F93DE60;
  *(v28 + 32) = v23;
  v29 = sub_24E804680(v28);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v243 = v29;
  if (*(v24 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers))
  {
    v30 = *(v24 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);
  v203 = a3;
  v185 = v11;
  v186 = v10;
  if (v31)
  {

    v32 = 32;
    do
    {
      sub_24ED7F1E8(&v224, *(v30 + v32));
      v32 += 8;
      --v31;
    }

    while (v31);

    v29 = v243;
  }

  else
  {
  }

  v242 = MEMORY[0x277D84FA0];
  v39 = v29 + 56;
  v40 = 1 << *(v29 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v29 + 56);
  v43 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  v44 = (v40 + 63) >> 6;
  v189 = 0x800000024FA583C0;
  v187 = "purchaseHistoryContext";

  v45 = 0;
  v200 = v29;
  v206 = v43;
  v46 = v202;
  while (1)
  {
    v47 = v45;
    if (!v42)
    {
      break;
    }

LABEL_26:
    if (*(v46 + 16) && (v48 = sub_24E7728CC(*(*(v29 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v42)))))), (v49 & 1) != 0))
    {
      v50 = *(*(v46 + 56) + 8 * v48);

      if (v50 >> 62)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_29:
        v51 = sub_24F92C738();
        goto LABEL_32;
      }
    }

    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
    v42 &= v42 - 1;
    if (v51)
    {
      v193 = v50 & 0xC000000000000001;
      v191 = v51;
      swift_beginAccess();
      v52 = 0;
      v183 = v50 + 32;
      v184 = v50 & 0xFFFFFFFFFFFFFF8;
      v192 = v50;
      v182 = v44;
      while (1)
      {
        if (v193)
        {
          v53 = MEMORY[0x253052270](v52, v50);
        }

        else
        {
          if (v52 >= *(v184 + 16))
          {
            goto LABEL_146;
          }

          v53 = *(v183 + 8 * v52);
        }

        v54 = v53;
        v55 = __OFADD__(v52, 1);
        v56 = v52 + 1;
        if (v55)
        {
          goto LABEL_145;
        }

        v201 = v56;
        v57 = v39;
        v58 = v44;
        v59 = v29;
        *&v224 = [v53 storeItemID];
        v60 = sub_24F92CD88();
        v62 = v61;

        v204 = v62;
        v205 = v60;
        sub_24ED7E42C(&v224, v60, v62);

        if (qword_27F211090 != -1)
        {
          swift_once();
        }

        v63 = (qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
        swift_beginAccess();
        v64 = v63[1];
        if (v64)
        {
          v29 = v59;
          v44 = v58;
          v65 = *v63 == 0xD000000000000016 && v64 == v189;
          v39 = v57;
          v66 = v65 ? 1 : sub_24F92CE08();
          v68 = v205;
          v52 = v201;
        }

        else
        {
          v39 = v57;
          if (qword_27F2110A0 != -1)
          {
            swift_once();
          }

          v67 = sub_24F92AAE8();
          __swift_project_value_buffer(v67, qword_27F23E0A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = v188;
          sub_24F9283A8();
          sub_24F92A588();

          v66 = 0;
          v29 = v200;
          v52 = v201;
          v44 = v182;
          v68 = v205;
        }

        v207 = v54;
        if (([v54 isHidden] & 1) == 0)
        {
          v69 = [v207 purchaserDSID];
          if (*(v29 + 16))
          {
            v70 = v69;
            v71 = sub_24F92D058();
            v72 = -1 << *(v29 + 32);
            v73 = v71 & ~v72;
            if ((*(v39 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
            {
              break;
            }
          }
        }

LABEL_62:
        if (*(*(v208 + v206) + 16))
        {

          v75 = v204;
          sub_24E7728F0(v68, v204);
          if ((v76 & 1) == 0)
          {

LABEL_70:

            goto LABEL_37;
          }

          swift_beginAccess();
          sub_24E98FE14(v68, v75, v240);
          v224 = v240[0];
          v225 = v240[1];
          v226 = v240[2];
          v227 = v241;
          swift_endAccess();
          sub_24E601704(&v224, &unk_27F22BE00);
          v77 = v203;
          swift_beginAccess();
          v78 = *(v77 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v77 + 16) = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = sub_24E6164C0(0, *(v78 + 2) + 1, 1, v78);
            *(v203 + 16) = v78;
          }

          v81 = *(v78 + 2);
          v80 = *(v78 + 3);
          v29 = v200;
          if (v81 >= v80 >> 1)
          {
            v78 = sub_24E6164C0((v80 > 1), v81 + 1, 1, v78);
          }

          *(v78 + 2) = v81 + 1;
          v82 = &v78[16 * v81];
          v83 = v204;
          *(v82 + 4) = v205;
          *(v82 + 5) = v83;
          *(v203 + 16) = v78;
          swift_endAccess();
        }

        else
        {
        }

LABEL_37:
        v46 = v202;
        v50 = v192;
        if (v52 == v191)
        {
          goto LABEL_33;
        }
      }

      v74 = ~v72;
      while (*(*(v29 + 48) + 8 * v73) != v70)
      {
        v73 = (v73 + 1) & v74;
        if (((*(v39 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      v84 = v207;
      if ([v207 isPreorder])
      {
        v85 = v176;
        v86 = v175 & 0x101 | 0x1000000000000000;
        *&v236 = 1;
        *&v239 = v86;
        *&v240[0] = 1;
        *&v241 = v86;
        v87 = v208;
LABEL_85:
        v175 = v86;
        v176 = v85;
        v244[0] = v236;
        v244[1] = v237;
        v244[2] = v238;
        v244[3] = v239;
        v97 = *(v87 + v206);
        if (*(v97 + 16))
        {

          v98 = sub_24E7728F0(v68, v204);
          if (v99)
          {
            v100 = (*(v97 + 56) + (v98 << 6));
            v102 = v100[2];
            v101 = v100[3];
            v103 = v100[1];
            v224 = *v100;
            v225 = v103;
            v226 = v102;
            v227 = v101;
            v180 = *(&v224 + 1);
            v181 = v224;
            v178 = *(&v103 + 1);
            v179 = v103;
            v201 = *(&v102 + 1);
            v177 = v102;
            v104 = *(&v101 + 1);
            v105 = v101;
            sub_24E8B9478(&v224, &v220);

            v106 = v104;
            v107 = v105;
            v108 = v178;
            v109 = v177;
            v111 = v179;
            v110 = v180;
            v112 = v181;
          }

          else
          {

            v112 = 0;
            v110 = 0;
            v111 = 0;
            v108 = 0;
            v109 = 0;
            v201 = 0;
            v106 = 0;
            v107 = 0x3FFFFFEFELL;
          }
        }

        else
        {
          v112 = 0;
          v110 = 0;
          v111 = 0;
          v108 = 0;
          v109 = 0;
          v201 = 0;
          v106 = 0;
          v107 = 0x3FFFFFEFELL;
        }

        v233 = v236;
        v234 = v237;
        v235 = v238;
        v113 = v239;
        if ((v107 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
        {
          if ((v239 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
          {
            v173 = *(&v239 + 1);
            v174 = v106;
            v177 = v109;
            v178 = v108;
            v179 = v111;
            v180 = v110;
            v181 = v112;
            sub_24E8B9478(&v236, &v224);
            sub_24E8B9478(&v236, &v224);
            sub_24E601704(v240, &unk_27F22BE00);
            goto LABEL_96;
          }

          *&v224 = v112;
          *(&v224 + 1) = v110;
          *&v225 = v111;
          *(&v225 + 1) = v108;
          *&v226 = v109;
          *(&v226 + 1) = v201;
          *&v227 = v107;
          *(&v227 + 1) = v106;
          sub_24E601704(&v224, &unk_27F22BE00);
        }

        else
        {
          *&v224 = v112;
          *(&v224 + 1) = v110;
          *&v225 = v111;
          *(&v225 + 1) = v108;
          *&v226 = v109;
          *(&v226 + 1) = v201;
          *&v227 = v107;
          *(&v227 + 1) = v106;
          v220 = v224;
          v221 = v225;
          v222 = v226;
          v223 = v227;
          v180 = v110;
          v181 = v112;
          v178 = v108;
          v179 = v111;
          v177 = v109;
          v174 = v106;
          if ((v239 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
          {
            v173 = *(&v239 + 1);
            sub_24E8B9478(&v236, &v216);
            sub_24E8B9478(&v236, &v216);
            sub_24E9726D0(&v224, &v216);
            sub_24E601704(v240, &unk_27F22BE00);
            v216 = v220;
            v217 = v221;
            v218 = v222;
            v219 = v223;
            sub_24E88D2AC(&v216);
LABEL_96:
            *&v224 = v181;
            *(&v224 + 1) = v180;
            *&v225 = v179;
            *(&v225 + 1) = v178;
            *&v226 = v177;
            *(&v226 + 1) = v201;
            *&v227 = v107;
            *(&v227 + 1) = v174;
            v228 = v233;
            v229 = v234;
            v230 = v235;
            v231 = v113;
            v232 = v173;
            v114 = &v224;
            v115 = &qword_27F222D38;
LABEL_97:
            sub_24E601704(v114, v115);
            v116 = v208;
            v117 = v206;
            swift_beginAccess();
            v118 = swift_isUniquelyReferenced_nonNull_native();
            *&v220 = *(v116 + v117);
            *(v116 + v117) = 0x8000000000000000;
            sub_24E820174(v244, v205, v204, v118);
            *(v116 + v117) = v220;
            swift_endAccess();
            v119 = v203;
            swift_beginAccess();
            v120 = *(v119 + 16);
            v121 = swift_isUniquelyReferenced_nonNull_native();
            *(v119 + 16) = v120;
            if ((v121 & 1) == 0)
            {
              v120 = sub_24E6164C0(0, *(v120 + 2) + 1, 1, v120);
              *(v203 + 16) = v120;
            }

            v123 = *(v120 + 2);
            v122 = *(v120 + 3);
            if (v123 >= v122 >> 1)
            {
              v120 = sub_24E6164C0((v122 > 1), v123 + 1, 1, v120);
            }

            *(v120 + 2) = v123 + 1;
            v124 = &v120[16 * v123];
            v125 = v204;
            *(v124 + 4) = v205;
            *(v124 + 5) = v125;
            *(v203 + 16) = v120;
            swift_endAccess();

            sub_24E88D2AC(&v236);
            goto LABEL_37;
          }

          v210 = v236;
          v211 = v237;
          v212 = v238;
          v213 = v239;
          sub_24E8B9478(&v236, v209);
          sub_24E8B9478(&v236, v209);
          sub_24E9726D0(&v224, v209);
          v126 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v220, &v210);
          v214[0] = v210;
          v214[1] = v211;
          v214[2] = v212;
          v214[3] = v213;
          sub_24E88D2AC(v214);
          v215[0] = v220;
          v215[1] = v221;
          v215[2] = v222;
          v215[3] = v223;
          sub_24E88D2AC(v215);
          *&v216 = v181;
          *(&v216 + 1) = v180;
          *&v217 = v179;
          *(&v217 + 1) = v178;
          *&v218 = v177;
          *(&v218 + 1) = v201;
          *&v219 = v107;
          *(&v219 + 1) = v174;
          sub_24E601704(&v216, &unk_27F22BE00);
          if ((v126 & 1) == 0)
          {
            v114 = v240;
            v115 = &unk_27F22BE00;
            goto LABEL_97;
          }

          sub_24E88D2AC(&v236);
          sub_24E88D2AC(&v236);
        }

        sub_24E601704(v240, &unk_27F22BE00);
        goto LABEL_70;
      }

      v88 = [v84 redownloadParams];
      v201 = sub_24F92B0D8();

      v201 = sub_24E910830();
      v90 = v89;
      v91 = v207;

      if (([v91 watchOnly] & 1) == 0 && ((objc_msgSend(v91, sel_supportsIPad) & 1) != 0 || objc_msgSend(v91, sel_supportsIPhone)))
      {
        *&v236 = v201;
        *(&v236 + 1) = v90;
        *&v240[0] = v201;
        *(&v240[0] + 1) = v90;
        v171 = v171 & 0x101 | 0x3000000000000000;
        *&v239 = v171;
        *&v241 = v171;

        goto LABEL_83;
      }

      if (v66)
      {
        v92 = [v207 redownloadParams];
        sub_24F92B0D8();

        v93 = sub_24E910830();
        v95 = v94;

        if (([v207 supportsRealityDevice] & 1) != 0 || objc_msgSend(v207, sel_optedInForXROSEligibility))
        {
          *&v236 = v93;
          *(&v236 + 1) = v95;
          *&v239 = v176 & 0x101 | 0x3000000000000000;
          *&v240[0] = v93;
          v85 = v239;
          *(&v240[0] + 1) = v95;
          *&v241 = v239;

          v87 = v208;
          goto LABEL_84;
        }
      }

      v96 = [v207 redownloadParams];
      sub_24F92B0D8();

      sub_24E910830();

      *&v236 = 0;
      *&v240[0] = 0;
      v172 = v172 & 0x101 | 0x1000000000000000;
      *&v239 = v172;
      *&v241 = v172;
LABEL_83:
      v87 = v208;
      v85 = v176;
LABEL_84:
      v86 = v175;
      v68 = v205;
      goto LABEL_85;
    }

LABEL_33:
  }

  while (1)
  {
    v45 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_144;
    }

    if (v45 >= v44)
    {
      break;
    }

    v42 = *(v39 + 8 * v45);
    ++v47;
    if (v42)
    {
      goto LABEL_26;
    }
  }

  v127 = v190;
  if (v190)
  {
    swift_beginAccess();

    v129 = sub_24EAE6F14(v128, v127);

    v130 = v129;
  }

  else
  {
    swift_beginAccess();

    v130 = sub_24F4435B8(v131);
  }

  a3 = v203;
  v132 = 0;
  v133 = v130 + 56;
  v134 = 1 << v130[32];
  if (v134 < 64)
  {
    v135 = ~(-1 << v134);
  }

  else
  {
    v135 = -1;
  }

  v136 = v135 & *(v130 + 7);
  v137 = (v134 + 63) >> 6;
  v205 = v137;
  v207 = v130;
  while (v136)
  {
LABEL_121:
    v139 = __clz(__rbit64(v136));
    v136 &= v136 - 1;
    v140 = (*(v130 + 6) + ((v132 << 10) | (16 * v139)));
    v142 = *v140;
    v141 = v140[1];
    v143 = v242;
    if (!*(v242 + 16))
    {

LABEL_132:
      v150 = v206;
      swift_beginAccess();
      v151 = sub_24E7728F0(v142, v141);
      if (v152)
      {
        v153 = v151;
        v154 = v208;
        v155 = swift_isUniquelyReferenced_nonNull_native();
        v156 = *(v154 + v150);
        *&v220 = v156;
        *(v154 + v150) = 0x8000000000000000;
        if (!v155)
        {
          sub_24E8B347C();
          v156 = v220;
        }

        v157 = (*(v156 + 56) + (v153 << 6));
        v159 = v157[2];
        v158 = v157[3];
        v160 = v157[1];
        v224 = *v157;
        v225 = v160;
        v226 = v159;
        v227 = v158;
        sub_24E88D2AC(&v224);
        sub_24EB551D0(v153, v156);
        *(v154 + v150) = v156;
      }

      swift_endAccess();
      a3 = v203;
      swift_beginAccess();
      v161 = *(a3 + 16);
      v162 = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v161;
      if ((v162 & 1) == 0)
      {
        v161 = sub_24E6164C0(0, *(v161 + 2) + 1, 1, v161);
        *(a3 + 16) = v161;
      }

      v164 = *(v161 + 2);
      v163 = *(v161 + 3);
      if (v164 >= v163 >> 1)
      {
        v161 = sub_24E6164C0((v163 > 1), v164 + 1, 1, v161);
      }

      *(v161 + 2) = v164 + 1;
      v165 = &v161[16 * v164];
      *(v165 + 4) = v142;
      *(v165 + 5) = v141;
      *(a3 + 16) = v161;
      swift_endAccess();
      goto LABEL_115;
    }

    sub_24F92D068();

    sub_24F92B218();
    v144 = sub_24F92D0B8();
    v145 = -1 << *(v143 + 32);
    v146 = v144 & ~v145;
    if (((*(v143 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
    {
      goto LABEL_132;
    }

    v147 = ~v145;
    while (1)
    {
      v148 = (*(v143 + 48) + 16 * v146);
      v149 = *v148 == v142 && v148[1] == v141;
      if (v149 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v146 = (v146 + 1) & v147;
      if (((*(v143 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    a3 = v203;
LABEL_115:
    v130 = v207;
    v137 = v205;
  }

  while (1)
  {
    v138 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      break;
    }

    if (v138 >= v137)
    {

      v11 = v185;
      v10 = v186;
      v34 = v194;
      v33 = v195;
      goto LABEL_142;
    }

    v136 = *&v133[8 * v138];
    ++v132;
    if (v136)
    {
      v132 = v138;
      goto LABEL_121;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_24EC5B550(void (*a1)(uint64_t))
{
  swift_beginAccess();

  a1(v2);
}

id PurchaseHistoryAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*sub_24EC5B65C(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC37328;
}

uint64_t sub_24EC5B700(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v6;
  v8[6] = v5;

  sub_24EC59204(sub_24EC5C984, v8);
}

id sub_24EC5B7D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v7 = sub_24F92BEE8();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v51 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  MEMORY[0x28223BE20](v10 - 8);
  v45 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92BE88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  *&v5[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v44 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue;
  v14 = sub_24E74EC40();
  v42 = "imated";
  v43 = v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v40 = *(v13 + 72);
  v15 = swift_allocObject();
  v39 = xmmword_24F93DE60;
  *(v15 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v55 = v15;
  v38[2] = sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  v38[3] = sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  v16 = *MEMORY[0x277D85260];
  v17 = *(v53 + 104);
  v53 += 104;
  v17(v51, v16, v52);
  *&v5[v44] = sub_24F92BF38();
  v44 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_callbackQueue;
  v42 = "ppStateDataSource.accessQueue";
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  v19 = v46;
  sub_24F92BE78();
  v55 = v18;
  sub_24F92C6A8();
  sub_24F927DA8();
  v17(v51, v16, v52);
  *&v6[v44] = sub_24F92BF38();
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  v20 = &v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers] = 0;
  v22 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F388);
  swift_allocObject();
  *&v6[v22] = sub_24EA4ED84(0);
  v23 = &v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_24E615E00(v19, &v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory]);
  *&v6[v21] = v47;

  v24 = v49;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext] = v48;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext] = v24;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_bag] = v50;
  v25 = type metadata accessor for PurchaseHistoryAppStateDataSource();
  v54.receiver = v6;
  v54.super_class = v25;

  v26 = objc_msgSendSuper2(&v54, sel_init);
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 defaultCenter];
  v30 = v19[3];
  v31 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v30);
  v32 = (*(v31 + 72))(v30, v31);
  [v29 addObserver:v28 selector:sel_purchaseHistoryUpdated_ name:v32 object:0];

  v33 = [v27 defaultCenter];
  sub_24F92AB98();
  v34 = v28;
  v35 = sub_24F92AB78();
  [v33 addObserver:v34 selector:sel_accountsDidChange name:v35 object:sub_24F92AB88()];

  v36 = [v27 defaultCenter];
  if (qword_27F211098 != -1)
  {
    swift_once();
  }

  [v36 addObserver:v34 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v34;
}

uint64_t sub_24EC5BE70()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EC5BECC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC5BF28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EC5BF8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EC5C2C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F927D88();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927DC8();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v17 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_24EC5C594()
{

  return swift_deallocObject();
}

uint64_t sub_24EC5C5CC()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return v1(v3);
}

uint64_t sub_24EC5C614()
{

  return swift_deallocObject();
}

uint64_t sub_24EC5C654()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_24EC5C6B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v6 = *(v4 + 24);
  result = v3(&v7, &v6);
  *a1 = v7;
  return result;
}

_BYTE *sub_24EC5C738(_BYTE *result)
{
  if (*result == 1)
  {
    **(v1 + 16) = 0;
  }

  else
  {
    *result = 1;
  }

  return result;
}

uint64_t sub_24EC5C75C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_38Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_24EC5C884()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t *sub_24EC5C918(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    *result = v2;
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      return v3();
    }
  }

  return result;
}

uint64_t sub_24EC5C9B4()
{
  v1 = sub_24F92B138();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24F91F4A8();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v0 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_url, v6);
  sub_24F91E918();
  swift_beginAccess();
  sub_24F91E8B8();
  swift_beginAccess();

  sub_24F91E8F8();
  v9 = v0 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body;
  swift_beginAccess();
  if (*(v9 + 8))
  {

    sub_24F92B128();
    sub_24F92B0E8();

    (*(v2 + 8))(v4, v1);
  }

  sub_24F91E958();
  swift_beginAccess();
  return sub_24F91E8C8();
}

uint64_t HttpAction.start(urlSession:bag:process:bagContract:mediaTokenService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_24F91E968();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    swift_unknownObjectRetain_n();
    v14 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:a5 bag:sub_24F92A328()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v14 setClientInfo_];
    v15 = [objc_opt_self() ams_sharedAccountStore];
    v16 = [v15 ams_activeiTunesAccount];

    [v14 setAccount_];
    [v14 setDisableResponseDecoding_];
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
    swift_unknownObjectRelease();
    [v14 setIncludeClientVersions_];
    v17 = [objc_opt_self() ams_sharedAccountStore];
    v18 = [v17 ams_activeiTunesAccount];

    [v14 setAccount_];
    [v14 setClientInfo_];
    v19 = [objc_allocWithZone(MEMORY[0x277CEE6E0]) init];
    [v14 setResponseDecoder_];

    v20 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
    swift_beginAccess();
    if (*(v6 + v20))
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    [v14 setAnisetteType_];
    [v14 setMescalType_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C318);
  sub_24EC5C9B4();
  v22 = sub_24F91E8E8();
  (*(v11 + 8))(v13, v10);
  v23 = [v14 requestByEncodingRequest:v22 parameters:0];

  sub_24F92A9D8();
  v24 = sub_24F929638();
  v25 = MEMORY[0x277D21FB0];
  v30 = v24;
  v31 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_24F929628();
  sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v29);
  *(swift_allocObject() + 16) = a1;
  v30 = v24;
  v31 = v25;
  __swift_allocate_boxed_opaque_existential_1(v29);
  v26 = a1;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320);
  sub_24EC5D1A0();
  v27 = sub_24F92A9B8();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v27;
}

uint64_t sub_24EC5D0E4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320);
  v3 = sub_24F91E8E8();
  v4 = [a2 dataTaskPromiseWithRequest_];

  return sub_24F92A9D8();
}

uint64_t sub_24EC5D160()
{

  return swift_deallocObject();
}

unint64_t sub_24EC5D1A0()
{
  result = qword_27F22C328;
  if (!qword_27F22C328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C328);
  }

  return result;
}

uint64_t sub_24EC5D218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EC5D2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsSideBySideView()
{
  result = qword_27F22C330;
  if (!qword_27F22C330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC5D3F4()
{
  result = type metadata accessor for AchievementDetails();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EC5D484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v46 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C378);
  MEMORY[0x28223BE20](v48);
  v5 = &v46 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C380);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C388);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C390);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C398);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  *v11 = sub_24F924C88();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3A0);
  sub_24EC5DBFC(a1, &v11[*(v25 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v11, v15, &qword_27F22C388);
  v26 = &v15[*(v13 + 44)];
  v27 = v67;
  *(v26 + 4) = v66;
  *(v26 + 5) = v27;
  *(v26 + 6) = v68;
  v28 = v63;
  *v26 = v62;
  *(v26 + 1) = v28;
  v29 = v65;
  *(v26 + 2) = v64;
  *(v26 + 3) = v29;
  v30 = &v21[*(v17 + 44)];
  sub_24F927438();
  LOBYTE(v13) = sub_24F925808();
  v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v13;
  sub_24E6009C8(v15, v21, &qword_27F22C390);
  v47 = v24;
  sub_24E6009C8(v21, v24, &qword_27F22C398);
  v59 = a1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3A8);
  sub_24EC5F0CC();
  sub_24F923438();
  type metadata accessor for AchievementDetailsSideBySideView();

  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  v31 = &v5[*(v48 + 36)];
  *v31 = v69;
  *(v31 + 8) = v70;
  *(v31 + 24) = v71;
  v32 = sub_24E6A4C1C();
  v33 = v50;
  sub_24F924B68();
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3C8);
  sub_24EC5F18C();
  v60 = &type metadata for GameOverlayViewPredicate;
  v61 = v32;
  swift_getOpaqueTypeConformance2();
  sub_24EC5F270();
  v34 = v49;
  v35 = v54;
  sub_24F926B08();
  (*(v55 + 8))(v33, v35);
  sub_24E601704(v5, &qword_27F22C378);
  v36 = v57;
  sub_24E60169C(v24, v57, &qword_27F22C398);
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v51;
  v40 = v53;
  v38(v51, v34, v53);
  v41 = v36;
  v42 = v56;
  sub_24E60169C(v41, v56, &qword_27F22C398);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C400);
  v38((v42 + *(v43 + 48)), v39, v40);
  v44 = *(v37 + 8);
  v44(v34, v40);
  sub_24E601704(v47, &qword_27F22C398);
  v44(v39, v40);
  return sub_24E601704(v57, &qword_27F22C398);
}

uint64_t sub_24EC5DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C468);
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C470);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_24EC5F4E8();
  v31 = a1;
  sub_24F921D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v16 = sub_24F925838();
  *(inited + 32) = v16;
  v17 = sub_24F925858();
  *(inited + 33) = v17;
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v18 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  type metadata accessor for AchievementDetailsSideBySideView();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v3 + 32))(v11, v5, v32);
  v27 = &v11[*(v6 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_24E6009C8(v11, v14, &qword_27F22C470);
  sub_24E60169C(v14, v8, &qword_27F22C470);
  v28 = v33;
  sub_24E60169C(v8, v33, &qword_27F22C470);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C480) + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_24E601704(v14, &qword_27F22C470);
  return sub_24E601704(v8, &qword_27F22C470);
}