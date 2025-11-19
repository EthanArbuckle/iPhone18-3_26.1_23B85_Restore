@interface SGMNLEventInBanner
- (SGMNLEventInBanner)init;
- (void)trackEventWithScalar:(unint64_t)a3 interface:(SGMNLEventInterface_)a4 actionType:(SGMNLEventActionType_)a5 eventType:(id)a6 languageID:(id)a7 daysFromStartDate:(unint64_t)a8 confidenceScore:(unint64_t)a9 significantSender:(SGMBoolOption_)a10 participantCount:(unint64_t)a11 extractionLevel:(SGMNLEventExtractionLevel_)a12 usedBubblesCount:(unint64_t)a13 titleSource:(SGMEventTitleSource_)a14 titleAdj:(SGMEventStringAdj_)a15 dateAdj:(SGMEventDateAdj_)a16 duraAdj:(SGMEventDurationAdj_)a17 locationAdj:(SGMEventLocationAdj_)a18 addedAttendeesCount:(id)a19 calendarAppUsageLevel:(id)a20 mailAppUsageLevel:(SGMAppUsageLevel_)a21 messagesAppUsageLevel:(SGMAppUsageLevel_)a22;
@end

@implementation SGMNLEventInBanner

- (void)trackEventWithScalar:(unint64_t)a3 interface:(SGMNLEventInterface_)a4 actionType:(SGMNLEventActionType_)a5 eventType:(id)a6 languageID:(id)a7 daysFromStartDate:(unint64_t)a8 confidenceScore:(unint64_t)a9 significantSender:(SGMBoolOption_)a10 participantCount:(unint64_t)a11 extractionLevel:(SGMNLEventExtractionLevel_)a12 usedBubblesCount:(unint64_t)a13 titleSource:(SGMEventTitleSource_)a14 titleAdj:(SGMEventStringAdj_)a15 dateAdj:(SGMEventDateAdj_)a16 duraAdj:(SGMEventDurationAdj_)a17 locationAdj:(SGMEventLocationAdj_)a18 addedAttendeesCount:(id)a19 calendarAppUsageLevel:(id)a20 mailAppUsageLevel:(SGMAppUsageLevel_)a21 messagesAppUsageLevel:(SGMAppUsageLevel_)a22
{
  v86[19] = *MEMORY[0x1E69E9840];
  v25 = a6;
  v26 = a7;
  v27 = a19;
  v28 = a20;
  if (a4.var0 >= 0x14)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMNLEventInterface_toString(SGMNLEventInterface)"];
    [v30 handleFailureInFunction:v31 file:@"SGMetricsDefines.h" lineNumber:479 description:{@"unrecognized tag %lu on SGMNLEventInterface", a4.var0}];

    v29 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v29 = off_1E7EFC130[a4.var0];
  }

  v79 = v29;
  if (a5.var0 >= 0xC)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = 0x1E696A000uLL;
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMNLEventActionType_toString(SGMNLEventActionType)"];
    [v33 handleFailureInFunction:v34 file:@"SGMetricsDefines.h" lineNumber:430 description:{@"unrecognized tag %lu on SGMNLEventActionType", a5.var0}];

    v78 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v78 = off_1E7EFBFC8[a5.var0];
    v32 = 0x1E696A000;
  }

  v81 = v25;
  v80 = v26;
  if (a10.var0 >= 3)
  {
    v35 = 0x1E696A000uLL;
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMBoolOption_toString(SGMBoolOption)"];
    [v36 handleFailureInFunction:v37 file:@"SGMetricsDefines.h" lineNumber:27 description:{@"unrecognized tag %lu on SGMBoolOption", a10.var0}];

    v77 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v77 = off_1E7EFC028[a10.var0];
    v35 = 0x1E696A000;
  }

  if (a12.var0 >= 6)
  {
    v39 = [*(v35 + 2728) currentHandler];
    v40 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMNLEventExtractionLevel_toString(SGMNLEventExtractionLevel)"];
    [v39 handleFailureInFunction:v40 file:@"SGMetricsDefines.h" lineNumber:380 description:{@"unrecognized tag %lu on SGMNLEventExtractionLevel", a12.var0}];

    v38 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v38 = off_1E7EFC040[a12.var0];
  }

  v76 = v38;
  if (a14.var0 >= 4)
  {
    v42 = [*(v35 + 2728) currentHandler];
    v43 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventTitleSource_toString(SGMEventTitleSource)"];
    [v42 handleFailureInFunction:v43 file:@"SGMetricsDefines.h" lineNumber:397 description:{@"unrecognized tag %lu on SGMEventTitleSource", a14.var0}];

    v41 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v41 = off_1E7EFC070[a14.var0];
  }

  v75 = v41;
  if (a15.var0 >= 5)
  {
    v45 = [*(v35 + 2728) currentHandler];
    v46 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventStringAdj_toString(SGMEventStringAdj)"];
    [v45 handleFailureInFunction:v46 file:@"SGMetricsDefines.h" lineNumber:290 description:{@"unrecognized tag %lu on SGMEventStringAdj", a15.var0}];

    v44 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v44 = off_1E7EFC090[a15.var0];
  }

  v74 = v44;
  if (a16.var0 >= 0xA)
  {
    v48 = [*(v35 + 2728) currentHandler];
    v49 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventDateAdj_toString(SGMEventDateAdj)"];
    [v48 handleFailureInFunction:v49 file:@"SGMetricsDefines.h" lineNumber:319 description:{@"unrecognized tag %lu on SGMEventDateAdj", a16.var0}];

    v47 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v47 = off_1E7EFBF60[a16.var0];
  }

  v73 = v47;
  if (a17.var0 >= 6)
  {
    v51 = [*(v35 + 2728) currentHandler];
    v52 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventDurationAdj_toString(SGMEventDurationAdj)"];
    [v51 handleFailureInFunction:v52 file:@"SGMetricsDefines.h" lineNumber:340 description:{@"unrecognized tag %lu on SGMEventDurationAdj", a17.var0}];

    v50 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v50 = off_1E7EFC0B8[a17.var0];
  }

  v72 = v50;
  if (a18.var0 >= 5)
  {
    v54 = [*(v35 + 2728) currentHandler];
    v55 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventLocationAdj_toString(SGMEventLocationAdj)"];
    [v54 handleFailureInFunction:v55 file:@"SGMetricsDefines.h" lineNumber:359 description:{@"unrecognized tag %lu on SGMEventLocationAdj", a18.var0}];

    v53 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v53 = off_1E7EFC0E8[a18.var0];
  }

  v69 = v53;
  v71 = v27;
  v70 = v28;
  if (a21.var0 >= 4)
  {
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMAppUsageLevel_toString(SGMAppUsageLevel)"];
    [v57 handleFailureInFunction:v58 file:@"SGMetricsDefines.h" lineNumber:496 description:{@"unrecognized tag %lu on SGMAppUsageLevel", a21.var0}];

    v56 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v56 = off_1E7EFC110[a21.var0];
  }

  v68 = v56;
  if (a22.var0 >= 4)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMAppUsageLevel_toString(SGMAppUsageLevel)"];
    [v60 handleFailureInFunction:v61 file:@"SGMetricsDefines.h" lineNumber:496 description:{@"unrecognized tag %lu on SGMAppUsageLevel", a22.var0}];

    v59 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v59 = off_1E7EFC110[a22.var0];
  }

  tracker = self->_tracker;
  v86[0] = v79;
  v86[1] = v78;
  v86[2] = v81;
  v86[3] = v80;
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a8];
  v86[4] = v62;
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a9];
  v86[5] = v63;
  v86[6] = v77;
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a11];
  v86[7] = v64;
  v86[8] = v76;
  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a13];
  v86[9] = v65;
  v86[10] = v75;
  v86[11] = v74;
  v86[12] = v73;
  v86[13] = v72;
  v86[14] = v69;
  v86[15] = v71;
  v86[16] = v70;
  v86[17] = v68;
  v86[18] = v59;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:19];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v66 value:a3];

  v67 = *MEMORY[0x1E69E9840];
}

- (SGMNLEventInBanner)init
{
  v30[19] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SGMNLEventInBanner;
  v2 = [(SGMNLEventInBanner *)&v29 init];
  if (v2)
  {
    v26 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"I"];
    v28 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"A"];
    v27 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"T"];
    v23 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"L"];
    v25 = [MEMORY[0x1E69C5B40] propertyWithName:@"D" range:0 clampValues:{57, 1}];
    v21 = [MEMORY[0x1E69C5B40] propertyWithName:@"C" range:0 clampValues:{101, 1}];
    v22 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"S"];
    v20 = [MEMORY[0x1E69C5B40] propertyWithName:@"P" range:0 clampValues:{100, 1}];
    v24 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"E"];
    v19 = [MEMORY[0x1E69C5B40] propertyWithName:@"B" range:0 clampValues:{11, 1}];
    v18 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"TiS"];
    v17 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"TiA"];
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DaA"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DuA"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"LoA"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"AttC"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"CaUL"];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"MaUL"];
    v9 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"MeUL"];
    v10 = objc_alloc(MEMORY[0x1E69C5B58]);
    v30[0] = v26;
    v30[1] = v28;
    v30[2] = v27;
    v30[3] = v23;
    v30[4] = v25;
    v30[5] = v21;
    v30[6] = v22;
    v30[7] = v20;
    v30[8] = v24;
    v30[9] = v19;
    v30[10] = v18;
    v30[11] = v17;
    v30[12] = v3;
    v30[13] = v4;
    v30[14] = v5;
    v30[15] = v6;
    v30[16] = v7;
    v30[17] = v8;
    v11 = v7;
    v30[18] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:19];
    v13 = [v10 initWithFeatureId:@"Found" event:@"NLEventInBanner" registerProperties:v12 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

@end