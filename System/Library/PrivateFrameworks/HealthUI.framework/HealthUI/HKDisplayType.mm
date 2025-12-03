@interface HKDisplayType
+ (HKDisplayType)displayTypeWithIdentifier:(int64_t)identifier;
+ (id)builtinDisplayTypes;
+ (id)hk_chartFactorDisplayTypes;
+ (id)hk_enumeratedValueLabelsWithDisplayTypeIdentifier:(int64_t)identifier;
- (BOOL)allowsManualEntry;
- (BOOL)contextItemShouldUseTightSpacingBetweenValueAndUnit;
- (BOOL)hk_healthQueryChartDataSourceDependsOnTimeScope;
- (BOOL)hk_isSupportedTimeScope:(int64_t)scope;
- (BOOL)isEqual:(id)equal;
- (CGSize)_barCornerRadiusForCurrentDevice;
- (HKDisplayType)initWithDisplayTypeIdentifier:(int64_t)identifier categoryIdentifier:(int64_t)categoryIdentifier secondaryCategoryIdentifiers:(id)identifiers objectType:(id)type behavior:(id)behavior presentation:(id)presentation localization:(id)localization chartingRules:(id)self0 defaultChartingPredicate:(id)self1 chartingPredicatesByTimeScope:(id)self2;
- (HKSampleType)recordSampleType;
- (NSArray)secondaryDisplayCategories;
- (NSString)displayTypeIdentifierString;
- (NSString)listIconImageName;
- (UIImage)dataTypeIconImage;
- (UIImage)detailImage;
- (UIImage)displayTypeIcon;
- (UIImage)listIcon;
- (UIImage)shareIcon;
- (UIImage)unitIcon;
- (id)_audioLevelDataSourceForTypeIdentifier:(id)identifier withHealthStore:(id)store attenuatesExposureData:(BOOL)data unitController:(id)controller;
- (id)_dataSourceForTimeScope:(int64_t)scope dataCacheController:(id)controller;
- (id)_generateAFibBurdenLineSeriesWithColor:(id)color;
- (id)_generateAbnormalBreathingSeriesWithDisplayCategory:(id)category timeScope:(int64_t)scope;
- (id)_generateBarSeriesWithFillStyle:(id)style;
- (id)_generateGraphSeriesForTimeScope:(int64_t)scope displayCategory:(id)category unitController:(id)controller standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides chartSizeClass:(int64_t)class;
- (id)_generateHandwashingBarSeriesWithDisplayCategory:(id)category;
- (id)_generateInsulinBarSeriesWithDisplayCategory;
- (id)_generateJulianIndexedSevenDayQuantitySeriesWithColor:(id)color;
- (id)_generateLevelCategorySeriesWithColor:(id)color numericAxisConfigurationOverrides:(id)overrides;
- (id)_generateMinMaxSeriesWithColor:(id)color opacity:(double)opacity unselectedPointStyle:(int64_t)style selectedPointStyle:(int64_t)pointStyle;
- (id)_generateRelativeLineSeriesWithColor:(id)color timeScope:(int64_t)scope valueAxisAnnotationFormatter:(id)formatter chartSizeClass:(int64_t)class;
- (id)_generateSingleLineSeriesWithColor:(id)color timeScope:(int64_t)scope numericAxisConfigurationOverrides:(id)overrides;
- (id)_generateStackedSeriesWithColor:(id)color numericAxisConfigurationOverrides:(id)overrides;
- (id)_generateStandardSeriesForChartStyle:(int64_t)style timeScope:(int64_t)scope chartSizeClass:(int64_t)class axisConfiguration:(id)configuration displayCategory:(id)category unitController:(id)controller;
- (id)_singleValueUserInfoBlockWithUnitController:(id)controller displayType:(id)type statisticsOption:(unint64_t)option;
- (id)cardioFitnessDataSourceWithUnitController:(id)controller healthStore:(id)store;
- (id)chartableDisplayType;
- (id)chartingPredicateForTimeScope:(int64_t)scope;
- (id)color;
- (id)copyWithDefaultAxisRangeOverride:(id)override;
- (id)copyWithIsWheelchairUser:(BOOL)user;
- (id)copyWithLocalization:(id)localization;
- (id)copyWithPresentation:(id)presentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)generateDistributionSeriesWithColor:(id)color numberFormatter:(id)formatter lineWidth:(double)width hasMinMaxOverlay:(BOOL)overlay;
- (id)generateLineSeriesWithColor:(id)color timeScope:(int64_t)scope;
- (id)generateLineSeriesWithColor:(id)color timeScope:(int64_t)scope valueAxisAnnotationFormatter:(id)formatter;
- (id)generateScatterPlotSeriesWithColor:(id)color;
- (id)hk_axisScalingRuleForChartSizeClass:(int64_t)class unitController:(id)controller;
- (id)hk_chartFactorDescriptionDisplayTypes;
- (id)hk_customSeriesPointIntervalComponentsForTimeScope:(int64_t)scope resolution:(int64_t)resolution;
- (id)hk_defaultChartAxisBoundStringFromValue:(id)value defaultNumberFormatter:(id)formatter unitController:(id)controller;
- (id)hk_dimensionForChartAxisWithUnitController:(id)controller;
- (id)hk_enumeratedValueLabels;
- (id)hk_healthQueryChartCacheDataSourceForTimeScope:(int64_t)scope healthStore:(id)store unitController:(id)controller;
- (id)hk_interactiveChartAxisStringFromValue:(id)value defaultNumberFormatter:(id)formatter unitController:(id)controller;
- (id)hk_interactiveChartsFormatterForTimeScope:(int64_t)scope;
- (id)hk_numberFormatterForUnit:(id)unit formattingContext:(int64_t)context;
- (id)hk_standardInteractiveChartsFormatterForTimeScope:(int64_t)scope;
- (id)hk_standardSeriesForTimeScope:(int64_t)scope displayCategory:(id)category unitController:(id)controller dataCacheController:(id)cacheController numericAxisConfigurationOverrides:(id)overrides;
- (id)hk_standardSeriesForTimeScope:(int64_t)scope displayCategory:(id)category unitController:(id)controller dataCacheController:(id)cacheController numericAxisConfigurationOverrides:(id)overrides chartSizeClass:(int64_t)class;
- (id)hk_standardSeriesForTimeScope:(int64_t)scope graphSeriesDataSource:(id)source displayCategory:(id)category unitController:(id)controller dataCacheController:(id)cacheController numericAxisConfigurationOverrides:(id)overrides chartSizeClass:(int64_t)class;
- (id)hk_startOfDayTransform;
- (id)hk_valueFormatterForUnit:(id)unit formattingContext:(int64_t)context;
- (id)hk_valueOrderForStackedCharts;
- (id)localizedStringSuffixForWheelchairUser:(BOOL)user;
- (id)unitNameForValue:(id)value unitPreferenceController:(id)controller;
- (int64_t)hk_stackedChartSectionsCountForTimeScope:(int64_t)scope;
- (unint64_t)hash;
- (unint64_t)hk_chartCalendarUnitForTimeScope:(int64_t)scope;
- (unint64_t)hk_interactiveChartOptions;
- (unint64_t)roundingMode;
- (void)_assignAFibBurdenAxisForSeries:(id)series standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides;
- (void)_assignBloodPressureAxisForSeries:(id)series standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides;
- (void)_assignWalkingAsymmetryPercentageAxisForSeries:(id)series standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides;
@end

@implementation HKDisplayType

+ (id)builtinDisplayTypes
{
  v224[220] = *MEMORY[0x1E69E9840];
  v223 = HKDisplayTypeIdentifierBodyMassIndexMake();
  v224[0] = v223;
  v222 = HKDisplayTypeIdentifierBodyFatPercentageMake();
  v224[1] = v222;
  v221 = HKDisplayTypeIdentifierHeightMake();
  v224[2] = v221;
  v220 = HKDisplayTypeIdentifierBodyMassMake();
  v224[3] = v220;
  v219 = HKDisplayTypeIdentifierLeanBodyMassMake();
  v224[4] = v219;
  v218 = HKDisplayTypeIdentifierHeartRateMake();
  v224[5] = v218;
  v217 = HKDisplayTypeIdentifierStepsMake();
  v224[6] = v217;
  v216 = HKDisplayTypeIdentifierDistanceWalkingRunningMake();
  v224[7] = v216;
  v215 = HKDisplayTypeIdentifierBasalEnergyBurnedMake();
  v224[8] = v215;
  v214 = HKDisplayTypeIdentifierActiveEnergyMake();
  v224[9] = v214;
  v213 = HKDisplayTypeIdentifierFlightsClimbedMake();
  v224[10] = v213;
  v212 = HKDisplayTypeIdentifierNikeFuelMake();
  v224[11] = v212;
  v211 = HKDisplayTypeIdentifierOxygenSaturationMake();
  v224[12] = v211;
  v210 = HKDisplayTypeIdentifierBloodGlucoseMake();
  v224[13] = v210;
  v209 = HKDisplayTypeIdentifierBloodAlcoholContentMake();
  v224[14] = v209;
  v208 = HKDisplayTypeIdentifierPeripheralPerfusionIndexMake();
  v224[15] = v208;
  v207 = HKDisplayTypeIdentifierDietaryFatTotalMake();
  v224[16] = v207;
  v206 = HKDisplayTypeIdentifierDietaryFatPolyunsaturatedMake();
  v224[17] = v206;
  v205 = HKDisplayTypeIdentifierDietaryFatMonounsaturatedMake();
  v224[18] = v205;
  v204 = HKDisplayTypeIdentifierDietaryFatSaturatedMake();
  v224[19] = v204;
  v203 = HKDisplayTypeIdentifierDietaryCholesterolMake();
  v224[20] = v203;
  v202 = HKDisplayTypeIdentifierDietarySodiumMake();
  v224[21] = v202;
  v201 = HKDisplayTypeIdentifierDietaryCarbohydratesMake();
  v224[22] = v201;
  v200 = HKDisplayTypeIdentifierDietaryFiberMake();
  v224[23] = v200;
  v199 = HKDisplayTypeIdentifierDietarySugarMake();
  v224[24] = v199;
  v198 = HKDisplayTypeIdentifierDietaryEnergyMake();
  v224[25] = v198;
  v197 = HKDisplayTypeIdentifierDietaryProteinMake();
  v224[26] = v197;
  v196 = HKDisplayTypeIdentifierDietaryVitaminAMake();
  v224[27] = v196;
  v195 = HKDisplayTypeIdentifierDietaryVitaminB6Make();
  v224[28] = v195;
  v194 = HKDisplayTypeIdentifierDietaryVitaminB12Make();
  v224[29] = v194;
  v193 = HKDisplayTypeIdentifierDietaryVitaminCMake();
  v224[30] = v193;
  v192 = HKDisplayTypeIdentifierDietaryVitaminDMake();
  v224[31] = v192;
  v191 = HKDisplayTypeIdentifierDietaryVitaminEMake();
  v224[32] = v191;
  v190 = HKDisplayTypeIdentifierDietaryVitaminKMake();
  v224[33] = v190;
  v189 = HKDisplayTypeIdentifierDietaryCalciumMake();
  v224[34] = v189;
  v188 = HKDisplayTypeIdentifierDietaryIronMake();
  v224[35] = v188;
  v187 = HKDisplayTypeIdentifierDietaryThiaminMake();
  v224[36] = v187;
  v186 = HKDisplayTypeIdentifierDietaryRiboflavinMake();
  v224[37] = v186;
  v185 = HKDisplayTypeIdentifierDietaryNiacinMake();
  v224[38] = v185;
  v184 = HKDisplayTypeIdentifierDietaryFolateMake();
  v224[39] = v184;
  v183 = HKDisplayTypeIdentifierDietaryBiotinMake();
  v224[40] = v183;
  v182 = HKDisplayTypeIdentifierDietaryPantothenicAcidMake();
  v224[41] = v182;
  v181 = HKDisplayTypeIdentifierDietaryPhosphorusMake();
  v224[42] = v181;
  v180 = HKDisplayTypeIdentifierDietaryIodineMake();
  v224[43] = v180;
  v179 = HKDisplayTypeIdentifierDietaryMagnesiumMake();
  v224[44] = v179;
  v178 = HKDisplayTypeIdentifierDietaryZincMake();
  v224[45] = v178;
  v177 = HKDisplayTypeIdentifierDietarySeleniumMake();
  v224[46] = v177;
  v176 = HKDisplayTypeIdentifierDietaryCopperMake();
  v224[47] = v176;
  v175 = HKDisplayTypeIdentifierDietaryManganeseMake();
  v224[48] = v175;
  v174 = HKDisplayTypeIdentifierDietaryChromiumMake();
  v224[49] = v174;
  v173 = HKDisplayTypeIdentifierDietaryMolybdenumMake();
  v224[50] = v173;
  v172 = HKDisplayTypeIdentifierDietaryChlorideMake();
  v224[51] = v172;
  v171 = HKDisplayTypeIdentifierDietaryPotassiumMake();
  v224[52] = v171;
  v170 = HKDisplayTypeIdentifierNumberOfTimesFallenMake();
  v224[53] = v170;
  v169 = HKDisplayTypeIdentifierElectrodermalActivityMake();
  v224[54] = v169;
  v168 = HKDisplayTypeIdentifierInhalerUsageMake();
  v224[55] = v168;
  v167 = HKDisplayTypeIdentifierRespiratoryRateMake();
  v224[56] = v167;
  v166 = HKDisplayTypeIdentifierBodyTemperatureMake();
  v224[57] = v166;
  v165 = HKDisplayTypeIdentifierSleepAnalysisMake();
  v224[58] = v165;
  v164 = HKDisplayTypeIdentifierBiologicalSexMake();
  v224[59] = v164;
  v163 = HKDisplayTypeIdentifierDateOfBirthMake();
  v224[60] = v163;
  v162 = HKDisplayTypeIdentifierBloodTypeMake();
  v224[61] = v162;
  v161 = HKDisplayTypeIdentifierAppleStandHourMake();
  v224[62] = v161;
  v160 = HKDisplayTypeIdentifierForcedVitalCapacityMake();
  v224[63] = v160;
  v159 = HKDisplayTypeIdentifierForcedExpiratoryVolume1Make();
  v224[64] = v159;
  v158 = HKDisplayTypeIdentifierPeakExpiratoryFlowRateMake();
  v224[65] = v158;
  v157 = HKDisplayTypeIdentifierAppleExerciseTimeMake();
  v224[66] = v157;
  v156 = HKDisplayTypeIdentifierDietaryCaffeineMake();
  v224[67] = v156;
  v155 = HKDisplayTypeIdentifierWorkoutMake();
  v224[68] = v155;
  v154 = HKDisplayTypeIdentifierBloodPressureMake();
  v224[69] = v154;
  v153 = HKDisplayTypeIdentifierCyclingDistanceMake();
  v224[70] = v153;
  v152 = HKDisplayTypeIdentifierDietaryWaterMake();
  v224[71] = v152;
  v151 = HKDisplayTypeIdentifierFitzpatrickSkinTypeMake();
  v224[72] = v151;
  v150 = HKDisplayTypeIdentifierUVExposureMake();
  v224[73] = v150;
  v149 = HKDisplayTypeIdentifierBasalBodyTemperatureMake();
  v224[74] = v149;
  v148 = HKDisplayTypeIdentifierCervicalMucusQualityMake();
  v224[75] = v148;
  v147 = HKDisplayTypeIdentifierOvulationTestResultMake();
  v224[76] = v147;
  v146 = HKDisplayTypeIdentifierMenstruationMake();
  v224[77] = v146;
  v145 = HKDisplayTypeIdentifierIntermenstrualBleedingMake();
  v224[78] = v145;
  v144 = HKDisplayTypeIdentifierSexualActivityMake();
  v224[79] = v144;
  v143 = HKDisplayTypeIdentifierMindfulSessionMake();
  v224[80] = v143;
  v142 = HKDisplayTypeIdentifierActivitySummaryMake();
  v224[81] = v142;
  v141 = HKDisplayTypeIdentifierPushCountMake();
  v224[82] = v141;
  v140 = HKDisplayTypeIdentifierWheelchairUseMake();
  v224[83] = v140;
  v139 = HKDisplayTypeIdentifierCDADocumentMake();
  v224[84] = v139;
  v138 = HKDisplayTypeIdentifierSwimmingDistanceMake();
  v224[85] = v138;
  v137 = HKDisplayTypeIdentifierSwimmingStrokesMake();
  v224[86] = v137;
  v136 = HKDisplayTypeIdentifierWheelchairDistanceMake();
  v224[87] = v136;
  v135 = HKDisplayTypeIdentifierWaistCircumferenceMake();
  v224[88] = v135;
  v134 = HKDisplayTypeIdentifierRestingHeartRateMake();
  v224[89] = v134;
  v133 = HKDisplayTypeIdentifierVO2MaxMake();
  v224[90] = v133;
  v132 = HKDisplayTypeIdentifierInsulinDeliveryMake();
  v224[91] = v132;
  v131 = HKDisplayTypeIdentifierWalkingHeartRateAverageMake();
  v224[92] = v131;
  v130 = HKDisplayTypeIdentifierDownhillSnowSportsDistanceMake();
  v224[93] = v130;
  v129 = HKDisplayTypeIdentifierHeartRateVariabilitySDNNMake();
  v224[94] = v129;
  v128 = HKDisplayTypeIdentifierTachycardiaEventMake();
  v224[95] = v128;
  v127 = HKDisplayTypeIdentifierElectrocardiogramMake();
  v224[96] = v127;
  v126 = HKDisplayTypeIdentifierAudiogramMake();
  v224[97] = v126;
  v125 = HKDisplayTypeIdentifierBradycardiaEventMake();
  v224[98] = v125;
  v124 = HKDisplayTypeIdentifierAllergyRecordMake();
  v224[99] = v124;
  v123 = HKDisplayTypeIdentifierConditionRecordMake();
  v224[100] = v123;
  v122 = HKDisplayTypeIdentifierImmunizationRecordMake();
  v224[101] = v122;
  v121 = HKDisplayTypeIdentifierLabResultRecordMake();
  v224[102] = v121;
  v120 = HKDisplayTypeIdentifierMedicationRecordMake();
  v224[103] = v120;
  v119 = HKDisplayTypeIdentifierProcedureRecordMake();
  v224[104] = v119;
  v118 = HKDisplayTypeIdentifierVitalSignRecordMake();
  v224[105] = v118;
  v117 = HKDisplayTypeIdentifierAtrialFibrillationEventMake();
  v224[106] = v117;
  v116 = HKDisplayTypeIdentifierAbdominalCrampsMake();
  v224[107] = v116;
  v115 = HKDisplayTypeIdentifierBreastPainMake();
  v224[108] = v115;
  v114 = HKDisplayTypeIdentifierBloatingMake();
  v224[109] = v114;
  v113 = HKDisplayTypeIdentifierHeadacheMake();
  v224[110] = v113;
  v112 = HKDisplayTypeIdentifierAcneMake();
  v224[111] = v112;
  v111 = HKDisplayTypeIdentifierLowerBackPainMake();
  v224[112] = v111;
  v110 = HKDisplayTypeIdentifierPelvicPainMake();
  v224[113] = v110;
  v109 = HKDisplayTypeIdentifierMoodChangesMake();
  v224[114] = v109;
  v108 = HKDisplayTypeIdentifierConstipationMake();
  v224[115] = v108;
  v107 = HKDisplayTypeIdentifierDiarrheaMake();
  v224[116] = v107;
  v106 = HKDisplayTypeIdentifierFatigueMake();
  v224[117] = v106;
  v105 = HKDisplayTypeIdentifierNauseaMake();
  v224[118] = v105;
  v104 = HKDisplayTypeIdentifierSleepChangesMake();
  v224[119] = v104;
  v103 = HKDisplayTypeIdentifierAppetiteChangesMake();
  v224[120] = v103;
  v102 = HKDisplayTypeIdentifierHotFlashesMake();
  v224[121] = v102;
  v101 = HKDisplayTypeIdentifierEnvironmentalAudioExposureMake();
  v224[122] = v101;
  v100 = HKDisplayTypeIdentifierHeadphoneAudioExposureMake();
  v224[123] = v100;
  v99 = HKDisplayTypeIdentifierActivityMoveModeMake();
  v224[124] = v99;
  v98 = HKDisplayTypeIdentifierEnvironmentalAudioExposureEventMake();
  v224[125] = v98;
  v97 = HKDisplayTypeIdentifierAppleMoveTimeMake();
  v224[126] = v97;
  v96 = HKDisplayTypeIdentifierWalkingDoubleSupportPercentageMake();
  v224[127] = v96;
  v95 = HKDisplayTypeIdentifierSixMinuteWalkTestDistanceMake();
  v224[128] = v95;
  v94 = HKDisplayTypeIdentifierAppleStandTimeMake();
  v224[129] = v94;
  v93 = HKDisplayTypeIdentifierWalkingSpeedMake();
  v224[130] = v93;
  v92 = HKDisplayTypeIdentifierWalkingStepLengthMake();
  v224[131] = v92;
  v91 = HKDisplayTypeIdentifierToothbrushingEventMake();
  v224[132] = v91;
  v90 = HKDisplayTypeIdentifierPregnancyMake();
  v224[133] = v90;
  v89 = HKDisplayTypeIdentifierLactationMake();
  v224[134] = v89;
  v88 = HKDisplayTypeIdentifierContraceptiveMake();
  v224[135] = v88;
  v87 = HKDisplayTypeIdentifierWalkingAsymmetryPercentageMake();
  v224[136] = v87;
  v86 = HKDisplayTypeIdentifierStairAscentSpeedMake();
  v224[137] = v86;
  v85 = HKDisplayTypeIdentifierStairDescentSpeedMake();
  v224[138] = v85;
  v84 = HKDisplayTypeIdentifierSleepDurationGoalMake();
  v224[139] = v84;
  v83 = HKDisplayTypeIdentifierSleepScheduleMake();
  v224[140] = v83;
  v82 = HKDisplayTypeIdentifierHeadphoneAudioExposureEventMake();
  v224[141] = v82;
  v81 = HKDisplayTypeIdentifierRapidPoundingOrFlutteringHeartbeatMake();
  v224[142] = v81;
  v80 = HKDisplayTypeIdentifierSkippedHeartbeatMake();
  v224[143] = v80;
  v79 = HKDisplayTypeIdentifierFeverMake();
  v224[144] = v79;
  v78 = HKDisplayTypeIdentifierShortnessOfBreathMake();
  v224[145] = v78;
  v77 = HKDisplayTypeIdentifierChestTightnessOrPainMake();
  v224[146] = v77;
  v76 = HKDisplayTypeIdentifierFaintingMake();
  v224[147] = v76;
  v75 = HKDisplayTypeIdentifierDizzinessMake();
  v224[148] = v75;
  v74 = HKDisplayTypeIdentifierInsuranceRecordMake();
  v224[149] = v74;
  v73 = HKDisplayTypeIdentifierCardioFitnessMedicationsUseMake();
  v224[150] = v73;
  v72 = HKDisplayTypeIdentifierVomitingMake();
  v224[151] = v72;
  v71 = HKDisplayTypeIdentifierHeartburnMake();
  v224[152] = v71;
  v70 = HKDisplayTypeIdentifierCoughingMake();
  v224[153] = v70;
  v69 = HKDisplayTypeIdentifierWheezingMake();
  v224[154] = v69;
  v68 = HKDisplayTypeIdentifierSoreThroatMake();
  v224[155] = v68;
  v67 = HKDisplayTypeIdentifierCongestionMake();
  v224[156] = v67;
  v66 = HKDisplayTypeIdentifierRunnyNoseMake();
  v224[157] = v66;
  v65 = HKDisplayTypeIdentifierVaginalDrynessMake();
  v224[158] = v65;
  v64 = HKDisplayTypeIdentifierNightSweatsMake();
  v224[159] = v64;
  v63 = HKDisplayTypeIdentifierChillsMake();
  v224[160] = v63;
  v62 = HKDisplayTypeIdentifierHairLossMake();
  v224[161] = v62;
  v61 = HKDisplayTypeIdentifierDrySkinMake();
  v224[162] = v61;
  v60 = HKDisplayTypeIdentifierBladderIncontinenceMake();
  v224[163] = v60;
  v59 = HKDisplayTypeIdentifierMemoryLapseMake();
  v224[164] = v59;
  v58 = HKDisplayTypeIdentifierLowCardioFitnessEventMake();
  v224[165] = v58;
  v57 = HKDisplayTypeIdentifierHandwashingEventMake();
  v224[166] = v57;
  v56 = HKDisplayTypeIdentifierGeneralizedBodyAcheMake();
  v224[167] = v56;
  v55 = HKDisplayTypeIdentifierLossOfSmellMake();
  v224[168] = v55;
  v54 = HKDisplayTypeIdentifierLossOfTasteMake();
  v224[169] = v54;
  v53 = HKDisplayTypeIdentifierPregnancyTestResultMake();
  v224[170] = v53;
  v52 = HKDisplayTypeIdentifierProgesteroneTestResultMake();
  v224[171] = v52;
  v51 = HKDisplayTypeIdentifierAtrialFibrillationBurdenMake();
  v224[172] = v51;
  v50 = HKDisplayTypeIdentifierAppleWalkingSteadinessMake();
  v224[173] = v50;
  v49 = HKDisplayTypeIdentifierAppleWalkingSteadinessEventMake();
  v224[174] = v49;
  v48 = HKDisplayTypeIdentifierNumberOfAlcoholicBeveragesMake();
  v224[175] = v48;
  v47 = HKDisplayTypeIdentifierHypertensionEventMake();
  v224[176] = v47;
  v46 = HKDisplayTypeIdentifierAppleSleepingWristTemperatureMake();
  v224[177] = v46;
  v45 = HKDisplayTypeIdentifierVisionPrescriptionMake();
  v224[178] = v45;
  v44 = HKDisplayTypeIdentifierRunningStrideLengthMake();
  v224[179] = v44;
  v43 = HKDisplayTypeIdentifierRunningVerticalOscillationMake();
  v224[180] = v43;
  v42 = HKDisplayTypeIdentifierRunningGroundContactTimeMake();
  v224[181] = v42;
  v41 = HKDisplayTypeIdentifierPersistentIntermenstrualBleedingMake();
  v224[182] = v41;
  v40 = HKDisplayTypeIdentifierProlongedMenstrualPeriodsMake();
  v224[183] = v40;
  v39 = HKDisplayTypeIdentifierIrregularMenstrualCyclesMake();
  v224[184] = v39;
  v38 = HKDisplayTypeIdentifierInfrequentMenstrualCyclesMake();
  v224[185] = v38;
  v37 = HKDisplayTypeIdentifierHeartRateRecoveryMake();
  v224[186] = v37;
  v36 = HKDisplayTypeIdentifierClinicalNoteRecordMake();
  v224[187] = v36;
  v35 = HKDisplayTypeIdentifierUnderwaterDepthMake();
  v224[188] = v35;
  v34 = HKDisplayTypeIdentifierRunningPowerMake();
  v224[189] = v34;
  v33 = HKDisplayTypeIdentifierEnvironmentalSoundReductionMake();
  v224[190] = v33;
  v32 = HKDisplayTypeIdentifierMedicationDoseEventMake();
  v224[191] = v32;
  v31 = HKDisplayTypeIdentifierRunningSpeedMake();
  v224[192] = v31;
  v30 = HKDisplayTypeIdentifierAppleSleepingBreathingDisturbancesMake();
  v224[193] = v30;
  v29 = HKDisplayTypeIdentifierSleepApneaEventMake();
  v224[194] = v29;
  v28 = HKDisplayTypeIdentifierWaterTemperatureMake();
  v224[195] = v28;
  v27 = HKDisplayTypeIdentifierTimeInDaylightMake();
  v224[196] = v27;
  v26 = HKDisplayTypeIdentifierCyclingPowerMake();
  v224[197] = v26;
  v25 = HKDisplayTypeIdentifierCyclingSpeedMake();
  v224[198] = v25;
  v24 = HKDisplayTypeIdentifierCyclingCadenceMake();
  v224[199] = v24;
  v23 = HKDisplayTypeIdentifierCyclingFunctionalThresholdPowerMake();
  v224[200] = v23;
  v22 = HKDisplayTypeIdentifierStateOfMindMake();
  v224[201] = v22;
  v21 = HKDisplayTypeIdentifierHypertensivePatternMeasurementMake();
  v224[202] = v21;
  v20 = HKDisplayTypeIdentifierPhysicalEffortMake();
  v224[203] = v20;
  v19 = HKDisplayTypeIdentifierGAD7Make();
  v224[204] = v19;
  v18 = HKDisplayTypeIdentifierPHQ9Make();
  v224[205] = v18;
  v17 = HKDisplayTypeIdentifierPaddleSportsDistanceMake();
  v224[206] = v17;
  v16 = HKDisplayTypeIdentifierRowingDistanceMake();
  v224[207] = v16;
  v15 = HKDisplayTypeIdentifierCrossCountrySkiingDistanceMake();
  v224[208] = v15;
  v14 = HKDisplayTypeIdentifierSkatingSportsDistanceMake();
  v224[209] = v14;
  v2 = HKDisplayTypeIdentifierEstimatedWorkoutEffortScoreMake();
  v224[210] = v2;
  v3 = HKDisplayTypeIdentifierRowingSpeedMake();
  v224[211] = v3;
  v4 = HKDisplayTypeIdentifierCrossCountrySkiingSpeedMake();
  v224[212] = v4;
  v5 = HKDisplayTypeIdentifierPaddleSportsSpeedMake();
  v224[213] = v5;
  v6 = HKDisplayTypeIdentifierWorkoutEffortScoreMake();
  v224[214] = v6;
  v7 = HKDisplayTypeIdentifierAppleBalanceMetricsMake();
  v224[215] = v7;
  v8 = HKDisplayTypeIdentifierUserAnnotatedMedicationTypeMake();
  v224[216] = v8;
  v9 = HKDisplayTypeIdentifierBleedingDuringPregnancyMake();
  v224[217] = v9;
  v10 = HKDisplayTypeIdentifierBleedingAfterPregnancyMake();
  v224[218] = v10;
  v11 = HKDisplayTypeIdentifierAppleSleepScoreMake();
  v224[219] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v224 count:220];

  return v13;
}

- (NSString)displayTypeIdentifierString
{
  v3 = HKDisplayTypeIdentifierToString([(HKDisplayType *)self displayTypeIdentifier]);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownDisplayType(%ld)", -[HKDisplayType displayTypeIdentifier](self, "displayTypeIdentifier")];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)roundingMode
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  result = 1;
  if (displayTypeIdentifier > 178)
  {
    if (((displayTypeIdentifier - 280) > 0x18 || ((1 << (displayTypeIdentifier - 24)) & 0x107C04F) == 0) && displayTypeIdentifier != 179 && displayTypeIdentifier != 186)
    {
      return 0;
    }
  }

  else if ((displayTypeIdentifier - 75) > 0x3F || ((1 << (displayTypeIdentifier - 75)) & 0x8000005806000111) == 0)
  {
    v4 = displayTypeIdentifier - 7;
    if (v4 > 0x3F || ((1 << v4) & 0x800000000000006FLL) == 0)
    {
      return 0;
    }
  }

  return result;
}

- (UIImage)unitIcon
{
  if ([(HKDisplayType *)self displayTypeIdentifier]== 13)
  {
    v2 = MEMORY[0x1E69DCAB8];
    v3 = HKHealthUIFrameworkBundle();
    v4 = [v2 imageNamed:@"nike_fuel_unit_icon" inBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hk_numberFormatterForUnit:(id)unit formattingContext:(int64_t)context
{
  unitCopy = unit;
  chartingRules = [(HKDisplayType *)self chartingRules];
  v8 = [chartingRules allowedDecimalPrecisionRuleForUnit:unitCopy];

  objectType = [(HKDisplayType *)self objectType];
  v10 = [objectType hk_numberFormatterForUnit:unitCopy decimalPrecisionRule:v8 formattingContext:context];

  return v10;
}

- (id)chartableDisplayType
{
  v2 = [[HKChartableDataType alloc] initWithDisplayType:self];

  return v2;
}

- (id)hk_customSeriesPointIntervalComponentsForTimeScope:(int64_t)scope resolution:(int64_t)resolution
{
  v5 = [(HKDisplayType *)self chartableDisplayType:scope];
  v6 = [v5 hk_customSeriesPointIntervalComponentsForTimeScope:scope resolution:0];

  return v6;
}

- (unint64_t)hk_chartCalendarUnitForTimeScope:(int64_t)scope
{
  chartableDisplayType = [(HKDisplayType *)self chartableDisplayType];
  v5 = [chartableDisplayType hk_chartCalendarUnitForTimeScope:scope];

  return v5;
}

- (id)hk_startOfDayTransform
{
  if ([(HKDisplayType *)self displayTypeIdentifier]== 63)
  {
    HKCalendarDateTransformPreceding6PM();
  }

  else
  {
    HKCalendarDateTransformNone();
  }
  v2 = ;

  return v2;
}

- (id)hk_interactiveChartAxisStringFromValue:(id)value defaultNumberFormatter:(id)formatter unitController:(id)controller
{
  controllerCopy = controller;
  v9 = [(HKDisplayType *)self hk_defaultChartAxisBoundStringFromValue:value defaultNumberFormatter:formatter unitController:controllerCopy];
  presentation = [(HKDisplayType *)self presentation];
  shouldDisplayUnitStringOnYAxis = [presentation shouldDisplayUnitStringOnYAxis];

  if (shouldDisplayUnitStringOnYAxis)
  {
    v12 = [controllerCopy localizedDisplayNameForDisplayType:self];
    v13 = HKFormatValueAndUnit(v9, v12);

    v9 = v13;
  }

  return v9;
}

- (id)hk_defaultChartAxisBoundStringFromValue:(id)value defaultNumberFormatter:(id)formatter unitController:(id)controller
{
  controllerCopy = controller;
  formatterCopy = formatter;
  valueCopy = value;
  v11 = [controllerCopy unitForDisplayType:self];
  v12 = [(HKDisplayType *)self hk_numberFormatterForUnit:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = formatterCopy;
  }

  v15 = v14;

  v16 = HKFormattedStringFromValue(valueCopy, self, controllerCopy, 1, v15);

  return v16;
}

- (id)_dataSourceForTimeScope:(int64_t)scope dataCacheController:(id)controller
{
  v4 = [controller interactiveChartsCacheForDisplayType:self timeScope:scope];
  v5 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v5 setChartCache:v4];

  return v5;
}

- (id)_generateMinMaxSeriesWithColor:(id)color opacity:(double)opacity unselectedPointStyle:(int64_t)style selectedPointStyle:(int64_t)pointStyle
{
  colorCopy = color;
  v10 = objc_alloc_init(HKMinMaxSeries);
  v11 = [HKChartSeriesPointMarker chartPointWithColor:colorCopy radius:style style:4.0];
  [(HKMinMaxSeries *)v10 setUnselectedPointMarkerImage:v11];

  v12 = [colorCopy colorWithAlphaComponent:opacity];
  v13 = [HKStrokeStyle strokeStyleWithColor:v12 lineWidth:8.0];
  [(HKMinMaxSeries *)v10 setUnselectedStrokeStyle:v13];

  v14 = [HKChartSeriesPointMarker chartPointWithColor:colorCopy radius:pointStyle style:HKUIOnePixel() + 5.0];
  [(HKMinMaxSeries *)v10 setSelectedPointMarkerImage:v14];

  v15 = [colorCopy colorWithAlphaComponent:opacity];

  v16 = HKUIOnePixel();
  v17 = [HKStrokeStyle strokeStyleWithColor:v15 lineWidth:v16 + 5.0 + v16 + 5.0];
  [(HKMinMaxSeries *)v10 setSelectedStrokeStyle:v17];

  return v10;
}

- (CGSize)_barCornerRadiusForCurrentDevice
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] isiPad])
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 1.5;
  }

  v4 = v3;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_generateBarSeriesWithFillStyle:(id)style
{
  styleCopy = style;
  v5 = objc_alloc_init(HKBarSeries);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v7 = [HKStrokeStyle strokeStyleWithColor:clearColor lineWidth:3.0];
  v8 = objc_alloc_init(HKStrokeStyle);
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v8 setStrokeColor:v9];

  [(HKStrokeStyle *)v8 setLineWidth:3.0];
  [(HKStrokeStyle *)v8 setBlendMode:22];
  [(HKBarSeries *)v5 setUnselectedStrokeStyle:v8];
  [(HKBarSeries *)v5 setTiledStrokeStyle:v7];
  [(HKBarSeries *)v5 setUnselectedFillStyle:styleCopy];
  [(HKBarSeries *)v5 setSelectedFillStyle:styleCopy];

  v10 = objc_alloc_init(HKSolidFillStyle);
  hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  [(HKSolidFillStyle *)v10 setColor:hk_chartInactiveSeriesColor];

  [(HKBarSeries *)v5 setInactiveFillStyle:v10];
  [(HKDisplayType *)self _barCornerRadiusForCurrentDevice];
  [(HKBarSeries *)v5 setCornerRadii:?];

  return v5;
}

- (id)_generateInsulinBarSeriesWithDisplayCategory
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(HKStackedBarSeries);
  v4 = objc_alloc_init(HKStrokeStyle);
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v4 setStrokeColor:v5];

  [(HKStrokeStyle *)v4 setLineWidth:3.0];
  [(HKStrokeStyle *)v4 setBlendMode:22];
  [(HKBarSeries *)v3 setUnselectedStrokeStyle:v4];
  [(HKDisplayType *)self _barCornerRadiusForCurrentDevice];
  [(HKBarSeries *)v3 setCornerRadii:?];
  v6 = objc_alloc_init(HKSolidFillStyle);
  hk_insulinBasalKeyColor = [MEMORY[0x1E69DC888] hk_insulinBasalKeyColor];
  [(HKSolidFillStyle *)v6 setColor:hk_insulinBasalKeyColor];

  v8 = v6;
  v9 = objc_alloc_init(HKSolidFillStyle);
  v10 = HKHealthKeyColor();
  [(HKSolidFillStyle *)v9 setColor:v10];

  hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  v12 = [HKStrokeStyle strokeStyleWithColor:hk_chartBackgroundColor lineWidth:3.0];
  [(HKBarSeries *)v3 setTiledStrokeStyle:v12];
  v21[0] = v8;
  v21[1] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [(HKStackedBarSeries *)v3 setUnselectedFillStyles:v13];

  v14 = objc_alloc_init(HKSolidFillStyle);
  hk_chartGrayGraphColor = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  [(HKSolidFillStyle *)v14 setColor:hk_chartGrayGraphColor];

  v16 = objc_alloc_init(HKSolidFillStyle);
  hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  [(HKSolidFillStyle *)v16 setColor:hk_chartInactiveSeriesColor];

  v20[0] = v14;
  v20[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

  [(HKStackedBarSeries *)v3 setInactiveFillStyles:v18];

  return v3;
}

- (id)_generateHandwashingBarSeriesWithDisplayCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_alloc_init(HKBarSeries);
  v6 = objc_alloc_init(HKStrokeStyle);
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v6 setStrokeColor:v7];

  [(HKStrokeStyle *)v6 setLineWidth:3.0];
  [(HKStrokeStyle *)v6 setBlendMode:22];
  [(HKBarSeries *)v5 setUnselectedStrokeStyle:v6];
  [(HKDisplayType *)self _barCornerRadiusForCurrentDevice];
  [(HKBarSeries *)v5 setCornerRadii:?];
  hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  v9 = [HKStrokeStyle strokeStyleWithColor:hk_chartBackgroundColor lineWidth:3.0];
  [(HKBarSeries *)v5 setTiledStrokeStyle:v9];
  fillStyle = [categoryCopy fillStyle];

  [(HKBarSeries *)v5 setUnselectedFillStyle:fillStyle];
  v11 = objc_alloc_init(HKSolidFillStyle);
  hk_otherSecondaryColor = [MEMORY[0x1E69DC888] hk_otherSecondaryColor];
  [(HKSolidFillStyle *)v11 setColor:hk_otherSecondaryColor];

  v13 = objc_alloc_init(HKBarSeriesConfiguration);
  [(HKBarSeriesConfiguration *)v13 setUnselectedFillStyle:v11];
  [(HKBarSeriesConfiguration *)v13 setIsIncludedBlock:&__block_literal_global_5];
  overrideConfigurations = [(HKBarSeries *)v5 overrideConfigurations];
  [overrideConfigurations addObject:v13];

  return v5;
}

uint64_t __81__HKDisplayType_HKGraphSeries___generateHandwashingBarSeriesWithDisplayCategory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 meetsGoal] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_generateStackedSeriesWithColor:(id)color numericAxisConfigurationOverrides:(id)overrides
{
  overridesCopy = overrides;
  colorCopy = color;
  v8 = objc_alloc_init(HKHorizontalTimePeriodSeries);
  [(HKHorizontalTimePeriodSeries *)v8 setFillColor:colorCopy];

  [(HKHorizontalTimePeriodSeries *)v8 setLineWidth:HKUIOnePixel() + 9.0];
  hk_enumeratedValueLabels = [(HKDisplayType *)self hk_enumeratedValueLabels];
  [(HKHorizontalTimePeriodSeries *)v8 setValueLabels:hk_enumeratedValueLabels];

  hk_valueOrderForStackedCharts = [(HKDisplayType *)self hk_valueOrderForStackedCharts];
  [(HKHorizontalTimePeriodSeries *)v8 setEnumerationValueOrdering:hk_valueOrderForStackedCharts];

  v11 = HKHealthKeyColor();
  v12 = [HKChartSeriesPointMarker chartPointWithColor:v11 radius:0 style:HKUIOnePixel() + 5.0];
  [(HKHorizontalTimePeriodSeries *)v8 setSelectedPointMarkerImage:v12];

  [overridesCopy setLabelDataSource:v8];

  return v8;
}

- (id)_generateSingleLineSeriesWithColor:(id)color timeScope:(int64_t)scope numericAxisConfigurationOverrides:(id)overrides
{
  colorCopy = color;
  overridesCopy = overrides;
  v10 = objc_alloc_init(HKHorizontalSingleLineSeries);
  if (scope != 6)
  {
    chartingRules = [(HKDisplayType *)self chartingRules];
    shouldConnectSamplesWithLines = [chartingRules shouldConnectSamplesWithLines];

    [(HKHorizontalSingleLineSeries *)v10 setShouldConnectPoints:shouldConnectSamplesWithLines];
  }

  [(HKHorizontalSingleLineSeries *)v10 setBaseColor:colorCopy];
  v13 = HKHealthKeyColor();
  v14 = [HKChartSeriesPointMarker chartPointWithColor:v13 radius:0 style:HKUIOnePixel() + 5.0];
  [(HKHorizontalSingleLineSeries *)v10 setSelectedPointMarkerImage:v14];

  [overridesCopy setLabelDataSource:v10];

  return v10;
}

- (id)_generateLevelCategorySeriesWithColor:(id)color numericAxisConfigurationOverrides:(id)overrides
{
  overridesCopy = overrides;
  colorCopy = color;
  v8 = objc_alloc_init(HKLevelCategoryTimePeriodSeries);
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  [(HKLevelCategoryTimePeriodSeries *)v8 setCategoryLevelFont:hk_chartAxisLabelFont];

  hk_chartLightGrayTextColor = [MEMORY[0x1E69DC888] hk_chartLightGrayTextColor];
  [(HKLevelCategoryTimePeriodSeries *)v8 setCategoryLevelColor:hk_chartLightGrayTextColor];

  [(HKHorizontalTimePeriodSeries *)v8 setFillColor:colorCopy];
  hk_enumeratedValueLabels = [(HKDisplayType *)self hk_enumeratedValueLabels];
  [(HKHorizontalTimePeriodSeries *)v8 setValueLabels:hk_enumeratedValueLabels];

  hk_valueOrderForStackedCharts = [(HKDisplayType *)self hk_valueOrderForStackedCharts];
  [(HKHorizontalTimePeriodSeries *)v8 setEnumerationValueOrdering:hk_valueOrderForStackedCharts];

  v13 = HKHealthKeyColor();
  v14 = [HKChartSeriesPointMarker chartPointWithColor:v13 radius:0 style:HKUIOnePixel() + 5.0];
  [(HKHorizontalTimePeriodSeries *)v8 setSelectedPointMarkerImage:v14];

  [(HKLevelCategoryTimePeriodSeries *)v8 setMarkerRadius:4.0];
  chartingRules = [(HKDisplayType *)self chartingRules];

  if (chartingRules)
  {
    chartingRules2 = [(HKDisplayType *)self chartingRules];
    -[HKLevelCategoryTimePeriodSeries setDrawSampleSpans:](v8, "setDrawSampleSpans:", [chartingRules2 shouldConnectSamplesWithLines]);
  }

  [overridesCopy setLabelDataSource:v8];

  return v8;
}

- (id)_generateJulianIndexedSevenDayQuantitySeriesWithColor:(id)color
{
  colorCopy = color;
  v4 = [[HKJulianIndexedSevenDayQuantitySeries alloc] initWithColor:colorCopy lineWidth:6.0];

  return v4;
}

- (id)_generateAFibBurdenLineSeriesWithColor:(id)color
{
  v3 = [(HKDisplayType *)self generateLineSeriesWithColor:color timeScope:3];
  [v3 setMaximumConnectionDistance:&unk_1F4384850];

  return v3;
}

- (void)_assignAFibBurdenAxisForSeries:(id)series standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides
{
  if (!overrides)
  {
    configurationCopy = configuration;
    seriesCopy = series;
    v10 = objc_alloc_init(HKNumericAxisConfiguration);
    [(HKNumericAxisConfiguration *)v10 applyOverridesFromNumericAxisConfiguration:configurationCopy];

    [(HKAxisConfiguration *)v10 setMinLabels:5];
    [(HKAxisConfiguration *)v10 setMaxLabels:5];
    v9 = [HKNumericAxis standardNumericYAxisWithConfigurationOverrides:v10];
    [seriesCopy setYAxis:v9];
  }
}

- (void)_assignBloodPressureAxisForSeries:(id)series standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides
{
  if (!overrides)
  {
    configurationCopy = configuration;
    seriesCopy = series;
    v11 = objc_alloc_init(HKNumericAxisConfiguration);
    [(HKNumericAxisConfiguration *)v11 applyOverridesFromNumericAxisConfiguration:configurationCopy];

    [(HKAxisConfiguration *)v11 setAxisAnnotationsExcludeInterstitialAxisLabels:1];
    [(HKAxisConfiguration *)v11 setMaxLabels:6];
    v9 = HKUICeilToScreenScale(8.0 * 0.5);
    [(HKNumericAxisConfiguration *)v11 setTopVerticalLabelPadding:v9 + HKUIOnePixel()];
    v10 = [HKNumericAxis standardNumericYAxisWithConfigurationOverrides:v11];
    [seriesCopy setYAxis:v10];
  }
}

- (void)_assignWalkingAsymmetryPercentageAxisForSeries:(id)series standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides
{
  if (!overrides)
  {
    configurationCopy = configuration;
    seriesCopy = series;
    v10 = objc_alloc_init(HKNumericAxisConfiguration);
    [(HKNumericAxisConfiguration *)v10 applyOverridesFromNumericAxisConfiguration:configurationCopy];

    [(HKNumericAxisConfiguration *)v10 setTopVerticalLabelPadding:HKUIOnePixel() + 4.0];
    v9 = [HKNumericAxis standardNumericYAxisWithConfigurationOverrides:v10];
    [seriesCopy setYAxis:v9];
  }
}

- (id)_generateRelativeLineSeriesWithColor:(id)color timeScope:(int64_t)scope valueAxisAnnotationFormatter:(id)formatter chartSizeClass:(int64_t)class
{
  colorCopy = color;
  v11 = [(HKDisplayType *)self generateLineSeriesWithColor:colorCopy timeScope:scope valueAxisAnnotationFormatter:formatter];
  v12 = [HKRelativeLineSeries alloc];
  systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
  v14 = [(HKRelativeLineSeries *)v12 initFromLineSeries:v11 color:colorCopy unavailableColor:systemGray3Color indeterminateLozengeLineWidth:class chartSizeClass:6.0];

  return v14;
}

- (id)_generateAbnormalBreathingSeriesWithDisplayCategory:(id)category timeScope:(int64_t)scope
{
  color = [category color];
  v7 = [(HKDisplayType *)self generateLineSeriesWithColor:color timeScope:scope];

  v8 = [[HKBreathingDisturbancesAxis alloc] initWithDisplayType:self];
  [v7 setYAxis:v8];

  return v7;
}

- (id)_generateGraphSeriesForTimeScope:(int64_t)scope displayCategory:(id)category unitController:(id)controller standardAxisConfiguration:(id)configuration externalAxisConfigurationOverrides:(id)overrides chartSizeClass:(int64_t)class
{
  categoryCopy = category;
  controllerCopy = controller;
  configurationCopy = configuration;
  overridesCopy = overrides;
  if ([(HKDisplayType *)self displayTypeIdentifier]== 286)
  {
    goto LABEL_2;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 15)
  {
LABEL_5:
    color3 = [controllerCopy unitForDisplayType:self];
    hk_wholeNumberFormatter = [(HKDisplayType *)self hk_numberFormatterForUnit:color3];
    color = [categoryCopy color];
    v24 = [(HKDisplayType *)self generateDistributionSeriesWithColor:color numberFormatter:hk_wholeNumberFormatter hasMinMaxOverlay:[(HKDisplayType *)self hk_supportsMinMaxOverlayForChartSizeClass:class]];

    goto LABEL_6;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 80)
  {
    color2 = [categoryCopy color];
    v24 = [(HKDisplayType *)self _generateBloodPressureSeriesWithColor:color2];

    [(HKDisplayType *)self _assignBloodPressureAxisForSeries:v24 standardAxisConfiguration:configurationCopy externalAxisConfigurationOverrides:overridesCopy];
    goto LABEL_8;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 125)
  {
    _generateInsulinBarSeriesWithDisplayCategory = [(HKDisplayType *)self _generateInsulinBarSeriesWithDisplayCategory];
LABEL_15:
    v24 = _generateInsulinBarSeriesWithDisplayCategory;
    goto LABEL_8;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 5 || [(HKDisplayType *)self displayTypeIdentifier]== 172 || [(HKDisplayType *)self displayTypeIdentifier]== 173 || [(HKDisplayType *)self displayTypeIdentifier]== 272)
  {
    color3 = [categoryCopy color];
    hk_wholeNumberFormatter = [MEMORY[0x1E696ADA0] hk_wholeNumberFormatter];
    v20 = [(HKDisplayType *)self hk_supportsMinMaxOverlayForChartSizeClass:class];
    selfCopy2 = self;
    v22 = color3;
    v23 = hk_wholeNumberFormatter;
    goto LABEL_3;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 237)
  {
    _generateInsulinBarSeriesWithDisplayCategory = [(HKDisplayType *)self _generateHandwashingBarSeriesWithDisplayCategory:categoryCopy];
    goto LABEL_15;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 14)
  {
    color3 = [[HKDisplayTypeNumberFormatter alloc] initWithDisplayType:self unitController:controllerCopy];
    color4 = [categoryCopy color];
    v24 = [(HKDisplayType *)self generateDistributionSeriesWithColor:color4 numberFormatter:color3 hasMinMaxOverlay:[(HKDisplayType *)self hk_supportsMinMaxOverlayForChartSizeClass:class]];

    [v24 setZeroCountForGap:5];
    goto LABEL_7;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 248)
  {
    color5 = [categoryCopy color];
    if (scope == 3)
    {
      [(HKDisplayType *)self _generateAFibBurdenLineSeriesWithColor:color5];
    }

    else
    {
      [(HKDisplayType *)self _generateJulianIndexedSevenDayQuantitySeriesWithColor:color5];
    }
    v24 = ;

    [(HKDisplayType *)self _assignAFibBurdenAxisForSeries:v24 standardAxisConfiguration:configurationCopy externalAxisConfigurationOverrides:overridesCopy];
    goto LABEL_8;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 61)
  {
    goto LABEL_5;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 194)
  {
    chartingRules = [(HKDisplayType *)self chartingRules];
    v24 = -[HKDisplayType _generateStandardSeriesForChartStyle:timeScope:chartSizeClass:axisConfiguration:displayCategory:unitController:](self, "_generateStandardSeriesForChartStyle:timeScope:chartSizeClass:axisConfiguration:displayCategory:unitController:", [chartingRules chartStyleForTimeScope:scope], scope, class, configurationCopy, categoryCopy, controllerCopy);

    [(HKDisplayType *)self _assignWalkingAsymmetryPercentageAxisForSeries:v24 standardAxisConfiguration:configurationCopy externalAxisConfigurationOverrides:overridesCopy];
    goto LABEL_8;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 182)
  {
LABEL_2:
    color3 = [[HKDisplayTypeNumberFormatter alloc] initWithDisplayType:self unitController:controllerCopy];
    hk_wholeNumberFormatter = [categoryCopy color];
    v20 = [(HKDisplayType *)self hk_supportsMinMaxOverlayForChartSizeClass:class];
    selfCopy2 = self;
    v22 = hk_wholeNumberFormatter;
    v23 = color3;
LABEL_3:
    v24 = [(HKDisplayType *)selfCopy2 generateDistributionSeriesWithColor:v22 numberFormatter:v23 hasMinMaxOverlay:v20];
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 269 || [(HKDisplayType *)self displayTypeIdentifier]== 277)
  {
    color3 = [categoryCopy color];
    v24 = [(HKDisplayType *)self _generateMinMaxSeriesWithColor:color3 opacity:0 unselectedPointStyle:0 selectedPointStyle:1.0];
    goto LABEL_7;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 187 || [(HKDisplayType *)self displayTypeIdentifier]== 188 || [(HKDisplayType *)self displayTypeIdentifier]== 195 || [(HKDisplayType *)self displayTypeIdentifier]== 196)
  {
    v34 = objc_alloc_init(HKTieredDecimalPrecisionRule);
    numberFormatter = [(HKTieredDecimalPrecisionRule *)v34 numberFormatter];

    color6 = [categoryCopy color];
    v24 = [(HKDisplayType *)self generateDistributionSeriesWithColor:color6 numberFormatter:numberFormatter hasMinMaxOverlay:[(HKDisplayType *)self hk_supportsMinMaxOverlayForChartSizeClass:class]];

LABEL_42:
    goto LABEL_8;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 249)
  {
    numberFormatter = [categoryCopy color];
    v37 = [HKMobilityUtilities generateAppleWalkingSteadinessSeriesForTimeScope:scope displayType:self color:numberFormatter];
LABEL_45:
    v24 = v37;
    goto LABEL_42;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 256)
  {
    numberFormatter = [categoryCopy color];
    v38 = objc_alloc_init(HKRelativeNumberFormatter);
    v24 = [(HKDisplayType *)self _generateRelativeLineSeriesWithColor:numberFormatter timeScope:scope valueAxisAnnotationFormatter:v38 chartSizeClass:class];

    goto LABEL_42;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 284)
  {
    _generateInsulinBarSeriesWithDisplayCategory = [HKStateOfMindSeries standardStateOfMindSeriesWithStateOfMindDisplayType:self unitController:controllerCopy];
    goto LABEL_15;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 275)
  {
    _generateInsulinBarSeriesWithDisplayCategory = [(HKDisplayType *)self _generateAbnormalBreathingSeriesWithDisplayCategory:categoryCopy timeScope:scope];
    goto LABEL_15;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]== 305)
  {
    if (scope == 6)
    {
      v39 = HKBalanceDaySeries;
    }

    else
    {
      v39 = HKBalanceSeries;
    }

    _generateInsulinBarSeriesWithDisplayCategory = objc_alloc_init(v39);
    goto LABEL_15;
  }

  if ([(HKDisplayType *)self displayTypeIdentifier]!= 191)
  {
    numberFormatter = [(HKDisplayType *)self chartingRules];
    v37 = -[HKDisplayType _generateStandardSeriesForChartStyle:timeScope:chartSizeClass:axisConfiguration:displayCategory:unitController:](self, "_generateStandardSeriesForChartStyle:timeScope:chartSizeClass:axisConfiguration:displayCategory:unitController:", [numberFormatter chartStyleForTimeScope:scope], scope, class, configurationCopy, categoryCopy, controllerCopy);
    goto LABEL_45;
  }

  hk_pregnancyKeyColor = [MEMORY[0x1E69DC888] hk_pregnancyKeyColor];
  v24 = [(HKDisplayType *)self _generateLevelCategorySeriesWithColor:hk_pregnancyKeyColor numericAxisConfigurationOverrides:configurationCopy];

  [configurationCopy setBottomLegendViewPadding:4.0];
LABEL_8:
  color7 = [categoryCopy color];
  [v24 setOffScreenIndicatorColor:color7];

  chartingRules2 = [(HKDisplayType *)self chartingRules];
  [v24 setWantsRoundingDuringYRangeExpansion:{objc_msgSend(chartingRules2, "shouldRoundYAxisDuringExpansion")}];

  return v24;
}

- (id)_generateStandardSeriesForChartStyle:(int64_t)style timeScope:(int64_t)scope chartSizeClass:(int64_t)class axisConfiguration:(id)configuration displayCategory:(id)category unitController:(id)controller
{
  configurationCopy = configuration;
  categoryCopy = category;
  controllerCopy = controller;
  v17 = 0;
  if (style <= 4)
  {
    if (style > 2)
    {
      if (style == 3)
      {
        color = [categoryCopy color];
        [(HKDisplayType *)self _generateMinMaxSeriesWithColor:color opacity:1 unselectedPointStyle:0 selectedPointStyle:0.3];
      }

      else
      {
        color = [categoryCopy fillStyle];
        [(HKDisplayType *)self _generateBarSeriesWithFillStyle:color];
      }
      v19 = ;
    }

    else if (style == 1)
    {
      color = [categoryCopy color];
      v19 = [(HKDisplayType *)self generateLineSeriesWithColor:color timeScope:scope];
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_22;
      }

      color = [categoryCopy color];
      v19 = [(HKDisplayType *)self generateScatterPlotSeriesWithColor:color];
    }
  }

  else if (style > 7)
  {
    if (style != 8)
    {
      if (style != 9)
      {
        goto LABEL_22;
      }

      color = [categoryCopy color];
      v20 = [[HKDisplayTypeNumberFormatter alloc] initWithDisplayType:self unitController:controllerCopy];
      v17 = [(HKDisplayType *)self generateDistributionSeriesWithColor:color numberFormatter:v20 hasMinMaxOverlay:[(HKDisplayType *)self hk_supportsMinMaxOverlayForChartSizeClass:class]];

      goto LABEL_21;
    }

    color = [categoryCopy color];
    v19 = [(HKDisplayType *)self _generateLevelCategorySeriesWithColor:color numericAxisConfigurationOverrides:configurationCopy];
  }

  else if ((style - 5) >= 2)
  {
    if (style != 7)
    {
      goto LABEL_22;
    }

    color = [categoryCopy color];
    v19 = [(HKDisplayType *)self _generateSingleLineSeriesWithColor:color timeScope:scope numericAxisConfigurationOverrides:configurationCopy];
  }

  else
  {
    color = [categoryCopy color];
    v19 = [(HKDisplayType *)self _generateStackedSeriesWithColor:color numericAxisConfigurationOverrides:configurationCopy];
  }

  v17 = v19;
LABEL_21:

LABEL_22:

  return v17;
}

- (id)hk_standardSeriesForTimeScope:(int64_t)scope displayCategory:(id)category unitController:(id)controller dataCacheController:(id)cacheController numericAxisConfigurationOverrides:(id)overrides
{
  overridesCopy = overrides;
  cacheControllerCopy = cacheController;
  controllerCopy = controller;
  categoryCopy = category;
  v16 = [(HKDisplayType *)self _dataSourceForTimeScope:scope dataCacheController:cacheControllerCopy];
  v17 = [(HKDisplayType *)self hk_standardSeriesForTimeScope:scope graphSeriesDataSource:v16 displayCategory:categoryCopy unitController:controllerCopy dataCacheController:cacheControllerCopy numericAxisConfigurationOverrides:overridesCopy];

  return v17;
}

- (id)hk_standardSeriesForTimeScope:(int64_t)scope displayCategory:(id)category unitController:(id)controller dataCacheController:(id)cacheController numericAxisConfigurationOverrides:(id)overrides chartSizeClass:(int64_t)class
{
  overridesCopy = overrides;
  cacheControllerCopy = cacheController;
  controllerCopy = controller;
  categoryCopy = category;
  v18 = [(HKDisplayType *)self _dataSourceForTimeScope:scope dataCacheController:cacheControllerCopy];
  v19 = [(HKDisplayType *)self hk_standardSeriesForTimeScope:scope graphSeriesDataSource:v18 displayCategory:categoryCopy unitController:controllerCopy dataCacheController:cacheControllerCopy numericAxisConfigurationOverrides:overridesCopy chartSizeClass:class];

  return v19;
}

- (id)hk_standardSeriesForTimeScope:(int64_t)scope graphSeriesDataSource:(id)source displayCategory:(id)category unitController:(id)controller dataCacheController:(id)cacheController numericAxisConfigurationOverrides:(id)overrides chartSizeClass:(int64_t)class
{
  sourceCopy = source;
  categoryCopy = category;
  controllerCopy = controller;
  overridesCopy = overrides;
  chartingRules = [(HKDisplayType *)self chartingRules];
  v19 = [chartingRules chartStyleForTimeScope:scope];

  v20 = objc_alloc_init(HKNumericAxisConfiguration);
  v21 = [(HKDisplayType *)self hk_dimensionForChartAxisWithUnitController:controllerCopy];
  [(HKNumericAxisConfiguration *)v20 setLabelDimension:v21];

  if (![HKDisplayTypeChartingRules chartStyleContainsHorizontalGridlines:v19])
  {
    [(HKAxisConfiguration *)v20 setOverrideNoTopBaseline:1];
  }

  chartingRules2 = [(HKDisplayType *)self chartingRules];
  maximumYAxisLabelCount = [chartingRules2 maximumYAxisLabelCount];

  if (maximumYAxisLabelCount)
  {
    chartingRules3 = [(HKDisplayType *)self chartingRules];
    maximumYAxisLabelCount2 = [chartingRules3 maximumYAxisLabelCount];
    -[HKAxisConfiguration setMaxLabels:](v20, "setMaxLabels:", [maximumYAxisLabelCount2 integerValue]);
  }

  chartingRules4 = [(HKDisplayType *)self chartingRules];
  maximumYAxisLabelWidth = [chartingRules4 maximumYAxisLabelWidth];

  if (maximumYAxisLabelWidth)
  {
    chartingRules5 = [(HKDisplayType *)self chartingRules];
    maximumYAxisLabelWidth2 = [chartingRules5 maximumYAxisLabelWidth];
    [(HKAxisConfiguration *)v20 setMaxLabelWidth:maximumYAxisLabelWidth2];
  }

  if (overridesCopy)
  {
    [(HKNumericAxisConfiguration *)v20 applyOverridesFromNumericAxisConfiguration:overridesCopy];
  }

  if (sourceCopy)
  {
    v30 = [(HKDisplayType *)self _generateGraphSeriesForTimeScope:scope displayCategory:categoryCopy unitController:controllerCopy standardAxisConfiguration:v20 externalAxisConfigurationOverrides:overridesCopy chartSizeClass:class];
    v31 = [HKNumericAxis standardNumericYAxisWithConfigurationOverrides:v20];
    yAxis = [v30 yAxis];

    if (!yAxis)
    {
      [v30 setYAxis:v31];
    }

    [v30 setDataSource:sourceCopy];
    v33 = [(HKDisplayType *)self hk_axisScalingRuleForChartSizeClass:class unitController:controllerCopy];
    [v30 setAxisScalingRule:v33];
    presentation = [(HKDisplayType *)self presentation];
    [v30 setIsCriticalForAutoscale:{objc_msgSend(presentation, "isCriticalForAutoscale")}];

    chartingRules6 = [(HKDisplayType *)self chartingRules];
    [v30 setInvertYAxis:{objc_msgSend(chartingRules6, "shouldInvertYAxis")}];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)hk_valueFormatterForUnit:(id)unit formattingContext:(int64_t)context
{
  unitCopy = unit;
  objectType = [(HKDisplayType *)self objectType];
  v8 = [objectType hk_valueFormatterClassForUnit:unitCopy];

  v9 = [v8 alloc];
  v10 = [(HKDisplayType *)self hk_numberFormatterForUnit:unitCopy formattingContext:context];

  v11 = [v9 initWithNumberFormatter:v10];

  return v11;
}

- (id)hk_axisScalingRuleForChartSizeClass:(int64_t)class unitController:(id)controller
{
  controllerCopy = controller;
  if (class == 1 && (-[HKDisplayType chartingRules](self, "chartingRules"), v7 = objc_claimAutoreleasedReturnValue(), [v7 compactChartAxisScalingRule], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    chartingRules = [(HKDisplayType *)self chartingRules];
    compactChartAxisScalingRule = [chartingRules compactChartAxisScalingRule];
  }

  else
  {
    chartingRules = [(HKDisplayType *)self chartingRules];
    compactChartAxisScalingRule = [chartingRules axisScalingRule];
  }

  v11 = compactChartAxisScalingRule;

  v12 = [controllerCopy unitForChartingDisplayType:self];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 setUnit:v12];
  }

  return v11;
}

- (int64_t)hk_stackedChartSectionsCountForTimeScope:(int64_t)scope
{
  chartingRules = [(HKDisplayType *)self chartingRules];
  if ([chartingRules chartStyleForTimeScope:scope] == 7)
  {
    v6 = 1;
  }

  else
  {
    hk_enumeratedValueLabels = [(HKDisplayType *)self hk_enumeratedValueLabels];
    v8 = [hk_enumeratedValueLabels count];
    if (v8 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

- (BOOL)hk_isSupportedTimeScope:(int64_t)scope
{
  if (scope > 3)
  {
    if (scope > 5)
    {
      if (scope == 6)
      {
        return [(HKDisplayType *)self _supportsDayTimeScope];
      }

      if (scope == 7)
      {
        return [(HKDisplayType *)self _supportsHourTimeScope];
      }

      return 0;
    }

    if (scope == 4)
    {
      return [(HKDisplayType *)self _supportsMonthTimeScope];
    }

    else
    {
      return [(HKDisplayType *)self _supportsWeekTimeScope];
    }
  }

  else
  {
    if (scope <= 1)
    {
      if (!scope)
      {
        return [(HKDisplayType *)self _supportsTenYearTimeScope];
      }

      if (scope == 1)
      {
        return [(HKDisplayType *)self _supportsFiveYearTimeScope];
      }

      return 0;
    }

    if (scope == 2)
    {
      return [(HKDisplayType *)self _supportsYearTimeScope];
    }

    else
    {
      return [(HKDisplayType *)self _supportsSixMonthTimeScope];
    }
  }
}

- (BOOL)contextItemShouldUseTightSpacingBetweenValueAndUnit
{
  objectType = [(HKDisplayType *)self objectType];
  hk_valueFormatterClass = [objectType hk_valueFormatterClass];

  result = 1;
  if (hk_valueFormatterClass != objc_opt_class())
  {
    objectType2 = [(HKDisplayType *)self objectType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }

    objectType3 = [(HKDisplayType *)self objectType];
    canonicalUnit = [objectType3 canonicalUnit];
    degreeCelsiusUnit = [MEMORY[0x1E696C510] degreeCelsiusUnit];
    v10 = [canonicalUnit _isCompatibleWithUnit:degreeCelsiusUnit];

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

- (HKDisplayType)initWithDisplayTypeIdentifier:(int64_t)identifier categoryIdentifier:(int64_t)categoryIdentifier secondaryCategoryIdentifiers:(id)identifiers objectType:(id)type behavior:(id)behavior presentation:(id)presentation localization:(id)localization chartingRules:(id)self0 defaultChartingPredicate:(id)self1 chartingPredicatesByTimeScope:(id)self2
{
  identifiersCopy = identifiers;
  typeCopy = type;
  behaviorCopy = behavior;
  presentationCopy = presentation;
  localizationCopy = localization;
  rulesCopy = rules;
  predicateCopy = predicate;
  scopeCopy = scope;
  v41.receiver = self;
  v41.super_class = HKDisplayType;
  v22 = [(HKDisplayType *)&v41 init];
  v23 = v22;
  if (v22)
  {
    v22->_displayTypeIdentifier = identifier;
    v22->_categoryIdentifier = categoryIdentifier;
    v24 = [identifiersCopy copy];
    secondaryCategoryIdentifiers = v23->_secondaryCategoryIdentifiers;
    v23->_secondaryCategoryIdentifiers = v24;

    v26 = [typeCopy copy];
    objectType = v23->_objectType;
    v23->_objectType = v26;

    v28 = [behaviorCopy copy];
    behavior = v23->_behavior;
    v23->_behavior = v28;

    v30 = [presentationCopy copy];
    presentation = v23->_presentation;
    v23->_presentation = v30;

    v32 = [localizationCopy copy];
    localization = v23->_localization;
    v23->_localization = v32;

    objc_storeStrong(&v23->_chartingRules, rules);
    objc_storeStrong(&v23->_defaultChartingPredicate, predicate);
    v34 = [scopeCopy copy];
    chartingPredicatesByTimeScope = v23->_chartingPredicatesByTimeScope;
    v23->_chartingPredicatesByTimeScope = v34;
  }

  return v23;
}

- (id)copyWithPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = [(HKDisplayType *)self copy];
  v6 = [presentationCopy copy];

  v7 = v5[11];
  v5[11] = v6;

  v8 = v5[3];
  v5[3] = 0;

  v9 = v5[4];
  v5[4] = 0;

  v10 = v5[5];
  v5[5] = 0;

  return v5;
}

- (id)copyWithDefaultAxisRangeOverride:(id)override
{
  overrideCopy = override;
  v5 = [(HKDisplayType *)self copy];
  v6 = v5[14];
  v5[14] = overrideCopy;

  return v5;
}

- (id)copyWithLocalization:(id)localization
{
  localizationCopy = localization;
  v5 = [(HKDisplayType *)self copy];
  v6 = [localizationCopy copy];

  v7 = v5[12];
  v5[12] = v6;

  return v5;
}

- (id)copyWithIsWheelchairUser:(BOOL)user
{
  userCopy = user;
  v5 = [(HKDisplayType *)self copy];
  *(v5 + 48) = userCopy;
  localization = self->_localization;
  v7 = [(HKDisplayType *)self localizedStringSuffixForWheelchairUser:userCopy];
  v8 = [(HKDisplayTypeLocalization *)localization copyWithLocalizedKeySuffix:v7];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  return v5;
}

- (id)color
{
  v2 = [HKDisplayCategory categoryWithID:[(HKDisplayType *)self categoryIdentifier]];
  color = [v2 color];

  return color;
}

- (id)chartingPredicateForTimeScope:(int64_t)scope
{
  chartingPredicatesByTimeScope = self->_chartingPredicatesByTimeScope;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v6 = [(NSDictionary *)chartingPredicatesByTimeScope objectForKeyedSubscript:v5];

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (v6)
    {
      defaultValuePredicate = v6;
    }

    else
    {
      defaultValuePredicate = [(HKDisplayType *)self defaultValuePredicate];
    }

    v9 = defaultValuePredicate;
  }

  return v9;
}

- (id)unitNameForValue:(id)value unitPreferenceController:(id)controller
{
  controllerCopy = controller;
  valueCopy = value;
  v8 = [controllerCopy unitForDisplayType:self];
  v9 = [controllerCopy localizedDisplayNameForUnit:v8 value:valueCopy];

  return v9;
}

- (UIImage)dataTypeIconImage
{
  dataTypeIconImage = self->_dataTypeIconImage;
  if (!dataTypeIconImage)
  {
    v4 = MEMORY[0x1E69DCAB8];
    presentation = [(HKDisplayType *)self presentation];
    dataTypeIconImageName = [presentation dataTypeIconImageName];
    v7 = [v4 _systemImageNamed:dataTypeIconImageName];

    if (v7)
    {
      v8 = v7;
      displayCategory = self->_dataTypeIconImage;
      self->_dataTypeIconImage = v8;
    }

    else
    {
      displayCategory = [(HKDisplayType *)self displayCategory];
      listIcon = [displayCategory listIcon];
      v11 = self->_dataTypeIconImage;
      self->_dataTypeIconImage = listIcon;
    }

    dataTypeIconImage = self->_dataTypeIconImage;
  }

  return dataTypeIconImage;
}

- (UIImage)detailImage
{
  detailImage = self->_detailImage;
  if (!detailImage)
  {
    presentation = [(HKDisplayType *)self presentation];
    detailImageName = [presentation detailImageName];
    if (detailImageName)
    {
      v6 = MEMORY[0x1E69DCAB8];
      presentation2 = [(HKDisplayType *)self presentation];
      detailImageName2 = [presentation2 detailImageName];
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = [v6 imageNamed:detailImageName2 inBundle:v9];
      v11 = self->_detailImage;
      self->_detailImage = v10;
    }

    else
    {
      presentation2 = self->_detailImage;
      self->_detailImage = 0;
    }

    detailImage = self->_detailImage;
  }

  return detailImage;
}

- (HKSampleType)recordSampleType
{
  if ([(HKDisplayType *)self isActivitySummary])
  {
    [MEMORY[0x1E696C3D0] dataTypeWithCode:76];
  }

  else
  {
    [(HKDisplayType *)self sampleType];
  }
  v3 = ;

  return v3;
}

- (UIImage)listIcon
{
  if (!self->_listIcon)
  {
    presentation = [(HKDisplayType *)self presentation];
    listIconImageNameOverride = [presentation listIconImageNameOverride];

    if (listIconImageNameOverride)
    {
      v5 = MEMORY[0x1E69DCAB8];
      presentation2 = [(HKDisplayType *)self presentation];
      listIconImageNameOverride2 = [presentation2 listIconImageNameOverride];
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v5 imageNamed:listIconImageNameOverride2 inBundle:v8];
      listIcon = self->_listIcon;
      self->_listIcon = v9;
    }

    else
    {
      presentation2 = [(HKDisplayType *)self displayCategory];
      listIcon = [presentation2 listIcon];
      listIconImageNameOverride2 = self->_listIcon;
      self->_listIcon = listIcon;
    }
  }

  v12 = self->_listIcon;

  return v12;
}

- (NSString)listIconImageName
{
  presentation = [(HKDisplayType *)self presentation];
  listIconImageNameOverride = [presentation listIconImageNameOverride];
  v5 = listIconImageNameOverride;
  if (listIconImageNameOverride)
  {
    listIconName = listIconImageNameOverride;
  }

  else
  {
    displayCategory = [(HKDisplayType *)self displayCategory];
    listIconName = [displayCategory listIconName];
  }

  return listIconName;
}

- (NSArray)secondaryDisplayCategories
{
  array = [MEMORY[0x1E695DF70] array];
  secondaryCategoryIdentifiers = [(HKDisplayType *)self secondaryCategoryIdentifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__HKDisplayType_secondaryDisplayCategories__block_invoke;
  v7[3] = &unk_1E81B58B0;
  v5 = array;
  v8 = v5;
  [secondaryCategoryIdentifiers enumerateObjectsUsingBlock:v7];

  return v5;
}

void __43__HKDisplayType_secondaryDisplayCategories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [a2 intValue]);
  [v2 addObject:v3];
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_displayTypeIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displayTypeIdentifier = self->_displayTypeIdentifier;
    v6 = displayTypeIdentifier == [equalCopy displayTypeIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKDisplayType;
  v4 = [(HKDisplayType *)&v8 description];
  v5 = HKDisplayTypeIdentifierToString(self->_displayTypeIdentifier);
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 56) = self->_displayTypeIdentifier;
  *(v4 + 64) = self->_categoryIdentifier;
  objc_storeStrong((v4 + 72), self->_secondaryCategoryIdentifiers);
  objc_storeStrong((v4 + 120), self->_objectType);
  v5 = [(HKDisplayTypeBehavior *)self->_behavior copy];
  v6 = *(v4 + 80);
  *(v4 + 80) = v5;

  v7 = [(HKDisplayTypePresentation *)self->_presentation copy];
  v8 = *(v4 + 88);
  *(v4 + 88) = v7;

  v9 = [(HKDisplayTypeLocalization *)self->_localization copy];
  v10 = *(v4 + 96);
  *(v4 + 96) = v9;

  objc_storeStrong((v4 + 24), self->_listIcon);
  objc_storeStrong((v4 + 32), self->_detailImage);
  objc_storeStrong((v4 + 8), self->_defaultChartingPredicate);
  objc_storeStrong((v4 + 16), self->_chartingPredicatesByTimeScope);
  objc_storeStrong((v4 + 104), self->_chartingRules);
  *(v4 + 48) = self->__wheelchairUser;
  v11 = [(HKValueRange *)self->_defaultAxisRangeOverride copy];
  v12 = *(v4 + 112);
  *(v4 + 112) = v11;

  return v4;
}

- (id)generateLineSeriesWithColor:(id)color timeScope:(int64_t)scope
{
  colorCopy = color;
  v7 = HKIntegerFormatter();
  v8 = [(HKDisplayType *)self generateLineSeriesWithColor:colorCopy timeScope:scope valueAxisAnnotationFormatter:v7];

  return v8;
}

- (id)generateLineSeriesWithColor:(id)color timeScope:(int64_t)scope valueAxisAnnotationFormatter:(id)formatter
{
  v50[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  formatterCopy = formatter;
  v8 = objc_alloc_init(HKLineSeries);
  v9 = [HKGradientFillStyle alloc];
  v10 = HKHealthKeyColor();
  v11 = [v10 colorWithAlphaComponent:0.3];
  v12 = HKHealthKeyColor();
  v13 = [v12 colorWithAlphaComponent:0.0];
  v14 = [(HKGradientFillStyle *)v9 initWithFirstColor:v11 secondColor:v13];

  v46 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v15 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v46 setStrokeStyle:v15];

  [(HKLineSeriesPresentationStyle *)v46 setWaveForm:0];
  v16 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v47 = colorCopy;
  v17 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v16 setStrokeStyle:v17];

  [(HKLineSeriesPresentationStyle *)v16 setWaveForm:0];
  v18 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v19 = HKHealthKeyColor();
  v20 = [HKStrokeStyle strokeStyleWithColor:v19 lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v18 setStrokeStyle:v20];

  v21 = [HKLineSeriesPointMarkerStyle alloc];
  v22 = HKHealthKeyColor();
  v23 = [(HKLineSeriesPointMarkerStyle *)v21 initWithColor:v22 radius:0 style:4.0];

  v42 = v23;
  [(HKLineSeriesPresentationStyle *)v18 setPointMarkerStyle:v23];
  v43 = v14;
  [(HKLineSeriesPresentationStyle *)v18 setFillStyle:v14];
  [(HKLineSeriesPresentationStyle *)v18 setWaveForm:0];
  v24 = objc_alloc_init(HKLineSeriesPresentationStyle);
  hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  v25 = [HKStrokeStyle strokeStyleWithColor:2.0 lineWidth:?];
  [(HKLineSeriesPresentationStyle *)v24 setStrokeStyle:v25];

  chartingRules = [(HKDisplayType *)self chartingRules];
  -[HKLineSeries setFlatLastValue:](v8, "setFlatLastValue:", [chartingRules lineChartFlatLastValueForTimeScope:scope]);
  -[HKLineSeries setExtendLastValue:](v8, "setExtendLastValue:", [chartingRules lineChartExtendLastValueForTimeScope:scope]);
  -[HKLineSeries setExtendFirstValue:](v8, "setExtendFirstValue:", [chartingRules lineChartExtendFirstValueForTimeScope:scope]);
  scopeCopy = scope;
  scopeCopy2 = scope;
  v29 = v24;
  if ([chartingRules lineChartUsesPointMarkerImageForTimeScope:scopeCopy2])
  {
    v30 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:v47 radius:1 style:4.0];
    [(HKLineSeriesPresentationStyle *)v46 setPointMarkerStyle:v30];
    [(HKLineSeriesPresentationStyle *)v16 setPointMarkerStyle:v30];
    v31 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:hk_chartInactiveSeriesColor radius:1 style:4.0];
    [(HKLineSeriesPresentationStyle *)v29 setPointMarkerStyle:v31];
    v32 = [HKLineSeriesPointMarkerStyle alloc];
    v33 = HKHealthKeyColor();
    v34 = [(HKLineSeriesPointMarkerStyle *)v32 initWithColor:v33 radius:0 style:HKUIOnePixel() + 5.0];

    [(HKLineSeries *)v8 setSelectedPointMarkerStyle:v34];
  }

  if ([chartingRules lineChartUsesValueAxisAnnotationForTimeScope:scopeCopy])
  {
    v35 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
    v36 = [HKAxisLabelStyle labelStyleWithColor:v47 font:v35 horizontalAlignment:0 verticalAlignment:2 numberFormatter:formatterCopy];
    [(HKLineSeriesPresentationStyle *)v46 setAxisAnnotationStyle:v36];
    [(HKLineSeriesPresentationStyle *)v16 setAxisAnnotationStyle:v36];
    [(HKLineSeriesPresentationStyle *)v18 setAxisAnnotationStyle:v36];
  }

  v50[0] = v46;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  [(HKLineSeries *)v8 setUnhighlightedPresentationStyles:v37];

  v49 = v16;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [(HKLineSeries *)v8 setHighlightedPresentationStyles:v38];

  v48 = v18;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  [(HKLineSeries *)v8 setSelectedPresentationStyles:v39];

  [(HKLineSeries *)v8 setInactivePresentationStyle:v29];

  return v8;
}

- (id)generateScatterPlotSeriesWithColor:(id)color
{
  v21[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v4 = objc_alloc_init(HKLineSeries);
  v5 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:1 style:4.0];

  v6 = [HKLineSeriesPointMarkerStyle alloc];
  v7 = HKHealthKeyColor();
  v8 = [(HKLineSeriesPointMarkerStyle *)v6 initWithColor:v7 radius:0 style:4.0];

  v9 = objc_alloc_init(HKLineSeriesPresentationStyle);
  [(HKLineSeriesPresentationStyle *)v9 setPointMarkerStyle:v5];
  v10 = objc_alloc_init(HKLineSeriesPresentationStyle);
  [(HKLineSeriesPresentationStyle *)v10 setPointMarkerStyle:v8];
  v21[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(HKLineSeries *)v4 setUnhighlightedPresentationStyles:v11];

  v20 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  [(HKLineSeries *)v4 setSelectedPresentationStyles:v12];

  v13 = [HKLineSeriesPointMarkerStyle alloc];
  v14 = HKHealthKeyColor();
  v15 = [(HKLineSeriesPointMarkerStyle *)v13 initWithColor:v14 radius:0 style:HKUIOnePixel() + 5.0];
  [(HKLineSeries *)v4 setSelectedPointMarkerStyle:v15];

  hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  v17 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v18 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:hk_chartInactiveSeriesColor radius:1 style:4.0];
  [(HKLineSeriesPresentationStyle *)v17 setPointMarkerStyle:v18];

  [(HKLineSeries *)v4 setInactivePresentationStyle:v17];

  return v4;
}

- (id)generateDistributionSeriesWithColor:(id)color numberFormatter:(id)formatter lineWidth:(double)width hasMinMaxOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  colorCopy = color;
  formatterCopy = formatter;
  v11 = objc_alloc_init(HKQuantityDistributionSeries);
  hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  v13 = [HKStrokeStyle strokeStyleWithColor:hk_chartInactiveSeriesColor lineWidth:width];
  [v13 setLineCap:1];
  [(HKQuantityDistributionSeries *)v11 setInactiveStrokeStyle:v13];
  v14 = colorCopy;
  v15 = [HKStrokeStyle strokeStyleWithColor:v14 lineWidth:width];
  [v15 setLineCap:1];
  [(HKQuantityDistributionSeries *)v11 setUnselectedStrokeStyle:v15];
  v16 = [HKStrokeStyle strokeStyleWithColor:v14 lineWidth:width];
  [v16 setLineCap:1];
  [(HKQuantityDistributionSeries *)v11 setSelectedStrokeStyle:v16];
  if (overlayCopy)
  {
    v17 = MEMORY[0x1E69DB878];
    v18 = *MEMORY[0x1E69DB980];
    v28 = formatterCopy;
    v19 = v14;
    v26 = [v17 hk_roundedSystemFontWithSize:13.0 weight:v18];
    [HKAxisLabelStyle labelStyleWithColor:v19 font:v26 horizontalAlignment:1 verticalAlignment:2];
    v20 = v27 = hk_chartInactiveSeriesColor;
    [(HKQuantityDistributionSeries *)v11 setMinMaxLabelStyle:v20];
    v21 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
    v22 = [HKAxisLabelStyle labelStyleWithColor:v19 font:v21 horizontalAlignment:1 verticalAlignment:2 numberFormatter:v28];

    [(HKQuantityDistributionSeries *)v11 setMinMaxValueStyle:v22];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v24 = [HKStrokeStyle strokeStyleWithColor:whiteColor lineWidth:width * 0.5];

    [(HKQuantityDistributionSeries *)v11 setMinMaxPointStyle:v24];
    formatterCopy = v28;

    hk_chartInactiveSeriesColor = v27;
  }

  return v11;
}

- (id)cardioFitnessDataSourceWithUnitController:(id)controller healthStore:(id)store
{
  storeCopy = store;
  controllerCopy = controller;
  v8 = [[HKQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:2 displayType:self healthStore:storeCopy];
  v9 = [controllerCopy unitForDisplayType:self];

  v25 = 0;
  v10 = [storeCopy biologicalSexWithError:&v25];
  v11 = v25;
  if (!v10)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [(HKPopulationNormsAbstractViewModel *)v11 currentBiologicalSexSegmentIndex];
    }
  }

  v24 = v11;
  v13 = [storeCopy dateOfBirthComponentsWithError:&v24];
  v14 = v24;

  if (!v13)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [(HKPopulationNormsAbstractViewModel *)v14 currentAgeInYears];
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__HKDisplayType_DataSources__cardioFitnessDataSourceWithUnitController_healthStore___block_invoke;
  v20[3] = &unk_1E81B95B8;
  v21 = v9;
  v22 = v10;
  v23 = v13;
  v16 = v13;
  v17 = v10;
  v18 = v9;
  [(HKQuantityTypeDataSource *)v8 setUserInfoCreationBlock:v20];

  return v8;
}

HKInteractiveChartCardioFitnessData *__84__HKDisplayType_DataSources__cardioFitnessDataSourceWithUnitController_healthStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKInteractiveChartCardioFitnessData);
  v5 = [v3 averageQuantity];
  [v5 doubleValueForUnit:*(a1 + 32)];
  v7 = v6;

  [(HKInteractiveChartSinglePointData *)v4 setValue:v7];
  [(HKInteractiveChartSinglePointData *)v4 setUnit:*(a1 + 32)];
  v8 = [v3 minQuantity];
  if (v8)
  {
    v9 = v8;
    v10 = [v3 maxQuantity];

    if (v10)
    {
      [(HKInteractiveChartSinglePointData *)v4 setRepresentsRange:1];
      v11 = [v3 minQuantity];
      [v11 doubleValueForUnit:*(a1 + 32)];
      [(HKInteractiveChartSinglePointData *)v4 setMinValue:?];

      v12 = [v3 maxQuantity];
      [v12 doubleValueForUnit:*(a1 + 32)];
      [(HKInteractiveChartSinglePointData *)v4 setMaxValue:?];
    }
  }

  -[HKInteractiveChartSinglePointData setRecordCount:](v4, "setRecordCount:", [v3 recordCount]);
  v13 = [v3 statisticsInterval];
  [(HKInteractiveChartSinglePointData *)v4 setStatisticsInterval:v13];

  v14 = *(a1 + 40);
  if (v14 && *(a1 + 48))
  {
    v15 = [v14 biologicalSex];
    v16 = [v3 statisticsInterval];
    v17 = [v3 startDate];
    v18 = [v3 endDate];
    v19 = [HKCardioFitnessUtilities effectiveChartPointDateWithStatisticsInterval:v16 startDate:v17 endDate:v18];

    v20 = [*(a1 + 48) hk_ageWithCurrentDate:v19];
    v21 = [HKCardioFitnessUtilities cardioFitnessLevelForVO2Max:v15 biologicalSex:v20 age:v7];
    [(HKInteractiveChartCardioFitnessData *)v4 setBiologicalSex:v15];
    [(HKInteractiveChartCardioFitnessData *)v4 setAge:v20];
    [(HKInteractiveChartCardioFitnessData *)v4 setClassification:v21];
    -[HKInteractiveChartCardioFitnessData setSampleCount:](v4, "setSampleCount:", [v3 recordCount]);
  }

  return v4;
}

- (id)_audioLevelDataSourceForTypeIdentifier:(id)identifier withHealthStore:(id)store attenuatesExposureData:(BOOL)data unitController:(id)controller
{
  v24[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12 = *MEMORY[0x1E696BD08];
  v13 = *MEMORY[0x1E696BD28];
  v24[0] = *MEMORY[0x1E696BD08];
  v24[1] = v13;
  v24[2] = *MEMORY[0x1E696BD10];
  v14 = MEMORY[0x1E695DEC8];
  controllerCopy = controller;
  storeCopy = store;
  v17 = [v14 arrayWithObjects:v24 count:3];
  if (([v17 containsObject:identifierCopy] & 1) == 0)
  {
    [HKDisplayType(DataSources) _audioLevelDataSourceForTypeIdentifier:a2 withHealthStore:self attenuatesExposureData:? unitController:?];
  }

  if (v12 == identifierCopy && data)
  {
    v18 = 5;
  }

  else
  {
    v18 = 1;
  }

  v19 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:identifierCopy];
  v20 = [HKQuantityDistributionDataSource alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __123__HKDisplayType_DataSources___audioLevelDataSourceForTypeIdentifier_withHealthStore_attenuatesExposureData_unitController___block_invoke;
  v23[3] = &unk_1E81B95E0;
  v23[4] = self;
  v21 = [(HKQuantityDistributionDataSource *)v20 initWithQuantityType:v19 unitController:controllerCopy healthStore:storeCopy contextStyle:0 predicate:0 options:v18 baseDisplayType:self specificStartDate:0 specificEndDate:0 userInfoCreationBlock:v23];

  return v21;
}

HKQuantityDistributionChartPointData *__123__HKDisplayType_DataSources___audioLevelDataSourceForTypeIdentifier_withHealthStore_attenuatesExposureData_unitController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[HKQuantityDistributionChartPointData alloc] initWithDistributionData:v6 unit:v5 displayType:*(a1 + 32)];

  return v7;
}

- (id)_singleValueUserInfoBlockWithUnitController:(id)controller displayType:(id)type statisticsOption:(unint64_t)option
{
  controllerCopy = controller;
  typeCopy = type;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__HKDisplayType_DataSources___singleValueUserInfoBlockWithUnitController_displayType_statisticsOption___block_invoke;
  aBlock[3] = &unk_1E81B9608;
  v14 = controllerCopy;
  v15 = typeCopy;
  optionCopy = option;
  v9 = typeCopy;
  v10 = controllerCopy;
  v11 = _Block_copy(aBlock);

  return v11;
}

HKInteractiveChartSinglePointData *__103__HKDisplayType_DataSources___singleValueUserInfoBlockWithUnitController_displayType_statisticsOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) unitForDisplayType:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5 == 4)
  {
    v6 = [v3 minQuantity];
  }

  else
  {
    if (v5 != 16)
    {
      v11 = [v3 averageQuantity];
      [v11 doubleValueForUnit:v4];
      v9 = v12;

      v10 = [v3 recordCount];
      goto LABEL_7;
    }

    v6 = [v3 sumQuantity];
  }

  v7 = v6;
  [v6 doubleValueForUnit:v4];
  v9 = v8;

  v10 = 1;
LABEL_7:
  v13 = objc_alloc_init(HKInteractiveChartSinglePointData);
  [(HKInteractiveChartSinglePointData *)v13 setValue:v9];
  [(HKInteractiveChartSinglePointData *)v13 setUnit:v4];
  v14 = [v3 minQuantity];
  if (v14)
  {
    v15 = v14;
    v16 = [v3 maxQuantity];

    if (v16)
    {
      [(HKInteractiveChartSinglePointData *)v13 setRepresentsRange:1];
      v17 = [v3 minQuantity];
      [v17 doubleValueForUnit:v4];
      [(HKInteractiveChartSinglePointData *)v13 setMinValue:?];

      v18 = [v3 maxQuantity];
      [v18 doubleValueForUnit:v4];
      [(HKInteractiveChartSinglePointData *)v13 setMaxValue:?];

      v10 = [v3 recordCount];
    }
  }

  [(HKInteractiveChartSinglePointData *)v13 setRecordCount:v10];
  v19 = [v3 statisticsInterval];
  [(HKInteractiveChartSinglePointData *)v13 setStatisticsInterval:v19];

  return v13;
}

+ (HKDisplayType)displayTypeWithIdentifier:(int64_t)identifier
{
  v3 = 0;
  switch(identifier)
  {
    case 0:
      v3 = HKDisplayTypeIdentifierBodyMassIndexMake();
      break;
    case 1:
      v3 = HKDisplayTypeIdentifierBodyFatPercentageMake();
      break;
    case 2:
      v3 = HKDisplayTypeIdentifierHeightMake();
      break;
    case 3:
      v3 = HKDisplayTypeIdentifierBodyMassMake();
      break;
    case 4:
      v3 = HKDisplayTypeIdentifierLeanBodyMassMake();
      break;
    case 5:
      v3 = HKDisplayTypeIdentifierHeartRateMake();
      break;
    case 7:
      v3 = HKDisplayTypeIdentifierStepsMake();
      break;
    case 8:
      v3 = HKDisplayTypeIdentifierDistanceWalkingRunningMake();
      break;
    case 9:
      v3 = HKDisplayTypeIdentifierBasalEnergyBurnedMake();
      break;
    case 10:
      v3 = HKDisplayTypeIdentifierActiveEnergyMake();
      break;
    case 12:
      v3 = HKDisplayTypeIdentifierFlightsClimbedMake();
      break;
    case 13:
      v3 = HKDisplayTypeIdentifierNikeFuelMake();
      break;
    case 14:
      v3 = HKDisplayTypeIdentifierOxygenSaturationMake();
      break;
    case 15:
      v3 = HKDisplayTypeIdentifierBloodGlucoseMake();
      break;
    case 18:
      v3 = HKDisplayTypeIdentifierBloodAlcoholContentMake();
      break;
    case 19:
      v3 = HKDisplayTypeIdentifierPeripheralPerfusionIndexMake();
      break;
    case 20:
      v3 = HKDisplayTypeIdentifierDietaryFatTotalMake();
      break;
    case 21:
      v3 = HKDisplayTypeIdentifierDietaryFatPolyunsaturatedMake();
      break;
    case 22:
      v3 = HKDisplayTypeIdentifierDietaryFatMonounsaturatedMake();
      break;
    case 23:
      v3 = HKDisplayTypeIdentifierDietaryFatSaturatedMake();
      break;
    case 24:
      v3 = HKDisplayTypeIdentifierDietaryCholesterolMake();
      break;
    case 25:
      v3 = HKDisplayTypeIdentifierDietarySodiumMake();
      break;
    case 26:
      v3 = HKDisplayTypeIdentifierDietaryCarbohydratesMake();
      break;
    case 27:
      v3 = HKDisplayTypeIdentifierDietaryFiberMake();
      break;
    case 28:
      v3 = HKDisplayTypeIdentifierDietarySugarMake();
      break;
    case 29:
      v3 = HKDisplayTypeIdentifierDietaryEnergyMake();
      break;
    case 30:
      v3 = HKDisplayTypeIdentifierDietaryProteinMake();
      break;
    case 31:
      v3 = HKDisplayTypeIdentifierDietaryVitaminAMake();
      break;
    case 32:
      v3 = HKDisplayTypeIdentifierDietaryVitaminB6Make();
      break;
    case 33:
      v3 = HKDisplayTypeIdentifierDietaryVitaminB12Make();
      break;
    case 34:
      v3 = HKDisplayTypeIdentifierDietaryVitaminCMake();
      break;
    case 35:
      v3 = HKDisplayTypeIdentifierDietaryVitaminDMake();
      break;
    case 36:
      v3 = HKDisplayTypeIdentifierDietaryVitaminEMake();
      break;
    case 37:
      v3 = HKDisplayTypeIdentifierDietaryVitaminKMake();
      break;
    case 38:
      v3 = HKDisplayTypeIdentifierDietaryCalciumMake();
      break;
    case 39:
      v3 = HKDisplayTypeIdentifierDietaryIronMake();
      break;
    case 40:
      v3 = HKDisplayTypeIdentifierDietaryThiaminMake();
      break;
    case 41:
      v3 = HKDisplayTypeIdentifierDietaryRiboflavinMake();
      break;
    case 42:
      v3 = HKDisplayTypeIdentifierDietaryNiacinMake();
      break;
    case 43:
      v3 = HKDisplayTypeIdentifierDietaryFolateMake();
      break;
    case 44:
      v3 = HKDisplayTypeIdentifierDietaryBiotinMake();
      break;
    case 45:
      v3 = HKDisplayTypeIdentifierDietaryPantothenicAcidMake();
      break;
    case 46:
      v3 = HKDisplayTypeIdentifierDietaryPhosphorusMake();
      break;
    case 47:
      v3 = HKDisplayTypeIdentifierDietaryIodineMake();
      break;
    case 48:
      v3 = HKDisplayTypeIdentifierDietaryMagnesiumMake();
      break;
    case 49:
      v3 = HKDisplayTypeIdentifierDietaryZincMake();
      break;
    case 50:
      v3 = HKDisplayTypeIdentifierDietarySeleniumMake();
      break;
    case 51:
      v3 = HKDisplayTypeIdentifierDietaryCopperMake();
      break;
    case 52:
      v3 = HKDisplayTypeIdentifierDietaryManganeseMake();
      break;
    case 53:
      v3 = HKDisplayTypeIdentifierDietaryChromiumMake();
      break;
    case 54:
      v3 = HKDisplayTypeIdentifierDietaryMolybdenumMake();
      break;
    case 55:
      v3 = HKDisplayTypeIdentifierDietaryChlorideMake();
      break;
    case 56:
      v3 = HKDisplayTypeIdentifierDietaryPotassiumMake();
      break;
    case 57:
      v3 = HKDisplayTypeIdentifierNumberOfTimesFallenMake();
      break;
    case 58:
      v3 = HKDisplayTypeIdentifierElectrodermalActivityMake();
      break;
    case 60:
      v3 = HKDisplayTypeIdentifierInhalerUsageMake();
      break;
    case 61:
      v3 = HKDisplayTypeIdentifierRespiratoryRateMake();
      break;
    case 62:
      v3 = HKDisplayTypeIdentifierBodyTemperatureMake();
      break;
    case 63:
      v3 = HKDisplayTypeIdentifierSleepAnalysisMake();
      break;
    case 64:
      v3 = HKDisplayTypeIdentifierBiologicalSexMake();
      break;
    case 65:
      v3 = HKDisplayTypeIdentifierDateOfBirthMake();
      break;
    case 66:
      v3 = HKDisplayTypeIdentifierBloodTypeMake();
      break;
    case 70:
      v3 = HKDisplayTypeIdentifierAppleStandHourMake();
      break;
    case 71:
      v3 = HKDisplayTypeIdentifierForcedVitalCapacityMake();
      break;
    case 72:
      v3 = HKDisplayTypeIdentifierForcedExpiratoryVolume1Make();
      break;
    case 73:
      v3 = HKDisplayTypeIdentifierPeakExpiratoryFlowRateMake();
      break;
    case 75:
      v3 = HKDisplayTypeIdentifierAppleExerciseTimeMake();
      break;
    case 78:
      v3 = HKDisplayTypeIdentifierDietaryCaffeineMake();
      break;
    case 79:
      v3 = HKDisplayTypeIdentifierWorkoutMake();
      break;
    case 80:
      v3 = HKDisplayTypeIdentifierBloodPressureMake();
      break;
    case 83:
      v3 = HKDisplayTypeIdentifierCyclingDistanceMake();
      break;
    case 87:
      v3 = HKDisplayTypeIdentifierDietaryWaterMake();
      break;
    case 88:
      v3 = HKDisplayTypeIdentifierFitzpatrickSkinTypeMake();
      break;
    case 89:
      v3 = HKDisplayTypeIdentifierUVExposureMake();
      break;
    case 90:
      v3 = HKDisplayTypeIdentifierBasalBodyTemperatureMake();
      break;
    case 91:
      v3 = HKDisplayTypeIdentifierCervicalMucusQualityMake();
      break;
    case 92:
      v3 = HKDisplayTypeIdentifierOvulationTestResultMake();
      break;
    case 95:
      v3 = HKDisplayTypeIdentifierMenstruationMake();
      break;
    case 96:
      v3 = HKDisplayTypeIdentifierIntermenstrualBleedingMake();
      break;
    case 97:
      v3 = HKDisplayTypeIdentifierSexualActivityMake();
      break;
    case 99:
      v3 = HKDisplayTypeIdentifierMindfulSessionMake();
      break;
    case 100:
      v3 = HKDisplayTypeIdentifierActivitySummaryMake();
      break;
    case 101:
      v3 = HKDisplayTypeIdentifierPushCountMake();
      break;
    case 102:
      v3 = HKDisplayTypeIdentifierLocationSeriesMake();
      break;
    case 103:
      v3 = HKDisplayTypeIdentifierWheelchairUseMake();
      break;
    case 107:
      v3 = HKDisplayTypeIdentifierCDADocumentMake();
      break;
    case 110:
      v3 = HKDisplayTypeIdentifierSwimmingDistanceMake();
      break;
    case 111:
      v3 = HKDisplayTypeIdentifierSwimmingStrokesMake();
      break;
    case 113:
      v3 = HKDisplayTypeIdentifierWheelchairDistanceMake();
      break;
    case 114:
      v3 = HKDisplayTypeIdentifierWaistCircumferenceMake();
      break;
    case 118:
      v3 = HKDisplayTypeIdentifierRestingHeartRateMake();
      break;
    case 119:
      v3 = HKDisplayTypeIdentifierHeartbeatSeriesMake();
      break;
    case 124:
      v3 = HKDisplayTypeIdentifierVO2MaxMake();
      break;
    case 125:
      v3 = HKDisplayTypeIdentifierInsulinDeliveryMake();
      break;
    case 137:
      v3 = HKDisplayTypeIdentifierWalkingHeartRateAverageMake();
      break;
    case 138:
      v3 = HKDisplayTypeIdentifierDownhillSnowSportsDistanceMake();
      break;
    case 139:
      v3 = HKDisplayTypeIdentifierHeartRateVariabilitySDNNMake();
      break;
    case 140:
      v3 = HKDisplayTypeIdentifierTachycardiaEventMake();
      break;
    case 144:
      v3 = HKDisplayTypeIdentifierElectrocardiogramMake();
      break;
    case 145:
      v3 = HKDisplayTypeIdentifierAudiogramMake();
      break;
    case 147:
      v3 = HKDisplayTypeIdentifierBradycardiaEventMake();
      break;
    case 149:
      v3 = HKDisplayTypeIdentifierAllergyRecordMake();
      break;
    case 150:
      v3 = HKDisplayTypeIdentifierConditionRecordMake();
      break;
    case 151:
      v3 = HKDisplayTypeIdentifierImmunizationRecordMake();
      break;
    case 152:
      v3 = HKDisplayTypeIdentifierLabResultRecordMake();
      break;
    case 153:
      v3 = HKDisplayTypeIdentifierMedicationRecordMake();
      break;
    case 154:
      v3 = HKDisplayTypeIdentifierProcedureRecordMake();
      break;
    case 155:
      v3 = HKDisplayTypeIdentifierVitalSignRecordMake();
      break;
    case 156:
      v3 = HKDisplayTypeIdentifierAtrialFibrillationEventMake();
      break;
    case 157:
      v3 = HKDisplayTypeIdentifierAbdominalCrampsMake();
      break;
    case 158:
      v3 = HKDisplayTypeIdentifierBreastPainMake();
      break;
    case 159:
      v3 = HKDisplayTypeIdentifierBloatingMake();
      break;
    case 160:
      v3 = HKDisplayTypeIdentifierHeadacheMake();
      break;
    case 161:
      v3 = HKDisplayTypeIdentifierAcneMake();
      break;
    case 162:
      v3 = HKDisplayTypeIdentifierLowerBackPainMake();
      break;
    case 163:
      v3 = HKDisplayTypeIdentifierPelvicPainMake();
      break;
    case 164:
      v3 = HKDisplayTypeIdentifierMoodChangesMake();
      break;
    case 165:
      v3 = HKDisplayTypeIdentifierConstipationMake();
      break;
    case 166:
      v3 = HKDisplayTypeIdentifierDiarrheaMake();
      break;
    case 167:
      v3 = HKDisplayTypeIdentifierFatigueMake();
      break;
    case 168:
      v3 = HKDisplayTypeIdentifierNauseaMake();
      break;
    case 169:
      v3 = HKDisplayTypeIdentifierSleepChangesMake();
      break;
    case 170:
      v3 = HKDisplayTypeIdentifierAppetiteChangesMake();
      break;
    case 171:
      v3 = HKDisplayTypeIdentifierHotFlashesMake();
      break;
    case 172:
      v3 = HKDisplayTypeIdentifierEnvironmentalAudioExposureMake();
      break;
    case 173:
      v3 = HKDisplayTypeIdentifierHeadphoneAudioExposureMake();
      break;
    case 177:
      v3 = HKDisplayTypeIdentifierActivityMoveModeMake();
      break;
    case 178:
      v3 = HKDisplayTypeIdentifierEnvironmentalAudioExposureEventMake();
      break;
    case 179:
      v3 = HKDisplayTypeIdentifierAppleMoveTimeMake();
      break;
    case 182:
      v3 = HKDisplayTypeIdentifierWalkingDoubleSupportPercentageMake();
      break;
    case 183:
      v3 = HKDisplayTypeIdentifierSixMinuteWalkTestDistanceMake();
      break;
    case 186:
      v3 = HKDisplayTypeIdentifierAppleStandTimeMake();
      break;
    case 187:
      v3 = HKDisplayTypeIdentifierWalkingSpeedMake();
      break;
    case 188:
      v3 = HKDisplayTypeIdentifierWalkingStepLengthMake();
      break;
    case 189:
      v3 = HKDisplayTypeIdentifierToothbrushingEventMake();
      break;
    case 191:
      v3 = HKDisplayTypeIdentifierPregnancyMake();
      break;
    case 192:
      v3 = HKDisplayTypeIdentifierLactationMake();
      break;
    case 193:
      v3 = HKDisplayTypeIdentifierContraceptiveMake();
      break;
    case 194:
      v3 = HKDisplayTypeIdentifierWalkingAsymmetryPercentageMake();
      break;
    case 195:
      v3 = HKDisplayTypeIdentifierStairAscentSpeedMake();
      break;
    case 196:
      v3 = HKDisplayTypeIdentifierStairDescentSpeedMake();
      break;
    case 197:
      v3 = HKDisplayTypeIdentifierSleepDurationGoalMake();
      break;
    case 198:
      v3 = HKDisplayTypeIdentifierSleepScheduleMake();
      break;
    case 199:
      v3 = HKDisplayTypeIdentifierHeadphoneAudioExposureEventMake();
      break;
    case 201:
      v3 = HKDisplayTypeIdentifierRapidPoundingOrFlutteringHeartbeatMake();
      break;
    case 202:
      v3 = HKDisplayTypeIdentifierSkippedHeartbeatMake();
      break;
    case 203:
      v3 = HKDisplayTypeIdentifierFeverMake();
      break;
    case 204:
      v3 = HKDisplayTypeIdentifierShortnessOfBreathMake();
      break;
    case 205:
      v3 = HKDisplayTypeIdentifierChestTightnessOrPainMake();
      break;
    case 206:
      v3 = HKDisplayTypeIdentifierFaintingMake();
      break;
    case 207:
      v3 = HKDisplayTypeIdentifierDizzinessMake();
      break;
    case 217:
      v3 = HKDisplayTypeIdentifierInsuranceRecordMake();
      break;
    case 218:
      v3 = HKDisplayTypeIdentifierCardioFitnessMedicationsUseMake();
      break;
    case 220:
      v3 = HKDisplayTypeIdentifierVomitingMake();
      break;
    case 221:
      v3 = HKDisplayTypeIdentifierHeartburnMake();
      break;
    case 222:
      v3 = HKDisplayTypeIdentifierCoughingMake();
      break;
    case 223:
      v3 = HKDisplayTypeIdentifierWheezingMake();
      break;
    case 224:
      v3 = HKDisplayTypeIdentifierSoreThroatMake();
      break;
    case 225:
      v3 = HKDisplayTypeIdentifierCongestionMake();
      break;
    case 226:
      v3 = HKDisplayTypeIdentifierRunnyNoseMake();
      break;
    case 229:
      v3 = HKDisplayTypeIdentifierVaginalDrynessMake();
      break;
    case 230:
      v3 = HKDisplayTypeIdentifierNightSweatsMake();
      break;
    case 231:
      v3 = HKDisplayTypeIdentifierChillsMake();
      break;
    case 232:
      v3 = HKDisplayTypeIdentifierHairLossMake();
      break;
    case 233:
      v3 = HKDisplayTypeIdentifierDrySkinMake();
      break;
    case 234:
      v3 = HKDisplayTypeIdentifierBladderIncontinenceMake();
      break;
    case 235:
      v3 = HKDisplayTypeIdentifierMemoryLapseMake();
      break;
    case 236:
      v3 = HKDisplayTypeIdentifierLowCardioFitnessEventMake();
      break;
    case 237:
      v3 = HKDisplayTypeIdentifierHandwashingEventMake();
      break;
    case 240:
      v3 = HKDisplayTypeIdentifierGeneralizedBodyAcheMake();
      break;
    case 241:
      v3 = HKDisplayTypeIdentifierLossOfSmellMake();
      break;
    case 242:
      v3 = HKDisplayTypeIdentifierLossOfTasteMake();
      break;
    case 243:
      v3 = HKDisplayTypeIdentifierPregnancyTestResultMake();
      break;
    case 244:
      v3 = HKDisplayTypeIdentifierProgesteroneTestResultMake();
      break;
    case 248:
      v3 = HKDisplayTypeIdentifierAtrialFibrillationBurdenMake();
      break;
    case 249:
      v3 = HKDisplayTypeIdentifierAppleWalkingSteadinessMake();
      break;
    case 250:
      v3 = HKDisplayTypeIdentifierAppleWalkingSteadinessEventMake();
      break;
    case 251:
      v3 = HKDisplayTypeIdentifierNumberOfAlcoholicBeveragesMake();
      break;
    case 254:
      v3 = HKDisplayTypeIdentifierHypertensionEventMake();
      break;
    case 256:
      v3 = HKDisplayTypeIdentifierAppleSleepingWristTemperatureMake();
      break;
    case 257:
      v3 = HKDisplayTypeIdentifierVisionPrescriptionMake();
      break;
    case 258:
      v3 = HKDisplayTypeIdentifierRunningStrideLengthMake();
      break;
    case 259:
      v3 = HKDisplayTypeIdentifierRunningVerticalOscillationMake();
      break;
    case 260:
      v3 = HKDisplayTypeIdentifierRunningGroundContactTimeMake();
      break;
    case 262:
      v3 = HKDisplayTypeIdentifierPersistentIntermenstrualBleedingMake();
      break;
    case 263:
      v3 = HKDisplayTypeIdentifierProlongedMenstrualPeriodsMake();
      break;
    case 264:
      v3 = HKDisplayTypeIdentifierIrregularMenstrualCyclesMake();
      break;
    case 265:
      v3 = HKDisplayTypeIdentifierInfrequentMenstrualCyclesMake();
      break;
    case 266:
      v3 = HKDisplayTypeIdentifierHeartRateRecoveryMake();
      break;
    case 268:
      v3 = HKDisplayTypeIdentifierClinicalNoteRecordMake();
      break;
    case 269:
      v3 = HKDisplayTypeIdentifierUnderwaterDepthMake();
      break;
    case 270:
      v3 = HKDisplayTypeIdentifierRunningPowerMake();
      break;
    case 272:
      v3 = HKDisplayTypeIdentifierEnvironmentalSoundReductionMake();
      break;
    case 273:
      v3 = HKDisplayTypeIdentifierMedicationDoseEventMake();
      break;
    case 274:
      v3 = HKDisplayTypeIdentifierRunningSpeedMake();
      break;
    case 275:
      v3 = HKDisplayTypeIdentifierAppleSleepingBreathingDisturbancesMake();
      break;
    case 276:
      v3 = HKDisplayTypeIdentifierSleepApneaEventMake();
      break;
    case 277:
      v3 = HKDisplayTypeIdentifierWaterTemperatureMake();
      break;
    case 279:
      v3 = HKDisplayTypeIdentifierTimeInDaylightMake();
      break;
    case 280:
      v3 = HKDisplayTypeIdentifierCyclingPowerMake();
      break;
    case 281:
      v3 = HKDisplayTypeIdentifierCyclingSpeedMake();
      break;
    case 282:
      v3 = HKDisplayTypeIdentifierCyclingCadenceMake();
      break;
    case 283:
      v3 = HKDisplayTypeIdentifierCyclingFunctionalThresholdPowerMake();
      break;
    case 284:
      v3 = HKDisplayTypeIdentifierStateOfMindMake();
      break;
    case 285:
      v3 = HKDisplayTypeIdentifierHypertensivePatternMeasurementMake();
      break;
    case 286:
      v3 = HKDisplayTypeIdentifierPhysicalEffortMake();
      break;
    case 287:
      v3 = HKDisplayTypeIdentifierGAD7Make();
      break;
    case 288:
      v3 = HKDisplayTypeIdentifierPHQ9Make();
      break;
    case 294:
      v3 = HKDisplayTypeIdentifierPaddleSportsDistanceMake();
      break;
    case 295:
      v3 = HKDisplayTypeIdentifierRowingDistanceMake();
      break;
    case 296:
      v3 = HKDisplayTypeIdentifierCrossCountrySkiingDistanceMake();
      break;
    case 297:
      v3 = HKDisplayTypeIdentifierSkatingSportsDistanceMake();
      break;
    case 298:
      v3 = HKDisplayTypeIdentifierEstimatedWorkoutEffortScoreMake();
      break;
    case 301:
      v3 = HKDisplayTypeIdentifierRowingSpeedMake();
      break;
    case 302:
      v3 = HKDisplayTypeIdentifierCrossCountrySkiingSpeedMake();
      break;
    case 303:
      v3 = HKDisplayTypeIdentifierPaddleSportsSpeedMake();
      break;
    case 304:
      v3 = HKDisplayTypeIdentifierWorkoutEffortScoreMake();
      break;
    case 305:
      v3 = HKDisplayTypeIdentifierAppleBalanceMetricsMake();
      break;
    case 306:
      v3 = HKDisplayTypeIdentifierUserAnnotatedMedicationTypeMake();
      break;
    case 313:
      v3 = HKDisplayTypeIdentifierBleedingDuringPregnancyMake();
      break;
    case 314:
      v3 = HKDisplayTypeIdentifierBleedingAfterPregnancyMake();
      break;
    case 341:
      v3 = HKDisplayTypeIdentifierAppleSleepScoreMake();
      break;
    default:
      break;
  }

  return v3;
}

- (BOOL)allowsManualEntry
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  result = 0;
  if (displayTypeIdentifier > 235)
  {
    if ((displayTypeIdentifier - 236) > 0x34 || ((1 << (displayTypeIdentifier + 20)) & 0x1A01903C147001) == 0)
    {
      v4 = displayTypeIdentifier - 305;
      if (v4 > 0x24 || ((1 << v4) & 0x1000000101) == 0)
      {
        return 1;
      }
    }
  }

  else if (((displayTypeIdentifier - 137) > 0x3E || ((1 << (displayTypeIdentifier + 119)) & 0x41C2061800080489) == 0) && ((displayTypeIdentifier - 70) > 0x25 || ((1 << (displayTypeIdentifier - 70)) & 0x2040000021) == 0) && displayTypeIdentifier != 13)
  {
    return 1;
  }

  return result;
}

- (id)localizedStringSuffixForWheelchairUser:(BOOL)user
{
  userCopy = user;
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  v5 = (displayTypeIdentifier - 70) > 0x1E || ((1 << (displayTypeIdentifier - 70)) & 0x40000021) == 0;
  if (v5 && displayTypeIdentifier != 186)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696C1C0] localizationStringSuffixForWheelchairUser:userCopy];
  }

  return v6;
}

- (UIImage)displayTypeIcon
{
  if ([(HKDisplayType *)self displayTypeIdentifier]== 13)
  {
    v2 = MEMORY[0x1E69DCAB8];
    v3 = HKHealthUIFrameworkBundle();
    v4 = [v2 imageNamed:@"healthdata_glyph_nikeplus" inBundle:v3];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v6 = [v4 _flatImageWithColor:whiteColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIImage)shareIcon
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  if (displayTypeIdentifier == 13)
  {
    v4 = MEMORY[0x1E69DCAB8];
    displayCategory = HKHealthUIFrameworkBundle();
    v6 = @"sharedata_glyph_nikeplus";
    goto LABEL_5;
  }

  if (displayTypeIdentifier == 100)
  {
    v4 = MEMORY[0x1E69DCAB8];
    displayCategory = HKHealthUIFrameworkBundle();
    v6 = @"sharedata_glyph_activity";
LABEL_5:
    shareIcon = [v4 imageNamed:v6 inBundle:displayCategory];
    goto LABEL_7;
  }

  displayCategory = [(HKDisplayType *)self displayCategory];
  shareIcon = [displayCategory shareIcon];
LABEL_7:
  v8 = shareIcon;

  return v8;
}

- (id)hk_enumeratedValueLabels
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];

  return [HKDisplayType hk_enumeratedValueLabelsWithDisplayTypeIdentifier:displayTypeIdentifier];
}

+ (id)hk_enumeratedValueLabelsWithDisplayTypeIdentifier:(int64_t)identifier
{
  v3 = 0;
  v103[5] = *MEMORY[0x1E69E9840];
  if (identifier > 156)
  {
    if (identifier <= 286)
    {
      switch(identifier)
      {
        case 157:
        case 158:
        case 159:
        case 160:
        case 161:
        case 162:
        case 163:
        case 165:
        case 166:
        case 167:
        case 168:
        case 171:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
        case 225:
        case 226:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 240:
        case 241:
        case 242:
          v102[0] = &unk_1F4384258;
          v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v4 = [v65 localizedStringForKey:@"SEVERITY_UNSPECIFIED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v103[0] = v4;
          v102[1] = &unk_1F4384270;
          v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v5 = [v64 localizedStringForKey:@"SEVERITY_NOT_PRESENT" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v103[1] = v5;
          v102[2] = &unk_1F4384288;
          v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v7 = [v6 localizedStringForKey:@"SEVERITY_MILD" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v103[2] = v7;
          v102[3] = &unk_1F43842A0;
          v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v9 = [v8 localizedStringForKey:@"SEVERITY_MODERATE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v103[3] = v9;
          v102[4] = &unk_1F43842B8;
          v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v11 = [v10 localizedStringForKey:@"SEVERITY_SEVERE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v103[4] = v11;
          v12 = MEMORY[0x1E695DF20];
          v13 = v103;
          v14 = v102;
          goto LABEL_5;
        case 164:
        case 169:
          v78[0] = &unk_1F4384258;
          v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"PRESENCE_PRESENT" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v78[1] = &unk_1F4384270;
          v79[0] = localizationStringAdditionForWheelchairUser;
          v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v27 = [v26 localizedStringForKey:@"PRESENCE_NOT_PRESENT" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v79[1] = v27;
          v28 = MEMORY[0x1E695DF20];
          v29 = v79;
          v30 = v78;
          v31 = 2;
          goto LABEL_34;
        case 170:
          v100[0] = &unk_1F4384258;
          v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"APPETITE_CHANGES_UNSPECIFIED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v101[0] = localizationStringAdditionForWheelchairUser;
          v100[1] = &unk_1F4384270;
          v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v19 = [v18 localizedStringForKey:@"APPETITE_CHANGES_NO_CHANGE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v101[1] = v19;
          v100[2] = &unk_1F4384288;
          v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v45 = [v44 localizedStringForKey:@"APPETITE_CHANGES_DECREASED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v101[2] = v45;
          v100[3] = &unk_1F43842A0;
          v46 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v47 = [v46 localizedStringForKey:@"APPETITE_CHANGES_INCREASED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v101[3] = v47;
          v48 = MEMORY[0x1E695DF20];
          v49 = v101;
          v50 = v100;
          goto LABEL_42;
        case 178:
          v88 = &unk_1F4384270;
          v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"NOISE_NOTIFICATION_LOUD_ENVIRONMENT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v89 = localizationStringAdditionForWheelchairUser;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v89;
          v34 = &v88;
          goto LABEL_32;
        case 193:
          v90[0] = &unk_1F4384270;
          v66 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v62 = [v66 localizedStringForKey:@"CONTRACEPTIVE_UNSPECIFIED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[0] = v62;
          v90[1] = &unk_1F4384288;
          v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v60 = [v64 localizedStringForKey:@"CONTRACEPTIVE_IMPLANT" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[1] = v60;
          v90[2] = &unk_1F43842A0;
          v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v58 = [v59 localizedStringForKey:@"CONTRACEPTIVE_INJECTION" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[2] = v58;
          v90[3] = &unk_1F43842B8;
          v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v36 = [v35 localizedStringForKey:@"CONTRACEPTIVE_INTRAUTERINE_DEVICE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[3] = v36;
          v90[4] = &unk_1F43842D0;
          v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v38 = [v37 localizedStringForKey:@"CONTRACEPTIVE_INTRAVAGINAL_RING" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[4] = v38;
          v90[5] = &unk_1F43842E8;
          v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v40 = [v39 localizedStringForKey:@"CONTRACEPTIVE_ORAL" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[5] = v40;
          v90[6] = &unk_1F4384300;
          v41 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v16 = v66;
          v42 = [v41 localizedStringForKey:@"CONTRACEPTIVE_PATCH" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v91[6] = v42;
          v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:7];

          localizationStringAdditionForWheelchairUser = v62;
          v43 = v60;
          goto LABEL_39;
        case 199:
          v84 = &unk_1F4384270;
          v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"HEADPHONE_NOTIFICATION_LOUD_ENVIRONMENT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v85 = localizationStringAdditionForWheelchairUser;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v85;
          v34 = &v84;
          goto LABEL_32;
        case 236:
          v82 = &unk_1F4384270;
          v16 = HKHealthKitFrameworkBundle();
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"CARDIO_FITNESS_EVENT_LOW_THRESHOLD" value:&stru_1F42FFBE0 table:@"Localizable-CardioFitness"];
          v83 = localizationStringAdditionForWheelchairUser;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v83;
          v34 = &v82;
LABEL_32:
          v3 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
          goto LABEL_7;
        case 243:
          v72[0] = &unk_1F4384270;
          v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"PREGNANCY_TEST_RESULT_NEGATIVE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v73[0] = localizationStringAdditionForWheelchairUser;
          v72[1] = &unk_1F4384288;
          v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v19 = [v18 localizedStringForKey:@"PREGNANCY_TEST_RESULT_POSITIVE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v73[1] = v19;
          v72[2] = &unk_1F43842A0;
          v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v21 = [v20 localizedStringForKey:@"PREGNANCY_TEST_RESULT_INDETERMINATE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v73[2] = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = v73;
          v24 = v72;
          goto LABEL_28;
        case 244:
          v70[0] = &unk_1F4384270;
          v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"PROGESTERONE_TEST_RESULT_NEGATIVE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v71[0] = localizationStringAdditionForWheelchairUser;
          v70[1] = &unk_1F4384288;
          v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v19 = [v18 localizedStringForKey:@"PROGESTERONE_TEST_RESULT_POSITIVE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v71[1] = v19;
          v70[2] = &unk_1F43842A0;
          v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
          v21 = [v20 localizedStringForKey:@"PROGESTERONE_TEST_RESULT_INDETERMINATE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
          v71[2] = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = v71;
          v24 = v70;
LABEL_28:
          v25 = 3;
          goto LABEL_29;
        case 250:
          v96[0] = &unk_1F4384270;
          v16 = [HKMobilityUtilities localizedTitleForWalkingSteadinessEventCategoryValue:1];
          v97[0] = v16;
          v96[1] = &unk_1F4384288;
          localizationStringAdditionForWheelchairUser = [HKMobilityUtilities localizedTitleForWalkingSteadinessEventCategoryValue:2];
          v97[1] = localizationStringAdditionForWheelchairUser;
          v96[2] = &unk_1F43842A0;
          v26 = [HKMobilityUtilities localizedTitleForWalkingSteadinessEventCategoryValue:3];
          v97[2] = v26;
          v96[3] = &unk_1F43842B8;
          v27 = [HKMobilityUtilities localizedTitleForWalkingSteadinessEventCategoryValue:4];
          v97[3] = v27;
          v28 = MEMORY[0x1E695DF20];
          v29 = v97;
          v30 = v96;
          v31 = 4;
LABEL_34:
          v3 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];

          goto LABEL_7;
        default:
          goto LABEL_8;
      }
    }

    if ((identifier - 313) < 2)
    {
      v94[0] = &unk_1F4384270;
      v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v4 = [v65 localizedStringForKey:@"VAGINAL_BLEEDING_UNSPECIFIED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v95[0] = v4;
      v94[1] = &unk_1F4384288;
      v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v5 = [v64 localizedStringForKey:@"VAGINAL_BLEEDING_LIGHT" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v95[1] = v5;
      v94[2] = &unk_1F43842A0;
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v7 = [v6 localizedStringForKey:@"VAGINAL_BLEEDING_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v95[2] = v7;
      v94[3] = &unk_1F43842B8;
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v9 = [v8 localizedStringForKey:@"VAGINAL_BLEEDING_HEAVY" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v95[3] = v9;
      v94[4] = &unk_1F43842D0;
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v11 = [v10 localizedStringForKey:@"VAGINAL_BLEEDING_NONE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v95[4] = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = v95;
      v14 = v94;
      goto LABEL_5;
    }

    if (identifier != 287)
    {
      if (identifier == 288)
      {
        v74[0] = &unk_1F4384270;
        v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v4 = [v65 localizedStringForKey:@"PHQ9_RISK_NONE_TO_MINIMAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
        v75[0] = v4;
        v74[1] = &unk_1F4384288;
        v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v5 = [v64 localizedStringForKey:@"PHQ9_RISK_MILD" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
        v75[1] = v5;
        v74[2] = &unk_1F43842A0;
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v7 = [v6 localizedStringForKey:@"PHQ9_RISK_MODERATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
        v75[2] = v7;
        v74[3] = &unk_1F43842B8;
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = [v8 localizedStringForKey:@"PHQ9_RISK_MODERATELY_SEVERE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
        v75[3] = v9;
        v74[4] = &unk_1F43842D0;
        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v11 = [v10 localizedStringForKey:@"PHQ9_RISK_SEVERE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
        v75[4] = v11;
        v12 = MEMORY[0x1E695DF20];
        v13 = v75;
        v14 = v74;
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    v86[0] = &unk_1F4384270;
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"GAD7_RISK_NONE_TO_MINIMAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v87[0] = localizationStringAdditionForWheelchairUser;
    v86[1] = &unk_1F4384288;
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"GAD7_RISK_MILD" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v87[1] = v19;
    v86[2] = &unk_1F43842A0;
    v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v45 = [v44 localizedStringForKey:@"GAD7_RISK_MODERATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v87[2] = v45;
    v86[3] = &unk_1F43842B8;
    v46 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v47 = [v46 localizedStringForKey:@"GAD7_RISK_SEVERE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v87[3] = v47;
    v48 = MEMORY[0x1E695DF20];
    v49 = v87;
    v50 = v86;
    goto LABEL_42;
  }

  if (identifier <= 90)
  {
    if (identifier == 63)
    {
      v68[0] = &unk_1F4384258;
      v67 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      localizationStringAdditionForWheelchairUser = [v67 localizedStringForKey:@"IN_BED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v69[0] = localizationStringAdditionForWheelchairUser;
      v68[1] = &unk_1F4384270;
      v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v64 localizedStringForKey:@"ASLEEP_UNSPECIFIED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
      v69[1] = v63;
      v68[2] = &unk_1F4384288;
      v61 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v51 = [v61 localizedStringForKey:@"AWAKE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v69[2] = v51;
      v68[3] = &unk_1F43842A0;
      v52 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v53 = [v52 localizedStringForKey:@"ASLEEP_CORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
      v69[3] = v53;
      v68[4] = &unk_1F43842B8;
      v54 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v55 = [v54 localizedStringForKey:@"ASLEEP_DEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
      v69[4] = v55;
      v68[5] = &unk_1F43842D0;
      v56 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v57 = [v56 localizedStringForKey:@"ASLEEP_REM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
      v69[5] = v57;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:6];

      v16 = v67;
      v43 = v63;
LABEL_39:

      goto LABEL_6;
    }

    if (identifier != 70)
    {
      goto LABEL_8;
    }

    v98[0] = &unk_1F4384258;
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizationStringAdditionForWheelchairUser = [MEMORY[0x1E696C1C0] localizationStringAdditionForWheelchairUser];
    v18 = [@"STOOD" stringByAppendingString:localizationStringAdditionForWheelchairUser];
    v19 = [v16 localizedStringForKey:v18 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v99[0] = v19;
    v98[1] = &unk_1F4384270;
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v21 = [v20 localizedStringForKey:@"IDLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v99[1] = v21;
    v22 = MEMORY[0x1E695DF20];
    v23 = v99;
    v24 = v98;
    v25 = 2;
LABEL_29:
    v3 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];

LABEL_43:
    goto LABEL_7;
  }

  switch(identifier)
  {
    case '[':
      v92[0] = &unk_1F4384270;
      v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v4 = [v65 localizedStringForKey:@"DRY" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v93[0] = v4;
      v92[1] = &unk_1F4384288;
      v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v5 = [v64 localizedStringForKey:@"STICKY" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v93[1] = v5;
      v92[2] = &unk_1F43842A0;
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v7 = [v6 localizedStringForKey:@"CREAMY" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v93[2] = v7;
      v92[3] = &unk_1F43842B8;
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v9 = [v8 localizedStringForKey:@"WATERY" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v93[3] = v9;
      v92[4] = &unk_1F43842D0;
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v11 = [v10 localizedStringForKey:@"EGG_WHITE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v93[4] = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = v93;
      v14 = v92;
      goto LABEL_5;
    case '\\':
      v76[0] = &unk_1F4384270;
      v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      localizationStringAdditionForWheelchairUser = [v16 localizedStringForKey:@"OVULATION_TEST_RESULT_NEGATIVE_LOW" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v77[0] = localizationStringAdditionForWheelchairUser;
      v76[1] = &unk_1F4384288;
      v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v19 = [v18 localizedStringForKey:@"OVULATION_TEST_RESULT_LUTEINIZING_HORMONE_SURGE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v77[1] = v19;
      v76[2] = &unk_1F43842A0;
      v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v45 = [v44 localizedStringForKey:@"OVULATION_TEST_RESULT_INDETERMINATE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v77[2] = v45;
      v76[3] = &unk_1F43842B8;
      v46 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v47 = [v46 localizedStringForKey:@"OVULATION_TEST_RESULT_ESTROGEN_SURGE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v77[3] = v47;
      v48 = MEMORY[0x1E695DF20];
      v49 = v77;
      v50 = v76;
LABEL_42:
      v3 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:4];

      goto LABEL_43;
    case '_':
      v80[0] = &unk_1F4384270;
      v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v4 = [v65 localizedStringForKey:@"UNSPECIFIED" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v81[0] = v4;
      v80[1] = &unk_1F4384288;
      v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v5 = [v64 localizedStringForKey:@"LIGHT" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v81[1] = v5;
      v80[2] = &unk_1F43842A0;
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v7 = [v6 localizedStringForKey:@"MEDIUM" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v81[2] = v7;
      v80[3] = &unk_1F43842B8;
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v9 = [v8 localizedStringForKey:@"HEAVY" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v81[3] = v9;
      v80[4] = &unk_1F43842D0;
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthCharts"];
      v11 = [v10 localizedStringForKey:@"MENSTRUAL_FLOW_NONE" value:&stru_1F42FFBE0 table:@"HealthCharts-Localizable"];
      v81[4] = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = v81;
      v14 = v80;
LABEL_5:
      v3 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:5];

      localizationStringAdditionForWheelchairUser = v4;
      v16 = v65;

LABEL_6:
LABEL_7:

      break;
  }

LABEL_8:

  return v3;
}

- (id)hk_valueOrderForStackedCharts
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  if (displayTypeIdentifier <= 156)
  {
    if (displayTypeIdentifier <= 90)
    {
      if (displayTypeIdentifier == 63)
      {
        return &unk_1F4381A50;
      }

      if (displayTypeIdentifier == 70)
      {
        return &unk_1F4381960;
      }
    }

    else
    {
      switch(displayTypeIdentifier)
      {
        case '[':
          return &unk_1F4381990;
        case '\\':
          return &unk_1F43819F0;
        case '_':
          return &unk_1F4381978;
      }
    }

    return &unk_1F4381A68;
  }

  if (displayTypeIdentifier > 286)
  {
    if ((displayTypeIdentifier - 313) >= 2)
    {
      if (displayTypeIdentifier == 287)
      {
        return &unk_1F43819C0;
      }

      if (displayTypeIdentifier == 288)
      {
        return &unk_1F4381A08;
      }

      return &unk_1F4381A68;
    }

    return &unk_1F4381978;
  }

  v3 = displayTypeIdentifier - 157;
  result = &unk_1F4381930;
  switch(v3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 14:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 83:
    case 84:
    case 85:
      return result;
    case 7:
    case 12:
      result = &unk_1F43819D8;
      break;
    case 13:
      result = &unk_1F4381948;
      break;
    case 36:
      result = &unk_1F43819A8;
      break;
    case 86:
      result = &unk_1F4381A20;
      break;
    case 87:
      result = &unk_1F4381A38;
      break;
    default:
      return &unk_1F4381A68;
  }

  return result;
}

- (unint64_t)hk_interactiveChartOptions
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  result = 2048;
  if (displayTypeIdentifier > 124)
  {
    switch(displayTypeIdentifier)
    {
      case 145:
        return 0x200000;
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 174:
      case 175:
      case 176:
      case 177:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 227:
      case 228:
      case 236:
      case 237:
      case 238:
      case 239:
      case 245:
      case 246:
      case 247:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 255:
      case 257:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 271:
      case 273:
      case 276:
      case 278:
      case 279:
      case 285:
      case 286:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 300:
      case 304:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
        return 0;
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 287:
      case 288:
      case 313:
      case 314:
        return result;
      case 172:
      case 173:
      case 178:
      case 258:
      case 259:
      case 260:
      case 269:
      case 270:
      case 272:
      case 274:
      case 277:
      case 280:
      case 281:
      case 282:
      case 283:
      case 301:
      case 302:
      case 303:
        return 128;
      case 191:
      case 192:
      case 284:
        return 1024;
      case 193:
        return 3072;
      case 248:
        return 99840;
      case 249:
      case 275:
        return 33792;
      case 256:
        return 1536;
      case 305:
        return 512;
      default:
        if (displayTypeIdentifier == 341)
        {
          return 1536;
        }

        if (displayTypeIdentifier != 125)
        {
          return 0;
        }

        break;
    }

    return 512;
  }

  if (displayTypeIdentifier > 90)
  {
    if ((displayTypeIdentifier - 91) >= 2 && displayTypeIdentifier != 95)
    {
      return 0;
    }
  }

  else
  {
    if (displayTypeIdentifier != 5 && displayTypeIdentifier != 61)
    {
      if (displayTypeIdentifier == 63)
      {
        return 512;
      }

      return 0;
    }

    return 128;
  }

  return result;
}

- (id)hk_healthQueryChartCacheDataSourceForTimeScope:(int64_t)scope healthStore:(id)store unitController:(id)controller
{
  storeCopy = store;
  controllerCopy = controller;
  v10 = 0;
  switch([(HKDisplayType *)self displayTypeIdentifier])
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 62:
    case 71:
    case 72:
    case 73:
    case 75:
    case 78:
    case 83:
    case 87:
    case 89:
    case 90:
    case 101:
    case 110:
    case 111:
    case 113:
    case 114:
    case 118:
    case 124:
    case 137:
    case 138:
    case 139:
    case 179:
    case 183:
    case 186:
    case 194:
    case 251:
    case 258:
    case 259:
    case 260:
    case 266:
    case 270:
    case 274:
    case 275:
    case 277:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 285:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 301:
    case 302:
    case 303:
    case 304:
      objectType = [(HKDisplayType *)self objectType];
      v10 = HKInteractiveChartDataSourceQuantityType(self, objectType, scope, storeCopy, controllerCopy, 0);
      goto LABEL_3;
    case 5:
    case 15:
    case 61:
    case 182:
    case 187:
    case 188:
    case 195:
    case 196:
    case 286:
      objectType2 = [(HKDisplayType *)self objectType];
      v13 = [[HKQuantityDistributionDataSource alloc] initWithQuantityType:objectType2 unitController:controllerCopy healthStore:storeCopy contextStyle:0 predicate:0 options:0 baseDisplayType:self specificStartDate:0 specificEndDate:0 userInfoCreationBlock:&__block_literal_global_70];
      goto LABEL_5;
    case 14:
      objectType2 = [(HKDisplayType *)self objectType];
      v13 = [[HKQuantityDistributionDataSource alloc] initWithQuantityType:objectType2 unitController:controllerCopy healthStore:storeCopy contextStyle:0 predicate:0 options:1 baseDisplayType:self specificStartDate:0 specificEndDate:0 userInfoCreationBlock:&__block_literal_global_584];
LABEL_5:
      v10 = v13;

      break;
    case 63:
    case 70:
    case 91:
    case 92:
    case 96:
    case 99:
    case 140:
    case 145:
    case 147:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 178:
    case 189:
    case 191:
    case 192:
    case 193:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 250:
    case 254:
    case 262:
    case 263:
    case 264:
    case 265:
    case 276:
    case 313:
    case 314:
      goto LABEL_23;
    case 79:
      if (scope == 6)
      {
        v14 = HKInteractiveChartDataSourceForWorkouts(self, storeCopy);
      }

      else
      {
LABEL_23:
        v14 = HKInteractiveChartDataSourceChartStyle(self, scope, storeCopy, controllerCopy);
      }

      goto LABEL_24;
    case 80:
      v14 = HKInteractiveChartDataSourceForBloodPressure(self, storeCopy);
      goto LABEL_24;
    case 95:
      v14 = HKInteractiveChartDataSourceForMenstruation(self, scope, storeCopy);
      goto LABEL_24;
    case 97:
      v14 = HKInteractiveChartDataSourceCount(self, storeCopy);
      goto LABEL_24;
    case 125:
      v14 = HKInteractiveChartDataSourceForInsulinDelivery(self, storeCopy);
      goto LABEL_24;
    case 172:
    case 173:
    case 272:
      v14 = HKInteractiveChartDataSourceForAudioLevel(self, storeCopy, controllerCopy);
      goto LABEL_24;
    case 237:
      v14 = HKInteractiveChartDataSourceForHandwashingEvent(self, storeCopy);
      goto LABEL_24;
    case 248:
      v14 = HKInteractiveChartDataSourceForAfibBurden(self, scope, storeCopy, controllerCopy);
      goto LABEL_24;
    case 249:
      v14 = HKInteractiveChartDataSourceForAppleWalkingSteadiness(self, scope, storeCopy, controllerCopy);
      goto LABEL_24;
    case 256:
      v14 = HKInteractiveChartDataSourceForSleepingWristTemperature(self, scope, storeCopy, controllerCopy);
      goto LABEL_24;
    case 269:
      objectType = [(HKDisplayType *)self objectType];
      objectType3 = [(HKDisplayType *)self objectType];
      v16 = HKPreprocessingHandlerForUnderwaterDepth(objectType3, storeCopy);
      v10 = HKInteractiveChartDataSourceQuantityType(self, objectType, scope, storeCopy, controllerCopy, v16);

LABEL_3:
      break;
    case 284:
      v14 = HKInteractiveChartDataSourceForStateOfMind(self, storeCopy);
      goto LABEL_24;
    case 287:
    case 288:
      v14 = HKInteractiveChartDataSourceForScoredAssessment(self, storeCopy);
      goto LABEL_24;
    case 305:
      v14 = HKInteractiveChartDataSourceForBalance(self, storeCopy);
      goto LABEL_24;
    case 341:
      v14 = HKInteractiveChartDataSourceForSleepScore(self, storeCopy);
LABEL_24:
      v10 = v14;
      break;
    default:
      break;
  }

  return v10;
}

HKInteractiveChartSinglePointData *__110__HKDisplayType_DerivedProperties__hk_healthQueryChartCacheDataSourceForTimeScope_healthStore_unitController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKInteractiveChartSinglePointData);
  [(HKInteractiveChartSinglePointData *)v6 setUnit:v4];
  v7 = [v5 minimumValue];
  [v7 doubleValueForUnit:v4];
  [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

  v8 = [v5 maximumValue];

  [v8 doubleValueForUnit:v4];
  v10 = v9;

  [(HKInteractiveChartSinglePointData *)v6 setMaxValue:v10];
  [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];

  return v6;
}

HKInteractiveChartSinglePointData *__110__HKDisplayType_DerivedProperties__hk_healthQueryChartCacheDataSourceForTimeScope_healthStore_unitController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(HKInteractiveChartSinglePointData);
  [(HKInteractiveChartSinglePointData *)v6 setUnit:v5];
  v7 = [v4 histogramCounts];
  [v7 hk_sumUsingEvaluationBlock:&__block_literal_global_587];
  v9 = v8;

  v10 = [v4 minimumValue];
  [v10 doubleValueForUnit:v5];
  if (v9 < 2)
  {
    [(HKInteractiveChartSinglePointData *)v6 setValue:?];
  }

  else
  {
    [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

    v10 = [v4 maximumValue];
    [v10 doubleValueForUnit:v5];
    [(HKInteractiveChartSinglePointData *)v6 setMaxValue:?];
  }

  [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:v9 > 1];

  return v6;
}

- (id)hk_standardInteractiveChartsFormatterForTimeScope:(int64_t)scope
{
  objectType = [(HKDisplayType *)self objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = HKInteractiveChartGenericStatFormatter;
  }

  else
  {
    chartingRules = [(HKDisplayType *)self chartingRules];
    v9 = [chartingRules chartStyleForTimeScope:scope];

    if ((v9 - 4) >= 3)
    {
      if ((v9 - 7) < 2)
      {
        v10 = [HKInteractiveChartCategoryValueFormatter alloc];
        localization = [(HKDisplayType *)self localization];
        displayName = [localization displayName];
        v13 = [(HKInteractiveChartCategoryValueFormatter *)v10 initWithLocalizedCategoryName:displayName];

        goto LABEL_9;
      }

      v7 = HKInteractiveChartDataFormatter;
    }

    else
    {
      v7 = HKInteractiveChartTimePeriodFormatter;
    }
  }

  v13 = objc_alloc_init(v7);
LABEL_9:

  return v13;
}

- (id)hk_interactiveChartsFormatterForTimeScope:(int64_t)scope
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  if (displayTypeIdentifier <= 247)
  {
    if (displayTypeIdentifier <= 124)
    {
      if (displayTypeIdentifier > 79)
      {
        if (displayTypeIdentifier != 80)
        {
          if (displayTypeIdentifier == 95)
          {
            v11 = [HKInteractiveChartMenstruationFormatter alloc];
            localization = [(HKDisplayType *)self localization];
            displayName = [localization displayName];
            v6 = [(HKInteractiveChartCategoryValueFormatter *)v11 initWithLocalizedCategoryName:displayName];

            goto LABEL_46;
          }

          if (displayTypeIdentifier == 97)
          {
            v6 = objc_alloc_init(HKInteractiveChartNumberFormatter);
            [(HKInteractiveChartNumberFormatter *)v6 setUnitFormatString:@"SEXUAL_ACTIVITY_UNIT"];
            goto LABEL_46;
          }

          goto LABEL_33;
        }

        v7 = HKInteractiveChartBloodPressureFormatter;
LABEL_44:
        v10 = objc_alloc_init(v7);
        goto LABEL_45;
      }

      if (displayTypeIdentifier == 14)
      {
        v7 = HKInteractiveChartOxygenSaturationFormatter;
        goto LABEL_44;
      }

      if (displayTypeIdentifier == 79 && scope == 6)
      {
        v7 = HKInteractiveChartTimePeriodFormatter;
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    if ((displayTypeIdentifier - 172) >= 2)
    {
      if (displayTypeIdentifier == 125)
      {
        v7 = HKInteractiveChartInsulinFormatter;
        goto LABEL_44;
      }

      if (displayTypeIdentifier == 237)
      {
        v7 = HKInteractiveChartHandwashingEventFormatter;
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    v8 = [[HKInteractiveChartAudioLevelStatFormatter alloc] initForDisplayType:self timeScope:scope];
    v6 = v8;
    v9 = 1;
LABEL_42:
    [(HKInteractiveChartNumberFormatter *)v8 setShowsClassificationInCurrentValueView:v9];
    goto LABEL_46;
  }

  if (displayTypeIdentifier <= 271)
  {
    if (displayTypeIdentifier > 255)
    {
      if (displayTypeIdentifier == 256)
      {
        v7 = HKInteractiveChartBaselineRelativeStatFormatter;
        goto LABEL_44;
      }

      if (displayTypeIdentifier == 269)
      {
        v6 = objc_alloc_init(HKInteractiveChartGenericStatFormatter);
        [(HKInteractiveChartNumberFormatter *)v6 setOverrideStatFormatterItemOptions:&unk_1F4381A80];
        goto LABEL_46;
      }
    }

    else
    {
      if (displayTypeIdentifier == 248)
      {
        v7 = HKInteractiveChartAFibBurdenFormatter;
        goto LABEL_44;
      }

      if (displayTypeIdentifier == 249)
      {
        v7 = HKInteractiveChartAppleWalkingSteadinessFormatter;
        goto LABEL_44;
      }
    }

    goto LABEL_33;
  }

  if (displayTypeIdentifier <= 283)
  {
    if (displayTypeIdentifier != 272)
    {
      if (displayTypeIdentifier == 275)
      {
        v7 = HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter;
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    v8 = [[HKInteractiveChartAudioLevelStatFormatter alloc] initForDisplayType:self timeScope:scope];
    v6 = v8;
    v9 = 0;
    goto LABEL_42;
  }

  switch(displayTypeIdentifier)
  {
    case 284:
      v7 = HKStateOfMindChartFormatter;
      goto LABEL_44;
    case 341:
      v7 = HKSleepScoreChartFormatter;
      goto LABEL_44;
    case 305:
      v7 = HKBalanceChartFormatter;
      goto LABEL_44;
  }

LABEL_33:
  v10 = [(HKDisplayType *)self hk_standardInteractiveChartsFormatterForTimeScope:scope];
LABEL_45:
  v6 = v10;
LABEL_46:

  return v6;
}

- (id)hk_dimensionForChartAxisWithUnitController:(id)controller
{
  controllerCopy = controller;
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  if (displayTypeIdentifier > 69)
  {
    v6 = displayTypeIdentifier - 70;
    if ((displayTypeIdentifier - 70) > 0x29)
    {
      goto LABEL_5;
    }

    if (((1 << v6) & 0x20088080000) == 0)
    {
      if (((1 << v6) & 0x20000201) == 0)
      {
LABEL_5:
        if (displayTypeIdentifier != 189)
        {
          if (displayTypeIdentifier == 256)
          {
            v7 = HKAxisLabelDimensionRelativeTemperature;
LABEL_17:
            v8 = [[v7 alloc] initWithDisplayType:self unitPreferencesController:controllerCopy];
            goto LABEL_18;
          }

          goto LABEL_15;
        }
      }

LABEL_13:
      v9 = 0;
LABEL_14:
      v8 = [HKChartAxisDimensionFactory dimensionWithPurpose:v9 displayType:self unitController:controllerCopy];
      goto LABEL_18;
    }

LABEL_10:
    v8 = objc_alloc_init(HKAxisLabelDimensionInteger);
LABEL_18:
    v12 = v8;
    goto LABEL_19;
  }

  if (displayTypeIdentifier <= 0x3F)
  {
    if (((1 << displayTypeIdentifier) & 0x2200000000004080) != 0)
    {
      goto LABEL_10;
    }

    if (displayTypeIdentifier == 2)
    {
      v14 = [controllerCopy unitForDisplayType:self];
      footUnit = [MEMORY[0x1E696C510] footUnit];

      if (v14 != footUnit)
      {
        goto LABEL_23;
      }

      v9 = 1;
      goto LABEL_14;
    }

    if (displayTypeIdentifier == 63)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  chartingRules = [(HKDisplayType *)self chartingRules];
  shouldDisplayUnitForAxisLabels = [chartingRules shouldDisplayUnitForAxisLabels];

  if (shouldDisplayUnitForAxisLabels)
  {
    v7 = HKAxisLabelDimensionDisplayType;
    goto LABEL_17;
  }

LABEL_23:
  v12 = 0;
LABEL_19:

  return v12;
}

- (BOOL)hk_healthQueryChartDataSourceDependsOnTimeScope
{
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  result = 1;
  switch(displayTypeIdentifier)
  {
    case 140:
    case 145:
    case 147:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 178:
    case 189:
    case 191:
    case 192:
    case 193:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 248:
    case 249:
    case 250:
    case 254:
    case 256:
    case 262:
    case 263:
    case 264:
    case 265:
    case 276:
      return result;
    case 141:
    case 142:
    case 143:
    case 144:
    case 146:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 190:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 227:
    case 228:
    case 236:
    case 237:
    case 238:
    case 239:
    case 245:
    case 246:
    case 247:
    case 251:
    case 252:
    case 253:
    case 255:
    case 257:
    case 258:
    case 259:
    case 260:
    case 261:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
      goto LABEL_6;
    default:
      if (((displayTypeIdentifier - 63) > 0x24 || ((1 << (displayTypeIdentifier - 63)) & 0x1330010081) == 0) && (displayTypeIdentifier - 313) >= 2)
      {
LABEL_6:
        result = 0;
      }

      break;
  }

  return result;
}

+ (id)hk_chartFactorDisplayTypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [HKDisplayType displayTypeWithIdentifier:191];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)hk_chartFactorDescriptionDisplayTypes
{
  v6[1] = *MEMORY[0x1E69E9840];
  displayTypeIdentifier = [(HKDisplayType *)self displayTypeIdentifier];
  v3 = MEMORY[0x1E695E0F0];
  if (displayTypeIdentifier <= 247)
  {
    if (((displayTypeIdentifier - 118) > 0x13 || ((1 << (displayTypeIdentifier - 118)) & 0x80041) == 0) && displayTypeIdentifier != 3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (displayTypeIdentifier == 284 || displayTypeIdentifier == 248)
  {
LABEL_8:
    v4 = [HKDisplayType displayTypeWithIdentifier:191];
    v6[0] = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

LABEL_9:

  return v3;
}

@end