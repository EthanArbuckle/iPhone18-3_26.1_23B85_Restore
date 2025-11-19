@interface MNLPRRuleMatcher
- (id)debug_jsonDescriptionOfLastPlate;
- (id)generateMaskedPlateForWaypoints:(id)a3 date:(id)a4 timeZone:(id)a5 error:(id *)a6;
- (id)initForVehicle:(id)a3 withRules:(id)a4;
@end

@implementation MNLPRRuleMatcher

- (id)debug_jsonDescriptionOfLastPlate
{
  v39[5] = *MEMORY[0x1E69E9840];
  lastPlate = self->_lastPlate;
  if (lastPlate && [(NSArray *)lastPlate->_chars count])
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = self->_lastPlate;
    if (v5)
    {
      v6 = [(NSArray *)v5->_chars count];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v4 arrayWithCapacity:v6];
    v8 = self->_lastPlate;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke;
    v34[3] = &unk_1E842B040;
    v9 = v7;
    v35 = v9;
    [(_MNLPRPlate *)v8 enumerateCharsUsingBlock:v34];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v10 = self->_lastPlate;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke_2;
    v25[3] = &unk_1E842B068;
    v25[4] = &v30;
    v25[5] = &v26;
    [(_MNLPRPlate *)v10 enumerateCharsUsingBlock:v25];
    v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
    [v11 setTimeZone:self->_lastTimeZone];
    v12 = [v11 stringFromDate:self->_lastDate];
    v13 = [(NSTimeZone *)self->_lastTimeZone name];
    v37[0] = v9;
    v36[0] = @"values";
    v36[1] = @"permutations";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v27[3]];
    v37[1] = v14;
    v36[2] = @"unmaskableValues";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31[3]];
    v37[2] = v15;
    v36[3] = @"date";
    v16 = v12;
    if (!v12)
    {
      v16 = [MEMORY[0x1E695DFB0] null];
    }

    v37[3] = v16;
    v36[4] = @"timeZone";
    v17 = v13;
    if (!v13)
    {
      v17 = [MEMORY[0x1E695DFB0] null];
    }

    usedRegions = self->_usedRegions;
    usedRegionETAs = self->_usedRegionETAs;
    v37[4] = v17;
    v37[5] = usedRegions;
    v36[5] = @"usedRegions";
    v36[6] = @"usedRegionETAs";
    v37[6] = usedRegionETAs;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:7];
    if (!v13)
    {
    }

    if (!v12)
    {
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    v21 = v35;
  }

  else
  {
    v38[0] = @"values";
    v9 = [MEMORY[0x1E695DFB0] null];
    v39[0] = v9;
    v39[1] = &unk_1F4EE2368;
    v38[1] = @"permutations";
    v38[2] = @"unmaskableValues";
    v39[2] = &unk_1F4EE2380;
    v38[3] = @"date";
    v21 = [MEMORY[0x1E695DFB0] null];
    v39[3] = v21;
    v38[4] = @"timeZone";
    v22 = [MEMORY[0x1E695DFB0] null];
    v39[4] = v22;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

void __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = MEMORY[0x1E695DF70];
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v4 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (v3)
  {
    v8 = *(v3 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v30 + 1) + 8 * i) intValue];
        if ((v14 - 1) >= 3)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
        }

        else
        {
          v15 = off_1E842B088[(v14 - 1)];
        }

        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  v27 = *(a1 + 32);
  v34[0] = @"glyph";
  if (v3)
  {
    v16 = *(v3 + 32);
  }

  else
  {
    v16 = 0;
  }

  v29 = v16;
  v35[0] = v29;
  v34[1] = @"isPickup";
  if (v3)
  {
    v17 = *(v3 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:v17 & 1];
  v35[1] = v18;
  v34[2] = @"mappings";
  v19 = [(_MNLPRPlateCharacter *)v3 valueMappings];
  if ([v19 count])
  {
    [(_MNLPRPlateCharacter *)v3 valueMappings];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v20 = ;
  v35[2] = v20;
  v34[3] = @"fills";
  v21 = [v7 count];
  v22 = v7;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[3] = v22;
  v34[4] = @"replacements";
  v23 = [(_MNLPRPlateCharacter *)v3 _validReplacements:?];
  v24 = v23;
  if (!v23)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v35[4] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:5];
  [v27 addObject:v25];

  if (!v23)
  {
  }

  if (!v21)
  {
  }

  v26 = *MEMORY[0x1E69E9840];
}

unint64_t __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [(_MNLPRPlateCharacter *)a2 validReplacementCount:?];
  if (result > 1)
  {
    v4 = result;
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) *= v4;
  return result;
}

- (id)generateMaskedPlateForWaypoints:(id)a3 date:(id)a4 timeZone:(id)a5 error:(id *)a6
{
  v601[16] = *MEMORY[0x1E69E9840];
  v443 = a3;
  v403 = a4;
  v402 = a5;
  v9 = MNGetMNLPRRuleMatcherLog();
  self->_signpost = os_signpost_id_generate(v9);

  v429 = self;
  lastPlate = self->_lastPlate;
  self = (self + 32);
  self->super.isa = 0;

  location = self;
  objc_storeStrong(&self->_vehicle, a4);
  objc_storeStrong(&v429->_lastTimeZone, a5);
  usedRegions = v429->_usedRegions;
  v429->_usedRegions = MEMORY[0x1E695E0F8];

  v562 = 0u;
  v561 = 0u;
  v560 = 0u;
  v559 = 0u;
  p_usedRegions = &v429->_usedRegions;
  v12 = v429->_ruleSets;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v559 objects:v601 count:16];
  if (!v13)
  {
LABEL_9:

    _mnLPRWrappedError(a6, -3, 0, @"Empty rules %@", v18, v19, v20, v21, v429->_ruleSets);
    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyRules"];
LABEL_35:
    v52 = 0;
    goto LABEL_367;
  }

  v14 = *v560;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v560 != v14)
    {
      objc_enumerationMutation(v12);
    }

    v16 = [*(*(&v559 + 1) + 8 * v15) licensePlateRegions];
    v17 = [v16 count] == 0;

    if (!v17)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v559 objects:v601 count:16];
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  if (![v443 count])
  {
    _mnLPRWrappedError(a6, -6, 0, @"No waypoints specified %@", v22, v23, v24, v25, v443);
    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyRegions"];
    goto LABEL_35;
  }

  if (!v429->_vehicle)
  {
    _mnLPRWrappedError(a6, -4, 0, @"Empty vehicle %@", v22, v23, v24, v25, 0);
    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyVehicle"];
    goto LABEL_35;
  }

  v26 = MNGetMNLPRRuleMatcherLog();
  v27 = v26;
  signpost = v429->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    LOWORD(v594.receiver) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v27, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "MaskPlate", "", &v594, 2u);
  }

  v29 = MNGetMNLPRRuleMatcherLog();
  v30 = v29;
  v31 = v429->_signpost;
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    v32 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
    v33 = [v32 length];
    LODWORD(v594.receiver) = 67109120;
    HIDWORD(v594.receiver) = v33;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v31, "PreparePlate", "length=%d", &v594, 8u);
  }

  v34 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
  v383 = [v34 mnlpr_componentsSeparatedByGlyph];

  if (v383)
  {
    v35 = MEMORY[0x1E695DF70];
    v36 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
    v449 = [v35 arrayWithCapacity:{objc_msgSend(v36, "length")}];

    v558 = 0u;
    v557 = 0u;
    v556 = 0u;
    v555 = 0u;
    v37 = v383;
    v38 = [v37 countByEnumeratingWithState:&v555 objects:v600 count:16];
    if (v38)
    {
      v39 = *v556;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v556 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v555 + 1) + 8 * i);
          v42 = [_MNLPRPlateCharacter alloc];
          v43 = v41;
          if (v42)
          {
            v594.receiver = v42;
            v594.super_class = _MNLPRPlateCharacter;
            v44 = [(MNLPRRuleMatcher *)&v594 init];
            v42 = v44;
            if (v44)
            {
              objc_storeStrong(&v44->_lastPlate, v41);
              valueMappings = v42->_valueMappings;
              v42->_valueMappings = 0;

              v46 = [MEMORY[0x1E695DF90] dictionary];
              fillTypes = v42->_fillTypes;
              v42->_fillTypes = v46;
            }
          }

          [v449 addObject:v42];
        }

        v38 = [v37 countByEnumeratingWithState:&v555 objects:v600 count:16];
      }

      while (v38);
    }

    if (![v449 count])
    {
      v58 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
      _mnLPRWrappedError(a6, -5, 0, @"Failed to generate plate abstraction for license %@", v59, v60, v61, v62, v58);

      v63 = MNGetMNLPRRuleMatcherLog();
      v64 = v63;
      v65 = v429->_signpost;
      if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        LOWORD(v594.receiver) = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v64, OS_SIGNPOST_INTERVAL_END, v65, "PreparePlate", "failed", &v594, 2u);
      }

      v66 = MNGetMNLPRRuleMatcherLog();
      v67 = v66;
      v68 = v429->_signpost;
      if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
      {
        LOWORD(v594.receiver) = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v67, OS_SIGNPOST_INTERVAL_END, v68, "MaskPlate", "failed", &v594, 2u);
      }

      [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyLicensePlate"];
      v52 = 0;
LABEL_365:

      goto LABEL_366;
    }

    v48 = [_MNLPRPlate alloc];
    v49 = v449;
    if (v48 && (v594.receiver = v48, v594.super_class = _MNLPRPlate, (obj = [(MNLPRRuleMatcher *)&v594 init]) != 0))
    {
      v50 = [v49 copy];
      vehicle = obj->_vehicle;
      obj->_vehicle = v50;
    }

    else
    {
      obj = 0;
    }

    objc_storeStrong(&location->super.isa, obj);
    v69 = MNGetMNLPRRuleMatcherLog();
    v70 = v69;
    v71 = v429->_signpost;
    if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
    {
      LOWORD(v594.receiver) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v70, OS_SIGNPOST_INTERVAL_END, v71, "PreparePlate", "success", &v594, 2u);
    }

    v72 = MNGetMNLPRRuleMatcherLog();
    v73 = v72;
    v74 = v429->_signpost;
    if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
    {
      LOWORD(v594.receiver) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v74, "FindPlateRegions", "", &v594, 2u);
    }

    GEOConfigGetDouble();
    v76 = v75;
    v77 = [MEMORY[0x1E695DF70] array];
    v554 = 0u;
    v553 = 0u;
    v552 = 0u;
    v551 = 0u;
    v78 = v429->_ruleSets;
    v79 = [(NSArray *)v78 countByEnumeratingWithState:&v551 objects:v599 count:16];
    if (v79)
    {
      v80 = *v552;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v552 != v80)
          {
            objc_enumerationMutation(v78);
          }

          v82 = [*(*(&v551 + 1) + 8 * j) plateRegionsContainingLatLngs:v443 inRadius:v76];
          [v77 addObjectsFromArray:v82];
        }

        v79 = [(NSArray *)v78 countByEnumeratingWithState:&v551 objects:v599 count:16];
      }

      while (v79);
    }

    v83 = MNGetMNLPRRuleMatcherLog();
    v84 = v83;
    v85 = v429->_signpost;
    if (v85 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
    {
      v86 = [v77 count];
      LODWORD(v594.receiver) = 67109120;
      HIDWORD(v594.receiver) = v86;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v84, OS_SIGNPOST_INTERVAL_END, v85, "FindPlateRegions", "matched=%d", &v594, 8u);
    }

    v87 = [v443 firstObject];
    [v87 coordinate];
    v89 = v88;
    v91 = v90;

    GEOConfigGetDouble();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke;
    aBlock[3] = &unk_1E842AF50;
    v548 = v92;
    v376 = v403;
    v545 = v376;
    v546 = v429;
    v387 = v443;
    v547 = v387;
    v549 = v89;
    v550 = v91;
    v389 = _Block_copy(aBlock);
    v382 = [MEMORY[0x1E695DF90] dictionary];
    v391 = [MEMORY[0x1E695DF90] dictionary];
    objc_storeStrong(p_usedRegions, v382);
    objc_storeStrong(&v429->_usedRegionETAs, v391);
    v594.receiver = 0;
    v594.super_class = &v594;
    v595 = 0x3032000000;
    v596 = __Block_byref_object_copy__4186;
    v597 = __Block_byref_object_dispose__4187;
    v598 = 0;
    v378 = [MEMORY[0x1E695DFA8] set];
    v379 = [MEMORY[0x1E695DF70] array];
    v436 = [MEMORY[0x1E695DF70] array];
    v377 = [MEMORY[0x1E695DF70] array];
    v93 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    v94 = MNGetMNLPRRuleMatcherLog();
    v95 = v94;
    v96 = v429->_signpost;
    if (v96 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v95, OS_SIGNPOST_INTERVAL_BEGIN, v96, "FindRules", "", buf, 2u);
    }

    v543 = 0u;
    v542 = 0u;
    v541 = 0u;
    v540 = 0u;
    v384 = v77;
    v97 = [v384 countByEnumeratingWithState:&v540 objects:v593 count:16];
    if (v97)
    {
      v98 = 0;
      v401 = 0;
      v396 = v97;
      v397 = *v541;
      do
      {
        v420 = 0;
        do
        {
          if (*v541 != v397)
          {
            objc_enumerationMutation(v384);
          }

          v411 = *(*(&v540 + 1) + 8 * v420);
          v99 = [v411 plateInfosMatchingVehicle:v429->_vehicle];
          if ([v99 count])
          {
            v400 = v99;
            v100 = [v99 firstObject];
            v423 = [v100 licensePlateStructure];

            v433 = [v423 supportedNumericCharacterSet];
            v430 = [v423 supportedAlphabeticCharacterSet];
            v101 = [v411 restrictionRegionsContainingLatLngs:v387 inRadius:v76];
            v399 = [v101 count] != 0;
            v408 = [MEMORY[0x1E695DF70] array];
            v539 = 0u;
            v538 = 0u;
            v537 = 0u;
            v536 = 0u;
            v415 = v101;
            v393 = [v415 countByEnumeratingWithState:&v536 objects:v592 count:16];
            if (v393)
            {
              v395 = *v537;
              while (2)
              {
                for (k = 0; k != v393; ++k)
                {
                  if (*v537 != v395)
                  {
                    objc_enumerationMutation(v415);
                  }

                  v426 = *(*(&v536 + 1) + 8 * k);
                  v102 = MNGetMNLPRRuleMatcherLog();
                  v103 = v102;
                  v104 = v429->_signpost;
                  if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1D311E000, v103, OS_SIGNPOST_INTERVAL_BEGIN, v104, "ExamineRegion", "", buf, 2u);
                  }

                  v105 = v429->_vehicle;
                  v106 = (v594.super_class + 40);
                  v535 = *(v594.super_class + 5);
                  v417 = [v426 plateTypeIndexesMatchingVehicle:v105 error:&v535];
                  objc_storeStrong(v106, v535);
                  v107 = *(v594.super_class + 5);
                  if (v107)
                  {
                    if (a6)
                    {
                      *a6 = v107;
                    }

                    v212 = MNGetMNLPRRuleMatcherLog();
                    v108 = v212;
                    v213 = v429->_signpost;
                    if (v213 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v212))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1D311E000, v108, OS_SIGNPOST_INTERVAL_END, v213, "MaskPlate", "failed", buf, 2u);
                    }

LABEL_200:

                    v204 = 0;
                    goto LABEL_201;
                  }

                  v108 = v389[2](v389, v426);
                  v109 = [v426 identifier];
                  [v391 setObject:v108 forKeyedSubscript:v109];

                  v534 = 0u;
                  v533 = 0u;
                  v532 = 0u;
                  v531 = 0u;
                  v404 = [v426 convertRules];
                  v390 = [v404 countByEnumeratingWithState:&v531 objects:v591 count:16];
                  if (v390)
                  {
                    v394 = *v532;
                    do
                    {
                      for (m = 0; m != v390; ++m)
                      {
                        if (*v532 != v394)
                        {
                          objc_enumerationMutation(v404);
                        }

                        v110 = *(*(&v531 + 1) + 8 * m);
                        v111 = MNGetMNLPRRuleMatcherLog();
                        v112 = v111;
                        v113 = v429->_signpost;
                        if (v113 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
                        {
                          *buf = 0;
                          _os_signpost_emit_with_name_impl(&dword_1D311E000, v112, OS_SIGNPOST_INTERVAL_BEGIN, v113, "ExamineRule", "", buf, 2u);
                        }

                        if ([v110 hasValidDateInterval])
                        {
                          v530 = 0u;
                          v529 = 0u;
                          v528 = 0u;
                          v527 = 0u;
                          v114 = v108;
                          v115 = [v114 countByEnumeratingWithState:&v527 objects:v590 count:16];
                          if (v115)
                          {
                            v116 = *v528;
                            while (2)
                            {
                              for (n = 0; n != v115; ++n)
                              {
                                if (*v528 != v116)
                                {
                                  objc_enumerationMutation(v114);
                                }

                                v118 = *(*(&v527 + 1) + 8 * n);
                                v119 = [v110 validDateInterval];
                                LOBYTE(v118) = [v119 containsDate:v118];

                                if (v118)
                                {

                                  goto LABEL_100;
                                }
                              }

                              v115 = [v114 countByEnumeratingWithState:&v527 objects:v590 count:16];
                              if (v115)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          v120 = MNGetMNLPRRuleMatcherLog();
                          v121 = v120;
                          v122 = v429->_signpost;
                          if (v122 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v121, OS_SIGNPOST_INTERVAL_END, v122, "ExamineRule", "skipped, not valid for date", buf, 2u);
                          }
                        }

                        else
                        {
LABEL_100:
                          v123 = [v426 definedPlateTypes];
                          v413 = [v110 pickupRulesForPlateTypes:v123 atIndexes:v417];

                          v124 = [v426 definedPlateTypes];
                          v125 = [v110 mapRulesForPlateTypes:v124 atIndexes:v417];

                          v126 = [v426 definedPlateTypes];
                          v392 = [v110 fillRulesForPlateTypes:v126 atIndexes:v417];

                          locationa = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v413, "count")}];
                          v127 = MNGetMNLPRRuleMatcherLog();
                          v128 = v127;
                          v129 = v429->_signpost;
                          if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v128, OS_SIGNPOST_INTERVAL_BEGIN, v129, "ExamineMapRules", "", buf, 2u);
                          }

                          v526 = 0u;
                          v525 = 0u;
                          v524 = 0u;
                          v523 = 0u;
                          v405 = v125;
                          v130 = [v405 countByEnumeratingWithState:&v523 objects:v589 count:16];
                          if (v130)
                          {
                            v385 = *v524;
                            do
                            {
                              for (ii = 0; ii != v130; ii = ii + 1)
                              {
                                if (*v524 != v385)
                                {
                                  objc_enumerationMutation(v405);
                                }

                                v131 = *(*(&v523 + 1) + 8 * ii);
                                [v131 setMrLicensePlateStructure:v423];
                                v522 = 0u;
                                v521 = 0u;
                                v520 = 0u;
                                v519 = 0u;
                                v132 = [v131 targetChars];
                                v133 = [v132 countByEnumeratingWithState:&v519 objects:v588 count:16];
                                if (v133)
                                {
                                  v134 = *v520;
                                  while (2)
                                  {
                                    for (jj = 0; jj != v133; ++jj)
                                    {
                                      if (*v520 != v134)
                                      {
                                        objc_enumerationMutation(v132);
                                      }

                                      v136 = *(*(&v519 + 1) + 8 * jj);
                                      v137 = [(_MNLPRPlate *)obj charIndexForTarget:v136 alphabetics:v430 numerics:v433];
                                      if (v137 == 0x7FFFFFFFFFFFFFFFLL)
                                      {
                                        _mnLPRWrappedError(a6, -108, 0, @"unable to locate plate char for map rule target: %@", v138, v139, v140, v141, v136);
                                        v205 = MNGetMNLPRRuleMatcherLog();
                                        v206 = v205;
                                        v207 = v429->_signpost;
                                        if (v207 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v205))
                                        {
                                          *buf = 0;
                                          _os_signpost_emit_with_name_impl(&dword_1D311E000, v206, OS_SIGNPOST_INTERVAL_END, v207, "MaskPlate", "failed", buf, 2u);
                                        }

                                        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"NoCharForTarget"];
                                        v208 = v405;
LABEL_199:

                                        v98 = 1;
                                        goto LABEL_200;
                                      }

                                      v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v137];
                                      v143 = [locationa objectForKeyedSubscript:v142];
                                      v144 = v143 == 0;

                                      if (v144)
                                      {
                                        v145 = [MEMORY[0x1E695DF70] array];
                                        [locationa setObject:v145 forKeyedSubscript:v142];
                                      }

                                      v146 = [locationa objectForKeyedSubscript:v142];
                                      [v146 addObject:v131];
                                    }

                                    v133 = [v132 countByEnumeratingWithState:&v519 objects:v588 count:16];
                                    if (v133)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }
                              }

                              v130 = [v405 countByEnumeratingWithState:&v523 objects:v589 count:16];
                            }

                            while (v130);
                          }

                          v147 = MNGetMNLPRRuleMatcherLog();
                          v148 = v147;
                          v149 = v429->_signpost;
                          if (v149 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v147))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v148, OS_SIGNPOST_INTERVAL_END, v149, "ExamineMapRules", "", buf, 2u);
                          }

                          v150 = MNGetMNLPRRuleMatcherLog();
                          v151 = v150;
                          v152 = v429->_signpost;
                          if (v152 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v150))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v151, OS_SIGNPOST_INTERVAL_BEGIN, v152, "ExaminePickupRules", "", buf, 2u);
                          }

                          v518 = 0u;
                          v517 = 0u;
                          v516 = 0u;
                          v515 = 0u;
                          v413 = v413;
                          v153 = v423;
                          v380 = [v413 countByEnumeratingWithState:&v515 objects:v587 count:16];
                          if (v380)
                          {
                            v381 = *v516;
                            do
                            {
                              for (kk = 0; kk != v380; ++kk)
                              {
                                if (*v516 != v381)
                                {
                                  objc_enumerationMutation(v413);
                                }

                                v154 = *(*(&v515 + 1) + 8 * kk);
                                [v154 setPrLicensePlateStructure:v153];
                                v514 = 0u;
                                v513 = 0u;
                                v512 = 0u;
                                v511 = 0u;
                                v155 = [v154 pickupChars];
                                v156 = [v155 countByEnumeratingWithState:&v511 objects:v586 count:16];
                                if (v156)
                                {
                                  v438 = *v512;
                                  v132 = v155;
                                  while (2)
                                  {
                                    v157 = v156;
                                    for (mm = 0; mm != v157; ++mm)
                                    {
                                      if (*v512 != v438)
                                      {
                                        objc_enumerationMutation(v155);
                                      }

                                      v159 = *(*(&v511 + 1) + 8 * mm);
                                      v160 = [(_MNLPRPlate *)obj charIndexForTarget:v159 alphabetics:v430 numerics:v433];
                                      if (v160 == 0x7FFFFFFFFFFFFFFFLL)
                                      {
                                        _mnLPRWrappedError(a6, -108, 0, @"unable to locate plate char for pickup rule target: %@", v161, v162, v163, v164, v159);
                                        v209 = MNGetMNLPRRuleMatcherLog();
                                        v210 = v209;
                                        v211 = v429->_signpost;
                                        if (v211 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v209))
                                        {
                                          *buf = 0;
                                          _os_signpost_emit_with_name_impl(&dword_1D311E000, v210, OS_SIGNPOST_INTERVAL_END, v211, "MaskPlate", "failed", buf, 2u);
                                        }

                                        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"NoCharForTarget"];
                                        v208 = v413;
                                        goto LABEL_199;
                                      }

                                      v165 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v160];
                                      v166 = [locationa objectForKeyedSubscript:v165];
                                      v167 = v166 == 0;

                                      if (v167)
                                      {
                                        v168 = objc_alloc_init(MEMORY[0x1E69A1E30]);
                                        [v168 setMrLicensePlateStructure:v423];
                                        v169 = [v159 copy];
                                        [v168 addTargetChar:v169];

                                        v170 = objc_alloc_init(MEMORY[0x1E69A1E40]);
                                        v171 = [MEMORY[0x1E695DF70] array];
                                        [v170 setMappedValues:v171];

                                        [v168 addValueMapping:v170];
                                        v172 = [MEMORY[0x1E695DF70] arrayWithObject:v168];
                                        [locationa setObject:v172 forKeyedSubscript:v165];
                                      }

                                      v155 = v132;
                                    }

                                    v156 = [v132 countByEnumeratingWithState:&v511 objects:v586 count:16];
                                    if (v156)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }

                                v153 = v423;
                              }

                              v380 = [v413 countByEnumeratingWithState:&v515 objects:v587 count:16];
                            }

                            while (v380);
                          }

                          v173 = MNGetMNLPRRuleMatcherLog();
                          v174 = v173;
                          v175 = v429->_signpost;
                          if (v175 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v173))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v174, OS_SIGNPOST_INTERVAL_END, v175, "ExaminePickupRules", "", buf, 2u);
                          }

                          v510 = 0u;
                          v509 = 0u;
                          v508 = 0u;
                          v507 = 0u;
                          v439 = v392;
                          v176 = [v439 countByEnumeratingWithState:&v507 objects:v585 count:16];
                          if (v176)
                          {
                            v177 = *v508;
                            do
                            {
                              for (nn = 0; nn != v176; ++nn)
                              {
                                if (*v508 != v177)
                                {
                                  objc_enumerationMutation(v439);
                                }

                                [*(*(&v507 + 1) + 8 * nn) setFrLicensePlateStructure:v423];
                              }

                              v176 = [v439 countByEnumeratingWithState:&v507 objects:v585 count:16];
                            }

                            while (v176);
                          }

                          v179 = v413;
                          if (-[NSObject count](v413, "count") || [locationa count] || objc_msgSend(v439, "count"))
                          {
                            v180 = [v426 identifier];
                            v181 = v180;
                            v182 = @"<unknown>";
                            if (v180)
                            {
                              v182 = v180;
                            }

                            v183 = v182;

                            if ([v426 hasName])
                            {
                              v373 = [v426 name];
                              v184 = [(__CFString *)v183 stringByAppendingFormat:@":%@"];

                              v183 = v184;
                            }

                            [v378 addObject:v183];
                            [v408 addObject:v183];

                            v179 = v413;
                          }

                          [v379 addObjectsFromArray:v179];
                          v506 = 0u;
                          v505 = 0u;
                          v504 = 0u;
                          v503 = 0u;
                          v185 = [locationa allValues];
                          v186 = [v185 countByEnumeratingWithState:&v503 objects:v584 count:16];
                          if (v186)
                          {
                            v187 = *v504;
                            do
                            {
                              for (i1 = 0; i1 != v186; ++i1)
                              {
                                if (*v504 != v187)
                                {
                                  objc_enumerationMutation(v185);
                                }

                                v189 = *(*(&v503 + 1) + 8 * i1);
                                [v436 addObjectsFromArray:v189];
                                v502 = 0u;
                                v501 = 0u;
                                v500 = 0u;
                                v499 = 0u;
                                v190 = v189;
                                v191 = [v190 countByEnumeratingWithState:&v499 objects:v583 count:16];
                                if (v191)
                                {
                                  v192 = *v500;
                                  do
                                  {
                                    for (i2 = 0; i2 != v191; ++i2)
                                    {
                                      if (*v500 != v192)
                                      {
                                        objc_enumerationMutation(v190);
                                      }

                                      [v93 setObject:v108 forKey:*(*(&v499 + 1) + 8 * i2)];
                                    }

                                    v191 = [v190 countByEnumeratingWithState:&v499 objects:v583 count:16];
                                  }

                                  while (v191);
                                }
                              }

                              v186 = [v185 countByEnumeratingWithState:&v503 objects:v584 count:16];
                            }

                            while (v186);
                          }

                          [v377 addObjectsFromArray:v439];
                          v194 = MNGetMNLPRRuleMatcherLog();
                          v195 = v194;
                          v196 = v429->_signpost;
                          if (v196 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v194))
                          {
                            v197 = [v413 count];
                            v198 = [locationa count];
                            v199 = [v439 count];
                            *buf = 67109632;
                            *&buf[4] = v197;
                            LOWORD(v578) = 1024;
                            *(&v578 + 2) = v198;
                            HIWORD(v578) = 1024;
                            LODWORD(v579) = v199;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v195, OS_SIGNPOST_INTERVAL_END, v196, "ExamineRule", "pickup=%d, map=%d, fill=%d", buf, 0x14u);
                          }

                          v98 = 1;
                          v121 = v413;
                        }
                      }

                      v390 = [v404 countByEnumeratingWithState:&v531 objects:v591 count:16];
                    }

                    while (v390);
                  }

                  if ([v408 count])
                  {
                    v200 = [v411 identifier];
                    [v382 setObject:v408 forKeyedSubscript:v200];
                  }

                  v201 = MNGetMNLPRRuleMatcherLog();
                  v202 = v201;
                  v203 = v429->_signpost;
                  if (v203 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v201))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1D311E000, v202, OS_SIGNPOST_INTERVAL_END, v203, "ExamineRegion", "", buf, 2u);
                  }
                }

                v204 = 1;
                v393 = [v415 countByEnumeratingWithState:&v536 objects:v592 count:16];
                if (v393)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v204 = 1;
            }

LABEL_201:

            if (!v204)
            {

              v52 = 0;
              goto LABEL_364;
            }

            v401 |= v399;
          }

          else
          {
          }

          v420 = v420 + 1;
        }

        while (v420 != v396);
        v214 = [v384 countByEnumeratingWithState:&v540 objects:v593 count:16];
        v396 = v214;
      }

      while (v214);
    }

    else
    {
      v98 = 0;
      v401 = 0;
    }

    v215 = MNGetMNLPRRuleMatcherLog();
    v216 = v215;
    v217 = v429->_signpost;
    if (v217 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v215))
    {
      v218 = [v379 count];
      v219 = [v436 count];
      v220 = [v377 count];
      *buf = 67109632;
      *&buf[4] = v218;
      LOWORD(v578) = 1024;
      *(&v578 + 2) = v219;
      HIWORD(v578) = 1024;
      LODWORD(v579) = v220;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v216, OS_SIGNPOST_INTERVAL_END, v217, "FindRules", "pickup=%d, map=%d, fill=%d", buf, 0x14u);
    }

    *buf = 0;
    v578 = buf;
    v579 = 0x3032000000;
    v580 = __Block_byref_object_copy__4186;
    v581 = __Block_byref_object_dispose__4187;
    v582 = 0;
    v497[0] = 0;
    v497[1] = v497;
    v497[2] = 0x3032000000;
    v497[3] = __Block_byref_object_copy__4186;
    v497[4] = __Block_byref_object_dispose__4187;
    v498 = 0;
    v492[0] = MEMORY[0x1E69E9820];
    v492[1] = 3221225472;
    v492[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_196;
    v492[3] = &unk_1E842AF78;
    v495 = buf;
    v496 = v497;
    v493 = v402;
    v494 = v429;
    v221 = _Block_copy(v492);
    v222 = MNGetMNLPRRuleMatcherLog();
    v223 = v222;
    v224 = v429->_signpost;
    if (v224 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v222))
    {
      v225 = [v436 count];
      *v567 = 67109120;
      *&v567[4] = v225;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v223, OS_SIGNPOST_INTERVAL_BEGIN, v224, "FilterMapRules", "count=%d", v567, 8u);
    }

    v226 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v436, "count")}];
    v487[0] = MEMORY[0x1E69E9820];
    v487[1] = 3221225472;
    v487[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_199;
    v487[3] = &unk_1E842AFC8;
    v488 = v93;
    v489 = v376;
    v414 = v221;
    v491 = v414;
    v416 = v226;
    v490 = v416;
    [v436 enumerateObjectsUsingBlock:v487];
    v227 = MNGetMNLPRRuleMatcherLog();
    v228 = v227;
    v229 = v429->_signpost;
    if (v229 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
    {
      v230 = [v416 count];
      *v567 = 67109120;
      *&v567[4] = v230;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v228, OS_SIGNPOST_INTERVAL_END, v229, "FilterMapRules", "count=%d", v567, 8u);
    }

    if (![v379 count] || !objc_msgSend(v416, "count") && !objc_msgSend(v377, "count"))
    {
      if (v401)
      {
        if (v98)
        {
          _mnLPRWrappedError(a6, -11, 0, @"No pickup or mapping rules available for provided vehicle", v231, v232, v233, v234, v373);
          v331 = @"NoRulesForVehicle";
        }

        else
        {
          _mnLPRWrappedError(a6, -12, 0, @"No pickup or mapping rules available for provided time interval", v231, v232, v233, v234, v373);
          v331 = @"EmptyRulesForTimeRange";
        }
      }

      else
      {
        _mnLPRWrappedError(a6, -10, 0, @"No pickup or mapping rules available for provided regions", v231, v232, v233, v234, v373);
        v331 = @"NoRulesForRegion";
      }

      [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:v331];
      v332 = MNGetMNLPRRuleMatcherLog();
      v333 = v332;
      v334 = v429->_signpost;
      if (v334 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v332))
      {
        *v567 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v333, OS_SIGNPOST_INTERVAL_END, v334, "MaskPlate", "failed", v567, 2u);
      }

      v52 = 0;
LABEL_363:

      _Block_object_dispose(v497, 8);
      _Block_object_dispose(buf, 8);

LABEL_364:
      _Block_object_dispose(&v594, 8);

      goto LABEL_365;
    }

    v235 = MNGetMNLPRRuleMatcherLog();
    v236 = v235;
    v237 = v429->_signpost;
    if (v237 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v235))
    {
      *v567 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v236, OS_SIGNPOST_INTERVAL_BEGIN, v237, "BuildPickupRules", "", v567, 2u);
    }

    v485 = 0u;
    v486 = 0u;
    v483 = 0u;
    v484 = 0u;
    v440 = v379;
    v238 = [v440 countByEnumeratingWithState:&v483 objects:v576 count:16];
    if (v238)
    {
      locationb = *v484;
      do
      {
        for (i3 = 0; i3 != v238; ++i3)
        {
          if (*v484 != locationb)
          {
            objc_enumerationMutation(v440);
          }

          v240 = *(*(&v483 + 1) + 8 * i3);
          v241 = [v240 prLicensePlateStructure];
          v242 = [v241 supportedNumericCharacterSet];

          v243 = [v240 prLicensePlateStructure];
          v244 = [v243 supportedAlphabeticCharacterSet];

          v481 = 0u;
          v482 = 0u;
          v479 = 0u;
          v480 = 0u;
          v245 = [v240 pickupChars];
          v246 = [v245 countByEnumeratingWithState:&v479 objects:v575 count:16];
          if (v246)
          {
            v247 = *v480;
            do
            {
              for (i4 = 0; i4 != v246; ++i4)
              {
                if (*v480 != v247)
                {
                  objc_enumerationMutation(v245);
                }

                v249 = [(_MNLPRPlate *)obj charMatching:v244 alphabetics:v242 numerics:?];
                if (v249)
                {
                  v249[24] = 1;
                }
              }

              v246 = [v245 countByEnumeratingWithState:&v479 objects:v575 count:16];
            }

            while (v246);
          }
        }

        v238 = [v440 countByEnumeratingWithState:&v483 objects:v576 count:16];
      }

      while (v238);
    }

    v250 = MNGetMNLPRRuleMatcherLog();
    v251 = v250;
    v252 = v429->_signpost;
    if (v252 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v250))
    {
      *v567 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v251, OS_SIGNPOST_INTERVAL_END, v252, "BuildPickupRules", "", v567, 2u);
    }

    v253 = MNGetMNLPRRuleMatcherLog();
    v254 = v253;
    v255 = v429->_signpost;
    if (v255 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v253))
    {
      *v567 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v254, OS_SIGNPOST_INTERVAL_BEGIN, v255, "BuildMapRules", "", v567, 2u);
    }

    v477 = 0u;
    v478 = 0u;
    v475 = 0u;
    v476 = 0u;
    v256 = v416;
    v257 = [v256 countByEnumeratingWithState:&v475 objects:v574 count:16];
    if (v257)
    {
      v412 = *v476;
      v407 = v256;
      do
      {
        v258 = 0;
        v409 = v257;
        do
        {
          if (*v476 != v412)
          {
            objc_enumerationMutation(v256);
          }

          v418 = v258;
          v424 = *(*(&v475 + 1) + 8 * v258);
          v259 = [v424 mrLicensePlateStructure];
          v434 = [v259 supportedNumericCharacterSet];

          v260 = [v424 mrLicensePlateStructure];
          v431 = [v260 supportedAlphabeticCharacterSet];

          v473 = 0u;
          v474 = 0u;
          v471 = 0u;
          v472 = 0u;
          v421 = [v424 targetChars];
          v441 = [v421 countByEnumeratingWithState:&v471 objects:v573 count:16];
          if (v441)
          {
            v427 = *v472;
            do
            {
              for (locationc = 0; locationc != v441; locationc = (locationc + 1))
              {
                if (*v472 != v427)
                {
                  objc_enumerationMutation(v421);
                }

                v261 = [(_MNLPRPlate *)obj charMatching:v431 alphabetics:v434 numerics:?];
                if (v261)
                {
                  v469 = 0u;
                  v470 = 0u;
                  v467 = 0u;
                  v468 = 0u;
                  v262 = [v424 valueMappings];
                  v263 = [v262 countByEnumeratingWithState:&v467 objects:v572 count:16];
                  if (v263)
                  {
                    v264 = *v468;
                    do
                    {
                      for (i5 = 0; i5 != v263; ++i5)
                      {
                        if (*v468 != v264)
                        {
                          objc_enumerationMutation(v262);
                        }

                        v266 = *(*(&v467 + 1) + 8 * i5);
                        if ([v266 valuesCount])
                        {
                          v267 = [v266 values];
                          v268 = v261[4];
                          v269 = [v267 containsObject:v268];

                          if (!v269)
                          {
                            continue;
                          }
                        }

                        v270 = v266;
                        if ([v270 mappedValuesCount])
                        {
                          [v270 mappedValues];
                        }

                        else
                        {
                          [v270 values];
                        }
                        v271 = ;
                        if (v261[1])
                        {
                          v272 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v271];
                          [v261[1] intersectOrderedSet:v272];
                        }

                        else
                        {
                          v273 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v271];
                          v272 = v261[1];
                          v261[1] = v273;
                        }
                      }

                      v263 = [v262 countByEnumeratingWithState:&v467 objects:v572 count:16];
                    }

                    while (v263);
                  }
                }
              }

              v441 = [v421 countByEnumeratingWithState:&v471 objects:v573 count:16];
            }

            while (v441);
          }

          v258 = v418 + 1;
          v256 = v407;
        }

        while (v418 + 1 != v409);
        v257 = [v407 countByEnumeratingWithState:&v475 objects:v574 count:16];
      }

      while (v257);
    }

    v274 = MNGetMNLPRRuleMatcherLog();
    v275 = v274;
    v276 = v429->_signpost;
    if (v276 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v274))
    {
      *v567 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v275, OS_SIGNPOST_INTERVAL_END, v276, "BuildMapRules", "", v567, 2u);
    }

    v277 = MNGetMNLPRRuleMatcherLog();
    v278 = v277;
    v279 = v429->_signpost;
    if (v279 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v277))
    {
      *v567 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v278, OS_SIGNPOST_INTERVAL_BEGIN, v279, "BuildFillRules", "", v567, 2u);
    }

    v465 = 0u;
    v466 = 0u;
    v463 = 0u;
    v464 = 0u;
    v419 = v377;
    v425 = [v419 countByEnumeratingWithState:&v463 objects:v571 count:16];
    if (v425)
    {
      v422 = *v464;
      do
      {
        v435 = 0;
        do
        {
          if (*v464 != v422)
          {
            objc_enumerationMutation(v419);
          }

          v280 = *(*(&v463 + 1) + 8 * v435);
          v281 = [v280 frLicensePlateStructure];
          v432 = [v281 supportedNumericCharacterSet];

          v282 = [v280 frLicensePlateStructure];
          v428 = [v282 supportedAlphabeticCharacterSet];

          if (obj)
          {
            v283 = [(GEOLPRVehicle *)obj->_vehicle count];
          }

          else
          {
            v283 = 0;
          }

          if ([v280 hasFromChar])
          {
            v284 = [v280 fromChar];
            v285 = [(_MNLPRPlate *)obj charIndexForTarget:v284 alphabetics:v428 numerics:v432];

            if (v285 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v285 = 0;
            }
          }

          else
          {
            v285 = 0;
          }

          v286 = (v283 - 1);
          if ([v280 hasToChar])
          {
            v287 = [v280 toChar];
            v288 = [(_MNLPRPlate *)obj charIndexForTarget:v287 alphabetics:v428 numerics:v432];

            if (v288 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v286 = v288;
            }
          }

          v442 = v286;
          if (v285 <= v286)
          {
            while (obj && [(GEOLPRVehicle *)obj->_vehicle count]> v285)
            {
              v289 = [(GEOLPRVehicle *)obj->_vehicle objectAtIndexedSubscript:v285];
              v290 = v289;
              if (!v289)
              {
                goto LABEL_312;
              }

              if ((*(v289 + 24) & 1) == 0)
              {
                locationd = 0;
                goto LABEL_313;
              }

LABEL_329:

              if (++v285 > v442)
              {
                goto LABEL_304;
              }
            }

            v290 = 0;
LABEL_312:
            locationd = 1;
LABEL_313:
            v291 = [v280 fillType];
            switch(v291)
            {
              case 1:
                v292 = [v280 frLicensePlateStructure];
                v295 = [v292 supportedPlateAlphabetLetters];
                v296 = [v280 frLicensePlateStructure];
                v297 = [v296 supportedPlateNumerics];
                v294 = [v295 stringByAppendingString:v297];

                break;
              case 2:
                v292 = [v280 frLicensePlateStructure];
                v293 = [v292 supportedPlateAlphabetLetters];
LABEL_318:
                v294 = v293;
                break;
              case 3:
                v292 = [v280 frLicensePlateStructure];
                v293 = [v292 supportedPlateNumerics];
                goto LABEL_318;
              default:
                v294 = 0;
LABEL_322:
                if (locationd)
                {
                  v298 = 0;
                }

                else
                {
                  v298 = v290[5];
                }

                v299 = v298;
                v300 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v280, "fillType")}];
                v301 = [v299 objectForKeyedSubscript:v300];

                if (v301)
                {
                  v302 = MEMORY[0x1E695DFA0];
                  v303 = [v301 mnlpr_componentsSeparatedByGlyph];
                  v304 = [v302 orderedSetWithArray:v303];

                  v305 = MEMORY[0x1E695DFB8];
                  v306 = [v294 mnlpr_componentsSeparatedByGlyph];
                  v307 = [v305 orderedSetWithArray:v306];

                  [v304 intersectOrderedSet:v307];
                  v308 = [v304 array];
                  v309 = [v308 componentsJoinedByString:&stru_1F4EB6B70];

                  v294 = v309;
                }

                if (locationd)
                {
                  v310 = 0;
                }

                else
                {
                  v310 = v290[5];
                }

                v311 = v310;
                v312 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v280, "fillType")}];
                [v311 setObject:v294 forKeyedSubscript:v312];

                goto LABEL_329;
            }

            goto LABEL_322;
          }

LABEL_304:

          ++v435;
        }

        while (v435 != v425);
        v313 = [v419 countByEnumeratingWithState:&v463 objects:v571 count:16];
        v425 = v313;
      }

      while (v313);
    }

    v314 = MNGetMNLPRRuleMatcherLog();
    v315 = v314;
    v316 = v429->_signpost;
    if (v316 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v314))
    {
      *v567 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v315, OS_SIGNPOST_INTERVAL_END, v316, "BuildFillRules", "", v567, 2u);
    }

    *v567 = 0;
    v568 = v567;
    v569 = 0x2020000000;
    v570 = 0;
    v459 = 0;
    v460 = &v459;
    v461 = 0x2020000000;
    v462 = 1;
    v317 = MEMORY[0x1E695DF70];
    if (obj)
    {
      v318 = [(GEOLPRVehicle *)obj->_vehicle count];
    }

    else
    {
      v318 = 0;
    }

    v319 = [v317 arrayWithCapacity:v318];
    v320 = MNGetMNLPRRuleMatcherLog();
    v321 = v320;
    v322 = v429->_signpost;
    if (v322 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v320))
    {
      *v563 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v321, OS_SIGNPOST_INTERVAL_BEGIN, v322, "ScoreRules", "", v563, 2u);
    }

    v454[0] = MEMORY[0x1E69E9820];
    v454[1] = 3221225472;
    v454[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_224;
    v454[3] = &unk_1E842AFF0;
    v456 = &v594;
    v323 = v319;
    v455 = v323;
    v457 = v567;
    v458 = &v459;
    [(_MNLPRPlate *)obj enumerateCharsUsingBlock:v454];
    v324 = MNGetMNLPRRuleMatcherLog();
    v325 = v324;
    v326 = v429->_signpost;
    if (v326 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v324))
    {
      *v563 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v325, OS_SIGNPOST_INTERVAL_END, v326, "ScoreRules", "", v563, 2u);
    }

    v327 = *(v594.super_class + 5);
    if (v327)
    {
      if (a6)
      {
        *a6 = v327;
      }

      v328 = MNGetMNLPRRuleMatcherLog();
      v329 = v328;
      v330 = v429->_signpost;
      if (v330 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v328))
      {
        *v563 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v329, OS_SIGNPOST_INTERVAL_END, v330, "MaskPlate", "failed", v563, 2u);
      }

      v52 = 0;
    }

    else
    {
      v337 = *(v568 + 3);
      if (obj)
      {
        v338 = [(GEOLPRVehicle *)obj->_vehicle count];
      }

      else
      {
        v338 = 0;
      }

      v339 = v460[3];
      if (v337 == v338 || v339 <= 0x3E7)
      {
        v353 = MEMORY[0x1E69A1598];
        v354 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v339];
        v355 = [v378 allObjects];
        [v353 captureHardStopWithScore:v354 digits:v323 cities:v355];

        if (obj)
        {
          v356 = [(GEOLPRVehicle *)obj->_vehicle count];
        }

        else
        {
          v356 = 0;
        }

        v374 = [v323 componentsJoinedByString:{@", "}];
        v375 = v460[3];
        _mnLPRWrappedError(a6, -105, 0, @"Plate has %d chars and rules only allow us to mask chars {%@} for %llu permutation", v357, v358, v359, v360, v356);

        v361 = MNGetMNLPRRuleMatcherLog();
        v362 = v361;
        v363 = v429->_signpost;
        if (v363 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v361))
        {
          *v563 = 0;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v362, OS_SIGNPOST_INTERVAL_END, v363, "MaskPlate", "failed", v563, 2u);
        }

        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"RulesPreventMasking"];
        v52 = 0;
        goto LABEL_405;
      }

      v340 = MNGetMNLPRRuleMatcherLog();
      v341 = v340;
      v342 = v429->_signpost;
      if (v342 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v340))
      {
        *v563 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v341, OS_SIGNPOST_INTERVAL_BEGIN, v342, "ApplyRules", "", v563, 2u);
      }

      v343 = MEMORY[0x1E696AD60];
      v344 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
      v345 = [v343 stringWithCapacity:{objc_msgSend(v344, "length")}];

      v451[0] = MEMORY[0x1E69E9820];
      v451[1] = 3221225472;
      v451[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_232;
      v451[3] = &unk_1E842B018;
      v453 = &v594;
      v329 = v345;
      v452 = v329;
      [(_MNLPRPlate *)obj enumerateCharsUsingBlock:v451];
      v346 = MNGetMNLPRRuleMatcherLog();
      v347 = v346;
      v348 = v429->_signpost;
      if (v348 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v346))
      {
        *v563 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v347, OS_SIGNPOST_INTERVAL_END, v348, "ApplyRules", "", v563, 2u);
      }

      v349 = *(v594.super_class + 5);
      if (v349)
      {
        if (a6)
        {
          *a6 = v349;
        }

        v350 = MNGetMNLPRRuleMatcherLog();
        v351 = v350;
        v352 = v429->_signpost;
        if (v352 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v350))
        {
          *v563 = 0;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v351, OS_SIGNPOST_INTERVAL_END, v352, "MaskPlate", "failed", v563, 2u);
        }

        v52 = 0;
      }

      else
      {
        v364 = MNGetMNLPRRuleMatcherLog();
        v365 = v364;
        v366 = v429->_signpost;
        if (v366 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v364))
        {
          *v563 = 0;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v365, OS_SIGNPOST_INTERVAL_END, v366, "MaskPlate", "success", v563, 2u);
        }

        v367 = MNGetMNLPRRuleMatcherLog();
        if (os_log_type_enabled(v367, OS_LOG_TYPE_DEBUG))
        {
          v368 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
          *v563 = 138478083;
          v564 = v368;
          v565 = 2113;
          v566 = v329;
          _os_log_impl(&dword_1D311E000, v367, OS_LOG_TYPE_DEBUG, "Masked plate from %{private}@ -> %{private}@", v563, 0x16u);
        }

        v369 = MNGetMNLPRRuleMatcherLog();
        if (os_log_type_enabled(v369, OS_LOG_TYPE_DEBUG))
        {
          v370 = *p_usedRegions;
          *v563 = 138477827;
          v564 = v370;
          _os_log_impl(&dword_1D311E000, v369, OS_LOG_TYPE_DEBUG, "Used regions: %{private}@", v563, 0xCu);
        }

        v371 = MNGetMNLPRRuleMatcherLog();
        if (os_log_type_enabled(v371, OS_LOG_TYPE_DEBUG))
        {
          usedRegionETAs = v429->_usedRegionETAs;
          *v563 = 138477827;
          v564 = usedRegionETAs;
          _os_log_impl(&dword_1D311E000, v371, OS_LOG_TYPE_DEBUG, "Used region ETAs: %{private}@", v563, 0xCu);
        }

        v52 = [v329 copy];
      }
    }

LABEL_405:
    _Block_object_dispose(&v459, 8);
    _Block_object_dispose(v567, 8);
    goto LABEL_363;
  }

  v53 = [(GEOLPRVehicle *)v429->_vehicle licensePlate];
  _mnLPRWrappedError(a6, -101, 0, @"Empty/unsplittable plate %@", v54, v55, v56, v57, v53);

  [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"UnableToSplitString"];
  v52 = 0;
LABEL_366:

LABEL_367:
  v335 = *MEMORY[0x1E69E9840];

  return v52;
}

id __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) >= 1.0)
  {
    v5 = MNGetMNLPRRuleMatcherLog();
    v6 = v5;
    v7 = *(*(a1 + 40) + 24);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CalculateRoughETAs", "", buf, 2u);
    }

    v8 = [v3 mapRegion];
    v9 = [v8 mapRegion];

    v10 = [MEMORY[0x1E695DFA8] set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = *(a1 + 48);
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v38 + 1) + 8 * i) coordinate];
          if ([v9 containsCoordinate:?])
          {
            v16 = *(a1 + 64);
            v17 = *(a1 + 72);
            GEOCalculateDistance();
            v19 = [*(a1 + 32) dateByAddingTimeInterval:v18 / *(a1 + 56)];
            [v10 addObject:v19];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    v20 = [v9 intersectionsOnPolyline:*(a1 + 48)];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v34 + 1) + 8 * j) coordinate];
          v25 = *(a1 + 64);
          v26 = *(a1 + 72);
          GEOCalculateDistance();
          v28 = [*(a1 + 32) dateByAddingTimeInterval:v27 / *(a1 + 56)];
          [v10 addObject:v28];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v22);
    }

    v29 = MNGetMNLPRRuleMatcherLog();
    v30 = v29;
    v31 = *(*(a1 + 40) + 24);
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v30, OS_SIGNPOST_INTERVAL_END, v31, "CalculateRoughETAs", "success", buf, 2u);
    }

    v4 = [v10 allObjects];
  }

  else
  {
    v45[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v4;
}

id __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_196(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = *(*(a1[7] + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEE8]);
      v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      v8 = *(a1[7] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = a1[4];
      if (v10)
      {
        v11 = [*(*(a1[7] + 8) + 40) timeZone];
        v12 = [v10 isEqualToTimeZone:v11];

        if ((v12 & 1) == 0)
        {
          [*(*(a1[7] + 8) + 40) setTimeZone:a1[4]];
        }
      }

      v13 = [*(*(a1[7] + 8) + 40) timeZone];
      v14 = a1[5];
      v15 = *(v14 + 48);
      *(v14 + 48) = v13;

      v5 = *(*(a1[7] + 8) + 40);
    }

    v4 = [v5 components:528 fromDate:v3];
    v16 = *(*(a1[6] + 8) + 40);
    if (!v16)
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v16 = *(*(a1[6] + 8) + 40);
    }

    [v16 setObject:v4 forKeyedSubscript:v3];
  }

  v20 = v4;

  return v20;
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_199(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v5 = [*(a1 + 32) objectForKey:v3];
  if (![v5 count])
  {
    v6 = MNGetMNLPRRuleMatcherLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138478083;
      v25 = v3;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_FAULT, "Did not find a rough ETA for rule %{private}@ using %{public}@ instead", buf, 0x16u);
    }

    v23 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];

    v5 = v8;
  }

  v9 = [v3 valueMappings];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_200;
  v19 = &unk_1E842AFA0;
  v10 = v5;
  v20 = v10;
  v22 = *(a1 + 56);
  v11 = v4;
  v21 = v11;
  [v9 enumerateObjectsUsingBlock:&v16];

  if ([v11 count])
  {
    v12 = [v3 valueMappingsCount];
    if (v12 > [v11 count])
    {
      v13 = [v3 copy];
      v14 = [v13 valueMappings];
      [v14 removeObjectsAtIndexes:v11];

      [*(a1 + 48) addObject:v13];
    }
  }

  else
  {
    [*(a1 + 48) addObject:v3];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_224(void *a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = [(_MNLPRPlateCharacter *)a2 validReplacementCount:?];
  objc_storeStrong((v6 + 40), obj);
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [v8 addObject:v9];

  *a4 = *(*(a1[5] + 8) + 40) != 0;
  if (v7 > 1)
  {
    v10 = v7;
  }

  else
  {
    ++*(*(a1[6] + 8) + 24);
    v10 = 1;
  }

  *(*(a1[7] + 8) + 24) *= v10;
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_232(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v7 = *(*(a1 + 40) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  obj = v10;
  if (a2)
  {
    v11 = [(_MNLPRPlateCharacter *)a2 _validReplacements:?];
    v12 = [v11 count];
    if (v12)
    {
      if (v12 == 1)
      {
        [v11 firstObject];
      }

      else
      {
        [v11 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v11, "count"))}];
      }
      v13 = ;
    }

    else
    {
      v13 = 0;
    }

    v8 = obj;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v9, v8);
  v14 = *(a1 + 40);
  if (v13 && !*(*(v14 + 8) + 40))
  {
    [*(a1 + 32) appendString:v13];
    v14 = *(a1 + 40);
  }

  *a4 = *(*(v14 + 8) + 40) != 0;
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_200(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v32 = a2;
  if (![v32 timeConditionsCount])
  {
    goto LABEL_36;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = *(a1 + 32);
  v33 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v33)
  {

LABEL_35:
    [*(a1 + 40) addIndex:{a3, v28}];
    goto LABEL_36;
  }

  v28 = a3;
  obj = v5;
  v30 = 0;
  v31 = *v39;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v39 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v38 + 1) + 8 * i);
      v8 = (*(*(a1 + 48) + 16))();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = [v32 timeConditions];
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        while (2)
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v34 + 1) + 8 * j);
            if ([v14 dayOfWeeksCount] || objc_msgSend(v14, "dayOfMonthsCount"))
            {
              if (![v14 dayOfWeeksCount])
              {
                goto LABEL_39;
              }

              v15 = [v8 weekday];
              v16 = [v14 dayOfWeeks];
              v17 = [v14 dayOfWeeksCount];
              if (v17)
              {
                v18 = 1;
                do
                {
                  v20 = *v16++;
                  v19 = v20;
                  if (v18 >= v17)
                  {
                    break;
                  }

                  ++v18;
                }

                while (v19 != v15);
                if (v19 == v15)
                {
LABEL_39:
                  if (![v14 dayOfMonthsCount])
                  {
                    goto LABEL_29;
                  }

                  v21 = [v8 day];
                  v22 = [v14 dayOfMonths];
                  v23 = [v14 dayOfMonthsCount];
                  if (v23)
                  {
                    v24 = 1;
                    do
                    {
                      v26 = *v22++;
                      v25 = v26;
                      if (v24 >= v23)
                      {
                        break;
                      }

                      ++v24;
                    }

                    while (v25 != v21);
                    if (v25 == v21)
                    {
LABEL_29:
                      v30 = 1;
                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:
    }

    v33 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v33);

  a3 = v28;
  if ((v30 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)initForVehicle:(id)a3 withRules:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MNLPRRuleMatcher;
  v8 = [(MNLPRRuleMatcher *)&v14 self];

  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [v7 copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

@end