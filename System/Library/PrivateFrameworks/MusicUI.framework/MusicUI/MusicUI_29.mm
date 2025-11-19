uint64_t sub_2169798F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v94 = a4;
  v97 = a3;
  v93 = a2;
  v101 = a1;
  v92 = sub_21700C924();
  v90 = *(v92 - 1);
  MEMORY[0x28223BE20](v92);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v98 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v86 - v10;
  v11 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_21700D284();
  v104 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700C1E4();
  v16 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2170067A4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v20 + 16);
  v91(v23, v101, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x277D2A400])
  {
    (*(v20 + 96))(v23, v19);
    v25 = *(v16 + 32);
    v88 = v15;
    v87 = v18;
    v26 = v23;
    v27 = v95;
    v25(v18, v26, v95);
    v92 = *(v104 + 16);
    v28 = v96;
    v92(v15, v96, v102);
    v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0) + 48)];
    (*(v16 + 16))(v13, v18, v27);
    v30 = v97;
    *v29 = v93;
    *(v29 + 1) = v30;
    swift_storeEnumTagMultiPayload();
    v31 = type metadata accessor for FlowAction(0);
    v32 = (v28 + v31[6]);
    v33 = v32[1];
    v101 = *v32;
    sub_2166A6E54(v28 + v31[10], v103, &qword_27CABF7B0);
    v34 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v34);
    v35 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v35);
    sub_2166A6E54(v28 + v31[9], v98, &qword_27CAB6FD0);
    v36 = v94;
    v37 = &v94[v31[10]];
    *(v37 + 32) = 0;
    *v37 = 0u;
    *(v37 + 16) = 0u;
    v38 = v88;
    v39 = v102;
    v92(v36, v88, v102);
    sub_21697A49C(v13, &v36[v31[5]]);
    sub_21700DF14();
    sub_21700DF14();
    sub_21697A500(v13, type metadata accessor for FlowAction.Destination);
    (*(v104 + 8))(v38, v39);
    (*(v16 + 8))(v87, v95);
    v40 = &v36[v31[6]];
    *v40 = v101;
    *(v40 + 1) = v33;
    v36[v31[7]] = 0;
    sub_2167A66B4(v103, v37);
    sub_21678818C(v99, &v36[v31[8]], &qword_27CABA820);
    sub_21678818C(v100, &v36[v31[11]], &qword_27CAB6BF0);
    v41 = &v36[v31[9]];
    v42 = v98;
    return sub_21678818C(v42, v41, &qword_27CAB6FD0);
  }

  v95 = v11;
  v44 = v13;
  v45 = v104;
  v46 = v102;
  v47 = v96;
  if (v24 == *MEMORY[0x277D2A418] || v24 == *MEMORY[0x277D2A438] || v24 == *MEMORY[0x277D2A3C8] || v24 == *MEMORY[0x277D2A428] || v24 == *MEMORY[0x277D2A388] || v24 == *MEMORY[0x277D2A408] || v24 == *MEMORY[0x277D2A3B0] || v24 == *MEMORY[0x277D2A3B8])
  {
    goto LABEL_27;
  }

  if (v24 == *MEMORY[0x277D2A440])
  {
    (*(v20 + 96))(v23, v19);
    v57 = v89;
    v56 = v90;
    (*(v90 + 32))(v89, v23, v92);
    v58 = *(v45 + 16);
    v87 = (v45 + 16);
    v91 = v58;
    v88 = v15;
    v59 = v47;
    v60 = v47;
    v61 = v46;
    (v58)(v15, v60, v46);
    v62 = v44;
    v63 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8) + 48)];
    (*(v56 + 16))(v44, v57, v92);
    v64 = v97;
    *v63 = v93;
    *(v63 + 1) = v64;
    swift_storeEnumTagMultiPayload();
    v65 = type metadata accessor for FlowAction(0);
    v66 = (v59 + v65[6]);
    v67 = v66[1];
    v101 = *v66;
    sub_2166A6E54(v59 + v65[10], v103, &qword_27CABF7B0);
    v68 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v68);
    v69 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v69);
    v70 = v98;
    sub_2166A6E54(v59 + v65[9], v98, &qword_27CAB6FD0);
    v71 = v94;
    v72 = &v94[v65[10]];
    *(v72 + 32) = 0;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    v73 = v88;
    (v91)(v71, v88, v61);
    sub_21697A49C(v62, &v71[v65[5]]);
    sub_21700DF14();
    sub_21700DF14();
    sub_21697A500(v62, type metadata accessor for FlowAction.Destination);
    (*(v104 + 8))(v73, v61);
    (*(v90 + 8))(v89, v92);
    v74 = &v71[v65[6]];
    *v74 = v101;
    *(v74 + 1) = v67;
    v71[v65[7]] = 0;
    sub_2167A66B4(v103, v72);
    sub_21678818C(v99, &v71[v65[8]], &qword_27CABA820);
    sub_21678818C(v100, &v71[v65[11]], &qword_27CAB6BF0);
    v41 = &v71[v65[9]];
    v42 = v70;
    return sub_21678818C(v42, v41, &qword_27CAB6FD0);
  }

  v75 = v24 == *MEMORY[0x277D2A450] || v24 == *MEMORY[0x277D2A3C0];
  v76 = v75 || v24 == *MEMORY[0x277D2A3D0];
  v77 = v76 || v24 == *MEMORY[0x277D2A3F8];
  v78 = v77 || v24 == *MEMORY[0x277D2A430];
  v79 = v78 || v24 == *MEMORY[0x277D2A458];
  v80 = v79 || v24 == *MEMORY[0x277D2A448];
  v81 = v80 || v24 == *MEMORY[0x277D2A420];
  v82 = v81 || v24 == *MEMORY[0x277D2A3D8];
  v83 = v82 || v24 == *MEMORY[0x277D2A3E0];
  if (v83 || v24 == *MEMORY[0x277D2A410])
  {
LABEL_27:
    (*(v20 + 8))(v23, v19);
    type metadata accessor for FlowActionMappingError();
    sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError);
    swift_allocError();
    (v91)(v55, v101, v19);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for FlowActionMappingError();
    sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError);
    swift_allocError();
    (v91)(v85, v101, v19);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_21697A49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697A500(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for FlowActionMappingError()
{
  result = qword_27CABE250;
  if (!qword_27CABE250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21697A5A0()
{
  result = type metadata accessor for FlowAction.Destination(319);
  if (v1 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *BannerView.init(banner:)()
{
  v1 = v0;
  v2 = sub_217007754();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73D20);
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2166A85FC(0x6E61622874696E69, 0xED0000293A72656ELL, &v17);
    _os_log_impl(&dword_216679000, v4, v5, "💬 %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x21CEA1440](v7, -1, -1);
    MEMORY[0x21CEA1440](v6, -1, -1);
  }

  sub_217007744();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE260));
  *&v1[OBJC_IVAR____TtC7MusicUI10BannerView_contentView] = sub_2170087C4();
  v9 = type metadata accessor for BannerView();
  v18.receiver = v1;
  v18.super_class = v9;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC7MusicUI10BannerView_contentView;
  v12 = *&v10[OBJC_IVAR____TtC7MusicUI10BannerView_contentView];
  v13 = v10;
  [v13 addSubview_];
  v14 = *&v10[v11];
  [v13 bounds];
  [v14 setFrame_];

  v15 = *&v10[v11];
  [v15 setAutoresizingMask_];

  return v13;
}

void sub_21697AA6C(void *a1)
{
  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73D20);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_2166A85FC(0x654372656E6E6162, 0xEE00776569566C6CLL, &v16);
    _os_log_impl(&dword_216679000, v5, v6, "💬 %{public}s: trying to set bannerCellView", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  [a1 removeFromSuperview];
  v9 = *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView];
  if (v9)
  {
    v10 = v9;
    v11 = sub_217007C84();
    v12 = sub_21700EDA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x654372656E6E6162, 0xEE00776569566C6CLL, &v16);
      _os_log_impl(&dword_216679000, v11, v12, "💬 %{public}s: adding bannerCellView", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v15 = [v2 contentView];
    [v15 addSubview_];
  }
}

void sub_21697AD14(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView);
  *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView) = a1;
  v2 = a1;
  sub_21697AA6C(v3);
}

uint64_t sub_21697AD74(uint64_t result)
{
  if (!*(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner))
  {
    return result;
  }

  if (result)
  {
    type metadata accessor for BannerProvider.Banner();
    swift_retain_n();
    v2 = static BannerProvider.Banner.== infix(_:_:)();

    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_2170076B4();

  v3 = objc_allocWithZone(type metadata accessor for BannerView());

  v4 = BannerView.init(banner:)();
  sub_21697AD14(v4);
LABEL_8:
}

uint64_t sub_21697AE54(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner);
  *(v1 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner) = a1;

  sub_21697AD74(v2);
}

uint64_t sub_21697AEB4()
{

  return sub_21697AE54(v0);
}

void *sub_21697AEDC(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    [v5 setNeedsLayout];
    [v4 bounds];
    Width = CGRectGetWidth(v19);
    v7 = OUTLINED_FUNCTION_5_47();
    [v7 layoutMargins];
    v9 = v8;

    v10 = Width - v9;
    v11 = OUTLINED_FUNCTION_5_47();
    [v11 layoutMargins];
    v13 = v12;

    [v5 sizeThatFits_];
    v14 = OUTLINED_FUNCTION_5_47();
    [v14 layoutMargins];

    v15 = OUTLINED_FUNCTION_5_47();
    OUTLINED_FUNCTION_2_62(v15);

    [a1 frame];
    [a1 setFrame_];
    v16 = a1;
  }

  else
  {
    v17 = a1;
  }

  return a1;
}

void sub_21697B094()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for BannerCell();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView;
  v2 = *&v0[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView];
  if (v2)
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_1_80();
    [v4 bounds];

    v5 = OUTLINED_FUNCTION_0_94();
    [v6 v7];

    v8 = *&v0[v1];
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_1_80();
      [v10 layoutMargins];

      v11 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v11);

      [v0 bounds];
      CGRectGetWidth(v20);
      v12 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v12);

      v13 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v13);

      [v0 bounds];
      CGRectGetHeight(v21);
      v14 = OUTLINED_FUNCTION_1_80();
      OUTLINED_FUNCTION_2_62(v14);

      v15 = OUTLINED_FUNCTION_1_80();
      [v15 layoutMargins];

      v16 = OUTLINED_FUNCTION_0_94();
      [v17 v18];
    }
  }
}

id BannerCell.init(frame:)()
{
  OUTLINED_FUNCTION_4_15();
  *(v0 + OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView) = 0;
  *(v0 + OBJC_IVAR____TtC7MusicUI10BannerCell_banner) = 0;
  v5 = type metadata accessor for BannerCell();
  v1 = OUTLINED_FUNCTION_3_13();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id BannerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BannerCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_bannerCellView] = 0;
  *&v1[OBJC_IVAR____TtC7MusicUI10BannerCell_banner] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BannerCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_21697B430(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21697B5C0()
{
  result = type metadata accessor for TextListComponentModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21697B648@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE290);
  return sub_21697B698(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_21697B698@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE298);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v39 = &v31[-v5];
  v6 = type metadata accessor for TextListComponentModel();
  v37 = a1;
  v7 = qword_27CAB5AF0;
  sub_21700DF14();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_21700A094();
  v10 = v9;
  v12 = v11;

  if (qword_27CAB5AF8 != -1)
  {
    swift_once();
  }

  v13 = sub_217009FA4();
  v33 = v14;
  v34 = v13;
  v15 = v14;
  v17 = v16;
  v35 = v18;
  sub_21678817C(v8, v10, v12 & 1);

  sub_21700B3C4();
  sub_217008BB4();
  v19 = v17 & 1;
  v49[128] = v17 & 1;
  v32 = v17 & 1;
  v45[0] = *(v37 + *(v6 + 28));
  swift_getKeyPath();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2A0);
  type metadata accessor for TextListView.Subsection(0);
  sub_2166D9530(&qword_27CABE2A8, &qword_27CABE2A0);
  sub_21697CE20(&qword_27CABE2B0, type metadata accessor for TextListView.Subsection);
  v20 = v39;
  sub_21700B154();
  v21 = v38;
  v22 = *(v38 + 16);
  v23 = v40;
  v24 = v36;
  v22(v40, v20, v36);
  v44[0] = v13;
  v44[1] = v15;
  LOBYTE(v44[2]) = v19;
  *(&v44[2] + 1) = *v43;
  HIDWORD(v44[2]) = *&v43[3];
  v25 = v21;
  v26 = v35;
  v44[3] = v35;
  memcpy(&v44[4], v42, 0x70uLL);
  v27 = v41;
  memcpy(v41, v44, 0x90uLL);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2B8);
  v22(&v27[*(v28 + 48)], v23, v24);
  sub_216681B64(v44, v45, &qword_27CABE2C0);
  v29 = *(v25 + 8);
  v29(v20, v24);
  v29(v23, v24);
  v45[0] = v34;
  v45[1] = v33;
  v46 = v32;
  *v47 = *v43;
  *&v47[3] = *&v43[3];
  v48 = v26;
  memcpy(v49, v42, 0x70uLL);
  return sub_21669987C(v45, &qword_27CABE2C0);
}

uint64_t sub_21697BB3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for TextListView.Subsection(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v8[6]);
  *v10 = v4;
  v10[1] = v3;
  *(a2 + v8[7]) = v7;
  v11 = (a2 + v8[8]);
  *v11 = v6;
  v11[1] = v5;
  sub_21700DF14();

  return sub_21700DF14();
}

void *sub_21697BC34@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TextListView.Subsection(0);
  v3 = (v1 + v2[6]);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v1 + v2[7]);
  v7 = (v1 + v2[8]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_21700DF14();
  v11 = sub_21700AD34();
  if (sub_21697C0B0())
  {
    v54[0] = v9;
    v54[1] = v8;
    v54[2] = 0;
    v54[3] = v10;
    v54[4] = v11;
    v12 = OUTLINED_FUNCTION_0_95();
    sub_2167770D0(v12, v13, v14, v10);

    sub_21697C580(v5, v4, v6, v54, v55);
    v15 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v15, v16, v17, v10);

    v18 = sub_217009D54();
    KeyPath = swift_getKeyPath();
    sub_21700B3C4();
    OUTLINED_FUNCTION_3_69();
    __src[0] = v55[0];
    __src[1] = v55[1];
    __src[2] = v55[2];
    __src[3] = v55[3];
    *&__src[4] = KeyPath;
    *(&__src[4] + 1) = v18;
    memcpy(__dst, __src, 0xC0uLL);
    sub_21697D368(__dst);
    memcpy(v56, __dst, 0x159uLL);
    sub_216681B64(__src, v48, &qword_27CABE2F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F0);
    OUTLINED_FUNCTION_2_63();
    sub_21697D200(v20, &qword_27CABE2F8, &unk_21702E750, v21);
    OUTLINED_FUNCTION_1_81();
    sub_21697D200(v22, &qword_27CABE2F0, &unk_21702E748, v23);
    OUTLINED_FUNCTION_4_49();
    sub_217009554();
    v24 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v24, v25, v26, v10);

    v27 = &qword_27CABE2F8;
  }

  else
  {
    v28 = sub_217009184();
    v51[0] = v9;
    v51[1] = v8;
    v51[2] = 0;
    v51[3] = v10;
    v51[4] = v11;
    v53 = 1;
    v29 = OUTLINED_FUNCTION_0_95();
    sub_2167770D0(v29, v30, v31, v10);

    sub_21697C648(v5, v4, v6, v51, v56);
    memcpy(v54, v56, sizeof(v54));
    memcpy(v55, v56, sizeof(v55));
    v46 = v10;
    sub_216681B64(v54, __dst, &qword_27CABE2E8);
    sub_21669987C(v55, &qword_27CABE2E8);
    v32 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v32, v33, v34, v10);

    memcpy(&v52[7], v54, 0xC0uLL);
    v35 = v53;
    v36 = sub_217009D54();
    v37 = swift_getKeyPath();
    sub_21700B3C4();
    OUTLINED_FUNCTION_3_69();
    __src[0] = v28;
    LOBYTE(__src[1]) = v35;
    memcpy(&__src[1] + 1, v52, 0xC7uLL);
    *(&__src[13] + 1) = v37;
    *&__src[14] = v36;
    memcpy(__dst, __src, 0x158uLL);
    sub_21697D08C(__dst);
    memcpy(v56, __dst, 0x159uLL);
    sub_216681B64(__src, v48, &qword_27CABE2F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2F0);
    OUTLINED_FUNCTION_2_63();
    sub_21697D200(v38, &qword_27CABE2F8, &unk_21702E750, v39);
    OUTLINED_FUNCTION_1_81();
    sub_21697D200(v40, &qword_27CABE2F0, &unk_21702E748, v41);
    OUTLINED_FUNCTION_4_49();
    sub_217009554();
    v42 = OUTLINED_FUNCTION_0_95();
    sub_2167C4DF0(v42, v43, v44, v46);

    v27 = &qword_27CABE2F0;
  }

  sub_21669987C(__src, v27);
  memcpy(v56, v48, 0x159uLL);
  return memcpy(a1, v56, 0x159uLL);
}

uint64_t sub_21697C0B0()
{
  v0 = sub_2170098A4();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = sub_217008844();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C0C570(v17, v18, v19, v20, v21, v22, v23, v24, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v25 = sub_217008834();
  (*(v14 + 8))(v16, v13);
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for TextListView.Subsection(0);
  sub_216C0C900();
  v26 = v36;
  (*(v36 + 104))(v9, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v0);
  v27 = *(v2 + 48);
  sub_216681B64(v12, v4, &qword_27CAB8600);
  sub_216681B64(v9, &v4[v27], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
  {
    v29 = v35;
    sub_216681B64(v4, v35, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v4[v27], 1, v0) != 1)
    {
      v31 = v34;
      (*(v26 + 32))(v34, &v4[v27], v0);
      sub_21697CE20(&qword_280E2A858, MEMORY[0x277CE0570]);
      v28 = sub_21700E494();
      v32 = *(v26 + 8);
      v32(v31, v0);
      sub_21669987C(v9, &qword_27CAB8600);
      sub_21669987C(v12, &qword_27CAB8600);
      v32(v29, v0);
      sub_21669987C(v4, &qword_27CAB8600);
      return v28 & 1;
    }

    sub_21669987C(v9, &qword_27CAB8600);
    sub_21669987C(v12, &qword_27CAB8600);
    (*(v26 + 8))(v29, v0);
    goto LABEL_7;
  }

  sub_21669987C(v9, &qword_27CAB8600);
  sub_21669987C(v12, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v4[v27], 1, v0) != 1)
  {
LABEL_7:
    sub_21669987C(v4, &qword_27CAB8708);
LABEL_8:
    v28 = 0;
    return v28 & 1;
  }

  sub_21669987C(v4, &qword_27CAB8600);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_21697C580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[4];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 32) = v6;
  *(a5 + 40) = v7;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  sub_21700DF14();
  sub_2167770D0(v5, v6, v7, v8);

  sub_21700DF14();
  sub_2167770D0(v5, v6, v7, v8);

  sub_2167C4DF0(v5, v6, v7, v8);
}

uint64_t sub_21697C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_21700B3D4();
  sub_2170083C4();
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20;
  KeyPath = swift_getKeyPath();
  sub_21700DF14();
  sub_21700B3B4();
  sub_2170083C4();
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  v13 = a4[4];
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3;
  __src[8] = *(&v20 + 1);
  __src[9] = KeyPath;
  *(&__src[6] + 1) = *&v17[32];
  *(&__src[4] + 1) = *&v17[16];
  *(&__src[2] + 1) = *v17;
  LOBYTE(__src[10]) = 2;
  memcpy(__dst, __src, 0x51uLL);
  memcpy(a5, __dst, 0x58uLL);
  *(a5 + 88) = 0;
  *(a5 + 96) = 1;
  *(a5 + 104) = v21;
  *(a5 + 112) = v22;
  *(a5 + 120) = v23;
  *(a5 + 128) = v24;
  *(a5 + 136) = v25;
  *(a5 + 152) = v9;
  *(a5 + 160) = v10;
  *(a5 + 168) = v11;
  *(a5 + 176) = v12;
  *(a5 + 184) = v13;
  sub_2167770D0(v9, v10, v11, v12);

  sub_216681B64(__src, v28, &qword_27CABE360);
  sub_2167770D0(v9, v10, v11, v12);

  sub_2167C4DF0(v9, v10, v11, v12);

  v28[0] = a1;
  v28[1] = a2;
  v29 = a3;
  v30 = *v17;
  v31 = *&v17[16];
  *v32 = *&v17[32];
  *&v32[15] = *(&v20 + 1);
  v33 = KeyPath;
  v34 = 2;
  return sub_21669987C(v28, &qword_27CABE360);
}

void sub_21697C8A4(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_217005C64();
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    sub_21700DF14();
    if (a2)
    {
      sub_21697CA00();

      sub_21700A164();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    sub_2167C4D74();
    sub_217009554();
    v9 = v11;
    v7 = v10;
    v8 = v12;
  }

  else
  {
    v7 = 0uLL;
    v8 = -1;
    v9 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 16) = v9;
  *(a3 + 32) = v8;
}

uint64_t sub_21697CA00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE378);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE380);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE388);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE390);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE398);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = sub_217005CC4();
  MEMORY[0x28223BE20](v18 - 8);
  sub_21700DF14();
  sub_217005CB4();
  sub_217005C74();
  v19 = sub_217009FC4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  v20 = sub_217009FD4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
  v21 = sub_217009FE4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
  v22 = sub_217009FB4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_217009FF4();
  v23 = sub_21700A004();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v23);
  sub_216681B64(v17, v14, &qword_27CABE398);
  sub_21697D480();
  sub_217005C84();
  return sub_21669987C(v17, &qword_27CABE398);
}

uint64_t sub_21697CDC8(uint64_t a1)
{
  result = sub_21697CE20(qword_280E444E0, type metadata accessor for TextListView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21697CE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21697CE68()
{
  result = sub_217009E14();
  qword_27CABE280 = result;
  return result;
}

uint64_t sub_21697CE88()
{
  result = sub_217009D94();
  qword_27CABE288 = v1;
  return result;
}

uint64_t sub_21697CEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextListComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697CF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextListComponentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21697CFC4()
{
  sub_216833F44();
  if (v0 <= 0x3F)
  {
    sub_2167FCA6C();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21697D098()
{
  result = qword_27CABE308;
  if (!qword_27CABE308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE310);
    sub_21697D150();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE308);
  }

  return result;
}

unint64_t sub_21697D150()
{
  result = qword_27CABE318;
  if (!qword_27CABE318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE320);
    sub_2166D9530(&qword_27CABE328, &qword_27CABE330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE318);
  }

  return result;
}

uint64_t sub_21697D200(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21697D284()
{
  result = qword_27CABE340;
  if (!qword_27CABE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE348);
    sub_2166D9530(&qword_27CABE350, &qword_27CABE358);
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE340);
  }

  return result;
}

unint64_t sub_21697D380()
{
  result = qword_27CABE368;
  if (!qword_27CABE368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE370);
    sub_21697D200(&qword_27CABE300, &qword_27CABE2F8, &unk_21702E750, sub_21697D098);
    sub_21697D200(&qword_27CABE338, &qword_27CABE2F0, &unk_21702E748, sub_21697D284);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE368);
  }

  return result;
}

unint64_t sub_21697D480()
{
  result = qword_27CABE3A0;
  if (!qword_27CABE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3A0);
  }

  return result;
}

unint64_t sub_21697D4D4()
{
  result = qword_27CABE3A8;
  if (!qword_27CABE3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE3B0);
    sub_21697D558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3A8);
  }

  return result;
}

unint64_t sub_21697D558()
{
  result = qword_27CABE3B8;
  if (!qword_27CABE3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE3C0);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3B8);
  }

  return result;
}

uint64_t ReferrerInfo.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  sub_21700CD34();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_21700CE04();
  v11 = sub_21700CDB4();
  v13 = v12;
  v14 = sub_21700CF34();
  (*(*(v14 - 8) + 8))(a2, v14);
  v10(a1, v6);
  v10(v9, v6);
  result = type metadata accessor for ReferrerInfo();
  v16 = (a3 + *(result + 20));
  *v16 = v11;
  v16[1] = v13;
  return result;
}

JSValue __swiftcall ReferrerInfo.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_2167DE934(v2, v6);
    v9 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
    {
      sub_216846CF0(v6);
      v10 = 0;
    }

    else
    {
      v11 = sub_217005DE4();
      v13 = v12;
      (*(*(v9 - 8) + 8))(v6, v9);
      v17 = v11;
      v18 = v13;
      v10 = sub_21700DD04();
    }

    sub_2166F1F64(v10);
    v14 = (v2 + *(type metadata accessor for ReferrerInfo() + 20));
    v15 = v14[1];
    if (v15)
    {
      v17 = *v14;
      v18 = v15;
      sub_21700DF14();
      v16 = sub_21700DD04();
    }

    else
    {
      v16 = 0;
    }

    sub_2166F1F64(v16);
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for TextAlignment()
{
  return &type metadata for TextAlignment;
}

{
  return &type metadata for TextAlignment;
}

uint64_t sub_21697DAF8(char a1, char a2)
{
  v5 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_82();
  if (a2)
  {
    return 0x2010000u >> (8 * a1);
  }

  sub_217007C94();
  v10 = sub_217007C84();
  v11 = sub_21700ED84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    v14 = sub_21700F784();
    v16 = sub_2166A85FC(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE3D8);
    v17 = sub_21700E594();
    v19 = sub_2166A85FC(v17, v18, &v20);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_216679000, v10, v11, "Unrecognized value '%s' for type '%s'", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v13, -1, -1);
    MEMORY[0x21CEA1440](v12, -1, -1);
  }

  (*(v7 + 8))(v2, v5);
  return 0;
}

uint64_t sub_21697DD50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_82();
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  sub_21700D7A4();
  sub_21700CE04();
  v38 = v7;
  v39 = v5;
  v18 = v7;
  v19 = v9;
  v20 = a1;
  (*(v18 + 16))(v3, v40, v5);
  sub_21700D734();
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v11 + 8);
  v25 = v19;
  v24(v15, v19);
  if (v23)
  {
    v26 = type metadata accessor for ParagraphComponentModel();
    v41 = v21;
    v42 = v23;
    v27 = v43;
    sub_21700F364();
    sub_21700CE04();
    sub_21700CDB4();
    v28 = OUTLINED_FUNCTION_2_64();
    (v24)(v28);
    v29 = (v27 + v26[6]);
    *v29 = v17;
    v29[1] = v23;
    sub_21700CE04();
    sub_21700CDB4();
    v30 = OUTLINED_FUNCTION_2_64();
    (v24)(v30);
    v31 = (v27 + v26[7]);
    *v31 = v17;
    v31[1] = v23;
    sub_21700CE04();
    sub_21691E918();
    sub_21700CCC4();
    (*(v38 + 8))(v40, v39);
    v24(v20, v25);
    result = (v24)(v17, v25);
    *(v27 + v26[8]) = v41;
  }

  else
  {
    v33 = sub_21700E2E4();
    sub_21697E4C4(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v35 = v34;
    v36 = type metadata accessor for ParagraphComponentModel();
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = v36;
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v38 + 8))(v40, v39);
    v24(v20, v19);
    return sub_2167B0250(v43);
  }

  return result;
}

uint64_t sub_21697E208()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21697E254(char a1)
{
  if (!a1)
  {
    return 0x676E696461656CLL;
  }

  if (a1 == 1)
  {
    return 0x676E696C69617274;
  }

  return 0x64657265746E6563;
}

uint64_t sub_21697E2D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21697E208();
  *a1 = result;
  return result;
}

uint64_t sub_21697E300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21697E254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21697E3E0()
{
  result = qword_27CABE3C8;
  if (!qword_27CABE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3C8);
  }

  return result;
}

unint64_t sub_21697E438()
{
  result = qword_27CABE3D0;
  if (!qword_27CABE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE3D0);
  }

  return result;
}

uint64_t sub_21697E48C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21697DAF8(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21697E4C4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MusicMetrics(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_21697E5D8()
{
  result = type metadata accessor for LinkComponentModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21697E648(uint64_t a1, char a2)
{
  v7 = sub_217009254();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v9 = type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_37();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v3, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v18, v2);
    if (!*(v2 + *(v9 + 28) + 8))
    {
      if (qword_27CAB5B00 != -1)
      {
        OUTLINED_FUNCTION_6_44();
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_217009244();
    OUTLINED_FUNCTION_14_32();
    sub_21700ADB4();
    sub_217009214();

    sub_217009234();
    sub_217009224();

    OUTLINED_FUNCTION_14_32();
    sub_217009274();
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v2 = v12;
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v18, v12);
    if (!*&v12[*(v9 + 28) + 8])
    {
      sub_21697EA28();
    }

    sub_21700DF14();
    if ((a2 & 1) == 0)
    {

      if (a1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
        inited = swift_initStackObject();
        v21 = MEMORY[0x277D83B88];
        *(inited + 16) = xmmword_217013DA0;
        v22 = MEMORY[0x277D83C10];
        *(inited + 56) = v21;
        *(inited + 64) = v22;
        *(inited + 32) = a1;
        sub_216983808(30);
      }

      else
      {
        sub_21697EA28();
      }
    }

    sub_217009264();
LABEL_23:
    OUTLINED_FUNCTION_4_50();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v18, v4);
  if (!OUTLINED_FUNCTION_7_7(*(v9 + 28)))
  {
    if (qword_27CAB5B08 != -1)
    {
      OUTLINED_FUNCTION_7_48();
    }

    sub_21700DF14();
  }

  sub_21700DF14();
  sub_217009244();
  OUTLINED_FUNCTION_14_32();
  sub_21700ADB4();
  sub_217009214();

  sub_217009234();
  sub_217009224();

  OUTLINED_FUNCTION_14_32();
  sub_217009274();
  OUTLINED_FUNCTION_4_50();
  v2 = v4;
LABEL_24:
  sub_216980254(v2, type metadata accessor for LinkComponentModel);
  return OUTLINED_FUNCTION_10_41();
}

uint64_t sub_21697EA28()
{
  v4 = &unk_28293AC68;
  v5 = sub_2169802AC();
  v0 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  if ((v0 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_27CAB5F70 != -1)
  {
    swift_once();
  }

  if (byte_27CB22A28)
  {
    v1 = 56;
  }

  else
  {
LABEL_6:
    v1 = 322;
  }

  return sub_216983738(v1);
}

uint64_t sub_21697EAC4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_110();
  v6 = type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_37();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v3, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v15, v2);
    if (!*(v2 + *(v6 + 28) + 8))
    {
      if (qword_27CAB5B00 != -1)
      {
        OUTLINED_FUNCTION_6_44();
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v2 = v9;
    OUTLINED_FUNCTION_0_96();
    sub_21697FEAC(v15, v9);
    if (!*&v9[*(v6 + 28) + 8])
    {
      sub_21697EA28();
    }

    sub_21700DF14();
    if ((a2 & 1) == 0)
    {

      if (v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
        inited = swift_initStackObject();
        v18 = MEMORY[0x277D83B88];
        *(inited + 16) = xmmword_217013DA0;
        v19 = MEMORY[0x277D83C10];
        *(inited + 56) = v18;
        *(inited + 64) = v19;
        *(inited + 32) = v3;
        sub_216983808(30);
      }

      else
      {
        sub_21697EA28();
      }
    }

LABEL_22:
    sub_217009264();
    OUTLINED_FUNCTION_4_50();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v15, v4);
  if (!OUTLINED_FUNCTION_7_7(*(v6 + 28)))
  {
    if (qword_27CAB5B08 != -1)
    {
      OUTLINED_FUNCTION_7_48();
    }

    sub_21700DF14();
  }

  sub_21700DF14();
  sub_217009264();
  OUTLINED_FUNCTION_4_50();
  v2 = v4;
LABEL_23:
  sub_216980254(v2, type metadata accessor for LinkComponentModel);
  return OUTLINED_FUNCTION_10_41();
}

uint64_t sub_21697EDA8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkComponentModel();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for MediaButtonType(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v1, v12);
  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v12, v7);
  sub_21692E9E8(v7 + *(v4 + 32), a1);
  return OUTLINED_FUNCTION_5_48();
}

uint64_t sub_21697EE88@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkComponentModel();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for MediaButtonType(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v1, v12);
  OUTLINED_FUNCTION_0_96();
  sub_21697FEAC(v12, v7);
  sub_216788294(v7 + *(v4 + 28), a1);
  return OUTLINED_FUNCTION_5_48();
}

uint64_t sub_21697EF68()
{
  type metadata accessor for MediaButtonType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_1_83();
  sub_21697FE50(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x42656C6666756873;
  if (EnumCaseMultiPayload != 1)
  {
    v6 = 0x74747542676E6973;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7474754279616C70;
  }

  sub_216980254(v4, type metadata accessor for MediaButtonType);
  return v7;
}

uint64_t sub_21697F06C()
{
  result = sub_216983738(189);
  qword_27CABE3E0 = result;
  *algn_27CABE3E8 = v1;
  return result;
}

uint64_t sub_21697F094()
{
  result = sub_216983738(318);
  qword_27CABE3F0 = result;
  *algn_27CABE3F8 = v1;
  return result;
}

uint64_t sub_21697F0EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = sub_21700D8E4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7();
  v37 = v4 - v3;
  v5 = type metadata accessor for ContainerDetailMediaButton(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33[1] = v8;
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE488);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = (v33 - v12);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE490);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE498);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v34 = v33 - v18;
  sub_21697EDA8(v13);
  v19 = v10[11];
  v20 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v13 + v19, 1, 1, v20);
  v33[2] = type metadata accessor for ContainerDetailMediaButton;
  sub_21697FE50(v2, v9);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v33[0] = type metadata accessor for ContainerDetailMediaButton;
  sub_21697FEAC(v9, v22 + v21);
  v23 = v10[12];
  *(v13 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v24 = v13 + v10[13];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v13[5] = sub_21697FF08;
  v13[6] = v22;
  v13[7] = 0;
  v13[8] = 0;
  v25 = v2 + *(v6 + 28);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v42[0]) = v26;
  *(&v42[0] + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  LOBYTE(v42[0]) = v41[0];
  sub_2166D9530(&qword_27CABE4A0, &qword_27CABE488);
  sub_21697FF74();
  sub_21700A374();
  sub_216697664(v13, &qword_27CABE488);
  sub_21697FE50(v2, v9);
  v28 = swift_allocObject();
  sub_21697FEAC(v9, v28 + v21);
  v29 = &v16[*(v35 + 36)];
  *v29 = sub_21697FFC8;
  v29[1] = v28;
  sub_21697EAC4(0, 1);
  sub_216980034();
  v30 = v34;
  sub_21700A694();

  sub_216697664(v16, &qword_27CABE490);
  sub_21697EF68();
  memset(v42, 0, sizeof(v42));
  memset(v41, 0, sizeof(v41));
  v31 = v37;
  sub_21700D854();

  sub_216697664(v41, &unk_27CABF7A0);
  sub_216697664(v42, &unk_27CABF7A0);
  sub_216980198();
  sub_21700A204();
  (*(v38 + 8))(v31, v40);
  return sub_216697664(v30, &qword_27CABE498);
}

void *sub_21697F64C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170091A4();
  sub_21697E648(0, 1);
  v3 = sub_21700A154();
  v5 = v4;
  v7 = v6;
  v9 = v8 & 1;
  sub_216777114(v3, v4, v8 & 1);
  sub_21700DF14();
  sub_21678817C(v3, v5, v9);

  sub_21700B3B4();
  sub_217008BB4();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return memcpy((a1 + 88), __src, 0x70uLL);
}

uint64_t sub_21697F790()
{
  type metadata accessor for ContainerDetailMediaButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  return sub_21700AEC4();
}

uint64_t sub_21697F808@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_217009944();
  v4 = sub_217009954();
  v5 = sub_21697F954(a1, v4 & 1);
  v6 = sub_217009C84();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE4D0) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = sub_217009954();
  v9 = sub_21697FA34(a1, v8 & 1);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE4D8) + 36)) = v9;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE4E0) + 36));
  v11 = *(sub_217008B44() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_217009294();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #10.0 }

  *v10 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438);
  *&v10[*(result + 36)] = 256;
  return result;
}

uint64_t sub_21697F954(char a1, char a2)
{
  if (a1)
  {
    if (qword_27CAB5B20 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_27CAB5B10 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (qword_27CAB5B18 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_8:
}

uint64_t sub_21697FA34(char a1, char a2)
{
  if (a1)
  {
    if (qword_27CAB5B38 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_27CAB5B28 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (qword_27CAB5B30 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_8:
}

uint64_t sub_21697FB1C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = sub_2170091A4();
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE440);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE448);
  v4 = OUTLINED_FUNCTION_110();
  type metadata accessor for ContainerDetailMediaButton(v4);
  sub_2166D9530(&qword_27CABE450, &qword_27CABE448);
  sub_21697FD40(&qword_27CABE458, type metadata accessor for ContainerDetailMediaButton);
  sub_21697FD40(&qword_27CABE460, type metadata accessor for MediaButtonType);
  return sub_21700B164();
}

uint64_t sub_21697FC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21697FE50(a1, a2);
  v3 = a2 + *(type metadata accessor for ContainerDetailMediaButton(0) + 20);
  result = sub_21700AEA4();
  *v3 = v5;
  *(v3 + 8) = v6;
  return result;
}

uint64_t sub_21697FD40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21697FDB0()
{
  type metadata accessor for MediaButtonType(319);
  if (v0 <= 0x3F)
  {
    sub_216854FAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21697FE50(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_21697FEAC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void *sub_21697FF08@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContainerDetailMediaButton(0);
  OUTLINED_FUNCTION_36(v2);

  return sub_21697F64C(a1);
}

unint64_t sub_21697FF74()
{
  result = qword_27CABE4A8;
  if (!qword_27CABE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4A8);
  }

  return result;
}

uint64_t sub_21697FFC8()
{
  v0 = type metadata accessor for ContainerDetailMediaButton(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_21697F790();
}

unint64_t sub_216980034()
{
  result = qword_27CABE4B0;
  if (!qword_27CABE4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE488);
    sub_2166D9530(&qword_27CABE4A0, &qword_27CABE488);
    sub_21697FF74();
    swift_getOpaqueTypeConformance2();
    sub_216980144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4B0);
  }

  return result;
}

unint64_t sub_216980144()
{
  result = qword_27CABE4B8;
  if (!qword_27CABE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4B8);
  }

  return result;
}

unint64_t sub_216980198()
{
  result = qword_27CABE4C0;
  if (!qword_27CABE4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE498);
    sub_216980034();
    sub_21697FD40(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4C0);
  }

  return result;
}

uint64_t sub_216980254(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2169802AC()
{
  result = qword_27CABE4C8;
  if (!qword_27CABE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4C8);
  }

  return result;
}

uint64_t sub_21698033C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_21700AC44();
  *a3 = result;
  return result;
}

uint64_t sub_216980384()
{
  result = sub_21700AC54();
  qword_27CABE418 = result;
  return result;
}

uint64_t sub_2169803A4()
{
  result = sub_21700AD64();
  qword_27CABE420 = result;
  return result;
}

uint64_t sub_2169803E0()
{
  result = sub_21700AD64();
  qword_27CABE428 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2169805AC()
{
  result = qword_27CABE4E8;
  if (!qword_27CABE4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE4E0);
    sub_216980664();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4E8);
  }

  return result;
}

unint64_t sub_216980664()
{
  result = qword_27CABE4F0;
  if (!qword_27CABE4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE4D8);
    sub_21698071C();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4F0);
  }

  return result;
}

unint64_t sub_21698071C()
{
  result = qword_27CABE4F8;
  if (!qword_27CABE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE4D0);
    sub_21697FD40(qword_27CABE500, MEMORY[0x277CDE278]);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE4F8);
  }

  return result;
}

uint64_t sub_216980804()
{
  sub_21700F8F4();
  sub_2167758CC(v2, *v0);
  return sub_21700F944();
}

uint64_t sub_216980844(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216980980(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216980B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for MusicAppDestinationContext(0);
  v5[8] = swift_task_alloc();
  v5[9] = *(a4 + 16);
  v5[10] = *(a4 + 24);
  v7 = type metadata accessor for PresentationItem.Destination();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for ModalActionModelDestinations.Destination();
  v5[15] = swift_task_alloc();
  sub_21700EA34();
  v5[16] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216980CBC, v9, v8);
}

uint64_t sub_216980CBC()
{
  v1 = v0[15];
  v2 = v0[3];

  v3 = type metadata accessor for PresentFullScreenCoverAction();
  sub_216981160(v2 + *(v3 + 20), v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 3u:
    case 5u:
      OUTLINED_FUNCTION_0_97();
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[11];
      v11 = v0[7];
      v10 = v0[8];
      v18 = v0[2];
      *v8 = v2;
      v8[1] = v12;
      swift_storeEnumTagMultiPayload();
      *(v10 + 32) = 0;
      *v10 = 0u;
      *(v10 + 16) = 0u;
      v13 = *(v11 + 20);
      v14 = sub_217005EF4();
      __swift_storeEnumTagSinglePayload(v10 + v13, 1, 1, v14);

      sub_216AF39A4();

      sub_2169811DC(v10, type metadata accessor for MusicAppDestinationContext);
      (*(v7 + 8))(v8, v9);
      v15 = *MEMORY[0x277D21CA8];
      v16 = sub_21700D2A4();
      (*(*(v16 - 8) + 104))(v18, v15, v16);

      v6 = v0[1];
      break;
    case 6u:
      type metadata accessor for PresentFullScreenCoverActionImplementation.Error();
      v4 = 1;
      goto LABEL_4;
    default:
      sub_2169811DC(v0[15], type metadata accessor for ModalActionModelDestinations.Destination);
      type metadata accessor for PresentFullScreenCoverActionImplementation.Error();
      v4 = 0;
LABEL_4:
      swift_getWitnessTable();
      swift_allocError();
      *v5 = v4;
      swift_willThrow();

      v6 = v0[1];
      break;
  }

  return v6();
}

uint64_t sub_216980F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2166DFAC0;

  return sub_216980B4C(a1, a2, a3, a4);
}

uint64_t sub_21698105C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21698109C()
{
  result = qword_27CAB8298;
  if (!qword_27CAB8298)
  {
    type metadata accessor for PresentFullScreenCoverAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8298);
  }

  return result;
}

uint64_t sub_2169810F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216981160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalActionModelDestinations.Destination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169811DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_21698123C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double sub_216981324@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v31 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(a4 + 8);
  v12 = *(v11 + 24);
  v13 = OUTLINED_FUNCTION_74_0();
  v14 = v12(v13);
  v15 = type metadata accessor for MappedSection(0);
  (*(a6 + 16))(v41, v14, *&a2[*(v15 + 32)], &a2[*(v15 + 24)], AssociatedTypeWitness, a6);

  v16 = OUTLINED_FUNCTION_74_0();
  v12(v16);
  v17 = a6;
  v18 = (*(a6 + 24))();
  v34 = v19;
  v35 = v18;
  v33 = v20;
  v32 = v21;

  v22 = OUTLINED_FUNCTION_74_0();
  v40 = v12(v22);
  sub_2167B7D58(v41, v39);
  v23 = *(a2 + 1);
  v42[0] = *a2;
  v42[1] = v23;
  v42[2] = 0;
  v42[3] = 0;
  v43 = 0;
  v24 = *(v11 + 32);
  sub_21700DF14();
  v25 = OUTLINED_FUNCTION_74_0();
  v38 = v24(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = *(v31 + 80);
  v26[4] = a4;
  v26[5] = *(v31 + 88);
  v26[6] = a5;
  v26[7] = v17;
  swift_getAssociatedTypeWitness();
  v27 = sub_21700E984();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  *&result = sub_216830064(&v40, v39, v35, v34, v33, v32, v42, v38, a7, sub_216981838, v26, v27).n128_u64[0];
  return result;
}

uint64_t sub_216981660(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v14 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 40);
  swift_unknownObjectRetain();
  v10(&v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_2166C24DC(v5, AssociatedTypeWitness);
  v11 = *(v3 + 8);
  v11(v5, AssociatedTypeWitness);
  sub_2166C24DC(v8, AssociatedTypeWitness);
  return (v11)(v8, AssociatedTypeWitness);
}

uint64_t sub_216981864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216981958();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2169818C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216981958();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21698192C()
{
  sub_216981958();
  sub_217009AF4();
  __break(1u);
}

unint64_t sub_216981958()
{
  result = qword_27CABE588;
  if (!qword_27CABE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE588);
  }

  return result;
}

void sub_2169819C0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5B0);
    v7 = sub_21700E594();
    v12[3] = MEMORY[0x277D837D0];
    v12[0] = v7;
    v12[1] = v8;
    v9 = a1;
    v10 = sub_2166F1E10(v12, a1);
    sub_2166F1F64(v10);
    v11 = MEMORY[0x277D225C8];
    a2[3] = v6;
    a2[4] = v11;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216981AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v135 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v140 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v145 = (v124 - v12);
  v148 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v143 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v132 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v133 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v137 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v138 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v142 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v146 = v124 - v25;
  v26 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  v131 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v136 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  v141 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  v37 = v124 - v36;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v150 = v38;
  v151 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v134 = v40;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  v139 = v42;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  v144 = v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_57();
  v47 = type metadata accessor for UserSocialProfileDescriptor(v46);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7();
  v51 = v50 - v49;
  v152 = a1;
  sub_21700CE04();
  v52 = a2;
  v53 = *(v28 + 16);
  (v53)(v37, v52, v26);
  v54 = v149;
  sub_2169827B4(v3, v37, v51);
  if (v54)
  {
    (*(v28 + 8))(v52, v26);
    return (*(v151 + 8))(v152, v150);
  }

  v127 = v53;
  v128 = v28 + 16;
  v130 = v26;
  v129 = v28;
  v149 = v52;
  sub_2169834C0(v51, v147, type metadata accessor for UserSocialProfileDescriptor);
  v56 = v144;
  sub_21700CE04();
  v57 = v145;
  sub_21700CD74();
  v59 = v151 + 8;
  v58 = *(v151 + 8);
  v60 = v56;
  v61 = v150;
  (v58)(v60, v150);
  OUTLINED_FUNCTION_20_24(v57);
  if (v62)
  {
    sub_216697664(v57, &qword_27CAB78D0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_98();
    sub_21668F0A8(v63, v64);
    OUTLINED_FUNCTION_4();
    v66 = v65;
    v67 = type metadata accessor for UserSocialProfileGraph(0);
    *v66 = 0x6565776F6C6C6F66;
    v66[1] = 0xE900000000000073;
    v66[2] = v67;
    OUTLINED_FUNCTION_2_12();
    (*(v68 + 104))(v66);
    swift_willThrow();
    v69 = OUTLINED_FUNCTION_8_42();
    v70(v69, v130);
    (v58)(v152, v61);
    v71 = 0;
    v72 = 0;
LABEL_11:
    v87 = v147;
    goto LABEL_12;
  }

  v144 = v58;
  v151 = v59;
  v126 = 0;
  v73 = v143;
  v74 = v143 + 32;
  v75 = v146;
  v76 = v57;
  v77 = v148;
  v145 = *(v143 + 32);
  v145(v146, v76, v148);
  v125 = *(v73 + 16);
  v125(v142, v75, v77);
  v78 = v130;
  (v127)(v141, v149, v130);
  v79 = type metadata accessor for ContentDescriptor();
  v80 = sub_21668F0A8(qword_280E40390, type metadata accessor for ContentDescriptor);
  v81 = v126;
  v82 = sub_21700E934();
  if (v81)
  {
    v83 = OUTLINED_FUNCTION_8_42();
    v84(v83, v78);
    v85 = OUTLINED_FUNCTION_6_45();
    v86(v85);
    (*(v73 + 8))(v146, v148);
    v71 = 0;
    v72 = 0;
    v87 = v147;
    goto LABEL_12;
  }

  v88 = v82;
  v126 = v80;
  v124[1] = v79;
  v141 = v73 + 16;
  v142 = v74;
  v89 = v145;
  v90 = type metadata accessor for UserSocialProfileGraph(0);
  *(v147 + *(v90 + 20)) = v88;
  v91 = v139;
  v92 = v152;
  sub_21700CE04();
  v93 = v140;
  sub_21700CD74();
  v94 = v150;
  v95 = v144;
  v144(v91);
  OUTLINED_FUNCTION_20_24(v93);
  if (v62)
  {
    sub_216697664(v93, &qword_27CAB78D0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_98();
    sub_21668F0A8(v96, v97);
    OUTLINED_FUNCTION_4();
    *v98 = 0xD000000000000010;
    v98[1] = 0x8000000217082700;
    v98[2] = v90;
    OUTLINED_FUNCTION_2_12();
    (*(v99 + 104))();
    swift_willThrow();
    v100 = OUTLINED_FUNCTION_8_42();
    v101(v100, v130);
    v95(v92, v94);
    (*(v143 + 8))(v146, v148);
    v72 = 0;
    v71 = 1;
    goto LABEL_11;
  }

  v139 = v90;
  v102 = v138;
  v103 = v148;
  v89(v138, v93, v148);
  v125(v137, v102, v103);
  OUTLINED_FUNCTION_13_30();
  v127();
  v104 = sub_21700E934();
  v105 = v129;
  v106 = v139;
  v87 = v147;
  *(v147 + *(v139 + 24)) = v104;
  v107 = v134;
  v108 = v152;
  sub_21700CE04();
  v109 = v135;
  sub_21700CD74();
  v110 = v144;
  (v144)(v107, v150);
  OUTLINED_FUNCTION_20_24(v109);
  if (!v62)
  {
    v117 = v133;
    v118 = v148;
    v145(v133, v109, v148);
    v125(v132, v117, v118);
    OUTLINED_FUNCTION_13_30();
    v127();
    v119 = sub_21700E934();
    (*(v105 + 8))(v110, v108);
    v120 = OUTLINED_FUNCTION_6_45();
    v121(v120);
    v122 = *(v143 + 8);
    v123 = v148;
    v122(v117, v148);
    v122(v138, v123);
    result = (v122)(v146, v123);
    *(v87 + *(v139 + 28)) = v119;
    return result;
  }

  sub_216697664(v109, &qword_27CAB78D0);
  sub_21700E2E4();
  OUTLINED_FUNCTION_0_98();
  sub_21668F0A8(v111, v112);
  OUTLINED_FUNCTION_4();
  *v113 = 0x7265776F6C6C6F66;
  v113[1] = 0xE900000000000073;
  v113[2] = v106;
  OUTLINED_FUNCTION_2_12();
  (*(v114 + 104))();
  swift_willThrow();
  (*(v105 + 8))(v149, v130);
  v110(v108, v150);
  v115 = *(v143 + 8);
  v116 = v148;
  v115(v138, v148);
  v115(v146, v116);
  v71 = 1;
  v72 = 1;
LABEL_12:
  result = sub_216983468(v87, type metadata accessor for UserSocialProfileDescriptor);
  if (v71)
  {
    type metadata accessor for UserSocialProfileGraph(0);
  }

  if (v72)
  {
    type metadata accessor for UserSocialProfileGraph(0);
  }

  return result;
}

uint64_t sub_2169827B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v72 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v79 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v76 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v74 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v73 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v71 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  v70 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v69 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = type metadata accessor for ContentDescriptor();
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  sub_21700CE04();
  v78 = v8;
  v34 = *(v8 + 16);
  v80 = v6;
  v34(v3, a2, v6);
  v35 = v77;
  ContentDescriptor.init(deserializing:using:)(v28, v3, v36, v37, v38, v39, v40, v41, v66, v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67));
  v42 = (v76 + 8);
  if (v35)
  {
    (*(v78 + 8))(a2, v80);
    return (*v42)(a1, v79);
  }

  else
  {
    v44 = v75;
    sub_2169834C0(v33, v75, type metadata accessor for ContentDescriptor);
    v67 = a1;
    v68 = a2;
    sub_21700CE04();
    v45 = sub_21700CDB4();
    v76 = 0;
    v46 = v45;
    v48 = v47;
    v77 = *v42;
    v77(v25, v79);
    if (!v48)
    {
      v46 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = type metadata accessor for UserSocialProfileDescriptor(0);
    v50 = (v44 + v49[5]);
    *v50 = v46;
    v50[1] = v48;
    type metadata accessor for Artwork();
    sub_21700CE04();
    v34(v72, v68, v80);
    sub_21668F0A8(&qword_280E2BF60, type metadata accessor for Artwork);
    v51 = v44;
    sub_21700D734();
    v52 = v70;
    sub_21700CE04();
    v53 = sub_21700CD44();
    v54 = v79;
    v55 = v77;
    v77(v52, v79);
    *(v51 + v49[7]) = v53 & 1;
    v56 = v71;
    sub_21700CE04();
    v57 = sub_21700CD44();
    v55(v56, v54);
    v58 = v55;
    v59 = v75;
    *(v75 + v49[8]) = v57 & 1;
    v60 = v73;
    v61 = v67;
    sub_21700CE04();
    v62 = sub_21700CD44();
    v58(v60, v54);
    *(v59 + v49[9]) = v62 & 1;
    sub_21700CE04();
    v63 = sub_21700CD44();
    (*(v78 + 8))(v68, v80);
    v64 = v77;
    v77(v61, v54);
    v65 = OUTLINED_FUNCTION_39();
    result = (v64)(v65);
    *(v59 + v49[10]) = v63 & 1;
  }

  return result;
}

uint64_t sub_216982D68()
{
  v1 = type metadata accessor for ContentDescriptor();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700E384();
  v7 = *(v0 + *(type metadata accessor for UserSocialProfileGraph(0) + 20));
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v6;
  }

  v9 = 0;
  v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v31 = *(v7 + 16);
  v32 = v7;
  v30 = v10;
  while (v9 < *(v7 + 16))
  {
    sub_21695BC04(v10 + *(v2 + 72) * v9, v5);
    v12 = *(v5 + 24);
    v11 = *(v5 + 32);
    sub_21700DF14();
    sub_216983468(v5, type metadata accessor for ContentDescriptor);
    if (v11)
    {
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v2;
        swift_isUniquelyReferenced_nonNull_native();
        v15 = OUTLINED_FUNCTION_39();
        v17 = sub_2166AF66C(v15, v16);
        if (__OFADD__(v6[2], (v18 & 1) == 0))
        {
          goto LABEL_21;
        }

        v19 = v17;
        v20 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118);
        if (sub_21700F554())
        {
          v21 = OUTLINED_FUNCTION_39();
          v23 = sub_2166AF66C(v21, v22);
          if ((v20 & 1) != (v24 & 1))
          {
            goto LABEL_23;
          }

          v19 = v23;
        }

        if (v20)
        {

          *(v6[7] + v19) = 0;
        }

        else
        {
          v6[(v19 >> 6) + 8] |= 1 << v19;
          v25 = (v6[6] + 16 * v19);
          *v25 = v12;
          v25[1] = v11;
          *(v6[7] + v19) = 0;
          v26 = v6[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_22;
          }

          v6[2] = v28;
        }

        v2 = v14;
        v8 = v31;
        v7 = v32;
        v10 = v30;
      }

      else
      {
      }
    }

    if (v8 == ++v9)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216983010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  if ((static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = type metadata accessor for UserSocialProfileDescriptor(0);
  v18 = v17[6];
  v19 = *(v13 + 48);
  sub_2169833F8(a1 + v18, v16);
  sub_2169833F8(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_19_4(v16);
  if (v26)
  {
    OUTLINED_FUNCTION_19_4(&v16[v19]);
    if (v26)
    {
      sub_216697664(v16, &qword_27CAB6D60);
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  sub_2169833F8(v16, v12);
  OUTLINED_FUNCTION_19_4(&v16[v19]);
  if (v26)
  {
    sub_216983468(v12, type metadata accessor for Artwork);
LABEL_22:
    v27 = &qword_27CABE598;
LABEL_23:
    sub_216697664(v16, v27);
LABEL_24:
    v25 = 0;
    return v25 & 1;
  }

  sub_2169834C0(&v16[v19], v8, type metadata accessor for Artwork);
  OUTLINED_FUNCTION_39();
  v29 = sub_21700C4A4();
  if ((v29 & 1) == 0)
  {
    sub_216983468(v8, type metadata accessor for Artwork);
    sub_216983468(v12, type metadata accessor for Artwork);
    v27 = &qword_27CAB6D60;
    goto LABEL_23;
  }

  v30 = sub_21688ADC8(&v12[*(v4 + 20)], v8 + *(v4 + 20));
  sub_216983468(v8, type metadata accessor for Artwork);
  sub_216983468(v12, type metadata accessor for Artwork);
  sub_216697664(v16, &qword_27CAB6D60);
  if ((v30 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v20 = v17[5];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v21 == *v23 && v22 == v23[1];
  if (!v24 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_12_35();
  if (!v26)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_12_35();
  if (!v26)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_12_35();
  if (!v26)
  {
    goto LABEL_24;
  }

  v25 = *(a1 + v17[10]) ^ *(a2 + v17[10]) ^ 1;
  return v25 & 1;
}

uint64_t sub_216983380(uint64_t a1)
{
  result = sub_21668F0A8(&qword_27CABE590, type metadata accessor for UserSocialProfileGraph);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169833F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216983468(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169834C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_216983558()
{
  type metadata accessor for UserSocialProfileDescriptor(319);
  if (v0 <= 0x3F)
  {
    sub_216690CDC(319, &qword_280E29F58, type metadata accessor for ContentDescriptor, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21698365C(uint64_t a1)
{
  *(a1 + 8) = sub_21698368C();
  result = sub_2169836E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21698368C()
{
  result = qword_280E37320[0];
  if (!qword_280E37320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E37320);
  }

  return result;
}

unint64_t sub_2169836E0()
{
  result = qword_27CABE5A8;
  if (!qword_27CABE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE5A8);
  }

  return result;
}

uint64_t sub_216983738(__int16 a1)
{
  sub_216C62094(a1);
  if (qword_280E29B20 != -1)
  {
    OUTLINED_FUNCTION_0_99();
  }

  sub_217005CA4();

  return sub_21700E724();
}

uint64_t sub_216983808(char a1)
{
  sub_216C640C8(a1);
  if (qword_280E29B20 != -1)
  {
    OUTLINED_FUNCTION_0_99();
  }

  v1 = sub_217005CA4();
  v3 = v2;

  v11[3] = sub_217006274();
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_217006254();
  v4 = sub_21700F9D4();

  v5 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v6 = sub_216983A5C(v1, v3, v11, v4);
  v7 = sub_21700E514();
  v9 = v8;

  v11[0] = v7;
  v11[1] = v9;
  return sub_21700E724();
}

id sub_216983944()
{
  sub_216983A18();
  result = sub_2169839B4();
  if (!result)
  {
    result = [objc_opt_self() mainBundle];
  }

  qword_280E739D0 = result;
  return result;
}

id sub_2169839B4()
{
  v0 = sub_21700E4D4();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

unint64_t sub_216983A18()
{
  result = qword_280E29B10;
  if (!qword_280E29B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B10);
  }

  return result;
}

id sub_216983A5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_21700E4D4();

  v8 = a3[3];
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_21700F7B4();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 initWithFormat:v7 locale:v13 arguments:a4];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_216983BF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v80 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v76 = v6;
  v21 = *(v6 + 16);
  v82 = v4;
  v77 = v21;
  v78 = v6 + 16;
  v21(v9, v85, v4);
  v79 = v9;
  sub_21700D734();
  v22 = a1;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v27 = *(v12 + 8);
  v26 = v12 + 8;
  v81 = v10;
  v28 = v27;
  v27(v17, v10);
  if (v25)
  {
    v29 = type metadata accessor for FlowcaseLockup();
    v83 = v23;
    v84 = v25;
    v30 = v80;
    sub_21700F364();
    OUTLINED_FUNCTION_6_46();
    v31 = v85;
    sub_21700D2E4();
    v74 = v26;
    v28(v20, v81);
    v32 = type metadata accessor for Artwork();
    sub_21700CE04();
    v77(v79, v31, v82);
    v33 = sub_2166D4668(&qword_280E2BF60, type metadata accessor for Artwork);
    v70 = v32;
    v71 = v33;
    sub_21700D734();
    OUTLINED_FUNCTION_6_46();
    sub_21700CDB4();
    v34 = OUTLINED_FUNCTION_0_100();
    v35 = v81;
    v28(v34, v81);
    OUTLINED_FUNCTION_2_65(v29[7]);
    sub_21700CE04();
    sub_21700CDB4();
    v36 = OUTLINED_FUNCTION_0_100();
    v28(v36, v35);
    OUTLINED_FUNCTION_2_65(v29[8]);
    v73 = v22;
    sub_21700CE04();
    sub_21700CDB4();
    v37 = OUTLINED_FUNCTION_0_100();
    v28(v37, v35);
    v75 = v28;
    OUTLINED_FUNCTION_2_65(v29[13]);
    sub_21700CE04();
    sub_21700CDB4();
    v38 = OUTLINED_FUNCTION_0_100();
    v28(v38, v35);
    OUTLINED_FUNCTION_2_65(v29[9]);
    sub_21700CE04();
    v77(v79, v85, v82);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v39 = OUTLINED_FUNCTION_0_100();
    v40 = v35;
    v41 = v35;
    v42 = v75;
    v75(v39, v41);
    v43 = v29[11];
    v69 = v29;
    OUTLINED_FUNCTION_2_65(v43);
    sub_21700CE04();
    v44 = v85;
    sub_21700D2E4();
    v42(v20, v40);
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_1_84();
    v45 = v73;
    sub_21700CE04();
    v77(v79, v44, v82);
    v46 = v69;
    sub_2166D4668(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    v47 = sub_21700CDB4();
    v48 = v75;
    v50 = v49;
    v51 = v81;
    v75(v20, v81);
    v52 = (v30 + v46[14]);
    *v52 = v47;
    v52[1] = v50;
    v53 = v72;
    sub_21700CE04();
    LOBYTE(v47) = sub_21700CD44();
    v48(v53, v51);
    *(v30 + v46[12]) = v47 & 1;
    sub_21700CE04();
    v54 = sub_21700CDB4();
    v56 = v55;
    v57 = OUTLINED_FUNCTION_5_49();
    v58(v57);
    v48(v45, v51);
    result = (v48)(v20, v51);
    v60 = (v30 + v46[17]);
    *v60 = v54;
    v60[1] = v56;
  }

  else
  {
    v61 = sub_21700E2E4();
    sub_2166D4668(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v62 = v28;
    v64 = v63;
    v65 = type metadata accessor for FlowcaseLockup();
    *v64 = 25705;
    v64[1] = 0xE200000000000000;
    v64[2] = v65;
    (*(*(v61 - 8) + 104))(v64, *MEMORY[0x277D22530], v61);
    swift_willThrow();
    v66 = OUTLINED_FUNCTION_5_49();
    v67(v66);
    v62(v22, v81);
    return sub_2167B0250(v80);
  }

  return result;
}

uint64_t sub_216984490()
{
  result = type metadata accessor for PageChangeInstruction();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216984590()
{

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for PageChangeInstruction();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_216984640()
{
  sub_216984590();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216984700(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21698473C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OpenSocialProfilePageAction.init(actionMetrics:destination:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(type metadata accessor for OpenSocialProfilePageAction() + 20);
  v8 = sub_21700D284();
  result = (*(*(v8 - 8) + 32))(&a3[v7], a1, v8);
  *a3 = v5;
  *(a3 + 1) = v6;
  return result;
}

uint64_t OpenSocialProfilePageAction.destination.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21700DF14();
}

uint64_t OpenSocialProfilePageAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenSocialProfilePageAction() + 20);
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2169848B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216984900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_216984AD8()
{
  sub_2166880FC();
  if (v0 <= 0x3F)
  {
    sub_21700C444();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216984B6C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unsigned __int8 *sub_216984BF4(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = result[v8];
        if (!result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *&result[v8];
        if (!*&result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&result[v8];
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v16 = *((&result[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_216984D48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216984F84(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    OUTLINED_FUNCTION_7();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_21700B4F4();
}

uint64_t sub_216985108()
{
  swift_getKeyPath();
  sub_21700A3D4();
}

uint64_t sub_216985178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v202 = a3;
  v195 = a1;
  v200 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80);
  v5 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v191 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v187 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  v186 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78);
  v11 = sub_2170089F4();
  v205 = v5;
  v12 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v189 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v188 = v15;
  v207 = v11;
  v190 = *(v11 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v183 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  v182 = v19;
  OUTLINED_FUNCTION_4_1();
  v20 = type metadata accessor for Artwork();
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v181 = v23 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70);
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v178 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v180 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  v179 = v28;
  OUTLINED_FUNCTION_4_1();
  v30 = v29;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v185 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v184 = v33;
  OUTLINED_FUNCTION_4_1();
  v199 = v34;
  v206 = v12;
  v35 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v193 = v36;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  v192 = v38;
  v194 = *(a2 - 8);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v174 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  v47 = OUTLINED_FUNCTION_36(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_77();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v174 - v52;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v197 = v55;
  v198 = v54;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  v204 = v57;
  sub_2166A6EA4();
  v58 = type metadata accessor for BackgroundConfiguration(0);
  v59 = OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_31_2(v59, v60, v58);
  v61 = v203;
  v208 = v35;
  v196 = v53;
  v201 = v30;
  if (v62)
  {
LABEL_3:
    v63 = v202;
    sub_2166C24DC(v61, a2, v202);
    sub_2166C24DC(v45, a2, v63);
    OUTLINED_FUNCTION_2_66();
    v66 = sub_2166D9530(v64, v65);
    v235[53] = v63;
    v235[54] = v66;
    OUTLINED_FUNCTION_1_85();
    WitnessTable = swift_getWitnessTable();
    v235[51] = v63;
    v235[52] = WitnessTable;
    OUTLINED_FUNCTION_42_3();
    v203 = swift_getWitnessTable();
    v68 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
    v235[49] = v63;
    v235[50] = v68;
    v69 = swift_getWitnessTable();
    v70 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
    v235[47] = v63;
    v235[48] = v70;
    v71 = swift_getWitnessTable();
    v235[45] = v69;
    v235[46] = v71;
    v72 = swift_getWitnessTable();
    v235[43] = v203;
    v235[44] = v72;
    swift_getWitnessTable();
    sub_2166C2CB0();
    v73 = *(v194 + 8);
    v73(v42, a2);
    v73(v45, a2);
    v74 = v63;
  }

  else
  {
    v75 = v202;
    sub_2166A6EA4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v77 = *(v50 + 40);
        v78 = *(v50 + 48);
        sub_2166A0F18(v50, v235);
        sub_2167B7D58(v235, v233);
        v233[5] = v77;
        v234 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE710);
        OUTLINED_FUNCTION_31_9();
        sub_2166D9530(v79, v80);
        sub_21700B3B4();
        v81 = v180;
        v177 = a2;
        sub_21700A2F4();
        OUTLINED_FUNCTION_31_9();
        sub_216697664(v82, v83);
        v84 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70);
        v231 = v75;
        v232 = v84;
        v85 = v201;
        v86 = swift_getWitnessTable();
        v87 = v179;
        sub_2166C24DC(v81, v85, v86);
        v203 = *(v178 + 8);
        v203(v81, v85);
        sub_2166C24DC(v87, v85, v86);
        v88 = v184;
        sub_2166C2CB0();
        v229 = v75;
        v230 = v86;
        v89 = v199;
        v195 = swift_getWitnessTable();
        v90 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
        v227 = v75;
        v228 = v90;
        v91 = swift_getWitnessTable();
        v92 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
        v225 = v75;
        v226 = v92;
        v93 = swift_getWitnessTable();
        v223 = v91;
        v224 = v93;
        v94 = swift_getWitnessTable();
        v95 = v192;
        v96 = v195;
        sub_2166C2718();
        (*(v185 + 8))(v88, v89);
        v221 = v96;
        v222 = v94;
        v74 = v75;
        OUTLINED_FUNCTION_52_12();
        sub_2166C2718();
        OUTLINED_FUNCTION_48_13();
        v97(v95, v75);
        v98 = v203;
        v203(v180, v85);
        v98(v179, v85);
        __swift_destroy_boxed_opaque_existential_1Tm(v235);
        break;
      case 2:
        OUTLINED_FUNCTION_3_70();
        v121 = v181;
        v122 = sub_21698B990();
        MEMORY[0x28223BE20](v122);
        *(&v174 - 2) = v121;
        type metadata accessor for FullScreenArtworkView(0);
        sub_21698C470(&qword_27CABE708, type metadata accessor for FullScreenArtworkView);
        sub_21700B3B4();
        OUTLINED_FUNCTION_30_22();
        OUTLINED_FUNCTION_2_66();
        v125 = sub_2166D9530(v123, v124);
        v235[15] = v75;
        v235[16] = v125;
        OUTLINED_FUNCTION_1_85();
        v126 = v207;
        v127 = swift_getWitnessTable();
        v128 = v182;
        sub_2166C24DC(v45, v126, v127);
        v129 = *(v190 + 8);
        v190 += 8;
        v203 = v129;
        v129(v45, v126);
        sub_2166C24DC(v128, v126, v127);
        v130 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
        v235[13] = v42;
        v235[14] = v130;
        v131 = swift_getWitnessTable();
        v132 = v188;
        sub_2166C2718();
        v133 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70);
        v235[11] = v42;
        v235[12] = v133;
        v134 = swift_getWitnessTable();
        v235[9] = v42;
        v235[10] = v134;
        OUTLINED_FUNCTION_23_25();
        v135 = swift_getWitnessTable();
        v235[7] = v127;
        v235[8] = v131;
        v136 = v206;
        v137 = swift_getWitnessTable();
        v138 = v192;
        OUTLINED_FUNCTION_51_6();
        (*(v189 + 8))(v132, v136);
        v235[5] = v135;
        v235[6] = v137;
        v74 = v202;
        OUTLINED_FUNCTION_52_12();
        OUTLINED_FUNCTION_37_22();
        OUTLINED_FUNCTION_48_13();
        v139(v138, v136);
        v140 = v203;
        v203(v183, v126);
        v140(v182, v126);
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v181, v141);
        break;
      case 3:
        *(&v174 - 2) = MEMORY[0x28223BE20](EnumCaseMultiPayload);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE6D8);
        sub_21698C7E0();
        sub_21700B3B4();
        OUTLINED_FUNCTION_30_22();
        OUTLINED_FUNCTION_2_66();
        v101 = sub_2166D9530(v99, v100);
        v235[27] = v75;
        v235[28] = v101;
        OUTLINED_FUNCTION_1_85();
        v102 = v205;
        v103 = swift_getWitnessTable();
        v104 = v186;
        v105 = OUTLINED_FUNCTION_47_17();
        sub_2166C24DC(v105, v106, v103);
        v107 = *(v191 + 8);
        v191 += 8;
        v203 = v107;
        v108 = OUTLINED_FUNCTION_47_17();
        v109(v108);
        sub_2166C24DC(v104, v102, v103);
        v110 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
        v235[25] = v42;
        v235[26] = v110;
        v111 = swift_getWitnessTable();
        v112 = v188;
        sub_2166C2CB0();
        v113 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70);
        v235[23] = v42;
        v235[24] = v113;
        v114 = swift_getWitnessTable();
        v235[21] = v42;
        v235[22] = v114;
        OUTLINED_FUNCTION_23_25();
        v115 = swift_getWitnessTable();
        v235[19] = v111;
        v235[20] = v103;
        v116 = v206;
        v117 = swift_getWitnessTable();
        v118 = v192;
        OUTLINED_FUNCTION_51_6();
        (*(v189 + 8))(v112, v116);
        v235[17] = v115;
        v235[18] = v117;
        v74 = v202;
        OUTLINED_FUNCTION_52_12();
        OUTLINED_FUNCTION_37_22();
        OUTLINED_FUNCTION_48_13();
        v119(v118, v116);
        v120 = v203;
        v203(v187, v102);
        v120(v186, v102);
        break;
      case 5:
        v142 = v45;
        v176 = v45;
        v143 = v75;
        sub_2166C24DC(v203, a2, v75);
        v175 = v42;
        sub_2166C24DC(v142, a2, v75);
        OUTLINED_FUNCTION_2_66();
        v146 = sub_2166D9530(v144, v145);
        v219 = v75;
        v220 = v146;
        OUTLINED_FUNCTION_1_85();
        v147 = swift_getWitnessTable();
        v148 = v184;
        sub_2166C2718();
        v217 = v143;
        v218 = v147;
        OUTLINED_FUNCTION_42_3();
        v149 = v199;
        v150 = swift_getWitnessTable();
        v151 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
        v215 = v143;
        v216 = v151;
        v152 = swift_getWitnessTable();
        v153 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
        v213 = v143;
        v214 = v153;
        v154 = swift_getWitnessTable();
        v211 = v152;
        v212 = v154;
        v155 = swift_getWitnessTable();
        v156 = v192;
        sub_2166C2718();
        (*(v185 + 8))(v148, v149);
        v209 = v150;
        v210 = v155;
        OUTLINED_FUNCTION_52_12();
        sub_2166C2718();
        OUTLINED_FUNCTION_48_13();
        v157(v156, v148);
        v158 = *(v194 + 8);
        v158(v175, a2);
        v158(v176, a2);
        v74 = v143;
        break;
      default:
        OUTLINED_FUNCTION_4_51();
        sub_21698B938(v50, v173);
        v61 = v203;
        goto LABEL_3;
    }
  }

  sub_216697664(v196, &qword_27CABBAA8);
  OUTLINED_FUNCTION_2_66();
  v161 = sub_2166D9530(v159, v160);
  v235[41] = v74;
  v235[42] = v161;
  OUTLINED_FUNCTION_1_85();
  v162 = swift_getWitnessTable();
  v235[39] = v74;
  v235[40] = v162;
  v163 = swift_getWitnessTable();
  v164 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
  v235[37] = v74;
  v235[38] = v164;
  v165 = swift_getWitnessTable();
  v166 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
  v235[35] = v74;
  v235[36] = v166;
  v167 = swift_getWitnessTable();
  v235[33] = v165;
  v235[34] = v167;
  v168 = swift_getWitnessTable();
  v235[31] = v163;
  v235[32] = v168;
  v235[29] = swift_getWitnessTable();
  v235[30] = v74;
  v169 = v198;
  v170 = swift_getWitnessTable();
  v171 = v204;
  sub_2166C24DC(v204, v169, v170);
  return (*(v197 + 8))(v171, v169);
}

uint64_t sub_216986480()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for CuratorDetailHeaderComponentModel();
  return sub_2166A6EA4();
}

uint64_t sub_2169864C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v29 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  type metadata accessor for CuratorDetailHeaderComponentModel();
  OUTLINED_FUNCTION_31_9();
  sub_2166A6EA4();
  v10 = type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_31_2(v5, 1, v10);
  if (v16)
  {
    v11 = &qword_27CABBEA8;
    v12 = v5;
  }

  else
  {
    v13 = *v5;
    sub_21700DF14();
    OUTLINED_FUNCTION_10_42();
    sub_21698B938(v5, v14);
    sub_216CE0C2C(v13, v9);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8);
    OUTLINED_FUNCTION_31_2(v9, 1, v15);
    if (!v16)
    {
      v21 = *(v15 + 48);
      v22 = sub_2170071B4();
      OUTLINED_FUNCTION_34();
      (*(v23 + 32))(a1, v9, v22);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
      sub_217006EC4();
      OUTLINED_FUNCTION_34();
      return (*(v27 + 8))(&v9[v21]);
    }

    v11 = &qword_27CABE5E0;
    v12 = v9;
  }

  sub_216697664(v12, v11);
  sub_2170071B4();
  v17 = OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_216986724()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for ArtistDetailHeaderLockup();
  return sub_2166A6EA4();
}

uint64_t sub_216986768()
{
  OUTLINED_FUNCTION_8_1();
  sub_2170071B4();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2169867B8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];
  if (!v3)
  {
    return sub_21700F9C4();
  }

  v4 = *v2;
  sub_21700F9C4();
  OUTLINED_FUNCTION_50_12();
  MEMORY[0x21CE9F490](v4, v3);
  return v6;
}

uint64_t sub_216986864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  type metadata accessor for TVMovieDetailHeaderLockup();
  OUTLINED_FUNCTION_51();
  sub_2166A6EA4();
  v4 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_24_3(v3);
  if (v5)
  {
    sub_2166A6EA4();
    result = OUTLINED_FUNCTION_24_3(v3);
    if (!v5)
    {
      return sub_216697664(v3, &qword_27CAB6D60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_70();
    sub_21698B990();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  }

  return result;
}

uint64_t sub_216986984()
{
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for VideoArtwork();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2169869BC()
{
  v1 = (v0 + *(type metadata accessor for TVMovieDetailHeaderLockup() + 32));
  v2 = v1[1];
  if (!v2)
  {
    return sub_21700F9C4();
  }

  v3 = *v1;
  sub_21700F9C4();
  OUTLINED_FUNCTION_50_12();
  MEMORY[0x21CE9F490](v3, v2);
  return v5;
}

uint64_t sub_216986A8C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  type metadata accessor for BackgroundConfiguration(0);
  v4 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_216986B1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  __swift_project_value_buffer(v5, a4);
  OUTLINED_FUNCTION_71_0();
  return sub_2166A6EA4();
}

void sub_216986B94(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v34 = a5;
  v37 = a1;
  v8 = sub_2170084B4();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2170085B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE780);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v18 = v32 - v17;
  v36 = a2;
  if (a2 & 1) != 0 || (a4)
  {
    v32[3] = a4;
    v33 = a3;
    (*(v12 + 16))(v14, v34, v11, v16);
    v19 = MEMORY[0x277CDF7F8];
    sub_21698C470(&qword_27CABE788, MEMORY[0x277CDF7F8]);
    sub_21700E754();
    v20 = *(v15 + 36);
    sub_21698C470(&qword_27CABE790, v19);
    v21 = (v35 + 16);
    v22 = (v35 + 8);
    v23 = 0.0;
    v24 = 0.0;
    while (1)
    {
      sub_21700EC94();
      if (*&v18[v20] == v39[0])
      {
        break;
      }

      v25 = sub_21700ECE4();
      (*v21)(v10);
      v25(v39, 0);
      sub_21700ECA4();
      sub_217008B14();
      LOBYTE(v39[0]) = v26 & 1;
      v38 = v27 & 1;
      sub_217008484();
      v29 = v28;
      v31 = v30;
      (*v22)(v10, v8);
      if (v23 <= v29)
      {
        v23 = v29;
      }

      if (v24 <= v31)
      {
        v24 = v31;
      }
    }

    sub_216697664(v18, &qword_27CABE780);
  }
}

uint64_t sub_216986F18(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = sub_2170084B4();
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2170085B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE780);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v30 - v20;
  (*(v14 + 16))(v16, a8, v13, v19);
  v22 = MEMORY[0x277CDF7F8];
  sub_21698C470(&qword_27CABE788, MEMORY[0x277CDF7F8]);
  sub_21700E754();
  v23 = *(v18 + 44);
  sub_21698C470(&qword_27CABE790, v22);
  v24 = v10;
  v25 = (v10 + 16);
  *&v30[1] = a3;
  v26 = (v24 + 8);
  for (i = v31; ; (*v26)(v12, i))
  {
    sub_21700EC94();
    if (*&v21[v23] == v33[0])
    {
      break;
    }

    v28 = sub_21700ECE4();
    (*v25)(v12);
    v28(v33, 0);
    sub_21700ECA4();
    sub_21700F054();
    sub_21700B564();
    LOBYTE(v33[0]) = 0;
    v32 = 0;
    sub_217008494();
  }

  return sub_216697664(v21, &qword_27CABE780);
}

void (*sub_216987370(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_2169873E4(uint64_t a1)
{
  v3 = *(a1 + 24);
  v18 = *(a1 + 16);
  v2 = v18;
  v19 = v3;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE680);
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  swift_getWitnessTable();
  v4 = sub_21700B0A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_21700B3B4();
  sub_21700B094();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_2166C24DC(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_21698761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE678);
  MEMORY[0x28223BE20](v46);
  v47 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v37 - v9;
  v10 = sub_217006624();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2170064D4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  v45 = MEMORY[0x277D26A10];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = &v37 - v21;
  v42 = a1;
  sub_21700A2A4();
  v41 = type metadata accessor for MaterialOverlayBackground();
  *v13 = *(a1 + *(v41 + 40));
  (*(v11 + 104))(v13, *MEMORY[0x277D26AA0], v10);
  sub_217006494();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  *&v58 = a2;
  *(&v58 + 1) = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v37;
  v23 = OpaqueTypeMetadata2;
  sub_2166C24DC(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = v38;
  v45 = *(v38 + 8);
  v45(v19, v23);
  v25 = v44;
  sub_21700B2B4();
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE688) + 56)) = 256;
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE690) + 36);
  *v26 = 0;
  *(v26 + 8) = 257;
  v27 = sub_217008A34();
  LOBYTE(a2) = sub_217009C84();
  v28 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE698) + 36);
  *v28 = v27;
  *(v28 + 8) = a2;
  v29 = v46;
  *(v25 + *(v46 + 36)) = *(v42 + *(v41 + 36));
  v30 = sub_216987C8C();
  v31 = sub_217008A34();
  v32 = sub_217009C84();
  LOBYTE(v55[0]) = 1;
  *&v56 = v30;
  WORD4(v56) = 256;
  *(&v56 + 10) = v58;
  HIWORD(v56) = WORD2(v58);
  *v57 = 0;
  *&v57[8] = 257;
  *&v57[10] = v53;
  *&v57[14] = WORD2(v53);
  *&v57[16] = v31;
  v57[24] = v32;
  v33 = *(v24 + 16);
  v40 = v19;
  v33(v19, v22, v23);
  v55[0] = v19;
  v34 = v47;
  sub_2166A6EA4();
  v53 = v56;
  v54[0] = *v57;
  *(v54 + 9) = *&v57[9];
  v55[1] = v34;
  v55[2] = &v53;
  sub_2166A6EA4();
  v52[0] = v23;
  v52[1] = v29;
  v52[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE680);
  v49 = OpaqueTypeConformance2;
  v50 = sub_21698C4C4();
  v51 = sub_21698C694();
  sub_216984F84(v55, 3, v52);
  sub_216697664(&v56, &qword_27CABE680);
  sub_216697664(v25, &qword_27CABE678);
  v35 = v45;
  v45(v22, v23);
  v58 = v53;
  *v59 = v54[0];
  *&v59[9] = *(v54 + 9);
  sub_216697664(&v58, &qword_27CABE680);
  sub_216697664(v34, &qword_27CABE678);
  return v35(v40, v23);
}

uint64_t sub_216987C8C()
{
  sub_21700ACC4();
  v0 = sub_21700AD04();

  return v0;
}

uint64_t sub_216987CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE610);
  MEMORY[0x28223BE20](v112);
  v4 = v84 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE618);
  v104 = *(v5 - 8);
  v105 = v5;
  MEMORY[0x28223BE20](v5);
  v103 = v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = v84 - v10;
  v101 = sub_2170063E4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE620);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = v84 - v12;
  v13 = sub_217005EF4();
  MEMORY[0x28223BE20](v13 - 8);
  v88 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE628);
  MEMORY[0x28223BE20](v109);
  v89 = v84 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE630);
  v92 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v91 = v84 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE638);
  v102 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v98 = v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE640);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v84 - v19;
  v21 = sub_2170071B4();
  v106 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  MEMORY[0x28223BE20](v24 - 8);
  v87 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v84 - v30;
  v32 = sub_217006EC4();
  v108 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v107 = v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v35);
  (*(*(v34 + 16) + 8))(v35);
  v36 = type metadata accessor for VideoArtwork();
  if (__swift_getEnumTagSinglePayload(v28, 1, v36) == 1)
  {
    v37 = v2;
    sub_216697664(v28, &qword_27CABBEA8);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
LABEL_8:
    sub_216697664(v31, &qword_27CABBF10);
    sub_2167B7D58(v37, &v117);
    sub_21698C22C(&v117, v4);
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40);
    v45 = sub_21698C264();
    v114 = v109;
    v115 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v114 = v110;
    v115 = v44;
    v116 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21698C31C();
    sub_217009554();
    return sub_21698C370(&v117);
  }

  v85 = v36;
  v90 = v32;
  v86 = v4;
  v38 = v2[3];
  v39 = v2[4];
  v37 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v38);
  (*(v39 + 32))(v38, v39);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_2170071A4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
    v41 = v106;
    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v20, &qword_27CABE640);
    }
  }

  else
  {
    v41 = v106;
    (*(v106 + 32))(v23, v20, v21);
  }

  sub_216DEE900(v31);
  (*(v41 + 8))(v23, v21);
  sub_21698B938(v28, type metadata accessor for VideoArtwork);
  v42 = v90;
  v43 = __swift_getEnumTagSinglePayload(v31, 1, v90);
  v4 = v86;
  if (v43 == 1)
  {
    goto LABEL_8;
  }

  (*(v108 + 32))(v107, v31, v42);
  v48 = sub_217006EB4();
  v84[1] = v84;
  MEMORY[0x28223BE20](v48);
  v49 = v37;
  MEMORY[0x28223BE20](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE668);
  sub_21698C3B4();
  v106 = sub_21698C31C();
  v51 = v89;
  sub_2170063A4();
  v52 = sub_217008A34();
  v53 = sub_217009C84();
  v54 = v109;
  v55 = v51 + *(v109 + 36);
  *v55 = v52;
  *(v55 + 8) = v53;
  v56 = sub_21698C264();
  v57 = v93;
  sub_21700A2A4();
  sub_216697664(v51, &qword_27CABE628);
  v59 = v49[3];
  v58 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v59);
  v60 = v87;
  (*(*(v58 + 16) + 8))(v59);
  v61 = v85;
  if (__swift_getEnumTagSinglePayload(v60, 1, v85) == 1)
  {
    sub_216697664(v60, &qword_27CABBEA8);
    v62 = sub_21700C444();
    v63 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v62);
    v64 = v99;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v63, 1, v62) != 1)
    {
      sub_216697664(v63, &qword_27CAB7530);
    }
  }

  else
  {
    v65 = *(v61 + 20);
    v62 = sub_21700C444();
    v66 = *(v62 - 8);
    v67 = v60 + v65;
    v68 = v60;
    v69 = v94;
    (*(v66 + 16))(v94, v67, v62);
    sub_21698B938(v68, type metadata accessor for VideoArtwork);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v62);
    v64 = v99;
    (*(v66 + 32))(v99, v69, v62);
  }

  sub_21700C444();
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v62);
  v70 = v97;
  sub_216B50CD4(v64, v97);
  v71 = v91;
  v72 = v96;
  sub_217006454();
  (*(v100 + 8))(v70, v101);
  (*(v95 + 8))(v57, v72);
  v117 = v54;
  v118 = v56;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v103;
  v75 = v110;
  sub_21700A2A4();
  (*(v92 + 8))(v71, v75);
  v76 = v49[3];
  v77 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v76);
  v117 = (*(v77 + 40))(v76, v77);
  v118 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  v80 = v98;
  v81 = v105;
  sub_217006464();

  (*(v104 + 8))(v74, v81);
  v82 = v102;
  v83 = v111;
  (*(v102 + 16))(v4, v80, v111);
  swift_storeEnumTagMultiPayload();
  v117 = v75;
  v118 = v79;
  v119 = v73;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v82 + 8))(v80, v83);
  return (*(v108 + 8))(v107, v90);
}

uint64_t sub_216988B84@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - v7;
  v8 = sub_21700C444();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v34 = sub_217007474();
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  sub_217006EA4();
  v20 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);
  sub_217007464();
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 24))(v21, v22);
  v23 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v5, 1, v23) == 1)
  {
    sub_216697664(v5, &qword_27CAB6D60);
    v24 = v36;
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v8);
    sub_21700C404();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v8);
    v26 = v35;
    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v24, &qword_27CAB7530);
    }
  }

  else
  {
    v27 = *(v23 + 20);
    v29 = v35;
    v28 = v36;
    (*(v35 + 16))(v36, &v5[v27], v8);
    sub_21698B938(v5, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
    (*(v29 + 32))(v10, v28, v8);
    v26 = v29;
  }

  sub_2170073E4();
  (*(v26 + 8))(v10, v8);
  v30 = v34;
  (*(v14 + 8))(v16, v34);
  v31 = v37;
  (*(v14 + 32))(v37, v19, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE668);
  v33 = v31 + *(result + 36);
  *v33 = 0x3FFC71C71C71C71CLL;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_216988FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_21700C444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700C4B4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3, a1, v13);
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21700C404();
    sub_216697664(a2, &qword_27CAB7530);
    (*(v14 + 8))(a1, v13);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_216697664(v8, &qword_27CAB7530);
    }
  }

  else
  {
    sub_216697664(a2, &qword_27CAB7530);
    (*(v14 + 8))(a1, v13);
    (*(v10 + 32))(v12, v8, v9);
  }

  v15 = type metadata accessor for FullScreenArtworkView(0);
  return (*(v10 + 32))(a3 + *(v15 + 20), v12, v9);
}

void *sub_21698928C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for FullScreenArtworkView(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_21700C4B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v24 = v2;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CABF770);
    sub_21698C0EC(__dst);
  }

  else
  {
    v22 = *(v9 + 32);
    v22(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    sub_21698C0F4();
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v22((v16 + v15), v11, v8);
    sub_21698B990();
    sub_21700B3B4();
    sub_217008BB4();
    v17 = sub_217008A34();
    v18 = sub_217009C84();
    (*(v9 + 8))(v14, v8);
    v28[0] = sub_21698C14C;
    v28[1] = v16;
    memcpy(&v28[2], v27, 0x70uLL);
    v28[16] = v17;
    LOBYTE(v28[17]) = v18;
    nullsub_1(v28, v19, v20);
    memcpy(__dst, v28, 0x89uLL);
  }

  return memcpy(v26, __dst, 0x89uLL);
}

uint64_t sub_21698963C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35[1] = a2;
  v41 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE608);
  MEMORY[0x28223BE20](v39);
  v40 = v35 - v4;
  v5 = sub_21700C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_217007474();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v38 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = v35 - v16;
  v17 = sub_21700C474();
  v18 = v17 / sub_21700C484();
  sub_217008444();
  v20 = v19;
  sub_217008444();
  v22 = (*&v18 >> 52) & 0x7FFLL;
  if (!v22 || ((v23 = v20 / v21, v22 != 2047) ? (v24 = v18 < v23) : (v24 = 0), (v25 = (*&v23 >> 52) & 0x7FFLL, v24) ? (v26 = v25 == 0) : (v26 = 1), v26 || v25 == 2047))
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_217008444();
    sub_2170074A4();
    type metadata accessor for FullScreenArtworkView(0);
    sub_2170073E4();
    v27 = *(v9 + 8);
    v28 = v36;
    v27(v11, v36);
    *(swift_allocObject() + 16) = xmmword_217016ED0;
    v29 = sub_2167C505C();
    v30 = v37;
    sub_2170073F4();

    v27(v14, v28);
    v31 = v38;
    (*(v38 + 16))(v40, v30, v15);
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_217008444();
    sub_217007494();
    type metadata accessor for FullScreenArtworkView(0);
    sub_2170073E4();
    v33 = *(v9 + 8);
    v34 = v36;
    v33(v11, v36);
    *(swift_allocObject() + 16) = xmmword_217016ED0;
    v29 = sub_2167C505C();
    v30 = v37;
    sub_2170073F4();

    v33(v14, v34);
    v31 = v38;
    (*(v38 + 16))(v40, v30, v15);
  }

  swift_storeEnumTagMultiPayload();
  v42 = &type metadata for ArtworkPlaceholderView;
  v43 = v29;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  return (*(v31 + 8))(v30, v15);
}

uint64_t sub_216989B84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE778);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[3];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  (*(v13 + 24))(v12, v13);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CAB6D60);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    sub_21698B990();
    sub_216989DB4(v11);
    v15 = sub_217008A34();
    v16 = sub_217009C84();
    v17 = &v5[*(v3 + 36)];
    *v17 = v15;
    v17[8] = v16;
    sub_21671BBB0();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    return sub_21698B938(v11, type metadata accessor for Artwork);
  }
}

uint64_t sub_216989DB4(uint64_t a1)
{
  v2 = sub_21700C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217007474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = [objc_opt_self() mainScreen];
  [v13 applicationFrame];

  (*(v3 + 16))(v5, a1, v2);
  sub_217007484();
  type metadata accessor for Artwork();
  sub_2170073E4();
  v14 = *(v7 + 8);
  v14(v9, v6);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  return (v14)(v12, v6);
}

uint64_t sub_21698A02C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = type metadata accessor for Artwork();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_34_18();
  sub_21698C0F4();
  v15 = OUTLINED_FUNCTION_47_17();
  v16(v15);
  v17 = *(v11 + 28);
  v18 = sub_21700C444();
  OUTLINED_FUNCTION_34();
  (*(v19 + 16))(v5, v14 + v17, v18);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  sub_216988FFC(v9, v5, a1);
  OUTLINED_FUNCTION_0_101();
  return sub_21698B938(v14, v23);
}

uint64_t sub_21698A1F0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE688);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &__src[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE700);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE6F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &__src[-v14];
  if (qword_27CAB5B48 != -1)
  {
    swift_once();
  }

  v16 = sub_21700B2F4();
  v17 = __swift_project_value_buffer(v16, qword_27CABE5B8);
  (*(*(v16 - 8) + 16))(v7, v17, v16);
  *&v7[*(v4 + 56)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  memcpy(&v11[*(v8 + 36)], __src, 0x70uLL);
  sub_2167A4788();
  v18 = &v15[*(v12 + 36)];
  *v18 = 0.0;
  v18[1] = a2;
  v19 = sub_217008A34();
  v20 = sub_217009C84();
  sub_2167A4788();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE6D8);
  v22 = a1 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

uint64_t sub_21698A498(uint64_t a1, uint64_t a2)
{
  v226 = a1;
  v227 = a2;
  v214 = type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v4);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5F0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  v216 = v15;
  OUTLINED_FUNCTION_4_1();
  v225 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  v19 = v212 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v212 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v24);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v219 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v222 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  v223 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v220 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_1();
  v221 = v39;
  v40 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for BackgroundConfiguration(v40);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = (v212 - v46);
  MEMORY[0x28223BE20](v48);
  v50 = v212 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = (v212 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5F8);
  OUTLINED_FUNCTION_36(v54);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  v57 = v212 - v56;
  v59 = v212 + *(v58 + 56) - v56;
  sub_21698C0F4();
  sub_21698C0F4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_29;
    case 2u:
      OUTLINED_FUNCTION_5_50();
      sub_21698C0F4();
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v50, v94);
        goto LABEL_29;
      }

      sub_21698B990();
      sub_21698B990();
      if (sub_21700C4A4())
      {
        v92 = sub_21688ADC8(&v22[*(v225 + 20)], &v19[*(v225 + 20)]);
      }

      else
      {
        v92 = 0;
      }

      sub_21698B938(v19, type metadata accessor for Artwork);
      sub_21698B938(v22, type metadata accessor for Artwork);
      goto LABEL_83;
    case 3u:
      OUTLINED_FUNCTION_5_50();
      sub_21698C0F4();
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_29;
      }

      v92 = *v47 == *v59;
      goto LABEL_83;
    case 4u:
      OUTLINED_FUNCTION_5_50();
      v62 = v57;
      sub_21698C0F4();
      v64 = *(v44 + 40);
      v63 = *(v44 + 48);
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        v57 = v62;
        goto LABEL_29;
      }

      v65 = *(v59 + 6);
      v226 = *(v59 + 5);
      v227 = v65;
      sub_2166A0F18(v44, v229);
      sub_2166A0F18(v59, v228);
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_29_22();
      v66 = OUTLINED_FUNCTION_47();
      v67(v66);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_29_22();
      v68 = OUTLINED_FUNCTION_47();
      v69(v68);
      v70 = *(v224 + 48);
      v71 = v219;
      OUTLINED_FUNCTION_38_16();
      OUTLINED_FUNCTION_38_16();
      v72 = OUTLINED_FUNCTION_49_1();
      v73 = v225;
      OUTLINED_FUNCTION_31_2(v72, v74, v225);
      if (v121)
      {
        OUTLINED_FUNCTION_191();
        sub_216697664(v75, v76);
        v77 = OUTLINED_FUNCTION_12_36();
        sub_216697664(v77, v78);
        OUTLINED_FUNCTION_31_2(v71 + v70, 1, v73);
        v79 = v218;
        if (v121)
        {
          sub_216697664(v71, &qword_27CAB6D60);
          goto LABEL_10;
        }

LABEL_44:
        v127 = &qword_27CABE598;
        v128 = v71;
        goto LABEL_76;
      }

      v120 = v212[8];
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v71 + v70, 1, v73);
      v79 = v218;
      if (v121)
      {
        OUTLINED_FUNCTION_191();
        sub_216697664(v122, v123);
        OUTLINED_FUNCTION_191();
        sub_216697664(v124, v125);
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v120, v126);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_3_70();
      v138 = v212[6];
      sub_21698B990();
      v139 = sub_21700C4A4();
      if ((v139 & 1) == 0)
      {
        sub_21698B938(v138, type metadata accessor for Artwork);
        OUTLINED_FUNCTION_42();
        sub_216697664(v167, v168);
        OUTLINED_FUNCTION_42();
        sub_216697664(v169, v170);
        sub_21698B938(v120, type metadata accessor for Artwork);
        OUTLINED_FUNCTION_42();
        goto LABEL_76;
      }

      LODWORD(v225) = sub_21688ADC8(v120 + *(v225 + 20), v138 + *(v225 + 20));
      OUTLINED_FUNCTION_21_28();
      sub_21698B938(v138, v140);
      OUTLINED_FUNCTION_31_9();
      sub_216697664(v141, v142);
      OUTLINED_FUNCTION_31_9();
      sub_216697664(v143, v144);
      v145 = OUTLINED_FUNCTION_8();
      sub_21698B938(v145, v146);
      OUTLINED_FUNCTION_31_9();
      sub_216697664(v147, v148);
      if ((v225 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_10:
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_29_22();
      v80 = OUTLINED_FUNCTION_47();
      v81(v80);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_29_22();
      v82 = OUTLINED_FUNCTION_47();
      v83(v82);
      v84 = *(v213 + 48);
      OUTLINED_FUNCTION_38_16();
      OUTLINED_FUNCTION_38_16();
      v85 = v214;
      OUTLINED_FUNCTION_31_2(v79, 1, v214);
      if (!v121)
      {
        v160 = v212[4];
        sub_2166A6EA4();
        OUTLINED_FUNCTION_31_2(v79 + v84, 1, v85);
        if (!v161)
        {
          OUTLINED_FUNCTION_20_25();
          v182 = v212[2];
          sub_21698B990();
          sub_21698B9E8(*v160, *v182);
          if (v183)
          {
            v184 = sub_21688ADC8(v160 + *(v85 + 20), v182 + *(v85 + 20));
            OUTLINED_FUNCTION_42();
            sub_216697664(v185, v186);
            OUTLINED_FUNCTION_42();
            sub_216697664(v187, v188);
            sub_21698B938(v182, type metadata accessor for VideoArtwork);
            sub_21698B938(v160, type metadata accessor for VideoArtwork);
            OUTLINED_FUNCTION_42();
            sub_216697664(v189, v190);
            v90 = v227;
            if ((v184 & 1) == 0)
            {
              v92 = 0;
              goto LABEL_78;
            }

            goto LABEL_15;
          }

          OUTLINED_FUNCTION_191();
          sub_216697664(v201, v202);
          OUTLINED_FUNCTION_191();
          sub_216697664(v203, v204);
          sub_21698B938(v182, type metadata accessor for VideoArtwork);
          sub_21698B938(v160, type metadata accessor for VideoArtwork);
          v128 = OUTLINED_FUNCTION_12_36();
LABEL_76:
          sub_216697664(v128, v127);
LABEL_77:
          v92 = 0;
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_191();
        sub_216697664(v162, v163);
        OUTLINED_FUNCTION_191();
        sub_216697664(v164, v165);
        OUTLINED_FUNCTION_10_42();
        sub_21698B938(v160, v166);
LABEL_60:
        v127 = &qword_27CABE5F0;
        v128 = v79;
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_191();
      sub_216697664(v86, v87);
      OUTLINED_FUNCTION_191();
      sub_216697664(v88, v89);
      OUTLINED_FUNCTION_31_2(v79 + v84, 1, v85);
      if (!v121)
      {
        goto LABEL_60;
      }

      sub_216697664(v79, &qword_27CABBEA8);
      v90 = v227;
LABEL_15:
      if (v64 == v226 && v63 == v90)
      {
        v92 = 1;
      }

      else
      {
        v92 = sub_21700F7D4();
      }

LABEL_78:

      __swift_destroy_boxed_opaque_existential_1Tm(v228);
      __swift_destroy_boxed_opaque_existential_1Tm(v229);
      OUTLINED_FUNCTION_4_51();
      v206 = v62;
LABEL_84:
      sub_21698B938(v206, v205);
      return v92 & 1;
    case 5u:
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_51();
      sub_21698B938(v57, v93);
      v92 = 1;
      return v92 & 1;
    default:
      OUTLINED_FUNCTION_5_50();
      sub_21698C0F4();
      v60 = v53[5];
      v61 = *(v53 + 48);
      OUTLINED_FUNCTION_34_18();
      if (swift_getEnumCaseMultiPayload())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
LABEL_29:
        sub_216697664(v57, &qword_27CABE5F8);
        v92 = 0;
        return v92 & 1;
      }

      v95 = *(v59 + 5);
      LODWORD(v227) = v59[48];
      sub_2166A0F18(v53, v229);
      sub_2166A0F18(v59, v228);
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_29_22();
      v96 = OUTLINED_FUNCTION_47();
      v97(v96);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_29_22();
      v98 = OUTLINED_FUNCTION_47();
      v99(v98);
      v100 = *(v224 + 48);
      v101 = v215;
      OUTLINED_FUNCTION_38_16();
      OUTLINED_FUNCTION_38_16();
      v102 = v225;
      OUTLINED_FUNCTION_31_2(v101, 1, v225);
      if (v121)
      {
        v103 = OUTLINED_FUNCTION_12_36();
        sub_216697664(v103, v104);
        OUTLINED_FUNCTION_191();
        sub_216697664(v105, v106);
        OUTLINED_FUNCTION_24_3(v101 + v100);
        v107 = v217;
        if (v121)
        {
          sub_216697664(v101, &qword_27CAB6D60);
LABEL_35:
          OUTLINED_FUNCTION_36_17();
          OUTLINED_FUNCTION_29_22();
          v108 = OUTLINED_FUNCTION_47();
          v109(v108);
          OUTLINED_FUNCTION_35_20();
          OUTLINED_FUNCTION_29_22();
          v110 = OUTLINED_FUNCTION_47();
          v111(v110);
          v112 = *(v213 + 48);
          OUTLINED_FUNCTION_38_16();
          OUTLINED_FUNCTION_38_16();
          v113 = OUTLINED_FUNCTION_49_1();
          v114 = v214;
          OUTLINED_FUNCTION_31_2(v113, v115, v214);
          if (v121)
          {
            OUTLINED_FUNCTION_191();
            sub_216697664(v116, v117);
            v118 = OUTLINED_FUNCTION_12_36();
            sub_216697664(v118, v119);
            OUTLINED_FUNCTION_24_3(v107 + v112);
            if (v121)
            {
              sub_216697664(v107, &qword_27CABBEA8);
              if (v60 == v95)
              {
                goto LABEL_73;
              }

LABEL_81:
              v92 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v171 = v212[3];
            sub_2166A6EA4();
            OUTLINED_FUNCTION_31_2(v107 + v112, 1, v114);
            if (!v172)
            {
              OUTLINED_FUNCTION_20_25();
              v191 = v212[1];
              sub_21698B990();
              sub_21698B9E8(*v171, *v191);
              if (v192)
              {
                v193 = v191;
                v194 = sub_21688ADC8(v171 + *(v114 + 20), v191 + *(v114 + 20));
                OUTLINED_FUNCTION_71_0();
                sub_216697664(v195, v196);
                OUTLINED_FUNCTION_71_0();
                sub_216697664(v197, v198);
                sub_21698B938(v193, type metadata accessor for VideoArtwork);
                sub_21698B938(v171, type metadata accessor for VideoArtwork);
                OUTLINED_FUNCTION_71_0();
                sub_216697664(v199, v200);
                v92 = 0;
                if ((v194 & 1) == 0 || v60 != v95)
                {
LABEL_82:
                  __swift_destroy_boxed_opaque_existential_1Tm(v228);
                  __swift_destroy_boxed_opaque_existential_1Tm(v229);
LABEL_83:
                  OUTLINED_FUNCTION_4_51();
                  v206 = v57;
                  goto LABEL_84;
                }

LABEL_73:
                v92 = v61 ^ v227 ^ 1;
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_191();
              sub_216697664(v207, v208);
              v209 = OUTLINED_FUNCTION_12_36();
              sub_216697664(v209, v210);
              sub_21698B938(v191, type metadata accessor for VideoArtwork);
              sub_21698B938(v171, type metadata accessor for VideoArtwork);
              OUTLINED_FUNCTION_191();
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_191();
            sub_216697664(v173, v174);
            v175 = OUTLINED_FUNCTION_12_36();
            sub_216697664(v175, v176);
            OUTLINED_FUNCTION_10_42();
            sub_21698B938(v171, v177);
          }

          v136 = &qword_27CABE5F0;
          v137 = v107;
LABEL_80:
          sub_216697664(v137, v136);
          goto LABEL_81;
        }
      }

      else
      {
        v129 = v212[7];
        sub_2166A6EA4();
        OUTLINED_FUNCTION_24_3(v101 + v100);
        v107 = v217;
        if (!v130)
        {
          OUTLINED_FUNCTION_3_70();
          v149 = v212[5];
          sub_21698B990();
          v150 = sub_21700C4A4();
          if ((v150 & 1) == 0)
          {
            sub_21698B938(v149, type metadata accessor for Artwork);
            OUTLINED_FUNCTION_42();
            sub_216697664(v178, v179);
            OUTLINED_FUNCTION_42();
            sub_216697664(v180, v181);
            sub_21698B938(v129, type metadata accessor for Artwork);
            OUTLINED_FUNCTION_42();
            goto LABEL_80;
          }

          LODWORD(v226) = sub_21688ADC8(v129 + *(v102 + 20), v149 + *(v102 + 20));
          OUTLINED_FUNCTION_21_28();
          sub_21698B938(v149, v151);
          OUTLINED_FUNCTION_51();
          sub_216697664(v152, v153);
          OUTLINED_FUNCTION_51();
          sub_216697664(v154, v155);
          v156 = OUTLINED_FUNCTION_8();
          sub_21698B938(v156, v157);
          OUTLINED_FUNCTION_51();
          sub_216697664(v158, v159);
          if ((v226 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_35;
        }

        OUTLINED_FUNCTION_191();
        sub_216697664(v131, v132);
        OUTLINED_FUNCTION_191();
        sub_216697664(v133, v134);
        OUTLINED_FUNCTION_0_101();
        sub_21698B938(v129, v135);
      }

      v136 = &qword_27CABE598;
      v137 = v101;
      goto LABEL_80;
  }
}

uint64_t sub_21698B618()
{
  sub_21698CA0C();

  return sub_217009104();
}

uint64_t sub_21698B680()
{
  sub_21698C9B8();

  return sub_217009104();
}

uint64_t sub_21698B6E8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47_17();
  v6 = sub_2166A6EA4();
  a2(v6);
  sub_217009114();
  return sub_216697664(a1, &qword_27CABBAA8);
}

uint64_t sub_21698B7B4()
{
  v0 = sub_21700B2F4();
  __swift_allocate_value_buffer(v0, qword_27CABE5B8);
  __swift_project_value_buffer(v0, qword_27CABE5B8);
  return sub_21700B2A4();
}

uint64_t sub_21698B81C()
{
  v0 = sub_2170080D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3C0], v0);
  sub_2170080C4();
  (*(v1 + 8))(v3, v0);
  return 0x7372657474616C70;
}

uint64_t sub_21698B938(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21698B990()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_21698B9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v58 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v56 = v11;
  OUTLINED_FUNCTION_4_1();
  v57 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v52 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v50 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E0);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_1();
  v54 = v21;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v53 = v20;
    v48 = v9;
    v49 = a2;
    v22 = 0;
    v47 = a1;
    OUTLINED_FUNCTION_46_16();
    v25 = v24 & v23;
    v45 = (v26 + 63) >> 6;
    v46 = a1 + 64;
    while (v25)
    {
      v55 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v22 << 6);
LABEL_11:
      (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v27, v57);
      (*(v58 + 16))(v56, *(v47 + 56) + *(v58 + 72) * v27, v4);
      a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8);
      (*(v51 + 32))(v53, v50, v57);
      OUTLINED_FUNCTION_31_9();
      v31();
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, a2);
      v28 = v54;
      v25 = v55;
LABEL_12:
      sub_2167A4788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8);
      v35 = OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_31_2(v35, 1, a2);
      if (v36)
      {
        return;
      }

      v37 = *(a2 + 48);
      (*(v51 + 32))(v52, v28, v57);
      (*(v58 + 32))(v48, v28 + v37, v4);
      v38 = sub_216E67EE8();
      v40 = v39;
      (*(v51 + 8))(v52, v57);
      if ((v40 & 1) == 0)
      {
        (*(v58 + 8))(v48, v4);
        return;
      }

      (*(v58 + 16))(v56, *(v49 + 56) + *(v58 + 72) * v38, v4);
      sub_21698C470(&qword_27CABE600, MEMORY[0x277D2A9A8]);
      a2 = sub_21700E494();
      v41 = *(v58 + 8);
      v41(v56, v4);
      v41(v48, v4);
      if ((a2 & 1) == 0)
      {
        return;
      }
    }

    v28 = v54;
    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8);
        v42 = OUTLINED_FUNCTION_49_1();
        __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
        v25 = 0;
        goto LABEL_12;
      }

      v30 = *(v46 + 8 * v29);
      ++v22;
      if (v30)
      {
        v55 = (v30 - 1) & v30;
        v27 = __clz(__rbit64(v30)) | (v29 << 6);
        v22 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_21698BF40(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    OUTLINED_FUNCTION_46_16();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = (a1[6] + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a1[7] + 8 * v13);
      sub_21700DF14();

      if (!v15)
      {
        return;
      }

      v18 = sub_216E69548(v16, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
LABEL_18:

        return;
      }

      if (*(a2[7] + 8 * v18))
      {
        if (!v17)
        {
          return;
        }

        v21 = sub_21700EAE4();

        if ((v21 & 1) == 0)
        {
          return;
        }
      }

      else if (v17)
      {
        goto LABEL_18;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      v12 = a1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21698C0F4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21698C14C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21700C4B4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for FullScreenArtworkView(0);
  OUTLINED_FUNCTION_36(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21698963C(v1 + v4, v8, a1);
}

unint64_t sub_21698C264()
{
  result = qword_27CABE648;
  if (!qword_27CABE648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE628);
    sub_2166D9530(&qword_27CABE650, &qword_27CABE658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE648);
  }

  return result;
}

unint64_t sub_21698C31C()
{
  result = qword_27CABE660;
  if (!qword_27CABE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE660);
  }

  return result;
}

unint64_t sub_21698C3B4()
{
  result = qword_27CABE670;
  if (!qword_27CABE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE668);
    sub_21698C470(&qword_280E4A3F0, MEMORY[0x277CE43D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE670);
  }

  return result;
}

uint64_t sub_21698C470(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21698C4C4()
{
  result = qword_27CABE6A0;
  if (!qword_27CABE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE678);
    sub_21698C550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6A0);
  }

  return result;
}

unint64_t sub_21698C550()
{
  result = qword_27CABE6A8;
  if (!qword_27CABE6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE698);
    sub_21698C5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6A8);
  }

  return result;
}

unint64_t sub_21698C5DC()
{
  result = qword_27CABE6B0;
  if (!qword_27CABE6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE690);
    sub_2166D9530(&qword_27CABE6B8, &qword_27CABE688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6B0);
  }

  return result;
}

unint64_t sub_21698C694()
{
  result = qword_27CABE6C0;
  if (!qword_27CABE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE680);
    sub_21698C720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6C0);
  }

  return result;
}

unint64_t sub_21698C720()
{
  result = qword_27CABE6C8;
  if (!qword_27CABE6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE6D0);
    sub_2166D9530(&qword_27CAB87A0, &qword_27CAB87A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6C8);
  }

  return result;
}

unint64_t sub_21698C7E0()
{
  result = qword_27CABE6E0;
  if (!qword_27CABE6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE6D8);
    sub_21698C86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6E0);
  }

  return result;
}

unint64_t sub_21698C86C()
{
  result = qword_27CABE6E8;
  if (!qword_27CABE6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE6F0);
    sub_21698C8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6E8);
  }

  return result;
}

unint64_t sub_21698C8F8()
{
  result = qword_27CABE6F8;
  if (!qword_27CABE6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE700);
    sub_2166D9530(&qword_27CABE6B8, &qword_27CABE688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6F8);
  }

  return result;
}

unint64_t sub_21698C9B8()
{
  result = qword_280E2C9D8;
  if (!qword_280E2C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9D8);
  }

  return result;
}

unint64_t sub_21698CA0C()
{
  result = qword_280E2DD48;
  if (!qword_280E2DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DD48);
  }

  return result;
}

unint64_t sub_21698CAA0()
{
  result = qword_27CABE730;
  if (!qword_27CABE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE738);
    sub_21698CB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE730);
  }

  return result;
}

unint64_t sub_21698CB2C()
{
  result = qword_27CABE740;
  if (!qword_27CABE740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE748);
    sub_2166D9530(&qword_27CABE750, &qword_27CABE758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE740);
  }

  return result;
}

unint64_t sub_21698CBE4()
{
  result = qword_27CABE760;
  if (!qword_27CABE760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE628);
    sub_21698C264();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21698C31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE760);
  }

  return result;
}

unint64_t sub_21698CD10()
{
  result = qword_27CABE770;
  if (!qword_27CABE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE770);
  }

  return result;
}

unint64_t sub_21698CD80()
{
  result = qword_280E387A8[0];
  if (!qword_280E387A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBAA8);
    sub_21698C470(&unk_280E387E8, type metadata accessor for BackgroundConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E387A8);
  }

  return result;
}

uint64_t sub_21698CE34(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21698CEB0()
{
  result = qword_27CABE7A8;
  if (!qword_27CABE7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE778);
    sub_21698CF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE7A8);
  }

  return result;
}

unint64_t sub_21698CF3C()
{
  result = qword_27CABE7B0;
  if (!qword_27CABE7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE7B8);
    sub_2166D9530(&qword_27CABE7C0, &qword_27CABE7C8);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE7B0);
  }

  return result;
}

uint64_t type metadata accessor for SearchLandingPageIntent()
{
  result = qword_280E37790;
  if (!qword_280E37790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21698D0F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for SearchLandingPageIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE7D0);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21698D2F4(uint64_t a1)
{
  result = sub_2166CE4BC(&qword_280E377D0, type metadata accessor for SearchLandingPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21698D394(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE4BC(&qword_280E377D0, type metadata accessor for SearchLandingPageIntent);
  result = sub_2166CE4BC(qword_280E377D8, type metadata accessor for SearchLandingPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t Hashable.representsNowPlaying.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v4 + 16))(v6, v2, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE7D8);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_21669987C(&v20, &qword_27CABE7E0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    goto LABEL_6;
  }

  v17 = *(&v21 + 1);
  v18 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  (*(v18 + 8))(v17, v18);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_21669987C(v9, &qword_27CAB70C0);
    return 0;
  }

  sub_2167AF85C(v9, v16);
  sub_2167AF85C(v16, v12);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    return 1;
  }

  sub_21698D6C8(v12);
  return 0;
}

uint64_t sub_21698D6C8(uint64_t a1)
{
  v2 = type metadata accessor for MusicAppDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21698D724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29[1] = a4;
  v29[2] = a5;
  v30 = a1;
  v31 = a6;
  v10 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7();
  v13 = (v12 - v11);
  v14 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  v32 = v19;
  v33 = a2;
  v34 = a4;
  v35 = a5;
  v36 = a3;
  v20 = type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v29 - v25;
  (*(v14 + 24))(a2, v14, v24);
  sub_2167CC3A4(v30, v13);
  sub_21698D920(v18, v13, AssociatedTypeWitness, a2, a3, v26);
  v27 = OUTLINED_FUNCTION_92_0();
  MEMORY[0x21CE9B900](v27);
  return (*(v22 + 8))(v26, v20);
}

uint64_t sub_21698D920@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v12 = type metadata accessor for MappedSection(0);
  (*(a5 + 16))(a1, *&a2[*(v12 + 32)], &a2[*(v12 + 24)], a4, a5);
  v13 = type metadata accessor for SingleItemSectionViewModifier();
  (*(*(a3 - 8) + 32))(a6 + *(v13 + 68), a1, a3);
  v15 = *a2;
  v14 = *(a2 + 1);
  sub_21700DF14();
  result = sub_21698DA34(a2);
  *(a6 + 56) = v15;
  *(a6 + 64) = v14;
  return result;
}

uint64_t sub_21698DA34(uint64_t a1)
{
  v2 = type metadata accessor for MappedSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21698DA90()
{
  sub_2167B8000();
  if (v0 <= 0x3F)
  {
    sub_21698DF28();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21698DB38(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 72) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((v16 + 63) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v17 = *(v16 + 40);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_21698DCC4(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 72) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v21 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((v21 + 63) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(v21 + 24) = 0u;
            *(v21 + 40) = 0u;
            *(v21 + 16) = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v21 + 40) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          *(a1 + 2) = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_21698DF28()
{
  result = qword_280E44318[0];
  if (!qword_280E44318[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E44318);
  }

  return result;
}

uint64_t sub_21698DFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a1;
  v138 = a3;
  v134 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v161 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v8 - v7);
  v156 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v155 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v12 - v11);
  v157 = *(a2 + 16);
  v152 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v151 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v15);
  OUTLINED_FUNCTION_7_49();
  v158 = a2;
  v16 = sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v146 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v149 = v21;
  v22 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v144 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v25);
  v26 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v140 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v137 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v33);
  v34 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v142 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v38 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v135 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v41);
  v133 = v16;
  v139 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x277CDF918];
  v117 = OpaqueTypeConformance2;
  v175 = OpaqueTypeConformance2;
  v176 = MEMORY[0x277CDF918];
  v148 = v22;
  v173 = swift_getWitnessTable();
  v174 = v43;
  v145 = v26;
  v118 = swift_getWitnessTable();
  v171 = v118;
  v172 = v43;
  v143 = v30;
  v119 = swift_getWitnessTable();
  v169 = v119;
  v170 = v43;
  v147 = v34;
  v120 = swift_getWitnessTable();
  v167 = v120;
  v168 = sub_21698EDC8();
  v44 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v130 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v141 = v38;
  v121 = v44;
  v163 = *&OpaqueTypeMetadata2;
  v164 = swift_getOpaqueTypeConformance2();
  v124 = v164;
  v127 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v129 = v49;
  MEMORY[0x28223BE20](v50);
  v122 = v115 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_0(v115 - v53);
  v54 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7();
  v60 = v59 - v58;
  v61 = *(v3 + 40);
  v62 = *(v3 + 48);
  v63 = __swift_project_boxed_opaque_existential_1((v3 + 16), v61);
  v65 = *v3;
  v159 = v3;
  v66 = *(v3 + 8);
  if (v66 == 1)
  {
    v64.n128_u64[0] = v65;
  }

  else
  {
    v115[1] = v63;

    sub_21700ED94();
    v67 = sub_217009C34();
    v116 = OpaqueTypeMetadata2;
    v68 = v67;
    sub_217007BC4();

    OpaqueTypeMetadata2 = v116;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v65, 0);
    (*(v56 + 8))(v60, v54);
    v64.n128_f64[0] = v163;
  }

  (*(v62 + 8))(v61, v62, v64);
  v70 = v69;
  v72 = v71;
  if (v66)
  {
    v73 = *&v65;
  }

  else
  {

    sub_21700ED94();
    v74 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v65, 0);
    (*(v56 + 8))(v60, v54);
    v73 = v163;
  }

  v75 = v73 - v70 - v72;
  v76 = v158;
  v77 = v157;
  v78 = v159;
  v79 = v150;
  (*(*(v157 - 8) + 16))(v150, v159 + *(v158 + 68), v157);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v77);
  v80 = swift_checkMetadataState();
  sub_216BE53B0(v79, 0, 0, v80, v77, v139, *(v76 + 32), v136);
  OUTLINED_FUNCTION_67();
  v81(v79, v152);
  sub_217009CB4();
  v82 = v132;
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v83 = OUTLINED_FUNCTION_92_0();
  v84(v83);
  sub_217009CD4();
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v85(v82, v79);
  sub_217009C94();
  v86 = v128;
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v87 = OUTLINED_FUNCTION_92_0();
  v88(v87);
  sub_217009CA4();
  v89 = v131;
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v90(v86, v79);
  swift_getKeyPath();
  v163 = v75;
  v91 = v126;
  v92 = v147;
  sub_21700A3D4();

  OUTLINED_FUNCTION_67();
  v93(v89, v92);
  v94 = v154;
  sub_2170099C4();
  v95 = v125;
  v96 = v141;
  sub_21700A784();
  OUTLINED_FUNCTION_67();
  v97(v94, v156);
  OUTLINED_FUNCTION_67();
  v98(v91, v96);
  v99 = *(v76 + 40);
  (*(v99 + 8))(v77, v99);
  v100 = (*(v99 + 16))(v77, v99);
  if (v101)
  {
    v102 = MEMORY[0x277D837D0];
  }

  else
  {
    v100 = 0;
    v102 = 0;
    v165 = 0;
  }

  v163 = *&v100;
  v164 = v101;
  v166 = v102;
  v104 = *(v78 + 56);
  v103 = *(v78 + 64);
  v162[3] = MEMORY[0x277D837D0];
  v162[0] = v104;
  v162[1] = v103;
  sub_21700DF14();
  v105 = v160;
  sub_21700D8D4();

  sub_216697CFC(v162);
  sub_216697CFC(&v163);
  v106 = v122;
  v107 = v124;
  sub_21700A204();
  OUTLINED_FUNCTION_67();
  v108(v105, v134);
  OUTLINED_FUNCTION_67();
  v109(v95, OpaqueTypeMetadata2);
  v163 = *&OpaqueTypeMetadata2;
  v164 = v107;
  OUTLINED_FUNCTION_2_5();
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v123;
  v112 = v127;
  sub_2166C24DC(v106, v127, v110);
  v113 = *(v129 + 8);
  v113(v106, v112);
  sub_2166C24DC(v111, v112, v110);
  return (v113)(v111, v112);
}

unint64_t sub_21698EDC8()
{
  result = qword_280E2A758;
  if (!qword_280E2A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A758);
  }

  return result;
}

double sub_21698EE54()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v0 scaledValueForValue_];
  v2 = v1;

  return (v2 / 100.0 + -1.0) * 0.7 + 1.0;
}

uint64_t sub_21698EEE4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!(a3 >> 6))
  {
    if (a6 < 0x40u && a1 == a4)
    {
      if (a3)
      {
        if (a6)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && *&a2 == *&a5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a3 >> 6 != 1)
  {
    return (a6 & 0xC0) == 0x80 && !(a5 | a4) && a6 == 128;
  }

  if ((a6 & 0xC0) != 0x40)
  {
    return 0;
  }

  if (a2)
  {
    return (a5 & 1) != 0;
  }

  return !(a5 & 1 | (*&a1 != *&a4));
}

BOOL sub_21698EF8C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t sub_21698EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_21698F234(v5, &v22);
  switch(v23)
  {
    case 0:
      v10 = 2;
      switch(a1)
      {
        case 2:
          OUTLINED_FUNCTION_1_86();
          if (v15)
          {
            v10 = 1;
          }

          else
          {
            v10 = 3;
          }

          break;
        case 3:
          return v10;
        case 4:
        case 5:
          goto LABEL_13;
        case 6:
          OUTLINED_FUNCTION_1_86();
          v16 = 7;
          v17 = 4;
          goto LABEL_26;
        case 7:
          v10 = 5;
          break;
        default:
          v10 = 1;
          break;
      }

      break;
    case 1:
      v11 = a1;
      v12 = &unk_21702FF90;
      goto LABEL_10;
    case 2:
      v11 = a1;
      v12 = &unk_21702FFD0;
LABEL_10:
      v10 = v12[v11];
      break;
    case 3:
      v10 = 1;
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_1_86();
          if (v15)
          {
            v10 = 1;
          }

          else
          {
            v10 = 4;
          }

          break;
        case 2:
          v10 = 2;
          break;
        case 3:
LABEL_13:
          v10 = 3;
          break;
        case 4:
          v10 = 4;
          break;
        case 5:
          OUTLINED_FUNCTION_1_86();
          v16 = 9;
          v17 = 5;
          goto LABEL_26;
        case 6:
          OUTLINED_FUNCTION_1_86();
          if (v15)
          {
            v10 = 6;
          }

          else
          {
            v10 = 28;
          }

          break;
        case 7:
          OUTLINED_FUNCTION_1_86();
          v16 = 15;
          v17 = 7;
LABEL_26:
          if (v15)
          {
            v10 = v17;
          }

          else
          {
            v10 = v16;
          }

          break;
        default:
          return v10;
      }

      break;
    default:
      sub_2166A0F18(&v22, v19);
      v13 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v10 = (*(v14 + 8))(a1, a2, a3, a4, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      break;
  }

  return v10;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI5SpecsO13DynamicLayoutO4GridV0E0O(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21698F290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21698F2D0(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_21698F338(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_21698F384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21698F3D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21698F408(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_21698F43C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 40))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21698F490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedDateRange.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21698F54C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21698F5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v12;
  v13 = sub_2170080D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v20 = type metadata accessor for ColorSchemeArtwork();
  OUTLINED_FUNCTION_34();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3, v22);
  OUTLINED_FUNCTION_1_87(v19);
  if (v25)
  {
    sub_216697664(v19, &qword_27CABA338);
    OUTLINED_FUNCTION_2_67();
    return v26(a2);
  }

  v40 = a2;
  v28 = v44;
  sub_21698FAD8(v19, v24, type metadata accessor for ColorSchemeArtwork);
  (*(v14 + 16))(v16, v43, v13);
  v29 = (*(v14 + 88))(v16, v13);
  if (v29 == *MEMORY[0x277CDF3D0])
  {
    sub_2169833F8(v24, v10);
    type metadata accessor for Artwork();
    OUTLINED_FUNCTION_1_87(v10);
    if (!v25)
    {
      sub_21698FA7C(v24);
      OUTLINED_FUNCTION_0_102();
      v35 = v10;
LABEL_19:
      sub_21698FAD8(v35, v28, v34);
      return OUTLINED_FUNCTION_4_52();
    }

    OUTLINED_FUNCTION_2_67();
    v30(v40);
    sub_21698FA7C(v24);
    result = OUTLINED_FUNCTION_1_87(v10);
    if (v25)
    {
      return result;
    }

    v31 = v10;
    return sub_216697664(v31, &qword_27CAB6D60);
  }

  if (v29 == *MEMORY[0x277CDF3C0])
  {
    v32 = v41;
    sub_2169833F8(&v24[*(v20 + 20)], v41);
    type metadata accessor for Artwork();
    OUTLINED_FUNCTION_1_87(v32);
    if (!v25)
    {
      sub_21698FA7C(v24);
      OUTLINED_FUNCTION_0_102();
      v35 = v32;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_2_67();
    v33();
    sub_21698FA7C(v24);
    result = OUTLINED_FUNCTION_1_87(v32);
    if (v25)
    {
      return result;
    }

    v31 = v32;
    return sub_216697664(v31, &qword_27CAB6D60);
  }

  v36 = v42;
  sub_2169833F8(v24, v42);
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_1_87(v36);
  if (v25)
  {
    OUTLINED_FUNCTION_2_67();
    v37();
    sub_21698FA7C(v24);
    OUTLINED_FUNCTION_1_87(v36);
    if (!v25)
    {
      sub_216697664(v36, &qword_27CAB6D60);
    }
  }

  else
  {
    sub_21698FA7C(v24);
    OUTLINED_FUNCTION_0_102();
    sub_21698FAD8(v36, v28, v38);
    OUTLINED_FUNCTION_4_52();
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21698FA7C(uint64_t a1)
{
  v2 = type metadata accessor for ColorSchemeArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21698FAD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_21698FB38(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v7 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore_];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity_];

    [v3 setAllowsExpiredBags_];
  }
}

uint64_t type metadata accessor for ProcessDeepLinkIntent()
{
  result = qword_27CABE7E8;
  if (!qword_27CABE7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21698FCC4()
{
  sub_2166CE38C();
  if (v0 <= 0x3F)
  {
    sub_21698FD58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21698FD58()
{
  if (!qword_280E43770)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E43770);
    }
  }
}

void sub_21698FDF0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2166F1DCC();
    v13 = *v2;
    v12 = v2[1];
    v24 = MEMORY[0x277D837D0];
    v22 = v13;
    v23 = v12;
    sub_21700DF14();
    v14 = a1;
    v15 = sub_2166F1E10(&v22, a1);
    sub_2166F1F64(v15);
    v16 = type metadata accessor for ProcessDeepLinkIntent();
    sub_2168CC268(v2 + *(v16 + 20), v8);
    v17 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
    {
      sub_2168CC2D8(v8);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v14).super.isa;
      sub_2168CC340(v8);
    }

    sub_2166F1F64(isa);
    if ((*(v3 + *(v16 + 24)) & 1) == 0)
    {
      v24 = MEMORY[0x277D837D0];
      v22 = 0x6948686372616573;
      v23 = 0xEB0000000073746ELL;
      v19 = v14;
      v20 = sub_2166F1E10(&v22, a1);
      sub_2166F1F64(v20);
    }

    v21 = MEMORY[0x277D225C8];
    a2[3] = v11;
    a2[4] = v21;
    *a2 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216990078(uint64_t a1)
{
  *(a1 + 8) = sub_2169900FC(&qword_27CABE7F8, type metadata accessor for ProcessDeepLinkIntent);
  result = sub_2169900FC(&qword_27CABE800, type metadata accessor for ProcessDeepLinkIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2169900FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_216990154()
{
  v0 = objc_allocWithZone(type metadata accessor for PageCollectionViewController());
  v1 = sub_21700DF14();
  return sub_216AC1674(v1);
}

uint64_t sub_2169901C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216990310();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21699022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216990310();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_216990290()
{
  sub_216990310();
  sub_217009AF4();
  __break(1u);
}

unint64_t sub_2169902BC()
{
  result = qword_27CABE808;
  if (!qword_27CABE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE808);
  }

  return result;
}

unint64_t sub_216990310()
{
  result = qword_27CABE810;
  if (!qword_27CABE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE810);
  }

  return result;
}

uint64_t sub_21699038C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v28 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  sub_21700D7A4();
  sub_21700CE04();
  v29 = v6;
  v30 = v4;
  (*(v6 + 16))(v9, v31, v4);
  v16 = type metadata accessor for Spacer();
  v17 = *(v16 + 20);
  sub_21700D734();
  v18 = a1;
  v19 = v28;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = *(v19 + 8);
  v23(v15, v10);
  if (v22)
  {
    v32 = v20;
    v33 = v22;
    sub_21700F364();
    (*(v29 + 8))(v31, v30);
    return (v23)(v18, v10);
  }

  else
  {
    v25 = sub_21700E2E4();
    sub_216990744(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 25705;
    v26[1] = 0xE200000000000000;
    v26[2] = v16;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v29 + 8))(v31, v30);
    v23(v18, v10);
    return sub_2167B0250(v34 + v17);
  }
}

uint64_t sub_216990744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21699078C()
{
  result = type metadata accessor for SectionChangeInstruction(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_216990860()
{
  sub_21700F3B4();

  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21700DF14();
  MEMORY[0x21CE9F490](v2, v3);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t sub_216990904()
{

  sub_216990A6C(v0 + qword_280E30688);
  return v0;
}

uint64_t sub_21699093C()
{
  sub_216990904();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2169909F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216990A30(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216990A6C(uint64_t a1)
{
  v2 = type metadata accessor for SectionChangeInstruction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216990AC8(char *a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v8 = sub_21700CD44();
  v9 = sub_21700CF34();
  (*(*(v9 - 8) + 8))(a2, v9);
  v10 = *(v5 + 8);
  v10(a1, v4);
  v10(v7, v4);
  return v8 & 1;
}

uint64_t sub_216990C1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216990AC8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_216990C4C(uint64_t a1)
{
  result = sub_216990C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216990C74()
{
  result = qword_27CABE818;
  if (!qword_27CABE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE818);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_216990E00(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v70 = a4;
  v6 = sub_21700AC64();
  v7 = OUTLINED_FUNCTION_0(v6, &__dst[24]);
  v62 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_70(v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE820);
  OUTLINED_FUNCTION_0(v10, &v76);
  v67 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE828);
  OUTLINED_FUNCTION_1_77(v15, &__dst[40]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE830);
  OUTLINED_FUNCTION_1_77(v19, &__dst[56]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE838);
  OUTLINED_FUNCTION_1_77(v23, &v75);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE840);
  OUTLINED_FUNCTION_1_77(v27, &v74);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_70(v61 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE848);
  OUTLINED_FUNCTION_1_77(v30, &__dst[48]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_70(v61 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE850);
  OUTLINED_FUNCTION_1_77(v33, &v77);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_70(v61 - v35);
  KeyPath = swift_getKeyPath();
  sub_21700DF14();
  v37 = sub_217009E84();
  v38 = swift_getKeyPath();
  v71 = 0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = v38;
  __src[8] = v37;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C48);
  sub_21699188C();
  v39 = v64;
  sub_21700A304();
  memcpy(__dst, __src, sizeof(__dst));
  sub_216697664(__dst, &qword_27CAB8C48);
  if (v39)
  {
    (*(v62 + 104))(v61[1], *MEMORY[0x277CE0EE0], v63);
    v40 = sub_21700AD44();
  }

  else
  {
    v40 = sub_21700ACF4();
  }

  v41 = v40;
  v42 = swift_getKeyPath();
  (*(v67 + 32))(v18, v14, v68);
  OUTLINED_FUNCTION_4_53();
  v44 = &v18[v43];
  *v44 = v42;
  v44[1] = v41;
  LOBYTE(v41) = sub_217009C74();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  sub_21678818C(v18, v22, &qword_27CABE828);
  OUTLINED_FUNCTION_4_53();
  v46 = &v22[v45];
  *v46 = v41;
  OUTLINED_FUNCTION_5_51(v46);
  sub_21700B3B4();
  sub_217008BB4();
  sub_21678818C(v22, v26, &qword_27CABE830);
  OUTLINED_FUNCTION_4_53();
  memcpy(&v26[v47], __src, 0x70uLL);
  v48 = v66;
  sub_21678818C(v26, v66, &qword_27CABE838);
  OUTLINED_FUNCTION_4_53();
  *(v48 + v49) = v39 & 1;
  OUTLINED_FUNCTION_4_53();
  v50 = v65;
  v52 = v65 + v51;
  v53 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v54 + 104))(v52, v53);
  *(v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00) + 36)) = 256;
  sub_21678818C(v48, v50, &qword_27CABE840);
  LOBYTE(v52) = sub_217009C94();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v55 = v69;
  sub_21678818C(v50, v69, &qword_27CABE848);
  OUTLINED_FUNCTION_4_53();
  v57 = (v55 + v56);
  *v57 = v52;
  OUTLINED_FUNCTION_5_51(v57);
  LOBYTE(v52) = sub_217009CB4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v58 = v55;
  v59 = v70;
  sub_21678818C(v58, v70, &qword_27CABE850);
  v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE870) + 36));
  *v60 = v52;
  OUTLINED_FUNCTION_5_51(v60);
}

uint64_t sub_2169914EC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8C8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  if (a2)
  {
    v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8D0) + 36)];
    sub_21700B2B4();
    v14 = sub_217009C84();
    v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20) + 36)] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8D8);
    (*(*(v15 - 8) + 16))(v6, a1, v15);
    KeyPath = swift_getKeyPath();
    v17 = &v6[*(v4 + 36)];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278) + 28);
    v19 = *MEMORY[0x277CDF3D0];
    v20 = sub_2170080D4();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = KeyPath;
    sub_2166A6E54(v6, v9, &qword_27CABE8B8);
    swift_storeEnumTagMultiPayload();
    sub_216991F4C();
    sub_216992030();
    sub_217009554();
    v21 = v6;
    v22 = &qword_27CABE8B8;
  }

  else
  {
    v23 = sub_21700AC54();
    v24 = sub_217009C84();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8D8);
    (*(*(v25 - 8) + 16))(v12, a1, v25);
    v26 = &v12[*(v10 + 36)];
    *v26 = v23;
    v26[8] = v24;
    sub_2166A6E54(v12, v9, &qword_27CABE8C8);
    swift_storeEnumTagMultiPayload();
    sub_216991F4C();
    sub_216992030();
    sub_217009554();
    v21 = v12;
    v22 = &qword_27CABE8C8;
  }

  return sub_216697664(v21, v22);
}

unint64_t sub_21699188C()
{
  result = qword_27CABE858;
  if (!qword_27CABE858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C48);
    sub_216991944();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE858);
  }

  return result;
}

unint64_t sub_216991944()
{
  result = qword_27CABE860;
  if (!qword_27CABE860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE868);
    sub_2167C4D74();
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackgroundViewModifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216991B08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216991B8C()
{
  result = qword_27CABE888;
  if (!qword_27CABE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE848);
    sub_216991C44();
    sub_2166D9530(&qword_27CAB7BF8, &qword_27CAB7C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE888);
  }

  return result;
}

unint64_t sub_216991C44()
{
  result = qword_27CABE890;
  if (!qword_27CABE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE840);
    sub_216991CD0();
    sub_216991EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE890);
  }

  return result;
}

unint64_t sub_216991CD0()
{
  result = qword_27CABE898;
  if (!qword_27CABE898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE838);
    sub_216991D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE898);
  }

  return result;
}

unint64_t sub_216991D5C()
{
  result = qword_27CABE8A0;
  if (!qword_27CABE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE830);
    sub_216991DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8A0);
  }

  return result;
}

unint64_t sub_216991DE8()
{
  result = qword_27CABE8A8;
  if (!qword_27CABE8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C48);
    sub_21699188C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8A8);
  }

  return result;
}

unint64_t sub_216991EDC()
{
  result = qword_27CABE8B0;
  if (!qword_27CABE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8B0);
  }

  return result;
}

unint64_t sub_216991F4C()
{
  result = qword_27CABE8E0;
  if (!qword_27CABE8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE8C8);
    sub_2166D9530(&qword_27CABE8E8, &qword_27CABE8D8);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8E0);
  }

  return result;
}

unint64_t sub_216992030()
{
  result = qword_27CABE8F0;
  if (!qword_27CABE8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE8B8);
    sub_2169920E8();
    sub_2166D9530(&qword_280E2A738, &qword_27CAB9278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8F0);
  }

  return result;
}

unint64_t sub_2169920E8()
{
  result = qword_27CABE8F8;
  if (!qword_27CABE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE8D0);
    sub_2166D9530(&qword_27CABE8E8, &qword_27CABE8D8);
    sub_2166D9530(&qword_27CAB7B18, &qword_27CAB7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8F8);
  }

  return result;
}

unint64_t sub_2169921CC()
{
  result = qword_27CABE900;
  if (!qword_27CABE900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE908);
    sub_216991F4C();
    sub_216992030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE900);
  }

  return result;
}

uint64_t sub_216992258(void *a1)
{
  v143 = *a1;
  v2 = v143;
  v141 = sub_21700CC74();
  OUTLINED_FUNCTION_1();
  v150 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v139 = sub_21700D9F4();
  OUTLINED_FUNCTION_1();
  v138 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1();
  v137 = v9;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v134 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v16);
  v127 = sub_21700DA84();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_6_0();
  v126 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F8);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_8_0(&v112 - v19);
  v157 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v147 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47_1();
  v156 = v23;
  v149 = sub_21700DC84();
  OUTLINED_FUNCTION_1();
  v148 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v145 = v31;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  v155 = v36;
  v37 = *(*(v2 + 88) - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v112 - v39;
  v121 = a1[3];
  v119 = type metadata accessor for SubscriptionStatusCoordinator();
  swift_allocObject();

  v154 = sub_2166A62EC(v41);
  v152 = a1;
  sub_216681B64((a1 + 12), &v161, &qword_27CAB6A50);
  if (v162)
  {
    v42 = v30;
    sub_2166A0F18(&v161, v164);
  }

  else
  {
    v42 = v30;
    v43 = type metadata accessor for MusicKitPlayer();
    swift_allocObject();
    v44 = sub_216A1A3E4();
    v164[3] = v43;
    v164[4] = &off_282922F18;
    v164[0] = v44;
    if (v162)
    {
      sub_216993614(&v161);
    }
  }

  type metadata accessor for ConcreteAppDestinationPageProvider();
  v45 = v152;
  v46 = *(v37 + 16);
  v124 = v45 + *(*v45 + 200);
  v46(v40);
  v153 = sub_2166863B0();
  v122 = type metadata accessor for AgeVerificationManager();
  swift_allocObject();
  v144 = sub_2166AD6C4();
  sub_216685F4C(0, &qword_280E29B78);
  v47 = v45[2];
  v48 = v47[2];
  v49 = v47[3];
  v51 = v47[4];
  v50 = v47[5];
  v52 = qword_280E2B740;
  sub_21700DF14();
  sub_21700DF14();
  if (v52 != -1)
  {
    swift_once();
  }

  v53 = qword_280E73A78;
  v116 = qword_280E73A78;
  v54 = sub_2166A3488(v48, v49, v51, v50, v53);
  v55 = v155;
  v128 = v54;
  sub_21700DF74();
  v56 = sub_21700DBB4();
  v58 = v145 + 16;
  v57 = *(v145 + 16);
  v59 = v42;
  v60 = v55;
  v57(v35, v55, v59);
  v61 = v35;
  v62 = MEMORY[0x21CE9E9C0](v35, 0xD000000000000011, 0x8000000217082740);
  v63 = v59;
  v64 = v59;
  v65 = v57;
  v57(v61, v55, v64);
  v115 = objc_opt_self();
  v66 = [v115 ams_sharedAccountStore];
  v162 = sub_216685F4C(0, &qword_280E29D68);
  v163 = MEMORY[0x277D225B8];
  v114 = v162;
  *&v161 = v66;
  v67 = [objc_opt_self() mainBundle];
  v68 = v146;
  v142 = v61;
  sub_21700DC74();
  v162 = &type metadata for AccountMetricsFieldsProvider;
  v163 = sub_2166B9CF8();
  *&v161 = v154;
  v69 = qword_280E2A188;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = sub_21700DEA4();
  __swift_project_value_buffer(v70, qword_280E73A50);
  sub_21700DC64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v161);
  sub_2166BA038();
  (*(v148 + 16))(v27, v68, v149);
  v162 = &unk_28293C388;
  v163 = sub_2166BE144();
  v71 = swift_allocObject();
  *&v161 = v71;
  v71[5] = &unk_28293C310;
  v71[6] = sub_21699367C();
  v71[7] = *(v121 + 16);
  v159 = v56;
  v160 = MEMORY[0x277D221A8];
  v158 = v62;
  v125 = v62;
  v72 = v123;
  v151 = v63;
  v65(v123, v60, v63);
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v63);

  v73 = v156;
  sub_21700D544();
  v113 = *(v147 + 16);
  v74 = v120;
  v117 = v65;
  v113(v120, v73, v157);
  sub_21700D844();
  OUTLINED_FUNCTION_91_1();
  v75 = sub_21700D834();
  v118 = v58;
  v76 = v75;
  sub_2166C25D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE910);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_2170307E0;
  v65(v142, v155, v151);
  sub_21700CC54();
  v113(v74, v156, v157);
  sub_21700CC54();
  v123 = v76;
  *&v161 = v76;

  sub_21700CC54();
  sub_216685F4C(0, &qword_280E29D38);
  *&v161 = [objc_opt_self() standardUserDefaults];
  sub_21700CC54();
  *&v161 = [v115 ams_sharedAccountStore];
  sub_21700CC54();
  *&v161 = v154;

  sub_21700CC54();
  type metadata accessor for Persistence();
  swift_allocObject();
  v77 = sub_2166A8B10();
  OUTLINED_FUNCTION_4_54(v77);
  *&v161 = [objc_allocWithZone(type metadata accessor for RestrictionsController()) init];
  sub_21700CC54();
  type metadata accessor for SubscriptionContentRestrictionController();
  swift_allocObject();
  v78 = sub_2166A96D4();
  OUTLINED_FUNCTION_4_54(v78);
  sub_216685F4C(0, &qword_280E29D60);
  *&v161 = v116;
  sub_21700CC54();
  type metadata accessor for DeepLinkInfoProvider();
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_217016ED0;
  *(v79 + 32) = 0;
  *&v161 = v79;
  OUTLINED_FUNCTION_5_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  sub_2167B7D58(v164, &v161);
  OUTLINED_FUNCTION_5_52();
  type metadata accessor for PlaybackPresenter();
  sub_2167B7D58(v164, &v161);
  swift_allocObject();

  v81 = sub_2166CECC4(v80, &v161);
  OUTLINED_FUNCTION_4_54(v81);
  sub_21700DA74();
  sub_21700CC54();
  *&v161 = v144;

  sub_21700CC54();
  type metadata accessor for ExplicitBadgingPresenter();
  OUTLINED_FUNCTION_91_1();

  *&v161 = sub_2166B4640(v82);
  OUTLINED_FUNCTION_7_50();
  type metadata accessor for AppDestinationPageProviderBox();
  *&v161 = v153;

  OUTLINED_FUNCTION_5_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
  v83 = nullsub_1(v152[11], *(v143 + 80), *(v143 + 96));
  v162 = _s11PageContextVMa();
  v163 = &off_282927E48;
  *&v161 = v83;
  swift_unknownObjectRetain();
  sub_21700CC54();
  type metadata accessor for NoticeManager();
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *&v161 = v84;
  sub_21700CC54();
  v85 = v129;
  sub_2166CC8A4(v129);
  v86 = v130;
  sub_2166D65F4();
  v87 = *(v134 + 8);
  v88 = v135;
  v87(v85, v135);
  v89 = v131;
  sub_2166D9718();
  v87(v86, v88);
  v90 = v133;
  sub_2166DC4CC();
  v87(v89, v88);
  sub_2166DF938(0, v132);
  v87(v90, v88);
  sub_21700CC54();
  v91 = type metadata accessor for PushNotifications(0);
  v92 = v142;
  v93 = v155;
  v117(v142, v155, v151);
  v94 = objc_allocWithZone(v91);
  v95 = sub_2166B0518(v92);
  OUTLINED_FUNCTION_4_54(v95);
  type metadata accessor for MusicEntityAnnotationWrapper();
  v96 = v152;
  sub_216681B64((v152 + 17), &v161, &qword_27CAB9450);
  v97 = swift_allocObject();
  OUTLINED_FUNCTION_1_88(v97);
  OUTLINED_FUNCTION_7_50();
  type metadata accessor for MusicPinsCoordinatorWrapper();
  sub_216681B64((v96 + 22), &v161, &qword_27CAB6A60);
  v98 = swift_allocObject();
  OUTLINED_FUNCTION_1_88(v98);
  OUTLINED_FUNCTION_7_50();
  type metadata accessor for SingConnectedStatusWrapper();
  sub_216681B64((v96 + 27), &v161, &qword_27CAB6A58);
  v99 = swift_allocObject();
  OUTLINED_FUNCTION_1_88(v99);
  sub_21700CC64();

  v100 = v137;
  sub_21700DA04();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_91_1();
  v101 = v138;
  v102 = v139;
  (*(v138 + 16))(v136, v100, v139);
  sub_21700D464();
  (*(v101 + 8))(v100, v102);
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_91_1();
  *&v161 = sub_2166AE570();
  v103 = v140;
  OUTLINED_FUNCTION_7_50();
  sub_21700D4A4();
  v104 = *(v150 + 8);
  v105 = v141;
  v104(v103, v141);
  type metadata accessor for TasteStateChangePublisher();
  v106 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  OUTLINED_FUNCTION_91_1();
  *(v106 + 16) = sub_21700CC44();
  *&v161 = v106;
  OUTLINED_FUNCTION_7_50();
  sub_21700D4A4();

  v104(v103, v105);
  v107 = objc_allocWithZone(type metadata accessor for UserSocialProfileCoordinator());

  sub_2166B6BFC();
  v109 = v108;
  v110 = sub_216C0CB94(v108);

  (*(v147 + 8))(v156, v157);
  (*(v148 + 8))(v146, v149);
  (*(v145 + 8))(v93, v151);
  __swift_destroy_boxed_opaque_existential_1Tm(v164);
  return v110;
}