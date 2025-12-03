@interface MapsSuggestionsMeCard
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMeCard:(id)card;
- (MapsSuggestionsMeCard)initWithShortcuts:(id)shortcuts perCNPostalAddress:(id)address hasCorrected:(BOOL)corrected hasGeocoded:(BOOL)geocoded;
- (_BYTE)initWithHomes:(void *)homes works:(void *)works schools:(void *)schools hiddenHomes:(void *)hiddenHomes hiddenWorks:(void *)hiddenWorks hiddenSchools:(void *)hiddenSchools all:(void *)all allIncludingHidden:(void *)self0 perCNPostalAddress:(char)self1 hasCorrect:(char)self2 hasGeocoded:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortcutForCNPostalAddressIdentifier:(id)identifier;
@end

@implementation MapsSuggestionsMeCard

uint64_t __87__MapsSuggestionsMeCard_initWithShortcuts_perCNPostalAddress_hasCorrected_hasGeocoded___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 2 && (objc_msgSend(v2, "isHidden") & 1) == 0)
  {
    v3 = [v2 isSetupPlaceholder] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __87__MapsSuggestionsMeCard_initWithShortcuts_perCNPostalAddress_hasCorrected_hasGeocoded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 3 && (objc_msgSend(v2, "isHidden") & 1) == 0)
  {
    v3 = [v2 isSetupPlaceholder] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __87__MapsSuggestionsMeCard_initWithShortcuts_perCNPostalAddress_hasCorrected_hasGeocoded___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 5 && (objc_msgSend(v2, "isHidden") & 1) == 0)
  {
    v3 = [v2 isSetupPlaceholder] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __87__MapsSuggestionsMeCard_initWithShortcuts_perCNPostalAddress_hasCorrected_hasGeocoded___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 2 && objc_msgSend(v2, "isHidden"))
  {
    v3 = [v2 isSetupPlaceholder] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __87__MapsSuggestionsMeCard_initWithShortcuts_perCNPostalAddress_hasCorrected_hasGeocoded___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 3 && objc_msgSend(v2, "isHidden"))
  {
    v3 = [v2 isSetupPlaceholder] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __87__MapsSuggestionsMeCard_initWithShortcuts_perCNPostalAddress_hasCorrected_hasGeocoded___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 5 && objc_msgSend(v2, "isHidden"))
  {
    v3 = [v2 isSetupPlaceholder] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)shortcutForCNPostalAddressIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_perCNPostalAddress objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqualToMeCard:(id)card
{
  cardCopy = card;
  v5 = cardCopy;
  v14 = 0;
  if (cardCopy)
  {
    if (self == cardCopy || self->_hasCorrected == cardCopy->_hasCorrected && self->_hasGeocoded == cardCopy->_hasGeocoded && ((shortcutsForHome = self->_shortcutsForHome, shortcutsForHome == v5->_shortcutsForHome) || [(NSArray *)shortcutsForHome isEqualToArray:?]) && ((shortcutsForWork = self->_shortcutsForWork, shortcutsForWork == v5->_shortcutsForWork) || [(NSArray *)shortcutsForWork isEqualToArray:?]) && ((shortcutsForSchool = self->_shortcutsForSchool, shortcutsForSchool == v5->_shortcutsForSchool) || [(NSArray *)shortcutsForSchool isEqualToArray:?]) && ((hiddenShortcutsForHome = self->_hiddenShortcutsForHome, hiddenShortcutsForHome == v5->_hiddenShortcutsForHome) || [(NSArray *)hiddenShortcutsForHome isEqualToArray:?]) && ((hiddenShortcutsForWork = self->_hiddenShortcutsForWork, hiddenShortcutsForWork == v5->_hiddenShortcutsForWork) || [(NSArray *)hiddenShortcutsForWork isEqualToArray:?]) && ((hiddenShortcutsForSchool = self->_hiddenShortcutsForSchool, hiddenShortcutsForSchool == v5->_hiddenShortcutsForSchool) || [(NSArray *)hiddenShortcutsForSchool isEqualToArray:?]) && ((shortcutsForAllIncludingHidden = self->_shortcutsForAllIncludingHidden, shortcutsForAllIncludingHidden == v5->_shortcutsForAllIncludingHidden) || [(NSArray *)shortcutsForAllIncludingHidden isEqualToArray:?]) && ((perCNPostalAddress = self->_perCNPostalAddress, perCNPostalAddress == v5->_perCNPostalAddress) || [(NSDictionary *)perCNPostalAddress isEqualToDictionary:?]))
    {
      v14 = 1;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsMeCard *)self isEqualToMeCard:equalCopy];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_hasCorrected)
  {
    v4 = "M";
  }

  else
  {
    v4 = "";
  }

  if (self->_hasGeocoded)
  {
    v5 = "G";
  }

  else
  {
    v5 = "";
  }

  v6 = [v3 initWithFormat:@"MECARD{%s%s} %u Homes (+%u), %u Works (+%u), %u Schools (+%u), %u total", v4, v5, -[NSArray count](self->_shortcutsForHome, "count"), -[NSArray count](self->_hiddenShortcutsForHome, "count"), -[NSArray count](self->_shortcutsForWork, "count"), -[NSArray count](self->_hiddenShortcutsForWork, "count"), -[NSArray count](self->_shortcutsForSchool, "count"), -[NSArray count](self->_hiddenShortcutsForSchool, "count"), -[NSArray count](self->_shortcutsForAllIncludingHidden, "count")];

  return v6;
}

- (_BYTE)initWithHomes:(void *)homes works:(void *)works schools:(void *)schools hiddenHomes:(void *)hiddenHomes hiddenWorks:(void *)hiddenWorks hiddenSchools:(void *)hiddenSchools all:(void *)all allIncludingHidden:(void *)self0 perCNPostalAddress:(char)self1 hasCorrect:(char)self2 hasGeocoded:
{
  v182 = *MEMORY[0x1E69E9840];
  v168 = a2;
  homesCopy = homes;
  worksCopy = works;
  schoolsCopy = schools;
  hiddenHomesCopy = hiddenHomes;
  hiddenWorksCopy = hiddenWorks;
  hiddenSchoolsCopy = hiddenSchools;
  allCopy = all;
  hiddenCopy = hidden;
  if (self)
  {
    v172.receiver = self;
    v172.super_class = MapsSuggestionsMeCard;
    v26 = objc_msgSendSuper2(&v172, sel_init);
    v27 = v26;
    if (v26)
    {
      v26[16] = address;
      v26[17] = correct;
      v28 = [v168 copy];
      v29 = *(v27 + 3);
      *(v27 + 3) = v28;

      v30 = [homesCopy copy];
      v31 = *(v27 + 4);
      *(v27 + 4) = v30;

      v32 = [worksCopy copy];
      v33 = *(v27 + 5);
      *(v27 + 5) = v32;

      v34 = [schoolsCopy copy];
      v35 = *(v27 + 6);
      *(v27 + 6) = v34;

      v36 = [hiddenHomesCopy copy];
      v37 = *(v27 + 7);
      *(v27 + 7) = v36;

      v38 = [hiddenWorksCopy copy];
      v39 = *(v27 + 8);
      *(v27 + 8) = v38;

      v40 = [hiddenSchoolsCopy copy];
      v41 = *(v27 + 9);
      *(v27 + 9) = v40;

      objc_storeStrong(v27 + 10, all);
      v42 = [hiddenCopy copy];
      v43 = *(v27 + 1);
      *(v27 + 1) = v42;

      v44 = *(v27 + 3);
      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v46 = OUTLINED_FUNCTION_2_5();
      if (OUTLINED_FUNCTION_0_2(v46, v47, v48, v49, v50, v51, v52, v53, v139, allCopy, hiddenWorksCopy, hiddenHomesCopy, schoolsCopy, worksCopy, homesCopy, v168, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181))
      {
        OUTLINED_FUNCTION_4_2();
        do
        {
          v54 = 0;
          do
          {
            OUTLINED_FUNCTION_3_2();
            if (!v55)
            {
              objc_enumerationMutation(v44);
            }

            geoMapItem = [*(v174 + 8 * v54) geoMapItem];
            if (geoMapItem)
            {
              OUTLINED_FUNCTION_5_3();
            }

            v54 = v54 + 1;
          }

          while (allCopy != v54);
          allCopy = OUTLINED_FUNCTION_1_2(v57, v58, v59, v60, v61, v62, v63, v64, v140, v144, v148, v152, v156, v160, v165, v169, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181);
        }

        while (allCopy);
      }

      v65 = [all copy];
      v66 = *(v27 + 11);
      *(v27 + 11) = v65;

      v67 = *(v27 + 4);
      v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v69 = OUTLINED_FUNCTION_2_5();
      if (OUTLINED_FUNCTION_0_2(v69, v70, v71, v72, v73, v74, v75, v76, v140, v144, v148, v152, v156, v160, v165, v169, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181))
      {
        OUTLINED_FUNCTION_4_2();
        do
        {
          v77 = 0;
          do
          {
            OUTLINED_FUNCTION_3_2();
            if (!v55)
            {
              objc_enumerationMutation(v67);
            }

            geoMapItem2 = [*(v174 + 8 * v77) geoMapItem];
            if (geoMapItem2)
            {
              OUTLINED_FUNCTION_5_3();
            }

            ++v77;
          }

          while (v65 != v77);
          v65 = OUTLINED_FUNCTION_1_2(v79, v80, v81, v82, v83, v84, v85, v86, v141, v145, v149, v153, v157, v161, v166, v170, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181);
        }

        while (v65);
      }

      v87 = [all copy];
      v88 = *(v27 + 12);
      *(v27 + 12) = v87;

      v89 = *(v27 + 5);
      v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v91 = OUTLINED_FUNCTION_2_5();
      if (OUTLINED_FUNCTION_0_2(v91, v92, v93, v94, v95, v96, v97, v98, v141, v145, v149, v153, v157, v161, v166, v170, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181))
      {
        OUTLINED_FUNCTION_4_2();
        do
        {
          v99 = 0;
          do
          {
            OUTLINED_FUNCTION_3_2();
            if (!v55)
            {
              objc_enumerationMutation(v89);
            }

            geoMapItem3 = [*(v174 + 8 * v99) geoMapItem];
            if (geoMapItem3)
            {
              OUTLINED_FUNCTION_5_3();
            }

            ++v99;
          }

          while (v87 != v99);
          v87 = OUTLINED_FUNCTION_1_2(v101, v102, v103, v104, v105, v106, v107, v108, v142, v146, v150, v154, v158, v162, v167, v171, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181);
        }

        while (v87);
      }

      v109 = [all copy];
      v110 = *(v27 + 13);
      *(v27 + 13) = v109;

      v111 = *(v27 + 9);
      v112 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v113 = OUTLINED_FUNCTION_2_5();
      v121 = OUTLINED_FUNCTION_0_2(v113, v114, v115, v116, v117, v118, v119, v120, v142, v146, v150, v154, v158, v162, v167, v171, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181);
      worksCopy = v163;
      if (v121)
      {
        v122 = v121;
        v123 = *v175;
        do
        {
          for (i = 0; i != v122; ++i)
          {
            if (*v175 != v123)
            {
              objc_enumerationMutation(v111);
            }

            geoMapItem4 = [*(v174 + 8 * i) geoMapItem];
            if (geoMapItem4)
            {
              OUTLINED_FUNCTION_5_3();
            }
          }

          v122 = OUTLINED_FUNCTION_1_2(v126, v127, v128, v129, v130, v131, v132, v133, v143, v147, v151, v155, v159, v163, homesCopy, v168, v172.receiver, v172.super_class, v173, v174, v175, v176, v177, v178, v179, v180, v181);
        }

        while (v122);
      }

      v134 = [all copy];
      v135 = *(v27 + 14);
      *(v27 + 14) = v134;

      if ([*(v27 + 3) count] || objc_msgSend(*(v27 + 4), "count") || objc_msgSend(*(v27 + 6), "count"))
      {
        v136 = 1;
        v27[18] = 1;
        hiddenHomesCopy = v155;
        schoolsCopy = v159;
        allCopy = v147;
        hiddenWorksCopy = v151;
      }

      else
      {
        v138 = [*(v27 + 7) count];
        v27[18] = v138 != 0;
        hiddenHomesCopy = v155;
        schoolsCopy = v159;
        allCopy = v147;
        hiddenWorksCopy = v151;
        v136 = v138 || [*(v27 + 5) count] || objc_msgSend(*(v27 + 8), "count") != 0;
      }

      v27[19] = v136;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (MapsSuggestionsMeCard)initWithShortcuts:(id)shortcuts perCNPostalAddress:(id)address hasCorrected:(BOOL)corrected hasGeocoded:(BOOL)geocoded
{
  addressCopy = address;
  shortcutsCopy = shortcuts;
  v9 = [shortcutsCopy MSg_copyIf:&__block_literal_global_16];
  v10 = [shortcutsCopy MSg_copyIf:&__block_literal_global_18];
  v11 = [shortcutsCopy MSg_copyIf:&__block_literal_global_20];
  v12 = [shortcutsCopy MSg_copyIf:&__block_literal_global_22];
  v13 = [shortcutsCopy MSg_copyIf:&__block_literal_global_24];
  v14 = [shortcutsCopy MSg_copyIf:&__block_literal_global_26];
  v15 = [shortcutsCopy MSg_copyIf:&__block_literal_global_28];
  v16 = [addressCopy copy];

  v17 = [(MapsSuggestionsMeCard *)self initWithHomes:v9 works:v10 schools:v11 hiddenHomes:v12 hiddenWorks:v13 hiddenSchools:v14 all:v15 allIncludingHidden:shortcutsCopy perCNPostalAddress:v16 hasCorrect:corrected hasGeocoded:geocoded];
  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v41 = [MapsSuggestionsMeCard alloc];
  shortcutsForHome = self->_shortcutsForHome;
  if (shortcutsForHome)
  {
    v5 = MEMORY[0x1E695DEC8];
    v6 = shortcutsForHome;
    v42 = [[v5 alloc] initWithArray:v6 copyItems:1];
  }

  else
  {
    v42 = 0;
  }

  shortcutsForWork = self->_shortcutsForWork;
  if (shortcutsForWork)
  {
    v8 = MEMORY[0x1E695DEC8];
    v9 = shortcutsForWork;
    v40 = [[v8 alloc] initWithArray:v9 copyItems:1];
  }

  else
  {
    v40 = 0;
  }

  shortcutsForSchool = self->_shortcutsForSchool;
  if (shortcutsForSchool)
  {
    v12 = MEMORY[0x1E695DEC8];
    v13 = shortcutsForSchool;
    v11 = [[v12 alloc] initWithArray:v13 copyItems:1];
  }

  else
  {
    v11 = 0;
  }

  hiddenShortcutsForHome = self->_hiddenShortcutsForHome;
  if (hiddenShortcutsForHome)
  {
    v16 = MEMORY[0x1E695DEC8];
    v17 = hiddenShortcutsForHome;
    v15 = [[v16 alloc] initWithArray:v17 copyItems:1];
  }

  else
  {
    v15 = 0;
  }

  hiddenShortcutsForWork = self->_hiddenShortcutsForWork;
  if (hiddenShortcutsForWork)
  {
    v20 = MEMORY[0x1E695DEC8];
    v21 = hiddenShortcutsForWork;
    v19 = [[v20 alloc] initWithArray:v21 copyItems:1];
  }

  else
  {
    v19 = 0;
  }

  hiddenShortcutsForSchool = self->_hiddenShortcutsForSchool;
  if (hiddenShortcutsForSchool)
  {
    v24 = MEMORY[0x1E695DEC8];
    v25 = hiddenShortcutsForSchool;
    v23 = [[v24 alloc] initWithArray:v25 copyItems:1];
  }

  else
  {
    v23 = 0;
  }

  shortcutsForAll = self->_shortcutsForAll;
  if (shortcutsForAll)
  {
    v28 = MEMORY[0x1E695DEC8];
    v29 = shortcutsForAll;
    v27 = [[v28 alloc] initWithArray:v29 copyItems:1];
  }

  else
  {
    v27 = 0;
  }

  shortcutsForAllIncludingHidden = self->_shortcutsForAllIncludingHidden;
  if (shortcutsForAllIncludingHidden)
  {
    v32 = MEMORY[0x1E695DEC8];
    v33 = shortcutsForAllIncludingHidden;
    v31 = [[v32 alloc] initWithArray:v33 copyItems:1];
  }

  else
  {
    v31 = 0;
  }

  perCNPostalAddress = self->_perCNPostalAddress;
  if (perCNPostalAddress)
  {
    v36 = MEMORY[0x1E695DF20];
    v37 = perCNPostalAddress;
    v35 = [[v36 alloc] initWithDictionary:v37 copyItems:1];
  }

  else
  {
    v35 = 0;
  }

  v38 = [(MapsSuggestionsMeCard *)v41 initWithHomes:v42 works:v40 schools:v11 hiddenHomes:v15 hiddenWorks:v19 hiddenSchools:v23 all:v27 allIncludingHidden:v31 perCNPostalAddress:v35 hasCorrect:*&self->_hasCorrected hasGeocoded:HIBYTE(*&self->_hasCorrected)];

  return v38;
}

@end