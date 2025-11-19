uint64_t sub_1D7063674()
{
  v1 = sub_1D725F3DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ZIndexable();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D707111C(v0, v13, type metadata accessor for ZIndexable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17[5] = *v13;
    FeedGroupDecoration.decorationItem.getter(v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1D725F4AC();

    v14 = (*(v2 + 88))(v5, v1);
    if (v14 == *MEMORY[0x1E69D8678])
    {
      (*(v2 + 96))(v5, v1);
      v15 = *v5;
    }

    else
    {
      if (v14 != *MEMORY[0x1E69D8680])
      {
        (*(v2 + 8))(v5, v1);
      }

      v15 = -100;
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D7070F64(v13, v9, type metadata accessor for FeedItemSupplementaryAttributes);
    v15 = sub_1D7063904();
    sub_1D7070E6C(v9, type metadata accessor for FeedItemSupplementaryAttributes);
  }

  return v15;
}

uint64_t sub_1D7063904()
{
  v1 = v0;
  v2 = sub_1D725EF8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - v13;
  v15 = sub_1D725F3DC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D707111C(v1, v14, type metadata accessor for FeedItemSupplementaryAttributes);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D7070E6C(v14, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_6:
    (*(v16 + 104))(v19, *MEMORY[0x1E69D8680], v15);
    goto LABEL_7;
  }

  v43 = v3;
  v44 = v2;
  v21 = *(v14 + 5);
  v49 = *(v14 + 4);
  v50 = v21;
  v22 = *(v14 + 7);
  v51 = *(v14 + 6);
  v52 = v22;
  v23 = *(v14 + 1);
  v45 = *v14;
  v46 = v23;
  v24 = *(v14 + 3);
  v47 = *(v14 + 2);
  v48 = v24;
  v25 = *(v14 + 16);
  sub_1D6729D5C(&v45);
  v26 = *(v25 + 48);
  v27 = *(v25 + 56);

  if (v27)
  {
    (*(v16 + 104))(v19, *MEMORY[0x1E69D8680], v15);
    v28 = *MEMORY[0x1E69D8678];
  }

  else
  {
    *v19 = v26;
    v28 = *MEMORY[0x1E69D8678];
    (*(v16 + 104))(v19, *MEMORY[0x1E69D8678], v15);
  }

  v41 = (*(v16 + 88))(v19, v15);
  v3 = v43;
  v2 = v44;
  if (v41 == v28)
  {
    (*(v16 + 96))(v19, v15);
    return *v19;
  }

  if (v41 != *MEMORY[0x1E69D8680])
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }

LABEL_7:
  sub_1D707111C(v1, v10, type metadata accessor for FeedItemSupplementaryAttributes);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 < 2)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8470], v2);
    return 1000;
  }

  if (v29 == 2)
  {
    v31 = *(v10 + 5);
    v49 = *(v10 + 4);
    v50 = v31;
    v32 = *(v10 + 7);
    v51 = *(v10 + 6);
    v52 = v32;
    v33 = *(v10 + 1);
    v45 = *v10;
    v46 = v33;
    v34 = *(v10 + 3);
    v47 = *(v10 + 2);
    v48 = v34;
    v35 = *(v10 + 16);
    sub_1D6729D5C(&v45);
    v36 = v3;
    v37 = *(*(v35 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

    v38 = v36;
    v39 = *(v36 + 104);
    if (v37)
    {
      v39(v6, *MEMORY[0x1E69D8470], v2);
      v40 = *MEMORY[0x1E69D8478];
    }

    else
    {
      v40 = *MEMORY[0x1E69D8478];
      v39(v6, *MEMORY[0x1E69D8478], v2);
    }

    v3 = v38;
  }

  else
  {
    v40 = *MEMORY[0x1E69D8478];
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8478], v2);
    sub_1D7070E6C(v10, type metadata accessor for InternalErrorViewLayout.Context);
  }

  v42 = (*(v3 + 88))(v6, v2);
  if (v42 == v40)
  {
    return 2000;
  }

  if (v42 == *MEMORY[0x1E69D8470])
  {
    return 1000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

void sub_1D7063E0C(unint64_t *a1, uint64_t a2, CGRect *a3, CGRect *a4, CGRect *a5, CGRect *a6, CGRect *a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v232 = a8;
  v229 = a7;
  v226 = a5;
  v227 = a6;
  v225 = a3;
  v231 = a2;
  v16 = type metadata accessor for InternalErrorViewLayout.Context();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v224 = &v215 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for FeedItemSupplementaryAttributes();
  v19 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230, v20);
  v22 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v215 - v25;
  v27 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = (&v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *a1;
  v36 = v35 >> 60;
  if ((v35 >> 60) <= 5)
  {
    if (v36 < 4)
    {
      return;
    }

    if (v36 != 4)
    {
      memcpy(v237, ((v35 & 0xFFFFFFFFFFFFFFFLL) + 408), sizeof(v237));
      sub_1D5EF92B8((v35 & 0xFFFFFFFFFFFFFFFLL) + 16, v233);
      CGRectGetMinY(v237[0]);
      v253.origin.x = v232;
      v253.origin.y = a9;
      v253.size.width = a10;
      v253.size.height = a11;
      CGRectGetMinY(v253);
      sub_1D72632EC();
      v168 = [objc_allocWithZone(type metadata accessor for CoverIssueView()) initWithFrame_];
      MEMORY[0x1EEE9AC00](v168, v169);
      v211 = v229;
      v212 = v233;
      v213 = v237;
      v214 = v170;
      sub_1D7070828(v170, v231, sub_1D70710BC);
      sub_1D725A7CC();
      v171 = v235;
      if (v235)
      {
        [v235 setHidden_];
      }

      sub_1D5EF93F0(v233);
      return;
    }

    sub_1D5BE5E28();
    v38 = v37;
    v39 = swift_projectBox();
    memcpy(v233, (v39 + *(v38 + 48)), 0x130uLL);
    sub_1D707111C(v39, v34, type metadata accessor for HeadlineViewLayout.Context);
    LOBYTE(v38) = [*(&v34[1].origin.y + *(v31 + 20)) hasVideo];
    CGRectGetMinY(v233[0]);
    v238.origin.x = v232;
    v238.origin.y = a9;
    v238.size.width = a10;
    v238.size.height = a11;
    CGRectGetMinY(v238);
    sub_1D72632EC();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    if (v38)
    {
      sub_1D7070ECC(0, &qword_1EDF33558, type metadata accessor for VideoView, type metadata accessor for HeadlineView);
      v49 = [objc_allocWithZone(v48) initWithFrame_];
      MEMORY[0x1EEE9AC00](v49, v50);
      v209 = v229;
      v210 = v34;
      v211 = v233;
      v212 = v51;
      v213 = v226;
      v214 = v227;
      v52 = sub_1D70710B4;
    }

    else
    {
      sub_1D7070ECC(0, &qword_1EDF33570, MEMORY[0x1E69D8868], type metadata accessor for HeadlineView);
      v49 = [objc_allocWithZone(v207) initWithFrame_];
      MEMORY[0x1EEE9AC00](v49, v208);
      v211 = v229;
      v212 = v34;
      v213 = v233;
      v214 = v51;
      v52 = sub_1D70710B0;
    }

    sub_1D7070828(v51, v231, v52);
    [*&v49[qword_1EDF33618] setHidden_];

    v205 = type metadata accessor for HeadlineViewLayout.Context;
    v206 = v34;
LABEL_61:
    sub_1D7070E6C(v206, v205);
    return;
  }

  if (v36 <= 7)
  {
    if (v36 != 6)
    {
      sub_1D6CCCC8C();
      v173 = v172;
      v174 = swift_projectBox();
      v175 = *(v174 + *(v173 + 48));
      sub_1D707111C(v174, v30, type metadata accessor for FormatItemNodeLayoutContext);
      v176 = *(v175 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
      swift_beginAccess();
      v177 = v176[2];
      v178 = v176[3];
      v179 = v176[4];
      v180 = v176[5];

      v254.origin.x = v177;
      v254.origin.y = v178;
      v254.size.width = v179;
      v254.size.height = v180;
      CGRectGetMinY(v254);
      v255.origin.x = v232;
      v255.origin.y = a9;
      v255.size.width = a10;
      v255.size.height = a11;
      CGRectGetMinY(v255);
      sub_1D72632EC();
      v182 = v181;
      v184 = v183;
      v186 = v185;
      v188 = v187;
      sub_1D7070FCC();
      v190 = [objc_allocWithZone(v189) initWithFrame_];
      MEMORY[0x1EEE9AC00](v190, v191);
      *(&v215 - 8) = &v229->origin.x;
      *(&v215 - 7) = v30;
      v209 = v175;
      v210 = v192;
      v211 = v225;
      v212 = a4;
      v213 = v226;
      v214 = v227;
      sub_1D7070828(v192, v231, sub_1D70710AC);
      v193 = *&v190[qword_1EC88B148];
      sub_1D705DE9C(v193, v175);

      v194 = sub_1D725DBEC();
      v195 = v194;
      v196 = *(v175 + 32);
      if (v196)
      {
        LOBYTE(v196) = *(v196 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
      }

      [v194 setClipsToBounds_];

      v197 = sub_1D725DBEC();
      v198 = v197;
      v199 = *(v175 + 32);
      if (v199)
      {
        LOBYTE(v199) = *(v199 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
      }

      [v197 setAccessibilityIgnoresInvertColors_];

      v200 = sub_1D725DBEC();

      sub_1D725A7CC();

      x = v237[0].origin.x;
      if (*&v237[0].origin.x)
      {
        [*&v237[0].origin.x setHidden_];
      }

      v202 = type metadata accessor for DebugItemDragInteraction();
      v203 = objc_allocWithZone(v202);
      *&v203[OBJC_IVAR____TtC8NewsFeedP33_ADE4A126F6FB4BE95458B6110D529A9F24DebugItemDragInteraction_feedItemLayoutAttributes] = v35;
      v236.receiver = v203;
      v236.super_class = v202;

      v204 = objc_msgSendSuper2(&v236, sel_initWithDelegate_, v229);
      [v190 addInteraction_];

      v205 = type metadata accessor for FormatItemNodeLayoutContext;
      v206 = v30;
      goto LABEL_61;
    }

    v150 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x198);
    v237[4].origin = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x188);
    v237[4].size = v150;
    v151 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x1B8);
    v237[5].origin = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x1A8);
    v237[5].size = v151;
    v152 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x158);
    v237[2].origin = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x148);
    v237[2].size = v152;
    v153 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x178);
    v237[3].origin = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x168);
    v237[3].size = v153;
    v154 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x118);
    v237[0].origin = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x108);
    v237[0].size = v154;
    v155 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x138);
    v237[1].origin = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x128);
    v237[1].size = v155;
    sub_1D6EB3D34((v35 & 0xFFFFFFFFFFFFFFFLL) + 16, v233);
    CGRectGetMinY(v237[0]);
    v252.origin.x = v232;
    v252.origin.y = a9;
    v252.size.width = a10;
    v252.size.height = a11;
    CGRectGetMinY(v252);
    sub_1D72632EC();
    v160 = [objc_allocWithZone(type metadata accessor for CoverChannelView()) initWithFrame_];
    MEMORY[0x1EEE9AC00](v160, v161);
    v211 = v229;
    v212 = v233;
    v213 = v237;
    v214 = v162;
    sub_1D7070828(v162, v231, sub_1D70710B8);
    sub_1D725A7CC();
    v163 = v235;
    if (v235)
    {
      [v235 setHidden_];
    }

    sub_1D6CB9F0C(v233);
  }

  else
  {
    v221 = a4;
    if ((v36 - 8) >= 3)
    {
      v53 = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v233[0].origin.x = *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D7063E0C(v233, v231, v225, v221, v226, v227, v229, v232, a9, a10, a11);
      v54 = *(v53 + 16);
      if (v54)
      {
        v228 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
        v216 = v229 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
        v217 = OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
        v215 = (&v229->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
        v55 = v53 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v56 = *(v19 + 72);
        v222 = v26;
        v223 = v56;
        v218 = a11;
        do
        {
          sub_1D707111C(v55, v26, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v26, v22, type metadata accessor for FeedItemSupplementaryAttributes);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v111 = *(v22 + 1);
              v233[0].origin = *v22;
              v233[0].size = v111;
              v112 = *(v22 + 3);
              v233[1].origin = *(v22 + 2);
              v233[1].size = v112;
              v113 = *(v22 + 7);
              v233[3].origin = *(v22 + 6);
              v233[3].size = v113;
              v114 = *(v22 + 5);
              v233[2].origin = *(v22 + 4);
              v233[2].size = v114;
              v115 = *(v22 + 16);
              v116 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v117 = *(v115 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              CGRectGetMinY(*(v117 + 16));
              v246.origin.x = v232;
              v246.origin.y = a9;
              v246.size.width = a10;
              v246.size.height = a11;
              CGRectGetMinY(v246);
              sub_1D72632EC();
              v122 = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
              v123 = *(v231 + v228);
              [v123 addSubview_];
              [v123 contentSize];
              v125 = v124;
              [v122 frame];
              MaxX = CGRectGetMaxX(v247);
              if (v125 <= MaxX)
              {
                v125 = MaxX;
              }

              [v123 contentSize];
              v128 = v127;
              [v122 frame];
              MaxY = CGRectGetMaxY(v248);
              if (v128 > MaxY)
              {
                v130 = v128;
              }

              else
              {
                v130 = MaxY;
              }

              [v123 setContentSize_];
              v131 = *(v216 + 1);
              ObjectType = swift_getObjectType();
              v237[2] = v233[2];
              v237[3] = v233[3];
              v237[0] = v233[0];
              v237[1] = v233[1];
              v133 = *(v115 + v116);
              memset(v234, 0, sizeof(v234));
              (*(v131 + 88))(v237, v133, v122, v225, v234, v221, v226, v227, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, ObjectType, v131);
              v134 = *(v115 + 32);
              if (v134)
              {
                LOBYTE(v134) = *(v134 + 48);
              }

              [v122 setClipsToBounds_];
              sub_1D725A7CC();
              v135 = v237[0].origin.x;
              v26 = v222;
              if (*&v237[0].origin.x)
              {
                [*&v237[0].origin.x setHidden_];
                sub_1D6729D5C(v233);
              }

              else
              {
                sub_1D6729D5C(v233);
              }

              sub_1D7070E6C(v26, type metadata accessor for FeedItemSupplementaryAttributes);
              v56 = v223;
            }

            else
            {
              sub_1D5BAA13C();
              v58 = &v22[*(v57 + 48)];
              v60 = *(v58 + 1);
              v220 = *v58;
              v59 = v220;
              v61 = *(v58 + 2);
              v62 = *(v58 + 3);
              v63 = *(v58 + 7);
              v237[2].origin = *(v58 + 6);
              v237[2].size = v63;
              v64 = *(v58 + 11);
              v237[4].origin = *(v58 + 10);
              v237[4].size = v64;
              v65 = *(v58 + 9);
              v237[3].origin = *(v58 + 8);
              v237[3].size = v65;
              v66 = *(v58 + 15);
              v237[6].origin = *(v58 + 14);
              v237[6].size = v66;
              v67 = *(v58 + 13);
              v237[5].origin = *(v58 + 12);
              v237[5].size = v67;
              v68 = *(v58 + 5);
              v237[1].origin = *(v58 + 4);
              v237[1].size = v68;
              v69 = *(v58 + 3);
              v237[0].origin = *(v58 + 2);
              v237[0].size = v69;
              v70 = v224;
              sub_1D7070F64(v22, v224, type metadata accessor for InternalErrorViewLayout.Context);
              v239.origin.x = v59;
              v219 = v60;
              v239.origin.y = v60;
              v239.size.width = v61;
              v239.size.height = v62;
              CGRectGetMinY(v239);
              v240.origin.x = v232;
              v240.origin.y = a9;
              v240.size.width = a10;
              v240.size.height = a11;
              CGRectGetMinY(v240);
              sub_1D72632EC();
              v72 = v71;
              v74 = v73;
              v75 = a10;
              v77 = v76;
              v78 = a9;
              v80 = v79;
              v81 = objc_allocWithZone(type metadata accessor for InternalErrorView());
              v82 = v77;
              a10 = v75;
              v83 = v80;
              a9 = v78;
              v84 = [v81 initWithFrame_];
              v85 = *(v231 + v228);
              [v85 addSubview_];
              [v85 contentSize];
              v87 = v86;
              [v84 frame];
              v88 = CGRectGetMaxX(v241);
              if (v87 <= v88)
              {
                v87 = v88;
              }

              [v85 contentSize];
              v90 = v89;
              [v84 frame];
              v91 = CGRectGetMaxY(v242);
              if (v90 > v91)
              {
                v92 = v90;
              }

              else
              {
                v92 = v91;
              }

              a11 = v218;
              [v85 setContentSize_];
              v233[0].origin.x = v220;
              v233[0].origin.y = v219;
              v233[0].size.width = v61;
              v233[0].size.height = v62;
              v233[6] = v237[5];
              v233[7] = v237[6];
              v233[4] = v237[3];
              v233[5] = v237[4];
              v233[2] = v237[1];
              v233[3] = v237[2];
              v233[1] = v237[0];
              sub_1D69CBF1C(v70, &v233[0].origin.x, v84);
              [*&v84[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
              v93 = v70;
              v56 = v223;
              sub_1D7070E6C(v93, type metadata accessor for InternalErrorViewLayout.Context);
              v26 = v222;
              sub_1D7070E6C(v222, type metadata accessor for FeedItemSupplementaryAttributes);
            }
          }

          else
          {
            if (EnumCaseMultiPayload)
            {
              CGRectGetMinY(*v22);
              v249.origin.x = v232;
              v249.origin.y = a9;
              v249.size.width = a10;
              v249.size.height = a11;
              CGRectGetMinY(v249);
              sub_1D72632EC();
              v140 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v141 = *(v231 + v228);
              [v141 addSubview_];
              [v141 contentSize];
              v143 = v142;
              [v140 frame];
              v144 = CGRectGetMaxX(v250);
              if (v143 <= v144)
              {
                v143 = v144;
              }

              [v141 contentSize];
              v146 = v145;
              [v140 frame];
              v147 = CGRectGetMaxY(v251);
              if (v146 > v147)
              {
                v148 = v146;
              }

              else
              {
                v148 = v147;
              }

              [v141 setContentSize_];
              v149 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

            else
            {
              CGRectGetMinY(*v22);
              v243.origin.x = v232;
              v243.origin.y = a9;
              v243.size.width = a10;
              v243.size.height = a11;
              CGRectGetMinY(v243);
              sub_1D72632EC();
              v99 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v100 = *(v231 + v228);
              [v100 addSubview_];
              [v100 contentSize];
              v102 = v101;
              [v99 frame];
              v103 = CGRectGetMaxX(v244);
              if (v102 <= v103)
              {
                v102 = v103;
              }

              [v100 contentSize];
              v105 = v104;
              [v99 frame];
              v106 = CGRectGetMaxY(v245);
              if (v105 > v106)
              {
                v107 = v105;
              }

              else
              {
                v107 = v106;
              }

              [v100 setContentSize_];
              v108 = v215[3];
              v109 = v215[4];
              __swift_project_boxed_opaque_existential_1(v215, v108);
              v110 = v108;
              v56 = v223;
              (*(v109 + 8))(v233, v110, v109);

              sub_1D725CFEC();
            }

            sub_1D7070E6C(v26, type metadata accessor for FeedItemSupplementaryAttributes);
          }

          v55 += v56;
          --v54;
        }

        while (v54);
      }
    }
  }
}

void sub_1D7065110(unint64_t *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, void *a7)
{
  v175 = a7;
  v172 = a5;
  v173 = a6;
  v171 = a3;
  v177 = a2;
  v9 = type metadata accessor for InternalErrorViewLayout.Context();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v170 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for FeedItemSupplementaryAttributes();
  v12 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v13);
  v15 = (&v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v164 - v18;
  v20 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for HeadlineViewLayout.Context(0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = v29 >> 60;
  if ((v29 >> 60) <= 5)
  {
    if (v30 < 4)
    {
      return;
    }

    if (v30 != 4)
    {
      memcpy(v182, ((v29 & 0xFFFFFFFFFFFFFFFLL) + 408), 0x180uLL);
      sub_1D5EF92B8((v29 & 0xFFFFFFFFFFFFFFFLL) + 16, v178);
      v124 = [objc_allocWithZone(type metadata accessor for CoverIssueView()) initWithFrame_];
      MEMORY[0x1EEE9AC00](v124, v125);
      v160 = v175;
      v161 = v178;
      v162 = v182;
      v163 = v126;
      sub_1D7070828(v126, v177, sub_1D70714A8);
      sub_1D725A7CC();
      v127 = v180;
      if (v180)
      {
        [v180 setHidden_];
      }

      sub_1D5EF93F0(v178);
      return;
    }

    sub_1D5BE5E28();
    v32 = v31;
    v33 = swift_projectBox();
    memcpy(v178, (v33 + *(v32 + 48)), 0x130uLL);
    sub_1D707111C(v33, v28, type metadata accessor for HeadlineViewLayout.Context);
    v34 = [*&v28[*(v24 + 20) + 40] hasVideo];
    v35 = v178[0];
    v36 = v178[1];
    if (v34)
    {
      sub_1D7070ECC(0, &qword_1EDF33558, type metadata accessor for VideoView, type metadata accessor for HeadlineView);
      v38 = [objc_allocWithZone(v37) initWithFrame_];
      MEMORY[0x1EEE9AC00](v38, v39);
      v158 = v175;
      v159 = v28;
      v160 = v178;
      v161 = v40;
      v162 = v172;
      v163 = v173;
      v41 = sub_1D70714A0;
    }

    else
    {
      sub_1D7070ECC(0, &qword_1EDF33570, MEMORY[0x1E69D8868], type metadata accessor for HeadlineView);
      v38 = [objc_allocWithZone(v156) initWithFrame_];
      MEMORY[0x1EEE9AC00](v38, v157);
      v160 = v175;
      v161 = v28;
      v162 = v178;
      v163 = v40;
      v41 = sub_1D707149C;
    }

    sub_1D7070828(v40, v177, v41);
    [*&v38[qword_1EDF33618] setHidden_];

    v154 = type metadata accessor for HeadlineViewLayout.Context;
    v155 = v28;
LABEL_61:
    sub_1D7070E6C(v155, v154);
    return;
  }

  if (v30 <= 7)
  {
    if (v30 != 6)
    {
      sub_1D6CCCC8C();
      v129 = v128;
      v130 = swift_projectBox();
      v131 = *(v130 + *(v129 + 48));
      sub_1D707111C(v130, v23, type metadata accessor for FormatItemNodeLayoutContext);
      v132 = *(v131 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
      swift_beginAccess();
      v133 = v132[2];
      v134 = v132[3];
      v135 = v132[4];
      v136 = v132[5];
      sub_1D7070FCC();
      v138 = objc_allocWithZone(v137);

      v139 = [v138 initWithFrame_];
      MEMORY[0x1EEE9AC00](v139, v140);
      *(&v164 - 8) = v175;
      *(&v164 - 7) = v23;
      v158 = v131;
      v159 = v141;
      v160 = v171;
      v161 = a4;
      v162 = v172;
      v163 = v173;
      sub_1D7070828(v141, v177, sub_1D7071498);
      v142 = *&v139[qword_1EC88B148];
      sub_1D705DE9C(v142, v131);

      v143 = sub_1D725DBEC();
      v144 = v143;
      v145 = *(v131 + 32);
      if (v145)
      {
        LOBYTE(v145) = *(v145 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
      }

      [v143 setClipsToBounds_];

      v146 = sub_1D725DBEC();
      v147 = v146;
      v148 = *(v131 + 32);
      if (v148)
      {
        LOBYTE(v148) = *(v148 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
      }

      [v146 setAccessibilityIgnoresInvertColors_];

      v149 = sub_1D725DBEC();

      sub_1D725A7CC();

      v150 = *&v182[0];
      if (*&v182[0])
      {
        [*&v182[0] setHidden_];
      }

      v151 = type metadata accessor for DebugItemDragInteraction();
      v152 = objc_allocWithZone(v151);
      *&v152[OBJC_IVAR____TtC8NewsFeedP33_ADE4A126F6FB4BE95458B6110D529A9F24DebugItemDragInteraction_feedItemLayoutAttributes] = v29;
      v181.receiver = v152;
      v181.super_class = v151;

      v153 = objc_msgSendSuper2(&v181, sel_initWithDelegate_, v175);
      [v139 addInteraction_];

      v154 = type metadata accessor for FormatItemNodeLayoutContext;
      v155 = v23;
      goto LABEL_61;
    }

    v114 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x198);
    v182[8] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x188);
    v182[9] = v114;
    v115 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x1B8);
    v182[10] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x1A8);
    v182[11] = v115;
    v116 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x158);
    v182[4] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x148);
    v182[5] = v116;
    v117 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x178);
    v182[6] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x168);
    v182[7] = v117;
    v118 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x118);
    v182[0] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x108);
    v182[1] = v118;
    v119 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x138);
    v182[2] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x128);
    v182[3] = v119;
    sub_1D6EB3D34((v29 & 0xFFFFFFFFFFFFFFFLL) + 16, v178);
    v120 = [objc_allocWithZone(type metadata accessor for CoverChannelView()) initWithFrame_];
    MEMORY[0x1EEE9AC00](v120, v121);
    v160 = v175;
    v161 = v178;
    v162 = v182;
    v163 = v122;
    sub_1D7070828(v122, v177, sub_1D70714A4);
    sub_1D725A7CC();
    v123 = v180;
    if (v180)
    {
      [v180 setHidden_];
    }

    sub_1D6CB9F0C(v178);
  }

  else
  {
    v167 = a4;
    if ((v30 - 8) >= 3)
    {
      v42 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v178[0] = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D7065110(v178, v177, v171, v167, v172, v173, v175, v26);
      v43 = *(v42 + 16);
      if (v43)
      {
        v174 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
        v165 = v175 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
        v166 = OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
        v164 = (v175 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
        v44 = v42 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v45 = *(v12 + 72);
        v168 = v19;
        v169 = v45;
        do
        {
          sub_1D707111C(v44, v19, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v19, v15, type metadata accessor for FeedItemSupplementaryAttributes);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v83 = *(v15 + 1);
              v178[0] = *v15;
              v178[1] = v83;
              v84 = *(v15 + 3);
              v178[2] = *(v15 + 2);
              v178[3] = v84;
              v85 = *(v15 + 7);
              v178[6] = *(v15 + 6);
              v178[7] = v85;
              v86 = *(v15 + 5);
              v178[4] = *(v15 + 4);
              v178[5] = v86;
              v87 = *(v15 + 16);
              v88 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v89 = *(v87 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              v90 = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
              v91 = *(v177 + v174);
              [v91 addSubview_];
              [v91 contentSize];
              v93 = v92;
              [v90 frame];
              MaxX = CGRectGetMaxX(v187);
              if (v93 <= MaxX)
              {
                v93 = MaxX;
              }

              [v91 contentSize];
              v96 = v95;
              [v90 frame];
              MaxY = CGRectGetMaxY(v188);
              if (v96 > MaxY)
              {
                v98 = v96;
              }

              else
              {
                v98 = MaxY;
              }

              [v91 setContentSize_];
              v99 = *(v165 + 1);
              ObjectType = swift_getObjectType();
              v182[4] = v178[4];
              v182[5] = v178[5];
              v182[6] = v178[6];
              v182[7] = v178[7];
              v182[0] = v178[0];
              v182[1] = v178[1];
              v182[2] = v178[2];
              v182[3] = v178[3];
              v101 = *(v87 + v88);
              memset(v179, 0, sizeof(v179));
              (*(v99 + 88))(v182, v101, v90, v171, v179, v167, v172, v173, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, ObjectType, v99);
              v102 = *(v87 + 32);
              if (v102)
              {
                LOBYTE(v102) = *(v102 + 48);
              }

              [v90 setClipsToBounds_];
              sub_1D725A7CC();
              v103 = *&v182[0];
              v19 = v168;
              if (*&v182[0])
              {
                [*&v182[0] setHidden_];
                sub_1D6729D5C(v178);
              }

              else
              {
                sub_1D6729D5C(v178);
              }

              sub_1D7070E6C(v19, type metadata accessor for FeedItemSupplementaryAttributes);
              v45 = v169;
            }

            else
            {
              sub_1D5BAA13C();
              v47 = (v15 + *(v46 + 48));
              v48 = *v47;
              v49 = v47[1];
              v50 = v47[2];
              v51 = v47[3];
              v52 = *(v47 + 7);
              v182[4] = *(v47 + 6);
              v182[5] = v52;
              v53 = *(v47 + 11);
              v182[8] = *(v47 + 10);
              v182[9] = v53;
              v54 = *(v47 + 9);
              v182[6] = *(v47 + 8);
              v182[7] = v54;
              v55 = *(v47 + 15);
              v182[12] = *(v47 + 14);
              v182[13] = v55;
              v56 = *(v47 + 13);
              v182[10] = *(v47 + 12);
              v182[11] = v56;
              v57 = *(v47 + 5);
              v182[2] = *(v47 + 4);
              v182[3] = v57;
              v58 = *(v47 + 3);
              v182[0] = *(v47 + 2);
              v182[1] = v58;
              v59 = v170;
              sub_1D7070F64(v15, v170, type metadata accessor for InternalErrorViewLayout.Context);
              v60 = [objc_allocWithZone(type metadata accessor for InternalErrorView()) initWithFrame_];
              v61 = *(v177 + v174);
              [v61 addSubview_];
              [v61 contentSize];
              v63 = v62;
              [v60 frame];
              v64 = CGRectGetMaxX(v183);
              if (v63 <= v64)
              {
                v63 = v64;
              }

              [v61 contentSize];
              v66 = v65;
              [v60 frame];
              v67 = CGRectGetMaxY(v184);
              if (v66 > v67)
              {
                v68 = v66;
              }

              else
              {
                v68 = v67;
              }

              [v61 setContentSize_];
              *v178 = v48;
              *(v178 + 1) = v49;
              *&v178[1] = v50;
              *(&v178[1] + 1) = v51;
              v178[12] = v182[10];
              v178[13] = v182[11];
              v178[14] = v182[12];
              v178[15] = v182[13];
              v178[8] = v182[6];
              v178[9] = v182[7];
              v178[10] = v182[8];
              v178[11] = v182[9];
              v178[4] = v182[2];
              v178[5] = v182[3];
              v178[6] = v182[4];
              v178[7] = v182[5];
              v178[2] = v182[0];
              v178[3] = v182[1];
              sub_1D69CBF1C(v59, v178, v60);
              [*&v60[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
              v69 = v59;
              v45 = v169;
              sub_1D7070E6C(v69, type metadata accessor for InternalErrorViewLayout.Context);
              v19 = v168;
              sub_1D7070E6C(v168, type metadata accessor for FeedItemSupplementaryAttributes);
            }
          }

          else
          {
            if (EnumCaseMultiPayload)
            {
              v104 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v105 = *(v177 + v174);
              [v105 addSubview_];
              [v105 contentSize];
              v107 = v106;
              [v104 frame];
              v108 = CGRectGetMaxX(v189);
              if (v107 <= v108)
              {
                v107 = v108;
              }

              [v105 contentSize];
              v110 = v109;
              [v104 frame];
              v111 = CGRectGetMaxY(v190);
              if (v110 > v111)
              {
                v112 = v110;
              }

              else
              {
                v112 = v111;
              }

              [v105 setContentSize_];
              v113 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

            else
            {
              v71 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v72 = *(v177 + v174);
              [v72 addSubview_];
              [v72 contentSize];
              v74 = v73;
              [v71 frame];
              v75 = CGRectGetMaxX(v185);
              if (v74 <= v75)
              {
                v74 = v75;
              }

              [v72 contentSize];
              v77 = v76;
              [v71 frame];
              v78 = CGRectGetMaxY(v186);
              if (v77 > v78)
              {
                v79 = v77;
              }

              else
              {
                v79 = v78;
              }

              [v72 setContentSize_];
              v80 = v164[3];
              v81 = v164[4];
              __swift_project_boxed_opaque_existential_1(v164, v80);
              v82 = v80;
              v45 = v169;
              (*(v81 + 8))(v178, v82, v81);

              sub_1D725CFEC();
            }

            sub_1D7070E6C(v19, type metadata accessor for FeedItemSupplementaryAttributes);
          }

          v44 += v45;
          --v43;
        }

        while (v43);
      }
    }
  }
}

uint64_t sub_1D7066130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v36 = a5;
  v41 = a2;
  v11 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v11, v12);
  v37 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer + 8);
  v32[1] = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer);
  ObjectType = swift_getObjectType();
  v33 = ObjectType;
  v16 = *(a3 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  v35 = *(a4 + qword_1EC88B148);
  v17 = sub_1D725DBEC();
  v18 = v16 + *(*v16 + 136);
  v19 = (v18 + *(v11 + 32));
  v20 = v19[1];
  v21 = v19[2];
  v42 = *v19;
  v43 = v20;
  v44 = v21;
  v32[0] = *(v14 + 88);
  sub_1D5EBC314(v42, v20);
  v34 = type metadata accessor for FormatItemNodeLayoutContext();
  v31 = ObjectType;
  v22 = v16;
  v23 = v39;
  v24 = v40;
  (v32[0])(v41, v22, v17, v36, &v42, v38, v39, v40, v11, v34, &protocol witness table for FormatItemNodeLayoutContext, v31, v14);

  sub_1D5EBC358(v42, v43);
  v25 = v37;
  sub_1D707111C(v18, v37, type metadata accessor for FormatItemNodeData);
  v26 = sub_1D725DBEC();
  v27 = v19[1];
  v28 = v19[2];
  v42 = *v19;
  v43 = v27;
  v44 = v28;
  v29 = *(v14 + 96);
  sub_1D5EBC314(v42, v27);
  v29(v41, v25, v26, &v42, v23, v24, v34, &protocol witness table for FormatItemNodeLayoutContext, v33, v14);

  sub_1D5EBC358(v42, v43);
  return sub_1D7070E6C(v25, type metadata accessor for FormatItemNodeData);
}

uint64_t sub_1D7066624(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1D726449C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1D726276C();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1D7066774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D725EF8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v118 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v101[-v14];
  v130 = sub_1D725F3DC();
  v16 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v17);
  v123 = &v101[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v122 = &v101[-v21];
  v142 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v142, v22);
  v119 = &v101[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v125 = &v101[-v26];
  MEMORY[0x1EEE9AC00](v27, v28);
  v128 = &v101[-v29];
  MEMORY[0x1EEE9AC00](v30, v31);
  v124 = &v101[-v32];
  MEMORY[0x1EEE9AC00](v33, v34);
  v127 = &v101[-v35];
  MEMORY[0x1EEE9AC00](v36, v37);
  v133 = &v101[-v38];
  MEMORY[0x1EEE9AC00](v39, v40);
  v43 = &v101[-v42];
  v103 = a2;
  if (a3 != a2)
  {
    v44 = *a4;
    v45 = *(v41 + 72);
    v113 = *MEMORY[0x1E69D8678];
    v131 = (v16 + 104);
    v132 = *MEMORY[0x1E69D8680];
    v112 = (v16 + 88);
    v108 = (v16 + 8);
    v110 = (v16 + 96);
    v115 = *MEMORY[0x1E69D8478];
    v129 = (v9 + 104);
    v126 = *MEMORY[0x1E69D8470];
    v114 = (v9 + 88);
    v109 = (v9 + 8);
    v46 = v44 + v45 * (a3 - 1);
    v116 = -v45;
    v47 = a1 - a3;
    v117 = v44;
    v102 = v45;
    v48 = v44 + v45 * a3;
    v121 = v15;
    v120 = &v101[-v42];
    v111 = v8;
LABEL_5:
    v107 = a3;
    v104 = v48;
    v105 = v47;
    v106 = v46;
    v49 = v118;
    while (1)
    {
      sub_1D707111C(v48, v43, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v46, v133, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v43, v127, type metadata accessor for FeedItemSupplementaryAttributes);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v51 = v130;
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_13;
      }

      if (EnumCaseMultiPayload != 2)
      {
        break;
      }

      v52 = *(v127 + 5);
      v138 = *(v127 + 4);
      v139 = v52;
      v53 = *(v127 + 7);
      v140 = *(v127 + 6);
      v141 = v53;
      v54 = *(v127 + 1);
      v134 = *v127;
      v135 = v54;
      v55 = *(v127 + 3);
      v136 = *(v127 + 2);
      v137 = v55;
      v56 = *(v127 + 16);
      sub_1D6729D5C(&v134);
      v57 = *(v56 + 48);
      v58 = *(v56 + 56);

      v59 = v132;
      if ((v58 & 1) == 0)
      {
        *v122 = v57;
        v59 = v113;
      }

      v51 = v130;
      v60 = *v131;
      v61 = v122;
      (*v131)(v122, v59, v130);
      v62 = (*v112)(v61, v51);
      if (v62 == v113)
      {
        v63 = v8;
        (*v110)(v61, v51);
        v64 = *v61;
        v49 = v118;
        goto LABEL_30;
      }

      v49 = v118;
      if (v62 != v132)
      {
        v63 = v8;
        (*v108)(v122, v51);
        goto LABEL_29;
      }

LABEL_14:
      sub_1D707111C(v43, v124, type metadata accessor for FeedItemSupplementaryAttributes);
      v65 = swift_getEnumCaseMultiPayload();
      if (v65 < 2)
      {
        v63 = v8;
        (*v129)(v15, v126, v8);
LABEL_16:
        v64 = 1000;
        goto LABEL_30;
      }

      if (v65 == 2)
      {
        v66 = *(v124 + 5);
        v138 = *(v124 + 4);
        v139 = v66;
        v67 = *(v124 + 7);
        v140 = *(v124 + 6);
        v141 = v67;
        v68 = *(v124 + 1);
        v134 = *v124;
        v135 = v68;
        v69 = *(v124 + 3);
        v136 = *(v124 + 2);
        v137 = v69;
        v70 = *(v124 + 16);
        sub_1D6729D5C(&v134);
        v71 = *(*(v70 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        v72 = *v129;
        if (v71)
        {
          v72(v15, v126, v8);
          v49 = v118;
          v51 = v130;
          v73 = v115;
        }

        else
        {
          v73 = v115;
          v72(v15, v115, v8);
          v49 = v118;
          v51 = v130;
        }
      }

      else
      {
        v73 = v115;
        (*v129)(v15, v115, v8);
        sub_1D7070E6C(v124, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v74 = (*v114)(v15, v8);
      if (v74 == v73)
      {
        v63 = v8;
        v64 = 2000;
        goto LABEL_30;
      }

      if (v74 == v126)
      {
        v63 = v8;
        goto LABEL_16;
      }

      v63 = v8;
      (*v109)(v15, v8);
LABEL_29:
      v64 = 0;
LABEL_30:
      sub_1D707111C(v133, v128, type metadata accessor for FeedItemSupplementaryAttributes);
      v75 = swift_getEnumCaseMultiPayload();
      if (v75 < 2)
      {
        goto LABEL_37;
      }

      if (v75 != 2)
      {
        sub_1D7070E6C(v128, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_37:
        v60(v123, v132, v51);
        v8 = v63;
        v43 = v120;
        goto LABEL_38;
      }

      v76 = *(v128 + 5);
      v138 = *(v128 + 4);
      v139 = v76;
      v77 = *(v128 + 7);
      v140 = *(v128 + 6);
      v141 = v77;
      v78 = *(v128 + 1);
      v134 = *v128;
      v135 = v78;
      v79 = *(v128 + 3);
      v136 = *(v128 + 2);
      v137 = v79;
      v80 = *(v128 + 16);
      sub_1D6729D5C(&v134);
      v81 = *(v80 + 48);
      v82 = *(v80 + 56);

      v83 = v132;
      if ((v82 & 1) == 0)
      {
        *v123 = v81;
        v83 = v113;
      }

      v84 = v123;
      v85 = v130;
      v60(v123, v83, v130);
      v86 = (*v112)(v84, v85);
      v43 = v120;
      if (v86 == v113)
      {
        (*v110)(v84, v85);
        v87 = *v84;
        v8 = v111;
        v49 = v118;
        goto LABEL_53;
      }

      v8 = v111;
      v49 = v118;
      if (v86 != v132)
      {
        (*v108)(v123, v85);
        goto LABEL_52;
      }

LABEL_38:
      sub_1D707111C(v133, v125, type metadata accessor for FeedItemSupplementaryAttributes);
      v88 = swift_getEnumCaseMultiPayload();
      if (v88 < 2)
      {
        (*v129)(v49, v126, v8);
LABEL_40:
        v87 = 1000;
        goto LABEL_53;
      }

      if (v88 == 2)
      {
        v89 = *(v125 + 5);
        v138 = *(v125 + 4);
        v139 = v89;
        v90 = *(v125 + 7);
        v140 = *(v125 + 6);
        v141 = v90;
        v91 = *(v125 + 1);
        v134 = *v125;
        v135 = v91;
        v92 = *(v125 + 3);
        v136 = *(v125 + 2);
        v137 = v92;
        v93 = *(v125 + 16);
        sub_1D6729D5C(&v134);
        v94 = *(*(v93 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        v95 = *v129;
        if (v94)
        {
          v49 = v118;
          v95(v118, v126, v8);
          v96 = v115;
        }

        else
        {
          v49 = v118;
          v96 = v115;
          v95(v118, v115, v8);
        }
      }

      else
      {
        v96 = v115;
        (*v129)(v49, v115, v8);
        sub_1D7070E6C(v125, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v97 = (*v114)(v49, v8);
      if (v97 == v96)
      {
        v87 = 2000;
        goto LABEL_53;
      }

      if (v97 == v126)
      {
        goto LABEL_40;
      }

      (*v109)(v49, v8);
LABEL_52:
      v87 = 0;
LABEL_53:
      sub_1D7070E6C(v133, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D7070E6C(v43, type metadata accessor for FeedItemSupplementaryAttributes);
      v98 = v64 < v87;
      v15 = v121;
      if (!v98)
      {
        goto LABEL_4;
      }

      if (!v117)
      {
        __break(1u);
        return;
      }

      v99 = v119;
      sub_1D7070F64(v48, v119, type metadata accessor for FeedItemSupplementaryAttributes);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D7070F64(v99, v46, type metadata accessor for FeedItemSupplementaryAttributes);
      v46 += v116;
      v48 += v116;
      if (__CFADD__(v47++, 1))
      {
LABEL_4:
        a3 = v107 + 1;
        v46 = v106 + v102;
        v47 = v105 - 1;
        v48 = v104 + v102;
        if (v107 + 1 == v103)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    sub_1D7070E6C(v127, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_13:
    v60 = *v131;
    (*v131)(v122, v132, v51);
    goto LABEL_14;
  }
}

void sub_1D70673F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v167 = a1;
  v7 = sub_1D725EF8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v130[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v130[-v14];
  v165 = sub_1D725F3DC();
  v16 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v17);
  v143 = &v130[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v130[-v21];
  MEMORY[0x1EEE9AC00](v23, v24);
  v142 = &v130[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v144 = &v130[-v28];
  v164 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v164, v29);
  v146 = &v130[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31, v32);
  v150 = &v130[-v33];
  MEMORY[0x1EEE9AC00](v34, v35);
  v162 = &v130[-v36];
  MEMORY[0x1EEE9AC00](v37, v38);
  v145 = &v130[-v39];
  MEMORY[0x1EEE9AC00](v40, v41);
  v149 = &v130[-v42];
  MEMORY[0x1EEE9AC00](v43, v44);
  v161 = &v130[-v45];
  v169 = type metadata accessor for ZIndexable();
  MEMORY[0x1EEE9AC00](v169, v46);
  v154 = &v130[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48, v49);
  v158 = &v130[-v50];
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v170 = &v130[-v55];
  MEMORY[0x1EEE9AC00](v56, v57);
  v168 = &v130[-v60];
  v132 = a2;
  if (a3 != a2)
  {
    v61 = v7;
    v62 = v22;
    v63 = v59;
    v64 = *a4;
    v65 = *(v58 + 72);
    v160 = *MEMORY[0x1E69D8678];
    v155 = (v16 + 104);
    v163 = *MEMORY[0x1E69D8680];
    v159 = (v16 + 88);
    v138 = (v16 + 8);
    v147 = (v16 + 96);
    v140 = *MEMORY[0x1E69D8478];
    v151 = (v8 + 104);
    v148 = *MEMORY[0x1E69D8470];
    v139 = (v8 + 88);
    v133 = (v8 + 8);
    v66 = v64 + v65 * (a3 - 1);
    v152 = -v65;
    v67 = v167 - a3;
    v153 = v64;
    v131 = v65;
    v68 = v64 + v65 * a3;
    v157 = v15;
    v156 = v59;
    v141 = v11;
LABEL_5:
    v137 = a3;
    v134 = v68;
    v135 = v67;
    v69 = v67;
    v136 = v66;
    while (1)
    {
      v166 = v69;
      v70 = v168;
      sub_1D707111C(v68, v168, type metadata accessor for ZIndexable);
      sub_1D707111C(v66, v170, type metadata accessor for ZIndexable);
      sub_1D707111C(v70, v63, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v179 = *v63;
      FeedGroupDecoration.decorationItem.getter(&v171);
      __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
      v71 = v142;
      sub_1D725F4AC();

      v72 = v165;
      v73 = (*v159)(v71, v165);
      if (v73 == v160)
      {
        (*v147)(v71, v72);
        v167 = *v71;
        v15 = v157;
        v74 = v158;
      }

      else
      {
        v74 = v158;
        if (v73 != v163)
        {
          (*v138)(v71, v72);
        }

        v167 = -100;
        v15 = v157;
      }

      __swift_destroy_boxed_opaque_existential_1(&v171);
LABEL_35:
      sub_1D707111C(v170, v74, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v103 = v162;
        sub_1D7070F64(v74, v162, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D707111C(v103, v150, type metadata accessor for FeedItemSupplementaryAttributes);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_49;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v105 = *(v150 + 5);
          v175 = *(v150 + 4);
          v176 = v105;
          v106 = *(v150 + 7);
          v177 = *(v150 + 6);
          v178 = v106;
          v107 = *(v150 + 1);
          v171 = *v150;
          v172 = v107;
          v108 = *(v150 + 3);
          v173 = *(v150 + 2);
          v174 = v108;
          v109 = *(v150 + 16);
          sub_1D6729D5C(&v171);
          v110 = *(v109 + 48);
          v111 = *(v109 + 56);

          v112 = v163;
          if ((v111 & 1) == 0)
          {
            *v62 = v110;
            v112 = v160;
          }

          v113 = v165;
          (*v155)(v62, v112, v165);
          v114 = (*v159)(v62, v113);
          if (v114 != v160)
          {
            v15 = v157;
            if (v114 == v163)
            {
              goto LABEL_50;
            }

            (*v138)(v62, v113);
            goto LABEL_67;
          }

          (*v147)(v62, v113);
          v102 = *v62;
          v15 = v157;
        }

        else
        {
          sub_1D7070E6C(v150, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_49:
          (*v155)(v62, v163, v72);
LABEL_50:
          sub_1D707111C(v162, v146, type metadata accessor for FeedItemSupplementaryAttributes);
          v115 = swift_getEnumCaseMultiPayload();
          if (v115 < 2)
          {
            (*v151)(v11, v148, v61);
            goto LABEL_52;
          }

          if (v115 == 2)
          {
            v116 = *(v146 + 5);
            v175 = *(v146 + 4);
            v176 = v116;
            v117 = *(v146 + 7);
            v177 = *(v146 + 6);
            v178 = v117;
            v118 = *(v146 + 1);
            v171 = *v146;
            v172 = v118;
            v119 = *(v146 + 3);
            v173 = *(v146 + 2);
            v174 = v119;
            v120 = *(v146 + 16);
            sub_1D6729D5C(&v171);
            v121 = *(*(v120 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

            v122 = *v151;
            if (v121)
            {
              v122(v11, v148, v61);
              v123 = v140;
            }

            else
            {
              v123 = v140;
              v122(v11, v140, v61);
            }
          }

          else
          {
            v123 = v140;
            (*v151)(v11, v140, v61);
            sub_1D7070E6C(v146, type metadata accessor for InternalErrorViewLayout.Context);
          }

          v124 = (*v139)(v11, v61);
          if (v124 == v123)
          {
            v102 = 2000;
            goto LABEL_68;
          }

          if (v124 != v148)
          {
            (*v133)(v11, v61);
LABEL_67:
            v102 = 0;
            goto LABEL_68;
          }

LABEL_52:
          v102 = 1000;
        }

LABEL_68:
        sub_1D7070E6C(v162, type metadata accessor for FeedItemSupplementaryAttributes);
        goto LABEL_69;
      }

      v98 = v61;
      v179 = *v74;
      FeedGroupDecoration.decorationItem.getter(&v171);
      __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
      v99 = v143;
      sub_1D725F4AC();
      v100 = v165;

      v101 = (*v159)(v99, v100);
      if (v101 == v160)
      {
        (*v147)(v99, v100);
        v102 = *v99;
      }

      else
      {
        if (v101 != v163)
        {
          (*v138)(v99, v100);
        }

        v102 = -100;
      }

      v61 = v98;
      v15 = v157;
      __swift_destroy_boxed_opaque_existential_1(&v171);
      v11 = v141;
LABEL_69:
      sub_1D7070E6C(v170, type metadata accessor for ZIndexable);
      sub_1D7070E6C(v168, type metadata accessor for ZIndexable);
      v125 = v167 < v102;
      v63 = v156;
      if (!v125)
      {
        goto LABEL_4;
      }

      if (!v153)
      {
        __break(1u);
        return;
      }

      v126 = v154;
      sub_1D7070F64(v68, v154, type metadata accessor for ZIndexable);
      swift_arrayInitWithTakeFrontToBack();
      v127 = v126;
      v128 = v166;
      sub_1D7070F64(v127, v66, type metadata accessor for ZIndexable);
      v66 += v152;
      v68 += v152;
      v129 = __CFADD__(v128, 1);
      v69 = v128 + 1;
      if (v129)
      {
LABEL_4:
        a3 = v137 + 1;
        v66 = v136 + v131;
        v67 = v135 - 1;
        v68 = v134 + v131;
        if (v137 + 1 == v132)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v75 = v161;
    sub_1D7070F64(v63, v161, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D707111C(v75, v149, type metadata accessor for FeedItemSupplementaryAttributes);
    v76 = swift_getEnumCaseMultiPayload();
    v72 = v165;
    v74 = v158;
    if (v76 >= 2)
    {
      if (v76 == 2)
      {
        v77 = *(v149 + 5);
        v175 = *(v149 + 4);
        v176 = v77;
        v78 = *(v149 + 7);
        v177 = *(v149 + 6);
        v178 = v78;
        v79 = *(v149 + 1);
        v171 = *v149;
        v172 = v79;
        v80 = *(v149 + 3);
        v173 = *(v149 + 2);
        v174 = v80;
        v81 = *(v149 + 16);
        sub_1D6729D5C(&v171);
        v82 = *(v81 + 48);
        v83 = *(v81 + 56);

        v84 = v144;
        if ((v83 & 1) == 0)
        {
          *v144 = v82;
        }

        v85 = v84;
        v72 = v165;
        (*v155)();
        v86 = (*v159)(v85, v72);
        if (v86 == v160)
        {
          (*v147)(v85, v72);
          v167 = *v85;
          v74 = v158;
LABEL_34:
          sub_1D7070E6C(v161, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_35;
        }

        v74 = v158;
        if (v86 != v163)
        {
          (*v138)(v144, v72);
          goto LABEL_59;
        }

LABEL_21:
        sub_1D707111C(v161, v145, type metadata accessor for FeedItemSupplementaryAttributes);
        v87 = swift_getEnumCaseMultiPayload();
        if (v87 < 2)
        {
          (*v151)(v15, v148, v61);
          goto LABEL_23;
        }

        if (v87 == 2)
        {
          v89 = *(v145 + 5);
          v175 = *(v145 + 4);
          v176 = v89;
          v90 = *(v145 + 7);
          v177 = *(v145 + 6);
          v178 = v90;
          v91 = *(v145 + 1);
          v171 = *v145;
          v172 = v91;
          v92 = *(v145 + 3);
          v173 = *(v145 + 2);
          v174 = v92;
          v93 = *(v145 + 16);
          sub_1D6729D5C(&v171);
          v94 = *(*(v93 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

          v95 = *v151;
          if (v94)
          {
            v95(v15, v148, v61);
            v72 = v165;
            v96 = v140;
          }

          else
          {
            v96 = v140;
            v95(v15, v140, v61);
            v72 = v165;
          }
        }

        else
        {
          v96 = v140;
          (*v151)(v15, v140, v61);
          sub_1D7070E6C(v145, type metadata accessor for InternalErrorViewLayout.Context);
        }

        v97 = (*v139)(v15, v61);
        if (v97 == v96)
        {
          v88 = 2000;
          goto LABEL_33;
        }

        if (v97 == v148)
        {
LABEL_23:
          v88 = 1000;
LABEL_33:
          v167 = v88;
          goto LABEL_34;
        }

        (*v133)(v15, v61);
LABEL_59:
        v167 = 0;
        goto LABEL_34;
      }

      sub_1D7070E6C(v149, type metadata accessor for InternalErrorViewLayout.Context);
    }

    (*v155)(v144, v163, v72);
    goto LABEL_21;
  }
}

void sub_1D70684AC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v276 = a4;
  v277 = a1;
  v7 = sub_1D725EF8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v272 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v272 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v281 = &v272 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v272 - v21;
  v317 = sub_1D725F3DC();
  v23 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317, v24);
  v309 = (&v272 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v308 = (&v272 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v288 = (&v272 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v283 = (&v272 - v34);
  v35 = type metadata accessor for FeedItemSupplementaryAttributes();
  v291 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v280 = &v272 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v307 = &v272 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v311 = (&v272 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v314 = (&v272 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v310 = (&v272 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v313 = (&v272 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v323 = &v272 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v321 = &v272 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v290 = (&v272 - v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  v294 = (&v272 - v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v289 = (&v272 - v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v293 = (&v272 - v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  v300 = &v272 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v299 = &v272 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v273 = &v272 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v272 = &v272 - v82;
  v295 = a3;
  v83 = *(a3 + 8);
  if (v83 < 1)
  {
    v84 = MEMORY[0x1E69E7CC0];
LABEL_193:
    a3 = *v277;
    if (!*v277)
    {
      goto LABEL_231;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_195:
      v332 = v84;
      v267 = *(v84 + 16);
      if (v267 >= 2)
      {
        while (*v295)
        {
          v268 = *(v84 + 16 * v267);
          v269 = v84;
          v270 = *(v84 + 16 * (v267 - 1) + 32);
          v84 = *(v84 + 16 * (v267 - 1) + 40);
          sub_1D706C940(*v295 + *(v291 + 72) * v268, *v295 + *(v291 + 72) * v270, *v295 + *(v291 + 72) * v84, a3);
          if (v5)
          {
            goto LABEL_203;
          }

          if (v84 < v268)
          {
            goto LABEL_218;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v269 = sub_1D62FF50C(v269);
          }

          if (v267 - 2 >= *(v269 + 2))
          {
            goto LABEL_219;
          }

          v271 = &v269[16 * v267];
          *v271 = v268;
          *(v271 + 1) = v84;
          v332 = v269;
          sub_1D62FF480(v267 - 1);
          v84 = v332;
          v267 = *(v332 + 16);
          if (v267 <= 1)
          {
            goto LABEL_203;
          }
        }

        goto LABEL_229;
      }

LABEL_203:

      return;
    }

LABEL_225:
    v84 = sub_1D62FF50C(v84);
    goto LABEL_195;
  }

  v302 = *MEMORY[0x1E69D8678];
  v319 = (v23 + 104);
  v320 = *MEMORY[0x1E69D8680];
  v301 = (v23 + 88);
  v287 = (v23 + 8);
  v298 = (v23 + 96);
  v304 = *MEMORY[0x1E69D8478];
  v316 = (v8 + 104);
  v315 = *MEMORY[0x1E69D8470];
  v305 = (v8 + 88);
  v296 = (v8 + 8);
  v84 = MEMORY[0x1E69E7CC0];
  v318 = v7;
  v303 = v11;
  v85 = 0;
  v312 = v15;
  v286 = v22;
  v322 = v35;
LABEL_4:
  v86 = v85;
  v87 = v85 + 1;
  if (v85 + 1 >= v83)
  {
    v154 = v85 + 1;
    v155 = v276;
    goto LABEL_73;
  }

  v297 = v83;
  v274 = v84;
  v88 = *(v291 + 72);
  v89 = *v295 + v88 * v87;
  v282 = *v295;
  v90 = v282;
  v292 = v89;
  v91 = v272;
  sub_1D707111C(v89, v272, type metadata accessor for FeedItemSupplementaryAttributes);
  v92 = v90 + v88 * v86;
  v93 = v273;
  sub_1D707111C(v92, v273, type metadata accessor for FeedItemSupplementaryAttributes);
  v285 = sub_1D7063904();
  v284 = sub_1D7063904();
  sub_1D7070E6C(v93, type metadata accessor for FeedItemSupplementaryAttributes);
  sub_1D7070E6C(v91, type metadata accessor for FeedItemSupplementaryAttributes);
  v275 = v86;
  a3 = v86 + 2;
  v306 = v88;
  v94 = v282 + v88 * (v86 + 2);
  v95 = v292;
  do
  {
    if (v297 == a3)
    {
      v84 = v274;
      v154 = v297;
      goto LABEL_59;
    }

    v99 = v299;
    sub_1D707111C(v94, v299, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D707111C(v95, v300, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D707111C(v99, v293, type metadata accessor for FeedItemSupplementaryAttributes);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1D7070E6C(v293, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_16:
      v109 = *v319;
      (*v319)(v283, v320, v317);
      goto LABEL_17;
    }

    v101 = v293[5];
    v328 = v293[4];
    v329 = v101;
    v102 = v293[7];
    v330 = v293[6];
    v331 = v102;
    v103 = v293[1];
    v324 = *v293;
    v325 = v103;
    v104 = v293[3];
    v326 = v293[2];
    v327 = v104;
    v105 = *(v293 + 16);
    sub_1D6729D5C(&v324);
    v106 = *(v105 + 48);
    v107 = *(v105 + 56);

    v108 = v283;
    if ((v107 & 1) == 0)
    {
      *v283 = v106;
    }

    v109 = *v319;
    v110 = v317;
    v111 = v108;
    (*v319)();
    v112 = (*v301)(v111, v110);
    if (v112 == v302)
    {
      (*v298)(v111, v110);
      v113 = *v111;
      goto LABEL_32;
    }

    if (v112 != v320)
    {
      (*v287)(v283, v317);
      v113 = 0;
      goto LABEL_32;
    }

LABEL_17:
    sub_1D707111C(v299, v289, type metadata accessor for FeedItemSupplementaryAttributes);
    v114 = swift_getEnumCaseMultiPayload();
    if (v114 >= 2)
    {
      v292 = v5;
      v115 = v95;
      if (v114 == 2)
      {
        v116 = v289[5];
        v328 = v289[4];
        v329 = v116;
        v117 = v289[7];
        v330 = v289[6];
        v331 = v117;
        v118 = v289[1];
        v324 = *v289;
        v325 = v118;
        v119 = v289[3];
        v326 = v289[2];
        v327 = v119;
        v120 = *(v289 + 16);
        sub_1D6729D5C(&v324);
        v121 = *(*(v120 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        v122 = *v316;
        if (v121)
        {
          v123 = v22;
          v125 = v318;
          v122(v22, v315, v318);
          v124 = v304;
        }

        else
        {
          v123 = v22;
          v124 = v304;
          v125 = v318;
          v122(v22, v304, v318);
        }
      }

      else
      {
        v123 = v22;
        v124 = v304;
        v125 = v318;
        (*v316)(v22, v304, v318);
        sub_1D7070E6C(v289, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v126 = (*v305)(v123, v125);
      if (v126 == v124)
      {
        v113 = 2000;
        v95 = v115;
      }

      else
      {
        v95 = v115;
        if (v126 == v315)
        {
          v113 = 1000;
        }

        else
        {
          (*v296)(v22, v318);
          v113 = 0;
        }
      }

      v5 = v292;
    }

    else
    {
      (*v316)(v22, v315, v318);
      v113 = 1000;
    }

LABEL_32:
    sub_1D707111C(v300, v294, type metadata accessor for FeedItemSupplementaryAttributes);
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 < 2)
    {
      goto LABEL_39;
    }

    if (v127 != 2)
    {
      sub_1D7070E6C(v294, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_39:
      (v109)(v288, v320, v317);
      goto LABEL_40;
    }

    v292 = v95;
    v128 = v5;
    v129 = v294[5];
    v328 = v294[4];
    v329 = v129;
    v130 = v294[7];
    v330 = v294[6];
    v331 = v130;
    v131 = v294[1];
    v324 = *v294;
    v325 = v131;
    v132 = v294[3];
    v326 = v294[2];
    v327 = v132;
    v133 = *(v294 + 16);
    sub_1D6729D5C(&v324);
    v134 = *(v133 + 48);
    v135 = *(v133 + 56);

    v136 = v320;
    if ((v135 & 1) == 0)
    {
      *v288 = v134;
      v136 = v302;
    }

    v137 = v288;
    v138 = v317;
    (v109)(v288, v136, v317);
    v139 = (*v301)(v137, v138);
    if (v139 == v302)
    {
      (*v298)(v137, v138);
      v96 = *v137;
      v5 = v128;
LABEL_55:
      v95 = v292;
      goto LABEL_7;
    }

    v5 = v128;
    if (v139 != v320)
    {
      (*v287)(v288, v317);
      v96 = 0;
      goto LABEL_55;
    }

    v95 = v292;
LABEL_40:
    sub_1D707111C(v300, v290, type metadata accessor for FeedItemSupplementaryAttributes);
    v140 = swift_getEnumCaseMultiPayload();
    v141 = v281;
    if (v140 < 2)
    {
      (*v316)(v281, v315, v318);
      v96 = 1000;
    }

    else
    {
      v292 = v113;
      v142 = v5;
      v143 = v95;
      if (v140 == 2)
      {
        v144 = v290[5];
        v328 = v290[4];
        v329 = v144;
        v145 = v290[7];
        v330 = v290[6];
        v331 = v145;
        v146 = v290[1];
        v324 = *v290;
        v325 = v146;
        v147 = v290[3];
        v326 = v290[2];
        v327 = v147;
        v148 = *(v290 + 16);
        sub_1D6729D5C(&v324);
        v149 = *(*(v148 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        v150 = *v316;
        if (v149)
        {
          v152 = v318;
          v150(v141, v315, v318);
          v151 = v304;
        }

        else
        {
          v151 = v304;
          v152 = v318;
          v150(v141, v304, v318);
        }
      }

      else
      {
        v151 = v304;
        v152 = v318;
        (*v316)(v281, v304, v318);
        sub_1D7070E6C(v290, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v153 = (*v305)(v141, v152);
      if (v153 == v151)
      {
        v96 = 2000;
        v95 = v143;
      }

      else
      {
        v95 = v143;
        if (v153 == v315)
        {
          v96 = 1000;
        }

        else
        {
          (*v296)(v141, v318);
          v96 = 0;
        }
      }

      v5 = v142;
      v113 = v292;
    }

LABEL_7:
    v97 = v285 < v284;
    sub_1D7070E6C(v300, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D7070E6C(v299, type metadata accessor for FeedItemSupplementaryAttributes);
    v98 = v113 >= v96;
    ++a3;
    v94 += v306;
    v95 += v306;
    v15 = v312;
    v22 = v286;
  }

  while (((v97 ^ v98) & 1) != 0);
  v154 = a3 - 1;
  v84 = v274;
LABEL_59:
  v155 = v276;
  v86 = v275;
  if (v285 < v284)
  {
    if (v154 < v275)
    {
      goto LABEL_222;
    }

    if (v275 < v154)
    {
      v156 = v154;
      a3 = v306 * (v154 - 1);
      v157 = v154 * v306;
      v297 = v154;
      v158 = v275;
      v159 = v275 * v306;
      do
      {
        if (v158 != --v156)
        {
          v292 = v5;
          v160 = *v295;
          if (!*v295)
          {
            goto LABEL_228;
          }

          sub_1D7070F64(v160 + v159, v280, type metadata accessor for FeedItemSupplementaryAttributes);
          if (v159 < a3 || v160 + v159 >= (v160 + v157))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v159 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1D7070F64(v280, v160 + a3, type metadata accessor for FeedItemSupplementaryAttributes);
          v5 = v292;
        }

        ++v158;
        a3 -= v306;
        v157 -= v306;
        v159 += v306;
      }

      while (v158 < v156);
      v155 = v276;
      v15 = v312;
      v154 = v297;
      v86 = v275;
    }
  }

LABEL_73:
  v161 = v295[1];
  if (v154 >= v161)
  {
    goto LABEL_82;
  }

  if (__OFSUB__(v154, v86))
  {
    goto LABEL_221;
  }

  if (v154 - v86 >= v155)
  {
LABEL_82:
    v85 = v154;
    if (v154 < v86)
    {
      goto LABEL_220;
    }

    goto LABEL_83;
  }

  if (__OFADD__(v86, v155))
  {
    goto LABEL_223;
  }

  if (v86 + v155 >= v161)
  {
    v162 = v295[1];
  }

  else
  {
    v162 = v86 + v155;
  }

  if (v162 < v86)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  if (v154 == v162)
  {
    goto LABEL_82;
  }

  v274 = v84;
  v292 = v5;
  v208 = *v295;
  v209 = *(v291 + 72);
  v210 = *v295 + v209 * (v154 - 1);
  a3 = -v209;
  v275 = v86;
  v211 = v86 - v154;
  v297 = v154;
  v306 = v208;
  v278 = v209;
  v212 = v208 + v154 * v209;
  v279 = v162;
  while (2)
  {
    v282 = v212;
    v284 = v211;
    v285 = v210;
    v213 = v210;
LABEL_137:
    v214 = v321;
    sub_1D707111C(v212, v321, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D707111C(v213, v323, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D707111C(v214, v313, type metadata accessor for FeedItemSupplementaryAttributes);
    v215 = swift_getEnumCaseMultiPayload();
    v216 = v317;
    if (v215 < 2)
    {
LABEL_144:
      v225 = *v319;
      (*v319)(v308, v320, v216);
      goto LABEL_145;
    }

    if (v215 != 2)
    {
      sub_1D7070E6C(v313, type metadata accessor for InternalErrorViewLayout.Context);
      goto LABEL_144;
    }

    v217 = v313[5];
    v328 = v313[4];
    v329 = v217;
    v218 = v313[7];
    v330 = v313[6];
    v331 = v218;
    v219 = v313[1];
    v324 = *v313;
    v325 = v219;
    v220 = v313[3];
    v326 = v313[2];
    v327 = v220;
    v221 = *(v313 + 16);
    sub_1D6729D5C(&v324);
    v222 = *(v221 + 48);
    v223 = *(v221 + 56);

    v224 = v320;
    if ((v223 & 1) == 0)
    {
      *v308 = v222;
      v224 = v302;
    }

    v225 = *v319;
    v226 = v308;
    v216 = v317;
    (*v319)(v308, v224, v317);
    v227 = (*v301)(v226, v216);
    if (v227 == v302)
    {
      (*v298)(v226, v216);
      v228 = *v226;
      goto LABEL_161;
    }

    if (v227 == v320)
    {
      v15 = v312;
LABEL_145:
      sub_1D707111C(v321, v310, type metadata accessor for FeedItemSupplementaryAttributes);
      v229 = swift_getEnumCaseMultiPayload();
      if (v229 < 2)
      {
        (*v316)(v15, v315, v318);
        goto LABEL_147;
      }

      if (v229 == 2)
      {
        v230 = v310[5];
        v328 = v310[4];
        v329 = v230;
        v231 = v310[7];
        v330 = v310[6];
        v331 = v231;
        v232 = v310[1];
        v324 = *v310;
        v325 = v232;
        v233 = v310[3];
        v326 = v310[2];
        v327 = v233;
        v234 = *(v310 + 16);
        sub_1D6729D5C(&v324);
        v235 = *(*(v234 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        v236 = *v316;
        if (v235)
        {
          v238 = v318;
          v236(v15, v315, v318);
          v216 = v317;
          v237 = v304;
        }

        else
        {
          v237 = v304;
          v238 = v318;
          v236(v15, v304, v318);
          v216 = v317;
        }
      }

      else
      {
        v237 = v304;
        v238 = v318;
        (*v316)(v15, v304, v318);
        sub_1D7070E6C(v310, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v239 = (*v305)(v15, v238);
      if (v239 == v237)
      {
        v228 = 2000;
        goto LABEL_161;
      }

      if (v239 == v315)
      {
LABEL_147:
        v228 = 1000;
        goto LABEL_161;
      }

      (*v296)(v15, v318);
    }

    else
    {
      (*v287)(v226, v216);
    }

    v228 = 0;
LABEL_161:
    sub_1D707111C(v323, v314, type metadata accessor for FeedItemSupplementaryAttributes);
    v240 = swift_getEnumCaseMultiPayload();
    if (v240 < 2)
    {
LABEL_168:
      (v225)(v309, v320, v216);
      v253 = v303;
    }

    else
    {
      if (v240 != 2)
      {
        sub_1D7070E6C(v314, type metadata accessor for InternalErrorViewLayout.Context);
        goto LABEL_168;
      }

      v241 = v314[5];
      v328 = v314[4];
      v329 = v241;
      v242 = v314[7];
      v330 = v314[6];
      v331 = v242;
      v243 = v314[1];
      v324 = *v314;
      v325 = v243;
      v244 = v314[3];
      v326 = v314[2];
      v327 = v244;
      v245 = *(v314 + 16);
      sub_1D6729D5C(&v324);
      v246 = *(v245 + 48);
      v247 = *(v245 + 56);

      v248 = v320;
      if ((v247 & 1) == 0)
      {
        *v309 = v246;
        v248 = v302;
      }

      v249 = v309;
      v250 = v317;
      (v225)(v309, v248, v317);
      v251 = (*v301)(v249, v250);
      if (v251 == v302)
      {
        (*v298)(v249, v250);
        v252 = *v249;
        goto LABEL_185;
      }

      v253 = v303;
      if (v251 != v320)
      {
        (*v287)(v309, v250);
        goto LABEL_184;
      }
    }

    sub_1D707111C(v323, v311, type metadata accessor for FeedItemSupplementaryAttributes);
    v254 = swift_getEnumCaseMultiPayload();
    if (v254 < 2)
    {
      (*v316)(v253, v315, v318);
      goto LABEL_171;
    }

    v255 = v318;
    if (v254 == 2)
    {
      v256 = v311[5];
      v328 = v311[4];
      v329 = v256;
      v257 = v311[7];
      v330 = v311[6];
      v331 = v257;
      v258 = v311[1];
      v324 = *v311;
      v325 = v258;
      v259 = v311[3];
      v326 = v311[2];
      v327 = v259;
      v260 = *(v311 + 16);
      sub_1D6729D5C(&v324);
      v261 = *(*(v260 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

      v262 = *v316;
      if (v261)
      {
        v255 = v318;
        v262(v253, v315, v318);
        v263 = v304;
      }

      else
      {
        v263 = v304;
        v255 = v318;
        v262(v253, v304, v318);
      }
    }

    else
    {
      v263 = v304;
      (*v316)(v253, v304, v318);
      sub_1D7070E6C(v311, type metadata accessor for InternalErrorViewLayout.Context);
    }

    v264 = (*v305)(v253, v255);
    if (v264 == v263)
    {
      v252 = 2000;
    }

    else if (v264 == v315)
    {
LABEL_171:
      v252 = 1000;
    }

    else
    {
      (*v296)(v253, v255);
LABEL_184:
      v252 = 0;
    }

LABEL_185:
    sub_1D7070E6C(v323, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D7070E6C(v321, type metadata accessor for FeedItemSupplementaryAttributes);
    if (v228 >= v252)
    {
      v15 = v312;
LABEL_135:
      v210 = v285 + v278;
      v211 = v284 - 1;
      v212 = v282 + v278;
      ++v297;
      v85 = v279;
      if (v297 != v279)
      {
        continue;
      }

      v5 = v292;
      v84 = v274;
      v86 = v275;
      if (v279 < v275)
      {
        goto LABEL_220;
      }

LABEL_83:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1D698BA94(0, *(v84 + 16) + 1, 1, v84);
      }

      a3 = *(v84 + 16);
      v163 = *(v84 + 24);
      v164 = a3 + 1;
      if (a3 >= v163 >> 1)
      {
        v84 = sub_1D698BA94((v163 > 1), a3 + 1, 1, v84);
      }

      *(v84 + 16) = v164;
      v165 = v84 + 16 * a3;
      *(v165 + 32) = v86;
      *(v165 + 40) = v85;
      if (!*v277)
      {
        goto LABEL_230;
      }

      if (!a3)
      {
LABEL_3:
        v83 = v295[1];
        v22 = v286;
        if (v85 >= v83)
        {
          goto LABEL_193;
        }

        goto LABEL_4;
      }

      v166 = *v277;
      while (1)
      {
        v167 = v164 - 1;
        if (v164 >= 4)
        {
          break;
        }

        if (v164 == 3)
        {
          v168 = *(v84 + 32);
          v169 = *(v84 + 40);
          v178 = __OFSUB__(v169, v168);
          v170 = v169 - v168;
          v171 = v178;
LABEL_103:
          if (v171)
          {
            goto LABEL_209;
          }

          v184 = (v84 + 16 * v164);
          v186 = *v184;
          v185 = v184[1];
          v187 = __OFSUB__(v185, v186);
          v188 = v185 - v186;
          v189 = v187;
          if (v187)
          {
            goto LABEL_212;
          }

          v190 = (v84 + 32 + 16 * v167);
          v192 = *v190;
          v191 = v190[1];
          v178 = __OFSUB__(v191, v192);
          v193 = v191 - v192;
          if (v178)
          {
            goto LABEL_215;
          }

          if (__OFADD__(v188, v193))
          {
            goto LABEL_216;
          }

          if (v188 + v193 >= v170)
          {
            if (v170 < v193)
            {
              v167 = v164 - 2;
            }

            goto LABEL_124;
          }

          goto LABEL_117;
        }

        v194 = (v84 + 16 * v164);
        v196 = *v194;
        v195 = v194[1];
        v178 = __OFSUB__(v195, v196);
        v188 = v195 - v196;
        v189 = v178;
LABEL_117:
        if (v189)
        {
          goto LABEL_211;
        }

        v197 = v84 + 16 * v167;
        v199 = *(v197 + 32);
        v198 = *(v197 + 40);
        v178 = __OFSUB__(v198, v199);
        v200 = v198 - v199;
        if (v178)
        {
          goto LABEL_214;
        }

        if (v200 < v188)
        {
          goto LABEL_3;
        }

LABEL_124:
        a3 = v167 - 1;
        if (v167 - 1 >= v164)
        {
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        if (!*v295)
        {
          goto LABEL_227;
        }

        v205 = *(v84 + 32 + 16 * a3);
        v206 = *(v84 + 32 + 16 * v167 + 8);
        sub_1D706C940(*v295 + *(v291 + 72) * v205, *v295 + *(v291 + 72) * *(v84 + 32 + 16 * v167), *v295 + *(v291 + 72) * v206, v166);
        if (v5)
        {
          goto LABEL_203;
        }

        if (v206 < v205)
        {
          goto LABEL_205;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1D62FF50C(v84);
        }

        if (a3 >= *(v84 + 16))
        {
          goto LABEL_206;
        }

        v207 = v84 + 16 * a3;
        *(v207 + 32) = v205;
        *(v207 + 40) = v206;
        v332 = v84;
        sub_1D62FF480(v167);
        v84 = v332;
        v164 = *(v332 + 16);
        v15 = v312;
        if (v164 <= 1)
        {
          goto LABEL_3;
        }
      }

      v172 = v84 + 32 + 16 * v164;
      v173 = *(v172 - 64);
      v174 = *(v172 - 56);
      v178 = __OFSUB__(v174, v173);
      v175 = v174 - v173;
      if (v178)
      {
        goto LABEL_207;
      }

      v177 = *(v172 - 48);
      v176 = *(v172 - 40);
      v178 = __OFSUB__(v176, v177);
      v170 = v176 - v177;
      v171 = v178;
      if (v178)
      {
        goto LABEL_208;
      }

      v179 = (v84 + 16 * v164);
      v181 = *v179;
      v180 = v179[1];
      v178 = __OFSUB__(v180, v181);
      v182 = v180 - v181;
      if (v178)
      {
        goto LABEL_210;
      }

      v178 = __OFADD__(v170, v182);
      v183 = v170 + v182;
      if (v178)
      {
        goto LABEL_213;
      }

      if (v183 >= v175)
      {
        v201 = (v84 + 32 + 16 * v167);
        v203 = *v201;
        v202 = v201[1];
        v178 = __OFSUB__(v202, v203);
        v204 = v202 - v203;
        if (v178)
        {
          goto LABEL_217;
        }

        if (v170 < v204)
        {
          v167 = v164 - 2;
        }

        goto LABEL_124;
      }

      goto LABEL_103;
    }

    break;
  }

  v15 = v312;
  if (v306)
  {
    v265 = v307;
    sub_1D7070F64(v212, v307, type metadata accessor for FeedItemSupplementaryAttributes);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D7070F64(v265, v213, type metadata accessor for FeedItemSupplementaryAttributes);
    v213 += a3;
    v212 += a3;
    if (__CFADD__(v211++, 1))
    {
      goto LABEL_135;
    }

    goto LABEL_137;
  }

  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
}

void sub_1D706A2E8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v333 = a4;
  v332 = a1;
  v7 = sub_1D725EF8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v365 = &v328 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v328 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v353 = &v328 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v328 - v20;
  v22 = sub_1D725F3DC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v367 = (&v328 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v368 = (&v328 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v366 = (&v328 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v369 = (&v328 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v335 = (&v328 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v339 = (&v328 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v342 = (&v328 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v338 = (&v328 - v46);
  v392 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v392, v47);
  v371 = (&v328 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49, v50);
  v374 = (&v328 - v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v387 = &v328 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v370 = (&v328 - v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  v373 = (&v328 - v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  v386 = &v328 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v341 = (&v328 - v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  v345 = (&v328 - v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  v356 = &v328 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v340 = (&v328 - v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  v344 = (&v328 - v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  v355 = &v328 - v81;
  v82 = type metadata accessor for ZIndexable();
  v354 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v83);
  v336 = &v328 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v379 = &v328 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v383 = &v328 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v382 = &v328 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v393 = &v328 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v391 = &v328 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v350 = &v328 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v349 = (&v328 - v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v361 = &v328 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v358 = &v328 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v330 = &v328 - v114;
  MEMORY[0x1EEE9AC00](v115, v116);
  v329 = &v328 - v117;
  v357 = a3;
  v118 = a3[1];
  if (v118 < 1)
  {
    v120 = MEMORY[0x1E69E7CC0];
LABEL_226:
    v121 = *v332;
    if (!*v332)
    {
      goto LABEL_265;
    }

    v8 = v120;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v323 = v8;
LABEL_229:
      v403 = v323;
      v8 = *(v323 + 2);
      if (v8 >= 2)
      {
        while (*v357)
        {
          v324 = *&v323[16 * v8];
          v325 = v323;
          v326 = *&v323[16 * v8 + 24];
          sub_1D706E2F4(*v357 + *(v354 + 72) * v324, *v357 + *(v354 + 72) * *&v323[16 * v8 + 16], (*v357 + *(v354 + 72) * v326), v121);
          if (v5)
          {
            goto LABEL_237;
          }

          if (v326 < v324)
          {
            goto LABEL_252;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v325 = sub_1D62FF50C(v325);
          }

          if (v8 - 2 >= *(v325 + 2))
          {
            goto LABEL_253;
          }

          v327 = &v325[16 * v8];
          *v327 = v324;
          *(v327 + 1) = v326;
          v403 = v325;
          sub_1D62FF480(v8 - 1);
          v323 = v403;
          v8 = *(v403 + 2);
          if (v8 <= 1)
          {
            goto LABEL_237;
          }
        }

        goto LABEL_263;
      }

LABEL_237:

      return;
    }

LABEL_259:
    v323 = sub_1D62FF50C(v8);
    goto LABEL_229;
  }

  v119 = 0;
  v388 = *MEMORY[0x1E69D8678];
  v381 = (v23 + 104);
  v390 = *MEMORY[0x1E69D8680];
  v385 = (v23 + 88);
  v360 = (v23 + 8);
  v372 = (v23 + 96);
  v362 = *MEMORY[0x1E69D8478];
  v376 = (v8 + 104);
  v375 = *MEMORY[0x1E69D8470];
  v363 = (v8 + 88);
  v346 = (v8 + 8);
  v120 = MEMORY[0x1E69E7CC0];
  v380 = v7;
  v364 = v14;
  v351 = v21;
  v384 = v22;
  v389 = v82;
  v121 = v382;
LABEL_5:
  v122 = v119;
  v337 = v120;
  if (v119 + 1 >= v118)
  {
    v195 = v119 + 1;
    v196 = v333;
    goto LABEL_91;
  }

  v359 = v118;
  v123 = *v357;
  v124 = *(v354 + 72);
  v125 = *v357 + v124 * (v119 + 1);
  v126 = v329;
  sub_1D707111C(v125, v329, type metadata accessor for ZIndexable);
  v127 = v330;
  sub_1D707111C(v123 + v124 * v122, v330, type metadata accessor for ZIndexable);
  v377 = sub_1D7063674();
  v352 = sub_1D7063674();
  v8 = type metadata accessor for ZIndexable;
  sub_1D7070E6C(v127, type metadata accessor for ZIndexable);
  sub_1D7070E6C(v126, type metadata accessor for ZIndexable);
  v331 = v122;
  v128 = v122 + 2;
  v129 = v125;
  v130 = v351;
  v131 = v123 + v124 * v128;
  do
  {
    if (v359 == v128)
    {
      v121 = v382;
      v195 = v359;
      goto LABEL_75;
    }

    v378 = v131;
    v135 = v358;
    sub_1D707111C(v131, v358, type metadata accessor for ZIndexable);
    sub_1D707111C(v129, v361, type metadata accessor for ZIndexable);
    v136 = v135;
    v137 = v349;
    sub_1D707111C(v136, v349, type metadata accessor for ZIndexable);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v143 = v137;
      v144 = v355;
      sub_1D7070F64(v143, v355, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v144, v344, type metadata accessor for FeedItemSupplementaryAttributes);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v141 = v353;
      if (EnumCaseMultiPayload >= 2)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v146 = v344[5];
          v398 = v344[4];
          v399 = v146;
          v147 = v344[7];
          v400 = v344[6];
          v401 = v147;
          v148 = v344[1];
          v394 = *v344;
          v395 = v148;
          v149 = v344[3];
          v396 = v344[2];
          v397 = v149;
          v150 = *(v344 + 16);
          sub_1D6729D5C(&v394);
          v151 = *(v150 + 48);
          v152 = *(v150 + 56);

          v153 = v390;
          if ((v152 & 1) == 0)
          {
            *v338 = v151;
            v153 = v388;
          }

          v154 = v338;
          (*v381)(v338, v153, v22);
          v155 = (*v385)(v154, v22);
          if (v155 == v388)
          {
            (*v372)(v154, v22);
            v140 = *v154;
            v141 = v353;
            goto LABEL_38;
          }

          v141 = v353;
          if (v155 != v390)
          {
            (*v360)(v338, v22);
            v140 = 0;
            goto LABEL_38;
          }

LABEL_26:
          sub_1D707111C(v355, v340, type metadata accessor for FeedItemSupplementaryAttributes);
          v156 = swift_getEnumCaseMultiPayload();
          if (v156 >= 2)
          {
            v157 = v362;
            if (v156 == 2)
            {
              v158 = v340[5];
              v398 = v340[4];
              v399 = v158;
              v159 = v340[7];
              v400 = v340[6];
              v401 = v159;
              v160 = v340[1];
              v394 = *v340;
              v395 = v160;
              v161 = v340[3];
              v396 = v340[2];
              v397 = v161;
              v162 = *(v340 + 16);
              sub_1D6729D5C(&v394);
              v163 = *(*(v162 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

              if (v163)
              {
                v164 = v375;
              }

              else
              {
                v164 = v157;
              }

              v165 = v380;
              (*v376)(v130, v164, v380);
            }

            else
            {
              v165 = v380;
              (*v376)(v130, v362, v380);
              sub_1D7070E6C(v340, type metadata accessor for InternalErrorViewLayout.Context);
            }

            v166 = (*v363)(v130, v165);
            if (v166 != v157)
            {
              v142 = v350;
              if (v166 == v375)
              {
                v140 = 1000;
              }

              else
              {
                (*v346)(v130, v380);
                v140 = 0;
              }

              goto LABEL_39;
            }

            v140 = 2000;
          }

          else
          {
            (*v376)(v130, v375, v380);
            v140 = 1000;
          }

LABEL_38:
          v142 = v350;
LABEL_39:
          sub_1D7070E6C(v355, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_40;
        }

        sub_1D7070E6C(v344, type metadata accessor for InternalErrorViewLayout.Context);
      }

      (*v381)(v338, v390, v22);
      goto LABEL_26;
    }

    v402 = *v137;
    FeedGroupDecoration.decorationItem.getter(&v394);
    __swift_project_boxed_opaque_existential_1(&v394, *(&v395 + 1));
    v138 = v342;
    sub_1D725F4AC();

    v139 = (*v385)(v138, v22);
    if (v139 == v388)
    {
      (*v372)(v138, v22);
      v140 = *v138;
      v141 = v353;
      v130 = v351;
      v142 = v350;
    }

    else
    {
      v141 = v353;
      v130 = v351;
      v142 = v350;
      if (v139 != v390)
      {
        (*v360)(v342, v22);
      }

      v140 = -100;
    }

    __swift_destroy_boxed_opaque_existential_1(&v394);
LABEL_40:
    sub_1D707111C(v361, v142, type metadata accessor for ZIndexable);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v170 = v142;
      v171 = v356;
      sub_1D7070F64(v170, v356, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v171, v345, type metadata accessor for FeedItemSupplementaryAttributes);
      v172 = swift_getEnumCaseMultiPayload();
      if (v172 >= 2)
      {
        if (v172 == 2)
        {
          v173 = v345[5];
          v398 = v345[4];
          v399 = v173;
          v174 = v345[7];
          v400 = v345[6];
          v401 = v174;
          v175 = v345[1];
          v394 = *v345;
          v395 = v175;
          v176 = v345[3];
          v396 = v345[2];
          v397 = v176;
          v177 = *(v345 + 16);
          sub_1D6729D5C(&v394);
          v178 = *(v177 + 48);
          v179 = *(v177 + 56);

          v180 = v390;
          if ((v179 & 1) == 0)
          {
            *v339 = v178;
            v180 = v388;
          }

          v181 = v339;
          v182 = v384;
          (*v381)(v339, v180, v384);
          v183 = (*v385)(v181, v182);
          if (v183 == v388)
          {
            (*v372)(v181, v182);
            v132 = *v181;
LABEL_71:
            sub_1D7070E6C(v356, type metadata accessor for FeedItemSupplementaryAttributes);
            goto LABEL_9;
          }

          v141 = v353;
          if (v183 != v390)
          {
            (*v360)(v339, v384);
            goto LABEL_70;
          }

LABEL_53:
          sub_1D707111C(v356, v341, type metadata accessor for FeedItemSupplementaryAttributes);
          v184 = swift_getEnumCaseMultiPayload();
          if (v184 < 2)
          {
            (*v376)(v141, v375, v380);
LABEL_55:
            v132 = 1000;
            goto LABEL_71;
          }

          if (v184 == 2)
          {
            v185 = v341[5];
            v398 = v341[4];
            v399 = v185;
            v186 = v341[7];
            v400 = v341[6];
            v401 = v186;
            v187 = v341[1];
            v394 = *v341;
            v395 = v187;
            v188 = v341[3];
            v396 = v341[2];
            v397 = v188;
            v189 = *(v341 + 16);
            sub_1D6729D5C(&v394);
            v190 = *(*(v189 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

            v191 = *v376;
            if (v190)
            {
              v193 = v380;
              v191(v141, v375, v380);
              v192 = v362;
            }

            else
            {
              v192 = v362;
              v193 = v380;
              v191(v141, v362, v380);
            }
          }

          else
          {
            v192 = v362;
            v193 = v380;
            (*v376)(v141, v362, v380);
            sub_1D7070E6C(v341, type metadata accessor for InternalErrorViewLayout.Context);
          }

          v194 = (*v363)(v141, v193);
          if (v194 == v192)
          {
            v132 = 2000;
            goto LABEL_71;
          }

          if (v194 == v375)
          {
            goto LABEL_55;
          }

          (*v346)(v141, v380);
LABEL_70:
          v132 = 0;
          goto LABEL_71;
        }

        sub_1D7070E6C(v345, type metadata accessor for InternalErrorViewLayout.Context);
      }

      (*v381)(v339, v390, v384);
      goto LABEL_53;
    }

    v402 = *v142;
    FeedGroupDecoration.decorationItem.getter(&v394);
    __swift_project_boxed_opaque_existential_1(&v394, *(&v395 + 1));
    v167 = v335;
    sub_1D725F4AC();

    v168 = v384;
    v169 = (*v385)(v167, v384);
    if (v169 == v388)
    {
      (*v372)(v167, v168);
      v132 = *v167;
    }

    else
    {
      if (v169 != v390)
      {
        (*v360)(v167, v384);
      }

      v132 = -100;
    }

    v130 = v351;
    __swift_destroy_boxed_opaque_existential_1(&v394);
LABEL_9:
    v133 = v377 < v352;
    v8 = type metadata accessor for ZIndexable;
    sub_1D7070E6C(v361, type metadata accessor for ZIndexable);
    sub_1D7070E6C(v358, type metadata accessor for ZIndexable);
    v134 = v140 >= v132;
    ++v128;
    v131 = v378 + v124;
    v129 += v124;
    v22 = v384;
  }

  while (((v133 ^ v134) & 1) != 0);
  v195 = v128 - 1;
  v121 = v382;
LABEL_75:
  v196 = v333;
  if (v377 >= v352)
  {
LABEL_90:
    v122 = v331;
  }

  else
  {
    v122 = v331;
    if (v195 < v331)
    {
      goto LABEL_256;
    }

    if (v331 < v195)
    {
      v328 = v5;
      v197 = v124 * (v195 - 1);
      v198 = v195 * v124;
      v359 = v195;
      v199 = v331;
      v200 = v331 * v124;
      do
      {
        if (v199 != --v195)
        {
          v201 = *v357;
          if (!*v357)
          {
            goto LABEL_262;
          }

          v8 = v201 + v200;
          sub_1D7070F64(v201 + v200, v336, type metadata accessor for ZIndexable);
          if (v200 < v197 || v8 >= v201 + v198)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v200 != v197)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1D7070F64(v336, v201 + v197, type metadata accessor for ZIndexable);
          v196 = v333;
        }

        ++v199;
        v197 -= v124;
        v198 -= v124;
        v200 += v124;
      }

      while (v199 < v195);
      v5 = v328;
      v22 = v384;
      v121 = v382;
      v195 = v359;
      goto LABEL_90;
    }
  }

LABEL_91:
  v202 = v357[1];
  if (v195 >= v202)
  {
    goto LABEL_100;
  }

  if (__OFSUB__(v195, v122))
  {
    goto LABEL_255;
  }

  if (v195 - v122 >= v196)
  {
LABEL_100:
    v204 = v195;
    if (v195 < v122)
    {
      goto LABEL_254;
    }

    goto LABEL_101;
  }

  if (__OFADD__(v122, v196))
  {
    goto LABEL_257;
  }

  if (v122 + v196 >= v202)
  {
    v203 = v357[1];
  }

  else
  {
    v203 = v122 + v196;
  }

  if (v203 < v122)
  {
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  if (v195 == v203)
  {
    goto LABEL_100;
  }

  v328 = v5;
  v250 = *v357;
  v251 = *(v354 + 72);
  v252 = *v357 + v251 * (v195 - 1);
  v377 = -v251;
  v331 = v122;
  v253 = v122 - v195;
  v378 = v250;
  v334 = v251;
  v254 = v250 + v195 * v251;
  v255 = v368;
  v343 = v203;
  while (2)
  {
    v359 = v195;
    v347 = v254;
    v256 = v254;
    v348 = v253;
    v257 = v253;
    v352 = v252;
LABEL_155:
    v258 = v391;
    sub_1D707111C(v256, v391, type metadata accessor for ZIndexable);
    sub_1D707111C(v252, v393, type metadata accessor for ZIndexable);
    sub_1D707111C(v258, v121, type metadata accessor for ZIndexable);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v263 = v121;
      v264 = v386;
      sub_1D7070F64(v263, v386, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v264, v373, type metadata accessor for FeedItemSupplementaryAttributes);
      v265 = swift_getEnumCaseMultiPayload();
      v262 = v383;
      if (v265 >= 2)
      {
        if (v265 == 2)
        {
          v266 = v373[5];
          v398 = v373[4];
          v399 = v266;
          v267 = v373[7];
          v400 = v373[6];
          v401 = v267;
          v268 = v373[1];
          v394 = *v373;
          v395 = v268;
          v269 = v373[3];
          v396 = v373[2];
          v397 = v269;
          v270 = *(v373 + 16);
          sub_1D6729D5C(&v394);
          v271 = *(v270 + 48);
          v272 = *(v270 + 56);

          v273 = v390;
          v274 = v369;
          if ((v272 & 1) == 0)
          {
            *v369 = v271;
            v273 = v388;
          }

          v275 = v274;
          (*v381)(v274, v273, v22);
          v276 = (*v385)(v275, v22);
          v262 = v383;
          if (v276 == v388)
          {
            (*v372)(v275, v22);
            v261 = *v275;
          }

          else
          {
            if (v276 == v390)
            {
LABEL_170:
              sub_1D707111C(v386, v370, type metadata accessor for FeedItemSupplementaryAttributes);
              v277 = swift_getEnumCaseMultiPayload();
              if (v277 >= 2)
              {
                v278 = v22;
                v279 = v255;
                if (v277 == 2)
                {
                  v280 = v370[5];
                  v398 = v370[4];
                  v399 = v280;
                  v281 = v370[7];
                  v400 = v370[6];
                  v401 = v281;
                  v282 = v370[1];
                  v394 = *v370;
                  v395 = v282;
                  v283 = v370[3];
                  v396 = v370[2];
                  v397 = v283;
                  v284 = *(v370 + 16);
                  sub_1D6729D5C(&v394);
                  v285 = *(*(v284 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

                  v286 = *v376;
                  if (v285)
                  {
                    v287 = v364;
                    v289 = v380;
                    v286(v364, v375, v380);
                    v262 = v383;
                    v288 = v362;
                  }

                  else
                  {
                    v287 = v364;
                    v288 = v362;
                    v289 = v380;
                    v286(v364, v362, v380);
                    v262 = v383;
                  }
                }

                else
                {
                  v287 = v364;
                  v288 = v362;
                  v289 = v380;
                  (*v376)(v364, v362, v380);
                  sub_1D7070E6C(v370, type metadata accessor for InternalErrorViewLayout.Context);
                }

                v290 = (*v363)(v287, v289);
                if (v290 == v288)
                {
                  v261 = 2000;
                  v255 = v279;
                }

                else
                {
                  v291 = v289;
                  v255 = v279;
                  if (v290 == v375)
                  {
                    v261 = 1000;
                  }

                  else
                  {
                    (*v346)(v364, v291);
                    v261 = 0;
                  }
                }

                v22 = v278;
              }

              else
              {
                (*v376)(v364, v375, v380);
                v261 = 1000;
              }

              goto LABEL_185;
            }

            (*v360)(v369, v22);
            v261 = 0;
          }

LABEL_185:
          sub_1D7070E6C(v386, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_186;
        }

        sub_1D7070E6C(v373, type metadata accessor for InternalErrorViewLayout.Context);
      }

      (*v381)(v369, v390, v22);
      goto LABEL_170;
    }

    v402 = *v121;
    FeedGroupDecoration.decorationItem.getter(&v394);
    __swift_project_boxed_opaque_existential_1(&v394, *(&v395 + 1));
    v259 = v366;
    v22 = v384;
    sub_1D725F4AC();

    v260 = (*v385)(v259, v22);
    if (v260 == v388)
    {
      (*v372)(v259, v22);
      v261 = *v259;
      v262 = v383;
    }

    else
    {
      v262 = v383;
      if (v260 != v390)
      {
        (*v360)(v259, v22);
      }

      v261 = -100;
    }

    __swift_destroy_boxed_opaque_existential_1(&v394);
LABEL_186:
    sub_1D707111C(v393, v262, type metadata accessor for ZIndexable);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v295 = v262;
      v296 = v387;
      sub_1D7070F64(v295, v387, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v296, v374, type metadata accessor for FeedItemSupplementaryAttributes);
      v297 = swift_getEnumCaseMultiPayload();
      if (v297 >= 2)
      {
        if (v297 == 2)
        {
          v298 = v374[5];
          v398 = v374[4];
          v399 = v298;
          v299 = v374[7];
          v400 = v374[6];
          v401 = v299;
          v300 = v374[1];
          v394 = *v374;
          v395 = v300;
          v301 = v374[3];
          v396 = v374[2];
          v397 = v301;
          v302 = *(v374 + 16);
          sub_1D6729D5C(&v394);
          v303 = *(v302 + 48);
          v304 = *(v302 + 56);

          v305 = v390;
          if ((v304 & 1) == 0)
          {
            *v255 = v303;
            v305 = v388;
          }

          v22 = v384;
          (*v381)(v255, v305, v384);
          v306 = (*v385)(v255, v22);
          if (v306 == v388)
          {
            (*v372)(v255, v22);
            v294 = *v255;
          }

          else
          {
            if (v306 == v390)
            {
LABEL_201:
              sub_1D707111C(v387, v371, type metadata accessor for FeedItemSupplementaryAttributes);
              v307 = swift_getEnumCaseMultiPayload();
              if (v307 >= 2)
              {
                v308 = v22;
                v309 = v255;
                if (v307 == 2)
                {
                  v310 = v371[5];
                  v398 = v371[4];
                  v399 = v310;
                  v311 = v371[7];
                  v400 = v371[6];
                  v401 = v311;
                  v312 = v371[1];
                  v394 = *v371;
                  v395 = v312;
                  v313 = v371[3];
                  v396 = v371[2];
                  v397 = v313;
                  v314 = *(v371 + 16);
                  sub_1D6729D5C(&v394);
                  v315 = *(*(v314 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

                  v316 = *v376;
                  v317 = v365;
                  if (v315)
                  {
                    v319 = v380;
                    v316(v365, v375, v380);
                    v318 = v362;
                  }

                  else
                  {
                    v318 = v362;
                    v319 = v380;
                    v316(v365, v362, v380);
                  }
                }

                else
                {
                  v317 = v365;
                  v318 = v362;
                  v319 = v380;
                  (*v376)(v365, v362, v380);
                  sub_1D7070E6C(v371, type metadata accessor for InternalErrorViewLayout.Context);
                }

                v320 = (*v363)(v317, v319);
                if (v320 == v318)
                {
                  v294 = 2000;
                  v255 = v309;
                }

                else
                {
                  v255 = v309;
                  if (v320 == v375)
                  {
                    v294 = 1000;
                  }

                  else
                  {
                    (*v346)(v365, v380);
                    v294 = 0;
                  }
                }

                v22 = v308;
              }

              else
              {
                (*v376)(v365, v375, v380);
                v294 = 1000;
              }

              goto LABEL_216;
            }

            (*v360)(v255, v22);
            v294 = 0;
          }

LABEL_216:
          sub_1D7070E6C(v387, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_217;
        }

        sub_1D7070E6C(v374, type metadata accessor for InternalErrorViewLayout.Context);
      }

      (*v381)(v255, v390, v22);
      goto LABEL_201;
    }

    v402 = *v262;
    FeedGroupDecoration.decorationItem.getter(&v394);
    __swift_project_boxed_opaque_existential_1(&v394, *(&v395 + 1));
    v292 = v367;
    v22 = v384;
    sub_1D725F4AC();

    v293 = (*v385)(v292, v22);
    if (v293 == v388)
    {
      (*v372)(v292, v22);
      v294 = *v292;
    }

    else
    {
      if (v293 != v390)
      {
        (*v360)(v292, v22);
      }

      v294 = -100;
    }

    v255 = v368;
    __swift_destroy_boxed_opaque_existential_1(&v394);
LABEL_217:
    v8 = type metadata accessor for ZIndexable;
    sub_1D7070E6C(v393, type metadata accessor for ZIndexable);
    sub_1D7070E6C(v391, type metadata accessor for ZIndexable);
    if (v261 >= v294)
    {
      v121 = v382;
LABEL_153:
      v195 = v359 + 1;
      v252 = v352 + v334;
      v253 = v348 - 1;
      v254 = v347 + v334;
      v204 = v343;
      if (v359 + 1 != v343)
      {
        continue;
      }

      v5 = v328;
      v122 = v331;
      if (v343 < v331)
      {
        goto LABEL_254;
      }

LABEL_101:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v120 = v337;
      }

      else
      {
        v120 = sub_1D698BA94(0, *(v337 + 2) + 1, 1, v337);
      }

      v206 = *(v120 + 2);
      v205 = *(v120 + 3);
      v8 = v206 + 1;
      if (v206 >= v205 >> 1)
      {
        v120 = sub_1D698BA94((v205 > 1), v206 + 1, 1, v120);
      }

      *(v120 + 2) = v8;
      v207 = &v120[16 * v206];
      *(v207 + 4) = v122;
      *(v207 + 5) = v204;
      v343 = v204;
      v208 = *v332;
      if (!*v332)
      {
        goto LABEL_264;
      }

      if (!v206)
      {
        v121 = v382;
LABEL_4:
        v118 = v357[1];
        v119 = v343;
        if (v343 >= v118)
        {
          goto LABEL_226;
        }

        goto LABEL_5;
      }

      v121 = v382;
      while (1)
      {
        v209 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v210 = *(v120 + 4);
          v211 = *(v120 + 5);
          v220 = __OFSUB__(v211, v210);
          v212 = v211 - v210;
          v213 = v220;
LABEL_121:
          if (v213)
          {
            goto LABEL_243;
          }

          v226 = &v120[16 * v8];
          v228 = *v226;
          v227 = *(v226 + 1);
          v229 = __OFSUB__(v227, v228);
          v230 = v227 - v228;
          v231 = v229;
          if (v229)
          {
            goto LABEL_246;
          }

          v232 = &v120[16 * v209 + 32];
          v234 = *v232;
          v233 = *(v232 + 1);
          v220 = __OFSUB__(v233, v234);
          v235 = v233 - v234;
          if (v220)
          {
            goto LABEL_249;
          }

          if (__OFADD__(v230, v235))
          {
            goto LABEL_250;
          }

          if (v230 + v235 >= v212)
          {
            if (v212 < v235)
            {
              v209 = v8 - 2;
            }

            goto LABEL_142;
          }

          goto LABEL_135;
        }

        v236 = &v120[16 * v8];
        v238 = *v236;
        v237 = *(v236 + 1);
        v220 = __OFSUB__(v237, v238);
        v230 = v237 - v238;
        v231 = v220;
LABEL_135:
        if (v231)
        {
          goto LABEL_245;
        }

        v239 = &v120[16 * v209];
        v241 = *(v239 + 4);
        v240 = *(v239 + 5);
        v220 = __OFSUB__(v240, v241);
        v242 = v240 - v241;
        if (v220)
        {
          goto LABEL_248;
        }

        if (v242 < v230)
        {
          goto LABEL_4;
        }

LABEL_142:
        v121 = v209 - 1;
        if (v209 - 1 >= v8)
        {
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
          goto LABEL_258;
        }

        if (!*v357)
        {
          goto LABEL_261;
        }

        v247 = v120;
        v8 = *&v120[16 * v121 + 32];
        v248 = *&v120[16 * v209 + 40];
        sub_1D706E2F4(*v357 + *(v354 + 72) * v8, *v357 + *(v354 + 72) * *&v120[16 * v209 + 32], (*v357 + *(v354 + 72) * v248), v208);
        if (v5)
        {
          goto LABEL_237;
        }

        if (v248 < v8)
        {
          goto LABEL_239;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v247 = sub_1D62FF50C(v247);
        }

        if (v121 >= *(v247 + 2))
        {
          goto LABEL_240;
        }

        v249 = &v247[16 * v121];
        *(v249 + 4) = v8;
        *(v249 + 5) = v248;
        v403 = v247;
        sub_1D62FF480(v209);
        v120 = v403;
        v8 = *(v403 + 2);
        v121 = v382;
        if (v8 <= 1)
        {
          goto LABEL_4;
        }
      }

      v214 = &v120[16 * v8 + 32];
      v215 = *(v214 - 64);
      v216 = *(v214 - 56);
      v220 = __OFSUB__(v216, v215);
      v217 = v216 - v215;
      if (v220)
      {
        goto LABEL_241;
      }

      v219 = *(v214 - 48);
      v218 = *(v214 - 40);
      v220 = __OFSUB__(v218, v219);
      v212 = v218 - v219;
      v213 = v220;
      if (v220)
      {
        goto LABEL_242;
      }

      v221 = &v120[16 * v8];
      v223 = *v221;
      v222 = *(v221 + 1);
      v220 = __OFSUB__(v222, v223);
      v224 = v222 - v223;
      if (v220)
      {
        goto LABEL_244;
      }

      v220 = __OFADD__(v212, v224);
      v225 = v212 + v224;
      if (v220)
      {
        goto LABEL_247;
      }

      if (v225 >= v217)
      {
        v243 = &v120[16 * v209 + 32];
        v245 = *v243;
        v244 = *(v243 + 1);
        v220 = __OFSUB__(v244, v245);
        v246 = v244 - v245;
        if (v220)
        {
          goto LABEL_251;
        }

        if (v212 < v246)
        {
          v209 = v8 - 2;
        }

        goto LABEL_142;
      }

      goto LABEL_121;
    }

    break;
  }

  if (v378)
  {
    v8 = type metadata accessor for ZIndexable;
    v321 = v379;
    sub_1D7070F64(v256, v379, type metadata accessor for ZIndexable);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D7070F64(v321, v252, type metadata accessor for ZIndexable);
    v252 += v377;
    v256 += v377;
    v322 = __CFADD__(v257++, 1);
    v121 = v382;
    if (v322)
    {
      goto LABEL_153;
    }

    goto LABEL_155;
  }

  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}

void sub_1D706C940(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1D725EF8C();
  v203 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v206 = (&v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v197 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v211 = &v197 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v215 = &v197 - v20;
  v227 = sub_1D725F3DC();
  v221 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227, v21);
  v208 = (&v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v207 = &v197 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v218 = (&v197 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v217 = (&v197 - v31);
  v229 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v229, v32);
  v210 = (&v197 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v214 = &v197 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v209 = (&v197 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v213 = &v197 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v225 = &v197 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v224 = (&v197 - v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v220 = &v197 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v197 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v219 = (&v197 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v197 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v228 = &v197 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v226 = (&v197 - v68);
  v70 = *(v69 + 72);
  if (!v70)
  {
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (a2 - a1 == 0x8000000000000000 && v70 == -1)
  {
    goto LABEL_158;
  }

  v71 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v70 != -1)
  {
    v72 = (a2 - a1) / v70;
    v240 = a1;
    v239 = a4;
    v223 = v8;
    if (v72 < v71 / v70)
    {
      v73 = v72 * v70;
      if (a4 < a1 || a1 + v73 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v214 = a4 + v73;
      v238 = a4 + v73;
      v75 = v73 < 1 || a2 >= a3;
      v76 = v227;
      if (!v75)
      {
        LODWORD(v208) = *MEMORY[0x1E69D8678];
        v224 = (v221 + 104);
        LODWORD(v225) = *MEMORY[0x1E69D8680];
        v207 = (v221 + 88);
        v204 = (v221 + 8);
        v206 = (v221 + 96);
        LODWORD(v210) = *MEMORY[0x1E69D8478];
        v222 = v203 + 104;
        LODWORD(v221) = *MEMORY[0x1E69D8470];
        v209 = (v203 + 88);
        v205 = (v203 + 8);
        v213 = a3;
        v212 = v70;
        while (1)
        {
          v77 = v226;
          sub_1D707111C(a2, v226, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(a4, v228, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v77, v62, type metadata accessor for FeedItemSupplementaryAttributes);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_28;
          }

          if (EnumCaseMultiPayload != 2)
          {
            break;
          }

          v79 = a2;
          v80 = *(v62 + 5);
          v234 = *(v62 + 4);
          v235 = v80;
          v81 = *(v62 + 7);
          v236 = *(v62 + 6);
          v237 = v81;
          v82 = *(v62 + 1);
          v230 = *v62;
          v231 = v82;
          v83 = *(v62 + 3);
          v232 = *(v62 + 2);
          v233 = v83;
          v84 = *(v62 + 16);
          sub_1D6729D5C(&v230);
          v85 = *(v84 + 48);
          v86 = *(v84 + 56);

          v87 = v225;
          if ((v86 & 1) == 0)
          {
            *v217 = v85;
            v87 = v208;
          }

          v88 = *v224;
          v89 = v217;
          v90 = v227;
          (*v224)(v217, v87, v227);
          v91 = (*v207)(v89, v90);
          if (v91 == v208)
          {
            (*v206)(v89, v90);
            v92 = *v89;
            a2 = v79;
LABEL_44:
            v8 = v223;
            goto LABEL_45;
          }

          a2 = v79;
          if (v91 != v225)
          {
            (*v204)(v217, v90);
            v92 = 0;
            goto LABEL_44;
          }

          v8 = v223;
LABEL_29:
          sub_1D707111C(v226, v219, type metadata accessor for FeedItemSupplementaryAttributes);
          v93 = swift_getEnumCaseMultiPayload();
          v94 = v215;
          if (v93 < 2)
          {
            (*v222)(v215, v221, v8);
LABEL_31:
            v92 = 1000;
            goto LABEL_45;
          }

          if (v93 == 2)
          {
            v95 = v219[5];
            v234 = v219[4];
            v235 = v95;
            v96 = v219[7];
            v236 = v219[6];
            v237 = v96;
            v97 = v219[1];
            v230 = *v219;
            v231 = v97;
            v98 = v219[3];
            v232 = v219[2];
            v233 = v98;
            v99 = *(v219 + 16);
            sub_1D6729D5C(&v230);
            v100 = *(*(v99 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

            v101 = *v222;
            if (v100)
            {
              v94 = v215;
              v101(v215, v221, v8);
              v102 = v210;
            }

            else
            {
              v94 = v215;
              v102 = v210;
              v101(v215, v210, v8);
            }
          }

          else
          {
            v102 = v210;
            (*v222)(v215, v210, v8);
            sub_1D7070E6C(v219, type metadata accessor for InternalErrorViewLayout.Context);
          }

          v103 = (*v209)(v94, v8);
          if (v103 == v102)
          {
            v92 = 2000;
          }

          else
          {
            if (v103 == v221)
            {
              goto LABEL_31;
            }

            (*v205)(v94, v8);
            v92 = 0;
          }

LABEL_45:
          sub_1D707111C(v228, v55, type metadata accessor for FeedItemSupplementaryAttributes);
          v104 = swift_getEnumCaseMultiPayload();
          if (v104 < 2)
          {
            goto LABEL_52;
          }

          if (v104 != 2)
          {
            sub_1D7070E6C(v55, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_52:
            v88(v218, v225, v227);
            goto LABEL_53;
          }

          v216 = a4;
          v105 = a2;
          v106 = *(v55 + 5);
          v234 = *(v55 + 4);
          v235 = v106;
          v107 = *(v55 + 7);
          v236 = *(v55 + 6);
          v237 = v107;
          v108 = *(v55 + 1);
          v230 = *v55;
          v231 = v108;
          v109 = *(v55 + 3);
          v232 = *(v55 + 2);
          v233 = v109;
          v110 = *(v55 + 16);
          sub_1D6729D5C(&v230);
          v111 = *(v110 + 48);
          v112 = *(v110 + 56);

          v113 = v225;
          if ((v112 & 1) == 0)
          {
            *v218 = v111;
            v113 = v208;
          }

          v114 = v218;
          v115 = v227;
          v88(v218, v113, v227);
          v116 = (*v207)(v114, v115);
          if (v116 == v208)
          {
            (*v206)(v114, v115);
            v117 = *v114;
            a2 = v105;
            v8 = v223;
LABEL_68:
            a4 = v216;
            goto LABEL_69;
          }

          a2 = v105;
          v8 = v223;
          if (v116 != v225)
          {
            (*v204)(v218, v227);
            v117 = 0;
            goto LABEL_68;
          }

          a4 = v216;
LABEL_53:
          sub_1D707111C(v228, v220, type metadata accessor for FeedItemSupplementaryAttributes);
          v118 = swift_getEnumCaseMultiPayload();
          v119 = v211;
          if (v118 >= 2)
          {
            if (v118 == 2)
            {
              v120 = *(v220 + 80);
              v234 = *(v220 + 64);
              v235 = v120;
              v121 = *(v220 + 112);
              v236 = *(v220 + 96);
              v237 = v121;
              v122 = *(v220 + 16);
              v230 = *v220;
              v231 = v122;
              v123 = *(v220 + 48);
              v232 = *(v220 + 32);
              v233 = v123;
              v124 = *(v220 + 128);
              sub_1D6729D5C(&v230);
              v125 = *(*(v124 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

              v126 = *v222;
              if (v125)
              {
                v8 = v223;
                v126(v119, v221, v223);
                v127 = v210;
              }

              else
              {
                v127 = v210;
                v8 = v223;
                v126(v119, v210, v223);
              }
            }

            else
            {
              v127 = v210;
              (*v222)(v211, v210, v8);
              sub_1D7070E6C(v220, type metadata accessor for InternalErrorViewLayout.Context);
            }

            v128 = (*v209)(v119, v8);
            if (v128 == v127)
            {
              v117 = 2000;
              goto LABEL_69;
            }

            if (v128 != v221)
            {
              (*v205)(v119, v8);
              v117 = 0;
              goto LABEL_69;
            }
          }

          else
          {
            (*v222)(v211, v221, v8);
          }

          v117 = 1000;
LABEL_69:
          sub_1D7070E6C(v228, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D7070E6C(v226, type metadata accessor for FeedItemSupplementaryAttributes);
          if (v92 >= v117)
          {
            v129 = v212;
            v131 = a4 + v212;
            v130 = v213;
            if (a1 < a4 || a1 >= v131)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v239 = v131;
            a4 += v129;
          }

          else
          {
            v129 = v212;
            v130 = v213;
            if (a1 < a2 || a1 >= a2 + v212)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v129;
          }

          a1 += v129;
          v240 = a1;
          v76 = v227;
          if (a4 >= v214 || a2 >= v130)
          {
            goto LABEL_156;
          }
        }

        sub_1D7070E6C(v62, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_28:
        v88 = *v224;
        (*v224)(v217, v225, v76);
        goto LABEL_29;
      }

      goto LABEL_156;
    }

    v74 = v71 / v70 * v70;
    if (a4 < a2 || a2 + v74 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v132 = a2;
    v133 = a4 + v74;
    if (v74 < 1)
    {
LABEL_155:
      v240 = v132;
      v238 = v133;
LABEL_156:
      sub_1D62FF5E0(&v240, &v239, &v238);
      return;
    }

    v134 = v14;
    v135 = -v70;
    LODWORD(v204) = *MEMORY[0x1E69D8678];
    v226 = (v221 + 104);
    LODWORD(v228) = *MEMORY[0x1E69D8680];
    v202 = (v221 + 88);
    v198 = (v221 + 8);
    v200 = (v221 + 96);
    LODWORD(v211) = *MEMORY[0x1E69D8478];
    v218 = (v203 + 104);
    LODWORD(v219) = *MEMORY[0x1E69D8470];
    v205 = (v203 + 88);
    v199 = (v203 + 8);
    v136 = a4 + v74;
    v137 = v134;
    v217 = v134;
    v216 = a4;
    v222 = -v70;
LABEL_88:
    v197 = v133;
    v138 = v132;
    v132 += v135;
    v201 = v132;
    v215 = v138;
    while (1)
    {
      if (v138 <= a1)
      {
        v240 = v138;
        v238 = v197;
        goto LABEL_156;
      }

      v139 = a3;
      v212 = v133;
      v220 = v136 + v135;
      v140 = v224;
      sub_1D707111C(v136 + v135, v224, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v132, v225, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v140, v213, type metadata accessor for FeedItemSupplementaryAttributes);
      v141 = swift_getEnumCaseMultiPayload();
      v142 = v227;
      v143 = v137;
      if (v141 < 2)
      {
        goto LABEL_99;
      }

      if (v141 != 2)
      {
        break;
      }

      v144 = *(v213 + 80);
      v234 = *(v213 + 64);
      v235 = v144;
      v145 = *(v213 + 112);
      v236 = *(v213 + 96);
      v237 = v145;
      v146 = *(v213 + 16);
      v230 = *v213;
      v231 = v146;
      v147 = *(v213 + 48);
      v232 = *(v213 + 32);
      v233 = v147;
      v148 = *(v213 + 128);
      sub_1D6729D5C(&v230);
      v149 = *(v148 + 48);
      v150 = *(v148 + 56);

      v151 = v207;
      if ((v150 & 1) == 0)
      {
        *v207 = v149;
      }

      v152 = *v226;
      v142 = v227;
      v153 = v151;
      (*v226)();
      v154 = (*v202)(v153, v142);
      v155 = v132;
      if (v154 == v204)
      {
        (*v200)(v153, v142);
        v221 = *v153;
LABEL_108:
        v157 = v218;
        goto LABEL_116;
      }

      v143 = v217;
      if (v154 != v228)
      {
        (*v198)(v207, v142);
        v221 = 0;
        goto LABEL_108;
      }

LABEL_100:
      sub_1D707111C(v224, v209, type metadata accessor for FeedItemSupplementaryAttributes);
      v156 = swift_getEnumCaseMultiPayload();
      if (v156 >= 2)
      {
        v203 = v136;
        if (v156 == 2)
        {
          v158 = v209[5];
          v234 = v209[4];
          v235 = v158;
          v159 = v209[7];
          v236 = v209[6];
          v237 = v159;
          v160 = v209[1];
          v230 = *v209;
          v231 = v160;
          v161 = v209[3];
          v232 = v209[2];
          v233 = v161;
          v162 = *(v209 + 16);
          sub_1D6729D5C(&v230);
          v163 = *(*(v162 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

          v164 = *v218;
          if (v163)
          {
            v166 = v223;
            v164(v143, v219, v223);
            v142 = v227;
            v165 = v211;
          }

          else
          {
            v165 = v211;
            v166 = v223;
            v164(v143, v211, v223);
            v142 = v227;
          }
        }

        else
        {
          v165 = v211;
          v166 = v223;
          (*v218)(v143, v211, v223);
          sub_1D7070E6C(v209, type metadata accessor for InternalErrorViewLayout.Context);
        }

        v167 = (*v205)(v143, v166);
        if (v167 == v165)
        {
          v221 = 2000;
          v157 = v218;
          v155 = v132;
          v136 = v203;
        }

        else
        {
          v157 = v218;
          v136 = v203;
          if (v167 == v219)
          {
            v221 = 1000;
          }

          else
          {
            (*v199)(v143, v223);
            v221 = 0;
          }

          v155 = v132;
        }
      }

      else
      {
        v157 = v218;
        (*v218)(v143, v219, v223);
        v221 = 1000;
      }

LABEL_116:
      sub_1D707111C(v225, v214, type metadata accessor for FeedItemSupplementaryAttributes);
      v168 = swift_getEnumCaseMultiPayload();
      if (v168 < 2)
      {
        goto LABEL_123;
      }

      if (v168 != 2)
      {
        sub_1D7070E6C(v214, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_123:
        (v152)(v208, v228, v142);
        v181 = v206;
        goto LABEL_124;
      }

      v169 = *(v214 + 80);
      v234 = *(v214 + 64);
      v235 = v169;
      v170 = *(v214 + 112);
      v236 = *(v214 + 96);
      v237 = v170;
      v171 = *(v214 + 16);
      v230 = *v214;
      v231 = v171;
      v172 = *(v214 + 48);
      v232 = *(v214 + 32);
      v233 = v172;
      v173 = *(v214 + 128);
      sub_1D6729D5C(&v230);
      v174 = *(v173 + 48);
      v175 = *(v173 + 56);

      v176 = v228;
      if ((v175 & 1) == 0)
      {
        *v208 = v174;
        v176 = v204;
      }

      v177 = v208;
      v178 = v227;
      (v152)(v208, v176, v227);
      v179 = (*v202)(v177, v178);
      if (v179 == v204)
      {
        (*v200)(v177, v178);
        v180 = *v177;
        v155 = v201;
        goto LABEL_126;
      }

      v155 = v201;
      v181 = v206;
      if (v179 != v228)
      {
        (*v198)(v208, v178);
        v180 = 0;
LABEL_126:
        v183 = v222;
LABEL_137:
        v195 = v221;
        goto LABEL_138;
      }

LABEL_124:
      sub_1D707111C(v225, v210, type metadata accessor for FeedItemSupplementaryAttributes);
      v182 = swift_getEnumCaseMultiPayload();
      if (v182 < 2)
      {
        (*v157)(v181, v219, v223);
        v180 = 1000;
        goto LABEL_126;
      }

      if (v182 == 2)
      {
        v184 = v210[5];
        v234 = v210[4];
        v235 = v184;
        v185 = v210[7];
        v236 = v210[6];
        v237 = v185;
        v186 = v210[1];
        v230 = *v210;
        v231 = v186;
        v187 = v210[3];
        v232 = v210[2];
        v233 = v187;
        v188 = *(v210 + 16);
        sub_1D6729D5C(&v230);
        v189 = *(*(v188 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        v190 = *v157;
        if (v189)
        {
          v193 = v223;
          v190(v181, v219, v223);
          v183 = v222;
          v192 = v211;
          goto LABEL_135;
        }

        v192 = v211;
        v193 = v223;
        v190(v181, v211, v223);
      }

      else
      {
        v191 = *v157;
        v192 = v211;
        v193 = v223;
        v191(v181, v211, v223);
        sub_1D7070E6C(v210, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v183 = v222;
LABEL_135:
      v194 = (*v205)(v181, v193);
      if (v194 == v192)
      {
        v180 = 2000;
        goto LABEL_137;
      }

      v195 = v221;
      if (v194 == v219)
      {
        v180 = 1000;
      }

      else
      {
        (*v199)(v181, v223);
        v180 = 0;
      }

LABEL_138:
      v132 = v155;
      a3 = &v139[v183];
      sub_1D7070E6C(v225, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D7070E6C(v224, type metadata accessor for FeedItemSupplementaryAttributes);
      if (v195 < v180)
      {
        v137 = v217;
        if (v139 < v215 || a3 >= v215)
        {
          swift_arrayInitWithTakeFrontToBack();
          v133 = v212;
          v135 = v222;
        }

        else
        {
          v133 = v212;
          v135 = v222;
          if (v139 != v215)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v136 <= v216)
        {
          goto LABEL_155;
        }

        goto LABEL_88;
      }

      v196 = v220;
      v133 = v220;
      v137 = v217;
      if (v139 < v136 || a3 >= v136)
      {
        swift_arrayInitWithTakeFrontToBack();
        v135 = v222;
      }

      else
      {
        v135 = v222;
        if (v139 != v136)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v136 = v133;
      v138 = v215;
      if (v196 <= v216)
      {
        v132 = v215;
        goto LABEL_155;
      }
    }

    sub_1D7070E6C(v213, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_99:
    v152 = *v226;
    (*v226)(v207, v228, v142);
    v155 = v132;
    goto LABEL_100;
  }

LABEL_159:
  __break(1u);
}

void sub_1D706E2F4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v268 = a3;
  v7 = sub_1D725EF8C();
  v243[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v244 = v243 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v264 = v243 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v254 = v243 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v251 = v243 - v18;
  v19 = sub_1D725F3DC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v246 = (v243 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v248 = (v243 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v245 = (v243 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v247 = (v243 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v253 = (v243 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (v243 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v252 = (v243 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v256 = v243 - v44;
  v279 = type metadata accessor for FeedItemSupplementaryAttributes();
  MEMORY[0x1EEE9AC00](v279, v45);
  v250 = (v243 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47, v48);
  v259 = (v243 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v269 = v243 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v249 = (v243 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v255 = (v243 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v267 = (v243 - v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  v258 = v243 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v262 = (v243 - v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v274 = v243 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v257 = (v243 - v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v261 = (v243 - v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v273 = v243 - v79;
  v80 = type metadata accessor for ZIndexable();
  MEMORY[0x1EEE9AC00](v80, v81);
  v263 = (v243 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v83, v84);
  v260 = (v243 - v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  v275 = v243 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v271 = v243 - v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v266 = v243 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v265 = (v243 - v97);
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = v243 - v100;
  MEMORY[0x1EEE9AC00](v102, v103);
  v276 = v243 - v104;
  v270 = *(v105 + 72);
  if (!v270)
  {
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v270 == -1)
  {
    goto LABEL_187;
  }

  v106 = &v268[-a2];
  if (&v268[-a2] == 0x8000000000000000 && v270 == -1)
  {
    goto LABEL_188;
  }

  v280 = v19;
  v107 = (a2 - a1) / v270;
  v292 = a1;
  v291 = a4;
  v272 = v7;
  v277 = v80;
  if (v107 >= v106 / v270)
  {
    v109 = v106 / v270 * v270;
    if (a4 < a2 || a2 + v109 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v110 = v268;
      v111 = v264;
    }

    else
    {
      v110 = v268;
      v111 = v264;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v174 = a4 + v109;
    if (v109 < 1)
    {
      v177 = a4 + v109;
      goto LABEL_183;
    }

    v278 = a4;
    v175 = -v270;
    LODWORD(v270) = *MEMORY[0x1E69D8678];
    v265 = (v20 + 104);
    LODWORD(v273) = *MEMORY[0x1E69D8680];
    v268 = (v20 + 88);
    v252 = (v20 + 8);
    v256 = (v20 + 96);
    LODWORD(v254) = *MEMORY[0x1E69D8478];
    v261 = (v243[0] + 104);
    LODWORD(v257) = *MEMORY[0x1E69D8470];
    v253 = (v243[0] + 88);
    v251 = (v243[0] + 8);
    v176 = a4 + v109;
    v177 = v174;
    v276 = v175;
    while (1)
    {
      v243[0] = v177;
      v178 = a2 + v175;
      v258 = a2;
      v266 = (a2 + v175);
      while (1)
      {
        if (a2 <= a1)
        {
          v292 = a2;
          v290 = v243[0];
          goto LABEL_185;
        }

        v180 = v110;
        v262 = v177;
        v274 = v176 + v175;
        v181 = v271;
        sub_1D707111C(v176 + v175, v271, type metadata accessor for ZIndexable);
        sub_1D707111C(v178, v275, type metadata accessor for ZIndexable);
        v182 = v260;
        sub_1D707111C(v181, v260, type metadata accessor for ZIndexable);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v188 = v267;
          sub_1D7070F64(v182, v267, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v188, v255, type metadata accessor for FeedItemSupplementaryAttributes);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v187 = v272;
          v184 = v280;
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_121;
          }

          if (EnumCaseMultiPayload == 2)
          {
            v190 = v255[5];
            v286 = v255[4];
            v287 = v190;
            v191 = v255[7];
            v288 = v255[6];
            v289 = v191;
            v192 = v255[1];
            v282 = *v255;
            v283 = v192;
            v193 = v255[3];
            v284 = v255[2];
            v285 = v193;
            v194 = *(v255 + 16);
            sub_1D6729D5C(&v282);
            v195 = *(v194 + 48);
            v196 = *(v194 + 56);

            v197 = v273;
            v198 = v247;
            if ((v196 & 1) == 0)
            {
              *v247 = v195;
              v197 = v270;
            }

            v184 = v280;
            (*v265)(v198, v197, v280);
            v199 = (*v268)(v198, v184);
            v200 = v198;
            v187 = v272;
            if (v199 == v270)
            {
              (*v256)(v200, v184);
              v186 = *v200;
            }

            else
            {
              if (v199 == v273)
              {
                goto LABEL_122;
              }

              (*v252)(v247, v184);
              v186 = 0;
            }

LABEL_124:
            v201 = v263;
          }

          else
          {
            sub_1D7070E6C(v255, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_121:
            (*v265)(v247, v273, v184);
LABEL_122:
            sub_1D707111C(v267, v249, type metadata accessor for FeedItemSupplementaryAttributes);
            v202 = swift_getEnumCaseMultiPayload();
            if (v202 < 2)
            {
              (*v261)(v111, v257, v187);
              v186 = 1000;
              goto LABEL_124;
            }

            if (v202 != 2)
            {
              v210 = v254;
              (*v261)(v111, v254, v187);
              sub_1D7070E6C(v249, type metadata accessor for InternalErrorViewLayout.Context);
              goto LABEL_132;
            }

            v203 = v249[5];
            v286 = v249[4];
            v287 = v203;
            v204 = v249[7];
            v288 = v249[6];
            v289 = v204;
            v205 = v249[1];
            v282 = *v249;
            v283 = v205;
            v206 = v249[3];
            v284 = v249[2];
            v285 = v206;
            v207 = *(v249 + 16);
            sub_1D6729D5C(&v282);
            v208 = *(*(v207 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

            v209 = *v261;
            if (v208)
            {
              v187 = v272;
              v209(v111, v257, v272);
              v201 = v263;
              v210 = v254;
            }

            else
            {
              v210 = v254;
              v187 = v272;
              v209(v111, v254, v272);
LABEL_132:
              v201 = v263;
            }

            v211 = (*v253)(v111, v187);
            if (v211 == v210)
            {
              v186 = 2000;
              a2 = v258;
            }

            else
            {
              a2 = v258;
              if (v211 == v257)
              {
                v186 = 1000;
              }

              else
              {
                (*v251)(v111, v187);
                v186 = 0;
              }
            }
          }

          sub_1D7070E6C(v267, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_139;
        }

        v290 = *v182;
        FeedGroupDecoration.decorationItem.getter(&v282);
        __swift_project_boxed_opaque_existential_1(&v282, *(&v283 + 1));
        v183 = v245;
        sub_1D725F4AC();

        v184 = v280;
        v185 = (*v268)(v183, v280);
        if (v185 == v270)
        {
          (*v256)(v183, v184);
          v186 = *v183;
          v187 = v272;
        }

        else
        {
          v187 = v272;
          if (v185 != v273)
          {
            (*v252)(v183, v184);
          }

          v186 = -100;
        }

        a2 = v258;
        __swift_destroy_boxed_opaque_existential_1(&v282);
        v201 = v263;
LABEL_139:
        sub_1D707111C(v275, v201, type metadata accessor for ZIndexable);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v216 = v201;
          v217 = v269;
          sub_1D7070F64(v216, v269, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v217, v259, type metadata accessor for FeedItemSupplementaryAttributes);
          v218 = swift_getEnumCaseMultiPayload();
          if (v218 < 2)
          {
            goto LABEL_153;
          }

          if (v218 == 2)
          {
            v219 = v259[5];
            v286 = v259[4];
            v287 = v219;
            v220 = v259[7];
            v288 = v259[6];
            v289 = v220;
            v221 = v259[1];
            v282 = *v259;
            v283 = v221;
            v222 = v259[3];
            v284 = v259[2];
            v285 = v222;
            v223 = *(v259 + 16);
            sub_1D6729D5C(&v282);
            v224 = *(v223 + 48);
            v225 = *(v223 + 56);

            v226 = v273;
            if ((v225 & 1) == 0)
            {
              *v248 = v224;
              v226 = v270;
            }

            v227 = v248;
            v228 = v280;
            (*v265)(v248, v226, v280);
            v229 = (*v268)(v227, v228);
            v187 = v272;
            if (v229 != v270)
            {
              if (v229 == v273)
              {
                goto LABEL_154;
              }

              (*v252)(v227, v228);
              goto LABEL_168;
            }

            (*v256)(v227, v228);
            v215 = *v227;
          }

          else
          {
            sub_1D7070E6C(v259, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_153:
            (*v265)(v248, v273, v184);
LABEL_154:
            sub_1D707111C(v269, v250, type metadata accessor for FeedItemSupplementaryAttributes);
            v230 = swift_getEnumCaseMultiPayload();
            v231 = v244;
            if (v230 < 2)
            {
              (*v261)(v244, v257, v187);
              goto LABEL_156;
            }

            if (v230 == 2)
            {
              v232 = v250[5];
              v286 = v250[4];
              v287 = v232;
              v233 = v250[7];
              v288 = v250[6];
              v289 = v233;
              v234 = v250[1];
              v282 = *v250;
              v283 = v234;
              v235 = v250[3];
              v284 = v250[2];
              v285 = v235;
              v236 = *(v250 + 16);
              sub_1D6729D5C(&v282);
              v237 = *(*(v236 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

              v238 = *v261;
              if (v237)
              {
                v187 = v272;
                v238(v231, v257, v272);
                v239 = v254;
              }

              else
              {
                v239 = v254;
                v187 = v272;
                v238(v231, v254, v272);
              }
            }

            else
            {
              v239 = v254;
              (*v261)(v244, v254, v187);
              sub_1D7070E6C(v250, type metadata accessor for InternalErrorViewLayout.Context);
            }

            v240 = (*v253)(v231, v187);
            if (v240 == v239)
            {
              v215 = 2000;
              goto LABEL_169;
            }

            if (v240 != v257)
            {
              (*v251)(v231, v187);
LABEL_168:
              v215 = 0;
              goto LABEL_169;
            }

LABEL_156:
            v215 = 1000;
          }

LABEL_169:
          sub_1D7070E6C(v269, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_170;
        }

        v290 = *v201;
        FeedGroupDecoration.decorationItem.getter(&v282);
        __swift_project_boxed_opaque_existential_1(&v282, *(&v283 + 1));
        v212 = v246;
        v213 = v280;
        sub_1D725F4AC();

        v214 = (*v268)(v212, v213);
        if (v214 == v270)
        {
          (*v256)(v212, v213);
          v215 = *v212;
        }

        else
        {
          if (v214 != v273)
          {
            (*v252)(v212, v213);
          }

          v215 = -100;
        }

        __swift_destroy_boxed_opaque_existential_1(&v282);
LABEL_170:
        v110 = (v180 + v276);
        sub_1D7070E6C(v275, type metadata accessor for ZIndexable);
        sub_1D7070E6C(v271, type metadata accessor for ZIndexable);
        if (v186 < v215)
        {
          break;
        }

        v241 = v274;
        v177 = v274;
        v111 = v264;
        if (v180 < v176 || v110 >= v176)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v180 != v176)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v176 = v177;
        v179 = v241 > v278;
        v178 = v266;
        v175 = v276;
        if (!v179)
        {
          goto LABEL_183;
        }
      }

      v111 = v264;
      if (v180 < a2 || v110 >= a2)
      {
        a2 = v266;
        swift_arrayInitWithTakeFrontToBack();
        v177 = v262;
      }

      else
      {
        v242 = v180 == a2;
        a2 = v266;
        v177 = v262;
        if (!v242)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v175 = v276;
      if (v176 <= v278)
      {
LABEL_183:
        v292 = a2;
        v290 = v177;
        goto LABEL_185;
      }
    }
  }

  v108 = v107 * v270;
  if (a4 < a1 || a1 + v108 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v264 = (a4 + v108);
  v290 = a4 + v108;
  if (v108 >= 1 && a2 < v268)
  {
    LODWORD(v269) = *MEMORY[0x1E69D8678];
    v263 = (v20 + 104);
    LODWORD(v275) = *MEMORY[0x1E69D8680];
    v267 = (v20 + 88);
    v248 = (v20 + 8);
    v255 = (v20 + 96);
    LODWORD(v250) = *MEMORY[0x1E69D8478];
    v260 = (v243[0] + 104);
    LODWORD(v259) = *MEMORY[0x1E69D8470];
    v249 = (v243[0] + 88);
    v247 = (v243[0] + 8);
    v271 = v101;
    while (1)
    {
      v112 = v276;
      sub_1D707111C(a2, v276, type metadata accessor for ZIndexable);
      sub_1D707111C(a4, v101, type metadata accessor for ZIndexable);
      v113 = v112;
      v114 = v265;
      sub_1D707111C(v113, v265, type metadata accessor for ZIndexable);
      v115 = swift_getEnumCaseMultiPayload();
      v278 = a4;
      if (v115 != 1)
      {
        break;
      }

      v281 = *v114;
      FeedGroupDecoration.decorationItem.getter(&v282);
      __swift_project_boxed_opaque_existential_1(&v282, *(&v283 + 1));
      v116 = v252;
      sub_1D725F4AC();

      v117 = v280;
      v118 = (*v267)(v116, v280);
      if (v118 == v269)
      {
        (*v255)(v116, v117);
        v119 = *v116;
      }

      else
      {
        if (v118 != v275)
        {
          (*v248)(v116, v117);
        }

        v119 = -100;
      }

      v101 = v271;
      __swift_destroy_boxed_opaque_existential_1(&v282);
      v132 = v266;
LABEL_52:
      sub_1D707111C(v101, v132, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v144 = v38;
        v281 = *v132;
        FeedGroupDecoration.decorationItem.getter(&v282);
        __swift_project_boxed_opaque_existential_1(&v282, *(&v283 + 1));
        v145 = v253;
        v146 = v280;
        sub_1D725F4AC();

        v147 = (*v267)(v145, v146);
        if (v147 == v269)
        {
          (*v255)(v145, v146);
          v148 = *v145;
        }

        else
        {
          if (v147 != v275)
          {
            (*v248)(v145, v146);
          }

          v148 = -100;
        }

        v7 = v272;
        v38 = v144;
        v101 = v271;
        __swift_destroy_boxed_opaque_existential_1(&v282);
        goto LABEL_83;
      }

      v149 = v132;
      v150 = v274;
      sub_1D7070F64(v149, v274, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v150, v262, type metadata accessor for FeedItemSupplementaryAttributes);
      v151 = swift_getEnumCaseMultiPayload();
      if (v151 < 2)
      {
        goto LABEL_66;
      }

      if (v151 != 2)
      {
        sub_1D7070E6C(v262, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_66:
        (*v263)(v38, v275, v117);
        goto LABEL_67;
      }

      v152 = v262[5];
      v286 = v262[4];
      v287 = v152;
      v153 = v262[7];
      v288 = v262[6];
      v289 = v153;
      v154 = v262[1];
      v282 = *v262;
      v283 = v154;
      v155 = v262[3];
      v284 = v262[2];
      v285 = v155;
      v156 = *(v262 + 16);
      sub_1D6729D5C(&v282);
      v157 = *(v156 + 48);
      v158 = *(v156 + 56);

      v159 = v275;
      if ((v158 & 1) == 0)
      {
        *v38 = v157;
        v159 = v269;
      }

      v160 = v280;
      (*v263)(v38, v159, v280);
      v161 = (*v267)(v38, v160);
      if (v161 == v269)
      {
        (*v255)(v38, v160);
        v148 = *v38;
        v101 = v271;
        goto LABEL_82;
      }

      v101 = v271;
      if (v161 != v275)
      {
        (*v248)(v38, v160);
LABEL_81:
        v148 = 0;
        goto LABEL_82;
      }

LABEL_67:
      sub_1D707111C(v274, v258, type metadata accessor for FeedItemSupplementaryAttributes);
      v162 = swift_getEnumCaseMultiPayload();
      v163 = v254;
      if (v162 >= 2)
      {
        if (v162 == 2)
        {
          v164 = *(v258 + 80);
          v286 = *(v258 + 64);
          v287 = v164;
          v165 = *(v258 + 112);
          v288 = *(v258 + 96);
          v289 = v165;
          v166 = *(v258 + 16);
          v282 = *v258;
          v283 = v166;
          v167 = *(v258 + 48);
          v284 = *(v258 + 32);
          v285 = v167;
          v168 = *(v258 + 128);
          sub_1D6729D5C(&v282);
          v169 = *(*(v168 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

          v170 = *v260;
          v163 = v254;
          if (v169)
          {
            v170(v254, v259, v7);
            v171 = v250;
          }

          else
          {
            v171 = v250;
            v170(v254, v250, v7);
          }
        }

        else
        {
          v171 = v250;
          (*v260)(v254, v250, v7);
          sub_1D7070E6C(v258, type metadata accessor for InternalErrorViewLayout.Context);
        }

        v172 = (*v249)(v163, v7);
        if (v172 == v171)
        {
          v148 = 2000;
          goto LABEL_82;
        }

        if (v172 != v259)
        {
          (*v247)(v163, v7);
          goto LABEL_81;
        }
      }

      else
      {
        (*v260)(v254, v259, v7);
      }

      v148 = 1000;
LABEL_82:
      sub_1D7070E6C(v274, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_83:
      sub_1D7070E6C(v101, type metadata accessor for ZIndexable);
      sub_1D7070E6C(v276, type metadata accessor for ZIndexable);
      if (v119 >= v148)
      {
        v173 = v270;
        a4 = v278 + v270;
        if (a1 < v278 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v278)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v291 = a4;
      }

      else
      {
        v173 = v270;
        a4 = v278;
        if (a1 < a2 || a1 >= a2 + v270)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v173;
      }

      a1 += v173;
      v292 = a1;
      if (a4 >= v264 || a2 >= v268)
      {
        goto LABEL_185;
      }
    }

    v120 = v273;
    sub_1D7070F64(v114, v273, type metadata accessor for FeedItemSupplementaryAttributes);
    sub_1D707111C(v120, v261, type metadata accessor for FeedItemSupplementaryAttributes);
    v121 = swift_getEnumCaseMultiPayload();
    v117 = v280;
    if (v121 >= 2)
    {
      if (v121 == 2)
      {
        v122 = v261[5];
        v286 = v261[4];
        v287 = v122;
        v123 = v261[7];
        v288 = v261[6];
        v289 = v123;
        v124 = v261[1];
        v282 = *v261;
        v283 = v124;
        v125 = v261[3];
        v284 = v261[2];
        v285 = v125;
        v126 = *(v261 + 16);
        sub_1D6729D5C(&v282);
        v127 = *(v126 + 48);
        v128 = *(v126 + 56);

        v129 = v256;
        if ((v128 & 1) == 0)
        {
          *v256 = v127;
        }

        v130 = v129;
        v117 = v280;
        (*v263)();
        v131 = (*v267)(v130, v117);
        if (v131 == v269)
        {
          (*v255)(v130, v117);
          v119 = *v130;
          v132 = v266;
LABEL_47:
          v101 = v271;
          goto LABEL_51;
        }

        v101 = v271;
        if (v131 != v275)
        {
          (*v248)(v256, v117);
          v119 = 0;
          goto LABEL_36;
        }

LABEL_34:
        sub_1D707111C(v273, v257, type metadata accessor for FeedItemSupplementaryAttributes);
        v133 = swift_getEnumCaseMultiPayload();
        if (v133 < 2)
        {
          (*v260)(v251, v259, v7);
          v119 = 1000;
LABEL_36:
          v132 = v266;
LABEL_51:
          sub_1D7070E6C(v273, type metadata accessor for FeedItemSupplementaryAttributes);
          goto LABEL_52;
        }

        v134 = v251;
        if (v133 == 2)
        {
          v135 = v257[5];
          v286 = v257[4];
          v287 = v135;
          v136 = v257[7];
          v288 = v257[6];
          v289 = v136;
          v137 = v257[1];
          v282 = *v257;
          v283 = v137;
          v138 = v257[3];
          v284 = v257[2];
          v285 = v138;
          v139 = *(v257 + 16);
          sub_1D6729D5C(&v282);
          v140 = *(*(v139 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

          v141 = *v260;
          if (v140)
          {
            v141(v134, v259, v7);
            v117 = v280;
            v132 = v266;
            v142 = v250;
LABEL_45:
            v143 = (*v249)(v134, v7);
            if (v143 != v142)
            {
              v101 = v271;
              if (v143 == v259)
              {
                v119 = 1000;
              }

              else
              {
                (*v247)(v251, v7);
                v119 = 0;
              }

              goto LABEL_51;
            }

            v119 = 2000;
            goto LABEL_47;
          }

          v142 = v250;
          v141(v134, v250, v7);
          v117 = v280;
        }

        else
        {
          v142 = v250;
          (*v260)(v251, v250, v7);
          sub_1D7070E6C(v257, type metadata accessor for InternalErrorViewLayout.Context);
        }

        v132 = v266;
        goto LABEL_45;
      }

      sub_1D7070E6C(v261, type metadata accessor for InternalErrorViewLayout.Context);
    }

    (*v263)(v256, v275, v117);
    goto LABEL_34;
  }

LABEL_185:
  sub_1D62FF5F8(&v292, &v291, &v290);
}

void sub_1D7070474(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v32 = sub_1D725F3DC();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v13);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1D7258DBC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = *a1;
  v21 = v34[0];
  v22 = sub_1D69ADFDC(a3, a4, a5, a6);
  v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView);
  v33 = v22;
  [v23 addSubview_];
  sub_1D725C9AC();
  v36 = v21;
  FeedGroupDecoration.decorationItem.getter(v34);
  __swift_project_boxed_opaque_existential_1(v34, v35);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1D725F4BC();
  MEMORY[0x1DA6F0420](0, 0);
  v24 = sub_1D726203C();

  v25 = sub_1D7258D4C();
  v26 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v24 withIndexPath:v25];

  (*(v17 + 8))(v20, v16);
  v27 = v26;
  [v27 setFrame_];
  v36 = v21;
  FeedGroupDecoration.decorationItem.getter(v34);
  sub_1D725C98C();
  v36 = v21;
  v28 = v32;
  FeedGroupDecoration.decorationItem.getter(v34);
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_1D725F4AC();
  v29 = (*(v12 + 88))(v15, v28);
  if (v29 == *MEMORY[0x1E69D8678])
  {
    (*(v12 + 96))(v15, v28);
    v30 = *v15;
  }

  else
  {
    if (v29 != *MEMORY[0x1E69D8680])
    {
      (*(v12 + 8))(v15, v28);
    }

    v30 = -100;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  [v27 setZIndex_];

  v31 = v33;
  [v33 applyLayoutAttributes_];
}

uint64_t sub_1D7070828(void *a1, uint64_t a2, uint64_t (*a3)(id))
{
  v5 = *(a2 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView);
  [v5 addSubview_];
  [v5 contentSize];
  v7 = v6;
  [a1 frame];
  MaxX = CGRectGetMaxX(v14);
  if (v7 <= MaxX)
  {
    v7 = MaxX;
  }

  [v5 contentSize];
  v10 = v9;
  [a1 frame];
  MaxY = CGRectGetMaxY(v15);
  if (v10 > MaxY)
  {
    v12 = v10;
  }

  else
  {
    v12 = MaxY;
  }

  return a3([v5 setContentSize_]);
}

uint64_t sub_1D7070900(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3 & 0x100;
  v6 = sub_1D725DA6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a3 | (v5 >> 8)))
  {
    v11 = 0.5;
  }

  else
  {
    v11 = *&a2;
  }

  sub_1D5BFDE94();
  v13 = v12;
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(v13 + 48);
  sub_1D725DA5C();
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v16 + v17) = v18;
  v19 = *(v7 + 104);
  v19(v16 + v17, *MEMORY[0x1E69D7AB8], v6);
  *v10 = v14;
  v19(v10, *MEMORY[0x1E69D7AD0], v6);
  return sub_1D725DBCC();
}

uint64_t sub_1D7070A6C()
{
  swift_getObjectType();
  if (qword_1EC87D600 != -1)
  {
    swift_once();
  }

  sub_1D7071064(&qword_1EC899B18, v0, type metadata accessor for DebugGroupLayoutViewFactory);
  sub_1D725964C();
  if (v6 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for DebugItemDragInteraction();
  if (!swift_dynamicCastClass())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B5A498(0, &unk_1EDF1A640);
  v1 = sub_1D726373C();
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  sub_1D5B5D3A4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816C0;
  *(v4 + 32) = v3;

  return v4;
}

uint64_t sub_1D7070C28(void *a1)
{
  v2 = sub_1D725DE2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugItemDragInteraction();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;
    v9 = a1;
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
      v13 = OBJC_IVAR____TtC8NewsFeedP33_ADE4A126F6FB4BE95458B6110D529A9F24DebugItemDragInteraction_feedItemLayoutAttributes;
      v19 = *(v8 + OBJC_IVAR____TtC8NewsFeedP33_ADE4A126F6FB4BE95458B6110D529A9F24DebugItemDragInteraction_feedItemLayoutAttributes);
      v14 = v12;
      v15 = FeedItemLayoutAttributes.dragBackgroundColor.getter();
      [v14 setBackgroundColor_];

      v19 = *(v8 + v13);
      FeedItemLayoutAttributes.dragPreviewClipping.getter(v6);
      [v11 bounds];
      v16 = sub_1D725DE1C();
      (*(v3 + 8))(v6, v2);
      [v14 setVisiblePath_];

      v17 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v11 parameters:v14];
      return v17;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ZIndexable()
{
  result = qword_1EC899B48;
  if (!qword_1EC899B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7070E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7070ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7070F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7070FCC()
{
  if (!qword_1EC899B38)
  {
    type metadata accessor for FormatLayoutView();
    sub_1D7071064(&unk_1EDF30340, 255, type metadata accessor for FormatLayoutView);
    v0 = type metadata accessor for DebugItemLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899B38);
    }
  }
}

uint64_t sub_1D7071064(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D707111C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7071198()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_imageHeadlineViewRenderer + 8);
  ObjectType = swift_getObjectType();
  memcpy(v8, v4, sizeof(v8));
  return (*(v5 + 32))(v2, v8, v3, ObjectType, v5);
}

uint64_t sub_1D7071234()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_imageHeadlineViewRenderer + 8);
  ObjectType = swift_getObjectType();
  memcpy(v10, v3, sizeof(v10));
  return (*(v7 + 40))(v2, v10, v4, v6, v5, ObjectType, v7);
}

uint64_t sub_1D70712E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_coverChannelViewRenderer + 8);
  ObjectType = swift_getObjectType();
  v7 = v4[9];
  v14[8] = v4[8];
  v14[9] = v7;
  v8 = v4[11];
  v14[10] = v4[10];
  v14[11] = v8;
  v9 = v4[5];
  v14[4] = v4[4];
  v14[5] = v9;
  v10 = v4[7];
  v14[6] = v4[6];
  v14[7] = v10;
  v11 = v4[1];
  v14[0] = *v4;
  v14[1] = v11;
  v12 = v4[3];
  v14[2] = v4[2];
  v14[3] = v12;
  return (*(v5 + 8))(v2, v14, v3, ObjectType, v5);
}

uint64_t sub_1D7071394()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_coverIssueViewRenderer + 8);
  ObjectType = swift_getObjectType();
  memcpy(v8, v4, sizeof(v8));
  return (*(v5 + 8))(v2, v8, v3, ObjectType, v5);
}

uint64_t sub_1D7071430()
{
  result = type metadata accessor for FeedItemSupplementaryAttributes();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D70714AC()
{
  v2 = *v0;
  v21 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v6 = v5();
  v7 = sub_1D5E02AFC(v6, v2);

  if (!v1)
  {
    v9 = v5();
    v10 = sub_1D5E02AFC(v9, v21);

    v11 = v5();
    v12 = sub_1D5E02AFC(v11, v3);

    v13 = v5();
    v14 = sub_1D5E02AFC(v13, v4);

    v16 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    v15 = v7;
    *&v17 = v15;
    *&v10 = v10;
    LODWORD(v18) = LODWORD(v10);
    *&v12 = v12;
    LODWORD(v19) = LODWORD(v12);
    *&v14 = v14;
    LODWORD(v20) = LODWORD(v14);
    return [v16 initWithControlPoints__:v17 :{v18, v19, v20}];
  }

  return result;
}

unint64_t sub_1D70716EC(uint64_t a1)
{
  result = sub_1D7071714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7071714()
{
  result = qword_1EC899B58;
  if (!qword_1EC899B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B58);
  }

  return result;
}

unint64_t sub_1D7071768(void *a1)
{
  a1[1] = sub_1D666B33C();
  a1[2] = sub_1D6703820();
  result = sub_1D70717A0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70717A0()
{
  result = qword_1EC899B60;
  if (!qword_1EC899B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B60);
  }

  return result;
}

uint64_t sub_1D7071804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    result = sub_1D6B7C1C8(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v23);
    if (!v3)
    {
      v21 = v23[6];
      v22[0] = v24[0];
      *(v22 + 9) = *(v24 + 9);
      v18[0] = v23[0];
      v18[1] = v23[1];
      v18[2] = v23[2];
      v18[3] = v23[3];
      v19 = v23[4];
      v20 = v23[5];
      v12 = *&v23[0];
      result = sub_1D5ECF320(v18);
      v13 = v19 | 0x10;
      *a2 = v12;
      *(a2 + 8) = v13;
    }
  }

  else
  {
    v14 = v8;
    result = sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v3)
    {
      v15 = &v10[*(v14 + 40)];
      v16 = v15[*(type metadata accessor for FeedHeadline.State(0) + 32)] == 0;
      v17 = *(v10 + 5);
      swift_unknownObjectRetain();
      result = sub_1D5C10040(v10);
      *a2 = v17;
      *(a2 + 8) = v16;
    }
  }

  return result;
}

uint64_t static FormatActivityItemsBinding.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D70719B0(uint64_t a1)
{
  result = sub_1D70719D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70719D8()
{
  result = qword_1EC899B68;
  if (!qword_1EC899B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B68);
  }

  return result;
}

unint64_t sub_1D7071A2C(void *a1)
{
  a1[1] = sub_1D66710EC();
  a1[2] = sub_1D6701F50();
  result = sub_1D7071A64();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7071A64()
{
  result = qword_1EC899B70;
  if (!qword_1EC899B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B70);
  }

  return result;
}

BOOL _s8NewsFeed17FormatGlassEffectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 16);
  v94 = *(a1 + 32);
  v95 = *(a1 + 24);
  v96 = *(a1 + 40);
  v92 = *(a1 + 48);
  v87 = *(a1 + 56);
  v6 = *(a1 + 64);
  v85 = *(a1 + 66);
  v83 = *(a1 + 72);
  v80 = *(a1 + 80);
  v78 = *(a1 + 88);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v90 = *(a2 + 24);
  v88 = *(a2 + 16);
  v89 = *(a2 + 32);
  v86 = *(a2 + 40);
  v91 = *(a2 + 48);
  v93 = *(a2 + 56);
  v10 = *(a2 + 64);
  v84 = *(a2 + 66);
  v79 = *(a2 + 80);
  v81 = *(a2 + 96);
  v82 = *(a2 + 72);
  v76 = *(a2 + 104);
  v77 = *(a2 + 88);
  v75 = *(a2 + 112);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v72 = *(a1 + 112);
    v73 = *(a1 + 96);
    v74 = *(a1 + 104);
    v65 = *(a2 + 137);
    v66 = *(a2 + 136);
    v67 = *(a2 + 120);
    v68 = *(a2 + 128);
    v63 = *(a1 + 160);
    v64 = *(a1 + 137);
    v69 = *(a1 + 136);
    v70 = *(a1 + 120);
    v71 = *(a1 + 128);
    v60 = *(a2 + 160);
    v58 = *(a2 + 144);
    v59 = *(a2 + 152);
    v56 = *(a2 + 161);
    v57 = *(a1 + 161);
    v61 = *(a1 + 144);
    v62 = *(a1 + 152);

    v11 = sub_1D633D10C(v2, v7);

    if ((v11 & 1) == 0)
    {
      return 0;
    }

    if (v3 == 14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }

    v72 = *(a1 + 112);
    v73 = *(a1 + 96);
    v74 = *(a1 + 104);
    v65 = *(a2 + 137);
    v66 = *(a2 + 136);
    v67 = *(a2 + 120);
    v68 = *(a2 + 128);
    v63 = *(a1 + 160);
    v64 = *(a1 + 137);
    v69 = *(a1 + 136);
    v70 = *(a1 + 120);
    v71 = *(a1 + 128);
    v60 = *(a2 + 160);
    v58 = *(a2 + 144);
    v59 = *(a2 + 152);
    v56 = *(a2 + 161);
    v57 = *(a1 + 161);
    v61 = *(a1 + 144);
    v62 = *(a1 + 152);

    if (v3 == 14)
    {
LABEL_5:
      if (v8 != 14)
      {
        return 0;
      }

      goto LABEL_13;
    }
  }

  result = 0;
  if (v8 == 14 || v3 != v8)
  {
    return result;
  }

LABEL_13:
  if (v4 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == 2)
    {
      return 0;
    }

    if (v4)
    {
      v13 = 1802658148;
    }

    else
    {
      v13 = 0x746867696CLL;
    }

    if (v4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    if (v9)
    {
      v15 = 1802658148;
    }

    else
    {
      v15 = 0x746867696CLL;
    }

    if (v9)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    if (v13 == v15 && v14 == v16)
    {
    }

    else
    {
      v17 = sub_1D72646CC();

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v18 = v6;
  v19 = v10 >> 11;
  v55 = v5;
  if (v6 >> 11 > 0x1E)
  {
    v20 = v10;
    v21 = v5;
    v22 = v92;
    v23 = v87;
    sub_1D668E800(v21, v95, v94, v96, v92, v87, v6);
    v25 = v88;
    v24 = v89;
    v26 = v90;
    v27 = v86;
    v28 = v91;
    sub_1D668E800(v88, v90, v89, v86, v91, v93, v20);
    if (v19 > 0x1E)
    {
      sub_1D60107DC(v55, v95, v94, v96, v92, v87, v18);
      goto LABEL_40;
    }

LABEL_38:
    sub_1D60107DC(v55, v95, v94, v96, v22, v23, v18);
    sub_1D60107DC(v25, v26, v24, v27, v28, v93, v20);
    return 0;
  }

  v104 = v5;
  v105 = v95;
  v106 = v94;
  v107 = v96;
  v108 = v92;
  v109 = v87;
  v110 = v6;
  if (v19 > 0x1E)
  {
    sub_1D668E800(v5, v95, v94, v96, v92, v87, v6);
    v27 = v86;
    v20 = v10;
    sub_1D668E800(v88, v90, v89, v86, v91, v93, v10);
    sub_1D668E800(v5, v95, v94, v96, v92, v87, v6);
    v29 = v5;
    v28 = v91;
    v25 = v88;
    v24 = v89;
    v22 = v92;
    v26 = v90;
    v23 = v87;
    sub_1D5E1DE98(v29, v95, v94, v96, v92, v87, v18);
    goto LABEL_38;
  }

  v97 = v88;
  v98 = v90;
  v99 = v89;
  v100 = v86;
  v101 = v91;
  v102 = v93;
  v103 = v10;
  sub_1D668E800(v5, v95, v94, v96, v92, v87, v6);
  sub_1D668E800(v88, v90, v89, v86, v91, v93, v10);
  sub_1D668E800(v5, v95, v94, v96, v92, v87, v6);
  v30 = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v104, &v97);
  sub_1D5E1DE98(v97, v98, v99, v100, v101, v102, v103);
  sub_1D5E1DE98(v104, v105, v106, v107, v108, v109, v110);
  sub_1D60107DC(v5, v95, v94, v96, v92, v87, v6);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  if (v85 == 4)
  {
    if (v84 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v84 == 4 || v85 != v84)
    {
      return result;
    }
  }

  if ((sub_1D5E21FA0(v83, v82) & 1) == 0)
  {
    return 0;
  }

  if ((~v80 & 0xF000000000000007) == 0)
  {
    v31 = v79;
    sub_1D5CFCFAC(v80);
    sub_1D5CFCFAC(v79);
    v32 = v81;
    if ((~v79 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v80);
      goto LABEL_53;
    }

LABEL_51:
    sub_1D5C84FF4(v80);
    sub_1D5C84FF4(v31);
    return 0;
  }

  v104 = v80;
  v31 = v79;
  v32 = v81;
  if ((~v79 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v80);
    sub_1D5CFCFAC(v79);
    sub_1D5CFCFAC(v80);

    goto LABEL_51;
  }

  v97 = v79;
  sub_1D5CFCFAC(v80);
  sub_1D5CFCFAC(v79);
  sub_1D5CFCFAC(v80);
  v33 = static FormatColor.== infix(_:_:)(&v104, &v97);

  sub_1D5C84FF4(v80);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  if (v78)
  {
    if (!v77)
    {
      return 0;
    }

    v34 = sub_1D633A310(v78, v77);

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v77)
    {
      return 0;
    }
  }

  if (v72 == 255)
  {
    v37 = -1;
    sub_1D6189668(v73, v74, 255);
    v35 = v75;
    v38 = v76;
    if (v75 == 255)
    {
      sub_1D6189668(v32, v76, 255);
      sub_1D60107F0(v73, v74, 255);
      goto LABEL_68;
    }

    sub_1D6189668(v32, v76, v75);
    v40 = v73;
    v39 = v74;
LABEL_66:
    sub_1D60107F0(v40, v39, v37);
    v41 = v32;
    v42 = v38;
    v43 = v35;
    goto LABEL_76;
  }

  v104 = v73;
  v105 = v74;
  LOBYTE(v106) = v72;
  v35 = v75;
  if (v75 == 255)
  {
    v38 = v76;
    v39 = v74;
    v40 = v73;
    v37 = v72;
    sub_1D6189668(v73, v74, v72);
    sub_1D6189668(v32, v76, 255);
    sub_1D6189668(v73, v74, v72);
    sub_1D5D2F2C4(v73, v74, v72 & 1);
    goto LABEL_66;
  }

  v97 = v32;
  v98 = v76;
  LOBYTE(v99) = v75 & 1;
  sub_1D6189668(v73, v74, v72);
  sub_1D6189668(v32, v76, v75);
  sub_1D6189668(v73, v74, v72);
  v36 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v104, &v97);
  sub_1D5D2F2C4(v97, v98, v99);
  sub_1D5D2F2C4(v104, v105, v106);
  sub_1D60107F0(v73, v74, v72);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_68:
  if (v69 != 255)
  {
    v104 = v70;
    v105 = v71;
    LOBYTE(v106) = v69;
    if (v66 != 255)
    {
      v97 = v67;
      v98 = v68;
      LOBYTE(v99) = v66 & 1;
      sub_1D6189668(v70, v71, v69);
      sub_1D6189668(v67, v68, v66);
      sub_1D6189668(v70, v71, v69);
      v44 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v104, &v97);
      sub_1D5D2F2C4(v97, v98, v99);
      sub_1D5D2F2C4(v104, v105, v106);
      sub_1D60107F0(v70, v71, v69);
      if ((v44 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_78;
    }

    v48 = -1;
    sub_1D6189668(v70, v71, v69);
    v47 = v67;
    v46 = v68;
    sub_1D6189668(v67, v68, 255);
    sub_1D6189668(v70, v71, v69);
    v45 = v69;
    sub_1D5D2F2C4(v70, v71, v69 & 1);
LABEL_75:
    sub_1D60107F0(v70, v71, v45);
    v41 = v47;
    v42 = v46;
    v43 = v48;
    goto LABEL_76;
  }

  v45 = -1;
  sub_1D6189668(v70, v71, 255);
  if (v66 != 255)
  {
    v47 = v67;
    v46 = v68;
    v48 = v66;
    sub_1D6189668(v67, v68, v66);
    goto LABEL_75;
  }

  sub_1D6189668(v67, v68, 255);
  sub_1D60107F0(v70, v71, 255);
LABEL_78:
  if (v64 == 5)
  {
    if (v65 != 5)
    {
      return 0;
    }

    goto LABEL_83;
  }

  result = 0;
  if (v65 != 5 && v64 == v65)
  {
LABEL_83:
    if (v63 == 255)
    {
      sub_1D6189668(v61, v62, 255);
      if (v60 == 255)
      {
        sub_1D6189668(v58, v59, 255);
        sub_1D60107F0(v61, v62, 255);
LABEL_92:
        if (v57 == 2)
        {
          return v56 == 2;
        }

        if (v56 != 2)
        {
          if (v57)
          {
            v50 = 1802658148;
          }

          else
          {
            v50 = 0x746867696CLL;
          }

          if (v57)
          {
            v51 = 0xE400000000000000;
          }

          else
          {
            v51 = 0xE500000000000000;
          }

          if (v56)
          {
            v52 = 1802658148;
          }

          else
          {
            v52 = 0x746867696CLL;
          }

          if (v56)
          {
            v53 = 0xE400000000000000;
          }

          else
          {
            v53 = 0xE500000000000000;
          }

          if (v50 == v52 && v51 == v53)
          {

            return 1;
          }

          v54 = sub_1D72646CC();

          if (v54)
          {
            return 1;
          }
        }

        return 0;
      }

      sub_1D6189668(v58, v59, v60);
    }

    else
    {
      v104 = v61;
      v105 = v62;
      LOBYTE(v106) = v63;
      if (v60 != 255)
      {
        v97 = v58;
        v98 = v59;
        LOBYTE(v99) = v60 & 1;
        sub_1D6189668(v61, v62, v63);
        sub_1D6189668(v58, v59, v60);
        sub_1D6189668(v61, v62, v63);
        v49 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v104, &v97);
        sub_1D5D2F2C4(v97, v98, v99);
        sub_1D5D2F2C4(v104, v105, v106);
        sub_1D60107F0(v61, v62, v63);
        if ((v49 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_92;
      }

      sub_1D6189668(v61, v62, v63);
      sub_1D6189668(v58, v59, 255);
      sub_1D6189668(v61, v62, v63);
      sub_1D5D2F2C4(v61, v62, v63 & 1);
    }

    sub_1D60107F0(v61, v62, v63);
    v41 = v58;
    v42 = v59;
    v43 = v60;
LABEL_76:
    sub_1D60107F0(v41, v42, v43);
    return 0;
  }

  return result;
}

unint64_t sub_1D70726C8(uint64_t a1)
{
  result = sub_1D70726F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70726F0()
{
  result = qword_1EC899B78;
  if (!qword_1EC899B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B78);
  }

  return result;
}

unint64_t sub_1D7072744(void *a1)
{
  a1[1] = sub_1D66D30AC();
  a1[2] = sub_1D66F57CC();
  result = sub_1D707277C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D707277C()
{
  result = qword_1EC899B80;
  if (!qword_1EC899B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B80);
  }

  return result;
}

uint64_t sub_1D70727D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7072818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D70728A4(void *a1)
{
  v3 = v1;
  sub_1D7072E8C(0, &qword_1EC899B98, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7072E38();
  sub_1D7264B5C();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_1D693EFC0();
  sub_1D726443C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D726439C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7072A2C()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 6775156;
  }
}

uint64_t sub_1D7072A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D7072B34(uint64_t a1)
{
  v2 = sub_1D7072E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7072B70(uint64_t a1)
{
  v2 = sub_1D7072E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7072BAC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D7072C08(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D7072C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7072E8C(0, &qword_1EC899B88, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7072E38();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1D693ECE8();
  sub_1D726431C();
  v19 = v21;
  v20 = v22;
  v11 = v24;
  v18 = v23;
  LOBYTE(v21) = 1;
  v12 = sub_1D726424C();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v20;
  *a2 = v19;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14 & 1;
  return result;
}

unint64_t sub_1D7072E38()
{
  result = qword_1EC899B90;
  if (!qword_1EC899B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899B90);
  }

  return result;
}

void sub_1D7072E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7072E38();
    v7 = a3(a1, &type metadata for DebugInspectionCohort.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7072F04()
{
  result = qword_1EC899BA0;
  if (!qword_1EC899BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899BA0);
  }

  return result;
}

unint64_t sub_1D7072F5C()
{
  result = qword_1EC899BA8;
  if (!qword_1EC899BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899BA8);
  }

  return result;
}

unint64_t sub_1D7072FB4()
{
  result = qword_1EC899BB0;
  if (!qword_1EC899BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899BB0);
  }

  return result;
}

uint64_t sub_1D7073080()
{

  sub_1D70732B4(*(v0 + 56));
  return v0;
}

uint64_t sub_1D70730B8()
{
  sub_1D7073080();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7073104()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73F7730);
  MEMORY[0x1DA6F9910](*(v0 + 24), *(v0 + 32));
  MEMORY[0x1DA6F9910](0x657571202020200ALL, 0xEB000000003D6575);
  swift_beginAccess();

  sub_1D726279C();

  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x7263202020200A2CLL, 0xEE003D6465746165);
  v2 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](10506, 0xE200000000000000);
  return 0;
}

unint64_t sub_1D70732B4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1D70732C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D69972F4(0, v1, 0);
    v3 = v24;
    v4 = v2 + 32;
    do
    {
      sub_1D5B68374(v4, v21);
      v5 = v22;
      v6 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v7 = (*(v6 + 8))(v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v21);
      v24 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        result = sub_1D69972F4((v8 > 1), v9 + 1, 1);
        v3 = v24;
      }

      *(v3 + 16) = v10;
      *(v3 + 8 * v9 + 32) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
LABEL_25:

      return v11;
    }
  }

  v12 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v12 < *(v3 + 16))
  {
    v13 = *(v3 + 8 * v12 + 32);
    v14 = *(v13 + 16);
    v15 = *(v11 + 16);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v16 <= *(v11 + 24) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_1D698BB14(result, v17, 1, v11);
      v11 = result;
      if (*(v13 + 16))
      {
LABEL_21:
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v14)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = *(v11 + 16);
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_30;
          }

          *(v11 + 16) = v20;
        }

        goto LABEL_10;
      }
    }

    if (v14)
    {
      goto LABEL_28;
    }

LABEL_10:
    if (v10 == ++v12)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_1D7073500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  v3 = a1 + 32;
  do
  {
    sub_1D707364C(v3, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_1D5B63F14(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1D698BB28(0, v2[2] + 1, 1, v2);
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1D698BB28((v4 > 1), v5 + 1, 1, v2);
      }

      v2[2] = v5 + 1;
      sub_1D5B63F14(v9, &v2[5 * v5 + 4]);
    }

    else
    {
      sub_1D5BFB774(v7, &unk_1EC880480, &qword_1EC880AD0);
    }

    v3 += 40;
    --v1;
  }

  while (v1);
  return v2;
}

uint64_t sub_1D707364C(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D70736C8(void *a1, uint64_t a2)
{
  v3 = &unk_1D7273000;
  v4 = "FormatContentSubgroupFilterOnce";
  if (a2)
  {
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = v8 + v7;
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = (v9 + *(v12 + 24));
    *v13 = v10;
    v13[1] = v11;
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    *v9 = xmmword_1D72E27B0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v15 = v9 + *(v12 + 28);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = -1;
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);

    sub_1D6795150(0x6567616B636150, 0xE700000000000000, 0, 0, v8, v80);
    swift_setDeallocating();
    sub_1D6180C78(v9);
    swift_deallocClassInstance();
    v16 = sub_1D698BB14(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1D698BB14((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v80[1];
    *(v19 + 2) = v80[0];
    *(v19 + 3) = v20;
    *(v19 + 8) = v81;
    v3 = &unk_1D7273000;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  *&v82[0] = a1;
  v21 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D5B49474(0, &qword_1EC890C50);
  if (swift_dynamicCast())
  {
    v79 = a1;
    sub_1D5B63F14(&v84, &v87);
    sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
    v24 = swift_allocObject();
    v78 = v3[174];
    *(v24 + 16) = v78;
    v25 = v24 + v23;
    v26 = *(&v88 + 1);
    v27 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
    v28 = (*(v27 + 16))(v26, v27);
    v30 = v29;
    v31 = type metadata accessor for FormatInspectionItem(0);
    v32 = (v24 + v23 + *(v31 + 24));
    *v32 = v28;
    v32[1] = v30;
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v32;
    v4 = "FormatContentSubgroupFilterOnce";
    v77 = *(*(v33 - 8) + 56);
    v77(v34, 0, 1, v33);
    *v25 = xmmword_1D72E27B0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v35 = v24 + v23 + *(v31 + 28);
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = -1;
    v36 = (*(v31 - 8) + 56);
    v76 = *v36;
    (*v36)(v24 + v23, 0, 1, v31);
    sub_1D6795150(0x7470697263736544, 0xEB000000006E6F69, 0, 0, v24, v82);
    swift_setDeallocating();
    sub_1D6180C78(v24 + v23);
    swift_deallocClassInstance();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D698BB14(0, *(v16 + 2) + 1, 1, v16);
    }

    v38 = *(v16 + 2);
    v37 = *(v16 + 3);
    if (v38 >= v37 >> 1)
    {
      v16 = sub_1D698BB14((v37 > 1), v38 + 1, 1, v16);
    }

    *(v16 + 2) = v38 + 1;
    v39 = &v16[40 * v38];
    v40 = v82[0];
    v41 = v82[1];
    *(v39 + 8) = v83;
    *(v39 + 2) = v40;
    *(v39 + 3) = v41;
    v42 = *(&v88 + 1);
    v43 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
    v44 = (*(v43 + 24))(v42, v43);
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      v48 = swift_allocObject();
      *(v48 + 16) = v78;
      v49 = v48 + v23;
      v50 = (v48 + v23 + *(v31 + 24));
      *v50 = v46;
      v50[1] = v47;
      swift_storeEnumTagMultiPayload();
      v77(v50, 0, 1, v33);
      *v49 = xmmword_1D72E27B0;
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v51 = v48 + v23 + *(v31 + 28);
      *v51 = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = -1;
      v76(v48 + v23, 0, 1, v31);
      sub_1D6795150(1953392968, 0xE400000000000000, 0, 0, v48, &v84);
      swift_setDeallocating();
      sub_1D6180C78(v48 + v23);
      swift_deallocClassInstance();
      v53 = *(v16 + 2);
      v52 = *(v16 + 3);
      if (v53 >= v52 >> 1)
      {
        v16 = sub_1D698BB14((v52 > 1), v53 + 1, 1, v16);
      }

      v4 = "FormatContentSubgroupFilterOnce";
      a1 = v79;
      v3 = &unk_1D7273000;
      *(v16 + 2) = v53 + 1;
      v54 = &v16[40 * v53];
      v55 = v84;
      v56 = v85;
      *(v54 + 8) = v86;
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
    }

    else
    {
      a1 = v79;
      v3 = &unk_1D7273000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    sub_1D5BFB774(&v84, &qword_1EC89C7A0, &qword_1EC890C50);
  }

  sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8();
  v58 = (*(*(v57 - 8) + 80) + 32) & ~*(*(v57 - 8) + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v3[174];
  v60 = v59 + v58;
  v61 = sub_1D5EE763C(a1);
  v63 = v62;
  v64 = type metadata accessor for FormatInspectionItem(0);
  v65 = (v60 + *(v64 + 24));
  *v65 = v61;
  v65[1] = v63;
  v66 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  *v60 = *(v4 + 123);
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  v67 = v60 + *(v64 + 28);
  *v67 = 0;
  *(v67 + 8) = 0;
  *(v67 + 16) = -1;
  (*(*(v64 - 8) + 56))(v60, 0, 1, v64);
  sub_1D6795150(1886221636, 0xE400000000000000, 0, 0, v59, &v87);
  swift_setDeallocating();
  sub_1D6180C78(v60);
  swift_deallocClassInstance();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1D698BB14(0, *(v16 + 2) + 1, 1, v16);
  }

  v69 = *(v16 + 2);
  v68 = *(v16 + 3);
  if (v69 >= v68 >> 1)
  {
    v16 = sub_1D698BB14((v68 > 1), v69 + 1, 1, v16);
  }

  *(v16 + 2) = v69 + 1;
  v70 = &v16[40 * v69];
  v71 = v87;
  v72 = v88;
  *(v70 + 8) = v89;
  *(v70 + 2) = v71;
  *(v70 + 3) = v72;
  v73 = sub_1D5F63640(v16);

  v74 = sub_1D7073500(v73);

  return v74;
}

uint64_t sub_1D70740A8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D707477C(0, &qword_1EDF03818, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70746F0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1D72642BC();
  v29 = v12;
  LOBYTE(v33[0]) = 1;
  v13 = sub_1D72642BC();
  v28 = v14;
  v26 = v13;
  LOBYTE(v33[0]) = 2;
  v25 = sub_1D726422C();
  v27 = v15;
  sub_1D5F0E598();
  v35 = 3;
  sub_1D5F0E708(&qword_1EDF04A98, sub_1D5F0E5E8);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v24 = v36;
  v17 = v28;
  v16 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v18 = v25;
  v19 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v20 = v27;
  *v32 = v25;
  *&v32[8] = v27;
  *&v32[16] = v36;
  v32[24] = 5;
  v21 = v31;
  *a2 = v30;
  a2[1] = v21;
  a2[2] = *v32;
  *(a2 + 41) = *&v32[9];
  sub_1D7074744(&v30, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v11;
  v33[1] = v16;
  v33[2] = v19;
  v33[3] = v17;
  v33[4] = v18;
  v33[5] = v20;
  v33[6] = v24;
  v34 = 5;
  return sub_1D67949F0(v33);
}

uint64_t sub_1D7074414(void *a1)
{
  sub_1D707477C(0, &qword_1EC899BB8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70746F0();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D72643FC();
    v23 = 2;
    sub_1D726437C();
    v21 = v12;
    v22 = 3;
    sub_1D5F0E598();
    sub_1D5F0E708(&qword_1EC880E68, sub_1D5F0E774);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7074648(uint64_t a1)
{
  v2 = sub_1D70746F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7074684(uint64_t a1)
{
  v2 = sub_1D70746F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D70746F0()
{
  result = qword_1EDF060D0;
  if (!qword_1EDF060D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060D0);
  }

  return result;
}

void sub_1D707477C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70746F0();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseLineScoreItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70747F4()
{
  result = qword_1EC899BC0;
  if (!qword_1EC899BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899BC0);
  }

  return result;
}

unint64_t sub_1D707484C()
{
  result = qword_1EDF060C0;
  if (!qword_1EDF060C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060C0);
  }

  return result;
}

unint64_t sub_1D70748A4()
{
  result = qword_1EDF060C8;
  if (!qword_1EDF060C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060C8);
  }

  return result;
}

uint64_t sub_1D70748F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7074940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D70749B8()
{
  v1 = v0;
  v2 = sub_1D72611CC();
  v7 = 1;
  sub_1D7074BE4(v1, &v19);
  v14 = v25;
  v15 = v26;
  v16[0] = *v27;
  *(v16 + 9) = *&v27[9];
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v8 = v19;
  v9 = v20;
  v17[6] = v25;
  v17[7] = v26;
  v18[0] = *v27;
  *(v18 + 9) = *&v27[9];
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_1D70753F0(&v8, &v4);
  sub_1D7075A0C(v17, &qword_1EC899BC8, sub_1D7075484, MEMORY[0x1E6981F40]);
  *&v6[55] = v11;
  *&v6[39] = v10;
  *&v6[103] = v14;
  *&v6[119] = v15;
  *&v6[135] = v16[0];
  *&v6[144] = *(v16 + 9);
  *&v6[71] = v12;
  *&v6[87] = v13;
  *&v6[7] = v8;
  *&v6[23] = v9;
  *&v5[97] = *&v6[96];
  *&v5[113] = *&v6[112];
  *&v5[129] = *&v6[128];
  *&v5[145] = *(v16 + 9);
  *&v5[33] = *&v6[32];
  *&v5[49] = *&v6[48];
  *&v5[65] = *&v6[64];
  *&v5[81] = *&v6[80];
  *&v5[1] = *v6;
  v4 = v2;
  v5[0] = v7;
  *&v5[17] = *&v6[16];
  v5[161] = 0;
  sub_1D7260EDC();
  sub_1D7075604();
  sub_1D7075784();
  sub_1D72617DC();
  *v27 = *&v5[112];
  *&v27[16] = *&v5[128];
  v28 = *&v5[144];
  v29 = *&v5[160];
  v23 = *&v5[48];
  v24 = *&v5[64];
  v25 = *&v5[80];
  v26 = *&v5[96];
  v19 = v4;
  v20 = *v5;
  v21 = *&v5[16];
  v22 = *&v5[32];
  return sub_1D70759AC(&v19, sub_1D7075604);
}

uint64_t sub_1D7074BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40))
  {
    v4 = sub_1D72618CC();
    v5 = sub_1D726184C();
    *&v32 = v4;
    *(&v32 + 1) = swift_getKeyPath();
    *&v33 = v5;
    BYTE8(v33) = 0;
  }

  else
  {
    v6 = sub_1D72618CC();
    v7 = sub_1D726188C();
    *&v32 = v6;
    *(&v32 + 1) = swift_getKeyPath();
    *&v33 = v7;
    BYTE8(v33) = 1;
  }

  sub_1D5F257F0();
  sub_1D61ABEFC();
  sub_1D726135C();
  v8 = *&v38[8];
  v9 = *&v38[16];
  v10 = v38[24];
  v11 = a1;
  v12 = *a1;
  v40[0] = v12;
  v20 = *v38;
  sub_1D70758AC();
  if (v12)
  {
    sub_1D70758F4(v40, v38);
    v13 = sub_1D726188C();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
    v13 = 0;
  }

  sub_1D70758F4(v40, v38);
  v15 = sub_1D726125C();
  LOBYTE(v32) = 1;
  sub_1D7074F48(v11, v26);
  *&v38[7] = v26[0];
  *&v38[23] = v26[1];
  *&v38[39] = v26[2];
  *&v38[55] = v27;
  v28[0] = v15;
  v28[1] = 0;
  v29[0] = v32;
  *&v29[1] = *v38;
  *&v29[17] = *&v38[16];
  *&v29[33] = *&v38[32];
  *&v29[49] = *&v38[48];
  v21 = *v29;
  v22 = *&v29[16];
  v23 = *&v29[32];
  v24 = *&v29[48];
  v30[0] = v15;
  v30[1] = *v29;
  v30[3] = *&v29[32];
  v30[4] = *&v29[48];
  v30[2] = *&v29[16];
  *&v29[64] = *(&v27 + 1);
  v25 = *(&v27 + 1);
  v31 = *(&v27 + 1);
  v32 = v15;
  v33 = *v29;
  v37 = *(&v27 + 1);
  v35 = *&v29[32];
  v36 = *&v29[48];
  v34 = *&v29[16];
  sub_1D6A4AC0C(v28, v38);
  sub_1D70758AC();
  sub_1D6CBDDF4(v12);
  sub_1D6A4AC0C(v30, v38);
  sub_1D6CBDE44(v12);
  sub_1D7075968();
  sub_1D70759AC(v28, sub_1D6A4A6D0);
  *a2 = v20;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v13;
  v16 = v35;
  *(a2 + 88) = v34;
  *(a2 + 104) = v16;
  *(a2 + 120) = v36;
  v17 = v37;
  v18 = v33;
  *(a2 + 56) = v32;
  *(a2 + 72) = v18;
  *(a2 + 136) = v17;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  *&v38[32] = v22;
  *&v38[48] = v23;
  *&v38[64] = v24;
  v39 = v25;
  *v38 = v15;
  *&v38[16] = v21;
  sub_1D70759AC(v38, sub_1D6A4A6D0);
  sub_1D6CBDE44(v12);
  return sub_1D7075968();
}

uint64_t sub_1D7074F48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = MEMORY[0x1E6980E30];
  v4 = MEMORY[0x1E69E6720];
  sub_1D70755A0(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v58 - v7;
  v62 = a1;
  v9 = *(a1 + 16);
  v64 = *(a1 + 8);
  v65 = v9;
  v10 = sub_1D5BF4D9C();

  v61 = v10;
  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1D726163C();
  v17 = *(v16 - 8);
  v59 = *(v17 + 56);
  v60 = v16;
  v58[1] = v17 + 56;
  v59(v8, 1, 1);
  sub_1D726167C();
  sub_1D7075A0C(v8, &qword_1EC881178, v3, v4);
  v18 = sub_1D72616DC();
  v20 = v19;
  v22 = v21;

  sub_1D5F26348(v11, v13, v15 & 1);

  sub_1D726187C();
  v23 = sub_1D72616BC();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_1D5F26348(v18, v20, v22 & 1);

  v30 = *(v62 + 32);
  if (v30)
  {
    v64 = *(v62 + 24);
    v65 = v30;

    v31 = sub_1D726171C();
    v33 = v32;
    v35 = v34;
    (v59)(v8, 1, 1, v60);
    sub_1D726167C();
    sub_1D7075A0C(v8, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v36 = sub_1D72616DC();
    v61 = v23;
    v62 = v29;
    v38 = v37;
    v40 = v39;
    LODWORD(v59) = v27;

    sub_1D5F26348(v31, v33, v35 & 1);

    v41 = sub_1D72616AC();
    v43 = v42;
    v45 = v44;
    v60 = v25;
    v46 = v38;
    v23 = v61;
    sub_1D5F26348(v36, v46, v40 & 1);

    sub_1D726188C();
    v47 = sub_1D72616BC();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v27) = v59;

    sub_1D5F26348(v41, v43, v45 & 1);
    v25 = v60;

    v54 = v51 & 1;
    v29 = v62;
    sub_1D5F26358(v47, v49, v54);
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v54 = 0;
    v53 = 0;
  }

  v55 = v27 & 1;
  sub_1D5F26358(v23, v25, v55);

  sub_1D6A4AD98(v47, v49, v54, v53);
  sub_1D68C4240(v47, v49, v54, v53);
  LOBYTE(v64) = v55;
  v56 = v63;
  *v63 = v23;
  v56[1] = v25;
  *(v56 + 16) = v55;
  v56[3] = v29;
  v56[4] = v47;
  v56[5] = v49;
  v56[6] = v54;
  v56[7] = v53;
  sub_1D68C4240(v47, v49, v54, v53);
  sub_1D5F26348(v23, v25, v55);
}

uint64_t sub_1D70753F0(uint64_t a1, uint64_t a2)
{
  sub_1D70755A0(0, &qword_1EC899BC8, sub_1D7075484, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7075484()
{
  if (!qword_1EC899BD0)
  {
    sub_1D7075544();
    sub_1D70755A0(255, &qword_1EC894BE0, sub_1D5F257F0, MEMORY[0x1E69E6720]);
    sub_1D6A4A6D0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC899BD0);
    }
  }
}

void sub_1D7075544()
{
  if (!qword_1EC899BD8)
  {
    sub_1D5F257F0();
    v0 = sub_1D726136C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899BD8);
    }
  }
}

void sub_1D70755A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7075604()
{
  if (!qword_1EC899BE0)
  {
    sub_1D707566C();
    sub_1D5F25A44();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899BE0);
    }
  }
}

void sub_1D707566C()
{
  if (!qword_1EC899BE8)
  {
    sub_1D70755A0(255, &qword_1EC899BC8, sub_1D7075484, MEMORY[0x1E6981F40]);
    sub_1D7075720(&qword_1EC899BF0, &qword_1EC899BC8, sub_1D7075484);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899BE8);
    }
  }
}

uint64_t sub_1D7075720(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D70755A0(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7075784()
{
  result = qword_1EC899BF8;
  if (!qword_1EC899BF8)
  {
    sub_1D7075604();
    sub_1D7075864(&qword_1EC899C00, sub_1D707566C);
    sub_1D7075864(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899BF8);
  }

  return result;
}

uint64_t sub_1D7075864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D70758AC()
{
}

uint64_t sub_1D70758F4(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC899C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7075968()
{
}

uint64_t sub_1D70759AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7075A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D70755A0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7075A68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v225 = a2;
  v221 = a1;
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  v222 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v223 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v220 = &v199 - v7;
  sub_1D5B568D8(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v201 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v202 = &v199 - v10;
  v199 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v199, v11);
  v200 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v224 = &v199 - v15;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  v217 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v219 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v214 = &v199 - v21;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  v216 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v218 = &v199 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v211 = &v199 - v27;
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  v212 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v215 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v208 = &v199 - v33;
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  v209 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v213 = &v199 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v205 = &v199 - v39;
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  v207 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v210 = &v199 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v204 = &v199 - v45;
  sub_1D5B58AF0();
  v206 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v199 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v199 - v52;
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  v203 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v199 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v199 - v60;
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v62, v64);
  v66 = &v199 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v199 - v69;
  v71 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v199 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D675D0(v226, v74, type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v124 = v205;
        sub_1D6680CD4(v74, v205);
        v125 = v213;
        sub_1D6680CD4(v124, v213);
        v126 = v225;
        *v225 = 0x72656765746E69;
        v126[1] = 0xE700000000000000;
        v127 = *(v125 + 8);
        v126[2] = *v125;
        v126[3] = v127;
        v128 = *(v125 + 24);
        v126[4] = *(v125 + 16);
        v126[5] = v128;
        v129 = *(v125 + 40);
        v126[6] = *(v125 + 32);
        v126[7] = v129;
        *(v126 + 64) = *(v125 + 48);
        v130 = *(v125 + 64);
        v126[9] = *(v125 + 56);
        *(v126 + 80) = v130;
        *(v126 + 81) = *(v125 + 65);
        v126[11] = *(v125 + 72);
        v131 = *(v209 + 60);
        sub_1D5B5681C(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
        sub_1D5B75978(v125 + v131, v126 + *(v132 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

        sub_1D66810E4(v125);
      }

      else
      {
        v180 = v208;
        sub_1D5CB5494(v74, v208);
        v181 = v215;
        sub_1D5CB5494(v180, v215);
        v182 = v225;
        *v225 = 0x676E69727473;
        v182[1] = 0xE600000000000000;
        v183 = *(v181 + 8);
        v182[2] = *v181;
        v182[3] = v183;
        v184 = *(v181 + 24);
        v182[4] = *(v181 + 16);
        v182[5] = v184;
        v185 = *(v181 + 40);
        v182[6] = *(v181 + 32);
        v182[7] = v185;
        *(v182 + 64) = *(v181 + 48);
        v186 = *(v181 + 64);
        v182[9] = *(v181 + 56);
        v182[10] = v186;
        *(v182 + 88) = *(v181 + 72);
        v182[12] = *(v181 + 80);
        v187 = *(v212 + 60);
        sub_1D5B5681C(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
        sub_1D5B75978(v181 + v187, v182 + *(v188 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

        sub_1D5D67638(v181);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v141 = v74;
        v142 = v211;
        sub_1D5C4EA2C(v141, v211, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
        v143 = v218;
        sub_1D5C4EA2C(v142, v218, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
        v144 = v225;
        *v225 = 7107189;
        v144[1] = 0xE300000000000000;
        v145 = *(v143 + 8);
        v144[2] = *v143;
        v144[3] = v145;
        v146 = *(v143 + 24);
        v144[4] = *(v143 + 16);
        v144[5] = v146;
        v147 = *(v143 + 40);
        v144[6] = *(v143 + 32);
        v144[7] = v147;
        *(v144 + 64) = *(v143 + 48);
        v148 = v216;
        v149 = v216[12];
        sub_1D5B58DD8(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
        v151 = v150;
        sub_1D5B75978(v143 + v149, v144 + v150[13], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        *(v144 + v151[14]) = *(v143 + v148[13]);
        *(v144 + v151[15]) = *(v143 + v148[14]);
        sub_1D5B75978(v143 + v148[15], v144 + v151[16], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

        sub_1D5D67748(v143);
        type metadata accessor for FormatPropertyDefinition(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (EnumCaseMultiPayload == 8)
      {
        v108 = v214;
        sub_1D7077B70(v74, v214, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont);
        v109 = v108;
        v110 = v219;
        sub_1D7077B70(v109, v219, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont);
        v111 = v225;
        *v225 = 1953394534;
        v111[1] = 0xE400000000000000;
        v112 = *(v110 + 8);
        v111[2] = *v110;
        v111[3] = v112;
        v113 = *(v110 + 24);
        v111[4] = *(v110 + 16);
        v111[5] = v113;
        v114 = *(v110 + 40);
        v111[6] = *(v110 + 32);
        v111[7] = v114;
        *(v111 + 64) = *(v110 + 48);
        v115 = *(v110 + 56);
        v111[9] = v115;
        *(v111 + 80) = *(v110 + 64);
        v111[11] = *(v110 + 72);
        v116 = *(v217 + 60);
        sub_1D5B568D8(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
        sub_1D5B75978(v110 + v116, v111 + *(v117 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

        sub_1D62B8444(v115);

        sub_1D7077BF4(v110, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
      }

      else
      {
        v163 = v220;
        sub_1D7077B70(v74, v220, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
        v164 = v163;
        v165 = v223;
        sub_1D7077B70(v164, v223, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
        v166 = v225;
        *v225 = 0x6567616D69;
        v166[1] = 0xE500000000000000;
        v167 = *(v165 + 8);
        v166[2] = *v165;
        v166[3] = v167;
        v168 = *(v165 + 24);
        v166[4] = *(v165 + 16);
        v166[5] = v168;
        v169 = *(v165 + 40);
        v166[6] = *(v165 + 32);
        v166[7] = v169;
        *(v166 + 64) = *(v165 + 48);
        v170 = *(v165 + 56);
        v166[9] = v170;
        *(v166 + 80) = *(v165 + 64);
        v166[11] = *(v165 + 72);
        v171 = *(v222 + 60);
        sub_1D5B568D8(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
        sub_1D5B75978(v165 + v171, v166 + *(v172 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

        sub_1D5CFCFAC(v170);

        sub_1D7077BF4(v165, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
      }
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D7077B70(v74, v61, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
      sub_1D7077B70(v61, v57, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
      v173 = v225;
      *v225 = 0x726F6C6F63;
      v173[1] = 0xE500000000000000;
      v174 = *(v57 + 1);
      v173[2] = *v57;
      v173[3] = v174;
      v175 = *(v57 + 3);
      v173[4] = *(v57 + 2);
      v173[5] = v175;
      v176 = *(v57 + 5);
      v173[6] = *(v57 + 4);
      v173[7] = v176;
      *(v173 + 64) = v57[48];
      v177 = *(v57 + 7);
      v173[9] = v177;
      *(v173 + 80) = v57[64];
      v173[11] = *(v57 + 9);
      v178 = *(v203 + 60);
      sub_1D5B568D8(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
      sub_1D5B75978(&v57[v178], v173 + *(v179 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

      sub_1D5CFCFAC(v177);

      sub_1D7077BF4(v57, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
    }

    else
    {
      sub_1D5CB55A8(v74, v70);
      sub_1D5CB55A8(v70, v66);
      v118 = v225;
      *v225 = 0x6E61656C6F6F62;
      v118[1] = 0xE700000000000000;
      v119 = *(v66 + 1);
      v118[2] = *v66;
      v118[3] = v119;
      v120 = *(v66 + 3);
      v118[4] = *(v66 + 2);
      v118[5] = v120;
      v121 = *(v66 + 5);
      v118[6] = *(v66 + 4);
      v118[7] = v121;
      *(v118 + 64) = v66[48];
      *(v118 + 65) = v66[49];
      *(v118 + 66) = v66[50];
      v118[9] = *(v66 + 7);
      v122 = *(v63 + 60);
      sub_1D5B5681C(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
      sub_1D5B75978(&v66[v122], v118 + *(v123 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

      sub_1D5D676C0(v66);
    }

LABEL_17:
    type metadata accessor for FormatPropertyDefinition(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D7077C50(v74, v53, sub_1D5B58AF0);
    sub_1D7077C50(v53, v49, sub_1D5B58AF0);
    v133 = v225;
    *v225 = 1702125924;
    v133[1] = 0xE400000000000000;
    v134 = *(v49 + 1);
    v133[2] = *v49;
    v133[3] = v134;
    v135 = *(v49 + 3);
    v133[4] = *(v49 + 2);
    v133[5] = v135;
    v136 = *(v49 + 5);
    v133[6] = *(v49 + 4);
    v133[7] = v136;
    *(v133 + 64) = v49[48];
    v137 = v206;
    v138 = v206[12];
    sub_1D5B5714C();
    v140 = v139;
    sub_1D5B75978(&v49[v138], v133 + v139[13], &qword_1EDF45B00, MEMORY[0x1E6969530]);
    *(v133 + v140[14]) = v49[v137[13]];
    *(v133 + v140[15]) = *&v49[v137[14]];
    sub_1D5B75978(&v49[v137[15]], v133 + v140[16], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

    sub_1D7077CB8(v49, sub_1D5B58AF0);
    type metadata accessor for FormatPropertyDefinition(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 3)
  {
    v152 = MEMORY[0x1E69E7DE0];
    v153 = v204;
    sub_1D7077B70(v74, v204, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v154 = v153;
    v155 = v210;
    sub_1D7077B70(v154, v210, &qword_1EDF44040, sub_1D5B577E4, v152);
    v156 = v225;
    *v225 = 0x74616F6C66;
    v156[1] = 0xE500000000000000;
    v157 = *(v155 + 8);
    v156[2] = *v155;
    v156[3] = v157;
    v158 = *(v155 + 24);
    v156[4] = *(v155 + 16);
    v156[5] = v158;
    v159 = *(v155 + 40);
    v156[6] = *(v155 + 32);
    v156[7] = v159;
    *(v156 + 64) = *(v155 + 48);
    v160 = *(v155 + 64);
    v156[9] = *(v155 + 56);
    *(v156 + 80) = v160;
    *(v156 + 81) = *(v155 + 65);
    v156[11] = *(v155 + 72);
    v161 = *(v207 + 60);
    sub_1D5B568D8(0, &qword_1EDF43F68, sub_1D5B577E4, v152, type metadata accessor for FormatPrimitivePropertyDefinition);
    sub_1D5B75978(v155 + v161, v156 + *(v162 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

    sub_1D7077BF4(v155, &qword_1EDF44040, sub_1D5B577E4, v152, type metadata accessor for FormatCompilerPrimitiveProperty);
    type metadata accessor for FormatPropertyDefinition(0);
    return swift_storeEnumTagMultiPayload();
  }

  v76 = v224;
  sub_1D7077C50(v74, v224, type metadata accessor for FormatCompilerEnumProperty);
  v77 = (v221 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  v78 = v77[1];
  v80 = *(v76 + 16);
  v79 = *(v76 + 24);
  if (!*(v78 + 2))
  {
    goto LABEL_26;
  }

  v81 = *v77;

  v82 = sub_1D5B69D90(v80, v79);
  if ((v83 & 1) == 0)
  {

LABEL_26:
    type metadata accessor for FormatLayoutError();
    sub_1D5B4CEC4(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v191 = v190;
    sub_1D6AC4ED0();
    v193 = *(v192 + 48);
    *v191 = v80;
    v191[1] = v79;
    sub_1D5D675D0(v226, v191 + v193, type metadata accessor for FormatCompilerProperty);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return sub_1D7077CB8(v76, type metadata accessor for FormatCompilerEnumProperty);
  }

  v213 = v79;
  v214 = v80;
  v84 = v202;
  sub_1D6E18DC8(*(v78 + 7) + *(v201 + 72) * v82, v202);
  v85 = *(v84 + 8);
  v212 = *v84;
  v216 = v81;
  v86 = *(v84 + 32);
  v88 = *(v84 + 40);
  v87 = *(v84 + 48);
  v90 = *(v84 + 56);
  v89 = *(v84 + 64);
  v91 = *(v84 + 72);
  v92 = *(v84 + 80);
  v215 = *(v84 + 24);

  v221 = v85;

  v222 = v89;
  v223 = v86;
  v219 = v87;
  v220 = v88;
  v217 = v91;
  v218 = v90;
  sub_1D618EC0C(v86, v88, v87, v90, v89, v91, v92);
  sub_1D7077BF4(v84, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);

  LODWORD(v216) = v92;
  if (v92 <= 0x3F)
  {
    v93 = v200;
    sub_1D5D675D0(v224, v200, type metadata accessor for FormatCompilerEnumProperty);
    v94 = v225;
    *v225 = 1836412517;
    v94[1] = 0xE400000000000000;
    v95 = *(v93 + 8);
    v94[2] = *v93;
    v94[3] = v95;
    v96 = *(v93 + 40);
    v226 = *(v93 + 32);
    v97 = v219;
    v98 = v220;
    v100 = v217;
    v99 = v218;
    v101 = v216;
    sub_1D618EC0C(v223, v220, v219, v218, v222, v217, v216);

    v102 = v223;
    sub_1D60CF6F4(v223, v98, v97, v99, v222, v100, v101);
    v94[4] = v226;
    v94[5] = v96;
    v103 = v221;
    v94[6] = v212;
    v94[7] = v103;
    v104 = *(v93 + 56);
    v94[8] = *(v93 + 48);
    v94[9] = v104;
    *(v94 + 80) = *(v93 + 64);
    v105 = *(v93 + 80);
    v94[11] = *(v93 + 72);
    v94[12] = v105;
    v94[13] = v102;
    *(v94 + 112) = *(v93 + 88);
    v94[15] = *(v93 + 96);
    v106 = *(v199 + 48);
    v107 = type metadata accessor for FormatEnumPropertyDefinition(0);
    sub_1D5B75978(v93 + v106, v94 + *(v107 + 56), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

    sub_1D7077CB8(v93, type metadata accessor for FormatCompilerEnumProperty);
    sub_1D7077CB8(v224, type metadata accessor for FormatCompilerEnumProperty);
    type metadata accessor for FormatPropertyDefinition(0);
    return swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for FormatLayoutError();
  sub_1D5B4CEC4(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  v195 = v194;
  sub_1D6AC4ED0();
  v197 = *(v196 + 48);
  v198 = v213;
  *v195 = v214;
  v195[1] = v198;
  sub_1D5D675D0(v226, v195 + v197, type metadata accessor for FormatCompilerProperty);
  swift_storeEnumTagMultiPayload();
  v76 = v224;
  swift_willThrow();

  sub_1D60CF6F4(v223, v220, v219, v218, v222, v217, v216);
  return sub_1D7077CB8(v76, type metadata accessor for FormatCompilerEnumProperty);
}

uint64_t sub_1D70772D4()
{
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v67 = &v55 - v3;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v66 = &v55 - v6;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v64 = &v55 - v9;
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v63 = &v55 - v12;
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v62 = &v55 - v15;
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v61 = &v55 - v18;
  v19 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v60 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0();
  v59 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v58 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v57 = &v55 - v27;
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v56 = &v55 - v30;
  v68 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v68, v31);
  v69 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  v33 = sub_1D7077D18();
  if (!*(v33 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v34 = sub_1D7264A5C(), v35 = -1 << *(v33 + 32), v36 = v34 & ~v35, ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0))
  {
LABEL_8:

    v39 = v69;
    sub_1D5D675D0(v70, v69, type metadata accessor for FormatCompilerProperty);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v51 = v62;
          sub_1D6680CD4(v39, v62);
          v42 = *(v51 + 65);
          sub_1D66810E4(v51);
        }

        else
        {
          v54 = v63;
          sub_1D5CB5494(v39, v63);
          v42 = *(v54 + 72);
          sub_1D5D67638(v54);
        }

        return v42;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v52 = v64;
        sub_1D5C4EA2C(v39, v64, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
        v42 = *(v52 + *(v65 + 52));
        sub_1D5D67748(v52);
        return v42;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v44 = &qword_1EDF44030;
        v45 = &type metadata for FormatFont;
        v46 = sub_1D5B55668;
        v47 = sub_1D5B55668;
        v48 = v39;
        v49 = v66;
      }

      else
      {
        v44 = &qword_1EDF44038;
        v45 = &type metadata for FormatAsyncImageContent;
        v46 = sub_1D5B57A00;
        v47 = sub_1D5B57A00;
        v48 = v39;
        v49 = v67;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v41 = v58;
          sub_1D7077C50(v39, v58, sub_1D5B58AF0);
          v42 = *(v41 + *(v59 + 52));
          v43 = sub_1D5B58AF0;
          goto LABEL_25;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v41 = v60;
          sub_1D7077C50(v39, v60, type metadata accessor for FormatCompilerEnumProperty);
          v42 = *(v41 + 88);
          v43 = type metadata accessor for FormatCompilerEnumProperty;
LABEL_25:
          sub_1D7077CB8(v41, v43);
          return v42;
        }

        v44 = &qword_1EDF44040;
        v45 = MEMORY[0x1E69E7DE0];
        v47 = sub_1D5B577E4;
        v49 = v61;
        sub_1D7077B70(v39, v61, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
        v42 = *(v49 + 65);
LABEL_31:
        sub_1D7077BF4(v49, v44, v47, v45, type metadata accessor for FormatCompilerPrimitiveProperty);
        return v42;
      }

      if (!EnumCaseMultiPayload)
      {
        v50 = v56;
        sub_1D5CB55A8(v39, v56);
        v42 = *(v50 + 50);
        sub_1D5D676C0(v50);
        return v42;
      }

      v44 = &qword_1EDF44028;
      v45 = &type metadata for FormatColor;
      v46 = sub_1D5B5706C;
      v47 = sub_1D5B5706C;
      v48 = v39;
      v49 = v57;
    }

    sub_1D7077B70(v48, v49, v44, v46, v45);
    v42 = *(v49 + 64);
    goto LABEL_31;
  }

  v37 = ~v35;
  while (!*(*(v33 + 48) + v36) || *(*(v33 + 48) + v36) == 1)
  {
    v38 = sub_1D72646CC();

    if (v38)
    {
      goto LABEL_23;
    }

    v36 = (v36 + 1) & v37;
    if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_23:

  return 1;
}