uint64_t sub_24EA5EB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226270) + 36);
  sub_24F927438();
  v5 = sub_24F925808();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226260);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_24EA5EC3C()
{
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226270);
  sub_24E602068(&qword_27F226278, &qword_27F226260);
  sub_24EA5ED98();
  sub_24EA5EF08();
  return sub_24F926AF8();
}

unint64_t sub_24EA5ED98()
{
  result = qword_27F226280;
  if (!qword_27F226280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226268);
    sub_24EA5EE50();
    sub_24E602068(&qword_27F226298, &qword_27F2262A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226280);
  }

  return result;
}

unint64_t sub_24EA5EE50()
{
  result = qword_27F226288;
  if (!qword_27F226288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226290);
    sub_24E602068(&qword_27F226278, &qword_27F226260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226288);
  }

  return result;
}

unint64_t sub_24EA5EF08()
{
  result = qword_27F2262A8;
  if (!qword_27F2262A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226270);
    sub_24E602068(&qword_27F226278, &qword_27F226260);
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2262A8);
  }

  return result;
}

uint64_t sub_24EA5EFEC()
{
  v0 = sub_24F927538();
  __swift_allocate_value_buffer(v0, qword_27F39B6A0);
  __swift_project_value_buffer(v0, qword_27F39B6A0);
  sub_24EA5F04C();
  return sub_24F927528();
}

unint64_t sub_24EA5F04C()
{
  result = qword_27F2262F0;
  if (!qword_27F2262F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2262F0);
  }

  return result;
}

uint64_t sub_24EA5F0B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226260);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226268);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226270);
  sub_24E602068(&qword_27F226278, &qword_27F226260);
  sub_24EA5ED98();
  sub_24EA5EF08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EA5F1AC()
{
  v0 = sub_24F926C08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226328);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F942000;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 32) = v7;
  *(v4 + 36) = v8;
  *(v4 + 40) = v9;
  *(v4 + 44) = v10;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 48) = v11;
  *(v4 + 52) = v12;
  *(v4 + 56) = v13;
  *(v4 + 60) = v14;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 64) = v15;
  *(v4 + 68) = v16;
  *(v4 + 72) = v17;
  *(v4 + 76) = v18;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 80) = v19;
  *(v4 + 84) = v20;
  *(v4 + 88) = v21;
  *(v4 + 92) = v22;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 96) = v23;
  *(v4 + 100) = v24;
  *(v4 + 104) = v25;
  *(v4 + 108) = v26;
  return v4;
}

unint64_t sub_24EA5F458()
{
  result = qword_27F2262F8;
  if (!qword_27F2262F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2262F8);
  }

  return result;
}

unint64_t sub_24EA5F4B0()
{
  result = qword_27F226300;
  if (!qword_27F226300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226300);
  }

  return result;
}

uint64_t sub_24EA5F504()
{
  v23 = sub_24F9274A8();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = (&v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_24F9274F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927508();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v28 = 0x4010000000000000;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v32 = _Q0;
  v33 = 1065353216;
  v16 = *MEMORY[0x277CE1330];
  v17 = *(v4 + 104);
  v24 = v3;
  v17(v6, v16, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226308);
  sub_24F9274B8();
  v18 = swift_allocObject();
  v27 = xmmword_24F93DE60;
  *(v18 + 16) = xmmword_24F93DE60;
  sub_24EA5F1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226310);
  v19 = swift_allocObject();
  v19[1] = xmmword_24F93FC20;
  if (qword_27F210650 != -1)
  {
    swift_once();
  }

  v19[2] = xmmword_27F39C600;
  if (qword_27F210648 != -1)
  {
    swift_once();
  }

  v20 = xmmword_27F39C5F0;
  v19[3] = xmmword_27F39C5F0;
  v19[4] = v20;
  v19[5] = v20;
  sub_24F9274E8();

  *v2 = 0;
  (*(v0 + 104))(v2, *MEMORY[0x277CE1328], v23);
  sub_24F9274C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226318);
  sub_24F927498();
  *(swift_allocObject() + 16) = v27;
  sub_24F927488();
  sub_24F9274D8();

  (*(v4 + 8))(v6, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226320);
  sub_24F927518();
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  sub_24F927478();
  (*(v25 + 8))(v10, v26);
  return v21;
}

uint64_t ProductMediaGalleryPage.__allocating_init(productMedia:selectedProductMediaItem:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_24F928818();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v41 = a1;
  v42 = a2;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = a1;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = a2;
  v22 = *(v18 + 16);
  v43 = a3;
  v22(v20, a3, v17);
  sub_24E90A7EC(a5, v16);
  *(v21 + 16) = 0;
  v22((v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v20, v17);
  v40 = v21;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v44;
  sub_24E90A7EC(v16, v13);
  v23 = sub_24F9285B8();
  v24 = *(v23 - 8);
  v38 = *(v24 + 48);
  if (v38(v13, 1, v23) == 1)
  {
    sub_24E90A85C(a5);
    v25 = *(v18 + 8);
    v25(v43, v17);
    sub_24E90A85C(v16);
    v25(v20, v17);
    v26 = v13;
  }

  else
  {
    v36 = v24;
    v37 = a5;
    v27 = qword_27F2105F0;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v28, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v29 = v45;
    if (v45)
    {
    }

    v30 = *(v36 + 8);
    v30(v13, v23);
    if (!v29)
    {

      sub_24E90A85C(v37);
      v33 = *(v18 + 8);
      v33(v43, v17);
      sub_24E90A85C(v16);
      v33(v20, v17);
      return v40;
    }

    v31 = v39;
    sub_24E90A7EC(v16, v39);
    if (v38(v31, 1, v23) != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v37);
      v34 = *(v18 + 8);
      v34(v43, v17);
      sub_24E90A85C(v16);
      v34(v20, v17);
      v30(v31, v23);
      return v40;
    }

    sub_24E90A85C(v37);
    v32 = *(v18 + 8);
    v32(v43, v17);
    sub_24E90A85C(v16);
    v32(v20, v17);
    v26 = v31;
  }

  sub_24E90A85C(v26);
  return v40;
}

uint64_t ProductMediaGalleryPage.init(productMedia:selectedProductMediaItem:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = sub_24F928818();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = a2;
  v23 = *(v19 + 16);
  v56 = a3;
  v23(v22, a3, v18, v20);
  v52 = a5;
  sub_24E90A7EC(a5, v17);
  *(v5 + 16) = 0;
  (v23)(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v22, v18);
  v55 = v5;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v51;
  sub_24E90A7EC(v17, v14);
  v24 = sub_24F9285B8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v14, 1, v24) == 1)
  {
    sub_24E90A85C(v52);
    v27 = *(v19 + 8);
    v27(v56, v18);
    sub_24E90A85C(v17);
    v27(v22, v18);
    v28 = v14;
  }

  else
  {
    v47 = v26;
    v48 = v19;
    v49 = v18;
    v29 = v52;
    v30 = qword_27F2105F0;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v31, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v32 = v14;
    sub_24F9285C8();
    v33 = v57;
    if (v57)
    {
    }

    v34 = *(v25 + 8);
    v34(v32, v24);
    if (!v33)
    {

      sub_24E90A85C(v29);
      v40 = v49;
      v41 = *(v48 + 8);
      v41(v56, v49);
      sub_24E90A85C(v17);
      v41(v22, v40);
      return v55;
    }

    v45 = v34;
    v46 = v22;
    v35 = v50;
    sub_24E90A7EC(v17, v50);
    v36 = v47(v35, 1, v24);
    v38 = v48;
    v37 = v49;
    if (v36 != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v29);
      v42 = *(v38 + 8);
      v42(v56, v37);
      sub_24E90A85C(v17);
      v42(v46, v37);
      v45(v35, v24);
      return v55;
    }

    sub_24E90A85C(v29);
    v39 = *(v38 + 8);
    v39(v56, v37);
    sub_24E90A85C(v17);
    v39(v46, v37);
    v28 = v35;
  }

  sub_24E90A85C(v28);
  return v55;
}

uint64_t ProductMediaGalleryPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = v3;
  v27 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_24F928388();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  type metadata accessor for ProductMedia();
  v34 = a1;
  sub_24F928398();
  v30 = v7;
  v31 = v6;
  v16 = *(v7 + 16);
  v33 = a2;
  v16(v11, a2, v6);
  sub_24EA610D0(&qword_27F226330, type metadata accessor for ProductMedia);
  sub_24F929548();
  if (v37)
  {
    v17 = v30;
    v18 = v32;
    *(v32 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = v37;
    *(v18 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = 0;
    v19 = v34;
    (*(v35 + 16))(v14, v34, v36);
    v6 = v28;
    v20 = v33;
    v21 = v31;
    v16(v28, v33, v31);
    v22 = v29;
    v23 = BasePage.init(deserializing:using:)(v14, v6);
    if (!v22)
    {
      v6 = v23;
    }

    (*(v17 + 8))(v20, v21);
    (*(v35 + 8))(v19, v36);
  }

  else
  {
    v24 = sub_24F92AC38();
    sub_24EA610D0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v25, "productMedia");
    v25[13] = 0;
    *(v25 + 7) = -5120;
    *(v25 + 2) = v27;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v30 + 8))(v33, v31);
    (*(v35 + 8))(v34, v36);
    type metadata accessor for ProductMediaGalleryPage();
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t sub_24EA6093C(uint64_t a1)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v48 - v5;
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = sub_24F928818();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia);
  v19 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v60 = v12;
  v20 = *(v12 + 16);
  v20(v17, v1 + v19, v11);
  v55 = *(v1 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v21 = sub_24F9285B8();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v10, 1, 1, v21);
  type metadata accessor for ProductMediaGalleryPage();
  v23 = swift_allocObject();
  v58 = v18;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = v18;
  v24 = v10;
  v25 = v57;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = v62;
  v56 = v17;
  v20(v14, v17, v11);
  sub_24E90A7EC(v24, v25);
  *(v23 + 16) = 0;
  v20((v23 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v14, v11);
  v59 = v23;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v55;
  v26 = v61;
  sub_24E90A7EC(v25, v61);
  v53 = v22;
  v54 = v21;
  v27 = *(v22 + 48);
  if (v27(v26, 1, v21) == 1)
  {

    sub_24E90A85C(v25);
    v28 = *(v60 + 8);
    v28(v14, v11);
    sub_24E90A85C(v24);
    v28(v56, v11);
    v29 = v26;
  }

  else
  {
    v48 = v27;
    v49 = v14;
    v50 = v11;
    v51 = v24;
    v30 = v56;
    v31 = qword_27F2105F0;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v32, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v33 = v61;
    sub_24F9285C8();
    v34 = v63;
    v35 = v30;
    v37 = v53;
    v36 = v54;
    if (v63)
    {
    }

    v38 = *(v37 + 8);
    v38(v33, v36);
    v39 = v60;
    if (!v34)
    {
      sub_24E90A85C(v25);
      v43 = *(v39 + 8);
      v44 = v50;
      v43(v49, v50);
      sub_24E90A85C(v51);
      v43(v35, v44);
      return v59;
    }

    v40 = v52;
    sub_24E90A7EC(v25, v52);
    if (v48(v40, 1, v36) != 1)
    {
      sub_24ECDF110();
      sub_24E90A85C(v25);
      v45 = *(v39 + 8);
      v46 = v50;
      v45(v49, v50);
      sub_24E90A85C(v51);
      v45(v30, v46);
      v38(v40, v36);
      return v59;
    }

    sub_24E90A85C(v25);
    v41 = *(v39 + 8);
    v42 = v50;
    v41(v49, v50);
    sub_24E90A85C(v51);
    v41(v30, v42);
    v29 = v40;
  }

  sub_24E90A85C(v29);
  return v59;
}

uint64_t sub_24EA60EFC()
{
}

uint64_t ProductMediaGalleryPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ProductMediaGalleryPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA610D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ProductMediaGalleryPage()
{
  result = qword_27F226338;
  if (!qword_27F226338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *TopShelfItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v73 = v3;
  v5 = *v3;
  v70 = a2;
  v71 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v61 - v11;
  v12 = sub_24F9285B8();
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v72 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v28 = v24;
  v29 = v17 + 8;
  v30 = *(v17 + 8);
  v30(v28, v16);
  if (v27)
  {
    v31 = v73;
    v73[2] = v25;
    v31[3] = v27;
    sub_24F928398();
    v32 = sub_24F928348();
    v67 = v29;
    v34 = v33;
    v61 = v16;
    v30(v21, v16);
    v31[4] = v32;
    v31[5] = v34;
    type metadata accessor for TopShelfAction(0);
    sub_24F928398();
    v66 = v30;
    v35 = v70;
    v36 = *(v69 + 16);
    v37 = v68;
    v36(v15, v70, v68);
    sub_24EA61B18(&qword_27F2242F0, type metadata accessor for TopShelfAction);
    sub_24F929548();
    v73[6] = v74;
    sub_24F928398();
    v71 = v21;
    v36(v15, v35, v37);
    sub_24F929548();
    v73[7] = v74;
    type metadata accessor for Artwork();
    sub_24F928398();
    v36(v15, v35, v37);
    v38 = v73;
    v39 = v64;
    sub_24EA61B18(&qword_27F219660, type metadata accessor for Artwork);
    v40 = v71;
    sub_24F929548();
    v38[8] = v74;
    sub_24F928398();
    v41 = v63;
    sub_24F928288();
    v42 = v61;
    v43 = v66;
    v66(v40, v61);
    sub_24E6C4F90(v41, v38 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_expirationDate);
    v44 = v62;
    sub_24F928398();
    sub_24F9281F8();
    v45 = v42;
    v43(v44, v42);
    v46 = v65;
    sub_24E60169C(v39, v65, qword_27F221C40);
    v47 = sub_24F928E68();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_24E601704(v39, qword_27F221C40);
      sub_24E601704(v46, qword_27F221C40);
      v49 = 0;
    }

    else
    {
      v49 = sub_24F928E38();
      sub_24E601704(v39, qword_27F221C40);
      (*(v48 + 8))(v46, v47);
    }

    v53 = v72;
    v52 = v73;
    *(v73 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_userInfo) = v49;
    v54 = v71;
    sub_24F928398();
    v55 = sub_24F928348();
    v57 = v56;
    (*(v69 + 8))(v70, v68);
    v58 = v66;
    v66(v53, v45);
    v58(v54, v45);
    v59 = (v52 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_accessibilityLabel);
    *v59 = v55;
    v59[1] = v57;
  }

  else
  {
    v50 = sub_24F92AC38();
    sub_24EA61B18(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v51 = 0x696669746E656469;
    v51[1] = 0xEA00000000007265;
    v51[2] = v71;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D22530], v50);
    swift_willThrow();
    (*(v69 + 8))(v70, v68);
    v30(v72, v16);
    type metadata accessor for TopShelfItem();
    swift_deallocPartialClassInstance();
  }

  return v73;
}

uint64_t type metadata accessor for TopShelfItem()
{
  result = qword_27F226348;
  if (!qword_27F226348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA61B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TopShelfItem.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_expirationDate, &unk_27F22EC30);

  return v0;
}

uint64_t TopShelfItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TopShelfItem.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopShelfItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TopShelfItem.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_accessibilityLabel);

  return v1;
}

uint64_t TopShelfItem.__deallocating_deinit()
{
  TopShelfItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA61D90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_24EA61DCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24EA61F7C(&v7);
  if (v8)
  {
    sub_24E612B0C(&v7, v9);
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_24E612B0C(v9, (a3 + 16));
  }

  else
  {
    sub_24E601704(&v7, &qword_27F2129B0);
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_24EA61E7C()
{
  sub_24E728940();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EA61F7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  v12 = sub_24F928E68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F9281F8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, qword_27F221C40);
    sub_24F9282B8();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_24E601704(v4, &qword_27F2213B0);
      return sub_24F928368();
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v18 = sub_24F92ABB8();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
      *a1 = v18;
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = sub_24F928E38();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    *a1 = v17;
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t FramedMediaLayout.init(metrics:mediaView:captionView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FramedMediaLayout(0);
  sub_24EA623C8(a1, a4 + *(v8 + 24));
  sub_24E612C80(a2, a4);

  return sub_24E612C80(a3, a4 + 40);
}

uint64_t sub_24EA623C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FramedMediaLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FramedMediaLayout.Metrics.init(mediaAspectRatio:mediaMaxHeight:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F922348();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20);

  return sub_24E612C80(a2, v7);
}

uint64_t FramedMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FramedMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FramedMediaLayout.Metrics.mediaMaxHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t FramedMediaLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FramedMediaLayout(0) + 24);

  return sub_24EA62724(v3, a1);
}

uint64_t sub_24EA62724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FramedMediaLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double FramedMediaLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_24F922238();
  v7 = v1 + *(type metadata accessor for FramedMediaLayout(0) + 24);
  sub_24F922308();
  v8 = type metadata accessor for FramedMediaLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1((v7 + *(v8 + 20)), *(v7 + *(v8 + 20) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v4 + 8))(v6, v3);
  return a1;
}

uint64_t FramedMediaLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  if ((sub_24F922238() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    sub_24F922288();
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetWidth(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetHeight(v19);
  v14 = v4 + *(type metadata accessor for FramedMediaLayout(0) + 24);
  sub_24F922308();
  v15 = type metadata accessor for FramedMediaLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1(&v14[*(v15 + 20)], *&v14[*(v15 + 20) + 24]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v11 + 8))(v13, v10);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetWidth(v20);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922218();
  CGRectGetMaxY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetWidth(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetHeight(v23);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922218();
  CGRectGetHeight(v24);
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_24F922218();
  CGRectGetHeight(v25);
  return sub_24F922128();
}

double sub_24EA62CC8(double a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_24F922238();
  v10 = v3 + *(a3 + 24);
  sub_24F922308();
  v11 = type metadata accessor for FramedMediaLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1((v10 + *(v11 + 20)), *(v10 + *(v11 + 20) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v7 + 8))(v9, v6);
  return a1;
}

uint64_t sub_24EA62EE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FramedMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA62FA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FramedMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EA63044()
{
  result = sub_24E8EFB54(319, &qword_27F237A20);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FramedMediaLayout.Metrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA630EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EA631C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24EA6327C()
{
  result = sub_24F922348();
  if (v1 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F237A40);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA63310(uint64_t a1)
{
  sub_24F921888();
  v2 = sub_24F9271C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_24F928FD8();
  sub_24F921B78();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_24EA6344C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226378);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EA634D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226378);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowBackActionImplementation()
{
  result = qword_27F226380;
  if (!qword_27F226380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA635A0()
{
  sub_24EA6360C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24EA6360C()
{
  if (!qword_27F226390)
  {
    sub_24F928FD8();
    v0 = sub_24F921B88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F226390);
    }
  }
}

unint64_t sub_24EA63668()
{
  result = qword_27F226398;
  if (!qword_27F226398)
  {
    type metadata accessor for FlowBackAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226398);
  }

  return result;
}

uint64_t sub_24EA636C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226378);

  return MEMORY[0x2821E7BF0](v3 + v4, a2, v5);
}

uint64_t EditorialQuoteLayout.Metrics.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t EditorialQuoteLayout.Metrics.quoteTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t EditorialQuoteLayout.Metrics.attributionTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t EditorialQuoteLayout.Metrics.horizontalMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t EditorialQuoteLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t EditorialQuoteLayout.Metrics.maxWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t sub_24EA63A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EditorialQuoteLayout.Metrics.init(quoteTopSpace:attributionTopSpace:horizontalMargin:bottomMargin:maxWidth:minHeight:alignment:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a7;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0;
  *(a8 + 200) = 0u;
  v15 = a8 + 200;
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  sub_24E612C80(a5, a8 + 160);
  result = sub_24EA63A70(a6, v15);
  *(a8 + 240) = v14;
  return result;
}

uint64_t EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 208);
  *(a4 + 192) = *(a1 + 192);
  *(a4 + 208) = v6;
  *(a4 + 224) = *(a1 + 224);
  *(a4 + 240) = *(a1 + 240);
  v7 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v7;
  v8 = *(a1 + 176);
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = v8;
  v9 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v9;
  v10 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v10;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  v12 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v12;
  sub_24E612C80(a2, a4 + 248);

  return sub_24E612C80(a3, a4 + 288);
}

uint64_t EditorialQuoteLayout.measurements(fitting:in:)()
{
  v1 = sub_24F92CDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E930DFC(v0 + 200, v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_24E930E6C(v7);
  }

  return sub_24EA63E80();
}

uint64_t sub_24EA63E80()
{
  v1 = v0;
  v2 = sub_24F92CDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v6 = *(v3 + 8);
  v6(v5, v2);
  sub_24F92C228();
  __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v6(v5, v2);
  __swift_project_boxed_opaque_existential_1(v1 + 31, v1[34]);
  sub_24F922288();
  v8 = v7;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24F9223C8();
  v13 = v8;
  sub_24F922398();
  __swift_project_boxed_opaque_existential_1(v1 + 36, v1[39]);
  sub_24F922288();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  sub_24F9223C8();
  v13 = v10;
  sub_24F922398();
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  return (v6)(v5, v2);
}

uint64_t EditorialQuoteLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v57 = a1;
  *&v10 = COERCE_DOUBLE(sub_24F9221D8());
  v55 = *(v10 - 8);
  v56 = *&v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v50 = a2;
  v51 = a3;
  sub_24F92C1C8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v26 = v25;
  v52 = v16;
  v53 = v12;
  v16(v15, v12);
  v61.origin.x = v18;
  v61.origin.y = v20;
  v61.size.width = v22;
  v61.size.height = v24;
  if (v26 < CGRectGetWidth(v61))
  {
    v62.origin.x = v18;
    v62.origin.y = v20;
    v62.size.width = v22;
    v62.size.height = v24;
    v18 = v18 + (CGRectGetWidth(v62) - v26) * 0.5;
    v22 = v26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  sub_24E615E00(v5 + 248, inited + 32);
  sub_24E615E00(v5, inited + 80);
  sub_24E930DFC(&v58, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_24E930E6C(&v58);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  sub_24E615E00(v5 + 288, inited + 168);
  sub_24E615E00(v5 + 40, inited + 216);
  sub_24E930DFC(&v58, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E930E6C(&v58);
  LOBYTE(v58) = 1;
  *(&v58 + 1) = inited;
  v28 = v54;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v54, v18, v20, v22, v24);
  (*(v55 + 8))(v28, COERCE_DOUBLE(*&v56));

  sub_24EA63E80();
  v56 = v29;
  v31 = v30;
  sub_24E930DFC(v5 + 200, &v58);
  if (!*(&v59 + 1))
  {
    sub_24E930E6C(&v58);
    v33 = 0.0;
    if (v31 >= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v33 = v32;
  v52(v15, v53);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  if (v33 > v31)
  {
LABEL_5:
    __swift_project_boxed_opaque_existential_1((v5 + 288), *(v5 + 312));
    sub_24F922218();
    MaxY = CGRectGetMaxY(v63);
    __swift_project_boxed_opaque_existential_1((v5 + 248), *(v5 + 272));
    sub_24F922218();
    v35 = MaxY - CGRectGetMinY(v64);
    v65.origin.x = v50;
    v65.origin.y = v51;
    v65.size.width = a4;
    v65.size.height = a5;
    v36 = CGRectGetMinY(v65) + (v33 - v35) * 0.5;
    __swift_project_boxed_opaque_existential_1((v5 + 248), *(v5 + 272));
    sub_24F922218();
    v38 = v36 - v37;
    __swift_project_boxed_opaque_existential_1((v5 + 248), *(v5 + 272));
    v39 = sub_24F922208();
    *(v40 + 8) = v36;
    v39(&v58, 0);
    __swift_project_boxed_opaque_existential_1((v5 + 288), *(v5 + 312));
    v41 = sub_24F922208();
    *(v42 + 8) = v38 + *(v42 + 8);
    v41(&v58, 0);
  }

LABEL_6:
  if (*(v5 + 240) == 1)
  {
    v43 = v22 - v56;
    if (v22 - v56 > 0.0)
    {
      __swift_project_boxed_opaque_existential_1((v5 + 248), *(v5 + 272));
      v44 = v43 * 0.5;
      v45 = sub_24F922208();
      *v46 = v44 + *v46;
      v45(&v58, 0);
      __swift_project_boxed_opaque_existential_1((v5 + 288), *(v5 + 312));
      v47 = sub_24F922208();
      *v48 = v44 + *v48;
      v47(&v58, 0);
    }
  }

  return sub_24F922128();
}

unint64_t sub_24EA64878()
{
  result = qword_27F2263A0;
  if (!qword_27F2263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI12AnyDimension_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24EA648EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_24EA64934(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_24EA64A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_24EA64A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EA64B0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_24EA64B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EA64BEC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    LOBYTE(v10) = HIBYTE(a2);
    BYTE1(v10) = a2;
    *(&v10 + 1) = a3;
    LOBYTE(v11) = a4 & 1;
    *(&v11 + 1) = a1;
    LOWORD(v12) = a2;
    *(&v12 + 1) = a3;
    v13 = a4 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263B0);
    sub_24EA651A8();
    sub_24F9265E8();
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v12;
    v15 = v13;
    sub_24EA65424(v14);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263A8);
    return (*(*(v6 - 8) + 56))(a5, 0, 1, v6);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263A8);
    v9 = *(*(v8 - 8) + 56);

    return v9(a5, 1, 1, v8);
  }
}

uint64_t sub_24EA64D70(unint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  if (a1 >> 62 && (result = sub_24F92C738(), result < 0))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    *(v8 + 40) = a4 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226420);
    sub_24E62A6CC();
    sub_24E602068(&qword_27F226428, &qword_27F226420);
    return sub_24F927228();
  }

  return result;
}

unint64_t sub_24EA64EE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253052270](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = sub_24EA65620;
    a3[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA64F50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_24F923998();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for SwiftUIArtworkView(0);
  v9 = v8[6];
  v10 = *MEMORY[0x277CE1010];
  v11 = sub_24F926E68();
  (*(*(v11 - 8) + 104))(a2 + v9, v10, v11);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  v12 = a2 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(a2 + v8[8]) = 2;
  *(a2 + v8[9]) = 0;
  LOBYTE(v8) = *(a1 + 64);

  sub_24F923998();
  v14 = v13;
  v16 = v15;
  sub_24F926F28();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430) + 36);
  *v17 = v8;
  *(v17 + 8) = v14;
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 1;
  *(v17 + 48) = v29;
  *(v17 + 56) = v30;
  v18 = sub_24F927618();
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226438) + 36);
  LOBYTE(v9) = *(a1 + 64);
  sub_24F923998();
  v23 = v22;
  v25 = v24;
  sub_24F926C88();
  sub_24F926D08();

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226440);
  sub_24F923618();

  *v21 = v9;
  *(v21 + 8) = v23;
  *(v21 + 16) = v25;
  *(v21 + 24) = 0x3FF0000000000000;
  *(v21 + *(v26 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226448);
  v28 = (v21 + *(result + 36));
  *v28 = v18;
  v28[1] = v20;
  return result;
}

unint64_t sub_24EA651A8()
{
  result = qword_27F2263B8;
  if (!qword_27F2263B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263B0);
    sub_24EA65260();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263B8);
  }

  return result;
}

unint64_t sub_24EA65260()
{
  result = qword_27F2263C0;
  if (!qword_27F2263C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263C8);
    sub_24EA65318();
    sub_24E602068(&qword_27F2263F8, &qword_27F226400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263C0);
  }

  return result;
}

unint64_t sub_24EA65318()
{
  result = qword_27F2263D0;
  if (!qword_27F2263D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263D8);
    sub_24E602068(&qword_27F2263E0, &qword_27F2263E8);
    sub_24EA653D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263D0);
  }

  return result;
}

unint64_t sub_24EA653D0()
{
  result = qword_27F2263F0;
  if (!qword_27F2263F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263F0);
  }

  return result;
}

uint64_t sub_24EA65424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EA654A0()
{
  result = qword_27F226408;
  if (!qword_27F226408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226410);
    sub_24EA65524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226408);
  }

  return result;
}

unint64_t sub_24EA65524()
{
  result = qword_27F226418;
  if (!qword_27F226418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263A8);
    sub_24EA651A8();
    sub_24E99DD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226418);
  }

  return result;
}

uint64_t sub_24EA655CC()
{

  return swift_deallocObject();
}

unint64_t sub_24EA6562C()
{
  result = qword_27F226450;
  if (!qword_27F226450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226458);
    sub_24E602068(&qword_27F226460, &qword_27F226468);
    sub_24EA656E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226450);
  }

  return result;
}

unint64_t sub_24EA656E4()
{
  result = qword_27F226470;
  if (!qword_27F226470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226478);
    sub_24E602068(&qword_27F226428, &qword_27F226420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226470);
  }

  return result;
}

const char *Feature.feature.getter()
{
  result = "age_ratings_assurance_2025A";
  switch(*v0)
  {
    case 1:
      result = "annotations_update_2025A";
      break;
    case 2:
      result = "aligned_region_artwork_2025A";
      break;
    case 3:
      result = "coming_soon_enhancements";
      break;
    case 4:
      result = "hide_arcade_header_on_arcade_tab";
      break;
    case 5:
      result = "measurement_with_labelplaceholder";
      break;
    case 6:
      result = "store_personalization_onboarding";
      break;
    case 7:
      result = "shelves_2_0_product";
      break;
    case 8:
      result = "shelf_header";
      break;
    case 9:
      result = "game_center_shelf_header";
      break;
    case 0xA:
      result = "search_tags";
      break;
    case 0xB:
      result = "product_capability_update_2024E";
      break;
    case 0xC:
      result = "pause_resume_offer_button_label_2025E";
      break;
    case 0xD:
      result = "voyager_bundles_2025A";
      break;
    case 0xE:
      result = "jetpackassetd";
      break;
    case 0xF:
      result = "glass_offer_button_2025A";
      break;
    default:
      return result;
  }

  return result;
}

GameStoreKit::Feature_optional __swiftcall Feature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Feature.rawValue.getter()
{
  result = 0x65685F666C656873;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 6:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      return result;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0x745F686372616573;
      break;
    case 0xB:
      result = 0xD00000000000001FLL;
      break;
    case 0xC:
      result = 0xD000000000000025;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0x616B63617074656ALL;
      break;
    case 0xF:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_24EA65BA8()
{
  v0 = Feature.rawValue.getter();
  v2 = v1;
  if (v0 == Feature.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24EA65C48()
{
  result = qword_27F226480[0];
  if (!qword_27F226480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F226480);
  }

  return result;
}

uint64_t sub_24EA65C9C()
{
  sub_24F92D068();
  Feature.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA65D04()
{
  Feature.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24EA65D68()
{
  sub_24F92D068();
  Feature.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EA65DD8@<X0>(unint64_t *a1@<X8>)
{
  result = Feature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Conditional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ClosureExpression();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_24F04E8C0();
  result = sub_24E5FA814(v7, &v9);
  *a3 = v9;
  return result;
}

uint64_t sub_24EA65EC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_24F04E8C0();
}

uint64_t sub_24EA65F58()
{
  sub_24F04E8C0();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA65FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconRowViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EA6610C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconRowViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for IconRowView()
{
  result = qword_27F226508;
  if (!qword_27F226508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA66260()
{
  type metadata accessor for IconRowViewModel();
  if (v0 <= 0x3F)
  {
    sub_24E66ED3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EA66300@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - v4;
  v6 = type metadata accessor for IconRowView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226518);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = sub_24F9249A8();
  result = type metadata accessor for IconRowViewModel();
  v14 = (*(v1 + *(result + 24)) << 51) + 0x4020000000000000;
  *v11 = v12;
  *(v11 + 1) = v14;
  v11[16] = 0;
  v15 = *(v1 + *(result + 32));
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v20[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226520);
    v20[2] = 0;
    v20[3] = v15;
    swift_getKeyPath();
    sub_24EA66978(v1, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_24EA66D10(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for IconRowView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430);
    sub_24E62A6CC();
    sub_24EA66BB8();
    sub_24F927228();
    v18 = *MEMORY[0x277CDF9A8];
    v19 = sub_24F923E98();
    (*(*(v19 - 8) + 104))(v5, v18, v19);
    sub_24EA66CC8(&qword_27F22DF90, MEMORY[0x277CDFA28]);
    result = sub_24F92AFF8();
    if (result)
    {
      sub_24E602068(&qword_27F226540, &qword_27F226518);
      sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      sub_24F9263F8();
      sub_24E601704(v5, &qword_27F21CCC8);
      return sub_24E601704(v11, &qword_27F226518);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA666EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SwiftUIArtworkView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  result = type metadata accessor for IconRowViewModel();
  v11 = *(a2 + *(result + 28));
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x253052270](v9);
    goto LABEL_5;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v9 + 32);

LABEL_5:
    type metadata accessor for IconRowView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    sub_24F9237D8();
    v13 = v23;
    v14 = v6[6];
    v15 = *MEMORY[0x277CE1010];
    v16 = sub_24F926E68();
    (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
    *v8 = v12;
    *(v8 + 1) = v13;
    *(v8 + 2) = v13;
    v8[24] = 0;
    v17 = &v8[v6[7]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v8[v6[8]] = 2;
    v8[v6[9]] = 0;
    v18 = *(v12 + 64);
    type metadata accessor for IconRowView();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    sub_24F9237D8();
    v19 = v23;
    v22[15] = 0;
    sub_24F926F28();

    LOBYTE(v15) = v23;
    v20 = v24;
    LOBYTE(v23) = 1;
    sub_24EA66D10(v8, a3, type metadata accessor for SwiftUIArtworkView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430);
    v21 = a3 + *(result + 36);
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    *(v21 + 48) = v15;
    *(v21 + 56) = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA66978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA669DC()
{
  v1 = (type metadata accessor for IconRowView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for IconRowViewModel();
  v4(v2 + *(v5 + 20), v3);

  v4(v2 + v1[7], v3);
  v4(v2 + v1[8], v3);

  return swift_deallocObject();
}

uint64_t sub_24EA66B38@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IconRowView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EA666EC(a1, v6, a2);
}

unint64_t sub_24EA66BB8()
{
  result = qword_27F226528;
  if (!qword_27F226528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226430);
    sub_24EA66CC8(&qword_27F226530, type metadata accessor for SwiftUIArtworkView);
    sub_24EA66C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226528);
  }

  return result;
}

unint64_t sub_24EA66C74()
{
  result = qword_27F226538;
  if (!qword_27F226538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226538);
  }

  return result;
}

uint64_t sub_24EA66CC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EA66D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA66D78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8);
  sub_24E602068(&qword_27F226540, &qword_27F226518);
  sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t PageRefreshGate.__allocating_init(policy:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_24EA69948(a1);

  return v2;
}

uint64_t PageRefreshGate.init(policy:)(uint64_t a1)
{
  v1 = sub_24EA69948(a1);

  return v1;
}

uint64_t sub_24EA66EE8()
{
  v1 = sub_24F927DE8();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v45 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = v34 - v4;
  v43 = sub_24F927D88();
  MEMORY[0x28223BE20](v43);
  v44 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - v14;
  v16 = *(v0 + 32);
  sub_24E60169C(v16 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v8, &qword_27F226578);
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  if ((*(*(refreshed - 8) + 48))(v8, 1, refreshed) == 1)
  {
    return sub_24E601704(v8, &qword_27F226578);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_24EA69CC8(v8);
  }

  v19 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226580) + 48)];
  v41 = *(v10 + 32);
  v42 = v10 + 32;
  v41(v15, v8, v9);
  if (v19 != 1)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v20 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh))
  {
    return (*(v10 + 8))(v15, v9);
  }

  v40 = v0;
  sub_24F91F5C8();
  if (v21 <= 0.0)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v38 = v20;
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v37 = sub_24F92AAE8();
  v36 = __swift_project_value_buffer(v37, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v34[1] = 8 * *(*(sub_24F928468() - 8) + 72);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24F979FB0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v51 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  v39 = v10;
  v34[0] = *(v10 + 16);
  (v34[0])(boxed_opaque_existential_1, v15, v9);
  sub_24F928438();
  sub_24E601704(aBlock, &qword_27F2129B0);
  sub_24F9283A8();
  v51 = MEMORY[0x277D839B0];
  LOBYTE(aBlock[0]) = 1;
  sub_24F928438();
  sub_24E601704(aBlock, &qword_27F2129B0);
  sub_24F9283A8();
  v23 = *(v16 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
  v51 = MEMORY[0x277D839F8];
  aBlock[0] = v23;
  sub_24F928438();
  sub_24E601704(aBlock, &qword_27F2129B0);
  sub_24F92A588();

  v24 = swift_allocObject();
  swift_weakInit();
  (v34[0])(v13, v15, v9);
  v25 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v41((v26 + v25), v13, v9);
  *(v26 + v25 + v11) = 1;
  v52 = sub_24EA69E24;
  v53 = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  v51 = &block_descriptor_41;
  _Block_copy(aBlock);
  v49 = MEMORY[0x277D84F90];
  sub_24EA69EC0(&qword_27F222930, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v27 = sub_24F927E08();

  sub_24E74EC40();
  v28 = sub_24F92BEF8();
  v29 = v45;
  sub_24F927DD8();
  v30 = v46;
  sub_24F927E58();
  v31 = *(v47 + 8);
  v32 = v29;
  v33 = v48;
  v31(v32, v48);
  sub_24F92BEA8();

  v31(v30, v33);
  (*(v39 + 8))(v15, v9);
  *(v40 + v38) = v27;
}

void sub_24EA67760()
{
  if (*(*(v0 + 32) + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) == 1)
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_27F20FEF0 != -1)
    {
      swift_once();
    }

    v2 = qword_27F39ACE8;
    v3 = [objc_opt_self() mainQueue];
    v4 = swift_allocObject();
    swift_weakInit();
    v10 = sub_24EA69F08;
    v11 = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EEFA694;
    ObjectType = &block_descriptor_15;
    v5 = _Block_copy(aBlock);

    v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
    _Block_release(v5);

    ObjectType = swift_getObjectType();
    aBlock[0] = v6;
    v7 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken;
    swift_beginAccess();
    sub_24E61DA68(aBlock, v0 + v7, &qword_27F2129B0);
    swift_endAccess();
  }
}

uint64_t PageRefreshGate.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh))
  {

    sub_24F927E18();
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken;
  swift_beginAccess();
  sub_24E60169C(v0 + v2, &v5, &qword_27F2129B0);
  if (v6)
  {
    sub_24E612B0C(&v5, &v7);
    v3 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_24E601704(&v5, &qword_27F2129B0);
  }

  sub_24E824448(*(v1 + 16));

  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate, &unk_27F22EC30);

  sub_24E601704(v1 + v2, &qword_27F2129B0);
  return v1;
}

uint64_t PageRefreshGate.__deallocating_deinit()
{
  PageRefreshGate.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA67B24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24EA69C9C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24EA67BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24EA69C64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_24E5FCA4C(v3);
  return sub_24E824448(v8);
}

uint64_t PageRefreshGate.performRefresh.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_24E5FCA4C(v1);
  return v1;
}

uint64_t PageRefreshGate.performRefresh.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_24E824448(v5);
}

void PageRefreshGate.viewWillAppear(on:)(uint64_t a1)
{
  *(v1 + 40) = 1;
  sub_24EA67DA8();

  sub_24EA68EC8(a1);
}

uint64_t sub_24EA67DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v48 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  if (*(v0 + 40) == 1 && *(v0 + 41) == 1)
  {
    v17 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
    swift_beginAccess();
    sub_24E60169C(v0 + v17, v6, &unk_27F22EC30);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30);
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();
    }

    v54 = v8;
    v21 = *(v8 + 32);
    v21(v16, v6, v7);
    v22 = *(v0 + 32);
    if (*(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) == 1 && *(v0 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) == 1)
    {
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v23 = sub_24F92AAE8();
      __swift_project_value_buffer(v23, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      swift_beginAccess();
      v24 = *(v0 + 16);
      v25 = v54;
      if (v24)
      {
        swift_endAccess();

        v24(v22);
        sub_24E824448(v24);
        return (*(v25 + 8))(v16, v7);
      }

      (*(v54 + 8))(v16, v7);
      return swift_endAccess();
    }

    v53 = v16;
    sub_24E60169C(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v3, &qword_27F226578);
    refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    if ((*(*(refreshed - 8) + 48))(v3, 1, refreshed) == 1)
    {
      return (*(v54 + 8))(v53, v7);
    }

    v52 = v0;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21(v13, v3, v7);
      sub_24F91F638();
      sub_24EA69EC0(&qword_27F2363D0, MEMORY[0x277CC9578]);
      v27 = sub_24F92AF78();
      v28 = v54;
      v50 = *(v54 + 8);
      v51 = v54 + 8;
      v50(v10, v7);
      if (v27)
      {
        if (qword_27F210578 != -1)
        {
          swift_once();
        }

        v49 = sub_24F92AAE8();
        v48 = __swift_project_value_buffer(v49, qword_27F39C3C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A070;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F9283A8();
        v56 = v7;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
        (*(v28 + 16))(boxed_opaque_existential_1, v13, v7);
        sub_24F928438();
        sub_24E601704(v55, &qword_27F2129B0);
        sub_24F9283A8();
        v30 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
        v56 = MEMORY[0x277D839F8];
        v55[0] = v30;
        sub_24F928438();
        sub_24E601704(v55, &qword_27F2129B0);
        sub_24F92A588();

        sub_24EA66EE8();
        goto LABEL_35;
      }

      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v38 = sub_24F92AAE8();
      v49 = __swift_project_value_buffer(v38, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v56 = v7;
      v39 = __swift_allocate_boxed_opaque_existential_1(v55);
      (*(v28 + 16))(v39, v13, v7);
      sub_24F928438();
      sub_24E601704(v55, &qword_27F2129B0);
      sub_24F9283A8();
      v40 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
      v56 = MEMORY[0x277D839F8];
      v55[0] = v40;
      sub_24F928438();
      sub_24E601704(v55, &qword_27F2129B0);
      sub_24F92A588();
      v41 = v52;

      swift_beginAccess();
      v42 = *(v41 + 16);
      if (v42)
      {
        swift_endAccess();

        v42(v22);
        sub_24E824448(v42);
LABEL_35:
        v43 = v50;
        v50(v13, v7);
        return v43(v53, v7);
      }

      v47 = v50;
      v50(v13, v7);
      v47(v53, v7);
    }

    else
    {
      v31 = *v3;
      sub_24F91F558();
      if (v31 >= v32)
      {
        if (qword_27F210578 != -1)
        {
          swift_once();
        }

        v44 = sub_24F92AAE8();
        v51 = __swift_project_value_buffer(v44, qword_27F39C3C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A070;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F9283A8();
        v45 = MEMORY[0x277D839F8];
        v56 = MEMORY[0x277D839F8];
        *v55 = v31;
        sub_24F928438();
        sub_24E601704(v55, &qword_27F2129B0);
        sub_24F9283A8();
        v46 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
        v56 = v45;
        v55[0] = v46;
        sub_24F928438();
        sub_24E601704(v55, &qword_27F2129B0);
        sub_24F92A588();

        return (*(v54 + 8))(v53, v7);
      }

      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v33 = sub_24F92AAE8();
      v51 = __swift_project_value_buffer(v33, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v34 = MEMORY[0x277D839F8];
      v56 = MEMORY[0x277D839F8];
      *v55 = v31;
      sub_24F928438();
      sub_24E601704(v55, &qword_27F2129B0);
      sub_24F9283A8();
      v35 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
      v56 = v34;
      v55[0] = v35;
      sub_24F928438();
      sub_24E601704(v55, &qword_27F2129B0);
      sub_24F92A588();
      v36 = v52;

      swift_beginAccess();
      v37 = *(v36 + 16);
      if (v37)
      {
        swift_endAccess();

        v37(v22);
        sub_24E824448(v37);
        return (*(v54 + 8))(v53, v7);
      }

      (*(v54 + 8))(v53, v7);
    }

    return swift_endAccess();
  }

  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v20 = sub_24F92AAE8();
  __swift_project_value_buffer(v20, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();
}

void sub_24EA68EC8(uint64_t a1)
{
  v3 = sub_24F92AAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  if ((v1[40] & 1) == 0)
  {
    if (v1[42] != 1)
    {
      return;
    }

    v1[42] = 0;
    goto LABEL_7;
  }

  v13 = v1[41];
  if (v13 == v1[42])
  {
    return;
  }

  v1[42] = v13;
  if (!v13)
  {
LABEL_7:
    v15 = sub_24F91F648();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v12, a1, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    goto LABEL_8;
  }

  v14 = sub_24F91F648();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
LABEL_8:
  v17 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
  swift_beginAccess();
  sub_24E61DA68(v12, &v1[v17], &unk_27F22EC30);
  swift_endAccess();
  if ((v1[42] & 1) == 0)
  {
    v18 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh;
    if (*&v1[OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh])
    {

      sub_24F927E18();
    }

    *&v1[v18] = 0;
  }

  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v3, qword_27F39C3C8);
  (*(v4 + 16))(v6, v19, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24E60169C(&v1[v17], v9, &unk_27F22EC30);
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v9, 1, v20) == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30);
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
    (*(v21 + 32))(boxed_opaque_existential_1, v9, v20);
  }

  sub_24F928438();
  sub_24E601704(&v23, &qword_27F2129B0);
  sub_24F92A588();

  (*(v4 + 8))(v6, v3);
}

void PageRefreshGate.appWillForeground(on:)(uint64_t a1)
{
  *(v1 + 41) = 1;
  sub_24EA67DA8();

  sub_24EA68EC8(a1);
}

uint64_t sub_24EA69410(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh))
    {
      v6 = result;

      if ((sub_24F927DF8() & 1) == 0)
      {
        if (qword_27F210578 != -1)
        {
          swift_once();
        }

        v12 = sub_24F92AAE8();
        __swift_project_value_buffer(v12, qword_27F39C3C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F979FB0;

        sub_24F928448();

        sub_24F9283A8();
        sub_24F9283A8();
        v7 = sub_24F91F648();
        v14 = v7;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
        (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a2, v7);
        sub_24F928438();
        sub_24E601704(v13, &qword_27F2129B0);
        sub_24F9283A8();
        v14 = MEMORY[0x277D839B0];
        LOBYTE(v13[0]) = a3 & 1;
        sub_24F928438();
        sub_24E601704(v13, &qword_27F2129B0);
        sub_24F9283A8();
        v9 = *(*(v6 + 32) + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
        v14 = MEMORY[0x277D839F8];
        v13[0] = v9;
        sub_24F928438();
        sub_24E601704(v13, &qword_27F2129B0);
        sub_24F92A588();

        swift_beginAccess();
        v10 = *(v6 + 16);
        if (v10)
        {
          sub_24E5FCA4C(*(v6 + 16));

          v10(v11);
          sub_24E824448(v10);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EA697A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;

    sub_24F928448();

    sub_24F9283A8();
    sub_24F92A588();

    *(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) = 1;
  }

  return result;
}

uint64_t sub_24EA69948(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v6 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
  v7 = sub_24F91F648();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) = 0;
  v9 = (v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken);
  *v9 = 0u;
  v9[1] = 0u;
  *(v1 + 32) = a1;
  *(v1 + 40) = 257;
  *(v1 + 42) = 1;
  v8(v5, 1, 1, v7);
  v10 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
  swift_beginAccess();

  sub_24E61DA68(v5, v1 + v10, &unk_27F22EC30);
  swift_endAccess();
  sub_24EA66EE8();
  sub_24EA67760();
  return v1;
}

uint64_t type metadata accessor for PageRefreshGate()
{
  result = qword_27F226568;
  if (!qword_27F226568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA69B34()
{
  sub_24E728940();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EA69C2C()
{

  return swift_deallocObject();
}

uint64_t sub_24EA69C64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24EA69CC8(uint64_t a1)
{
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

uint64_t sub_24EA69D24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EA69D5C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EA69E24()
{
  v1 = *(sub_24F91F648() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_24EA69410(v2, v3, v4);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EA69EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Gate.Condition.__allocating_init(initialValue:)(char a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t Gate.Condition.init(initialValue:)(char a1)
{
  swift_weakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_24EA69FD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_24EA6A038()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24EA6A084(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_24EA6A128(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t sub_24EA6A19C(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t (*sub_24EA6A20C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EA6A260;
}

uint64_t sub_24EA6A260(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_24EA6BFA0();
    }
  }

  return result;
}

uint64_t Gate.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Gate.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Gate.__allocating_init(queue:passingDelay:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Gate.init(queue:passingDelay:)(a1, a2);
  return v4;
}

uint64_t Gate.init(queue:passingDelay:)(uint64_t a1, double a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226588);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v7 = sub_24F929638();
  v8 = MEMORY[0x277D21FB0];
  *(v2 + 104) = v7;
  *(v2 + 112) = v8;
  __swift_allocate_boxed_opaque_existential_1((v2 + 80));
  sub_24F929628();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Gate.add(condition:)()
{
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x253050F00](v1);
  if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  return swift_endAccess();
}

Swift::Void __swiftcall Gate.invalidate()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  os_unfair_lock_lock(v2 + 4);
  sub_24EA6C30C();
  os_unfair_lock_unlock(v2 + 4);
  swift_beginAccess();
  v3 = *(v0 + 56);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v1[7] = MEMORY[0x277D84F90];

    swift_beginAccess();
    v6 = v1[15];
    v1[15] = 0;
    v1[16] = 0;
    sub_24E824448(v6);
    return;
  }

  v4 = sub_24F92C738();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v5, v3);
      }

      else
      {
      }

      ++v5;
      swift_beginAccess();
      swift_weakAssign();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_24EA6A730(uint64_t a1)
{
  if (*(a1 + 72))
  {

    sub_24F927E18();
  }

  *(a1 + 72) = 0;
}

uint64_t Gate.printUnsatisfiedConditions.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

BOOL Gate.isPassing.getter()
{
  v2 = v0;
  i = *v0;
  v4 = sub_24F92AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 64) == 1)
  {
    v25 = v7;
    v26 = v5;
    swift_beginAccess();
    v1 = *(v2 + 56);
    v27 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_39;
    }

    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v24 = i;

    if (v8)
    {
      v23 = v4;
      v9 = 0;
      v4 = v1 & 0xC000000000000001;
      i = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v10 = MEMORY[0x253052270](v9, v1);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v8 = sub_24F92C738();
            goto LABEL_4;
          }

          v10 = *(v1 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_15;
          }
        }

        swift_beginAccess();
        if (*(v10 + 40))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v9;
        if (v11 == v8)
        {
LABEL_28:
          v14 = v27;
          v4 = v23;
          goto LABEL_31;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_31:

    v27 = v14;
    v28 = sub_24EA6AE08;
    v29 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226590);
    sub_24EA6C334();
    v23 = sub_24F92AF68();
    v17 = v16;

    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_27F39C3C8);
    v19 = v25;
    v20 = v26;
    (*(v26 + 16))(v25, v18, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v30 = v24;
    v27 = v2;

    sub_24F928438();
    sub_24E857CC8(&v27);
    sub_24F9283A8();
    v30 = MEMORY[0x277D837D0];
    v27 = v23;
    v28 = v17;

    sub_24F928438();
    sub_24E857CC8(&v27);
    sub_24F92B228();

    sub_24F9283A8();
    sub_24F92A598();

    (*(v20 + 8))(v19, v4);
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v21 = sub_24F92C738();
    }

    else
    {
      v21 = *(v14 + 16);
    }

    return v21 == 0;
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v12 = *(v2 + 56);
    v4 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v13 = sub_24F92C738();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x253052270](i, v12);
        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v2 = *(v12 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v1 = *(v2 + 40);

      if ((v1 & 1) == 0)
      {

        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_24EA6AE08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
  }

  else
  {
    type metadata accessor for Gate.Condition();

    v4 = sub_24F92B188();
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_24EA6AE94@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 72);
  if (v3)
  {

    sub_24F927E18();
  }

  *a2 = v3 == 0;
  return result;
}

void sub_24EA6AEEC(uint64_t a1)
{
  if (Gate.isPassing.getter())
  {
    swift_beginAccess();
    v2 = *(a1 + 120);
    if (v2)
    {
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      swift_beginAccess();
      sub_24E615E00(a1 + 80, v3);
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      sub_24F928C78();
      sub_24E824448(v2);
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    Gate.invalidate()();
  }
}

uint64_t Gate.observerScheduler.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);
  sub_24E612C80(a1, v1 + 80);
  return swift_endAccess();
}

uint64_t sub_24EA6B0A8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24EA6B13C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E9A0188;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 120);
  *(v7 + 120) = v6;
  *(v7 + 128) = v5;
  sub_24E5FCA4C(v3);
  return sub_24E824448(v8);
}

uint64_t Gate.observer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  sub_24E5FCA4C(v1);
  return v1;
}

uint64_t Gate.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_24E824448(v5);
}

uint64_t Gate.description.getter()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0xE900000000000073;
    v1 = 0x756F6D796E6F6E61;
  }

  sub_24F92AFE8();
  sub_24EA6C3E4();
  v3 = sub_24F92B398();
  v5 = v4;
  MEMORY[0x253050C20](v1, v2);

  MEMORY[0x253050C20](58, 0xE100000000000000);
  MEMORY[0x253050C20](v3, v5);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0x2865746147;
}

uint64_t Gate.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_24E824448(*(v0 + 120));
  return v0;
}

uint64_t Gate.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_24E824448(*(v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t Gate.NotificationCondition.__allocating_init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  swift_weakInit();
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = a5;
  sub_24E94E17C(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_24F92CDE8();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_lockedAppBundleIdentifiers;
  [a4 addObserver:v10 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_24E94E17C(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_24F92CDE8();
    v29 = v26;
    v20 = &selRef_lockedAppBundleIdentifiers;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[374]];

  swift_unknownObjectRelease();
  sub_24E857CC8(a3);
  return v10;
}

uint64_t Gate.NotificationCondition.init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  swift_weakInit();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = a5;
  sub_24E94E17C(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_24F92CDE8();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_lockedAppBundleIdentifiers;
  [a4 addObserver:v5 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_24E94E17C(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_24F92CDE8();
    v29 = v26;
    v20 = &selRef_lockedAppBundleIdentifiers;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[374]];

  swift_unknownObjectRelease();
  sub_24E857CC8(a3);
  return v5;
}

uint64_t sub_24EA6BAEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F91EB08();
  swift_beginAccess();
  *(a1 + 40) = a4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24EA6BFA0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Gate.CountingCondition.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t Gate.CountingCondition.init()()
{
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t sub_24EA6BD10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  swift_beginAccess();
  *(v3 + 40) = v2 == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

Swift::Void __swiftcall Gate.CountingCondition.increment()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v3;
    v4 = v3 == 0;
    swift_beginAccess();
    *(v0 + 40) = v4;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }
}

Swift::Bool __swiftcall Gate.CountingCondition.decrement()()
{
  v1 = v0;
  v2 = 1;
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(v1 + 48) = v5;
    v6 = v5 == 0;
    swift_beginAccess();
    *(v1 + 40) = v6;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    return *(v1 + 48) == 0;
  }

  return v2;
}

uint64_t sub_24EA6BF24()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_24EA6BF54()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA6BFA0()
{
  v16 = sub_24F927DE8();
  v15 = *(v16 - 8);
  v1 = MEMORY[0x28223BE20](v16);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - v4;
  v6 = sub_24F927D88();
  MEMORY[0x28223BE20](v6);
  v7 = *(v0 + 48);
  v22 = sub_24EA6C834;
  v23 = v0;
  v8 = v7;
  v14[0] = v7;
  os_unfair_lock_lock(v7 + 4);
  sub_24EA6C850(aBlock);
  v14[1] = 0;
  os_unfair_lock_unlock(v8 + 4);
  aBlock[4] = sub_24EA6C894;
  v26 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_42;
  _Block_copy(aBlock);
  v24 = MEMORY[0x277D84F90];
  sub_24E858250();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v9 = sub_24F927E08();

  sub_24F927DD8();
  sub_24F927E58();
  v10 = *(v15 + 8);
  v11 = v16;
  v10(v3, v16);
  sub_24F92BEA8();
  v10(v5, v11);
  v20 = v0;
  v21 = v9;
  v17 = sub_24EA6C8B4;
  v18 = &v19;
  v12 = v14[0];
  os_unfair_lock_lock((v14[0] + 16));
  sub_24EA6C900();
  os_unfair_lock_unlock(v12 + 4);
}

unint64_t sub_24EA6C334()
{
  result = qword_27F226598;
  if (!qword_27F226598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226590);
    sub_24E602068(&qword_27F2265A0, &qword_27F2265A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226598);
  }

  return result;
}

unint64_t sub_24EA6C3E4()
{
  result = qword_27F2265B0;
  if (!qword_27F2265B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265B0);
  }

  return result;
}

uint64_t sub_24EA6C438@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_24EA6C4D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_24EA6C520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_24EA6C574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_24EA6C7FC()
{

  return swift_deallocObject();
}

void *sub_24EA6C850@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EA6C8B4()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_24EA6C94C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  *(v3 + 80) = v6;
  *(v3 + 88) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v3 + 96) = v7;
  *(v3 + 104) = v9;
  v10 = a2[2];
  v11 = a2[3];
  *(v3 + 112) = v10;
  *(v3 + 120) = v11;
  v12 = a2[4];
  v13 = a2[5];
  *(v3 + 128) = v13;
  v14 = *(a2 + 48);
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  *(v3 + 32) = v10;
  *(v3 + 40) = v11;
  *(v3 + 48) = v12;
  *(v3 + 56) = v13;
  *(v3 + 64) = v14;
  v15 = swift_task_alloc();
  *(v3 + 136) = v15;
  *v15 = v3;
  v15[1] = sub_24EA6CA8C;

  return sub_24EA6CE8C(v7, v3 + 16, a3);
}

uint64_t sub_24EA6CA8C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EA6CC54;
  }

  else
  {
    v2 = sub_24EA6CBA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6CBA0()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  sub_24EA6FE0C(v0[12], v3, type metadata accessor for ChallengeDefinitionDetail);
  (*(v1 + 56))(v3, 0, 1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EA6CC54()
{
  v17 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);

  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v8 = v0[14];
    v7 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24E7620D4(v8, v7, &v16);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionDataIntentImplementation: Failed to fetch definition %s, %@", v9, 0x16u);
    sub_24E601704(v10, &qword_27F227B20);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EA6CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265B8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  type metadata accessor for Leaderboard(0);
  *(v3 + 240) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0);
  *(v3 + 248) = v5;
  *(v3 + 256) = *(v5 - 8);
  *(v3 + 264) = swift_task_alloc();
  v6 = sub_24F920BA8();
  *(v3 + 272) = v6;
  *(v3 + 280) = *(v6 - 8);
  *(v3 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v7 = sub_24F920BC8();
  *(v3 + 312) = v7;
  *(v3 + 320) = *(v7 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8) - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  *(v3 + 376) = v8;
  *(v3 + 384) = *(v8 - 8);
  *(v3 + 392) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  *(v3 + 400) = v9;
  *(v3 + 408) = *(v9 - 8);
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = *a2;
  *(v3 + 440) = *(a2 + 16);
  *(v3 + 448) = *(a2 + 24);
  *(v3 + 464) = *(a2 + 40);
  *(v3 + 664) = *(a2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v11 = swift_task_alloc();
  *(v3 + 472) = v11;
  *v11 = v3;
  v11[1] = sub_24EA6D2F4;

  return MEMORY[0x28217F228](v3 + 104, v10, v10);
}

uint64_t sub_24EA6D2F4()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_24EA6D74C;
  }

  else
  {
    v2 = sub_24EA6D408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6D408()
{
  v1 = *(v0 + 664);
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  sub_24F920F98();
  if (v1 == 1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = *(v0 + 88);
    v21 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v5);

    sub_24F920EF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213D18);
    v6 = sub_24F920DD8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v0 + 488) = v9;
    *(v9 + 16) = xmmword_24F93DE60;
    (*(v3 + 16))(v9 + v8, v2, v4);
    (*(v7 + 104))(v9 + v8, *MEMORY[0x277D0D408], v6);
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    *v10 = v0;
    v10[1] = sub_24EA6D884;
    v11 = *(v0 + 392);

    return MEMORY[0x282165148](v11, v9, v5, v21);
  }

  else
  {
    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    v14 = *(v0 + 400);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213978);
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v0 + 512) = v18;
    *(v18 + 16) = xmmword_24F93DE60;
    (*(v13 + 16))(v18 + v17, v12, v14);
    v19 = swift_task_alloc();
    *(v0 + 520) = v19;
    *v19 = v0;
    v19[1] = sub_24EA6DB38;

    return MEMORY[0x282165150](v18, v15, v16);
  }
}

uint64_t sub_24EA6D74C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EA6D884()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);

  if (v0)
  {
    v3 = sub_24EA6EFC0;
  }

  else
  {
    v3 = sub_24EA6DA08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24EA6DA08()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213978);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[64] = v5;
  *(v5 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_24EA6DB38;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EA6DB38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_24EA6F118;
  }

  else
  {
    v4 = sub_24EA6DC78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EA6DC78()
{
  v1 = *(v0 + 528);
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(*(v0 + 344) + 80);
  sub_24E60169C(v1 + ((v7 + 32) & ~v7), v2, &qword_27F2265C8);

  sub_24EA6FCEC(v2, v3);
  sub_24E60169C(v3, v4, &qword_27F2265C8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = *(v0 + 352);
    sub_24E601704(*(v0 + 368), &qword_27F2265C8);
    sub_24E601704(v8, &qword_27F2265C8);
LABEL_5:
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E778);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "ChallengeDefinitionDataIntentImplementation definition not found", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v14 = *(v0 + 408);
    v13 = *(v0 + 416);
    v15 = *(v0 + 400);

    sub_24EA6FD5C();
    swift_allocError();
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_10;
  }

  v18 = *(v0 + 304);
  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v21 = *(v0 + 272);
  (*(*(v0 + 320) + 32))(*(v0 + 336), *(v0 + 352), *(v0 + 312));
  v22 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  *(v0 + 544) = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  *(v0 + 552) = v24;
  *(v0 + 560) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v24(v18, 1, 1, v22);
  sub_24F920B88();
  v25 = (*(v20 + 88))(v19, v21);
  if (v25 == *MEMORY[0x277D0D1B0])
  {
    v26 = *(v0 + 536);
    v27 = *(v0 + 288);
    v28 = *(v0 + 264);
    v29 = *(v0 + 248);
    v30 = *(v0 + 256);
    (*(*(v0 + 280) + 96))(v27, *(v0 + 272));
    (*(v30 + 32))(v28, v27, v29);
    v31 = sub_24F920F68();
    *(v0 + 568) = v32;
    if (v26)
    {
      v34 = *(v0 + 408);
      v33 = *(v0 + 416);
      v35 = *(v0 + 400);
      v36 = *(v0 + 368);
      v37 = *(v0 + 336);
      v38 = *(v0 + 312);
      v39 = *(v0 + 320);
      v40 = *(v0 + 304);
      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
      sub_24E601704(v40, &qword_27F212A00);
      (*(v39 + 8))(v37, v38);
      sub_24E601704(v36, &qword_27F2265C8);
      (*(v34 + 8))(v33, v35);
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v0 + 64);

      v16 = *(v0 + 8);

      return v16();
    }

    v43 = *(v0 + 456);
    v44 = *(v0 + 464);
    v46 = *(v0 + 424);
    v45 = *(v0 + 432);
    *(v0 + 16) = v31;
    *(v0 + 24) = v32;
    *(v0 + 32) = v46;
    *(v0 + 40) = v45;
    *(v0 + 48) = v43;
    *(v0 + 56) = v44;

    v47 = swift_task_alloc();
    *(v0 + 576) = v47;
    *v47 = v0;
    v47[1] = sub_24EA6E2A0;
    v48 = *(v0 + 240);
    v49 = *(v0 + 200);

    return sub_24E648974(v48, (v0 + 16), v49);
  }

  else
  {
    if (v25 != *MEMORY[0x277D0D1B8])
    {
      (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    }

    v41 = type metadata accessor for ASKBagContract();
    v42 = swift_task_alloc();
    *(v0 + 592) = v42;
    *v42 = v0;
    v42[1] = sub_24EA6E540;

    return MEMORY[0x28217F228](v0 + 184, v41, v41);
  }
}

uint64_t sub_24EA6E2A0()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_24EA6F270;
  }

  else
  {
    v2 = sub_24EA6E40C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6E40C()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[38];
  v4 = v0[30];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_24E601704(v3, &qword_27F212A00);
  sub_24EA6FE0C(v4, v3, type metadata accessor for Leaderboard);
  v1(v3, 0, 1, v2);
  v5 = type metadata accessor for ASKBagContract();
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_24EA6E540;

  return MEMORY[0x28217F228](v0 + 23, v5, v5);
}

uint64_t sub_24EA6E540()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_24EA6F440;
  }

  else
  {
    v2 = sub_24EA6E654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6E654()
{
  v0[76] = v0[23];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_24EA6E718;

  return MEMORY[0x28217F228](v0 + 18, v1, v1);
}

uint64_t sub_24EA6E718()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_24EA6F5F4;
  }

  else
  {
    v2 = sub_24EA6E82C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6E82C()
{
  v15 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v1);
  v14 = 34;
  *(v0 + 665) = (*(v2 + 8))(&v14, v1, v2) & 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  v3 = ASKBagContract.challengeAttemptOptions.getter();
  v4 = sub_24EF5C370(v3);
  v6 = v5;
  *(v0 + 632) = v4;
  *(v0 + 640) = v5;
  v7 = sub_24F920A98();
  *(v0 + 666) = v7 & 1;
  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_24F920BB8();
  *(v0 + 648) = v9;

  v10 = swift_task_alloc();
  *(v0 + 656) = v10;
  *v10 = v0;
  v10[1] = sub_24EA6E9A4;
  v11 = *(v0 + 232);
  v12 = *(v0 + 200);

  return sub_24E648D3C(v11, v9, v8, v12);
}

uint64_t sub_24EA6E9A4()
{

  if (v0)
  {

    v1 = sub_24EA6F7B4;
  }

  else
  {

    v1 = sub_24EA6EB38;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24EA6EB38()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v40 = *(v0 + 304);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6, 0, 1, v8);
  (*(v4 + 16))(v2, v1, v3);
  sub_24E60169C(v40, v5, &qword_27F212A00);
  sub_24E60169C(v6, v7, &qword_27F2265B8);
  v10 = *(v9 + 48);
  v11 = v10(v7, 1, v8);
  v12 = *(v0 + 224);
  if (v11 == 1)
  {
    sub_24E601704(*(v0 + 224), &qword_27F2265B8);
    v41 = 0;
  }

  else
  {
    v41 = *v12;

    sub_24EA6FDB0(v12);
  }

  v13 = *(v0 + 216);
  sub_24E60169C(*(v0 + 232), v13, &qword_27F2265B8);
  v14 = v10(v13, 1, v8);
  v15 = *(v0 + 216);
  if (v14 == 1)
  {
    sub_24E601704(*(v0 + 216), &qword_27F2265B8);
    v16 = sub_24F920A88();
    v17 = *(v16 - 8);
    v18 = 1;
  }

  else
  {
    v19 = *(v0 + 208);
    v20 = *(v8 + 20);
    v21 = sub_24F920A88();
    v17 = *(v21 - 8);
    (*(v17 + 16))(v19, v15 + v20, v21);
    sub_24EA6FDB0(v15);
    v16 = v21;
    v18 = 0;
  }

  v33 = *(v0 + 665);
  v22 = *(v0 + 408);
  v39 = *(v0 + 416);
  v38 = *(v0 + 400);
  v37 = *(v0 + 368);
  v23 = *(v0 + 328);
  v36 = *(v0 + 336);
  v24 = *(v0 + 320);
  v35 = *(v0 + 312);
  v25 = *(v0 + 296);
  v34 = *(v0 + 304);
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  if (*(v0 + 666))
  {
    v29 = (v0 + 632);
  }

  else
  {
    v29 = (v0 + 640);
  }

  v30 = *v29;
  (*(v17 + 56))(v27, v18, 1, v16);
  sub_24EF52FB0(v23, v25, v33, v41, v30, v27, v28);

  sub_24E601704(v26, &qword_27F2265B8);
  sub_24E601704(v34, &qword_27F212A00);
  (*(v24 + 8))(v36, v35);
  sub_24E601704(v37, &qword_27F2265C8);
  (*(v22 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24EA6EFC0()
{
  (*(v0[51] + 8))(v0[52], v0[50]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 8));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EA6F118()
{
  (*(v0[51] + 8))(v0[52], v0[50]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 8));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EA6F270()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_24E601704(v8, &qword_27F212A00);
  (*(v7 + 8))(v5, v6);
  sub_24E601704(v4, &qword_27F2265C8);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 8));

  v9 = v0[1];

  return v9();
}

uint64_t sub_24EA6F440()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  sub_24E601704(v0[38], &qword_27F212A00);
  (*(v7 + 8))(v5, v6);
  sub_24E601704(v4, &qword_27F2265C8);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 8));

  v8 = v0[1];

  return v8();
}

uint64_t sub_24EA6F5F4()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];

  sub_24E601704(v8, &qword_27F212A00);
  (*(v7 + 8))(v5, v6);
  sub_24E601704(v4, &qword_27F2265C8);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 8));

  v9 = v0[1];

  return v9();
}

uint64_t sub_24EA6F7B4()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v40 = *(v0 + 304);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v3);
  sub_24E60169C(v40, v5, &qword_27F212A00);
  sub_24E60169C(v6, v7, &qword_27F2265B8);
  v10 = *(v9 + 48);
  v11 = v10(v7, 1, v8);
  v12 = *(v0 + 224);
  if (v11 == 1)
  {
    sub_24E601704(*(v0 + 224), &qword_27F2265B8);
    v41 = 0;
  }

  else
  {
    v41 = *v12;

    sub_24EA6FDB0(v12);
  }

  v13 = *(v0 + 216);
  sub_24E60169C(*(v0 + 232), v13, &qword_27F2265B8);
  v14 = v10(v13, 1, v8);
  v15 = *(v0 + 216);
  if (v14 == 1)
  {
    sub_24E601704(*(v0 + 216), &qword_27F2265B8);
    v16 = sub_24F920A88();
    v17 = *(v16 - 8);
    v18 = 1;
  }

  else
  {
    v19 = *(v0 + 208);
    v20 = *(v8 + 20);
    v21 = sub_24F920A88();
    v17 = *(v21 - 8);
    (*(v17 + 16))(v19, v15 + v20, v21);
    sub_24EA6FDB0(v15);
    v16 = v21;
    v18 = 0;
  }

  v33 = *(v0 + 665);
  v22 = *(v0 + 408);
  v39 = *(v0 + 416);
  v38 = *(v0 + 400);
  v37 = *(v0 + 368);
  v23 = *(v0 + 328);
  v36 = *(v0 + 336);
  v24 = *(v0 + 320);
  v35 = *(v0 + 312);
  v25 = *(v0 + 296);
  v34 = *(v0 + 304);
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  if (*(v0 + 666))
  {
    v29 = (v0 + 632);
  }

  else
  {
    v29 = (v0 + 640);
  }

  v30 = *v29;
  (*(v17 + 56))(v27, v18, 1, v16);
  sub_24EF52FB0(v23, v25, v33, v41, v30, v27, v28);

  sub_24E601704(v26, &qword_27F2265B8);
  sub_24E601704(v34, &qword_27F212A00);
  (*(v24 + 8))(v36, v35);
  sub_24E601704(v37, &qword_27F2265C8);
  (*(v22 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24EA6FC3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24EA6C94C(a1, a2, a3);
}

uint64_t sub_24EA6FCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EA6FD5C()
{
  result = qword_27F2265D0;
  if (!qword_27F2265D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265D0);
  }

  return result;
}

uint64_t sub_24EA6FDB0(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA6FE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EA6FE88()
{
  result = qword_27F2265D8;
  if (!qword_27F2265D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265D8);
  }

  return result;
}

__n128 MarketingItemRequestInfo.__allocating_init(serviceType:placement:seed:offerHints:clientOptions:metricsOverlay:purchaseSuccessAction:purchaseFailureAction:carrierLinkSuccessAction:carrierLinkFailureAction:onDismissalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __n128 a11, uint64_t a12)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = *a5;
  *(v19 + 64) = a6;
  *(v19 + 72) = a7;
  *(v19 + 80) = a8;
  result = a11;
  *(v19 + 88) = a10;
  *(v19 + 104) = a11;
  *(v19 + 120) = a12;
  *(v19 + 128) = a9;
  return result;
}

uint64_t MarketingItemRequestInfo.init(serviceType:placement:seed:offerHints:clientOptions:metricsOverlay:purchaseSuccessAction:purchaseFailureAction:carrierLinkSuccessAction:carrierLinkFailureAction:onDismissalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = *a5;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  *(v12 + 80) = a8;
  *(v12 + 88) = a10;
  *(v12 + 104) = a11;
  *(v12 + 120) = a12;
  *(v12 + 128) = a9;
  return v12;
}

uint64_t MarketingItemRequestInfo.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MarketingItemRequestInfo.init(deserializing:using:)(a1, a2);
  return v4;
}

void *MarketingItemRequestInfo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v88 = a2;
  v91 = v4;
  v6 = *v4;
  v85 = v3;
  v86 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v79 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v27 = a1;
  sub_24F928398();
  v28 = sub_24F928348();
  v30 = v29;
  v33 = *(v12 + 8);
  v32 = v12 + 8;
  v31 = v33;
  v33(v26, v11);
  v90 = v33;
  if (!v30)
  {
    v55 = 0xE900000000000074;
    v56 = 0x6E656D6563616C70;
    v37 = v11;
LABEL_10:
    v57 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v58 = v56;
    v58[1] = v55;
    v58[2] = v86;
    (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D22530], v57);
    swift_willThrow();
    v59 = sub_24F9285B8();
    (*(*(v59 - 8) + 8))(v88, v59);
    v90(v27, v37);
    type metadata accessor for MarketingItemRequestInfo();
    v60 = v91;
    swift_deallocPartialClassInstance();
    return v60;
  }

  v80 = v28;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v31(v24, v11);
  v37 = v11;
  if (!v36)
  {
    v55 = 0xEB00000000657079;
    v56 = 0x5465636976726573;

    goto LABEL_10;
  }

  v38 = v91;
  v91[2] = v34;
  v38[3] = v36;
  v39 = v38;
  v38[4] = v80;
  v38[5] = v30;
  v40 = v27;
  sub_24F928398();
  v41 = sub_24F928348();
  v43 = v42;
  v31(v21, v37);
  if (v43)
  {
    v44 = v41;
  }

  else
  {
    v44 = 0;
  }

  v39[6] = v44;
  v39[7] = v43;
  v45 = v87;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v31(v45, v37);
  v39[8] = v46;
  v39[9] = v48;
  v49 = v81;
  sub_24F928398();
  v50 = v82;
  sub_24F9281F8();
  v86 = v37;
  v89 = v32;
  v31(v49, v37);
  v51 = sub_24F928E68();
  v52 = *(v51 - 8);
  v81 = *(v52 + 48);
  v53 = v31;
  if ((v81)(v50, 1, v51) == 1)
  {
    sub_24E9182E0(v50);
    v54 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870);
    v54 = sub_24F928E48();
    (*(v52 + 8))(v50, v51);
  }

  v39[10] = v54;
  v61 = v83;
  v62 = v84;
  sub_24F928398();
  sub_24F9281F8();
  v53(v61, v86);
  v63 = v53;
  if ((v81)(v62, 1, v51) == 1)
  {
    sub_24E9182E0(v62);
    v64 = 0;
  }

  else
  {
    v64 = sub_24F928E48();
    (*(v52 + 8))(v62, v51);
  }

  v39[16] = v64;
  v84 = type metadata accessor for Action();
  v65 = v87;
  sub_24F928398();
  v66 = v88;
  v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v88);
  v68 = v86;
  v63(v65, v86);
  v39[11] = v67;
  v79 = v40;
  sub_24F928398();
  v69 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v66);
  v63(v65, v68);
  v39[12] = v69;
  sub_24F928398();
  v70 = v66;
  v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v66);
  v72 = v90;
  v90(v65, v68);
  v91[13] = v71;
  v73 = v79;
  sub_24F928398();
  v74 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v70);
  v72(v65, v68);
  v91[14] = v74;
  sub_24F928398();
  v60 = v91;
  v75 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v70);
  v76 = sub_24F9285B8();
  (*(*(v76 - 8) + 8))(v70, v76);
  v77 = v90;
  v90(v73, v68);
  v77(v65, v68);
  v60[15] = v75;
  return v60;
}

uint64_t MarketingItemRequestInfo.serviceType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MarketingItemRequestInfo.placement.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MarketingItemRequestInfo.seed.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t MarketingItemRequestInfo.offerHints.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MarketingItemRequestInfo.deinit()
{

  return v0;
}

uint64_t MarketingItemRequestInfo.__deallocating_deinit()
{
  MarketingItemRequestInfo.deinit();

  return swift_deallocClassInstance();
}

void *sub_24EA70AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MarketingItemRequestInfo();
  v7 = swift_allocObject();
  result = MarketingItemRequestInfo.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t TodayPage.__allocating_init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v82 = a6;
  v83 = a7;
  v85 = a8;
  v86 = a17;
  v89 = a16;
  v87 = a18;
  v88 = a15;
  v84 = a14;
  v80 = a5;
  v81 = a12;
  v78 = a4;
  v79 = a11;
  v76 = a3;
  v77 = a10;
  v75 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  v28 = sub_24F928818();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x277D84FA0];
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering) = a1;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping) = a2;
  v34 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v35 = v78;
  *v34 = v76;
  v34[1] = v35;
  v36 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v38 = v82;
  v37 = v83;
  *v36 = v80;
  v36[1] = v38;
  v39 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  *v39 = v37;
  v39[1] = v85;
  v40 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v41 = v77;
  *v40 = v75;
  v40[1] = v41;
  v42 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v43 = v81;
  *v42 = v79;
  v42[1] = v43;
  v85 = a13;
  sub_24E60169C(a13, v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds) = v84;

  v45 = sub_24EA71A2C(v44);
  v46 = v28;
  v47 = v27;

  swift_beginAccess();
  *(v32 + v33) = v45;
  v48 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);
  *v48 = 0;
  v48[1] = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance) = MEMORY[0x277D84F90];
  v49 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);
  *v49 = 0;
  v49[1] = 0;
  v83 = v29;
  v50 = *(v29 + 16);
  v50(v31, v89, v46);
  v51 = v87;
  sub_24E60169C(v87, v27, &qword_27F2218B0);
  *(v32 + 16) = v88;
  v84 = v46;
  v50((v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v31, v46);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v86;
  sub_24E60169C(v27, v24, &qword_27F2218B0);
  v52 = sub_24F9285B8();
  v53 = *(v52 - 8);
  v54 = v24;
  v55 = v24;
  v56 = *(v53 + 48);
  if (v56(v55, 1, v52) == 1)
  {
    sub_24E601704(v51, &qword_27F2218B0);
    v57 = v84;
    v58 = *(v83 + 8);
    v58(v89, v84);
    sub_24E601704(v85, &qword_27F2129B0);
    sub_24E601704(v47, &qword_27F2218B0);
    v58(v31, v57);
    v59 = v54;
  }

  else
  {
    v82 = v54;
    v80 = v31;
    v60 = qword_27F2105F0;

    if (v60 != -1)
    {
      swift_once();
    }

    v81 = v47;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v61, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v62 = v90;
    if (v90)
    {
    }

    v63 = *(v53 + 8);
    v63(v82, v52);
    v64 = v74;
    if (!v62)
    {

      sub_24E601704(v87, &qword_27F2218B0);
      v68 = v84;
      v69 = *(v83 + 8);
      v69(v89, v84);
      sub_24E601704(v85, &qword_27F2129B0);
      sub_24E601704(v81, &qword_27F2218B0);
      v69(v80, v68);
      return v32;
    }

    v65 = v81;
    sub_24E60169C(v81, v74, &qword_27F2218B0);
    if (v56(v64, 1, v52) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v87, &qword_27F2218B0);
      v70 = v84;
      v71 = *(v83 + 8);
      v71(v89, v84);
      sub_24E601704(v85, &qword_27F2129B0);
      sub_24E601704(v65, &qword_27F2218B0);
      v71(v80, v70);
      v63(v64, v52);
      return v32;
    }

    sub_24E601704(v87, &qword_27F2218B0);
    v66 = v84;
    v67 = *(v83 + 8);
    v67(v89, v84);
    sub_24E601704(v85, &qword_27F2129B0);
    sub_24E601704(v65, &qword_27F2218B0);
    v67(v80, v66);
    v59 = v64;
  }

  sub_24E601704(v59, &qword_27F2218B0);
  return v32;
}

uint64_t TodayPage.init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v81 = a6;
  v82 = a7;
  v84 = a8;
  v85 = a17;
  v88 = a16;
  v86 = a18;
  v87 = a15;
  v83 = a14;
  v79 = a5;
  v80 = a12;
  v77 = a4;
  v78 = a11;
  v75 = a9;
  v76 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v23 - 8);
  v74 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - v29;
  v31 = sub_24F928818();
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x277D84FA0];
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering) = a1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping) = a2;
  v35 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v36 = v77;
  *v35 = a3;
  v35[1] = v36;
  v37 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v39 = v81;
  v38 = v82;
  *v37 = v79;
  v37[1] = v39;
  v40 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  *v40 = v38;
  v40[1] = v84;
  v41 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v42 = v76;
  *v41 = v75;
  v41[1] = v42;
  v44 = v43;
  v45 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v46 = v80;
  *v45 = v78;
  v45[1] = v46;
  v84 = a13;
  sub_24E60169C(a13, v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds) = v83;

  v48 = sub_24EA71A2C(v47);
  v49 = v31;
  v50 = v30;

  swift_beginAccess();
  *(v19 + v34) = v48;

  v51 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);
  *v51 = 0;
  v51[1] = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance) = MEMORY[0x277D84F90];
  v52 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);
  *v52 = 0;
  v52[1] = 0;
  v82 = v44;
  v53 = *(v44 + 16);
  v53(v33, v88, v49);
  v54 = v86;
  sub_24E60169C(v86, v50, &qword_27F2218B0);
  *(v19 + 16) = v87;
  v83 = v33;
  v81 = v49;
  v53((v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v33, v49);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v85;
  sub_24E60169C(v50, v27, &qword_27F2218B0);
  v55 = sub_24F9285B8();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v27, 1, v55) == 1)
  {
    sub_24E601704(v54, &qword_27F2218B0);
    v58 = v81;
    v59 = *(v82 + 8);
    v59(v88, v81);
    sub_24E601704(v84, &qword_27F2129B0);
    sub_24E601704(v50, &qword_27F2218B0);
    v59(v83, v58);
    v60 = v27;
  }

  else
  {
    v80 = v27;
    v61 = qword_27F2105F0;

    if (v61 != -1)
    {
      swift_once();
    }

    v79 = v50;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v62, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v63 = v89;
    if (v89)
    {
    }

    v64 = *(v56 + 8);
    v64(v80, v55);
    v65 = v74;
    if (!v63)
    {

      sub_24E601704(v86, &qword_27F2218B0);
      v69 = v81;
      v70 = *(v82 + 8);
      v70(v88, v81);
      sub_24E601704(v84, &qword_27F2129B0);
      sub_24E601704(v79, &qword_27F2218B0);
      v70(v83, v69);
      return v19;
    }

    v66 = v79;
    sub_24E60169C(v79, v74, &qword_27F2218B0);
    if (v57(v65, 1, v55) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v86, &qword_27F2218B0);
      v71 = v81;
      v72 = *(v82 + 8);
      v72(v88, v81);
      sub_24E601704(v84, &qword_27F2129B0);
      sub_24E601704(v66, &qword_27F2218B0);
      v72(v83, v71);
      v64(v65, v55);
      return v19;
    }

    sub_24E601704(v86, &qword_27F2218B0);
    v67 = v81;
    v68 = *(v82 + 8);
    v68(v88, v81);
    sub_24E601704(v84, &qword_27F2129B0);
    sub_24E601704(v66, &qword_27F2218B0);
    v68(v83, v67);
    v60 = v65;
  }

  sub_24E601704(v60, &qword_27F2218B0);
  return v19;
}

uint64_t sub_24EA71A2C(uint64_t a1)
{
  v27 = MEMORY[0x277D84FA0];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v16 = v5;
  v17 = v1;
  v8 = 0;
  if (v4)
  {
    while (1)
    {
LABEL_6:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(a1 + 56) + ((v7 << 9) | (8 * v9)));
      LOBYTE(v24) = *(v10 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0x7261437961646F74 && v11 == 0xE900000000000064)
      {

LABEL_10:
        v13 = *(v10 + 24);
        v14 = *(v13 + 16);
        result = swift_bridgeObjectRetain_n();
        v15 = 0;
        while (1)
        {
          if (v15 == v14)
          {
            v26 = 0;
            v15 = v14;
            v24 = 0u;
            v25 = 0u;
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            if (v15 >= *(v13 + 16))
            {
              goto LABEL_28;
            }

            sub_24E615E00(v13 + 32 + 40 * v15++, &v24);
          }

          v22[0] = v24;
          v22[1] = v25;
          v23 = v26;
          if (!*(&v25 + 1))
          {
            break;
          }

          sub_24E612C80(v22, v21);
          sub_24E615E00(v21, v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
          type metadata accessor for TodayCard();
          if ((swift_dynamicCast() & 1) == 0)
          {
            v20 = 0;
          }

          result = __swift_destroy_boxed_opaque_existential_1(v21);
          if (v20)
          {
            sub_24ED7CE20(&v24, *(*(v20 + 64) + 16));
          }
        }

        swift_bridgeObjectRelease_n();

        v5 = v16;
        v1 = v17;
        v8 = v7;
        if (!v4)
        {
          break;
        }
      }

      else
      {
        v12 = sub_24F92CE08();

        if (v12)
        {
          goto LABEL_10;
        }

        v8 = v7;
        if (!v4)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v27;
    }

    v4 = *(v1 + 8 * v7);
    ++v8;
    if (v4)
    {
      goto LABEL_6;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

char *TodayPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v154 = a1;
  v144 = *v2;
  v3 = sub_24F9285B8();
  v150 = *(v3 - 8);
  v151 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v139 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v140 = (v123 - v7);
  MEMORY[0x28223BE20](v6);
  v147 = v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v135 = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v133 = v123 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v123 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v136 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v134 = v123 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v132 = v123 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v131 = v123 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v123 - v26;
  v28 = sub_24F92AC28();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v129 = v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v128 = v123 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v130 = v123 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v123 - v36;
  v38 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  v141 = v2;
  *&v2[OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds] = MEMORY[0x277D84FA0];
  sub_24F928398();
  sub_24F9282B8();
  v39 = v28;
  v137 = v17;
  v41 = *(v17 + 8);
  v40 = v17 + 8;
  v42 = v27;
  v43 = v41;
  v44 = v16;
  v41(v42, v16);
  v142 = v29[6];
  v143 = v29 + 6;
  if (v142(v15, 1, v39) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0);
    v45 = sub_24F92AC38();
    sub_24EA74324(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v46 = 0x7365766C656873;
    v47 = v144;
    v46[1] = 0xE700000000000000;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (*(v150 + 8))(v149, v151);
    v43(v154, v16);

    type metadata accessor for TodayPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v141;
    v126 = v38;
    v144 = v43;
    v145 = v40;
    v138 = v44;
    v49 = v29[4];
    v125 = v29 + 4;
    v124 = v49;
    v49(v37, v15, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x277D84F90];
    *&v152 = v50;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v51, qword_27F22D8D8);
    v52 = v147;
    sub_24F928528();

    v53 = v29[2];
    v127 = v37;
    v53(v130, v37, v39);
    v54 = *(v150 + 16);
    v146 = v39;
    v123[1] = v150 + 16;
    v123[0] = v54;
    v54(v140, v52, v151);
    type metadata accessor for Shelf();
    sub_24EA74324(&qword_27F2265E0, type metadata accessor for Shelf);
    v55 = sub_24F92B6A8();
    v56 = sub_24EEF0A68(v55);
    v58 = v57;

    v59 = v48;
    *&v48[OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering] = v56;
    *&v48[OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping] = v58;
    v60 = v131;
    sub_24F928398();
    v61 = sub_24F928348();
    v63 = v62;
    v64 = v138;
    v140 = v29;
    v65 = v144;
    v144(v60, v138);
    v66 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_title];
    *v66 = v61;
    v66[1] = v63;
    sub_24F928398();
    v67 = sub_24F928348();
    v69 = v68;
    v65(v60, v64);
    v70 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail];
    *v70 = v67;
    v70[1] = v69;
    sub_24F928398();
    v71 = sub_24F928348();
    v73 = v72;
    v65(v60, v64);
    v74 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail];
    *v74 = v71;
    v74[1] = v73;
    sub_24F928398();
    v75 = sub_24F928348();
    v77 = v76;
    v65(v60, v64);
    v78 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle];
    *v78 = v75;
    v78[1] = v77;
    sub_24F928398();
    v79 = sub_24F928348();
    v81 = v80;
    v65(v60, v64);
    v82 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle];
    *v82 = v79;
    v82[1] = v81;
    sub_24F928398();
    sub_24F928368();
    v65(v60, v64);
    v83 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage];
    v84 = v153;
    *v83 = v152;
    *(v83 + 1) = v84;
    v85 = v132;
    sub_24F928398();
    v86 = v133;
    sub_24F9282B8();
    v65(v85, v64);
    v87 = v146;
    v88 = v142(v86, 1, v146);
    v89 = v140;
    if (v88 == 1)
    {
      sub_24E601704(v86, &qword_27F2213B0);
      v90 = MEMORY[0x277D84F90];
    }

    else
    {
      v91 = v128;
      v124(v128, v86, v87);
      v92 = v148;
      v90 = sub_24F92ABB8();
      v148 = v92;
      v89[1](v91, v87);
    }

    v93 = v126;
    *&v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds] = v90;
    swift_beginAccess();

    v95 = sub_24EA71A2C(v94);

    swift_beginAccess();
    *&v93[v59] = v95;

    sub_24F928398();
    v96 = sub_24F928348();
    v98 = v97;
    v99 = v144;
    v144(v60, v64);
    v100 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind];
    *v100 = v96;
    v100[1] = v98;
    v101 = v134;
    sub_24F928398();
    v102 = v135;
    sub_24F9282B8();
    v99(v101, v64);
    v103 = v146;
    if (v142(v102, 1, v146) == 1)
    {
      sub_24E601704(v102, &qword_27F2213B0);
      v104 = MEMORY[0x277D84F90];
    }

    else
    {
      v105 = v129;
      v124(v129, v102, v103);
      sub_24EA7436C();
      v106 = v148;
      v104 = sub_24F92ABB8();
      v148 = v106;
      v140[1](v105, v103);
    }

    v107 = v150;
    *&v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance] = v104;
    v108 = v154;
    sub_24F928398();
    v109 = sub_24F928348();
    v111 = v110;
    v112 = v138;
    v113 = v144;
    v144(v60, v138);
    v114 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl];
    *v114 = v109;
    v114[1] = v111;
    v115 = v136;
    (*(v137 + 16))(v136, v108, v112);
    v116 = v139;
    v117 = v149;
    v118 = v151;
    (v123[0])(v139, v149, v151);
    v119 = v148;
    v120 = BasePage.init(deserializing:using:)(v115, v116);
    if (v119)
    {
      v38 = *(v107 + 8);
      (v38)(v117, v118);
      v113(v108, v112);
      (v38)(v147, v118);
    }

    else
    {
      v38 = v120;
      v121 = *(v107 + 8);
      v121(v117, v118);
      v113(v108, v112);
      v121(v147, v118);
    }

    v140[1](v127, v146);
  }

  return v38;
}

uint64_t sub_24EA72BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_24F928398();
  sub_24F928288();
  v18 = *(v9 + 8);
  v28 = v8;
  v18(v13, v8);
  v31 = v15;
  v19 = *(v15 + 48);
  if (v19(v7, 1, v14) == 1)
  {
    result = sub_24E601704(v7, &unk_27F22EC30);
    v21 = 0;
  }

  else
  {
    (*(v31 + 32))(v17, v7, v14);
    v22 = v27;
    sub_24F928398();
    v23 = v30;
    sub_24F928288();
    v18(v22, v28);
    v24 = sub_24F91F578();
    if (v19(v23, 1, v14) == 1)
    {
      v25 = 0;
      v26 = v31;
    }

    else
    {
      v25 = sub_24F91F578();
      v26 = v31;
      (*(v31 + 8))(v23, v14);
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CD3B88]) initWithStartDate:v24 endDate:v25];

    result = (*(v26 + 8))(v17, v14);
  }

  *v32 = v21;
  return result;
}

uint64_t TodayPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);

  return v1;
}

uint64_t TodayPage.titleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);

  return v1;
}

uint64_t TodayPage.shortTitleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);

  return v1;
}

uint64_t TodayPage.longTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);

  return v1;
}

uint64_t TodayPage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);

  return v1;
}

uint64_t sub_24EA7310C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_24EA731C0(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();

  v5 = sub_24F159E30(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_24EA7324C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v90 - v8;
  MEMORY[0x28223BE20](v9);
  v104 = &v90 - v10;
  MEMORY[0x28223BE20](v11);
  v110 = &v90 - v12;
  v106 = sub_24F928818();
  v111 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v112 = &v90 - v15;
  v16 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = MEMORY[0x277D84F90];
  v114 = MEMORY[0x277D84F90];
  v19 = *(v17 + 16);
  v20 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping;

  swift_beginAccess();
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = 0;
  v22 = v17 + 32;
  v107 = v19 - 1;
  v109 = v4;
  v108 = v17 + 32;
  do
  {
    v23 = v22 + 40 * v21;
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      sub_24E65864C(v23, v115);
      if (*(*(a1 + v20) + 16))
      {
        break;
      }

LABEL_4:
      ++v24;
      sub_24E6585F8(v115);
      v23 += 40;
      if (v19 == v24)
      {
        v4 = v109;
        goto LABEL_14;
      }
    }

    sub_24E76D934(v115);
    if ((v25 & 1) == 0)
    {

      goto LABEL_4;
    }

    v26 = sub_24E6585F8(v115);
    MEMORY[0x253050F00](v26);
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v21 = v24 + 1;
    sub_24F92B638();
    v18 = v114;
    v4 = v109;
    v22 = v108;
  }

  while (v107 != v24);
LABEL_14:

  v27 = sub_24EEF0A68(v18);
  v29 = v28;

  v93 = sub_24EEF0D44(v27, v29, 1, v4, &protocol witness table for TodayPage);
  v31 = v30;

  v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title + 8);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail + 8);
  v36 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail + 8);
  v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  v109 = v36;
  v37 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle + 8);
  v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v108 = v37;
  v38 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle + 8);
  v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v107 = v38;
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, v115, &qword_27F2129B0);
  v39 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds);
  v40 = *(v2 + 16);
  v100 = v32;
  v99 = v33;
  v98 = v34;
  v97 = v35;
  if (v40)
  {
    v41 = *(a1 + 16);

    v101 = sub_24ED64DBC(v41);
  }

  else
  {
    v101 = *(a1 + 16);
  }

  v43 = v111;
  v42 = v112;
  v44 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v45 = *(v43 + 16);
  v46 = v42;
  v47 = v106;
  v45(v46, v2 + v44, v106);
  v92 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v48 = sub_24F9285B8();
  v102 = *(v48 - 8);
  v49 = v110;
  (*(v102 + 56))(v110, 1, 1, v48);
  type metadata accessor for TodayPage();
  v2 = swift_allocObject();
  v50 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering) = v93;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping) = v31;
  v51 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v52 = v99;
  *v51 = v100;
  v51[1] = v52;
  v53 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v54 = v97;
  *v53 = v98;
  v53[1] = v54;
  v55 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  v56 = v109;
  *v55 = v96;
  v55[1] = v56;
  v57 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v58 = v108;
  *v57 = v95;
  v57[1] = v58;
  v59 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v60 = v107;
  *v59 = v94;
  v59[1] = v60;
  sub_24E60169C(v115, v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds) = v39;

  v62 = sub_24EA71A2C(v61);

  swift_beginAccess();
  *(v2 + v50) = v62;
  v63 = v112;
  v64 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);
  *v64 = 0;
  v64[1] = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance) = MEMORY[0x277D84F90];
  v65 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);
  *v65 = 0;
  v65[1] = 0;
  v66 = v105;
  v45(v105, v63, v47);
  v67 = v49;
  v68 = v104;
  sub_24E60169C(v67, v104, &qword_27F2218B0);
  *(v2 + 16) = v101;
  v45((v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v66, v47);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v92;
  v69 = v103;
  sub_24E60169C(v68, v103, &qword_27F2218B0);
  v70 = *(v102 + 48);
  v91 = v48;
  if (v70(v69, 1, v48) == 1)
  {

    sub_24E601704(v68, &qword_27F2218B0);
    v71 = *(v111 + 8);
    v71(v66, v47);
    sub_24E601704(v110, &qword_27F2218B0);
    v71(v63, v47);
    sub_24E601704(v115, &qword_27F2129B0);
    v72 = v69;
    v73 = &qword_27F2218B0;
    goto LABEL_26;
  }

  v109 = v70;
  v74 = qword_27F2105F0;

  if (v74 != -1)
  {
LABEL_30:
    swift_once();
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v75, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  sub_24F9285C8();
  v76 = v113;
  v77 = v90;
  v78 = v110;
  v79 = v104;
  v80 = v102;
  if (v113)
  {
  }

  v81 = *(v80 + 8);
  v82 = v91;
  v81(v103, v91);
  if (v76)
  {
    sub_24E60169C(v79, v77, &qword_27F2218B0);
    if (v109(v77, 1, v82) == 1)
    {

      sub_24E601704(v79, &qword_27F2218B0);
      v83 = *(v111 + 8);
      v84 = v106;
      v83(v105, v106);
      sub_24E601704(v78, &qword_27F2218B0);
      v83(v112, v84);
      sub_24E601704(v115, &qword_27F2129B0);
      v72 = v77;
      v73 = &qword_27F2218B0;
      goto LABEL_26;
    }

    sub_24ECDF110();

    sub_24E601704(v79, &qword_27F2218B0);
    v88 = *(v111 + 8);
    v89 = v106;
    v88(v105, v106);
    sub_24E601704(v78, &qword_27F2218B0);
    v88(v112, v89);
    sub_24E601704(v115, &qword_27F2129B0);
    v81(v77, v91);
  }

  else
  {

    sub_24E601704(v79, &qword_27F2218B0);
    v85 = *(v111 + 8);
    v86 = v106;
    v85(v105, v106);
    sub_24E601704(v78, &qword_27F2218B0);
    v85(v112, v86);
    v73 = &qword_27F2129B0;
    v72 = v115;
LABEL_26:
    sub_24E601704(v72, v73);
  }

  return v2;
}

uint64_t TodayPage.widgetKind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);

  return v1;
}

uint64_t TodayPage.feedPreviewUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);

  return v1;
}

uint64_t sub_24EA73F20()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0);
}

uint64_t TodayPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0);

  return v0;
}

uint64_t TodayPage.__deallocating_deinit()
{
  TodayPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA742A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EA7324C(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for TodayPage()
{
  result = qword_27F2265F0;
  if (!qword_27F2265F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA74324(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EA7436C()
{
  result = qword_27F2265E8;
  if (!qword_27F2265E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2265E8);
  }

  return result;
}

uint64_t keypath_getTm_2@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void *AdvertAppearanceJournal.__allocating_init(instanceId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = MEMORY[0x277D84F90];
  return result;
}

void *AdvertAppearanceJournal.init(instanceId:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = MEMORY[0x277D84F90];
  return v2;
}

uint64_t AdvertAppearanceJournal.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for AdvertAppearanceJournal.Entry()
{
  result = qword_27F226600;
  if (!qword_27F226600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA74770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA747DC(uint64_t a1, char a2)
{
  v5 = type metadata accessor for AdvertAppearanceJournal.Entry();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v13 = *(v12 + 28);
  v14 = sub_24F91F648();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  *v11 = a2;
  sub_24EA74770(v11, v8);
  swift_beginAccess();
  v15 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24E617FB8(0, v15[2] + 1, 1, v15);
    *(v2 + 32) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24E617FB8(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_24EA74F78(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
  *(v2 + 32) = v15;
  swift_endAccess();
  return sub_24EA74FDC(v11);
}

uint64_t AdvertAppearanceJournal.isVisible.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(type metadata accessor for AdvertAppearanceJournal.Entry() - 8);
    LOBYTE(v2) = *(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3) ^ 1;
  }

  return v2 & 1;
}

uint64_t AdvertAppearanceJournal.lastAppearanceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AdvertAppearanceJournal.Entry();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v13 + 16);

  while (1)
  {
    if (!v14)
    {

      v21 = sub_24F91F648();
      return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
    sub_24EA74770(v16, v6);
    v17 = *v6;
    result = sub_24EA74FDC(v6);
    if ((v17 & 1) == 0)
    {
      sub_24EA74770(v16, v9);

      sub_24EA74F78(v9, v12);
      v18 = *(v3 + 20);
      v19 = sub_24F91F648();
      v20 = *(v19 - 8);
      (*(v20 + 32))(a1, &v12[v18], v19);
      return (*(v20 + 56))(a1, 0, 1, v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t AdvertAppearanceJournal.lastDisappearanceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AdvertAppearanceJournal.Entry();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v13 + 16);

  while (1)
  {
    if (!v14)
    {

      v21 = sub_24F91F648();
      return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
    sub_24EA74770(v16, v6);
    v17 = *v6;
    result = sub_24EA74FDC(v6);
    if (v17 == 1)
    {
      sub_24EA74770(v16, v9);

      sub_24EA74F78(v9, v12);
      v18 = *(v3 + 20);
      v19 = sub_24F91F648();
      v20 = *(v19 - 8);
      (*(v20 + 32))(a1, &v12[v18], v19);
      return (*(v20 + 56))(a1, 0, 1, v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t AdvertAppearanceJournal.deinit()
{

  return v0;
}

uint64_t AdvertAppearanceJournal.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EA74F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA74FDC(uint64_t a1)
{
  v2 = type metadata accessor for AdvertAppearanceJournal.Entry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA7509C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24EA75154(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EA751F4()
{
  result = sub_24F91F648();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EA75284()
{
  result = qword_27F226610;
  if (!qword_27F226610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226610);
  }

  return result;
}

uint64_t sub_24EA752D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E655265676170;
  }

  else
  {
    v3 = 6778732;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x646E655265676170;
  }

  else
  {
    v5 = 6778732;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_24EA7537C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA753FC()
{
  sub_24F92B218();
}

uint64_t sub_24EA75468()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA754E4@<X0>(char *a1@<X8>)
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

void sub_24EA75544(uint64_t *a1@<X8>)
{
  v2 = 6778732;
  if (*v1)
  {
    v2 = 0x646E655265676170;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EA75580()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_allocate_value_buffer(v0, qword_27F226618);
  __swift_project_value_buffer(v0, qword_27F226618);
  return sub_24F928C68();
}

uint64_t sub_24EA7561C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_allocate_value_buffer(v0, qword_27F226630);
  __swift_project_value_buffer(v0, qword_27F226630);
  return sub_24F928C68();
}

uint64_t sub_24EA756B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for MetricsSamplingLottery(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsSamplingLottery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24EA75808()
{
  result = qword_27F226648;
  if (!qword_27F226648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226648);
  }

  return result;
}

uint64_t sub_24EA7585C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226650);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v8 = 6778732;
  if (v7)
  {
    v8 = 0x646E655265676170;
    v9 = 0xEA00000000007265;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  v16 = v8;
  v17 = v9;
  v14 = 0xD000000000000022;
  v15 = 0x800000024FA50F10;
  v14 = sub_24F92B3C8();
  v15 = v10;
  sub_24F92B278();

  sub_24F928C68();
  sub_24F928868();

  (*(v4 + 8))(v6, v3);
  if (v17)
  {
    v11 = 1;
  }

  else
  {
    sub_24F91F508();
    v11 = 0;
  }

  v12 = sub_24F91F648();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_24EA75A90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226650);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *v1;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v8 = 6778732;
  if (v7)
  {
    v8 = 0x646E655265676170;
    v9 = 0xEA00000000007265;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  v19 = v8;
  v20 = v9;
  v17 = 0xD000000000000022;
  v18 = 0x800000024FA50F10;
  v17 = sub_24F92B3C8();
  v18 = v10;
  sub_24F92B278();

  sub_24F928C68();
  sub_24E728A00(a1, v5);
  v11 = sub_24F91F648();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v5, 1, v11);
  if (v13 == 1)
  {
    sub_24E728998(v5);
    v14 = 0;
  }

  else
  {
    sub_24F91F518();
    v14 = v15;
    (*(v12 + 8))(v5, v11);
  }

  v19 = v14;
  LOBYTE(v20) = v13 == 1;
  sub_24F928878();

  return sub_24E728998(a1);
}

uint64_t sub_24EA75D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - v3;
  v5 = *v0;
  v6 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F9479A0;
  *(v7 + 32) = @"debug";
  *(v7 + 40) = @"convergence";
  *(v7 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v8 = @"debug";
  v9 = @"convergence";
  v10 = @"internal";
  v11 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v6, v11);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F210120 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_27F226618);
    sub_24F928868();

    if (v20 == 2 || (v20 & 1) == 0)
    {
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      v14 = 6778732;
      if (v5)
      {
        v14 = 0x646E655265676170;
        v15 = 0xEA00000000007265;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v20 = v14;
      v21 = v15;
      v18 = 0xD00000000000001FLL;
      v19 = 0x800000024FA50EF0;
      v18 = sub_24F92B3C8();
      v19 = v16;
      sub_24F92B278();

      sub_24F928C68();
      sub_24F928868();

      (*(v2 + 8))(v4, v1);
      v13 = v20;
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

  return v13 & 1;
}

uint64_t sub_24EA76044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v29 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  v20 = *v0;
  v22 = v0[1];
  v21 = *(v0 + 2);
  v31 = *v0;
  v32 = v22;
  v33 = v21;
  if (sub_24EA75D24())
  {
    return 1;
  }

  if (v22 <= 0.0)
  {
    return 0;
  }

  if (v22 >= 1.0)
  {
    return 1;
  }

  v31 = v20;
  v32 = v22;
  v33 = v21;
  sub_24EA7585C(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v24 = *(v8 + 32);
    v29[1] = v8 + 32;
    v30 = v24;
    v24(v14, v6, v7);
    sub_24F91F568();
    v25 = *(v8 + 8);
    v25(v14, v7);
    v30(v19, v17, v7);
    sub_24F91F638();
    v26 = sub_24F91F598();
    v25(v11, v7);
    v25(v19, v7);
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 1;
  }

  sub_24E728998(v6);
LABEL_10:
  v27 = sub_24F18A83C(0x20000000000001);
  result = 0;
  v28 = vcvtd_n_f64_u64(v27, 0x35uLL);
  if (v28 > 0.0 && v28 <= v22)
  {
    v31 = v20;
    v32 = v22;
    v33 = v21;
    sub_24F91F638();
    (*(v8 + 56))(v4, 0, 1, v7);
    sub_24EA75A90(v4);
    return 1;
  }

  return result;
}

uint64_t sub_24EA76370()
{
  v0 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F9479A0;
  *(v1 + 32) = @"debug";
  *(v1 + 40) = @"convergence";
  *(v1 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v2 = @"debug";
  v3 = @"convergence";
  v4 = @"internal";
  v5 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v0, v5);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F210128 != -1)
    {
      swift_once();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
    __swift_project_value_buffer(v7, qword_27F226630);
    sub_24F928868();

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t TopChartSegment.__allocating_init(shortName:longName:shelves:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v67) = a6;
  v65 = a3;
  v66 = a4;
  v64 = a2;
  v69 = a10;
  v70 = a8;
  v71 = a9;
  v72 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = sub_24F928818();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v25 = sub_24EEF0A68(a5);
  v27 = v26;

  *(v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v25;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v27;
  v28 = (v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v29 = v64;
  v30 = v65;
  *v28 = a1;
  v28[1] = v29;
  v31 = (v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  v32 = v66;
  *v31 = v30;
  v31[1] = v32;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = v67;
  sub_24E60169C(v72, v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0);
  v33 = *(v21 + 16);
  v33(v23, v71, v20);
  sub_24E60169C(a11, v19, &qword_27F2218B0);
  *(v24 + 16) = v70;
  v33((v24 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v23, v20);
  v34 = v68;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v69;
  v35 = v19;
  v36 = v19;
  v37 = v34;
  sub_24E60169C(v36, v34, &qword_27F2218B0);
  v38 = sub_24F9285B8();
  v66 = *(v38 - 8);
  v67 = v38;
  v39 = *(v66 + 48);
  if ((v39)(v37, 1) == 1)
  {
    sub_24E601704(a11, &qword_27F2218B0);
    v40 = *(v21 + 8);
    v40(v71, v20);
    sub_24E601704(v72, &qword_27F2129B0);
    sub_24E601704(v35, &qword_27F2218B0);
    v40(v23, v20);
    v41 = v37;
  }

  else
  {
    v60 = v39;
    v42 = v37;
    v62 = a11;
    v64 = v23;
    v65 = v21;
    v43 = v35;
    v44 = qword_27F2105F0;

    if (v44 != -1)
    {
      swift_once();
    }

    v61 = v20;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v45, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v46 = v73;
    v48 = v66;
    v47 = v67;
    if (v73)
    {
    }

    v49 = *(v48 + 8);
    v49(v42, v47);
    if (!v46)
    {

      sub_24E601704(v62, &qword_27F2218B0);
      v55 = *(v65 + 8);
      v56 = v61;
      v55(v71, v61);
      sub_24E601704(v72, &qword_27F2129B0);
      sub_24E601704(v43, &qword_27F2218B0);
      v55(v64, v56);
      return v24;
    }

    v50 = v43;
    v51 = v43;
    v52 = v63;
    sub_24E60169C(v51, v63, &qword_27F2218B0);
    if (v60(v52, 1, v47) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v62, &qword_27F2218B0);
      v57 = *(v65 + 8);
      v58 = v61;
      v57(v71, v61);
      sub_24E601704(v72, &qword_27F2129B0);
      sub_24E601704(v50, &qword_27F2218B0);
      v57(v64, v58);
      v49(v52, v47);
      return v24;
    }

    sub_24E601704(v62, &qword_27F2218B0);
    v53 = *(v65 + 8);
    v54 = v61;
    v53(v71, v61);
    sub_24E601704(v72, &qword_27F2129B0);
    sub_24E601704(v50, &qword_27F2218B0);
    v53(v64, v54);
    v41 = v52;
  }

  sub_24E601704(v41, &qword_27F2218B0);
  return v24;
}

uint64_t TopChartSegment.init(shortName:longName:shelves:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v61) = a6;
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v62 = a10;
  v63 = a8;
  v64 = a9;
  v65 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v14 - 8);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v55 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = sub_24F928818();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24EEF0A68(a5);
  v27 = v26;

  *(v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v25;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v27;
  v28 = (v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v29 = v57;
  v30 = v58;
  *v28 = a1;
  v28[1] = v29;
  v31 = (v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  v32 = v60;
  *v31 = v30;
  v31[1] = v32;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = v61;
  sub_24E60169C(v65, v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0);
  v33 = *(v22 + 16);
  v33(v24, v64, v21);
  sub_24E60169C(a11, v20, &qword_27F2218B0);
  *(v11 + 16) = v63;
  v61 = v21;
  v33((v11 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v24, v21);
  v60 = v11;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v62;
  v34 = v59;
  sub_24E60169C(v20, v59, &qword_27F2218B0);
  v35 = sub_24F9285B8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v34, 1, v35) == 1)
  {
    sub_24E601704(a11, &qword_27F2218B0);
    v38 = *(v22 + 8);
    v39 = v61;
    v38(v64, v61);
    sub_24E601704(v65, &qword_27F2129B0);
    sub_24E601704(v20, &qword_27F2218B0);
    v38(v24, v39);
    v40 = v34;
  }

  else
  {
    v55 = a11;
    v57 = v24;
    v41 = qword_27F2105F0;

    if (v41 != -1)
    {
      swift_once();
    }

    v58 = v22;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v42, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v43 = v66;
    v44 = v64;
    if (v66)
    {
    }

    v45 = *(v36 + 8);
    v45(v34, v35);
    if (!v43)
    {

      sub_24E601704(v55, &qword_27F2218B0);
      v49 = *(v58 + 8);
      v50 = v61;
      v49(v44, v61);
      sub_24E601704(v65, &qword_27F2129B0);
      sub_24E601704(v20, &qword_27F2218B0);
      v49(v57, v50);
      return v60;
    }

    v46 = v56;
    sub_24E60169C(v20, v56, &qword_27F2218B0);
    if (v37(v46, 1, v35) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v55, &qword_27F2218B0);
      v51 = *(v58 + 8);
      v52 = v44;
      v53 = v61;
      v51(v52, v61);
      sub_24E601704(v65, &qword_27F2129B0);
      sub_24E601704(v20, &qword_27F2218B0);
      v51(v57, v53);
      v45(v46, v35);
      return v60;
    }

    sub_24E601704(v55, &qword_27F2218B0);
    v47 = *(v58 + 8);
    v48 = v61;
    v47(v44, v61);
    sub_24E601704(v65, &qword_27F2129B0);
    sub_24E601704(v20, &qword_27F2218B0);
    v47(v57, v48);
    v40 = v46;
  }

  sub_24E601704(v40, &qword_27F2218B0);
  return v60;
}

uint64_t TopChartSegment.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v74 - v6;
  v7 = sub_24F92AC28();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v92 = sub_24F9285B8();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v74 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  MEMORY[0x28223BE20](v18);
  v87 = &v74 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v81 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v74 - v30;
  v84 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928278();
  v80 = v21;
  v33 = *(v21 + 8);
  v32 = v21 + 8;
  v85 = v20;
  v33(v31, v20);
  v83 = v3;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = a1 & 1;
  v34 = MEMORY[0x277D84F90];
  v86 = v33;
  if (a1)
  {
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v35, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F928538();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *&v90 = v36;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v37, qword_27F22D8D8);
    sub_24F928528();
  }

  v38 = v84;
  v39 = v87;
  v40 = v77;
  (*(v89 + 32))(v87, v17, v92);
  sub_24F928398();
  sub_24F9282B8();
  v86(v28, v85);
  v41 = v78;
  v42 = v79;
  if ((*(v78 + 48))(v40, 1, v79) == 1)
  {
    sub_24E601704(v40, &qword_27F2213B0);
    v43 = v83;
    v44 = MEMORY[0x277D84F90];
    *(v83 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = MEMORY[0x277D84F90];
    v45 = sub_24E60986C(v44);
  }

  else
  {
    (*(v41 + 32))(v11, v40, v42);
    (*(v41 + 16))(v76, v11, v42);
    (*(v89 + 16))(v75, v39, v92);
    type metadata accessor for Shelf();
    v84 = v11;
    v46 = v41;
    sub_24EA79A4C();
    v47 = sub_24F92B6A8();
    v48 = sub_24EEF0A68(v47);
    v45 = v49;

    (*(v46 + 8))(v84, v42);
    v50 = v83;
    *(v83 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v48;
    v43 = v50;
  }

  v51 = v88;
  *(v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v45;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v56 = v85;
  v55 = v86;
  v86(v25, v85);
  v57 = (v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  *v57 = v52;
  v57[1] = v54;
  sub_24F928398();
  v58 = sub_24F928348();
  v60 = v59;
  v55(v25, v56);
  v61 = (v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  *v61 = v58;
  v61[1] = v60;
  sub_24F928398();
  sub_24F928368();
  v55(v25, v56);
  v62 = (v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage);
  v63 = v91;
  *v62 = v90;
  v62[1] = v63;
  v64 = v81;
  (*(v80 + 16))(v81, v38, v56);
  v65 = v89;
  v66 = *(v89 + 16);
  v67 = v82;
  v88 = v32;
  v68 = v51;
  v69 = v51;
  v70 = v92;
  v66(v82, v69, v92);
  v71 = BasePage.init(deserializing:using:)(v64, v67);
  v72 = *(v65 + 8);
  v72(v68, v70);
  v55(v38, v56);
  v72(v87, v70);
  return v71;
}

uint64_t TopChartSegment.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);

  return v1;
}

uint64_t TopChartSegment.longName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);

  return v1;
}

uint64_t TopChartSegment.applyShelfUpdates(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  v5 = sub_24F159E30(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t TopChartSegment.appending(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v94 - v9;
  MEMORY[0x28223BE20](v11);
  v105 = &v94 - v12;
  MEMORY[0x28223BE20](v13);
  v104 = &v94 - v14;
  v101 = sub_24F928818();
  v107 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v103 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v94 - v17;
  v18 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  v95 = v7;
  v100 = v10;
  if (v18 >> 62)
  {
    goto LABEL_50;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v20 = &unk_27F39B000;
  v21 = &unk_27F39B000;
  v22 = MEMORY[0x277D84F90];
  v106 = v4;
  if (v19 != 1)
  {
    goto LABEL_60;
  }

  v23 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v102 = v23;
  v24 = *(a1 + v23);
  v112 = v22;
  v25 = v22;
  v26 = *(v24 + 16);
  v27 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (v26)
  {
    v28 = 0;
    v29 = v24 + 32;
    v98 = v26 - 1;
    v25 = MEMORY[0x277D84F90];
    v99 = v24 + 32;
LABEL_6:
    v30 = v29 + 40 * v28;
    v4 = v28;
    do
    {
      if (v4 >= *(v24 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v19 = sub_24F92C738();
        goto LABEL_3;
      }

      sub_24E65864C(v30, v111);
      if (*(*(a1 + v27) + 16))
      {

        sub_24E76D934(v111);
        if (v31)
        {

          v32 = sub_24E6585F8(v111);
          MEMORY[0x253050F00](v32);
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v28 = v4 + 1;
          sub_24F92B638();
          v25 = v112;
          v33 = v98 == v4;
          v4 = v106;
          v21 = &unk_27F39B000;
          v29 = v99;
          if (v33)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }
      }

      ++v4;
      sub_24E6585F8(v111);
      v30 += 40;
    }

    while (v26 != v4);
    v4 = v106;
    v21 = &unk_27F39B000;
  }

LABEL_18:

  v34 = v25 >> 62 ? sub_24F92C738() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v20 = &unk_27F39B000;
  v22 = MEMORY[0x277D84F90];
  if (v34 != 1)
  {
    goto LABEL_60;
  }

  v35 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  if (v35 >> 62)
  {
    v52 = v35;
    v36 = sub_24F92C738();
    v35 = v52;
    if (v36)
    {
LABEL_23:
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v37)
      {
        __break(1u);
      }

      else if ((v35 & 0xC000000000000001) == 0)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v38 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v99 = *(v35 + 8 * v38 + 32);

          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_58;
      }

      v99 = MEMORY[0x253052270](v38);
LABEL_28:

      v39 = *(a1 + v102);
      v112 = v22;
      v25 = v22;
      v40 = *(v39 + 16);

      swift_beginAccess();
      if (v40)
      {
        v41 = 0;
        v42 = v39 + 32;
        v98 = v40 - 1;
        v25 = MEMORY[0x277D84F90];
        v102 = v39 + 32;
        do
        {
          v43 = v42 + 40 * v41;
          v4 = v41;
          while (1)
          {
            if (v4 >= *(v39 + 16))
            {
              goto LABEL_49;
            }

            sub_24E65864C(v43, v111);
            if (!*(*(a1 + v27) + 16))
            {
              goto LABEL_31;
            }

            sub_24E76D934(v111);
            if (v44)
            {
              break;
            }

LABEL_31:
            ++v4;
            sub_24E6585F8(v111);
            v43 += 40;
            if (v40 == v4)
            {
              v4 = v106;
              v21 = &unk_27F39B000;
              goto LABEL_42;
            }
          }

          v45 = sub_24E6585F8(v111);
          MEMORY[0x253050F00](v45);
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v41 = v4 + 1;
          sub_24F92B638();
          v25 = v112;
          v33 = v98 == v4;
          v4 = v106;
          v21 = &unk_27F39B000;
          v42 = v102;
        }

        while (!v33);
      }

LABEL_42:

      if (!(v25 >> 62))
      {
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

LABEL_59:

        v20 = &unk_27F39B000;
        v22 = MEMORY[0x277D84F90];
        goto LABEL_60;
      }

LABEL_58:
      result = sub_24F92C738();
      if (result)
      {
LABEL_44:
        if ((v25 & 0xC000000000000001) != 0)
        {
          MEMORY[0x253052270](0, v25);
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_24F941C80;
        *v111 = *(v99 + 24);

        sub_24EA0AEC0(v48);
        v49 = *v111;
        v111[0] = 104;
        v50 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v49, v111, 1, 2);

        v51 = v47;
        *(v47 + 32) = v50;

        goto LABEL_72;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_23;
    }
  }

LABEL_60:
  v102 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  v53 = v20[233];
  swift_beginAccess();
  v54 = *(a1 + v53);
  v110 = v22;
  v55 = *(v54 + 16);
  v56 = v22;
  v57 = v21[234];

  swift_beginAccess();
  if (!v55)
  {
    goto LABEL_71;
  }

  v58 = 0;
  v59 = v54 + 32;
  v98 = v55 - 1;
  v56 = MEMORY[0x277D84F90];
  v99 = v54 + 32;
  do
  {
    v60 = v59 + 40 * v58;
    v61 = v58;
    while (1)
    {
      if (v61 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      sub_24E65864C(v60, v111);
      if (*(*(a1 + v57) + 16))
      {
        break;
      }

LABEL_63:
      ++v61;
      sub_24E6585F8(v111);
      v60 += 40;
      if (v55 == v61)
      {
        goto LABEL_71;
      }
    }

    sub_24E76D934(v111);
    if ((v62 & 1) == 0)
    {

      goto LABEL_63;
    }

    v63 = sub_24E6585F8(v111);
    MEMORY[0x253050F00](v63);
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v58 = v61 + 1;
    sub_24F92B638();
    v56 = v110;
    v59 = v99;
  }

  while (v98 != v61);
LABEL_71:

  *v111 = v102;
  sub_24EA0AE3C(v56);
  v51 = *v111;
LABEL_72:
  v64 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v65 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8);
  v97 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v111, &qword_27F2129B0);
  v66 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v96 = *(v107 + 16);
  v58 = v101;
  v96(v108, v2 + v66, v101);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v67 = sub_24F9285B8();
  v102 = *(v67 - 8);
  v68 = v104;
  (*(v102 + 56))(v104, 1, 1, v67);
  v69 = swift_allocObject();

  v70 = sub_24EEF0A68(v51);
  v72 = v71;

  *(v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v70;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v72;
  v73 = (v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  *v73 = v98;
  v73[1] = v64;
  v74 = (v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  *v74 = v97;
  v74[1] = v65;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = 0;
  sub_24E60169C(v111, v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0);
  v75 = v103;
  v76 = v69;
  v77 = v96;
  v96(v103, v108, v58);
  v78 = v68;
  v79 = v68;
  v80 = v105;
  sub_24E60169C(v79, v105, &qword_27F2218B0);
  *(v76 + 16) = 0;
  v77(v76 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v75, v58);
  v106 = v76;
  *(v76 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v99;
  v55 = v100;
  sub_24E60169C(v80, v100, &qword_27F2218B0);
  v56 = *(v102 + 48);
  v2 = v67;
  if (v56(v55, 1, v67) == 1)
  {

    sub_24E601704(v80, &qword_27F2218B0);
    v81 = *(v107 + 8);
    v81(v75, v58);
    sub_24E601704(v78, &qword_27F2218B0);
    v81(v108, v58);
    goto LABEL_80;
  }

  v82 = qword_27F2105F0;

  if (v82 != -1)
  {
LABEL_86:
    swift_once();
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v83, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  v84 = v55;
  sub_24F9285C8();
  v85 = v109;
  v55 = v95;
  v86 = v107;
  if (v109)
  {
  }

  v87 = *(v102 + 8);
  v87(v84, v2);
  if (!v85)
  {
    sub_24E601704(v105, &qword_27F2218B0);
    v92 = *(v86 + 8);
    v92(v103, v58);
    sub_24E601704(v104, &qword_27F2218B0);
    v92(v108, v58);
    v91 = &qword_27F2129B0;
    v90 = v111;
    goto LABEL_82;
  }

  v88 = v105;
  sub_24E60169C(v105, v55, &qword_27F2218B0);
  if (v56(v55, 1, v2) == 1)
  {
    sub_24E601704(v88, &qword_27F2218B0);
    v89 = *(v86 + 8);
    v89(v103, v58);
    sub_24E601704(v104, &qword_27F2218B0);
    v89(v108, v58);
LABEL_80:
    sub_24E601704(v111, &qword_27F2129B0);
    v90 = v55;
    v91 = &qword_27F2218B0;
LABEL_82:
    sub_24E601704(v90, v91);
  }

  else
  {
    sub_24ECDF110();
    sub_24E601704(v88, &qword_27F2218B0);
    v93 = *(v86 + 8);
    v93(v103, v58);
    sub_24E601704(v104, &qword_27F2218B0);
    v93(v108, v58);
    sub_24E601704(v111, &qword_27F2129B0);
    v87(v55, v2);
  }

  return v106;
}

void (*TopChartSegment.mergingWith(_:)(uint64_t a1))(char *, char *, uint64_t)
{
  v2 = v1;
  v78 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v71 - v7;
  MEMORY[0x28223BE20](v8);
  v79 = &v71 - v9;
  MEMORY[0x28223BE20](v10);
  v85 = &v71 - v11;
  v80 = sub_24F928818();
  v86 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v71 - v14;
  v15 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8];
  v77 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName];
  v16 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8];
  v75 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName];
  v17 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v18 = *&v2[v17];
  v19 = MEMORY[0x277D84F90];
  v89 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  v74 = v16;

  v76 = v15;

  swift_beginAccess();
  if (!v20)
  {
    v81 = v19;
    goto LABEL_14;
  }

  v22 = 0;
  v23 = v18 + 32;
  v71 = v20 - 1;
  v81 = MEMORY[0x277D84F90];
  v73 = v18 + 32;
  do
  {
    v24 = v23 + 40 * v22;
    v25 = v22;
    while (1)
    {
      if (v25 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_24E65864C(v24, v90);
      if (*(*&v2[v21] + 16))
      {
        break;
      }

LABEL_4:
      ++v25;
      sub_24E6585F8(v90);
      v24 += 40;
      if (v20 == v25)
      {
        goto LABEL_14;
      }
    }

    sub_24E76D934(v90);
    if ((v26 & 1) == 0)
    {

      goto LABEL_4;
    }

    v27 = sub_24E6585F8(v90);
    MEMORY[0x253050F00](v27);
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v22 = v25 + 1;
    sub_24F92B638();
    v81 = v89;
    v23 = v73;
  }

  while (v71 != v25);
LABEL_14:

  v28 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v28);
  v88 = v19;
  v29 = *(v18 + 16);
  v30 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v29)
  {
LABEL_25:

    v90[0] = v81;
    sub_24EA0AE3C(v19);
    v37 = v90[0];
    sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v90, &qword_27F2129B0);
    v38 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v81 = *(v86 + 16);
    v39 = v84;
    v40 = v80;
    v81(v84, &v2[v38], v80);
    v73 = *&v2[OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent];
    v41 = sub_24F9285B8();
    v42 = *(v41 - 8);
    v43 = v85;
    (*(v42 + 56))(v85, 1, 1, v41);
    v44 = swift_allocObject();
    v45 = sub_24EEF0A68(v37);
    v47 = v46;

    *(v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v45;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v47;
    v48 = (v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
    v49 = v76;
    *v48 = v77;
    v48[1] = v49;
    v50 = (v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
    v51 = v74;
    *v50 = v75;
    v50[1] = v51;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = 0;
    sub_24E60169C(v90, v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0);
    v52 = v83;
    v53 = v39;
    v54 = v81;
    v81(v83, v53, v40);
    v19 = v79;
    sub_24E60169C(v43, v79, &qword_27F2218B0);
    *(v44 + 16) = 0;
    v54(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v52, v40);
    v81 = v44;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v73;
    v55 = v82;
    sub_24E60169C(v19, v82, &qword_27F2218B0);
    v77 = v42;
    v18 = *(v42 + 48);
    v78 = v41;
    if ((v18)(v55, 1, v41) != 1)
    {
      v2 = v40;
      v59 = qword_27F2105F0;

      if (v59 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    sub_24E601704(v19, &qword_27F2218B0);
    v56 = *(v86 + 8);
    v56(v52, v40);
    sub_24E601704(v85, &qword_27F2218B0);
    v56(v84, v40);
    sub_24E601704(v90, &qword_27F2129B0);
    v57 = v55;
    v58 = &qword_27F2218B0;
    goto LABEL_34;
  }

  v31 = 0;
  v32 = v18 + 32;
  v71 = v29 - 1;
  v19 = MEMORY[0x277D84F90];
  v73 = v18 + 32;
LABEL_16:
  v33 = v32 + 40 * v31;
  v34 = v31;
  while (v34 < *(v18 + 16))
  {
    sub_24E65864C(v33, v90);
    if (*(*(a1 + v30) + 16))
    {

      sub_24E76D934(v90);
      if (v35)
      {

        v36 = sub_24E6585F8(v90);
        MEMORY[0x253050F00](v36);
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v31 = v34 + 1;
        sub_24F92B638();
        v19 = v88;
        v32 = v73;
        if (v71 != v34)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }

    ++v34;
    sub_24E6585F8(v90);
    v33 += 40;
    if (v29 == v34)
    {
      goto LABEL_25;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_28:
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v60, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  sub_24F9285C8();
  v61 = v87;
  v62 = v72;
  v63 = v86;
  v64 = v78;
  v65 = v77;
  if (v87)
  {
  }

  v66 = *(v65 + 8);
  v66(v82, v64);
  if (!v61)
  {
    sub_24E601704(v19, &qword_27F2218B0);
    v68 = *(v63 + 8);
    v68(v83, v2);
    sub_24E601704(v85, &qword_27F2218B0);
    v68(v84, v2);
    v58 = &qword_27F2129B0;
    v57 = v90;
LABEL_34:
    sub_24E601704(v57, v58);
    return v81;
  }

  sub_24E60169C(v19, v62, &qword_27F2218B0);
  if ((v18)(v62, 1, v64) == 1)
  {
    sub_24E601704(v19, &qword_27F2218B0);
    v67 = *(v63 + 8);
    v67(v83, v2);
    sub_24E601704(v85, &qword_27F2218B0);
    v67(v84, v2);
    sub_24E601704(v90, &qword_27F2129B0);
    v57 = v62;
    v58 = &qword_27F2218B0;
    goto LABEL_34;
  }

  sub_24ECDF110();
  sub_24E601704(v19, &qword_27F2218B0);
  v70 = *(v63 + 8);
  v70(v83, v2);
  sub_24E601704(v85, &qword_27F2218B0);
  v70(v84, v2);
  sub_24E601704(v90, &qword_27F2129B0);
  v66(v62, v64);
  return v81;
}

uint64_t sub_24EA7971C()
{

  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0);
}

uint64_t TopChartSegment.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0);
  return v0;
}

uint64_t TopChartSegment.__deallocating_deinit()
{
  TopChartSegment.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA79928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TopChartSegment.appending(contentsOf:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24EA79980(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  v5 = sub_24F159E30(v4, a1);

  *(v1 + v3) = v5;
}

void (*sub_24EA79A0C@<X0>(uint64_t *a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X8>))(char *, char *, uint64_t)
{
  result = TopChartSegment.mergingWith(_:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24EA79A4C()
{
  result = qword_27F2265E0;
  if (!qword_27F2265E0)
  {
    type metadata accessor for Shelf();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265E0);
  }

  return result;
}

uint64_t type metadata accessor for TopChartSegment()
{
  result = qword_27F226658;
  if (!qword_27F226658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FinanceType.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *v1;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      sub_24F92B0D8();
      sub_24F91F488();

      v24 = sub_24F91F4A8();
      v25 = *(v24 - 8);
      result = (*(v25 + 48))(v11, 1, v24);
      if (result != 1)
      {
        return (*(v25 + 32))(a1, v11, v24);
      }

      __break(1u);
    }

    else
    {
      if (v18 != 3)
      {
        sub_24F92B0D8();
        sub_24F91F488();

        v26 = sub_24F91F4A8();
        v27 = *(v26 - 8);
        result = (*(v27 + 48))(v5, 1, v26);
        if (result != 1)
        {
          return (*(v27 + 32))(a1, v5, v26);
        }

        goto LABEL_19;
      }

      sub_24F92B0D8();
      sub_24F91F488();

      v19 = sub_24F91F4A8();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v8, 1, v19);
      if (result != 1)
      {
        return (*(v20 + 32))(a1, v8, v19);
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!*v1)
  {
    sub_24F92B0D8();
    sub_24F91F488();

    v22 = sub_24F91F4A8();
    v23 = *(v22 - 8);
    result = (*(v23 + 48))(v17, 1, v22);
    if (result != 1)
    {
      return (*(v23 + 32))(a1, v17, v22);
    }

    goto LABEL_18;
  }

  sub_24F92B0D8();
  sub_24F91F488();

  v28 = sub_24F91F4A8();
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v14, 1, v28);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  return (*(v29 + 32))(a1, v14, v28);
}

GameStoreKit::FinanceType_optional __swiftcall FinanceType.init(rawValue:)(Swift::String rawValue)
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

uint64_t FinanceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 1952868711;
  v4 = 0x6D6F74737563;
  if (v1 != 3)
  {
    v4 = 0x79746972616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6565646572;
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

unint64_t sub_24EA7A0E4()
{
  result = qword_27F226668;
  if (!qword_27F226668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226668);
  }

  return result;
}

uint64_t sub_24EA7A138()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7A20C()
{
  sub_24F92B218();
}

uint64_t sub_24EA7A2CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA7A3A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v5 = 0xE400000000000000;
  v6 = 1952868711;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (v2 != 3)
  {
    v8 = 0x79746972616863;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D6565646572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

GameStoreKit::TertiaryIconPlacement_optional __swiftcall TertiaryIconPlacement.init(rawValue:)(Swift::String rawValue)
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

uint64_t TertiaryIconPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24EA7A4E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

unint64_t sub_24EA7A594()
{
  result = qword_27F226670[0];
  if (!qword_27F226670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F226670);
  }

  return result;
}

uint64_t sub_24EA7A5E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7A66C()
{
  sub_24F92B218();
}

uint64_t sub_24EA7A6DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7A75C@<X0>(char *a1@<X8>)
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

void sub_24EA7A7BC(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EA7A854()
{

  return swift_deallocClassInstance();
}

char *AdInteractionAction.__allocating_init(title:adActionMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *(a3 + 48);
  v14 = *(a3 + 50);
  v15 = &v12[OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 1) = v16;
  *(v15 + 2) = *(a3 + 32);
  v15[50] = v14;
  *(v15 + 24) = v13;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], a4, v18);
  v20 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
  v22 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v39, &v36);
  if (*(&v37 + 1))
  {
    v24 = v37;
    *v23 = v36;
    *(v23 + 1) = v24;
    *(v23 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = v8;
    v27 = a4;
    v28 = a1;
    v29 = a2;
    v30 = v25;
    v31 = v9;
    v33 = v32;
    (*(v31 + 8))(v11, v26);
    v35[1] = v30;
    v35[2] = v33;
    a2 = v29;
    a1 = v28;
    a4 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  (*(v19 + 8))(a4, v18);
  sub_24E601704(v39, &qword_27F235830);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *AdInteractionAction.init(title:adActionMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  v32 = sub_24F91F6B8();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v15) = *(a3 + 48);
  v17 = *(a3 + 50);
  v18 = v4 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics;
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  v18[50] = v17;
  *(v18 + 24) = v15;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  (*(v14 + 16))(v16, a4, v13);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v43, &v37);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v31 = v12;
    v23 = a4;
    v25 = v24;
    (*(v7 + 8))(v9, v32);
    v35 = v22;
    v36 = v25;
    a4 = v23;
    v12 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  (*(v14 + 8))(a4, v13);
  sub_24E601704(v43, &qword_27F235830);
  v26 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v42;
  v27 = v41;
  *v26 = v40;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v12, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v34;
  v4[2] = v33;
  v4[3] = v28;
  v4[4] = 0;
  v4[5] = 0;
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v4;
}

uint64_t AdInteractionAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = v3;
  v40 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v42 = sub_24F928388();
  v45 = *(v42 - 8);
  v14 = MEMORY[0x28223BE20](v42);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v44 = a1;
  sub_24F928398();
  v19 = *(v7 + 16);
  v55 = a2;
  v19(v13, a2, v6);
  v20 = v41;
  AdvertActionMetrics.init(deserializing:using:)(v18, v13, v53);
  if (v20)
  {

    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v22 = 0x6E6F697463416461;
    v22[1] = 0xEF7363697274654DLL;
    v22[2] = v40;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    (*(v7 + 8))(v55, v6);
    (*(v45 + 8))(v44, v42);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v7;
    v51[0] = v53[0];
    v51[1] = v53[1];
    *v52 = v54[0];
    *&v52[15] = *(v54 + 15);
    v40 = 0;
    sub_24EA7B7CC(v51);
    v23 = v44;
    sub_24F928398();
    v24 = v6;
    v25 = v55;
    v19(v37, v55, v24);
    sub_24EA7B820();
    sub_24F929548();
    v26 = v49;
    v27 = v50;
    v21 = v43;
    v28 = v43 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics;
    v29 = v47;
    *v28 = v46;
    *(v28 + 1) = v29;
    *(v28 + 2) = v48;
    v28[50] = v27;
    *(v28 + 24) = v26;
    v30 = v38;
    v31 = v42;
    (*(v45 + 16))(v38, v23, v42);
    v32 = v39;
    v19(v39, v25, v24);
    v33 = v40;
    v34 = Action.init(deserializing:using:)(v30, v32);
    if (!v33)
    {
      v21 = v34;
    }

    v41[1](v55, v24);
    (*(v45 + 8))(v23, v31);
  }

  return v21;
}

uint64_t AdInteractionAction.adActionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 40);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 50);
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  return sub_24E68FE2C(v2, v3);
}

uint64_t AdInteractionAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  sub_24E687F7C(*(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 8));
  return v0;
}

uint64_t AdInteractionAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  sub_24E687F7C(*(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 8));

  return swift_deallocClassInstance();
}

unint64_t sub_24EA7B820()
{
  result = qword_27F2266F8;
  if (!qword_27F2266F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2266F8);
  }

  return result;
}

uint64_t type metadata accessor for AdInteractionAction()
{
  result = qword_27F226700;
  if (!qword_27F226700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::ProductMedia::DescriptionPlacement_optional __swiftcall ProductMedia.DescriptionPlacement.init(rawValue:)(Swift::String rawValue)
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

uint64_t ProductMedia.DescriptionPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_24EA7B9DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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