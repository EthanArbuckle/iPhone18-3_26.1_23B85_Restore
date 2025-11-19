uint64_t TextCard.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TextCard.subtitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TextCard.captionTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TextCard.captionSubtitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TextCard.__allocating_init(id:title:titleStyle:subtitle:bodyParagraph:compactAction:regularAction:captionTitle:captionSubtitle:captionArtwork:captionAction:isExpanded:includeCaptionWhenExpanded:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, char a17)
{
  v20 = a17;
  v21 = a16;
  v51 = a15;
  v52 = a7;
  v49 = a14;
  v50 = a6;
  v47 = a13;
  v48 = a5;
  v45 = a3;
  v46 = a12;
  v43 = a2;
  v44 = a11;
  v41 = a9;
  v42 = a10;
  v22 = sub_24F91F6B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = *a4;
  sub_24E65E064(a1, &v55);
  if (*(&v56 + 1))
  {
    v28 = v56;
    *(v26 + 136) = v55;
    *(v26 + 152) = v28;
    *(v26 + 168) = v57;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v40 = a16;
    v31 = v30;
    (*(v23 + 8))(v25, v22);
    v53 = v29;
    v54 = v31;
    v20 = a17;
    v21 = v40;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v55);
  }

  sub_24E9BBAA8(a1);
  v32 = v45;
  *(v26 + 16) = v43;
  *(v26 + 24) = v32;
  *(v26 + 32) = v27;
  v33 = v50;
  *(v26 + 40) = v48;
  *(v26 + 48) = v33;
  *(v26 + 56) = v52;
  *(v26 + 64) = a8;
  v34 = v42;
  *(v26 + 72) = v41;
  *(v26 + 80) = v34;
  v35 = v46;
  v36 = v47;
  *(v26 + 88) = v44;
  *(v26 + 96) = v35;
  v37 = v49;
  *(v26 + 104) = v36;
  *(v26 + 112) = v37;
  *(v26 + 120) = v51;
  *(v26 + 128) = v21 & 1;
  *(v26 + 129) = v20 & 1;
  return v26;
}

uint64_t TextCard.init(id:title:titleStyle:subtitle:bodyParagraph:compactAction:regularAction:captionTitle:captionSubtitle:captionArtwork:captionAction:isExpanded:includeCaptionWhenExpanded:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, unsigned __int8 a17)
{
  v18 = v17;
  v41 = a8;
  v52 = a6;
  v50 = a5;
  v47 = a3;
  v45 = a2;
  v42 = a17;
  v53 = a15;
  v51 = a14;
  v48 = a12;
  v49 = a13;
  v46 = a11;
  v44 = a10;
  v43 = a9;
  v22 = sub_24F91F6B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  sub_24E65E064(a1, &v56);
  if (*(&v57 + 1))
  {
    v59 = v56;
    v60 = v57;
    v61 = v58;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v40 = a7;
    v29 = v28;
    (*(v23 + 8))(v25, v22);
    v54 = v27;
    v55 = v29;
    a7 = v40;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v56);
  }

  sub_24E9BBAA8(a1);
  v30 = v60;
  *(v18 + 136) = v59;
  *(v18 + 152) = v30;
  *(v18 + 168) = v61;
  v31 = v47;
  *(v18 + 16) = v45;
  *(v18 + 24) = v31;
  *(v18 + 32) = v26;
  v32 = v52;
  *(v18 + 40) = v50;
  *(v18 + 48) = v32;
  v33 = v41;
  *(v18 + 56) = a7;
  *(v18 + 64) = v33;
  v34 = v44;
  *(v18 + 72) = v43;
  *(v18 + 80) = v34;
  v35 = v48;
  v36 = v49;
  *(v18 + 88) = v46;
  *(v18 + 96) = v35;
  v37 = v51;
  *(v18 + 104) = v36;
  *(v18 + 112) = v37;
  *(v18 + 120) = v53;
  *(v18 + 128) = a16 & 1;
  *(v18 + 129) = v42 & 1;
  return v18;
}

char *TextCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v91 = sub_24F91F6B8();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v77 - v7;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v95 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v77 - v12;
  MEMORY[0x28223BE20](v13);
  v92 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  sub_24F928398();
  v96 = sub_24F928348();
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v23, v8);
  v102 = a1;
  sub_24F928398();
  sub_24F928348();
  v28 = v27;
  v29 = v20;
  v30 = v8;
  v101 = v26;
  v111[7] = v9 + 8;
  v26(v29, v8);
  if (!v28)
  {

    v35 = sub_24F92AC38();
    sub_24F13DD7C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = 0x797453656C746974;
    v36[1] = 0xEA0000000000656CLL;
    v36[2] = v100;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v34 = v102;
    v37 = v103;
    v38 = v105;
    v33 = v101;
LABEL_10:
    (*(v104 + 8))(v37, v38);
    v33(v34, v30);
    return v17;
  }

  v31 = v100;
  v97 = v25;
  v32 = sub_24F92CB88();

  if (v32)
  {
    v33 = v101;
    if (v32 != 1)
    {

      v45 = sub_24F92AC38();
      sub_24F13DD7C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      swift_allocError();
      v46 = MEMORY[0x277D84F90];
      *v47 = 0x797453656C746974;
      v47[1] = 0xEA0000000000656CLL;
      v47[2] = v31;
      v47[3] = v46;
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D22540], v45);
      swift_willThrow();
      v34 = v102;
      v37 = v103;
      v38 = v105;
      goto LABEL_10;
    }

    v87 = 1;
    v34 = v102;
  }

  else
  {
    v87 = 0;
    v33 = v101;
    v34 = v102;
  }

  sub_24F928398();
  v39 = sub_24F928348();
  v41 = v40;
  v33(v23, v30);
  sub_24F928398();
  v88 = v30;
  v37 = v103;
  v42 = v98;
  v86 = *(v104 + 16);
  v86(v98, v103, v105);
  v43 = v99;
  v44 = sub_24F0151C0(v17, v42);
  v100 = v43;
  if (v43)
  {

    v38 = v105;
    v30 = v88;
    goto LABEL_10;
  }

  v85 = v44;
  v98 = v39;
  v99 = v41;
  v49 = type metadata accessor for Action();
  sub_24F928398();
  v79 = v49;
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v50 = v88;
  v33(v23, v88);
  sub_24F928398();
  v84 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v33(v23, v50);
  sub_24F928398();
  v83 = sub_24F928348();
  v82 = v51;
  v33(v23, v50);
  sub_24F928398();
  v81 = sub_24F928348();
  v80 = v52;
  v33(v23, v50);
  type metadata accessor for Artwork();
  sub_24F928398();
  v86(v93, v37, v105);
  sub_24F13DD7C(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  v93 = v111[0];
  sub_24F928398();
  v86 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v53 = v88;
  v33(v23, v88);
  v54 = v92;
  sub_24F928398();
  LODWORD(v79) = sub_24F928278();
  v33(v54, v53);
  v55 = v94;
  sub_24F928398();
  v56 = sub_24F928278();
  v33(v55, v53);
  v57 = v95;
  sub_24F928398();
  v58 = sub_24F928348();
  if (v59)
  {
    *&v108 = v58;
    *(&v108 + 1) = v59;
  }

  else
  {
    v60 = v89;
    sub_24F91F6A8();
    v61 = sub_24F91F668();
    v63 = v62;
    (*(v90 + 8))(v60, v91);
    *&v108 = v61;
    *(&v108 + 1) = v63;
  }

  sub_24F92C7F8();
  v33(v57, v53);
  type metadata accessor for TextCard();
  v17 = swift_allocObject();
  sub_24E65E064(v111, &v108);
  v64 = v103;
  v65 = v105;
  v66 = v97;
  v67 = v99;
  if (*(&v109 + 1))
  {
    v68 = v109;
    *(v17 + 136) = v108;
    *(v17 + 152) = v68;
    *(v17 + 21) = v110;
  }

  else
  {
    v69 = v89;
    sub_24F91F6A8();
    v70 = sub_24F91F668();
    v72 = v71;
    (*(v90 + 8))(v69, v91);
    v106 = v70;
    v107 = v72;
    v67 = v99;
    v66 = v97;
    v64 = v103;
    v65 = v105;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v108);
  }

  (*(v104 + 8))(v64, v65);
  v101(v102, v53);
  sub_24E9BBAA8(v111);
  *(v17 + 2) = v96;
  *(v17 + 3) = v66;
  v17[32] = v87;
  *(v17 + 5) = v98;
  *(v17 + 6) = v67;
  v73 = v78;
  *(v17 + 7) = v85;
  *(v17 + 8) = v73;
  v74 = v83;
  *(v17 + 9) = v84;
  *(v17 + 10) = v74;
  v75 = v81;
  *(v17 + 11) = v82;
  *(v17 + 12) = v75;
  v76 = v93;
  *(v17 + 13) = v80;
  *(v17 + 14) = v76;
  *(v17 + 15) = v86;
  v17[128] = v79 & 1;
  v17[129] = v56 & 1;
  return v17;
}

uint64_t TextCard.deinit()
{

  sub_24E6585F8(v0 + 136);
  return v0;
}

uint64_t TextCard.__deallocating_deinit()
{
  TextCard.deinit();

  return swift_deallocClassInstance();
}

char *sub_24F13DC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = TextCard.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_24F13DCE0()
{
  result = qword_27F23A010;
  if (!qword_27F23A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A010);
  }

  return result;
}

uint64_t sub_24F13DD7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

GameStoreKit::AccountLinks::LinkType_optional __swiftcall AccountLinks.LinkType.init(rawValue:)(Swift::String rawValue)
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

unint64_t AccountLinks.LinkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x44746E756F636361;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x74666947646E6573;
  if (v1 != 4)
  {
    v4 = 0x6853796C696D6166;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6565646572;
  if (v1 != 2)
  {
    v5 = 0x73646E7546646461;
  }

  if (*v0)
  {
    v2 = 0x6341657461657263;
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

void sub_24F13E00C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736C69617465;
  v4 = 0x44746E756F636361;
  v5 = 0x800000024FA40260;
  v6 = 0xD000000000000013;
  if (v2 != 6)
  {
    v6 = 0x6573616863727570;
    v5 = 0xEF79726F74736948;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74666947646E6573;
  if (v2 != 4)
  {
    v8 = 0x6853796C696D6166;
    v7 = 0xED0000676E697261;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6565646572;
  if (v2 != 2)
  {
    v10 = 0x73646E7546646461;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6341657461657263;
    v3 = 0xED0000746E756F63;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t AccountLinks.__allocating_init(id:links:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E60169C(a1, &v19, &qword_27F235830);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v18[1] = v11;
    v18[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830);
  }

  v14 = v23;
  *(v10 + 24) = v22;
  *(v10 + 40) = v14;
  *(v10 + 56) = v24;
  sub_24E601704(a1, &qword_27F235830);
  *(v10 + 16) = a2;
  v15 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v16 = sub_24F928818();
  (*(*(v16 - 8) + 32))(v10 + v15, a3, v16);
  *(v10 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageRenderEvent) = 0;
  return v10;
}

uint64_t AccountLinks.init(id:links:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v20, &qword_27F235830);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v19[1] = v12;
    v19[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(&v20, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v15 = v24;
  *(v4 + 24) = v23;
  *(v4 + 40) = v15;
  *(v4 + 56) = v25;
  *(v4 + 16) = a2;
  v16 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v17 = sub_24F928818();
  (*(*(v17 - 8) + 32))(v4 + v16, a3, v17);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageRenderEvent) = 0;
  return v4;
}

uint64_t sub_24F13E588(unsigned __int8 *a1)
{
  if (*(*(v1 + 16) + 16) && (sub_24E76DB14(*a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F13E5D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F13E65C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F928818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24F13E774@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v4 = sub_24F928818();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24F13E7FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t AccountLinks.deinit()
{

  sub_24E6585F8(v0 + 24);
  v1 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountLinks.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  v1 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F13EA48@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24F13EB24(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F13EA88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v5 = sub_24F928818();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24F13EB24(char *a1, uint64_t a2)
{
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v5 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - v6;
  v67 = sub_24F9285B8();
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F928818();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v58 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v65 = &v58 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v76 = sub_24E609608(MEMORY[0x277D84F90]);
  v80 = v21;
  v68 = a1;
  sub_24F928398();
  v22 = 0;
  v77 = type metadata accessor for Action();
  v78 = 0x800000024FA40260;
  v73 = (v5 + 8);
  v88 = (v12 + 8);
  v71 = a2;
  v72 = v11;
  do
  {
    while (1)
    {
      v24 = byte_2861B2F30[v22++ + 32];
      sub_24F928398();

      if ((sub_24F928328() & 1) == 0)
      {
        break;
      }

      v23 = *v88;
      (*v88)(v16, v11);
      if (v22 == 8)
      {
        goto LABEL_21;
      }
    }

    v25 = v79;
    v26 = static Action.makeInstance(byDeserializing:using:)(v16, a2);
    if (v25)
    {
      v27 = v74;
      sub_24F928548();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
      sub_24F9285D8();
      (*v73)(v27, v75);
      sub_24E60169C(v86, &v83, &qword_27F226730);
      if (*(&v84 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        sub_24F929EC8();

        sub_24E601704(v86, &qword_27F226730);
        v23 = *v88;
        (*v88)(v16, v11);
        __swift_destroy_boxed_opaque_existential_1(&v83);
      }

      else
      {

        sub_24E601704(v86, &qword_27F226730);
        v23 = *v88;
        (*v88)(v16, v11);
        sub_24E601704(&v83, &qword_27F226730);
      }

      v79 = 0;
    }

    else
    {
      v28 = v26;
      v79 = 0;
      v23 = *v88;
      (*v88)(v16, v11);

      v29 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86[0] = v29;
      v32 = sub_24E76DB14(v24);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8ADC6C();
        }
      }

      else
      {
        sub_24E8990DC(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_24E76DB14(v24);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        v32 = v37;
      }

      v76 = *&v86[0];
      if (v36)
      {
        *(*(*&v86[0] + 56) + 8 * v32) = v28;
      }

      else
      {
        *(*&v86[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(v76[6] + v32) = v24;
        *(v76[7] + 8 * v32) = v28;

        v39 = v76[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_32;
        }

        v76[2] = v41;
      }

      a2 = v71;
      v11 = v72;
    }
  }

  while (v22 != 8);
LABEL_21:
  v42 = v65;
  v43 = v68;
  sub_24F928398();
  v44 = v69;
  v45 = v67;
  (*(v69 + 16))(v66, a2, v67);
  v46 = v79;
  sub_24F928788();
  if (v46)
  {
    (*(v44 + 8))(a2, v45);
    v23(v43, v11);
    v23(v80, v11);
  }

  else
  {
    v47 = v61;
    sub_24F928398();
    v48 = sub_24F928348();
    v50 = v49;
    v23(v47, v11);
    if (v50)
    {
      *&v83 = v48;
      *(&v83 + 1) = v50;
      sub_24F92C7F8();
    }

    else
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
    }

    v51 = v62;
    v52 = v63;
    (*(v63 + 16))(v64, v70, v62);
    type metadata accessor for AccountLinks();
    v42 = swift_allocObject();
    sub_24E60169C(v86, &v83, &qword_27F235830);
    if (*(&v84 + 1))
    {
      v53 = v84;
      *(v42 + 24) = v83;
      *(v42 + 40) = v53;
      *(v42 + 56) = v85;
    }

    else
    {
      v54 = v58;
      sub_24F91F6A8();
      v79 = sub_24F91F668();
      v56 = v55;
      (*(v59 + 8))(v54, v60);
      v81 = v79;
      v82 = v56;
      v52 = v63;
      v11 = v72;
      sub_24F92C7F8();
      sub_24E601704(&v83, &qword_27F235830);
    }

    (*(v69 + 8))(a2, v45);
    v23(v43, v11);
    sub_24E601704(v86, &qword_27F235830);
    (*(v52 + 8))(v70, v51);
    v23(v80, v11);
    *(v42 + 16) = v76;
    (*(v52 + 32))(v42 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageMetrics, v64, v51);
    *(v42 + OBJC_IVAR____TtC12GameStoreKit12AccountLinks_pageRenderEvent) = 0;
  }

  return v42;
}

unint64_t sub_24F13F684()
{
  result = qword_27F23A020;
  if (!qword_27F23A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A020);
  }

  return result;
}

unint64_t sub_24F13F6EC()
{
  result = qword_27F23A030;
  if (!qword_27F23A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A030);
  }

  return result;
}

unint64_t sub_24F13F744()
{
  result = qword_27F23A038;
  if (!qword_27F23A038)
  {
    type metadata accessor for AccountLinks();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A038);
  }

  return result;
}

uint64_t type metadata accessor for AccountLinks()
{
  result = qword_27F23A040;
  if (!qword_27F23A040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F13F7F8()
{
  result = sub_24F928818();
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

uint64_t sub_24F13F99C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  v1 = *MEMORY[0x277D54710];
  *(inited + 32) = *MEMORY[0x277D54710];
  v2 = *MEMORY[0x277D54720];
  v3 = *MEMORY[0x277D54738];
  *(inited + 40) = *MEMORY[0x277D54720];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277D54748];
  v5 = *MEMORY[0x277D54760];
  *(inited + 56) = *MEMORY[0x277D54748];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277D54770];
  *(inited + 72) = *MEMORY[0x277D54770];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = sub_24E803B44(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_27F23A050 = v13;
  return result;
}

double sub_24F13FAAC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2 && (v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes), v6 = a2, LOBYTE(v5) = sub_24F4D3F30(v6, v5), v6, (v5 & 1) != 0) || (MEMORY[0x28223BE20](a1), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0), sub_24F92BF18(), , !v8))
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v9 = sub_24E69A5C4(0, &qword_27F2283A0);
    sub_24E612B0C(&v8, a3);
  }

  return result;
}

void sub_24F13FDBC(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F927DE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = v24 - v10;
  v12 = [v1 activityType];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  if (sub_24F4D3F30(v12, *&v1[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    a1[3] = sub_24E69A5C4(0, &qword_27F2283A0);
    goto LABEL_8;
  }

  v15 = dispatch_semaphore_create(0);
  v24[1] = *&v1[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader];
  v16 = *&v1[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v25 = a1;
  v19 = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v20 = v15;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v16, 1, v26, sub_24F140914, v19);

  sub_24E9BBAA8(v26);

  sub_24F927DD8();
  sub_24F927E58();
  v21 = *(v5 + 8);
  v21(v7, v4);
  sub_24F92C108();
  v22 = (v21)(v11, v4);
  a1 = v25;
  v23 = *&v2[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox];
  MEMORY[0x28223BE20](v22);
  v24[-4] = sub_24F140AD4;
  v24[-3] = 0;
  v24[-2] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  sub_24F92BF18();

  v14 = *&v26[0];
  a1[3] = sub_24E69A5C4(0, &qword_27F2283A0);
  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

LABEL_8:
  *a1 = v14;
}

uint64_t sub_24F14011C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922348();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_24F92C128();
  }

  v16 = Strong;
  if (!a1)
  {

    return sub_24F92C128();
  }

  v54 = v10;
  v55 = v8;
  v56 = v7;
  v57 = a5;
  v17 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig;
  v18 = *&Strong[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  v21 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v22 = a1;
  v23 = [v21 initWithFrame_];
  [v23 setOpaque_];
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v24 = sub_24F922328();
  (*(v12 + 8))(v14, v11);
  if (v24)
  {
    if (v16[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v27 = *(v23 + v26);
    *(v23 + v26) = v25;
  }

  else
  {
    v29 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v27 = *(v23 + v29);
    *(v23 + v29) = 8;
  }

  LOBYTE(aBlock[0]) = v27;
  sub_24F359430(aBlock);
  v30 = v22;
  v59.value.super.isa = a1;
  v59.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v59, v31);

  sub_24E69A5C4(0, &qword_27F23A088);
  v32 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v32 setScale_];
  [v32 setOpaque_];
  [v30 size];
  v35 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v32 format:{v33, v34}];
  v36 = swift_allocObject();
  *(v36 + 16) = v23;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_24F140A04;
  *(v37 + 24) = v36;
  aBlock[4] = sub_24F140A64;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F262170;
  aBlock[3] = &block_descriptor_120;
  v38 = _Block_copy(aBlock);
  v39 = v23;

  v40 = [v35 imageWithActions_];
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v53 = &v48;
    v42 = *&v16[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox];
    MEMORY[0x28223BE20](result);
    v51 = v30;
    *(&v48 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v52 = v36;
    v43 = v55;
    v50 = v35;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    aBlock[0] = v44;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v48 = v40;
    v45 = v54;
    v49 = v39;
    v46 = v56;
    v47 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v47);
    *(&v48 - 4) = sub_24F140A84;
    *(&v48 - 3) = &v48 - 4;
    *(&v48 - 2) = v42;
    sub_24F92BF08();

    (*(v43 + 8))(v45, v46);

    sub_24F92C128();
  }

  return result;
}

id sub_24F1407C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F14089C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F1408D4()
{

  return swift_deallocObject();
}

void sub_24F14091C(void (*a1)(uint64_t *__return_ptr, id *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);
  v6 = v7;
  a1(&v8, &v7);

  *a3 = v8;
}

uint64_t sub_24F1409CC()
{

  return swift_deallocObject();
}

id sub_24F140A04()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24F140A84(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

uint64_t sub_24F140B04(uint64_t a1, uint64_t a2, int *a3)
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
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Leaderboard(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24F140C84(uint64_t result, uint64_t a2, int a3, int *a4)
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
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Leaderboard(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent()
{
  result = qword_27F23A090;
  if (!qword_27F23A090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F140E3C()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Leaderboard(319);
      if (v2 <= 0x3F)
      {
        sub_24E7D29C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F140F08@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v7 = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Game();
  *(inited + 136) = sub_24E7D3314(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E90FCE0(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24E7D3314(&qword_27F215388, type metadata accessor for Player);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E90FCE0(v1 + v10, v11, type metadata accessor for Player);
  *(inited + 200) = 0x6F6272656461656CLL;
  *(inited + 208) = 0xEB00000000647261;
  v12 = v7[7];
  *(inited + 240) = type metadata accessor for Leaderboard(0);
  *(inited + 248) = sub_24E7D3314(&qword_27F21B450, type metadata accessor for Leaderboard);
  v13 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E90FCE0(v1 + v12, v13, type metadata accessor for Leaderboard);
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000024FA41C50;
  v14 = *(v1 + v7[8]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D990);
  v15 = sub_24F14129C();
  *(inited + 272) = v14;
  *(inited + 304) = v15;
  *(inited + 312) = 0x6E49656D61477369;
  *(inited + 320) = 0xEF64656C6C617473;
  v16 = *(v1 + v7[9]);
  v17 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v17;
  *(inited + 328) = v16;

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

unint64_t sub_24F14129C()
{
  result = qword_27F22E368;
  if (!qword_27F22E368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990);
    sub_24E7D3314(&qword_27F21B758, type metadata accessor for ChallengeDefinitionDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E368);
  }

  return result;
}

uint64_t SocialUser.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SocialUser.playerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SocialUser.playerID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SocialUser.primaryName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SocialUser.primaryName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SocialUser.secondaryName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SocialUser.secondaryName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SocialUser.avatarTemplate.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SocialUser.avatarTemplate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SocialUser.handleSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialUser() + 36);

  return sub_24F141630(v3, a1);
}

uint64_t type metadata accessor for SocialUser()
{
  result = qword_27F23A0D8;
  if (!qword_27F23A0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F141630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SocialUser.handleSet.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SocialUser() + 36);

  return sub_24F1416E4(a1, v3);
}

uint64_t sub_24F1416E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t SocialUser.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 96) = 0xE800000000000000;
  v6 = v1[2];
  v7 = v1[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 128) = v8;
  v9 = sub_24E605DB4();
  *(inited + 104) = v6;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 0x4E7972616D697270;
  *(inited + 152) = 0xEB00000000656D61;
  v10 = v1[4];
  v11 = v1[5];
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  strcpy((inited + 200), "secondaryName");
  *(inited + 214) = -4864;
  v12 = v1[6];
  v13 = v1[7];
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  strcpy((inited + 256), "avatarTemplate");
  *(inited + 271) = -18;
  v14 = v1[8];
  v15 = v1[9];
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v14;
  *(inited + 280) = v15;
  *(inited + 312) = 0x6553656C646E6168;
  *(inited + 320) = 0xE900000000000074;
  v16 = *(type metadata accessor for SocialUser() + 36);
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  *(inited + 360) = sub_24F141A10();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24F141630(v1 + v16, boxed_opaque_existential_1);

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

unint64_t sub_24F141A10()
{
  result = qword_27F23A0A0;
  if (!qword_27F23A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E170);
    sub_24F142428(&qword_27F23A0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0A0);
  }

  return result;
}

uint64_t sub_24F141AB0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7261646E6F636573;
  v4 = 0x6554726174617661;
  if (v1 != 4)
  {
    v4 = 0x6553656C646E6168;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4449726579616C70;
  if (v1 != 1)
  {
    v5 = 0x4E7972616D697270;
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

uint64_t sub_24F141B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F1428C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F141BAC(uint64_t a1)
{
  v2 = sub_24F14236C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F141BE8(uint64_t a1)
{
  v2 = sub_24F14236C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialUser.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A0B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F14236C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCA8();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCA8();
    type metadata accessor for SocialUser();
    v8[10] = 5;
    type metadata accessor for CallProviderConversationHandleSet();
    sub_24F142428(&qword_27F23A0C0);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SocialUser.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A0C8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for SocialUser();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 44);
  v15 = type metadata accessor for CallProviderConversationHandleSet();
  v16 = *(*(v15 - 8) + 56);
  v37 = v14;
  v17 = v12;
  v16(v12 + v14, 1, 1, v15);
  v18 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F14236C();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F1423C0(v17 + v37);
  }

  else
  {
    v19 = v6;
    v20 = v34;
    v43 = 0;
    *v17 = sub_24F92CC28();
    v17[1] = v21;
    v42 = 1;
    v22 = v20;
    v17[2] = sub_24F92CBC8();
    v17[3] = v23;
    v41 = 2;
    v24 = sub_24F92CBC8();
    v26 = v25;
    v17[4] = v24;
    v17[5] = v25;
    v40 = 3;
    v17[6] = sub_24F92CBC8();
    v17[7] = v27;
    v32[2] = v27;
    v39 = 4;
    v28 = sub_24F92CBC8();
    v32[0] = v29;
    v32[1] = v26;
    v17[8] = v28;
    v17[9] = v29;
    v38 = 5;
    sub_24F142428(&qword_27F23A0D0);
    v30 = v35;
    sub_24F92CC18();
    (*(v22 + 8))(v9, v30);
    sub_24F1416E4(v19, v17 + v37);
    sub_24F14246C(v17, v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F1424D0(v17);
  }
}

unint64_t sub_24F14236C()
{
  result = qword_27F23A0B8;
  if (!qword_27F23A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0B8);
  }

  return result;
}

uint64_t sub_24F1423C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F142428(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallProviderConversationHandleSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F14246C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialUser();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1424D0(uint64_t a1)
{
  v2 = type metadata accessor for SocialUser();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F142540(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F142610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1426C0()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F142758();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F142758()
{
  if (!qword_27F23A0E8)
  {
    type metadata accessor for CallProviderConversationHandleSet();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23A0E8);
    }
  }
}

unint64_t sub_24F1427C4()
{
  result = qword_27F23A0F0;
  if (!qword_27F23A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0F0);
  }

  return result;
}

unint64_t sub_24F14281C()
{
  result = qword_27F23A0F8;
  if (!qword_27F23A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A0F8);
  }

  return result;
}

unint64_t sub_24F142874()
{
  result = qword_27F23A100;
  if (!qword_27F23A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A100);
  }

  return result;
}

uint64_t sub_24F1428C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E7972616D697270 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6554726174617661 && a2 == 0xEE006574616C706DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6553656C646E6168 && a2 == 0xE900000000000074)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t TodayCardMediaBrandedSingleApp.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_24F9285B8();
  v5 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v70 = sub_24F928388();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  sub_24F929608();

  sub_24F928398();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_24F929548();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_24F928398();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork();
  sub_24E9E1210(&qword_27F219660, type metadata accessor for Artwork);
  v26 = v25;
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks) = v27;
  sub_24F928398();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video();
  sub_24E9E1210(&qword_27F221590, type metadata accessor for Video);
  v32 = sub_24F92B698();
  v58 = OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
  sub_24F928398();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_24E9E115C();
  sub_24F929548();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_24F92C738();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_24F92C738();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_24F92AC38();
      sub_24E9E1210(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_24E601704(v66, &qword_27F213E68);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMediaAppIcon.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_24E601704(v66, &qword_27F213E68);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_24E601704(v66, &qword_27F213E68);
    return v51;
  }
}

uint64_t TodayCardMediaBrandedSingleApp.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:otdTextStyle:icon:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v11 = sub_24F91F6B8();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks) = a1;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos) = a2;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = a3;
  sub_24E60169C(a6, v16, &qword_27F213E68);
  *(v17 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaAppIcon_icon) = a5;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_24E60169C(v16, v17 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v31, &v28, &qword_27F235830);
  if (*(&v29 + 1))
  {
    v18 = v29;
    *(v17 + 32) = v28;
    *(v17 + 48) = v18;
    *(v17 + 64) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v23 + 8))(v13, v24);
    v26 = v19;
    v27 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830);
  }

  sub_24E601704(a6, &qword_27F213E68);
  sub_24E601704(v31, &qword_27F235830);
  sub_24E601704(v16, &qword_27F213E68);
  *(v17 + 16) = 1;
  *(v17 + 24) = 1;
  *(v17 + 25) = v25 & 1;
  return v17;
}

uint64_t TodayCardMediaBrandedSingleApp.init(artworks:videos:artworkLayoutsWithMetrics:otdTextStyle:icon:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a5;
  v29 = a4;
  v27 = sub_24F91F6B8();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworks) = a1;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_videos) = a2;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = a3;
  sub_24E60169C(a6, &v25 - v18, &qword_27F213E68);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaAppIcon_icon) = v28;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_24E60169C(v19, v16, &qword_27F213E68);
  sub_24E60169C(v38, &v32, &qword_27F235830);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v26 + 8))(v13, v27);
    v30 = v20;
    v31 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  sub_24E601704(a6, &qword_27F213E68);
  sub_24E601704(v38, &qword_27F235830);
  sub_24E601704(v19, &qword_27F213E68);
  v23 = v36;
  *(v7 + 32) = v35;
  *(v7 + 48) = v23;
  *(v7 + 64) = v37;
  sub_24E65E0D4(v16, v7 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v7 + 16) = 1;
  *(v7 + 24) = 1;
  *(v7 + 25) = v29 & 1;
  return v7;
}

uint64_t sub_24F143928()
{
}

uint64_t TodayCardMediaBrandedSingleApp.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaBrandedSingleApp.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaBrandedSingleApp()
{
  result = qword_27F23A108;
  if (!qword_27F23A108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F143C04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24F143C7C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &Seconds - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &Seconds - v10;
  v12 = sub_24F928698();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &Seconds - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(*(v3 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, v11, &qword_27F21EB88);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = *(v3 + 24);
    if (!v16)
    {
      (*(v13 + 8))(v15, v12);
      goto LABEL_14;
    }

    if (a1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 10;
    }

    if (a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v61 = v16;
    v19 = [v61 currentItem];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 asset];
      v22 = sub_24F92B098();
      v23 = [v21 statusOfValueForKey:v22 error:0];

      if (v23 == 2)
      {
        [v20 duration];
        Seconds = CMTimeGetSeconds(&time);
        [v20 currentTime];
        v24 = CMTimeGetSeconds(&time);

        v25 = 0;
        v60 = *&v24;
        goto LABEL_17;
      }
    }

    Seconds = 0;
    v60 = 0;
    v25 = 1;
LABEL_17:
    v28 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
    v29 = sub_24F928688();
    v30 = MEMORY[0x277D837D0];
    v66 = MEMORY[0x277D837D0];
    time.value = 0x616964656DLL;
    *&time.timescale = 0xE500000000000000;
    sub_24E612B0C(&time, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v29;
    sub_24E81C1D4(v64, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v32 = v67;
    v66 = v30;
    time.value = 1886352499;
    *&time.timescale = 0xE400000000000000;
    sub_24E612B0C(&time, v64);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v32;
    sub_24E81C1D4(v64, 0x79546E6F69746361, 0xEA00000000006570, v33);
    v34 = v67;
    LOBYTE(v64[0]) = v18;
    v35 = MediaMetricsEvent.ActionDetails.rawValue.getter();
    v66 = v30;
    time.value = v35;
    *&time.timescale = v36;
    sub_24E612B0C(&time, v64);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v34;
    sub_24E81C1D4(v64, 0x65446E6F69746361, 0xED0000736C696174, v37);
    v67 = v63;
    sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
    sub_24E601704(&time, &qword_27F2129B0);
    v38 = &v61[v28];
    v39 = v61;
    sub_24E60169C(v38, v8, &qword_27F228530);
    v40 = sub_24F91F4A8();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v8, 1, v40) == 1)
    {
      sub_24E601704(v8, &qword_27F228530);
      sub_24E98EF1C(7107189, 0xE300000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v42 = sub_24F91F398();
      v66 = v30;
      time.value = v42;
      *&time.timescale = v43;
      (*(v41 + 8))(v8, v40);
      sub_24E612B0C(&time, v64);
      v44 = v67;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v44;
      sub_24E81C1D4(v64, 7107189, 0xE300000000000000, v45);
      v67 = v63;
      if (v25)
      {
        goto LABEL_27;
      }
    }

    v46 = sub_24E99058C(Seconds, 0);
    if (v46)
    {
      v47 = v46;
      v66 = sub_24E69A5C4(0, &qword_27F22BD50);
      time.value = v47;
      sub_24E612B0C(&time, v64);
      v48 = v67;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v48;
      sub_24E81C1D4(v64, 0x6E6F697461727564, 0xE800000000000000, v49);
      v67 = v63;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    v50 = sub_24E99058C(v60, 0);
    if (v50)
    {
      v51 = v50;
      v66 = sub_24E69A5C4(0, &qword_27F22BD50);
      time.value = v51;
      sub_24E612B0C(&time, v64);
      v52 = v67;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v52;
      sub_24E81C1D4(v64, 0x6E6F697469736F70, 0xE800000000000000, v53);
      v67 = v63;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

LABEL_27:
    v54 = v67;
    sub_24F928648();
    sub_24F928638();
    if (*(v54 + 16))
    {
      v55 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
      if (v56)
      {
        sub_24E643A9C(*(v54 + 56) + 32 * v55, &time);
        if (swift_dynamicCast())
        {
          v57 = HIBYTE(*(&v64[0] + 1)) & 0xFLL;
          if ((*(&v64[0] + 1) & 0x2000000000000000) == 0)
          {
            v57 = *&v64[0] & 0xFFFFFFFFFFFFLL;
          }

          if (v57)
          {
            v27 = v62;
LABEL_36:
            sub_24F928658();

            (*(v13 + 8))(v15, v12);
            v26 = 0;
            return (*(v13 + 56))(v27, v26, 1, v12);
          }
        }
      }
    }

    v27 = v62;
    goto LABEL_36;
  }

  sub_24E601704(v11, &qword_27F21EB88);
LABEL_14:
  v26 = 1;
  v27 = v62;
  return (*(v13 + 56))(v27, v26, 1, v12);
}

id sub_24F1444F8()
{
  v1 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 24);
  if (result)
  {
    return [result play];
  }

  (*(v2 + 16))(v4, *(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl);
  v6 = objc_allocWithZone(type metadata accessor for VideoPlayer());
  v7 = v4;
  v8 = v0;
  v9 = VideoPlayer.init(with:)(v7);
  v10 = *(v0 + 24);
  *(v8 + 24) = v9;
  v11 = v9;

  sub_24F145DCC();
  sub_24F14572C();
  result = *(v8 + 24);
  if (result)
  {
    return [result play];
  }

  return result;
}

uint64_t sub_24F144620@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(*(v2 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, v10, &qword_27F21EB88);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F21EB88);
LABEL_9:
    v19 = 1;
    return (*(v12 + 56))(a2, v19, 1, v11);
  }

  (*(v12 + 32))(v14, v10, v11);
  v15 = *(v2 + 24);
  if (!v15)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_9;
  }

  v56 = a2;
  v55 = v15;
  v16 = [v55 currentItem];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140);
  sub_24F91FDE8();
  sub_24F92C1B8();

  if (v60)
  {
    sub_24F146A58(time.value, *&time.timescale, time.epoch, v60);

LABEL_7:
    Seconds = 0;
    v53 = 0;
    v54 = 1;
    goto LABEL_11;
  }

  [v17 duration];
  Seconds = CMTimeGetSeconds(&time);
  [v17 currentTime];
  v20 = CMTimeGetSeconds(&time);

  v54 = 0;
  v53 = *&v20;
LABEL_11:
  v21 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v22 = sub_24F928688();
  v23 = MEMORY[0x277D837D0];
  v60 = MEMORY[0x277D837D0];
  time.value = 0x616964656DLL;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v22;
  sub_24E81C1D4(v58, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v25 = v61;
  v60 = v23;
  time.value = 2036427888;
  *&time.timescale = 0xE400000000000000;
  sub_24E612B0C(&time, v58);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v25;
  sub_24E81C1D4(v58, 0x79546E6F69746361, 0xEA00000000006570, v26);
  v27 = v57;
  v61 = v57;
  if (a1)
  {
    sub_24E98EF1C(0x65446E6F69746361, 0xED0000736C696174, &time);
    sub_24E601704(&time, &qword_27F2129B0);
  }

  else
  {
    v60 = v23;
    time.value = 0x79616C706F747561;
    *&time.timescale = 0xE800000000000000;
    sub_24E612B0C(&time, v58);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v27;
    sub_24E81C1D4(v58, 0x65446E6F69746361, 0xED0000736C696174, v28);
    v61 = v57;
  }

  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
  sub_24E601704(&time, &qword_27F2129B0);
  v29 = &v55[v21];
  v30 = v55;
  sub_24E60169C(v29, v7, &qword_27F228530);
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v7, 1, v31);
  a2 = v56;
  if (v33 != 1)
  {
    v34 = sub_24F91F398();
    v60 = v23;
    time.value = v34;
    *&time.timescale = v35;
    (*(v32 + 8))(v7, v31);
    sub_24E612B0C(&time, v58);
    v36 = v61;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v36;
    sub_24E81C1D4(v58, 7107189, 0xE300000000000000, v37);
    v61 = v57;
    if (v54)
    {
      goto LABEL_24;
    }

LABEL_18:
    v38 = sub_24E99058C(Seconds, 0);
    if (v38)
    {
      v39 = v38;
      v60 = sub_24E69A5C4(0, &qword_27F22BD50);
      time.value = v39;
      sub_24E612B0C(&time, v58);
      v40 = v61;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v40;
      sub_24E81C1D4(v58, 0x6E6F697461727564, 0xE800000000000000, v41);
      v61 = v57;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    v42 = sub_24E99058C(v53, 0);
    if (v42)
    {
      v43 = v42;
      v60 = sub_24E69A5C4(0, &qword_27F22BD50);
      time.value = v43;
      sub_24E612B0C(&time, v58);
      v44 = v61;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v44;
      sub_24E81C1D4(v58, 0x6E6F697469736F70, 0xE800000000000000, v45);
      v61 = v57;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    goto LABEL_24;
  }

  sub_24E601704(v7, &qword_27F228530);
  sub_24E98EF1C(7107189, 0xE300000000000000, &time);
  sub_24E601704(&time, &qword_27F2129B0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  v46 = v61;
  sub_24F928648();
  sub_24F928638();
  if (*(v46 + 16))
  {
    v47 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v48)
    {
      sub_24E643A9C(*(v46 + 56) + 32 * v47, &time);
      if (swift_dynamicCast())
      {
        v49 = HIBYTE(*(&v58[0] + 1)) & 0xFLL;
        if ((*(&v58[0] + 1) & 0x2000000000000000) == 0)
        {
          v49 = *&v58[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v49)
        {
        }
      }
    }
  }

  sub_24F928658();

  (*(v12 + 8))(v14, v11);
  v19 = 0;
  return (*(v12 + 56))(a2, v19, 1, v11);
}

uint64_t sub_24F144EC8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_24F928698();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, v8, &qword_27F21EB88);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F21EB88);
LABEL_8:
    v22 = 1;
    return (*(v10 + 56))(a1, v22, 1, v9);
  }

  (*(v10 + 32))(v12, v8, v9);
  v13 = *(v1 + 24);
  if (!v13)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_8;
  }

  v53 = a1;
  v14 = v13;
  v15 = [v14 currentItem];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 asset];
    v18 = sub_24F92B098();
    v19 = [v17 statusOfValueForKey:v18 error:0];

    if (v19 == 2)
    {
      [v16 duration];
      Seconds = CMTimeGetSeconds(&time);
      [v16 currentTime];
      v20 = CMTimeGetSeconds(&time);

      v21 = 0;
      v52 = *&v20;
      goto LABEL_11;
    }
  }

  Seconds = 0;
  v52 = 0;
  v21 = 1;
LABEL_11:
  v23 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v24 = sub_24F928688();
  v25 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837D0];
  time.value = 0x616964656DLL;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v24;
  sub_24E81C1D4(v55, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v27 = v58;
  v57 = v25;
  time.value = 1801807219;
  *&time.timescale = 0xE400000000000000;
  sub_24E612B0C(&time, v55);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v27;
  sub_24E81C1D4(v55, 0x79546E6F69746361, 0xEA00000000006570, v28);
  v29 = v58;
  v57 = v25;
  time.value = 0x726174736F747561;
  *&time.timescale = 0xE900000000000074;
  sub_24E612B0C(&time, v55);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v54 = v29;
  sub_24E81C1D4(v55, 0x65446E6F69746361, 0xED0000736C696174, v30);
  v58 = v54;
  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
  sub_24E601704(&time, &qword_27F2129B0);
  sub_24E60169C(v14 + v23, v5, &qword_27F228530);
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v5, 1, v31) != 1)
  {
    v33 = sub_24F91F398();
    v57 = v25;
    time.value = v33;
    *&time.timescale = v34;
    (*(v32 + 8))(v5, v31);
    sub_24E612B0C(&time, v55);
    v35 = v58;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v35;
    sub_24E81C1D4(v55, 7107189, 0xE300000000000000, v36);
    v58 = v54;
    a1 = v53;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_15:
    v37 = sub_24E99058C(Seconds, 0);
    if (v37)
    {
      v38 = v37;
      v57 = sub_24E69A5C4(0, &qword_27F22BD50);
      time.value = v38;
      sub_24E612B0C(&time, v55);
      v39 = v58;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v39;
      sub_24E81C1D4(v55, 0x6E6F697461727564, 0xE800000000000000, v40);
      v58 = v54;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    v41 = sub_24E99058C(v52, 0);
    if (v41)
    {
      v42 = v41;
      v57 = sub_24E69A5C4(0, &qword_27F22BD50);
      time.value = v42;
      sub_24E612B0C(&time, v55);
      v43 = v58;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v43;
      sub_24E81C1D4(v55, 0x6E6F697469736F70, 0xE800000000000000, v44);
      v58 = v54;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    goto LABEL_21;
  }

  sub_24E601704(v5, &qword_27F228530);
  sub_24E98EF1C(7107189, 0xE300000000000000, &time);
  sub_24E601704(&time, &qword_27F2129B0);
  a1 = v53;
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  v45 = v58;
  sub_24F928648();
  sub_24F928638();
  if (*(v45 + 16))
  {
    v46 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v47)
    {
      sub_24E643A9C(*(v45 + 56) + 32 * v46, &time);
      if (swift_dynamicCast())
      {
        v48 = HIBYTE(*(&v55[0] + 1)) & 0xFLL;
        if ((*(&v55[0] + 1) & 0x2000000000000000) == 0)
        {
          v48 = *&v55[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v48)
        {
        }
      }
    }
  }

  sub_24F928658();

  (*(v10 + 8))(v12, v9);
  v22 = 0;
  return (*(v10 + 56))(a1, v22, 1, v9);
}

uint64_t sub_24F14572C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250970);
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30 = v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE98);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  v13 = OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_subscriptions;
  swift_beginAccess();
  *(v0 + v13) = MEMORY[0x277D84FA0];

  v15 = *(v0 + 24);
  if (v15)
  {
    v28 = v1;
    swift_beginAccess();
    v33 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
    sub_24F923068();
    swift_endAccess();
    v16 = sub_24E69A5C4(0, &qword_27F222300);
    v23[0] = v10;
    v23[1] = v16;
    v17 = sub_24F92BEF8();
    v35 = v17;
    v25 = sub_24F92BEB8();
    v18 = *(v25 - 8);
    v24 = *(v18 + 56);
    v32 = v13;
    v26 = v18 + 56;
    v24(v5, 1, 1, v25);
    sub_24E602068(&qword_27F21FEA8, &qword_27F21FE90);
    v27 = sub_24EA9B900();
    sub_24F923118();
    sub_24E601704(v5, &qword_27F21F468);

    (*(v7 + 8))(v9, v6);
    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&qword_27F21FEB0, &qword_27F21FE98);
    v19 = v23[0];
    sub_24F923148();

    (*(v29 + 8))(v12, v19);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();

    v35 = *&v33[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980);
    sub_24E602068(&qword_27F21FEB8, &unk_27F250980);
    v35 = sub_24F9230C8();
    v20 = sub_24F92BEF8();
    v34 = v20;
    v24(v5, 1, 1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC0);
    sub_24E602068(&unk_27F250990, &qword_27F21FEC0);
    v21 = v30;
    sub_24F923118();
    sub_24E601704(v5, &qword_27F21F468);

    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&unk_27F2509A0, &unk_27F250970);
    v22 = v28;
    sub_24F923148();

    (*(v31 + 8))(v21, v22);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
  }

  return result;
}

void sub_24F145DCC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_24F923098();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setPlayer_];
  }
}

uint64_t sub_24F145EB4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F145F34()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F145FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24F145FC8, 0, 0);
}

uint64_t sub_24F145FC8()
{
  v1 = *(*(v0 + 24) + 24);
  *(v0 + 32) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_24E8826DC;

    return sub_24EA9CDD8();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_24F1460B0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_isFullScreen) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setModalPresentationStyle_];
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 exitFullScreenWithCompletion_];
    }
  }
}

uint64_t sub_24F1461E4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v7[0] = v1;

    sub_24F9230A8();
    v4 = v3 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v8 = v1;
      sub_24E65864C(*(v3 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v7);
      (*(v5 + 8))(&v8, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      return sub_24E6585F8(v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24F146314(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F146374(a1);
  }

  return result;
}

uint64_t sub_24F146374(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32[-v4];
  v6 = type metadata accessor for VideoPlayer.Event();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v32[-v11];
  sub_24E60169C(a1, v5, &qword_27F21FEC8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24E601704(v5, &qword_27F21FEC8);
  }

  sub_24E8835BC(v5, v12);
  v14 = *(v1 + 24);
  if (!v14)
  {
    goto LABEL_17;
  }

  sub_24F146B14(v12, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v25 = *v10;
      v26 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_17:
        v31 = v12;
        return sub_24F146AB4(v31, type metadata accessor for VideoPlayer.Event);
      }

      v27 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v33);
      v29 = *(v27 + 16);
      v30 = v14;
      v29(v33, ObjectType, v27, v25);

LABEL_14:
      swift_unknownObjectRelease();
      sub_24E6585F8(v33);
      goto LABEL_17;
    case 2:
      v16 = v14;
      sub_24F1460B0();
      v20 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 8);
        v22 = swift_getObjectType();
        v23 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
        swift_beginAccess();
        v24 = v16[v23];
        sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v33);
        (*(v21 + 24))(v24, v33, v22, v21);
        goto LABEL_11;
      }

LABEL_16:

      goto LABEL_17;
    case 5:
      v16 = v14;
      sub_24F1460B0();
      v17 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 8);
        v19 = swift_getObjectType();
        sub_24E65864C(*(v1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v33);
        (*(v18 + 48))(v33, v19, v18);
LABEL_11:

        goto LABEL_14;
      }

      goto LABEL_16;
  }

  sub_24F146AB4(v12, type metadata accessor for VideoPlayer.Event);
  v31 = v10;
  return sub_24F146AB4(v31, type metadata accessor for VideoPlayer.Event);
}

uint64_t sub_24F146740()
{

  MEMORY[0x2530543E0](v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_metricsPipeline, &qword_27F21C570);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_delegate);
  v1 = OBJC_IVAR____TtC12GameStoreKit14VideoViewModel__playerState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24F146AB4(v0 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_configuration, type metadata accessor for VideoConfiguration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VideoViewModel()
{
  result = qword_27F23A128;
  if (!qword_27F23A128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1468B8()
{
  sub_24E78F45C();
  if (v0 <= 0x3F)
  {
    sub_24EAA0684();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VideoConfiguration();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_24F146A00()
{
  result = qword_27F23A138;
  if (!qword_27F23A138)
  {
    type metadata accessor for VideoViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A138);
  }

  return result;
}

void sub_24F146A58(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }
}

uint64_t sub_24F146A6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F146AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F146B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlayer.Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F146B88(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_24ED7C5F0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24F146C8C(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_24ED7EAD4(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24F146D7C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_24ED7E42C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F146E80(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_24ED7CC74(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24F146FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6, v14);
      (*(v7 + 32))(v9, v16, v6);
      v28(v12, v9);
      (*(v7 + 8))(v12, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t ShareSheetData.activityItemProviders(with:enablePrerenderedIconArtwork:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F922348();
  v152 = *(v6 - 8);
  v153 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = MEMORY[0x277D84F90];
  v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v46 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    if (v10 == 2)
    {
      v47 = type metadata accessor for URLActivityItemProvider();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v48[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v49 = qword_27F210F10;
      swift_retain_n();
      swift_retain_n();

      if (v49 != -1)
      {
        swift_once();
      }

      v50 = qword_27F23A190;

      sub_24F146C8C(MEMORY[0x277D84FA0], v50);
      *&v48[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v51;
      v52 = sub_24F91F3B8();
      v162.receiver = v48;
      v162.super_class = v47;
      v53 = objc_msgSendSuper2(&v162, sel_initWithPlaceholderItem_, v52);

      v54 = v53;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v55 = v46[2];
      v56 = v46[3];
      v57 = type metadata accessor for TextActivityItemProvider();
      v58 = objc_allocWithZone(v57);
      v59 = &v58[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text];
      *v59 = v55;
      *(v59 + 1) = v56;
      v60 = qword_27F2100A0;

      if (v60 != -1)
      {
        swift_once();
      }

      v61 = qword_27F224E08;

      sub_24F146C8C(MEMORY[0x277D84FA0], v61);
      *&v58[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes] = v62;
      v63 = sub_24F92B098();
      v161.receiver = v58;
      v161.super_class = v57;
      v64 = objc_msgSendSuper2(&v161, sel_initWithPlaceholderItem_, v63);

      v65 = v64;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v66 = v46[6];
      if (v66)
      {
        v151 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        v68 = *MEMORY[0x277D54788];
        *(inited + 32) = *MEMORY[0x277D54788];

        v69 = v68;
        v150 = sub_24E803B44(inited);
        swift_setDeallocating();
        sub_24F148754(inited + 32);
        v70 = type metadata accessor for ArtworkActivityItemProvider();
        v71 = objc_allocWithZone(v70);
        v72 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148);
        swift_allocObject();

        *&v71[v72] = sub_24EA50028(0);
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v66;
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(inited) = sub_24F922328();
        (*(v152 + 8))(v8, v153);
        v73 = 600.0;
        if (inited)
        {
          v73 = 150.0;
        }

        v74 = CGSize.fitting(_:mode:)(__PAIR128__(*&v73, *&v73), UIViewContentModeScaleAspectFit);
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v74.width, v74.height);
        if (qword_27F210F08 != -1)
        {
          swift_once();
        }

        v75 = qword_27F23A050;

        sub_24F146C8C(v150, v75);
        *&v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v76;
        v71[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v77 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        v160.receiver = v71;
        v160.super_class = v70;
        v78 = objc_msgSendSuper2(&v160, sel_initWithPlaceholderItem_, v77);
LABEL_62:
        v140 = v78;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_24F941C80;
        *(v141 + 32) = *&v140[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
        v142 = v140;

        ArtworkLoader.prefetchArtwork(using:)(v141);

        v143 = v142;
        MEMORY[0x253050F00]();
        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();

        goto LABEL_65;
      }
    }

    else
    {
      v112 = type metadata accessor for URLActivityItemProvider();
      v113 = objc_allocWithZone(v112);
      *&v113[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v113[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v114 = qword_27F210F10;
      swift_retain_n();
      swift_retain_n();

      if (v114 != -1)
      {
        swift_once();
      }

      v115 = qword_27F23A190;

      sub_24F146C8C(MEMORY[0x277D84FA0], v115);
      *&v113[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v116;
      v117 = sub_24F91F3B8();
      v165.receiver = v113;
      v165.super_class = v112;
      v118 = objc_msgSendSuper2(&v165, sel_initWithPlaceholderItem_, v117);

      v54 = v118;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v119 = v46[2];
      v120 = v46[3];
      v121 = type metadata accessor for TextActivityItemProvider();
      v122 = objc_allocWithZone(v121);
      v123 = &v122[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text];
      *v123 = v119;
      *(v123 + 1) = v120;
      v124 = qword_27F2100A0;

      if (v124 != -1)
      {
        swift_once();
      }

      v125 = qword_27F224E08;

      sub_24F146C8C(MEMORY[0x277D84FA0], v125);
      *&v122[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes] = v126;
      v127 = sub_24F92B098();
      v164.receiver = v122;
      v164.super_class = v121;
      v128 = objc_msgSendSuper2(&v164, sel_initWithPlaceholderItem_, v127);

      v65 = v128;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v129 = v46[6];
      if (v129)
      {
        v151 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
        v130 = swift_initStackObject();
        *(v130 + 16) = xmmword_24F93DE60;
        v131 = *MEMORY[0x277D54788];
        *(v130 + 32) = *MEMORY[0x277D54788];

        v132 = v131;
        v150 = sub_24E803B44(v130);
        swift_setDeallocating();
        sub_24F148754(v130 + 32);
        v133 = type metadata accessor for ArtworkActivityItemProvider();
        v134 = objc_allocWithZone(v133);
        v135 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148);
        swift_allocObject();

        *&v134[v135] = sub_24EA50028(0);
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v129;
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(v130) = sub_24F922328();
        (*(v152 + 8))(v8, v153);
        v136 = 600.0;
        if (v130)
        {
          v136 = 150.0;
        }

        v137 = CGSize.fitting(_:mode:)(__PAIR128__(*&v136, *&v136), UIViewContentModeScaleAspectFit);
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v137.width, v137.height);
        if (qword_27F210F08 != -1)
        {
          swift_once();
        }

        v138 = qword_27F23A050;

        sub_24F146C8C(v150, v138);
        *&v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v139;
        v134[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v77 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        v163.receiver = v134;
        v163.super_class = v133;
        v78 = objc_msgSendSuper2(&v163, sel_initWithPlaceholderItem_, v77);
        goto LABEL_62;
      }
    }

    v144 = v166;

    return v144;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
    v79 = swift_initStackObject();
    v149 = xmmword_24F93DE60;
    *(v79 + 16) = xmmword_24F93DE60;
    v80 = *MEMORY[0x277D54788];
    *(v79 + 32) = *MEMORY[0x277D54788];
    v81 = v80;
    v151 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

    v148 = v81;
    v82 = sub_24E803B44(v79);
    swift_setDeallocating();
    sub_24F148754(v79 + 32);
    v83 = type metadata accessor for URLActivityItemProvider();
    v84 = objc_allocWithZone(v83);
    *&v84[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v3;
    *&v84[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
    v85 = qword_27F210F10;
    swift_retain_n();
    swift_retain_n();
    if (v85 != -1)
    {
      swift_once();
    }

    v86 = qword_27F23A190;

    sub_24F146C8C(v82, v86);
    *&v84[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v87;
    v88 = sub_24F91F3B8();
    v159.receiver = v84;
    v159.super_class = v83;
    v89 = objc_msgSendSuper2(&v159, sel_initWithPlaceholderItem_, v88);

    v90 = v89;
    MEMORY[0x253050F00]();
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v150 = v90;
    sub_24F92B638();
    v91 = *(v151 + 12);
    v92 = swift_initStackObject();
    *(v92 + 16) = v149;
    *(v92 + 32) = v148;

    v93 = sub_24E803B44(v92);
    swift_setDeallocating();
    sub_24F148754(v92 + 32);
    v94 = type metadata accessor for ArtworkActivityItemProvider();
    v95 = objc_allocWithZone(v94);
    v96 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148);
    swift_allocObject();
    *&v95[v96] = sub_24EA50028(0);
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v91;
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    LOBYTE(v92) = sub_24F922328();
    (*(v152 + 8))(v8, v153);
    v97 = 600.0;
    if (v92)
    {
      v97 = 150.0;
    }

    v98 = CGSize.fitting(_:mode:)(__PAIR128__(*&v97, *&v97), UIViewContentModeScaleAspectFit);
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v98.width, v98.height);
    if (qword_27F210F08 != -1)
    {
      swift_once();
    }

    v99 = qword_27F23A050;

    sub_24F146C8C(v93, v99);
    *&v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v100;
    v95[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = a2 & 1;
    v101 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v158.receiver = v95;
    v158.super_class = v94;
    v102 = objc_msgSendSuper2(&v158, sel_initWithPlaceholderItem_, v101);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_24F941C80;
    *(v103 + 32) = *&v102[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
    v104 = v102;

    ArtworkLoader.prefetchArtwork(using:)(v103);

    v105 = v104;
    MEMORY[0x253050F00]();
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v106 = *(v151 + 17);
    if (v106)
    {
      v107 = type metadata accessor for NotesMetadataActivityItemProvider();
      v108 = objc_allocWithZone(v107);
      *&v108[OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_24F9CCF70;
      *&v108[OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider_metadata] = v106;
      swift_retain_n();
      v109 = sub_24F92B098();
      v157.receiver = v108;
      v157.super_class = v107;
      v110 = objc_msgSendSuper2(&v157, sel_initWithPlaceholderItem_, v109);

      v111 = v110;
      MEMORY[0x253050F00]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      goto LABEL_65;
    }

    v144 = v166;

    v145 = v150;
LABEL_69:

    return v144;
  }

  v11 = type metadata accessor for URLActivityItemProvider();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData] = v2;
  *&v12[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader] = a1;
  v13 = qword_27F210F10;
  swift_retain_n();
  swift_retain_n();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27F23A190;

  sub_24F146C8C(MEMORY[0x277D84FA0], v14);
  *&v12[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes] = v15;
  v16 = sub_24F91F3B8();
  v156.receiver = v12;
  v156.super_class = v11;
  v17 = objc_msgSendSuper2(&v156, sel_initWithPlaceholderItem_, v16);

  v18 = v17;
  MEMORY[0x253050F00]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  v151 = v18;
  sub_24F92B638();
  v19 = *(v9 + 32);
  v20 = *(v9 + 40);
  v21 = type metadata accessor for TextActivityItemProvider();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = qword_27F2100A0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F224E08;

  sub_24F146C8C(MEMORY[0x277D84FA0], v25);
  *&v22[OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes] = v26;
  v27 = sub_24F92B098();
  v155.receiver = v22;
  v155.super_class = v21;
  v28 = objc_msgSendSuper2(&v155, sel_initWithPlaceholderItem_, v27);

  v29 = v28;
  MEMORY[0x253050F00]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v30 = *(v9 + 64);
  if (!v30)
  {
    v144 = v166;

    v145 = v151;
    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_24F93DE60;
  v32 = *MEMORY[0x277D54788];
  *(v31 + 32) = *MEMORY[0x277D54788];

  v33 = v32;
  v150 = sub_24E803B44(v31);
  swift_setDeallocating();
  sub_24F148754(v31 + 32);
  v34 = type metadata accessor for ArtworkActivityItemProvider();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_imageBox;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A148);
  swift_allocObject();

  *&v35[v36] = sub_24EA50028(0);
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artwork] = v30;
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  LOBYTE(v31) = sub_24F922328();
  (*(v152 + 8))(v8, v153);
  v37 = 600.0;
  if (v31)
  {
    v37 = 150.0;
  }

  v38 = CGSize.fitting(_:mode:)(__PAIR128__(*&v37, *&v37), UIViewContentModeScaleAspectFit);
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v38.width, v38.height);
  if (qword_27F210F08 != -1)
  {
    swift_once();
  }

  v39 = qword_27F23A050;

  sub_24F146C8C(v150, v39);
  *&v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v40;
  v35[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v41 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v154.receiver = v35;
  v154.super_class = v34;
  v42 = objc_msgSendSuper2(&v154, sel_initWithPlaceholderItem_, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24F941C80;
  *(v43 + 32) = *&v42[OBJC_IVAR____TtC12GameStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v44 = v42;

  ArtworkLoader.prefetchArtwork(using:)(v43);

  v45 = v44;
  MEMORY[0x253050F00]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();

LABEL_65:

  return v166;
}

uint64_t sub_24F148754(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1487B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24F1487D8, 0, 0);
}

uint64_t sub_24F1487D8()
{
  v0[7] = sub_24F1489C4(v0[3]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v2 = sub_24ECBBBB4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_24F1488B4;
  v4 = v0[2];

  return MEMORY[0x282180360](v4, v1, v2);
}

uint64_t sub_24F1488B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24F1489C4(uint64_t a1)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A150);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_24F929AB8();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  sub_24F928EF8();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F220FF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
    sub_24ED21B08();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_24F928EF8();
    if ((*(v28 + 48))(v3, 1, v4) == 1)
    {
      sub_24E601704(v3, &qword_27F23A150);
      v19 = MEMORY[0x277D21E18];
    }

    else
    {
      v25 = v7;
      v20 = *(v28 + 32);
      v20(v6, v3, v4);
      v20(v9, v6, v4);
      v7 = v25;
      v19 = MEMORY[0x277D21E10];
    }

    v21 = v26;
    (*(v7 + 104))(v9, *v19, v26);
    v22 = sub_24F929288();
    v23 = v7;
    v24 = v22;
    (*(v23 + 8))(v9, v21);
    (*(v14 + 8))(v16, v13);
    return v24;
  }
}

uint64_t static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a6;
  sub_24E615E00(a1, a7);
  sub_24E615E00(a4, a7 + 48);
  result = sub_24E930DFC(a5, a7 + 88);
  *(a7 + 40) = v10;
  *(a7 + 41) = v11;
  *(a7 + 128) = v12;
  return result;
}

GameStoreKit::_VerticalFlowLayout __swiftcall _VerticalFlowLayout.init(expandChildrenToFit:children:)(Swift::Bool expandChildrenToFit, Swift::OpaquePointer children)
{
  *v2 = expandChildrenToFit;
  *(v2 + 8) = children;
  result.children = children;
  result.expandChildrenToFit = expandChildrenToFit;
  return result;
}

void _VerticalFlowLayout.placeChildren(relativeTo:in:)(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *v5;
  v14 = *(v5 + 1);
  v75 = a2;
  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  MinY = CGRectGetMinY(v85);
  v16 = *(v14 + 16);
  if (v16)
  {
    v69 = MinY;
    v62 = v11;
    v17 = 0;
    v18 = 0;
    v61 = (v12 + 8);
    v64 = v16 - 1;
    v19 = v14 + 32;
    v74 = 0.0;
    v73 = 0.0;
    v72 = a3;
    v71 = a1;
    v63 = v14 + 32;
    while (1)
    {
      v68 = v17;
      v20 = v19 + 136 * v18;
      v21 = v18;
      while (1)
      {
        if (v21 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E9D682C(v20, v78);
        __swift_project_boxed_opaque_existential_1(v78, v79);
        sub_24F922288();
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = v84;
        if (v84 & 2) == 0 || (__swift_project_boxed_opaque_existential_1(v78, v79), (sub_24F9221E8()))
        {
          if ((v28 & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v78, v79), (sub_24F922238() & 1) == 0))
          {
            if ((v28 & 8) == 0 || v23 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v21;
        sub_24E9D6888(v78);
        v20 += 136;
        if (v16 == v21)
        {
          goto LABEL_36;
        }
      }

      v29 = v80;
      __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      if (v29)
      {
        sub_24F9223C8();
        v31 = v30;
      }

      else
      {
        v32 = v67;
        sub_24E8ED7D8();
        sub_24F9223A8();
        v31 = v33;
        (*v61)(v32, v62);
      }

      v34 = v75;
      if (v31 < 0.0)
      {
        break;
      }

      v69 = v69 + v31;
      if (v70)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v81)
      {
        v35 = v34;
        v36 = v72;
        v37 = a4;
        v38 = a5;
        if (v81 == 1)
        {
          CGRectGetMidX(*&v35);
        }

        else
        {
          CGRectGetMaxX(*&v35);
        }
      }

      else
      {
        v87.origin.x = v34;
        v87.origin.y = v72;
        v87.size.width = a4;
        v87.size.height = a5;
        CGRectGetMinX(v87);
      }

      sub_24F92C1D8();
      v65 = v39;
      v66 = v40;
      v42 = v41;
      v44 = v43;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v59 = v42;
      v60 = v44;
      sub_24F922228();
      __swift_project_boxed_opaque_existential_1(v78, v79);
      sub_24F922218();
      MaxX = CGRectGetMaxX(v88);
      v46 = v73;
      if (MaxX > v73)
      {
        v46 = MaxX;
      }

      v73 = v46;
      sub_24E930DFC(v83, v76);
      if (v77)
      {
        __swift_project_boxed_opaque_existential_1(v76, v77);
        sub_24F922398();
        v58 = v47;
        __swift_destroy_boxed_opaque_existential_1(v76);
        v48 = v65;
        v89.origin.x = v65;
        v49 = v66;
        v89.origin.y = v66;
        v50 = v59;
        v89.size.width = v59;
        v51 = v60;
        v89.size.height = v60;
        v69 = v58 + CGRectGetMaxY(v89);
        v90.origin.x = v48;
        v90.origin.y = v49;
        v90.size.width = v50;
        v90.size.height = v51;
        CGRectGetMaxY(v90);
      }

      else
      {
        sub_24E930E6C(v76);
        v52 = v65;
        v91.origin.x = v65;
        v53 = v66;
        v91.origin.y = v66;
        v54 = v59;
        v91.size.width = v59;
        v55 = v60;
        v91.size.height = v60;
        v69 = CGRectGetMaxY(v91) - v27;
        v92.origin.x = v52;
        v92.origin.y = v53;
        v92.size.width = v54;
        v92.size.height = v55;
        CGRectGetMaxY(v92);
      }

      v19 = v63;
      v18 = v21 + 1;
      v93.origin.x = v75;
      v93.origin.y = v72;
      v93.size.width = a4;
      v93.size.height = a5;
      CGRectGetMinY(v93);
      v56 = v74;
      if ((v68 & 1) == 0)
      {
        v56 = v25;
      }

      v74 = v56;
      sub_24E9D6888(v78);
      v17 = 1;
      if (v64 == v21)
      {
        goto LABEL_36;
      }
    }

    v69 = v69 + 0.0;
    if ((v70 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v86.origin.x = v75;
    v86.origin.y = v72;
    v86.size.width = a4;
    v86.size.height = a5;
    CGRectGetWidth(v86);
    goto LABEL_20;
  }

  v74 = 0.0;
  v73 = 0.0;
LABEL_36:
  sub_24F922138();
}

void _VerticalFlowLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v4;
    v9 = 0;
    v10 = 0;
    v36 = *v1;
    v31 = (v5 + 8);
    v35 = v8 - 1;
    v11 = v7 + 32;
    v12 = 0.0;
    v40 = 0.0;
    v38 = 0.0;
    v34 = v7 + 32;
    while (1)
    {
      v37 = v9;
      v39 = v12;
      v13 = v11 + 136 * v10;
      v14 = v10;
      while (1)
      {
        if (v14 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E9D682C(v13, v43);
        __swift_project_boxed_opaque_existential_1(v43, v44);
        sub_24F922288();
        v16 = v15;
        v18 = v17;
        v12 = v19;
        v20 = v48;
        if (v48 & 2) == 0 || (__swift_project_boxed_opaque_existential_1(v43, v44), (sub_24F9221E8()))
        {
          if ((v20 & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v43, v44), (sub_24F922238() & 1) == 0))
          {
            if ((v20 & 8) == 0 || v18 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v14;
        sub_24E9D6888(v43);
        v13 += 136;
        if (v8 == v14)
        {
          return;
        }
      }

      v21 = v45;
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      if (v21)
      {
        sub_24F9223C8();
        v23 = v22;
        if (v22 < 0.0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = v32;
        sub_24E8ED7D8();
        sub_24F9223A8();
        v23 = v26;
        (*v31)(v25, v33);
        if (v23 < 0.0)
        {
LABEL_16:
          v24 = v38 + 0.0 + v18;
          goto LABEL_17;
        }
      }

      v24 = v18 + v38 + v23;
LABEL_17:
      v27 = a1;
      if ((v36 & 1) == 0)
      {
        v27 = v16;
      }

      v28 = v40;
      if (v27 > v40)
      {
        v28 = v27;
      }

      v40 = v28;
      sub_24E930DFC(&v47, v41);
      if (v42)
      {
        __swift_project_boxed_opaque_existential_1(v41, v42);
        sub_24F922398();
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_1(v41);
        v38 = v24 + v30;
      }

      else
      {
        sub_24E930E6C(v41);
        v38 = v24 - v12;
      }

      v11 = v34;
      v10 = v14 + 1;
      sub_24E9D6888(v43);
      v9 = 1;
      if (v35 == v14)
      {
        return;
      }
    }
  }

  v40 = 0.0;
}

__n128 _VerticalFlowLayout.addChild(_:)(uint64_t a1)
{
  sub_24E9D682C(a1, v12);
  v2 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E617A24(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24E617A24((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[136 * v4];
  *(v5 + 2) = v12[0];
  v6 = v12[1];
  v7 = v12[2];
  v8 = v12[4];
  *(v5 + 5) = v12[3];
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = v12[5];
  v10 = v12[6];
  v11 = v12[7];
  *(v5 + 20) = v13;
  *(v5 + 8) = v10;
  *(v5 + 9) = v11;
  *(v5 + 7) = result;
  *(v1 + 8) = v2;
  return result;
}

unint64_t _VerticalFlowLayout.insertChild(_:at:)(unint64_t result, int64_t a2)
{
  if (*(*(v2 + 8) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    sub_24E9D682C(result, v4);
    return sub_24F149D80(a2, a2, v4);
  }

  __break(1u);
  return result;
}

uint64_t _VerticalFlowLayout.Child.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t _VerticalFlowLayout.Child.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F149D80(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_24E617A24(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_24EDAAC3C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_24F149E58()
{
  result = qword_27F23A158;
  if (!qword_27F23A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A158);
  }

  return result;
}

unint64_t sub_24F149EB0()
{
  result = qword_27F23A160;
  if (!qword_27F23A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A160);
  }

  return result;
}

unint64_t sub_24F149F08()
{
  result = qword_27F23A168;
  if (!qword_27F23A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A168);
  }

  return result;
}

unint64_t sub_24F149F60()
{
  result = qword_27F23A170;
  if (!qword_27F23A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A170);
  }

  return result;
}

unint64_t sub_24F149FB8()
{
  result = qword_27F23A178;
  if (!qword_27F23A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A178);
  }

  return result;
}

unint64_t sub_24F14A010()
{
  result = qword_27F23A180;
  if (!qword_27F23A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A180);
  }

  return result;
}

uint64_t sub_24F14A084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_24F14A0CC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24F14A238(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24F92C738();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_24F92C738();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_24F14A38C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_24F14A464(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_24F92C738() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = sub_24F92C738();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  sub_24F7422A8(v14, 1);

  sub_24EDAC398(v6, v5, v10, v3);
}

uint64_t sub_24F14A578(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24F92C738();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_24F92C738();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_24F7422A8(result, 1);

  return sub_24EDAC530(v6, v5, 1, v3);
}

uint64_t sub_24F14A6BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a3 + 16);
  v13 = __OFSUB__(v12, v10);
  v14 = v12 - v10;
  if (v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, v12, a3);
  *v5 = v7;
  return result;
}

void sub_24F14AA18(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_24F91F4A8();
  v29 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 activityType];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v14 = *MEMORY[0x277D54710];
    *(inited + 32) = *MEMORY[0x277D54710];
    v15 = *&v2[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData];
    sub_24E99091C(v15 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, v6);
    if ((*(v29 + 48))(v6, 1, v7) == 1)
    {
      v16 = v14;

      sub_24E70E058(v6);
    }

    else
    {
      v28 = *(v29 + 32);
      v21 = v28(v10, v6, v7);
      v30 = v12;
      MEMORY[0x28223BE20](v21);
      *(&v27 - 2) = &v30;
      v22 = v14;
      v23 = sub_24E615C4C(sub_24F14C03C, (&v27 - 4), inited);

      if ((v23 & 1) == 0)
      {
        a1[3] = v7;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v28(boxed_opaque_existential_1, v10, v7);
        goto LABEL_11;
      }

      (*(v29 + 8))(v10, v7);
    }

    v24 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
    a1[3] = v7;
    v25 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v29 + 16))(v25, v15 + v24, v7);
LABEL_11:

    return;
  }

  v17 = *&v2[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData];
  v18 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  a1[3] = v7;
  v19 = __swift_allocate_boxed_opaque_existential_1(a1);
  v20 = *(v29 + 16);

  v20(v19, v17 + v18, v7);
}

id sub_24F14ADB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F14AF34()
{
  v0 = sub_24F92B0D8();
  v2 = v1;
  if (v0 == sub_24F92B0D8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24F14AFC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v102 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData);
  sub_24E99091C(v10 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, v4);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v8, v10 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v5);
    if (v11(v4, 1, v5) != 1)
    {
      sub_24E70E058(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v12 = sub_24F91F3B8();
  (*(v6 + 8))(v8, v5);
  [v9 setURL_];

  v13 = *(v10 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v21 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    if (v14 == 2)
    {
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v22 + 48);
        if (v23)
        {
          swift_retain_n();

          v24 = v23;
          v25 = sub_24EC9B5C4(v24);
          if (v25)
          {
            v26 = v25;
            v27 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

LABEL_64:
            v76 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);
            aBlock = 0uLL;

            v77 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);
            v78 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
            v79 = ArtworkItemProvider.init(artworkLoader:config:)(v76, v77);
            v80 = MEMORY[0x277CD46B0];
LABEL_68:
            v84 = [objc_allocWithZone(v80) initWithItemProvider:v79 properties:0 placeholderImage:v27];
            [v9 setImage_];

            goto LABEL_69;
          }
        }

        else
        {
          swift_retain_n();
        }

        v27 = 0;
        goto LABEL_64;
      }

LABEL_22:
      swift_retain_n();
LABEL_69:

      v85 = sub_24F92B098();

      [v9 setTitle_];

      v86 = [objc_allocWithZone(MEMORY[0x277CD4688]) init];
      if (*(v21 + 40))
      {

        v87 = sub_24F92B098();
      }

      else
      {
        v87 = 0;
      }

      [v86 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v32 = *(v21 + 48);
    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = *(v32 + 48);
    if (v33)
    {
      swift_retain_n();

      v34 = v33;
      v35 = sub_24EC9B5C4(v34);
      if (v35)
      {
        v36 = v35;
        v27 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

LABEL_67:
        v81 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_24F9CD360;

        v82 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v83 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v79 = ArtworkItemProvider.init(artworkLoader:config:)(v81, v82);
        v80 = MEMORY[0x277CD46B0];
        goto LABEL_68;
      }
    }

    else
    {
      swift_retain_n();
    }

    v27 = 0;
    goto LABEL_67;
  }

  if (!v14)
  {
    v15 = *(v13 + 64);
    if (!v15)
    {
      swift_retain_n();
LABEL_58:

      v73 = sub_24F92B098();

      [v9 setTitle_];

      v74 = [objc_allocWithZone(MEMORY[0x277CD4688]) init];
      if (*(v13 + 56))
      {

        v75 = sub_24F92B098();
      }

      else
      {
        v75 = 0;
      }

      [v74 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v16 = *(v15 + 48);
    if (v16)
    {
      swift_retain_n();

      v17 = v16;
      v18 = sub_24EC9B5C4(v17);
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

LABEL_57:
        v68 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_24F9CD360;

        v69 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v70 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v71 = ArtworkItemProvider.init(artworkLoader:config:)(v68, v69);
        v72 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v71 properties:0 placeholderImage:v20];
        [v9 setImage_];

        goto LABEL_58;
      }
    }

    else
    {
      swift_retain_n();
    }

    v20 = 0;
    goto LABEL_57;
  }

  v28 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  v29 = objc_allocWithZone(MEMORY[0x277CD4720]);
  swift_retain_n();
  v30 = [v29 init];
  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {

    v31 = sub_24F92B098();
  }

  else
  {
    v31 = 0;
  }

  [v30 setStoreFrontIdentifier_];

  v37 = sub_24F92B098();

  [v30 setStoreIdentifier_];

  v38 = sub_24F92B098();

  [v30 setName_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x48))
  {

    v39 = sub_24F92B098();
  }

  else
  {
    v39 = 0;
  }

  [v30 setSubtitle_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x58))
  {

    v40 = sub_24F92B098();
  }

  else
  {
    v40 = 0;
  }

  [v30 setGenre_];

  v41 = *(*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60) + 48);
  v107 = v30;
  v108 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  if (v41)
  {
    v42 = v41;
    v43 = sub_24EC9B5C4(v42);
    if (v43)
    {
      v44 = v43;
      v45 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
      [v45 setType_];
      v46 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage:v44 properties:v45];

      v42 = v45;
      v28 = v108;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);

  v49 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);

  v111 = type metadata accessor for ArtworkItemProvider();
  v50 = objc_allocWithZone(v111);
  v51 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v49);
  v52 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
  [v52 setType_];
  v53 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v51 properties:v52 placeholderImage:v47];
  [v107 setIcon_];

  v54 = *(v28 + 104);
  if (!v54)
  {
    goto LABEL_74;
  }

  if (v54 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_43;
    }

LABEL_74:
    v88 = 0;
    goto LABEL_84;
  }

  if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

LABEL_43:
  if ((v54 & 0xC000000000000001) != 0)
  {
    v89 = *(MEMORY[0x253052270](0, v54) + 16);

    swift_unknownObjectRelease();
    v55 = v89;
    if (v89 < 0)
    {
      goto LABEL_80;
    }

    v56 = v89;
    if ((v89 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v55)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    while (1)
    {
      v58 = v56;
      v103 = v52;
      v104 = v51;
      v105 = v47;
      v106 = v9;
      v118 = MEMORY[0x277D84F90];
      sub_24F92C978();
      if ((v57 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      v56 = v55;
LABEL_81:
      v90 = v56;
      v57 = sub_24F92C738();
      v56 = v90;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

    v59 = 0;
    v60 = *MEMORY[0x277CC2120];
    v109 = v58 & 0xC000000000000001;
    v110 = v60;
    do
    {
      if (v109)
      {
        MEMORY[0x253052270](v59);
      }

      else
      {
      }

      ++v59;
      v61 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 300.0, 300.0);
      v62 = v111;
      v63 = objc_allocWithZone(v111);
      *&v63[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoader] = v48;
      *&v63[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoaderConfig] = v61;
      v117.receiver = v63;
      v117.super_class = v62;

      v64 = objc_msgSendSuper2(&v117, sel_init);
      v115 = sub_24E678F24;
      v116 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v113 = sub_24EB130E8;
      v114 = &block_descriptor_121;
      v65 = _Block_copy(&aBlock);
      v66 = v64;
      v67 = v110;
      [v66 registerDataRepresentationForTypeIdentifier:v67 visibility:3 loadHandler:v65];
      _Block_release(v65);

      [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v66 properties:0 placeholderImage:0];

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v57 != v59);

    v47 = v105;
    v9 = v106;
    v52 = v103;
    v51 = v104;
  }

  else
  {
LABEL_82:
  }

  sub_24F14BFF0();
  v88 = sub_24F92B588();

  v28 = v108;
LABEL_84:
  v91 = v107;
  [v107 setScreenshots_];

  [v91 setIsMessagesOnlyApp_];
  if (*(v28 + 128))
  {

    v92 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);
    v93 = objc_allocWithZone(v111);
    v94 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v92);
    v95 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v94 properties:0 placeholderImage:0];
    [v91 setMessagesAppIcon_];
  }

  v96 = *(v108 + 112);
  if (!v96)
  {
    goto LABEL_93;
  }

  if (v96 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_93:
      v101 = v91;
      [v9 setSpecialization_];

      return v9;
    }
  }

  if ((v96 & 0xC000000000000001) != 0)
  {

    MEMORY[0x253052270](0, v96);

    goto LABEL_92;
  }

  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_92:
    v98 = objc_allocWithZone(MEMORY[0x277CD4700]);
    v99 = sub_24F91F3B8();
    v100 = [v98 initWithStreamingURL:v99 hasAudio:0];

    [v91 setPreviewVideo_];

    goto LABEL_93;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F14BF58()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData) + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata);
  v2 = v1 >> 62;
  v3 = 32;
  v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 >> 62)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 48;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v1 = v4;
    v5 = 16;
  }

  return *(v1 + v5);
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F14BFF0()
{
  result = qword_27F23A280;
  if (!qword_27F23A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23A280);
  }

  return result;
}

uint64_t sub_24F14C05C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_24F14C0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24F14C140@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F927618();
  v5 = v4;
  sub_24F14C204(v1, __src);
  memcpy(__dst, __src, 0x153uLL);
  memcpy(v10, __src, 0x153uLL);
  sub_24E60169C(__dst, &v7, &qword_27F23A288);
  sub_24E601704(v10, &qword_27F23A288);
  *a1 = v3;
  *(a1 + 8) = v5;
  result = memcpy((a1 + 16), __dst, 0x153uLL);
  *(a1 + 355) = 0;
  *(a1 + 357) = 0;
  return result;
}

uint64_t sub_24F14C204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v24 = *(a1 + 112);
  v27 = *(a1 + 96);
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (*(a1 + 16))
  {

    sub_24F9273D8();
    sub_24F923BD8();
    sub_24F927618();
    sub_24F9238C8();
    v38 = v91;
    v39 = v90;
    v36 = v93;
    v37 = v92;
    v34 = v95;
    v35 = v94;
    v32 = v97;
    v33 = v96;
    v30 = v99;
    v31 = v98;
    v29 = v100;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  if (v3)
  {

    sub_24F9273D8();
    sub_24F923BD8();
    v6 = *(a1 + 176);
    v7 = *(a1 + 184);
    sub_24F927618();
    sub_24F9238C8();
    v73 = v42;
    v74 = v43;
    v75 = v44;
    v71 = v40;
    v72 = v41;
    *&v76[24] = v24;
    *&v76[8] = v27;
    *v76 = v45;
    *&v76[40] = v5;
    *v77 = v6;
    *&v77[8] = v7;
    *&v77[16] = 0;
    v77[18] = 0;
    CGSizeMake(&v71, v8, v9);
    v87 = *&v76[16];
    v88 = *&v76[32];
    v89[0] = *v77;
    *(v89 + 15) = *&v77[15];
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = *v76;
    v81 = v71;
    v82 = v72;
  }

  else
  {
    sub_24F14C8FC(&v81);
  }

  if (v4)
  {

    sub_24F9273D8();
    sub_24F923BD8();
    sub_24F927618();
    sub_24F9238C8();
    v10 = v101;
    v11 = v102;
    v12 = v103;
    v4 = v104;
    v13 = v105;
    v14 = v106;
    v15 = v107;
    v16 = v108;
    v18 = v109;
    v17 = v110;
    v19 = v111;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
  }

  v25 = v17;
  v28 = v19;
  v53 = v87;
  v54 = v88;
  v55[0] = v89[0];
  v49 = v83;
  v50 = v84;
  v51 = v85;
  v52 = v86;
  v47 = v81;
  v48 = v82;
  *&v56 = v39;
  *(&v56 + 1) = v38;
  *&v57 = v37;
  *(&v57 + 1) = v36;
  *&v58 = v35;
  *(&v58 + 1) = v34;
  *&v59 = v33;
  *(&v59 + 1) = v32;
  *v60 = v31;
  *&v60[8] = v30;
  *&v60[16] = v29;
  v60[26] = 0;
  *&v60[24] = 0;
  __src[2] = v58;
  __src[3] = v59;
  __src[4] = *v60;
  *(&__src[4] + 11) = *&v60[11];
  __src[0] = v56;
  __src[1] = v57;
  v61[0] = v81;
  v61[1] = v82;
  v61[4] = v85;
  v61[5] = v86;
  v61[2] = v83;
  v61[3] = v84;
  *(v62 + 15) = *(v89 + 15);
  v62[0] = v89[0];
  v61[6] = v87;
  v61[7] = v88;
  __src[12] = v87;
  __src[13] = v88;
  __src[14] = v89[0];
  __src[8] = v83;
  __src[9] = v84;
  *(v55 + 15) = *(v89 + 15);
  *(&__src[14] + 15) = *(v89 + 15);
  __src[10] = v85;
  __src[11] = v86;
  __src[6] = v81;
  __src[7] = v82;
  *&v63 = v10;
  *(&v63 + 1) = v11;
  *&v64 = v12;
  *(&v64 + 1) = v4;
  *&v65 = v13;
  *(&v65 + 1) = v14;
  *&v66 = v15;
  *(&v66 + 1) = v16;
  *v67 = v18;
  *&v67[8] = v17;
  *&v67[16] = v19;
  v67[26] = 0;
  *&v67[24] = 0;
  *(&__src[18] + 8) = v66;
  *(&__src[19] + 8) = *v67;
  *(&__src[20] + 3) = *&v67[11];
  *(&__src[16] + 8) = v64;
  *(&__src[17] + 8) = v65;
  *(&__src[15] + 8) = v63;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  memcpy(a2, __src, 0x153uLL);
  v68[0] = v20;
  v68[1] = v21;
  v68[2] = v22;
  v68[3] = v4;
  v68[4] = v13;
  v68[5] = v14;
  v68[6] = v15;
  v68[7] = v16;
  v68[8] = v18;
  v68[9] = v25;
  v68[10] = v28;
  v70 = 0;
  v69 = 0;
  sub_24E60169C(&v56, &v71, &qword_27F23A290);
  sub_24E60169C(v61, &v71, &qword_27F23A298);
  sub_24E60169C(&v63, &v71, &qword_27F23A290);
  sub_24E601704(v68, &qword_27F23A290);
  *&v76[16] = v53;
  *&v76[32] = v54;
  *v77 = v55[0];
  *&v77[15] = *(v55 + 15);
  v73 = v49;
  v74 = v50;
  v75 = v51;
  *v76 = v52;
  v71 = v47;
  v72 = v48;
  sub_24E601704(&v71, &qword_27F23A298);
  v78[0] = v39;
  v78[1] = v38;
  v78[2] = v37;
  v78[3] = v36;
  v78[4] = v35;
  v78[5] = v34;
  v78[6] = v33;
  v78[7] = v32;
  v78[8] = v31;
  v78[9] = v30;
  v78[10] = v29;
  v80 = 0;
  v79 = 0;
  return sub_24E601704(v78, &qword_27F23A290);
}

uint64_t sub_24F14C7C8@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  if (*v1)
  {

    sub_24F9273D8();
    sub_24F923BD8();
    sub_24F927618();
    result = sub_24F9238C8();
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
    v9 = v15;
  }

  else
  {
    v6 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = v9;
  return result;
}

double sub_24F14C8FC(uint64_t a1)
{
  *(a1 + 143) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_24F14C91C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24F14C978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24F14C9EC()
{
  result = qword_27F23A2A0;
  if (!qword_27F23A2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A2A8);
    sub_24F14CAA4();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A2A0);
  }

  return result;
}

unint64_t sub_24F14CAA4()
{
  result = qword_27F23A2B0;
  if (!qword_27F23A2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A2B8);
    sub_24E602068(&qword_27F23A2C0, &qword_27F23A2C8);
    sub_24E602068(&qword_27F2263F8, &qword_27F226400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A2B0);
  }

  return result;
}

unint64_t sub_24F14CBA8()
{
  result = qword_27F23A2D0;
  if (!qword_27F23A2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F23A2D8);
    sub_24E9DEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A2D0);
  }

  return result;
}

uint64_t sub_24F14CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24F92B7F8();
  *(v4 + 24) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F14CCC4, v6, v5);
}

uint64_t sub_24F14CCC4()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong windowScene], v2, v3))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E8E0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "RequestReview: Invoking a StoreKit API to display a review request prompt...", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    sub_24F927E98();
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8E0);
    v3 = sub_24F9220B8();
    v9 = sub_24F92BDB8();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v9, "RequestReview: Could not get a UIWindowScene to invoke a StoreKit API.", v10, 2u);
      MEMORY[0x2530542D0](v10, -1, -1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_24F14CED0(void *a1)
{
  swift_unknownObjectWeakInit();
}

uint64_t sub_24F14CF10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F14CFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AE8();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v58 - v7;
  v60 = sub_24F91F648();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = *(a2 - 8);
  (*(v17 + 16))(&v65, v2, a2);
  sub_24F92B7F8();
  v18 = sub_24F92B7E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = *(a2 + 16);
  (*(v17 + 32))(v19 + 5, &v65, a2);
  sub_24EA998B8(0, 0, v15, &unk_24F9CD668, v19);

  v21 = objc_opt_self();
  v22 = [v21 standardUserDefaults];
  v23 = objc_opt_self();
  v24 = [v23 mainBundle];
  v25 = sub_24F76084C();
  v27 = v26;

  sub_24F008FAC(v25, v27);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v28 = sub_24F9220D8();
  __swift_project_value_buffer(v28, qword_27F39E8E0);
  v29 = sub_24F9220B8();
  v30 = sub_24F92BD98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v58 = v10;
    v32 = v31;
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136315138;
    v34 = [v23 mainBundle];
    v35 = sub_24F76084C();
    v37 = v36;

    v38 = sub_24E7620D4(v35, v37, &v65);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_24E5DD000, v29, v30, "RequestReview: requestReviewLastInvokeAppVersion set to %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2530542D0](v33, -1, -1);
    v39 = v32;
    v10 = v58;
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  v40 = v64;
  sub_24F91F638();
  v41 = [v21 standardUserDefaults];
  v42 = *(v8 + 16);
  v43 = v59;
  v44 = v60;
  v42(v59, v40, v60);
  (*(v8 + 56))(v43, 0, 1, v44);
  sub_24F009124(v43);

  v42(v10, v40, v44);
  v45 = sub_24F9220B8();
  v46 = sub_24F92BD98();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v65 = v48;
    *v47 = 136315138;
    sub_24F14D7B4(&qword_27F229EE8, MEMORY[0x277CC9578]);
    v49 = sub_24F92CD88();
    v51 = v50;
    v52 = v10;
    v53 = *(v8 + 8);
    v53(v52, v44);
    v54 = sub_24E7620D4(v49, v51, &v65);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_24E5DD000, v45, v46, "RequestReview: requestReviewLastInvokeDate set to %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x2530542D0](v48, -1, -1);
    MEMORY[0x2530542D0](v47, -1, -1);
  }

  else
  {

    v55 = v10;
    v53 = *(v8 + 8);
    v53(v55, v44);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v62 + 104))(v61, *MEMORY[0x277D21CA8], v63);
  v56 = sub_24F92A988();
  v53(v64, v44);
  return v56;
}

uint64_t sub_24F14D6B4()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24F14D6F4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24F14CC2C(a1, v5, v4, v1 + 40);
}

uint64_t sub_24F14D7B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for EditorialMediaFallbackLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[17])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EditorialMediaFallbackLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void sub_24F14D894(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, char a9)
{
  v32[1] = a5;
  v15 = HIBYTE(a7);
  v16 = sub_24F923A38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 <= 3)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (a9)
        {
          v21 = 490.0;
        }

        else
        {
          v21 = *&a8 * 150.0 + 490.0;
        }

        v23 = 0x407F400000000000;
      }

      else
      {
        v21 = 816.0;
        v23 = 0x4082B00000000000;
      }
    }

    else
    {
      if (!v15)
      {
        v21 = 816.0;
        v22 = 1306.0;
        goto LABEL_22;
      }

      v21 = 468.0;
      v23 = 0x4093080000000000;
    }

    goto LABEL_21;
  }

  if (v15 > 5)
  {
    if (v15 != 6)
    {
      v21 = 163.0;
      v22 = 286.0;
      if (v15 != 7)
      {
        v22 = 585.0;
        v21 = 456.0;
      }

      goto LABEL_22;
    }

    v21 = 222.0;
    v23 = 0x4078800000000000;
LABEL_21:
    v22 = *&v23;
    goto LABEL_22;
  }

  v21 = 462.0;
  v22 = 340.0;
  if (v15 != 4)
  {
    v22 = 598.0;
    v21 = 340.0;
  }

LABEL_22:
  if ((a2 & 1) == 0 && (a4 & 1) == 0)
  {
    v24 = *&a1 / v22;
    v25 = *&a3 / v21;
    if (v15 == 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    *a6 = v26;
    v27 = v18;
    sub_24F923BC8();
    v34 = 0;
    v33 = 1;
    sub_24F923A18();
    v29 = v28;
    v31 = v30;
    (*(v17 + 8))(v20, v27);
    *(a6 + 8) = v29;
    *(a6 + 16) = v31;
  }
}

void sub_24F14DDFC(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0x3FF0000000000000;
}

void (*sub_24F14DE6C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24F14DEF8()
{
  result = qword_27F23A360;
  if (!qword_27F23A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A360);
  }

  return result;
}

unint64_t sub_24F14DF4C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v4 = &unk_2861C1628;
      }

      else
      {
        v4 = &unk_2861C17B0;
      }
    }

    else if (a1 == 6)
    {
      v4 = &unk_2861C1938;
    }

    else if (a1 == 7)
    {
      v4 = &unk_2861C1AC0;
    }

    else
    {
      v4 = &unk_2861C1DD0;
    }

    return sub_24E610BFC(v4);
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = &unk_2861C14A0;
    }

    else
    {
      v4 = &unk_2861C1318;
    }

    return sub_24E610BFC(v4);
  }

  if (a1 != 2)
  {
    v4 = &unk_2861C1C48;

    return sub_24E610BFC(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0;
  v9 = 106.0;
  if ((a3 & 1) == 0)
  {
    v9 = *&a2 * -52.0 + 106.0;
  }

  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 65) = 1;
  *(inited + 72) = 0;
  *(inited + 80) = 1;
  *(inited + 88) = v9;
  *(inited + 96) = 0;
  *(inited + 97) = 0;
  *(inited + 104) = 1;
  v10 = 69.0;
  if ((a3 & 1) == 0)
  {
    v10 = *&a2 * -29.0 + 69.0;
  }

  *(inited + 112) = 0;
  *(inited + 120) = 1;
  *(inited + 128) = 0;
  *(inited + 136) = 1;
  *(inited + 137) = 1;
  *(inited + 144) = 0;
  *(inited + 152) = 1;
  *(inited + 160) = v10;
  *(inited + 168) = 0;
  *(inited + 169) = 0;
  *(inited + 176) = 2;
  v11 = 76.0;
  if ((a3 & 1) == 0)
  {
    v11 = *&a2 * -36.0 + 76.0;
  }

  *(inited + 184) = 0;
  *(inited + 192) = 1;
  *(inited + 200) = 0;
  *(inited + 208) = 1;
  *(inited + 209) = 1;
  *(inited + 216) = 0;
  *(inited + 224) = 1;
  *(inited + 232) = v11;
  *(inited + 240) = 0;
  *(inited + 241) = 0;
  *(inited + 248) = 3;
  v12 = 46.0;
  if ((a3 & 1) == 0)
  {
    v12 = *&a2 * -74.0 + 46.0;
  }

  *(inited + 256) = 0;
  *(inited + 264) = 1;
  *(inited + 272) = 0;
  *(inited + 280) = 1;
  *(inited + 281) = 1;
  *(inited + 288) = 0;
  *(inited + 296) = 1;
  *(inited + 304) = v12;
  *(inited + 312) = 0;
  *(inited + 313) = 0;
  *(inited + 320) = 4;
  v13 = *&a2 * -96.0 + -15.0;
  if (a3)
  {
    v13 = -15.0;
  }

  *(inited + 328) = 0;
  *(inited + 336) = 1;
  *(inited + 344) = 0;
  *(inited + 352) = 1;
  *(inited + 353) = 1;
  *(inited + 360) = 0;
  *(inited + 368) = 1;
  *(inited + 376) = v13;
  *(inited + 384) = 0;
  *(inited + 385) = 0;
  v14 = sub_24E610BFC(inited);
  swift_setDeallocating();
  return v14;
}

void sub_24F14E2EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = BYTE1(a7);
  v17 = sub_24F923A38();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F14DF4C(v16, a8, a9 & 1);
  sub_24F923BB8();
  sub_24E96257C();
  sub_24F92BB88();
  sub_24F92BC08();
  if (sub_24F92BBF8() != 1 || !*(v21 + 16) || (v22 = sub_24E7728EC(a7), (v23 & 1) == 0))
  {

    return;
  }

  v24 = *(v21 + 56) + (v22 << 6);
  v31 = *v24;
  v32 = *(v24 + 8);
  v29 = *(v24 + 16);
  v30 = *(v24 + 24);
  v25 = *(v24 + 25);
  v26 = *(v24 + 40);
  v27 = *(v24 + 56);
  v28 = *(v24 + 57);

  if (v28)
  {
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMidX(v35);
  }

  else if (v26)
  {
    if (v27)
    {
      return;
    }

    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMaxX(v36);
  }

  else
  {
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMinX(v37);
  }

  if (v25)
  {
    v38.origin.x = a1;
    v38.origin.y = a2;
    v38.size.width = a3;
    v38.size.height = a4;
    CGRectGetMidY(v38);
LABEL_18:
    sub_24F923BC8();
    sub_24F927828();
    v34 = 0;
    v33 = 0;
    sub_24F923A28();
    (*(v18 + 8))(v20, v17);
    return;
  }

  if ((v32 & 1) == 0)
  {
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinY(v40);
    goto LABEL_18;
  }

  if ((v30 & 1) == 0)
  {
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    CGRectGetMaxY(v39);
    goto LABEL_18;
  }
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24F14E634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F14E688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

UIImage_optional __swiftcall Wordmark.asset(in:)(UITraitCollection in)
{
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F22B5B8;
  v3 = sub_24F92B098();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 compatibleWithTraitCollection:in.super.isa];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t Wordmark.hashValue.getter()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

unint64_t sub_24F14E874()
{
  result = qword_27F23A370;
  if (!qword_27F23A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A370);
  }

  return result;
}

uint64_t *TodayCardMediaMediumLockupWithAlignedRegion.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v48 = sub_24F928388();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v36 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v36 - v22;
  sub_24F929608();
  sub_24F928398();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_24F929548();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_24F928398();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for MediumAdLockupWithAlignedRegionBackground();
  swift_allocObject();
  v28 = v42;
  v29 = MediumAdLockupWithAlignedRegionBackground.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_24E601704(v43, &qword_27F213E68);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit43TodayCardMediaMediumLockupWithAlignedRegion_mediumAdLockupWithAlignedRegionBackground) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_24E601704(v43, &qword_27F213E68);
  }

  return v30;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.__allocating_init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaMediumLockupWithAlignedRegion.init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit43TodayCardMediaMediumLockupWithAlignedRegion_mediumAdLockupWithAlignedRegionBackground) = a1;
  v13 = sub_24F929608();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v27, &qword_27F235830);
  v18 = v25;
  *(v3 + 32) = v24;
  *(v3 + 48) = v18;
  *(v3 + 64) = v26;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 13;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion()
{
  result = qword_27F23A378;
  if (!qword_27F23A378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F14F380@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for VideoCard();
  *a1 = v1;
}

uint64_t type metadata accessor for VideoCard()
{
  result = qword_27F23A390;
  if (!qword_27F23A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoCard.__allocating_init(id:video:lockup:overlayStyle:clickAction:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a6;
  v27 = a2;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a4;
  sub_24E60169C(a1, &v30, &qword_27F235830);
  if (*(&v31 + 1))
  {
    v17 = v31;
    *(v15 + 56) = v30;
    *(v15 + 72) = v17;
    *(v15 + 88) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v24 = a7;
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v28 = v18;
    v29 = v20;
    a7 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(a7, v15 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics);
  *(v15 + 16) = v27;
  *(v15 + 24) = a3;
  *(v15 + 32) = v16;
  v21 = v26;
  *(v15 + 40) = v25;
  *(v15 + 48) = v21;
  return v15;
}

uint64_t VideoCard.init(id:video:lockup:overlayStyle:clickAction:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  sub_24E60169C(a1, &v31, &qword_27F235830);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v25 = a7;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v29 = v18;
    v30 = v20;
    a7 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v21 = v35;
  *(v8 + 56) = v34;
  *(v8 + 72) = v21;
  *(v8 + 88) = v36;
  sub_24E65E0D4(a7, v8 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics);
  *(v8 + 16) = v28;
  *(v8 + 24) = a3;
  *(v8 + 32) = v17;
  v22 = v27;
  *(v8 + 40) = v26;
  *(v8 + 48) = v22;
  return v8;
}

uint64_t VideoCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VideoCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t VideoCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v73 = a2;
  v70 = sub_24F9285B8();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v60 - v5;
  MEMORY[0x28223BE20](v6);
  v71 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v60 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v72 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v69 = v14;
  v67 = v15;
  if (v24)
  {
    v76 = v23;
    v77 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v76 = v25;
    v77 = v27;
  }

  sub_24F92C7F8();
  v66 = *(v15 + 8);
  v66(v22, v14);
  v28 = v79;
  v29 = v75;
  *(v75 + 56) = v78;
  *(v29 + 72) = v28;
  *(v29 + 88) = v80;
  v62 = sub_24F929608();
  sub_24F928398();
  v30 = v73;
  v32 = v74 + 16;
  v31 = *(v74 + 16);
  v33 = v70;
  v31(v71, v73, v70);
  v34 = v64;
  sub_24F929548();
  v62 = OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics;
  v35 = v29 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics;
  v36 = v33;
  sub_24E65E0D4(v34, v35);
  v37 = v81;
  v31(v81, v30, v33);
  v38 = v63;
  sub_24F928398();
  v39 = v65;
  v64 = v19;
  v40 = v33;
  v41 = v32;
  v31(v65, v37, v40);
  type metadata accessor for Video();
  swift_allocObject();
  v42 = v68;
  v43 = Video.init(deserializing:using:)(v38, v39);
  if (v42)
  {
    v44 = *(v74 + 8);
    v44(v73, v36);
    v66(v72, v69);
    v44(v81, v36);
    v45 = v75;
    sub_24E6585F8(v75 + 56);
    sub_24E601704(v45 + v62, &qword_27F213E68);
    type metadata accessor for VideoCard();
    swift_deallocPartialClassInstance();
    return v45;
  }

  else
  {
    v47 = v75;
    *(v75 + 16) = v43;
    v48 = v47;
    type metadata accessor for Lockup();
    v49 = v64;
    v68 = 0;
    v50 = v72;
    sub_24F928398();
    v61 = v31;
    v60 = v41;
    v31(v71, v81, v36);
    sub_24F15048C(&qword_27F221FB8, type metadata accessor for Lockup);
    sub_24F929548();
    *(v48 + 24) = v78;
    v51 = v50;
    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v52 = v66;
    v53 = v67 + 8;
    v54 = v69;
    v66(v49, v69);
    v67 = v53;
    *(v48 + 32) = v78;
    type metadata accessor for Action();
    v55 = v51;
    sub_24F928398();
    v56 = v81;
    v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v81);
    v52(v49, v54);
    *(v48 + 40) = v57;
    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_24F928398();
    v58 = v70;
    v61(v71, v56, v70);
    sub_24F15048C(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_24F929548();
    v59 = *(v74 + 8);
    v59(v73, v58);
    v52(v55, v69);
    v59(v56, v58);
    result = v75;
    *(v75 + 48) = v78;
  }

  return result;
}

uint64_t sub_24F150068@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    v3 = &qword_27F23E358;
    v4 = &qword_27F23E360;
    if (qword_27F2110C8 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }
  }

  v5 = *v4;
  *a1 = *v3;
  a1[1] = v5;
}

uint64_t sub_24F150100()
{
  if (!*(v0 + 24))
  {
    return MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
}

uint64_t VideoCard.deinit()
{

  sub_24E6585F8(v0 + 56);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t VideoCard.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 56);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24F150260@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for VideoCard();
  v7 = swift_allocObject();
  result = VideoCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1502CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for VideoCard();
  *a1 = v3;
}

uint64_t sub_24F150314@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    v3 = &qword_27F23E358;
    v4 = &qword_27F23E360;
    if (qword_27F2110C8 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }
  }

  v5 = *v4;
  *a1 = *v3;
  a1[1] = v5;
}

uint64_t sub_24F1503B0()
{
  if (!*(*v0 + 24))
  {
    return MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
}

uint64_t sub_24F15048C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F1504DC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static UIColor.hex(_:)()
{
  sub_24E77ACC8();

  return sub_24F92C398();
}

uint64_t sub_24F1506F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GameDetailsAnnotation();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F150800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GameDetailsAnnotation();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F150928()
{
  sub_24EF36C6C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameDetailsAnnotation();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F1509C8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_24F925508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3B8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3C0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3C8);
  sub_24F150D18(v1, &v8[*(v16 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v8, v12, &qword_27F23A3B0);
  v17 = &v12[*(v10 + 44)];
  v18 = v30;
  *(v17 + 4) = v29;
  *(v17 + 5) = v18;
  *(v17 + 6) = v31;
  v19 = v26;
  *v17 = v25;
  *(v17 + 1) = v19;
  v20 = v28;
  *(v17 + 2) = v27;
  *(v17 + 3) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v12, v15, &qword_27F23A3B8);
  v21 = &v15[*(v13 + 36)];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  sub_24F9254E8();
  sub_24F153A70();
  sub_24F926678();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v15, &qword_27F23A3C0);
}

uint64_t sub_24F150D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3E8);
  MEMORY[0x28223BE20](v55);
  v5 = &v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F0);
  MEMORY[0x28223BE20](v56);
  v57 = &v51 - v6;
  v7 = type metadata accessor for AnnotationView.LeadingView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = a1 + *(type metadata accessor for AnnotationView(0) + 20);
  v20 = type metadata accessor for GameDetailsAnnotation();
  sub_24E60169C(v19 + *(v20 + 28), v58, &qword_27F214808);
  if (*(&v58[0] + 1))
  {
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v67 = v58[2];
    v68 = v58[3];
    v69 = v59;
    v70 = v60;
    v65 = v58[0];
    v66 = v58[1];
    v21 = *(&v61 + 1);
    v22 = v61;
    v54 = v5;
    v23 = *(&v59 + 1);
    v24 = v60;
    KeyPath = swift_getKeyPath();
    v53 = a2;
    *&v18[*(v7 + 36)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    *v18 = v23;
    *(v18 + 1) = v21;
    v18[16] = v22;
    v18[17] = 1;
    *(v18 + 24) = v24;
    *&v58[0] = 0x403C000000000000;
    sub_24E62C088();

    sub_24F9237C8();
    *&v58[0] = 0x404E000000000000;
    sub_24F9237C8();
    *&v58[0] = 0x4043000000000000;
    sub_24F9237C8();
    *&v58[0] = 0x4000000000000000;
    sub_24F9237C8();
    *&v58[0] = 0x4022000000000000;
    sub_24F9237C8();
    v26 = v65;
    v27 = v66;
    sub_24F154A2C(v18, v15, type metadata accessor for AnnotationView.LeadingView);
    v28 = v57;
    sub_24F154A2C(v15, v57, type metadata accessor for AnnotationView.LeadingView);
    v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A400) + 48);
    *v29 = 0;
    *(v29 + 8) = 1;
    *(v29 + 16) = v26;
    *(v29 + 32) = v27;

    sub_24F154A94(v15, type metadata accessor for AnnotationView.LeadingView);
    sub_24E60169C(v28, v54, &qword_27F23A3F0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F23A408, &qword_27F23A3F0);
    v30 = v53;
    sub_24F924E28();
    sub_24E601704(v28, &qword_27F23A3F0);
    sub_24F154A94(v18, type metadata accessor for AnnotationView.LeadingView);
    sub_24EA4AD74(&v65);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F8);
    return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    sub_24E601704(v58, &qword_27F2147D8);
    v33 = *(v19 + *(v20 + 32));
    if (v33)
    {
      v52 = OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage;
      v34 = *(v33 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage);
      v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      LODWORD(v36) = v34;
      v75.value.super.super.isa = [v35 initWithFloat_];
      isa = v75.value.super.super.isa;
      v75.is_nil = 1;
      v39 = localizedStringForDecimal(_:_:)(v75, v38);
      v53 = v33;
      countAndFlagsBits = v39.value._countAndFlagsBits;
      object = v39.value._object;

      v54 = v5;
      if (!v39.value._object)
      {
        countAndFlagsBits = sub_24F92BA88();
        object = v42;
      }

      *&v9[*(v7 + 36)] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 8) = 0;
      *(v9 + 3) = countAndFlagsBits;
      *(v9 + 4) = object;
      *&v65 = 0x403C000000000000;
      sub_24E62C088();
      sub_24F9237C8();
      *&v65 = 0x404E000000000000;
      sub_24F9237C8();
      *&v65 = 0x4043000000000000;
      sub_24F9237C8();
      *&v65 = 0x4000000000000000;
      sub_24F9237C8();
      *&v65 = 0x4022000000000000;
      sub_24F9237C8();
      sub_24F153BDC(v9, v12);
      v43 = *(v53 + v52);
      v44 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000013, 0x800000024FA451B0, *(v53 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings));
      v46 = v45;
      sub_24F154A2C(v12, v18, type metadata accessor for AnnotationView.LeadingView);
      v47 = v57;
      sub_24F154A2C(v18, v57, type metadata accessor for AnnotationView.LeadingView);
      v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A400) + 48);
      *v48 = v43;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      *(v48 + 24) = 0;
      *(v48 + 32) = v44;
      *(v48 + 40) = v46;

      sub_24F154A94(v18, type metadata accessor for AnnotationView.LeadingView);
      sub_24E60169C(v47, v54, &qword_27F23A3F0);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F23A408, &qword_27F23A3F0);
      sub_24F924E28();

      sub_24E601704(v47, &qword_27F23A3F0);
      sub_24F154A94(v12, type metadata accessor for AnnotationView.LeadingView);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F8);
      return (*(*(v49 - 8) + 56))(a2, 0, 1, v49);
    }

    else
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F8);
      return (*(*(v50 - 8) + 56))(a2, 1, 1, v50);
    }
  }
}

uint64_t sub_24F15156C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A428);
  MEMORY[0x28223BE20](v1);
  v3 = v18 - v2;
  *v3 = sub_24F9249A8();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A430);
  sub_24F15174C(v0, &v3[*(v4 + 44)]);
  type metadata accessor for AnnotationView.LeadingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  v5 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A438) + 36)];
  v6 = v18[1];
  *v5 = v18[0];
  *(v5 + 1) = v6;
  *(v5 + 2) = v18[2];
  v7 = sub_24F925858();
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A440) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  *&v3[*(v1 + 36)] = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F15427C();
  sub_24F9265E8();
  return sub_24E601704(v3, &qword_27F23A428);
}

uint64_t sub_24F15174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a1;
  v215 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v2 - 8);
  v176 = &v176 - v3;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v176 - v4;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8);
  MEMORY[0x28223BE20](v177);
  v180 = &v176 - v5;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217748);
  MEMORY[0x28223BE20](v179);
  v184 = &v176 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A470);
  MEMORY[0x28223BE20](v183);
  v186 = &v176 - v7;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A478);
  MEMORY[0x28223BE20](v185);
  v188 = &v176 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A480);
  MEMORY[0x28223BE20](v9);
  v187 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v176 - v12;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A488);
  MEMORY[0x28223BE20](v208);
  v190 = (&v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v191 = (&v176 - v15);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A490);
  MEMORY[0x28223BE20](v210);
  v17 = &v176 - v16;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A498);
  MEMORY[0x28223BE20](v205);
  v206 = &v176 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4A0);
  MEMORY[0x28223BE20](v209);
  v207 = &v176 - v19;
  v203 = sub_24F926E78();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v21 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v195 = &v176 - v23;
  v24 = sub_24F926E68();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v200 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v176 - v28;
  v199 = sub_24F9289E8();
  v30 = *(v199 - 8);
  v31 = *(v30 + 8);
  MEMORY[0x28223BE20](v199);
  v197 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v176 - v33;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4A8);
  MEMORY[0x28223BE20](v201);
  v36 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v194 = &v176 - v38;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4B0);
  MEMORY[0x28223BE20](v204);
  v193 = (&v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v196 = &v176 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4B8);
  MEMORY[0x28223BE20](v42 - 8);
  v214 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v44);
  v46 = *v216;
  v212 = v9;
  v211 = v17;
  v213 = &v176 - v47;
  if (v46)
  {
    v48 = *MEMORY[0x277CE1020];
    v49 = *(v25 + 104);
    v50 = v46;
    v49(v29, v48, v24, v45);
    v192 = v50;

    sub_24E84AFA8();
    (*(v25 + 8))(v29, v24);
    (v49)(v29, v48, v24);
    v191 = *(v30 + 4);
    v51 = v197;
    v52 = v199;
    (v191)(v197, v34, v199);
    v190 = *(v25 + 32);
    v53 = v200;
    (v190)(v200, v29, v24);
    v54 = (v30[80] + 16) & ~v30[80];
    v55 = (v31 + *(v25 + 80) + v54) & ~*(v25 + 80);
    v56 = v55 + v198;
    v57 = swift_allocObject();
    (v191)(v57 + v54, v51, v52);
    (v190)(v57 + v55, v53, v24);
    *(v57 + v56) = 0;
    v58 = v215;
    v59 = v202;
    v60 = MEMORY[0x277CE1050];
    if (!*(v216 + 16))
    {
      v60 = MEMORY[0x277CE1058];
    }

    v61 = v195;
    v62 = v203;
    (*(v202 + 104))(v195, *v60, v203);
    KeyPath = swift_getKeyPath();
    v64 = v194;
    v65 = &v194[*(v201 + 36)];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
    (*(v59 + 32))(v65 + *(v66 + 28), v61, v62);
    *v65 = KeyPath;
    *v64 = sub_24F154DE0;
    v64[1] = v57;
    type metadata accessor for AnnotationView.LeadingView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
    sub_24F9237D8();
    v67 = sub_24F925808();
    sub_24F923318();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v193;
    sub_24E6009C8(v64, v193, &qword_27F23A4A8);
    v77 = &v76[*(v204 + 36)];
    *v77 = v67;
    *(v77 + 1) = v69;
    *(v77 + 2) = v71;
    *(v77 + 3) = v73;
    *(v77 + 4) = v75;
    v77[40] = 0;
    v78 = v196;
    sub_24E6009C8(v76, v196, &qword_27F23A4B0);
    sub_24E60169C(v78, v206, &qword_27F23A4B0);
    swift_storeEnumTagMultiPayload();
    sub_24F154504();
    sub_24F154674();
    v79 = v207;
    sub_24F924E28();
    sub_24E60169C(v79, v211, &qword_27F23A4A0);
    swift_storeEnumTagMultiPayload();
    sub_24F154478();
    sub_24F154700();
    v80 = v213;
    sub_24F924E28();

    sub_24E601704(v79, &qword_27F23A4A0);
    sub_24E601704(v78, &qword_27F23A4B0);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0);
    (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
    v82 = v80;
  }

  else
  {
    v194 = v36;
    v83 = v25;
    v84 = v24;
    v195 = v30;
    v196 = v21;
    v85 = v215;
    v86 = *(v216 + 8);
    if (v86)
    {
      v87 = *MEMORY[0x277CE1010];
      v88 = v83;
      v89 = *(v83 + 104);
      v89(v29, v87, v84, v45);

      sub_24E84AFA8();
      (*(v88 + 8))(v29, v84);
      (v89)(v29, v87, v84);
      v90 = v195 + 32;
      v193 = *(v195 + 4);
      v195 = v86;
      v91 = v197;
      v92 = v199;
      (v193)(v197, v34, v199);
      v192 = *(v88 + 32);
      v93 = v200;
      v192(v200, v29, v84);
      v94 = (v90[48] + 16) & ~v90[48];
      v95 = (v31 + *(v88 + 80) + v94) & ~*(v88 + 80);
      v96 = v95 + v198;
      v97 = swift_allocObject();
      (v193)(v97 + v94, v91, v92);
      v192((v97 + v95), v93, v84);
      *(v97 + v96) = 0;
      v58 = v215;
      v98 = v202;
      v99 = MEMORY[0x277CE1050];
      if (!*(v216 + 16))
      {
        v99 = MEMORY[0x277CE1058];
      }

      v100 = v196;
      v101 = v203;
      (*(v202 + 104))(v196, *v99, v203);
      v102 = swift_getKeyPath();
      v103 = v194;
      v104 = &v194[*(v201 + 36)];
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
      (*(v98 + 32))(v104 + *(v105 + 28), v100, v101);
      *v104 = v102;
      *v103 = sub_24F1548D4;
      v103[1] = v97;
      sub_24F152F44();
      sub_24F152F44();
      sub_24F927618();
      sub_24F9238C8();
      v106 = v190;
      sub_24E6009C8(v103, v190, &qword_27F23A4A8);
      v107 = &v106[*(v208 + 36)];
      v108 = v218;
      *v107 = v217;
      *(v107 + 1) = v108;
      *(v107 + 2) = v219;
      v109 = v191;
      sub_24E6009C8(v106, v191, &qword_27F23A488);
      sub_24E60169C(v109, v206, &qword_27F23A488);
      swift_storeEnumTagMultiPayload();
      sub_24F154504();
      sub_24F154674();
      v110 = v207;
      sub_24F924E28();
      sub_24E60169C(v110, v211, &qword_27F23A4A0);
      swift_storeEnumTagMultiPayload();
      sub_24F154478();
      sub_24F154700();
      v82 = v213;
      sub_24F924E28();

      sub_24E601704(v110, &qword_27F23A4A0);
      sub_24E601704(v109, &qword_27F23A488);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0);
      (*(*(v111 - 8) + 56))(v82, 0, 1, v111);
    }

    else
    {
      v112 = v216;
      v113 = *(v216 + 32);
      if (v113)
      {
        *&v217 = *(v216 + 24);
        *(&v217 + 1) = v113;
        sub_24E600AEC();

        v114 = sub_24F925E18();
        v116 = v115;
        v118 = v117;
        if (*(v112 + 17))
        {
          sub_24F925998();
        }

        else
        {
          sub_24F9258F8();
        }

        v120 = v176;
        v121 = sub_24F925C98();
        v123 = v122;
        v125 = v124;

        sub_24E600B40(v114, v116, v118 & 1);

        v126 = *MEMORY[0x277CE09A0];
        v127 = sub_24F925908();
        v128 = *(v127 - 8);
        (*(v128 + 104))(v120, v126, v127);
        (*(v128 + 56))(v120, 0, 1, v127);
        v129 = sub_24F925B68();
        v131 = v130;
        LOBYTE(v128) = v132;
        v134 = v133;
        sub_24E600B40(v121, v123, v125 & 1);

        sub_24E601704(v120, &qword_27F214698);
        *&v217 = v129;
        *(&v217 + 1) = v131;
        v135 = v128 & 1;
        LOBYTE(v218) = v128 & 1;
        *(&v218 + 1) = v134;
        v136 = v178;
        sub_24F9268B8();
        sub_24E600B40(v129, v131, v135);

        LOBYTE(v123) = sub_24F925868();
        type metadata accessor for AnnotationView.LeadingView(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
        sub_24F9237D8();
        sub_24F923318();
        v138 = v137;
        v140 = v139;
        v142 = v141;
        v144 = v143;
        v145 = v180;
        (*(v181 + 32))(v180, v136, v182);
        v146 = &v145[*(v177 + 36)];
        *v146 = v123;
        *(v146 + 1) = v138;
        *(v146 + 2) = v140;
        *(v146 + 3) = v142;
        *(v146 + 4) = v144;
        v146[40] = 0;
        LOBYTE(v120) = sub_24F9257F8();
        sub_24F923318();
        v148 = v147;
        v150 = v149;
        v152 = v151;
        v154 = v153;
        v155 = v145;
        v156 = v184;
        sub_24E6009C8(v155, v184, &qword_27F2177A8);
        v157 = v156 + *(v179 + 36);
        *v157 = v120;
        *(v157 + 8) = v148;
        *(v157 + 16) = v150;
        *(v157 + 24) = v152;
        *(v157 + 32) = v154;
        *(v157 + 40) = 0;
        sub_24F9237D8();
        sub_24F927618();
        sub_24F9242E8();
        v158 = v186;
        sub_24E6009C8(v156, v186, &qword_27F217748);
        v159 = (v158 + *(v183 + 36));
        v160 = v222;
        v159[4] = v221;
        v159[5] = v160;
        v159[6] = v223;
        v161 = v218;
        *v159 = v217;
        v159[1] = v161;
        v162 = v220;
        v159[2] = v219;
        v159[3] = v162;
        v163 = v188;
        sub_24E6009C8(v158, v188, &qword_27F23A470);
        *(v163 + *(v185 + 36)) = 257;
        v164 = v187;
        v165 = &v187[*(v212 + 36)];
        sub_24F1530D8(v165);
        v166 = sub_24F927618();
        v168 = v167;
        v169 = (v165 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4D0) + 36));
        *v169 = v166;
        v169[1] = v168;
        sub_24E6009C8(v163, v164, &qword_27F23A478);
        v170 = v189;
        sub_24E6009C8(v164, v189, &qword_27F23A480);
        sub_24E60169C(v170, v211, &qword_27F23A480);
        swift_storeEnumTagMultiPayload();
        sub_24F154478();
        sub_24F154700();
        v82 = v213;
        sub_24F924E28();
        sub_24E601704(v170, &qword_27F23A480);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0);
        (*(*(v171 - 8) + 56))(v82, 0, 1, v171);
        v58 = v215;
      }

      else
      {
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0);
        v82 = v213;
        (*(*(v119 - 8) + 56))(v213, 1, 1, v119);
        v58 = v85;
      }
    }
  }

  v172 = v214;
  sub_24E60169C(v82, v214, &qword_27F23A4B8);
  *v58 = 0;
  *(v58 + 8) = 0;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C8);
  sub_24E60169C(v172, v58 + *(v173 + 48), &qword_27F23A4B8);
  v174 = v58 + *(v173 + 64);
  *v174 = 0;
  *(v174 + 8) = 0;
  sub_24E601704(v82, &qword_27F23A4B8);
  return sub_24E601704(v172, &qword_27F23A4B8);
}

uint64_t sub_24F152F44()
{
  v1 = sub_24F922348();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v11[2] = v6;
  v11[3] = v7;

  if (Artwork.URLTemplate.isBundleImage.getter() || (v11[0] = v6, v11[1] = v7, Artwork.URLTemplate.isSystemImage.getter()))
  {

    return 0;
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  type metadata accessor for AnnotationView.LeadingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  sub_24F9222F8();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  sub_24F9237D8();

  return v10;
}

uint64_t sub_24F1530D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = sub_24F924258();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A518);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  if (*(v1 + 17) == 1)
  {
    v14 = *(v6 + 20);
    v15 = *MEMORY[0x277CE0118];
    v35 = v10;
    v16 = sub_24F924B38();
    (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
    __asm { FMOV            V0.2D, #5.0 }

    *v8 = _Q0;
    LODWORD(v15) = sub_24F9251C8();
    v22 = *(v3 + 36);
    v23 = *MEMORY[0x277CE13B8];
    v24 = sub_24F927748();
    (*(*(v24 - 8) + 104))(&v5[v22], v23, v24);
    *v5 = v15;
    sub_24F923658();
    v25 = MEMORY[0x277CDFC08];
    sub_24F154A2C(v8, v13, MEMORY[0x277CDFC08]);
    v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8) + 36)];
    v27 = v37;
    *v26 = v36;
    *(v26 + 1) = v27;
    *(v26 + 4) = v38;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A520);
    sub_24E60169C(v5, &v13[*(v28 + 52)], &qword_27F213F10);
    *&v13[*(v28 + 56)] = 256;
    v29 = sub_24F927618();
    v31 = v30;
    sub_24E601704(v5, &qword_27F213F10);
    sub_24F154A94(v8, v25);
    v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A528) + 36)];
    *v32 = v29;
    v32[1] = v31;
    sub_24E6009C8(v13, a1, &qword_27F23A518);
    return (*(v35 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v34 = *(v10 + 56);

    return v34(a1, 1, 1, v9, v11);
  }
}

double sub_24F153498@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924C98();
  v23 = 0;
  sub_24F153650(v2, &v15);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v31[5] = v20;
  v31[6] = v21;
  sub_24E60169C(&v24, &v14, &qword_27F23A420);
  sub_24E601704(v31, &qword_27F23A420);
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  v5 = v23;
  KeyPath = swift_getKeyPath();
  v7 = sub_24F925898();
  v8 = swift_getKeyPath();
  v9 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v9;
  *(a1 + 113) = *&v22[96];
  v10 = *&v22[16];
  *(a1 + 17) = *v22;
  *(a1 + 33) = v10;
  result = *&v22[32];
  v12 = *&v22[48];
  *(a1 + 49) = *&v22[32];
  *a1 = v4;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v5;
  v13 = *&v22[111];
  *(a1 + 65) = v12;
  *(a1 + 128) = v13;
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x3FF0000000000000;
  *(a1 + 168) = v8;
  *(a1 + 176) = v7;
  return result;
}

uint64_t sub_24F153650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  if (*(a1 + 8))
  {
    v52 = 0;
    v6 = 0;
    v55 = 0;
    v56 = 0;
    v7 = *(a1 + 24);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v52 = *a1;
    v56 = sub_24F9259D8();
    v55 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v6 = 5;
    v7 = *(a1 + 24);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_10:
    v53 = 0;
    v54 = 0;
    v50 = 0;
    v51 = 0;
    v14 = *(a1 + 40);
    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v57 = *(a1 + 16);
  v58 = v7;
  sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v54 = v9;
  v50 = v12 & 1;
  v51 = v13;
  sub_24E5FD138(v9, v13, v12 & 1);
  v53 = v11;

  v14 = *(a1 + 40);
  if (v14)
  {
LABEL_11:
    v57 = *(a1 + 32);
    v58 = v14;
    sub_24E600AEC();

    v19 = sub_24F925E18();
    v21 = v20;
    v23 = v22;
    v24 = sub_24F9251C8();
    v25 = *(v3 + 36);
    v26 = *MEMORY[0x277CE13B8];
    v27 = sub_24F927748();
    (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
    *v5 = v24;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v28 = sub_24F925C58();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E600B40(v19, v21, v23 & 1);

    sub_24E601704(v5, &qword_27F213F10);
    v35 = v32 & 1;
    v15 = v28;
    v16 = v30;
    v17 = v32 & 1;
    sub_24E5FD138(v28, v30, v35);
    v18 = v34;

    goto LABEL_12;
  }

LABEL_9:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_12:
  v36 = v52;
  v37 = v56;
  sub_24F1541F4(v52, v6, 0, 0, v56);
  sub_24F1541F4(v36, v6, 0, 0, v37);
  v39 = v53;
  v38 = v54;
  v40 = v50;
  v41 = v51;
  sub_24E65D2B4(v54, v51, v50, v53);
  sub_24E65D2B4(v15, v16, v17, v18);
  sub_24E65D2F8(v38, v41, v40, v39);
  sub_24E65D2F8(v15, v16, v17, v18);
  v43 = v55;
  v42 = v56;
  sub_24F154238(v36, v6, 0, 0, v56);
  v44 = v49;
  *v49 = v36;
  v44[1] = v6;
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v42;
  v44[5] = v43;
  v46 = v53;
  v45 = v54;
  v44[6] = v54;
  v44[7] = v41;
  v44[8] = v40;
  v44[9] = v46;
  v44[10] = v15;
  v44[11] = v16;
  v44[12] = v17;
  v44[13] = v18;
  sub_24E65D2F8(v15, v16, v17, v18);
  sub_24E65D2F8(v45, v41, v40, v46);
  return sub_24F154238(v36, v6, 0, 0, v56);
}

unint64_t sub_24F153A70()
{
  result = qword_27F23A3D0;
  if (!qword_27F23A3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A3C0);
    sub_24F153AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A3D0);
  }

  return result;
}

unint64_t sub_24F153AFC()
{
  result = qword_27F23A3D8;
  if (!qword_27F23A3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A3B8);
    sub_24E602068(&qword_27F23A3E0, &qword_27F23A3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A3D8);
  }

  return result;
}

uint64_t sub_24F153BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationView.LeadingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F153C40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_24F153C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24F153D20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24F153E7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F153FB8()
{
  sub_24F1540E4(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24F1540E4(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EF36C6C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F1540E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F154148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A3C0);
  sub_24F153A70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F1541F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_24F154238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_24F15427C()
{
  result = qword_27F23A448;
  if (!qword_27F23A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A428);
    sub_24F154334();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A448);
  }

  return result;
}

unint64_t sub_24F154334()
{
  result = qword_27F23A450;
  if (!qword_27F23A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A440);
    sub_24F1543C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A450);
  }

  return result;
}

unint64_t sub_24F1543C0()
{
  result = qword_27F23A458;
  if (!qword_27F23A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A438);
    sub_24E602068(&qword_27F23A460, &qword_27F23A468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A458);
  }

  return result;
}

unint64_t sub_24F154478()
{
  result = qword_27F23A4D8;
  if (!qword_27F23A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A4A0);
    sub_24F154504();
    sub_24F154674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4D8);
  }

  return result;
}

unint64_t sub_24F154504()
{
  result = qword_27F23A4E0;
  if (!qword_27F23A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A4B0);
    sub_24F154590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4E0);
  }

  return result;
}

unint64_t sub_24F154590()
{
  result = qword_27F23A4E8;
  if (!qword_27F23A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A4A8);
    sub_24E602068(&qword_27F22A6B0, &qword_27F22A6B8);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4E8);
  }

  return result;
}

unint64_t sub_24F154674()
{
  result = qword_27F23A4F0;
  if (!qword_27F23A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A488);
    sub_24F154590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4F0);
  }

  return result;
}

unint64_t sub_24F154700()
{
  result = qword_27F23A4F8;
  if (!qword_27F23A4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A480);
    sub_24F1547B8();
    sub_24E602068(&qword_27F23A510, &qword_27F23A4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4F8);
  }

  return result;
}

unint64_t sub_24F1547B8()
{
  result = qword_27F23A500;
  if (!qword_27F23A500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A478);
    sub_24F154844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A500);
  }

  return result;
}

unint64_t sub_24F154844()
{
  result = qword_27F23A508;
  if (!qword_27F23A508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A470);
    sub_24EAAD76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A508);
  }

  return result;
}

uint64_t objectdestroyTm_53()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F154A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F154A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F154AF8()
{
  result = qword_27F23A530;
  if (!qword_27F23A530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A538);
    sub_24F154BB0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A530);
  }

  return result;
}

unint64_t sub_24F154BB0()
{
  result = qword_27F23A540;
  if (!qword_27F23A540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A548);
    sub_24F154C68();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A540);
  }

  return result;
}

unint64_t sub_24F154C68()
{
  result = qword_27F23A550;
  if (!qword_27F23A550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A558);
    sub_24E602068(&qword_27F23A560, &qword_27F23A568);
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A550);
  }

  return result;
}

unint64_t sub_24F154D50()
{
  result = qword_27F23A580;
  if (!qword_27F23A580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A588);
    sub_24F15427C();
    sub_24E99DD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A580);
  }

  return result;
}

uint64_t sub_24F154E08(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsSummary();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F154FA0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsSummary();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for GameDetailsSummaryCard()
{
  result = qword_27F23A598;
  if (!qword_27F23A598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F155170()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24F155274(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GameDetailsSummary();
        if (v3 <= 0x3F)
        {
          sub_24F155274(319, &qword_27F23A5A8, type metadata accessor for GameDetailsDeveloper);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F155274(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_24F1552C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - v4;
  v38 = type metadata accessor for GameDetailsSummary();
  MEMORY[0x28223BE20](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A620);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for GameDetailsSummaryCard();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v45 = v15 + 40;
  sub_24E61DA68(&v48, (v15 + 40), qword_27F21B590);
  v16 = *(v13 + 24);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v44 = v16;
  v18(&v15[v16], 1, 1, v17);
  v41 = v13;
  v19 = *(v13 + 32);
  v20 = type metadata accessor for GameDetailsDeveloper();
  v21 = *(*(v20 - 8) + 56);
  v46 = v19;
  v21(&v15[v19], 1, 1, v20);
  v22 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F156BEC();
  v42 = v12;
  v23 = v43;
  sub_24F92D108();
  if (v23)
  {
    v25 = v44;
    v26 = v45;
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_24E601704(v26, qword_27F24EC90);
    sub_24E601704(&v15[v25], &qword_27F213E68);
    return sub_24E601704(&v15[v46], &qword_27F23A590);
  }

  else
  {
    v34 = v20;
    v35 = v6;
    v43 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v24 = v40;
    sub_24F92CC68();
    v27 = v49;
    *v15 = v48;
    *(v15 + 1) = v27;
    *(v15 + 4) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v51 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v44;
    sub_24E61DA68(&v48, v45, qword_27F24EC90);
    LOBYTE(v48) = 2;
    sub_24F156E68(&qword_27F213F48, MEMORY[0x277D21F70]);
    v29 = v43;
    sub_24F92CC18();
    v30 = v39;
    sub_24E61DA68(v29, &v15[v28], &qword_27F213E68);
    LOBYTE(v48) = 3;
    sub_24F156E68(&qword_27F23A630, type metadata accessor for GameDetailsSummary);
    v31 = v35;
    sub_24F92CC68();
    sub_24F156C40(v31, &v15[*(v41 + 28)], type metadata accessor for GameDetailsSummary);
    LOBYTE(v48) = 4;
    sub_24F156E68(&qword_27F23A638, type metadata accessor for GameDetailsDeveloper);
    v32 = v37;
    sub_24F92CC18();
    (*(v30 + 8))(v42, v24);
    sub_24E61DA68(v32, &v15[v46], &qword_27F23A590);
    sub_24F156CA8(v15, v36);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_24F156D0C(v15, type metadata accessor for GameDetailsSummaryCard);
  }
}

unint64_t sub_24F155A00()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x7972616D6D7573;
  if (v1 != 3)
  {
    v4 = 0x65706F6C65766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24F155A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F156FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F155ABC(uint64_t a1)
{
  v2 = sub_24F156BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F155AF8(uint64_t a1)
{
  v2 = sub_24F156BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F155B9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a5;
  v94 = a4;
  v95 = a3;
  v104 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5D0);
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x28223BE20](v8);
  v86 = v75 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5D8);
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = v75 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5E0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = v75 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598);
  MEMORY[0x28223BE20](v77);
  v81 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = v75 - v18;
  v93 = type metadata accessor for GameDetailsDeveloper();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v98 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5E8);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v100 = v75 - v23;
  v24 = sub_24F9241F8();
  v87 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5F0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v75 - v29;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5F8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v32 = v75 - v31;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A600);
  MEMORY[0x28223BE20](v89);
  v97 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v75 - v35;
  MEMORY[0x28223BE20](v37);
  v105 = v75 - v38;
  *&v109 = a1;
  BYTE8(v109) = a2 & 1;
  v88 = type metadata accessor for GameDetailsSummaryCard();
  v39 = sub_24E630740();
  sub_24F921D38();
  sub_24F9241E8();
  *&v109 = &type metadata for GameDetailsSummaryComponent;
  *(&v109 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v75[1] = sub_24F156E68(&qword_27F212838, MEMORY[0x277CDDB18]);
  sub_24F926178();
  v40 = *(v87 + 8);
  v76 = v26;
  v41 = v26;
  v42 = v40;
  v87 = v24;
  v40(v41, v24);
  (*(v28 + 8))(v30, v27);
  sub_24F9275F8();
  sub_24F9242E8();
  (*(v90 + 32))(v36, v32, v91);
  v43 = &v36[*(v89 + 36)];
  v44 = v114;
  *(v43 + 4) = v113;
  *(v43 + 5) = v44;
  *(v43 + 6) = v115;
  v45 = v110;
  *v43 = v109;
  *(v43 + 1) = v45;
  v46 = v112;
  *(v43 + 2) = v111;
  *(v43 + 3) = v46;
  sub_24E6009C8(v36, v105, &qword_27F23A600);
  v47 = v96;
  sub_24E60169C(v106 + *(v88 + 32), v96, &qword_27F23A590);
  if ((*(v92 + 48))(v47, 1, v93) == 1)
  {
    sub_24E601704(v47, &qword_27F23A590);
    v48 = 1;
    v49 = v100;
  }

  else
  {
    sub_24F156C40(v47, v98, type metadata accessor for GameDetailsDeveloper);
    v50 = v99;
    sub_24F9271E8();
    v51 = sub_24F9251C8();
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)) = v51;
    v52 = *(v77 + 36);
    v53 = *MEMORY[0x277CE13B8];
    v54 = sub_24F927748();
    (*(*(v54 - 8) + 104))(v50 + v52, v53, v54);
    v55 = sub_24F156B98();
    v56 = v78;
    sub_24F921D38();
    v57 = v76;
    sub_24F9241E8();
    v107 = &type metadata for GameDetailsDeveloperComponent;
    v108 = v55;
    swift_getOpaqueTypeConformance2();
    v58 = v80;
    v59 = v82;
    v60 = v87;
    sub_24F926178();
    v42(v57, v60);
    (*(v79 + 8))(v56, v59);
    v61 = v81;
    sub_24E60169C(v50, v81, &qword_27F214598);
    v62 = v84;
    v63 = *(v84 + 16);
    v64 = v83;
    v65 = v85;
    v63(v83, v58, v85);
    v66 = v86;
    sub_24E60169C(v61, v86, &qword_27F214598);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A618);
    v63((v66 + *(v67 + 48)), v64, v65);
    v68 = *(v62 + 8);
    v68(v58, v65);
    sub_24E601704(v99, &qword_27F214598);
    sub_24F156D0C(v98, type metadata accessor for GameDetailsDeveloper);
    v68(v64, v65);
    sub_24E601704(v61, &qword_27F214598);
    v49 = v100;
    sub_24E6009C8(v66, v100, &qword_27F23A5D0);
    v48 = 0;
  }

  (*(v102 + 56))(v49, v48, 1, v103);
  v69 = v105;
  v70 = v97;
  sub_24E60169C(v105, v97, &qword_27F23A600);
  v71 = v101;
  sub_24E60169C(v49, v101, &qword_27F23A5E8);
  v72 = v104;
  sub_24E60169C(v70, v104, &qword_27F23A600);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A608);
  sub_24E60169C(v71, v72 + *(v73 + 48), &qword_27F23A5E8);
  sub_24E601704(v49, &qword_27F23A5E8);
  sub_24E601704(v69, &qword_27F23A600);
  sub_24E601704(v71, &qword_27F23A5E8);
  return sub_24E601704(v70, &qword_27F23A600);
}

double sub_24F1568A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5C0);
  sub_24F155B9C(v5, v6, v7, v8, a1, a2 + *(v9 + 44));
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5C8) + 36);
  v11 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v12 = type metadata accessor for GradientBackground(0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  result = 26.0;
  *(v10 + 16) = xmmword_24F93CFD0;
  *(v10 + 32) = 0x4030000000000000;
  *(v10 + 40) = 256;
  return result;
}

unint64_t sub_24F156A90()
{
  result = qword_27F23A5B8;
  if (!qword_27F23A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A5B8);
  }

  return result;
}