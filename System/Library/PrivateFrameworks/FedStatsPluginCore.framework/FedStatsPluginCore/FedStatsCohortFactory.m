@interface FedStatsCohortFactory
+ (id)cohortQueryFieldByName:(id)a3;
+ (id)sharedInstance;
- (FedStatsCohortFactory)init;
@end

@implementation FedStatsCohortFactory

- (FedStatsCohortFactory)init
{
  v124[115] = *MEMORY[0x277D85DE8];
  v122.receiver = self;
  v122.super_class = FedStatsCohortFactory;
  result = [(FedStatsCohortFactory *)&v122 init];
  if (result)
  {
    v123[0] = @"locale";
    v121 = result;
    v120 = +[FedStatsCohortQueryLocale cohortInstance];
    v124[0] = v120;
    v123[1] = @"deviceType";
    v119 = +[FedStatsCohortQueryDeviceType cohortInstance];
    v124[1] = v119;
    v123[2] = @"numOfMediaApps";
    v118 = +[FedStatsCohortQueryInstalledAppsMedia cohortInstance];
    v124[2] = v118;
    v123[3] = @"numOfPhoneApps";
    v117 = +[FedStatsCohortQueryInstalledAppsPhone cohortInstance];
    v124[3] = v117;
    v123[4] = @"userSetDeviceRegion";
    v116 = +[FedStatsCohortQueryUserSetDeviceRegion cohortInstance];
    v124[4] = v116;
    v123[5] = @"bundleID";
    v115 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[5] = v115;
    v123[6] = @"sessionType";
    v114 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[6] = v114;
    v123[7] = @"sessionState";
    v113 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[7] = v113;
    v123[8] = @"supportsBackgrounding";
    v112 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[8] = v112;
    v123[9] = @"supportsStateRestoration";
    v111 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[9] = v111;
    v123[10] = @"eventName";
    v110 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[10] = v110;
    v123[11] = @"measure";
    v109 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[11] = v109;
    v123[12] = @"extra";
    v108 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[12] = v108;
    v123[13] = @"issuer";
    v107 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[13] = v107;
    v123[14] = @"dayOfWeek";
    v106 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[14] = v106;
    v123[15] = @"hourOfDay";
    v105 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[15] = v105;
    v123[16] = @"geohash";
    v104 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[16] = v104;
    v123[17] = @"country";
    v103 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[17] = v103;
    v123[18] = @"timeZone";
    v102 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[18] = v102;
    v123[19] = @"interfaceType";
    v101 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[19] = v101;
    v123[20] = @"radioType";
    v100 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[20] = v100;
    v123[21] = @"radioBand";
    v99 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[21] = v99;
    v123[22] = @"addressFamily";
    v98 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[22] = v98;
    v123[23] = @"lang";
    v97 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[23] = v97;
    v123[24] = @"platform";
    v96 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[24] = v96;
    v123[25] = @"performanceEvent";
    v95 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[25] = v95;
    v123[26] = @"signal";
    v94 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[26] = v94;
    v123[27] = @"userAgent";
    v93 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[27] = v93;
    v123[28] = @"countryCode";
    v92 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[28] = v92;
    v123[29] = @"error";
    v91 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[29] = v91;
    v123[30] = @"localeIdentifier";
    v90 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[30] = v90;
    v123[31] = @"contentType";
    v89 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[31] = v89;
    v123[32] = @"ageGroup";
    v88 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[32] = v88;
    v123[33] = @"eventDirection";
    v87 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[33] = v87;
    v123[34] = @"clientBundleID";
    v86 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[34] = v86;
    v123[35] = @"origin";
    v85 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[35] = v85;
    v123[36] = @"isNativeArchitecture";
    v84 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[36] = v84;
    v123[37] = @"dyldPlatform";
    v83 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[37] = v83;
    v123[38] = @"type";
    v82 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[38] = v82;
    v123[39] = @"screenDistance";
    v81 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[39] = v81;
    v123[40] = @"action";
    v80 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[40] = v80;
    v123[41] = @"gestureAssessment";
    v79 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[41] = v79;
    v123[42] = @"livenessAssessment";
    v78 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[42] = v78;
    v123[43] = @"passiveGestureAssessment";
    v77 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[43] = v77;
    v123[44] = @"passiveLivenessAssessment";
    v76 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[44] = v76;
    v123[45] = @"property";
    v75 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[45] = v75;
    v123[46] = @"accessedPropertyDirectly";
    v74 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[46] = v74;
    v123[47] = @"geohash1";
    v73 = [FedStatsCohortGeohash cohortInstanceWithPrecision:1];
    v124[47] = v73;
    v123[48] = @"geohash2";
    v72 = [FedStatsCohortGeohash cohortInstanceWithPrecision:2];
    v124[48] = v72;
    v123[49] = @"geohash3";
    v71 = [FedStatsCohortGeohash cohortInstanceWithPrecision:3];
    v124[49] = v71;
    v123[50] = @"geohash4";
    v70 = [FedStatsCohortGeohash cohortInstanceWithPrecision:4];
    v124[50] = v70;
    v123[51] = @"suggestionType";
    v69 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[51] = v69;
    v123[52] = @"footprint";
    v68 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[52] = v68;
    v123[53] = @"pageCount";
    v67 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[53] = v67;
    v123[54] = @"bitsOfURL";
    v66 = [FedStatsCohortQueryURLBits cohortQueryFieldWithKey:?];
    v124[54] = v66;
    v123[55] = @"protocol";
    v65 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[55] = v65;
    v123[56] = @"MCC";
    v64 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[56] = v64;
    v123[57] = @"MNC";
    v63 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[57] = v63;
    v123[58] = @"matchedEmNumSource";
    v62 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[58] = v62;
    v123[59] = @"sip380Procedure";
    v61 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[59] = v61;
    v123[60] = @"sip380RedirectedURN";
    v60 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[60] = v60;
    v123[61] = @"category";
    v59 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[61] = v59;
    v123[62] = @"previous";
    v58 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[62] = v58;
    v123[63] = @"scope";
    v57 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[63] = v57;
    v123[64] = @"language";
    v56 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[64] = v56;
    v123[65] = @"memoryGenerated";
    v55 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[65] = v55;
    v123[66] = @"memoryShared";
    v54 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[66] = v54;
    v123[67] = @"memoryWatched";
    v53 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[67] = v53;
    v123[68] = @"focusRegionType";
    v52 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[68] = v52;
    v123[69] = @"styleSelectionType";
    v51 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[69] = v51;
    v123[70] = @"userLibraryAgeInDays";
    v50 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[70] = v50;
    v123[71] = @"cardShownOrEngaged";
    v49 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[71] = v49;
    v123[72] = @"advertisedItemID";
    v48 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[72] = v48;
    v123[73] = @"conversionType";
    v47 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[73] = v47;
    v123[74] = @"adNetworkID";
    v46 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[74] = v46;
    v123[75] = @"publisherItemID";
    v45 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[75] = v45;
    v123[76] = @"marketplaceID";
    v44 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[76] = v44;
    v123[77] = @"storefrontID";
    v43 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[77] = v43;
    v123[78] = @"sourceDomain";
    v42 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[78] = v42;
    v123[79] = @"inAppPurchaseType";
    v41 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[79] = v41;
    v123[80] = @"currencyCode";
    v40 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[80] = v40;
    v123[81] = @"inAppPurchaseSubscriptionISO8601Duration";
    v39 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[81] = v39;
    v123[82] = @"tokenLength";
    v38 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[82] = v38;
    v123[83] = @"usage";
    v37 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[83] = v37;
    v123[84] = @"userInterfaceLanguage";
    v36 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[84] = v36;
    v123[85] = @"userSetRegionFormat";
    v35 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[85] = v35;
    v123[86] = @"result";
    v34 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[86] = v34;
    v123[87] = @"feature";
    v33 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[87] = v33;
    v123[88] = @"usecaseId";
    v32 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[88] = v32;
    v123[89] = @"modelName";
    v31 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[89] = v31;
    v123[90] = @"modelVersion";
    v30 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[90] = v30;
    v123[91] = @"portType";
    v29 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[91] = v29;
    v123[92] = @"blockingReason";
    v28 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[92] = v28;
    v123[93] = @"region";
    v27 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[93] = v27;
    v123[94] = @"memoryPromptSuggestionSource";
    v26 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[94] = v26;
    v123[95] = @"mechanisms";
    v25 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[95] = v25;
    v123[96] = @"actions";
    v24 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[96] = v24;
    v123[97] = @"failingAction";
    v23 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[97] = v23;
    v123[98] = @"successfulMechanism";
    v22 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[98] = v22;
    v123[99] = @"failedMechanisms";
    v21 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[99] = v21;
    v123[100] = @"taxonomy";
    v20 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[100] = v20;
    v123[101] = @"shootingCategory";
    v19 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[101] = v19;
    v123[102] = @"shootingMode";
    v18 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[102] = v18;
    v123[103] = @"cohort1";
    v17 = [FedStatsCohortQueryLengthCappedField cohortQueryFieldWithKey:"cohortQueryFieldWithKey:cap:" cap:?];
    v124[103] = v17;
    v123[104] = @"cohort2";
    v16 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[104] = v16;
    v123[105] = @"cohort3";
    v3 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[105] = v3;
    v123[106] = @"cohort4";
    v4 = [FedStatsCohortQueryLengthCappedField cohortQueryFieldWithKey:"cohortQueryFieldWithKey:cap:" cap:?];
    v124[106] = v4;
    v123[107] = @"eventCount";
    v5 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[107] = v5;
    v123[108] = @"assetVersion";
    v6 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[108] = v6;
    v123[109] = @"safetyDataVersion";
    v7 = [FedStatsCohortQueryLengthCappedField cohortQueryFieldWithKey:"cohortQueryFieldWithKey:cap:" cap:?];
    v124[109] = v7;
    v123[110] = @"uafVersion";
    v8 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[110] = v8;
    v123[111] = @"eventLocale";
    v9 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[111] = v9;
    v123[112] = @"recordZone";
    v10 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[112] = v10;
    v123[113] = @"nemesisErrors";
    v11 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[113] = v11;
    v123[114] = @"filteringNemesisErrors";
    v12 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v124[114] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:115];
    cohortObjects = v121->_cohortObjects;
    v121->_cohortObjects = v13;

    result = v121;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FedStatsCohortFactory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __39__FedStatsCohortFactory_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)cohortQueryFieldByName:(id)a3
{
  v3 = a3;
  v4 = +[FedStatsCohortFactory sharedInstance];
  v5 = [v4 cohortObjects];

  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    [v5 objectForKey:v3];
  }

  else
  {
    [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:v3];
  }
  v7 = ;

  return v7;
}

@end