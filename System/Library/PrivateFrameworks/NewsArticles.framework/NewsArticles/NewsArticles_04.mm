void sub_1D79F6630(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for AnalyticsTimedData();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnalyticsWebEmbedData();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2833C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v39 = v2;
    v22 = a1;
    v23 = [v21 endDate];
    if (v23)
    {
      v24 = v23;
      sub_1D7D2830C();

      (*(v12 + 32))(v19, v15, v11);
      v25 = [v21 URL];
      sub_1D7D281EC();

      v26 = [v21 startDate];
      sub_1D7D2830C();

      (*(v12 + 16))(&v7[*(v4 + 20)], v19, v11);
      v27 = [v21 error];

      (*(v12 + 8))(v19, v11);
      if (v27)
      {
        sub_1D79F6B64();
        v29 = *(v28 + 48);
        v30 = *(v28 + 64);
        v31 = v7;
        v32 = v40;
        sub_1D79F6AFC(v31, v40, type metadata accessor for AnalyticsTimedData);
        sub_1D79F6AFC(v41, v32 + v29, type metadata accessor for AnalyticsWebEmbedData);
        *(v32 + v30) = v27;
      }

      else
      {
        sub_1D79F6A88();
        v36 = *(v35 + 48);
        v37 = v7;
        v38 = v40;
        sub_1D79F6AFC(v37, v40, type metadata accessor for AnalyticsTimedData);
        sub_1D79F6AFC(v41, v38 + v36, type metadata accessor for AnalyticsWebEmbedData);
      }

      type metadata accessor for AnalyticsEvent();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_1D79F6A34();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D79F6A34();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1D79F6A34()
{
  result = qword_1EC9E1E68;
  if (!qword_1EC9E1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E68);
  }

  return result;
}

void sub_1D79F6A88()
{
  if (!qword_1EE0C9518)
  {
    type metadata accessor for AnalyticsTimedData();
    type metadata accessor for AnalyticsWebEmbedData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C9518);
    }
  }
}

uint64_t sub_1D79F6AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D79F6B64()
{
  if (!qword_1EE0C9520)
  {
    type metadata accessor for AnalyticsTimedData();
    type metadata accessor for AnalyticsWebEmbedData();
    sub_1D79AC5C4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE0C9520);
    }
  }
}

unint64_t sub_1D79F6C04()
{
  result = qword_1EC9E1E70;
  if (!qword_1EC9E1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E70);
  }

  return result;
}

unint64_t sub_1D79F6C6C()
{
  result = qword_1EC9E1E78;
  if (!qword_1EC9E1E78)
  {
    sub_1D79F6CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E78);
  }

  return result;
}

void sub_1D79F6CC4()
{
  if (!qword_1EC9E1E80)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1E80);
    }
  }
}

uint64_t sub_1D79F6D14()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D79F6DD8()
{
  sub_1D7D303FC();
}

uint64_t sub_1D79F6E88()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D79F6F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D79F72C0();
  *a1 = result;
  return result;
}

void sub_1D79F6F78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073636970;
  v4 = 0xEF73656C63697472;
  v5 = 0x41646574616C6572;
  if (v2 != 1)
  {
    v5 = 0x52646574616C6572;
    v4 = 0xEE00736570696365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F54657069636572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D79F6FF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x41646574616C6572;
  v4 = 0xEF73656C63697472;
  if (v2 != 1)
  {
    v3 = 0x52646574616C6572;
    v4 = 0xEE00736570696365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F54657069636572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000073636970;
  }

  v7 = 0x41646574616C6572;
  v8 = 0xEF73656C63697472;
  if (*a2 != 1)
  {
    v7 = 0x52646574616C6572;
    v8 = 0xEE00736570696365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F54657069636572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000073636970;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

unint64_t sub_1D79F71F4()
{
  result = qword_1EC9E1E88;
  if (!qword_1EC9E1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E88);
  }

  return result;
}

uint64_t sub_1D79F7248()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x20646574616C6552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5420657069636552;
  }
}

uint64_t sub_1D79F72C0()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D79F730C()
{
  result = qword_1EC9E1E90;
  if (!qword_1EC9E1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E90);
  }

  return result;
}

id sub_1D79F7360(char *a1, uint64_t a2, CGFloat *a3)
{
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    v7 = [objc_opt_self() whiteColor];
    [a1 setBackgroundColor_];
  }

  v8 = *a3;
  v9 = a3[1];
  v32 = *(a3 + *(type metadata accessor for ToolbarIssueCoverViewLayoutAttributes() + 28));
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v8;
  v31.size.height = v9;
  v10 = CGRectIntersectsRect(v31, v32);
  v11 = *&a1[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_callToActionLabel];
  if (v10)
  {
    v12 = [objc_opt_self() blackColor];
  }

  else
  {
    v12 = sub_1D79F7720(a2, v3);
  }

  v13 = v12;
  [v11 setTextColor_];

  v14 = [a1 layer];
  [v14 setCornerRadius_];

  v15 = [a1 layer];
  [v15 setCornerCurve_];

  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    v16 = [a1 layer];
    [v16 setShadowOffset_];

    v17 = [a1 layer];
    if (qword_1EC9DFD18 != -1)
    {
      swift_once();
    }

    [v17 setShadowColor_];

    v18 = [a1 layer];
    [v18 setShadowRadius_];

    v19 = [a1 layer];
    LODWORD(v20) = 1045220557;
    [v19 setShadowOpacity_];

    v21 = [a1 layer];
    v22 = objc_opt_self();
    [a1 bounds];
    v23 = [v22 ts_bezierPathWithPillRect_cornerRadius_];
    v24 = [v23 CGPath];

    [v21 setShadowPath_];
  }

  v25 = *&a1[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_coverView];
  v26 = [v25 layer];
  [v26 setCornerRadius_];

  v27 = [v25 layer];
  [v27 setMasksToBounds_];

  v28 = [*&a1[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView] layer];
  [v28 setCornerRadius_];

  return [v11 setTextAlignment_];
}

uint64_t sub_1D79F7720(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PDFReplicaViewerColorPalette();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ArticlePageColorPalette();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [*(a1 + *(type metadata accessor for ToolbarIssueCover() + 20)) type];
  if (v12 == 1)
  {
    v13 = a2[5];
    v14 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v13);
    (*(v14 + 24))(v13, v14);
    v15 = v7[1];
    v16 = type metadata accessor for PDFReplicaViewerColorPalette;
    v17 = v7;
LABEL_5:
    sub_1D79F793C(v17, v16);
    return v15;
  }

  if (!v12)
  {
    v18 = a2[5];
    v19 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v18);
    (*(v19 + 16))(v18, v19);
    v15 = v11[2];
    v16 = type metadata accessor for ArticlePageColorPalette;
    v17 = v11;
    goto LABEL_5;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D79F793C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D79F799C()
{
  sub_1D79F7B3C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4E0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB958];
  v4 = v1;
  v5 = [v2 systemFontOfSize:15.0 weight:v3];
  v6 = sub_1D79F7B94();
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB660];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  *(inited + 104) = MEMORY[0x1E69E63B0];
  *(inited + 80) = 0xBFD3333333333333;
  v8 = v7;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v10 = sub_1D7D3031C();
  type metadata accessor for Key(0);
  sub_1D79F7BE0();
  v11 = sub_1D7D3027C();

  v12 = [v9 initWithString:v10 attributes:v11];

  return v12;
}

void sub_1D79F7B3C()
{
  if (!qword_1EE0BE830)
  {
    sub_1D79D69BC();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE830);
    }
  }
}

unint64_t sub_1D79F7B94()
{
  result = qword_1EE0BED40;
  if (!qword_1EE0BED40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BED40);
  }

  return result;
}

unint64_t sub_1D79F7BE0()
{
  result = qword_1EE0BEF20;
  if (!qword_1EE0BEF20)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BEF20);
  }

  return result;
}

id _s12NewsArticles23TipDialogRequestFactoryC04makedE03forSo09AMSDialogE0CAA0C9ViewModelV7ContentV_tF_0(uint64_t a1)
{
  sub_1D7998EA0(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v50 = &v49 - v4;
  sub_1D7998EA0(0, qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v56 = &v49 - v7;
  v58 = type metadata accessor for TipViewModel.Action(0);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v8);
  v49 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D7D2836C();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2824C();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998EA0(0, qword_1EE0C9EB0, type metadata accessor for TipImageProvider);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v49 - v19);
  v21 = objc_allocWithZone(MEMORY[0x1E698CD00]);
  v22 = sub_1D7D3031C();
  v23 = sub_1D7D3031C();
  v24 = [v21 initWithTitle:v22 message:v23];

  v25 = v24;
  [v25 setStyle_];
  v53 = type metadata accessor for TipViewModel.Content(0);
  sub_1D79F83C8(a1 + *(v53 + 24), v20, qword_1EE0C9EB0, type metadata accessor for TipImageProvider);
  v26 = type metadata accessor for TipImageProvider(0);
  if ((*(*(v26 - 8) + 48))(v20, 1, v26) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v20;

      [v25 setIconImage_];
    }

    else
    {
      sub_1D79F856C();

      v30 = v51;
      v29 = v52;
      (*(v51 + 32))(v16, v20, v52);
      v31 = sub_1D7D281BC();
      [v25 setIconURL_];

      (*(v30 + 8))(v16, v29);
    }
  }

  v32 = objc_opt_self();
  v33 = [v32 actionWithTitle:0 style:2];
  sub_1D7D2835C();
  sub_1D7D2834C();
  v34 = v55[1];
  v35 = v57;
  v34(v12, v57);
  v36 = sub_1D7D3031C();

  [v33 setIdentifier_];

  [v25 addButtonAction_];
  v37 = v56;
  sub_1D79F83C8(a1 + *(v53 + 28), v56, qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
  v38 = v58;
  v39 = v25;
  if ((*(v54 + 48))(v37, 1, v58) == 1)
  {

    sub_1D79F8434(v37);
  }

  else
  {
    v55 = v25;
    v40 = v49;
    sub_1D79F84AC(v37, v49);
    v41 = sub_1D7D3031C();
    v42 = [v32 actionWithTitle:v41 style:0];

    sub_1D7D2835C();
    sub_1D7D2834C();
    v34(v12, v35);
    v43 = sub_1D7D3031C();

    [v42 setIdentifier_];

    v44 = v50;
    sub_1D79F83C8(v40 + *(v38 + 20), v50, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
    v46 = v51;
    v45 = v52;
    v47 = 0;
    if ((*(v51 + 48))(v44, 1, v52) != 1)
    {
      v47 = sub_1D7D281BC();
      (*(v46 + 8))(v44, v45);
    }

    [v42 setDeepLink_];

    v39 = v55;
    [v55 addButtonAction_];

    sub_1D79F8510(v40);
  }

  return v39;
}

uint64_t sub_1D79F83C8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7998EA0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D79F8434(uint64_t a1)
{
  sub_1D7998EA0(0, qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79F84AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewModel.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79F8510(uint64_t a1)
{
  v2 = type metadata accessor for TipViewModel.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D79F856C()
{
  if (!qword_1EE0CB778)
  {
    sub_1D7D2824C();
    sub_1D7998EA0(255, &qword_1EE0BECE0, sub_1D79F85FC);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0CB778);
    }
  }
}

unint64_t sub_1D79F85FC()
{
  result = qword_1EE0BECE8;
  if (!qword_1EE0BECE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BECE8);
  }

  return result;
}

void sub_1D79F8648(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  if ([a5 type])
  {

    sub_1D79F8E50();
    v17 = swift_allocError();
    a3();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a6 + 16), *(a6 + 40));
    v23 = a8;
    v18 = off_1F529CC38;
    type metadata accessor for IssueHeadlineFetchOperationFactory();
    v19 = v18(a5);
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = sub_1D79EA4C8;
    v20[6] = v16;
    v20[7] = a6;
    v20[8] = a7;
    v20[9] = v23;
    aBlock[4] = sub_1D79F8EA4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79F8C40;
    aBlock[3] = &block_descriptor_2;
    v21 = _Block_copy(aBlock);

    v22 = a5;

    [v19 setFetchCompletionHandler_];
    _Block_release(v21);
    sub_1D7D28DCC();
    sub_1D7D28DAC();
    sub_1D7D28DBC();
  }
}

void sub_1D79F889C(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void (*a6)(void, __n128), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v50 = a8;
  v16 = sub_1D7D2E95C();
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v24 = a5;
    v25 = v50;
    v52 = a9;
    v53 = a10;
    v47 = a7;
    v48 = a6;
    if (!a1 || !*(a1 + 16) || (v26 = v18, v27 = v19, v28 = sub_1D7A5B848(v24), (v29 & 1) == 0))
    {
      v48(MEMORY[0x1E69E7CC0], v20);
      return;
    }

    v30 = *(*(a1 + 56) + 8 * v28);
    __swift_project_boxed_opaque_existential_1((v25 + 56), *(v25 + 80));
    (*(v27 + 104))(v22, *MEMORY[0x1E69B5CC0], v26);

    sub_1D7D2E9FC();

    (*(v27 + 8))(v22, v26);
    v31 = v48;
    if (v30 >> 62)
    {
      v32 = sub_1D7D3167C();
      v33 = v52;
      if (v32)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v52;
      if (v32)
      {
LABEL_10:
        v54 = MEMORY[0x1E69E7CC0];
        sub_1D7A5BE4C(0, v32 & ~(v32 >> 63), 0);
        if (v32 < 0)
        {
          __break(1u);
          return;
        }

        v34 = 0;
        v35 = v54;
        v49 = v30 & 0xC000000000000001;
        v50 = v32;
        v51 = v30;
        do
        {
          if (v49)
          {
            v36 = MEMORY[0x1DA70EF00](v34, v30);
          }

          else
          {
            v36 = *(v30 + 8 * v34 + 32);
            swift_unknownObjectRetain();
          }

          v37 = [v36 identifier];
          v38 = sub_1D7D3034C();
          v40 = v39;

          v41 = v53;
          if (!v53)
          {
            v42 = [swift_unknownObjectRetain() identifier];
            v33 = sub_1D7D3034C();
            v41 = v43;

            swift_unknownObjectRelease();
          }

          v54 = v35;
          v45 = *(v35 + 16);
          v44 = *(v35 + 24);

          if (v45 >= v44 >> 1)
          {
            sub_1D7A5BE4C((v44 > 1), v45 + 1, 1);
            v35 = v54;
          }

          ++v34;
          *(v35 + 16) = v45 + 1;
          v46 = (v35 + (v45 << 6));
          v46[4] = v38;
          v46[5] = v40;
          v46[6] = v36;
          v46[7] = 0;
          v46[8] = 0;
          v46[9] = 0;
          v46[10] = v33;
          v46[11] = v41;
          v30 = v51;
          v33 = v52;
        }

        while (v50 != v34);

        (v48)(v35);
LABEL_24:

        return;
      }
    }

    v31(MEMORY[0x1E69E7CC0]);
    goto LABEL_24;
  }

  v23 = a2;
  a3(a2);
}

uint64_t sub_1D79F8C40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D79EB250();
    sub_1D79F8EF0(0, &unk_1EE0BF1D0, sub_1D799621C, MEMORY[0x1E69E62F8]);
    sub_1D79F8F54();
    v4 = sub_1D7D3028C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D79F8D20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79F8D60()
{
  sub_1D79F8EF0(0, &qword_1EE0C0278, sub_1D79F8E00, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D79F8E00()
{
  if (!qword_1EE0BF320)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF320);
    }
  }
}

unint64_t sub_1D79F8E50()
{
  result = qword_1EC9E1E98;
  if (!qword_1EC9E1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E98);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D79F8EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D79F8F54()
{
  result = qword_1EE0BAF78;
  if (!qword_1EE0BAF78)
  {
    sub_1D79EB250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BAF78);
  }

  return result;
}

unint64_t sub_1D79F8FC0()
{
  result = qword_1EC9E1EA0;
  if (!qword_1EC9E1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1EA0);
  }

  return result;
}

uint64_t ArticleRouteOption.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D79F90A0()
{
  result = qword_1EC9E1EB0;
  if (!qword_1EC9E1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1EB0);
  }

  return result;
}

double sub_1D79F9104@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79F93E8(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for ArticleViewerPage;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = *(v8 + 8);
      v13 = *(v8 + 9);
      v14 = *(v8 + 6);
      v29[7] = *(v8 + 7);
      v29[8] = v12;
      v29[9] = v13;
      v15 = *(v8 + 4);
      v16 = *(v8 + 5);
      v17 = *(v8 + 2);
      v29[3] = *(v8 + 3);
      v29[4] = v15;
      v29[5] = v16;
      v29[6] = v14;
      v18 = *(v8 + 1);
      v29[0] = *v8;
      v29[1] = v18;
      v30 = *(v8 + 20);
      v29[2] = v17;
      sub_1D79F944C();
      v19 = swift_allocObject();
      v20 = *(v8 + 2);
      v21 = *(v8 + 4);
      *(v19 + 80) = *(v8 + 3);
      *(v19 + 96) = v21;
      v22 = *v8;
      v23 = *(v8 + 1);
      *(v19 + 16) = xmmword_1D7D3B4D0;
      *(v19 + 32) = v22;
      *(v19 + 112) = *(v8 + 10);
      *(v19 + 48) = v23;
      *(v19 + 64) = v20;
      sub_1D799CC84(v2 + 16, v28);
      v24 = type metadata accessor for PDFReplicaPagePrewarmer();
      v25 = swift_allocObject();
      *(v25 + 64) = 0u;
      *(v25 + 80) = 0u;
      *(v25 + 96) = 0;
      *(v25 + 16) = v19;
      sub_1D799D69C(v28, v25 + 24);
      *(a2 + 24) = v24;
      *(a2 + 32) = sub_1D799C05C(&qword_1EC9E1EB8, type metadata accessor for PDFReplicaPagePrewarmer);
      sub_1D79ECF40(v29, v28);
      sub_1D79F949C(v29);
      *a2 = v25;
      return result;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v8[*(v26 + 48)], *&v8[*(v26 + 48) + 8], *&v8[*(v26 + 48) + 16]);
    v10 = type metadata accessor for ArticleViewerArticlePage;
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    sub_1D79F94F0(v8, type metadata accessor for ArticleViewerPage);
    return result;
  }

  sub_1D79F94F0(v8, v10);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1D79F93E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D79F944C()
{
  if (!qword_1EC9E1A60)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1A60);
    }
  }
}

uint64_t sub_1D79F94F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D79F9560(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D79F95A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D79F95F4()
{
  v1 = *v0;
  v7 = *(*v0 + 16);
  if (!v7)
  {
    return 0;
  }

  v2 = 0;
  v3 = v1 + 56;
  while (v2 < *(v1 + 16))
  {
    ++v2;
    v5 = *(v3 - 24);
    v4 = *(v3 - 16);

    MEMORY[0x1DA70DE90](v5, v4);

    v3 += 88;
    if (v7 == v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79F96F8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1D7A5BDC8((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 11;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1D79F9824@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D79F96F8();
  v3 = sub_1D7BDE0A4(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_1D79F9880()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D79F98E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D79F9B3C();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D79F9930()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D79F9990()
{
  v0 = sub_1D79F95F4();
  v2 = v1;
  if (v0 == sub_1D79F95F4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D7D3197C();
  }

  return v5 & 1;
}

unint64_t sub_1D79F9A34()
{
  result = qword_1EC9E29B0;
  if (!qword_1EC9E29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E29B0);
  }

  return result;
}

unint64_t sub_1D79F9A8C()
{
  result = qword_1EC9E1EC0;
  if (!qword_1EC9E1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1EC0);
  }

  return result;
}

unint64_t sub_1D79F9AE4()
{
  result = qword_1EC9E1EC8;
  if (!qword_1EC9E1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1EC8);
  }

  return result;
}

unint64_t sub_1D79F9B3C()
{
  result = qword_1EC9E1ED0;
  if (!qword_1EC9E1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1ED0);
  }

  return result;
}

unint64_t sub_1D79F9B94()
{
  result = qword_1EC9E1ED8;
  if (!qword_1EC9E1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1ED8);
  }

  return result;
}

void sub_1D79F9BF0(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerView];
  v6 = *&v2[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerView];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *v5;
  }

  else
  {
    v7 = 0;
  }

  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = a1;

  if (a1)
  {
    [v2 addSubview_];
  }
}

id sub_1D79F9CAC()
{
  v1 = OBJC_IVAR____TtC12NewsArticles15AdComponentView____lazy_storage___debugView;
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles15AdComponentView____lazy_storage___debugView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12NewsArticles15AdComponentView____lazy_storage___debugView];
  }

  else
  {
    sub_1D7D2D0FC();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D79F9D3C@<X0>(uint64_t a1@<X8>)
{
  if (![v1 component])
  {
    goto LABEL_6;
  }

  v10[5] = &unk_1F532C638;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v9 = type metadata accessor for ArticleBannerAd();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  v4 = v3;
  sub_1D799CC84(v1 + OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdFactory, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  result = [v4 placementIdentifier];
  if (result)
  {
    v6 = result;
    sub_1D7D3034C();

    v7 = [v1 state];
    sub_1D7CFAC50();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v8 = type metadata accessor for ArticleBannerAd();
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D79F9EF4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleBannerAd();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([v7 component])
    {
      v25 = &unk_1F532C638;
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (!v8)
      {

LABEL_20:
        swift_unknownObjectRelease();
        return;
      }

      v9 = v8;
      v10 = [v8 placementIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D7D3034C();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      sub_1D79FBB34();
      sub_1D7D2CC3C();
      v15 = sub_1D7D2D53C();
      v17 = v16;
      v18 = sub_1D7D2D57C();
      (*(*(v18 - 8) + 8))(v5, v18);
      if (v14)
      {
        if (v12 == v15 && v14 == v17)
        {

LABEL_19:
          __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC12NewsArticles15AdComponentView_integrator], *&v7[OBJC_IVAR____TtC12NewsArticles15AdComponentView_integrator + 24]);
          [v7 absoluteFrame];
          v22 = v21;
          v24 = v23;

          sub_1D7AEDAFC(a1, v9, v22, v24);
          goto LABEL_20;
        }

        v20 = sub_1D7D3197C();

        if (v20)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D79FA154()
{
  sub_1D79FBCFC(0, &qword_1EE0CA1E8, type metadata accessor for ArticleBannerAd);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v22 - v3;
  v5 = type metadata accessor for ArticleBannerAd();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FBCFC(0, &unk_1EE0BFA90, MEMORY[0x1E69B4338]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v22 - v12;
  v14 = sub_1D7D2D3BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC12NewsArticles15AdComponentView_layoutAttributes;
  swift_beginAccess();
  sub_1D79FBFAC(v0 + v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1D79FBE74(v13, &unk_1EE0BFA90, MEMORY[0x1E69B4338]);
  }

  (*(v15 + 32))(v18, v13, v14);
  sub_1D79F9D3C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v15 + 8))(v18, v14);
    return sub_1D79FBE74(v4, &qword_1EE0CA1E8, type metadata accessor for ArticleBannerAd);
  }

  else
  {
    sub_1D79FBD50(v4, v9);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdRenderer), *(v0 + OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdRenderer + 24));
    v22[3] = v5;
    v22[4] = sub_1D79FC090(&qword_1EE0CF430, type metadata accessor for ArticleBannerAd);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_1D79FC02C(v9, boxed_opaque_existential_1);
    sub_1D79FC090(&qword_1EE0CA208, type metadata accessor for AdComponentView);
    sub_1D7D2D1AC();
    sub_1D79FBDB4(v9);
    (*(v15 + 8))(v18, v14);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }
}

uint64_t sub_1D79FA5A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1D7D2CBAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D79FBCFC(0, &qword_1EE0CA1E8, type metadata accessor for ArticleBannerAd);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for ArticleBannerAd();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79F9D3C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1D79FBE74(v14, &qword_1EE0CA1E8, type metadata accessor for ArticleBannerAd);
  }

  sub_1D79FBD50(v14, v19);
  sub_1D7D2D56C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69B3ED0], v2);
  v21 = MEMORY[0x1DA70A5F0](v10, v6);
  v22 = *(v3 + 8);
  v22(v6, v2);
  v22(v10, v2);
  if (v21)
  {
    v28.receiver = v1;
    v28.super_class = ObjectType;
    objc_msgSendSuper2(&v28, sel_renderContents);
    sub_1D7D2CA6C();
    [v1 contentFrame];
    CGRectGetWidth(v29);
    [v1 backgroundViewFrame];
    v23 = sub_1D7D2CF5C();
    v25 = v24;

    sub_1D79F9BF0(v23, v25);
    sub_1D79FA154();
  }

  return sub_1D79FBDB4(v19);
}

uint64_t sub_1D79FA92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D79FBCFC(0, &unk_1EE0BFA90, MEMORY[0x1E69B4338]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v16 - v9 + 16;
  if (a2 == 0xD000000000000014 && 0x80000001D7D69960 == a3 || (result = sub_1D7D3197C(), (result & 1) != 0))
  {
    sub_1D79FBED0(a1, v16);
    v12 = sub_1D7D2D3BC();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v10, v13 ^ 1u, 1, v12);
    v14 = OBJC_IVAR____TtC12NewsArticles15AdComponentView_layoutAttributes;
    swift_beginAccess();
    sub_1D79FBF2C(v10, v3 + v14);
    return swift_endAccess();
  }

  return result;
}

id sub_1D79FAB4C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D79FBB34();
  v98 = v5;
  v97 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v96 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FBCFC(0, &unk_1EE0BFA80, MEMORY[0x1E69B43D8]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v93 = &v83 - v10;
  v11 = sub_1D7D2CADC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D7D2D57C();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v14);
  v100 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FBCFC(0, &qword_1EE0BFA40, sub_1D79FBC40);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v99 = &v83 - v21;
  sub_1D79FBC40();
  v102 = v22;
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v101 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D7D2CB9C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = (&v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v104 = &v83 - v32;
  v33 = sub_1D7D2CBAC();
  v105 = *(v33 - 8);
  v106 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v89 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v83 - v38;
  sub_1D79FBCFC(0, &qword_1EE0CA1E8, type metadata accessor for ArticleBannerAd);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v83 - v42;
  v44 = type metadata accessor for ArticleBannerAd();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v90 = &v83 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v107 = &v83 - v51;
  v111.receiver = v2;
  v111.super_class = ObjectType;
  objc_msgSendSuper2(&v111, sel_visibilityStateDidChangeFromState_, a1, v50);
  result = [v2 visibilityState];
  if (result != 2)
  {
    return result;
  }

  v88 = v25;
  sub_1D79F9D3C(v43);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    return sub_1D79FBE74(v43, &qword_1EE0CA1E8, type metadata accessor for ArticleBannerAd);
  }

  v53 = v107;
  sub_1D79FBD50(v43, v107);
  v54 = [v2 component];
  if (!v54)
  {
    return sub_1D79FBDB4(v53);
  }

  v55 = v54;
  v110[5] = &unk_1F532C638;
  v56 = swift_dynamicCastObjCProtocolConditional();
  if (!v56)
  {
    swift_unknownObjectRelease();
    return sub_1D79FBDB4(v53);
  }

  v57 = v56;
  sub_1D7D2D56C();
  v58 = v105;
  v59 = v106;
  if ((*(v105 + 88))(v39, v106) == *MEMORY[0x1E69B3E98])
  {
    v85 = v57;
    v87 = v55;
    v86 = v44;
    (*(v58 + 96))(v39, v59);
    v60 = v104;
    v61 = v88;
    (*(v26 + 32))(v104, v39, v88);
    (*(v26 + 16))(v29, v60, v61);
    v62 = (*(v26 + 88))(v29, v61);
    if (v62 == *MEMORY[0x1E69B3EB0])
    {
      (*(v26 + 96))(v29, v61);
      sub_1D799D69C(v29, v110);
      sub_1D799D69C((v29 + 40), v109);
      sub_1D799CC84(v109, v108);
      sub_1D79FBE10();
      v63 = v99;
      v64 = v102;
      if (swift_dynamicCast())
      {
        v65 = v103;
        v66 = *(v103 + 56);
        v83 = v103 + 56;
        v84 = v66;
        v66(v63, 0, 1, v64);
        (*(v65 + 32))(v101, v63, v64);
        sub_1D7D2D53C();
        v67 = v89;
        sub_1D799CC84(v110, v89);
        (*(v105 + 104))(v67, *MEMORY[0x1E69B3ED8], v106);
        sub_1D7D2D53C();
        v106 = v26;
        sub_1D7D2D49C();

        sub_1D7D2D54C();
        sub_1D7D2D53C();
        __swift_project_boxed_opaque_existential_1(v110, v110[3]);
        sub_1D7D2CDDC();
        v68 = sub_1D7D2D52C();
        v69 = v93;
        (*(*(v68 - 8) + 56))(v93, 1, 1, v68);
        v70 = v101;
        sub_1D7D2D4EC();

        sub_1D79FBE74(v69, &unk_1EE0BFA80, MEMORY[0x1E69B43D8]);
        v71 = v94;
        v72 = v100;
        v73 = v95;
        (*(v94 + 16))(v90, v100, v95);
        v74 = v92;
        v75 = v70;
        v76 = v102;
        (*(v103 + 16))(v92, v75, v102);
        v84(v74, 0, 1, v76);
        sub_1D79FC090(&qword_1EE0CF430, type metadata accessor for ArticleBannerAd);

        v77 = v96;
        sub_1D7D2CC2C();
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles15AdComponentView_integrator], *&v2[OBJC_IVAR____TtC12NewsArticles15AdComponentView_integrator + 24]);
        [v2 absoluteFrame];
        sub_1D7AEDAFC(v77, v85, v78, v79);
        swift_unknownObjectRelease();
        (*(v97 + 8))(v77, v98);
        (*(v71 + 8))(v72, v73);
        (*(v103 + 8))(v101, v76);
        __swift_destroy_boxed_opaque_existential_1(v109);
        (*(v106 + 8))(v104, v88);
        sub_1D79FBDB4(v107);
      }

      else
      {
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v109);
        (*(v26 + 8))(v60, v61);
        sub_1D79FBDB4(v107);
        (*(v103 + 56))(v63, 1, 1, v64);
        sub_1D79FBE74(v63, &qword_1EE0BFA40, sub_1D79FBC40);
      }

      return __swift_destroy_boxed_opaque_existential_1(v110);
    }

    else if (v62 == *MEMORY[0x1E69B3EA8])
    {
      swift_unknownObjectRelease();
      (*(v26 + 8))(v60, v61);
      return sub_1D79FBDB4(v107);
    }

    else
    {
      v80 = *MEMORY[0x1E69B3EA0];
      v81 = v62;
      swift_unknownObjectRelease();
      v82 = *(v26 + 8);
      v82(v60, v61);
      result = sub_1D79FBDB4(v107);
      if (v81 != v80)
      {
        return (v82)(v29, v61);
      }
    }
  }

  else
  {
    sub_1D79FBDB4(v53);
    swift_unknownObjectRelease();
    return (*(v58 + 8))(v39, v59);
  }

  return result;
}

uint64_t type metadata accessor for AdComponentView()
{
  result = qword_1EE0CA1F0;
  if (!qword_1EE0CA1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D79FB9DC()
{
  sub_1D79FBCFC(319, &unk_1EE0BFA90, MEMORY[0x1E69B4338]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1D79FBAD4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerView);
  v2 = v1;
  return v1;
}

void sub_1D79FBB34()
{
  if (!qword_1EE0BFB88)
  {
    type metadata accessor for ArticleBannerAd();
    sub_1D7D2D04C();
    sub_1D7D2D1DC();
    sub_1D79FC090(&qword_1EE0CF430, type metadata accessor for ArticleBannerAd);
    sub_1D79FC090(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    v0 = sub_1D7D2CC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFB88);
    }
  }
}

void sub_1D79FBC40()
{
  if (!qword_1EE0BFA50)
  {
    sub_1D7D2D04C();
    sub_1D7D2D1DC();
    sub_1D79FC090(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    v0 = sub_1D7D2D5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFA50);
    }
  }
}

void sub_1D79FBCFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D79FBD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleBannerAd();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79FBDB4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleBannerAd();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D79FBE10()
{
  result = qword_1EE0BB1F0;
  if (!qword_1EE0BB1F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BB1F0);
  }

  return result;
}

uint64_t sub_1D79FBE74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D79FBCFC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D79FBED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D79FBF2C(uint64_t a1, uint64_t a2)
{
  sub_1D79FBCFC(0, &unk_1EE0BFA90, MEMORY[0x1E69B4338]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79FBFAC(uint64_t a1, uint64_t a2)
{
  sub_1D79FBCFC(0, &unk_1EE0BFA90, MEMORY[0x1E69B4338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79FC02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleBannerAd();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79FC090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79FC0D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D79FC128(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D79FC17C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D79FC194(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79FC1C4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v2 = sub_1D7D303CC();
  v4 = v3;

  qword_1ECA0BA88 = v2;
  unk_1ECA0BA90 = v4;
  return result;
}

uint64_t sub_1D79FC2A0()
{
  if (*(v0 + 8))
  {
    return 0x65526C6961746564;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_1D79FC2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for TableOfContentsLayoutModel()
{
  result = qword_1EC9E1F28;
  if (!qword_1EC9E1F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D79FC358()
{
  sub_1D79FC3CC();
  if (v0 <= 0x3F)
  {
    sub_1D79FC440();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D79FC3CC()
{
  if (!qword_1EC9E1F38)
  {
    type metadata accessor for TableOfContentsHeaderViewModel();
    type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E1F38);
    }
  }
}

void sub_1D79FC440()
{
  if (!qword_1EC9E1F40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E1F40);
    }
  }
}

double sub_1D79FC4A4()
{
  v1 = v0;
  v2 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FC700(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v9 + 14);
  }

  else
  {
    sub_1D79FC3CC();
    sub_1D79FC764(&v9[*(v11 + 48)], v5);
    v10 = *v5;
    sub_1D79FC7C8(v5, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
    sub_1D79FC7C8(v9, type metadata accessor for TableOfContentsHeaderViewModel);
  }

  return v10;
}

uint64_t sub_1D79FC654(uint64_t a1)
{
  v2 = sub_1D79FC828(&qword_1EC9E8760);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D79FC700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79FC764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79FC7C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D79FC828(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableOfContentsLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D79FC880(uint64_t a1)
{
  v28 = a1;
  sub_1D79FCF38();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D7D2966C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v29 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v31 = &v23[-v12];
  v13 = (v1 + OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_resolver);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_resolver), *(v1 + OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_resolver + 24));
  sub_1D79FCF90();
  result = sub_1D7D28D1C();
  v30 = result;
  if (result)
  {
    v27 = sub_1D7D28A1C();
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_contextBuilder), *(v1 + OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_contextBuilder + 24));
    sub_1D7AD388C();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1D7D28D2C();
    v15 = *(v7 + 48);
    if (v15(v5, 1, v6) == 1)
    {
      sub_1D7A50A3C(MEMORY[0x1E69E7CC0]);
      v16 = v31;
      sub_1D7D2965C();
      if (v15(v5, 1, v6) != 1)
      {
        sub_1D79FD074(v5);
      }
    }

    else
    {
      v16 = v31;
      (*(v7 + 32))(v31, v5, v6);
    }

    v17 = v13[4];
    v26 = v13[3];
    v31 = v17;
    v25 = __swift_project_boxed_opaque_existential_1(v13, v26);
    type metadata accessor for ArticleViewerViewController();
    v24 = *(v1 + OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_pageKind);
    sub_1D799CC84(v28, v33);
    sub_1D799CC84(v34, v32);
    v18 = v29;
    (*(v7 + 16))(v29, v16, v6);
    v19 = (*(v7 + 80) + 112) & ~*(v7 + 80);
    v20 = swift_allocObject();
    sub_1D799D69C(v33, v20 + 16);
    v21 = v27;
    *(v20 + 56) = v30;
    *(v20 + 64) = v21;
    sub_1D799D69C(v32, v20 + 72);
    (*(v7 + 32))(v20 + v19, v18, v6);
    *(v20 + v19 + v8) = v24;

    v22 = sub_1D7D28CFC();

    if (v22)
    {

      (*(v7 + 8))(v16, v6);
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79FCCAC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0C2690);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79FCF90();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2966C();
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D7D28BFC();
}

void sub_1D79FCF38()
{
  if (!qword_1EE0C0200)
  {
    sub_1D7D2966C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0200);
    }
  }
}

void sub_1D79FCF90()
{
  if (!qword_1EE0CBD10)
  {
    sub_1D7D2D39C();
    sub_1D7D2D12C();
    sub_1D79FD01C();
    v0 = sub_1D7D2D50C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBD10);
    }
  }
}

unint64_t sub_1D79FD01C()
{
  result = qword_1EE0CBD90;
  if (!qword_1EE0CBD90)
  {
    sub_1D7D2D39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CBD90);
  }

  return result;
}

uint64_t sub_1D79FD074(uint64_t a1)
{
  sub_1D79FCF38();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79FD0D0(void *a1)
{
  sub_1D7D2966C();

  return sub_1D79FCCAC(a1);
}

uint64_t sub_1D79FD180()
{
  sub_1D79C92AC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79FD1DC()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1D79FD254()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D79FD2B0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TitleViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

void *TitleViewModel.titleImage.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

NewsArticles::TitleViewModel __swiftcall TitleViewModel.init(title:titleImage:)(NewsArticles::TitleViewModel title, UIImage_optional titleImage)
{
  *v2 = title.title;
  v2[1]._countAndFlagsBits = titleImage.value.super.isa;
  title.titleImage = titleImage;
  return title;
}

uint64_t _s12NewsArticles14TitleViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D7D3197C(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        sub_1D79FD4A0();
        v7 = v3;
        v8 = v2;
        v9 = sub_1D7D311DC();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D79FD408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D79FD450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D79FD4A0()
{
  result = qword_1EE0BECD8;
  if (!qword_1EE0BECD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BECD8);
  }

  return result;
}

uint64_t NowPlayingViewCoordinator.__allocating_init<A>(playbackState:tabBarAccessoryManager:nowPlayingAccessoryProvider:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  NowPlayingViewCoordinator.init<A>(playbackState:tabBarAccessoryManager:nowPlayingAccessoryProvider:)(a1, a2, a3);
  return v6;
}

uint64_t NowPlayingViewCoordinator.init<A>(playbackState:tabBarAccessoryManager:nowPlayingAccessoryProvider:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = swift_allocObject();
  v9 = *(v7 + *MEMORY[0x1E69D6540]);
  v8[2] = *(v9 + 16);
  v8[3] = *(v9 + 24);
  v8[4] = a2;
  v8[5] = a3;
  v10 = a2;

  sub_1D7D28EFC();

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_1D79FD680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v33 = a3;
  sub_1D79FDF30(0, &unk_1EE0BB268, MEMORY[0x1E69D7F18]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v32 = &v29 - v10;
  v11 = sub_1D7D2B39C();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AudioPlaybackState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v17);
  v20 = &v29 - v19;
  v22 = *(v21 + 56);
  v23 = *(v15 - 8);
  v24 = *(v23 + 16);
  v24(&v29 - v19, a1, v15, v18);
  (v24)(&v20[v22], a2, v15);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = EnumCaseMultiPayload;
  if (a1 > 1)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      (*(*(a5 - 8) + 8))(&v20[v22], a5);
      sub_1D7D2928C();
      sub_1D7D2B38C();
      sub_1D7D2BA9C();
      return (*(v29 + 8))(v14, v30);
    }
  }

  else
  {
    (*(*(a5 - 8) + 8))(v20, a5);
    if (v26 == 2)
    {
      v27 = v32;
      sub_1D7D2BA8C();
      return sub_1D79FDF84(v27, &unk_1EE0BB268, MEMORY[0x1E69D7F18]);
    }
  }

  return (*(v23 + 8))(&v20[v22], v15);
}

uint64_t NowPlayingViewCoordinator.__allocating_init<A>(playbackState:commandCenter:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  NowPlayingViewCoordinator.init<A>(playbackState:commandCenter:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1D79FDA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[1] = a4;
  v35[2] = a3;
  sub_1D79FDF30(0, &qword_1EE0BB228, MEMORY[0x1E69D87A8]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v35[0] = v35 - v14;
  v15 = type metadata accessor for AudioPlaybackState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v17);
  v20 = v35 - v19;
  v22 = *(v21 + 56);
  v23 = *(v15 - 8);
  v24 = *(v23 + 16);
  v24(v35 - v19, a1, v15, v18);
  (v24)(&v20[v22], a2, v15);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = EnumCaseMultiPayload;
  if (a1 > 1)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      (*(*(a5 - 8) + 8))(&v20[v22], a5);
      swift_getObjectType();
      sub_1D7D2C2AC();
      v30 = *MEMORY[0x1E69D87A0];
      v31 = sub_1D7D2C2BC();
      v32 = *(v31 - 8);
      v33 = v35[0];
      (*(v32 + 104))(v35[0], v30, v31);
      (*(v32 + 56))(v33, 0, 1, v31);
      sub_1D7D2A7EC();
      sub_1D79FDF84(v33, &qword_1EE0BB228, MEMORY[0x1E69D87A8]);
    }

    return (*(v23 + 8))(&v20[v22], v15);
  }

  (*(*(a5 - 8) + 8))(v20, a5);
  if (v26 != 2)
  {
    return (*(v23 + 8))(&v20[v22], v15);
  }

  swift_getObjectType();
  sub_1D7D2C29C();
  v27 = *MEMORY[0x1E69D87A0];
  v28 = sub_1D7D2C2BC();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v11, v27, v28);
  (*(v29 + 56))(v11, 0, 1, v28);
  sub_1D7D2A7EC();
  sub_1D79FDF84(v11, &qword_1EE0BB228, MEMORY[0x1E69D87A8]);
}

void sub_1D79FDF30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D79FDF84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D79FDF30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D79FDFE0()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TipEventHandler.__allocating_init(interactor:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D799D69C(a1, v2 + 16);
  return v2;
}

void TipEventHandler.requestDismissal(_:impression:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TipViewImpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  sub_1D79FE61C(a2, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipViewImpression);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  sub_1D79FE684(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TipViewImpression);
  aBlock[4] = sub_1D79FE258;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_3;
  v11 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D79FE25C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall TipEventHandler.requestRecordTipPresentation()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 8))(v1, v2);
}

void TipEventHandler.requestActionSelected(_:impression:deepLink:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v6 = type metadata accessor for TipViewImpression(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998DF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  sub_1D79FE61C(a3, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1D7998DF0);
  sub_1D79FE61C(a2, v10, type metadata accessor for TipViewImpression);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  sub_1D79FE684(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, sub_1D7998DF0);
  sub_1D79FE684(v10, v17 + v16, type metadata accessor for TipViewImpression);
  aBlock[4] = sub_1D79FE6EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);

  [v20 dismissViewControllerAnimated:1 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1D79FE578(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  (*(v7 + 16))(a2, v6, v7);
  v8 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v8);
  return (*(v9 + 24))(a3, v8, v9);
}

uint64_t sub_1D79FE61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79FE684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79FE6EC()
{
  sub_1D7998DF0();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for TipViewImpression(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D79FE578(v5, v0 + v2, v6);
}

uint64_t TipEventHandler.requestRecordTipDismissal(impression:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t TipEventHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D79FE870(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TipViewImpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = *v2;
  sub_1D79FE61C(a2, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipViewImpression);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1D79FE684(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TipViewImpression);
  aBlock[4] = sub_1D79FED48;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_15;
  v12 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D79FEA40()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D79FEA98(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TipViewImpression(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1D7D2833C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79FECA8()
{
  v1 = *(type metadata accessor for TipViewImpression(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  return (*(v5 + 24))(v0 + v2, v4, v5);
}

uint64_t sub_1D79FED54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v26 - v10);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (*(a1 + 16))
  {
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    sub_1D798F168(0, qword_1EE0CD860);
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    *(swift_allocObject() + 16) = v2;
    sub_1D7D28D0C();

    result = swift_unownedRelease();
    if (v31)
    {
      sub_1D799D69C(&v30, v33);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      *&v30 = v13;
      *(&v30 + 1) = v12;
      v15 = sub_1D7A06520(&v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16 = v2[5];
  v26 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v16);
  sub_1D798F168(0, &qword_1EC9E1F68);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  v18 = v13;

  sub_1D7D28D0C();

  if (!v31)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1D799D69C(&v30, v33);
  *v11 = v18;
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for ArticleViewerBlueprintProvider();
  v20 = swift_allocObject();
  sub_1D79FF43C(v11, v7);
  sub_1D79FF4A0();
  swift_allocObject();
  v21 = v18;

  v22 = sub_1D7D28ECC();
  sub_1D79FF4F8(v11);
  *(v20 + 16) = v22;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_1D798F168(0, qword_1EE0CE060);
  sub_1D799CC84(v33, &v30);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v23 = swift_allocObject();
  sub_1D799D69C(&v30, v23 + 16);
  *(v23 + 56) = v2;
  sub_1D7D28D0C();
  swift_unownedRelease();

  if (v28)
  {
    sub_1D799D69C(&v27, &v30);
    v24 = v31;
    v25 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v28 = v19;
    v29 = &protocol witness table for ArticleViewerBlueprintProvider;
    *&v27 = v20;
    v15 = (*(v25 + 8))(&v27, v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    __swift_destroy_boxed_opaque_existential_1(&v30);
    return v15;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D79FF1D0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  sub_1D798F168(0, qword_1EE0C4D28);
  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_1D7D28A3C();
  sub_1D7D28BEC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v9[0]) = 1;
  return sub_1D7D28BFC();
}

uint64_t sub_1D79FF34C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_1D7D28A3C();
  sub_1D7D28BEC();
}

uint64_t sub_1D79FF43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerBlueprint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D79FF4A0()
{
  if (!qword_1EE0C0450)
  {
    type metadata accessor for ArticleViewerBlueprint(255);
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0450);
    }
  }
}

uint64_t sub_1D79FF4F8(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerBlueprint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79FF554(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  a1(*(v2 + 56));

  return a2(v2, 64, 7);
}

uint64_t sub_1D79FF5E4()
{
  v1 = *(*(v0 + 24) + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_1D79AC5C4();
  *v2 = v0;
  v2[1] = sub_1D79FF6A4;
  v4 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v1, &type metadata for RecipeRecirculationFetchResult, v3, v4);
}

uint64_t sub_1D79FF6A4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D7A00034;
  }

  else
  {
    v2 = sub_1D79FF7B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D79FF7B8()
{
  v1 = *(v0 + 16);
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  v4 = MEMORY[0x1E69E7CC0];
  while (--v3)
  {
    v5 = v2 + 16;
    v6 = *v2;
    v2 += 16;
    if (!v6)
    {
      v4 = *(v5 - 3);

      break;
    }
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_1D79FF87C()
{
  v1 = *(*(v0 + 24) + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_1D79AC5C4();
  *v2 = v0;
  v2[1] = sub_1D79FF93C;
  v4 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v1, &type metadata for RecipeRecirculationFetchResult, v3, v4);
}

uint64_t sub_1D79FF93C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D79FFAF8;
  }

  else
  {
    v2 = sub_1D79FFA50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D79FFA50()
{
  v1 = *(v0 + 16);
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  v4 = MEMORY[0x1E69E7CC0];
  while (--v3)
  {
    v5 = v2 + 16;
    v6 = *v2;
    v2 += 16;
    if (v6 == 1)
    {
      v4 = *(v5 - 3);

      break;
    }
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_1D79FFB30()
{
  v1 = *(*(v0 + 24) + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_1D79AC5C4();
  *v2 = v0;
  v2[1] = sub_1D79FFBF0;
  v4 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v1, &type metadata for RecipeRecirculationFetchResult, v3, v4);
}

uint64_t sub_1D79FFBF0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D7A00034;
  }

  else
  {
    v2 = sub_1D79FFD04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D79FFD04()
{
  v1 = *(v0 + 16);
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  v4 = MEMORY[0x1E69E7CC0];
  while (--v3)
  {
    v5 = v2 + 16;
    v6 = *v2;
    v2 += 16;
    if (v6 >= 2)
    {
      v4 = *(v5 - 3);

      break;
    }
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_1D79FFDAC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D79FFE14()
{
  result = qword_1EC9E1F70;
  if (!qword_1EC9E1F70)
  {
    type metadata accessor for EndOfRecipeFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1F70);
  }

  return result;
}

uint64_t sub_1D79FFE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D79FFF34;

  return MEMORY[0x1EEE21D88](a1, a2, a3);
}

uint64_t sub_1D79FFF34(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id NowPlayingActivityViewController.__allocating_init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D3062C();

  if (a2)
  {
    sub_1D7A000E8();
    v5 = sub_1D7D3062C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v2) initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

unint64_t sub_1D7A000E8()
{
  result = qword_1EC9E4EB0;
  if (!qword_1EC9E4EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E4EB0);
  }

  return result;
}

id NowPlayingActivityViewController.init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D7D3062C();

  if (a2)
  {
    sub_1D7A000E8();
    v6 = sub_1D7D3062C();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithActivityItems_applicationActivities_, v5, v6);

  return v7;
}

id NowPlayingActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A0031C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C0A20);
  result = sub_1D7D28D2C();
  if (!v120)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (!v118)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB60);
  result = sub_1D7D28D2C();
  if (!v116)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBED0);
  result = sub_1D7D28D2C();
  if (!v114)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDBA0);
  result = sub_1D7D28D2C();
  if (!v112)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF0D0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CED70);
  result = sub_1D7D28D2C();
  if (!v110)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CC768);
  result = sub_1D7D28D2C();
  if (!v108)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF870);
  result = sub_1D7D28D2C();
  if (!v106)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CD060);
  result = sub_1D7D28D2C();
  if (!v104)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleFooterContext();
  v9 = sub_1D7D28D1C();
  v88 = v5;
  v89 = a2;
  v86 = v7;
  v87 = v6;
  v85 = v8;
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR___NAArticleFooterContext_articleGroupData);
    v11 = *(v9 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 16);
    v12 = *(v9 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 24);
    v13 = v9;
    v82 = *(v9 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 8);
    v83 = v10;
    v80 = v12;
    v81 = v11;
    sub_1D7A03D0C(v10, v82, v11);
  }

  else
  {
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0x1FFFFFFFELL;
  }

  v14 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v84 = v70;
  MEMORY[0x1EEE9AC00](v14, v14);
  v16 = (v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v111, v112);
  v79 = v70;
  MEMORY[0x1EEE9AC00](v18, v18);
  v20 = (v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  v78 = v70;
  MEMORY[0x1EEE9AC00](v22, v22);
  v24 = (v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
  v77 = v70;
  MEMORY[0x1EEE9AC00](v26, v26);
  v28 = (v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  v76 = v70;
  MEMORY[0x1EEE9AC00](v30, v30);
  v32 = (v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v16;
  v35 = *v20;
  v36 = *v24;
  v37 = *v28;
  v38 = *v32;
  v39 = type metadata accessor for ArticleRecirculationConfigFactory();
  v102[3] = v39;
  v102[4] = &off_1F52A9658;
  v102[0] = v34;
  v73 = type metadata accessor for ArticleProviderService();
  v100 = v73;
  v101 = &off_1F52A76D0;
  v99[0] = v35;
  v72 = type metadata accessor for HistoryService();
  v98 = &off_1F52A2428;
  v97 = v72;
  v96[0] = v36;
  v94 = &type metadata for EndOfArticleQuotaSatisfierFactory;
  v95 = &off_1F52B3930;
  v93[0] = v37;
  v71 = type metadata accessor for EndOfArticleResultFactory();
  v91 = v71;
  v92 = &off_1F52A6E50;
  v90[0] = v38;
  v75 = type metadata accessor for ArticleRecirculationService();
  v40 = swift_allocObject();
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v102, v39);
  v74 = v70;
  MEMORY[0x1EEE9AC00](v41, v41);
  v43 = (v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v99, v100);
  v70[3] = v70;
  MEMORY[0x1EEE9AC00](v45, v45);
  v47 = (v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v70[2] = v70;
  MEMORY[0x1EEE9AC00](v49, v49);
  v51 = (v70 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v70[1] = v70;
  MEMORY[0x1EEE9AC00](v53, v53);
  v55 = (v70 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  MEMORY[0x1EEE9AC00](v57, v57);
  v59 = (v70 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v59);
  v61 = *v43;
  v62 = *v47;
  v63 = *v51;
  v64 = *v55;
  v65 = *v59;
  v40[21] = v39;
  v40[22] = &off_1F52A9658;
  v40[18] = v61;
  v40[26] = v73;
  v40[27] = &off_1F52A76D0;
  v40[23] = v62;
  v40[34] = v72;
  v40[35] = &off_1F52A2428;
  v40[31] = v63;
  v40[39] = &type metadata for EndOfArticleQuotaSatisfierFactory;
  v40[40] = &off_1F52B3930;
  v40[36] = v64;
  v40[49] = v71;
  v40[50] = &off_1F52A6E50;
  v40[46] = v65;
  v40[2] = v88;
  sub_1D799D69C(&v119, (v40 + 3));
  sub_1D799D69C(&v117, (v40 + 8));
  sub_1D799D69C(&v115, (v40 + 13));
  v66 = v86;
  v40[28] = v87;
  v40[29] = v66;
  v40[30] = v85;
  sub_1D799D69C(&v105, (v40 + 41));
  v67 = v82;
  v40[51] = v83;
  v40[52] = v67;
  v68 = v80;
  v40[53] = v81;
  v40[54] = v68;
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v111);
  result = __swift_destroy_boxed_opaque_existential_1(v113);
  v69 = v89;
  v89[3] = v75;
  v69[4] = &off_1F52AFBF0;
  *v69 = v40;
  return result;
}

uint64_t sub_1D7A01060@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0);
  result = sub_1D7D28D2C();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF5B0);
  result = sub_1D7D28D2C();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C0AD0);
  result = sub_1D7D28D2C();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFA10);
  result = sub_1D7D28D2C();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF870);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BEEA0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for RecipeRecirculationService();
    v8 = swift_allocObject();
    *(v8 + 256) = v5;
    sub_1D799D69C(&v19, v8 + 16);
    sub_1D799D69C(&v17, v8 + 56);
    sub_1D799D69C(&v15, v8 + 96);
    sub_1D799D69C(&v13, v8 + 216);
    sub_1D799D69C(&v11, v8 + 136);
    result = sub_1D799D69C(&v9, v8 + 176);
    *(v8 + 264) = v6;
    a2[3] = v7;
    a2[4] = &protocol witness table for RecipeRecirculationService;
    *a2 = v8;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7A0138C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB60);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for DeeplinkArticlePresentationContextService();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A6C40;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A01440@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (!v27)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB60);
  result = sub_1D7D28D2C();
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7980);
  sub_1D7D28D2C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CC8B0);
  sub_1D7D28D2C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleFooterContext();
  v7 = sub_1D7D28D1C();
  v17 = a2;
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR___NAArticleFooterContext_articleGroupData);
    v9 = *(v7 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 8);
    v10 = *(v7 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 16);
    v11 = *(v7 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 24);
    v12 = v7;
    sub_1D7A03D0C(v8, v9, v10);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0x1FFFFFFFELL;
  }

  v13 = type metadata accessor for ArticleProviderService();
  v14 = swift_allocObject();
  sub_1D7D2832C();
  v15 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_cache;
  sub_1D7A03C54();
  swift_allocObject();
  *(v14 + v15) = sub_1D7D292EC();
  sub_1D799D69C(&v26, v14 + 16);
  result = sub_1D799D69C(&v24, v14 + 56);
  *(v14 + 96) = v21;
  *(v14 + 112) = v22;
  *(v14 + 128) = v23;
  *(v14 + 136) = v5;
  *(v14 + 144) = v18;
  *(v14 + 160) = v19;
  *(v14 + 176) = v20;
  *(v14 + 184) = v6;
  v16 = (v14 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData);
  *v16 = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v17[3] = v13;
  v17[4] = &off_1F52A76D0;
  *v17 = v14;
  return result;
}

uint64_t sub_1D7A01774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C7168);
  result = sub_1D7D28D2C();
  if (v5)
  {
    v4 = type metadata accessor for EndOfArticleHeadlineModelFactory();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    a2[3] = v4;
    a2[4] = &off_1F52B1EA0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A01820(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0C29B0);
    result = sub_1D7D28D2C();
    if (v18)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x1EEE9AC00](v4, v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for EndOfArticleFeedConfigManager();
      v16[3] = v9;
      v16[4] = &off_1F52A6F50;
      v16[0] = v8;
      type metadata accessor for EndOfArticleFeedServiceConfigFetcher();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x1EEE9AC00](v11, v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[8] = v9;
      v10[9] = &off_1F52A6F50;
      v10[2] = 0xD000000000000010;
      v10[3] = 0x80000001D7D69C60;
      v10[4] = v3;
      v10[5] = v15;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v17[0] = v10;
      sub_1D798F35C();
      swift_allocObject();
      sub_1D798ED4C(qword_1EE0C1A18, type metadata accessor for EndOfArticleFeedServiceConfigFetcher);
      return sub_1D7D2DCCC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A01B2C(void *a1)
{
  v2 = sub_1D7D2DE9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0BFA08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EE0DE4B8);
  (*(v3 + 16))(v6, v7, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7994E2C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF870);
  result = sub_1D7D28D2C();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0);
  result = sub_1D7D28D2C();
  v9 = v17;
  if (v17)
  {
    v10 = v18;
    v11 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v15[3] = v9;
    v15[4] = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_1D7994F18();
    swift_allocObject();
    v13 = sub_1D7D2EC7C();
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7A01DA4()
{
  sub_1D7994E2C();
  sub_1D7D291DC();

  sub_1D798C468(0, qword_1EE0C29B0);
  sub_1D7D291EC();
}

uint64_t sub_1D7A01E4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfArticleFeedGroupEmitterFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7994FD0();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF5C8);
  result = sub_1D7D28D2C();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0);
  result = sub_1D7D28D2C();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE0CA138;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF938);
  v8 = v7;
  result = sub_1D7D28D2C();
  if (v10)
  {
    sub_1D7994E2C();
    swift_allocObject();
    v9 = sub_1D7D2E0FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D7A02130@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF630);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C0A20);
  result = sub_1D7D28D2C();
  if (v9)
  {
    v6 = type metadata accessor for EndOfArticleFeedConfigManager();
    v7 = swift_allocObject();
    sub_1D7D2E0EC();
    swift_allocObject();
    *(v7 + 16) = sub_1D7D2E0DC();
    *(v7 + 24) = v5;
    sub_1D799D69C(&v10, v7 + 32);
    result = sub_1D799D69C(&v8, v7 + 72);
    a2[3] = v6;
    a2[4] = &off_1F52A6F50;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A022F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6B0);
  result = sub_1D7D28D2C();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CEEF0);
  result = sub_1D7D28D2C();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CED70);
  result = sub_1D7D28D2C();
  if (v17)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x1EEE9AC00](v3, v3);
    v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = *v5;
    v8 = type metadata accessor for HistoryService();
    v15[3] = v8;
    v15[4] = &off_1F52A2428;
    v15[0] = v7;
    type metadata accessor for EndOfArticleFeedGroupEmitterFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v8);
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v9[15] = v8;
    v9[16] = &off_1F52A2428;
    v9[12] = v14;
    sub_1D799D69C(&v20, (v9 + 2));
    sub_1D799D69C(&v18, (v9 + 7));
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A025BC(void *a1)
{
  v2 = sub_1D7D2DE9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9DFE90 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1ECA0BC28);
  (*(v3 + 16))(v6, v7, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7990DB4();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0BF870);
    result = sub_1D7D28D2C();
    if (v9[4])
    {
      sub_1D7990D20();
      swift_allocObject();
      return sub_1D7D2EC8C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A02778(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeFeedServiceConfigFetcher();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7995088();
    swift_allocObject();
    sub_1D798ED4C(&qword_1EC9E1F80, type metadata accessor for EndOfRecipeFeedServiceConfigFetcher);
    return sub_1D7D2DCCC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A02838(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C3258);
  result = sub_1D7D28D2C();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for EndOfRecipeFeedConfigManager();
    v17[3] = v9;
    v17[4] = &off_1F52A0510;
    v17[0] = v8;
    type metadata accessor for EndOfRecipeFeedServiceConfigFetcher();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v11, v11);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[8] = v9;
    v10[9] = &off_1F52A0510;
    v10[2] = 0x636552664F646E45;
    v10[3] = 0xEF64656546657069;
    v10[4] = v3;
    v10[5] = v15;
    sub_1D799D69C(&v18, (v10 + 10));
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A02B20(void *a1)
{
  v2 = sub_1D7D2DE9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9DFE90 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1ECA0BC28);
  (*(v3 + 16))(v6, v7, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7990DB4();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF870);
  result = sub_1D7D28D2C();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0);
  result = sub_1D7D28D2C();
  v9 = v17;
  if (v17)
  {
    v10 = v18;
    v11 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v15[3] = v9;
    v15[4] = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_1D7990D20();
    swift_allocObject();
    v13 = sub_1D7D2EC7C();
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7A02D98()
{
  sub_1D7990DB4();
  sub_1D7D291DC();

  sub_1D798C468(0, qword_1EE0C3258);
  sub_1D7D291EC();
}

uint64_t sub_1D7A02E40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeFeedGroupEmitterFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7990EC4();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF5C8);
  result = sub_1D7D28D2C();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0);
  result = sub_1D7D28D2C();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_1EC9DFD38 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC9E3328;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF938);
  v8 = v7;
  result = sub_1D7D28D2C();
  if (v10)
  {
    sub_1D7990DB4();
    swift_allocObject();
    v9 = sub_1D7D2E0FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D7A03124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF630);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C0AD0);
  result = sub_1D7D28D2C();
  if (v9)
  {
    v6 = type metadata accessor for EndOfRecipeFeedConfigManager();
    v7 = swift_allocObject();
    sub_1D7D2E0EC();
    swift_allocObject();
    *(v7 + 16) = sub_1D7D2E0DC();
    *(v7 + 24) = v5;
    sub_1D799D69C(&v10, v7 + 32);
    result = sub_1D799D69C(&v8, v7 + 72);
    a2[3] = v6;
    a2[4] = &off_1F52A0510;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A032E4(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, a2);
  result = sub_1D7D28D2C();
  if (v11)
  {
    a4(0);
    v9 = swift_allocObject();
    a5(v10, v9 + 16);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A033E4()
{
  sub_1D798C468(0, qword_1EE0C6E38);
  sub_1D7D291EC();
  type metadata accessor for SavedStatusProvider();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EE0C6860);
  sub_1D7D291EC();
  type metadata accessor for SharedStatusProvider();
  sub_1D7D28ABC();

  sub_1D798C468(0, &unk_1EE0C7168);
  sub_1D7D291EC();
  type metadata accessor for AccessLevelProvider();
  sub_1D7D28ABC();
}

uint64_t sub_1D7A035B0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &qword_1EE0BF0D0);
  v3 = sub_1D7D28D1C();
  if (v3)
  {
    *(v2 + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8]();
}

double sub_1D7A03634@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharedStatusProvider();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *a1 = v2;
  a1[1] = &off_1F52B0C00;
  return result;
}

uint64_t sub_1D7A03680(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EE0BF618);
  result = sub_1D7D28D2C();
  if (v5)
  {
    sub_1D799D69C(&v4, v6);
    swift_beginAccess();
    sub_1D7A03B84(v6, v2 + 16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A03754@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a1(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D7A03798(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    *(v2 + 16) = result;

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A03820@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0BF630);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for UserConcernConfigManager();
      v7 = swift_allocObject();
      sub_1D7D2E0EC();
      swift_allocObject();
      *(v7 + 16) = sub_1D7D2E0DC();
      *(v7 + 24) = v5;
      result = sub_1D799D69C(&v8, v7 + 32);
      a2[3] = v6;
      a2[4] = &off_1F529CB10;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A03A20@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, a2);
  result = sub_1D7D28D1C();
  if (result)
  {
    v10 = result;
    v11 = a3(0);
    result = swift_allocObject();
    *(result + 16) = v10;
    a5[3] = v11;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A03AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for ArticlePreviewService();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A4228;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A03B84(uint64_t a1, uint64_t a2)
{
  sub_1D7A03BE8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7A03BE8()
{
  if (!qword_1EE0BF610)
  {
    sub_1D798C468(255, &qword_1EE0BF618);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF610);
    }
  }
}

void sub_1D7A03C54()
{
  if (!qword_1EE0C0330)
  {
    sub_1D7A03CBC();
    v0 = sub_1D7D292FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0330);
    }
  }
}

void sub_1D7A03CBC()
{
  if (!qword_1EE0C0318)
  {
    v0 = sub_1D7D2935C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0318);
    }
  }
}

uint64_t sub_1D7A03D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_1D7A03D20(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D7A03D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
  }
}

void sub_1D7A03D7C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = sub_1D7D3039C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2833C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v70 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    sub_1D7A04554();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
    return;
  }

  v18 = v17;
  v79 = v7;
  v19 = a1;
  v20 = [v18 mediaType];
  v21 = v20 - 1;
  if ((v20 - 1) >= 5 || (v22 = [v18 mediaId]) == 0)
  {

LABEL_8:
    sub_1D7A04554();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();

    return;
  }

  v76 = a2;
  v77 = v9;
  v23 = 0x502040103uLL >> (8 * v21);
  v24 = v22;
  v25 = sub_1D7D3034C();
  v78 = v19;
  v27 = v26;

  LOBYTE(v80[0]) = 1;
  LOBYTE(v81) = v23;
  *(&v81 + 1) = v25;
  v82 = v27;
  v19 = v78;
  v83 = 1;
  v28 = [v78 endDate];
  if (!v28)
  {

    sub_1D7A045A8(&v81);
    goto LABEL_8;
  }

  v29 = v28;
  sub_1D7D2830C();

  v30 = v77;
  (*(v77 + 32))(v16, v12, v8);
  sub_1D7A043BC(v18, &v81, v80);
  sub_1D7A045FC(0, v31);
  v33 = v32;
  v74 = v80[1];
  v75 = v80[0];
  v34 = v76;
  v35 = v76 + *(v32 + 48);
  v36 = (v76 + *(v32 + 64));
  v37 = v82;
  *v76 = v81;
  v34[1] = v37;
  *(v34 + 32) = v83;
  v38 = [v18 startDate];
  sub_1D7D2830C();

  v39 = type metadata accessor for AnalyticsTimedData();
  (*(v30 + 16))(&v35[*(v39 + 20)], v16, v8);
  v40 = v74;
  *v36 = v75;
  v36[1] = v40;
  v41 = [v18 componentIdentifier];
  if (v41)
  {
    v42 = v41;
    *&v75 = sub_1D7D3034C();
    *&v74 = v43;
  }

  else
  {
    *&v75 = 0;
    *&v74 = 0;
  }

  v46 = [v18 componentType];
  v47 = v78;
  if (v46)
  {
    v48 = v46;
    v49 = sub_1D7D3034C();
    v72 = v50;
    v73 = v49;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v51 = [v18 componentRole];
  if (v51)
  {
    v52 = v51;
    v71 = sub_1D7D3034C();
    v70 = v53;
  }

  else
  {
    v71 = 0;
    v70 = 0;
  }

  v54 = v77;
  v55 = [v18 metaData];

  if (v55)
  {
    sub_1D7D3028C();

    v56 = objc_opt_self();
    v57 = sub_1D7D3027C();

    *&v80[0] = 0;
    v55 = [v56 dataWithJSONObject:v57 options:0 error:v80];

    v58 = *&v80[0];
    if (v55)
    {
      v59 = sub_1D7D2827C();
      v61 = v60;

      sub_1D7D3038C();
      v62 = sub_1D7D3036C();
      v55 = v63;
      sub_1D79EA2E4(v59, v61);

      (*(v77 + 8))(v16, v8);
    }

    else
    {
      v64 = v58;
      v65 = sub_1D7D2815C();

      swift_willThrow();
      (*(v77 + 8))(v16, v8);

      v62 = 0;
    }
  }

  else
  {

    (*(v54 + 8))(v16, v8);
    v62 = 0;
  }

  v66 = (v76 + *(v33 + 80));
  v67 = v73;
  v68 = v74;
  *v66 = v75;
  v66[1] = v68;
  v66[2] = v67;
  v69 = v71;
  v66[3] = v72;
  v66[4] = v69;
  v66[5] = v70;
  v66[6] = v62;
  v66[7] = v55;
  type metadata accessor for AnalyticsEvent();
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D7A043BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = [a1 galleryType];
  if (result - 1 >= 2)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    result = [a1 galleryType];
    if (result < 3)
    {
      v7 = qword_1D7D3E7B0[result];
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      sub_1D7A04768(a2, v11);
      result = [a1 numberOfImages];
      if ((result & 0x8000000000000000) == 0)
      {
        *a3 = v7;
        *(a3 + 8) = v8;
        *(a3 + 16) = v9;
        *(a3 + 24) = result;
        return result;
      }

      __break(1u);
    }

    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    v10 = result;
    sub_1D7D3145C();
    MEMORY[0x1DA70DE90](0xD000000000000010, 0x80000001D7D69D30);
    v11[5] = v10;
    type metadata accessor for SXAnalyticsEventGalleryType(0);
    sub_1D7D315DC();
    MEMORY[0x1DA70DE90](0xD000000000000038, 0x80000001D7D69D50);
    result = sub_1D7D3160C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7A04554()
{
  result = qword_1EC9E1F88;
  if (!qword_1EC9E1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1F88);
  }

  return result;
}

void sub_1D7A045FC(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0C9550)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    type metadata accessor for AnalyticsTimedData();
    sub_1D7A04718();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0C9550);
    }
  }
}

void sub_1D7A04718()
{
  if (!qword_1EE0C89D0)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C89D0);
    }
  }
}

unint64_t sub_1D7A047D8()
{
  result = qword_1EC9E1F90;
  if (!qword_1EC9E1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1F90);
  }

  return result;
}

id sub_1D7A0482C(void *a1)
{
  v1 = sub_1D7A04888(a1);
  v2 = type metadata accessor for ProxyConfiguration();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC12NewsArticles18ProxyConfiguration_embedProxyConfiguration] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D7A04888(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (result)
  {
    v2 = [result configuration];
    swift_unknownObjectRelease();
    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        v3 = [v2 embedProxyConfiguration];
        swift_unknownObjectRelease();
        return v3;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7A04964(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A30E4();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [result networkBehaviorMonitor];

  v5 = [objc_allocWithZone(MEMORY[0x1E69B5280]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = objc_allocWithZone(type metadata accessor for ProxyAuthenticationKeyManager());

  return sub_1D7A04A84(v5, v6, v7);
}

id sub_1D7A04A84(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D7D2836C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D28B3C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1D7D2912C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_deduper;
  sub_1D7D2911C();
  sub_1D7A04D00();
  swift_allocObject();
  *&a3[v16] = sub_1D7D28DFC();
  v17 = OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_lock;
  sub_1D7D28B2C();
  sub_1D7D28B5C();
  swift_allocObject();
  *&a3[v17] = sub_1D7D28B4C();
  v18 = OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_key;
  v19 = type metadata accessor for ProxyAuthenticationKey();
  (*(*(v19 - 8) + 56))(&a3[v18], 1, 1, v19);
  v20 = &a3[OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_session];
  sub_1D7D2835C();
  v21 = sub_1D7D2834C();
  v23 = v22;
  (*(v8 + 8))(v11, v7);
  *v20 = v21;
  v20[1] = v23;
  *&a3[OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_endpointConnection] = a1;
  *&a3[OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_configurationManager] = a2;
  v25.receiver = a3;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

void sub_1D7A04D00()
{
  if (!qword_1EE0C0488)
  {
    type metadata accessor for ProxyAuthenticationKey();
    v0 = sub_1D7D28E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0488);
    }
  }
}

uint64_t sub_1D7A04DA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  sub_1D7A050C0(v4 + 16, v12);
  if (v12[0])
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[1] == 1;
  }

  if (v9)
  {
    sub_1D7A05174(v12);
LABEL_15:
    v13 = xmmword_1D7D3E800;
    v14 = 0u;
    v15 = 0u;
    swift_beginAccess();
    sub_1D7A051D0(&v13, v4 + 16);
    swift_endAccess();
    return 0;
  }

  sub_1D7A05234(v12, &v13);
  if (!*(v4 + 16) && *(v4 + 24) == 1 || !swift_unknownObjectWeakLoadStrong())
  {
    sub_1D7A0526C(&v13);
    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  if (v14 == __PAIR128__(a2, a1) || (sub_1D7D3197C()) && (v15 == __PAIR128__(a4, a3) || (sub_1D7D3197C()))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1D7A0526C(&v13);
    return Strong;
  }

  sub_1D7A0526C(&v13);
  return 0;
}

uint64_t sub_1D7A04F1C()
{
  sub_1D7A05174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A04F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7A04FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7A05000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v14 = a2;
  swift_unknownObjectWeakInit();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  swift_beginAccess();

  sub_1D7A051D0(v13, v11 + 16);
  return swift_endAccess();
}

uint64_t sub_1D7A050C0(uint64_t a1, uint64_t a2)
{
  sub_1D7A05124();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7A05124()
{
  if (!qword_1EE0C8268)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C8268);
    }
  }
}

uint64_t sub_1D7A05174(uint64_t a1)
{
  sub_1D7A05124();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A051D0(uint64_t a1, uint64_t a2)
{
  sub_1D7A05124();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A052AC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v113 = a5;
  v107 = a3;
  v108 = a2;
  v109 = a1;
  v5 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v111 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v116 = &v87 - v10;
  sub_1D7A060E8();
  v112 = v11;
  v117 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v118 = &v87 - v16;
  v100 = sub_1D7D2A68C();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v17);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A0617C(0, &qword_1EC9E2008, MEMORY[0x1E69D7ED8]);
  v105 = *(v19 - 8);
  v106 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v87 - v21);
  sub_1D7A0617C(0, &qword_1EC9E2710, MEMORY[0x1E69D87F8]);
  v24 = v23;
  v97 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v96 = &v87 - v26;
  v95 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v95, v27);
  v92 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v94 = &v87 - v31;
  sub_1D7A06270();
  v101 = v32;
  v91 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v93 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v87 - v37;
  sub_1D7A0633C();
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A0617C(0, &qword_1EC9E26F0, MEMORY[0x1E69D7980]);
  v44 = v43;
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v46);
  v103 = &v87 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v87 - v50;
  sub_1D7D2C22C();
  v104 = v24;
  sub_1D7D2C79C();

  if ((*(v45 + 48))(v42, 1, v44) == 1)
  {
    sub_1D7A06404(v42, sub_1D7A0633C);
    sub_1D7A063B0();
    *v22 = swift_allocError();
    v53 = v105;
    v52 = v106;
    (*(v105 + 104))(v22, *MEMORY[0x1E69D7EC0], v106);
    v108(v22);
    return (*(v53 + 8))(v22, v52);
  }

  v89 = v22;
  (*(v45 + 32))(v51, v42, v44);
  v90 = v44;
  v102 = v51;
  sub_1D7D2A45C();
  v55 = sub_1D7996E84(&qword_1EC9E2030, sub_1D7A06270);
  v56 = v101;
  v57 = sub_1D7D30A2C();
  v58 = v38;
  v88 = v45;
  if (v57)
  {
    v59 = v57;
    v121 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BEFC(0, v57 & ~(v57 >> 63), 0);
    v60 = v121;
    result = sub_1D7D309EC();
    v61 = v112;
    if ((v59 & 0x8000000000000000) == 0)
    {
      v114 = (v117 + 16);
      v115 = v55;
      v62 = (v117 + 32);
      v110 = (v117 + 8);
      while (1)
      {
        v63 = v58;
        v64 = v56;
        v65 = sub_1D7D30AAC();
        (*v114)(v119);
        v65(v120, 0);
        v66 = v116;
        sub_1D7D29EEC();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D7A06404(v66, type metadata accessor for EndOfRecipeModel);
        }

        else
        {
          v67 = v5;
          v68 = sub_1D7D29CEC();
          v70 = v69;

          if (v68 == sub_1D7D29CEC() && v70 == v71)
          {

LABEL_16:
            *v111 = v113;
            v5 = v67;
            swift_storeEnumTagMultiPayload();
            sub_1D7996E84(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
            sub_1D7D29EDC();

            v61 = v112;
            (*v110)(v119, v112);
            goto LABEL_17;
          }

          v73 = sub_1D7D3197C();

          if (v73)
          {
            goto LABEL_16;
          }

          v5 = v67;
          v61 = v112;
        }

        (*v62)(v118, v119, v61);
LABEL_17:
        v121 = v60;
        v75 = *(v60 + 16);
        v74 = *(v60 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1D7A5BEFC(v74 > 1, v75 + 1, 1);
          v60 = v121;
        }

        *(v60 + 16) = v75 + 1;
        (*(v117 + 32))(v60 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v75, v118, v61);
        v58 = v63;
        v56 = v64;
        sub_1D7D30A6C();
        if (!--v59)
        {
          (*(v91 + 8))(v63, v64);
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(v91 + 8))(v38, v56);
    v60 = MEMORY[0x1E69E7CC0];
    v61 = v112;
LABEL_22:
    v76 = v97;
    v77 = v92;
    sub_1D7D2A43C();
    sub_1D7D29D0C();
    sub_1D7B393A0(v94);
    sub_1D7A06404(v77, type metadata accessor for EndOfRecipeSectionDescriptor);
    v78 = sub_1D7996E84(&qword_1EC9E2018, sub_1D7A060E8);
    v79 = sub_1D7996E84(&qword_1EC9E2020, sub_1D7A060E8);
    MEMORY[0x1DA706A80](v60, v61, v78, v79);
    v119 = type metadata accessor for EndOfRecipeSectionDescriptor;
    sub_1D7996E84(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7996E84(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    sub_1D7D2A42C();
    v80 = v96;
    (*(v76 + 16))(v96, v109, v104);
    sub_1D7D2C78C();
    v81 = v99;
    v82 = v98;
    v83 = v100;
    (*(v99 + 104))(v98, *MEMORY[0x1E69D7A40], v100);
    sub_1D7996E84(&qword_1EC9E2038, v119);
    v84 = v89;
    sub_1D7D2B29C();
    (*(v81 + 8))(v82, v83);
    v108(v84);
    (*(v105 + 8))(v84, v106);
    (*(v76 + 8))(v80, v104);
    v85 = *(v88 + 8);
    v86 = v90;
    v85(v103, v90);
    return (v85)(v102, v86);
  }

  return result;
}

uint64_t sub_1D7A05FC4(uint64_t a1)
{
  v2 = sub_1D7A06464();

  return MEMORY[0x1EEE46F70](a1, v2);
}

unint64_t sub_1D7A06004()
{
  result = qword_1EC9E2000;
  if (!qword_1EC9E2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2000);
  }

  return result;
}

void sub_1D7A060E8()
{
  if (!qword_1EC9E5300)
  {
    type metadata accessor for EndOfRecipeModel();
    sub_1D7996E84(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v0 = sub_1D7D29F0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5300);
    }
  }
}

void sub_1D7A0617C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = sub_1D7996E84(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[3] = sub_1D7996E84(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7A06270()
{
  if (!qword_1EC9E2010)
  {
    sub_1D7A060E8();
    sub_1D7996E84(&qword_1EC9E2018, sub_1D7A060E8);
    sub_1D7996E84(&qword_1EC9E2020, sub_1D7A060E8);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2010);
    }
  }
}

void sub_1D7A0633C()
{
  if (!qword_1EC9E5310)
  {
    sub_1D7A0617C(255, &qword_1EC9E26F0, MEMORY[0x1E69D7980]);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5310);
    }
  }
}

unint64_t sub_1D7A063B0()
{
  result = qword_1EC9E2028;
  if (!qword_1EC9E2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2028);
  }

  return result;
}

uint64_t sub_1D7A06404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7A06464()
{
  result = qword_1EC9E2040;
  if (!qword_1EC9E2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2040);
  }

  return result;
}

unint64_t sub_1D7A064CC()
{
  result = qword_1EC9E2048;
  if (!qword_1EC9E2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2048);
  }

  return result;
}

uint64_t sub_1D7A06520(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = [*a1 identifier];
  sub_1D7D3034C();

  v5 = sub_1D7D28A1C();

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles22PDFReplicaViewerModule_resolver), *(v1 + OBJC_IVAR____TtC12NewsArticles22PDFReplicaViewerModule_resolver + 24));
  type metadata accessor for PDFReplicaViewerViewController();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;

  v7 = v3;

  v8 = sub_1D7D28CFC();

  if (v8)
  {

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A06674(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

unint64_t EndOfArticleContext.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D7A067E4()
{
  result = qword_1EC9E2060;
  if (!qword_1EC9E2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2060);
  }

  return result;
}

uint64_t *sub_1D7A06838@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_1D7A068F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IssueTableOfContentsAction();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D7D281BC();
  v9 = [v8 fc_NewsArticleID];

  if (v9)
  {
    v10 = sub_1D7D3034C();
    v12 = v11;

    v13 = *(v2 + OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler + 24);
    v14 = *(v2 + OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler), v13);
    *v7 = v10;
    v7[1] = v12;
    swift_storeEnumTagMultiPayload();
    (*(v14 + 8))(&v21, v7, v13, v14);
    sub_1D7A06DAC(v7);
    if (v21 != 1)
    {
      return;
    }
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler + 24);
    v16 = *(v2 + OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler), v15);
    v17 = sub_1D7D2824C();
    (*(*(v17 - 8) + 16))(v7, a1, v17);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 8))(&v21 + 1, v7, v15, v16);
    sub_1D7A06DAC(v7);
    if (BYTE1(v21) != 1)
    {
      return;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1D7A06DAC(uint64_t a1)
{
  v2 = type metadata accessor for IssueTableOfContentsAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7A06FA8(void *a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_1D7D2F64C();
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D7D2F28C();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2FCAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1D7D2FCCC();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D7D2FE1C();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v19);
  v60 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D7D2EEBC();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2F0CC();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    return;
  }

  v55 = v24;
  v25 = *(v2 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_issue);
  if (v25)
  {
    v53 = v5;
    v54 = a1;
    v26 = a1;
    v27 = v25;
LABEL_4:
    v28 = v25;
    v51 = v27;
    sub_1D7D3111C();
    v52 = v3;
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_layoutAttributesFactory), *(v3 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_layoutAttributesFactory + 24));
    v29 = v68;
    [v68 size];
    v31 = v30;
    [v29 size];
    *v14 = v31;
    v14[1] = v32;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B66B8], v10);
    sub_1D7D2FCBC();
    v33 = v60;
    sub_1D7D300DC();
    (*(v57 + 8))(v18, v58);
    sub_1D7A07624();
    v34 = v62;
    v35 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v36 = v35 + *(v62 + 72);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7D3B4D0;
    v38 = *(v34 + 104);
    v39 = v37 + v35;
    v40 = v64;
    v38(v39, *MEMORY[0x1E69B61C0], v64);
    if ([v29 videoPlaybackEnabled])
    {
      v41 = v56;
      v38(v56, *MEMORY[0x1E69B61C8], v40);
      v42 = sub_1D79E3F98(1uLL, 2, 1, v37);
      *(v42 + 16) = 2;
      (*(v34 + 32))(v42 + v36, v41, v40);
    }

    v44 = v53;
    v43 = v54;
    __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_renderer), *(v52 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_renderer + 24));
    v45 = [v68 parentBackgroundColor];
    v46 = v66;
    sub_1D7D2F63C();
    sub_1D7D2FC0C();

    (*(v67 + 8))(v46, v44);
    (*(v63 + 8))(v33, v65);
    (*(v59 + 8))(v23, v61);
    return;
  }

  v47 = *(v2 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_headline);
  if (([*(v3 + OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_headline) respondsToSelector_] & 1) == 0)
  {
    return;
  }

  v54 = a1;
  v48 = [v47 parentIssue];
  if (v48)
  {
    v27 = v48;
    v53 = v5;
    v54 = a1;
    v25 = 0;
    goto LABEL_4;
  }

  v49 = v54;
}

void sub_1D7A07624()
{
  if (!qword_1EC9E1A48)
  {
    sub_1D7D2F28C();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1A48);
    }
  }
}

uint64_t sub_1D7A0767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v143 = a3;
  v8 = type metadata accessor for BottomPaletteFeatureContext();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A08700(v4, v15, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v31 = v15[3];
      v154 = v15[2];
      v155 = v31;
      v32 = v15[5];
      v156 = v15[4];
      v157 = v32;
      v33 = v15[1];
      v152 = *v15;
      v153 = v33;
      sub_1D7A08634(0, &qword_1EE0BE9F0, &type metadata for ContextArticleViewerFeature, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7D3B4E0;
      sub_1D7A08768(0, &qword_1EE0C8840, type metadata accessor for TitleViewContext);
      v36 = v35;
      inited = swift_initStaticObject();
      v38 = type metadata accessor for TitleViewContext();
      *(v34 + 96) = v38;
      *(v34 + 104) = &protocol witness table for TitleViewContext;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v34 + 72));
      sub_1D7A08700(v5, boxed_opaque_existential_1, type metadata accessor for ArticleViewerPage);
      v40 = *(v38 + 20);
      v41 = sub_1D7D2ACCC();
      (*(*(v41 - 8) + 16))(boxed_opaque_existential_1 + v40, a2, v41);
      *(v34 + 56) = v36;
      *(v34 + 64) = sub_1D7A085E4(&qword_1EE0C8848, &qword_1EE0C8840, type metadata accessor for TitleViewContext);
      *(v34 + 32) = inited;
      *(v34 + 112) = 0;
      sub_1D7A08768(0, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext);
      v43 = v42;
      v44 = swift_initStaticObject();
      *(v34 + 184) = type metadata accessor for ArticleViewerRecipeFeatureContext(0);
      *(v34 + 192) = &off_1F529C428;
      v45 = __swift_allocate_boxed_opaque_existential_1((v34 + 160));
      *(v45 + 2) = v154;
      *(v45 + 3) = v155;
      *(v45 + 4) = v156;
      *(v45 + 5) = v157;
      *v45 = v152;
      *(v45 + 1) = v153;
      type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
      swift_storeEnumTagMultiPayload();
      *(v34 + 144) = v43;
      v46 = sub_1D7A085E4(&qword_1EE0C8860, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext);
      result = v34;
      *(v34 + 152) = v46;
      *(v34 + 120) = v44;
      *(v34 + 200) = 0;
      return result;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D79F94F0(v15, type metadata accessor for ArticleViewerPage);
      return MEMORY[0x1E69E7CC0];
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D79F94F0(v15, type metadata accessor for ArticleViewerPage);
      sub_1D7A08634(0, &qword_1EE0BE9F0, &type metadata for ContextArticleViewerFeature, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D7D3B4D0;
      sub_1D7A08768(0, &qword_1EE0C8840, type metadata accessor for TitleViewContext);
      v23 = v22;
      v24 = swift_initStaticObject();
      v25 = type metadata accessor for TitleViewContext();
      *(v21 + 96) = v25;
      *(v21 + 104) = &protocol witness table for TitleViewContext;
      v26 = __swift_allocate_boxed_opaque_existential_1((v21 + 72));
      sub_1D7A08700(v5, v26, type metadata accessor for ArticleViewerPage);
      v27 = *(v25 + 20);
      v28 = sub_1D7D2ACCC();
      (*(*(v28 - 8) + 16))(v26 + v27, a2, v28);
      *(v21 + 56) = v23;
      v29 = sub_1D7A085E4(&qword_1EE0C8848, &qword_1EE0C8840, type metadata accessor for TitleViewContext);
      result = v21;
      *(v21 + 64) = v29;
      *(v21 + 32) = v24;
      *(v21 + 112) = 0;
      return result;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*(v15 + *(v47 + 48)), *(v15 + *(v47 + 48) + 8), *(v15 + *(v47 + 48) + 16));
  }

  sub_1D7A087BC(v15, v19, type metadata accessor for ArticleViewerArticlePage);
  sub_1D7D2DB0C();
  sub_1D7A08634(0, &qword_1EE0BE9F0, &type metadata for ContextArticleViewerFeature, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7D3EBD0;
  v139 = a4;
  v136 = v11;
  sub_1D7A08768(0, &qword_1EE0C8840, type metadata accessor for TitleViewContext);
  v50 = v49;
  v138 = swift_initStaticObject();
  v51 = type metadata accessor for TitleViewContext();
  v142 = v5;
  v52 = v51;
  *(v48 + 96) = v51;
  *(v48 + 104) = &protocol witness table for TitleViewContext;
  v53 = __swift_allocate_boxed_opaque_existential_1((v48 + 72));
  v140 = type metadata accessor for ArticleViewerPage;
  sub_1D7A08700(v5, v53, type metadata accessor for ArticleViewerPage);
  v135 = v8;
  v54 = *(v52 + 20);
  v55 = sub_1D7D2ACCC();
  v56 = *(v55 - 8);
  v145 = *(v56 + 16);
  v137 = v19;
  v146 = v56 + 16;
  v57 = a2;
  v144 = a2;
  v145(v53 + v54, a2, v55);
  *(v48 + 56) = v50;
  *(v48 + 64) = sub_1D7A085E4(&qword_1EE0C8848, &qword_1EE0C8840, type metadata accessor for TitleViewContext);
  *(v48 + 32) = v138;
  *(v48 + 112) = 0;
  sub_1D7A08634(0, &qword_1EE0C8918, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v59 = v58;
  v60 = swift_initStaticObject();
  *(v48 + 184) = &type metadata for HardPaywallArticleFeatureContext;
  *(v48 + 192) = &off_1F52B4C98;
  *(v48 + 144) = v59;
  *(v48 + 152) = sub_1D7A08684();
  *(v48 + 120) = v60;
  *(v48 + 200) = 0;
  sub_1D7A08768(0, &qword_1EE0C88A8, type metadata accessor for ArticleViewerMoreFeatureContext);
  v62 = v61;
  v63 = swift_initStaticObject();
  v64 = type metadata accessor for ArticleViewerMoreFeatureContext();
  *(v48 + 272) = v64;
  *(v48 + 280) = &protocol witness table for ArticleViewerMoreFeatureContext;
  v65 = __swift_allocate_boxed_opaque_existential_1((v48 + 248));
  v138 = type metadata accessor for ArticleViewerArticlePage;
  sub_1D7A08700(v19, v65, type metadata accessor for ArticleViewerArticlePage);
  v66 = v65 + *(v64 + 20);
  v141 = v55;
  v145(v66, v57, v55);
  v67 = (v65 + *(v64 + 24));
  v68 = v139;
  *v67 = v143;
  v67[1] = v68;
  *(v48 + 232) = v62;
  *(v48 + 240) = sub_1D7A085E4(&qword_1EE0C88B0, &qword_1EE0C88A8, type metadata accessor for ArticleViewerMoreFeatureContext);
  *(v48 + 208) = v63;
  *(v48 + 288) = 0;
  sub_1D7A08768(0, &qword_1EE0C88C0, type metadata accessor for ArticleViewerOverflowMenuContext);
  v70 = v69;
  v71 = swift_initStaticObject();
  v72 = type metadata accessor for ArticleViewerOverflowMenuContext();
  *(v48 + 360) = v72;
  *(v48 + 368) = &protocol witness table for ArticleViewerOverflowMenuContext;
  v73 = __swift_allocate_boxed_opaque_existential_1((v48 + 336));
  sub_1D7A08700(v142, v73, v140);
  v145(v73 + *(v72 + 20), v144, v55);
  v74 = (v73 + *(v72 + 24));
  *v74 = v143;
  v74[1] = v68;
  *(v48 + 320) = v70;
  *(v48 + 328) = sub_1D7A085E4(&qword_1EE0C88D0, &qword_1EE0C88C0, type metadata accessor for ArticleViewerOverflowMenuContext);
  *(v48 + 296) = v71;
  *(v48 + 376) = 0;
  sub_1D7A08768(0, &qword_1EE0C88D8, type metadata accessor for SaveArticleFeatureContext);
  v76 = v75;
  v77 = swift_initStaticObject();
  v78 = v137;
  v79 = *(v137 + 2);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v80 = ArticleViewerPage.tracker.getter();
  v81 = type metadata accessor for SaveArticleFeatureContext();
  *(v48 + 448) = v81;
  *(v48 + 456) = &off_1F529CCE8;
  v82 = __swift_allocate_boxed_opaque_existential_1((v48 + 424));
  v83 = v141;
  v145(v82 + *(v81 + 24), v144, v141);
  *v82 = v79;
  v82[1] = v80;
  *(v48 + 408) = v76;
  *(v48 + 416) = sub_1D7A085E4(&qword_1EE0C88E0, &qword_1EE0C88D8, type metadata accessor for SaveArticleFeatureContext);
  *(v48 + 384) = v77;
  *(v48 + 464) = 0;
  sub_1D7A08768(0, &unk_1EE0C8930, type metadata accessor for TextResizeFeatureContext);
  v85 = v84;
  v86 = swift_initStaticObject();
  v87 = v78[1];
  v148 = *v78;
  v149 = v87;
  v88 = v78[3];
  v150 = v78[2];
  v151 = v88;
  v89 = type metadata accessor for TextResizeFeatureContext();
  *(v48 + 536) = v89;
  *(v48 + 544) = &off_1F52A6E48;
  v90 = __swift_allocate_boxed_opaque_existential_1((v48 + 512));
  v145(v90 + *(v89 + 20), v144, v83);
  v91 = v151;
  v93 = v148;
  v92 = v149;
  *(v90 + 2) = v150;
  *(v90 + 3) = v91;
  *v90 = v93;
  *(v90 + 1) = v92;
  *(v48 + 496) = v85;
  *(v48 + 504) = sub_1D7A085E4(qword_1EE0C8940, &unk_1EE0C8930, type metadata accessor for TextResizeFeatureContext);
  *(v48 + 472) = v86;
  *(v48 + 552) = 0;
  sub_1D7A08768(0, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext);
  v95 = v94;
  v96 = swift_initStaticObject();
  *(v48 + 624) = type metadata accessor for ArticleViewerAudioFeatureContext();
  *(v48 + 632) = &off_1F52A99D0;
  v97 = __swift_allocate_boxed_opaque_existential_1((v48 + 600));
  v98 = v138;
  sub_1D7A08700(v78, v97, v138);
  *(v48 + 584) = v95;
  *(v48 + 592) = sub_1D7A085E4(&qword_1EE0C88A0, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext);
  *(v48 + 560) = v96;
  *(v48 + 640) = 0;
  sub_1D7A08768(0, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext);
  v100 = v99;
  v101 = swift_initStaticObject();
  *(v48 + 712) = type metadata accessor for ArticleViewerRecipeFeatureContext(0);
  *(v48 + 720) = &off_1F529C428;
  v102 = __swift_allocate_boxed_opaque_existential_1((v48 + 688));
  v103 = v78;
  v104 = v78;
  v105 = v98;
  sub_1D7A08700(v103, v102, v98);
  type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
  swift_storeEnumTagMultiPayload();
  *(v48 + 672) = v100;
  *(v48 + 680) = sub_1D7A085E4(&qword_1EE0C8860, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext);
  *(v48 + 648) = v101;
  *(v48 + 728) = 0;
  sub_1D7A08768(0, &qword_1EE0C8908, type metadata accessor for LikeDislikeArticleFeatureContext);
  v107 = v106;
  v108 = swift_initStaticObject();
  v109 = type metadata accessor for LikeDislikeArticleFeatureContext();
  *(v48 + 800) = v109;
  *(v48 + 808) = &off_1F52B22C0;
  v110 = __swift_allocate_boxed_opaque_existential_1((v48 + 776));
  sub_1D7A08700(v104, v110, v105);
  sub_1D79F5B54(&v148, &v152);
  v111 = ArticleViewerPage.tracker.getter();
  v112 = v144;
  v113 = v141;
  v114 = v145;
  v145(v110 + *(v109 + 24), v144, v141);
  *(v110 + *(v109 + 20)) = v111;
  *(v48 + 760) = v107;
  *(v48 + 768) = sub_1D7A085E4(&qword_1EE0C8910, &qword_1EE0C8908, type metadata accessor for LikeDislikeArticleFeatureContext);
  *(v48 + 736) = v108;
  *(v48 + 816) = 0;
  sub_1D7A08768(0, &qword_1EE0C8870, type metadata accessor for ArticleViewerShareFeatureContext);
  v116 = v115;
  v134 = swift_initStaticObject();
  v117 = type metadata accessor for ArticleViewerShareFeatureContext(0);
  *(v48 + 888) = v117;
  *(v48 + 896) = &protocol witness table for ArticleViewerShareFeatureContext;
  v118 = __swift_allocate_boxed_opaque_existential_1((v48 + 864));
  v119 = v137;
  v120 = v138;
  sub_1D7A08700(v137, v118, v138);
  v114(v118 + *(v117 + 20), v112, v113);
  v121 = (v118 + *(v117 + 24));
  v122 = v139;
  *v121 = v143;
  v121[1] = v122;
  *(v48 + 848) = v116;
  *(v48 + 856) = sub_1D7A085E4(&qword_1EE0C8880, &qword_1EE0C8870, type metadata accessor for ArticleViewerShareFeatureContext);
  *(v48 + 824) = v134;
  *(v48 + 904) = 0;
  sub_1D7A08768(0, &qword_1EE0C88F0, type metadata accessor for BottomPaletteFeatureContext);
  v124 = v123;
  v125 = swift_initStaticObject();
  v126 = v119[1];
  v152 = *v119;
  v153 = v126;
  v127 = v119[3];
  v154 = v119[2];
  v155 = v127;
  swift_unknownObjectRetain();
  sub_1D79F5B54(&v152, v147);
  sub_1D79F94F0(v119, v120);
  v128 = v135;
  v129 = v136;
  sub_1D7A08700(v142, &v136[*(v135 + 20)], v140);
  v114(&v129[*(v128 + 24)], v144, v141);
  v130 = v153;
  *v129 = v152;
  *(v129 + 1) = v130;
  v131 = v155;
  *(v129 + 2) = v154;
  *(v129 + 3) = v131;
  *(v48 + 936) = v124;
  *(v48 + 944) = sub_1D7A085E4(&qword_1EE0C8900, &qword_1EE0C88F0, type metadata accessor for BottomPaletteFeatureContext);
  *(v48 + 912) = v125;
  *(v48 + 976) = v128;
  *(v48 + 984) = &protocol witness table for BottomPaletteFeatureContext;
  v132 = __swift_allocate_boxed_opaque_existential_1((v48 + 952));
  sub_1D7A087BC(v129, v132, type metadata accessor for BottomPaletteFeatureContext);
  result = v48;
  *(v48 + 992) = 1;
  return result;
}

uint64_t sub_1D7A085E4(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7A08768(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7A08634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7A08684()
{
  result = qword_1EE0C8920;
  if (!qword_1EE0C8920)
  {
    sub_1D7A08634(255, &qword_1EE0C8918, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8920);
  }

  return result;
}

uint64_t sub_1D7A08700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A08768(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ArticleViewerFeature();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7A087BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for EndOfArticleFeedConfigFetchResult()
{
  result = qword_1EE0C2A10;
  if (!qword_1EE0C2A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A08898()
{
  result = type metadata accessor for EndOfArticleFeedContentConfig();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AsyncRecipeViewerRecipe.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AsyncRecipeViewerRecipe.recipeIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AsyncRecipeViewerRecipe.feedItemIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AsyncRecipeViewerRecipe.pluginIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall AsyncRecipeViewerRecipe.init(identifier:recipeIdentifier:feedItemIdentifier:pluginIdentifier:)(NewsArticles::AsyncRecipeViewerRecipe *__return_ptr retstr, Swift::String identifier, Swift::String recipeIdentifier, Swift::String_optional feedItemIdentifier, Swift::String_optional pluginIdentifier)
{
  retstr->identifier = identifier;
  retstr->recipeIdentifier = recipeIdentifier;
  retstr->feedItemIdentifier = feedItemIdentifier;
  retstr->pluginIdentifier = pluginIdentifier;
}

__n128 AsyncRecipeViewerRecipe.init(identifier:recipeIdentifier:routeContext:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  if (!*(a5 + 32))
  {
    v14 = *a5;
    v15 = 0u;
    goto LABEL_5;
  }

  v12 = 0uLL;
  v14 = 0u;
  if (*(a5 + 32) == 1)
  {
    v14 = *(a5 + 16);
    v15 = *a5;

LABEL_5:

    v12 = v15;
  }

  v16 = v12;
  sub_1D7A08A8C(a5);
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = v14;
  a6[2] = v14;
  a6[3] = v16;
  return result;
}

uint64_t sub_1D7A08A8C(uint64_t a1)
{
  v2 = type metadata accessor for RecipeRouteContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12NewsArticles017AsyncRecipeViewerD0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_1D7D3197C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_1D7D3197C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7A08C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7A08C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7A08CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1D7D2ACCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - v14;
  v16 = *(a2 + 8);
  v22 = *a2;
  sub_1D799CC84(v3 + 16, v23);
  type metadata accessor for ArticleViewerNavigationItemStyleProvider();
  inited = swift_initStackObject();
  sub_1D799D69C(v23, inited + 16);
  sub_1D7BC58F0(a1, inited, v11);
  if (sub_1D7D2DB0C())
  {
    sub_1D7D2ACBC();

    (*(v8 + 8))(v11, v7);
  }

  else
  {

    (*(v8 + 32))(v15, v11, v7);
  }

  if (sub_1D7D2AC9C() & 1) == 0 || (sub_1D7D2AB7C() & 1) == 0 && (sub_1D7D2AB6C())
  {
    return (*(v8 + 32))(a3, v15, v7);
  }

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v22;
  }

  v20 = v16;
  sub_1D7D2AC4C();

  return (*(v8 + 8))(v15, v7);
}

uint64_t EndOfArticleModule.createViewController(for:presentationOptions:)(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR___NAEndOfArticleModule_resolver);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___NAEndOfArticleModule_resolver), *(v2 + OBJC_IVAR___NAEndOfArticleModule_resolver + 24));
  sub_1D799685C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v8 = sub_1D7D28A1C();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___NAEndOfArticleModule_contextBuilder), *(v2 + OBJC_IVAR___NAEndOfArticleModule_contextBuilder + 24));
  sub_1D7D2CFCC();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D7D2D41C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  type metadata accessor for EndOfArticleViewController();
  sub_1D799CC84(v15, v14);
  v10 = swift_allocObject();
  v10[2] = v8;
  sub_1D79E14FC(v14, (v10 + 3));
  v10[8] = a1;
  v10[9] = a2;
  v10[10] = v7;
  v10[11] = v9;

  v11 = a1;
  v12 = a2;

  v13 = sub_1D7D28CFC();

  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A09158(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28C1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleFooterContext();
  sub_1D7D28C1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfArticlePresentationOptions();
  sub_1D7D28C1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799685C();
  sub_1D7D28C1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D7D28C0C();
}

id EndOfArticleModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EndOfArticleModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A09534(uint64_t a1)
{
  sub_1D7A09590();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7A09590()
{
  if (!qword_1EE0BF890)
  {
    sub_1D798F168(255, &qword_1EE0BF898);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF890);
    }
  }
}

uint64_t sub_1D7A095F8(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1D799CC84(v1 + 16, v16);
  v5 = *(v1 + 56);
  sub_1D79ECEAC(v3);
  v6 = [v5 cachedSubscription];
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_1D79F0014(&v19);
    goto LABEL_9;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v7 = v15;
  v8 = [v15 integerValue];
  if (v8 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v6, ~v8))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_1D79F0014(&v19);
    goto LABEL_17;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v11 = -55;
    goto LABEL_18;
  }

  v9 = v15;
  v10 = [v9 integerValue];

  v11 = v10 - 55;
LABEL_18:
  v12 = v11 ^ v8;
  *&v19 = v3;
  *(&v19 + 1) = v2;
  LOBYTE(v20) = v4;
  sub_1D799D69C(v16, &v20 + 8);
  v21 = (v12 & 1) == 0;
  sub_1D7A09BD4(&v19, v16);
  sub_1D7A09AF8();
  swift_allocObject();
  sub_1D79ECF9C();
  v13 = sub_1D7D2A69C();
  sub_1D7A09C30(&v19);
  return v13;
}

uint64_t sub_1D7A0984C()
{
  v1 = [*(v0 + 56) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_1D79F0014(&v11);
    goto LABEL_9;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_1D79F0014(&v11);
    goto LABEL_17;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -62;
    goto LABEL_18;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 62;
LABEL_18:
  LOBYTE(v11) = (v6 ^ v3) & 1;
  sub_1D7A09AF8();
  swift_allocObject();
  sub_1D7A09B80();
  return sub_1D7D2A69C();
}

unint64_t sub_1D7A09A58()
{
  result = qword_1EC9E2190;
  if (!qword_1EC9E2190)
  {
    type metadata accessor for TableOfContentsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2190);
  }

  return result;
}

void sub_1D7A09AF8()
{
  if (!qword_1EC9E6810)
  {
    type metadata accessor for TableOfContentsModel();
    sub_1D79ECABC();
    sub_1D7A09A58();
    v0 = sub_1D7D2A6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6810);
    }
  }
}

unint64_t sub_1D7A09B80()
{
  result = qword_1EC9E21A0;
  if (!qword_1EC9E21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E21A0);
  }

  return result;
}

uint64_t sub_1D7A09CB4(void *a1)
{
  v2 = sub_1D7D2B8BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v11 = sub_1D7D2B89C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v24 - v18;
  if (qword_1EE0CB680 != -1)
  {
    swift_once();
  }

  if ((sub_1D7D2860C() & 1) == 0)
  {
    return 0;
  }

  v25 = a1;
  sub_1D7D2864C();
  sub_1D7D2863C();
  if (qword_1EE0CB6E0 != -1)
  {
    swift_once();
  }

  sub_1D7D2862C();

  sub_1D7D2863C();
  if (qword_1EE0CB6C8 != -1)
  {
    swift_once();
  }

  sub_1D7D2862C();

  (*(v12 + 16))(v15, v19, v11);
  (*(v3 + 16))(v6, v10, v2);
  v20 = objc_allocWithZone(sub_1D7D2B8DC());
  v21 = v25;
  v22 = sub_1D7D2B8CC();
  (*(v3 + 8))(v10, v2);
  (*(v12 + 8))(v19, v11);
  return v22;
}

uint64_t sub_1D7A09FC8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_1D7D294BC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v8;
  v9[4] = v4;
  v9[5] = a2;
  v9[6] = a3;

  v10 = a1;

  v11 = sub_1D7D2934C();
  v12 = MEMORY[0x1E69E62F8];
  sub_1D7A0AE84(0, &qword_1EE0BF320, &type metadata for Article, MEMORY[0x1E69E62F8]);
  sub_1D7D2939C();

  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v8;

  v14 = sub_1D7D2934C();
  sub_1D7A0AE84(0, &qword_1EE0BB0E0, &type metadata for ANFIssuePage, v12);
  v15 = sub_1D7D2939C();

  return v15;
}

uint64_t sub_1D7A0A1AC(void *a1)
{
  v1 = [a1 metadataJSONAssetHandle];
  v2 = sub_1D7D30BEC();

  return v2;
}

id sub_1D7A0A200(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 metadataJSONAssetHandle];
  v8 = [v7 dataProvider];

  if (v8)
  {
    v9 = [v8 data];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D7D2827C();
      v13 = v12;

      sub_1D7D28A9C();
      swift_allocObject();
      v7 = sub_1D7D28A8C();
      sub_1D7A0AF28();
      sub_1D7D28A7C();
      if (!v4)
      {

        swift_beginAccess();
        *(a3 + 16) = v19;

        __swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40));
        v18 = off_1F529D4F8[0];
        type metadata accessor for IssueArticleService();
        v7 = v18();
        sub_1D79EA2E4(v11, v13);
        swift_unknownObjectRelease();
        return v7;
      }

      sub_1D7A0AED4();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      sub_1D79EA2E4(v11, v13);
    }

    else
    {
      sub_1D7A0AED4();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D7A0AED4();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1D7A0A46C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = sub_1D7D2E95C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v18 = *a1;
  if (v11)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    v13 = v10 + 48;
    do
    {
      v13 += 64;
      swift_unknownObjectRetain();
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      --v11;
    }

    while (v11);
    v12 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  (*(v6 + 104))(v9, *MEMORY[0x1E69B5CC0], v5);
  sub_1D7D2E9FC();

  (*(v6 + 8))(v9, v5);
  v14 = v19;
  swift_beginAccess();
  if (*(v14 + 16))
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = v12;
  }

  v16 = sub_1D7A0A6F8(v18, v15);

  v21 = v16;
  sub_1D7A0ACE0();
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A0A6F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_16:
    v38 = *(a2 + 16);
    if (!v38)
    {
      v81 = MEMORY[0x1E69E7CC0];
LABEL_41:

      return v81;
    }

    v39 = 0;
    v78 = *MEMORY[0x1E695F040];
    v79 = *(MEMORY[0x1E695F040] + 16);
    v40 = a2 + 40;
    v81 = MEMORY[0x1E69E7CC0];
    v82 = *(a2 + 16);
    v80 = a2 + 40;
LABEL_18:
    v41 = (v40 + 56 * v39);
    v42 = v39;
    while (1)
    {
      if (v42 >= v38)
      {
        goto LABEL_43;
      }

      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_44;
      }

      v45 = *(v41 - 1);
      v44 = *v41;
      v46 = v41[3];
      v47 = v41[4];
      v48 = v41[5];
      if (v46 < 0)
      {
        if (!v5[2])
        {
          goto LABEL_21;
        }

        v83 = v42 + 1;
        v49 = v41[1];
        v50 = v41[2];
        sub_1D7A0ADB0(v45, v44, v49, v50, v46);

        v53 = sub_1D7A18FFC(v45, v44);
        if (v54)
        {
          v55 = (v5[7] + (v53 << 6));
          v57 = v55[2];
          v56 = v55[3];
          v58 = v55[1];
          v90 = *v55;
          v91 = v58;
          v92 = v57;
          v93 = v56;
          if (v48)
          {
            sub_1D7A0AE84(0, &qword_1EC9E21C0, &type metadata for PDFReplicaPageLink, MEMORY[0x1E69E6F90]);
            v59 = swift_allocObject();
            *(v59 + 16) = xmmword_1D7D3B4D0;
            *(v59 + 32) = v47;
            *(v59 + 40) = v48;
            *(v59 + 48) = v78;
            *(v59 + 64) = v79;
            v77 = v59;
            *(v59 + 80) = 1;
          }

          else
          {
            v77 = MEMORY[0x1E69E7CC0];
          }

          sub_1D79F5B54(&v90, v84);

          sub_1D7A0AE10(v45, v44, v49, v50, v46);
          *&v89[8] = v90;
          *&v89[24] = v91;
          *&v89[40] = v92;
          *&v89[56] = v93;
          *&v85 = v45;
          *(&v85 + 1) = v44;
          *&v86 = v49;
          *(&v86 + 1) = v50;
          v87[0] = v46 == 0;
          *&v87[8] = xmmword_1D7D3EE10;
          *&v87[24] = 0xE000000000000000;
          *&v88 = 0;
          *(&v88 + 1) = 0xE000000000000000;
          *v89 = v77;
          sub_1D7A0AE78(&v85);
          v100 = *&v89[16];
          v101 = *&v89[32];
          v102[0] = *&v89[48];
          v64 = *&v89[57];
LABEL_34:
          *(v102 + 9) = v64;
          v96 = *v87;
          v97 = *&v87[16];
          v98 = v88;
          v99 = *v89;
          v94 = v85;
          v95 = v86;
          v39 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1D79E3E30(0, *(v81 + 2) + 1, 1, v81);
          }

          v38 = v82;
          v66 = *(v81 + 2);
          v65 = *(v81 + 3);
          if (v66 >= v65 >> 1)
          {
            v75 = sub_1D79E3E30((v65 > 1), v66 + 1, 1, v81);
            v38 = v82;
            v81 = v75;
          }

          *(v81 + 2) = v66 + 1;
          v67 = &v81[160 * v66];
          v68 = v95;
          *(v67 + 2) = v94;
          *(v67 + 3) = v68;
          v69 = v96;
          v70 = v97;
          v71 = v99;
          *(v67 + 6) = v98;
          *(v67 + 7) = v71;
          *(v67 + 4) = v69;
          *(v67 + 5) = v70;
          v72 = v100;
          v73 = v101;
          v74 = v102[0];
          *(v67 + 169) = *(v102 + 9);
          *(v67 + 9) = v73;
          *(v67 + 10) = v74;
          *(v67 + 8) = v72;
          v40 = v80;
          if (v83 != v38)
          {
            goto LABEL_18;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (!v5[2])
        {
          goto LABEL_21;
        }

        v83 = v42 + 1;
        v49 = v41[1];
        v50 = v41[2];

        v51 = sub_1D7A18FFC(v45, v44);
        if (v52)
        {
          v60 = (v5[7] + (v51 << 6));
          v62 = v60[2];
          v61 = v60[3];
          v63 = v60[1];
          v90 = *v60;
          v91 = v63;
          v92 = v62;
          v93 = v61;
          sub_1D79F5B54(&v90, &v85);
          sub_1D7A0AE10(v45, v44, v49, v50, v46);
          v85 = v90;
          v86 = v91;
          *v87 = v92;
          *&v87[16] = v93;
          sub_1D79F5BB0(&v85);
          v100 = *&v89[16];
          v101 = *&v89[32];
          v102[0] = *&v89[48];
          v64 = *&v89[57];
          goto LABEL_34;
        }
      }

      sub_1D7A0AE10(v45, v44, v49, v50, v46);
      v38 = v82;
      v43 = v83;
LABEL_21:
      ++v42;
      v41 += 7;
      if (v43 == v38)
      {
        goto LABEL_41;
      }
    }
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v14 = v4[1];
    v94 = *v4;
    v95 = v14;
    v15 = v4[3];
    v96 = v4[2];
    v97 = v15;
    v16 = v14;
    sub_1D79F5B54(&v94, &v85);
    v17 = [v16 identifier];
    v18 = sub_1D7D3034C();
    v20 = v19;

    sub_1D79F5B54(&v94, &v85);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v5;
    v22 = sub_1D7A18FFC(v18, v20);
    v24 = v5[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v5[3] < v27)
    {
      sub_1D7B91394(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1D7A18FFC(v18, v20);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_46;
      }

LABEL_10:
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v22;
    sub_1D7B96CB0();
    v22 = v37;
    if (v28)
    {
LABEL_3:
      v6 = v22;

      v5 = v90;
      v7 = (*(v90 + 56) + (v6 << 6));
      v8 = v7[3];
      v10 = *v7;
      v9 = v7[1];
      *v87 = v7[2];
      *&v87[16] = v8;
      v85 = v10;
      v86 = v9;
      v11 = v94;
      v12 = v95;
      v13 = v97;
      v7[2] = v96;
      v7[3] = v13;
      *v7 = v11;
      v7[1] = v12;
      sub_1D7A0AD5C(&v85);
      sub_1D7A0AD5C(&v94);
      goto LABEL_4;
    }

LABEL_11:
    v5 = v90;
    *(v90 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v5[6] + 16 * v22);
    *v30 = v18;
    v30[1] = v20;
    v31 = (v5[7] + (v22 << 6));
    v33 = v96;
    v32 = v97;
    v34 = v95;
    *v31 = v94;
    v31[1] = v34;
    v31[2] = v33;
    v31[3] = v32;
    sub_1D7A0AD5C(&v94);
    v35 = v5[2];
    v26 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v26)
    {
      goto LABEL_45;
    }

    v5[2] = v36;
LABEL_4:
    v4 += 4;
    if (!--v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

void sub_1D7A0ACE0()
{
  if (!qword_1EE0BB3D8)
  {
    sub_1D7A0AE84(255, &qword_1EE0BB0E0, &type metadata for ANFIssuePage, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB3D8);
    }
  }
}

uint64_t sub_1D7A0ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
  }
}

uint64_t sub_1D7A0AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (a5 < 0)
  {
  }

  return result;
}

void sub_1D7A0AE84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7A0AED4()
{
  result = qword_1EC9E21C8;
  if (!qword_1EC9E21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E21C8);
  }

  return result;
}

unint64_t sub_1D7A0AF28()
{
  result = qword_1EE0BDD98;
  if (!qword_1EE0BDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDD98);
  }

  return result;
}

unint64_t sub_1D7A0AF90()
{
  result = qword_1EC9E21D0;
  if (!qword_1EC9E21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E21D0);
  }

  return result;
}

void sub_1D7A0B020()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  qword_1ECA0BA98 = v1;
}

uint64_t sub_1D7A0B084(void *a1)
{
  sub_1D7A0C010(0, &qword_1EE0BEAE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A0BFBC();
  sub_1D7D31B1C();
  v10[15] = 0;
  sub_1D7D3188C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D7D3189C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7A0B20C()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_1D7A0B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v6 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D7A0B328(uint64_t a1)
{
  v2 = sub_1D7A0BFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A0B364(uint64_t a1)
{
  v2 = sub_1D7A0BFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7A0B3A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D7A0B930(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

BOOL sub_1D7A0B3F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D7D3197C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D7A0B450()
{
  MEMORY[0x1DA70DE90](*v0, v0[1]);
  MEMORY[0x1DA70DE90](45, 0xE100000000000000);
  sub_1D7D3093C();
  return 0;
}

uint64_t sub_1D7A0B4C4(void *a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D31B0C();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  if (a3)
  {
    sub_1D79AADEC(0, &qword_1EE0BF3A8);
    sub_1D7A0BDD8(&qword_1EE0BF3A0, sub_1D7A0BE54);
  }

  else
  {
    sub_1D79AADEC(0, qword_1EE0BF240);
    sub_1D7A0BEA8(&qword_1EE0BB0D0);
  }

  sub_1D7D319BC();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D7A0B61C(uint64_t a1, char a2)
{
  if (a2)
  {
    v17 = 0x694C6465726F6373;
    v2 = *(a1 + 16);
    v3 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BDC8(0, v2, 0);
      v3 = v16;
      v5 = a1 + 48;
      do
      {
        v6 = *(v5 - 16);
        v7 = *(v5 - 8);

        MEMORY[0x1DA70DE90](v6, v7);
        MEMORY[0x1DA70DE90](45, 0xE100000000000000);
        sub_1D7D3093C();

        v9 = *(v16 + 16);
        v8 = *(v16 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D7A5BDC8((v8 > 1), v9 + 1, 1);
        }

        *(v16 + 16) = v9 + 1;
        v10 = v16 + 16 * v9;
        *(v10 + 32) = 0;
        *(v10 + 40) = 0xE000000000000000;
        v5 += 24;
        --v2;
      }

      while (v2);
    }

    v12 = MEMORY[0x1DA70E0B0](v3, MEMORY[0x1E69E6158]);
    v14 = v13;

    MEMORY[0x1DA70DE90](v12, v14);
  }

  else
  {
    v17 = 0x3A7473696CLL;
    v11 = MEMORY[0x1DA70E0B0](a1, MEMORY[0x1E69E6158]);
    MEMORY[0x1DA70DE90](v11);
  }

  return v17;
}

void *sub_1D7A0B7E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7A0BB1C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1D7A0B83C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_1D7A59818(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_1D7A59788(v4, v5);
}

uint64_t getEnumTagSinglePayload for CompositeTrackPlayerItemBoundaryOverride(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CompositeTrackPlayerItemBoundaryOverride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1D7A0B930(void *a1)
{
  sub_1D7A0C010(0, &unk_1EE0BEB70, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A0BFBC();
  sub_1D7D31AFC();
  if (!v1)
  {
    v14 = 0;
    sub_1D7D317AC();
    v13 = 1;
    sub_1D7D317BC();
    v2 = v11;
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void *sub_1D7A0BB1C(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D31AEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1D79AADEC(0, qword_1EE0BF240);
    sub_1D7A0BEA8(&qword_1EE0BF238);
    sub_1D7D3199C();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_1D7A0BD30()
{
  result = qword_1EE0C5E48;
  if (!qword_1EE0C5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E48);
  }

  return result;
}

unint64_t sub_1D7A0BD84()
{
  result = qword_1EC9E21D8;
  if (!qword_1EC9E21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E21D8);
  }

  return result;
}

uint64_t sub_1D7A0BDD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, &qword_1EE0BF3A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7A0BE54()
{
  result = qword_1EE0C5E50;
  if (!qword_1EE0C5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E50);
  }

  return result;
}

uint64_t sub_1D7A0BEA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, qword_1EE0BF240);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7A0BF18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7A0BF60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7A0BFBC()
{
  result = qword_1EE0C5E68;
  if (!qword_1EE0C5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E68);
  }

  return result;
}

void sub_1D7A0C010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A0BFBC();
    v7 = a3(a1, &_s17ArticleCollectionO13ScoredArticleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A0C088()
{
  result = qword_1EC9E21E0;
  if (!qword_1EC9E21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E21E0);
  }

  return result;
}

unint64_t sub_1D7A0C0E0()
{
  result = qword_1EE0C5E58;
  if (!qword_1EE0C5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E58);
  }

  return result;
}

unint64_t sub_1D7A0C138()
{
  result = qword_1EE0C5E60;
  if (!qword_1EE0C5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E60);
  }

  return result;
}

uint64_t BlueprintGroupArticleViewerBlueprintProvider.blueprint.getter()
{
  sub_1D7A0E91C();
}

uint64_t BlueprintGroupArticleViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:initialArticleIdentifier:token:groupDataContext:mainHeadline:feedKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  BlueprintGroupArticleViewerBlueprintProvider.init(blueprintLayoutProvider:initialArticleIdentifier:token:groupDataContext:mainHeadline:feedKind:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

char *BlueprintGroupArticleViewerBlueprintProvider.init(blueprintLayoutProvider:initialArticleIdentifier:token:groupDataContext:mainHeadline:feedKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v90 = a7;
  v88 = a6;
  v89 = a5;
  v83 = a4;
  v77 = a3;
  v76 = a2;
  v91 = a1;
  v9 = *v7;
  v75 = v9;
  v10 = v9[10];
  v11 = *(v10 - 8);
  v73 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v74 = &v70 - v12;
  v13 = v9[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = v13;
  v17 = swift_getAssociatedConformanceWitness();
  *&v100 = AssociatedTypeWitness;
  *(&v100 + 1) = v15;
  v101 = AssociatedConformanceWitness;
  v102 = v17;
  v80 = sub_1D7D2A23C();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v18);
  v78 = &v70 - v19;
  v20 = sub_1D7D2EB7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v72 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ArticleViewerBlueprint(0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v9[16];
  v84 = v11;
  v30 = *(v11 + 16);
  v85 = v10;
  v30(&v8[v29], v91, v10, v26);
  *v28 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  sub_1D79FF4A0();
  swift_allocObject();
  v81 = v28;
  *(v8 + 2) = sub_1D7D28ECC();
  v31 = v89;
  sub_1D7A0E924(v89, &v8[*(*v8 + 144)]);
  *&v8[*(*v8 + 136)] = v88;
  v32 = *(*v8 + 152);
  v82 = v21;
  v33 = *(v21 + 16);
  v87 = v20;
  v33(&v8[v32], v90, v20);
  sub_1D7A0E924(v31, &v100);
  if (v103)
  {
    swift_unknownObjectRetain();

    v72 = *(&v100 + 1);
    v76 = v100;
    v71 = v101;
    v77 = v102;
    v34 = v91;
    v35 = v85;
    v36 = v86;
    sub_1D7D2B76C();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v74;
    (v30)(v74, v34, v35);
    v39 = v84;
    v40 = (*(v84 + 80) + 64) & ~*(v84 + 80);
    v41 = (v73 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = v35;
    *(v42 + 24) = v36;
    v43 = v75;
    *(v42 + 32) = *(v75 + 6);
    *(v42 + 48) = v43[14];
    *(v42 + 56) = v37;
    (*(v39 + 32))(v42 + v40, v38, v35);
    v44 = (v42 + v41);
    v45 = v76;
    v46 = v72;
    *v44 = v76;
    v44[1] = v46;
    v47 = v71;
    v48 = v77;
    v44[2] = v71;
    v44[3] = v48;
    sub_1D7A03D20(v45, v46, v47);
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(v97, v98);

    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(v97);
    v75 = *(v8 + 2);
    sub_1D7D2B76C();
    v49 = v78;
    sub_1D7D28EDC();

    v50 = v76;
    v51 = v72;
    v97[0] = v76;
    v97[1] = v72;
    v97[2] = v47;
    v98 = v77;
    v52 = v81;
    sub_1D7A0D590(v97, v81);
    (*(v79 + 8))(v49, v80);
    sub_1D7A0F2CC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();

    sub_1D79DA510(v50, v51, v71);
    swift_unknownObjectRelease();
    (*(v82 + 8))(v90, v87);
    sub_1D7A0EA20(v89);
    (*(v39 + 8))(v91, v35);
    sub_1D79FF4F8(v52);
  }

  else
  {
    sub_1D799D69C(&v100, v97);
    swift_unknownObjectRetain_n();
    v53 = v85;
    v54 = v86;
    v74 = sub_1D7D2B76C();
    v55 = swift_allocObject();
    swift_weakInit();
    sub_1D799CC84(v97, &v94);
    v56 = v72;
    v57 = v87;
    v33(v72, v90, v87);
    v58 = v82;
    v59 = (*(v82 + 80) + 128) & ~*(v82 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v53;
    *(v60 + 24) = v54;
    v61 = v75;
    *(v60 + 32) = *(v75 + 6);
    *(v60 + 48) = v61[14];
    *(v60 + 56) = v55;
    v62 = v77;
    *(v60 + 64) = v76;
    *(v60 + 72) = v62;
    sub_1D799D69C(&v94, v60 + 80);
    *(v60 + 120) = v88;
    (*(v58 + 32))(v60 + v59, v56, v57);

    swift_unknownObjectRetain();
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(&v94, v96);

    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v94);
    v75 = *(v8 + 2);
    v63 = v91;
    sub_1D7D2B76C();
    v64 = v78;
    sub_1D7D28EDC();

    v65 = v98;
    v66 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    (*(v66 + 8))(&v94, v65, v66);
    v92 = v94;
    v93 = v95;
    v67 = v81;
    v68 = v90;
    sub_1D7A0CF00(&v92, v90, v81);

    swift_unknownObjectRelease();
    sub_1D7A0EB20(v92);
    (*(v79 + 8))(v64, v80);
    sub_1D7A0F2CC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    swift_unknownObjectRelease();

    (*(v58 + 8))(v68, v87);
    sub_1D7A0EA20(v89);
    (*(v84 + 8))(v63, v85);
    sub_1D79FF4F8(v67);
    __swift_destroy_boxed_opaque_existential_1(v97);
  }

  return v8;
}

uint64_t sub_1D7A0CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = a5[3];
    v15 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v14);
    (*(v15 + 8))(&v18, v14, v15);
    v16 = v18;
    v17 = v19;
    sub_1D7A0CF00(&v16, a7, v12);
    sub_1D7A0EB20(v16);
    sub_1D7A0F2CC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D79FF4F8(v12);
  }

  return result;
}

uint64_t sub_1D7A0CF00@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v43 = a2;
  v50 = a3;
  v4 = sub_1D7D2EB7C();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 8);
  v47 = *a1;
  v46 = v12;
  v45 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0];
  v14 = sub_1D7A0DC10();
  v15 = *(v14 + 16);
  v44 = v14;
  if (v15)
  {
    v16 = v14;
    v42 = v4;
    v53 = v13;
    sub_1D79A8814(0, v15, 0);
    v17 = v13;
    v13 = v53;
    v18 = (v16 + 32);
    type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
    do
    {
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v52[2] = v18[2];
      v52[3] = v21;
      v52[0] = v19;
      v52[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      swift_storeEnumTagMultiPayload();
      *(v11 + *(v7 + 20)) = v17;
      sub_1D79F5B54(v52, v51);
      v53 = v13;
      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D79A8814(v25 > 1, v26 + 1, 1);
        v13 = v53;
      }

      *(v13 + 16) = v26 + 1;
      sub_1D7A0EC98(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26);
      v18 += 4;
      --v15;
    }

    while (v15);
    v4 = v42;
  }

  v27 = v49;
  v28 = v48;
  v29 = v47;
  v30 = v46;
  v31 = v45;
  if (v47)
  {
    (*(v49 + 16))(v48, v43, v4);
    v32 = v54;
    sub_1D7A0EF34(v29);
    v33 = sub_1D7A0ECFC(v32, v44);

    v34 = (*(v27 + 88))(v28, v4);
    if (v34 == *MEMORY[0x1E69B5F60] || v34 == *MEMORY[0x1E69B5F20] || v34 == *MEMORY[0x1E69B5EA0])
    {
      v38 = v31 & 1 | 0x8000000000000000;
    }

    else
    {

      v37 = v4;
      v38 = v31 & 1;
      (*(v27 + 8))(v28, v37);
      v33 = 0;
    }

    v39 = v50;
    *v50 = v13;
    v39[1] = v29;
    v39[2] = v30;
    v39[3] = v38;
    v39[4] = v33;
  }

  else
  {

    *v50 = v13;
  }

  type metadata accessor for ArticleViewerBlueprint(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7A0D314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v9 = sub_1D7D2A23C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7D2B76C();
    sub_1D7D28EDC();

    AssociatedTypeWitness = a4;
    v23 = a5;
    AssociatedConformanceWitness = v20;
    v25 = v21;
    sub_1D7A0D590(&AssociatedTypeWitness, v17);
    (*(v10 + 8))(v13, v9);
    sub_1D7A0F2CC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D79FF4F8(v17);
  }

  return result;
}

uint64_t sub_1D7A0D590@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v33 = v11;
  v13 = sub_1D7A0D7E4();
  v14 = *(v13 + 16);
  if (v14)
  {
    v29 = v12;
    v30 = v10;
    v31 = v9;
    v32 = a2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D79A8814(0, v14, 0);
    v15 = v36;
    type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
    v16 = v14 - 1;
    for (i = 32; ; i += 64)
    {
      v18 = *(v13 + i);
      v19 = *(v13 + i + 16);
      v20 = *(v13 + i + 48);
      v35[2] = *(v13 + i + 32);
      v35[3] = v20;
      v35[0] = v18;
      v35[1] = v19;
      v21 = *(v13 + i);
      v22 = *(v13 + i + 16);
      v23 = *(v13 + i + 48);
      v8[2] = *(v13 + i + 32);
      v8[3] = v23;
      *v8 = v21;
      v8[1] = v22;
      swift_storeEnumTagMultiPayload();
      *(v8 + *(v4 + 20)) = MEMORY[0x1E69E7CC0];
      sub_1D79F5B54(v35, v34);
      v36 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D79A8814(v24 > 1, v25 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v25 + 1;
      sub_1D7A0EC98(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25);
      if (!v16)
      {
        break;
      }

      --v16;
    }

    v9 = v31;
    a2 = v32;
    v10 = v30;
    v12 = v29;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v15;
  a2[1] = v9;
  v26 = v33;
  a2[2] = v10;
  a2[3] = v26;
  a2[4] = v12;
  type metadata accessor for ArticleViewerBlueprint(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D7A03D20(v9, v10, v26);
}

uint64_t sub_1D7A0D7E4()
{
  v1 = MEMORY[0x1E69E7CC0];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2A23C();
  swift_getWitnessTable();
  sub_1D7D3059C();
  return v1;
}

uint64_t sub_1D7A0D948(uint64_t a1, uint64_t a2)
{
  *&v18 = sub_1D7A0EFB8(a1, *(*a2 + 80), *(*a2 + 88), *(*a2 + 96), *(*a2 + 104), *(*a2 + 112));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D307BC();
  sub_1D79F8E00();
  swift_getWitnessTable();
  sub_1D7A0F2CC(&qword_1EE0BF318, sub_1D79F8E00);
  v2 = sub_1D7D3058C();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v2 + 16))
    {
      v8 = *v6;
      v9 = v6[1];
      v10 = v6[3];
      v20 = v6[2];
      v21 = v10;
      v18 = v8;
      v19 = v9;
      sub_1D79F5B54(&v18, v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1D79E3A50((v11 > 1), v12 + 1, 1, v7);
        v7 = result;
      }

      ++v5;
      *(v7 + 16) = v12 + 1;
      v13 = (v7 + (v12 << 6));
      v14 = v18;
      v15 = v19;
      v16 = v21;
      v13[4] = v20;
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      v6 += 4;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_11:

    return sub_1D79E26EC(v7);
  }

  return result;
}

uint64_t sub_1D7A0DC10()
{
  v1 = MEMORY[0x1E69E7CC0];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2A23C();
  swift_getWitnessTable();
  sub_1D7D3059C();
  return v1;
}

uint64_t sub_1D7A0DD78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a5;
  *&v24 = sub_1D7A0EFB8(a1, *(*a2 + 80), *(*a2 + 88), *(*a2 + 96), *(*a2 + 104), *(*a2 + 112));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D307BC();
  sub_1D79F8E00();
  swift_getWitnessTable();
  sub_1D7A0F2CC(&qword_1EE0BF318, sub_1D79F8E00);
  v6 = sub_1D7D3058C();

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v6 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v6 + 16))
    {
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[3];
      v26 = v10[2];
      v27 = v14;
      v24 = v12;
      v25 = v13;
      sub_1D79F5B54(&v24, v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D79E3A50((v15 > 1), v16 + 1, 1, v11);
        v11 = result;
      }

      ++v9;
      *(v11 + 16) = v16 + 1;
      v17 = (v11 + (v16 << 6));
      v18 = v24;
      v19 = v25;
      v20 = v27;
      v17[4] = v26;
      v17[5] = v20;
      v17[2] = v18;
      v17[3] = v19;
      v10 += 4;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_11:

    sub_1D79E26EC(v21);
    swift_unknownObjectRetain();

    sub_1D7B512C4(v22, a4, v28, v11);
    swift_unknownObjectRelease();
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1D7A0E088@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v11 - v7;
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D2ABBC();
  v9 = (*(a1 + 8))(AssociatedTypeWitness, a1);
  result = (*(v5 + 8))(v8, AssociatedTypeWitness);
  *a2 = v9;
  return result;
}

uint64_t sub_1D7A0E1EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v54 = a2;
  v8 = sub_1D7D29C1C();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v45 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = sub_1D7D2ABCC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v45 - v29;
  v31 = *a1;
  v49 = *(v22 + 16);
  v50 = v31;
  v49(&v45 - v29, a1, TupleTypeMetadata2, v28);
  v32 = *(TupleTypeMetadata2 + 48);
  sub_1D7D2ABBC();
  v33 = *(v20 - 8);
  v46 = *(v33 + 8);
  v47 = v33 + 8;
  v46(&v30[v32], v20);
  v34 = AssociatedTypeWitness;
  sub_1D7D2A1EC();
  v35 = *(v58 + 8);
  v58 += 8;
  v35(v19, v34);
  (v49)(v25);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v51;
  sub_1D7D2ABBC();
  v46(&v25[v36], v20);
  v38 = v53;
  sub_1D7D2A1EC();
  v35(v37, v34);
  v39 = v57;
  v40 = v38;
  LOBYTE(v38) = sub_1D7D2AD3C();
  v41 = *(v55 + 8);
  v42 = v40;
  v43 = v56;
  v41(v42, v56);
  v41(v39, v43);
  return v38 & 1;
}

uint64_t sub_1D7A0E604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D7D2ABCC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, TupleTypeMetadata2, v7);
  return (*(*(v4 - 8) + 32))(a2, &v9[*(TupleTypeMetadata2 + 48)], v4);
}

uint64_t *BlueprintGroupArticleViewerBlueprintProvider.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  swift_unknownObjectRelease();
  sub_1D7A0EA20(v0 + *(*v0 + 144));
  v2 = *(*v0 + 152);
  v3 = sub_1D7D2EB7C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t BlueprintGroupArticleViewerBlueprintProvider.__deallocating_deinit()
{
  BlueprintGroupArticleViewerBlueprintProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A0E8E8()
{
  sub_1D7A0E91C();
}

uint64_t sub_1D7A0E980(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 64) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (v1 + ((*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D7A0D314(a1, *(v1 + 56), v1 + v2, *v3, v3[1], v3[2], v3[3]);
}

uint64_t sub_1D7A0EB20(uint64_t result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7A0EB60()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2EB7C();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7A0EC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A0ECFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    v22 = a2 + 32;
    do
    {
      v7 = (v6 + (v5 << 6));
      v8 = v5;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v9 = v7[1];
        v25 = *v7;
        v26 = v9;
        v10 = v7[3];
        v27 = v7[2];
        v28 = v10;
        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }

        v11 = v7[1];
        v24[0] = *v7;
        v24[1] = v11;
        v12 = v7[3];
        v24[2] = v7[2];
        v24[3] = v12;
        MEMORY[0x1EEE9AC00](result, a2);
        v21[2] = v24;
        sub_1D79F5B54(&v25, v23);
        if ((sub_1D7B8A998(sub_1D7A0EF78, v21, v4) & 1) == 0)
        {
          break;
        }

        result = sub_1D7A0AD5C(&v25);
        ++v8;
        v7 += 4;
        if (v5 == v2)
        {
          goto LABEL_14;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v3;
      if ((result & 1) == 0)
      {
        result = sub_1D7A5BE4C(0, *(v3 + 16) + 1, 1);
        v3 = v29;
      }

      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D7A5BE4C((v13 > 1), v14 + 1, 1);
        v3 = v29;
      }

      *(v3 + 16) = v14 + 1;
      v15 = (v3 + (v14 << 6));
      v16 = v25;
      v17 = v26;
      v18 = v28;
      v15[4] = v27;
      v15[5] = v18;
      v15[2] = v16;
      v15[3] = v17;
      v6 = v22;
    }

    while (v5 != v2);
  }

LABEL_14:
  v19 = *(v3 + 16);
  if (v19)
  {
    *&v25 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    v20 = 48;
    do
    {
      swift_unknownObjectRetain();
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      v20 += 64;
      --v19;
    }

    while (v19);

    return v25;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D7A0EF34(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D7A0EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v44 = AssociatedTypeWitness;
  v45 = v31;
  v46 = AssociatedConformanceWitness;
  v47 = v30;
  v12 = sub_1D7D2B07C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1D7D3165C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v29 - v18;
  MEMORY[0x1DA70DFD0](v12, WitnessTable, v17);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v20 = a5;
  v21 = v32;
  v43 = v32;
  swift_getWitnessTable();
  v22 = sub_1D7D3057C();
  (*(v15 + 8))(v19, v14);
  v44 = v22;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = v20;
  v38 = v21;
  v23 = sub_1D7D2ABCC();
  swift_getTupleTypeMetadata2();
  v24 = sub_1D7D307BC();
  v25 = swift_getWitnessTable();
  v27 = sub_1D7A3B594(sub_1D7A0F33C, v33, v24, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);

  return v27;
}

uint64_t sub_1D7A0F2CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7A0F418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40));
  sub_1D7A0F4DC();
  result = sub_1D7D28D2C();
  if (v11)
  {
    v8 = type metadata accessor for HeadlineProvider();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    sub_1D799D69C(&v10, v9 + 32);
    a3[3] = v8;
    a3[4] = &off_1F52B1F38;
    *a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7A0F4DC()
{
  result = qword_1EE0CBB60;
  if (!qword_1EE0CBB60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBB60);
  }

  return result;
}

uint64_t sub_1D7A0F550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v6);
  v3 = type metadata accessor for PDFReplicaModule();
  v4 = swift_allocObject();
  result = sub_1D799D69C(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_1F52A8A90;
  *a2 = v4;
  return result;
}

uint64_t sub_1D7A0F5C0()
{
  type metadata accessor for PDFReplicaViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E21F0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E21F8);
  sub_1D7D291EC();
  type metadata accessor for PDFReplicaRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2200);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2208);
  sub_1D7D291EC();
  type metadata accessor for PDFReplicaInteractor();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2210);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C7D18);
  sub_1D7D291EC();

  type metadata accessor for ReplicaAdvertisementLoadingIndicatorProvider();
  sub_1D7D291DC();
}

uint64_t sub_1D7A0F878(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E21F0);
  result = sub_1D7D28D2C();
  if (!v53)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2200);
  result = sub_1D7D28D2C();
  v3 = v50;
  if (!v50)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A10880();
  result = sub_1D7D28D1C();
  v39 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7D18);
  result = sub_1D7D28D2C();
  if (!v49)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A1093C(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
  result = sub_1D7D28D2C();
  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v46)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = v5;
  v45 = sub_1D7A108E4();
  sub_1D7D2A50C();
  swift_allocObject();
  v6 = sub_1D7D2A4FC();
  v7 = type metadata accessor for PDFReplicaViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_contentBackgroundColor;
  v10 = [objc_opt_self() whiteColor];
  sub_1D7A1093C(0, &unk_1EE0C0440, &type metadata for ContentBackgroundColors, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v8[v9] = sub_1D7D28ECC();
  v11 = &unk_1EC9E7000;
  v12 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_focusableView;
  type metadata accessor for FocusableView();
  *&v8[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *&v8[v13] = sub_1D7D2A58C();
  v14 = &unk_1EC9E7000;
  v15 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pinchRecognizer;
  *&v8[v15] = [objc_allocWithZone(MEMORY[0x1E69DCD80]) init];
  *&v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine] = 0;
  v16 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_paywallPreparationEventManager;
  sub_1D7A1098C();
  swift_allocObject();
  *&v8[v16] = sub_1D7D28C9C();
  v17 = &v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_lastSafeAreaInsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v19 = [objc_allocWithZone(MEMORY[0x1E6978048]) initWithFrame_];
  *&v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView] = v19;
  sub_1D799CC84(v52, &v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler]);
  v20 = &v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler];
  *v20 = v3;
  *(v20 + 1) = v4;
  *&v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_keyCommandManager] = v39;
  sub_1D799CC84(v48, &v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingIndicatorProvider]);
  *&v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_commands] = v6;
  v21 = 0xE000000000000000;
  v42 = 0;
  v43 = 0xE000000000000000;
  v22 = v40;
  v23 = *(v40 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v23)
  {
    v38 = v7;
    v24 = 0;
    v25 = v40 + 56;
    while (v24 < *(v22 + 16))
    {
      ++v24;
      v27 = *(v25 - 24);
      v26 = *(v25 - 16);

      MEMORY[0x1DA70DE90](v27, v26);

      v22 = v40;

      v25 += 88;
      if (v23 == v24)
      {
        v28 = v42;
        v21 = v43;
        v7 = v38;
        v11 = &unk_1EC9E7000;
        v14 = &unk_1EC9E7000;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v28 = 0;
LABEL_14:

  v29 = &v8[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_identifier];
  *v29 = v28;
  *(v29 + 1) = v21;
  v41.receiver = v8;
  v41.super_class = v7;
  v30 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  *(*&v30[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler] + 24) = &off_1F52AD9B0;
  swift_unknownObjectWeakAssign();
  v31 = v14[171];
  v32 = *&v30[v31];
  v33 = v30;
  [v32 addTarget:v33 action:sel_handlePinchGesture];
  [*&v30[v31] setDelegate_];
  v34 = sub_1D7C45424();
  v35 = *&v33[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine];
  *&v33[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine] = v34;

  [v34 activate];
  v36 = *&v33[v11[166]];
  v37 = sub_1D7D3031C();
  [v36 setFocusGroupIdentifier_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v33;
}

uint64_t sub_1D7A0FF74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for PDFReplicaStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52B40C0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A10028@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF230);
  result = sub_1D7D28D2C();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EC9E2228);
    result = sub_1D7D28D2C();
    if (v8)
    {
      v5 = type metadata accessor for PDFReplicaRouter();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D799D69C(v11, v6 + 104);
      sub_1D799D69C(&v9, v6 + 24);
      result = sub_1D799D69C(&v7, v6 + 64);
      a2[3] = v5;
      a2[4] = &off_1F52A42D0;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7A10168(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PDFReplicaViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7A101E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2208);
  result = sub_1D7D28D2C();
  v5 = v28;
  if (v28)
  {
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E21F8);
    result = sub_1D7D28D2C();
    if (v27)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for PDFReplicaRouter();
      v25[3] = v13;
      v25[4] = &off_1F52A42D0;
      v25[0] = v12;
      type metadata accessor for PDFReplicaEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v23 = v13;
      v24 = &off_1F52A42D0;
      *&v22 = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799D69C(&v22, (v14 + 6));
      *(v5 + 24) = &off_1F52ABF08;
      swift_unknownObjectWeakAssign();
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a2 = v14;
      a2[1] = &off_1F52ABF20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A104A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2210);
  result = sub_1D7D28D2C();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7A1093C(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    result = sub_1D7D28D2C();
    if (v6)
    {
      type metadata accessor for PDFReplicaInteractor();
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      result = swift_unknownObjectWeakInit();
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0;
      *(v5 + 72) = v7;
      *(v5 + 80) = v8;
      *(v5 + 88) = v6;
      *a2 = v5;
      a2[1] = &off_1F52AB6B8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A105DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EC9E2218);
  sub_1D7D28D2C();
  swift_beginAccess();
  sub_1D7A107B0(v4, v2 + 32);
  return swift_endAccess();
}

uint64_t sub_1D7A10678@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CE580);
  result = sub_1D7D28D2C();
  if (v6)
  {
    type metadata accessor for PDFReplicaDataManager();
    v4 = swift_allocObject();
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0;
    result = sub_1D799D69C(&v5, v4 + 16);
    *a2 = v4;
    a2[1] = &off_1F52A7DB8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A10734@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PDFReplicaLoadingIndicatorProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F52A94F8;
  *a1 = result;
  return result;
}

uint64_t sub_1D7A1077C()
{
  type metadata accessor for ReplicaAdvertisementLoadingIndicatorProvider();

  return swift_allocObject();
}

uint64_t sub_1D7A107B0(uint64_t a1, uint64_t a2)
{
  sub_1D7A10814();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7A10814()
{
  if (!qword_1EC9E2220)
  {
    sub_1D798C468(255, &qword_1EC9E2218);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2220);
    }
  }
}

unint64_t sub_1D7A10880()
{
  result = qword_1EE0BEE48;
  if (!qword_1EE0BEE48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEE48);
  }

  return result;
}

unint64_t sub_1D7A108E4()
{
  result = qword_1EE0CB3B0;
  if (!qword_1EE0CB3B0)
  {
    sub_1D7D28A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CB3B0);
  }

  return result;
}

void sub_1D7A1093C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7A1098C()
{
  if (!qword_1EC9E2238)
  {
    sub_1D7A109E8();
    v0 = sub_1D7D28CAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2238);
    }
  }
}

unint64_t sub_1D7A109E8()
{
  result = qword_1EC9E2240;
  if (!qword_1EC9E2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2240);
  }

  return result;
}

void sub_1D7A10A60(char *a1, CGFloat a2, double a3, double a4, double a5)
{
  v6 = v5;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  sub_1D79F7B3C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4E0;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v14 = sub_1D7992EFC(0, &qword_1EE0BED40);
  v15 = v13;
  *(inited + 40) = sub_1D7D3105C();
  v16 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 whiteColor];
  *(inited + 104) = sub_1D7992EFC(0, &qword_1EE0BECE8);
  *(inited + 80) = v19;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D7D3031C();

  type metadata accessor for Key(0);
  sub_1D79F7BE0();
  v22 = sub_1D7D3027C();

  v23 = [v20 initWithString:v21 attributes:v22];

  sub_1D7D30B4C();
  v25 = a2 - v24;
  sub_1D7D30E5C();
  v26 = CGRectGetHeight(v34) + 10.0;
  if (v26 > 40.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 40.0;
  }

  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = a2;
  v35.size.height = v27;
  Height = CGRectGetHeight(v35);
  v29 = [a1 view];
  if (v29)
  {
    v30 = v29;
    [v29 setFrame_];

    v31 = [a1 view];
    if (v31)
    {
      v32 = v31;
      [v31 setBackgroundColor_];

      v33 = *&a1[OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_label];
      [v33 setFrame_];
      [v33 setAttributedText_];
      [v33 setTextAlignment_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D7A10E40()
{
  v1 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController____lazy_storage___sendButton;
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController____lazy_storage___sendButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController____lazy_storage___sendButton];
  }

  else
  {
    v4 = sub_1D7A10EA4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D7A10EA4(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v16[3] = ObjectType;
  v16[0] = a1;
  v5 = a1;
  v6 = sub_1D7D3031C();

  if (ObjectType)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v16, ObjectType);
    v8 = *(ObjectType - 8);
    v9 = MEMORY[0x1EEE9AC00](v7, v7);
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1D7D3195C();
    (*(v8 + 8))(v11, ObjectType);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_send, v16[0]}];

  swift_unknownObjectRelease();
  return v14;
}