@interface MNTransitInstruction
+ (id)instructionForUncertainArrivalToStationStep:(id)step context:(int64_t)context;
- (MNTransitInstruction)initWithContext:(int64_t)context;
- (id)formattedInstructionForType:(int64_t)type;
- (id)instructionSet;
- (id)instructionSetsForInstructionType:(int64_t)type;
- (id)instructionStringForType:(int64_t)type;
- (id)overridenInstructionsMapping;
- (void)_fillInInstructions;
@end

@implementation MNTransitInstruction

- (id)instructionStringForType:(int64_t)type
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_16;
      }

      minorInstructionStrings = [(MNTransitInstruction *)self minorInstructionStrings];
    }

    else
    {
      minorInstructionStrings = [(MNTransitInstruction *)self majorInstructionStrings];
    }

LABEL_15:
    v9 = minorInstructionStrings;
    goto LABEL_21;
  }

  switch(type)
  {
    case 2:
      minorInstructionStrings = [(MNTransitInstruction *)self tertiaryInstructionStrings];
      goto LABEL_15;
    case 3:
      primaryTimeInstructionString = [(MNTransitInstruction *)self primaryTimeInstructionString];
      if (primaryTimeInstructionString)
      {
        primaryTimeInstructionString2 = [(MNTransitInstruction *)self primaryTimeInstructionString];
        v20[0] = primaryTimeInstructionString2;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v20;
        goto LABEL_13;
      }

LABEL_19:
      v9 = 0;
      goto LABEL_20;
    case 4:
      primaryTimeInstructionString = [(MNTransitInstruction *)self secondaryTimeInstructionString];
      if (primaryTimeInstructionString)
      {
        primaryTimeInstructionString2 = [(MNTransitInstruction *)self secondaryTimeInstructionString];
        v19 = primaryTimeInstructionString2;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v19;
LABEL_13:
        v9 = [v6 arrayWithObjects:v7 count:1];

LABEL_20:
        goto LABEL_21;
      }

      goto LABEL_19;
  }

LABEL_16:
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315650;
    v14 = "[MNTransitInstruction instructionStringForType:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNTransitInstruction.m";
    v17 = 1024;
    v18 = 312;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v13, 0x1Cu);
  }

  v9 = 0;
LABEL_21:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)formattedInstructionForType:(int64_t)type
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_16;
      }

      minorFormattedInstruction = [(MNTransitInstruction *)self minorFormattedInstruction];
    }

    else
    {
      minorFormattedInstruction = [(MNTransitInstruction *)self majorFormattedInstruction];
    }

LABEL_15:
    v9 = minorFormattedInstruction;
    goto LABEL_21;
  }

  switch(type)
  {
    case 2:
      minorFormattedInstruction = [(MNTransitInstruction *)self tertiaryFormattedInstruction];
      goto LABEL_15;
    case 3:
      primaryTimeInstruction = [(MNTransitInstruction *)self primaryTimeInstruction];
      if (primaryTimeInstruction)
      {
        primaryTimeInstruction2 = [(MNTransitInstruction *)self primaryTimeInstruction];
        v20[0] = primaryTimeInstruction2;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v20;
        goto LABEL_13;
      }

LABEL_19:
      v9 = 0;
      goto LABEL_20;
    case 4:
      primaryTimeInstruction = [(MNTransitInstruction *)self secondaryTimeinstruction];
      if (primaryTimeInstruction)
      {
        primaryTimeInstruction2 = [(MNTransitInstruction *)self secondaryTimeinstruction];
        v19 = primaryTimeInstruction2;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v19;
LABEL_13:
        v9 = [v6 arrayWithObjects:v7 count:1];

LABEL_20:
        goto LABEL_21;
      }

      goto LABEL_19;
  }

LABEL_16:
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315650;
    v14 = "[MNTransitInstruction formattedInstructionForType:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNTransitInstruction.m";
    v17 = 1024;
    v18 = 288;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v13, 0x1Cu);
  }

  v9 = 0;
LABEL_21:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)instructionSetsForInstructionType:(int64_t)type
{
  array = [MEMORY[0x1E695DF70] array];
  overridenInstructionsMapping = [(MNTransitInstruction *)self overridenInstructionsMapping];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [overridenInstructionsMapping objectForKeyedSubscript:v7];
  instructions = [v8 instructions];

  if (instructions)
  {
    [array addObject:instructions];
  }

  instructionSet = [(MNTransitInstruction *)self instructionSet];

  if (instructionSet)
  {
    instructionSet2 = [(MNTransitInstruction *)self instructionSet];
    [array addObject:instructionSet2];
  }

  v12 = [array copy];

  return v12;
}

- (id)overridenInstructionsMapping
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[MNTransitInstruction overridenInstructionsMapping]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNTransitInstruction.m";
    v9 = 1024;
    v10 = 246;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v5, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)instructionSet
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[MNTransitInstruction instructionSet]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNTransitInstruction.m";
    v9 = 1024;
    v10 = 240;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v5, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_fillInInstructions
{
  context = [(MNTransitInstruction *)self context];
  if (context == 1)
  {
    v18 = [(MNTransitInstruction *)self instructionSetsForInstructionType:0];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __43__MNTransitInstruction__fillInInstructions__block_invoke_11;
    v73[3] = &unk_1E842A238;
    v5 = &v74;
    v74 = &__block_literal_global_519;
    v19 = MNMap(v18, v73);
    v20 = [v19 _navigation_firstObjectPassingTest:&__block_literal_global_31];
    [(MNTransitInstruction *)self setMajorFormattedInstruction:v20];

    v21 = [(MNTransitInstruction *)self instructionSetsForInstructionType:1];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __43__MNTransitInstruction__fillInInstructions__block_invoke_12;
    v71[3] = &unk_1E842A238;
    v9 = &v72;
    v72 = &__block_literal_global_519;
    v22 = MNMap(v21, v71);
    v23 = [v22 _navigation_firstObjectPassingTest:&__block_literal_global_31];
    [(MNTransitInstruction *)self setMinorFormattedInstruction:v23];

    v12 = [(MNTransitInstruction *)self instructionSetsForInstructionType:2];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __43__MNTransitInstruction__fillInInstructions__block_invoke_13;
    v69[3] = &unk_1E842A238;
    v13 = &v70;
    v70 = &__block_literal_global_519;
    v14 = MNMap(v12, v69);
    v15 = &__block_literal_global_52;
    v16 = &__block_literal_global_50;
    v17 = &__block_literal_global_48;
    goto LABEL_5;
  }

  if (context == 2)
  {
    v4 = [(MNTransitInstruction *)self instructionSetsForInstructionType:0];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __43__MNTransitInstruction__fillInInstructions__block_invoke_5;
    v79[3] = &unk_1E842A238;
    v5 = &v80;
    v80 = &__block_literal_global_519;
    v6 = MNMap(v4, v79);
    v7 = [v6 _navigation_firstObjectPassingTest:&__block_literal_global_31];
    [(MNTransitInstruction *)self setMajorFormattedInstruction:v7];

    v8 = [(MNTransitInstruction *)self instructionSetsForInstructionType:1];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __43__MNTransitInstruction__fillInInstructions__block_invoke_6;
    v77[3] = &unk_1E842A238;
    v9 = &v78;
    v78 = &__block_literal_global_519;
    v10 = MNMap(v8, v77);
    v11 = [v10 _navigation_firstObjectPassingTest:&__block_literal_global_31];
    [(MNTransitInstruction *)self setMinorFormattedInstruction:v11];

    v12 = [(MNTransitInstruction *)self instructionSetsForInstructionType:2];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __43__MNTransitInstruction__fillInInstructions__block_invoke_7;
    v75[3] = &unk_1E842A238;
    v13 = &v76;
    v76 = &__block_literal_global_519;
    v14 = MNMap(v12, v75);
    v15 = &__block_literal_global_46;
    v16 = &__block_literal_global_44;
    v17 = &__block_literal_global_42;
LABEL_5:
    v24 = [v14 _navigation_firstObjectPassingTest:&__block_literal_global_31];
    [(MNTransitInstruction *)self setTertiaryFormattedInstruction:v24];

    v25 = [(MNTransitInstruction *)self instructionSetsForInstructionType:0];
    v26 = __43__MNTransitInstruction__fillInInstructions__block_invoke_3(v25, v17);
    [(MNTransitInstruction *)self setMajorInstructionStrings:v26];

    v27 = [(MNTransitInstruction *)self instructionSetsForInstructionType:1];
    v28 = __43__MNTransitInstruction__fillInInstructions__block_invoke_3(v27, v16);
    [(MNTransitInstruction *)self setMinorInstructionStrings:v28];

    v29 = [(MNTransitInstruction *)self instructionSetsForInstructionType:2];
    v30 = __43__MNTransitInstruction__fillInInstructions__block_invoke_3(v29, v15);
    [(MNTransitInstruction *)self setTertiaryInstructionStrings:v30];
  }

  instructionSet = [(MNTransitInstruction *)self instructionSet];
  departureBarFormattedString = [instructionSet departureBarFormattedString];
  [(MNTransitInstruction *)self setDepartureBarInstruction:departureBarFormattedString];

  instructionSet2 = [(MNTransitInstruction *)self instructionSet];
  -[MNTransitInstruction setDepartureBarStyle:](self, "setDepartureBarStyle:", [instructionSet2 departureBarFormatStyle]);

  v34 = objc_alloc(MEMORY[0x1E69A1CA8]);
  instructionSet3 = [(MNTransitInstruction *)self instructionSet];
  departureBar = [instructionSet3 departureBar];
  v37 = [v34 initWithGeoFormattedString:departureBar];
  [(MNTransitInstruction *)self setDepartureBarInstructionString:v37];

  instructionSet4 = [(MNTransitInstruction *)self instructionSet];
  -[MNTransitInstruction setDepartureBarFormatStyle:](self, "setDepartureBarFormatStyle:", [instructionSet4 departureBarStyle]);

  instructionSet5 = [(MNTransitInstruction *)self instructionSet];
  countStopsFormattedString = [instructionSet5 countStopsFormattedString];
  [(MNTransitInstruction *)self setCountStopsFormattedString:countStopsFormattedString];

  instructionSet6 = [(MNTransitInstruction *)self instructionSet];
  expandableListFormattedString = [instructionSet6 expandableListFormattedString];
  [(MNTransitInstruction *)self setExpandableListFormattedString:expandableListFormattedString];

  v43 = objc_alloc(MEMORY[0x1E69A1CA8]);
  instructionSet7 = [(MNTransitInstruction *)self instructionSet];
  countStopsText = [instructionSet7 countStopsText];
  v46 = [v43 initWithGeoFormattedString:countStopsText];
  [(MNTransitInstruction *)self setCountStopsString:v46];

  v47 = objc_alloc(MEMORY[0x1E69A1CA8]);
  instructionSet8 = [(MNTransitInstruction *)self instructionSet];
  transitListInstruction = [instructionSet8 transitListInstruction];
  expandableListFormatted = [transitListInstruction expandableListFormatted];
  v51 = [v47 initWithGeoFormattedString:expandableListFormatted];
  [(MNTransitInstruction *)self setExpandableListString:v51];

  instructionSet9 = [(MNTransitInstruction *)self instructionSet];
  primaryTimeFormattedString = [instructionSet9 primaryTimeFormattedString];
  [(MNTransitInstruction *)self setPrimaryTimeInstruction:primaryTimeFormattedString];

  instructionSet10 = [(MNTransitInstruction *)self instructionSet];
  secondaryTimeFormattedString = [instructionSet10 secondaryTimeFormattedString];
  [(MNTransitInstruction *)self setSecondaryTimeinstruction:secondaryTimeFormattedString];

  v56 = objc_alloc(MEMORY[0x1E69A1CA8]);
  instructionSet11 = [(MNTransitInstruction *)self instructionSet];
  transitListInstruction2 = [instructionSet11 transitListInstruction];
  timeInstructions = [transitListInstruction2 timeInstructions];
  primaryText = [timeInstructions primaryText];
  v61 = [v56 initWithGeoFormattedString:primaryText];
  [(MNTransitInstruction *)self setPrimaryTimeInstructionString:v61];

  v62 = objc_alloc(MEMORY[0x1E69A1CA8]);
  instructionSet12 = [(MNTransitInstruction *)self instructionSet];
  transitListInstruction3 = [instructionSet12 transitListInstruction];
  timeInstructions2 = [transitListInstruction3 timeInstructions];
  secondaryText = [timeInstructions2 secondaryText];
  v67 = [v62 initWithGeoFormattedString:secondaryText];
  [(MNTransitInstruction *)self setSecondaryTimeInstructionString:v67];

  instructionSet13 = [(MNTransitInstruction *)self instructionSet];
  -[MNTransitInstruction setHideTimeInstructionsWhenCollapsed:](self, "setHideTimeInstructionsWhenCollapsed:", [instructionSet13 hideTimeInstructionsIfCollapsed]);
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 transitListInstruction];
  v4 = [v3 commandFormatteds];
  v5 = MNMap(v4, *(a1 + 32));

  return v5;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 transitListInstruction];
  v4 = [v3 detailFormatteds];
  v5 = MNMap(v4, *(a1 + 32));

  return v5;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 transitListInstruction];
  v4 = [v3 noticeFormatteds];
  v5 = MNMap(v4, *(a1 + 32));

  return v5;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = [a2 transitSignInstruction];
  v4 = [v3 commandFormatteds];
  v5 = MNMap(v4, *(a1 + 32));

  return v5;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 transitSignInstruction];
  v4 = [v3 detailFormatteds];
  v5 = MNMap(v4, *(a1 + 32));

  return v5;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = [a2 transitSignInstruction];
  v4 = [v3 noticeFormatteds];
  v5 = MNMap(v4, *(a1 + 32));

  return v5;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_3(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        v11 = [v10 _geo_compactMap:{&__block_literal_global_37, v14}];
        if ([v11 count])
        {

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 formatStrings];
  v4 = [v3 firstObject];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A1CA8]) initWithGeoFormattedString:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 transitListInstruction];
  v3 = [v2 noticeFormatteds];

  return v3;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = [a2 transitSignInstruction];
  v3 = [v2 noticeFormatteds];

  return v3;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 transitListInstruction];
  v3 = [v2 detailFormatteds];

  return v3;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 transitSignInstruction];
  v3 = [v2 detailFormatteds];

  return v3;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 transitListInstruction];
  v3 = [v2 commandFormatteds];

  return v3;
}

id __43__MNTransitInstruction__fillInInstructions__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 transitSignInstruction];
  v3 = [v2 commandFormatteds];

  return v3;
}

void *__43__MNTransitInstruction__fillInInstructions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 formatStrings];
  v4 = [v3 firstObject];

  if ([v4 length])
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (MNTransitInstruction)initWithContext:(int64_t)context
{
  v8.receiver = self;
  v8.super_class = MNTransitInstruction;
  v4 = [(MNTransitInstruction *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_context = context;
    v6 = v4;
  }

  return v5;
}

+ (id)instructionForUncertainArrivalToStationStep:(id)step context:(int64_t)context
{
  stepCopy = step;
  v6 = stepCopy;
  if (context)
  {
    originStop = [stepCopy originStop];
    composedRoute = [v6 composedRoute];
    v9 = [composedRoute getStationForStop:originStop];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = originStop;
    }

    bestName = [v10 bestName];
    if (bestName)
    {
      v13 = _MNLocalizedStringFromThisBundle(@"Transit_Instructions_UncertainArrivalWithStationName");
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, bestName];
    }

    else
    {
      v11 = _MNLocalizedStringFromThisBundle(@"Transit_Instructions_UncertainArrivalWithNoStationName");
    }
  }

  else
  {
    v11 = _MNLocalizedStringFromThisBundle(@"Transit_Instructions_UncertainArrivalWithNoStationName_Spoken");
  }

  return v11;
}

@end