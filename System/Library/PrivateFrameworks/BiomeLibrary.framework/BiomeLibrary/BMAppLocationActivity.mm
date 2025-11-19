@interface BMAppLocationActivity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppLocationActivity)initWithBundleID:(id)a3 activityType:(id)a4 beginningOfActivity:(id)a5 contentDescription:(id)a6 expirationDate:(id)a7 isEligibleForPrediction:(id)a8 isPubliclyIndexable:(id)a9 itemIdentifier:(id)a10 itemRelatedContentURL:(id)a11 itemRelatedUniqueIdentifier:(id)a12 shortcutAvailability:(id)a13 suggestedInvocationPhrase:(id)a14 title:(id)a15 userActivityRequiredString:(id)a16 userActivityUUID:(id)a17 sourceID:(id)a18 sourceBundleID:(id)a19 sourceItemID:(id)a20 sourceGroupID:(id)a21 calendarUserActivityDate:(id)a22 calendarUserActivityExternalID:(id)a23 calendarUserActivityEndDate:(id)a24 locationName:(id)a25 latitude:(id)a26 longitude:(id)a27 city:(id)a28 stateOrProvince:(id)a29 country:(id)a30 thoroughfare:(id)a31 fullyFormattedAddress:(id)a32 subThoroughfare:(id)a33 postalCode:(id)a34 phoneNumbers:(id)a35 displayName:(id)a36 URL:(id)a37;
- (BMAppLocationActivity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)calendarUserActivityDate;
- (NSDate)calendarUserActivityEndDate;
- (NSDate)expirationDate;
- (NSString)description;
- (NSURL)URL;
- (NSURL)itemRelatedContentURL;
- (id)_phoneNumbersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppLocationActivity

+ (id)columns
{
  v40[35] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"beginningOfActivity" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentDescription" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expirationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEligibleForPrediction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPubliclyIndexable" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedContentURL" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:4];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortcutAvailability" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedInvocationPhrase" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityRequiredString" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityUUID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceItemID" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceGroupID" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityDate" dataType:3 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:1];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityExternalID" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityEndDate" dataType:3 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:1];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationName" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"latitude" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"longitude" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:0 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"city" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateOrProvince" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"country" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"thoroughfare" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullyFormattedAddress" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subThoroughfare" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"postalCode" dataType:2 requestOnly:0 fieldNumber:32 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"phoneNumbers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_40388];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayName" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"URL" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:4];
  v40[0] = v39;
  v40[1] = v38;
  v40[2] = v37;
  v40[3] = v36;
  v40[4] = v35;
  v40[5] = v34;
  v40[6] = v33;
  v40[7] = v32;
  v40[8] = v31;
  v40[9] = v30;
  v40[10] = v29;
  v40[11] = v28;
  v40[12] = v27;
  v40[13] = v26;
  v40[14] = v25;
  v40[15] = v24;
  v40[16] = v23;
  v40[17] = v22;
  v40[18] = v21;
  v40[19] = v20;
  v40[20] = v19;
  v40[21] = v18;
  v40[22] = v17;
  v40[23] = v16;
  v40[24] = v15;
  v40[25] = v2;
  v40[26] = v14;
  v40[27] = v3;
  v40[28] = v13;
  v40[29] = v4;
  v40[30] = v5;
  v40[31] = v6;
  v40[32] = v7;
  v40[33] = v12;
  v40[34] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:35];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppLocationActivity *)self bundleID];
    v7 = [v5 bundleID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppLocationActivity *)self bundleID];
      v10 = [v5 bundleID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_143;
      }
    }

    v13 = [(BMAppLocationActivity *)self activityType];
    v14 = [v5 activityType];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppLocationActivity *)self activityType];
      v17 = [v5 activityType];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasBeginningOfActivity](self, "hasBeginningOfActivity") || [v5 hasBeginningOfActivity])
    {
      if (![(BMAppLocationActivity *)self hasBeginningOfActivity])
      {
        goto LABEL_143;
      }

      if (![v5 hasBeginningOfActivity])
      {
        goto LABEL_143;
      }

      v19 = [(BMAppLocationActivity *)self beginningOfActivity];
      if (v19 != [v5 beginningOfActivity])
      {
        goto LABEL_143;
      }
    }

    v20 = [(BMAppLocationActivity *)self contentDescription];
    v21 = [v5 contentDescription];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMAppLocationActivity *)self contentDescription];
      v24 = [v5 contentDescription];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_143;
      }
    }

    v26 = [(BMAppLocationActivity *)self expirationDate];
    v27 = [v5 expirationDate];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMAppLocationActivity *)self expirationDate];
      v30 = [v5 expirationDate];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasIsEligibleForPrediction](self, "hasIsEligibleForPrediction") || [v5 hasIsEligibleForPrediction])
    {
      if (![(BMAppLocationActivity *)self hasIsEligibleForPrediction])
      {
        goto LABEL_143;
      }

      if (![v5 hasIsEligibleForPrediction])
      {
        goto LABEL_143;
      }

      v32 = [(BMAppLocationActivity *)self isEligibleForPrediction];
      if (v32 != [v5 isEligibleForPrediction])
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasIsPubliclyIndexable](self, "hasIsPubliclyIndexable") || [v5 hasIsPubliclyIndexable])
    {
      if (![(BMAppLocationActivity *)self hasIsPubliclyIndexable])
      {
        goto LABEL_143;
      }

      if (![v5 hasIsPubliclyIndexable])
      {
        goto LABEL_143;
      }

      v33 = [(BMAppLocationActivity *)self isPubliclyIndexable];
      if (v33 != [v5 isPubliclyIndexable])
      {
        goto LABEL_143;
      }
    }

    v34 = [(BMAppLocationActivity *)self itemIdentifier];
    v35 = [v5 itemIdentifier];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(BMAppLocationActivity *)self itemIdentifier];
      v38 = [v5 itemIdentifier];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_143;
      }
    }

    v40 = [(BMAppLocationActivity *)self itemRelatedContentURL];
    v41 = [v5 itemRelatedContentURL];
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      v43 = [(BMAppLocationActivity *)self itemRelatedContentURL];
      v44 = [v5 itemRelatedContentURL];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_143;
      }
    }

    v46 = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
    v47 = [v5 itemRelatedUniqueIdentifier];
    v48 = v47;
    if (v46 == v47)
    {
    }

    else
    {
      v49 = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
      v50 = [v5 itemRelatedUniqueIdentifier];
      v51 = [v49 isEqual:v50];

      if (!v51)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasShortcutAvailability](self, "hasShortcutAvailability") || [v5 hasShortcutAvailability])
    {
      if (![(BMAppLocationActivity *)self hasShortcutAvailability])
      {
        goto LABEL_143;
      }

      if (![v5 hasShortcutAvailability])
      {
        goto LABEL_143;
      }

      v52 = [(BMAppLocationActivity *)self shortcutAvailability];
      if (v52 != [v5 shortcutAvailability])
      {
        goto LABEL_143;
      }
    }

    v53 = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
    v54 = [v5 suggestedInvocationPhrase];
    v55 = v54;
    if (v53 == v54)
    {
    }

    else
    {
      v56 = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
      v57 = [v5 suggestedInvocationPhrase];
      v58 = [v56 isEqual:v57];

      if (!v58)
      {
        goto LABEL_143;
      }
    }

    v59 = [(BMAppLocationActivity *)self title];
    v60 = [v5 title];
    v61 = v60;
    if (v59 == v60)
    {
    }

    else
    {
      v62 = [(BMAppLocationActivity *)self title];
      v63 = [v5 title];
      v64 = [v62 isEqual:v63];

      if (!v64)
      {
        goto LABEL_143;
      }
    }

    v65 = [(BMAppLocationActivity *)self userActivityRequiredString];
    v66 = [v5 userActivityRequiredString];
    v67 = v66;
    if (v65 == v66)
    {
    }

    else
    {
      v68 = [(BMAppLocationActivity *)self userActivityRequiredString];
      v69 = [v5 userActivityRequiredString];
      v70 = [v68 isEqual:v69];

      if (!v70)
      {
        goto LABEL_143;
      }
    }

    v71 = [(BMAppLocationActivity *)self userActivityUUID];
    v72 = [v5 userActivityUUID];
    v73 = v72;
    if (v71 == v72)
    {
    }

    else
    {
      v74 = [(BMAppLocationActivity *)self userActivityUUID];
      v75 = [v5 userActivityUUID];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_143;
      }
    }

    v77 = [(BMAppLocationActivity *)self sourceID];
    v78 = [v5 sourceID];
    v79 = v78;
    if (v77 == v78)
    {
    }

    else
    {
      v80 = [(BMAppLocationActivity *)self sourceID];
      v81 = [v5 sourceID];
      v82 = [v80 isEqual:v81];

      if (!v82)
      {
        goto LABEL_143;
      }
    }

    v83 = [(BMAppLocationActivity *)self sourceBundleID];
    v84 = [v5 sourceBundleID];
    v85 = v84;
    if (v83 == v84)
    {
    }

    else
    {
      v86 = [(BMAppLocationActivity *)self sourceBundleID];
      v87 = [v5 sourceBundleID];
      v88 = [v86 isEqual:v87];

      if (!v88)
      {
        goto LABEL_143;
      }
    }

    v89 = [(BMAppLocationActivity *)self sourceItemID];
    v90 = [v5 sourceItemID];
    v91 = v90;
    if (v89 == v90)
    {
    }

    else
    {
      v92 = [(BMAppLocationActivity *)self sourceItemID];
      v93 = [v5 sourceItemID];
      v94 = [v92 isEqual:v93];

      if (!v94)
      {
        goto LABEL_143;
      }
    }

    v95 = [(BMAppLocationActivity *)self sourceGroupID];
    v96 = [v5 sourceGroupID];
    v97 = v96;
    if (v95 == v96)
    {
    }

    else
    {
      v98 = [(BMAppLocationActivity *)self sourceGroupID];
      v99 = [v5 sourceGroupID];
      v100 = [v98 isEqual:v99];

      if (!v100)
      {
        goto LABEL_143;
      }
    }

    v101 = [(BMAppLocationActivity *)self calendarUserActivityDate];
    v102 = [v5 calendarUserActivityDate];
    v103 = v102;
    if (v101 == v102)
    {
    }

    else
    {
      v104 = [(BMAppLocationActivity *)self calendarUserActivityDate];
      v105 = [v5 calendarUserActivityDate];
      v106 = [v104 isEqual:v105];

      if (!v106)
      {
        goto LABEL_143;
      }
    }

    v107 = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
    v108 = [v5 calendarUserActivityExternalID];
    v109 = v108;
    if (v107 == v108)
    {
    }

    else
    {
      v110 = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
      v111 = [v5 calendarUserActivityExternalID];
      v112 = [v110 isEqual:v111];

      if (!v112)
      {
        goto LABEL_143;
      }
    }

    v113 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
    v114 = [v5 calendarUserActivityEndDate];
    v115 = v114;
    if (v113 == v114)
    {
    }

    else
    {
      v116 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
      v117 = [v5 calendarUserActivityEndDate];
      v118 = [v116 isEqual:v117];

      if (!v118)
      {
        goto LABEL_143;
      }
    }

    v119 = [(BMAppLocationActivity *)self locationName];
    v120 = [v5 locationName];
    v121 = v120;
    if (v119 == v120)
    {
    }

    else
    {
      v122 = [(BMAppLocationActivity *)self locationName];
      v123 = [v5 locationName];
      v124 = [v122 isEqual:v123];

      if (!v124)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasLatitude](self, "hasLatitude") || [v5 hasLatitude])
    {
      if (![(BMAppLocationActivity *)self hasLatitude])
      {
        goto LABEL_143;
      }

      if (![v5 hasLatitude])
      {
        goto LABEL_143;
      }

      [(BMAppLocationActivity *)self latitude];
      v126 = v125;
      [v5 latitude];
      if (v126 != v127)
      {
        goto LABEL_143;
      }
    }

    if (-[BMAppLocationActivity hasLongitude](self, "hasLongitude") || [v5 hasLongitude])
    {
      if (![(BMAppLocationActivity *)self hasLongitude])
      {
        goto LABEL_143;
      }

      if (![v5 hasLongitude])
      {
        goto LABEL_143;
      }

      [(BMAppLocationActivity *)self longitude];
      v129 = v128;
      [v5 longitude];
      if (v129 != v130)
      {
        goto LABEL_143;
      }
    }

    v131 = [(BMAppLocationActivity *)self city];
    v132 = [v5 city];
    v133 = v132;
    if (v131 == v132)
    {
    }

    else
    {
      v134 = [(BMAppLocationActivity *)self city];
      v135 = [v5 city];
      v136 = [v134 isEqual:v135];

      if (!v136)
      {
        goto LABEL_143;
      }
    }

    v137 = [(BMAppLocationActivity *)self stateOrProvince];
    v138 = [v5 stateOrProvince];
    v139 = v138;
    if (v137 == v138)
    {
    }

    else
    {
      v140 = [(BMAppLocationActivity *)self stateOrProvince];
      v141 = [v5 stateOrProvince];
      v142 = [v140 isEqual:v141];

      if (!v142)
      {
        goto LABEL_143;
      }
    }

    v143 = [(BMAppLocationActivity *)self country];
    v144 = [v5 country];
    v145 = v144;
    if (v143 == v144)
    {
    }

    else
    {
      v146 = [(BMAppLocationActivity *)self country];
      v147 = [v5 country];
      v148 = [v146 isEqual:v147];

      if (!v148)
      {
        goto LABEL_143;
      }
    }

    v149 = [(BMAppLocationActivity *)self thoroughfare];
    v150 = [v5 thoroughfare];
    v151 = v150;
    if (v149 == v150)
    {
    }

    else
    {
      v152 = [(BMAppLocationActivity *)self thoroughfare];
      v153 = [v5 thoroughfare];
      v154 = [v152 isEqual:v153];

      if (!v154)
      {
        goto LABEL_143;
      }
    }

    v155 = [(BMAppLocationActivity *)self fullyFormattedAddress];
    v156 = [v5 fullyFormattedAddress];
    v157 = v156;
    if (v155 == v156)
    {
    }

    else
    {
      v158 = [(BMAppLocationActivity *)self fullyFormattedAddress];
      v159 = [v5 fullyFormattedAddress];
      v160 = [v158 isEqual:v159];

      if (!v160)
      {
        goto LABEL_143;
      }
    }

    v161 = [(BMAppLocationActivity *)self subThoroughfare];
    v162 = [v5 subThoroughfare];
    v163 = v162;
    if (v161 == v162)
    {
    }

    else
    {
      v164 = [(BMAppLocationActivity *)self subThoroughfare];
      v165 = [v5 subThoroughfare];
      v166 = [v164 isEqual:v165];

      if (!v166)
      {
        goto LABEL_143;
      }
    }

    v167 = [(BMAppLocationActivity *)self postalCode];
    v168 = [v5 postalCode];
    v169 = v168;
    if (v167 == v168)
    {
    }

    else
    {
      v170 = [(BMAppLocationActivity *)self postalCode];
      v171 = [v5 postalCode];
      v172 = [v170 isEqual:v171];

      if (!v172)
      {
        goto LABEL_143;
      }
    }

    v173 = [(BMAppLocationActivity *)self phoneNumbers];
    v174 = [v5 phoneNumbers];
    v175 = v174;
    if (v173 == v174)
    {
    }

    else
    {
      v176 = [(BMAppLocationActivity *)self phoneNumbers];
      v177 = [v5 phoneNumbers];
      v178 = [v176 isEqual:v177];

      if (!v178)
      {
        goto LABEL_143;
      }
    }

    v179 = [(BMAppLocationActivity *)self displayName];
    v180 = [v5 displayName];
    v181 = v180;
    if (v179 == v180)
    {
    }

    else
    {
      v182 = [(BMAppLocationActivity *)self displayName];
      v183 = [v5 displayName];
      v184 = [v182 isEqual:v183];

      if (!v184)
      {
LABEL_143:
        v12 = 0;
LABEL_144:

        goto LABEL_145;
      }
    }

    v186 = [(BMAppLocationActivity *)self URL];
    v187 = [v5 URL];
    if (v186 == v187)
    {
      v12 = 1;
    }

    else
    {
      v188 = [(BMAppLocationActivity *)self URL];
      v189 = [v5 URL];
      v12 = [v188 isEqual:v189];
    }

    goto LABEL_144;
  }

  v12 = 0;
LABEL_145:

  return v12;
}

- (NSURL)URL
{
  raw_URL = self->_raw_URL;
  if (raw_URL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_URL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)calendarUserActivityEndDate
{
  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_calendarUserActivityEndDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)calendarUserActivityDate
{
  if (self->_hasRaw_calendarUserActivityDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_calendarUserActivityDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)itemRelatedContentURL
{
  raw_itemRelatedContentURL = self->_raw_itemRelatedContentURL;
  if (raw_itemRelatedContentURL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_itemRelatedContentURL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)expirationDate
{
  if (self->_hasRaw_expirationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_expirationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v126[35] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppLocationActivity *)self bundleID];
  v4 = [(BMAppLocationActivity *)self activityType];
  if ([(BMAppLocationActivity *)self hasBeginningOfActivity])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity beginningOfActivity](self, "beginningOfActivity")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMAppLocationActivity *)self contentDescription];
  v7 = [(BMAppLocationActivity *)self expirationDate];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMAppLocationActivity *)self expirationDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMAppLocationActivity *)self hasIsEligibleForPrediction])
  {
    v124 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  }

  else
  {
    v124 = 0;
  }

  if ([(BMAppLocationActivity *)self hasIsPubliclyIndexable])
  {
    v123 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  }

  else
  {
    v123 = 0;
  }

  v122 = [(BMAppLocationActivity *)self itemIdentifier];
  v11 = [(BMAppLocationActivity *)self itemRelatedContentURL];
  v121 = [v11 absoluteString];

  v120 = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
  if ([(BMAppLocationActivity *)self hasShortcutAvailability])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppLocationActivity shortcutAvailability](self, "shortcutAvailability")}];
  }

  else
  {
    v119 = 0;
  }

  v118 = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
  v117 = [(BMAppLocationActivity *)self title];
  v116 = [(BMAppLocationActivity *)self userActivityRequiredString];
  v115 = [(BMAppLocationActivity *)self userActivityUUID];
  v114 = [(BMAppLocationActivity *)self sourceID];
  v113 = [(BMAppLocationActivity *)self sourceBundleID];
  v112 = [(BMAppLocationActivity *)self sourceItemID];
  v111 = [(BMAppLocationActivity *)self sourceGroupID];
  v12 = [(BMAppLocationActivity *)self calendarUserActivityDate];
  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [(BMAppLocationActivity *)self calendarUserActivityDate];
    [v14 timeIntervalSinceReferenceDate];
    v110 = [v13 numberWithDouble:?];
  }

  else
  {
    v110 = 0;
  }

  v109 = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
  v15 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
  if (v15)
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
    [v17 timeIntervalSinceReferenceDate];
    v108 = [v16 numberWithDouble:?];
  }

  else
  {
    v108 = 0;
  }

  v107 = [(BMAppLocationActivity *)self locationName];
  if (![(BMAppLocationActivity *)self hasLatitude]|| ([(BMAppLocationActivity *)self latitude], fabs(v18) == INFINITY))
  {
    v106 = 0;
  }

  else
  {
    [(BMAppLocationActivity *)self latitude];
    v19 = MEMORY[0x1E696AD98];
    [(BMAppLocationActivity *)self latitude];
    v106 = [v19 numberWithDouble:?];
  }

  if (![(BMAppLocationActivity *)self hasLongitude]|| ([(BMAppLocationActivity *)self longitude], fabs(v20) == INFINITY))
  {
    v105 = 0;
  }

  else
  {
    [(BMAppLocationActivity *)self longitude];
    v21 = MEMORY[0x1E696AD98];
    [(BMAppLocationActivity *)self longitude];
    v105 = [v21 numberWithDouble:?];
  }

  v104 = [(BMAppLocationActivity *)self city];
  v103 = [(BMAppLocationActivity *)self stateOrProvince];
  v102 = [(BMAppLocationActivity *)self country];
  v101 = [(BMAppLocationActivity *)self thoroughfare];
  v100 = [(BMAppLocationActivity *)self fullyFormattedAddress];
  v99 = [(BMAppLocationActivity *)self subThoroughfare];
  v98 = [(BMAppLocationActivity *)self postalCode];
  v97 = [(BMAppLocationActivity *)self _phoneNumbersJSONArray];
  v96 = [(BMAppLocationActivity *)self displayName];
  v22 = [(BMAppLocationActivity *)self URL];
  v95 = [v22 absoluteString];

  v125[0] = @"bundleID";
  v23 = v3;
  if (!v3)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = v23;
  v126[0] = v23;
  v125[1] = @"activityType";
  v24 = v4;
  if (!v4)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = v24;
  v126[1] = v24;
  v125[2] = @"beginningOfActivity";
  v25 = v5;
  if (!v5)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v25;
  v126[2] = v25;
  v125[3] = @"contentDescription";
  v26 = v6;
  if (!v6)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v26;
  v126[3] = v26;
  v125[4] = @"expirationDate";
  v27 = v10;
  if (!v10)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v27;
  v126[4] = v27;
  v125[5] = @"isEligibleForPrediction";
  v28 = v124;
  if (!v124)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v126[5] = v28;
  v125[6] = @"isPubliclyIndexable";
  v29 = v123;
  if (!v123)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v126[6] = v29;
  v125[7] = @"itemIdentifier";
  v30 = v122;
  if (!v122)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v126[7] = v30;
  v125[8] = @"itemRelatedContentURL";
  v31 = v121;
  if (!v121)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v126[8] = v31;
  v125[9] = @"itemRelatedUniqueIdentifier";
  v32 = v120;
  if (!v120)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = v32;
  v126[9] = v32;
  v125[10] = @"shortcutAvailability";
  v33 = v119;
  if (!v119)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = v33;
  v126[10] = v33;
  v125[11] = @"suggestedInvocationPhrase";
  v34 = v118;
  if (!v118)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v34;
  v126[11] = v34;
  v125[12] = @"title";
  v35 = v117;
  if (!v117)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v35;
  v126[12] = v35;
  v125[13] = @"userActivityRequiredString";
  v36 = v116;
  if (!v116)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v6;
  v88 = v36;
  v126[13] = v36;
  v125[14] = @"userActivityUUID";
  v38 = v115;
  if (!v115)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v38;
  v126[14] = v38;
  v125[15] = @"sourceID";
  v40 = v114;
  if (!v114)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v40;
  v126[15] = v40;
  v125[16] = @"sourceBundleID";
  v41 = v113;
  if (!v113)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v41;
  v126[16] = v41;
  v125[17] = @"sourceItemID";
  v42 = v112;
  if (!v112)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v42;
  v126[17] = v42;
  v125[18] = @"sourceGroupID";
  v43 = v111;
  if (!v111)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v43;
  v126[18] = v43;
  v125[19] = @"calendarUserActivityDate";
  v44 = v110;
  if (!v110)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v44;
  v126[19] = v44;
  v125[20] = @"calendarUserActivityExternalID";
  v45 = v109;
  if (!v109)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v45;
  v126[20] = v45;
  v125[21] = @"calendarUserActivityEndDate";
  v46 = v108;
  if (!v108)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v46;
  v126[21] = v46;
  v125[22] = @"locationName";
  v47 = v107;
  if (!v107)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v47;
  v126[22] = v47;
  v125[23] = @"latitude";
  v48 = v106;
  if (!v106)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = v4;
  v68 = v48;
  v126[23] = v48;
  v125[24] = @"longitude";
  v49 = v105;
  if (!v105)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v49;
  v126[24] = v49;
  v125[25] = @"city";
  v50 = v104;
  if (!v104)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v50;
  v126[25] = v50;
  v125[26] = @"stateOrProvince";
  v51 = v103;
  if (!v103)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = v10;
  v65 = v51;
  v126[26] = v51;
  v125[27] = @"country";
  v52 = v102;
  if (!v102)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v3;
  v63 = v52;
  v126[27] = v52;
  v125[28] = @"thoroughfare";
  v53 = v101;
  if (!v101)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v29;
  v126[28] = v53;
  v125[29] = @"fullyFormattedAddress";
  v54 = v100;
  if (!v100)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v5;
  v126[29] = v54;
  v125[30] = @"subThoroughfare";
  v55 = v99;
  if (!v99)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v30;
  v126[30] = v55;
  v125[31] = @"postalCode";
  v56 = v98;
  if (!v98)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v126[31] = v56;
  v125[32] = @"phoneNumbers";
  v57 = v97;
  if (!v97)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v28;
  v126[32] = v57;
  v125[33] = @"displayName";
  v58 = v96;
  if (!v96)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v126[33] = v58;
  v125[34] = @"URL";
  v59 = v95;
  if (!v95)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v126[34] = v59;
  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:{35, v63}];
  if (!v95)
  {
  }

  v60 = v39;
  if (!v96)
  {

    v60 = v39;
  }

  if (!v97)
  {

    v60 = v39;
  }

  if (!v98)
  {

    v60 = v39;
  }

  if (!v99)
  {

    v60 = v39;
  }

  if (!v100)
  {

    v60 = v39;
  }

  if (!v101)
  {

    v60 = v39;
  }

  if (!v102)
  {

    v60 = v39;
  }

  if (!v103)
  {

    v60 = v39;
  }

  if (!v104)
  {

    v60 = v39;
  }

  if (!v105)
  {

    v60 = v39;
  }

  if (!v106)
  {

    v60 = v39;
  }

  if (!v107)
  {

    v60 = v39;
  }

  if (!v108)
  {

    v60 = v39;
  }

  if (!v109)
  {

    v60 = v39;
  }

  if (!v110)
  {

    v60 = v39;
  }

  if (!v111)
  {

    v60 = v39;
  }

  if (!v112)
  {

    v60 = v39;
  }

  if (!v113)
  {

    v60 = v39;
  }

  if (!v114)
  {

    v60 = v39;
  }

  if (!v115)
  {
  }

  if (!v116)
  {
  }

  if (!v117)
  {
  }

  if (!v118)
  {
  }

  if (!v119)
  {
  }

  if (!v120)
  {
  }

  if (!v121)
  {
  }

  if (!v122)
  {
  }

  if (!v123)
  {
  }

  if (v124)
  {
    if (v92)
    {
      goto LABEL_160;
    }
  }

  else
  {

    if (v92)
    {
LABEL_160:
      if (v37)
      {
        goto LABEL_161;
      }

      goto LABEL_169;
    }
  }

  if (v37)
  {
LABEL_161:
    if (v87)
    {
      goto LABEL_162;
    }

    goto LABEL_170;
  }

LABEL_169:

  if (v87)
  {
LABEL_162:
    if (v93)
    {
      goto LABEL_163;
    }

LABEL_171:

    if (v94)
    {
      goto LABEL_164;
    }

    goto LABEL_172;
  }

LABEL_170:

  if (!v93)
  {
    goto LABEL_171;
  }

LABEL_163:
  if (v94)
  {
    goto LABEL_164;
  }

LABEL_172:

LABEL_164:
  v61 = *MEMORY[0x1E69E9840];

  return v86;
}

- (id)_phoneNumbersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMAppLocationActivity *)self phoneNumbers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppLocationActivity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v476[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v391 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v391 = v7;
LABEL_4:
    v393 = [v6 objectForKeyedSubscript:@"activityType"];
    if (!v393 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v390 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v390 = v393;
LABEL_7:
      v392 = [v6 objectForKeyedSubscript:@"beginningOfActivity"];
      if (!v392 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v387 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v387 = v392;
LABEL_10:
        v8 = [v6 objectForKeyedSubscript:@"contentDescription"];
        v389 = v8;
        if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v388 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v388 = v9;
LABEL_13:
          v10 = [v6 objectForKeyedSubscript:@"expirationDate"];
          v386 = v10;
          if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v385 = 0;
            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = objc_alloc(MEMORY[0x1E695DF00]);
            [v12 doubleValue];
            v385 = [v13 initWithTimeIntervalSince1970:?];
LABEL_37:

            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v33 = v11;
            v385 = [v12 dateFromString:v33];

            goto LABEL_37;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v385 = v11;
LABEL_38:
            v34 = [v6 objectForKeyedSubscript:@"isEligibleForPrediction"];
            v384 = v34;
            if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v383 = 0;
              goto LABEL_41;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v383 = v35;
LABEL_41:
              v36 = [v6 objectForKeyedSubscript:@"isPubliclyIndexable"];
              v382 = v36;
              if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v381 = 0;
                goto LABEL_44;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v381 = v37;
LABEL_44:
                v38 = [v6 objectForKeyedSubscript:@"itemIdentifier"];
                v380 = v38;
                v377 = a4;
                if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v39 = 0;
                  goto LABEL_47;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = v38;
LABEL_47:
                  v40 = [v6 objectForKeyedSubscript:@"itemRelatedContentURL"];
                  v379 = v39;
                  v378 = v40;
                  if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v42 = 0;
LABEL_50:
                    v43 = [v6 objectForKeyedSubscript:@"itemRelatedUniqueIdentifier"];
                    v375 = v42;
                    v374 = v43;
                    if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!v377)
                        {
                          v373 = 0;
                          v19 = 0;
                          v18 = v391;
                          v16 = v390;
                          a4 = v387;
                          v38 = v380;
LABEL_356:

                          goto LABEL_357;
                        }

                        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v86 = *MEMORY[0x1E698F240];
                        v455 = *MEMORY[0x1E696A578];
                        v87 = self;
                        v88 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v296 = objc_opt_class();
                        v89 = v88;
                        self = v87;
                        v371 = [v89 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v296, @"itemRelatedUniqueIdentifier"];
                        v456 = v371;
                        v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v456 forKeys:&v455 count:1];
                        v373 = 0;
                        v19 = 0;
                        *v377 = [v85 initWithDomain:v86 code:2 userInfo:?];
                        v18 = v391;
                        v16 = v390;
                        a4 = v387;
                        v38 = v380;
                        goto LABEL_355;
                      }

                      v373 = v44;
                      v38 = v380;
                    }

                    else
                    {
                      v373 = 0;
                    }

                    v45 = [v6 objectForKeyedSubscript:@"shortcutAvailability"];
                    v372 = v45;
                    if (!v45 || (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v371 = 0;
                      goto LABEL_56;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v371 = v46;
LABEL_56:
                      v47 = [v6 objectForKeyedSubscript:@"suggestedInvocationPhrase"];
                      v370 = v47;
                      if (!v47 || (v48 = v47, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v369 = 0;
                        goto LABEL_59;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v369 = v48;
                        v38 = v380;
LABEL_59:
                        v49 = [v6 objectForKeyedSubscript:@"title"];
                        v368 = v49;
                        if (!v49 || (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v367 = 0;
                          goto LABEL_62;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v367 = v50;
                          v38 = v380;
LABEL_62:
                          v51 = [v6 objectForKeyedSubscript:@"userActivityRequiredString"];
                          v366 = v51;
                          if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v365 = 0;
                            goto LABEL_65;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v365 = v52;
                            v38 = v380;
LABEL_65:
                            v53 = [v6 objectForKeyedSubscript:@"userActivityUUID"];
                            v364 = v53;
                            if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v363 = 0;
                              goto LABEL_68;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v363 = v54;
                              v38 = v380;
LABEL_68:
                              v55 = [v6 objectForKeyedSubscript:@"sourceID"];
                              v362 = v55;
                              if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v361 = 0;
                                goto LABEL_71;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v361 = v56;
                                v38 = v380;
LABEL_71:
                                v57 = [v6 objectForKeyedSubscript:@"sourceBundleID"];
                                v360 = v57;
                                if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v359 = 0;
                                  goto LABEL_74;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v359 = v58;
                                  v38 = v380;
LABEL_74:
                                  v59 = [v6 objectForKeyedSubscript:@"sourceItemID"];
                                  v358 = v59;
                                  if (!v59 || (v60 = v59, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v357 = 0;
LABEL_77:
                                    v61 = [v6 objectForKeyedSubscript:@"sourceGroupID"];
                                    v356 = v61;
                                    if (!v61)
                                    {
                                      goto LABEL_145;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v61 = 0;
                                      goto LABEL_145;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v61 = v61;
                                      v38 = v380;
LABEL_145:
                                      v117 = [v6 objectForKeyedSubscript:@"calendarUserActivityDate"];
                                      v354 = v117;
                                      v355 = v61;
                                      if (!v117 || (v118 = v117, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v351 = 0;
                                        goto LABEL_148;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v138 = v118;
                                        v139 = objc_alloc(MEMORY[0x1E695DF00]);
                                        [v138 doubleValue];
                                        v351 = [v139 initWithTimeIntervalSinceReferenceDate:?];

                                        goto LABEL_148;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v163 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                        v164 = v118;
                                        v165 = v163;
                                        v166 = v164;
                                        v351 = [v165 dateFromString:v166];

LABEL_248:
                                        v38 = v380;
LABEL_148:
                                        v119 = [v6 objectForKeyedSubscript:@"calendarUserActivityExternalID"];
                                        v353 = v119;
                                        if (!v119 || (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v352 = 0;
                                          goto LABEL_151;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v352 = v120;
                                          v38 = v380;
LABEL_151:
                                          v121 = [v6 objectForKeyedSubscript:@"calendarUserActivityEndDate"];
                                          v350 = v121;
                                          if (!v121 || (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v349 = 0;
LABEL_154:
                                            v123 = [v6 objectForKeyedSubscript:@"locationName"];
                                            v348 = v123;
                                            if (v123 && (v124 = v123, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (!v377)
                                                {
                                                  v347 = 0;
                                                  v19 = 0;
                                                  v18 = v391;
                                                  v16 = v390;
                                                  a4 = v387;
                                                  v38 = v380;
                                                  v162 = v351;
                                                  goto LABEL_343;
                                                }

                                                v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v189 = *MEMORY[0x1E698F240];
                                                v429 = *MEMORY[0x1E696A578];
                                                v190 = self;
                                                v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v307 = objc_opt_class();
                                                v192 = v191;
                                                self = v190;
                                                v345 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v307, @"locationName"];
                                                v430 = v345;
                                                v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v430 forKeys:&v429 count:1];
                                                v347 = 0;
                                                v19 = 0;
                                                *v377 = [v188 initWithDomain:v189 code:2 userInfo:?];
                                                v18 = v391;
                                                v16 = v390;
                                                a4 = v387;
                                                v38 = v380;
                                                goto LABEL_288;
                                              }

                                              v347 = v124;
                                              v38 = v380;
                                            }

                                            else
                                            {
                                              v347 = 0;
                                            }

                                            v125 = [v6 objectForKeyedSubscript:@"latitude"];
                                            v346 = v125;
                                            if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v345 = 0;
                                              goto LABEL_160;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v345 = v126;
LABEL_160:
                                              v127 = [v6 objectForKeyedSubscript:@"longitude"];
                                              v344 = v127;
                                              if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v343 = 0;
                                                goto LABEL_163;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v343 = v128;
LABEL_163:
                                                v129 = [v6 objectForKeyedSubscript:@"city"];
                                                v342 = v129;
                                                if (!v129 || (v130 = v129, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v131 = 0;
LABEL_166:
                                                  v132 = [v6 objectForKeyedSubscript:@"stateOrProvince"];
                                                  v340 = v131;
                                                  if (!v132)
                                                  {
                                                    v336 = 0;
                                                    goto LABEL_213;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v336 = v132;
                                                    v132 = 0;
LABEL_213:
                                                    v174 = [v6 objectForKeyedSubscript:@"country"];
                                                    v339 = v132;
                                                    v337 = v174;
                                                    if (v174 && (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!v377)
                                                        {
                                                          v338 = 0;
                                                          v19 = 0;
                                                          v18 = v391;
                                                          v16 = v390;
                                                          a4 = v387;
                                                          v38 = v380;
                                                          v162 = v351;
                                                          v208 = v336;
                                                          goto LABEL_338;
                                                        }

                                                        v224 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v225 = *MEMORY[0x1E698F240];
                                                        v419 = *MEMORY[0x1E696A578];
                                                        v226 = self;
                                                        v227 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v312 = objc_opt_class();
                                                        v228 = v227;
                                                        self = v226;
                                                        v335 = [v228 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v312, @"country"];
                                                        v420 = v335;
                                                        v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v420 forKeys:&v419 count:1];
                                                        v338 = 0;
                                                        v19 = 0;
                                                        *v377 = [v224 initWithDomain:v225 code:2 userInfo:?];
                                                        goto LABEL_316;
                                                      }

                                                      v338 = v175;
                                                      v38 = v380;
                                                    }

                                                    else
                                                    {
                                                      v338 = 0;
                                                    }

                                                    v176 = [v6 objectForKeyedSubscript:@"thoroughfare"];
                                                    v334 = v176;
                                                    if (!v176 || (v177 = v176, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v335 = 0;
                                                      goto LABEL_219;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v335 = v177;
                                                      v38 = v380;
LABEL_219:
                                                      v178 = [v6 objectForKeyedSubscript:@"fullyFormattedAddress"];
                                                      v332 = v178;
                                                      if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v333 = 0;
                                                        goto LABEL_222;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v333 = v179;
                                                        v38 = v380;
LABEL_222:
                                                        v180 = [v6 objectForKeyedSubscript:@"subThoroughfare"];
                                                        v330 = v180;
                                                        if (!v180 || (v181 = v180, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v331 = 0;
                                                          goto LABEL_225;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v331 = v181;
                                                          v38 = v380;
LABEL_225:
                                                          v182 = [v6 objectForKeyedSubscript:@"postalCode"];
                                                          v328 = v182;
                                                          if (!v182 || (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v329 = 0;
                                                            goto LABEL_228;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v329 = v183;
                                                            v38 = v380;
LABEL_228:
                                                            v184 = [v6 objectForKeyedSubscript:@"phoneNumbers"];
                                                            v185 = [MEMORY[0x1E695DFB0] null];
                                                            v186 = [v184 isEqual:v185];

                                                            v162 = v351;
                                                            if (v186)
                                                            {
                                                              v325 = self;

                                                              v187 = 0;
                                                            }

                                                            else
                                                            {
                                                              v187 = v184;
                                                              if (v184)
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  obj = v184;
                                                                  if (!v377)
                                                                  {
                                                                    v19 = 0;
                                                                    v18 = v391;
                                                                    v16 = v390;
                                                                    a4 = v387;
                                                                    v208 = v336;
                                                                    goto LABEL_333;
                                                                  }

                                                                  v267 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v268 = *MEMORY[0x1E698F240];
                                                                  v409 = *MEMORY[0x1E696A578];
                                                                  v326 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"phoneNumbers"];
                                                                  v410 = v326;
                                                                  v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v410 forKeys:&v409 count:1];
                                                                  v270 = [v267 initWithDomain:v268 code:2 userInfo:v269];
                                                                  v19 = 0;
                                                                  *v377 = v270;
                                                                  v261 = v269;
                                                                  v18 = v391;
                                                                  v16 = v390;
                                                                  a4 = v387;
                                                                  goto LABEL_312;
                                                                }
                                                              }

                                                              v325 = self;
                                                            }

                                                            v209 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v187, "count")}];
                                                            v394 = 0u;
                                                            v395 = 0u;
                                                            v396 = 0u;
                                                            v397 = 0u;
                                                            obj = v187;
                                                            v210 = [obj countByEnumeratingWithState:&v394 objects:v408 count:16];
                                                            v326 = v209;
                                                            if (!v210)
                                                            {
                                                              goto LABEL_265;
                                                            }

                                                            v211 = v210;
                                                            v212 = *v395;
LABEL_258:
                                                            v213 = 0;
                                                            while (1)
                                                            {
                                                              if (*v395 != v212)
                                                              {
                                                                objc_enumerationMutation(obj);
                                                              }

                                                              v214 = *(*(&v394 + 1) + 8 * v213);
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                break;
                                                              }

                                                              objc_opt_class();
                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                              {
                                                                if (v377)
                                                                {
                                                                  v249 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v250 = *MEMORY[0x1E698F240];
                                                                  v404 = *MEMORY[0x1E696A578];
                                                                  v323 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumbers"];
                                                                  v405 = v323;
                                                                  v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
                                                                  v242 = v249;
                                                                  v243 = v250;
                                                                  goto LABEL_295;
                                                                }

                                                                goto LABEL_303;
                                                              }

                                                              v215 = v214;
                                                              [v209 addObject:v215];

                                                              if (v211 == ++v213)
                                                              {
                                                                v211 = [obj countByEnumeratingWithState:&v394 objects:v408 count:16];
                                                                v38 = v380;
                                                                if (v211)
                                                                {
                                                                  goto LABEL_258;
                                                                }

LABEL_265:

                                                                v216 = [v6 objectForKeyedSubscript:@"displayName"];
                                                                v323 = v216;
                                                                if (!v216)
                                                                {
                                                                  v324 = 0;
                                                                  self = v325;
                                                                  v218 = v379;
                                                                  goto LABEL_320;
                                                                }

                                                                v217 = v216;
                                                                objc_opt_class();
                                                                self = v325;
                                                                v218 = v379;
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v324 = 0;
                                                                  goto LABEL_320;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v324 = v217;
                                                                  v38 = v380;
LABEL_320:
                                                                  v271 = [v6 objectForKeyedSubscript:@"URL"];
                                                                  v322 = v271;
                                                                  if (v271)
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v271 = 0;
                                                                      goto LABEL_328;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v272 = v271;
                                                                      v273 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v272];
                                                                      if (v273)
                                                                      {
                                                                        v271 = v273;

                                                                        goto LABEL_328;
                                                                      }

                                                                      v286 = v272;
                                                                      v287 = self;
                                                                      if (v377)
                                                                      {
                                                                        v288 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v289 = *MEMORY[0x1E698F240];
                                                                        v400 = *MEMORY[0x1E696A578];
                                                                        v290 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"URL"];
                                                                        v401 = v290;
                                                                        v291 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
                                                                        *v377 = [v288 initWithDomain:v289 code:2 userInfo:v291];
                                                                      }

                                                                      v19 = 0;
                                                                      v322 = v286;
                                                                      self = v287;
LABEL_382:
                                                                      v18 = v391;
                                                                      v16 = v390;
                                                                      a4 = v387;
                                                                      v38 = v380;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (v377)
                                                                      {
                                                                        v281 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v282 = *MEMORY[0x1E698F240];
                                                                        v398 = *MEMORY[0x1E696A578];
                                                                        v283 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"URL"];
                                                                        v399 = v283;
                                                                        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
                                                                        v285 = v284 = self;
                                                                        *v377 = [v281 initWithDomain:v282 code:2 userInfo:v285];

                                                                        self = v284;
                                                                        v38 = v380;
                                                                      }

                                                                      v19 = 0;
                                                                      v18 = v391;
                                                                      v16 = v390;
LABEL_296:
                                                                      a4 = v387;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
LABEL_328:
                                                                    v321 = v209;
                                                                    v320 = v218;
                                                                    v18 = v391;
                                                                    v16 = v390;
                                                                    a4 = v387;
                                                                    self = [(BMAppLocationActivity *)self initWithBundleID:v391 activityType:v390 beginningOfActivity:v387 contentDescription:v388 expirationDate:v385 isEligibleForPrediction:v383 isPubliclyIndexable:v381 itemIdentifier:v320 itemRelatedContentURL:v375 itemRelatedUniqueIdentifier:v373 shortcutAvailability:v371 suggestedInvocationPhrase:v369 title:v367 userActivityRequiredString:v365 userActivityUUID:v363 sourceID:v361 sourceBundleID:v359 sourceItemID:v357 sourceGroupID:v355 calendarUserActivityDate:v351 calendarUserActivityExternalID:v352 calendarUserActivityEndDate:v349 locationName:v347 latitude:v345 longitude:v343 city:v340 stateOrProvince:v339 country:v338 thoroughfare:v335 fullyFormattedAddress:v333 subThoroughfare:v331 postalCode:v329 phoneNumbers:v321 displayName:v324 URL:v271];

                                                                    v19 = self;
                                                                  }

                                                                  v208 = v336;
                                                                }

                                                                else
                                                                {
                                                                  if (v377)
                                                                  {
                                                                    v276 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v277 = *MEMORY[0x1E698F240];
                                                                    v402 = *MEMORY[0x1E696A578];
                                                                    v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v319 = objc_opt_class();
                                                                    v279 = v278;
                                                                    self = v325;
                                                                    v322 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v319, @"displayName"];
                                                                    v403 = v322;
                                                                    v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
                                                                    *v377 = [v276 initWithDomain:v277 code:2 userInfo:v280];

                                                                    v324 = 0;
                                                                    v19 = 0;
                                                                    goto LABEL_382;
                                                                  }

                                                                  v324 = 0;
                                                                  v19 = 0;
                                                                  v18 = v391;
                                                                  v16 = v390;
                                                                  a4 = v387;
                                                                  v38 = v380;
                                                                  v208 = v336;
                                                                }

                                                                v261 = v324;
LABEL_331:

LABEL_333:
LABEL_334:

LABEL_335:
LABEL_336:

LABEL_337:
LABEL_338:

LABEL_339:
LABEL_340:

LABEL_341:
LABEL_342:

LABEL_343:
                                                                goto LABEL_344;
                                                              }
                                                            }

                                                            if (v377)
                                                            {
                                                              v239 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v240 = *MEMORY[0x1E698F240];
                                                              v406 = *MEMORY[0x1E696A578];
                                                              v323 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"phoneNumbers"];
                                                              v407 = v323;
                                                              v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
                                                              v242 = v239;
                                                              v243 = v240;
LABEL_295:
                                                              v322 = v241;
                                                              self = v325;
                                                              v18 = v391;
                                                              v16 = v390;
                                                              v38 = v380;
                                                              v19 = 0;
                                                              *v377 = [v242 initWithDomain:v243 code:2 userInfo:?];
                                                              v324 = obj;
                                                              goto LABEL_296;
                                                            }

LABEL_303:
                                                            v19 = 0;
                                                            v261 = obj;
                                                            self = v325;
                                                            v18 = v391;
                                                            v16 = v390;
                                                            a4 = v387;
                                                            v38 = v380;
LABEL_312:
                                                            v208 = v336;
                                                            goto LABEL_331;
                                                          }

                                                          if (v377)
                                                          {
                                                            v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v263 = *MEMORY[0x1E698F240];
                                                            v411 = *MEMORY[0x1E696A578];
                                                            v264 = self;
                                                            v265 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v318 = objc_opt_class();
                                                            v266 = v265;
                                                            self = v264;
                                                            obj = [v266 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v318, @"postalCode"];
                                                            v412 = obj;
                                                            v327 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v412 forKeys:&v411 count:1];
                                                            v329 = 0;
                                                            v19 = 0;
                                                            *v377 = [v262 initWithDomain:v263 code:2 userInfo:?];
                                                            v18 = v391;
                                                            v16 = v390;
                                                            a4 = v387;
                                                            v38 = v380;
                                                            v162 = v351;
                                                            v208 = v336;

                                                            goto LABEL_333;
                                                          }

                                                          v329 = 0;
                                                          v19 = 0;
LABEL_371:
                                                          v18 = v391;
                                                          v16 = v390;
                                                          a4 = v387;
                                                          v38 = v380;
                                                          v162 = v351;
                                                          v208 = v336;
                                                          goto LABEL_334;
                                                        }

                                                        if (v377)
                                                        {
                                                          v256 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v257 = *MEMORY[0x1E698F240];
                                                          v413 = *MEMORY[0x1E696A578];
                                                          v258 = self;
                                                          v259 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v317 = objc_opt_class();
                                                          v260 = v259;
                                                          self = v258;
                                                          v329 = [v260 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v317, @"subThoroughfare"];
                                                          v414 = v329;
                                                          v328 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v414 forKeys:&v413 count:1];
                                                          v331 = 0;
                                                          v19 = 0;
                                                          *v377 = [v256 initWithDomain:v257 code:2 userInfo:?];
                                                          goto LABEL_371;
                                                        }

                                                        v331 = 0;
                                                        v19 = 0;
LABEL_369:
                                                        v18 = v391;
                                                        v16 = v390;
                                                        a4 = v387;
                                                        v38 = v380;
                                                        v162 = v351;
                                                        v208 = v336;
                                                        goto LABEL_335;
                                                      }

                                                      if (v377)
                                                      {
                                                        v244 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v245 = *MEMORY[0x1E698F240];
                                                        v415 = *MEMORY[0x1E696A578];
                                                        v246 = self;
                                                        v247 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v315 = objc_opt_class();
                                                        v248 = v247;
                                                        self = v246;
                                                        v331 = [v248 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v315, @"fullyFormattedAddress"];
                                                        v416 = v331;
                                                        v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v416 forKeys:&v415 count:1];
                                                        v333 = 0;
                                                        v19 = 0;
                                                        *v377 = [v244 initWithDomain:v245 code:2 userInfo:?];
                                                        goto LABEL_369;
                                                      }

                                                      v333 = 0;
                                                      v19 = 0;
LABEL_324:
                                                      v18 = v391;
                                                      v16 = v390;
                                                      a4 = v387;
                                                      v38 = v380;
                                                      v162 = v351;
                                                      v208 = v336;
                                                      goto LABEL_336;
                                                    }

                                                    if (v377)
                                                    {
                                                      v229 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v230 = *MEMORY[0x1E698F240];
                                                      v417 = *MEMORY[0x1E696A578];
                                                      v231 = self;
                                                      v232 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v313 = objc_opt_class();
                                                      v233 = v232;
                                                      self = v231;
                                                      v333 = [v233 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v313, @"thoroughfare"];
                                                      v418 = v333;
                                                      v332 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v418 forKeys:&v417 count:1];
                                                      v335 = 0;
                                                      v19 = 0;
                                                      *v377 = [v229 initWithDomain:v230 code:2 userInfo:?];
                                                      goto LABEL_324;
                                                    }

                                                    v335 = 0;
                                                    v19 = 0;
LABEL_316:
                                                    v18 = v391;
                                                    v16 = v390;
                                                    a4 = v387;
                                                    v38 = v380;
                                                    v162 = v351;
                                                    v208 = v336;
                                                    goto LABEL_337;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v336 = v132;
                                                    v132 = v132;
                                                    v38 = v380;
                                                    goto LABEL_213;
                                                  }

                                                  v208 = v132;
                                                  if (v377)
                                                  {
                                                    v219 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v220 = *MEMORY[0x1E698F240];
                                                    v421 = *MEMORY[0x1E696A578];
                                                    v221 = self;
                                                    v222 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v311 = objc_opt_class();
                                                    v223 = v222;
                                                    self = v221;
                                                    v338 = [v223 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v311, @"stateOrProvince"];
                                                    v422 = v338;
                                                    v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v422 forKeys:&v421 count:1];
                                                    v339 = 0;
                                                    v19 = 0;
                                                    *v377 = [v219 initWithDomain:v220 code:2 userInfo:?];
                                                    v18 = v391;
                                                    v16 = v390;
                                                    a4 = v387;
                                                    v38 = v380;
                                                    v162 = v351;
                                                    goto LABEL_338;
                                                  }

                                                  v339 = 0;
                                                  v19 = 0;
LABEL_309:
                                                  v18 = v391;
                                                  v16 = v390;
                                                  a4 = v387;
                                                  v38 = v380;
                                                  v162 = v351;
                                                  goto LABEL_339;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v131 = v130;
                                                  v38 = v380;
                                                  goto LABEL_166;
                                                }

                                                if (v377)
                                                {
                                                  v203 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v204 = *MEMORY[0x1E698F240];
                                                  v423 = *MEMORY[0x1E696A578];
                                                  v205 = self;
                                                  v206 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v310 = objc_opt_class();
                                                  v207 = v206;
                                                  self = v205;
                                                  v339 = [v207 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v310, @"city"];
                                                  v424 = v339;
                                                  v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v424 forKeys:&v423 count:1];
                                                  v340 = 0;
                                                  v19 = 0;
                                                  *v377 = [v203 initWithDomain:v204 code:2 userInfo:v208];
                                                  goto LABEL_309;
                                                }

                                                v340 = 0;
                                                v19 = 0;
                                                v18 = v391;
                                                v16 = v390;
                                                a4 = v387;
                                                v38 = v380;
LABEL_305:
                                                v162 = v351;
                                                goto LABEL_340;
                                              }

                                              if (v377)
                                              {
                                                v198 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v199 = *MEMORY[0x1E698F240];
                                                v425 = *MEMORY[0x1E696A578];
                                                v200 = self;
                                                v201 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v309 = objc_opt_class();
                                                v202 = v201;
                                                self = v200;
                                                v38 = v380;
                                                v340 = [v202 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v309, @"longitude"];
                                                v426 = v340;
                                                v342 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
                                                v343 = 0;
                                                v19 = 0;
                                                *v377 = [v198 initWithDomain:v199 code:2 userInfo:?];
                                                v18 = v391;
                                                v16 = v390;
                                                a4 = v387;
                                                goto LABEL_305;
                                              }

                                              v343 = 0;
                                              v19 = 0;
LABEL_298:
                                              v18 = v391;
                                              v16 = v390;
                                              a4 = v387;
                                              v162 = v351;
                                              goto LABEL_341;
                                            }

                                            if (v377)
                                            {
                                              v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v194 = *MEMORY[0x1E698F240];
                                              v427 = *MEMORY[0x1E696A578];
                                              v195 = self;
                                              v196 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v308 = objc_opt_class();
                                              v197 = v196;
                                              self = v195;
                                              v38 = v380;
                                              v343 = [v197 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v308, @"latitude"];
                                              v428 = v343;
                                              v344 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v428 forKeys:&v427 count:1];
                                              v345 = 0;
                                              v19 = 0;
                                              *v377 = [v193 initWithDomain:v194 code:2 userInfo:?];
                                              goto LABEL_298;
                                            }

                                            v345 = 0;
                                            v19 = 0;
                                            v18 = v391;
                                            v16 = v390;
                                            a4 = v387;
LABEL_288:
                                            v162 = v351;
                                            goto LABEL_342;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v150 = v122;
                                            v151 = objc_alloc(MEMORY[0x1E695DF00]);
                                            [v150 doubleValue];
                                            v349 = [v151 initWithTimeIntervalSinceReferenceDate:?];

                                            goto LABEL_154;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v172 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                            v173 = v350;
                                            v349 = [v172 dateFromString:v173];

LABEL_272:
                                            v38 = v380;
                                            goto LABEL_154;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v349 = v122;
                                            goto LABEL_272;
                                          }

                                          v162 = v351;
                                          if (v377)
                                          {
                                            v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v252 = *MEMORY[0x1E698F240];
                                            v431 = *MEMORY[0x1E696A578];
                                            v253 = self;
                                            v254 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v316 = objc_opt_class();
                                            v255 = v254;
                                            self = v253;
                                            v347 = [v255 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v316, @"calendarUserActivityEndDate"];
                                            v432 = v347;
                                            v348 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v432 forKeys:&v431 count:1];
                                            v349 = 0;
                                            v19 = 0;
                                            *v377 = [v251 initWithDomain:v252 code:2 userInfo:?];
                                            v18 = v391;
                                            v16 = v390;
                                            a4 = v387;
                                            v38 = v380;
                                            goto LABEL_343;
                                          }

                                          v349 = 0;
                                          v19 = 0;
                                          v18 = v391;
                                          v16 = v390;
                                          a4 = v387;
                                          v38 = v380;
LABEL_344:

                                          goto LABEL_345;
                                        }

                                        if (v377)
                                        {
                                          v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v168 = *MEMORY[0x1E698F240];
                                          v433 = *MEMORY[0x1E696A578];
                                          v169 = self;
                                          v170 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v306 = objc_opt_class();
                                          v171 = v170;
                                          self = v169;
                                          v349 = [v171 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v306, @"calendarUserActivityExternalID"];
                                          v434 = v349;
                                          v350 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v434 forKeys:&v433 count:1];
                                          v352 = 0;
                                          v19 = 0;
                                          *v377 = [v167 initWithDomain:v168 code:2 userInfo:?];
                                          v18 = v391;
                                          v16 = v390;
                                          a4 = v387;
                                          v38 = v380;
                                          v162 = v351;
                                          goto LABEL_344;
                                        }

                                        v352 = 0;
                                        v19 = 0;
                                        v18 = v391;
                                        v16 = v390;
                                        a4 = v387;
                                        v38 = v380;
                                        v162 = v351;
LABEL_345:

                                        goto LABEL_346;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v351 = v118;
                                        goto LABEL_248;
                                      }

                                      if (v377)
                                      {
                                        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v235 = *MEMORY[0x1E698F240];
                                        v435 = *MEMORY[0x1E696A578];
                                        v236 = self;
                                        v237 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v314 = objc_opt_class();
                                        v238 = v237;
                                        self = v236;
                                        v352 = [v238 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v314, @"calendarUserActivityDate"];
                                        v436 = v352;
                                        v353 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v436 forKeys:&v435 count:1];
                                        v162 = 0;
                                        v19 = 0;
                                        *v377 = [v234 initWithDomain:v235 code:2 userInfo:?];
                                        v18 = v391;
                                        v16 = v390;
                                        a4 = v387;
                                        v38 = v380;
                                        goto LABEL_345;
                                      }

                                      v162 = 0;
                                      v19 = 0;
LABEL_194:
                                      v18 = v391;
                                      v16 = v390;
                                      a4 = v387;
                                      v38 = v380;
LABEL_346:

                                      goto LABEL_347;
                                    }

                                    if (v377)
                                    {
                                      v157 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v158 = *MEMORY[0x1E698F240];
                                      v437 = *MEMORY[0x1E696A578];
                                      v159 = self;
                                      v160 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v305 = objc_opt_class();
                                      v161 = v160;
                                      self = v159;
                                      v162 = [v161 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v305, @"sourceGroupID"];
                                      v438 = v162;
                                      v354 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v438 forKeys:&v437 count:1];
                                      v355 = 0;
                                      v19 = 0;
                                      *v377 = [v157 initWithDomain:v158 code:2 userInfo:?];
                                      goto LABEL_194;
                                    }

                                    v355 = 0;
                                    v19 = 0;
LABEL_269:
                                    v18 = v391;
                                    v16 = v390;
                                    a4 = v387;
                                    v38 = v380;
LABEL_347:

                                    goto LABEL_348;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v357 = v60;
                                    v38 = v380;
                                    goto LABEL_77;
                                  }

                                  if (v377)
                                  {
                                    v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v153 = *MEMORY[0x1E698F240];
                                    v439 = *MEMORY[0x1E696A578];
                                    v154 = self;
                                    v155 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v304 = objc_opt_class();
                                    v156 = v155;
                                    self = v154;
                                    v355 = [v156 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v304, @"sourceItemID"];
                                    v440 = v355;
                                    v356 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v440 forKeys:&v439 count:1];
                                    v357 = 0;
                                    v19 = 0;
                                    *v377 = [v152 initWithDomain:v153 code:2 userInfo:?];
                                    goto LABEL_269;
                                  }

                                  v357 = 0;
                                  v19 = 0;
LABEL_245:
                                  v18 = v391;
                                  v16 = v390;
                                  a4 = v387;
                                  v38 = v380;
LABEL_348:

                                  goto LABEL_349;
                                }

                                if (v377)
                                {
                                  v145 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v146 = *MEMORY[0x1E698F240];
                                  v441 = *MEMORY[0x1E696A578];
                                  v147 = self;
                                  v148 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v303 = objc_opt_class();
                                  v149 = v148;
                                  self = v147;
                                  v357 = [v149 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v303, @"sourceBundleID"];
                                  v442 = v357;
                                  v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v442 forKeys:&v441 count:1];
                                  v359 = 0;
                                  v19 = 0;
                                  *v377 = [v145 initWithDomain:v146 code:2 userInfo:?];
                                  goto LABEL_245;
                                }

                                v359 = 0;
                                v19 = 0;
LABEL_239:
                                v18 = v391;
                                v16 = v390;
                                a4 = v387;
                                v38 = v380;
LABEL_349:

                                goto LABEL_350;
                              }

                              if (v377)
                              {
                                v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v141 = *MEMORY[0x1E698F240];
                                v443 = *MEMORY[0x1E696A578];
                                v142 = self;
                                v143 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v302 = objc_opt_class();
                                v144 = v143;
                                self = v142;
                                v359 = [v144 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v302, @"sourceID"];
                                v444 = v359;
                                v360 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v444 forKeys:&v443 count:1];
                                v361 = 0;
                                v19 = 0;
                                *v377 = [v140 initWithDomain:v141 code:2 userInfo:?];
                                goto LABEL_239;
                              }

                              v361 = 0;
                              v19 = 0;
LABEL_233:
                              v18 = v391;
                              v16 = v390;
                              a4 = v387;
                              v38 = v380;
LABEL_350:

                              goto LABEL_351;
                            }

                            if (v377)
                            {
                              v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v134 = *MEMORY[0x1E698F240];
                              v445 = *MEMORY[0x1E696A578];
                              v135 = self;
                              v136 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v301 = objc_opt_class();
                              v137 = v136;
                              self = v135;
                              v361 = [v137 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v301, @"userActivityUUID"];
                              v446 = v361;
                              v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v446 forKeys:&v445 count:1];
                              v363 = 0;
                              v19 = 0;
                              *v377 = [v133 initWithDomain:v134 code:2 userInfo:?];
                              goto LABEL_233;
                            }

                            v363 = 0;
                            v19 = 0;
LABEL_208:
                            v18 = v391;
                            v16 = v390;
                            a4 = v387;
                            v38 = v380;
LABEL_351:

                            goto LABEL_352;
                          }

                          if (v377)
                          {
                            v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v109 = *MEMORY[0x1E698F240];
                            v447 = *MEMORY[0x1E696A578];
                            v110 = self;
                            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v300 = objc_opt_class();
                            v112 = v111;
                            self = v110;
                            v363 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v300, @"userActivityRequiredString"];
                            v448 = v363;
                            v364 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v448 forKeys:&v447 count:1];
                            v365 = 0;
                            v19 = 0;
                            *v377 = [v108 initWithDomain:v109 code:2 userInfo:?];
                            goto LABEL_208;
                          }

                          v365 = 0;
                          v19 = 0;
LABEL_199:
                          v18 = v391;
                          v16 = v390;
                          a4 = v387;
                          v38 = v380;
LABEL_352:

                          goto LABEL_353;
                        }

                        if (v377)
                        {
                          v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v101 = *MEMORY[0x1E698F240];
                          v449 = *MEMORY[0x1E696A578];
                          v102 = self;
                          v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v299 = objc_opt_class();
                          v104 = v103;
                          self = v102;
                          v365 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v299, @"title"];
                          v450 = v365;
                          v366 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
                          v367 = 0;
                          v19 = 0;
                          *v377 = [v100 initWithDomain:v101 code:2 userInfo:?];
                          goto LABEL_199;
                        }

                        v367 = 0;
                        v19 = 0;
LABEL_191:
                        v18 = v391;
                        v16 = v390;
                        a4 = v387;
                        v38 = v380;
LABEL_353:

                        goto LABEL_354;
                      }

                      if (v377)
                      {
                        v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v96 = *MEMORY[0x1E698F240];
                        v451 = *MEMORY[0x1E696A578];
                        v97 = self;
                        v98 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v298 = objc_opt_class();
                        v99 = v98;
                        self = v97;
                        v367 = [v99 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v298, @"suggestedInvocationPhrase"];
                        v452 = v367;
                        v368 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
                        v369 = 0;
                        v19 = 0;
                        *v377 = [v95 initWithDomain:v96 code:2 userInfo:?];
                        goto LABEL_191;
                      }

                      v369 = 0;
                      v19 = 0;
                      v18 = v391;
                      v16 = v390;
                      a4 = v387;
                      v38 = v380;
LABEL_354:

                      goto LABEL_355;
                    }

                    if (v377)
                    {
                      v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v91 = *MEMORY[0x1E698F240];
                      v453 = *MEMORY[0x1E696A578];
                      v92 = self;
                      v93 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v297 = objc_opt_class();
                      v94 = v93;
                      self = v92;
                      v38 = v380;
                      v369 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v297, @"shortcutAvailability"];
                      v454 = v369;
                      v370 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
                      v371 = 0;
                      v19 = 0;
                      *v377 = [v90 initWithDomain:v91 code:2 userInfo:?];
                      v18 = v391;
                      v16 = v390;
                      a4 = v387;
                      goto LABEL_354;
                    }

                    v371 = 0;
                    v19 = 0;
                    v18 = v391;
                    v16 = v390;
                    a4 = v387;
LABEL_355:

                    goto LABEL_356;
                  }

                  v62 = self;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v63 = v41;
                    v64 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v63];
                    if (v64)
                    {
                      v65 = v64;

                      v38 = v380;
                      v42 = v65;
                      goto LABEL_50;
                    }

                    v375 = v63;
                    if (v377)
                    {
                      v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v114 = *MEMORY[0x1E698F240];
                      v459 = *MEMORY[0x1E696A578];
                      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"itemRelatedContentURL"];
                      v460 = v115;
                      v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v460 forKeys:&v459 count:1];
                      *v377 = [v113 initWithDomain:v114 code:2 userInfo:v116];
                    }

                    v19 = 0;
                    v378 = v63;
LABEL_141:
                    self = v62;
                    v18 = v391;
                    v16 = v390;
                    a4 = v387;
                    v38 = v380;
LABEL_357:

                    goto LABEL_358;
                  }

                  if (v377)
                  {
                    v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v83 = *MEMORY[0x1E698F240];
                    v457 = *MEMORY[0x1E696A578];
                    v375 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemRelatedContentURL"];
                    v458 = v375;
                    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v458 forKeys:&v457 count:1];
                    *v377 = [v82 initWithDomain:v83 code:2 userInfo:v84];

                    v19 = 0;
                    goto LABEL_141;
                  }

                  v19 = 0;
                  v18 = v391;
                  v16 = v390;
                  a4 = v387;
                  v38 = v380;
LABEL_358:

                  goto LABEL_359;
                }

                if (a4)
                {
                  v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v78 = *MEMORY[0x1E698F240];
                  v461 = *MEMORY[0x1E696A578];
                  v79 = self;
                  v80 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v295 = objc_opt_class();
                  v81 = v80;
                  self = v79;
                  v378 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v295, @"itemIdentifier"];
                  v462 = v378;
                  v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v462 forKeys:&v461 count:1];
                  v379 = 0;
                  v19 = 0;
                  *v377 = [v77 initWithDomain:v78 code:2 userInfo:?];
                  v18 = v391;
                  v16 = v390;
                  a4 = v387;

                  goto LABEL_358;
                }

                v379 = 0;
                v19 = 0;
                v18 = v391;
                v16 = v390;
                a4 = v387;
LABEL_359:

                goto LABEL_360;
              }

              if (a4)
              {
                v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                v73 = *MEMORY[0x1E698F240];
                v463 = *MEMORY[0x1E696A578];
                v74 = self;
                v75 = objc_alloc(MEMORY[0x1E696AEC0]);
                v294 = objc_opt_class();
                v76 = v75;
                self = v74;
                v379 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v294, @"isPubliclyIndexable"];
                v464 = v379;
                v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v464 forKeys:&v463 count:1];
                v381 = 0;
                v19 = 0;
                *a4 = [v72 initWithDomain:v73 code:2 userInfo:v38];
                v18 = v391;
                v16 = v390;
                a4 = v387;
                goto LABEL_359;
              }

              v381 = 0;
              v19 = 0;
LABEL_125:
              v18 = v391;
              v16 = v390;
              a4 = v387;
LABEL_360:

              goto LABEL_361;
            }

            if (a4)
            {
              v66 = objc_alloc(MEMORY[0x1E696ABC0]);
              v67 = *MEMORY[0x1E698F240];
              v465 = *MEMORY[0x1E696A578];
              v68 = self;
              v69 = objc_alloc(MEMORY[0x1E696AEC0]);
              v293 = objc_opt_class();
              v70 = v69;
              self = v68;
              v381 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v293, @"isEligibleForPrediction"];
              v466 = v381;
              v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v466 forKeys:&v465 count:1];
              v71 = [v66 initWithDomain:v67 code:2 userInfo:?];
              v383 = 0;
              v19 = 0;
              *a4 = v71;
              goto LABEL_125;
            }

            v383 = 0;
            v19 = 0;
LABEL_133:
            v18 = v391;
            v16 = v390;
            a4 = v387;
LABEL_361:

            goto LABEL_362;
          }

          if (a4)
          {
            v105 = objc_alloc(MEMORY[0x1E696ABC0]);
            v106 = *MEMORY[0x1E698F240];
            v467 = *MEMORY[0x1E696A578];
            v383 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
            v468 = v383;
            v384 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v468 forKeys:&v467 count:1];
            v107 = [v105 initWithDomain:v106 code:2 userInfo:?];
            v385 = 0;
            v19 = 0;
            *a4 = v107;
            goto LABEL_133;
          }

          v385 = 0;
          v19 = 0;
LABEL_34:
          v18 = v391;
          v16 = v390;
          a4 = v387;
LABEL_362:

          goto LABEL_363;
        }

        if (a4)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v469 = *MEMORY[0x1E696A578];
          v29 = self;
          v30 = objc_alloc(MEMORY[0x1E696AEC0]);
          v292 = objc_opt_class();
          v31 = v30;
          self = v29;
          v385 = [v31 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v292, @"contentDescription"];
          v470 = v385;
          v386 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v470 forKeys:&v469 count:1];
          v32 = [v27 initWithDomain:v28 code:2 userInfo:?];
          v388 = 0;
          v19 = 0;
          *a4 = v32;
          goto LABEL_34;
        }

        v388 = 0;
        v19 = 0;
        v18 = v391;
        v16 = v390;
        a4 = v387;
LABEL_363:

        goto LABEL_364;
      }

      if (a4)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v471 = *MEMORY[0x1E696A578];
        v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"beginningOfActivity"];
        v472 = v388;
        v389 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v471 count:1];
        v26 = [v24 initWithDomain:v25 code:2 userInfo:?];
        v19 = 0;
        *a4 = v26;
        a4 = 0;
        v18 = v391;
        v16 = v390;
        goto LABEL_363;
      }

      v19 = 0;
      v18 = v391;
      v16 = v390;
LABEL_364:

      goto LABEL_365;
    }

    if (a4)
    {
      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E698F240];
      v473 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityType"];
      v474 = v22;
      v392 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v474 forKeys:&v473 count:1];
      v23 = [v20 initWithDomain:v21 code:2 userInfo:?];
      v16 = 0;
      v19 = 0;
      *a4 = v23;
      a4 = v22;
      v18 = v391;
      goto LABEL_364;
    }

    v16 = 0;
    v19 = 0;
    v18 = v391;
LABEL_365:

    goto LABEL_366;
  }

  if (a4)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v475 = *MEMORY[0x1E696A578];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v476[0] = v16;
    v393 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v476 forKeys:&v475 count:1];
    v17 = [v14 initWithDomain:v15 code:2 userInfo:?];
    v18 = 0;
    v19 = 0;
    *a4 = v17;
    goto LABEL_365;
  }

  v18 = 0;
  v19 = 0;
LABEL_366:

  v274 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppLocationActivity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBeginningOfActivity)
  {
    beginningOfActivity = self->_beginningOfActivity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_contentDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_expirationDate)
  {
    raw_expirationDate = self->_raw_expirationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsEligibleForPrediction)
  {
    isEligibleForPrediction = self->_isEligibleForPrediction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPubliclyIndexable)
  {
    isPubliclyIndexable = self->_isPubliclyIndexable;
    PBDataWriterWriteBOOLField();
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_itemRelatedContentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_itemRelatedUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasShortcutAvailability)
  {
    shortcutAvailability = self->_shortcutAvailability;
    PBDataWriterWriteInt32Field();
  }

  if (self->_suggestedInvocationPhrase)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userActivityRequiredString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userActivityUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceItemID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceGroupID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_calendarUserActivityDate)
  {
    raw_calendarUserActivityDate = self->_raw_calendarUserActivityDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_calendarUserActivityExternalID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    raw_calendarUserActivityEndDate = self->_raw_calendarUserActivityEndDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_locationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasLatitude)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasLongitude)
  {
    longitude = self->_longitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stateOrProvince)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_thoroughfare)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fullyFormattedAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subThoroughfare)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_phoneNumbers;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_URL)
  {
    PBDataWriterWriteStringField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = BMAppLocationActivity;
  v5 = [(BMEventBase *)&v69 init];
  if (!v5)
  {
    goto LABEL_123;
  }

  v6 = objc_opt_new();
  while (1)
  {
    v7 = [v4 position];
    if (v7 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v70) = 0;
      v11 = [v4 position] + 1;
      if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
      {
        v13 = [v4 data];
        [v13 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v10 |= (LOBYTE(v70) & 0x7F) << v8;
      if ((LOBYTE(v70) & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [v4 hasError] ? 0 : v10;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 104;
        goto LABEL_98;
      case 2u:
        v16 = PBReaderReadString();
        v17 = 112;
        goto LABEL_98;
      case 3u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasBeginningOfActivity = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v24 |= (LOBYTE(v70) & 0x7F) << v22;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v14 = v23++ >= 9;
          if (v14)
          {
            LOBYTE(v28) = 0;
            goto LABEL_102;
          }
        }

        v28 = (v24 != 0) & ~[v4 hasError];
LABEL_102:
        v5->_beginningOfActivity = v28;
        continue;
      case 4u:
        v16 = PBReaderReadString();
        v17 = 120;
        goto LABEL_98;
      case 5u:
        v5->_hasRaw_expirationDate = 1;
        v70 = 0.0;
        v18 = [v4 position] + 8;
        if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
        {
          v59 = [v4 data];
          [v59 getBytes:&v70 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_expirationDate = v70;
        continue;
      case 6u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasIsEligibleForPrediction = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v31 |= (LOBYTE(v70) & 0x7F) << v29;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v14 = v30++ >= 9;
          if (v14)
          {
            LOBYTE(v35) = 0;
            goto LABEL_104;
          }
        }

        v35 = (v31 != 0) & ~[v4 hasError];
LABEL_104:
        v5->_isEligibleForPrediction = v35;
        continue;
      case 7u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasIsPubliclyIndexable = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v41 = [v4 position] + 1;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v40 |= (LOBYTE(v70) & 0x7F) << v38;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v14 = v39++ >= 9;
          if (v14)
          {
            LOBYTE(v44) = 0;
            goto LABEL_106;
          }
        }

        v44 = (v40 != 0) & ~[v4 hasError];
LABEL_106:
        v5->_isPubliclyIndexable = v44;
        continue;
      case 8u:
        v16 = PBReaderReadString();
        v17 = 128;
        goto LABEL_98;
      case 9u:
        v16 = PBReaderReadString();
        v17 = 32;
        goto LABEL_98;
      case 0xAu:
        v16 = PBReaderReadString();
        v17 = 136;
        goto LABEL_98;
      case 0xBu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v5->_hasShortcutAvailability = 1;
        break;
      case 0xCu:
        v16 = PBReaderReadString();
        v17 = 144;
        goto LABEL_98;
      case 0xDu:
        v16 = PBReaderReadString();
        v17 = 152;
        goto LABEL_98;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 160;
        goto LABEL_98;
      case 0xFu:
        v16 = PBReaderReadString();
        v17 = 168;
        goto LABEL_98;
      case 0x10u:
        v16 = PBReaderReadString();
        v17 = 176;
        goto LABEL_98;
      case 0x11u:
        v16 = PBReaderReadString();
        v17 = 184;
        goto LABEL_98;
      case 0x12u:
        v16 = PBReaderReadString();
        v17 = 192;
        goto LABEL_98;
      case 0x13u:
        v16 = PBReaderReadString();
        v17 = 200;
        goto LABEL_98;
      case 0x14u:
        v5->_hasRaw_calendarUserActivityDate = 1;
        v70 = 0.0;
        v54 = [v4 position] + 8;
        if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 8, v55 <= objc_msgSend(v4, "length")))
        {
          v62 = [v4 data];
          [v62 getBytes:&v70 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_calendarUserActivityDate = v70;
        continue;
      case 0x15u:
        v16 = PBReaderReadString();
        v17 = 208;
        goto LABEL_98;
      case 0x16u:
        v5->_hasRaw_calendarUserActivityEndDate = 1;
        v70 = 0.0;
        v36 = [v4 position] + 8;
        if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 8, v37 <= objc_msgSend(v4, "length")))
        {
          v61 = [v4 data];
          [v61 getBytes:&v70 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_calendarUserActivityEndDate = v70;
        continue;
      case 0x17u:
        v16 = PBReaderReadString();
        v17 = 216;
        goto LABEL_98;
      case 0x18u:
        v5->_hasLatitude = 1;
        v70 = 0.0;
        v56 = [v4 position] + 8;
        if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 8, v57 <= objc_msgSend(v4, "length")))
        {
          v63 = [v4 data];
          [v63 getBytes:&v70 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_latitude = v70;
        continue;
      case 0x19u:
        v5->_hasLongitude = 1;
        v70 = 0.0;
        v20 = [v4 position] + 8;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
        {
          v60 = [v4 data];
          [v60 getBytes:&v70 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_longitude = v70;
        continue;
      case 0x1Au:
        v16 = PBReaderReadString();
        v17 = 240;
        goto LABEL_98;
      case 0x1Bu:
        v16 = PBReaderReadString();
        v17 = 248;
        goto LABEL_98;
      case 0x1Cu:
        v16 = PBReaderReadString();
        v17 = 256;
        goto LABEL_98;
      case 0x1Du:
        v16 = PBReaderReadString();
        v17 = 264;
        goto LABEL_98;
      case 0x1Eu:
        v16 = PBReaderReadString();
        v17 = 272;
        goto LABEL_98;
      case 0x1Fu:
        v16 = PBReaderReadString();
        v17 = 280;
        goto LABEL_98;
      case 0x20u:
        v16 = PBReaderReadString();
        v17 = 288;
        goto LABEL_98;
      case 0x21u:
        v52 = PBReaderReadString();
        if (!v52)
        {
          goto LABEL_125;
        }

        v53 = v52;
        [v6 addObject:v52];

        continue;
      case 0x22u:
        v16 = PBReaderReadString();
        v17 = 304;
        goto LABEL_98;
      case 0x23u:
        v16 = PBReaderReadString();
        v17 = 72;
LABEL_98:
        v58 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_125:

        goto LABEL_122;
    }

    while (1)
    {
      LOBYTE(v70) = 0;
      v48 = [v4 position] + 1;
      if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
      {
        v50 = [v4 data];
        [v50 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v47 |= (LOBYTE(v70) & 0x7F) << v45;
      if ((LOBYTE(v70) & 0x80) == 0)
      {
        break;
      }

      v45 += 7;
      v14 = v46++ >= 9;
      if (v14)
      {
        v51 = 0;
        goto LABEL_110;
      }
    }

    if ([v4 hasError])
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

LABEL_110:
    v5->_shortcutAvailability = v51;
  }

  v64 = [v6 copy];
  phoneNumbers = v5->_phoneNumbers;
  v5->_phoneNumbers = v64;

  v66 = [v4 hasError];
  if (v66)
  {
LABEL_122:
    v67 = 0;
  }

  else
  {
LABEL_123:
    v67 = v5;
  }

  return v67;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v42 = [(BMAppLocationActivity *)self bundleID];
  v41 = [(BMAppLocationActivity *)self activityType];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity beginningOfActivity](self, "beginningOfActivity")}];
  v39 = [(BMAppLocationActivity *)self contentDescription];
  v38 = [(BMAppLocationActivity *)self expirationDate];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLocationActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  v35 = [(BMAppLocationActivity *)self itemIdentifier];
  v32 = [(BMAppLocationActivity *)self itemRelatedContentURL];
  v34 = [(BMAppLocationActivity *)self itemRelatedUniqueIdentifier];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppLocationActivity shortcutAvailability](self, "shortcutAvailability")}];
  v29 = [(BMAppLocationActivity *)self suggestedInvocationPhrase];
  v31 = [(BMAppLocationActivity *)self title];
  v19 = [(BMAppLocationActivity *)self userActivityRequiredString];
  v30 = [(BMAppLocationActivity *)self userActivityUUID];
  v28 = [(BMAppLocationActivity *)self sourceID];
  v18 = [(BMAppLocationActivity *)self sourceBundleID];
  v27 = [(BMAppLocationActivity *)self sourceItemID];
  v17 = [(BMAppLocationActivity *)self sourceGroupID];
  v26 = [(BMAppLocationActivity *)self calendarUserActivityDate];
  v25 = [(BMAppLocationActivity *)self calendarUserActivityExternalID];
  v24 = [(BMAppLocationActivity *)self calendarUserActivityEndDate];
  v16 = [(BMAppLocationActivity *)self locationName];
  v3 = MEMORY[0x1E696AD98];
  [(BMAppLocationActivity *)self latitude];
  v23 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMAppLocationActivity *)self longitude];
  v22 = [v4 numberWithDouble:?];
  v15 = [(BMAppLocationActivity *)self city];
  v14 = [(BMAppLocationActivity *)self stateOrProvince];
  v5 = [(BMAppLocationActivity *)self country];
  v6 = [(BMAppLocationActivity *)self thoroughfare];
  v13 = [(BMAppLocationActivity *)self fullyFormattedAddress];
  v7 = [(BMAppLocationActivity *)self subThoroughfare];
  v8 = [(BMAppLocationActivity *)self postalCode];
  v12 = [(BMAppLocationActivity *)self phoneNumbers];
  v9 = [(BMAppLocationActivity *)self displayName];
  v10 = [(BMAppLocationActivity *)self URL];
  v21 = [v20 initWithFormat:@"BMAppLocationActivity with bundleID: %@, activityType: %@, beginningOfActivity: %@, contentDescription: %@, expirationDate: %@, isEligibleForPrediction: %@, isPubliclyIndexable: %@, itemIdentifier: %@, itemRelatedContentURL: %@, itemRelatedUniqueIdentifier: %@, shortcutAvailability: %@, suggestedInvocationPhrase: %@, title: %@, userActivityRequiredString: %@, userActivityUUID: %@, sourceID: %@, sourceBundleID: %@, sourceItemID: %@, sourceGroupID: %@, calendarUserActivityDate: %@, calendarUserActivityExternalID: %@, calendarUserActivityEndDate: %@, locationName: %@, latitude: %@, longitude: %@, city: %@, stateOrProvince: %@, country: %@, thoroughfare: %@, fullyFormattedAddress: %@, subThoroughfare: %@, postalCode: %@, phoneNumbers: %@, displayName: %@, URL: %@", v42, v41, v40, v39, v38, v37, v36, v35, v32, v34, v33, v29, v31, v19, v30, v28, v18, v27, v17, v26, v25, v24, v16, v23, v22, v15, v14, v5, v6, v13, v7, v8, v12, v9, v10];

  return v21;
}

- (BMAppLocationActivity)initWithBundleID:(id)a3 activityType:(id)a4 beginningOfActivity:(id)a5 contentDescription:(id)a6 expirationDate:(id)a7 isEligibleForPrediction:(id)a8 isPubliclyIndexable:(id)a9 itemIdentifier:(id)a10 itemRelatedContentURL:(id)a11 itemRelatedUniqueIdentifier:(id)a12 shortcutAvailability:(id)a13 suggestedInvocationPhrase:(id)a14 title:(id)a15 userActivityRequiredString:(id)a16 userActivityUUID:(id)a17 sourceID:(id)a18 sourceBundleID:(id)a19 sourceItemID:(id)a20 sourceGroupID:(id)a21 calendarUserActivityDate:(id)a22 calendarUserActivityExternalID:(id)a23 calendarUserActivityEndDate:(id)a24 locationName:(id)a25 latitude:(id)a26 longitude:(id)a27 city:(id)a28 stateOrProvince:(id)a29 country:(id)a30 thoroughfare:(id)a31 fullyFormattedAddress:(id)a32 subThoroughfare:(id)a33 postalCode:(id)a34 phoneNumbers:(id)a35 displayName:(id)a36 URL:(id)a37
{
  v86 = a3;
  v59 = a4;
  v85 = a4;
  v40 = a5;
  v60 = a6;
  v84 = a6;
  v41 = a7;
  v92 = a8;
  v42 = a9;
  v83 = a10;
  v43 = a11;
  v81 = a12;
  v44 = a13;
  v80 = a14;
  v79 = a15;
  v78 = a16;
  v77 = a17;
  v76 = a18;
  v75 = a19;
  v74 = a20;
  v73 = a21;
  v90 = a22;
  v72 = a23;
  v89 = a24;
  v71 = a25;
  v88 = a26;
  v87 = a27;
  v70 = a28;
  v69 = a29;
  v68 = a30;
  v67 = a31;
  v66 = a32;
  v65 = a33;
  v64 = a34;
  v63 = a35;
  v62 = a36;
  v45 = a37;
  v93.receiver = self;
  v93.super_class = BMAppLocationActivity;
  v46 = [(BMEventBase *)&v93 init];
  if (v46)
  {
    v46->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v46->_bundleID, a3);
    objc_storeStrong(&v46->_activityType, v59);
    if (v40)
    {
      v46->_hasBeginningOfActivity = 1;
      v46->_beginningOfActivity = [v40 BOOLValue];
    }

    else
    {
      v46->_hasBeginningOfActivity = 0;
      v46->_beginningOfActivity = 0;
    }

    objc_storeStrong(&v46->_contentDescription, v60);
    if (v41)
    {
      v46->_hasRaw_expirationDate = 1;
      [v41 timeIntervalSince1970];
    }

    else
    {
      v46->_hasRaw_expirationDate = 0;
      v47 = -1.0;
    }

    v46->_raw_expirationDate = v47;
    if (v92)
    {
      v46->_hasIsEligibleForPrediction = 1;
      v46->_isEligibleForPrediction = [v92 BOOLValue];
    }

    else
    {
      v46->_hasIsEligibleForPrediction = 0;
      v46->_isEligibleForPrediction = 0;
    }

    if (v42)
    {
      v46->_hasIsPubliclyIndexable = 1;
      v46->_isPubliclyIndexable = [v42 BOOLValue];
    }

    else
    {
      v46->_hasIsPubliclyIndexable = 0;
      v46->_isPubliclyIndexable = 0;
    }

    objc_storeStrong(&v46->_itemIdentifier, a10);
    if (v43)
    {
      v48 = [v43 absoluteString];
    }

    else
    {
      v48 = 0;
    }

    raw_itemRelatedContentURL = v46->_raw_itemRelatedContentURL;
    v46->_raw_itemRelatedContentURL = v48;

    objc_storeStrong(&v46->_itemRelatedUniqueIdentifier, a12);
    if (v44)
    {
      v46->_hasShortcutAvailability = 1;
      v50 = [v44 intValue];
    }

    else
    {
      v46->_hasShortcutAvailability = 0;
      v50 = -1;
    }

    v46->_shortcutAvailability = v50;
    objc_storeStrong(&v46->_suggestedInvocationPhrase, a14);
    objc_storeStrong(&v46->_title, a15);
    objc_storeStrong(&v46->_userActivityRequiredString, a16);
    objc_storeStrong(&v46->_userActivityUUID, a17);
    objc_storeStrong(&v46->_sourceID, a18);
    objc_storeStrong(&v46->_sourceBundleID, a19);
    objc_storeStrong(&v46->_sourceItemID, a20);
    objc_storeStrong(&v46->_sourceGroupID, a21);
    if (v90)
    {
      v46->_hasRaw_calendarUserActivityDate = 1;
      [v90 timeIntervalSinceReferenceDate];
    }

    else
    {
      v46->_hasRaw_calendarUserActivityDate = 0;
      v51 = -1.0;
    }

    v46->_raw_calendarUserActivityDate = v51;
    objc_storeStrong(&v46->_calendarUserActivityExternalID, a23);
    if (v89)
    {
      v46->_hasRaw_calendarUserActivityEndDate = 1;
      [v89 timeIntervalSinceReferenceDate];
    }

    else
    {
      v46->_hasRaw_calendarUserActivityEndDate = 0;
      v52 = -1.0;
    }

    v46->_raw_calendarUserActivityEndDate = v52;
    objc_storeStrong(&v46->_locationName, a25);
    if (v88)
    {
      v46->_hasLatitude = 1;
      [v88 doubleValue];
    }

    else
    {
      v46->_hasLatitude = 0;
      v53 = -1.0;
    }

    v46->_latitude = v53;
    if (v87)
    {
      v46->_hasLongitude = 1;
      [v87 doubleValue];
    }

    else
    {
      v46->_hasLongitude = 0;
      v54 = -1.0;
    }

    v46->_longitude = v54;
    objc_storeStrong(&v46->_city, a28);
    objc_storeStrong(&v46->_stateOrProvince, a29);
    objc_storeStrong(&v46->_country, a30);
    objc_storeStrong(&v46->_thoroughfare, a31);
    objc_storeStrong(&v46->_fullyFormattedAddress, a32);
    objc_storeStrong(&v46->_subThoroughfare, a33);
    objc_storeStrong(&v46->_postalCode, a34);
    objc_storeStrong(&v46->_phoneNumbers, a35);
    objc_storeStrong(&v46->_displayName, a36);
    if (v45)
    {
      v55 = [v45 absoluteString];
    }

    else
    {
      v55 = 0;
    }

    raw_URL = v46->_raw_URL;
    v46->_raw_URL = v55;
  }

  return v46;
}

+ (id)protoFields
{
  v40[35] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v40[0] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:2 type:13 subMessageClass:0];
  v40[1] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"beginningOfActivity" number:3 type:12 subMessageClass:0];
  v40[2] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentDescription" number:4 type:13 subMessageClass:0];
  v40[3] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expirationDate" number:5 type:0 subMessageClass:0];
  v40[4] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEligibleForPrediction" number:6 type:12 subMessageClass:0];
  v40[5] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPubliclyIndexable" number:7 type:12 subMessageClass:0];
  v40[6] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:8 type:13 subMessageClass:0];
  v40[7] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedContentURL" number:9 type:13 subMessageClass:0];
  v40[8] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedUniqueIdentifier" number:10 type:13 subMessageClass:0];
  v40[9] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortcutAvailability" number:11 type:2 subMessageClass:0];
  v40[10] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedInvocationPhrase" number:12 type:13 subMessageClass:0];
  v40[11] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:13 type:13 subMessageClass:0];
  v40[12] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityRequiredString" number:14 type:13 subMessageClass:0];
  v40[13] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityUUID" number:15 type:13 subMessageClass:0];
  v40[14] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:16 type:13 subMessageClass:0];
  v40[15] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:17 type:13 subMessageClass:0];
  v40[16] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceItemID" number:18 type:13 subMessageClass:0];
  v40[17] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceGroupID" number:19 type:13 subMessageClass:0];
  v40[18] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityDate" number:20 type:0 subMessageClass:0];
  v40[19] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityExternalID" number:21 type:13 subMessageClass:0];
  v40[20] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityEndDate" number:22 type:0 subMessageClass:0];
  v40[21] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationName" number:23 type:13 subMessageClass:0];
  v40[22] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latitude" number:24 type:0 subMessageClass:0];
  v40[23] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"longitude" number:25 type:0 subMessageClass:0];
  v40[24] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"city" number:26 type:13 subMessageClass:0];
  v40[25] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOrProvince" number:27 type:13 subMessageClass:0];
  v40[26] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"country" number:28 type:13 subMessageClass:0];
  v40[27] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"thoroughfare" number:29 type:13 subMessageClass:0];
  v40[28] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullyFormattedAddress" number:30 type:13 subMessageClass:0];
  v40[29] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subThoroughfare" number:31 type:13 subMessageClass:0];
  v40[30] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postalCode" number:32 type:13 subMessageClass:0];
  v40[31] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phoneNumbers" number:33 type:13 subMessageClass:0];
  v40[32] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:34 type:13 subMessageClass:0];
  v40[33] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"URL" number:35 type:13 subMessageClass:0];
  v40[34] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:35];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

id __32__BMAppLocationActivity_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _phoneNumbersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMAppLocationActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[23] = 0;
    }
  }

  return v4;
}

@end