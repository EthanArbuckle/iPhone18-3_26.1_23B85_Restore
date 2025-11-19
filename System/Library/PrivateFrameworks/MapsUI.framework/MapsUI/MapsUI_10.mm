uint64_t sub_1C571FFB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C584FB90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C584FB90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C5722204();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707D0, &qword_1C5877F30);
            v9 = sub_1C571ECCC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C57221B8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C5720138(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_footerAttributionViewModel] = 0;
  v1[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild] = 1;
  *&v1[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_cachedViews] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView] = 0;
  *&v1[OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___overallIncidentsView] = 0;
  *&v1[OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C5720224(char a1, char a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
  result = sub_1C5710384();
  if (!result)
  {
    goto LABEL_29;
  }

  v7 = result;
  v8 = swift_unknownObjectRetain();
  GEOLocationCoordinate2DMake(v8, v9);
  v11 = sub_1C571088C(v10);
  swift_unknownObjectRelease();
  v12 = sub_1C571F290(v11);

  sub_1C571F528(v12);
  v13 = swift_unknownObjectRetain();
  GEOLocationCoordinate2DMake(v13, v14);
  v16 = sub_1C5710D28(v15);
  swift_unknownObjectRelease();
  v17 = sub_1C571F424(v16);

  sub_1C571F528(v17);
  v18 = v45;
  v19 = *(v45 + 16);
  if (!v19)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v34 = v7;
  v44 = v4;

  sub_1C584FCC0();
  v20 = *(v45 + 16);
  v21 = v45 + 32;
  result = type metadata accessor for TransitDeparturesContainerSectionView();
  v22 = 0;
  v35 = a2 ^ 1;
  v36 = a2;
  v37 = v20 - 1;
  v39 = v19;
  while (v20)
  {
    if (v22 >= *(v18 + 16))
    {
      goto LABEL_28;
    }

    sub_1C5633310(v21, v43);
    v41 = v22;
    sub_1C56412D4(v43, v42);
    v28 = sub_1C5640BEC(1);
    sub_1C5633310(v42, v40);
    sub_1C5640908(v40);
    v29 = &v28[OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate];
    swift_beginAccess();
    *(v29 + 1) = &off_1F44C6E00;
    swift_unknownObjectWeakAssign();
    if (v22)
    {
      v30 = objc_opt_self();
      v31 = 0;
      v23 = 0;
      if (v20 != 1 || (a2 & 1) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v30 = objc_opt_self();
      if (v37)
      {
        if (a1)
        {
          v31 = 0;
          v23 = 0;
          goto LABEL_6;
        }

        v32 = 0;
LABEL_20:
        v33 = [objc_opt_self() transitDeparturesSectionHeaderTitle];
        if (!v33)
        {
          sub_1C584F660();
          v33 = sub_1C584F630();
        }

        v31 = [objc_allocWithZone(MUPlaceSectionHeaderViewModel) initWithTitleString_];

        if ((v32 & 1) == 0)
        {
          v23 = 0;
          a2 = v36;
          goto LABEL_6;
        }

        a2 = v36;
        goto LABEL_5;
      }

      v32 = v35;
      if ((a1 & 1) == 0)
      {
        goto LABEL_20;
      }

      v31 = 0;
      v23 = 0;
      a2 = v36;
      if (v36)
      {
        goto LABEL_6;
      }
    }

LABEL_5:
    v23 = sub_1C571F720();
LABEL_6:
    ++v22;
    v24 = [v30 insetPlatterSectionViewForContentView:v28 sectionHeaderViewModel:v31 sectionFooterViewModel:{v23, v34}];

    v25 = v24;
    v26 = sub_1C584F630();
    [v25 setAccessibilityIdentifier_];

    sub_1C5722268(&v41);
    sub_1C584FCA0();
    v27 = *(v44 + 16);
    sub_1C584FCD0();
    sub_1C584FCE0();
    result = sub_1C584FCB0();
    --v20;
    v21 += 40;
    if (v39 == v22)
    {
      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
      return v44;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1C5720610()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(*(Strong + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) transitPunchoutAttribution];
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 sectionViewProvider:v1 didSelectAttribution:v3];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C5720700()
{
  v1 = v0;
  v2 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  if ((*(v0 + v2) & 1) == 0)
  {
    v164 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_cachedViews;
    swift_beginAccess();
    return *(v1 + v164);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v246 = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
  v5 = sub_1C5710574();
  v6 = *(v5 + 16);
  if (v6 < 2)
  {
    goto LABEL_281;
  }

  v7 = sub_1C571EF64();
  [v7 setDelegate_];

  v239 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView;
  v8 = *(v1 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider____lazy_storage___systemFilterView);
  v247[0] = v3;
  v9 = v8;
  sub_1C584FCC0();
  v233 = v6;
  v10 = (v5 + 32);
  do
  {
    v11 = *v10++;
    swift_unknownObjectRetain();
    sub_1C584FCA0();
    v12 = *(v247[0] + 16);
    sub_1C584FCD0();
    sub_1C584FCE0();
    sub_1C584FCB0();
    --v6;
  }

  while (v6);
  v234 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702E0, &qword_1C5877648);
  v13 = sub_1C584F750();

  [v9 setTransitSystems_];

  v232 = *(v1 + v239);
  v14 = [v232 transitSystems];
  v15 = sub_1C584F770();

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v235 = v15;
  v245 = v15 + 32;
  v241 = v15 & 0xC000000000000001;
  v238 = v2;
  v243 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v17 == v2)
    {
      v17 = 0;
      goto LABEL_276;
    }

    if (v18)
    {
      v20 = MEMORY[0x1C694A320](v17, v235);
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      v20 = *(v245 + 8 * v17);
      swift_unknownObjectRetain();
    }

    v21 = sub_1C5710384();
    v22 = v20;
    v23 = v21;
    if (!v20 && !v21)
    {
      break;
    }

    v24 = v22 != 0;
    if (v21)
    {
      v24 = 0;
      v25 = v20 == 0;
    }

    else
    {
      v25 = 0;
    }

    if (v25 || v24 || (v26 = [v22 muid], v26 != objc_msgSend(v23, "muid")))
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v27 = [v22 name];
    if (v27 || ([v23 name], (v240 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = [v22 name];
      v29 = [v23 name];
      if (([v28 isEqualToString:v29] & 1) == 0)
      {

        if (v27)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v16 = v243;
          goto LABEL_9;
        }

        v31 = 0;
        v16 = v243;
LABEL_139:

        goto LABEL_140;
      }

      v236 = v28;
      v237 = v29;
      v30 = v27;
      v242 = 1;
    }

    else
    {
      v30 = 0;
      v240 = 0;
      v242 = 0;
    }

    v32 = [v22 artwork];
    v33 = [v23 artwork];
    v34 = v32;
    v35 = v33;
    v244 = v35;
    if (!(v32 | v33))
    {
      v31 = 1;
LABEL_32:
      v18 = v241;
      v27 = v30;
      v2 = v238;
      goto LABEL_136;
    }

    v31 = 0;
    if (v34)
    {
      v36 = v33 == 0;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    if (v35)
    {
      v38 = v32 == 0;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
      goto LABEL_32;
    }

    v18 = v241;
    v27 = v30;
    v2 = v238;
    if ((v37 & 1) == 0)
    {
      v39 = [v34 artworkSourceType];
      v228 = v34;
      v40 = v244;
      if (v39 != [v244 artworkSourceType] || (v41 = objc_msgSend(v228, "artworkUseType"), v41 != objc_msgSend(v244, "artworkUseType")))
      {
        v31 = 0;
        v34 = v228;
        goto LABEL_136;
      }

      v226 = v27;
      v42 = [v228 shieldDataSource];
      v43 = [v244 shieldDataSource];
      v220 = (v42 | v43);
      v44 = v42;
      v45 = v43;
      v225 = v44;
      v227 = v45;
      if (!(v42 | v43))
      {
LABEL_47:
        v46 = [v228 iconDataSource];
        v47 = [v40 iconDataSource];
        v48 = v46 | v47;
        v221 = v46;
        v49 = v46;
        v50 = v47;
        v217 = v49;
        v218 = v50;
        if (!v48)
        {
          goto LABEL_48;
        }

        v31 = 0;
        if (v49)
        {
          v66 = v47 == 0;
        }

        else
        {
          v66 = 0;
        }

        v67 = v66;
        if (v50)
        {
          v68 = v221 == 0;
        }

        else
        {
          v68 = 0;
        }

        if (v68)
        {
          v69 = v49;
          v18 = v241;
          v27 = v226;
          v34 = v228;
          goto LABEL_132;
        }

        v69 = v49;
        v18 = v241;
        v27 = v226;
        v34 = v228;
        if ((v67 & 1) == 0)
        {
          v70 = [v217 iconType];
          if (v70 != [v218 iconType] || (v71 = objc_msgSend(v217, "cartoID"), v71 != objc_msgSend(v218, "cartoID")) || (v72 = objc_msgSend(v217, "defaultTransitType"), v72 != objc_msgSend(v218, "defaultTransitType")) || (v73 = objc_msgSend(v217, "iconAttributeKey"), v73 != objc_msgSend(v218, "iconAttributeKey")))
          {
            v31 = 0;
            v69 = v217;
            v50 = v218;
            goto LABEL_132;
          }

          v223 = [v217 iconAttributeValue];
          v74 = [v218 iconAttributeValue];

          v40 = v244;
          if (v223 != v74)
          {
            v31 = 0;
            v18 = v241;
            v27 = v226;
            v34 = v228;
            goto LABEL_133;
          }

LABEL_48:
          v51 = [v228 iconFallbackShieldDataSource];
          v52 = [v40 iconFallbackShieldDataSource];
          v216 = v51;
          v53 = v52;
          v222 = v53;
          if (!(v51 | v52))
          {
LABEL_49:
            v54 = [v228 textDataSource];
            v55 = [v40 textDataSource];
            v208 = (v54 | v55);
            v56 = v54;
            v57 = v55;
            v209 = v56;
            v213 = v57;
            if (!(v54 | v55))
            {
              goto LABEL_50;
            }

            if (v56)
            {
              v85 = v55 == 0;
            }

            else
            {
              v85 = 0;
            }

            v86 = v85;
            if (v57)
            {
              v87 = v54 == 0;
            }

            else
            {
              v87 = 0;
            }

            v88 = v57;
            if (v87 || v86)
            {

              v31 = 0;
              v97 = v88;
              v18 = v241;
              v27 = v226;
              v34 = v228;
              goto LABEL_129;
            }

            v89 = [v56 text];
            v90 = [v88 text];
            v207 = v89;
            v91 = v90;
            if (!(v89 | v90))
            {
              v92 = v91;

              v40 = v244;
              goto LABEL_50;
            }

            if (v207)
            {
              v98 = v90 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = v98;
            v206 = v91;
            if (v91)
            {
              v100 = v89 == 0;
            }

            else
            {
              v100 = 0;
            }

            v34 = v228;
            if (v100 || (v99 & 1) != 0)
            {

              v31 = 0;
              v97 = v206;
              v18 = v241;
              v27 = v226;
              goto LABEL_129;
            }

            v101 = [v207 formatStrings];
            v102 = [v206 formatStrings];
            v208 = (v101 | v102);
            v205 = v101;
            v103 = v102;
            v104 = &__block_literal_global;
            v204 = v103;
            if (!(v101 | v102))
            {

              goto LABEL_156;
            }

            v131 = v205;
            if (v205)
            {
              v132 = v102 == 0;
            }

            else
            {
              v132 = 0;
            }

            v133 = v132;
            if (v103)
            {
              v134 = v101 == 0;
            }

            else
            {
              v134 = 0;
            }

            if (v134 || (v133 & 1) != 0 || (v135 = [v205 count], v136 = objc_msgSend(v103, "count"), v131 = v205, v135 != v136))
            {

              v18 = v241;
              v27 = v226;
LABEL_216:

              v31 = 0;
              v97 = v204;
              goto LABEL_129;
            }

            v230 = v1;
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v137 = v205;
            v138 = [v137 countByEnumeratingWithState:&v248 objects:v247 count:16];
            if (v138)
            {
              v139 = v138;
              v140 = 0;
              v201 = *v249;
              while (2)
              {
                for (i = 0; i != v139; ++i)
                {
                  if (*v249 != v201)
                  {
                    objc_enumerationMutation(v137);
                  }

                  v208 = *(*(&v248 + 1) + 8 * i);
                  v142 = [v204 objectAtIndexedSubscript:v140];
                  LODWORD(v208) = __GEOServerFormattedStringEqual_block_invoke(v142, v208, v142);

                  if (!v208)
                  {

                    v34 = v228;
                    v1 = v230;
                    v18 = v241;
                    v27 = v226;
                    v2 = v238;
                    goto LABEL_216;
                  }

                  ++v140;
                }

                v139 = [v137 countByEnumeratingWithState:&v248 objects:v247 count:16];
                if (v139)
                {
                  continue;
                }

                break;
              }
            }

            v1 = v230;
LABEL_156:
            v105 = [v207 separators];
            v106 = [v206 separators];
            v107 = v105;
            v208 = v106;
            v108 = &__block_literal_global_59;
            v229 = v1;
            if (!(v105 | v106))
            {
              v199 = v107;

              goto LABEL_158;
            }

            if (v107)
            {
              v143 = v106 == 0;
            }

            else
            {
              v143 = 0;
            }

            v144 = v143;
            if (v208)
            {
              v145 = v105 == 0;
            }

            else
            {
              v145 = 0;
            }

            if (v145 || (v144 & 1) != 0 || (v146 = [v107 count], v146 != objc_msgSend(v208, "count")))
            {
            }

            else
            {
              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v199 = v107;
              v147 = v107;
              v148 = [v147 countByEnumeratingWithState:&v248 objects:v247 count:16];
              if (v148)
              {
                v149 = v148;
                v150 = 0;
                v151 = *v249;
                while (2)
                {
                  for (j = 0; j != v149; ++j)
                  {
                    if (*v249 != v151)
                    {
                      objc_enumerationMutation(v147);
                    }

                    v202 = *(*(&v248 + 1) + 8 * j);
                    v153 = [v208 objectAtIndexedSubscript:v150];
                    LODWORD(v202) = __GEOServerFormattedStringEqual_block_invoke(v153, v202, v153);

                    if (!v202)
                    {

                      goto LABEL_270;
                    }

                    ++v150;
                  }

                  v149 = [v147 countByEnumeratingWithState:&v248 objects:v247 count:16];
                  if (v149)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_158:
              v109 = [v207 formatTokens];
              v110 = [v206 formatTokens];
              v198 = v109;
              v111 = v110;
              v112 = &__block_literal_global_62;
              if (!(v109 | v110))
              {

                goto LABEL_160;
              }

              if (v198)
              {
                v154 = v110 == 0;
              }

              else
              {
                v154 = 0;
              }

              v155 = v154;
              if (v111)
              {
                v156 = v109 == 0;
              }

              else
              {
                v156 = 0;
              }

              if (!v156 && (v155 & 1) == 0)
              {
                v157 = [v198 count];
                if (v157 == [v111 count])
                {
                  v250 = 0u;
                  v251 = 0u;
                  v248 = 0u;
                  v249 = 0u;
                  obj = v198;
                  v158 = [obj countByEnumeratingWithState:&v248 objects:v247 count:16];
                  if (v158)
                  {
                    v159 = v158;
                    v160 = 0;
                    v161 = *v249;
                    while (2)
                    {
                      for (k = 0; k != v159; ++k)
                      {
                        if (*v249 != v161)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v203 = *(*(&v248 + 1) + 8 * k);
                        v163 = [v111 objectAtIndexedSubscript:v160];
                        LODWORD(v203) = __GEOServerFormattedStringEqual_block_invoke_3(v163, v203, v163);

                        if (!v203)
                        {

                          goto LABEL_264;
                        }

                        ++v160;
                      }

                      v159 = [obj countByEnumeratingWithState:&v248 objects:v247 count:16];
                      if (v159)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_160:
                  v113 = [v207 alternativeString];
                  v114 = [v206 alternativeString];
                  v115 = v113 | v114;
                  v116 = v113;
                  v117 = v114;
                  if (v115)
                  {
                    v200 = [v116 isEqual:v117];
                  }

                  else
                  {
                    v200 = 1;
                  }

                  v1 = v229;
                  v2 = v238;
                  v40 = v244;
                  if ((v200 & 1) == 0)
                  {
LABEL_51:
                    v31 = 0;
                    v18 = v241;
                    v27 = v226;
                    v34 = v228;
                    goto LABEL_130;
                  }

LABEL_50:
                  v58 = [v228 hasRoutingIncidentBadge];
                  if (v58 != [v40 hasRoutingIncidentBadge])
                  {
                    goto LABEL_51;
                  }

                  v34 = v228;
                  v94 = [v228 accessibilityText];
                  if (v94 || ([v244 accessibilityText], (v207 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v95 = [v228 accessibilityText];
                    v96 = [v244 accessibilityText];
                    v208 = v94;
                    v31 = [v95 isEqualToString:v96];

                    v18 = v241;
                    v27 = v226;
                    v97 = v208;
                    if (!v208)
                    {
                      v97 = v207;
                    }
                  }

                  else
                  {
                    v207 = 0;
                    v31 = 1;
                    v18 = v241;
                    v27 = v226;
                    v97 = 0;
                  }

LABEL_129:

LABEL_130:
                  v93 = v222;
LABEL_131:

                  v69 = v209;
                  v50 = v213;
                  goto LABEL_132;
                }
              }

LABEL_264:
LABEL_270:
              v107 = v199;
            }

            v31 = 0;
            v34 = v228;
            v1 = v229;
            v18 = v241;
            v27 = v226;
            v2 = v238;
            v97 = v208;
            goto LABEL_129;
          }

          if (v216)
          {
            v75 = v52 == 0;
          }

          else
          {
            v75 = 0;
          }

          v76 = v75;
          if (v53)
          {
            v77 = v51 == 0;
          }

          else
          {
            v77 = 0;
          }

          if (v77 || v76)
          {

            v31 = 0;
            v93 = v222;
            v209 = v216;
            v213 = v222;
            v18 = v241;
            v27 = v226;
            v34 = v228;
            goto LABEL_131;
          }

          v78 = [v216 shieldType];
          v18 = v241;
          v27 = v226;
          v34 = v228;
          if (v78 != [v222 shieldType])
          {

            v31 = 0;
            v93 = v222;
            v209 = v216;
            v213 = v222;
            goto LABEL_131;
          }

          v215 = [v216 shieldText];
          if (v215 || ([v222 shieldText], (v208 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v79 = [v216 shieldText];
            v80 = [v222 shieldText];
            v210 = v79;
            v81 = v79;
            v82 = v80;
            if (([v81 isEqualToString:v80] & 1) == 0)
            {

              v31 = 0;
              v93 = v215;
              if (!v215)
              {
                v93 = v208;
              }

              v209 = v216;
              v213 = v222;
              goto LABEL_131;
            }

            v34 = v210;
            v206 = v82;
            v83 = 1;
          }

          else
          {
            v208 = 0;
            v83 = 0;
          }

          v126 = [v216 shieldColorString];
          if (v126 || ([v222 shieldColorString], (v205 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            LODWORD(v207) = v83;
            v127 = [v216 shieldColorString];
            v128 = [v222 shieldColorString];
            v212 = [v127 isEqualToString:v128];

            if (v126)
            {

              v129 = v215;
              if (v207)
              {
                goto LABEL_187;
              }

              goto LABEL_188;
            }

            v129 = v215;
            LOBYTE(v83) = v207;
            v130 = v205;
          }

          else
          {
            v130 = 0;
            v212 = 1;
            v129 = v215;
          }

          if (v83)
          {
LABEL_187:
          }

LABEL_188:

          if (v129)
          {
          }

          else
          {
          }

          v40 = v244;
          if (v212)
          {
            goto LABEL_49;
          }

          v50 = v222;
          v31 = 0;
          v18 = v241;
          v27 = v226;
          v34 = v228;
          v69 = v216;
        }

LABEL_132:
        v224 = v50;

LABEL_133:
        v84 = v218;
LABEL_134:

LABEL_135:
        goto LABEL_136;
      }

      if (v44)
      {
        v59 = v43 == 0;
      }

      else
      {
        v59 = 0;
      }

      v60 = v59;
      if (v45)
      {
        v61 = v42 == 0;
      }

      else
      {
        v61 = 0;
      }

      v62 = v44;
      v63 = v45;
      if (v61 || v60)
      {

        v31 = 0;
        v84 = v63;
        v18 = v241;
        v27 = v226;
        v34 = v228;
        goto LABEL_134;
      }

      v64 = [v44 shieldType];
      v25 = v64 == [v63 shieldType];
      v18 = v241;
      v27 = v226;
      v65 = v62;
      v34 = v228;
      if (!v25)
      {

        v31 = 0;
        v84 = v227;
        goto LABEL_134;
      }

      v219 = [v65 shieldText];
      if (v219 || ([v227 shieldText], (v216 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v220 = [v65 shieldText];
        v217 = [v227 shieldText];
        if (([v220 isEqualToString:?] & 1) == 0)
        {

          v31 = 0;
          v84 = v219;
          if (!v219)
          {
            v84 = v216;
          }

          goto LABEL_134;
        }

        v214 = 1;
      }

      else
      {
        v216 = 0;
        v214 = 0;
      }

      v118 = v65;
      v119 = [v65 shieldColorString];
      if (v119 || ([v227 shieldColorString], (v208 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v120 = [v118 shieldColorString];
        v121 = [v227 shieldColorString];
        v211 = [v120 isEqualToString:v121];

        if (v119)
        {

          v122 = v227;
          v124 = v217;
          v123 = v219;
          if (v214)
          {
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        v122 = v227;
        v124 = v217;
        v123 = v219;
        v125 = v208;
      }

      else
      {
        v125 = 0;
        v211 = 1;
        v122 = v227;
        v124 = v217;
        v123 = v219;
      }

      if (v214)
      {
LABEL_167:
      }

LABEL_168:

      if (v123)
      {
      }

      else
      {
      }

      v40 = v244;
      if (v211)
      {
        goto LABEL_47;
      }

      v31 = 0;
      v18 = v241;
      v27 = v226;
      v34 = v228;
      goto LABEL_135;
    }

LABEL_136:

    if (v242)
    {
    }

    v16 = v243;
    if (!v27)
    {
      goto LABEL_139;
    }

LABEL_140:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v31)
    {
      goto LABEL_276;
    }

LABEL_9:
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_299;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_276:

  [v232 setSelectedIndex_];

  v166 = [objc_opt_self() transitDeparturesSectionHeaderTitle];
  v2 = v234;
  if (!v166)
  {
    sub_1C584F660();
    v166 = sub_1C584F630();
  }

  v167 = [objc_allocWithZone(MUPlaceSectionHeaderViewModel) initWithTitleString_];

  v168 = [objc_allocWithZone(MUPlaceSectionView) initWithStyle:0 alwaysHideSeparators:1 sectionHeaderViewModel:v167 sectionFooterViewModel:0];
  [v168 attachViewToContentView_];
  v169 = v168;
  MEMORY[0x1C6949DF0]();
  v6 = v233;
  if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v194 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C584F7A0();
  }

  sub_1C584F7E0();

LABEL_281:
  v170 = sub_1C5710E98();
  v171 = *(v170 + 16);
  if (!v6 || !sub_1C5710384())
  {

    if (!v171)
    {
      goto LABEL_295;
    }

    goto LABEL_291;
  }

  swift_unknownObjectRelease();
  result = sub_1C5710384();
  if (result)
  {

    v173 = swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake(v173, v174);
    v176 = sub_1C57105A4(v175);
    swift_unknownObjectRelease();
    if (v176 >> 62)
    {
      v177 = sub_1C584FB90();
    }

    else
    {
      v177 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v231 = v1;
    if (v177 < 1)
    {
      v183 = v2;
    }

    else
    {
      type metadata accessor for TransitIncidentsSectionView();
      v178 = sub_1C5640BEC(1);
      sub_1C571199C(v176);
      v179 = &v178[OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate];
      swift_beginAccess();
      *(v179 + 1) = &off_1F44C6E10;
      swift_unknownObjectWeakAssign();
      v180 = [objc_opt_self() insetPlatterSectionViewForContentView:v178 sectionHeaderViewModel:0 sectionFooterViewModel:0];
      v181 = sub_1C584F630();
      [v180 setAccessibilityIdentifier_];

      v182 = v180;
      MEMORY[0x1C6949DF0]();
      if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v195 = v6;
        v196 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
        v6 = v195;
      }

      v183 = v2;
      sub_1C584F7E0();
    }

    v185 = swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake(v185, v186);
    sub_1C571088C(v187);
    swift_unknownObjectRelease();
    v188 = swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake(v188, v189);
    sub_1C5710D28(v190);
    swift_unknownObjectRelease();
    v191 = sub_1C5720224(v6 > 1, v171 != 0);

    sub_1C571F630(v191);
    swift_unknownObjectRelease();
    v2 = v183;
    v1 = v231;
    if (!v171)
    {
LABEL_295:

      goto LABEL_296;
    }

LABEL_291:
    v184 = sub_1C571F720();
    sub_1C571F0E0(v170, v184);

    MEMORY[0x1C6949DF0]();
    if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_300:
      sub_1C584F7A0();
    }

    sub_1C584F7E0();
LABEL_296:
    v165 = v246;
    v192 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_cachedViews;
    swift_beginAccess();
    v193 = *(v1 + v192);
    *(v1 + v192) = v246;

    *(v1 + v2) = 0;
    return v165;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5721F70(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v8 = v7;
  if (v9)
  {
    type metadata accessor for TransitLineMarker();
    [*(*(v2 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem) _coordinate];
    v12 = TransitLineMarker.__allocating_init(transitLine:locationHint:)(v8, v10, v11);
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong sectionViewProvider:v3 didSelect:v13 using:a2];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1C571F918(v7, a2);

    swift_unknownObjectRelease();
  }
}

void sub_1C57220B0()
{
  v1 = [*(*(v0 + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource) + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) incidents];
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong sectionViewProvider:v0 didSelectIncidents:v2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

unint64_t sub_1C57221B8()
{
  result = qword_1EC1707C8;
  if (!qword_1EC1707C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1707C8);
  }

  return result;
}

unint64_t sub_1C5722204()
{
  result = qword_1EC1707D8;
  if (!qword_1EC1707D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1707D0, &qword_1C5877F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1707D8);
  }

  return result;
}

uint64_t sub_1C5722268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1707E0, &qword_1C5877F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C57222D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitDeparturesContainerViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5722334(uint64_t a1)
{
  v2 = type metadata accessor for TransitDeparturesContainerViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __GEOServerFormattedStringEqual_block_invokeTm(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2 | a3;
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v4)
  {
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __GEOServerFormattedStringEqual_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = GEOServerFormatTokenEqual();

  return v6;
}

uint64_t type metadata accessor for TransitDeparturesContainerViewModel()
{
  result = qword_1EC18E350;
  if (!qword_1EC18E350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C57224B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5722524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for TransitDeparturesContainerViewModel();
  v11 = v10[6];
  v12 = sub_1C584EB30();
  (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  a6[v10[7]] = a4;
  v13 = &a6[v10[8]];

  return sub_1C57225D4(a5, v13);
}

uint64_t sub_1C57225D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5722644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v58 = &v49 - v4;
  v57 = type metadata accessor for TransitDeparturesRowViewModel();
  v5 = *(*(v57 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v57, v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v49 - v11;
  v60 = sub_1C584EB30();
  v13 = *(v60 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v60, v15);
  v56 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v50 = &v49 - v19;
  v59 = v0;
  v20 = *v0;
  result = [*v0 numberOfRows];
  if (result < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v22 = 0;
      v49 = (v13 + 8);
      v51 = (v13 + 16);
      v62 = MEMORY[0x1E69E7CC0];
      v53 = v12;
      v54 = v9;
      v55 = result;
      v52 = v20;
      while (1)
      {
        result = [v20 sequenceForRow:v22 outIsNewLine:0 outNextLineIsSame:{0, v49}];
        if (!result)
        {
          goto LABEL_32;
        }

        v23 = result;
        v24 = [v20 departureCutoffDate];
        if (v24)
        {
          v25 = v50;
          v26 = v24;
          sub_1C584EB10();

          v27 = sub_1C584EB00();
          (*v49)(v25, v60);
        }

        else
        {
          v27 = 0;
        }

        v28 = [v23 departuresValidForDate_];

        if (v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
          v29 = sub_1C584F770();

          if (!(v29 >> 62))
          {
            goto LABEL_10;
          }
        }

        else
        {
          v29 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_10:
            result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!result)
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        result = sub_1C584FB90();
        if (!result)
        {
LABEL_17:

          v30 = 0;
          goto LABEL_18;
        }

LABEL_11:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1C694A320](0, v29);
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v30 = *(v29 + 32);
          swift_unknownObjectRetain();
        }

LABEL_18:
        v31 = [v20 showOperatingHours];
        v61 = v22;
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = [v20 serviceGapDescriptionForRow_];
        }

        v33 = v59;
        v34 = v59[1];
        v35 = type metadata accessor for TransitDeparturesContainerViewModel();
        v36 = v56;
        (*v51)(v56, v33 + v35[6], v60);
        v37 = v34;
        swift_unknownObjectRetain();
        v38 = [v20 departuresAreVehicleSpecific];
        v39 = v58;
        sub_1C57224B4(v33 + v35[8], v58);
        LOBYTE(v34) = *(v33 + v35[7]);
        v40 = v32;
        swift_unknownObjectRetain();
        v41 = v53;
        sub_1C57474B4(v37, v36, v23, v38, v30, v39, v34, v32, v53);
        v42 = v54;
        sub_1C5722B94(v41, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1C5722F1C(0, v62[2] + 1, 1, v62);
        }

        v43 = v55;
        v44 = v61;
        v46 = v62[2];
        v45 = v62[3];
        v20 = v52;
        if (v46 >= v45 >> 1)
        {
          v62 = sub_1C5722F1C((v45 > 1), v46 + 1, 1, v62);
        }

        v22 = v44 + 1;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1C5723064(v41);
        v64 = v57;
        v65 = &off_1F44C7B48;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
        sub_1C5722B94(v42, boxed_opaque_existential_1);
        v48 = v62;
        v62[2] = v46 + 1;
        sub_1C56412D4(&v63, &v48[5 * v46 + 4]);
        sub_1C5723064(v42);
        if (v43 == v22)
        {
          return v62;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C5722B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitDeparturesRowViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C5722BF8()
{
  result = [*v0 sequences];
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170868, &qword_1C5877F70);
    v3 = sub_1C584F770();

    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
    {
      v5 = 0;
      v6 = *(v0 + 8);
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }

LABEL_13:
        v9 = [v6 incidentsForDepartureSequence_];
        if (v9)
        {
          v10 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
          v11 = sub_1C584F770();

          if (v11 >> 62)
          {
            v0 = sub_1C584FB90();
          }

          else
          {
            v0 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_unknownObjectRelease();
          if (v0 > 0)
          {
            v12 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_22;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
    v12 = 0;
LABEL_23:

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C5722DD8()
{
  result = [*v0 sequenceForRow:0 outIsNewLine:0 outNextLineIsSame:0];
  if (result)
  {
    result = [result containerDisplayName];
    if (result)
    {
      v2 = result;
      v3 = sub_1C584F660();
      swift_unknownObjectRelease();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C5722E6C()
{
  result = [*v0 sequenceForRow:0 outIsNewLine:0 outNextLineIsSame:0];
  if (result)
  {
    result = [result containerLabelItems];
    if (result)
    {
      v2 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD38, &qword_1C5868370);
      v3 = sub_1C584F770();
      swift_unknownObjectRelease();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C5722F1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170890, &qword_1C5879340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170898, &unk_1C5877FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5723064(uint64_t a1)
{
  v2 = type metadata accessor for TransitDeparturesRowViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C57230E8()
{
  sub_1C5626E40(319, &qword_1EC170870, 0x1E696F3D8);
  if (v0 <= 0x3F)
  {
    sub_1C5626E40(319, &qword_1EC170878, 0x1E696F400);
    if (v1 <= 0x3F)
    {
      sub_1C584EB30();
      if (v2 <= 0x3F)
      {
        sub_1C57231C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C57231C4()
{
  if (!qword_1EC170880)
  {
    sub_1C584ED80();
    v0 = sub_1C584FAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC170880);
    }
  }
}

id AspectRatioLayout.__allocating_init(item:aspectRatio:)(void *a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1708A0, &unk_1C5878000);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v9[1] = a2;
  *&v5[OBJC_IVAR___MUAspectRatioLayoutInternal_builder] = sub_1C562370C(v9);

  v7 = sub_1C562389C(v6, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v7;
}

id AspectRatioLayout.init(item:aspectRatio:)(void *a1, double a2)
{
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1708A0, &unk_1C5878000);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v7[1] = a2;
  *(v2 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder) = sub_1C562370C(v7);

  v5 = sub_1C562389C(v4, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t AspectRatioLayout.item.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5723500(v4);
  return Strong;
}

uint64_t AspectRatioLayout.item.setter(id a1)
{
  if (a1)
  {
    [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v2 = *(v1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v6);
  swift_unknownObjectWeakAssign();
  sub_1C5723648(v6, v5);
  sub_1C5623B40(v5, v3);
  swift_unknownObjectRelease();
  return sub_1C5723500(v6);
}

uint64_t sub_1C5723680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1C5723500(v6);
  *a2 = Strong;
  return result;
}

uint64_t sub_1C57236D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = *a1;
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v4 = *(v2 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v8);
  swift_unknownObjectWeakAssign();
  sub_1C5723648(v8, v7);
  sub_1C5623B40(v7, v5);
  swift_unknownObjectRelease();
  return sub_1C5723500(v8);
}

void (*AspectRatioLayout.item.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = *(v1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5723500(v4);
  *(v4 + 32) = Strong;
  return sub_1C57237FC;
}

void sub_1C57237FC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*a1 + 32);
      [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    v5 = v2[5];
    sub_1C5623A68(v2);
    v6 = swift_unknownObjectWeakAssign();
    sub_1C5723648(v6, (v2 + 2));
    sub_1C5623B40((v2 + 2), v7);
    swift_unknownObjectRelease();
    sub_1C5723500(v2);
    v8 = v2[4];
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      [*(*a1 + 32) _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    v9 = v2[5];
    sub_1C5623A68(v2);
    v10 = swift_unknownObjectWeakAssign();
    sub_1C5723648(v10, (v2 + 2));
    sub_1C5623B40((v2 + 2), v11);
    swift_unknownObjectRelease();
    sub_1C5723500(v2);
  }

  free(v2);
}

double AspectRatioLayout.aspectRatio.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = *&v4[1];
  sub_1C5723500(v4);
  return v2;
}

uint64_t AspectRatioLayout.aspectRatio.setter(double a1)
{
  v3 = *(v1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = a1;
  sub_1C5723648(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5723500(v7);
}

uint64_t sub_1C5723A7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v6);
  v4 = v6[1];
  result = sub_1C5723500(v6);
  *a2 = v4;
  return result;
}

uint64_t sub_1C5723AD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUAspectRatioLayoutInternal_builder;
  v5 = *(*a2 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v10);
  v11 = v2;
  v6 = *(v3 + v4);
  sub_1C5723648(v10, v9);
  sub_1C5623B40(v9, v7);
  return sub_1C5723500(v10);
}

void (*AspectRatioLayout.aspectRatio.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = *(v1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 8);
  sub_1C5723500(v4);
  *(v4 + 32) = v5;
  return sub_1C5723BE4;
}

void sub_1C5723BE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  sub_1C5623A68(*a1);
  v1[1] = v2;
  sub_1C5723648(v1, (v1 + 2));
  sub_1C5623B40((v1 + 2), v4);
  sub_1C5723500(v1);

  free(v1);
}

uint64_t sub_1C5723C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B0, &qword_1C5869AC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5867900;
  sub_1C56250A4(v0, v7);
  v7[16] = 0;
  sub_1C56250A4(v0, v6);
  v6[16] = 0;
  v2 = *(v0 + 8);
  v3 = sub_1C57057B4();
  v4 = sub_1C57056F8();
  sub_1C5625108(v7, 7, 0, v6, 8, 0, 0, v1 + 32, v2, v3, v4);
  return v1;
}

uint64_t sub_1C5723D10()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C694A590](*&v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5723D84()
{
  sub_1C5662408();
  sub_1C584F5F0();
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1C694A590](*&v1);
}

uint64_t sub_1C5723DD8()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C694A590](*&v1);
  return sub_1C584FEF0();
}

id AspectRatioLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5723F0C(uint64_t a1)
{
  result = sub_1C5723F34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5723F34()
{
  result = qword_1EC1708B0;
  if (!qword_1EC1708B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1708B0);
  }

  return result;
}

unint64_t sub_1C5723F8C()
{
  result = qword_1EC1708B8;
  if (!qword_1EC1708B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1708B8);
  }

  return result;
}

uint64_t *sub_1C5724040@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 >> 1;
  if (v4 == 1610612735)
  {
    v3 = 4294967294;
  }

  else if (v4 == 0x7FFFFFFF)
  {
    *a2 = *result;
    return result;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C5724078()
{
  v1 = *v0 >> 29;
  if (v1 <= 2)
  {
    v3 = 3;
    if (v1 != 1)
    {
      v3 = 4;
    }

    if (v1)
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else if (*v0 >> 29 > 4)
  {
    if (v1 == 5)
    {
      return 7;
    }

    else
    {
      return *v0 != 3221225472;
    }
  }

  else if (v1 == 3)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

void sub_1C57240E4(uint64_t a1)
{
  v3 = *v1;
  if ((~*v1 & 0xC0000000) != 0)
  {
    if (a1 > 3)
    {
      if (a1 <= 5)
      {
        if (a1 == 4)
        {
          v4 = v3 & 0xFFFFFFFF00000001 | 0x40000000;
        }

        else
        {
          v4 = v3 & 0xFFFFFFFF00000001 | 0x60000000;
        }

        goto LABEL_33;
      }

      if (a1 == 6)
      {
        v4 = v3 & 0xFFFFFFFF00000001 | 0x80000000;
        goto LABEL_33;
      }

      if (a1 == 7)
      {
        v4 = v3 & 0xFFFFFFFF00000001 | 0xA0000000;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v4 = v3 & 0xFFFFFFFF00000001;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFF00000001 | 0x20000000;
      }

      goto LABEL_33;
    }

    if (a1)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 3221225472;
    goto LABEL_33;
  }

  sub_1C563E560(v5);
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v4 = v5[0] | (v6 << 32) | 0x40000000;
      }

      else
      {
        v4 = v5[0] | (v6 << 32) | 0x60000000;
      }

      goto LABEL_33;
    }

    if (a1 == 6)
    {
      v4 = v5[0] | (v6 << 32) | 0x80000000;
      goto LABEL_33;
    }

    if (a1 == 7)
    {
      v4 = v5[0] | (v6 << 32) | 0xA0000000;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = v5[0] | (v6 << 32);
    }

    else
    {
      v4 = v5[0] | (v6 << 32) | 0x20000000;
    }

    goto LABEL_33;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (a1 == 1)
  {
    v4 = 3221225473;
LABEL_33:
    *v1 = v4;
    return;
  }

LABEL_34:
  sub_1C584FD00();
  __break(1u);
}

void sub_1C57242BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (*a1 == 2)
  {
    sub_1C563E560(v11);
    v4 = v3 >> 29;
    if (v3 >> 29 > 2)
    {
      if (v3 >> 29 <= 4)
      {
        v5 = v11[0] | (v12 << 32) | 0x80000000;
        if (v4 == 3)
        {
          v5 = v11[0] | (v12 << 32) | 0x60000000;
        }

        goto LABEL_28;
      }

      if (v4 == 5)
      {
        v5 = v11[0] | (v12 << 32) | 0xA0000000;
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v5 = v11[0] | (v12 << 32) | 0x40000000;
    if (v4 == 1)
    {
      v5 = v11[0] | (v12 << 32) | 0x20000000;
    }

    if (!v4)
    {
      v5 = v11[0] | (v12 << 32);
    }
  }

  else
  {
    v6 = v3 >> 29;
    if (v3 >> 29 <= 2)
    {
      v5 = v2 & 0xFFFFFFFF00000001;
      v10 = v5 | 0x20000000;
      if (v6 != 1)
      {
        v10 = v5 | 0x40000000;
      }

      if (v6)
      {
        v5 = v10;
      }
    }

    else
    {
      if (v3 >> 29 > 4)
      {
        if (v6 == 5)
        {
          v5 = v2 & 0xFFFFFFFF00000001 | 0xA0000000;
          goto LABEL_28;
        }

LABEL_26:
        v5 = 3221225472;
        if (v3 != 3221225472)
        {
          v5 = 3221225473;
        }

        goto LABEL_28;
      }

      v7 = v6 == 3;
      v8 = v2 & 0xFFFFFFFF00000001;
      v9 = v8 | 0x60000000;
      v5 = v8 | 0x80000000;
      if (v7)
      {
        v5 = v9;
      }
    }
  }

LABEL_28:
  *v1 = v5;
}

void sub_1C572440C(uint64_t a1)
{
  v3 = *v1;
  if ((~*v1 & 0xC0000000) != 0)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v4 = v3 & 0xFFFFFFFF00000001;
          goto LABEL_20;
        }

        goto LABEL_21;
      }

LABEL_8:
      v4 = 3221225472;
      goto LABEL_20;
    }

    if (a1 == 2)
    {
      v4 = v3 & 0xFFFFFFFF00000001 | 0x40000000;
      goto LABEL_20;
    }

    if (a1 != 3)
    {
      goto LABEL_21;
    }

    v5 = v3 & 0xFFFFFFFF00000001;
LABEL_19:
    v4 = v5 | 0x80000000;
    goto LABEL_20;
  }

  sub_1C563E560(v6);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = v6[0] | (v7 << 32) | 0x40000000;
      goto LABEL_20;
    }

    if (a1 != 3)
    {
      goto LABEL_21;
    }

    v5 = v6[0] | (v7 << 32);
    goto LABEL_19;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v4 = v6[0] | (v7 << 32);
LABEL_20:
    *v1 = v4;
    return;
  }

LABEL_21:
  sub_1C584FD00();
  __break(1u);
}

void sub_1C5724528(void *a1)
{
  v2 = *v1;
  if (*a1 == 2)
  {
    sub_1C563E560(v6);
    v3 = v6[0] | (v7 << 32) | 0x80000000;
    if (v2 >> 30 != 2)
    {
      v3 = v2;
    }

    v4 = v6[0] | (v7 << 32) | 0x40000000;
    if (!(v2 >> 30))
    {
      v4 = v6[0] | (v7 << 32);
    }

    if (v2 >> 30 > 1)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = *a1 & 0xFFFFFFFF00000001;
    v5 = v4 | 0x80000000;
    if (v2 >> 30 != 2)
    {
      v5 = *v1;
    }

    if (v2 >> 30)
    {
      v4 |= 0x40000000uLL;
    }

    if (v2 >> 30 > 1)
    {
      v4 = v5;
    }
  }

  *v1 = v4;
}

uint64_t sub_1C57245D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 29;
  *v1;
  *v1;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5625AB0(&qword_1ED77E828);
  result = sub_1C584F610();
  if (result)
  {
    goto LABEL_5;
  }

  if (v4 < 4)
  {
    v6 = 3221225472;
    goto LABEL_6;
  }

  if (v4 - 4 < 2 || (v6 = 3221225472, v3 != 3221225472))
  {
LABEL_5:
    v6 = v3;
  }

LABEL_6:
  *a1 = v6;
  return result;
}

float sub_1C57246C0()
{
  result = 1000.0;
  if (*v0 >> 29 == 5)
  {
    LODWORD(result) = HIDWORD(*v0);
  }

  if (*v0 >> 29 <= 4)
  {
    LODWORD(result) = HIDWORD(*v0);
  }

  if (*v0 >> 29 <= 2)
  {
    LODWORD(result) = HIDWORD(*v0);
  }

  return result;
}

uint64_t sub_1C572470C()
{
  v1 = *v0;
  if (*v0 >> 29 == 5)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 1;
  }

  if (*v0 >> 29 <= 4)
  {
    v2 = *v0;
  }

  if (*v0 >> 29 > 2)
  {
    LOBYTE(v1) = v2;
  }

  return v1 & 1;
}

void sub_1C5724768(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((~*v1 & 0xC0000000) != 0)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_1C5625AB0(&qword_1ED77E828);
    if ((sub_1C584F610() & 1) == 0)
    {
      v3 = 3221225472;
    }
  }

  *a1 = v3;
}

float sub_1C5724800()
{
  if (*v0 >> 30 == 3)
  {
    return 1000.0;
  }

  LODWORD(result) = HIDWORD(*v0);
  return result;
}

uint64_t sub_1C5724830()
{
  v1 = *v0;
  if (*v0 >> 30 == 2)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 1;
  }

  if (*v0 >> 30 > 1)
  {
    LOBYTE(v1) = v2;
  }

  return v1 & 1;
}

uint64_t sub_1C572486C(char a1, uint64_t (*a2)(unint64_t *))
{
  if ((~*v2 & 0xC0000000) != 0)
  {
    v3 = *v2 & 0xFFFFFFFF00000000 | a1 & 1;
  }

  else
  {
    v3 = 2;
  }

  v5 = v3;
  return a2(&v5);
}

uint64_t sub_1C57248D0(uint64_t (*a1)(uint64_t *), float a2)
{
  if ((~*v2 & 0xC0000000) != 0)
  {
    LODWORD(v4) = *v2 & 1;
    *(&v4 + 1) = a2;
  }

  else
  {
    v4 = 2;
  }

  return a1(&v4);
}

unint64_t MUNativeButtonType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C572493C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746E656D756772;
  v3 = 0x4164696C61766E69;
  v4 = a1;
  v5 = 0x80000001C589A890;
  v6 = 0xD000000000000016;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
    v7 = 0x80000001C589A870;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0xD000000000000012;
  v9 = 0x80000001C589A840;
  v10 = 0x7461447974706D65;
  v11 = 0xE900000000000061;
  if (a1 == 1)
  {
    v10 = 0x4164696C61766E69;
    v11 = 0xEF746E656D756772;
  }

  if (a1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001C589A890;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x6E776F6E6B6E75)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v2 = 0x80000001C589A870;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001C589A840;
      if (v12 != 0xD000000000000012)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000061;
      if (v12 != 0x7461447974706D65)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = sub_1C584FDC0();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_1C5724B20()
{
  sub_1C584FEA0();
  sub_1C584F6C0();

  return sub_1C584FEF0();
}

uint64_t sub_1C5724C44()
{
  sub_1C584FEA0();
  sub_1C584F6C0();

  return sub_1C584FEF0();
}

uint64_t *sub_1C5724D64@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C5724E80()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5724EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5724F3C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C5724FA0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_sectionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

id sub_1C5725094()
{
  v1 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1C57251A0(void *a1)
{
  sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
}

uint64_t sub_1C5725244@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

void (*sub_1C5725304(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1C57253A0;
}

void sub_1C57253A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v3;
    sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
    v8 = *(v5 + v6);
    *(v5 + v6) = v7;
    v9 = v7;

    sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
    v10 = *v4;
  }

  else
  {
    sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
    v11 = *(v5 + v6);
    *(v5 + v6) = v3;
    v10 = v3;

    sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
  }

  free(v2);
}

id sub_1C5725530()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  v2 = sub_1C566AF74();

  v3 = [v2 isLoading];
  return v3;
}

double sub_1C57255E0()
{
  v1 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5725678(double a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C5725834()
{
  v1 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57258CC(double a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_1C5725A7C()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress;
  if ((*(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress + 4) & 1) == 0)
  {
    return *v1;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  *v1 = result;
  v1[4] = 0;
  return result;
}

void sub_1C5725B10(float a1)
{
  v2 = v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress;
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*sub_1C5725B28(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C5725A7C();
  return sub_1C5725B70;
}

uint64_t sub_1C5725B70(uint64_t result)
{
  v1 = *result + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress;
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

float sub_1C5725BCC()
{
  v0 = [objc_opt_self() isMapsProcess];
  result = 1.0;
  if (v0)
  {
    return 0.0;
  }

  return result;
}

void *MUWebBasedPlacecardSectionController.__allocating_init(mapItem:placeActionDispatcher:bridge:configuration:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1C57347EC(a1, a2, a3, a4);

  return v10;
}

void *MUWebBasedPlacecardSectionController.init(mapItem:placeActionDispatcher:bridge:configuration:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1C57347EC(a1, a2, a3, a4);

  return v8;
}

id MUWebBasedPlacecardSectionController.__deallocating_deinit()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x460))();

  if (v5)
  {
    [v5 removeObserver_];
  }

  v6 = v3();
  v7 = (*((*v2 & *v6) + 0x1C0))();

  if (v7)
  {
    v8 = v1;
    MUEVChargerAvailabilityProvider.unregisterObserver(_:)(v8);
  }

  v9 = v3();
  v10 = (*((*v2 & *v9) + 0x580))();

  if (v10)
  {
    v11 = v1;
    [v10 removeObserver_];

    swift_unknownObjectRelease();
  }

  [v1 removeTestingObserverIfNeeded];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MUWebBasedPlacecardSectionController();
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

id sub_1C5726068(void *a1, void *a2)
{
  v3 = v2;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v44 - v12;
  v14 = sub_1C584EA90();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5626E40(0, &unk_1EC16CF88, 0x1E69E58C0);
  v20 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController__mapItem;
  v21 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController__mapItem);
  v22 = sub_1C584FAC0();

  if ((v22 & 1) == 0 || (result = [v3 isTesting], result))
  {
    v24 = *(v3 + v20);
    *(v3 + v20) = a1;
    v25 = a1;

    v26 = MEMORY[0x1E69E7D40];
    v27 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v45);
    v28 = (*((*v26 & *v3) + 0x1C0))(v27);
    (*((*v26 & *v3) + 0x1B0))(v28);
    v29 = *(v3 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager);
    v30 = *((*v26 & *v29) + 0x78);
    v31 = v29;
    v30();

    v32 = 1;
    v45 = sub_1C584EA60();
    v34 = v33;
    v35 = *(v3 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
    v36 = sub_1C566AF74();

    v37 = [v36 URL];
    if (v37)
    {
      sub_1C584EA50();

      v32 = 0;
    }

    (*(v15 + 56))(v10, v32, 1, v14);
    sub_1C56534F4(v10, v13, &unk_1EC16E660, &unk_1C58685F0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1C5625230(v13, &unk_1EC16E660, &unk_1C58685F0);

LABEL_7:
      v38 = sub_1C584EA20();
      [v3 loadPlaceCardWithUrl_];

      return (*(v15 + 8))(v19, v14);
    }

    v39 = sub_1C584EA60();
    v41 = v40;
    v42 = *(v15 + 8);
    v42(v13, v14);
    if (v45 == v39 && v34 == v41)
    {
    }

    else
    {
      v43 = sub_1C584FDC0();

      if ((v43 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    [v3 updatePlacecard];
    return (v42)(v19, v14);
  }

  return result;
}

id MUWebBasedPlacecardSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

uint64_t sub_1C5726670()
{
  [v0 postNotificationForContentLoadWithEvent_];
  v1 = *&v0[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v4 = v1;

  v3(sub_1C5734B88, v2);
}

id sub_1C5726794(char *a1)
{
  v2 = v1;
  v4 = sub_1C584EA90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v10 = sub_1C584F2C0();
  __swift_project_value_buffer(v10, qword_1EC18FA38);
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_1C584F2A0();
  v12 = sub_1C584F990();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    sub_1C5742CB4(&qword_1EC16D8C0, MEMORY[0x1E6968FB0]);
    v16 = sub_1C584FD90();
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_1C5649518(v16, v18, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1C5620000, v11, v12, "loading URL: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1C694B7A0](v15, -1, -1);
    v20 = v14;
    v2 = v24;
    MEMORY[0x1C694B7A0](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v21 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566B63C(a1);

  v22 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  return sub_1C5718EA0();
}

uint64_t sub_1C5726A3C()
{
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v0 = sub_1C584F2C0();

  return __swift_project_value_buffer(v0, qword_1EC18FA38);
}

id sub_1C5726B88()
{
  v1 = v0;
  [v0 postNotificationForContentLoadWithEvent_];
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  sub_1C5719014();
  v3 = [v1 delegate];
  if (v3)
  {
    [v3 placeSectionControllerDidUpdateContent_];
    v3 = swift_unknownObjectRelease();
  }

  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v3);
  if (v5)
  {
    [v5 sectionControllerWebContentLoadCompleted_];
    v5 = swift_unknownObjectRelease();
  }

  (*((*v4 & *v1) + 0x1A8))(v5);

  return [v1 callBridgeMethodForExpansionProgressWithProgress_];
}

uint64_t MUWebBasedPlacecardSectionController.didReceiveMessage(fromWebContentViewController:replyHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v346 = a3;
  v347 = a4;
  v345 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v342 = &v305 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v326 = &v305 - v11;
  v12 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v340 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v323 = &v305 - v18;
  v19 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v322 = &v305 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v327 = &v305 - v25;
  v26 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v321 = &v305 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v325 = &v305 - v32;
  v33 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v344 = (&v305 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36, v38);
  v329 = &v305 - v39;
  v40 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8, v42);
  v343 = &v305 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v341 = *(v44 - 8);
  v45 = *(v341 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44 - 8, v46);
  v339 = &v305 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v338 = &v305 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v337 = &v305 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v336 = &v305 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v335 = &v305 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v334 = &v305 - v63;
  MEMORY[0x1EEE9AC00](v62, v64);
  v333 = &v305 - v65;
  v66 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v67 = *(*(v66 - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](v66 - 8, v68);
  v316 = &v305 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69, v71);
  v324 = &v305 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v74 = *(*(v73 - 8) + 64);
  v76 = MEMORY[0x1EEE9AC00](v73 - 8, v75);
  v320 = &v305 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v319 = &v305 - v80;
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v317 = &v305 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v318 = &v305 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v314 = &v305 - v89;
  MEMORY[0x1EEE9AC00](v88, v90);
  v328 = &v305 - v91;
  v330 = type metadata accessor for WebPlacecardBridgeReply(0);
  v331 = *(v330 - 8);
  v92 = *(v331 + 64);
  v94 = MEMORY[0x1EEE9AC00](v330, v93);
  v313 = &v305 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v312 = &v305 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v310 = &v305 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100, v102);
  v311 = &v305 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103, v105);
  v309 = &v305 - v107;
  v109 = MEMORY[0x1EEE9AC00](v106, v108);
  v315 = &v305 - v110;
  MEMORY[0x1EEE9AC00](v109, v111);
  v113 = &v305 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v115 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114 - 8, v116);
  v118 = &v305 - v117;
  v119 = sub_1C584F010();
  v120 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119 - 8, v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170938, &unk_1C5878158);
  v123 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122 - 8, v124);
  v126 = &v305 - v125;
  v127 = type metadata accessor for WebPlacecardBridge(0);
  v128 = *(v127 - 8);
  v129 = *(v128 + 64);
  v131 = MEMORY[0x1EEE9AC00](v127, v130);
  MEMORY[0x1EEE9AC00](v131, v132);
  v134 = (&v305 - v133);
  v348 = a1;
  v349 = v345;
  v353 = 0;
  v351 = 0u;
  v352 = 0u;
  sub_1C566DCD4(a1, v345);
  sub_1C584F000();
  sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge);
  sub_1C584F150();
  v307 = &v305 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = v113;
  v308 = 0;
  v135 = v340;
  v136 = v342;
  (*(v128 + 56))(v126, 0, 1, v127);
  sub_1C5743928(v126, v134, type metadata accessor for WebPlacecardBridge);
  v137 = swift_allocObject();
  v138 = v346;
  v139 = v347;
  *(v137 + 16) = v346;
  *(v137 + 24) = v139;
  v345 = v137;
  swift_retain_n();
  v140 = sub_1C568FE50();
  v141 = v139;
  v142 = v134;
  v143 = v136;
  v145 = v343;
  v144 = v344;
  v146 = v335;
  switch(v140)
  {
    case 1:
      v158 = v142;

      sub_1C573CEFC(v158, v332, v138, v141);
      goto LABEL_51;
    case 2:
      v183 = v142;
      v184 = *v142;
      if (!*(v184 + 16))
      {
        goto LABEL_46;
      }

      v185 = v138;
      v186 = v336;
      sub_1C5743990(v184 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v336, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v187 = v321;
      sub_1C5690CC0(v321);
      sub_1C57439F8(v186, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v188 = v325;
      sub_1C5743928(v187, v325, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
      v189 = *&v332[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController];
      v190 = *&v332[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
      v191 = [v332 mapItem];
      sub_1C57191B4(v188, v190, v191);

      v351 = 0u;
      v352 = 0u;
      sub_1C56466CC(&v351, &v348, &qword_1EC16E790, &unk_1C586A110);
      if (v350)
      {
        v192 = v318;
        v193 = v330;
        v194 = swift_dynamicCast();
        v195 = v331;
        (*(v331 + 56))(v192, v194 ^ 1u, 1, v193);
        if ((*(v195 + 48))(v192, 1, v193) != 1)
        {
          v196 = v311;
          sub_1C5743928(v192, v311, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v197 = v308;
          v198 = sub_1C584F140();
          if (v197)
          {

            sub_1C57439F8(v196, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v283 = v198;
            v284 = v199;
            v285 = sub_1C584EAD0();
            v287 = v286;
            sub_1C566DD84(v283, v284);
            v350 = MEMORY[0x1E69E6158];
            v348 = v285;
            v349 = v287;
            v185(&v348, 0, 0);
            sub_1C57439F8(v196, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_62:
          sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
          v268 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton;
LABEL_67:
          v269 = v268;
          v270 = v188;
LABEL_71:
          sub_1C57439F8(v270, v269);
LABEL_72:

          goto LABEL_83;
        }
      }

      else
      {
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
        v192 = v318;
        (*(v331 + 56))(v318, 1, 1, v330);
      }

      sub_1C5625230(v192, &qword_1EC170928, &unk_1C5878148);
      v185(&v351, 0, 0);
      goto LABEL_62;
    case 3:
      v344 = v142;
      v208 = *v142;
      if (!*(v208 + 16))
      {
        goto LABEL_52;
      }

      v209 = v138;
      v210 = v333;
      sub_1C5743990(v208 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v333, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v211 = v316;
      sub_1C56905F4(v316);
      sub_1C57439F8(v210, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v212 = v324;
      sub_1C5743928(v211, v324, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      v213 = *(**sub_1C5764F70() + 88);

      v214 = v213(v212);
      v216 = v215;

      if (!v216)
      {
        v351 = 0u;
        v352 = 0u;
        sub_1C572942C(&v351, 2u, v209);
        sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v212, type metadata accessor for WebPlacecardBridge.MUIconArgument);
        goto LABEL_80;
      }

      v217 = v315;
      sub_1C569CA9C(v315);
      sub_1C5696FD8(v214, v216);
      v218 = v330;
      *(&v352 + 1) = v330;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v351);
      sub_1C5743990(v217, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C56466CC(&v351, &v348, &qword_1EC16E790, &unk_1C586A110);
      if (!v350)
      {
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
        v220 = v314;
        (*(v331 + 56))(v314, 1, 1, v218);
        goto LABEL_77;
      }

      v220 = v314;
      v221 = swift_dynamicCast();
      v222 = v331;
      (*(v331 + 56))(v220, v221 ^ 1u, 1, v218);
      if ((*(v222 + 48))(v220, 1, v218) == 1)
      {
LABEL_77:
        sub_1C5625230(v220, &qword_1EC170928, &unk_1C5878148);
        v209(&v351, 0, 0);
        goto LABEL_78;
      }

      v223 = v309;
      sub_1C5743928(v220, v309, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
      v224 = v308;
      v225 = sub_1C584F140();
      if (v224)
      {

        sub_1C57439F8(v223, type metadata accessor for WebPlacecardBridgeReply);
      }

      else
      {
        v300 = v225;
        v301 = v226;
        v302 = sub_1C584EAD0();
        v304 = v303;
        sub_1C566DD84(v300, v301);
        v350 = MEMORY[0x1E69E6158];
        v348 = v302;
        v349 = v304;
        v209(&v348, 0, 0);
        sub_1C57439F8(v223, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
      }

LABEL_78:
      sub_1C57439F8(v217, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C57439F8(v212, type metadata accessor for WebPlacecardBridge.MUIconArgument);
LABEL_79:
      sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
LABEL_80:

      v157 = v344;
      return sub_1C57439F8(v157, type metadata accessor for WebPlacecardBridge);
    case 4:
      v173 = v142;
      v174 = *v142;
      if (*(v174 + 16))
      {
        v175 = v334;
        sub_1C5743990(v174 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v334, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
        sub_1C5690970(v145);
        sub_1C57439F8(v175, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
        v176 = sub_1C5695BB4();
        v178 = v177;
        sub_1C57439F8(v145, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
        v179 = *sub_1C5764F70();
        v180 = swift_allocObject();
        v181 = v345;
        *(v180 + 16) = sub_1C5734C04;
        *(v180 + 24) = v181;
        v182 = *(*v179 + 104);

        v182(v176, v178, sub_1C57420C8, v180);
      }

      else
      {
        v351 = 0u;
        v352 = 0u;
        sub_1C572942C(&v351, 1u, v138);
        sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
      }

      v157 = v173;
      return sub_1C57439F8(v157, type metadata accessor for WebPlacecardBridge);
    case 5:
      v158 = v142;

      sub_1C573C8B0(v158, v332, v138, v141);
      goto LABEL_51;
    case 6:
      v183 = v142;
      v228 = *v142;
      if (!*(v228 + 16))
      {
        goto LABEL_46;
      }

      v229 = v138;
      v230 = v338;
      sub_1C5743990(v228 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v338, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5690E98(v135);
      sub_1C57439F8(v230, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v188 = v323;
      sub_1C5743928(v135, v323, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
      v231 = *&v332[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController];
      v232 = sub_1C5695DC8();
      MUWebBasedPlacecardViewController.defaultHeight.setter(COERCE__INT64(v232), 0);
      v351 = 0u;
      v352 = 0u;
      sub_1C56466CC(&v351, &v348, &qword_1EC16E790, &unk_1C586A110);
      if (v350)
      {
        v233 = v319;
        v234 = v330;
        v235 = swift_dynamicCast();
        v236 = v331;
        (*(v331 + 56))(v233, v235 ^ 1u, 1, v234);
        if ((*(v236 + 48))(v233, 1, v234) != 1)
        {
          v237 = v312;
          sub_1C5743928(v233, v312, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v238 = v308;
          v239 = sub_1C584F140();
          if (v238)
          {

            sub_1C57439F8(v237, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v288 = v229;
            v289 = v239;
            v290 = v240;
            v291 = sub_1C584EAD0();
            v293 = v292;
            sub_1C566DD84(v289, v290);
            v350 = MEMORY[0x1E69E6158];
            v348 = v291;
            v349 = v293;
            v288(&v348, 0, 0);
            sub_1C57439F8(v237, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_66:
          sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
          v268 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument;
          goto LABEL_67;
        }
      }

      else
      {
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
        v233 = v319;
        (*(v331 + 56))(v319, 1, 1, v330);
      }

      sub_1C5625230(v233, &qword_1EC170928, &unk_1C5878148);
      v229(&v351, 0, 0);
      goto LABEL_66;
    case 7:
      v158 = v142;

      sub_1C573E98C(v158, v332, v138, v141);
      goto LABEL_51;
    case 8:
      v158 = v142;

      sub_1C573FEC8(v158, v138, v141);
      goto LABEL_51;
    case 9:
      v158 = v142;

      sub_1C573D334(v158, v138, v141);
      goto LABEL_51;
    case 10:
      v255 = v142;
      v256 = *v142;
      if (!*(v256 + 16))
      {
        goto LABEL_74;
      }

      sub_1C5743990(v256 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v335, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C569134C(v144);
      sub_1C57439F8(v146, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v257 = v329;
      sub_1C5743928(v144, v329, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
      sub_1C5691FCC();
      v258 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
      v259 = sub_1C584F630();

      v260 = [v258 initWithEncodedMapsIdentifier_];

      if (v260)
      {
        v261 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
        v346 = sub_1C5691FE4();
        v263 = v262;
        v264 = *sub_1C567A818();
        v265 = swift_allocObject();
        v266 = v345;
        *(v265 + 16) = sub_1C5734C04;
        *(v265 + 24) = v266;
        v267 = *(*v264 + 120);

        v267(v261, v346, v263, sub_1C57420C0, v265);

        sub_1C57439F8(v329, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
      }

      else
      {
        sub_1C57439F8(v257, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
LABEL_74:
        v351 = 0u;
        v352 = 0u;
        sub_1C572942C(&v351, 1u, v138);
        sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
      }

      v157 = v255;
      return sub_1C57439F8(v157, type metadata accessor for WebPlacecardBridge);
    case 11:
      v158 = v142;

      sub_1C573F4F8(v158, v138, v141);
      goto LABEL_51;
    case 12:
      v158 = v142;

      sub_1C573F898(v158, v138, v141);
      goto LABEL_51;
    case 13:
      v158 = v142;

      sub_1C574050C(v158, v332, v138, v141);
      goto LABEL_51;
    case 14:
      v344 = v142;
      v159 = *v142;
      if (!*(v159 + 16))
      {
LABEL_52:
        v351 = 0u;
        v352 = 0u;
        sub_1C572942C(&v351, 1u, v138);
        goto LABEL_79;
      }

      v160 = v339;
      sub_1C5743990(v159 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v339, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5691A0C(v143);
      sub_1C57439F8(v160, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v161 = v326;
      v162 = sub_1C5743928(v143, v326, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
      v163 = v332;
      v164 = (*((*MEMORY[0x1E69E7D40] & *v332) + 0xB0))(v162);
      if (v164)
      {
        [v164 sectionController:v163 updateFixedHeaderWithShouldShow:sub_1C5696744() & 1];
        swift_unknownObjectRelease();
      }

      v351 = 0u;
      v352 = 0u;
      sub_1C56466CC(&v351, &v348, &qword_1EC16E790, &unk_1C586A110);
      v165 = v330;
      v166 = v331;
      if (v350)
      {
        v167 = v320;
        v168 = swift_dynamicCast();
        (*(v166 + 56))(v167, v168 ^ 1u, 1, v165);
        if ((*(v166 + 48))(v167, 1, v165) != 1)
        {
          v169 = v313;
          sub_1C5743928(v167, v313, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v170 = v308;
          v171 = sub_1C584F140();
          if (v170)
          {

            sub_1C57439F8(v169, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v276 = v138;
            v277 = v169;
            v278 = v171;
            v279 = v172;
            v280 = sub_1C584EAD0();
            v282 = v281;
            sub_1C566DD84(v278, v279);
            v350 = MEMORY[0x1E69E6158];
            v348 = v280;
            v349 = v282;
            v276(&v348, 0, 0);
            sub_1C57439F8(v277, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_59:
          sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
          sub_1C57439F8(v161, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
          goto LABEL_80;
        }
      }

      else
      {
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
        v167 = v320;
        (*(v166 + 56))(v320, 1, 1, v165);
      }

      sub_1C5625230(v167, &qword_1EC170928, &unk_1C5878148);
      v138(&v351, 0, 0);
      goto LABEL_59;
    case 15:
      v183 = v142;
      [v332 webViewFinishedLoading];
      v351 = 0u;
      v352 = 0u;
      sub_1C56466CC(&v351, &v348, &qword_1EC16E790, &unk_1C586A110);
      if (v350)
      {
        v200 = v328;
        v201 = v330;
        v202 = swift_dynamicCast();
        v203 = v331;
        (*(v331 + 56))(v200, v202 ^ 1u, 1, v201);
        if ((*(v203 + 48))(v200, 1, v201) != 1)
        {
          v204 = v306;
          sub_1C5743928(v200, v306, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v205 = v308;
          v206 = sub_1C584F140();
          if (v205)
          {

            sub_1C57439F8(v204, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v271 = v206;
            v272 = v207;
            v273 = sub_1C584EAD0();
            v275 = v274;
            sub_1C566DD84(v271, v272);
            v350 = MEMORY[0x1E69E6158];
            v348 = v273;
            v349 = v275;
            v138(&v348, 0, 0);
            sub_1C57439F8(v204, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_82:

          sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
LABEL_83:
          v157 = v183;
          return sub_1C57439F8(v157, type metadata accessor for WebPlacecardBridge);
        }
      }

      else
      {
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
        v200 = v328;
        (*(v331 + 56))(v328, 1, 1, v330);
      }

      sub_1C5625230(v200, &qword_1EC170928, &unk_1C5878148);
      v138(&v351, 0, 0);
      goto LABEL_82;
    case 16:
      v158 = v142;

      sub_1C5741A94(v158, v332, v138, v141);
LABEL_51:

      v157 = v158;
      return sub_1C57439F8(v157, type metadata accessor for WebPlacecardBridge);
    case 17:
      sub_1C57439F8(v142, type metadata accessor for WebPlacecardBridge);

    case 18:
      v183 = v142;
      v241 = *v142;
      if (!*(v241 + 16))
      {
LABEL_46:
        v351 = 0u;
        v352 = 0u;
        sub_1C572942C(&v351, 1u, v138);
        sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
        goto LABEL_72;
      }

      v242 = v337;
      sub_1C5743990(v241 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v337, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v243 = v322;
      sub_1C5691D2C(v322);
      sub_1C57439F8(v242, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v244 = v243;
      v245 = v327;
      sub_1C5743928(v244, v327, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
      v246 = *&v332[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController];
      sub_1C5719754();
      v351 = 0u;
      v352 = 0u;
      sub_1C56466CC(&v351, &v348, &qword_1EC16E790, &unk_1C586A110);
      if (v350)
      {
        v247 = v317;
        v248 = v330;
        v249 = swift_dynamicCast();
        v250 = v331;
        (*(v331 + 56))(v247, v249 ^ 1u, 1, v248);
        if ((*(v250 + 48))(v247, 1, v248) != 1)
        {
          v251 = v310;
          sub_1C5743928(v247, v310, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v252 = v308;
          v253 = sub_1C584F140();
          if (v252)
          {

            sub_1C57439F8(v251, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v294 = v253;
            v295 = v254;
            v296 = sub_1C584EAD0();
            v298 = v297;
            v299 = v294;
            v245 = v327;
            sub_1C566DD84(v299, v295);
            v350 = MEMORY[0x1E69E6158];
            v348 = v296;
            v349 = v298;
            v138(&v348, 0, 0);
            sub_1C57439F8(v251, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_70:
          sub_1C5625230(&v351, &qword_1EC16E790, &unk_1C586A110);
          v269 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument;
          v270 = v245;
          goto LABEL_71;
        }
      }

      else
      {
        sub_1C5625230(&v348, &qword_1EC16E790, &unk_1C586A110);
        v247 = v317;
        (*(v331 + 56))(v317, 1, 1, v330);
      }

      sub_1C5625230(v247, &qword_1EC170928, &unk_1C5878148);
      v138(&v351, 0, 0);
      goto LABEL_70;
    default:
      v147 = v142;
      v148 = sub_1C584F8A0();
      (*(*(v148 - 8) + 56))(v118, 1, 1, v148);
      v149 = v307;
      sub_1C5743990(v147, v307, type metadata accessor for WebPlacecardBridge);
      v150 = (*(v128 + 80) + 40) & ~*(v128 + 80);
      v151 = (v129 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = swift_allocObject();
      v152[2] = 0;
      v152[3] = 0;
      v153 = v332;
      v152[4] = v332;
      sub_1C5743928(v149, v152 + v150, type metadata accessor for WebPlacecardBridge);
      v154 = (v152 + v151);
      v155 = v345;
      *v154 = sub_1C5734C04;
      v154[1] = v155;
      v156 = v153;

      sub_1C5659C04(0, 0, v118, &unk_1C5878170, v152);

      v157 = v147;
      return sub_1C57439F8(v157, type metadata accessor for WebPlacecardBridge);
  }
}

uint64_t sub_1C572942C(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t, unint64_t, unint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v31[-v9];
  v11 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C56466CC(a1, v32, &qword_1EC16E790, &unk_1C586A110);
  if (!v33)
  {
    sub_1C5625230(v32, &qword_1EC16E790, &unk_1C586A110);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_5;
  }

  v17 = swift_dynamicCast();
  (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    sub_1C5625230(v10, &qword_1EC170928, &unk_1C5878148);
    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v18 = 0xEF746E656D756772;
          v19 = 0x4164696C61766E69;
        }

        else
        {
          v18 = 0xE900000000000061;
          v19 = 0x7461447974706D65;
        }
      }

      else
      {
        v19 = 0xD000000000000012;
        v18 = 0x80000001C589A840;
      }
    }

    else if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v18 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E75;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }
    }

    else if (a2 == 3)
    {
      v18 = 0x80000001C589A870;
      v19 = 0xD000000000000013;
    }

    else
    {
      v18 = 0x80000001C589A890;
      v19 = 0xD000000000000016;
    }

    a3(a1, v19, v18);
  }

  sub_1C5743928(v10, v16, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
  v20 = sub_1C584F140();
  v22 = v21;
  v23 = sub_1C584EAD0();
  v25 = v24;
  sub_1C566DD84(v20, v22);
  v33 = MEMORY[0x1E69E6158];
  v32[0] = v23;
  v32[1] = v25;
  if (a2 <= 2u)
  {
    v29 = 0xEF746E656D756772;
    v30 = 0x4164696C61766E69;
    if (a2 != 1)
    {
      v30 = 0x7461447974706D65;
      v29 = 0xE900000000000061;
    }

    if (a2)
    {
      v26 = v30;
    }

    else
    {
      v26 = 0xD000000000000012;
    }

    if (a2)
    {
      v27 = v29;
    }

    else
    {
      v27 = 0x80000001C589A840;
    }
  }

  else if (a2 > 4u)
  {
    v26 = 0;
    v27 = 0;
    if (a2 == 5)
    {
      v27 = 0xE700000000000000;
      v26 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v26 = 0xD000000000000013;
    }

    else
    {
      v26 = 0xD000000000000016;
    }

    if (a2 == 3)
    {
      v27 = 0x80000001C589A870;
    }

    else
    {
      v27 = 0x80000001C589A890;
    }
  }

  a3(v32, v26, v27);

  sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridgeReply);
  return sub_1C5625230(v32, &qword_1EC16E790, &unk_1C586A110);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.loadWebViewDidFail()()
{
  v1 = v0;
  v2 = sub_1C584EA90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v8 = sub_1C584F2C0();
  __swift_project_value_buffer(v8, qword_1EC18FA38);
  v9 = sub_1C584F2A0();
  v10 = sub_1C584F9B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C5620000, v9, v10, "Web view load did fail", v11, 2u);
    MEMORY[0x1C694B7A0](v11, -1, -1);
  }

  v12 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager;
  v13 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager);
  v14 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x80);
  v16 = v13;
  LOBYTE(v15) = v15();

  if (v15)
  {
    v32 = sub_1C584F2A0();
    v17 = sub_1C584F9B0();
    if (os_log_type_enabled(v32, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Built-in bundle has been loaded, but it still failed.";
LABEL_11:
      _os_log_impl(&dword_1C5620000, v32, v17, v19, v18, 2u);
      MEMORY[0x1C694B7A0](v18, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  BOOL = GEOConfigGetBOOL();
  v32 = sub_1C584F2A0();
  if (BOOL)
  {
    v17 = sub_1C584F9B0();
    if (os_log_type_enabled(v32, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Built-in bundle fallback is diabled.";
      goto LABEL_11;
    }

LABEL_12:
    v21 = v32;

    return;
  }

  v22 = sub_1C584F990();
  if (os_log_type_enabled(v32, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C5620000, v32, v22, "start to load a built-in bundle as fallback", v23, 2u);
    MEMORY[0x1C694B7A0](v23, -1, -1);
  }

  v24 = *(v1 + v12);
  v25 = *((*v14 & *v24) + 0x88);
  v26 = v24;
  v25(1);

  v27 = *(v1 + v12);
  v28 = *((*v14 & *v27) + 0x78);
  v29 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  v30 = v27;
  v28();

  sub_1C566B63C(v7);
  (*(v3 + 8))(v7, v2);
}

uint64_t sub_1C5729E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[63] = a6;
  v7[64] = a7;
  v7[61] = a4;
  v7[62] = a5;
  v8 = *(*(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) - 8) + 64) + 15;
  v7[65] = swift_task_alloc();
  v9 = type metadata accessor for WebPlacecardBridgeReply(0);
  v7[66] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[67] = swift_task_alloc();
  v11 = type metadata accessor for WebPlacecardBridge(0);
  v7[68] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[69] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[70] = v13;
  *v13 = v7;
  v13[1] = sub_1C5729F40;

  return sub_1C572A570();
}

uint64_t sub_1C5729F40(uint64_t a1)
{
  v2 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C572A040, 0, 0);
}

uint64_t sub_1C572A040()
{
  v30 = v0;
  v1 = *(v0 + 488);
  sub_1C572B15C(*(v0 + 568), *(v0 + 496), (v0 + 16));
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 552);
  v3 = *(v0 + 496);
  v4 = sub_1C584F2C0();
  __swift_project_value_buffer(v4, qword_1EC18FA38);
  sub_1C5743990(v3, v2, type metadata accessor for WebPlacecardBridge);
  v5 = sub_1C584F2A0();
  v6 = sub_1C584F990();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 552);
  if (v7)
  {
    v9 = *(v0 + 544);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge);
    v12 = sub_1C584F160();
    v14 = v13;
    sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge);
    v15 = sub_1C5649518(v12, v14, &v29);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C5620000, v5, v6, "Replying to JavaScript message %s with response context", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C694B7A0](v11, -1, -1);
    MEMORY[0x1C694B7A0](v10, -1, -1);
  }

  else
  {

    sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge);
  }

  v16 = *(v0 + 568);
  v17 = *(v0 + 536);
  v18 = *(v0 + 528);
  v19 = *(v0 + 520);
  v21 = *(v0 + 504);
  v20 = *(v0 + 512);
  v22 = *(v0 + 488);
  sub_1C569CA9C(v17);
  sub_1C576E77C(v19);
  sub_1C5696E6C(v19);
  [v22 postNotificationForContentLoadWithEvent_];
  *(v0 + 472) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
  sub_1C5743990(v17, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
  v21(v0 + 448, 6);
  sub_1C57433D8(v0 + 16);

  sub_1C57439F8(v17, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5625230(v0 + 448, &qword_1EC16E790, &unk_1C586A110);
  v24 = *(v0 + 552);
  v25 = *(v0 + 536);
  v26 = *(v0 + 520);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1C572A590()
{
  v60 = v0;
  v1 = [*(v0 + 56) mapItem];
  v2 = [v1 _geoMapItem];
  *(v0 + 64) = v2;

  if (!v2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 56);
    v22 = sub_1C584F2C0();
    __swift_project_value_buffer(v22, qword_1EC18FA38);
    v23 = v21;
    v24 = sub_1C584F2A0();
    v25 = sub_1C584F9B0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 56);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v59 = v28;
      *v27 = 136315138;
      v29 = [v26 mapItem];
      v30 = [v29 name];

      if (v30)
      {
        v31 = sub_1C584F660();
        v33 = v32;
      }

      else
      {
        v31 = 0x64656D616E6E75;
        v33 = 0xE700000000000000;
      }

      v50 = sub_1C5649518(v31, v33, &v59);

      *(v27 + 4) = v50;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C694B7A0](v28, -1, -1);
      MEMORY[0x1C694B7A0](v27, -1, -1);
    }

    v49 = [*(v0 + 56) mapItem];
    goto LABEL_24;
  }

  v3 = [v2 _placeDataAsData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C584EAE0();
    v7 = v6;

    sub_1C566DD84(v5, v7);
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 56);
    v9 = sub_1C584F2C0();
    __swift_project_value_buffer(v9, qword_1EC18FA38);
    v10 = v8;
    v11 = sub_1C584F2A0();
    v12 = sub_1C584F990();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 56);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v59 = v15;
      *v14 = 136315138;
      v16 = [v13 mapItem];
      v17 = [v16 name];

      if (v17)
      {
        v18 = sub_1C584F660();
        v20 = v19;
      }

      else
      {
        v18 = 0x64656D616E6E75;
        v20 = 0xE700000000000000;
      }

      v47 = sub_1C5649518(v18, v20, &v59);

      *(v14 + 4) = v47;
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C694B7A0](v15, -1, -1);
      MEMORY[0x1C694B7A0](v14, -1, -1);
    }

    v48 = [*(v0 + 56) mapItem];
    swift_unknownObjectRelease();
    v49 = v48;
LABEL_24:
    v51 = *(v0 + 8);

    return v51(v49);
  }

  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 56);
  v35 = sub_1C584F2C0();
  *(v0 + 72) = __swift_project_value_buffer(v35, qword_1EC18FA38);
  v36 = v34;
  v37 = sub_1C584F2A0();
  v38 = sub_1C584F990();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 56);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = v41;
    *v40 = 136315138;
    v42 = [v39 mapItem];
    v43 = [v42 name];

    if (v43)
    {
      v44 = sub_1C584F660();
      v46 = v45;
    }

    else
    {
      v44 = 0x64656D616E6E75;
      v46 = 0xE700000000000000;
    }

    v53 = sub_1C5649518(v44, v46, &v59);

    *(v40 + 4) = v53;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1C694B7A0](v41, -1, -1);
    MEMORY[0x1C694B7A0](v40, -1, -1);
  }

  v54 = *(v0 + 56);
  v55 = swift_task_alloc();
  *(v0 + 80) = v55;
  *(v55 + 16) = v54;
  v56 = *(MEMORY[0x1E69E8920] + 4);
  v57 = swift_task_alloc();
  *(v0 + 88) = v57;
  v58 = sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270);
  *v57 = v0;
  v57[1] = sub_1C572AC38;

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0x614D656E69666572, 0xEF29286D65744970, sub_1C57435B4, v55, v58);
}

uint64_t sub_1C572AC38()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1C572AF08;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1C572AD54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C572AD54()
{
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = sub_1C584F2A0();
  v4 = sub_1C584F990();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = [v2 name];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1C584F660();
      v11 = v10;
    }

    else
    {
      v11 = 0xE700000000000000;
      v9 = 0x64656D616E6E75;
    }

    v13 = *(v0 + 64);
    v14 = sub_1C5649518(v9, v11, &v17);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_1C5620000, v3, v4, "Successfully refined map item for %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1C694B7A0](v6, -1, -1);
    MEMORY[0x1C694B7A0](v5, -1, -1);
  }

  else
  {
    v12 = *(v0 + 64);
  }

  swift_unknownObjectRelease();
  v15 = *(v0 + 8);

  return v15(v2);
}

uint64_t sub_1C572AF08()
{
  v31 = v0;
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = v4;
  v6 = v1;
  v7 = sub_1C584F2A0();
  v8 = sub_1C584F9B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315394;
    v12 = [v9 mapItem];
    v13 = [v12 name];

    if (v13)
    {
      v14 = sub_1C584F660();
      v16 = v15;
    }

    else
    {
      v16 = 0xE700000000000000;
      v14 = 0x64656D616E6E75;
    }

    v17 = *(v0 + 96);
    v18 = sub_1C5649518(v14, v16, &v30);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
    v21 = *(v0 + 32);
    v22 = sub_1C584FE10();
    v24 = sub_1C5649518(v22, v23, &v30);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_1C5620000, v7, v8, "Failed to refine map item: %s with error: %s. Proceeding with the original map item.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C694B7A0](v11, -1, -1);
    MEMORY[0x1C694B7A0](v10, -1, -1);
  }

  v25 = *(v0 + 96);
  v26 = *(v0 + 64);
  v27 = [*(v0 + 56) mapItem];

  swift_unknownObjectRelease();
  v28 = *(v0 + 8);

  return v28(v27);
}

void sub_1C572B15C(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = v3;
  v9 = type metadata accessor for WebPlacecardBridge(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MUVGVehicle(0);
  v278 = *(v14 - 8);
  v15 = *(v278 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v282 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v279 = (&v212 - v20);
  v21 = sub_1C584EA90();
  v275 = *(v21 - 8);
  v276 = v21;
  v22 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v270 = &v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v271 = &v212 - v28;
  v269 = a1;
  v29 = [a1 _geoMapItem];
  v258 = a3;
  v259 = v4;
  v256 = a2;
  v257 = v13;
  v250 = v9;
  if (!v29)
  {
LABEL_5:
    if (qword_1EC17B020 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_102;
  }

  v30 = [v29 _placeDataAsData];
  if (!v30)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v31 = v30;
  v32 = sub_1C584EAE0();
  v34 = v33;

  v255 = sub_1C584EAD0();
  v267 = v35;
  swift_unknownObjectRelease();
  v36 = sub_1C566DD84(v32, v34);
  while (1)
  {
    v41 = MEMORY[0x1E69E7D40];
    v42 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xE0);
    v43 = (*MEMORY[0x1E69E7D40] & *v5) + 224;
    v44 = (v42)(v36);
    LODWORD(v283) = (*((*v41 & *v44) + 0x478))();

    v45 = v42();
    LODWORD(v281) = (*((*v41 & *v45) + 0x490))();

    v46 = v42();
    LODWORD(v280) = (*((*v41 & *v46) + 0x4A8))();

    v47 = v42();
    LODWORD(v277) = (*((*v41 & *v47) + 0x4C0))();

    v48 = v42();
    v49 = (*((*v41 & *v48) + 0x4D8))();

    v50 = v42();
    v51 = (*((*v41 & *v50) + 0x4F0))();

    v52 = v42();
    v53 = (*((*v41 & *v52) + 0x508))();

    v54 = v42();
    v55 = (*((*v41 & *v54) + 0x520))();
    v57 = v56;

    v58 = v55;
    v59 = v41;
    v60 = sub_1C5655254(v283 & 1, v281 & 1, v280 & 1, v277 & 1, v49 & 1, v58, v57, v287, v51, v53);
    v273 = v43;
    v274 = v42;
    v61 = (v42)(v60);
    v62 = (*((*v41 & *v61) + 0x328))();

    if (v62 && (v63 = UIImagePNGRepresentation(v62), v62, v63))
    {
      v268 = sub_1C584EAE0();
      v65 = v64;
    }

    else
    {
      v268 = 0;
      v65 = 0xF000000000000000;
    }

    v66 = v274;
    v67 = v274();
    v68 = (*((*v59 & *v67) + 0x220))();

    v69 = v66();
    v70 = (*((*v59 & *v69) + 0x3D0))();
    v265 = v71;

    v72 = v66();
    v266 = (*((*v59 & *v72) + 0x340))();

    v73 = v66();
    v74 = (*((*v59 & *v73) + 0x460))();

    if (v74)
    {
      v75 = [objc_opt_self() axIDStringForTransportType_];
      v254 = sub_1C584F660();
      v264 = v76;

      [v74 etaTravelTime];
      *&v77 = v77;
      v253 = LODWORD(v77);
      v78 = [v74 distanceString];
      if (v78)
      {
        v79 = v78;
        v252 = sub_1C584F660();
        v263 = v80;
      }

      else
      {
        v252 = 0;
        v263 = 0;
      }

      [v74 distance];
      v82 = v81;

      *&v83 = v82;
      v251 = v83;
    }

    else
    {
      v251 = 0;
      v252 = 0;
      v253 = 0;
      v254 = 0;
      v263 = 0;
      v264 = 0;
    }

    v84 = (*((*v59 & *v5) + 0xB0))();
    if (!v84)
    {

      sub_1C574342C(v287);

      sub_1C5743480();
      swift_allocError();
      *v90 = 4;
      swift_willThrow();
      sub_1C566DD70(v268, v65);

      return;
    }

    v85 = v84;
    v249 = v74;
    v245 = [v84 isInSupportedCustomRouteRegionWithSectionController_];
    v86 = v274();
    v87 = (*((*v59 & *v86) + 0x580))();

    v262 = v65;
    v246 = v70;
    if (v87)
    {
      GEOLocationCoordinate2DMake([v87 downloadState], objc_msgSend(v87, sel_downloadProgress));
      v260 = v89;
      v261 = v88;
      swift_unknownObjectRelease();
    }

    else
    {
      v260 = 1;
      v261 = 0;
    }

    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v244 = (v91 + 16);
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    v93 = (v92 + 16);
    v94 = swift_allocObject();
    v94[2] = v92;
    v94[3] = v5;
    v94[4] = v91;
    v286[4] = sub_1C57434D4;
    v286[5] = v94;
    v286[0] = MEMORY[0x1E69E9820];
    v286[1] = 1107296256;
    v286[2] = sub_1C56444F8;
    v286[3] = &block_descriptor_263;
    v95 = _Block_copy(v286);
    v247 = v92;

    v96 = v5;
    v248 = v91;

    v272 = v96;
    [v96 runOnMainThread_];
    _Block_release(v95);
    v97 = [v269 _geoMapItem];
    if (v97)
    {
      v98 = [v97 addressObject];
      swift_unknownObjectRelease();
      v99 = v262;
      v100 = MEMORY[0x1E69E7D40];
      if (v98 && (v101 = [v98 locationAddress], v98, v101))
      {
        v102 = sub_1C584F660();
        v242 = v103;
        v243 = v102;
      }

      else
      {
        v242 = 0xE000000000000000;
        v243 = 0;
      }
    }

    else
    {
      v242 = 0xE000000000000000;
      v243 = 0;
      v99 = v262;
      v100 = MEMORY[0x1E69E7D40];
    }

    swift_beginAccess();
    if (!*v93)
    {
      __break(1u);
      return;
    }

    v240 = *v93;
    v104 = v274;
    v105 = v274();
    v239 = (*((*v100 & *v105) + 0x238))();

    v106 = v104();
    v238 = (*((*v100 & *v106) + 0x2C8))();

    v241 = v68;
    v214 = v85;
    if (v99 >> 60 == 15)
    {
      v236 = 0;
      v237 = 0;
    }

    else
    {
      v108 = v268;
      sub_1C566DCD4(v268, v99);
      v109 = sub_1C584EAD0();
      v236 = v110;
      v237 = v109;
      v107 = sub_1C566DD70(v108, v99);
    }

    v111 = v274;
    v112 = (v274)(v107);
    v113 = (*((*v100 & *v112) + 0x358))();
    v115 = v114;

    if (v115)
    {
      v116 = v113;
    }

    else
    {
      v116 = 0;
    }

    if (v115)
    {
      v117 = v115;
    }

    else
    {
      v117 = 0xE000000000000000;
    }

    v234 = v117;
    v235 = v116;
    v118 = v111();
    v233 = (*((*MEMORY[0x1E69E7D40] & *v118) + 0x280))();

    v119 = v111();
    v232 = (*((*MEMORY[0x1E69E7D40] & *v119) + 0x298))();

    v120 = v111();
    v231 = (*((*MEMORY[0x1E69E7D40] & *v120) + 0x250))();

    v121 = v111();
    v230 = (*((*MEMORY[0x1E69E7D40] & *v121) + 0x2B0))();

    v122 = v111();
    v229 = (*((*MEMORY[0x1E69E7D40] & *v122) + 0x3A0))();

    v123 = v111();
    v228 = (*((*MEMORY[0x1E69E7D40] & *v123) + 0x2E0))();

    v124 = v111();
    v227 = (*((*MEMORY[0x1E69E7D40] & *v124) + 0x2F8))();

    v125 = v111();
    v226 = (*((*MEMORY[0x1E69E7D40] & *v125) + 0x310))();

    v126 = v111();
    v127 = (*((*MEMORY[0x1E69E7D40] & *v126) + 0x3B8))();
    v129 = v128;

    if (v129)
    {
      v130 = v127;
    }

    else
    {
      v130 = 0;
    }

    if (v129)
    {
      v131 = v129;
    }

    else
    {
      v131 = 0xE000000000000000;
    }

    v223 = v131;
    v224 = v130;
    v132 = MEMORY[0x1E69E7D40];
    v133 = [v269 _coordinate];
    v135 = v134;
    v137 = v136;
    v138 = (v111)(v133);
    v225 = (*((*v132 & *v138) + 0x370))();

    v139 = v111();
    v222 = (*((*v132 & *v139) + 0x3E8))();

    v140 = v111();
    v221 = (*((*v132 & *v140) + 0x400))();

    v141 = v111();
    v220 = (*((*v132 & *v141) + 0x418))();

    v142 = v111();
    v219 = (*((*v132 & *v142) + 0x430))();

    v143 = v111();
    v218 = (*((*v132 & *v143) + 0x448))();

    v144 = v111();
    v217 = (*((*v132 & *v144) + 0x538))();

    v145 = v111();
    v146 = v271;
    (*((*v132 & *v145) + 0x388))();

    v148 = v275;
    v147 = v276;
    if ((*(v275 + 48))(v146, 1, v276))
    {
      sub_1C5625230(v146, &unk_1EC16E660, &unk_1C58685F0);
      v215 = 0xE000000000000000;
      v216 = 0;
    }

    else
    {
      v149 = v270;
      (*(v148 + 16))(v270, v146, v147);
      sub_1C5625230(v146, &unk_1EC16E660, &unk_1C58685F0);
      v150 = sub_1C584EA00();
      v215 = v151;
      v216 = v150;
      (*(v148 + 8))(v149, v147);
    }

    v152 = v279;
    v153 = *(v272 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability);
    if (!v153)
    {
      v283 = 0;
      goto LABEL_108;
    }

    v154 = *&v153[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles];
    if (!(v154 >> 62))
    {
      v155 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v155)
      {
        break;
      }

      goto LABEL_52;
    }

    if (v154 < 0)
    {
      v177 = *&v153[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles];
    }

    v155 = sub_1C584FB90();
    if (!v155)
    {
      break;
    }

LABEL_52:
    v277 = v154 & 0xC000000000000001;
    v275 = v154;
    v270 = (v154 + 32);
    v271 = (v154 & 0xFFFFFFFFFFFFFF8);
    v213 = v153;
    v156 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v276 = v155;
    while (1)
    {
      if (v277)
      {
        v157 = MEMORY[0x1C694A320](v156, v275);
      }

      else
      {
        if (v156 >= *(v271 + 2))
        {
          goto LABEL_101;
        }

        v157 = *&v270[8 * v156];
      }

      v158 = v157;
      if (__OFADD__(v156++, 1))
      {
        break;
      }

      v283 = v5;
      sub_1C569690C(v152);
      v160 = [v158 displayName];
      v161 = sub_1C584F660();
      v163 = v162;

      sub_1C56968F4(v161, v163);
      v281 = v158;
      v164 = [v158 supportedConnectors];
      v165 = sub_1C568FD94();
      v166 = *(v165 + 2);
      v280 = v165;
      if (v166)
      {
        v167 = (v165 + 32);
        v168 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v170 = *v167++;
          v169 = v170;
          if (v170 > 4)
          {
            if (v169 <= 6)
            {
              if (v169 == 5)
              {
                if ((v164 & 0x10) != 0)
                {
                  goto LABEL_88;
                }
              }

              else if ((v164 & 0x20) != 0)
              {
                goto LABEL_88;
              }
            }

            else if (v169 == 7)
            {
              if ((v164 & 0x40) != 0)
              {
                goto LABEL_88;
              }
            }

            else if (v169 == 8)
            {
              if ((v164 & 0x80) != 0)
              {
                goto LABEL_88;
              }
            }

            else if ((v164 & 0x100) != 0)
            {
              goto LABEL_88;
            }
          }

          else if (v169 <= 1)
          {
            if (!v169 || (v164 & 1) != 0)
            {
LABEL_88:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v168 = sub_1C5734178(0, *(v168 + 2) + 1, 1, v168);
              }

              v172 = *(v168 + 2);
              v171 = *(v168 + 3);
              if (v172 >= v171 >> 1)
              {
                v168 = sub_1C5734178((v171 > 1), v172 + 1, 1, v168);
              }

              *(v168 + 2) = v172 + 1;
              v168[v172 + 32] = v169;
            }
          }

          else if (v169 == 2)
          {
            if ((v164 & 2) != 0)
            {
              goto LABEL_88;
            }
          }

          else if (v169 == 3)
          {
            if ((v164 & 4) != 0)
            {
              goto LABEL_88;
            }
          }

          else if ((v164 & 8) != 0)
          {
            goto LABEL_88;
          }

          if (!--v166)
          {
            goto LABEL_93;
          }
        }
      }

      v168 = MEMORY[0x1E69E7CC0];
LABEL_93:

      v152 = v279;
      v173 = *v279;

      *v152 = v168;
      sub_1C5743990(v152, v282, type metadata accessor for MUVGVehicle);
      v5 = v283;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C573426C(0, v5[2] + 1, 1, v5, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v174 = v276;
      v176 = v5[2];
      v175 = v5[3];
      if (v176 >= v175 >> 1)
      {
        v5 = sub_1C573426C(v175 > 1, v176 + 1, 1, v5, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v5[2] = v176 + 1;
      sub_1C5743928(v282, v5 + ((*(v278 + 80) + 32) & ~*(v278 + 80)) + *(v278 + 72) * v176, type metadata accessor for MUVGVehicle);
      sub_1C57439F8(v152, type metadata accessor for MUVGVehicle);
      if (v156 == v174)
      {

        v132 = MEMORY[0x1E69E7D40];
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
LABEL_6:
    v37 = sub_1C584F2C0();
    __swift_project_value_buffer(v37, qword_1EC18FA38);
    v38 = sub_1C584F2A0();
    v39 = sub_1C584F9B0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1C5620000, v38, v39, "placeDataAsData is still nil after attempted refinement. Sending empty base64 string placeItem.mapItem in the Context indicating web should use customName and coordinates to show minimal placecard.", v40, 2u);
      MEMORY[0x1C694B7A0](v40, -1, -1);
    }

    v255 = 0;
    v267 = 0xE000000000000000;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_107:
  v283 = v5;
LABEL_108:
  v281 = [v269 _geoAddress];
  v178 = v274;
  v179 = v274();
  v180 = v132;
  v181 = (*((*v132 & *v179) + 0x550))();

  v182 = v178();
  v183 = (*((*v132 & *v182) + 0x568))();

  v184 = v178();
  v185 = (*((*v180 & *v184) + 0x598))();

  if (v185)
  {
    v186 = [v185 getDevices];
    swift_unknownObjectRelease();
    v187 = v249;
    if (v186)
    {
      sub_1C5626E40(0, &unk_1EC170A78, off_1E82161A8);
      v185 = sub_1C584F770();
    }

    else
    {
      v185 = 0;
    }
  }

  else
  {
    v187 = v249;
  }

  v188 = sub_1C568F900();
  v190 = v260;
  v189 = v261;
  sub_1C5743594(v261, v260);
  v191 = v266;
  v282 = v266;
  v284 = v187 == 0;
  *&v210 = v215;
  *(&v209 + 1) = v216;
  *(&v208 + 1) = v265;
  *&v208 = v246;
  *(&v207 + 1) = v223;
  *&v207 = v224;
  *&v211 = v189;
  *(&v211 + 1) = v190;
  *(&v210 + 1) = v283;
  *&v209 = v217;
  *(&v206 + 1) = v236;
  *&v206 = v237;
  sub_1C5770A1C(v255, v267, v243, v242, v240, v241, v239 & 1, v238, v288, v206, v235, v234, v233 & 1, v232 & 1, v231, v230, v229 & 1, v245, v228 & 1, v227 & 1, v226 & 1, v207, v135, v137, 0, v208, v191, v225 & 1, v222 & 1, v221 & 1, v220 & 1, v219 & 1, v218 & 1, v254, v264, v253, (v253 | (v284 << 32)) >> 32, v252, v263, v251, (v251 | (v284 << 32)) >> 32, v287, v209, v210, v211, v281, v181, 0, v183 & 1, v185, v188 & 1);
  memcpy(v285, v288, sizeof(v285));
  v192 = v244;
  swift_beginAccess();
  v193 = *v192;
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v194 = sub_1C584F2C0();
  __swift_project_value_buffer(v194, qword_1EC18FA38);
  v195 = v257;
  sub_1C5743990(v256, v257, type metadata accessor for WebPlacecardBridge);
  v196 = sub_1C584F2A0();
  v197 = sub_1C584F990();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v289 = v199;
    *v198 = 136315138;
    sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge);
    v200 = sub_1C584F160();
    v201 = v195;
    v203 = v202;
    sub_1C57439F8(v201, type metadata accessor for WebPlacecardBridge);
    v204 = sub_1C5649518(v200, v203, &v289);

    *(v198 + 4) = v204;
    _os_log_impl(&dword_1C5620000, v196, v197, "Replying to JavaScript message %s with response context", v198, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v199);
    MEMORY[0x1C694B7A0](v199, -1, -1);
    MEMORY[0x1C694B7A0](v198, -1, -1);
    sub_1C566DD70(v268, v262);

    sub_1C57435A4(v261, v260);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C566DD70(v268, v262);
    sub_1C57435A4(v261, v260);

    swift_unknownObjectRelease();
    sub_1C57439F8(v195, type metadata accessor for WebPlacecardBridge);
  }

  v205 = v258;
  memcpy(v258, v285, 0x168uLL);
  v205[360] = v193;
}

void sub_1C572D0F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedService];
  if (v10)
  {
    v11 = v10;
    v12 = [a2 mapItem];
    [v12 _coordinate];
    v14 = v13;
    v16 = v15;

    v17 = [v11 ticketForReverseGeocodeCoordinate:0 traits:{v14, v16}];
    if (v17)
    {
      (*(v5 + 16))(v9, a1, v4);
      v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v19 = swift_allocObject();
      (*(v5 + 32))(v19 + v18, v9, v4);
      aBlock[4] = sub_1C57435BC;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C567AB00;
      aBlock[3] = &block_descriptor_270;
      v20 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v17 submitWithHandler:v20 networkActivity:0];
      swift_unknownObjectRelease_n();
      _Block_release(v20);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C572D35C(uint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = type metadata accessor for WebPlacecardBridgeReply(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v26 - v22;
  sub_1C56466CC(a1, v13, &qword_1EC170A90, &unk_1C58783D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C5625230(v13, &qword_1EC170A90, &unk_1C58783D0);
    v28 = 0u;
    v29 = 0u;
    v27(&v28, 2);
  }

  else
  {
    sub_1C5743928(v13, v23, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
    sub_1C569CA9C(v8);
    sub_1C5743990(v23, v20, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
    sub_1C5697094(v20);
    *(&v29 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    sub_1C5743990(v8, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    v27(&v28, 6);
    sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C57439F8(v23, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  }

  return sub_1C5625230(&v28, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C572D634(uint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = type metadata accessor for WebPlacecardBridgeReply(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v26 - v22;
  sub_1C56466CC(a1, v13, &unk_1EC170A60, &qword_1C586B0E0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C5625230(v13, &unk_1EC170A60, &qword_1C586B0E0);
    v28 = 0u;
    v29 = 0u;
    v27(&v28, 2);
  }

  else
  {
    sub_1C5743928(v13, v23, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    sub_1C569CA9C(v8);
    sub_1C5743990(v23, v20, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    sub_1C5697274(v20);
    *(&v29 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    sub_1C5743990(v8, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    v27(&v28, 6);
    sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C57439F8(v23, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  }

  return sub_1C5625230(&v28, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C572D90C(char a1, void (*a2)(__int128 *, uint64_t))
{
  if (a1)
  {
    v9 = 0u;
    v10 = 0u;
    v3 = 6;
  }

  else
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v4 = sub_1C584F2C0();
    __swift_project_value_buffer(v4, qword_1EC18FA38);
    v5 = sub_1C584F2A0();
    v6 = sub_1C584F9B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C5620000, v5, v6, "Perform action failed", v7, 2u);
      MEMORY[0x1C694B7A0](v7, -1, -1);
    }

    v9 = 0u;
    v10 = 0u;
    v3 = 3;
  }

  a2(&v9, v3);
  return sub_1C5625230(&v9, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C572DA48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *a3;
    v11 = sub_1C5694DE4();
    v13 = v12;
    v14 = objc_opt_self();
    sub_1C5694E2C();
    v24 = a5;
    v15 = a4;
    v16 = sub_1C584F630();

    v17 = [v14 _mapsui_systemImageNamed_];

    v18 = sub_1C5646814(v10, v11, v13, v17, 0, -1);

    v19 = v18;
    sub_1C584FC50();

    MEMORY[0x1C6949D90](v15, v24);
    v20 = sub_1C584F630();

    [v19 setAccessibilityIdentifier_];

    v21 = sub_1C5695040();
    sub_1C572DC6C(0, 0xE000000000000000, v21, v22, 2);

    return v19;
  }

  else
  {
    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    return sub_1C584FA70();
  }
}

uint64_t sub_1C572DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v33 - v29;
  sub_1C569B3C8(&v33 - v29);

  sub_1C569C488(a1, a2);

  sub_1C569C4A0(a3, a4);
  sub_1C569789C(v21);
  sub_1C569A8D8(4);
  sub_1C5743990(v30, v27, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C569A908(v16);
  sub_1C569B438(v27);
  sub_1C569AAB0(v16);
  sub_1C569A908(v16);
  sub_1C569B22C(v27);
  sub_1C569C4B8(a5);
  sub_1C569B438(v27);
  sub_1C569AAB0(v16);
  v31 = *(v6 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v21, 0, 0);

  sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  return sub_1C57439F8(v30, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
}

void sub_1C572DED0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1C56954CC(v12);
    v15 = [v14 mapItem];
    sub_1C5774F00(v15);
    v17 = v16;

    sub_1C57439F8(v12, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    if (v17)
    {
      sub_1C5695114(v7);
      v18 = sub_1C5695040();
      v20 = v19;
      sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
      v21 = sub_1C56952EC();
      sub_1C572DC6C(v18, v20, v21, v22, 1);

      v23 = *&v14[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
      type metadata accessor for MUPlaceActionFeedbackEnvironment();
      v24 = a2;
      v25 = v23;
      v26 = sub_1C56433CC(a2);
      MUPlaceActionDispatcher.performAction(for:environment:completion:)(v17, v26, 0, 0);

      v14 = v26;
    }
  }
}

void sub_1C572E0F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();
    if (v2)
    {
      v3 = v2;
      sub_1C5696D18();
      sub_1C5696D48();
      sub_1C5696D78();
      sub_1C5696DA8();
      v9 = objc_allocWithZone(MUDevice);
      v4 = sub_1C584F630();

      v5 = sub_1C584F630();

      v6 = sub_1C584F630();

      v7 = sub_1C584F630();

      v8 = [v9 initWithName:v4 symbolName:v5 deviceID:v6 model:v7];

      [v3 sectionController:v1 didSelectSendToDevice:v8];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1C572E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v73 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v72 = &v65 - v7;
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v17 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v65 - v19;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5743990(a1, v20, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v22 = *(v13 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v69 = v20;
  sub_1C5743928(v20, v24 + v23, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5743990(a1, v17, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v68 = v14;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  sub_1C5743928(v17, v26 + v23, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C564898C(GEOLocationCoordinate2DMake, 0, sub_1C5742CFC, v24, sub_1C5742EDC, v26, sub_1C5742F9C, v27, v75);
  if (sub_1C5694E44())
  {
    v28 = sub_1C5695040();
    v66 = v29;
    v67 = v28;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = *(&v75[0] + 1);
    v31 = v69;
    sub_1C5743990(a1, v69, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v32 = (v22 + 88) & ~v22;
    v33 = (v68 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    v35 = v75[1];
    *(v34 + 24) = v75[0];
    *(v34 + 40) = v35;
    v36 = v75[3];
    *(v34 + 56) = v75[2];
    *(v34 + 72) = v36;
    sub_1C5743928(v31, v34 + v32, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v37 = (v34 + v33);
    v38 = v66;
    *v37 = v67;
    v37[1] = v38;

    v39 = sub_1C5694E2C();
    v41 = v40;
    v42 = sub_1C5695040();
    v44 = v43;
    v45 = v72;
    sub_1C5716754(v42);
    v63 = v42;
    v46 = v73;
    sub_1C57163A4(v45, sub_1C5743F18, v34, 2, v39, v41, 0, 0, v73, v63, v44, 1970169165, 0xE400000000000000);

LABEL_5:
    v61 = type metadata accessor for PlaceActionBarLayoutItem(0);
    return (*(*(v61 - 8) + 56))(v46, 0, 1, v61);
  }

  v47 = v72;
  v48 = v73;
  v70 = sub_1C5694E2C();
  v50 = v49;
  sub_1C5694E98(v71);
  v51 = sub_1C5695040();
  v53 = v52;
  sub_1C5774F00(0);
  if (v54)
  {
    v55 = v54;
    v56 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x50);
    v57 = v54;
    v56(&v74);
    v58 = MUPlaceActionDispatcher.ActionType.axID.getter();
    v60 = v59;
    sub_1C5716754(v58);
    v64 = v58;
    v46 = v48;
    sub_1C57163A4(v47, v55, 0, 0, v70, v50, 0, 0, v48, v51, v53, v64, v60);

    sub_1C57439F8(v71, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    goto LABEL_5;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

void sub_1C572E914(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1C56954CC(v7);
    v10 = [v9 mapItem];
    sub_1C5774F00(v10);
    v12 = v11;

    sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    if (v12)
    {
      v13 = sub_1C5695040();
      v15 = v14;
      v16 = sub_1C56952EC();
      sub_1C572DC6C(v13, v15, v16, v17, 1);

      v18 = *&v9[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
      type metadata accessor for MUPlaceActionFeedbackEnvironment();
      v19 = a2;
      v20 = v18;
      v21 = sub_1C56433CC(a2);
      MUPlaceActionDispatcher.performAction(for:environment:completion:)(v12, v21, 0, 0);

      v9 = v21;
    }
  }
}

id sub_1C572EAC4(unint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v39 - v16;
  if (!a1)
  {
    v47 = 0u;
    v48 = 0u;
    a2(&v47, 6);
    return sub_1C5625230(&v47, &qword_1EC16E790, &unk_1C586A110);
  }

  v40 = v14;
  v43 = a3;
  sub_1C569CA9C(&v39 - v16);
  sub_1C5697574(v10);
  sub_1C569758C(v10);
  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_25:
    v19 = sub_1C584FB90();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v10;
  v42 = v17;
  v44 = a2;
  if (!v19)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v36 = v41;
    v35 = v42;
    sub_1C56973E0(v41);
    v37 = *v36;

    *v36 = v46;
    sub_1C569758C(v36);
    *(&v48 + 1) = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    sub_1C5743990(v35, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    v44(&v47, 6);
    sub_1C57439F8(v35, type metadata accessor for WebPlacecardBridgeReply);
    return sub_1C5625230(&v47, &qword_1EC16E790, &unk_1C586A110);
  }

  v20 = 0;
  v45 = a1 & 0xC000000000000001;
  v46 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v45)
    {
      v21 = MEMORY[0x1C694A320](v20, a1);
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        goto LABEL_24;
      }

      v21 = *(a1 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v24 = v18;
    result = [v21 _geoMapItem];
    if (!result)
    {
      break;
    }

    v26 = a1;
    v27 = [result _placeDataAsData];
    result = swift_unknownObjectRelease();
    if (!v27)
    {
      goto LABEL_27;
    }

    v28 = sub_1C584EAE0();
    v30 = v29;

    a2 = sub_1C584EAD0();
    v17 = v31;
    sub_1C566DD84(v28, v30);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1C5638228(0, *(v46 + 2) + 1, 1, v46);
    }

    a1 = v26;
    v10 = *(v46 + 2);
    v32 = *(v46 + 3);
    v18 = v24;
    if (v10 >= v32 >> 1)
    {
      v46 = sub_1C5638228((v32 > 1), v10 + 1, 1, v46);
    }

    v33 = v46;
    *(v46 + 2) = v10 + 1;
    v34 = &v33[16 * v10];
    *(v34 + 4) = a2;
    *(v34 + 5) = v17;
    ++v20;
    if (v23 == v19)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C572EE34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1C584F570();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C584F5B0();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v27, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
  v26 = sub_1C584F9F0();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a1;
  v18[4] = a4;
  v18[5] = a2;
  aBlock[4] = sub_1C5742BB0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C56444F8;
  aBlock[3] = &block_descriptor_223;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  v21 = a1;
  v22 = a4;

  sub_1C584F590();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5742CB4(&qword_1EC16D0E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
  sub_1C5664E38();
  sub_1C584FB50();
  v23 = v26;
  MEMORY[0x1C694A0B0](0, v17, v12, v19);
  _Block_release(v19);

  (*(v28 + 8))(v12, v8);
  return (*(v13 + 8))(v17, v27);
}

id sub_1C572F11C(void *a1, void (*a2)(__int128 *, uint64_t))
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WebPlacecardBridgeReply(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v26 = 0u;
    v27 = 0u;
    a2(&v26, 6);
    return sub_1C5625230(&v26, &qword_1EC16E790, &unk_1C586A110);
  }

  v14 = a1;
  sub_1C569CA9C(v13);
  sub_1C5697574(v8);
  sub_1C569758C(v8);
  result = [v14 _geoMapItem];
  if (result)
  {
    v25 = a2;
    v16 = [result _placeDataAsData];
    result = swift_unknownObjectRelease();
    if (v16)
    {
      v17 = sub_1C584EAE0();
      v19 = v18;

      v20 = sub_1C584EAD0();
      v22 = v21;
      sub_1C566DD84(v17, v19);
      sub_1C56973E0(v8);
      sub_1C569A834(v20, v22);
      sub_1C569758C(v8);
      *(&v27 + 1) = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
      sub_1C5743990(v13, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      v25(&v26, 6);

      sub_1C57439F8(v13, type metadata accessor for WebPlacecardBridgeReply);
      return sub_1C5625230(&v26, &qword_1EC16E790, &unk_1C586A110);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C572F370(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v5 = sub_1C584F2C0();
    __swift_project_value_buffer(v5, qword_1EC18FA38);
    v6 = a2;
    v7 = sub_1C584F2A0();
    v8 = sub_1C584F9B0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1C5620000, v7, v8, "MapItem Fetching Error: %@", v9, 0xCu);
      sub_1C5625230(v10, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v10, -1, -1);
      MEMORY[0x1C694B7A0](v9, -1, -1);
    }
  }

  return a3();
}

uint64_t sub_1C572F4EC(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v7 = sub_1C584F2C0();
    __swift_project_value_buffer(v7, qword_1EC18FA38);
    v8 = a2;
    v9 = sub_1C584F2A0();
    v10 = sub_1C584F9B0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1C5620000, v9, v10, "MapItem Fetching Error: %@", v11, 0xCu);
      sub_1C5625230(v12, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v12, -1, -1);
      MEMORY[0x1C694B7A0](v11, -1, -1);
    }
  }

  sub_1C5691FA0();
  sub_1C56F4950();
  sub_1C584F730();
  sub_1C584F730();
  if (v17 == v16)
  {
    [a1 _markTransitInfoUpdated];
  }

  return a4(a1);
}

id sub_1C572F6D8(void *a1, void *a2, void (*a3)(__int128 *, uint64_t))
{
  v6 = type metadata accessor for WebPlacecardBridgeReply(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v21 = sub_1C584F2C0();
    __swift_project_value_buffer(v21, qword_1EC18FA38);
    v22 = a2;
    v23 = sub_1C584F2A0();
    v24 = sub_1C584F9B0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      if (a2)
      {
        v27 = a2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v25 + 4) = v28;
      *v26 = v29;
      _os_log_impl(&dword_1C5620000, v23, v24, "MapItem Fetching Error: %@", v25, 0xCu);
      sub_1C5625230(v26, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v26, -1, -1);
      MEMORY[0x1C694B7A0](v25, -1, -1);
    }

    v30 = 0u;
    v31 = 0u;
    a3(&v30, 2);
    return sub_1C5625230(&v30, &qword_1EC16E790, &unk_1C586A110);
  }

  v11 = a1;
  sub_1C569CA9C(v10);
  result = [v11 _geoMapItem];
  if (result)
  {
    v13 = [result _placeDataAsData];
    result = swift_unknownObjectRelease();
    if (v13)
    {
      v14 = sub_1C584EAE0();
      v16 = v15;

      v17 = sub_1C584EAD0();
      v19 = v18;
      sub_1C566DD84(v14, v16);
      sub_1C5697740(v17, v19);
      *(&v31 + 1) = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      sub_1C5743990(v10, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      a3(&v30, 6);

      sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridgeReply);
      return sub_1C5625230(&v30, &qword_1EC16E790, &unk_1C586A110);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C572F9EC(unint64_t result, void *a2, void (*a3)(_OWORD *, uint64_t), uint64_t a4)
{
  if (a2 || !result)
  {
    goto LABEL_12;
  }

  v7 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v13 = result;
    v14 = sub_1C584FB90();
    result = v13;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v15 = sub_1C584F2C0();
    __swift_project_value_buffer(v15, qword_1EC18FA38);
    v16 = a2;
    v17 = sub_1C584F2A0();
    v18 = sub_1C584F9B0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      if (a2)
      {
        v21 = a2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v19 + 4) = v22;
      *v20 = v23;
      _os_log_impl(&dword_1C5620000, v17, v18, "Error while fetching mapItem: %@ or empty mapItem", v19, 0xCu);
      sub_1C5625230(v20, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v20, -1, -1);
      MEMORY[0x1C694B7A0](v19, -1, -1);
    }

    memset(v24, 0, sizeof(v24));
    a3(v24, 2);
    return sub_1C5625230(v24, &qword_1EC16E790, &unk_1C586A110);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1C694A320](0, result);
  }

  else
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(result + 32);
  }

  v9 = v8;
  v10 = *sub_1C5764F70();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = *(*v10 + 128);

  v12(v9, sub_1C57433D0, v11);
}

uint64_t sub_1C572FCB4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  v6 = type metadata accessor for WebPlacecardBridgeReply(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    sub_1C569CA9C(v10);
    sub_1C5697854(a1, a2);
    *(&v18 + 1) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_1C5743990(v10, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    a3(&v17, 6);
    sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridgeReply);
  }

  else
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v12 = sub_1C584F2C0();
    __swift_project_value_buffer(v12, qword_1EC18FA38);
    v13 = sub_1C584F2A0();
    v14 = sub_1C584F9B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C5620000, v13, v14, "empty route snapshot", v15, 2u);
      MEMORY[0x1C694B7A0](v15, -1, -1);
    }

    v17 = 0u;
    v18 = 0u;
    a3(&v17, 2);
  }

  return sub_1C5625230(&v17, &qword_1EC16E790, &unk_1C586A110);
}

void sub_1C572FEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(a1, a2, a3);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updatePlacecard()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v6);
  sub_1C569A8D8(8);
  v7 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v6, 0, 0);

  v8 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  sub_1C5718EA0();
  sub_1C57439F8(v6, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.cleanPlacecard()()
{
  v1 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v5);
  sub_1C569A8D8(9);
  v6 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v5, 0, 0);

  sub_1C57439F8(v5, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

uint64_t MUWebBasedPlacecardSectionController.handleNativeUITap(for:)(uint64_t a1)
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v17);
  sub_1C569A8D8(7);
  sub_1C569BA18(v12);
  sub_1C569A908(v7);
  sub_1C569BA34(v12);
  sub_1C569AAB0(v7);
  sub_1C569A908(v7);
  sub_1C569B894(v12);
  if (a1)
  {
    v18 = 2 * (a1 == 1);
  }

  else
  {
    v18 = 1;
  }

  sub_1C569C758(v18);
  sub_1C569BA34(v12);
  sub_1C569AAB0(v7);
  v19 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v17, 0, 0);

  return sub_1C57439F8(v17, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateUserData()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v164 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v154 - v18;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v158 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v166 = &v154 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v160 = &v154 - v30;
  v31 = sub_1C584EA90();
  v162 = *(v31 - 8);
  v163 = v31;
  v32 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v169 = (&v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v168 = *(v35 - 8);
  v36 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v39 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v40 - 8, v42);
  v45 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v154 - v47;
  v49 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v50 = *(*(v49 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v49 - 8, v51);
  v159 = &v154 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v57 = &v154 - v56;
  v58 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v55))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v59 = sub_1C584F2C0();
    __swift_project_value_buffer(v59, qword_1EC18FA38);
    v169 = sub_1C584F2A0();
    v60 = sub_1C584F990();
    if (os_log_type_enabled(v169, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1C5620000, v169, v60, "Skip updating UserData because the webView is still loading", v61, 2u);
      MEMORY[0x1C694B7A0](v61, -1, -1);
    }

    v62 = v169;

    return;
  }

  v155 = v16;
  v156 = v19;
  v157 = v6;
  v63 = sub_1C5698000(v57);
  v64 = (*v58 & *v0) + 224;
  v161 = *((*v58 & *v0) + 0xE0);
  v167 = v64;
  v65 = v161(v63);
  v66 = (*((*v58 & *v65) + 0x2B0))();

  if (v66)
  {
    sub_1C57716F4(v66, v48);
    sub_1C5743990(v48, v45, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
    sub_1C5699F04(v45);

    v67 = sub_1C57439F8(v48, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  }

  v68 = v161;
  v69 = v161(v67);
  v70 = MEMORY[0x1E69E7D40];
  v71 = (*((*MEMORY[0x1E69E7D40] & *v69) + 0x238))();

  v72 = sub_1C569997C(v71 & 1);
  v73 = v68(v72);
  v74 = (*((*v70 & *v73) + 0x538))();

  if (v74 >= 3)
  {
    v75 = 0;
  }

  else
  {
    v75 = v74;
  }

  v165 = v57;
  v76 = sub_1C569A100(v75);
  v77 = v68(v76);
  v78 = (*((*v70 & *v77) + 0x250))();

  v79 = v164;
  v80 = v166;
  v81 = v169;
  if (v78)
  {
    if (v78 >> 62)
    {
      v82 = sub_1C584FB90();
      if (v82)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v82 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v82)
      {
LABEL_17:
        v154 = v1;
        v170 = MEMORY[0x1E69E7CC0];
        sub_1C5734448(0, v82 & ~(v82 >> 63), 0);
        if (v82 < 0)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v83 = 0;
        v84 = v170;
        do
        {
          if ((v78 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x1C694A320](v83, v78);
          }

          else
          {
            v85 = *(v78 + 8 * v83 + 32);
          }

          v86 = v85;
          sub_1C569A368(v39);
          v87 = [v86 category];
          v88 = sub_1C584F660();
          v90 = v89;

          sub_1C569A318(v88, v90);
          v91 = [v86 value];
          LODWORD(v87) = sub_1C584FE60();

          sub_1C569A330(v87);
          v170 = v84;
          v93 = *(v84 + 16);
          v92 = *(v84 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_1C5734448(v92 > 1, v93 + 1, 1);
            v84 = v170;
          }

          ++v83;
          *(v84 + 16) = v93 + 1;
          sub_1C5743928(v39, v84 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v93, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
          v81 = v169;
        }

        while (v82 != v83);

        v1 = v154;
        v79 = v164;
        v80 = v166;
        goto LABEL_28;
      }
    }

    v84 = MEMORY[0x1E69E7CC0];
LABEL_28:
    sub_1C569A070(v84);
    v70 = MEMORY[0x1E69E7D40];
  }

  v94 = v161;
  v95 = (v161)();
  v96 = v160;
  (*((*v70 & *v95) + 0x268))();

  v98 = v162;
  v97 = v163;
  if ((*(v162 + 48))(v96, 1, v163) == 1)
  {
    v99 = sub_1C5625230(v96, &unk_1EC16E660, &unk_1C58685F0);
    v100 = v157;
  }

  else
  {
    (*(v98 + 32))(v81, v96, v97);
    v101 = sub_1C584EAA0();
    v103 = v102;
    v104 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1C566DCD4(v101, v103);
    v105 = sub_1C584EAC0();
    v106 = [v104 initWithData_];

    sub_1C566DD84(v101, v103);
    if (v106)
    {
      v107 = UIImagePNGRepresentation(v106);
      v100 = v157;
      if (v107)
      {
        v108 = v107;
        v109 = sub_1C584EAE0();
        v111 = v110;

        v112 = sub_1C584EAD0();
        sub_1C569A0B8(v112, v113);

        v114 = v109;
        v70 = MEMORY[0x1E69E7D40];
        v115 = v111;
        v94 = v161;
        sub_1C566DD84(v114, v115);
        sub_1C566DD84(v101, v103);
        v99 = (*(v162 + 8))(v169, v163);
      }

      else
      {
        (*(v162 + 8))(v169, v163);

        v99 = sub_1C566DD84(v101, v103);
      }

      v80 = v166;
    }

    else
    {
      (*(v162 + 8))(v169, v163);
      v99 = sub_1C566DD84(v101, v103);
      v80 = v166;
      v100 = v157;
    }
  }

  v116 = (v94)(v99);
  v117 = (*((*v70 & *v116) + 0x358))();
  v119 = v118;

  if (v119)
  {
    sub_1C569A148(v80);
    v121 = sub_1C569A67C(v117, v119);
    v122 = (v94)(v121);
    v123 = (*((*v70 & *v122) + 0x328))();

    if (v123)
    {
      v124 = UIImagePNGRepresentation(v123);

      if (v124)
      {
        v125 = sub_1C584EAE0();
        v127 = v126;

        v128 = sub_1C584EAD0();
        sub_1C569A694(v128, v129);
        v130 = v127;
        v80 = v166;
        sub_1C566DD84(v125, v130);
      }
    }

    v131 = v158;
    sub_1C5743990(v80, v158, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
    sub_1C569A1AC(v131);
    v120 = sub_1C57439F8(v80, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  }

  v132 = (v94)(v120);
  v133 = (*((*v70 & *v132) + 0x328))();

  if (!v133)
  {
    goto LABEL_49;
  }

  v135 = UIImagePNGRepresentation(v133);

  if (!v135)
  {
    goto LABEL_49;
  }

  v136 = sub_1C584EAE0();
  v138 = v137;

  v139 = v94();
  v140 = (*((*v70 & *v139) + 0x2C8))();

  if (v140 < 0)
  {
    v134 = sub_1C566DD84(v136, v138);
    goto LABEL_49;
  }

  sub_1C5699AB8(v156);
  v141 = sub_1C584EAD0();
  v143 = sub_1C569A464(v141, v142);
  v144 = (v94)(v143);
  v145 = (*((*v70 & *v144) + 0x2C8))();

  if ((v145 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (HIDWORD(v145))
  {
LABEL_54:
    __break(1u);
    return;
  }

  v146 = v156;
  sub_1C569A47C(v145);
  v147 = v155;
  sub_1C5743990(v146, v155, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5699B24(v147);
  sub_1C566DD84(v136, v138);
  v134 = sub_1C57439F8(v146, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
LABEL_49:
  v148 = (v94)(v134);
  v149 = (*((*v70 & *v148) + 0x220))();

  v150 = v165;
  if (v149)
  {
    v151 = sub_1C5770BCC(v149);

    sub_1C5699A18(v151);
  }

  sub_1C569789C(v79);
  sub_1C569A8D8(2);
  v152 = v159;
  sub_1C5743990(v150, v159, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C569A908(v100);
  sub_1C569AF54(v152);
  sub_1C569AAB0(v100);
  v153 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v79, 0, 0);

  sub_1C57439F8(v79, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v150, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateUserPreferences()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v19);
  v24 = (*((*v22 & *v23) + 0x550))();

  sub_1C5770BD0(v24, v21);
  sub_1C569789C(v11);
  sub_1C569A8D8(11);
  sub_1C5743990(v21, v17, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C569A908(v6);
  sub_1C569BDE8(v17);
  sub_1C569AAB0(v6);
  v25 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v11, 0, 0);

  sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateDirectionsMetadata()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v55 - v20;
  v22 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v19))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v23 = sub_1C584F2C0();
    __swift_project_value_buffer(v23, qword_1EC18FA38);
    v56 = sub_1C584F2A0();
    v24 = sub_1C584F990();
    if (os_log_type_enabled(v56, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C5620000, v56, v24, "Skip updating DirectionsMetadata because the webView is still loading", v25, 2u);
      MEMORY[0x1C694B7A0](v25, -1, -1);
    }

    v26 = v56;
  }

  else
  {
    v27 = sub_1C56984DC(v21);
    v28 = *((*v22 & *v0) + 0xE0);
    v29 = v28(v27);
    v30 = (*((*v22 & *v29) + 0x478))();

    v31 = sub_1C569C20C(v30 & 1);
    v32 = v28(v31);
    v33 = (*((*v22 & *v32) + 0x490))();

    v34 = sub_1C569C17C(v33 & 1);
    v35 = v28(v34);
    v36 = (*((*v22 & *v35) + 0x4A8))();

    v37 = sub_1C569C14C(v36 & 1);
    v38 = v28(v37);
    v39 = (*((*v22 & *v38) + 0x4C0))();

    v40 = sub_1C569C1AC(v39 & 1);
    v41 = v28(v40);
    v42 = (*((*v22 & *v41) + 0x4D8))();

    v43 = sub_1C569C1DC(v42 & 1);
    v44 = v28(v43);
    v45 = (*((*v22 & *v44) + 0x4F0))();

    v46 = sub_1C569C23C(v45);
    v47 = v28(v46);
    v48 = (*((*v22 & *v47) + 0x508))();

    v49 = sub_1C569C2D8(v48);
    v50 = v28(v49);
    v51 = (*((*v22 & *v50) + 0x520))();
    v53 = v52;

    if (v53)
    {
      sub_1C569C274(v51, v53);
    }

    sub_1C569789C(v11);
    sub_1C569A8D8(3);
    sub_1C5743990(v21, v17, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
    sub_1C569A908(v6);
    sub_1C569B0C0(v17);
    sub_1C569AAB0(v6);
    v54 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
    sub_1C566BB7C(v11, 0, 0);

    sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
    sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  }
}

void sub_1C5731EE8()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v41 - v20;
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v19);
  v24 = (*((*v22 & *v23) + 0x460))();

  if (v24)
  {
    if ([v24 hasFoundDistanceOrETA])
    {
      sub_1C5698308(v21);
      v25 = [objc_opt_self() axIDStringForTransportType_];
      v26 = sub_1C584F660();
      v28 = v27;

      sub_1C569A6AC(v26, v28);
      [v24 etaTravelTime];
      *&v29 = v29;
      sub_1C569A6C4(*&v29);
      v30 = [v24 distanceString];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1C584F660();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      sub_1C569A6FC(v32, v34);
      [v24 distance];
      *&v39 = v39;
      sub_1C569A754(*&v39);
      sub_1C569789C(v11);
      sub_1C569A8D8(1);
      sub_1C5743990(v21, v17, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
      sub_1C569A908(v6);
      sub_1C569ADE8(v17);
      sub_1C569AAB0(v6);
      v40 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
      sub_1C566BB7C(v11, 0, 0);

      sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
      return;
    }
  }

  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v35 = sub_1C584F2C0();
  __swift_project_value_buffer(v35, qword_1EC18FA38);
  v42 = sub_1C584F2A0();
  v36 = sub_1C584F990();
  if (os_log_type_enabled(v42, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C5620000, v42, v36, "Empty ETAProvider or distance not found", v37, 2u);
    MEMORY[0x1C694B7A0](v37, -1, -1);
  }

  v38 = v42;
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.handleCardExpansion(progress:height:)(Swift::Float progress, Swift::Float height)
{
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v26 - v23;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B0))(v22, progress);
  sub_1C569AC64(v24);
  sub_1C569C0DC(progress);
  sub_1C569C114(height);
  sub_1C569789C(v14);
  sub_1C569A8D8(0);
  sub_1C5743990(v24, v20, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C569A908(v9);
  sub_1C569AC7C(v20);
  sub_1C569AAB0(v9);
  v25 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v14, 0, 0);

  sub_1C57439F8(v14, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v24, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.handleCardExpansionForVerifiedHeader(progress:)(Swift::Float progress)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))();
  *&v3 = progress;

  [v1 callBridgeMethodForExpansionProgressWithProgress_];
}

uint64_t sub_1C5732754(uint64_t a1)
{
  v2 = type metadata accessor for MUVGVehicle(0);
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v57 - v9);
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v60 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v57 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v58 = (&v57 - v25);
  sub_1C569B5A4((&v57 - v25));
  v26 = *(a1 + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);
  if (v26 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v28 = 0;
    v68 = v26 & 0xC000000000000001;
    v63 = v26 & 0xFFFFFFFFFFFFFF8;
    v64 = v26;
    v62 = v26 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    v66 = v10;
    v67 = v7;
    v65 = i;
    while (1)
    {
      if (v68)
      {
        v30 = MEMORY[0x1C694A320](v28, v64);
      }

      else
      {
        if (v28 >= *(v63 + 16))
        {
          goto LABEL_51;
        }

        v30 = *(v62 + 8 * v28);
      }

      v31 = v30;
      if (__OFADD__(v28++, 1))
      {
        break;
      }

      sub_1C569690C(v10);
      v33 = [v31 displayName];
      v34 = sub_1C584F660();
      v36 = v35;

      sub_1C56968F4(v34, v36);
      v70 = v31;
      v37 = [v31 supportedConnectors];
      v38 = sub_1C568FD94();
      v39 = *(v38 + 2);
      if (v39)
      {
        v40 = (v38 + 32);
        v41 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v43 = *v40++;
          v42 = v43;
          if (v43 > 4)
          {
            if (v42 <= 6)
            {
              if (v42 == 5)
              {
                if ((v37 & 0x10) != 0)
                {
                  goto LABEL_39;
                }
              }

              else if ((v37 & 0x20) != 0)
              {
                goto LABEL_39;
              }
            }

            else if (v42 == 7)
            {
              if ((v37 & 0x40) != 0)
              {
                goto LABEL_39;
              }
            }

            else if (v42 == 8)
            {
              if ((v37 & 0x80) != 0)
              {
                goto LABEL_39;
              }
            }

            else if ((v37 & 0x100) != 0)
            {
              goto LABEL_39;
            }
          }

          else if (v42 <= 1)
          {
            if (!v42 || (v37 & 1) != 0)
            {
LABEL_39:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v41 = sub_1C5734178(0, *(v41 + 2) + 1, 1, v41);
              }

              v45 = *(v41 + 2);
              v44 = *(v41 + 3);
              if (v45 >= v44 >> 1)
              {
                v41 = sub_1C5734178((v44 > 1), v45 + 1, 1, v41);
              }

              *(v41 + 2) = v45 + 1;
              v41[v45 + 32] = v42;
            }
          }

          else if (v42 == 2)
          {
            if ((v37 & 2) != 0)
            {
              goto LABEL_39;
            }
          }

          else if (v42 == 3)
          {
            if ((v37 & 4) != 0)
            {
              goto LABEL_39;
            }
          }

          else if ((v37 & 8) != 0)
          {
            goto LABEL_39;
          }

          if (!--v39)
          {
            goto LABEL_44;
          }
        }
      }

      v41 = MEMORY[0x1E69E7CC0];
LABEL_44:

      v10 = v66;
      v46 = *v66;

      *v10 = v41;
      v7 = v67;
      sub_1C5743990(v10, v67, type metadata accessor for MUVGVehicle);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1C573426C(0, v29[2] + 1, 1, v29, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v47 = v70;
      v49 = v29[2];
      v48 = v29[3];
      v26 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v29 = sub_1C573426C(v48 > 1, v49 + 1, 1, v29, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v29[2] = v26;
      sub_1C5743928(v7, v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v49, type metadata accessor for MUVGVehicle);
      sub_1C57439F8(v10, type metadata accessor for MUVGVehicle);
      if (v28 == v65)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v50 = v58;
  v51 = *v58;

  *v50 = v29;
  v52 = v60;
  sub_1C569789C(v60);
  sub_1C569A8D8(5);
  v53 = v57;
  sub_1C5743990(v50, v57, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  v54 = v59;
  sub_1C569A908(v59);
  sub_1C569B5BC(v53);
  sub_1C569AAB0(v54);
  v55 = *(v61 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v52, 0, 0);

  sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  return sub_1C57439F8(v50, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateDownloadButton()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v43 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v43 - v24;
  v26 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v23))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v27 = sub_1C584F2C0();
    __swift_project_value_buffer(v27, qword_1EC18FA38);
    v44 = sub_1C584F2A0();
    v28 = sub_1C584F990();
    if (os_log_type_enabled(v44, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1C5620000, v44, v28, "Skip updating offlineMapProvider because the webView is still loading", v29, 2u);
      MEMORY[0x1C694B7A0](v29, -1, -1);
    }

    v30 = v44;
  }

  else
  {
    v31 = *((*v26 & *v0) + 0xE0);
    v44 = ((*v26 & *v0) + 224);
    v32 = v31();
    v33 = (*((*v26 & *v32) + 0x580))();

    if (v33)
    {
      GEOLocationCoordinate2DMake([v33 downloadState], objc_msgSend(v33, sel_downloadProgress));
      v35 = v34;
      v36 = v31;
      v38 = v37;
      swift_unknownObjectRelease();
      sub_1C5774BBC(v35, v38, v21);

      v39 = sub_1C5743928(v21, v25, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
      v40 = (v36)(v39);
      v41 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x448))();

      sub_1C569C544(v41 & 1);
      sub_1C569789C(v11);
      sub_1C569A8D8(6);
      sub_1C5743990(v25, v17, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
      sub_1C569A908(v6);
      sub_1C569B728(v17);
      sub_1C569AAB0(v6);
      v42 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
      sub_1C566BB7C(v11, 0, 0);

      sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      sub_1C57439F8(v25, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
    }
  }
}

id MUWebBasedPlacecardSectionController.etaProviderUpdated(_:)(id result)
{
  if (result)
  {
    return [v1 updateETAProvider];
  }

  return result;
}

id MUWebBasedPlacecardSectionController.evChargerAvailabilityProvider(_:didUpdateAvailability:)(uint64_t a1, void *a2)
{
  v3 = *&v2[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability];
  *&v2[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability] = a2;
  v4 = a2;

  return [v2 updateEVChargerWithAvailability_];
}

void MUWebBasedPlacecardSectionController.didTapCloseButton(in:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
  type metadata accessor for MUPlaceActionDispatcher.CloseAction();
  v2 = MUPlaceActionDispatcher.CloseAction.__allocating_init()();
  type metadata accessor for MUPlaceActionFeedbackEnvironment();
  v3 = sub_1C56433CC(0);
  MUPlaceActionDispatcher.performAction(for:environment:completion:)(v2, v3, 0, 0);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.didUpdateHeight()()
{
  v1 = [v0 delegate];
  if (v1)
  {
    [v1 placeSectionControllerRequestsLayoutChange_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.didSelectMenuItem(itemId:menuItemId:menuType:)(Swift::String itemId, Swift::String menuItemId, Swift::Int menuType)
{
  object = menuItemId._object;
  countAndFlagsBits = menuItemId._countAndFlagsBits;
  v5 = itemId._object;
  v6 = itemId._countAndFlagsBits;
  v7 = sub_1C57042D8(menuType);
  if (v7 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_1C572DC6C(v6, v5, countAndFlagsBits, object, v8);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.webViewIsCurrent(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v24 - v21;
  sub_1C569BBA0(&v24 - v21);
  sub_1C569C7E4(a1);
  sub_1C569789C(v13);
  sub_1C569A8D8(10);
  sub_1C5743990(v22, v19, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C569A908(v8);
  sub_1C569BBBC(v19);
  sub_1C569AAB0(v8);
  v23 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v13, 0, 0);

  sub_1C57439F8(v13, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
}

void *MUWebBasedPlacecardSectionController.webBasedPlacecardVC(_:didScroll:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB0))();
  if (result)
  {
    [result sectionController:v2 didScroll:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5733B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C584F630();
  v8 = sub_1C584F630();
  [v5 didSelectMenuItemWithItemId:v7 menuItemId:v8 menuType:a5];
}

uint64_t sub_1C5733C20()
{
  *v0;
  *v0;
  sub_1C584F6C0();
}

uint64_t sub_1C5733D34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C5742274();
  *a2 = result;
  return result;
}

void sub_1C5733D64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746E656D756772;
  v4 = 0x4164696C61766E69;
  v5 = 0x80000001C589A870;
  v6 = 0x80000001C589A890;
  v7 = 0xD000000000000016;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = v6;
  }

  if (v2 != 1)
  {
    v4 = 0x7461447974706D65;
    v3 = 0xE900000000000061;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001C589A840;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id MUWebBasedPlacecardSectionController.sectionView.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController) view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *MUWebBasedPlacecardSectionController.sectionViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  v2 = v1;
  return v1;
}

Swift::OpaquePointer_optional __swiftcall MUWebBasedPlacecardSectionController.draggableContent()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

void sub_1C5733F8C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController;
  v3 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController);
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  type metadata accessor for MUWebBasedDebugPanelViewController();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_1C56540A4(sub_1C57422F4, v4);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  [*(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController) presentViewController:v5 animated:1 completion:0];
  v6 = *(v1 + v2);
  *(v1 + v2) = v5;
}

uint64_t sub_1C57340D4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA38);
  __swift_project_value_buffer(v0, qword_1EC18FA38);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_1C584F2B0();
}

char *sub_1C5734178(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A48, &qword_1C58783B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1C573426C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1C5734448(size_t a1, int64_t a2, char a3)
{
  result = sub_1C5734468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C5734468(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A20, &qword_1C58783A0);
  v10 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C5734640(SEL *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  v6 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x460);
  v10 = v7;
  v11 = v9();

  if (v11)
  {
    [v11 *a1];
  }

  v12 = *(v5 + v6);
  v13 = *((*v8 & *v12) + 0x1C0);
  v14 = v12;
  v15 = v13();

  if (v15)
  {
    a2(v5);
  }

  v16 = *(v5 + v6);
  v17 = *((*v8 & *v16) + 0x580);
  v18 = v16;
  v19 = v17();

  if (v19)
  {
    [v19 *a1];
    swift_unknownObjectRelease();
  }
}

void *sub_1C57347EC(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController] = 0;
  v10 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager;
  v11 = sub_1C5768270();
  v12 = *v11;
  *&v5[v10] = *v11;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset] = 0;
  v13 = &v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress];
  *v13 = 0;
  v13[4] = 1;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher] = a2;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge] = a3;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration] = a4;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController__mapItem] = a1;
  type metadata accessor for MUWebBasedPlacecardViewController();
  v14 = v12;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = sub_1C566AF74();
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController] = MUWebBasedPlacecardViewController.__allocating_init(webView:)(v19);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for MUWebBasedPlacecardSectionController();
  v20 = objc_msgSendSuper2(&v32, sel_initWithMapItem_, v18);
  [v20 setupWebContentViewController];
  v21 = sub_1C566AEC8();
  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v20) + 0xE0);
  v24 = (v23)(v21);
  v25 = (*((*v22 & *v24) + 0x460))();

  if (v25)
  {
    [v25 addObserver_];
  }

  v26 = v23();
  v27 = (*((*v22 & *v26) + 0x1C0))();

  if (v27)
  {
    MUEVChargerAvailabilityProvider.registerObserver(_:)(v20);
  }

  v28 = v23();
  v29 = (*((*v22 & *v28) + 0x580))();

  if (v29)
  {
    [v29 addObserver_];
    swift_unknownObjectRelease();
  }

  [v20 loadWebViewFromResourceURL];
  v30 = [objc_opt_self() defaultCenter];
  [v30 addObserver:v20 selector:sel_contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [v20 addTestingObserverIfNeeded];
  return v20;
}

void sub_1C5734B88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1C584EA20();
    [v1 loadPlaceCardWithUrl_];
  }
}

void sub_1C5734C0C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v43[-1] - v9;
  v11 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v43[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56466CC(a1, v45, &qword_1EC16E790, &unk_1C586A110);
  if (v46)
  {
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1C5743928(v10, v16, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
      v19 = sub_1C584F140();
      v21 = v20;
      v22 = sub_1C584EAD0();
      v24 = v23;
      sub_1C566DD84(v19, v21);
      v46 = MEMORY[0x1E69E6158];
      v45[0] = v22;
      v45[1] = v24;
      if (a2 > 3u)
      {
        if (a2 == 4)
        {
          v25 = 0x80000001C589A890;
        }

        else
        {
          v25 = 0;
          if (a2 == 5)
          {
            v25 = 0xE700000000000000;
          }
        }
      }

      else if (a2 == 1)
      {
        v25 = 0xEF746E656D756772;
      }

      else if (a2 == 2)
      {
        v25 = 0xE900000000000061;
      }

      else
      {
        v25 = 0x80000001C589A870;
      }

      sub_1C56466CC(v45, v43, &qword_1EC16E790, &unk_1C586A110);
      v34 = v44;
      if (v44)
      {
        v35 = __swift_project_boxed_opaque_existential_1(v43, v44);
        v36 = *(v34 - 8);
        v37 = *(v36 + 64);
        MEMORY[0x1EEE9AC00](v35, v35);
        v39 = &v43[-1] - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v39);
        v40 = sub_1C584FDB0();
        (*(v36 + 8))(v39, v34);
        __swift_destroy_boxed_opaque_existential_1(v43);
        if (v25)
        {
LABEL_35:
          v41 = sub_1C584F630();
LABEL_38:
          (*(a3 + 16))(a3, v40, v41);

          swift_unknownObjectRelease();

          sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5625230(v45, &qword_1EC16E790, &unk_1C586A110);
          return;
        }
      }

      else
      {
        v40 = 0;
        if (v25)
        {
          goto LABEL_35;
        }
      }

      v41 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    sub_1C5625230(v45, &qword_1EC16E790, &unk_1C586A110);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_1C5625230(v10, &qword_1EC170928, &unk_1C5878148);
  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v18 = 0x80000001C589A890;
    }

    else if (a2 == 5)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (a2 == 1)
  {
    v18 = 0xEF746E656D756772;
  }

  else if (a2 == 2)
  {
    v18 = 0xE900000000000061;
  }

  else
  {
    v18 = 0x80000001C589A870;
  }

  sub_1C56466CC(a1, v45, &qword_1EC16E790, &unk_1C586A110);
  v26 = v46;
  if (!v46)
  {
    v32 = 0;
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_25:
    v33 = 0;
    goto LABEL_26;
  }

  v27 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v27);
  v31 = &v43[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31);
  v32 = sub_1C584FDB0();
  (*(v28 + 8))(v31, v26);
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_23:
  v33 = sub_1C584F630();
LABEL_26:
  (*(a3 + 16))(a3, v32, v33);

  swift_unknownObjectRelease();
}

void sub_1C5735318(uint64_t *a1, void *a2, const void *a3)
{
  v47 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C5743EF8;
  *(v25 + 24) = v24;
  v26 = *a1;
  if (!*(*a1 + 16))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v34 = qword_1EC17B020;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_1C584F2C0();
    __swift_project_value_buffer(v35, qword_1EC18FA38);
    v36 = sub_1C584F2A0();
    v37 = sub_1C584F9B0();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_18;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "empty vendorId for getAttributionData bridge call";
    goto LABEL_17;
  }

  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_1C5743990(v26 + v27, v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a3);
  _Block_copy(a3);

  sub_1C56907E0(v9);
  sub_1C57439F8(v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v46 = sub_1C5695B18();
  v29 = v28;
  sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  if (!*(v26 + 16))
  {
LABEL_13:

    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v45 = sub_1C584F2C0();
    __swift_project_value_buffer(v45, qword_1EC18FA38);
    v36 = sub_1C584F2A0();
    v37 = sub_1C584F9B0();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_18;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "invalid argument for getAttributionData bridge call";
LABEL_17:
    _os_log_impl(&dword_1C5620000, v36, v37, v39, v38, 2u);
    MEMORY[0x1C694B7A0](v38, -1, -1);
LABEL_18:

    memset(v48, 0, sizeof(v48));
    _Block_copy(a3);
    sub_1C5734C0C(v48, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(v48, &qword_1EC16E790, &unk_1C586A110);

    goto LABEL_19;
  }

  sub_1C5743990(v26 + v27, v20, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C56907E0(v9);
  sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v30 = sub_1C5695B30();
  sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  LOBYTE(v48[0]) = v30 & 1;
  v49 = 1;
  sub_1C56F5740();
  if ((sub_1C584F620() & 1) == 0)
  {
    if (*(v26 + 16))
    {
      sub_1C5743990(v26 + v27, v16, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56907E0(v9);
      sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v40 = sub_1C5695B30();
      sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
      LOBYTE(v48[0]) = v40 & 1;
      v49 = 0;
      if (sub_1C584F620())
      {
        v41 = *sub_1C5764F70();

        v42 = [v47 mapItem];
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1C5743EE0;
        *(v43 + 24) = v25;
        v44 = *(*v41 + 112);

        v44(v46, v29, v42, sub_1C5743F24, v43);

        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

  v31 = *sub_1C5764F70();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1C5743EE0;
  *(v32 + 24) = v25;
  v33 = *(*v31 + 120);

  v33(v46, v29, sub_1C5743F24, v32);

LABEL_12:

LABEL_19:
  _Block_release(a3);
}

uint64_t sub_1C57359D8(uint64_t *a1, char *a2, const void *a3)
{
  v41 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v40 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v40 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1C5743EF8;
  *(v27 + 24) = v26;
  _Block_copy(a3);

  BOOL = GEOConfigGetBOOL();
  v29 = *a1;
  if (!BOOL)
  {
    goto LABEL_13;
  }

  if (!*(v29 + 16))
  {
    goto LABEL_13;
  }

  sub_1C5743990(v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5690AF4(v16);
  sub_1C57439F8(v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v30 = sub_1C56921A8();
  sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  LOBYTE(v44[0]) = v30;
  v43 = 52;
  sub_1C56F4B10();
  if ((sub_1C584F620() & 1) == 0)
  {
LABEL_13:
    if (*(v29 + 16))
    {
      sub_1C5743990(v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v22, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5690AF4(v10);
      sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v31 = v40;
      sub_1C5743928(v10, v40, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      v32 = v41;
      v33 = [v41 mapItem];
      sub_1C5774F00(v33);
      v35 = v34;

      if (v35)
      {
        v36 = *&v32[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
        type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v37 = sub_1C56433CC(0);
        v38 = swift_allocObject();
        *(v38 + 16) = sub_1C5743EE0;
        *(v38 + 24) = v27;

        MUPlaceActionDispatcher.performAction(for:environment:completion:)(v35, v37, sub_1C5743F28, v38);

        sub_1C57439F8(v31, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        goto LABEL_10;
      }

      sub_1C57439F8(v31, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    }

    memset(v44, 0, sizeof(v44));
    _Block_copy(a3);
    sub_1C5734C0C(v44, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(v44, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_10;
  }

  [v41 presentDebugPanel];
LABEL_10:
}

void sub_1C5735E58(uint64_t *a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v46 - v22;
  v24 = *a1;
  if (*(*a1 + 16))
  {
    v47 = v4;
    v48 = v8;
    sub_1C5743990(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v14, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a2);
    v49 = a2;
    _Block_copy(a2);
    sub_1C56911C4(v20);
    sub_1C57439F8(v14, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v20, v23, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
    v46 = v23;
    v25 = *v23;
    v26 = *(*v23 + 16);
    if (v26)
    {
      v27 = (v25 + 40);
      v28 = MEMORY[0x1E69E7CC0];
      do
      {
        v29 = *(v27 - 1);
        v30 = *v27;

        v31 = sub_1C584EAB0();
        v33 = v32;

        if (v33 >> 60 != 15)
        {
          v34 = objc_allocWithZone(MEMORY[0x1E69A2660]);
          sub_1C566DCD4(v31, v33);
          v35 = sub_1C584EAC0();
          v36 = [v34 initWithEncodedData_];

          sub_1C566DD70(v31, v33);
          v37 = *(**sub_1C5764F70() + 96);

          v38 = v37(v36);
          v40 = v39;

          if (v40)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_1C5638228(0, *(v28 + 2) + 1, 1, v28);
            }

            v42 = *(v28 + 2);
            v41 = *(v28 + 3);
            if (v42 >= v41 >> 1)
            {
              v28 = sub_1C5638228((v41 > 1), v42 + 1, 1, v28);
            }

            sub_1C566DD70(v31, v33);
            *(v28 + 2) = v42 + 1;
            v43 = &v28[16 * v42];
            *(v43 + 4) = v38;
            *(v43 + 5) = v40;
          }

          else
          {
            sub_1C566DD70(v31, v33);
          }
        }

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v44 = v48;
    sub_1C569CA9C(v48);
    sub_1C56976F8(v28);
    *(&v51 + 1) = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    sub_1C5743990(v44, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    a2 = v49;
    _Block_copy(v49);
    sub_1C5734C0C(&v50, 6u, a2);
    _Block_release(a2);
    sub_1C57439F8(v44, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C57439F8(v46, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
  }

  else
  {
    _Block_copy(a2);
    _Block_copy(a2);
    v50 = 0u;
    v51 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v50, 1u, a2);
    _Block_release(a2);
  }

  sub_1C5625230(&v50, &qword_1EC16E790, &unk_1C586A110);
  _Block_release(a2);
  _Block_release(a2);
}

void sub_1C57362FC(uint64_t *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v13 = *(*(refreshed - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](refreshed - 8, v14);
  v17 = (v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (v64 - v19);
  v21 = swift_allocObject();
  v21[2] = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1C5743EF8;
  *(v22 + 24) = v21;
  v23 = *a1;
  if (*(*a1 + 16))
  {
    v64[0] = a2;
    v65 = v22;
    sub_1C5743990(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a3);
    _Block_copy(a3);
    v66 = a3;
    _Block_copy(a3);
    v64[1] = v21;

    sub_1C5691024(v17);
    sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v17, v20, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
    v24 = 0;
    v67 = v20;
    v25 = *v20;
    v26 = MEMORY[0x1E69E7CC0];
    *&v72 = MEMORY[0x1E69E7CC0];
    v27 = *(v25 + 16);
    v28 = v25 + 40;
    v68 = v25 + 40;
LABEL_3:
    v29 = (v28 + 16 * v24);
    while (v27 != v24)
    {
      if (v24 >= *(v25 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      ++v24;
      v30 = v29 + 2;
      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = objc_allocWithZone(MEMORY[0x1E69A21C0]);

      v34 = sub_1C584F630();

      v35 = [v33 initWithEncodedMapsIdentifier_];

      v29 = v30;
      if (v35)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v26 = v72;
        v28 = v68;
        goto LABEL_3;
      }
    }

    *&v72 = MEMORY[0x1E69E7CC0];
    v25 = v26 & 0xFFFFFFFFFFFFFF8;
    if (!(v26 >> 62))
    {
      v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_42:
    v37 = sub_1C584FB90();
LABEL_12:
    v38 = 0;
    v68 = MEMORY[0x1E69E7CC0];
    while (v37 != v38)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1C694A320](v38, v26);
      }

      else
      {
        if (v38 >= *(v25 + 16))
        {
          goto LABEL_41;
        }

        v39 = *(v26 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_40;
      }

      v42 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      ++v38;
      if (v42)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v68 = v72;
        v38 = v41;
      }
    }

    v44 = v68;
    if (v68 >> 62)
    {
      v45 = sub_1C584FB90();
    }

    else
    {
      v45 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v65;
    v46 = v66;
    if (v45 < 1)
    {

      v72 = 0u;
      v73 = 0u;
      _Block_copy(v46);
      sub_1C5734C0C(&v72, 6u, v46);
      _Block_release(v46);
    }

    else
    {
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1C5743EE0;
      *(v48 + 24) = v47;

      v71 = sub_1C5691FA0();
      v70 = 2;
      sub_1C56F4950();
      sub_1C584F730();
      sub_1C584F730();
      if (v72 != v69)
      {
        v61 = *sub_1C567A818();
        v62 = swift_allocObject();
        *(v62 + 16) = sub_1C5743F30;
        *(v62 + 24) = v48;
        v63 = *(*v61 + 80);

        v63(v44, sub_1C5743EEC, v62);

        goto LABEL_33;
      }

      v49 = v64[0];
      v50 = [v64[0] mapItem];
      v51 = [v50 identifier];

      if (v51)
      {
        v52 = MEMORY[0x1E69E7D40];
        v53 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0xE0))();
        v54 = (*((*v52 & *v53) + 0x1F0))();

        if (v54)
        {
          v55 = *sub_1C567A818();
          v56 = swift_allocObject();
          *(v56 + 16) = v54;
          *(v56 + 24) = v51;
          v57 = *(*v55 + 104);

          v58 = v54;
          v59 = v51;
          v57();

LABEL_33:

LABEL_37:
          sub_1C57439F8(v67, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);

          _Block_release(v46);
          v60 = v46;
          goto LABEL_38;
        }
      }

      v72 = 0u;
      v73 = 0u;
      _Block_copy(v46);
      sub_1C5734C0C(&v72, 6u, v46);
      _Block_release(v46);
    }

    sub_1C5625230(&v72, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_37;
  }

  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);

  v72 = 0u;
  v73 = 0u;
  _Block_copy(a3);
  sub_1C5734C0C(&v72, 6u, a3);
  _Block_release(a3);
  sub_1C5625230(&v72, &qword_1EC16E790, &unk_1C586A110);

  _Block_release(a3);
  v60 = a3;
LABEL_38:
  _Block_release(v60);
}

void sub_1C5736B28(uint64_t *a1, void *a2, const void *a3)
{
  v44 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v43 = *(refreshed - 8);
  v12 = *(v43 + 64);
  v14 = MEMORY[0x1EEE9AC00](refreshed - 8, v13);
  v15 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (&v41 - v18);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v41 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C5743EF8;
  *(v24 + 24) = v23;
  if (*(*a1 + 16))
  {
    sub_1C5743990(*a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a3);
    _Block_copy(a3);

    _Block_copy(a3);

    sub_1C5691024(v19);
    sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v19, v22, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
    if (*(*v22 + 16))
    {
      _Block_copy(a3);

      sub_1C57362FC(a1, v44, a3);
      _Block_release(a3);
    }

    else
    {
      sub_1C5691F88();
      v25 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
      v26 = sub_1C584F630();

      v27 = [v25 initWithEncodedMapsIdentifier_];

      if (v27)
      {
        v28 = objc_allocWithZone(MEMORY[0x1E696F280]);
        v44 = v27;
        v42 = [v28 initWithGEOMapItemIdentifier_];
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1C5743EE0;
        *(v29 + 24) = v24;

        v47 = sub_1C5691FA0();
        v46 = 1;
        sub_1C56F4950();
        sub_1C584F730();
        sub_1C584F730();
        v30 = v48;
        v31 = v45;
        v32 = *sub_1C567A818();
        if (v30 == v31)
        {
          v33 = swift_allocObject();
          *(v33 + 16) = sub_1C5743F2C;
          *(v33 + 24) = v29;
          v34 = *(*v32 + 112);

          v35 = v42;
          v34(v42, sub_1C5743EE8, v33);
        }

        else
        {
          sub_1C5743990(v22, v15, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
          v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
          v37 = (v12 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
          v38 = swift_allocObject();
          sub_1C5743928(v15, v38 + v36, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
          v39 = (v38 + v37);
          *v39 = sub_1C5743F2C;
          v39[1] = v29;
          v40 = *(*v32 + 88);

          v35 = v42;
          v40(v42, sub_1C5743F10, v38);
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        _Block_copy(a3);
        sub_1C5734C0C(&v48, 6u, a3);
        _Block_release(a3);
        sub_1C5625230(&v48, &qword_1EC16E790, &unk_1C586A110);
      }
    }

    sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  }

  else
  {
    _Block_copy(a3);
    _Block_copy(a3);

    _Block_copy(a3);

    v48 = 0u;
    v49 = 0u;
    _Block_copy(a3);
    sub_1C5734C0C(&v48, 6u, a3);
    _Block_release(a3);
    sub_1C5625230(&v48, &qword_1EC16E790, &unk_1C586A110);
  }

  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_1C5737160(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C5743EF8;
  *(v20 + 24) = v19;
  if (!*(*a1 + 16))
  {
    _Block_copy(a2);

LABEL_6:
    memset(v31, 0, sizeof(v31));
    _Block_copy(a2);
    sub_1C5734C0C(v31, 1u, a2);
    _Block_release(a2);
    sub_1C5625230(v31, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_7;
  }

  sub_1C5743990(*a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a2);

  sub_1C56914DC(v15);
  sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v15, v18, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  sub_1C56920A4();
  v21 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
  v22 = sub_1C584F630();

  v23 = [v21 initWithEncodedMapsIdentifier_];

  if (!v23)
  {
    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
    goto LABEL_6;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
  v25 = *sub_1C567A818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C5867970;
  *(v26 + 32) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1C5743EE0;
  *(v27 + 24) = v20;
  v28 = *(*v25 + 80);

  v29 = v24;

  v28(v26, sub_1C5743EF4, v27);

  sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
LABEL_7:
}

void sub_1C573754C(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - v17;
  if (!*(*a1 + 16))
  {
    _Block_copy(a2);
    _Block_copy(a2);
    _Block_copy(a2);
    v31 = 0u;
    v32 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v31, 1u, a2);
    _Block_release(a2);
    sub_1C5625230(&v31, &qword_1EC16E790, &unk_1C586A110);
LABEL_16:
    _Block_release(a2);
    _Block_release(a2);
    _Block_release(a2);
    return;
  }

  sub_1C5743990(*a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a2);
  _Block_copy(a2);
  _Block_copy(a2);
  sub_1C56916A0(v15);
  sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v15, v18, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  sub_1C5692164();
  v19 = sub_1C584EAB0();
  v21 = v20;

  if (v21 >> 60 == 15)
  {
    v31 = 0u;
    v32 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v31, 2u, a2);
    _Block_release(a2);
LABEL_15:
    sub_1C5625230(&v31, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
    goto LABEL_16;
  }

  v22 = sub_1C584EAC0();
  v23 = sub_1C569217C();
  if (!sub_1C568FFE4(v23))
  {
    goto LABEL_9;
  }

  v24 = sub_1C569217C();
  v25 = sub_1C568FFE4(v24);
  if (v25 < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  v26 = v25;
  if (v25 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    v26 = 6;
  }

  v27 = objc_opt_self();
  [v27 captureWebPlaceCardAnalyticEvent:v22 analyticSessionType:v26];

  v28 = *(*v18 + 16);
  if (!v28)
  {
LABEL_14:
    v31 = 0u;
    v32 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v31, 6u, a2);
    _Block_release(a2);
    sub_1C566DD70(v19, v21);
    goto LABEL_15;
  }

  v29 = (*v18 + 32);
  while (1)
  {
    v30 = *v29++;
    if (v30 < 0)
    {
      break;
    }

    [v27 captureWebPlaceCardFeatureUseCount_usageString_usageBool_];
    if (!--v28)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C57378E8(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v23 - v12;
  if (*(*a1 + 16))
  {
    sub_1C5743990(*a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), &v23 - v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a2);
    _Block_copy(a2);
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v14 = sub_1C584F2C0();
    __swift_project_value_buffer(v14, qword_1EC18FA38);
    sub_1C5743990(v13, v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v15 = sub_1C584F2A0();
    v16 = sub_1C584F9B0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v23 = v18;
      *v17 = 136315138;
      sub_1C5742CB4(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v19 = sub_1C584F160();
      v21 = v20;
      sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v22 = sub_1C5649518(v19, v21, &v23);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1C5620000, v15, v16, "Received web bundle error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1C694B7A0](v18, -1, -1);
      MEMORY[0x1C694B7A0](v17, -1, -1);
    }

    else
    {

      sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    }

    v23 = 0u;
    v24 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v23, 6u, a2);
    _Block_release(a2);
    sub_1C5625230(&v23, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v13, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_release(a2);
    _Block_release(a2);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    sub_1C5734C0C(&v23, 1u, a2);
    sub_1C5625230(&v23, &qword_1EC16E790, &unk_1C586A110);
  }
}

void sub_1C5737C68(uint64_t a1, void *a2, const void *a3)
{
  v188 = a2;
  v186 = a1;
  v4 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v191 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v187 = &v164 - v11;
  v12 = type metadata accessor for PlaceActionBarLayout(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v183 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v184 = &v164 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v180 = &v164 - v22;
  v23 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v177 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v190 = *(v27 - 8);
  v28 = *(v190 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v189 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v173 = &v164 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v171 = &v164 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v170 = (&v164 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v176 = (&v164 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v175 = (&v164 - v46);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v172 = (&v164 - v49);
  MEMORY[0x1EEE9AC00](v48, v50);
  v185 = (&v164 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v53 = *(*(v52 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v52 - 8, v54);
  v57 = &v164 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v55, v58);
  v182 = &v164 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v178 = &v164 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62, v64);
  v174 = &v164 - v66;
  MEMORY[0x1EEE9AC00](v65, v67);
  v69 = &v164 - v68;
  v70 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70 - 8, v73);
  v75 = &v164 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v77 = *(*(v76 - 8) + 64);
  v79 = MEMORY[0x1EEE9AC00](v76 - 8, v78);
  v81 = MEMORY[0x1EEE9AC00](v79, v80);
  v83 = &v164 - v82;
  MEMORY[0x1EEE9AC00](v81, v84);
  v88 = &v164 - v87;
  v89 = *v186;
  if (!*(*v186 + 16))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    memset(v193, 0, sizeof(v193));
    _Block_copy(a3);
    sub_1C5734C0C(v193, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(v193, &qword_1EC16E790, &unk_1C586A110);
    _Block_release(a3);
    v123 = a3;
    goto LABEL_29;
  }

  v166 = v86;
  v167 = v85;
  sub_1C5743990(v89 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v75, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a3);
  v179 = a3;
  _Block_copy(a3);
  sub_1C5691840(v83);
  sub_1C57439F8(v75, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v83, v88, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  v90 = *(v5 + 56);
  v186 = v69;
  v169 = v5 + 56;
  v168 = v90;
  v90(v69, 1, 1, v4);
  v91 = v185;
  sub_1C5695114(v185);
  v92 = sub_1C5694E6C();
  sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v93 = v188;
  v94 = v4;
  v181 = v88;
  if (!v92)
  {
LABEL_14:
    v144 = *v88;
    v145 = *(*v88 + 16);
    if (v145)
    {
      v146 = 0;
      v147 = MEMORY[0x1E69E7CC0];
      while (v146 < *(v144 + 16))
      {
        v148 = v189;
        sub_1C5743990(v144 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v146, v189, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        sub_1C572E2AC(v148, v93, v57);
        sub_1C57439F8(v148, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        if ((*(v5 + 48))(v57, 1, v94) == 1)
        {
          sub_1C5625230(v57, &qword_1EC16FE18, &unk_1C5877850);
        }

        else
        {
          v149 = v187;
          sub_1C5743928(v57, v187, type metadata accessor for PlaceActionBarLayoutItem);
          sub_1C5743928(v149, v191, type metadata accessor for PlaceActionBarLayoutItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_1C573426C(0, v147[2] + 1, 1, v147, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v151 = v147[2];
          v150 = v147[3];
          if (v151 >= v150 >> 1)
          {
            v147 = sub_1C573426C(v150 > 1, v151 + 1, 1, v147, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v147[2] = v151 + 1;
          sub_1C5743928(v191, v147 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v151, type metadata accessor for PlaceActionBarLayoutItem);
          v93 = v188;
        }

        if (v145 == ++v146)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v147 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v152 = v186;
    v153 = v182;
    sub_1C56466CC(v186, v182, &qword_1EC16FE18, &unk_1C5877850);
    v154 = v184;
    sub_1C57162A0(v153, v147, v184);
    type metadata accessor for PlaceActionBarConfiguration();
    v155 = v183;
    sub_1C5743990(v154, v183, type metadata accessor for PlaceActionBarLayout);
    v156 = *(v93 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
    v157 = *(v93 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
    v158 = v156;
    v159 = sub_1C5704684(v155, v157, v156, &off_1F44C6BB0);
    v160 = (*((*MEMORY[0x1E69E7D40] & *v93) + 0xB0))();
    if (v160)
    {
      [v160 sectionController:v93 updateWithActionBarConfiguration:v159];
      swift_unknownObjectRelease();
    }

    memset(v192, 0, sizeof(v192));
    v161 = v179;
    _Block_copy(v179);
    sub_1C5734C0C(v192, 6u, v161);
    _Block_release(v161);

    sub_1C5625230(v192, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v154, type metadata accessor for PlaceActionBarLayout);
    sub_1C5625230(v152, &qword_1EC16FE18, &unk_1C5877850);
    sub_1C57439F8(v181, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    _Block_release(v161);
    v123 = v161;
LABEL_29:
    _Block_release(v123);
    return;
  }

  sub_1C5695114(v91);
  v95 = sub_1C5694E44();
  sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v165 = v4;
  if (v95)
  {
    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = v167;
    sub_1C5743990(v88, v167, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v98 = (*(v166 + 80) + 24) & ~*(v166 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = v96;
    v100 = v99 + v98;
    v88 = v181;
    sub_1C5743928(v97, v100, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C564898C(GEOLocationCoordinate2DMake, 0, sub_1C5743F14, v99, GEOLocationCoordinate2DMake, 0, sub_1C5743F0C, v101, v193);
    sub_1C5695114(v91);
    v102 = *v91;

    sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v103 = v172;
    sub_1C5695114(v172);
    v177 = sub_1C5694DE4();
    v174 = v104;
    sub_1C57439F8(v103, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v105 = objc_opt_self();
    v106 = v175;
    sub_1C5695114(v175);
    sub_1C5694E2C();
    sub_1C57439F8(v106, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v107 = sub_1C584F630();

    v108 = [v105 _mapsui_systemImageNamed_];

    v109 = sub_1C5646814(v102, v177, v174, v108, 0, -1);

    v110 = v176;
    sub_1C5695114(v176);
    v175 = sub_1C5694E2C();
    v177 = v111;
    sub_1C57439F8(v110, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    sub_1C5695114(v91);
    LOBYTE(v107) = sub_1C5694DFC();
    sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v112 = 0;
    v113 = 0;
    if (v107)
    {
      sub_1C5695114(v91);
      v112 = sub_1C5694DE4();
      v113 = v114;
      sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    }

    sub_1C5695114(v91);
    v115 = sub_1C5695040();
    v117 = v116;
    v118 = sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v119 = v180;
    sub_1C5716754(v118);
    v120 = v109;
    v163 = v117;
    v121 = v178;
    sub_1C57163A4(v119, v109, 0, 1, v175, v177, v112, v113, v178, v115, v163, 1970169165, 0xE400000000000000);

    v122 = v186;
    sub_1C5625230(v186, &qword_1EC16FE18, &unk_1C5877850);
    goto LABEL_13;
  }

  sub_1C5695114(v91);
  v124 = sub_1C5694DFC();
  sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  if (v124)
  {
    sub_1C5695114(v91);
    v178 = sub_1C5694DE4();
    v176 = v125;
    sub_1C57439F8(v91, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  }

  else
  {
    v178 = 0;
    v176 = 0;
  }

  v126 = v177;
  v127 = v173;
  v128 = v171;
  v129 = v170;
  sub_1C5695114(v170);
  v185 = sub_1C5694E2C();
  v177 = v130;
  sub_1C57439F8(v129, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5695114(v128);
  sub_1C5694E98(v126);
  sub_1C57439F8(v128, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5695114(v127);
  v131 = sub_1C5695040();
  v175 = v132;
  sub_1C57439F8(v127, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5774F00(0);
  if (v133)
  {
    v134 = v133;
    v135 = *((*MEMORY[0x1E69E7D40] & *v133) + 0x50);
    v136 = v133;
    v135(v193);
    v137 = MUPlaceActionDispatcher.ActionType.axID.getter();
    v139 = v138;
    v140 = v180;
    sub_1C5716754(v137);
    v141 = v174;
    sub_1C57163A4(v140, v134, 0, 0, v185, v177, v178, v176, v174, v131, v175, v137, v139);

    sub_1C57439F8(v126, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    v122 = v186;
    sub_1C5625230(v186, &qword_1EC16FE18, &unk_1C5877850);
    v121 = v141;
    v88 = v181;
LABEL_13:
    v142 = v121;
    v143 = v121;
    v94 = v165;
    v168(v142, 0, 1, v165);
    sub_1C56534F4(v143, v122, &qword_1EC16FE18, &unk_1C5877850);
    v93 = v188;
    goto LABEL_14;
  }

LABEL_31:
  v162 = v179;
  _Block_release(v179);
  _Block_release(v162);
  _Block_release(v162);
  sub_1C584FD00();
  __break(1u);
}