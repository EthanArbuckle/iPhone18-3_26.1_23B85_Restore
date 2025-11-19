void sub_1D6A03D24()
{
  sub_1D725BDCC();
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v0 = sub_1D726308C();
  type metadata accessor for DebugFormatEditorViewController();
  sub_1D725BAAC();
}

void sub_1D6A03DF8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [*(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_sourceViewController) view];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1D6A03E70(uint64_t a1, _OWORD *a2))()
{
  v2 = a2[7];
  v4 = a2[5];
  v27 = a2[6];
  v3 = v27;
  v28 = v2;
  v5 = a2[3];
  v6 = a2[5];
  v25 = a2[4];
  v7 = v25;
  v26 = v6;
  v8 = a2[1];
  v9 = *(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_sourceViewController);
  v22[0] = *a2;
  v10 = v22[0];
  v22[1] = v8;
  v11 = a2[3];
  v23 = a2[2];
  v24 = v11;
  v12 = (v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile);
  v13 = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile);
  v14 = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16);
  v15 = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48);
  v29[2] = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32);
  v29[3] = v15;
  v29[0] = v13;
  v29[1] = v14;
  v16 = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64);
  v17 = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80);
  v18 = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112);
  v29[6] = *(v9 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96);
  v29[7] = v18;
  v29[4] = v16;
  v29[5] = v17;
  v12[2] = v23;
  v12[3] = v5;
  *v12 = v10;
  v12[1] = v8;
  v19 = a2[7];
  v12[6] = v3;
  v12[7] = v19;
  v12[4] = v7;
  v12[5] = v4;
  sub_1D6A14A4C(v22, &v21, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
  sub_1D6A149DC(v29, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
  return sub_1D6918BE8();
}

void sub_1D6A03F54(void *a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v2 = [a1 view];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D6A0400C(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
    [v3 setZoomScale:0 animated:1.0];
    v4 = *(a2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView);
    v7[0] = 0x3FF0000000000000;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0x3FF0000000000000;
    v7[4] = 0;
    v7[5] = 0;
    [v4 setTransform_];
    sub_1D6A10108(v3);
    sub_1D6A13C28(v3, 1.0);
    [v3 adjustedContentInset];
    [v3 setContentOffset:0 animated:{0.0, -v5}];
    sub_1D6A103C8(v3);
    sub_1D6A153FC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6A153FC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6A04184(int a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = [a2 view];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];

    v6 = [a2 view];
    if (v6)
    {
      v7 = v6;
      [v6 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D6A04234(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationController];
  v4 = [v3 toolbar];

  sub_1D71CD8F4(v4);
  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;

    sub_1D725972C();

    [v6 setToolbarHidden:(v7 & 1) == 0 animated:0];
  }
}

id sub_1D6A0438C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7259F5C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131.receiver = v1;
  v131.super_class = ObjectType;
  objc_msgSendSuper2(&v131, sel_viewWillLayoutSubviews, v6);
  sub_1D69FDDC4();
  sub_1D606BFAC();

  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame_];
  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView];
  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v20 setFrame_];
  v30 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_snapshotCanvasView];
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = result;
  [result bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v30 setFrame_];
  result = [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_sourceViewController] view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v40 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = result;
  [result bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  [v40 setFrame_];
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v50 = result;
  [result bounds];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  v132.origin.x = v52;
  v132.origin.y = v54;
  v132.size.width = v56;
  v132.size.height = v58;
  Width = CGRectGetWidth(v132);
  v60 = sub_1D69FE658();
  [v60 frame];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;

  v139.origin.x = 0.0;
  v139.origin.y = 0.0;
  v139.size.height = 22.0;
  v133.origin.x = v62;
  v133.origin.y = v64;
  v133.size.width = v66;
  v133.size.height = v68;
  v139.size.width = Width;
  if (!CGRectEqualToRect(v133, v139))
  {
    [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView] setFrame_];
    v69 = [v1 navigationItem];
    v134.origin.x = 0.0;
    v134.origin.y = 0.0;
    v134.size.height = 22.0;
    v134.size.width = Width;
    [v69 ts:CGRectGetHeight(v134) setBottomPaletteMinimumHeight:?];

    v70 = [v1 navigationItem];
    v135.origin.x = 0.0;
    v135.origin.y = 0.0;
    v135.size.height = 22.0;
    v135.size.width = Width;
    [v70 ts:CGRectGetHeight(v135) setBottomPalettePreferredHeight:?];
  }

  if (sub_1D6A9E528() - 33 <= 1)
  {
    v71 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController];
    result = [v71 view];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v72 = result;
    result = [v1 view];
    if (!result)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v73 = result;
    [result bounds];
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;

    [v72 setFrame_];
    v82 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView];
    result = [v1 view];
    if (!result)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v83 = result;
    [result bounds];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;

    [v82 setFrame_];
LABEL_20:
    v122 = sub_1D69FE348();
    result = [v71 view];
    if (result)
    {
      v123 = result;
      [result frame];
      v125 = v124;
      v127 = v126;

      v128 = &v122[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset];
      *v128 = v125;
      v128[1] = v127;
      v138 = CGRectOffset(*&v122[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentFrame], v125, v127);
      [v122 setFrame_];

      result = [v71 view];
      if (result)
      {
        v129 = result;
        [result setNeedsLayout];

        result = [v71 view];
        if (result)
        {
          v130 = result;
          [result layoutIfNeeded];

          sub_1D6A04B78(v9);
          return sub_1D6A04E74();
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1D69FDE78();
  sub_1D7259E7C();
  v93 = v92;
  (*(v4 + 8))(v8, v3);
  result = [v1 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v94 = result;
  [result safeAreaInsets];
  v96 = v95;

  result = [v1 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v97 = result;
  [result bounds];
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;

  v136.origin.x = v99;
  v136.origin.y = v101;
  v136.size.width = v103;
  v136.size.height = v105;
  v106 = CGRectGetWidth(v136);
  result = [v1 view];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v107 = result;
  [result safeAreaInsets];
  v109 = v108;

  result = [v1 view];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v110 = result;
  [result bounds];
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;

  v137.origin.x = v112;
  v137.origin.y = v114;
  v137.size.width = v116;
  v137.size.height = v118;
  Height = CGRectGetHeight(v137);
  v71 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController];
  result = [v71 view];
  if (result)
  {
    v120 = result;
    v121 = v96 + (v106 - v109) * 0.5 - v93 * 0.5;
    [result setFrame_];

    [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView] setFrame_];
    goto LABEL_20;
  }

LABEL_40:
  __break(1u);
  return result;
}

id sub_1D6A04B78(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView);
  v5 = 32.0;
  if (v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden])
  {
    v5 = 0.0;
  }

  [a1 setContentInset_];
  v6 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController);
  v7 = *&v6[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView] + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame;
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  [a1 contentSize];
  v11 = v10;
  [a1 frame];
  Width = CGRectGetWidth(v44);
  if (v8 > Width)
  {
    Width = v8;
  }

  if (v11 <= Width)
  {
    v11 = Width;
  }

  [a1 contentSize];
  v14 = v13;
  [a1 frame];
  Height = CGRectGetHeight(v45);
  if (v9 > Height)
  {
    Height = v9;
  }

  if (v14 > Height)
  {
    v16 = v14;
  }

  else
  {
    v16 = Height;
  }

  [a1 setContentSize_];
  [a1 bounds];
  MinX = CGRectGetMinX(v46);
  [a1 bounds];
  MinY = CGRectGetMinY(v47);
  [a1 safeAreaInsets];
  v20 = MinY + v19;
  [a1 bounds];
  v21 = CGRectGetWidth(v48);
  [a1 bounds];
  v22 = CGRectGetHeight(v49);
  [a1 safeAreaInsets];
  [v4 setFrame_];
  result = [v6 view];
  if (result)
  {
    v25 = result;
    [result frame];
    v27 = v26;
    v29 = v28;

    [*(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView) transform];
    v43.x = v27;
    v43.y = v29;
    v30 = CGPointApplyAffineTransform(v43, &v42);
    v31 = &v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_canvasOffset];
    *v31 = v30;
    v32 = *&v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
    *&v32[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_canvasOffset] = v30;
    [v32 setNeedsLayout];
    v33 = *&v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
    *&v33[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_canvasOffset] = *v31;
    [v33 setNeedsLayout];
    [a1 contentSize];
    v34 = &v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize];
    *v34 = v35;
    v34[1] = v36;
    sub_1D6320FEC();
    [a1 bounds];
    v37 = &v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentBounds];
    *v37 = v38;
    v37[1] = v39;
    v37[2] = v40;
    v37[3] = v41;
    return sub_1D632109C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D6A04E74()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  Height = CGRectGetHeight(v31);
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  [result safeAreaInsets];
  v15 = v14;

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v32.origin.x = v18;
  v32.origin.y = v20;
  v32.size.width = v22;
  v32.size.height = v24;
  Width = CGRectGetWidth(v32);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = Height - v15;
  [result safeAreaInsets];
  v29 = v28;

  return [v1 setFrame_];
}

void sub_1D6A05050()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4).n128_u64[0];
  v7 = &v41 - v6;
  v43.receiver = v1;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_viewDidLayoutSubviews, v5);

  sub_1D725B31C();

  if (v42)
  {
    return;
  }

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  type metadata accessor for DebugFormatEditorView();
  swift_dynamicCastClassUnconditional();

  sub_1D725B31C();

  if (v42)
  {
    return;
  }

  v10 = &v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds];
  v11 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds];
  v12 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds + 8];
  v13 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds + 16];
  v14 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds + 24];
  v15 = v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds + 32];
  v16 = [v1 view];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if ((v15 & 1) != 0 || (v44.origin.x = v11, v44.origin.y = v12, v44.size.width = v13, v44.size.height = v14, v45.origin.x = v19, v45.origin.y = v21, v45.size.width = v23, v45.size.height = v25, !CGRectEqualToRect(v44, v45)))
  {
    v26 = [v1 view];
    if (v26)
    {
      v27 = v26;
      [v26 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      *v10 = v29;
      *(v10 + 1) = v31;
      *(v10 + 2) = v33;
      *(v10 + 3) = v35;
      v10[32] = 0;
      v36 = sub_1D726294C();
      (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
      sub_1D726290C();
      v37 = v1;
      v38 = sub_1D72628FC();
      v39 = swift_allocObject();
      v40 = MEMORY[0x1E69E85E0];
      v39[2] = v38;
      v39[3] = v40;
      v39[4] = v37;
      sub_1D6BD1334(0, 0, v7, &unk_1D7312508, v39);

      return;
    }

LABEL_12:
    __break(1u);
  }
}

uint64_t sub_1D6A05364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[110] = a4;
  sub_1D726290C();
  v4[111] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v4[112] = v6;
  v4[113] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D6A05400, v6, v5);
}

uint64_t sub_1D6A05400()
{

  sub_1D725B31C();

  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  v7 = swift_task_alloc();
  *(v0 + 912) = v7;
  *v7 = v0;
  v7[1] = sub_1D6A05514;

  return sub_1D6A057C4(v0 + 232, 0);
}

uint64_t sub_1D6A05514()
{
  v2 = *v1;
  v3 = *v1 + 232;
  *(*v1 + 920) = v0;

  v4 = *(v3 + 16);
  if (v0)
  {
    *(v2 + 448) = *v3;
    *(v2 + 464) = v4;
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    *(v2 + 512) = *(v3 + 64);
    *(v2 + 528) = v7;
    *(v2 + 480) = v5;
    *(v2 + 496) = v6;
    v8 = *(v3 + 96);
    v9 = *(v3 + 112);
    v10 = *(v3 + 144);
    *(v2 + 576) = *(v3 + 128);
    *(v2 + 592) = v10;
    *(v2 + 544) = v8;
    *(v2 + 560) = v9;
    v11 = *(v3 + 160);
    v12 = *(v3 + 176);
    v13 = *(v3 + 192);
    *(v2 + 656) = *(v3 + 208);
    *(v2 + 624) = v12;
    *(v2 + 640) = v13;
    *(v2 + 608) = v11;
    sub_1D6A149DC(v2 + 448, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v14 = *(v2 + 904);
    v15 = *(v2 + 896);
    v16 = sub_1D6A0574C;
  }

  else
  {
    *(v2 + 664) = *v3;
    *(v2 + 680) = v4;
    v17 = *(v3 + 32);
    v18 = *(v3 + 48);
    v19 = *(v3 + 80);
    *(v2 + 728) = *(v3 + 64);
    *(v2 + 744) = v19;
    *(v2 + 696) = v17;
    *(v2 + 712) = v18;
    v20 = *(v3 + 96);
    v21 = *(v3 + 112);
    v22 = *(v3 + 144);
    *(v2 + 792) = *(v3 + 128);
    *(v2 + 808) = v22;
    *(v2 + 760) = v20;
    *(v2 + 776) = v21;
    v23 = *(v3 + 160);
    v24 = *(v3 + 176);
    v25 = *(v3 + 192);
    *(v2 + 872) = *(v3 + 208);
    *(v2 + 840) = v24;
    *(v2 + 856) = v25;
    *(v2 + 824) = v23;
    sub_1D6A149DC(v2 + 664, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v14 = *(v2 + 904);
    v15 = *(v2 + 896);
    v16 = sub_1D6A056EC;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

uint64_t sub_1D6A056EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A0574C()
{
  v1 = *(v0 + 920);

  sub_1D6A07778(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6A057C4(uint64_t a1, uint64_t a2)
{
  *(v3 + 3688) = v2;
  *(v3 + 3680) = a2;
  *(v3 + 3696) = *(type metadata accessor for DebugFormatWorkspace() - 8);
  *(v3 + 3704) = swift_task_alloc();
  *(v3 + 3712) = swift_task_alloc();
  *(v3 + 3720) = type metadata accessor for DebugFormatEditorLayoutContext();
  *(v3 + 3728) = swift_task_alloc();
  v5 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  *(v3 + 3736) = v5;
  *(v3 + 3744) = *(v5 - 8);
  *(v3 + 3752) = swift_task_alloc();
  v6 = sub_1D7259F5C();
  *(v3 + 3760) = v6;
  *(v3 + 3768) = *(v6 - 8);
  *(v3 + 3776) = swift_task_alloc();
  *(v3 + 3784) = swift_task_alloc();
  v7 = sub_1D7259D1C();
  *(v3 + 3792) = v7;
  *(v3 + 3800) = *(v7 - 8);
  *(v3 + 3808) = swift_task_alloc();
  v8 = sub_1D7259CFC();
  *(v3 + 3816) = v8;
  *(v3 + 3824) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *(a1 + 176);
  *(v3 + 392) = *(a1 + 160);
  *(v3 + 408) = v10;
  *(v3 + 424) = *(a1 + 192);
  v11 = *(a1 + 112);
  *(v3 + 328) = *(a1 + 96);
  *(v3 + 344) = v11;
  v12 = *(a1 + 144);
  *(v3 + 360) = *(a1 + 128);
  *(v3 + 376) = v12;
  v13 = *(a1 + 48);
  *(v3 + 264) = *(a1 + 32);
  *(v3 + 280) = v13;
  v14 = *(a1 + 80);
  *(v3 + 296) = *(a1 + 64);
  *(v3 + 312) = v14;
  v15 = *(a1 + 16);
  *(v3 + 232) = *a1;
  *(v3 + 3832) = v9;
  *(v3 + 440) = *(a1 + 208);
  *(v3 + 248) = v15;
  sub_1D726290C();
  *(v3 + 3840) = sub_1D72628FC();
  v17 = sub_1D726285C();
  *(v3 + 3848) = v17;
  *(v3 + 3856) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1D6A05AC8, v17, v16);
}

uint64_t sub_1D6A05AC8()
{
  v185 = v0;
  v1 = (v0 + 232);
  v2 = (v0 + 2824);
  *(v0 + 3032) = *(v0 + 440);
  v3 = *(v0 + 248);
  *(v0 + 2824) = *(v0 + 232);
  *(v0 + 2840) = v3;
  v4 = *(v0 + 408);
  *(v0 + 2984) = *(v0 + 392);
  *(v0 + 3000) = v4;
  *(v0 + 3016) = *(v0 + 424);
  v5 = *(v0 + 344);
  *(v0 + 2920) = *(v0 + 328);
  *(v0 + 2936) = v5;
  v6 = *(v0 + 376);
  *(v0 + 2952) = *(v0 + 360);
  *(v0 + 2968) = v6;
  v7 = *(v0 + 280);
  *(v0 + 2856) = *(v0 + 264);
  *(v0 + 2872) = v7;
  v8 = *(v0 + 312);
  *(v0 + 2888) = *(v0 + 296);
  *(v0 + 2904) = v8;
  if (sub_1D5DEA380(v0 + 2824) == 1)
  {

    sub_1D6CA8338();
    if (qword_1EC87D618 != -1)
    {
LABEL_59:
      swift_once();
    }

    type metadata accessor for DebugFormatCanvasViewController();
    sub_1D6A15C70(&qword_1EC894530, 255, type metadata accessor for DebugFormatCanvasViewController);
    sub_1D725964C();
    if (*(v0 + 3945) == 1)
    {
      v9 = [objc_opt_self() defaultCenter];
      if (qword_1EDF1A9C8 != -1)
      {
        swift_once();
      }

      [v9 postNotificationName:qword_1EDFFC808 object:{0, v167}];
    }

    v10 = *(v0 + 3688);
    v11 = sub_1D69FE348();
    sub_1D6B5F0B4();

    v12 = *(v10 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
    [v12 setZoomScale:0 animated:1.0];
    v13 = *(v10 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView);
    *(v0 + 3568) = 0x3FF0000000000000;
    *(v0 + 3576) = 0u;
    *(v0 + 3592) = 0x3FF0000000000000;
    *(v0 + 3600) = 0u;
    [v13 setTransform_];
    sub_1D6A10108(v12);
    sub_1D6A13C28(v12, 1.0);
    [v12 adjustedContentInset];
    [v12 setContentOffset:0 animated:{0.0, -v14}];
    sub_1D6A103C8(v12);
    sub_1D6A153FC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D725BBAC();

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    if (*(v0 + 3019) - 33 > 1)
    {
      v32 = *(v0 + 408);
      *(v0 + 1040) = *(v0 + 392);
      *(v0 + 1056) = v32;
      *(v0 + 1072) = *(v0 + 424);
      *(v0 + 1088) = *(v0 + 440);
      v33 = *(v0 + 344);
      *(v0 + 976) = *(v0 + 328);
      *(v0 + 992) = v33;
      v34 = *(v0 + 376);
      *(v0 + 1008) = *(v0 + 360);
      *(v0 + 1024) = v34;
      v35 = *(v0 + 280);
      *(v0 + 912) = *(v0 + 264);
      *(v0 + 928) = v35;
      v36 = *(v0 + 312);
      *(v0 + 944) = *(v0 + 296);
      *(v0 + 960) = v36;
      v37 = *(v0 + 248);
      v171 = v0 + 232;
      *(v0 + 880) = *v1;
      *(v0 + 896) = v37;
      sub_1D5F2B0D8(v0 + 880, v0 + 1096);
    }

    else
    {
      v169 = *(v0 + 3020);
      v170 = *(v0 + 3019);
      v17 = *(v0 + 3808);
      v18 = *(v0 + 3800);
      v19 = *(v0 + 3792);
      v20 = *(*(v0 + 3688) + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController);
      v21 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
      swift_beginAccess();
      (*(v18 + 16))(v17, v20 + v21, v19);
      v22 = *(v0 + 408);
      *(v0 + 824) = *(v0 + 392);
      *(v0 + 840) = v22;
      *(v0 + 856) = *(v0 + 424);
      *(v0 + 872) = *(v0 + 440);
      v23 = *(v0 + 344);
      *(v0 + 760) = *(v0 + 328);
      *(v0 + 776) = v23;
      v24 = *(v0 + 376);
      *(v0 + 792) = *(v0 + 360);
      *(v0 + 808) = v24;
      v25 = *(v0 + 280);
      *(v0 + 696) = *(v0 + 264);
      *(v0 + 712) = v25;
      v26 = *(v0 + 312);
      *(v0 + 728) = *(v0 + 296);
      *(v0 + 744) = v26;
      v27 = *(v0 + 248);
      *(v0 + 664) = *v1;
      *(v0 + 680) = v27;
      sub_1D5F2B0D8(v0 + 664, v0 + 448);
      sub_1D6C86894();
      sub_1D7259D0C();
      v28 = *(v0 + 3808);
      v29 = *(v0 + 3800);
      v30 = *(v0 + 3792);
      v31 = *(v0 + 3784);
      v171 = v0 + 232;
      v38 = *(v0 + 3768);
      v39 = *(v0 + 3760);
      v40 = *(v38 + 8);
      *(v0 + 3864) = v40;
      *(v0 + 3872) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v168 = v40;
      v40(v31, v39);
      (*(v29 + 8))(v28, v30);
      sub_1D6C86894();
      v41 = *(v0 + 3032);
      v180 = *(v41 + 16);
      if (v180)
      {
        v167 = v20;
        v175 = *(v0 + 3688);
        v176 = *(v0 + 3720);
        v178 = *(v0 + 3752) + *(*(v0 + 3736) + 28);
        v179 = *(v0 + 3744);
        v174 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor;
        v177 = v41 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
        v172 = (*(v0 + 3768) + 16);
        v173 = (*(v0 + 3824) + 16);

        v42 = 0;
        while (1)
        {
          if (v42 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          v43 = *(v0 + 3752);
          sub_1D6A14B34(v177 + *(v179 + 72) * v42, v43, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v44 = *(v178 + 56);

          sub_1D6A14B9C(v43, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v45 = sub_1D7259CCC();
          if (*(v44 + 16) && (v46 = v45, v47 = sub_1D72649FC(), v48 = -1 << *(v44 + 32), v49 = v47 & ~v48, ((*(v44 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
          {
            v50 = ~v48;
            while (*(*(v44 + 48) + 8 * v49) != v46)
            {
              v49 = (v49 + 1) & v50;
              if (((*(v44 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            v51 = *(v0 + 3832);
            v52 = *(v0 + 3816);
            v53 = *(v0 + 3776);
            v54 = *(v0 + 3760);
            v55 = *(v0 + 3728);

            (*v173)(v55, v51, v52);
            (*v172)(v55 + *(v176 + 20), v53, v54);
            v56 = *(v175 + v174);
            v57 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
            v58 = *(v56 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
            swift_beginAccess();
            v59 = *(v58 + 104);
            if (*(v59 + 16))
            {
              v60 = *(v0 + 2840);
              v61 = *(v0 + 2848);

              v62 = sub_1D5B69D90(v60, v61);
              if (v63)
              {
                v153 = *(v0 + 3712);
                v154 = *(v0 + 3704);
                v155 = *(v0 + 3696);
                v156 = v62;

                sub_1D6A14B34(*(v59 + 56) + *(v155 + 72) * v156, v154, type metadata accessor for DebugFormatWorkspace);

                sub_1D6A14ACC(v154, v153, type metadata accessor for DebugFormatWorkspace);
                sub_1D6CA8338();
                if (qword_1EC87D618 != -1)
                {
                  swift_once();
                }

                type metadata accessor for DebugFormatCanvasViewController();
                sub_1D6A15C70(&qword_1EC894530, 255, type metadata accessor for DebugFormatCanvasViewController);
                sub_1D725964C();
                if (*(v0 + 3946) == 1)
                {
                  v157 = [objc_opt_self() defaultCenter];
                  if (qword_1EDF1A9C8 != -1)
                  {
                    swift_once();
                  }

                  [v157 postNotificationName:qword_1EDFFC808 object:{0, v167}];
                }

                v158 = *(v0 + 3688);
                v159 = *(v158 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
                [v159 setZoomScale:0 animated:{1.0, v167}];
                v160 = *(v158 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView);
                *(v0 + 3472) = 0x3FF0000000000000;
                *(v0 + 3480) = 0u;
                *(v0 + 3496) = 0x3FF0000000000000;
                *(v0 + 3504) = 0u;
                [v160 setTransform_];
                sub_1D6A10108(v159);
                sub_1D6A13C28(v159, 1.0);
                [v159 adjustedContentInset];
                [v159 setContentOffset:0 animated:{0.0, -v161}];
                sub_1D6A103C8(v159);
                sub_1D6A153FC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
                swift_allocObject();
                sub_1D725BBAC();

                *(v0 + 3880) = *(v56 + v57);

                v162 = swift_task_alloc();
                *(v0 + 3888) = v162;
                if (v169)
                {
                  v163 = 256;
                }

                else
                {
                  v163 = 0;
                }

                *v162 = v0;
                v162[1] = sub_1D6A06DEC;
                v164 = *(v0 + 3728);
                v165 = *(v0 + 3712);

                return sub_1D60CBE4C(v56, v165, v163 | v170, v164);
              }
            }

            sub_1D6A14B9C(*(v0 + 3728), type metadata accessor for DebugFormatEditorLayoutContext);
          }

          if (++v42 == v180)
          {

            break;
          }
        }
      }

      v64 = *(v0 + 3832);
      v65 = *(v0 + 3824);
      v66 = *(v0 + 3816);
      v168(*(v0 + 3776), *(v0 + 3760));
      (*(v65 + 8))(v64, v66);
    }

    v67 = (v0 + 1744);
    v68 = (v0 + 2392);
    v69 = *(v0 + 3688);
    v70 = *(v0 + 2904);
    *(v0 + 1808) = *(v0 + 2888);
    *(v0 + 1824) = v70;
    v71 = *(v0 + 2872);
    *(v0 + 1776) = *(v0 + 2856);
    *(v0 + 1792) = v71;
    v72 = *(v0 + 2968);
    *(v0 + 1872) = *(v0 + 2952);
    *(v0 + 1888) = v72;
    v73 = *(v0 + 2936);
    *(v0 + 1840) = *(v0 + 2920);
    *(v0 + 1856) = v73;
    *(v0 + 1952) = *(v0 + 3032);
    v74 = *(v0 + 3016);
    *(v0 + 1920) = *(v0 + 3000);
    *(v0 + 1936) = v74;
    *(v0 + 1904) = *(v0 + 2984);
    v75 = *(v0 + 2840);
    *(v0 + 1744) = *v2;
    *(v0 + 1760) = v75;
    v76 = v69 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastRenderKey;
    v77 = *(v69 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastRenderKey + 16);
    *(v0 + 1528) = *(v69 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastRenderKey);
    *(v0 + 1544) = v77;
    v78 = *(v76 + 80);
    v80 = *(v76 + 32);
    v79 = *(v76 + 48);
    *(v0 + 1592) = *(v76 + 64);
    *(v0 + 1608) = v78;
    *(v0 + 1560) = v80;
    *(v0 + 1576) = v79;
    v81 = *(v76 + 144);
    v83 = *(v76 + 96);
    v82 = *(v76 + 112);
    *(v0 + 1656) = *(v76 + 128);
    *(v0 + 1672) = v81;
    *(v0 + 1624) = v83;
    *(v0 + 1640) = v82;
    v85 = *(v76 + 176);
    v84 = *(v76 + 192);
    v86 = *(v76 + 160);
    *(v0 + 1736) = *(v76 + 208);
    *(v0 + 1704) = v85;
    *(v0 + 1720) = v84;
    *(v0 + 1688) = v86;
    v87 = *(v76 + 16);
    *(v0 + 1312) = *v76;
    *(v0 + 1328) = v87;
    v88 = *(v76 + 32);
    v89 = *(v76 + 48);
    v90 = *(v76 + 80);
    *(v0 + 1376) = *(v76 + 64);
    *(v0 + 1392) = v90;
    *(v0 + 1344) = v88;
    *(v0 + 1360) = v89;
    v91 = *(v76 + 96);
    v92 = *(v76 + 112);
    v93 = *(v76 + 144);
    *(v0 + 1440) = *(v76 + 128);
    *(v0 + 1456) = v93;
    *(v0 + 1408) = v91;
    *(v0 + 1424) = v92;
    v94 = *(v76 + 160);
    v95 = *(v76 + 176);
    v96 = *(v76 + 192);
    *(v0 + 1520) = *(v76 + 208);
    *(v0 + 1488) = v95;
    *(v0 + 1504) = v96;
    *(v0 + 1472) = v94;
    if (sub_1D5DEA380(v0 + 1312) == 1)
    {
      v97 = v171;
      sub_1D6A14A4C(v171, v0 + 1960, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    }

    else
    {
      v98 = *(v0 + 1488);
      v181[10] = *(v0 + 1472);
      v181[11] = v98;
      v181[12] = *(v0 + 1504);
      v182 = *(v0 + 1520);
      v99 = *(v0 + 1424);
      v181[6] = *(v0 + 1408);
      v181[7] = v99;
      v100 = *(v0 + 1456);
      v181[8] = *(v0 + 1440);
      v181[9] = v100;
      v101 = *(v0 + 1360);
      v181[2] = *(v0 + 1344);
      v181[3] = v101;
      v102 = *(v0 + 1392);
      v181[4] = *(v0 + 1376);
      v181[5] = v102;
      v103 = *(v0 + 1328);
      v181[0] = *(v0 + 1312);
      v181[1] = v103;
      v104 = *(v0 + 1920);
      v183[10] = *(v0 + 1904);
      v183[11] = v104;
      v183[12] = *(v0 + 1936);
      v184 = *(v0 + 1952);
      v105 = *(v0 + 1856);
      v183[6] = *(v0 + 1840);
      v183[7] = v105;
      v106 = *(v0 + 1888);
      v183[8] = *(v0 + 1872);
      v183[9] = v106;
      v107 = *(v0 + 1792);
      v183[2] = *(v0 + 1776);
      v183[3] = v107;
      v108 = *(v0 + 1824);
      v183[4] = *(v0 + 1808);
      v183[5] = v108;
      v109 = *(v0 + 1760);
      v183[0] = *v67;
      v183[1] = v109;
      v97 = v171;
      sub_1D6A14A4C(v171, v0 + 16, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      sub_1D6A14A4C(v0 + 1528, v0 + 3040, &qword_1EC890028, &type metadata for DebugFormatEditorWorkspaceRenderKey);
      if (sub_1D613F1C8(v181, v183))
      {
        sub_1D6A149DC(v0 + 1528, &qword_1EC890028, &type metadata for DebugFormatEditorWorkspaceRenderKey);
      }

      else
      {
        sub_1D6CA8338();
        if (qword_1EC87D618 != -1)
        {
          swift_once();
        }

        type metadata accessor for DebugFormatCanvasViewController();
        sub_1D6A15C70(&qword_1EC894530, 255, type metadata accessor for DebugFormatCanvasViewController);
        sub_1D725964C();
        if (*(v0 + 3944) == 1)
        {
          v110 = [objc_opt_self() defaultCenter];
          if (qword_1EDF1A9C8 != -1)
          {
            swift_once();
          }

          [v110 postNotificationName:qword_1EDFFC808 object:{0, v167}];
        }

        v111 = *(v0 + 3688);
        v112 = *(v111 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
        [v112 setZoomScale:0 animated:{1.0, v167}];
        v113 = *(v111 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView);
        *(v0 + 3520) = 0x3FF0000000000000;
        *(v0 + 3528) = 0u;
        *(v0 + 3544) = 0x3FF0000000000000;
        *(v0 + 3552) = 0u;
        [v113 setTransform_];
        sub_1D6A10108(v112);
        sub_1D6A13C28(v112, 1.0);
        [v112 adjustedContentInset];
        [v112 setContentOffset:0 animated:{0.0, -v114}];
        sub_1D6A103C8(v112);
        sub_1D6A153FC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        sub_1D725BBAC();

        sub_1D6A149DC(v0 + 1528, &qword_1EC890028, &type metadata for DebugFormatEditorWorkspaceRenderKey);
        v97 = v171;
      }
    }

    v115 = *(v0 + 1920);
    *(v0 + 2552) = *(v0 + 1904);
    *(v0 + 2568) = v115;
    *(v0 + 2584) = *(v0 + 1936);
    *(v0 + 2600) = *(v0 + 1952);
    v116 = *(v0 + 1856);
    *(v0 + 2488) = *(v0 + 1840);
    *(v0 + 2504) = v116;
    v117 = *(v0 + 1888);
    *(v0 + 2520) = *(v0 + 1872);
    *(v0 + 2536) = v117;
    v118 = *(v0 + 1792);
    *(v0 + 2424) = *(v0 + 1776);
    *(v0 + 2440) = v118;
    v119 = *(v0 + 1824);
    *(v0 + 2456) = *(v0 + 1808);
    *(v0 + 2472) = v119;
    v120 = *(v0 + 1760);
    *v68 = *v67;
    *(v0 + 2408) = v120;
    nullsub_1();
    v121 = *(v76 + 16);
    *(v0 + 2176) = *v76;
    *(v0 + 2192) = v121;
    v122 = *(v76 + 32);
    v123 = *(v76 + 48);
    v124 = *(v76 + 80);
    *(v0 + 2240) = *(v76 + 64);
    *(v0 + 2256) = v124;
    *(v0 + 2208) = v122;
    *(v0 + 2224) = v123;
    v125 = *(v76 + 96);
    v126 = *(v76 + 112);
    v127 = *(v76 + 144);
    *(v0 + 2304) = *(v76 + 128);
    *(v0 + 2320) = v127;
    *(v0 + 2272) = v125;
    *(v0 + 2288) = v126;
    v128 = *(v76 + 160);
    v129 = *(v76 + 176);
    v130 = *(v76 + 192);
    *(v0 + 2384) = *(v76 + 208);
    *(v0 + 2352) = v129;
    *(v0 + 2368) = v130;
    *(v0 + 2336) = v128;
    v131 = *(v0 + 2408);
    *v76 = *v68;
    *(v76 + 16) = v131;
    v132 = *(v0 + 2424);
    v133 = *(v0 + 2440);
    v134 = *(v0 + 2472);
    *(v76 + 64) = *(v0 + 2456);
    *(v76 + 80) = v134;
    *(v76 + 32) = v132;
    *(v76 + 48) = v133;
    v135 = *(v0 + 2488);
    v136 = *(v0 + 2504);
    v137 = *(v0 + 2536);
    *(v76 + 128) = *(v0 + 2520);
    *(v76 + 144) = v137;
    *(v76 + 96) = v135;
    *(v76 + 112) = v136;
    v138 = *(v0 + 2552);
    v139 = *(v0 + 2568);
    v140 = *(v0 + 2584);
    *(v76 + 208) = *(v0 + 2600);
    *(v76 + 176) = v139;
    *(v76 + 192) = v140;
    *(v76 + 160) = v138;
    sub_1D6A14A4C(v97, v0 + 2608, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    sub_1D6A149DC(v0 + 2176, &qword_1EC890028, &type metadata for DebugFormatEditorWorkspaceRenderKey);
    *&v183[0] = 0;
    *(&v183[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    *&v183[0] = 0xD000000000000016;
    *(&v183[0] + 1) = 0x80000001D73DF300;
    v141 = *(v0 + 2856);
    *(v0 + 3904) = v141;
    v142 = *(v0 + 2864);
    *(v0 + 3912) = v142;

    MEMORY[0x1DA6F9910](v141, v142);

    v144 = *(&v183[0] + 1);
    v143 = *&v183[0];
    if (qword_1EC87D498 != -1)
    {
      v166 = *&v183[0];
      swift_once();
      v143 = v166;
    }

    *(v0 + 3920) = qword_1EC9BA710;
    sub_1D5F5EBA0(2, 0, 0, v143, v144);

    sub_1D725B31C();

    *(v0 + 3664) = *(v0 + 3672);

    sub_1D725B32C();

    v145 = *(v0 + 3000);
    *(v0 + 3416) = *(v0 + 2984);
    *(v0 + 3432) = v145;
    *(v0 + 3448) = *(v0 + 3016);
    *(v0 + 3464) = *(v0 + 3032);
    v146 = *(v0 + 2936);
    *(v0 + 3352) = *(v0 + 2920);
    *(v0 + 3368) = v146;
    v147 = *(v0 + 2968);
    *(v0 + 3384) = *(v0 + 2952);
    *(v0 + 3400) = v147;
    v148 = *(v0 + 2872);
    *(v0 + 3288) = *(v0 + 2856);
    *(v0 + 3304) = v148;
    v149 = *(v0 + 2904);
    *(v0 + 3320) = *(v0 + 2888);
    *(v0 + 3336) = v149;
    v150 = *(v0 + 2840);
    *(v0 + 3256) = *v2;
    *(v0 + 3272) = v150;
    v151 = swift_task_alloc();
    *(v0 + 3928) = v151;
    *v151 = v0;
    v151[1] = sub_1D6A07230;
    v152 = *(v0 + 3680);

    return sub_1D6A11DCC(v0 + 3256, v152);
  }
}

uint64_t sub_1D6A06DEC()
{
  v2 = *v1;
  *(*v1 + 3896) = v0;

  v3 = *(v2 + 3856);
  v4 = *(v2 + 3848);
  if (v0)
  {
    v5 = sub_1D6A070B8;
  }

  else
  {
    v5 = sub_1D6A06F40;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6A06F40()
{
  v1 = v0[483];
  v2 = v0[479];
  v3 = v0[478];
  v4 = v0[477];
  v5 = v0[472];
  v6 = v0[470];
  v7 = v0[466];
  v8 = v0[464];

  sub_1D6A149DC((v0 + 29), qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D6A14B9C(v8, type metadata accessor for DebugFormatWorkspace);
  sub_1D6A14B9C(v7, type metadata accessor for DebugFormatEditorLayoutContext);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D6A070B8()
{
  v1 = v0[483];
  v2 = v0[479];
  v3 = v0[478];
  v4 = v0[477];
  v5 = v0[472];
  v6 = v0[470];
  v7 = v0[466];
  v8 = v0[464];

  sub_1D6A149DC((v0 + 29), qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D6A14B9C(v8, type metadata accessor for DebugFormatWorkspace);
  sub_1D6A14B9C(v7, type metadata accessor for DebugFormatEditorLayoutContext);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D6A07230()
{
  v2 = *v1;
  *(*v1 + 3936) = v0;

  v3 = *(v2 + 3856);
  v4 = *(v2 + 3848);
  if (v0)
  {
    v5 = sub_1D6A075C4;
  }

  else
  {
    v5 = sub_1D6A0734C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

id sub_1D6A0734C()
{
  v1 = *(*(v0 + 3688) + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
  [v1 zoomScale];
  if (v2 <= 1.0)
  {

    goto LABEL_6;
  }

  v3 = *(v0 + 3688);
  v4 = *(*&v3[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController] + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView);
  [v1 zoomScale];
  v6 = v5;
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  v9 = *(v0 + 3688);
  v10 = [result traitCollection];

  [v10 displayScale];
  v12 = v11;

  sub_1D6CA81F8(v6 * v12);
  v13 = *&v9[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView];
  [v1 zoomScale];
  v15 = v14;
  result = [v9 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = result;

  v17 = [v16 traitCollection];

  [v17 displayScale];
  v19 = v18;

  [v13 setContentScaleFactor_];
LABEL_6:
  sub_1D6A11BB0();
  sub_1D6A149DC(v0 + 232, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D6A149DC(v0 + 232, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D6A075C4()
{
  v1 = v0[492];
  v2 = v0[489];
  v3 = v0[488];

  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v3, v2);

  v4 = v1;
  sub_1D5F5EBA0(v1, 0, 0, 0xD00000000000001BLL, 0x80000001D73DF320);

  swift_willThrow();
  sub_1D6A149DC((v0 + 29), qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D6A149DC((v0 + 29), qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  v5 = v0[1];

  return v5();
}

void sub_1D6A07778(void *a1)
{
  v2 = v1;
  sub_1D6A14978(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v80 - v6);
  v113 = a1;
  v8 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v9 = v107;
    v10 = *v109;
    if (((v10 >> 59) & 0x1E | (v10 >> 2) & 1) == 0xC)
    {
      v82 = v108;
      v83 = v1;
      v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
      v12 = *(v11 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager);

      sub_1D725A76C();
      swift_beginAccess();
      v13 = *(v12 + 40);
      if (*(v13 + 16))
      {
        v14 = sub_1D5B69D90(v9, *(&v9 + 1));
        if (v15)
        {
          v16 = (*(v13 + 56) + (v14 << 7));
          v18 = v16[2];
          v17 = v16[3];
          v19 = v16[1];
          v92 = *v16;
          v93 = v19;
          v94 = v18;
          v95 = v17;
          v20 = v16[4];
          v21 = v16[5];
          v22 = v16[7];
          *v98 = v16[6];
          *&v98[16] = v22;
          v96 = v20;
          v97 = v21;
          memmove(&v99, v16, 0x80uLL);
          nullsub_1();
          sub_1D691C7D8(&v92, &v84);
        }

        else
        {
          sub_1D607F0A4(&v99);
        }

        *&v109[32] = v103;
        v110 = v104;
        v111 = v105;
        v112 = v106;
        v107 = v99;
        v108 = v100;
        *v109 = v101;
        *&v109[16] = v102;
      }

      else
      {
        sub_1D607F0A4(&v107);
      }

      swift_endAccess();
      sub_1D725A77C();

      v103 = *&v109[32];
      v104 = v110;
      v105 = v111;
      v106 = v112;
      v99 = v107;
      v100 = v108;
      v101 = *v109;
      v102 = *&v109[16];
      if (sub_1D5DEA380(&v99) == 1)
      {

        v23 = 1;
      }

      else
      {
        v80[1] = v11;
        v24 = *(&v101 + 1);
        v25 = v101;
        v84 = v9;
        v85 = v82;
        sub_1D5EC062C(v101, *(&v101 + 1), &v84, (v10 & 0xFFFFFFFFFFFFFFBLL), &v92);

        v26 = *(&v92 + 1);
        *&v82 = v93;
        *(&v82 + 1) = v92;
        v81 = *(&v93 + 1);
        v80[0] = v104;
        v92 = v99;
        *&v93 = v100;
        BYTE8(v93) = BYTE8(v100);
        v94 = __PAIR128__(v24, v25);
        *&v95 = *(&v82 + 1);
        *(&v95 + 1) = v26;
        *&v96 = v82;
        *(&v96 + 1) = v81;
        *&v97 = v104;
        *(&v97 + 1) = *(&v82 + 1);
        *v98 = v26;
        *&v98[8] = v82;
        *&v98[16] = v81;
        *&v98[24] = a1;
        nullsub_1();
        v88 = v96;
        v89 = v97;
        v90 = *v98;
        v91 = *&v98[16];
        v84 = v92;
        v85 = v93;
        v86 = v94;
        v87 = v95;
        swift_bridgeObjectRetain_n();
        v27 = a1;
        v28 = a1;
        swift_bridgeObjectRetain_n();
        v29 = a1;

        sub_1D725B32C();

        sub_1D6A153FC(0, &qword_1EC890030, &type metadata for FormatSourceMap, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D7273AE0;
        v31 = *(&v82 + 1);
        v32 = v82;
        *(v30 + 32) = *(&v82 + 1);
        *(v30 + 40) = v26;
        v80[0] = v10;
        v33 = v81;
        *(v30 + 48) = v32;
        *(v30 + 56) = v33;
        *&v84 = v30;

        sub_1D725B32C();

        *&v84 = v31;
        *(&v84 + 1) = v26;
        *&v85 = v32;
        *(&v85 + 1) = v33;
        *&v86 = a1;

        sub_1D725B32C();

        LOBYTE(v84) = 1;

        sub_1D725B32C();

        sub_1D6A149DC(&v107, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);

        v23 = 0;
      }

      v2 = v83;
    }

    else
    {
      sub_1D5EC0FE8(v107, *(&v107 + 1), v108, *(&v108 + 1), *v109);
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  *&v107 = a1;
  v34 = a1;
  v35 = type metadata accessor for FormatLayoutError();
  v36 = swift_dynamicCast();
  v37 = *(*(v35 - 8) + 56);
  if (!v36)
  {
    v37(v7, 1, 1, v35);
    sub_1D6A1530C(v7, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
    if (!v23)
    {
      return;
    }

LABEL_30:
    *&v107 = 0;
    *(&v107 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73DF370);
    *&v99 = a1;
    sub_1D7263F9C();
    v57 = *(&v107 + 1);
    v56 = v107;
    if (qword_1EC87D498 != -1)
    {
      v79 = v107;
      swift_once();
      v56 = v79;
    }

    sub_1D5F5EBA0(a1, 0, 0, v56, v57);

    LOBYTE(v107) = 1;
    *(&v107 + 1) = 0x726F727245;
    *&v108 = 0xE500000000000000;
    *(&v108 + 1) = 0xD000000000000022;
    *v109 = 0x80000001D73DF390;
    memset(&v109[8], 0, 32);
    v58 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
    v59 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
    swift_beginAccess();
    if (*(v58 + v59))
    {

      sub_1D6AD3108(&v107);
    }

    sub_1D725972C();

    if (v92)
    {
      sub_1D5F181F4(&v107);
      return;
    }

    LOBYTE(v92) = 1;

    sub_1D725973C();
    sub_1D5F181F4(&v107);
    goto LABEL_40;
  }

  v37(v7, 0, 1, v35);
  if (swift_getEnumCaseMultiPayload() != 65)
  {
    sub_1D6A14B9C(v7, type metadata accessor for FormatLayoutError);
    if (!v23)
    {
      return;
    }

    goto LABEL_30;
  }

  v39 = *v7;
  v38 = v7[1];
  v40 = *(v39 + 16);
  if (!v40)
  {

    if (!v23)
    {
      return;
    }

    goto LABEL_30;
  }

  v41 = (v39 + 32 * v40);
  v43 = *v41;
  v42 = v41[1];
  v44 = v41[2];
  v81 = v41[3];
  *&v82 = v44;
  v83 = v2;
  *(&v82 + 1) = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
  v45 = *(*(&v82 + 1) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager);

  sub_1D725A76C();
  swift_beginAccess();
  v46 = *(v45 + 40);
  if (*(v46 + 16) && (v47 = sub_1D5B69D90(v43, v42), (v48 & 1) != 0))
  {
    v49 = (*(v46 + 56) + (v47 << 7));
    v51 = v49[2];
    v50 = v49[3];
    v52 = v49[1];
    v92 = *v49;
    v93 = v52;
    v94 = v51;
    v95 = v50;
    v53 = v49[4];
    v54 = v49[5];
    v55 = v49[7];
    *v98 = v49[6];
    *&v98[16] = v55;
    v96 = v53;
    v97 = v54;
    memmove(&v99, v49, 0x80uLL);
    nullsub_1();
    sub_1D691C7D8(&v92, &v84);
    *&v109[32] = v103;
    v110 = v104;
    v111 = v105;
    v112 = v106;
    v107 = v99;
    v108 = v100;
    *v109 = v101;
    *&v109[16] = v102;
  }

  else
  {
    sub_1D607F0A4(&v107);
  }

  swift_endAccess();
  sub_1D725A77C();

  v103 = *&v109[32];
  v104 = v110;
  v105 = v111;
  v106 = v112;
  v99 = v107;
  v100 = v108;
  v101 = *v109;
  v102 = *&v109[16];
  if (sub_1D5DEA380(&v99) == 1)
  {

    v2 = v83;
    if (!v23)
    {
      return;
    }

    goto LABEL_30;
  }

  v60 = v101;
  *&v84 = v43;
  *(&v84 + 1) = v42;
  *&v85 = v82;
  *(&v85 + 1) = v81;
  sub_1D5EC062C(v101, *(&v101 + 1), &v84, v38, &v92);

  v61 = *(&v92 + 1);
  v83 = v92;
  v62 = v93;
  v92 = v99;
  *&v93 = v100;
  BYTE8(v93) = BYTE8(v100);
  v94 = v60;
  *&v95 = v83;
  *(&v95 + 1) = v61;
  v96 = v62;
  *&v97 = v104;
  *(&v97 + 1) = v83;
  *v98 = v61;
  *&v98[8] = v62;
  *&v98[24] = v38;
  nullsub_1();
  v88 = v96;
  v89 = v97;
  v90 = *v98;
  v91 = *&v98[16];
  v84 = v92;
  v85 = v93;
  v86 = v94;
  v87 = v95;
  swift_bridgeObjectRetain_n();
  v63 = v38;
  swift_bridgeObjectRetain_n();
  v64 = v38;
  v81 = v38;
  v65 = v38;

  sub_1D725B32C();

  sub_1D6BB6C4C(1uLL, v39);
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1D6A153FC(0, &qword_1EC890030, &type metadata for FormatSourceMap, MEMORY[0x1E69E6F90]);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1D7273AE0;
  *(v72 + 32) = v83;
  *(v72 + 40) = v61;
  *&v82 = v62;
  *(v72 + 48) = v62;
  v73 = (v71 >> 1) - v69;
  if (__OFSUB__(v71 >> 1, v69))
  {
    __break(1u);
    goto LABEL_43;
  }

  v74 = __OFADD__(v73, 1);
  v75 = v73 + 1;
  if (v74)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v76 = v72;
  *&v84 = sub_1D698F85C(0, v75 & ~(v75 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v77 = swift_unknownObjectRetain();
  sub_1D69884DC(v77, v67, v69, v71);
  sub_1D6985EB0(v76);
  swift_unknownObjectRelease();

  sub_1D725B32C();

  *&v84 = v83;
  *(&v84 + 1) = v61;
  v78 = v81;
  *&v85 = v82;
  *(&v85 + 1) = *(&v62 + 1);
  *&v86 = v81;

  sub_1D725B32C();

  LOBYTE(v84) = 1;

  sub_1D725B32C();

  sub_1D6A149DC(&v107, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);

LABEL_40:
}

id sub_1D6A08374()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28[-v5];
  v7 = sub_1D7259F5C();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewLayoutMarginsDidChange, v10);
  result = [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController] view];
  if (result)
  {
    v14 = result;
    sub_1D69FDE78();
    sub_1D7259E8C();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    [v14 setLayoutMargins_];

    sub_1D725B31C();

    if ((v28[15] & 1) == 0)
    {
      v23 = sub_1D726294C();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      sub_1D726290C();
      v24 = v1;
      v25 = sub_1D72628FC();
      v26 = swift_allocObject();
      v27 = MEMORY[0x1E69E85E0];
      v26[2] = v25;
      v26[3] = v27;
      v26[4] = v24;
      sub_1D6BD1334(0, 0, v6, &unk_1D73124F8, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6A0863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[110] = a4;
  sub_1D726290C();
  v4[111] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v4[112] = v6;
  v4[113] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D6A086D8, v6, v5);
}

uint64_t sub_1D6A086D8()
{

  sub_1D725B31C();

  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  v7 = swift_task_alloc();
  *(v0 + 912) = v7;
  *v7 = v0;
  v7[1] = sub_1D6A087EC;

  return sub_1D6A057C4(v0 + 232, 0);
}

uint64_t sub_1D6A087EC()
{
  v2 = *v1;
  v3 = *v1 + 232;
  *(*v1 + 920) = v0;

  v4 = *(v3 + 16);
  if (v0)
  {
    *(v2 + 448) = *v3;
    *(v2 + 464) = v4;
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    *(v2 + 512) = *(v3 + 64);
    *(v2 + 528) = v7;
    *(v2 + 480) = v5;
    *(v2 + 496) = v6;
    v8 = *(v3 + 96);
    v9 = *(v3 + 112);
    v10 = *(v3 + 144);
    *(v2 + 576) = *(v3 + 128);
    *(v2 + 592) = v10;
    *(v2 + 544) = v8;
    *(v2 + 560) = v9;
    v11 = *(v3 + 160);
    v12 = *(v3 + 176);
    v13 = *(v3 + 192);
    *(v2 + 656) = *(v3 + 208);
    *(v2 + 624) = v12;
    *(v2 + 640) = v13;
    *(v2 + 608) = v11;
    sub_1D6A149DC(v2 + 448, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v14 = *(v2 + 904);
    v15 = *(v2 + 896);
    v16 = sub_1D6A15CCC;
  }

  else
  {
    *(v2 + 664) = *v3;
    *(v2 + 680) = v4;
    v17 = *(v3 + 32);
    v18 = *(v3 + 48);
    v19 = *(v3 + 80);
    *(v2 + 728) = *(v3 + 64);
    *(v2 + 744) = v19;
    *(v2 + 696) = v17;
    *(v2 + 712) = v18;
    v20 = *(v3 + 96);
    v21 = *(v3 + 112);
    v22 = *(v3 + 144);
    *(v2 + 792) = *(v3 + 128);
    *(v2 + 808) = v22;
    *(v2 + 760) = v20;
    *(v2 + 776) = v21;
    v23 = *(v3 + 160);
    v24 = *(v3 + 176);
    v25 = *(v3 + 192);
    *(v2 + 872) = *(v3 + 208);
    *(v2 + 840) = v24;
    *(v2 + 856) = v25;
    *(v2 + 824) = v23;
    sub_1D6A149DC(v2 + 664, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v14 = *(v2 + 904);
    v15 = *(v2 + 896);
    v16 = sub_1D6A15CEC;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

id sub_1D6A08A0C()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewSafeAreaInsetsDidChange);
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastSafeAreaInsets];
  if (v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastSafeAreaInsets + 32])
  {
    goto LABEL_7;
  }

  v2 = v1[1];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [result safeAreaInsets];
  v6 = v5;

  if (v2 == v6)
  {
LABEL_7:
    result = [v0 view];
    if (result)
    {
      v9 = result;
      [result safeAreaInsets];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      *v1 = v11;
      *(v1 + 1) = v13;
      *(v1 + 2) = v15;
      *(v1 + 3) = v17;
      *(v1 + 32) = 0;
      return sub_1D6A04E74();
    }

    __break(1u);
    goto LABEL_10;
  }

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  [result setNeedsLayout];

  result = [v0 view];
  if (result)
  {
    v8 = result;
    [result layoutIfNeeded];

    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1D6A08E34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v249 = MEMORY[0x1E69E7CC0];
    sub_1D6A153FC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D728AF30;
    sub_1D5B5A498(0, &qword_1EDF04350);
    v3 = sub_1D726203C();
    v207 = v1;
    v4 = objc_opt_self();
    v5 = [v4 systemImageNamed_];

    v6 = swift_allocObject();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v183 = v6;
    *(v2 + 32) = sub_1D726375C();
    v8 = sub_1D726203C();
    v9 = [v4 systemImageNamed_];

    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v184 = v10;
    *(v2 + 40) = sub_1D726375C();
    v12 = sub_1D726203C();
    v206 = v4;
    v13 = [v4 systemImageNamed_];

    sub_1D725972C();

    sub_1D5B5A498(0, &qword_1EC885090);
    v14 = swift_allocObject();
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v185 = v14;
    v181 = v250;
    *(v2 + 48) = sub_1D726375C();
    v177 = v2;
    v16 = sub_1D726340C();
    MEMORY[0x1DA6F9CE0](v16, v17, v18, v19, v20);
    if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    type metadata accessor for DebugFormatDockViewController();
    v205 = v207;
    v21 = sub_1D7262FEC();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D6E914D8();
    }

    else
    {
      v23 = 0;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D72816D0;
    v25 = sub_1D726203C();
    v26 = [v4 systemImageNamed_];

    sub_1D725B31C();

    v27 = swift_allocObject();
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v180 = (v250 & 1) == 0;
    *(v24 + 32) = sub_1D726375C();
    v29 = sub_1D726203C();
    v30 = [v4 systemImageNamed_];

    v202 = v23;
    if (v23)
    {
      v31 = [v23 children];
      sub_1D5B5A498(0, &qword_1EC883280);
      v32 = sub_1D726267C();

      sub_1D6B988E0(v32);
    }

    *(v24 + 40) = sub_1D726340C();
    v178 = v24;
    v33 = sub_1D726340C();
    MEMORY[0x1DA6F9CE0](v33);
    if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34 && (v35 = v34, , v35, , sub_1D725B31C(), , , v231 = v260, v232 = v261, v233 = v262, v234 = v263, v227 = v256, v228 = v257, v229 = v258, v230 = v259, v223 = v252, v224 = v253, v225 = v254, v226 = v255, v221 = v250, v222 = v251, v245 = v260, v246 = v261, v247 = v262, v248 = v263, v241 = v256, v242 = v257, v243 = v258, v244 = v259, v237 = v252, v238 = v253, v239 = v254, v240 = v255, v235 = v250, v236 = v251, sub_1D5DEA380(&v235) != 1))
    {
      v260 = v245;
      v261 = v246;
      v262 = v247;
      v263 = v248;
      v256 = v241;
      v257 = v242;
      v258 = v243;
      v259 = v244;
      v252 = v237;
      v253 = v238;
      v254 = v239;
      v255 = v240;
      v250 = v235;
      v251 = v236;
      v203 = swift_allocObject();
      *(v203 + 16) = xmmword_1D72816D0;
      v48 = sub_1D726203C();
      [v4 systemImageNamed_];

      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1D72816D0;
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D72816D0;
      v201 = v247;
      v51 = swift_allocObject();
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v53 = swift_allocObject();
      *(v53 + 16) = v51;
      *(v53 + 184) = v260;
      *(v53 + 200) = v261;
      *(v53 + 216) = v262;
      *(v53 + 232) = v263;
      *(v53 + 120) = v256;
      *(v53 + 136) = v257;
      *(v53 + 152) = v258;
      *(v53 + 168) = v259;
      *(v53 + 56) = v252;
      *(v53 + 72) = v253;
      *(v53 + 88) = v254;
      *(v53 + 104) = v255;
      *(v53 + 24) = v250;
      *(v53 + 40) = v251;
      v215[10] = v231;
      v215[11] = v232;
      v215[12] = v233;
      v216 = v234;
      v215[6] = v227;
      v215[7] = v228;
      v215[8] = v229;
      v215[9] = v230;
      v215[2] = v223;
      v215[3] = v224;
      v215[4] = v225;
      v215[5] = v226;
      v215[0] = v221;
      v215[1] = v222;
      sub_1D5F2B0D8(v215, v213);
      *(v50 + 32) = sub_1D726375C();
      v54 = swift_allocObject();
      swift_beginAccess();
      v55 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 184) = v260;
      *(v56 + 200) = v261;
      *(v56 + 216) = v262;
      *(v56 + 232) = v263;
      *(v56 + 120) = v256;
      *(v56 + 136) = v257;
      *(v56 + 152) = v258;
      *(v56 + 168) = v259;
      *(v56 + 56) = v252;
      *(v56 + 72) = v253;
      *(v56 + 88) = v254;
      *(v56 + 104) = v255;
      *(v56 + 24) = v250;
      *(v56 + 40) = v251;
      v213[10] = v231;
      v213[11] = v232;
      v213[12] = v233;
      v214 = v234;
      v213[6] = v227;
      v213[7] = v228;
      v213[8] = v229;
      v213[9] = v230;
      v213[2] = v223;
      v213[3] = v224;
      v213[4] = v225;
      v213[5] = v226;
      v213[0] = v221;
      v213[1] = v222;
      sub_1D5F2B0D8(v213, v211);
      *(v50 + 40) = sub_1D726375C();
      *(v49 + 32) = sub_1D726340C();
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D72816D0;
      v58 = swift_allocObject();
      swift_beginAccess();
      v59 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v60 = swift_allocObject();
      *(v60 + 16) = v58;
      *(v60 + 184) = v260;
      *(v60 + 200) = v261;
      *(v60 + 216) = v262;
      *(v60 + 232) = v263;
      *(v60 + 120) = v256;
      *(v60 + 136) = v257;
      *(v60 + 152) = v258;
      *(v60 + 168) = v259;
      *(v60 + 56) = v252;
      *(v60 + 72) = v253;
      *(v60 + 88) = v254;
      *(v60 + 104) = v255;
      *(v60 + 24) = v250;
      *(v60 + 40) = v251;
      v211[10] = v231;
      v211[11] = v232;
      v211[12] = v233;
      v212 = v234;
      v211[6] = v227;
      v211[7] = v228;
      v211[8] = v229;
      v211[9] = v230;
      v211[2] = v223;
      v211[3] = v224;
      v211[4] = v225;
      v211[5] = v226;
      v211[0] = v221;
      v211[1] = v222;
      sub_1D5F2B0D8(v211, v209);
      *(v57 + 32) = sub_1D726375C();
      v61 = swift_allocObject();
      swift_beginAccess();
      v62 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v63 = swift_allocObject();
      *(v63 + 16) = v61;
      *(v63 + 184) = v260;
      *(v63 + 200) = v261;
      *(v63 + 216) = v262;
      *(v63 + 232) = v263;
      *(v63 + 120) = v256;
      *(v63 + 136) = v257;
      *(v63 + 152) = v258;
      *(v63 + 168) = v259;
      *(v63 + 56) = v252;
      *(v63 + 72) = v253;
      *(v63 + 88) = v254;
      *(v63 + 104) = v255;
      *(v63 + 24) = v250;
      *(v63 + 40) = v251;
      v209[10] = v231;
      v209[11] = v232;
      v209[12] = v233;
      v210 = v234;
      v209[6] = v227;
      v209[7] = v228;
      v209[8] = v229;
      v209[9] = v230;
      v209[2] = v223;
      v209[3] = v224;
      v209[4] = v225;
      v209[5] = v226;
      v209[0] = v221;
      v209[1] = v222;
      sub_1D5F2B0D8(v209, v208);
      v187 = v63;
      *(v57 + 40) = sub_1D726375C();
      *(v49 + 40) = sub_1D726340C();
      *(v203 + 32) = sub_1D726340C();
      v64 = sub_1D726203C();
      v65 = [v206 systemImageNamed_];

      v66 = swift_allocObject();
      swift_beginAccess();
      v67 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v182 = sub_1D6A15898;
      v186 = v66;
      *(v203 + 40) = sub_1D726375C();
      v179 = v203;
      v68 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v68, v69, v70, v71, v72);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      sub_1D6A149DC(&v221, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    }

    else
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D72816D0;
      v37 = sub_1D726203C();
      v38 = [v4 systemImageNamed_];

      *(v36 + 32) = sub_1D726375C();
      v39 = sub_1D726203C();
      v40 = [v4 systemImageNamed_];

      v41 = swift_allocObject();
      swift_beginAccess();
      v42 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v182 = sub_1D6A15CE8;
      v186 = v41;
      *(v36 + 40) = sub_1D726375C();
      v179 = v36;
      v43 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v43, v44, v45, v46, v47);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
    }

    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1D7312360;
    v74 = sub_1D726203C();
    v75 = [v206 systemImageNamed_];

    sub_1D725B31C();

    v76 = v235;
    v77 = swift_allocObject();
    swift_beginAccess();
    v78 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v188 = v77;
    *(v73 + 32) = sub_1D726375C();
    v79 = sub_1D726203C();
    [v206 systemImageNamed_];

    sub_1D725B31C();

    v80 = v221 == 1;

    sub_1D725972C();

    v81 = v221;
    v82 = swift_allocObject();
    swift_beginAccess();
    v83 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v189 = v82;
    v204 = v73;
    *(v73 + 40) = sub_1D726375C();
    v84 = sub_1D726203C();
    v85 = [v206 systemImageNamed_];

    v86 = [v205 view];
    if (v86)
    {
      v87 = [v86 traitCollection];

      v88 = [v87 horizontalSizeClass];
      v89 = v88 == 1;

      sub_1D725972C();

      v90 = LOBYTE(v215[0]);
      v91 = swift_allocObject();
      swift_beginAccess();
      v92 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v190 = v91;
      *(v73 + 48) = sub_1D726375C();
      v93 = sub_1D726203C();
      v94 = [v206 systemImageNamed_];

      sub_1D725972C();

      v95 = LOBYTE(v213[0]);
      v96 = swift_allocObject();
      swift_beginAccess();
      v97 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v191 = v96;
      *(v73 + 56) = sub_1D726375C();
      v98 = sub_1D726203C();
      v99 = [v206 systemImageNamed_];

      sub_1D725972C();

      v100 = LOBYTE(v211[0]);
      v101 = swift_allocObject();
      swift_beginAccess();
      v102 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v192 = v101;
      *(v73 + 64) = sub_1D726375C();
      v103 = sub_1D726203C();
      v104 = [v206 systemImageNamed_];

      sub_1D725972C();

      v105 = LOBYTE(v209[0]);
      v106 = swift_allocObject();
      swift_beginAccess();
      v107 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v193 = v106;
      *(v73 + 72) = sub_1D726375C();
      v108 = sub_1D726203C();
      v109 = [v206 systemImageNamed_];

      sub_1D725972C();

      v110 = v208[0];
      v111 = swift_allocObject();
      swift_beginAccess();
      v112 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v194 = v111;
      *(v73 + 80) = sub_1D726375C();
      v113 = sub_1D726203C();
      v114 = [v206 systemImageNamed_];

      sub_1D725972C();

      if (v220)
      {
        v115 = sub_1D72646CC();

        v116 = ~v115 & 1;
      }

      else
      {

        v116 = 0;
      }

      v117 = swift_allocObject();
      swift_beginAccess();
      v118 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v195 = v117;
      *(v73 + 88) = sub_1D726375C();
      v119 = sub_1D726203C();
      v120 = [v206 systemImageNamed_];

      sub_1D725972C();

      v121 = v219;
      v122 = swift_allocObject();
      swift_beginAccess();
      v123 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v196 = v122;
      *(v73 + 96) = sub_1D726375C();
      v124 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v124, v125, v126, v127, v128);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_1D72816D0;
      v130 = sub_1D726203C();
      v131 = [v206 ts:v130 internalSystemImageNamed:{v204, 0, v121, sub_1D6A156C4, v196}];

      sub_1D725972C();

      v132 = v218 == 1;
      v133 = swift_allocObject();
      swift_beginAccess();
      v134 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v197 = v133;
      *(v129 + 32) = sub_1D726375C();
      v135 = sub_1D726203C();
      v136 = [v206 ts:v135 internalSystemImageNamed:{0, 0, v132, sub_1D6A15710, v197}];

      sub_1D725972C();

      v137 = v217 == 2;
      v138 = swift_allocObject();
      swift_beginAccess();
      v139 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v198 = v138;
      *(v129 + 40) = sub_1D726375C();
      v140 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v140, v141, v142, v143, v144);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v145 = sub_1D726203C();
      [v206 systemImageNamed_];

      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_1D7312370;
      swift_allocObject();
      swift_beginAccess();
      v147 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *(v146 + 32) = sub_1D726375C();
      swift_allocObject();
      swift_beginAccess();
      v148 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *(v146 + 40) = sub_1D726375C();
      *(v146 + 48) = sub_1D726375C();
      swift_allocObject();
      swift_beginAccess();
      v149 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *(v146 + 56) = sub_1D726375C();
      *(v146 + 64) = sub_1D726375C();
      swift_allocObject();
      swift_beginAccess();
      v150 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *(v146 + 72) = sub_1D726375C();
      *(v146 + 80) = sub_1D726375C();
      v151 = swift_allocObject();
      swift_beginAccess();
      v152 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v199 = v151;
      *(v146 + 88) = sub_1D726375C();
      v153 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v153, v154, v155, v156, v157);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_1D72816C0;
      v159 = sub_1D726203C();
      v160 = [v206 systemImageNamed_];

      v161 = swift_allocObject();
      swift_beginAccess();
      v162 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v200 = v161;
      *(v158 + 32) = sub_1D726375C();
      v163 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v163, v164, v165, v166, v167);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v168 = swift_allocObject();
      *(v168 + 16) = xmmword_1D72816C0;
      v169 = sub_1D726203C();
      v170 = [v206 systemImageNamed_];

      swift_allocObject();
      swift_beginAccess();
      v171 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *(v168 + 32) = sub_1D726375C();
      v172 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v172, v173, v174, v175, v176);
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      sub_1D72633FC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D5B5A498(0, &qword_1EC885090);
    sub_1D72633FC();
  }
}

void sub_1D6A0BA08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong, v1);
    v3 = v2;
    sub_1D725BDCC();
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v4 = sub_1D726308C();
    type metadata accessor for DebugFormatEditorViewController();
    sub_1D725BAAC();
  }
}

void sub_1D6A0BB34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
    v2 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController);
    v3 = Strong;
    v4 = objc_allocWithZone(type metadata accessor for DebugFormatLayoutDimensionViewController());

    v5 = v2;
    v6 = sub_1D6DF9274(v1, v5);

    v7 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
    [v7 setModalPresentationStyle_];
    [v3 presentViewController:v7 animated:1 completion:0];
  }
}

void sub_1D6A0BC30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for DebugFormatDockViewController();
    v2 = sub_1D7262FEC();

    if (v2)
    {
      sub_1D6E91984();
    }
  }
}

uint64_t sub_1D6A0BCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(a3 + 160);
    v11 = *(a3 + 128);
    v56 = *(a3 + 144);
    v57 = v10;
    v12 = *(a3 + 160);
    v58[0] = *(a3 + 176);
    v13 = *(a3 + 96);
    v14 = *(a3 + 64);
    v52 = *(a3 + 80);
    v53 = v13;
    v15 = *(a3 + 96);
    v16 = *(a3 + 128);
    v54 = *(a3 + 112);
    v55 = v16;
    v17 = *(a3 + 32);
    v49[0] = *(a3 + 16);
    v49[1] = v17;
    v18 = *(a3 + 64);
    v20 = *(a3 + 16);
    v19 = *(a3 + 32);
    v50 = *(a3 + 48);
    v51 = v18;
    v41 = v56;
    v42 = v12;
    v43 = *(a3 + 176);
    v37 = v52;
    v38 = v15;
    v39 = v54;
    v40 = v11;
    v33 = v20;
    v34 = v19;
    *(v58 + 15) = *(a3 + 191);
    v44 = *(a3 + 192);
    v35 = v50;
    v36 = v14;
    v21 = (BYTE1(v58[1]) & 1) == 0;
    v22 = BYTE2(v58[1]);
    v23 = sub_1D726294C();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    sub_1D726290C();
    sub_1D5ECF1C0(v49, &v59);
    v24 = v9;
    v25 = sub_1D72628FC();
    v67 = v41;
    v68 = v42;
    *v69 = v43;
    v69[16] = v44;
    v63 = v37;
    v64 = v38;
    v65 = v39;
    v66 = v40;
    v59 = v33;
    v60 = v34;
    v61 = v35;
    v62 = v36;
    v69[17] = v21;
    v69[18] = v22;
    v26 = swift_allocObject();
    v27 = v68;
    *(v26 + 168) = v67;
    *(v26 + 184) = v27;
    *(v26 + 200) = *v69;
    v28 = v64;
    *(v26 + 104) = v63;
    *(v26 + 120) = v28;
    v29 = v66;
    *(v26 + 136) = v65;
    *(v26 + 152) = v29;
    v30 = v60;
    *(v26 + 40) = v59;
    *(v26 + 56) = v30;
    v31 = v62;
    *(v26 + 72) = v61;
    v32 = MEMORY[0x1E69E85E0];
    *(v26 + 16) = v25;
    *(v26 + 24) = v32;
    *(v26 + 32) = v24;
    *(v26 + 215) = *&v69[15];
    *(v26 + 88) = v31;
    sub_1D5ECF1C0(&v59, v45);
    sub_1D6BD1DC0(0, 0, v7, &unk_1D7312548, v26);

    v45[8] = v41;
    v45[9] = v42;
    v45[10] = v43;
    v46 = v44;
    v45[4] = v37;
    v45[5] = v38;
    v45[6] = v39;
    v45[7] = v40;
    v45[0] = v33;
    v45[1] = v34;
    v45[2] = v35;
    v45[3] = v36;
    v47 = v21;
    v48 = v22;
    return sub_1D5ECF21C(v45);
  }

  return result;
}

uint64_t sub_1D6A0BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[96] = a5;
  v5[95] = a4;
  v5[94] = a1;
  v5[97] = type metadata accessor for DebugFormatWorkspaceKind();
  v5[98] = swift_task_alloc();
  sub_1D726290C();
  v5[99] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[100] = v7;
  v5[101] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D6A0C080, v7, v6);
}

uint64_t sub_1D6A0C080()
{
  v1 = *(v0 + 768);
  v2 = *(*(v0 + 760) + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
  *(v0 + 816) = *(v2 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  swift_storeEnumTagMultiPayload();
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v6;
  *(v0 + 96) = v7;
  v9 = *(v1 + 128);
  v10 = *(v1 + 144);
  v11 = *(v1 + 160);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v10;
  *(v0 + 176) = v11;
  *(v0 + 144) = v9;

  sub_1D5ECF1C0(v1, v0 + 200);
  v12 = swift_task_alloc();
  *(v0 + 824) = v12;
  *v12 = v0;
  v12[1] = sub_1D6A0C1AC;
  v13 = *(v0 + 784);

  return sub_1D60B4B58(v13, v0 + 16, v2);
}

uint64_t sub_1D6A0C1AC()
{
  v2 = *v1;
  *(v2 + 832) = v0;

  v3 = *(v2 + 784);
  if (v0)
  {

    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 64);
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v6;
    *(v2 + 384) = v4;
    *(v2 + 400) = v5;
    v7 = *(v2 + 80);
    v8 = *(v2 + 96);
    v9 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v9;
    *(v2 + 448) = v7;
    *(v2 + 464) = v8;
    v10 = *(v2 + 144);
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v11;
    *(v2 + 544) = v12;
    *(v2 + 512) = v10;
    sub_1D5ECF21C(v2 + 384);
  }

  else
  {

    v15 = *(v2 + 16);
    v16 = *(v2 + 32);
    v17 = *(v2 + 64);
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v17;
    *(v2 + 568) = v15;
    *(v2 + 584) = v16;
    v18 = *(v2 + 80);
    v19 = *(v2 + 96);
    v20 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v20;
    *(v2 + 632) = v18;
    *(v2 + 648) = v19;
    v21 = *(v2 + 144);
    v22 = *(v2 + 160);
    v23 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v22;
    *(v2 + 728) = v23;
    *(v2 + 696) = v21;
    sub_1D5ECF21C(v2 + 568);
  }

  sub_1D6A14B9C(v3, type metadata accessor for DebugFormatWorkspaceKind);
  v13 = *(v2 + 808);
  v14 = *(v2 + 800);

  return MEMORY[0x1EEE6DFA0](sub_1D6A0C3D8, v14, v13);
}

uint64_t sub_1D6A0C3D8()
{

  **(v0 + 752) = *(v0 + 832) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A0C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(a3 + 160);
    v11 = *(a3 + 128);
    v54 = *(a3 + 144);
    v55 = v10;
    v12 = *(a3 + 160);
    v56[0] = *(a3 + 176);
    v13 = *(a3 + 96);
    v14 = *(a3 + 64);
    v50 = *(a3 + 80);
    v51 = v13;
    v15 = *(a3 + 96);
    v16 = *(a3 + 128);
    v52 = *(a3 + 112);
    v53 = v16;
    v17 = *(a3 + 32);
    v47[0] = *(a3 + 16);
    v47[1] = v17;
    v18 = *(a3 + 64);
    v20 = *(a3 + 16);
    v19 = *(a3 + 32);
    v48 = *(a3 + 48);
    v49 = v18;
    v40 = v54;
    v41 = v12;
    v42 = *(a3 + 176);
    v36 = v50;
    v37 = v15;
    v38 = v52;
    v39 = v11;
    v32 = v20;
    v33 = v19;
    *(v56 + 15) = *(a3 + 191);
    v43 = *(a3 + 192);
    v21 = (BYTE2(v56[1]) & 1) == 0;
    v34 = v48;
    v35 = v14;
    v22 = sub_1D726294C();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    sub_1D726290C();
    sub_1D5ECF1C0(v47, &v57);
    v23 = v9;
    v24 = sub_1D72628FC();
    v65 = v40;
    v66 = v41;
    *v67 = v42;
    *&v67[16] = v43;
    v61 = v36;
    v62 = v37;
    v63 = v38;
    v64 = v39;
    v57 = v32;
    v58 = v33;
    v59 = v34;
    v60 = v35;
    v67[18] = v21;
    v25 = swift_allocObject();
    v26 = v66;
    *(v25 + 168) = v65;
    *(v25 + 184) = v26;
    *(v25 + 200) = *v67;
    v27 = v62;
    *(v25 + 104) = v61;
    *(v25 + 120) = v27;
    v28 = v64;
    *(v25 + 136) = v63;
    *(v25 + 152) = v28;
    v29 = v58;
    *(v25 + 40) = v57;
    *(v25 + 56) = v29;
    v30 = v60;
    *(v25 + 72) = v59;
    v31 = MEMORY[0x1E69E85E0];
    *(v25 + 16) = v24;
    *(v25 + 24) = v31;
    *(v25 + 32) = v23;
    *(v25 + 215) = *&v67[15];
    *(v25 + 88) = v30;
    sub_1D5ECF1C0(&v57, v44);
    sub_1D6BD1DC0(0, 0, v7, &unk_1D7312538, v25);

    v44[8] = v40;
    v44[9] = v41;
    v44[10] = v42;
    v45 = v43;
    v44[4] = v36;
    v44[5] = v37;
    v44[6] = v38;
    v44[7] = v39;
    v44[0] = v32;
    v44[1] = v33;
    v44[2] = v34;
    v44[3] = v35;
    v46 = v21;
    return sub_1D5ECF21C(v44);
  }

  return result;
}

uint64_t sub_1D6A0C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[96] = a5;
  v5[95] = a4;
  v5[94] = a1;
  v5[97] = type metadata accessor for DebugFormatWorkspaceKind();
  v5[98] = swift_task_alloc();
  sub_1D726290C();
  v5[99] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[100] = v7;
  v5[101] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D6A0C824, v7, v6);
}

uint64_t sub_1D6A0C824()
{
  v1 = *(v0 + 768);
  v2 = *(*(v0 + 760) + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
  *(v0 + 816) = *(v2 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  swift_storeEnumTagMultiPayload();
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v6;
  *(v0 + 96) = v7;
  v9 = *(v1 + 128);
  v10 = *(v1 + 144);
  v11 = *(v1 + 160);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v10;
  *(v0 + 176) = v11;
  *(v0 + 144) = v9;

  sub_1D5ECF1C0(v1, v0 + 200);
  v12 = swift_task_alloc();
  *(v0 + 824) = v12;
  *v12 = v0;
  v12[1] = sub_1D6A0C950;
  v13 = *(v0 + 784);

  return sub_1D60B4B58(v13, v0 + 16, v2);
}

uint64_t sub_1D6A0C950()
{
  v2 = *v1;
  *(v2 + 832) = v0;

  v3 = *(v2 + 784);
  if (v0)
  {

    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 64);
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v6;
    *(v2 + 384) = v4;
    *(v2 + 400) = v5;
    v7 = *(v2 + 80);
    v8 = *(v2 + 96);
    v9 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v9;
    *(v2 + 448) = v7;
    *(v2 + 464) = v8;
    v10 = *(v2 + 144);
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v11;
    *(v2 + 544) = v12;
    *(v2 + 512) = v10;
    sub_1D5ECF21C(v2 + 384);
  }

  else
  {

    v15 = *(v2 + 16);
    v16 = *(v2 + 32);
    v17 = *(v2 + 64);
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v17;
    *(v2 + 568) = v15;
    *(v2 + 584) = v16;
    v18 = *(v2 + 80);
    v19 = *(v2 + 96);
    v20 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v20;
    *(v2 + 632) = v18;
    *(v2 + 648) = v19;
    v21 = *(v2 + 144);
    v22 = *(v2 + 160);
    v23 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v22;
    *(v2 + 728) = v23;
    *(v2 + 696) = v21;
    sub_1D5ECF21C(v2 + 568);
  }

  sub_1D6A14B9C(v3, type metadata accessor for DebugFormatWorkspaceKind);
  v13 = *(v2 + 808);
  v14 = *(v2 + 800);

  return MEMORY[0x1EEE6DFA0](sub_1D6A15CC8, v14, v13);
}

void sub_1D6A0CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(a3 + 160);
    v45[8] = *(a3 + 144);
    v45[9] = v9;
    v46[0] = *(a3 + 176);
    *(v46 + 15) = *(a3 + 191);
    v10 = *(a3 + 96);
    v45[4] = *(a3 + 80);
    v45[5] = v10;
    v11 = *(a3 + 128);
    v45[6] = *(a3 + 112);
    v45[7] = v11;
    v12 = *(a3 + 32);
    v45[0] = *(a3 + 16);
    v45[1] = v12;
    v13 = *(a3 + 64);
    v45[2] = *(a3 + 48);
    v45[3] = v13;
    if (v46[1])
    {
      v14 = *(a3 + 160);
      v39 = *(a3 + 144);
      v40 = v14;
      v41 = *(a3 + 176);
      v15 = *(a3 + 96);
      v35 = *(a3 + 80);
      v36 = v15;
      v16 = *(a3 + 128);
      v37 = *(a3 + 112);
      v38 = v16;
      v17 = *(a3 + 32);
      v31 = *(a3 + 16);
      v32 = v17;
      v18 = *(a3 + 64);
      v33 = *(a3 + 48);
      v34 = v18;
      v19 = *(&v46[1] + 1);
      v20 = Strong;
      v21 = sub_1D726294C();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      sub_1D726290C();
      sub_1D5ECF1C0(v45, &v47);
      v22 = v20;
      v23 = sub_1D72628FC();
      v55 = v39;
      v56 = v40;
      *v57 = v41;
      v51 = v35;
      v52 = v36;
      v53 = v37;
      v54 = v38;
      v47 = v31;
      v48 = v32;
      v49 = v33;
      v50 = v34;
      v57[16] = 0;
      *&v57[17] = v19;
      v24 = swift_allocObject();
      v25 = v56;
      *(v24 + 168) = v55;
      *(v24 + 184) = v25;
      *(v24 + 200) = *v57;
      v26 = v52;
      *(v24 + 104) = v51;
      *(v24 + 120) = v26;
      v27 = v54;
      *(v24 + 136) = v53;
      *(v24 + 152) = v27;
      v28 = v48;
      *(v24 + 40) = v47;
      *(v24 + 56) = v28;
      v29 = v50;
      *(v24 + 72) = v49;
      v30 = MEMORY[0x1E69E85E0];
      *(v24 + 16) = v23;
      *(v24 + 24) = v30;
      *(v24 + 32) = v22;
      *(v24 + 215) = *&v57[15];
      *(v24 + 88) = v29;
      sub_1D5ECF1C0(&v47, v42);
      sub_1D6BD1DC0(0, 0, v7, &unk_1D7312528, v24);

      v42[8] = v39;
      v42[9] = v40;
      v42[10] = v41;
      v42[4] = v35;
      v42[5] = v36;
      v42[6] = v37;
      v42[7] = v38;
      v42[0] = v31;
      v42[1] = v32;
      v42[2] = v33;
      v42[3] = v34;
      v43 = 0;
      v44 = v19;
      sub_1D5ECF21C(v42);
    }

    else
    {
    }
  }
}

void sub_1D6A0CE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(a3 + 160);
    v45[8] = *(a3 + 144);
    v45[9] = v9;
    v46[0] = *(a3 + 176);
    *(v46 + 15) = *(a3 + 191);
    v10 = *(a3 + 96);
    v45[4] = *(a3 + 80);
    v45[5] = v10;
    v11 = *(a3 + 128);
    v45[6] = *(a3 + 112);
    v45[7] = v11;
    v12 = *(a3 + 32);
    v45[0] = *(a3 + 16);
    v45[1] = v12;
    v13 = *(a3 + 64);
    v45[2] = *(a3 + 48);
    v45[3] = v13;
    if (v46[1])
    {
    }

    else
    {
      v14 = *(a3 + 160);
      v39 = *(a3 + 144);
      v40 = v14;
      v41 = *(a3 + 176);
      v15 = *(a3 + 96);
      v35 = *(a3 + 80);
      v36 = v15;
      v16 = *(a3 + 128);
      v37 = *(a3 + 112);
      v38 = v16;
      v17 = *(a3 + 32);
      v31 = *(a3 + 16);
      v32 = v17;
      v18 = *(a3 + 64);
      v33 = *(a3 + 48);
      v34 = v18;
      v19 = *(&v46[1] + 1);
      v20 = Strong;
      v21 = sub_1D726294C();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      sub_1D726290C();
      sub_1D5ECF1C0(v45, &v47);
      v22 = v20;
      v23 = sub_1D72628FC();
      v55 = v39;
      v56 = v40;
      v57[0] = v41;
      v51 = v35;
      v52 = v36;
      v53 = v37;
      v54 = v38;
      v47 = v31;
      v48 = v32;
      v49 = v33;
      v50 = v34;
      LOBYTE(v57[1]) = 1;
      *(&v57[1] + 1) = v19;
      v24 = swift_allocObject();
      v25 = v56;
      *(v24 + 168) = v55;
      *(v24 + 184) = v25;
      *(v24 + 200) = v57[0];
      v26 = v52;
      *(v24 + 104) = v51;
      *(v24 + 120) = v26;
      v27 = v54;
      *(v24 + 136) = v53;
      *(v24 + 152) = v27;
      v28 = v48;
      *(v24 + 40) = v47;
      *(v24 + 56) = v28;
      v29 = v50;
      *(v24 + 72) = v49;
      v30 = MEMORY[0x1E69E85E0];
      *(v24 + 16) = v23;
      *(v24 + 24) = v30;
      *(v24 + 32) = v22;
      *(v24 + 215) = *(v57 + 15);
      *(v24 + 88) = v29;
      sub_1D5ECF1C0(&v47, v42);
      sub_1D6BD1DC0(0, 0, v7, &unk_1D7312518, v24);

      v42[8] = v39;
      v42[9] = v40;
      v42[10] = v41;
      v42[4] = v35;
      v42[5] = v36;
      v42[6] = v37;
      v42[7] = v38;
      v42[0] = v31;
      v42[1] = v32;
      v42[2] = v33;
      v42[3] = v34;
      v43 = 1;
      v44 = v19;
      sub_1D5ECF21C(v42);
    }
  }
}

void sub_1D6A0D180()
{
  v1 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceViewController());

  v3 = sub_1D6C46574(v2);
  [v3 setPreferredDisplayMode_];
  [v3 setModalPresentationStyle_];
  [v3 setMinimumPrimaryColumnWidth_];
  [v3 setPreferredPrimaryColumnWidth_];
  [v3 setMaximumPrimaryColumnWidth_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1D6A0D284()
{

  sub_1D725972C();

  sub_1D725973C();
}

void sub_1D6A0D340(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), void (*a5)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    a4(v10, v9);

    LOBYTE(v10[0]) = (v10[0] & 1) == 0;

    a5(v10);
  }
}

void sub_1D6A0D40C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_1D725973C();
  }
}

uint64_t sub_1D6A0D494()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1D725B32C();
  }

  return result;
}

uint64_t sub_1D6A0D550()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D6A0D5E4()
{
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D725BFFC();
}

uint64_t sub_1D6A0D670()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
    v2 = result;

    v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider);

    sub_1D725A76C();
    swift_beginAccess();
    *(v3 + 24) = MEMORY[0x1E69E7CC8];

    sub_1D725A77C();
  }

  return result;
}

void sub_1D6A0D73C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1EDF1A9C8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1EDFFC808 object:0];
}

uint64_t sub_1D6A0D7DC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1D711145C();
  }

  return result;
}

uint64_t sub_1D6A0D86C()
{
  if (qword_1EDF16528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC6E8;
  sub_1D725A76C();
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];

  return sub_1D725A77C();
}

uint64_t sub_1D6A0D900()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_1D725973C();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_1D725973C();
  }

  return result;
}

void sub_1D6A0DA14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1D6A0DA70()
{
  sub_1D6A1506C(0, &qword_1EC890038, MEMORY[0x1E69D6E30]);
  v140 = v0;
  v138 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v139 = &v131 - v2;
  v3 = MEMORY[0x1E69D6E30];
  sub_1D5F5DB14(0, &qword_1EC881610, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v151 = v4;
  v154 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v153 = &v131 - v6;
  v152 = sub_1D725970C();
  v158 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v7);
  v150 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6E30];
  sub_1D6A14ED0(0, &unk_1EC890040, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6E30]);
  v155 = *(v10 - 1);
  v156 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v157 = &v131 - v12;
  sub_1D6A14ED0(0, &unk_1EC890050, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, v9);
  v146 = v13;
  v134 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v14);
  v147 = &v131 - v15;
  sub_1D6A14ED0(0, &unk_1EC890060, sub_1D62C52C0, &type metadata for DebugFormatWeather, v9);
  v132 = v16;
  v131 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  *&v135 = &v131 - v18;
  v19 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69D6EE0];
  sub_1D5F5DB14(0, &unk_1EC890070, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v3);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v131 - v25;
  sub_1D6A14978(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6F90]);
  v27 = *(sub_1D72597DC() - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v145 = *(v27 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D72AACF0;
  sub_1D69A7944();
  v143 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D7279970;
  sub_1D5F5DB14(0, &unk_1EC890080, v19, v20, MEMORY[0x1E69D6E50]);
  v33 = v32;
  if (qword_1EC87D5C8 != -1)
  {
    swift_once();
  }

  v137 = v29;
  v144 = v29 + v28;
  v34 = *MEMORY[0x1E69D6E28];
  v37 = *(v23 + 104);
  v35 = v23 + 104;
  v36 = v37;
  (v37)(v26, v34, v22);

  v38 = sub_1D725978C();
  *(v31 + 56) = v33;
  v39 = sub_1D6A14CD8();
  *(v31 + 64) = v39;
  *(v31 + 32) = v38;
  if (qword_1EC87D5D0 != -1)
  {
    swift_once();
  }

  (v36)(v26, v34, v22);

  v40 = sub_1D725978C();
  *(v31 + 96) = v33;
  *(v31 + 104) = v39;
  *(v31 + 72) = v40;
  if (qword_1EC87D5D8 != -1)
  {
    swift_once();
  }

  v148 = v36;
  v149 = v22;
  v133 = v35;
  (v36)(v26, v34, v22);

  v41 = sub_1D725978C();
  *(v31 + 136) = v33;
  *(v31 + 144) = v39;
  v136 = v39;
  *(v31 + 112) = v41;
  sub_1D72597CC();
  v42 = swift_allocObject();
  v142 = xmmword_1D7273AE0;
  *(v42 + 16) = xmmword_1D7273AE0;
  sub_1D6A14ED0(0, &qword_1EC890090, sub_1D62C52C0, &type metadata for DebugFormatWeather, MEMORY[0x1E69D6E50]);
  v44 = v43;
  if (qword_1EC87D660 != -1)
  {
    swift_once();
  }

  (*(v131 + 104))(v135, v34, v132);
  sub_1D6A14D5C();
  v45 = v34;

  v46 = sub_1D72597AC();
  *(v42 + 56) = v44;
  *(v42 + 64) = sub_1D6A14DB0();
  *(v42 + 32) = v46;
  sub_1D72597CC();
  v47 = swift_allocObject();
  v135 = xmmword_1D7284F00;
  *(v47 + 16) = xmmword_1D7284F00;
  sub_1D6A14ED0(0, &qword_1EC881618, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6E50]);
  v49 = v48;
  if (qword_1EC87D678 != -1)
  {
    swift_once();
  }

  (*(v134 + 104))(v147, v34, v146);
  sub_1D5E48934();

  v50 = sub_1D72597AC();
  *(v47 + 56) = v49;
  *(v47 + 64) = sub_1D6A14E40();
  *(v47 + 32) = v50;
  sub_1D6A14ED0(0, &unk_1EC8900C0, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6E50]);
  v52 = v51;
  v53 = v149;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  v155[13](v157, v34, v156);
  sub_1D5E4B768();

  v54 = sub_1D72597AC();
  *(v47 + 96) = v52;
  *(v47 + 104) = sub_1D6A14F38();
  *(v47 + 72) = v54;
  if (qword_1EC87D698 != -1)
  {
    swift_once();
  }

  LODWORD(v157) = v34;
  v55 = v148;
  (v148)(v26, v45, v53);

  v56 = v33;
  v57 = sub_1D725978C();
  *(v47 + 136) = v33;
  v58 = v136;
  *(v47 + 144) = v136;
  *(v47 + 112) = v57;
  if (qword_1EC87D6A0 != -1)
  {
    swift_once();
  }

  v147 = (v144 + 2 * v145);
  v59 = *(v158 + 104);
  v60 = v150;
  LODWORD(v156) = *MEMORY[0x1E69D6D78];
  v158 += 104;
  v155 = v59;
  (v59)(v150);
  (v55)(v26, v157, v53);
  v61 = v60;

  v62 = sub_1D725979C();
  *(v47 + 176) = v56;
  *(v47 + 184) = v58;
  *(v47 + 152) = v62;
  sub_1D5F5DB14(0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
  v64 = v63;
  if (qword_1EC87D680 != -1)
  {
    swift_once();
  }

  v149 = "rmatUploadDiffViewController";
  (v155)(v60, v156, v152);
  v65 = v154 + 104;
  v66 = v151;
  v146 = *(v154 + 104);
  v146(v153, v157, v151);

  v136 = 0xD000000000000010;
  v67 = sub_1D72597BC();
  *(v47 + 216) = v64;
  v68 = v61;
  v69 = sub_1D6A14FC8();
  *(v47 + 224) = v69;
  *(v47 + 192) = v67;
  if (qword_1EC87D688 != -1)
  {
    swift_once();
  }

  v70 = v152;
  (v155)(v68, v156, v152);
  v146(v153, v157, v66);

  v71 = sub_1D72597BC();
  *(v47 + 256) = v64;
  *(v47 + 264) = v69;
  *(v47 + 232) = v71;
  sub_1D72597CC();
  v149 = 3 * v145;
  v72 = swift_allocObject();
  *(v72 + 16) = v142;
  v73 = v157;
  v74 = v155;
  if (qword_1EC87D620 != -1)
  {
    swift_once();
  }

  (v74)(v150, v156, v70);
  v154 = v65;
  v75 = v146;
  v146(v153, v73, v151);

  v76 = MEMORY[0x1E69E7CC0];
  v77 = sub_1D72597BC();
  *(v72 + 56) = v64;
  *(v72 + 64) = v69;
  *(v72 + 32) = v77;
  sub_1D72597CC();
  v78 = v75;
  if (qword_1EC87DD08 != -1)
  {
    swift_once();
  }

  v79 = sub_1D725BD1C();
  __swift_project_value_buffer(v79, qword_1EC9BADE0);
  v134 = sub_1D725BC9C();
  v133 = v80;
  v162 = v76;
  sub_1D6999A88(0, 3, 0);
  v81 = 0;
  v82 = v162;
  v148 = "ition Item Kind Mismatch";
  v149 = "Newsroom Identifiers";
  v147 = "ebug-format-logger";
  v83 = v150;
  do
  {
    if (byte_1F5119220[v81 + 32])
    {
      if (byte_1F5119220[v81 + 32] != 1)
      {
        if (qword_1EC87D4B0 == -1)
        {
          goto LABEL_33;
        }

LABEL_37:
        swift_once();
        goto LABEL_33;
      }

      if (qword_1EC87D4A8 != -1)
      {
        goto LABEL_37;
      }
    }

    else if (qword_1EC87D4A0 != -1)
    {
      goto LABEL_37;
    }

LABEL_33:
    (v155)(v83);
    v75(v153, v157, v151);

    v84 = sub_1D72597BC();
    v160 = v64;
    v161 = v69;
    v159 = v84;
    v162 = v82;
    v86 = *(v82 + 16);
    v85 = *(v82 + 24);
    v87 = v69;
    v88 = v64;
    if (v86 >= v85 >> 1)
    {
      sub_1D6999A88((v85 > 1), v86 + 1, 1);
      v88 = v160;
      v87 = v161;
    }

    ++v81;
    v89 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v88);
    v90 = MEMORY[0x1EEE9AC00](v89, v89);
    v92 = &v131 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v93 + 16))(v92, v90);
    sub_1D5BD0BE4(v86, v92, &v162, v88, v87);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    v82 = v162;
  }

  while (v81 != 3);
  v95 = v144;
  v94 = v145;
  v149 = 4 * v145;
  sub_1D72597CC();
  v147 = (v95 + v94);
  v148 = "Show Deprecated Packages";
  v96 = swift_allocObject();
  v97 = v96;
  *(v96 + 16) = v142;
  if (qword_1EC87D708 != -1)
  {
    swift_once();
  }

  v98 = v150;
  v99 = v152;
  (v155)(v150, v156, v152);
  v100 = v153;
  v101 = v151;
  v75(v153, v157, v151);

  v102 = sub_1D72597BC();
  v97[7] = v64;
  v97[8] = v69;
  v97[4] = v102;
  sub_1D72597CC();
  v103 = swift_allocObject();
  *(v103 + 16) = v135;
  if (qword_1EC87D600 != -1)
  {
    swift_once();
  }

  (v155)(v98, v156, v99);
  v78(v100, v157, v101);

  v104 = sub_1D72597BC();
  *(v103 + 56) = v64;
  *(v103 + 64) = v69;
  *(v103 + 32) = v104;
  if (qword_1EC87D5F0 != -1)
  {
    swift_once();
  }

  (v155)(v98, v156, v99);
  v146(v100, v157, v101);

  v105 = sub_1D72597BC();
  *(v103 + 96) = v64;
  *(v103 + 104) = v69;
  *(v103 + 72) = v105;
  if (qword_1EC87D668 != -1)
  {
    swift_once();
  }

  (v155)(v98, v156, v99);
  v146(v100, v157, v101);

  v106 = sub_1D72597BC();
  *(v103 + 136) = v64;
  *(v103 + 144) = v69;
  *(v103 + 112) = v106;
  if (qword_1EC87D670 != -1)
  {
    swift_once();
  }

  v149 = v144 + 6 * v145;
  (v155)(v98, v156, v99);
  v146(v100, v157, v101);

  v107 = sub_1D72597BC();
  *(v103 + 176) = v64;
  *(v103 + 184) = v69;
  *(v103 + 152) = v107;
  if (qword_1EC87D618 != -1)
  {
    swift_once();
  }

  (v155)(v98, v156, v99);
  v146(v100, v157, v101);

  v108 = sub_1D72597BC();
  *(v103 + 216) = v64;
  *(v103 + 224) = v69;
  *(v103 + 192) = v108;
  if (qword_1EC87D608 != -1)
  {
    swift_once();
  }

  (v155)(v98, v156, v99);
  v146(v100, v157, v101);

  v109 = sub_1D72597BC();
  *(v103 + 256) = v64;
  *(v103 + 264) = v69;
  *(v103 + 232) = v109;
  sub_1D72597CC();
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1D7279960;
  sub_1D6A1504C(0);
  v112 = v111;
  if (qword_1EC87D6E8 != -1)
  {
    swift_once();
  }

  v113 = *(v138 + 104);
  v114 = v139;
  v115 = v157;
  v116 = v140;
  v113(v139, v157, v140);
  sub_1D6A15C70(&qword_1EC8900F0, 255, MEMORY[0x1E69D6D20]);

  v117 = sub_1D72597AC();
  *(v110 + 56) = v112;
  v158 = sub_1D6A15C70(&qword_1EC8900F8, 255, sub_1D6A1504C);
  *(v110 + 64) = v158;
  *(v110 + 32) = v117;
  if (qword_1EC87D6F0 != -1)
  {
    swift_once();
  }

  v113(v114, v115, v116);

  v118 = sub_1D72597AC();
  v119 = v158;
  *(v110 + 96) = v112;
  *(v110 + 104) = v119;
  *(v110 + 72) = v118;
  if (qword_1EC87D6F8 != -1)
  {
    swift_once();
  }

  v113(v114, v115, v116);

  v120 = sub_1D72597AC();
  v121 = v158;
  *(v110 + 136) = v112;
  *(v110 + 144) = v121;
  *(v110 + 112) = v120;
  if (qword_1EC87D700 != -1)
  {
    swift_once();
  }

  v113(v114, v115, v116);

  v122 = sub_1D72597AC();
  v123 = v158;
  *(v110 + 176) = v112;
  *(v110 + 184) = v123;
  *(v110 + 152) = v122;
  if (qword_1EDF18718 != -1)
  {
    swift_once();
  }

  v156 = "archy on Snapshot";
  v113(v114, v115, v116);

  v124 = sub_1D72597AC();
  v125 = v158;
  *(v110 + 216) = v112;
  *(v110 + 224) = v125;
  *(v110 + 192) = v124;
  sub_1D72597CC();
  v126 = sub_1D725DFCC();
  swift_allocObject();
  v127 = sub_1D725DFBC();
  v160 = v126;
  v161 = MEMORY[0x1E69D7D00];
  v159 = v127;
  v128 = objc_allocWithZone(sub_1D725E42C());
  v129 = sub_1D725E41C();
  v130 = [objc_allocWithZone(sub_1D725EDBC()) initWithRootViewController_];

  [v130 setModalPresentationStyle_];
  [v141 presentViewController:v130 animated:1 completion:0];
}

void sub_1D6A0F854()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_1D6D2CB34();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1D6A0F92C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_1D6A153FC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D72816C0;
  sub_1D7263ECC();
  sub_1D5B5A498(0, &qword_1EDF04350);
  v2 = 0;
  do
  {
    v3 = byte_1F5119248[v2 + 32];

    sub_1D725B31C();

    sub_1D6186CE4(v3, v9);

    ++v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = v1;
    sub_1D726375C();
    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
  }

  while (v2 != 4);
  sub_1D5B5A498(0, &qword_1EC885090);
  *(v8 + 32) = sub_1D726340C();
  v6 = sub_1D72633FC();

  return v6;
}

uint64_t sub_1D6A0FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D725B31C();

  sub_1D725B31C();

  v4 = sub_1D6186CE4(a3, v6[0]);

  if (v4)
  {
    sub_1D62D0890(a3, v6);
  }

  else
  {
    sub_1D5FEEC24(v6, a3);
  }

  v6[0] = v6[1];

  sub_1D725B32C();
}

uint64_t sub_1D6A0FD14()
{

  sub_1D725972C();

  if (v1 <= 2)
  {

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D6A0FDF8()
{

  sub_1D725972C();

  if (v1 <= 1)
  {

    sub_1D725973C();
  }

  return result;
}

void sub_1D6A0FEDC(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor];
  v4 = type metadata accessor for DebugFormatAccessibilityViewController();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_tableView;
  v7 = objc_allocWithZone(MEMORY[0x1E69DD020]);

  *&v5[v6] = [v7 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_contentSizeObserver] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_editor] = v3;
  *&v5[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_sections] = &unk_1F5118D08;
  v12.receiver = v5;
  v12.super_class = v4;
  v8 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  v9 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v9 setModalPresentationStyle_];
  v10 = [v9 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setBarButtonItem_];
  }

  [v1 presentViewController:v9 animated:1 completion:0];
}

void sub_1D6A10108(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView);
  [a1 zoomScale];
  *(v4 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale) = v5;
  sub_1D6320DF8();
  v6 = v2;
  v7 = sub_1D69FE348();
  [*(v6 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView) transform];
  v8 = v22;
  v9 = v23;
  v10 = &v7[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation];
  *v10 = aBlock;
  *(v10 + 1) = v8;
  *(v10 + 2) = v9;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D6A14BFC;
  *(v13 + 24) = v12;
  *&v23 = sub_1D5DF8E8C;
  *(&v23 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1D69C9704;
  *(&v22 + 1) = &block_descriptor_18_0;
  v14 = _Block_copy(&aBlock);
  v15 = v7;

  [v11 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = sub_1D69FE3D0();
  [a1 zoomScale];
  v18 = v17 * 100.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    *&aBlock = sub_1D72644BC();
    *(&aBlock + 1) = v19;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    v20 = sub_1D726203C();

    [v16 setTitle_];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1D6A103C8(void *a1)
{
  sub_1D6A04B78(a1);
  sub_1D725E7BC();
  [a1 bounds];
  CGRectGetHeight(v6);
  [a1 zoomScale];
  [a1 contentOffset];
  [a1 adjustedContentInset];
  [a1 zoomScale];
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView);
  [v3 frame];
  sub_1D72632EC();
  [v3 frame];
  CGRectGetHeight(v7);
  sub_1D726326C();

  return [v3 setFrame_];
}

void sub_1D6A10538(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedApplication];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D5DF743C;
  *(v7 + 24) = v4;
  v9[4] = sub_1D5F39624;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D5B6B06C;
  v9[3] = &block_descriptor_62;
  v8 = _Block_copy(v9);

  [v6 ts:v8 installCACommitCompletionBlock:?];
  _Block_release(v8);
}

void sub_1D6A106A0(void *a1)
{
  swift_getObjectType();
  v2 = a1;
  sub_1D725BDCC();
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v3 = sub_1D726308C();
  sub_1D725BAAC();
}

void sub_1D6A10778(void *a1)
{
  v2 = v1;
  swift_getObjectType();

  sub_1D725B31C();

  sub_1D725B32C();

  sub_1D725B31C();

  v4 = sub_1D726203C();
  if (v12 == 1)
  {
    v5 = [objc_opt_self() systemImageNamed_];

    [a1 setImage_];
    sub_1D71F5C4C(*&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView], *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView]);
    sub_1D5B5A498(0, &qword_1EDF04590);

    v6 = sub_1D726265C();

    [v2 setToolbarItems_];
  }

  else
  {
    v7 = [objc_opt_self() systemImageNamed_];

    [a1 setImage_];
    sub_1D5B5A498(0, &qword_1EDF04590);

    v8 = sub_1D726265C();

    [v2 setToolbarItems_];

    MEMORY[0x1EEE9AC00](v9, v10);
    sub_1D725BDCC();
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v11 = sub_1D726308C();
    sub_1D725BAAC();

    v6 = sub_1D725A95C();
    sub_1D725BB3C();
  }
}

uint64_t sub_1D6A10BD8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1D6A14978(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - v5;
  sub_1D6A14978(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;

  sub_1D725B31C();

  v11 = type metadata accessor for FormatDebuggerContext();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {

    sub_1D725B31C();

    v12 = *(v19[1] + 16);

    if (v12)
    {
      v14 = sub_1D726294C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      sub_1D726290C();
      v15 = v1;
      v16 = sub_1D72628FC();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v15;
      sub_1D6736BD4(0, 0, v6, &unk_1D73124E8, v17);
    }
  }

  else
  {

    sub_1D6D2CBFC();

    return sub_1D6A1530C(v10, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  }

  return result;
}

uint64_t sub_1D6A10EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[110] = a4;
  sub_1D726290C();
  v4[111] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v4[112] = v6;
  v4[113] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D6A10F40, v6, v5);
}

uint64_t sub_1D6A10F40()
{
  v1 = *(*(v0 + 880) + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);

  sub_1D725B31C();

  v2 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v2;
  v3 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v3;
  v4 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v4;
  v5 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v5;
  v6 = *(v0 + 208);
  *(v0 + 408) = *(v0 + 192);
  *(v0 + 424) = v6;
  *(v0 + 392) = *(v0 + 176);
  v7 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v7;
  v8 = *(v1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_debugger);
  *(v0 + 912) = v8;

  v9 = swift_task_alloc();
  *(v0 + 920) = v9;
  *v9 = v0;
  v9[1] = sub_1D6A1107C;

  return sub_1D6A057C4(v0 + 232, v8);
}

uint64_t sub_1D6A1107C()
{
  v2 = *v1;
  v3 = *v1 + 232;
  *(*v1 + 928) = v0;

  v4 = *(v3 + 16);
  if (v0)
  {
    *(v2 + 448) = *v3;
    *(v2 + 464) = v4;
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    *(v2 + 512) = *(v3 + 64);
    *(v2 + 528) = v7;
    *(v2 + 480) = v5;
    *(v2 + 496) = v6;
    v8 = *(v3 + 96);
    v9 = *(v3 + 112);
    v10 = *(v3 + 144);
    *(v2 + 576) = *(v3 + 128);
    *(v2 + 592) = v10;
    *(v2 + 544) = v8;
    *(v2 + 560) = v9;
    v11 = *(v3 + 160);
    v12 = *(v3 + 176);
    v13 = *(v3 + 192);
    *(v2 + 656) = *(v3 + 208);
    *(v2 + 624) = v12;
    *(v2 + 640) = v13;
    *(v2 + 608) = v11;
    sub_1D6A149DC(v2 + 448, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

    v14 = *(v2 + 904);
    v15 = *(v2 + 896);
    v16 = sub_1D6A112E4;
  }

  else
  {
    *(v2 + 664) = *v3;
    *(v2 + 680) = v4;
    v17 = *(v3 + 32);
    v18 = *(v3 + 48);
    v19 = *(v3 + 80);
    *(v2 + 728) = *(v3 + 64);
    *(v2 + 744) = v19;
    *(v2 + 696) = v17;
    *(v2 + 712) = v18;
    v20 = *(v3 + 96);
    v21 = *(v3 + 112);
    v22 = *(v3 + 144);
    *(v2 + 792) = *(v3 + 128);
    *(v2 + 808) = v22;
    *(v2 + 760) = v20;
    *(v2 + 776) = v21;
    v23 = *(v3 + 160);
    v24 = *(v3 + 176);
    v25 = *(v3 + 192);
    *(v2 + 872) = *(v3 + 208);
    *(v2 + 840) = v24;
    *(v2 + 856) = v25;
    *(v2 + 824) = v23;
    sub_1D6A149DC(v2 + 664, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

    v14 = *(v2 + 904);
    v15 = *(v2 + 896);
    v16 = sub_1D6A11280;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

uint64_t sub_1D6A11280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A112E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A1143C(uint64_t a1)
{
  sub_1D6A14978(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);
  v8 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_debugger;

  sub_1D725B31C();

  v9 = type metadata accessor for FormatDebuggerContext();
  result = (*(*(v9 - 8) + 48))(v6, 1, v9);
  if (result != 1)
  {
    v11 = *(v7 + v8);

    sub_1D725A76C();
    if (*(v11 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) == 1)
    {
      *(v11 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
      v12 = v11 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
      *v12 = a1;
      *(v12 + 8) = 2;
      sub_1D725A77C();
      sub_1D72631AC();
    }

    else
    {
      sub_1D725A77C();
    }

    return sub_1D6A1530C(v6, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  }

  return result;
}

uint64_t sub_1D6A11654(void (*a1)(uint64_t))
{
  sub_1D6A14978(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;

  sub_1D725B31C();

  v6 = type metadata accessor for FormatDebuggerContext();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result != 1)
  {

    a1(v8);

    return sub_1D6A1530C(v5, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  }

  return result;
}

void sub_1D6A11824(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor];

  sub_1D725B31C();

  v27[10] = v23;
  v27[11] = v24;
  v27[12] = v25;
  v27[6] = v19;
  v27[7] = v20;
  v27[8] = v21;
  v27[9] = v22;
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v27[5] = v18;
  v27[0] = v13;
  v27[1] = v14;
  v29[10] = v23;
  v29[11] = v24;
  v29[12] = v25;
  v29[6] = v19;
  v29[7] = v20;
  v29[8] = v21;
  v29[9] = v22;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v28 = v26;
  v30 = v26;
  v29[0] = v13;
  v29[1] = v14;
  if (sub_1D5DEA380(v29) != 1)
  {
    sub_1D6A149DC(v27, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView];
      objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceDeviceViewController());
      v8 = v7;
      v9 = sub_1D6F93CBC(v4, v6, v7, 0);

      v10 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
      [v10 setModalPresentationStyle_];
      v11 = [v10 popoverPresentationController];
      if (v11)
      {
        v12 = v11;
        [v11 setBarButtonItem_];
      }

      [v2 presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D6A11B28()
{

  sub_1D725972C();

  if (!v1)
  {

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D6A11BB0()
{

  sub_1D725B31C();

  v21[4] = v17;
  v21[5] = v18;
  v21[6] = v19;
  v21[7] = v20;
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  if (sub_1D5DEA380(v21) == 1)
  {
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v5 = v13;
    v6 = v14;
    v7 = v15;
    v8 = v16;
    return sub_1D6A149DC(&v5, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
  }

  else
  {
    v1 = *(&v18 + 1);
    v2 = v19;
    v3 = v20;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v5 = v13;
    v6 = v14;
    v7 = v15;
    v8 = v16;
    sub_1D679CD2C(*(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1));
    result = sub_1D6A149DC(&v5, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
    if (v2)
    {
      sub_1D679CD70(v1, v2, *(&v2 + 1), v3, *(&v3 + 1));
      LOBYTE(v4) = 0;

      sub_1D725B32C();

      sub_1D607F0A4(&v4);

      sub_1D725B32C();

      sub_1D725B32C();

      sub_1D725B32C();
    }
  }

  return result;
}

uint64_t sub_1D6A11DCC(uint64_t a1, uint64_t a2)
{
  *(v3 + 672) = v2;
  *(v3 + 664) = a2;
  type metadata accessor for GroupLayoutBindingContext();
  *(v3 + 680) = swift_task_alloc();
  v5 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  *(v3 + 688) = v5;
  *(v3 + 696) = *(v5 - 8);
  *(v3 + 704) = swift_task_alloc();
  v6 = *(a1 + 176);
  *(v3 + 608) = *(a1 + 160);
  *(v3 + 624) = v6;
  *(v3 + 640) = *(a1 + 192);
  v7 = *(a1 + 112);
  *(v3 + 544) = *(a1 + 96);
  *(v3 + 560) = v7;
  v8 = *(a1 + 144);
  *(v3 + 576) = *(a1 + 128);
  *(v3 + 592) = v8;
  v9 = *(a1 + 48);
  *(v3 + 480) = *(a1 + 32);
  *(v3 + 496) = v9;
  v10 = *(a1 + 80);
  *(v3 + 512) = *(a1 + 64);
  *(v3 + 528) = v10;
  v11 = *(a1 + 16);
  *(v3 + 448) = *a1;
  *(v3 + 464) = v11;
  *(v3 + 712) = *(a1 + 208);
  sub_1D726290C();
  *(v3 + 720) = sub_1D72628FC();
  v13 = sub_1D726285C();
  *(v3 + 728) = v13;
  *(v3 + 736) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D6A11F38, v13, v12);
}

uint64_t sub_1D6A11F38(uint64_t a1)
{
  v2 = *(v1 + 712);
  v3 = *(v1 + 672);
  v4 = *(v2 + 16);
  *(v1 + 744) = v4;
  *(v1 + 752) = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_formatManager;
  if (v4)
  {
    v5 = *(v1 + 696);
    v6 = *(v1 + 688);
    *(v1 + 760) = 0;
    if (*(v2 + 16))
    {
      v7 = *(v1 + 704);
      v8 = *(v1 + 680);
      sub_1D6A14B34(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v9 = *(v1 + 496);
      *(v1 + 48) = *(v1 + 480);
      *(v1 + 64) = v9;
      v10 = *(v1 + 464);
      *(v1 + 16) = *(v1 + 448);
      *(v1 + 32) = v10;
      v11 = *(v1 + 560);
      *(v1 + 112) = *(v1 + 544);
      *(v1 + 128) = v11;
      v12 = *(v1 + 528);
      *(v1 + 80) = *(v1 + 512);
      *(v1 + 96) = v12;
      v13 = *(v1 + 640);
      *(v1 + 192) = *(v1 + 624);
      *(v1 + 208) = v13;
      v14 = *(v1 + 608);
      *(v1 + 160) = *(v1 + 592);
      *(v1 + 176) = v14;
      *(v1 + 144) = *(v1 + 576);
      *(v1 + 224) = v2;
      v15 = sub_1D6912660(v1 + 16);
      sub_1D6A14B34(*(v7 + *(v6 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v8, type metadata accessor for GroupLayoutBindingContext);
      sub_1D6A14B9C(v7, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      *(v1 + 768) = sub_1D6D30108(v15, v8);

      sub_1D6A14B9C(v8, type metadata accessor for GroupLayoutBindingContext);
      v16 = swift_task_alloc();
      *(v1 + 776) = v16;
      *v16 = v1;
      v16[1] = sub_1D6A12210;
      a1 = v1 + 656;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE44EE0](a1);
  }

  else
  {
    v17 = *(v1 + 624);
    *(v1 + 392) = *(v1 + 608);
    *(v1 + 408) = v17;
    *(v1 + 424) = *(v1 + 640);
    v18 = *(v1 + 560);
    *(v1 + 328) = *(v1 + 544);
    *(v1 + 344) = v18;
    v19 = *(v1 + 592);
    *(v1 + 360) = *(v1 + 576);
    *(v1 + 376) = v19;
    v20 = *(v1 + 448);
    *(v1 + 248) = *(v1 + 464);
    v21 = *(v1 + 496);
    *(v1 + 264) = *(v1 + 480);
    *(v1 + 280) = v21;
    v22 = *(v1 + 528);
    *(v1 + 296) = *(v1 + 512);
    *(v1 + 312) = v22;
    *(v1 + 232) = v20;
    *(v1 + 440) = v2;
    v23 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
    v24 = sub_1D69FE348();
    *(v1 + 792) = v24;
    v25 = swift_task_alloc();
    *(v1 + 800) = v25;
    *v25 = v1;
    v25[1] = sub_1D6A12630;
    v26 = *(v1 + 664);

    return sub_1D6C86C58(v1 + 232, v23, v24, v26);
  }
}

uint64_t sub_1D6A12210()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = *(v2 + 736);
    v4 = *(v2 + 728);
    v5 = sub_1D6A127E8;
  }

  else
  {

    v3 = *(v2 + 736);
    v4 = *(v2 + 728);
    v5 = sub_1D6A12348;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6A12348(uint64_t a1)
{
  v2 = *(v1 + 760) + 1;
  if (v2 == *(v1 + 744))
  {
    v3 = *(v1 + 672);
    v4 = *(v1 + 624);
    *(v1 + 392) = *(v1 + 608);
    *(v1 + 408) = v4;
    *(v1 + 424) = *(v1 + 640);
    v5 = *(v1 + 560);
    *(v1 + 328) = *(v1 + 544);
    *(v1 + 344) = v5;
    v6 = *(v1 + 592);
    *(v1 + 360) = *(v1 + 576);
    *(v1 + 376) = v6;
    v7 = *(v1 + 448);
    *(v1 + 248) = *(v1 + 464);
    v8 = *(v1 + 496);
    *(v1 + 264) = *(v1 + 480);
    *(v1 + 280) = v8;
    v9 = *(v1 + 528);
    *(v1 + 296) = *(v1 + 512);
    *(v1 + 312) = v9;
    v10 = *(v1 + 712);
    *(v1 + 232) = v7;
    *(v1 + 440) = v10;
    v11 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView);
    v12 = sub_1D69FE348();
    *(v1 + 792) = v12;
    v13 = swift_task_alloc();
    *(v1 + 800) = v13;
    *v13 = v1;
    v13[1] = sub_1D6A12630;
    v14 = *(v1 + 664);

    return sub_1D6C86C58(v1 + 232, v11, v12, v14);
  }

  else
  {
    *(v1 + 760) = v2;
    v16 = *(v1 + 712);
    if (v2 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v1 + 704);
      v18 = *(v1 + 688);
      v19 = *(v1 + 680);
      sub_1D6A14B34(v16 + ((*(*(v1 + 696) + 80) + 32) & ~*(*(v1 + 696) + 80)) + *(*(v1 + 696) + 72) * v2, v17, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v20 = *(v1 + 496);
      *(v1 + 48) = *(v1 + 480);
      *(v1 + 64) = v20;
      v21 = *(v1 + 464);
      *(v1 + 16) = *(v1 + 448);
      *(v1 + 32) = v21;
      v22 = *(v1 + 560);
      *(v1 + 112) = *(v1 + 544);
      *(v1 + 128) = v22;
      v23 = *(v1 + 528);
      *(v1 + 80) = *(v1 + 512);
      *(v1 + 96) = v23;
      v24 = *(v1 + 640);
      *(v1 + 192) = *(v1 + 624);
      *(v1 + 208) = v24;
      v25 = *(v1 + 608);
      *(v1 + 160) = *(v1 + 592);
      *(v1 + 176) = v25;
      *(v1 + 144) = *(v1 + 576);
      *(v1 + 224) = v16;
      v26 = sub_1D6912660(v1 + 16);
      sub_1D6A14B34(*(v17 + *(v18 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v19, type metadata accessor for GroupLayoutBindingContext);
      sub_1D6A14B9C(v17, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      *(v1 + 768) = sub_1D6D30108(v26, v19);

      sub_1D6A14B9C(v19, type metadata accessor for GroupLayoutBindingContext);
      v27 = swift_task_alloc();
      *(v1 + 776) = v27;
      *v27 = v1;
      v27[1] = sub_1D6A12210;
      a1 = v1 + 656;
    }

    return MEMORY[0x1EEE44EE0](a1);
  }
}

uint64_t sub_1D6A12630()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  *(*v1 + 808) = v0;

  v4 = *(v2 + 736);
  v5 = *(v2 + 728);
  if (v0)
  {
    v6 = sub_1D6A12860;
  }

  else
  {
    v6 = sub_1D6A1276C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D6A1276C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A127E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A12860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A12A48(uint64_t a1)
{
  v2 = sub_1D6A15C70(&unk_1EC890100, 255, type metadata accessor for UIUserInterfaceLayoutDirection);
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6A12AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6A15C70(&unk_1EC890100, 255, type metadata accessor for UIUserInterfaceLayoutDirection);
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6A12B60(uint64_t a1)
{
  v2 = sub_1D6A15C70(&unk_1EC890100, 255, type metadata accessor for UIUserInterfaceLayoutDirection);
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D6A12C54(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v99 = a1;
  v7 = type metadata accessor for DebugFormatCacheFile();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v97 = (&v92 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v98 = (&v92 - v20);
  sub_1D6A14978(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v92 - v23;
  v25 = *a2;
  v26 = a2[1];
  *&v133 = a4;
  v27 = a4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v28 = type metadata accessor for FormatLayoutError();
  v29 = swift_dynamicCast();
  v30 = *(*(v28 - 8) + 56);
  if (v29)
  {
    v30(v24, 0, 1, v28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D6A14B9C(v24, type metadata accessor for FormatLayoutError);
    if (EnumCaseMultiPayload == 65)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v30(v24, 1, 1, v28);
    sub_1D6A1530C(v24, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  }

  v32 = *(v99 + 40);
  if (*(v32 + 16))
  {
    v33 = sub_1D6D62CD8(v25, v26, 1);
    if (v34)
    {
      v35 = *(v32 + 56);
      v95 = *(v8 + 72);
      sub_1D6A14B34(v35 + v95 * v33, v17, type metadata accessor for DebugFormatCacheFile);
      v36 = v98;
      sub_1D6A14ACC(v17, v98, type metadata accessor for DebugFormatCacheFile);
      v37 = *(a3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager);
      v38 = *v36;
      v39 = v36[1];
      sub_1D725A76C();
      swift_beginAccess();
      v40 = *(v37 + 40);
      if (*(v40 + 16) && (v41 = sub_1D5B69D90(v38, v39), (v42 & 1) != 0))
      {
        v43 = (*(v40 + 56) + (v41 << 7));
        v45 = v43[2];
        v44 = v43[3];
        v46 = v43[1];
        v117 = *v43;
        v118 = v46;
        v119 = v45;
        v120 = v44;
        v47 = v43[4];
        v48 = v43[5];
        v49 = v43[7];
        v123 = v43[6];
        v124 = v49;
        v121 = v47;
        v122 = v48;
        memmove(&v125, v43, 0x80uLL);
        nullsub_1();
        sub_1D691C7D8(&v117, &v109);
        v137 = v129;
        v138 = v130;
        v139 = v131;
        v140 = v132;
        v133 = v125;
        v134 = v126;
        v135 = v127;
        v136 = v128;
      }

      else
      {
        sub_1D607F0A4(&v133);
      }

      swift_endAccess();
      sub_1D725A77C();
      v129 = v137;
      v130 = v138;
      v131 = v139;
      v132 = v140;
      v125 = v133;
      v126 = v134;
      v127 = v135;
      v128 = v136;
      if (sub_1D5DEA380(&v125) != 1)
      {
        v93 = v37;
        sub_1D5EC0AEC(v127, *(&v127 + 1), v36, &v117);
        v53 = *(&v117 + 1);
        v94 = v117;
        v54 = v118;
        v50 = sub_1D698F85C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v56 = *(v50 + 2);
        v55 = *(v50 + 3);
        if (v56 >= v55 >> 1)
        {
          v50 = sub_1D698F85C((v55 > 1), v56 + 1, 1, v50);
        }

        *(v50 + 2) = v56 + 1;
        v57 = &v50[32 * v56];
        *(v57 + 4) = v94;
        *(v57 + 5) = v53;
        *(v57 + 3) = v54;
        if (*(v32 + 16) && (v58 = *(v99 + 16), v59 = *(v58 + 16), v60 = *(v58 + 24), , v61 = sub_1D6D62CD8(v59, v60, 3), v63 = v62, , (v63 & 1) != 0))
        {
          v64 = *(v32 + 56) + v61 * v95;
          v65 = v96;
          sub_1D6A14B34(v64, v96, type metadata accessor for DebugFormatCacheFile);
          v66 = v97;
          sub_1D6A14ACC(v65, v97, type metadata accessor for DebugFormatCacheFile);
          v67 = *v66;
          v68 = v66[1];
          v69 = v93;
          sub_1D725A76C();
          swift_beginAccess();
          v70 = *(v69 + 40);
          v71 = v98;
          if (*(v70 + 16) && (v72 = sub_1D5B69D90(v67, v68), (v73 & 1) != 0))
          {
            v74 = (*(v70 + 56) + (v72 << 7));
            v76 = v74[2];
            v75 = v74[3];
            v77 = v74[1];
            v101 = *v74;
            v102 = v77;
            v103 = v76;
            v104 = v75;
            v78 = v74[4];
            v79 = v74[5];
            v80 = v74[7];
            v107 = v74[6];
            v108 = v80;
            v105 = v78;
            v106 = v79;
            memmove(&v109, v74, 0x80uLL);
            nullsub_1();
            sub_1D691C7D8(&v101, &v100);
            v121 = v113;
            v122 = v114;
            v123 = v115;
            v124 = v116;
            v117 = v109;
            v118 = v110;
            v119 = v111;
            v120 = v112;
          }

          else
          {
            sub_1D607F0A4(&v117);
          }

          swift_endAccess();
          sub_1D725A77C();
          v113 = v121;
          v114 = v122;
          v115 = v123;
          v116 = v124;
          v109 = v117;
          v110 = v118;
          v111 = v119;
          v112 = v120;
          if (sub_1D5DEA380(&v109) != 1)
          {
            sub_1D5EC0D44(v111, *(&v111 + 1), v66, v71, &v101);
            v83 = v101.i64[1];
            v82 = v101.i64[0];
            v85 = v102.i64[1];
            v84 = v102.i64[0];
            v141 = v50;
            v86 = *(v50 + 2);
            if (v86 >= *(v50 + 3) >> 1)
            {
              v89 = v101.i64[0];
              v90 = v102;
              v91 = sub_1D698F85C(1, v86 + 1, 1, v50);
              v85 = v90.i64[1];
              v84 = v90.i64[0];
              v82 = v89;
              v50 = v91;
              v141 = v91;
            }

            sub_1D5EC3F24(0, 0, 1, v82, v83, v84, v85);

            sub_1D6A149DC(&v117, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
          }

          sub_1D6A149DC(&v133, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
          sub_1D6A14B9C(v66, type metadata accessor for DebugFormatCacheFile);
          v81 = v71;
        }

        else
        {
          sub_1D6A149DC(&v133, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
          v81 = v98;
        }

        sub_1D6A14B9C(v81, type metadata accessor for DebugFormatCacheFile);
        if (*(v50 + 2))
        {
          goto LABEL_14;
        }

LABEL_30:

LABEL_31:
        v51 = a4;
        goto LABEL_32;
      }

      sub_1D6A14B9C(v36, type metadata accessor for DebugFormatCacheFile);
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_30;
  }

LABEL_14:
  sub_1D6A15C70(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
  v51 = swift_allocError();
  *v52 = v50;
  v52[1] = a4;
  swift_storeEnumTagMultiPayload();
LABEL_32:
  v87 = a4;
  return v51;
}

id sub_1D6A13480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v4[v9] = v11;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___navigationItemManager] = 0;
  v12 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for DebugFormatRulerView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___overlayView] = 0;
  v15 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_snapshotCanvasView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for DebugFormatSnapshotCanvasView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___canvasInteractionBarButtonItem] = 0;
  v17 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastSafeAreaInsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v19 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastRenderKey];
  sub_1D60CF378(v38);
  v20 = v38[11];
  *(v19 + 10) = v38[10];
  *(v19 + 11) = v20;
  *(v19 + 12) = v38[12];
  *(v19 + 26) = v39;
  v21 = v38[7];
  *(v19 + 6) = v38[6];
  *(v19 + 7) = v21;
  v22 = v38[9];
  *(v19 + 8) = v38[8];
  *(v19 + 9) = v22;
  v23 = v38[3];
  *(v19 + 2) = v38[2];
  *(v19 + 3) = v23;
  v24 = v38[5];
  *(v19 + 4) = v38[4];
  *(v19 + 5) = v24;
  v25 = v38[1];
  *v19 = v38[0];
  *(v19 + 1) = v25;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView] = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editorToolbarItems] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_debuggerToolbarItems] = v26;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerNextBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepInBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOverBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOutBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___snapshotBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___devicesBarButtonItem] = 0;
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor] = a1;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_formatManager] = a2;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView] = v27;
  objc_allocWithZone(type metadata accessor for DebugFormatEditorStatusView());
  swift_retain_n();

  v28 = v27;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_statusView] = sub_1D67DBE30(a1);
  v29 = objc_allocWithZone(type metadata accessor for DebugFormatCanvasViewController());

  v30 = v28;
  v31 = sub_1D6C8AE18(a1, v30);

  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController] = v31;
  v32 = objc_allocWithZone(type metadata accessor for DebugFormatBackgroundView());

  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView] = sub_1D71E6BBC(v33);
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_sourceViewController] = a3;
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v34 = a3;
  v35 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);

  return v35;
}

void *sub_1D6A1389C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  a3[6] = 0;
  swift_unknownObjectWeakAssign();
  a3[3] = a2;
  a3[4] = a4;
  a3[5] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  sub_1D606C3B0();
  v8 = v7;
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTintColor_];

  return a3;
}

void sub_1D6A1395C()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___navigationItemManager) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for DebugFormatRulerView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___overlayView) = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_snapshotCanvasView;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for DebugFormatSnapshotCanvasView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___canvasInteractionBarButtonItem) = 0;
  v9 = v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastSafeAreaInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  v11 = v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastRenderKey;
  sub_1D60CF378(v19);
  v12 = v19[11];
  *(v11 + 160) = v19[10];
  *(v11 + 176) = v12;
  *(v11 + 192) = v19[12];
  *(v11 + 208) = v20;
  v13 = v19[7];
  *(v11 + 96) = v19[6];
  *(v11 + 112) = v13;
  v14 = v19[9];
  *(v11 + 128) = v19[8];
  *(v11 + 144) = v14;
  v15 = v19[3];
  *(v11 + 32) = v19[2];
  *(v11 + 48) = v15;
  v16 = v19[5];
  *(v11 + 64) = v19[4];
  *(v11 + 80) = v16;
  v17 = v19[1];
  *v11 = v19[0];
  *(v11 + 16) = v17;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editorToolbarItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_debuggerToolbarItems) = v18;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerNextBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepInBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOverBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOutBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___snapshotBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___devicesBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

id sub_1D6A13C28(void *a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController];
  v7 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView;
  v8 = *(v6 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView);
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = [result traitCollection];

  [v11 displayScale];
  v13 = v12;

  sub_1D6CA81F8(v13 * a2);
  v14 = *&v3[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView];
  result = [v3 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result traitCollection];

  [v16 displayScale];
  v18 = v17;

  [v14 setContentScaleFactor_];
  v19 = *(v6 + v7) + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame;
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  [a1 contentSize];
  v23 = v22;
  v24 = v20 * a2;
  [a1 frame];
  Width = CGRectGetWidth(v32);
  if (v24 > Width)
  {
    Width = v24;
  }

  if (v23 <= Width)
  {
    v23 = Width;
  }

  [a1 contentSize];
  v27 = v26;
  v28 = v21 * a2;
  [a1 frame];
  Height = CGRectGetHeight(v33);
  if (v28 > Height)
  {
    Height = v28;
  }

  if (v27 > Height)
  {
    v30 = v27;
  }

  else
  {
    v30 = Height;
  }

  return [a1 setContentSize_];
}

uint64_t sub_1D6A13E1C(uint64_t a1)
{
  v3 = type metadata accessor for DebugFormatLayoutModel();
  MEMORY[0x1EEE9AC00](v3, v4);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = &v58 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1D6A14978(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v65 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v58 - v18;
  v20 = type metadata accessor for DebugFormatCacheFile();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v66 = &v58 - v27;
  sub_1D6A14978(0, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry, v9);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v58 - v30;
  v69 = v1;
  v70 = a1;
  if (!a1)
  {
    goto LABEL_4;
  }

  sub_1D6A1537C(a1 + *(v3 + 32) + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, v31, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry);
  v32 = type metadata accessor for FormatSourceMapEntry();
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    sub_1D6A1530C(v31, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry);
LABEL_4:
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v33 = *(v31 + 2);

  sub_1D6A14B9C(v31, type metadata accessor for FormatSourceMapEntry);
LABEL_6:
  *&v135 = v33;

  sub_1D725B32C();

  sub_1D725B31C();

  v34 = *(v135 + 16);
  if (!v34)
  {

LABEL_13:
    sub_1D607F0A4(&v135);
    v125 = v139;
    v126 = v140;
    v127 = v141;
    v128 = v142;
    v121 = v135;
    v122 = v136;
    v123 = v137;
    v124 = v138;

    sub_1D725B32C();

    LOBYTE(v121) = 0;

    sub_1D725B32C();

    goto LABEL_14;
  }

  v62 = v24;
  v35 = (v135 + 32 * v34);
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v63 = v35[3];

  sub_1D725B31C();

  v145 = v131;
  v146 = v132;
  v147 = v133;
  v148 = v134;
  v141 = v127;
  v142 = v128;
  v143 = v129;
  v144 = v130;
  v137 = v123;
  v138 = v124;
  v139 = v125;
  v140 = v126;
  v135 = v121;
  v136 = v122;
  if (sub_1D5DEA380(&v135) == 1)
  {

    v117 = v131;
    v118 = v132;
    v119 = v133;
    v120 = v134;
    v113 = v127;
    v114 = v128;
    v115 = v129;
    v116 = v130;
    v109 = v123;
    v110 = v124;
    v111 = v125;
    v112 = v126;
    v107 = v121;
    v108 = v122;
    sub_1D6A149DC(&v107, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    (*(v21 + 56))(v19, 1, 1, v20);
LABEL_12:
    sub_1D6A1530C(v19, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    goto LABEL_13;
  }

  v104 = v134;
  v101 = v131;
  v102 = v132;
  v103 = v133;
  v97 = v127;
  v98 = v128;
  v99 = v129;
  v100 = v130;
  v93 = v123;
  v94 = v124;
  v95 = v125;
  v96 = v126;
  v91 = v121;
  v92 = v122;
  v105[10] = v131;
  v105[11] = v132;
  v105[12] = v133;
  v106 = v134;
  v105[6] = v127;
  v105[7] = v128;
  v105[8] = v129;
  v105[9] = v130;
  v105[2] = v123;
  v105[3] = v124;
  v105[4] = v125;
  v105[5] = v126;
  v105[0] = v121;
  v105[1] = v122;
  sub_1D5F2B0D8(&v91, &v77);
  sub_1D6A149DC(v105, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  v83 = v97;
  v84 = v98;
  v85 = v99;
  v86 = v100;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v77 = v91;
  v78 = v92;
  v60 = v38;
  v61 = v36;
  *&v71 = v36;
  *(&v71 + 1) = v37;
  *&v72 = v38;
  *(&v72 + 1) = v63;
  sub_1D6C56BC8(&v71, v19);
  v117 = v87;
  v118 = v88;
  v119 = v89;
  v120 = v90;
  v113 = v83;
  v114 = v84;
  v115 = v85;
  v116 = v86;
  v109 = v79;
  v110 = v80;
  v111 = v81;
  v112 = v82;
  v107 = v77;
  v108 = v78;
  sub_1D5F2B134(&v107);
  v39 = *(v21 + 48);
  if (v39(v19, 1, v20) == 1)
  {

    goto LABEL_12;
  }

  v43 = v19;
  v44 = v66;
  sub_1D6A14ACC(v43, v66, type metadata accessor for DebugFormatCacheFile);
  v45 = v44;
  v46 = v65;
  sub_1D6A14B34(v45, v65, type metadata accessor for DebugFormatCacheFile);
  (*(v21 + 56))(v46, 0, 1, v20);
  v47 = v46;
  v48 = v46;
  v49 = v64;
  sub_1D6A1537C(v48, v64, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  if (v39(v49, 1, v20) == 1)
  {
    sub_1D6A1530C(v47, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D6A1530C(v49, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D607F0A4(&v77);
  }

  else
  {
    v50 = v62;
    sub_1D6A14ACC(v49, v62, type metadata accessor for DebugFormatCacheFile);
    v52 = *v50;
    v51 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 24);
    v55 = *(v50 + 32);
    v64 = *(v50 + 40);
    if (*(v50 + 48))
    {
      swift_beginAccess();
      v59 = v52;

      v57 = sub_1D6C4CF94(v56);
      v52 = v59;
    }

    else
    {

      v57 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6A1530C(v65, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6A14B9C(v50, type metadata accessor for DebugFormatCacheFile);
    *&v71 = v52;
    *(&v71 + 1) = v51;
    *&v72 = v53;
    BYTE8(v72) = v54;
    *&v73 = v55;
    *(&v73 + 1) = v64;
    *&v74 = v61;
    *(&v74 + 1) = v37;
    *&v75 = v60;
    *(&v75 + 1) = v63;
    *&v76[0] = v57;
    *(v76 + 8) = 0u;
    *(&v76[1] + 8) = 0u;
    *(&v76[2] + 1) = 0;
    nullsub_1();
    v81 = v75;
    v82 = v76[0];
    v83 = v76[1];
    v84 = v76[2];
    v77 = v71;
    v78 = v72;
    v79 = v73;
    v80 = v74;
  }

  v75 = v81;
  v76[0] = v82;
  v76[1] = v83;
  v76[2] = v84;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v74 = v80;

  sub_1D725B32C();

  sub_1D6A14B9C(v66, type metadata accessor for DebugFormatCacheFile);
LABEL_14:

  sub_1D725B31C();

  if (v70)
  {
    if (v135)
    {
      v41 = v67;
      sub_1D6A14B34(v70 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, v67, type metadata accessor for DebugFormatLayoutModel);
      v42 = v68;
      sub_1D6A14ACC(v41, v68, type metadata accessor for DebugFormatLayoutModel);
      sub_1D71F609C(v42);
      return sub_1D6A14B9C(v42, type metadata accessor for DebugFormatLayoutModel);
    }
  }

  return result;
}

void sub_1D6A14978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A149DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6A153FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6A14A4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6A153FC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6A14ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A14B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A14B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6A14C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D6A10EA4(a1, v4, v5, v6);
}

unint64_t sub_1D6A14CD8()
{
  result = qword_1EC881628;
  if (!qword_1EC881628)
  {
    sub_1D5F5DB14(255, &unk_1EC890080, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881628);
  }

  return result;
}

unint64_t sub_1D6A14D5C()
{
  result = qword_1EC890098;
  if (!qword_1EC890098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890098);
  }

  return result;
}

unint64_t sub_1D6A14DB0()
{
  result = qword_1EC8900A0;
  if (!qword_1EC8900A0)
  {
    sub_1D6A14ED0(255, &qword_1EC890090, sub_1D62C52C0, &type metadata for DebugFormatWeather, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8900A0);
  }

  return result;
}

unint64_t sub_1D6A14E40()
{
  result = qword_1EC881620;
  if (!qword_1EC881620)
  {
    sub_1D6A14ED0(255, &qword_1EC881618, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881620);
  }

  return result;
}

void sub_1D6A14ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D6A14F38()
{
  result = qword_1EC8900D0;
  if (!qword_1EC8900D0)
  {
    sub_1D6A14ED0(255, &unk_1EC8900C0, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8900D0);
  }

  return result;
}

unint64_t sub_1D6A14FC8()
{
  result = qword_1EC8900E0;
  if (!qword_1EC8900E0)
  {
    sub_1D5F5DB14(255, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8900E0);
  }

  return result;
}

void sub_1D6A1506C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725967C();
    v7 = sub_1D6A15C70(&unk_1EDF43B10, 255, MEMORY[0x1E69D6D20]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6A1510C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A0863C(a1, v4, v5, v6);
}

uint64_t sub_1D6A151C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D6A05364(a1, v4, v5, v6);
}

uint64_t sub_1D6A1530C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6A14978(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6A1537C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6A14978(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6A153FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_129Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D6A158C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A0C750(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1D6A15988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A0C750(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1D6A15A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A0C750(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_145Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6A15BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A0BFAC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1D6A15C70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *PuzzleComponentsViewProvider.__allocating_init(puzzleComponentsStyler:sceneProvider:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6[2] = [objc_opt_self() bundleForClass_];
  v6[3] = a1;
  v6[4] = a2;
  sub_1D5B7DDE8(a3, (v6 + 5));
  return v6;
}

NewsFeed::BarButtonPosition_optional __swiftcall BarButtonPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BarButtonPosition.rawValue.getter()
{
  v1 = 1952867692;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t sub_1D6A15E4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E696665646E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6A15F38()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A15FD4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6A1605C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6A16100(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *PuzzleComponentsViewProvider.init(puzzleComponentsStyler:sceneProvider:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3[2] = [objc_opt_self() bundleForClass_];
  v3[3] = a1;
  v3[4] = a2;
  sub_1D5B7DDE8(a3, (v3 + 5));
  return v3;
}

uint64_t PuzzleComponentsViewProvider.barButtonItems(for:handler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];

  sub_1D5DEA510(a2);
  sub_1D6A1AA80(v8, v4, a2, a3, &v12, &v11);
  sub_1D5B74328(a2);

  v10 = v11;
  *a4 = v12;
  a4[1] = v10;
  return result;
}

uint64_t sub_1D6A1634C(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v150 = a2;
  v149 = a1;
  sub_1D5B549D8(0, &qword_1EC890178, MEMORY[0x1E69D7E28]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v135 = (&v130 - v10);
  v137 = sub_1D725E2AC();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v11);
  v130 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v131 = &v130 - v15;
  v134 = sub_1D725895C();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v16);
  v132 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1D725E0FC();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v18);
  v142 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D725D4CC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v138 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1D725DF2C();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v23);
  v143 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B549D8(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v139 = (&v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v29);
  v163 = &v130 - v30;
  v32 = *a3;
  v31 = *(a3 + 8);
  v33 = *(a3 + 24);
  v156 = *(a3 + 16);
  v164 = v33;
  v192 = *(a3 + 32);
  v35 = *(a3 + 48);
  v34 = *(a3 + 56);
  v36 = *(a3 + 72);
  v165 = *(a3 + 64);
  v37 = *(a3 + 88);
  v159 = *(a3 + 80);
  v160 = v37;
  v190 = *(a3 + 96);
  v38 = *(a3 + 112);
  v158 = *(a3 + 120);
  v191 = v38;
  v157 = *(a3 + 128);
  v39 = *(a3 + 136);
  v189 = v39;
  *(v188 + 3) = *(a3 + 140);
  v188[0] = *(a3 + 137);
  v152 = *(a3 + 144);
  LODWORD(v161) = *(a3 + 152);
  if (v31)
  {
    sub_1D5B5A498(0, &qword_1EDF04350);
    v40 = swift_allocObject();
    v40[2] = a4;
    v40[3] = a5;
    v40[4] = v32;
    v40[5] = v31;
    swift_bridgeObjectRetain_n();
    sub_1D5DEA510(a4);
    v162 = sub_1D726375C();
  }

  else
  {
    v162 = 0;
  }

  v155 = v32;
  v168 = v32;
  v167 = v31;
  v169 = v31;
  v170 = v156;
  v171 = v164;
  v172 = v192;
  v173 = v35;
  v174 = v34;
  v175 = v165;
  v176 = v36;
  v177 = v159;
  v178 = v160;
  v179 = v190;
  v180 = v191;
  v181 = v158;
  v182 = v157;
  v183 = v39;
  *&v184[3] = *(v188 + 3);
  *v184 = v188[0];
  v185 = v152;
  v186 = v161;
  v154 = a4;
  v41 = v151;
  v166 = PuzzleComponentsViewProvider.menu(with:handler:)(&v187, &v168, a4, a5);
  v148 = v187;
  v153 = a5;
  if (v34)
  {
    v42 = v41[2];
    v43 = sub_1D726203C();
    v44 = objc_opt_self();
    v45 = [v44 imageNamed:v43 inBundle:v42 compatibleWithTraitCollection:0];

    v46 = v45;
    if (!v45)
    {
      v47 = sub_1D726203C();
      v34 = [v44 systemImageNamed_];

      if (!v34)
      {
        v46 = 0;
        goto LABEL_9;
      }

      v46 = v34;
    }

    v48 = v41[4];
    ObjectType = swift_getObjectType();
    v50 = v48[2];
    v51 = v45;
    v52 = v50(ObjectType, v48);
    v34 = [v46 imageByApplyingSymbolConfiguration_];

LABEL_9:
    v53 = v153;
    goto LABEL_11;
  }

  v53 = a5;
  v46 = 0;
LABEL_11:
  v54 = v167;
  sub_1D725CCFC();
  v55 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v55 setImage:v34 forState:0];
  [v55 setMenu_];
  v56 = v155;
  v57 = v55;
  if (v36)
  {
    v58 = sub_1D726203C();
  }

  else
  {
    v58 = 0;
  }

  [v55 setAccessibilityLabel_];

  v59 = v55;
  if (v36)
  {
    v60 = sub_1D726203C();
  }

  else
  {
    v60 = 0;
  }

  v151 = v34;
  [v55 setLargeContentTitle_];

  if (v54)
  {
    v61 = v55;
    v62 = sub_1D725CCEC();
    v63 = swift_allocObject();
    v64 = v154;
    v63[2] = v154;
    v63[3] = v53;
    v63[4] = v56;
    v63[5] = v54;
    sub_1D5DEA510(v64);

    if (_UISolariumFeatureFlagEnabled())
    {
      goto LABEL_19;
    }
  }

  else
  {
    v61 = v55;
    [v55 setShowsMenuAsPrimaryAction_];
    if (_UISolariumFeatureFlagEnabled())
    {
LABEL_19:
      v65 = v61;

      v66 = [objc_allocWithZone(sub_1D725DB7C()) init];
      v67 = v66;
      if (v36)
      {
        v68 = sub_1D726203C();
      }

      else
      {
        v68 = 0;
      }

      v74 = v164;
      [v66 setAccessibilityLabel_];

      v70 = v66;
      v71 = v166;
      [v70 setMenu_];
      [v70 setImage_];

      v54 = v167;
      if (!v74)
      {
        goto LABEL_26;
      }

LABEL_23:
      v72 = v70;

      v73 = sub_1D726203C();
      goto LABEL_27;
    }
  }

  sub_1D725DB7C();
  v65 = v61;
  v69 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];

  v70 = v69;
  sub_1D725DB6C();
  v71 = v166;
  if (v164)
  {
    goto LABEL_23;
  }

LABEL_26:
  v75 = v70;
  v73 = 0;
LABEL_27:
  [v70 setTitle_];

  [v70 setPrimaryAction_];
  if (v54)
  {
    sub_1D725DB5C();
  }

  if ((v161 & 1) == 0)
  {
    [v70 setWidth_];
  }

  v76 = type metadata accessor for PuzzleToolbarItem(0);
  v77 = *(v76 - 1);
  v78 = *(v77 + 56);
  v79 = v77 + 56;
  v78(v163, 1, 1, v76);
  v147 = v46;
  v146 = v65;
  v165 = v78;
  v161 = v79;
  if (v71)
  {
    v164 = v71;

    v80 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v81 = [v80 UUIDString];

    sub_1D726207C();
    sub_1D725D4EC();
    swift_allocObject();
    v82 = sub_1D725D4DC();
    v168 = v82;

    v167 = v151;
    sub_1D725D4BC();
    (*(v140 + 104))(v142, *MEMORY[0x1E69D7DA0], v141);
    sub_1D6A1BB50(&qword_1EC890188, MEMORY[0x1E69D78D0]);

    v83 = v143;
    sub_1D725DF1C();
    v84 = sub_1D725DB4C();
    v86 = v85;
    v87 = v163;
    sub_1D6A1BAF4(v163, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
    v88 = v144;
    v89 = v139;
    v90 = v145;
    (*(v144 + 16))(v139 + v76[5], v83, v145);
    *v89 = v84;
    v89[1] = v86;
    v91 = (v89 + v76[6]);
    v92 = v166;
    *v91 = v82;
    v91[1] = v92;
    v91[2] = 0;
    v93 = (v89 + v76[7]);
    v94 = v154;
    v95 = v153;
    *v93 = v154;
    v93[1] = v95;
    v165(v89, 0, 1, v76);
    sub_1D60EA0DC(v89, v87);
    sub_1D5DEA510(v94);
    v96 = v164;

    v97 = sub_1D725DB4C();
    v99 = v98;

    v100 = v83;
    v56 = v97;
    (*(v88 + 8))(v100, v90);
    v101 = v87;
  }

  else
  {
    if (!v167)
    {
      v56 = sub_1D725DB4C();
      v167 = v102;
    }

    v168 = sub_1D725DB4C();
    v169 = v103;

    MEMORY[0x1DA6F9910](124, 0xE100000000000000);

    v104 = v168;
    v105 = v169;
    v106 = v132;
    sub_1D725894C();
    v107 = sub_1D725893C();
    v109 = v108;
    (*(v133 + 8))(v106, v134);
    v168 = v104;
    v169 = v105;

    MEMORY[0x1DA6F9910](v107, v109);

    v110 = sub_1D725D91C();
    swift_allocObject();
    v111 = sub_1D725D90C();
    if (v151)
    {
      v139 = v110;
      v166 = v70;
      *&v152 = v76;
      v155 = v56;
      v112 = v151;

      v113 = v135;
      *v135 = v112;
      v114 = MEMORY[0x1E69D7E20];
      v115 = v154;
    }

    else
    {
      v116 = v154;
      v113 = v135;
      v117 = v164;
      if (!v164)
      {

        (*(v136 + 56))(v113, 1, 1, v137);
        sub_1D6A1BAF4(v113, &qword_1EC890178, MEMORY[0x1E69D7E28]);
        v101 = v163;
        v99 = v167;
        goto LABEL_40;
      }

      v139 = v110;
      v166 = v70;
      *&v152 = v76;
      v155 = v56;
      *v135 = v156;
      *(v113 + 8) = v117;
      v114 = MEMORY[0x1E69D7E18];
      v115 = v116;
    }

    v118 = v136;
    v119 = v137;
    (*(v136 + 104))(v113, *v114, v137);
    (*(v118 + 56))(v113, 0, 1, v119);
    v120 = v131;
    (*(v118 + 32))(v131, v113, v119);
    v168 = v111;
    (*(v118 + 16))(v130, v120, v119);
    (*(v140 + 104))(v142, *MEMORY[0x1E69D7DA0], v141);
    sub_1D6A1BB50(&qword_1EC890180, MEMORY[0x1E69D7A88]);

    v121 = v143;
    sub_1D725DF1C();

    (*(v118 + 8))(v120, v119);
    v101 = v163;
    sub_1D6A1BAF4(v163, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
    v56 = v155;
    v99 = v167;
    *v101 = v155;
    *(v101 + 1) = v99;
    v122 = v152;
    (*(v144 + 32))(&v101[*(*&v152 + 20)], v121, v145);
    v123 = &v101[*(*&v122 + 24)];
    *v123 = v111 | 0x8000000000000000;
    v123[1] = v56;
    v123[2] = v99;
    v124 = &v101[*(*&v122 + 28)];
    v125 = v153;
    *v124 = v115;
    v124[1] = v125;
    v165(v101, 0, 1, *&v122);

    sub_1D5DEA510(v115);

    v70 = v166;
  }

LABEL_40:
  v126 = type metadata accessor for PuzzleBarButtonItem(0);
  v127 = v149;
  sub_1D60EA0DC(v101, v149 + *(v126 + 24));
  v128 = v189;
  *v127 = v56;
  v127[1] = v99;
  v127[2] = v70;
  *(v127 + *(v126 + 28)) = v128;
  result = (*(*(v126 - 8) + 56))(v127, 0, 1, v126);
  *v150 = v148;
  return result;
}

uint64_t PuzzleComponentsViewProvider.menu(with:handler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a2 + 96);
  if (!*(a2 + 24))
  {
    v8 = *(a2 + 137);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_15:

    result = 0;
    goto LABEL_17;
  }

  v8 = *(a2 + 137);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  v35 = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + 16);

  if (v9)
  {
    v11 = 0;
    v12 = v7 + 32;
    do
    {
      v13 = (v12 + 160 * v11);
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v7 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = v13[1];
        v33[0] = *v13;
        v33[1] = v15;
        v16 = v13[2];
        v17 = v13[3];
        v18 = v13[5];
        v33[4] = v13[4];
        v33[5] = v18;
        v33[2] = v16;
        v33[3] = v17;
        v19 = v13[6];
        v20 = v13[7];
        v21 = v13[8];
        *&v34[9] = *(v13 + 137);
        v33[7] = v20;
        *v34 = v21;
        v33[6] = v19;
        v11 = v14 + 1;
        v22 = v13[7];
        v31[6] = v13[6];
        v31[7] = v22;
        v32[0] = v13[8];
        *(v32 + 9) = *(v13 + 137);
        v23 = v13[3];
        v31[2] = v13[2];
        v31[3] = v23;
        v24 = v13[5];
        v31[4] = v13[4];
        v31[5] = v24;
        v25 = v13[1];
        v31[0] = *v13;
        v31[1] = v25;
        sub_1D5E42C00(v33, v30);
        PuzzleComponentsViewProvider.menuElement(with:handler:)(v31, a3, a4);
        v27 = v26;
        result = sub_1D5E42C5C(v33);
        if (v27)
        {
          break;
        }

        v13 += 10;
        ++v14;
        if (v9 == v11)
        {
          goto LABEL_16;
        }
      }

      MEMORY[0x1DA6F9CE0](result);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      result = sub_1D726278C();
      v12 = v7 + 32;
    }

    while (v9 - 1 != v14);
  }

LABEL_16:
  sub_1D5B5A498(0, &qword_1EC885090);
  result = sub_1D726340C();
  v6 = a1;
LABEL_17:
  if (v8 == 3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v8;
  }

  *v6 = v28;
  return result;
}

uint64_t sub_1D6A17954(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    v5[0] = a3;
    v5[1] = a4;

    v4(v5);
  }

  return result;
}

char *PuzzleComponentsViewProvider.accessoryComponentView(for:colorTheme:handler:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v15 = *a2;
  v14 = *(a2 + 8);
  if (v10 >> 8 == 0xFFFFFFFF && v12 < 4)
  {
    return 0;
  }

  if (v12 >> 62)
  {
    if (v12 >> 62 == 1)
    {
      v27 = objc_allocWithZone(type metadata accessor for PuzzleStackAccessoryView());
      sub_1D67315B8(v8, v7, v10, v9, v11, v12);
      sub_1D6A1AF2C(v15, v14);
      sub_1D5DEA510(a3);

      sub_1D6A1A498(v8, v4, v15, v14, a3, a4, v27);
      v16 = v17;
      sub_1D5B74328(a3);

      if (!v16)
      {
        return v16;
      }

      v18 = &protocol witness table for PuzzleStackAccessoryView;
    }

    else
    {
      v19 = a1[1];
      v29 = *a1;
      v20 = objc_allocWithZone(type metadata accessor for PuzzleButtonsAccessoryView());

      sub_1D67315B8(v8, v7, v10, v9, v11, v12);
      sub_1D5DEA510(a3);

      v16 = sub_1D6A191C8(v29, v19, v8, v4, a3, a4, v20, 52.0);
      if (!v16)
      {
        return v16;
      }

      v18 = &protocol witness table for PuzzleButtonsAccessoryView;
    }
  }

  else
  {
    *&v34 = a1[2];
    *(&v34 + 1) = v7;
    v35 = v10;
    v36 = v9;
    v37 = v11;
    v38 = v12;
    v39 = v13;
    v24 = *(v4 + 24);
    v25 = v5;
    v26 = *(v4 + 32);
    v28 = v6;
    v33[0] = v15;
    v33[1] = v14;
    sub_1D5B68374(v4 + 40, v32);
    objc_allocWithZone(type metadata accessor for PuzzleHintAccessoryView());

    swift_unknownObjectRetain();
    sub_1D67315B8(v8, v7, v10, v9, v11, v12);
    sub_1D6A1AF2C(v15, v14);
    sub_1D5DEA510(a3);
    v16 = sub_1D70D358C(v28, v25, &v34, v24, v26, v33, v32, a3, 59.0, a4);
    sub_1D5B74328(a3);
    swift_unknownObjectRelease();
    if (!v16)
    {
      return v16;
    }

    v18 = &protocol witness table for PuzzleHintAccessoryView;
  }

  swift_getObjectType();
  v21 = v18[4];
  v22 = v16;
  [v22 setFrame_];

  return v16;
}

char *PuzzleComponentsViewProvider.accessoryView(for:colorTheme:handler:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v14[0] = *a1;
  v14[1] = v4;
  v5 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v5;
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v13 = *a2;
  v6 = PuzzleComponentsViewProvider.accessoryComponentView(for:colorTheme:handler:)(v14, &v13, a3, a4);
  v8 = v7;
  if (qword_1EC87D8C0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC890110;
  sub_1D6A1880C(v6, v8);
  v10 = &v9[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView];
  v11 = *&v9[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView];
  *v10 = v6;
  v10[1] = v8;

  return v9;
}

uint64_t PuzzleComponentsViewProvider.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  return v0;
}

uint64_t PuzzleComponentsViewProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6A17E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];

  sub_1D5DEA510(a2);
  sub_1D6A1AA80(v8, v4, a2, a3, &v12, &v11);
  sub_1D5B74328(a2);

  v10 = v11;
  *a4 = v12;
  a4[1] = v10;
  return result;
}

void PuzzleComponentsViewProvider.menuElement(with:handler:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[12];
  v7 = a1[14];
  v40 = *a1;
  v41 = a1[1];
  if (!a1[7])
  {

    v12 = 0;
    v13 = v41;
    if (!v41)
    {
      goto LABEL_19;
    }

    goto LABEL_4;
  }

  v8 = *(v4 + 16);

  v9 = v8;

  v10 = sub_1D726203C();
  v11 = objc_opt_self();
  v12 = [v11 imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  if (!v12)
  {
    v39 = sub_1D726203C();
    v12 = [v11 systemImageNamed_];

    v13 = v41;
    if (!v41)
    {
      goto LABEL_19;
    }

LABEL_4:
    if (v7)
    {
      v14 = *(v7 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = (v7 + 32);
        do
        {
          v19 = *v16++;
          v18 = v19;
          if (v19)
          {
            if (v18 == 1)
            {
              v17 = __CFADD__(v15++, 1);
              if (v17)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v17 = __CFADD__(v15, 8);
              v15 += 8;
              if (v17)
              {
                __break(1u);
                break;
              }
            }
          }

          else
          {
            v17 = __CFADD__(v15, 2);
            v15 += 2;
            if (v17)
            {
              goto LABEL_36;
            }
          }

          --v14;
        }

        while (v14);
      }
    }

    sub_1D5B5A498(0, &qword_1EDF04350);
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = v40;
    v20[5] = v13;

    sub_1D5DEA510(a2);
    sub_1D726375C();
    return;
  }

  v13 = v41;
  if (v41)
  {
    goto LABEL_4;
  }

LABEL_19:
  if (v6)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v21 = *(v6 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = v6 + 32;
      while (2)
      {
        v24 = (v23 + 160 * v22);
        v25 = v22;
        while (1)
        {
          if (v25 >= *(v6 + 16))
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            return;
          }

          v26 = v24[1];
          v46[0] = *v24;
          v46[1] = v26;
          v27 = v24[2];
          v28 = v24[3];
          v29 = v24[5];
          v46[4] = v24[4];
          v46[5] = v29;
          v46[2] = v27;
          v46[3] = v28;
          v30 = v24[6];
          v31 = v24[7];
          v32 = v24[8];
          *&v47[9] = *(v24 + 137);
          v46[7] = v31;
          *v47 = v32;
          v46[6] = v30;
          v22 = v25 + 1;
          v33 = v24[7];
          v44[6] = v24[6];
          v44[7] = v33;
          v45[0] = v24[8];
          *(v45 + 9) = *(v24 + 137);
          v34 = v24[3];
          v44[2] = v24[2];
          v44[3] = v34;
          v35 = v24[5];
          v44[4] = v24[4];
          v44[5] = v35;
          v36 = v24[1];
          v44[0] = *v24;
          v44[1] = v36;
          sub_1D5E42C00(v46, v43);
          v37 = PuzzleComponentsViewProvider.menuElement(with:handler:)(v44, a2, a3);
          v38 = sub_1D5E42C5C(v46);
          if (v37)
          {
            break;
          }

          v24 += 10;
          ++v25;
          if (v21 == v22)
          {
            goto LABEL_33;
          }
        }

        MEMORY[0x1DA6F9CE0](v38);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v23 = v6 + 32;
        if (v21 - 1 != v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_33:
    sub_1D5B5A498(0, &qword_1EC885090);
    sub_1D726340C();
  }

  else
  {
  }
}

id sub_1D6A18394(void *a1)
{
  v2 = v1;
  result = [a1 input];
  if (result)
  {
    v4 = result;
    v5 = sub_1D726207C();
    v7 = v6;

    v8 = OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_events;
    swift_beginAccess();
    v9 = *&v2[v8];
    if (*(v9 + 16) && (, v10 = sub_1D5B69D90(v5, v7), v12 = v11, , (v12 & 1) != 0))
    {
      v13 = (*(v9 + 56) + 32 * v10);
      v15 = *v13;
      v14 = v13[1];
      v17 = v13[2];
      v16 = v13[3];

      v18 = *&v2[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_handler];
      if (v18)
      {
        v19[0] = v15;
        v19[1] = v14;
        v19[2] = v17;
        v19[3] = v16;

        v18(v19);
        sub_1D5B74328(v18);
      }

      return [v2 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D6A18774(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7[0] = a4;
    v7[1] = a5;

    a2(v7);
  }

  return result;
}

id sub_1D6A187C8()
{
  result = [objc_allocWithZone(type metadata accessor for AccessoryViewContainer()) initWithFrame_];
  qword_1EC890110 = result;
  return result;
}

void sub_1D6A1880C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D726001C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a2 + 32))(ObjectType, a2);
    v12 = &v2[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height];
    *&v2[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height] = v11;
    v13 = [a1 heightAnchor];
    v14 = [v13 constraintEqualToConstant_];
  }

  else
  {
    v14 = 0;
    v12 = &v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height];
    *&v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height] = 0;
  }

  v15 = OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_heightConstraint;
  v16 = *&v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_heightConstraint];
  *&v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_heightConstraint] = v14;

  v17 = *&v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView];
  if (v17)
  {
    [v17 removeFromSuperview];
  }

  if (a1)
  {
    v41[1] = v9;
    [v3 addSubview_];
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v42 = objc_opt_self();
    sub_1D5E42B34();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7298B00;
    v19 = a1;
    v20 = [v19 leadingAnchor];
    v21 = [v3 leadingAnchor];
    v22 = &v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_edgeInsets];
    v23 = [v20 constraintEqualToAnchor:v21 constant:*&v3[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_edgeInsets + 8]];

    *(v18 + 32) = v23;
    v24 = [v19 trailingAnchor];
    v25 = [v3 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-v22[3]];

    *(v18 + 40) = v26;
    v27 = [v19 topAnchor];
    v28 = [v3 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:*v22];

    *(v18 + 48) = v29;
    v30 = [v19 bottomAnchor];
    v31 = [v3 layoutMarginsGuide];
    v32 = [v31 bottomAnchor];

    v33 = [v30 constraintEqualToAnchor:v32 constant:-v22[2]];
    *(v18 + 56) = v33;
    sub_1D5B5A498(0, &qword_1EC87FF48);
    v34 = sub_1D726265C();

    [v42 activateConstraints_];

    if (_UISolariumFeatureFlagEnabled())
    {
      v35 = v19;
      sub_1D725FF7C();
      v43[3] = sub_1D726005C();
      v43[4] = MEMORY[0x1E69DC388];
      __swift_allocate_boxed_opaque_existential_1(v43);
      sub_1D726006C();
      sub_1D72634CC();

      v36 = [v35 layer];
      v37 = v36;
      v38 = *v12 * 0.5;
      if (v38 > 32.0)
      {
        v38 = 32.0;
      }

      [v36 setCornerRadius_];
    }

    v39 = *&v3[v15];
    if (v39)
    {
      v40 = v39;
      [v40 setActive_];
    }
  }
}

id sub_1D6A18C88(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_identifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (_UISolariumFeatureFlagEnabled())
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  __asm { FMOV            V2.2D, #8.0 }

  v17 = vbslq_s8(v11, _Q2, *(MEMORY[0x1E69DDCE0] + 16));
  v18 = &v4[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_edgeInsets];
  *v18 = vbslq_s8(v11, xmmword_1D7312550, *MEMORY[0x1E69DDCE0]);
  v18[1] = v17;
  v19 = &v4[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_heightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for AccessoryViewContainer();
  v20 = objc_msgSendSuper2(&v22, sel_initWithFrame_inputViewStyle_, 0, a1, a2, a3, a4);
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  return v20;
}

id sub_1D6A18E94(double a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView];
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView];
  v5 = 0.0;
  if (v4)
  {
    v7 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 40);
    v10 = v4;
    v9(ObjectType, v7, a1);

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v3 + 1);
      v13 = swift_getObjectType();
      v14 = *(v12 + 32);
      v15 = v11;
      v5 = v14(v13, v12);
    }
  }

  *&v2[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height] = v5;
  [*&v2[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_heightConstraint] setConstant_];

  return [v2 setNeedsUpdateConstraints];
}

id sub_1D6A18FFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D6A1909C()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D6A190F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *sub_1D6A191C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, double a8)
{
  ObjectType = swift_getObjectType();
  v14 = 0;
  v15 = &a7[OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_identifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v95 = a7;
  *&a7[OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_spacing] = 0x4020000000000000;
  v16 = MEMORY[0x1E69E7CC0];
  v101 = MEMORY[0x1E69E7CC0];
  v17 = *(a3 + 16);
  v18 = 32;
LABEL_2:
  v19 = v18;
  v20 = v18 + 56 * v14;
  while (v17 != v14)
  {
    if (v14 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v14;
    v21 = v20 + 56;
    v22 = a3 + v20;
    v23 = *(v22 + 16);
    v102[0] = *v22;
    v102[1] = v23;
    v102[2] = *(v22 + 32);
    v103 = *(v22 + 48);
    sub_1D5E42B98(v102, v100);
    v24 = sub_1D6A19C98(a1, a2, v102, a4, a5, a6);
    v25 = sub_1D6A1B8FC(v102);
    v20 = v21;
    if (v24)
    {
      MEMORY[0x1DA6F9CE0](v25);
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v16 = v101;
      v18 = v19;
      goto LABEL_2;
    }
  }

  v17 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_29:
  v26 = sub_1D7263BFC();
LABEL_11:
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v100[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D699758C(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v27 = v100[0];
    v30 = *MEMORY[0x1E69DE090];
    v31 = *(MEMORY[0x1E69DE090] + 8);
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1DA6FB460](v29, v16);
      }

      else
      {
        v32 = *(v16 + 8 * v29 + 32);
      }

      v33 = v32;
      [v32 systemLayoutSizeFittingSize_];
      v35 = v34;

      v100[0] = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D699758C((v36 > 1), v37 + 1, 1);
        v27 = v100[0];
      }

      ++v29;
      *(v27 + 16) = v37 + 1;
      *(v27 + 8 * v37 + 32) = v35;
    }

    while (v26 != v29);
  }

  *&v38 = COERCE_DOUBLE(sub_1D71F5B54(v27));
  v40 = v39;

  v41 = *&v38;
  if (v40)
  {
    v41 = 0.0;
  }

  if (v41 <= a8)
  {
    v41 = a8;
  }

  *&v95[OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_height] = v41;
  if (v17)
  {
    sub_1D5B5A498(0, &qword_1EDF1A710);

    sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5A498(0, &qword_1EDF1A710);
  }

  v42 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v43 = sub_1D726265C();

  v44 = [v42 initWithArrangedSubviews_];

  v45 = v44;
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 setAxis_];
  [v45 setDistribution_];
  [v45 setAlignment_];
  [v45 setSpacing_];
  [v45 setLayoutMarginsRelativeArrangement_];
  v93 = v45;
  [v45 setLayoutMargins_];
  v99.receiver = v95;
  v99.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v99, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v47 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v48 = v46;
  v49 = [v47 init];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = v48;
  [v51 addSubview_];
  [v50 addSubview_];
  [v49 addSubview_];
  v96 = objc_opt_self();
  sub_1D5E42B34();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1D72783A0;
  v53 = [v50 topAnchor];
  v54 = [v51 &selRef_dataProvider];
  v55 = [v53 constraintEqualToAnchor_];

  *(v52 + 32) = v55;
  v56 = [v50 leadingAnchor];
  v57 = [v51 &off_1E84D3528 + 1];

  v58 = [v56 &selRef_size + 5];
  *(v52 + 40) = v58;
  v59 = [v50 trailingAnchor];
  v60 = [v51 &selRef_setAxis_ + 4];

  v61 = [v59 &selRef_size + 5];
  *(v52 + 48) = v61;
  v62 = [v50 bottomAnchor];
  v63 = [v51 &selRef_setNeedsLayout + 5];

  v64 = [v62 &selRef_size + 5];
  *(v52 + 56) = v64;
  v65 = [v49 topAnchor];
  v66 = [v50 topAnchor];
  v67 = [v65 &selRef_size + 5];

  *(v52 + 64) = v67;
  v68 = [v49 leadingAnchor];
  v69 = [v50 leadingAnchor];
  v70 = [v68 &selRef_size + 5];

  *(v52 + 72) = v70;
  v71 = [v49 trailingAnchor];
  v72 = [v50 trailingAnchor];
  v73 = [v71 &selRef_size + 5];

  *(v52 + 80) = v73;
  v74 = [v49 bottomAnchor];
  v75 = [v50 bottomAnchor];
  v76 = [v74 &selRef_size + 5];

  *(v52 + 88) = v76;
  v77 = [v49 heightAnchor];
  v78 = [v50 heightAnchor];

  v79 = [v77 &selRef_size + 5];
  *(v52 + 96) = v79;
  v80 = [v93 topAnchor];
  v81 = [v49 topAnchor];
  v82 = [v80 &selRef_size + 5];

  *(v52 + 104) = v82;
  v83 = [v93 leadingAnchor];
  v84 = [v49 leadingAnchor];
  v85 = [v83 &selRef_size + 5];

  *(v52 + 112) = v85;
  v86 = [v93 trailingAnchor];
  v87 = [v49 trailingAnchor];
  v88 = [v86 &selRef_size + 5];

  *(v52 + 120) = v88;
  v89 = [v93 bottomAnchor];

  v90 = [v49 bottomAnchor];
  v91 = [v89 &selRef_size + 5];

  *(v52 + 128) = v91;
  sub_1D5B5A498(0, &qword_1EC87FF48);
  v92 = sub_1D726265C();

  [v96 activateConstraints_];

  sub_1D5B74328(a5);

  return v51;
}

id sub_1D6A19C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = a1;
  v81 = a6;
  v79 = a4;
  v75 = sub_1D7257FAC();
  v73 = *(v75 - 1);
  MEMORY[0x1EEE9AC00](v75, v9);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D7257FBC();
  v11 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7257FDC();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v70 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B549D8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v68 - v20;
  sub_1D5B549D8(0, &qword_1EC87FF50, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v68 - v24;
  v26 = sub_1D726389C();
  v77 = *(v26 - 8);
  v78 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v74 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v76 = &v68 - v31;
  sub_1D726382C();
  if (*(a3 + 24))
  {
    v69 = *(a3 + 16);
  }

  else
  {
    v69 = 0;
  }

  v32 = sub_1D72585BC();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  (*(v11 + 104))(v14, *MEMORY[0x1E6968750], v71);
  (*(v73 + 104))(v72, *MEMORY[0x1E6968728], v75);

  sub_1D7257FCC();
  sub_1D725809C();
  v73 = 0;
  v33 = sub_1D72580BC();
  (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
  v34 = v76;
  sub_1D72637DC();
  if (*(a3 + 40))
  {
    v35 = sub_1D726203C();
    v36 = [objc_opt_self() systemImageNamed_];

    sub_1D726384C();
  }

  v37 = [objc_opt_self() labelColor];
  sub_1D726380C();
  sub_1D5B5A498(0, &qword_1EC87FF58);
  (*(v77 + 16))(v74, v34, v78);
  sub_1D5B5A498(0, &qword_1EDF04350);
  v38 = swift_allocObject();
  v39 = v80;
  v40 = v81;
  *(v38 + 16) = a5;
  *(v38 + 24) = v40;
  *(v38 + 32) = v39;
  *(v38 + 40) = a2;
  v41 = *(a3 + 16);
  *(v38 + 48) = *a3;
  *(v38 + 64) = v41;
  *(v38 + 80) = *(a3 + 32);
  *(v38 + 96) = *(a3 + 48);

  sub_1D5DEA510(a5);
  sub_1D5E42B98(a3, v85);
  sub_1D726375C();
  result = sub_1D72638AC();
  v43 = result;
  v44 = *(a3 + 48);
  if (v44)
  {
    v75 = result;
    v45 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC0];
    v46 = *(v44 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = (v44 + 32);
      v72 = v48;
      do
      {
        v74 = v45;
        v49 = &v48[160 * v47];
        v50 = v47;
        while (1)
        {
          if (v50 >= v46)
          {
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v51 = *(v49 + 1);
          v85[0] = *v49;
          v85[1] = v51;
          v52 = *(v49 + 2);
          v53 = *(v49 + 3);
          v54 = *(v49 + 5);
          v85[4] = *(v49 + 4);
          v85[5] = v54;
          v85[2] = v52;
          v85[3] = v53;
          v55 = *(v49 + 6);
          v56 = *(v49 + 7);
          v57 = *(v49 + 8);
          *(v86 + 9) = *(v49 + 137);
          v85[7] = v56;
          v86[0] = v57;
          v85[6] = v55;
          v47 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_21;
          }

          v58 = *(v49 + 7);
          v83[6] = *(v49 + 6);
          v83[7] = v58;
          v84[0] = *(v49 + 8);
          *(v84 + 9) = *(v49 + 137);
          v59 = *(v49 + 3);
          v83[2] = *(v49 + 2);
          v83[3] = v59;
          v60 = *(v49 + 5);
          v83[4] = *(v49 + 4);
          v83[5] = v60;
          v61 = *(v49 + 1);
          v83[0] = *v49;
          v83[1] = v61;
          v62 = swift_allocObject();
          v63 = v80;
          v64 = v81;
          v62[2] = a5;
          v62[3] = v64;
          v62[4] = v63;
          v62[5] = a2;

          sub_1D5DEA510(a5);
          sub_1D5E42C00(v85, &v82);
          PuzzleComponentsViewProvider.menuElement(with:handler:)(v83, sub_1D5E42BF4, v62);
          v66 = v65;

          result = sub_1D5E42C5C(v85);
          if (v66)
          {
            break;
          }

          ++v50;
          v49 += 160;
          if (v47 == v46)
          {
            v34 = v76;
            goto LABEL_18;
          }
        }

        MEMORY[0x1DA6F9CE0](result);
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        result = sub_1D726278C();
        v45 = v87;
        v34 = v76;
        v48 = v72;
      }

      while (v47 != v46);
    }

LABEL_18:
    sub_1D5B5A498(0, &qword_1EC885090);
    v67 = sub_1D72633FC();
    v43 = v75;
    [v75 setShowsMenuAsPrimaryAction_];
    [v43 setMenu_];
  }

  (*(v77 + 8))(v34, v78);
  return v43;
}

void sub_1D6A1A498(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, char *a7)
{
  v51.super_class = swift_getObjectType();
  v51.receiver = a7;
  v9 = &a7[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier];
  v10 = a1;
  *v9 = 0;
  *(v9 + 1) = 0;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  v48 = v11 - 1;
  v49 = a1 + 32;
  v55 = *(a1 + 16);
  v56 = a1;
  do
  {
    v50 = v14;
    v15 = (v13 + 72 * v12);
    v16 = v12;
    while (1)
    {
      if (v16 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v18 = v15[3];
      v76 = v15[2];
      v77 = v18;
      v19 = *(v15 + 8);
      v78 = v19;
      v20 = v15[1];
      v74 = *v15;
      v75 = v20;
      v21 = v20;
      v22 = v76;
      v23 = v18;
      if (v76 >> 8 != 0xFFFFFFFF || *(&v77 + 1) >= 4uLL)
      {
        break;
      }

LABEL_6:
      ++v16;
      v15 = (v15 + 72);
      if (v11 == v16)
      {
        goto LABEL_25;
      }
    }

    v24 = *(&v74 + 1);
    if (*(&v77 + 1) >> 62)
    {
      if (*(&v77 + 1) >> 62 == 1)
      {
        v25 = objc_allocWithZone(v51.super_class);
        sub_1D6007B88(&v74, v73);
        sub_1D67315B8(v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1));
        sub_1D6A1AF2C(a3, a4);
        sub_1D5DEA510(a5);

        v26 = sub_1D6A1A498(v21, a2, a3, a4, a5, a6, v25);
        sub_1D5B74328(a5);

        if (v26)
        {
          v27 = v26;
          v28 = &protocol witness table for PuzzleStackAccessoryView;
          goto LABEL_17;
        }
      }

      else
      {
        v63 = v74;
        v54 = objc_allocWithZone(type metadata accessor for PuzzleButtonsAccessoryView());

        sub_1D6007B88(&v74, v73);
        sub_1D67315B8(v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1));
        sub_1D5DEA510(a5);

        v27 = sub_1D6A191C8(v63, v24, v21, a2, a5, a6, v54, 52.0);
        if (v27)
        {
          v28 = &protocol witness table for PuzzleButtonsAccessoryView;
          goto LABEL_17;
        }
      }

LABEL_5:
      sub_1D6007C34(&v74);
      v11 = v55;
      v10 = v56;
      goto LABEL_6;
    }

    v67 = v75;
    v68 = v76;
    v69 = *(&v76 + 1);
    v70 = v77;
    v71 = BYTE8(v77);
    v72 = v19;
    v52 = *(a2 + 32);
    v53 = *(a2 + 24);
    v66[0] = a3;
    v66[1] = a4;
    v62 = v74;
    sub_1D5B68374(a2 + 40, v65);
    objc_allocWithZone(type metadata accessor for PuzzleHintAccessoryView());

    swift_unknownObjectRetain();
    sub_1D6007B88(&v74, v73);
    sub_1D67315B8(v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1));
    sub_1D6A1AF2C(a3, a4);
    sub_1D5DEA510(a5);
    v17 = sub_1D70D358C(v62, v24, &v67, v53, v52, v66, v65, a5, 59.0, a6);
    sub_1D5B74328(a5);
    swift_unknownObjectRelease();
    if (!v17)
    {
      goto LABEL_5;
    }

    v27 = v17;
    v28 = &protocol witness table for PuzzleHintAccessoryView;
LABEL_17:
    v29 = v27;
    swift_getObjectType();
    v30 = v28[4];
    v31 = v29;
    [v31 setFrame_];

    sub_1D6007C34(&v74);
    v14 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1D6990074(0, v50[2] + 1, 1, v50);
    }

    v33 = v14[2];
    v32 = v14[3];
    if (v33 >= v32 >> 1)
    {
      v14 = sub_1D6990074((v32 > 1), v33 + 1, 1, v14);
    }

    v12 = v16 + 1;
    v14[2] = v33 + 1;
    v34 = &v14[2 * v33];
    v34[4] = v31;
    v34[5] = v28;
    v13 = v49;
    v11 = v55;
    v10 = v56;
  }

  while (v48 != v16);
LABEL_25:
  sub_1D5DEA2E0(a3, a4);

  v35 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews;
  *(v51.receiver + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews) = v14;
  v36 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v37 = *(v51.receiver + v35);
  v38 = *(v37 + 16);

  if (v38)
  {
    v39 = 0;
    v40 = (v37 + 40);
    v41 = 0.0;
    while (v39 < *(v37 + 16))
    {
      ++v39;
      v42 = *(v40 - 1);
      v43 = *v40;
      ObjectType = swift_getObjectType();
      v45 = v42;
      [v36 addSubview_];
      v46 = (*(v43 + 32))(ObjectType, v43);

      v41 = v41 + v46;
      v40 += 2;
      if (v38 == v39)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {
    v41 = 0.0;
LABEL_31:

    *(v51.receiver + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height) = v41;
    *(v51.receiver + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView) = v36;
    v64 = v51;
    v47 = v36;
    [objc_msgSendSuper2(&v64 initWithFrame_];
  }
}

void sub_1D6A1AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5, size_t *a6)
{
  v57 = a5;
  v58 = a6;
  v74 = a3;
  v62 = type metadata accessor for PuzzleBarButtonItem(0);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - v15;
  sub_1D5B549D8(0, &qword_1EC890170, type metadata accessor for PuzzleBarButtonItem);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v53 - v23);
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = (a1 + 32);
    v60 = (v59 + 48);
    v61 = v16;
    v54 = a4;
    do
    {
      v27 = v26[7];
      v28 = v26[5];
      v71 = v26[6];
      v72 = v27;
      v29 = v26[7];
      v73[0] = v26[8];
      *(v73 + 9) = *(v26 + 137);
      v30 = v26[3];
      v31 = v26[1];
      v67 = v26[2];
      v68 = v30;
      v32 = v26[3];
      v33 = v26[5];
      v69 = v26[4];
      v70 = v33;
      v34 = v26[1];
      v66[0] = *v26;
      v66[1] = v34;
      v64[6] = v71;
      v64[7] = v29;
      v65[0] = v26[8];
      *(v65 + 9) = *(v26 + 137);
      v64[2] = v67;
      v64[3] = v32;
      v64[4] = v69;
      v64[5] = v28;
      v64[0] = v66[0];
      v64[1] = v31;
      sub_1D5E42C00(v66, v63);
      sub_1D6A1634C(v24, v63, v64, v74, a4);
      v35 = v63[0];
      sub_1D6A1B950(v24, v20);
      if ((*v60)(v20, 1, v62) == 1)
      {
        sub_1D6A1BAF4(v24, &qword_1EC890170, type metadata accessor for PuzzleBarButtonItem);
        v16 = v61;
        sub_1D6A1BAF4(v20, &qword_1EC890170, type metadata accessor for PuzzleBarButtonItem);
      }

      else
      {
        sub_1D6A1B9D0(v20, v16);
        if (v35 == 1)
        {
          sub_1D6A1BA34(v16, v55);
          v36 = v57;
          v37 = *v57;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v36 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = sub_1D699215C(0, v37[2] + 1, 1, v37);
            *v57 = v37;
          }

          v40 = v37[2];
          v39 = v37[3];
          if (v40 >= v39 >> 1)
          {
            v51 = sub_1D699215C(v39 > 1, v40 + 1, 1, v37);
            *v57 = v51;
          }

          v16 = v61;
          sub_1D6A1BA98(v61);
          sub_1D6A1BAF4(v24, &qword_1EC890170, type metadata accessor for PuzzleBarButtonItem);
          v41 = *v57;
          *(v41 + 16) = v40 + 1;
          v42 = v41 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40;
          v43 = v55;
        }

        else
        {
          sub_1D6A1BA34(v16, v56);
          v44 = v58;
          v45 = *v58;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *v44 = v45;
          if ((v46 & 1) == 0)
          {
            v45 = sub_1D699215C(0, v45[2] + 1, 1, v45);
            *v58 = v45;
          }

          v48 = v45[2];
          v47 = v45[3];
          if (v48 >= v47 >> 1)
          {
            v52 = sub_1D699215C(v47 > 1, v48 + 1, 1, v45);
            *v58 = v52;
          }

          v16 = v61;
          sub_1D6A1BA98(v61);
          sub_1D6A1BAF4(v24, &qword_1EC890170, type metadata accessor for PuzzleBarButtonItem);
          v49 = v59;
          v50 = *v58;
          *(v50 + 16) = v48 + 1;
          v42 = v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48;
          v43 = v56;
        }

        sub_1D6A1B9D0(v43, v42);
        a4 = v54;
      }

      sub_1D5E42C5C(v66);
      v26 += 10;
      --v25;
    }

    while (v25);
  }
}

id sub_1D6A1AF2C(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t _s8NewsFeed28PuzzleComponentsViewProviderC5alert3for7handlerSo17UIAlertControllerCAA0C18AlertConfigurationV_yAA0c9ComponentL5EventVcSgtF_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v57 = *a1;
  v58 = a1[1];
  v3 = a1[5];
  v4 = a1[6];
  if (a1[3])
  {
    v5 = sub_1D726203C();
    if (v3)
    {
LABEL_3:
      v6 = sub_1D726203C();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  type metadata accessor for PuzzleAlertController();
  v7 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = &v7[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_handler];
  v9 = *&v7[OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_handler];
  *v8 = a2;
  v8[1] = a3;
  sub_1D5B74328(v9);
  if (!v4)
  {
    sub_1D5DEA510(a2);
    return v7;
  }

  v10 = *(v4 + 16);
  v47 = OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_commands;
  v54 = OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_events;
  sub_1D5DEA510(a2);
  v49 = v10;
  if (!v10)
  {
    return v7;
  }

  v11 = 0;
  v46 = *MEMORY[0x1E69DDEA0];
  v12 = (v4 + 64);
  v48 = v4;
  v56 = v7;
  while (v11 < *(v4 + 16))
  {
    v14 = *(v12 - 4);
    v13 = *(v12 - 3);
    v15 = *(v12 - 1);
    v16 = *v12;
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = v57;
    v17[5] = v58;
    v55 = v14;
    v17[6] = v14;
    v17[7] = v13;
    v18 = v13;
    sub_1D5DEA510(a2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    if (v15)
    {
      swift_bridgeObjectRetain_n();
      v19 = sub_1D726203C();
    }

    else
    {
      v19 = 0;
    }

    v7 = v56;
    aBlock[4] = sub_1D6A1B8B0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5C38428;
    aBlock[3] = &block_descriptor_63;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:v16 handler:v20];
    _Block_release(v20);

    [v56 addAction_];
    if (v16 == 1)
    {

LABEL_18:
      v52 = v21;
      v23 = sub_1D726207C();
      v53 = v24;
      v25 = [objc_opt_self() keyCommandWithInput:v46 modifierFlags:0 action:sel_didPressKey_];
      swift_beginAccess();
      v26 = v25;
      MEMORY[0x1DA6F9CE0]();
      if (*((*&v56[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v56[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v27 = v26;
      sub_1D726278C();
      swift_endAccess();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *&v56[v54];
      *&v56[v54] = 0x8000000000000000;
      v31 = sub_1D5B69D90(v23, v53);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_35;
      }

      v35 = v30;
      if (v29[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v38 = v27;
          if ((v30 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1D6D85B64();
          v38 = v27;
          if ((v35 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_1D6D7422C(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_1D5B69D90(v23, v53);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_37;
        }

        v31 = v36;
        v38 = v27;
        if ((v35 & 1) == 0)
        {
LABEL_29:
          v29[(v31 >> 6) + 8] |= 1 << v31;
          v40 = (v29[6] + 16 * v31);
          *v40 = v23;
          v40[1] = v53;
          v41 = (v29[7] + 32 * v31);
          *v41 = v57;
          v41[1] = v58;
          v41[2] = v55;
          v41[3] = v18;
          v42 = v29[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_36;
          }

          v29[2] = v44;
          goto LABEL_31;
        }
      }

      v39 = (v29[7] + 32 * v31);
      *v39 = v57;
      v39[1] = v58;
      v39[2] = v55;
      v39[3] = v18;

LABEL_31:
      v7 = v56;
      *&v56[v54] = v29;
      swift_endAccess();

      swift_bridgeObjectRelease_n();

      goto LABEL_10;
    }

    v22 = sub_1D72646CC();

    if (v22)
    {
      goto LABEL_18;
    }

    swift_bridgeObjectRelease_n();
LABEL_10:
    ++v11;

    v12 += 40;
    v4 = v48;
    if (v49 == v11)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

unint64_t sub_1D6A1B5BC()
{
  result = qword_1EC890120;
  if (!qword_1EC890120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890120);
  }

  return result;
}

void sub_1D6A1B794()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_identifier);
  *v1 = 0;
  v1[1] = 0;
  if (_UISolariumFeatureFlagEnabled())
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  v3 = vdupq_n_s64(v2);
  __asm { FMOV            V2.2D, #8.0 }

  v9 = vbslq_s8(v3, _Q2, *(MEMORY[0x1E69DDCE0] + 16));
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_edgeInsets);
  *v10 = vbslq_s8(v3, xmmword_1D7312550, *MEMORY[0x1E69DDCE0]);
  v10[1] = v9;
  v11 = (v0 + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_accessoryView);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_heightConstraint) = 0;
  sub_1D726402C();
  __break(1u);
}

unint64_t sub_1D6A1B85C()
{
  result = qword_1EC890168;
  if (!qword_1EC890168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890168);
  }

  return result;
}

uint64_t sub_1D6A1B8B0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = v3;
    v7 = v2;
    return v1(&v5);
  }

  return result;
}

uint64_t sub_1D6A1B950(uint64_t a1, uint64_t a2)
{
  sub_1D5B549D8(0, &qword_1EC890170, type metadata accessor for PuzzleBarButtonItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A1B9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleBarButtonItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A1BA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleBarButtonItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A1BA98(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleBarButtonItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6A1BAF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B549D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6A1BB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6A1BBE4()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A1BC50()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A1BCA0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6A1BDC0(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a3;
  v9 = type metadata accessor for FeedItemDismissalRecord();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v39 - v15);
  v17 = *a1;
  if (*a1)
  {
    v41 = v9;
    v42 = a1;
    v40 = v5;
    if (qword_1EDF2B798 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B6D3A0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = sub_1D6D88EB4();
      if (v21)
      {
        v19 = *(*(*(v17 + 56) + 8 * v20) + 16);
      }

      else
      {
        v19 = 0;
      }
    }

    v27 = MEMORY[0x1E69E65A8];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v27;
    *(v18 + 32) = v19;
    sub_1D725C30C();
  }

  else
  {
    v22 = sub_1D5BD680C();
    if (!v5)
    {
      v17 = v22;
      if (!*(v22 + 16))
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v41 = v9;
    v42 = a1;
    v40 = a2;
    v17 = sub_1D5D65058(MEMORY[0x1E69E7CC0]);
    if (qword_1EDF2B798 != -1)
    {
      swift_once();
    }

    sub_1D5B6D3A0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    swift_getErrorValue();
    v24 = sub_1D726497C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D5B7E2C0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  v9 = v41;
  a1 = v42;
  if (!*(v17 + 16))
  {
LABEL_17:
    v30 = sub_1D605E1BC(MEMORY[0x1E69E7CC0]);
    goto LABEL_18;
  }

LABEL_14:
  v28 = sub_1D6D88EB4();
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v30 = *(*(v17 + 56) + 8 * v28);

LABEL_18:
  v31 = *(v9 + 20);
  v32 = sub_1D725891C();
  (*(*(v32 - 8) + 16))(v16 + v31, v43, v32);
  v33 = v44;
  *v16 = v44;
  v16[1] = a4;
  sub_1D6A1CE94(v16, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v30;
  sub_1D6D7BC18(v12, v33, a4, isUniquelyReferenced_nonNull_native);
  v35 = v45;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v17;
  sub_1D6D7BAE0(v35, v36);
  *a1 = v45;

  sub_1D6A1C4B0(v37);
}

void sub_1D6A1C1E8(unint64_t *a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;

  *a1 = sub_1D5D65058(MEMORY[0x1E69E7CC0]);
  v7 = [objc_opt_self() defaultManager];
  sub_1D5BD6D9C();
  v8 = sub_1D725844C();
  (*(v3 + 8))(v6, v2);
  v17[0] = 0;
  LODWORD(v2) = [v7 removeItemAtURL:v8 error:v17];

  if (v2)
  {
    v9 = v17[0];
  }

  else
  {
    v10 = v17[0];
    v11 = sub_1D725829C();

    swift_willThrow();
    if (qword_1EDF2B798 != -1)
    {
      swift_once();
    }

    sub_1D5B6D3A0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    swift_getErrorValue();
    v13 = sub_1D726497C();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D5B7E2C0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_1D7262EDC();
    sub_1D725C30C();
  }
}

uint64_t sub_1D6A1C4B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7261ABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7261B2C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 40);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1D6A1D258;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_64;
  v14 = _Block_copy(aBlock);

  sub_1D7261AEC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5B710E8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v15 = MEMORY[0x1E69E7F60];
  sub_1D5B6D3A0(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5B632D0(&qword_1EDF1B560, &qword_1EDF1B570, v15);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_1D6A1C8E8(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1D72585BC();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725C34C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - v12;
  v14 = sub_1D725C37C();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2B798 != -1)
  {
    swift_once();
  }

  v31 = v4;
  v18 = qword_1EDFFCAC8;
  sub_1D725C35C();
  sub_1D725C36C();
  sub_1D725C32C();
  v19 = sub_1D725C36C();
  v20 = sub_1D726315C();
  if (sub_1D72638EC())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v19, v20, v22, "News.NewsFeed.FileBasedDismissalStorage.saveToDisk", "", v21, 2u);
    MEMORY[0x1DA6FD500](v21, -1, -1);
  }

  (*(v6 + 16))(v9, v13, v5);
  sub_1D725C3BC();
  swift_allocObject();
  sub_1D725C3AC();
  (*(v6 + 8))(v13, v5);
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  v38 = v34;
  sub_1D6A1CEF8();
  sub_1D6A1D0D0(&qword_1EC8901B8, sub_1D6A1D154, sub_1D6A1D1A8);
  v23 = v35;
  v24 = sub_1D72578BC();
  if (v23)
  {
  }

  else
  {
    v26 = v24;
    v27 = v25;

    v28 = v31;
    sub_1D5BD6D9C();
    sub_1D725869C();
    (*(v32 + 8))(v28, v33);
    sub_1D5B952F8(v26, v27);
  }

  sub_1D5D65128(v17, "News.NewsFeed.FileBasedDismissalStorage.saveToDisk", 50, 2);

  return (*(v36 + 8))(v17, v37);
}

uint64_t sub_1D6A1CD28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6A1CD80()
{
  v1 = *(*v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  sub_1D6A1CE74((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D6A1CDEC()
{
  v1 = *(*v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  sub_1D6A1CE58((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D6A1CE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemDismissalRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6A1CEF8()
{
  if (!qword_1EC890190)
  {
    sub_1D6A1CF64();
    sub_1D605FA4C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890190);
    }
  }
}

void sub_1D6A1CF64()
{
  if (!qword_1EC882DC8)
  {
    type metadata accessor for FeedItemDismissalRecord();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882DC8);
    }
  }
}

unint64_t sub_1D6A1CFCC()
{
  result = qword_1EC8901A0;
  if (!qword_1EC8901A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8901A0);
  }

  return result;
}

unint64_t sub_1D6A1D020()
{
  result = qword_1EC8901A8;
  if (!qword_1EC8901A8)
  {
    sub_1D6A1CF64();
    sub_1D5B710E8(&qword_1EC8901B0, type metadata accessor for FeedItemDismissalRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8901A8);
  }

  return result;
}

uint64_t sub_1D6A1D0D0(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6A1CEF8();
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6A1D154()
{
  result = qword_1EC8901C0;
  if (!qword_1EC8901C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8901C0);
  }

  return result;
}

unint64_t sub_1D6A1D1A8()
{
  result = qword_1EC8901C8;
  if (!qword_1EC8901C8)
  {
    sub_1D6A1CF64();
    sub_1D5B710E8(&qword_1EC8901D0, type metadata accessor for FeedItemDismissalRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8901C8);
  }

  return result;
}

unint64_t sub_1D6A1D274()
{
  result = qword_1EC8901D8;
  if (!qword_1EC8901D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8901D8);
  }

  return result;
}

unint64_t sub_1D6A1D2C8()
{
  result = qword_1EC8901E0;
  if (!qword_1EC8901E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8901E0);
  }

  return result;
}

uint64_t FormatFileReference.description.getter(uint64_t a1)
{
  v2 = v1;
  sub_1D5B5C040(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v2, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(a1 + 16);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5D23EE8(&v21[*(TupleTypeMetadata2 + 48)], type metadata accessor for FormatMetadata);
      (*(*(v24 - 8) + 8))(v21, v24);
      return 0x6E693D657079747BLL;
    }

    else
    {
      return 0x69623D657079747BLL;
    }
  }

  else
  {
    sub_1D5B55504();
    v28 = *(v27 + 48);
    (*(v13 + 32))(v16, v21, v12);
    sub_1D5C35728(&v21[v28], v11);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1D7263D4C();

    v38 = 0xD000000000000013;
    v39 = 0x80000001D73BEEB0;
    sub_1D5D3A874(v11 + *(v8 + 28), v7);
    v29 = sub_1D725BD1C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v7, 1, v29) == 1)
    {
      v31 = 0x3E656E6F6E3CLL;
      sub_1D5BFC734(v7, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v32 = 0xE600000000000000;
    }

    else
    {
      v31 = sub_1D725BC9C();
      v32 = v33;
      (*(v30 + 8))(v7, v29);
    }

    MEMORY[0x1DA6F9910](v31, v32);

    MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
    if (v11[1])
    {
      v34 = *v11;
      v35 = v11[1];
    }

    else
    {
      v34 = 0x3E656E6F6E3CLL;
      v35 = 0xE600000000000000;
    }

    MEMORY[0x1DA6F9910](v34, v35);

    MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
    v36 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v36);

    MEMORY[0x1DA6F9910](125, 0xE100000000000000);
    v37 = v38;
    sub_1D5D23EE8(v11, type metadata accessor for FormatMetadata);
    (*(v13 + 8))(v16, v12);
    return v37;
  }
}

uint64_t FormatFileReference.metadata.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  sub_1D5B5C040(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = sub_1D725BD1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v3, a1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *(a1 + 16);
      type metadata accessor for FormatMetadata();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5C35728(&v27[*(TupleTypeMetadata2 + 48)], a2);
      return (*(*(v30 - 8) + 8))(v27, v30);
    }

    else
    {
      sub_1D725BD3C();
      v35 = *(v15 + 48);
      if (v35(v13, 1, v14) == 1)
      {
        sub_1D725BCDC();
        if (v35(v13, 1, v14) != 1)
        {
          sub_1D5BFC734(v13, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v15 + 32))(v22, v13, v14);
      }

      sub_1D725BD3C();
      if (v35(v9, 1, v14) == 1)
      {
        sub_1D725BCCC();
        if (v35(v9, 1, v14) != 1)
        {
          sub_1D5BFC734(v9, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v15 + 32))(v18, v9, v14);
      }

      v36 = type metadata accessor for FormatMetadata();
      sub_1D725BD3C();
      *a2 = 0;
      *(a2 + 1) = 0;
      v37 = *(v15 + 32);
      v37(&a2[v36[5]], v22, v14);
      result = (v37)(&a2[v36[6]], v18, v14);
      v38 = MEMORY[0x1E69E7CD0];
      *&a2[v36[8]] = MEMORY[0x1E69E7CD0];
      *&a2[v36[9]] = v38;
      *&a2[v36[10]] = v38;
      *&a2[v36[11]] = v38;
    }
  }

  else
  {
    sub_1D5B55504();
    sub_1D5C35728(&v27[*(v33 + 48)], a2);
    v34 = sub_1D72585BC();
    return (*(*(v34 - 8) + 8))(v27, v34);
  }

  return result;
}

uint64_t FormatFileReference.formatVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatMetadata();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormatFileReference.metadata.getter(a1, v8);
  sub_1D5D3A874(&v8[*(v5 + 36)], a2);
  return sub_1D5D23EE8(v8, type metadata accessor for FormatMetadata);
}

uint64_t FormatFileReference.init(url:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5B55504();
  v7 = *(v6 + 48);
  v8 = sub_1D72585BC();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  sub_1D5C35728(a2, a3 + v7);
  type metadata accessor for FormatFileReference();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatFileReference.encode(to:)(void *a1, uint64_t a2)
{
  v215 = *(a2 + 16);
  v208 = *(v215 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v213 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C040(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v195 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v191 = &v189 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v196 = &v189 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v192 = &v189 - v16;
  v212 = sub_1D725BD1C();
  *&v217 = *(v212 - 1);
  MEMORY[0x1EEE9AC00](v212, v17);
  v193 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v199 = &v189 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v194 = &v189 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v205 = &v189 - v27;
  v28 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v203 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v197 = &v189 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v204 = &v189 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v198 = &v189 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v200 = &v189 - v42;
  sub_1D5C5039C();
  v202 = v43;
  MEMORY[0x1EEE9AC00](v43, v44);
  v201 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v206, v46);
  v189 = &v189 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v209 = (&v189 - v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v190 = &v189 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v210 = (&v189 - v56);
  v57 = sub_1D72585BC();
  v207 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v189 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v189 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  v214 = v66;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v189 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1[3];
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v71);
  sub_1D5C30408();
  v216 = v69;
  sub_1D71B5B30(&type metadata for FormatCodingKeys, v72, v71, &type metadata for FormatVersions.JazzkonC, v70, &off_1F51F6C78, v69);
  (*(v61 + 16))(v65, v211, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v87 = v200;
    sub_1D5B55504();
    v89 = *(v88 + 48);
    v90 = v207;
    (*(v207 + 32))(v60, v65, v57);
    sub_1D5C35728(&v65[v89], v210);
    LOBYTE(v218) = 0;
    v91 = *(v90 + 16);
    v92 = v201;
    v211 = v60;
    v91(v201, v60, v57);
    v213 = v57;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v93 = v212;
    v94 = __swift_project_value_buffer(v212, qword_1EDFFCD30);
    v95 = (v217 + 16);
    v96 = *(v217 + 16);
    v209 = v94;
    v96(v87);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v97 = v87;
    v98 = type metadata accessor for FormatFileReference.CodingType();
    WitnessTable = swift_getWitnessTable();
    v100 = sub_1D5B4CE34(&qword_1EDF127D0, sub_1D5C5039C);
    v101 = v98;
    v77 = v216;
    v102 = v219;
    sub_1D71B5D20(&v218, v92, v97, v214, v101, v202, WitnessTable, v100);
    v103 = v92;
    v104 = v205;
    v219 = v102;
    if (v102)
    {
      sub_1D5D23EE8(v97, type metadata accessor for FormatVersionRequirement);
      sub_1D5D23EE8(v103, sub_1D5C5039C);
      v105 = v210;
    }

    else
    {
      v215 = v95;
      v208 = v96;
      sub_1D5D23EE8(v97, type metadata accessor for FormatVersionRequirement);
      sub_1D5D23EE8(v103, sub_1D5C5039C);
      v118 = v192;
      sub_1D725BD3C();
      v119 = v217;
      v120 = *(v217 + 48);
      if (v120(v118, 1, v93) == 1)
      {
        sub_1D725BCDC();
        if (v120(v118, 1, v93) != 1)
        {
          sub_1D5BFC734(v118, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v119 + 32))(v104, v118, v93);
      }

      v151 = v196;
      sub_1D725BD3C();
      v152 = v120(v151, 1, v93);
      v153 = v190;
      if (v152 == 1)
      {
        v154 = v194;
        sub_1D725BCCC();
        if (v120(v151, 1, v93) != 1)
        {
          sub_1D5BFC734(v151, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        v154 = v194;
        (*(v217 + 32))(v194, v151, v93);
      }

      v155 = v206;
      sub_1D725BD3C();
      *v153 = 0;
      *(v153 + 1) = 0;
      v156 = *(v217 + 32);
      v156(&v153[v155[5]], v205, v93);
      v156(&v153[v155[6]], v154, v93);
      v157 = MEMORY[0x1E69E7CD0];
      *&v153[v155[8]] = MEMORY[0x1E69E7CD0];
      *&v153[v155[9]] = v157;
      *&v153[v155[10]] = v157;
      *&v153[v155[11]] = v157;
      v158 = v210;
      LOBYTE(v156) = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v210, v153);
      sub_1D5D23EE8(v153, type metadata accessor for FormatMetadata);
      if ((v156 & 1) == 0)
      {
        v161 = v198;
        (v208)(v198, v209, v93);
        swift_storeEnumTagMultiPayload();
        v217 = xmmword_1D72830B0;
        v218 = xmmword_1D72830B0;
        v162 = v214;
        v163 = (v77 + *(v214 + 44));
        v164 = *v163;
        v165 = v163[1];
        v166 = swift_allocObject();
        v215 = &v189;
        *(v166 + 16) = v217;
        *(v166 + 32) = v164;
        *(v166 + 40) = v165;
        MEMORY[0x1EEE9AC00](v166, v167);
        v136 = v77;
        *(&v189 - 4) = sub_1D5B4AA6C;
        *(&v189 - 3) = 0;
        *(&v189 - 2) = sub_1D6A20688;
        *(&v189 - 1) = v168;
        v169 = swift_allocObject();
        *(v169 + 16) = v217;
        *(v169 + 32) = v164;
        *(v169 + 40) = v165;
        sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
        v171 = v170;
        sub_1D5D30E44();
        swift_retain_n();
        v212 = v171;
        v172 = sub_1D72647CC();
        v173 = swift_allocObject();
        *(v173 + 16) = v172;
        *(v173 + 24) = v217;
        v174 = __swift_project_boxed_opaque_existential_1((v136 + *(v162 + 36)), *(v136 + *(v162 + 36) + 24));
        MEMORY[0x1EEE9AC00](v174, v175);
        *(&v189 - 2) = sub_1D6A2068C;
        *(&v189 - 1) = v173;
        MEMORY[0x1EEE9AC00](v176, v177);
        *(&v189 - 4) = sub_1D615B4A4;
        *(&v189 - 3) = (&v189 - 6);
        *(&v189 - 2) = sub_1D6A20690;
        *(&v189 - 1) = v169;
        v178 = v219;
        sub_1D5D2BC70(v161, sub_1D615B49C, v179, sub_1D615B4A4, (&v189 - 6));
        v219 = v178;
        if (v178)
        {

          v180 = v213;
          v181 = v207;
          v182 = v198;
          v184 = v210;
          v183 = v211;
        }

        else
        {

          sub_1D5B4CE34(&qword_1EDF11B70, type metadata accessor for FormatMetadata);
          v184 = v210;
          v188 = v219;
          sub_1D72647EC();
          v180 = v213;
          v183 = v211;
          v219 = v188;
          if (!v188)
          {

            sub_1D5D23EE8(v198, type metadata accessor for FormatVersionRequirement);
            sub_1D5D23EE8(v184, type metadata accessor for FormatMetadata);
            (*(v207 + 8))(v183, v180);
            goto LABEL_48;
          }

          v181 = v207;
          v182 = v198;
        }

        sub_1D5D23EE8(v182, type metadata accessor for FormatVersionRequirement);
        sub_1D5D23EE8(v184, type metadata accessor for FormatMetadata);
        (*(v181 + 8))(v183, v180);
LABEL_48:
        v159 = v136;
        return sub_1D5D23EE8(v159, sub_1D5D30DC4);
      }

      v105 = v158;
    }

    sub_1D5D23EE8(v105, type metadata accessor for FormatMetadata);
    (*(v207 + 8))(v211, v213);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 1)
  {
    LOBYTE(v218) = 2;
    v77 = v216;
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v106 = v212;
    v107 = __swift_project_value_buffer(v212, qword_1EDFFCE50);
    v108 = v203;
    (*(v217 + 16))(v203, v107, v106);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v109 = type metadata accessor for FormatFileReference.CodingType();
    v110 = swift_getWitnessTable();
    v111 = v219;
    sub_1D71B6078(&v218, v108, v214, v109, v110);
    v219 = v111;
    sub_1D5D23EE8(v108, type metadata accessor for FormatVersionRequirement);
    goto LABEL_37;
  }

  v74 = a2;
  v75 = v215;
  v76 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v208 + 4))(v213, v65, v75);
  sub_1D5C35728(&v65[v76], v209);
  LOBYTE(v218) = 1;
  v77 = v216;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v78 = v212;
  v79 = __swift_project_value_buffer(v212, qword_1EDFFCD30);
  v80 = *(v217 + 16);
  v81 = v204;
  v211 = v79;
  v80(v204);
  v82 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = *(v74 + 24);
  v84 = type metadata accessor for FormatFileReference.CodingType();
  v85 = swift_getWitnessTable();
  v86 = v219;
  sub_1D71B5D20(&v218, v213, v81, v214, v84, v75, v85, *(v83 + 16));
  v219 = v86;
  if (!v86)
  {
    v207 = v82;
    v210 = v80;
    v112 = v211;
    sub_1D5D23EE8(v81, type metadata accessor for FormatVersionRequirement);
    v113 = v191;
    sub_1D725BD3C();
    v114 = v217;
    v115 = *(v217 + 48);
    if (v115(v113, 1, v78) == 1)
    {
      sub_1D725BCDC();
      v116 = v115(v113, 1, v78);
      v117 = v195;
      if (v116 != 1)
      {
        sub_1D5BFC734(v113, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v114 + 32))(v199, v113, v78);
      v117 = v195;
    }

    sub_1D725BD3C();
    v121 = v115(v117, 1, v78);
    v77 = v216;
    if (v121 == 1)
    {
      v122 = v193;
      sub_1D725BCCC();
      if (v115(v117, 1, v78) != 1)
      {
        sub_1D5BFC734(v117, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      v122 = v193;
      (*(v114 + 32))(v193, v117, v78);
    }

    v123 = v206;
    v124 = v189;
    sub_1D725BD3C();
    *v124 = 0;
    *(v124 + 1) = 0;
    v125 = *(v114 + 32);
    v125(&v124[v123[5]], v199, v78);
    v125(&v124[v123[6]], v122, v78);
    v126 = MEMORY[0x1E69E7CD0];
    *&v124[v123[8]] = MEMORY[0x1E69E7CD0];
    *&v124[v123[9]] = v126;
    *&v124[v123[10]] = v126;
    *&v124[v123[11]] = v126;
    v127 = v209;
    v128 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v209, v124);
    sub_1D5D23EE8(v124, type metadata accessor for FormatMetadata);
    if (v128)
    {
      sub_1D5D23EE8(v127, type metadata accessor for FormatMetadata);
      (*(v208 + 1))(v213, v215);
      goto LABEL_37;
    }

    v129 = v197;
    (v210)(v197, v112, v78);
    swift_storeEnumTagMultiPayload();
    v217 = xmmword_1D72830B0;
    v218 = xmmword_1D72830B0;
    v130 = v214;
    v131 = (v77 + *(v214 + 44));
    v132 = *v131;
    v133 = v131[1];
    v134 = swift_allocObject();
    v212 = &v189;
    *(v134 + 16) = v217;
    *(v134 + 32) = v132;
    *(v134 + 40) = v133;
    MEMORY[0x1EEE9AC00](v134, v135);
    v136 = v77;
    *(&v189 - 4) = sub_1D5B4AA6C;
    *(&v189 - 3) = 0;
    *(&v189 - 2) = sub_1D61A70D0;
    *(&v189 - 1) = v137;
    v138 = swift_allocObject();
    *(v138 + 16) = v217;
    *(v138 + 32) = v132;
    *(v138 + 40) = v133;
    sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
    v140 = v139;
    sub_1D5D30E44();
    swift_retain_n();
    v211 = v140;
    v141 = sub_1D72647CC();
    v142 = swift_allocObject();
    *(v142 + 16) = v141;
    *(v142 + 24) = v217;
    v143 = __swift_project_boxed_opaque_existential_1((v136 + *(v130 + 36)), *(v136 + *(v130 + 36) + 24));
    MEMORY[0x1EEE9AC00](v143, v144);
    *(&v189 - 2) = sub_1D61A70E0;
    *(&v189 - 1) = v142;
    MEMORY[0x1EEE9AC00](v145, v146);
    *(&v189 - 4) = sub_1D60565EC;
    *(&v189 - 3) = (&v189 - 6);
    *(&v189 - 2) = sub_1D6A20160;
    *(&v189 - 1) = v138;
    v147 = v219;
    sub_1D5D2BC70(v129, sub_1D60566B0, v148, sub_1D60565EC, (&v189 - 6));
    v219 = v147;
    if (v147)
    {

      v149 = v213;
      v150 = v209;
    }

    else
    {

      sub_1D5B4CE34(&qword_1EDF11B70, type metadata accessor for FormatMetadata);
      v150 = v209;
      v185 = v219;
      sub_1D72647EC();
      v219 = v185;
      if (!v185)
      {

        sub_1D5D23EE8(v197, type metadata accessor for FormatVersionRequirement);
        sub_1D5D23EE8(v150, type metadata accessor for FormatMetadata);
        v186 = *(v208 + 1);
        v187 = v213;
        goto LABEL_44;
      }

      v149 = v213;
    }

    sub_1D5D23EE8(v197, type metadata accessor for FormatVersionRequirement);
    sub_1D5D23EE8(v150, type metadata accessor for FormatMetadata);
    v186 = *(v208 + 1);
    v187 = v149;
LABEL_44:
    v186(v187, v215);
    goto LABEL_48;
  }

  sub_1D5D23EE8(v81, type metadata accessor for FormatVersionRequirement);
  sub_1D5D23EE8(v209, type metadata accessor for FormatMetadata);
  (*(v208 + 1))(v213, v75);
LABEL_37:
  v159 = v77;
  return sub_1D5D23EE8(v159, sub_1D5D30DC4);
}