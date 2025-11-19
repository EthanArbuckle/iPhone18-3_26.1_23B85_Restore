@interface PKPassContent
- (NSArray)primaryFields;
- (PKPassContent)initWithCoder:(id)a3;
- (PKPassContent)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6;
- (id)currencyAmountForSemanticKey:(id)a3;
- (id)dateForSemanticKey:(id)a3;
- (id)dictionariesForSemanticKey:(id)a3;
- (id)eventDateInfoForSemanticKey:(id)a3;
- (id)locationForSemanticKey:(id)a3;
- (id)numberForSemanticKey:(id)a3;
- (id)personNameComponentsForSemanticKey:(id)a3;
- (id)stringForSemanticKey:(id)a3;
- (id)stringsForSemanticKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)flushFormattedFieldValues;
@end

@implementation PKPassContent

- (PKPassContent)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6
{
  v217 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v202.receiver = self;
  v202.super_class = PKPassContent;
  v13 = [(PKContent *)&v202 initWithDictionary:v10 bundle:v11 privateBundle:v12 passType:a6];
  if (!v13)
  {
    goto LABEL_86;
  }

  v14 = [v11 bundleURL];
  v15 = PKPrivateObjectDictionaryWithError(v14, 0);

  v16 = [(PKContent *)v13 barcodes];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = [PKBarcode barcodesWithPassDictionary:v15 bundle:v12];
  v20 = [v18 arrayByAddingObjectsFromArray:v19];

  [(PKContent *)v13 setBarcodes:v20];
  v21 = PKPassStyleForCardDictionary(v10, v11);
  v22 = PKPassStyleDictionaryKeyForCardDictionary(v10);
  v141 = [v10 objectForKey:v22];
  v139 = v15;
  v23 = v15;
  v24 = v21;
  [v23 objectForKey:v22];
  v138 = v137 = v21;
  v25 = 0;
  v125 = v22;
  v126 = v20;
  if (v21 <= 5)
  {
    if (v21 < 2)
    {
      v26 = 0;
      v25 = 1;
      goto LABEL_15;
    }

    v26 = 0;
    if (v24 != 4)
    {
      goto LABEL_15;
    }

LABEL_14:
    v27 = [v141 objectForKey:@"transitType"];
    v28 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v33 = _PKEnumValueFromString(v27, v28, @"PKTransitType", @"PKTransitTypeGeneric, WLTransitTypeGeneric, PKTransitTypeAir, WLTransitTypeAir, PKTransitTypeTrain, WLTransitTypeTrain, PKTransitTypeBus, WLTransitTypeBus, PKTransitTypeBoat, WLTransitTypeBoat", v29, v30, v31, v32, 0);

    [(PKPassContent *)v13 setTransitType:v33];
    v25 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  if ((v21 - 6) < 2)
  {
    v25 = 0;
    v26 = 1;
    goto LABEL_15;
  }

  if (v21 == 9)
  {
    v34 = [v10 PKStringForKey:@"eventLogoText"];
    v25 = 0;
    v26 = 0;
    if (v34)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = 0;
  if (v24 == 10)
  {
    goto LABEL_14;
  }

LABEL_15:
  v34 = [v10 PKStringForKey:@"logoText"];
LABEL_16:
  v124 = v34;
  PKLocalizedPassStringForPassBundle(v34, v11, v12);
  v123 = v143 = v13;
  [(PKPassContent *)v13 setLogoText:?];
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v140 = v10;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v150 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v152 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPassContent_initWithDictionary_bundle_privateBundle_passType___block_invoke;
  aBlock[3] = &unk_1E79E2610;
  v156 = v11;
  v189 = v156;
  v127 = v12;
  v200 = v26;
  v154 = v12;
  v190 = v154;
  v199 = a6;
  v136 = v35;
  v191 = v136;
  v142 = v36;
  v192 = v142;
  v201 = v25;
  v135 = v37;
  v193 = v135;
  v40 = v38;
  v194 = v40;
  v146 = v148;
  v195 = v146;
  v133 = v150;
  v196 = v133;
  v132 = v152;
  v197 = v132;
  v131 = v39;
  v198 = v131;
  v130 = _Block_copy(aBlock);
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v41 = [v140 objectForKey:@"backFields"];
  v42 = [v41 countByEnumeratingWithState:&v184 objects:v216 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v185;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v185 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = _FieldForTypeWithDictionaryAndBundle(4, *(*(&v184 + 1) + 8 * i), v156, v154, 1, v26, a6);
        if (v46)
        {
          [v146 addObject:v46];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v184 objects:v216 count:16];
    }

    while (v43);
  }

  v128 = v11;

  v130[2](v130, v141);
  v130[2](v130, v138);
  v215[0] = v142;
  v215[1] = v136;
  v215[2] = v135;
  v134 = v40;
  v215[3] = v40;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v215 count:4];
  v48 = v143;
  [(PKPassContent *)v143 setFrontFieldBuckets:v47];

  v214 = v146;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1];
  [(PKPassContent *)v143 setBackFieldBuckets:v49];

  [(PKPassContent *)v143 setBalanceFields:v133];
  [(PKPassContent *)v143 setAutoTopUpFields:v132];
  [(PKPassContent *)v143 setAdditionalInfoFields:v131];
  v50 = [PKPassPersonalization passPersonalizationWithPassBundle:v156];
  [(PKPassContent *)v143 setPersonalization:v50];

  v144 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v26)
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v51 = [v141 objectForKey:@"passDetailSections"];
    v52 = [v51 countByEnumeratingWithState:&v180 objects:v213 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v181;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v181 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [[PKPassDetailSection alloc] initWithDictionary:*(*(&v180 + 1) + 8 * j) allowedRows:0 bundle:v156 privateBundle:v154];
          [v144 safelyAddObject:v56];
        }

        v53 = [v51 countByEnumeratingWithState:&v180 objects:v213 count:16];
      }

      while (v53);
    }

    v48 = v143;
  }

  v57 = [v144 copy];
  [(PKPassContent *)v48 setPassDetailSections:v57];

  v149 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v58 = [v139 objectForKey:@"auxiliaryPassInformation"];
  v59 = [v58 countByEnumeratingWithState:&v176 objects:v212 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v177;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v177 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [[PKPassAuxiliaryPassInformation alloc] initWithInformation:*(*(&v176 + 1) + 8 * k) bundle:v156 privateBundle:v154 passType:a6];
        [v149 safelyAddObject:v63];
      }

      v60 = [v58 countByEnumeratingWithState:&v176 objects:v212 count:16];
    }

    while (v60);
  }

  v64 = [v149 copy];
  [(PKPassContent *)v143 setAuxiliaryPassInformationSections:v64];

  if ([PKPassUpcomingPassInformation isPassStyleEligible:v137])
  {
    v65 = [PKPassUpcomingPassInformation createFromDictionary:v140 bundle:v156 forPassStyle:v137];
    [(PKPassContent *)v143 setUpcomingPassInformation:v65];
  }

  if (![v142 count])
  {
    v66 = [v140 objectForKey:@"topRightBackgroundTitle"];
    v67 = v66;
    if (v66)
    {
      v210[0] = @"key";
      v210[1] = @"value";
      v211[0] = @"top_right_background_title";
      v211[1] = v66;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v211 forKeys:v210 count:2];
      v69 = _FieldForTypeWithDictionaryAndBundle(0, v68, v156, v154, 0, v26, a6);
      [v142 addObject:v69];
    }
  }

  if (![v40 count])
  {
    v70 = [v140 objectForKey:@"topLeftBackgroundTitle"];
    v71 = v70;
    if (v70)
    {
      v208[0] = @"key";
      v208[1] = @"value";
      v209[0] = @"top_left_background_title";
      v209[1] = v70;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v209 forKeys:v208 count:2];
      v73 = _FieldForTypeWithDictionaryAndBundle(3, v72, v156, v154, 0, v26, a6);
      [v40 addObject:v73];
    }
  }

  v122 = [v140 objectForKeyedSubscript:@"semantics"];
  v129 = PKPassSemanticsFromDictionary(v122, 0, v156, v154);
  [(PKPassContent *)v143 setSemantics:?];
  v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v75 = [(PKPassContent *)v143 backFieldBuckets];
  v206[0] = v75;
  v76 = [(PKPassContent *)v143 frontFieldBuckets];
  v206[1] = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:2];

  obj = v77;
  v151 = [v77 countByEnumeratingWithState:&v172 objects:v207 count:16];
  if (v151)
  {
    v147 = *v173;
    do
    {
      v78 = 0;
      do
      {
        if (*v173 != v147)
        {
          objc_enumerationMutation(obj);
        }

        v153 = v78;
        v79 = *(*(&v172 + 1) + 8 * v78);
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v80 = v79;
        v81 = [v80 countByEnumeratingWithState:&v168 objects:v205 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v169;
          do
          {
            for (m = 0; m != v82; ++m)
            {
              if (*v169 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v168 + 1) + 8 * m);
              v164 = 0u;
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v86 = v85;
              v87 = [v86 countByEnumeratingWithState:&v164 objects:v204 count:16];
              if (v87)
              {
                v88 = v87;
                v89 = *v165;
                do
                {
                  for (n = 0; n != v88; ++n)
                  {
                    if (*v165 != v89)
                    {
                      objc_enumerationMutation(v86);
                    }

                    v91 = [*(*(&v164 + 1) + 8 * n) semantics];
                    if (v91)
                    {
                      [v74 addEntriesFromDictionary:v91];
                    }
                  }

                  v88 = [v86 countByEnumeratingWithState:&v164 objects:v204 count:16];
                }

                while (v88);
              }
            }

            v82 = [v80 countByEnumeratingWithState:&v168 objects:v205 count:16];
          }

          while (v82);
        }

        v78 = v153 + 1;
      }

      while (v153 + 1 != v151);
      v151 = [obj countByEnumeratingWithState:&v172 objects:v207 count:16];
    }

    while (v151);
  }

  v92 = [v129 mutableCopy];
  [v92 addEntriesFromDictionary:v74];
  v13 = v143;
  [(PKPassContent *)v143 setAllSemantics:v92];
  v10 = v140;
  v93 = [v140 PKStringForKey:@"businessChatIdentifier"];
  [(PKPassContent *)v143 setBusinessChatIdentifier:v93];

  v94 = [PKPassBarcodeSettings alloc];
  v95 = [v140 PKDictionaryForKey:@"barcodeSettings"];
  v96 = [(PKPassBarcodeSettings *)v94 initWithDictionary:v95];
  [(PKPassContent *)v143 setBarcodeSettings:v96];

  v97 = [v140 PKStringForKey:@"cardholderInfoSectionTitle"];
  v98 = PKLocalizedPassStringForPassBundle(v97, v156, v154);
  [(PKPassContent *)v143 setCardholderInfoSectionTitle:v98];

  v99 = objc_opt_class();
  v100 = [v140 PKDictionaryOfKeyClass:v99 valueClass:objc_opt_class() ForKey:@"supportedFeatures"];
  v101 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __66__PKPassContent_initWithDictionary_bundle_privateBundle_passType___block_invoke_2;
  v162[3] = &unk_1E79C8F80;
  v102 = v101;
  v163 = v102;
  [v100 enumerateKeysAndObjectsUsingBlock:v162];
  if ([v102 count])
  {
    v103 = [v102 copy];
    features = v143->_features;
    v143->_features = v103;
  }

  v105 = [v140 PKArrayContaining:objc_opt_class() forKey:@"balances"];
  if (v105)
  {
    v155 = v100;
    v157 = v92;
    v106 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v105, "count")}];
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v107 = v105;
    v108 = [v107 countByEnumeratingWithState:&v158 objects:v203 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v159;
      do
      {
        for (ii = 0; ii != v109; ++ii)
        {
          if (*v159 != v110)
          {
            objc_enumerationMutation(v107);
          }

          v112 = [[PKPassBalance alloc] initWithDictionary:*(*(&v158 + 1) + 8 * ii)];
          [v106 addObject:v112];
        }

        v109 = [v107 countByEnumeratingWithState:&v158 objects:v203 count:16];
      }

      while (v109);
    }

    v113 = [v106 copy];
    v13 = v143;
    [(PKPassContent *)v143 setBalances:v113];

    v10 = v140;
    v100 = v155;
    v92 = v157;
  }

  v114 = [PKFidoProfile alloc];
  v115 = [v10 PKDictionaryForKey:@"fidoProfile"];
  v116 = [(PKFidoProfile *)v114 initWithDictionary:v115];
  [(PKPassContent *)v13 setFidoProfile:v116];

  v117 = [v10 PKDictionaryForKey:@"issuerBindingData"];
  [(PKPassContent *)v13 setIssuerBindingInformation:v117];

  v118 = [v10 PKDictionaryForKey:@"liveDataConfiguration"];
  v119 = [v118 PKSetForKey:@"excludedSemantics"];

  v120 = [PKPassLiveDataConfiguration configurationForPassStyle:v137 excludingSemantics:v119];
  [(PKPassContent *)v13 setLiveDataConfiguration:v120];

  v12 = v127;
  v11 = v128;
LABEL_86:

  return v13;
}

void __66__PKPassContent_initWithDictionary_bundle_privateBundle_passType___block_invoke(uint64_t a1, void *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v5 = [v3 objectForKey:@"primaryFields"];
    v6 = [v5 countByEnumeratingWithState:&v107 objects:v120 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v108;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v108 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = _FieldForTypeWithDictionaryAndBundle(1, *(*(&v107 + 1) + 8 * i), *(a1 + 32), *(a1 + 40), 0, *(a1 + 120), *(a1 + 112));
          if (v10)
          {
            [*(a1 + 48) addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v107 objects:v120 count:16];
      }

      while (v7);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v11 = [v4 objectForKey:@"headerFields"];
    v12 = [v11 countByEnumeratingWithState:&v103 objects:v119 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v104;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v104 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = _FieldForTypeWithDictionaryAndBundle(0, *(*(&v103 + 1) + 8 * j), *(a1 + 32), *(a1 + 40), 0, *(a1 + 120), *(a1 + 112));
          if (v16)
          {
            [*(a1 + 56) addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v103 objects:v119 count:16];
      }

      while (v13);
    }

    if (*(a1 + 121))
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v17 = [v4 objectForKey:@"secondaryFields"];
      v18 = [v17 countByEnumeratingWithState:&v95 objects:v117 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v96;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v96 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = _FieldForTypeWithDictionaryAndBundle(3, *(*(&v95 + 1) + 8 * k), *(a1 + 32), *(a1 + 40), 0, *(a1 + 120), *(a1 + 112));
            if (v22)
            {
              [*(a1 + 72) addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v95 objects:v117 count:16];
        }

        while (v19);
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v23 = *(a1 + 48);
      v24 = [v23 countByEnumeratingWithState:&v91 objects:v116 count:16];
      if (v24)
      {
        v25 = v24;
        v70 = v4;
        v26 = *v92;
        do
        {
          for (m = 0; m != v25; ++m)
          {
            if (*v92 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v91 + 1) + 8 * m);
            v29 = objc_alloc_init(PKPassField);
            [(PKPassField *)v29 setType:2];
            v30 = [v28 label];
            v31 = [v28 key];

            v32 = [v31 stringByAppendingString:@".labelField"];
            [(PKPassField *)v29 setKey:v32];

            [(PKPassField *)v29 setUnformattedValue:v30];
            if (v29)
            {
              [*(a1 + 64) addObject:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v91 objects:v116 count:16];
        }

        while (v25);
        v4 = v70;
      }
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v23 = [v4 objectForKey:@"secondaryFields"];
      v33 = [v23 countByEnumeratingWithState:&v99 objects:v118 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v100;
        do
        {
          for (n = 0; n != v34; ++n)
          {
            if (*v100 != v35)
            {
              objc_enumerationMutation(v23);
            }

            v37 = _FieldForTypeWithDictionaryAndBundle(2, *(*(&v99 + 1) + 8 * n), *(a1 + 32), *(a1 + 40), 0, *(a1 + 120), *(a1 + 112));
            if (v37)
            {
              [*(a1 + 64) addObject:v37];
            }
          }

          v34 = [v23 countByEnumeratingWithState:&v99 objects:v118 count:16];
        }

        while (v34);
      }
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v38 = [v4 objectForKey:@"auxiliaryFields"];
    v39 = [v38 countByEnumeratingWithState:&v87 objects:v115 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v88;
      do
      {
        for (ii = 0; ii != v40; ++ii)
        {
          if (*v88 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = _FieldForTypeWithDictionaryAndBundle(3, *(*(&v87 + 1) + 8 * ii), *(a1 + 32), *(a1 + 40), 0, *(a1 + 120), *(a1 + 112));
          if (v43)
          {
            [*(a1 + 72) addObject:v43];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v87 objects:v115 count:16];
      }

      while (v40);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v44 = [v4 objectForKey:@"backFields"];
    v45 = [v44 countByEnumeratingWithState:&v83 objects:v114 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v84;
      do
      {
        for (jj = 0; jj != v46; ++jj)
        {
          if (*v84 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = _FieldForTypeWithDictionaryAndBundle(4, *(*(&v83 + 1) + 8 * jj), *(a1 + 32), *(a1 + 40), 1, *(a1 + 120), *(a1 + 112));
          if (v49)
          {
            [*(a1 + 80) addObject:v49];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v83 objects:v114 count:16];
      }

      while (v46);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v50 = [v4 objectForKey:@"balanceFields"];
    v51 = [v50 countByEnumeratingWithState:&v79 objects:v113 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v80;
      do
      {
        for (kk = 0; kk != v52; ++kk)
        {
          if (*v80 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = _FieldForTypeWithDictionaryAndBundle(1, *(*(&v79 + 1) + 8 * kk), *(a1 + 32), *(a1 + 40), 1, *(a1 + 120), *(a1 + 112));
          v56 = [v55 foreignReferenceType];
          if (v55)
          {
            v57 = (v56 - 1) > 1;
          }

          else
          {
            v57 = 1;
          }

          if (!v57)
          {
            [*(a1 + 88) addObject:v55];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v79 objects:v113 count:16];
      }

      while (v52);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v58 = [v4 objectForKey:@"autoTopUpFields"];
    v59 = [v58 countByEnumeratingWithState:&v75 objects:v112 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v76;
      do
      {
        for (mm = 0; mm != v60; ++mm)
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = _FieldForTypeWithDictionaryAndBundle(1, *(*(&v75 + 1) + 8 * mm), *(a1 + 32), *(a1 + 40), 1, *(a1 + 120), *(a1 + 112));
          if (v63)
          {
            [*(a1 + 96) addObject:v63];
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v75 objects:v112 count:16];
      }

      while (v60);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v64 = [v4 objectForKey:@"additionalInfoFields"];
    v65 = [v64 countByEnumeratingWithState:&v71 objects:v111 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v72;
      do
      {
        for (nn = 0; nn != v66; ++nn)
        {
          if (*v72 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = _FieldForTypeWithDictionaryAndBundle(5, *(*(&v71 + 1) + 8 * nn), *(a1 + 32), *(a1 + 40), 1, 0, *(a1 + 112));
          if (v69)
          {
            [*(a1 + 104) addObject:v69];
          }
        }

        v66 = [v64 countByEnumeratingWithState:&v71 objects:v111 count:16];
      }

      while (v66);
    }
  }
}

void __66__PKPassContent_initWithDictionary_bundle_privateBundle_passType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[PKPassFeatureConfiguration alloc] initWithDictionary:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)flushFormattedFieldValues
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = self->_frontFieldBuckets;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          do
          {
            v13 = 0;
            do
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v33 + 1) + 8 * v13++) flushCachedValue];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_backFieldBuckets;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v26;
          do
          {
            v24 = 0;
            do
            {
              if (*v26 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [*(*(&v25 + 1) + 8 * v24++) flushCachedValue];
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
          }

          while (v22);
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v16);
  }
}

- (PKPassContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v71.receiver = self;
  v71.super_class = PKPassContent;
  v6 = [(PKContent *)&v71 initWithCoder:v4];
  if (v6)
  {
    v6->_transitType = [v4 decodeIntegerForKey:@"transitType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoText"];
    logoText = v6->_logoText;
    v6->_logoText = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"frontFieldBuckets"];
    frontFieldBuckets = v6->_frontFieldBuckets;
    v6->_frontFieldBuckets = v12;

    v14 = [v4 decodeObjectOfClasses:v11 forKey:@"backFieldBuckets"];
    backFieldBuckets = v6->_backFieldBuckets;
    v6->_backFieldBuckets = v14;

    v16 = [v4 decodeObjectOfClasses:v11 forKey:@"balanceFields"];
    balanceFields = v6->_balanceFields;
    v6->_balanceFields = v16;

    v18 = [v4 decodeObjectOfClasses:v11 forKey:@"autoTopUpFields"];
    autoTopUpFields = v6->_autoTopUpFields;
    v6->_autoTopUpFields = v18;

    v20 = [v4 decodeObjectOfClasses:v11 forKey:@"additionalInfoFields"];
    additionalInfoFields = v6->_additionalInfoFields;
    v6->_additionalInfoFields = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"balances"];
    balances = v6->_balances;
    v6->_balances = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"passDetailSections"];
    passDetailSections = v6->_passDetailSections;
    v6->_passDetailSections = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"auxiliaryPassInformation"];
    auxiliaryPassInformationSections = v6->_auxiliaryPassInformationSections;
    v6->_auxiliaryPassInformationSections = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"upcomingPassInformation"];
    upcomingPassInformation = v6->_upcomingPassInformation;
    v6->_upcomingPassInformation = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personalization"];
    personalization = v6->_personalization;
    v6->_personalization = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v41 setWithObjects:{v42, v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"semantics"];
    semantics = v6->_semantics;
    v6->_semantics = v45;

    v47 = [v4 decodeObjectOfClasses:v44 forKey:@"allSemantics"];
    allSemantics = v6->_allSemantics;
    v6->_allSemantics = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIdentifier"];
    businessChatIdentifier = v6->_businessChatIdentifier;
    v6->_businessChatIdentifier = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeSettings"];
    barcodeSettings = v6->_barcodeSettings;
    v6->_barcodeSettings = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderInfoSectionTitle"];
    cardholderInfoSectionTitle = v6->_cardholderInfoSectionTitle;
    v6->_cardholderInfoSectionTitle = v53;

    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = [v55 setWithObjects:{v56, v57, objc_opt_class(), 0}];
    v59 = [v4 decodeObjectOfClasses:v58 forKey:@"supportedFeatures"];
    features = v6->_features;
    v6->_features = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoProfile"];
    fidoProfile = v6->_fidoProfile;
    v6->_fidoProfile = v61;

    v63 = MEMORY[0x1E695DFD8];
    v64 = objc_opt_class();
    v65 = [v63 setWithObjects:{v64, objc_opt_class(), 0}];
    v66 = [v4 decodeObjectOfClasses:v65 forKey:@"issuerBindingData"];
    issuerBindingInformation = v6->_issuerBindingInformation;
    v6->_issuerBindingInformation = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"liveDataConfiguration"];
    liveDataConfiguration = v6->_liveDataConfiguration;
    v6->_liveDataConfiguration = v68;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassContent;
  v4 = a3;
  [(PKContent *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_transitType forKey:{@"transitType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_logoText forKey:@"logoText"];
  [v4 encodeObject:self->_frontFieldBuckets forKey:@"frontFieldBuckets"];
  [v4 encodeObject:self->_backFieldBuckets forKey:@"backFieldBuckets"];
  [v4 encodeObject:self->_balanceFields forKey:@"balanceFields"];
  [v4 encodeObject:self->_autoTopUpFields forKey:@"autoTopUpFields"];
  [v4 encodeObject:self->_additionalInfoFields forKey:@"additionalInfoFields"];
  [v4 encodeObject:self->_balances forKey:@"balances"];
  [v4 encodeObject:self->_passDetailSections forKey:@"passDetailSections"];
  [v4 encodeObject:self->_auxiliaryPassInformationSections forKey:@"auxiliaryPassInformation"];
  [v4 encodeObject:self->_upcomingPassInformation forKey:@"upcomingPassInformation"];
  [v4 encodeObject:self->_personalization forKey:@"personalization"];
  [v4 encodeObject:self->_semantics forKey:@"semantics"];
  [v4 encodeObject:self->_allSemantics forKey:@"allSemantics"];
  [v4 encodeObject:self->_businessChatIdentifier forKey:@"businessChatIdentifier"];
  [v4 encodeObject:self->_barcodeSettings forKey:@"barcodeSettings"];
  [v4 encodeObject:self->_cardholderInfoSectionTitle forKey:@"cardholderInfoSectionTitle"];
  [v4 encodeObject:self->_features forKey:@"supportedFeatures"];
  [v4 encodeObject:self->_fidoProfile forKey:@"fidoProfile"];
  [v4 encodeObject:self->_issuerBindingInformation forKey:@"issuerBindingData"];
  [v4 encodeObject:self->_liveDataConfiguration forKey:@"liveDataConfiguration"];
}

- (NSArray)primaryFields
{
  if ([(NSArray *)self->_frontFieldBuckets count]< 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSArray *)self->_frontFieldBuckets objectAtIndexedSubscript:1];
  }

  return v3;
}

- (id)stringForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 stringValue];

  return v7;
}

- (id)dateForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 dateValue];

  return v7;
}

- (id)eventDateInfoForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 eventDateInfoValue];

  return v7;
}

- (id)numberForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 numberValue];

  return v7;
}

- (id)locationForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 locationValue];

  return v7;
}

- (id)currencyAmountForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 currencyAmountValue];

  return v7;
}

- (id)personNameComponentsForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 personNameComponentsValue];

  return v7;
}

- (id)stringsForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 stringsValue];

  return v7;
}

- (id)dictionariesForSemanticKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPassContent *)self allSemantics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 dictionariesValue];

  return v7;
}

@end