@interface PKCoreSpotlightUtilities
+ (CGSize)_thumbnailImageSizeForSourceImageSize:(CGSize)result;
+ (id)_allPassFields:(id)a3;
+ (id)accountIdentifierFromSpotlightIdentifier:(id)a3;
+ (id)displayNameForPass:(id)a3;
+ (id)passUniqueIdentifierFromCardInformationSpotlightIdentifier:(id)a3;
+ (id)passUniqueIdentifierFromSpotlightIdentifier:(id)a3;
+ (id)paymentSetupProductIdentifierFromSpotlightIdentifier:(id)a3;
+ (id)searchKeywordForTransactionStatus:(int64_t)a3;
+ (id)searchKeywordForTransactionType:(int64_t)a3;
+ (id)searchableItemForAccount:(id)a3;
+ (id)searchableItemForPaymentSetupProduct:(id)a3;
+ (id)textContentAttributeForPass:(id)a3 passTiles:(id)a4;
+ (id)textContentAttributeForTransaction:(id)a3 passLocalizedDescription:(id)a4;
+ (id)transactionIdentifierFromSpotlightIdentifier:(id)a3;
+ (void)addSemanticSearchableAttributes:(id)a3 toPass:(id)a4;
+ (void)searchableItemForCardNumberFromPass:(id)a3 completion:(id)a4;
+ (void)searchableItemForPass:(id)a3 passTiles:(id)a4 passKitServicesXPCService:(id)a5 completion:(id)a6;
+ (void)searchableItemForTransaction:(id)a3 passUniqueID:(id)a4 passLocalizedDescription:(id)a5 regions:(id)a6 tags:(id)a7 keywords:(id)a8 imageGenerator:(id)a9 contactResolver:(id)a10 completion:(id)a11;
@end

@implementation PKCoreSpotlightUtilities

+ (void)searchableItemForTransaction:(id)a3 passUniqueID:(id)a4 passLocalizedDescription:(id)a5 regions:(id)a6 tags:(id)a7 keywords:(id)a8 imageGenerator:(id)a9 contactResolver:(id)a10 completion:(id)a11
{
  v191[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v169 = a5;
  v168 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v19;
  v23 = a10;
  v24 = a11;
  if (v24)
  {
    v163 = v22;
    v155 = v23;
    v156 = v21;
    v162 = [PKPaymentTransactionPresentation presentationInformationForTransaction:v17 transactionSource:0 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:2];
    v25 = [v17 identifier];
    v165 = a1;
    v26 = [a1 spotlightIdentifierForTransactionIdentifier:v25];

    v27 = [objc_alloc(MEMORY[0x1E6964E90]) initWithItemContentType:@"com.apple.pktransaction"];
    [v27 setIdentifier:v26];
    v28 = [v17 merchant];
    v29 = [v28 mapsMerchant];
    v161 = v28;
    v164 = [v28 mapsBrand];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke;
    aBlock[3] = &unk_1E79C4F68;
    v154 = v26;
    v185 = v154;
    v186 = v18;
    v30 = v27;
    v187 = v30;
    v158 = v17;
    v31 = v17;
    v188 = v31;
    v189 = v24;
    v160 = _Block_copy(aBlock);
    v32 = [v31 transactionDate];
    [v30 setAddedDate:v32];

    v33 = [v31 transactionDate];
    [v30 setContentCreationDate:v33];

    v34 = [v31 transactionStatusChangedDate];

    v167 = v29;
    if (v34)
    {
      v35 = [v31 transactionDate];
      v191[0] = v35;
      v36 = [v31 transactionStatusChangedDate];
      v191[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:2];
      [v30 setImportantDates:v37];

      v29 = v167;
    }

    v38 = 0x1E6964000uLL;
    v39 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionAmount" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    v40 = [v31 amount];
    v153 = v39;
    [v30 setValue:v40 forCustomKey:v39];

    v41 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionCurrencyCode" searchable:1 searchableByDefault:1 unique:0 multiValued:0];
    v42 = [v31 currencyCode];
    v152 = v41;
    [v30 setValue:v42 forCustomKey:v41];

    v43 = [v31 transactionType];
    v44 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionType" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    v142 = v43;
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
    v151 = v44;
    [v30 setValue:v45 forCustomKey:v44];

    v46 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionStatus" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "transactionStatus")}];
    v150 = v46;
    [v30 setValue:v47 forCustomKey:v46];

    v48 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionSource" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "effectiveTransactionSource")}];
    v149 = v48;
    [v30 setValue:v49 forCustomKey:v48];

    if (v29)
    {
      v50 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_POImuid" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v29, "identifier")}];
      v52 = [v51 stringValue];
      [v30 setValue:v52 forCustomKey:v50];

      v38 = 0x1E6964000uLL;
    }

    v170 = v30;
    if (v164)
    {
      v53 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_Brandmuid" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v164, "identifier")}];
      v55 = [v54 stringValue];
      [v30 setValue:v55 forCustomKey:v53];

      v38 = 0x1E6964000;
    }

    v157 = v18;
    v159 = v24;
    if ([v163 count])
    {
      v147 = v20;
      v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v58 = v163;
      v59 = [v58 countByEnumeratingWithState:&v180 objects:v190 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v181;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v181 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v180 + 1) + 8 * i);
            v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v63, "type")}];
            [v56 addObject:v64];

            v65 = [v63 localizedTitle];
            if (v65)
            {
              [v57 addObject:v65];
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v180 objects:v190 count:16];
        }

        while (v60);
      }

      v66 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionTags" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
      v67 = [v56 allObjects];
      [v170 setValue:v67 forCustomKey:v66];

      v68 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionTagKeywords" searchable:1 searchableByDefault:1 unique:0 multiValued:1];
      v69 = [v57 allObjects];
      [v170 setValue:v69 forCustomKey:v68];

      v38 = 0x1E6964000uLL;
      v20 = v147;
      v24 = v159;
    }

    v70 = v170;
    if ([v20 count])
    {
      [v170 setKeywords:v20];
    }

    v71 = [v165 textContentAttributeForTransaction:v31 passLocalizedDescription:v169];
    if ([v71 length])
    {
      [v170 setTextContent:v71];
    }

    v148 = v71;
    v72 = [v31 identifier];
    if (v72)
    {
      v73 = [objc_alloc(*(v38 + 3584)) initWithKeyName:@"Passbook_transactionIdentifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
      [v170 setValue:v72 forCustomKey:v73];
    }

    v145 = [v31 transactionSourceIdentifier];
    if (v145)
    {
      v74 = [objc_alloc(*(v38 + 3584)) initWithKeyName:@"Passbook_transactionSourceIdentifier" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
      [v31 transactionSourceIdentifier];
      v75 = v20;
      v77 = v76 = v72;
      [v170 setValue:v77 forCustomKey:v74];

      v72 = v76;
      v20 = v75;
    }

    v78 = [v31 altDSID];
    if (v78)
    {
      v79 = [objc_alloc(*(v38 + 3584)) initWithKeyName:@"Passbook_transactionAltDSID" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
      [v170 setValue:v78 forCustomKey:v79];
    }

    v146 = v72;
    if ([v31 transactionType] == 3)
    {
      v80 = [v162 secondaryString];
      v166 = [v162 tertiaryString];
      if ([(__CFString *)v80 length])
      {
        v81 = &stru_1F227FD28;
        if ([&stru_1F227FD28 length])
        {
          v81 = [&stru_1F227FD28 stringByAppendingString:@"\n"];
        }

        v82 = [(__CFString *)v81 stringByAppendingFormat:@"%@", v80];
      }

      else
      {
        v82 = &stru_1F227FD28;
      }

      v144 = v80;
      if ([v166 length])
      {
        if ([(__CFString *)v82 length])
        {
          v91 = [(__CFString *)v82 stringByAppendingString:@"\n"];

          v82 = v91;
        }

        v92 = v24;
        v93 = [(__CFString *)v82 stringByAppendingFormat:@"%@", v166];

        v94 = v93;
      }

      else
      {
        v94 = v82;
        v92 = v24;
      }

      v105 = v20;
      v106 = v94;
      [v170 setContentDescription:?];
      v87 = [v31 peerPaymentCounterpartHandle];
      if (v87)
      {
        v107 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionHandle" searchable:1 searchableByDefault:1 unique:0 multiValued:0];
        [v170 setValue:v87 forCustomKey:v107];
        v108 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionSubType" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
        v109 = v78;
        v110 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "peerPaymentType")}];
        [v170 setValue:v110 forCustomKey:v108];

        v78 = v109;
        v175[0] = MEMORY[0x1E69E9820];
        v175[1] = 3221225472;
        v175[2] = __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke_2;
        v175[3] = &unk_1E79D0D80;
        v87 = v87;
        v176 = v87;
        v177 = v170;
        v178 = v31;
        v111 = v160;
        v179 = v160;
        v23 = v155;
        [v155 contactForHandle:v87 withCompletion:v175];

        v70 = v170;
      }

      else
      {
        v111 = v160;
        v160[2](v160);
        v23 = v155;
      }

      v21 = v156;
LABEL_87:

      v22 = v163;
      v20 = v105;
      v24 = v92;
      v18 = v157;
      goto LABEL_88;
    }

    v83 = [v162 primaryString];
    v84 = [v83 pk_stringByNormalizingWhitespace];
    [v170 setDisplayName:v84];

    v85 = [v162 secondaryString];
    v86 = [v162 tertiaryString];
    v87 = [v162 badgeString];
    v166 = v85;
    if ([v85 length])
    {
      v88 = &stru_1F227FD28;
      if ([&stru_1F227FD28 length])
      {
        v88 = [&stru_1F227FD28 stringByAppendingString:@"\n"];
      }

      v89 = v170;
      v90 = [(__CFString *)v88 stringByAppendingFormat:@"%@", v166];
    }

    else
    {
      v90 = &stru_1F227FD28;
      v89 = v170;
    }

    if ([v86 length])
    {
      if ([(__CFString *)v90 length])
      {
        v95 = [(__CFString *)v90 stringByAppendingString:@"\n"];

        v90 = v95;
      }

      v96 = [(__CFString *)v90 stringByAppendingFormat:@"%@", v86];

      v90 = v96;
    }

    [v89 setContentDescription:v90];
    if ([v87 length])
    {
      [v89 setComment:v87];
    }

    v140 = v86;
    v97 = [v31 merchant];
    v98 = [v97 category];

    if (v98 && v142 <= 0xE && ((1 << v142) & 0x4003) != 0)
    {
      v99 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionCategory" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
      v100 = [MEMORY[0x1E696AD98] numberWithInteger:v98];
      [v170 setValue:v100 forCustomKey:v99];
    }

    v101 = [v167 postalAddress];
    v102 = [v31 locality];

    v143 = v101;
    if (v102)
    {
      v103 = [v31 locality];
      [v170 setCity:v103];

      v104 = [v31 administrativeArea];
      [v170 setStateOrProvince:v104];
    }

    else
    {
      if (!v101)
      {
LABEL_63:
        v141 = v78;
        v117 = [v31 preferredLocation];
        v118 = v117;
        if (v117)
        {
          [v117 coordinate];
          latitude = v192.latitude;
          longitude = v192.longitude;
          if (CLLocationCoordinate2DIsValid(v192))
          {
            v121 = [MEMORY[0x1E696AD98] numberWithDouble:latitude];
            [v170 setLatitude:v121];

            v122 = [MEMORY[0x1E696AD98] numberWithDouble:longitude];
            [v170 setLongitude:v122];
          }
        }

        v106 = v140;
        if ([v168 count])
        {
          v123 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionRegions" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
          v124 = [v168 valueForKey:@"identifier"];
          [v170 setValue:v124 forCustomKey:v123];
        }

        v125 = [v161 originURL];

        if (v125)
        {
          v126 = [v161 originURL];
        }

        else
        {
          v127 = v167;
          v128 = [v167 url];

          if (!v128)
          {
            v127 = v164;
            v129 = [v164 url];

            if (!v129)
            {
              goto LABEL_75;
            }
          }

          v126 = [v127 url];
        }

        v130 = v126;
        [v170 setURL:v126];

LABEL_75:
        v105 = v20;
        v131 = [v31 rewards];
        v132 = [v131 rewardsItems];
        v133 = [v132 count];

        if (v133)
        {
          v134 = [v131 totalEligibleValueForUnit:1];
          v135 = v134;
          if (v134 && ([v134 pk_isZeroNumber] & 1) == 0)
          {
            v136 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionRewardsPercentAggregate" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
            [v170 setValue:v135 forCustomKey:v136];
          }

          v137 = [v131 totalEligibleValueForUnit:2];
          v138 = v137;
          if (v137 && ([v137 pk_isZeroNumber] & 1) == 0)
          {
            v139 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_transactionRewardsCashAggregate" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
            [v170 setValue:v138 forCustomKey:v139];

            v17 = v158;
          }
        }

        v21 = v156;
        v144 = v90;
        if (v156)
        {
          v171[0] = MEMORY[0x1E69E9820];
          v171[1] = 3221225472;
          v171[2] = __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke_4;
          v171[3] = &unk_1E79D0DA8;
          v172 = v170;
          v174 = v160;
          v173 = v156;
          [v173 imageDataForTransaction:v31 size:v171 completion:{75.0, 75.0}];
        }

        else
        {
          (v160[2])();
        }

        v23 = v155;

        v92 = v159;
        v111 = v160;
        v70 = v170;
        v78 = v141;
        goto LABEL_87;
      }

      v112 = [v101 street];
      [v170 setThoroughfare:v112];

      v113 = [v101 city];
      [v170 setCity:v113];

      v114 = [v101 state];
      [v170 setStateOrProvince:v114];

      v115 = [v101 country];
      [v170 setCountry:v115];

      v116 = [v101 postalCode];
      [v170 setPostalCode:v116];

      v104 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v101 style:0];
      [v170 setFullyFormattedAddress:v104];
    }

    goto LABEL_63;
  }

LABEL_88:
}

void __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke(void *a1)
{
  v3 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:a1[4] domainIdentifier:a1[5] attributeSet:a1[6]];
  v2 = [MEMORY[0x1E695DF00] distantFuture];
  [v3 setExpirationDate:v2];

  [PKAppIntentUtilities associateSearchableItem:v3 withEntityForTransaction:a1[7]];
  (*(a1[8] + 16))();
}

void __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke_3;
  block[3] = &unk_1E79C4F68;
  v6 = a1[4];
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke_3(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:*(a1 + 32) contact:*(a1 + 40)];
  [*(a1 + 48) setDisplayName:v2];
  v3 = *(a1 + 48);
  v16[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v3 setAccountHandles:v4];

  v5 = objc_alloc(MEMORY[0x1E6964E50]);
  v15 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v7 = [*(a1 + 40) identifier];
  v8 = [v5 initWithDisplayName:v2 handles:v6 handleIdentifier:v7];

  if (v8)
  {
    v9 = [*(a1 + 56) peerPaymentType];
    if (v9 == 2)
    {
      v12 = *(a1 + 48);
      v13 = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v12 setAuthors:v11];
      goto LABEL_6;
    }

    if (v9 == 1)
    {
      v10 = *(a1 + 48);
      v14 = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      [v10 setPrimaryRecipients:v11];
LABEL_6:
    }
  }

  (*(*(a1 + 64) + 16))();
}

uint64_t __159__PKCoreSpotlightUtilities_searchableItemForTransaction_passUniqueID_passLocalizedDescription_regions_tags_keywords_imageGenerator_contactResolver_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setThumbnailData:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

+ (void)searchableItemForPass:(id)a3 passTiles:(id)a4 passKitServicesXPCService:(id)a5 completion:(id)a6
{
  v144[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [v10 paymentPass];
    v15 = [v10 uniqueID];
    v16 = [a1 spotlightIdentifierForPassUniqueIdentifier:v15];
    v17 = [objc_alloc(MEMORY[0x1E6964E90]) initWithItemContentType:@"com.apple.pkpass"];
    v125 = v16;
    [v17 setIdentifier:v16];
    v18 = [a1 displayNameForPass:v10];
    [v17 setDisplayName:v18];

    v19 = 0x1E695D000uLL;
    v123 = v14;
    v124 = v15;
    v119 = v13;
    if (v14)
    {
      v20 = [v14 cobrandName];
      v21 = v20;
      if (v20)
      {
        v144[0] = v20;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:1];
        [v17 setAlternateNames:v22];
      }

      v121 = v21;
      v126 = PKPassTypeDisplayStringForPaymentPass(v14);
      if ([v14 hasAssociatedPeerPaymentAccount])
      {
        v117 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo.isa, 0);
        v115 = [v117 pk_stringByNormalizingWhitespace];
        v143[0] = v115;
        v111 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_0.isa, 0);
        v110 = [v111 pk_stringByNormalizingWhitespace];
        v143[1] = v110;
        v109 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_1.isa, 0);
        v108 = [v109 pk_stringByNormalizingWhitespace];
        v143[2] = v108;
        v107 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_2.isa, 0);
        v106 = [v107 pk_stringByNormalizingWhitespace];
        v143[3] = v106;
        v105 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_3.isa, 0);
        v104 = [v105 pk_stringByNormalizingWhitespace];
        v143[4] = v104;
        v103 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_4.isa, 0);
        v102 = [v103 pk_stringByNormalizingWhitespace];
        v143[5] = v102;
        v101 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_5.isa, 0);
        v100 = [v101 pk_stringByNormalizingWhitespace];
        v143[6] = v100;
        v99 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_6.isa, 0);
        v98 = [v99 pk_stringByNormalizingWhitespace];
        v143[7] = v98;
        v96 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_7.isa, 0);
        v95 = [v96 pk_stringByNormalizingWhitespace];
        v143[8] = v95;
        v94 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_8.isa, 0);
        [v94 pk_stringByNormalizingWhitespace];
        v23 = v112 = v12;
        v143[9] = v23;
        v24 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_9.isa, 0);
        v25 = [v24 pk_stringByNormalizingWhitespace];
        v143[10] = v25;
        v26 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_10.isa, 0);
        v27 = [v26 pk_stringByNormalizingWhitespace];
        v143[11] = v27;
        v28 = PKLocalizedPeerPaymentString(&cfstr_SpotlightKeywo_11.isa, 0);
        [v28 pk_stringByNormalizingWhitespace];
        v30 = v29 = v11;
        v143[12] = v30;
        v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:13];

        v11 = v29;
        v14 = v123;

        v19 = 0x1E695D000;
        v15 = v124;

        v12 = v112;
        [v17 setKeywords:v97];
      }

      v31 = [v14 devicePaymentApplications];
      v32 = [v31 pk_setBySafelyApplyingBlock:&__block_literal_global_81];

      if ([v32 count])
      {
        v33 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_paymentNetworks" searchable:1 searchableByDefault:1 unique:0 multiValued:1];
        v34 = [v32 pk_arrayCopy];
        [v17 setValue:v34 forCustomKey:v33];
      }

      v35 = &unk_1F23B4E08;
      v36 = v126;
    }

    else
    {
      v36 = [v10 localizedName];
      v35 = &unk_1F23B4E20;
    }

    v127 = v36;
    [v17 setContentDescription:v36];
    v37 = MEMORY[0x1E695E118];
    [v17 setUserOwned:MEMORY[0x1E695E118]];
    [v17 setUserCurated:v37];
    v38 = [v10 organizationName];
    [v17 setCreator:v38];

    [v17 setAttribute:v35 forKey:@"Passbook_isPaymentPass"];
    v120 = v11;
    if (v14)
    {
      v39 = PKSanitizedPrimaryAccountRepresentationForPass(v14);
      if ([v39 length])
      {
        [v17 setPrimaryAccountNumberSuffix:v39];
      }

      v40 = [v14 localizedValueForFieldKey:@"contactNumber"];
      if ([v40 length])
      {
        v142 = v40;
        v41 = [*(v19 + 3784) arrayWithObjects:&v142 count:1];
        [v17 setPhoneNumbers:v41];

        [v17 setSupportsPhoneCall:MEMORY[0x1E695E118]];
      }

      v42 = [v14 localizedValueForFieldKey:@"contactEmail"];
      if ([v42 length])
      {
        v141 = v42;
        v43 = [*(v19 + 3784) arrayWithObjects:&v141 count:1];
        [v17 setRecipientEmailAddresses:v43];
      }

      v44 = MEMORY[0x1E696AEC0];
      v45 = [v10 uniqueID];
      v46 = [v44 stringWithFormat:@"wallet://%@/%@/%@", @"card", v45, @"details"];

      v47 = [MEMORY[0x1E695DFF8] URLWithString:v46];
      [v17 setCardDetailsActionURL:v47];

      if ([v14 cardType] == 1 && !objc_msgSend(v14, "activationState"))
      {
        v48 = [v14 isAppleCardPass];
        v49 = v14;
        v50 = MEMORY[0x1E696AEC0];
        if (v48)
        {
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wallet://%@/%@", @"credit", @"numbers"];
        }

        else
        {
          v52 = [v49 uniqueID];
          v51 = [v50 stringWithFormat:@"wallet://%@/%@/%@", @"card", v52, @"cardInformation"];
        }

        v53 = [MEMORY[0x1E695DFF8] URLWithString:v51];
        [v17 setCardNumberActionURL:v53];

        v14 = v123;
      }

      if ([v14 isAppleCardPass] && !objc_msgSend(v14, "activationState"))
      {
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wallet://%@/%@", @"credit", @"billPayment"];
        v55 = [MEMORY[0x1E695DFF8] URLWithString:v54];
        [v17 setPayBalanceActionURL:v55];

        v14 = v123;
      }

      v11 = v120;
      v15 = v124;
    }

    v118 = [v10 ingestedDate];
    [v17 setAddedDate:?];
    v56 = [v10 effectiveExpirationDate];
    [v17 setAttribute:v56 forKey:*MEMORY[0x1E6963D90]];

    if (!v14)
    {
      v57 = [v10 webServiceURL];

      if (v57)
      {
        v58 = [v10 modifiedDate];
        [v17 setContentModificationDate:v58];
      }
    }

    v59 = [v10 relevantDates];
    if ([v59 count])
    {
      v60 = [v59 pk_arrayByApplyingBlock:&__block_literal_global_271];
      [v17 setImportantDates:v60];
    }

    v122 = [v10 embeddedLocationsArray];
    if ([v122 count] == 1)
    {
      v61 = [v122 firstObject];
      v62 = [v61 name];
      [v17 setNamedLocation:v62];

      [v17 setSupportsNavigation:MEMORY[0x1E695E118]];
      v63 = MEMORY[0x1E696AD98];
      [v61 latitude];
      v64 = [v63 numberWithDouble:?];
      [v17 setLatitude:v64];

      v65 = MEMORY[0x1E696AD98];
      [v61 longitude];
      v66 = [v65 numberWithDouble:?];
      [v17 setLongitude:v66];

      if ([v61 hasAltitude])
      {
        v67 = MEMORY[0x1E696AD98];
        [v61 altitude];
        v68 = [v67 numberWithDouble:?];
        [v17 setAltitude:v68];
      }
    }

    v116 = v59;
    if (_os_feature_enabled_impl())
    {
      v69 = [PKCoreSpotlightUtilities _allPassFields:v10];
      if (v69)
      {
        v70 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"kMDItemExtraData" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
        v71 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"Passbook_rawPassJson" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
        v137 = 0;
        v72 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v69 options:0 error:&v137];
        v73 = v137;
        if (v72)
        {
          [v17 setValue:v72 forCustomKey:v70];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v72 encoding:4];
          [v17 setValue:v74 forCustomKey:v71];
        }

        else
        {
          v74 = PKLogFacilityTypeGetObject(0x14uLL);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            v114 = [v73 localizedDescription];
            *buf = 138412290;
            v140 = v114;
            _os_log_error_impl(&dword_1AD337000, v74, OS_LOG_TYPE_ERROR, "Failed to serialize pass fields: %@", buf, 0xCu);
          }
        }

        v15 = v124;
      }
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      v75 = [PKCoreSpotlightUtilities textContentAttributeForPass:v10 passTiles:v11];
      [v17 setTextContent:v75];
    }

    [PKCoreSpotlightUtilities addSemanticSearchableAttributes:v17 toPass:v10];
    v76 = [v10 groupingID];
    v77 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v125 domainIdentifier:v76 attributeSet:v17];
    v78 = [MEMORY[0x1E695DF00] distantFuture];
    [v77 setExpirationDate:v78];

    [PKAppIntentUtilities associateSearchableItem:v77 withEntityForPass:v10];
    if (_os_feature_enabled_impl())
    {
      v113 = v12;
      v79 = [PKSpotlightDocumentDonationHandler extractAttributes:v10];
      v80 = PKLogFacilityTypeGetObject(0x14uLL);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = [v79 count];
        *buf = 134217984;
        v140 = v81;
        _os_log_impl(&dword_1AD337000, v80, OS_LOG_TYPE_DEFAULT, "extract %ld attributes from document understanding", buf, 0xCu);
      }

      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v82 = v79;
      v83 = [v82 countByEnumeratingWithState:&v133 objects:v138 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *v134;
        do
        {
          for (i = 0; i != v84; ++i)
          {
            if (*v134 != v85)
            {
              objc_enumerationMutation(v82);
            }

            v87 = *(*(&v133 + 1) + 8 * i);
            v88 = [v17 attributeForKey:v87];

            if (!v88)
            {
              v89 = [v82 objectForKeyedSubscript:v87];
              [v17 setAttribute:v89 forKey:v87];
            }
          }

          v84 = [v82 countByEnumeratingWithState:&v133 objects:v138 count:16];
        }

        while (v84);
      }

      v11 = v120;
      v12 = v113;
      v15 = v124;
    }

    if (v12)
    {
      +[PKCoreSpotlightUtilities _thumbnailImageSizeForSourceImageSize:](PKCoreSpotlightUtilities, "_thumbnailImageSizeForSourceImageSize:", PKPassViewFrontSize([v10 style]));
      v91 = v90;
      v93 = v92;
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __97__PKCoreSpotlightUtilities_searchableItemForPass_passTiles_passKitServicesXPCService_completion___block_invoke_280;
      v128[3] = &unk_1E79D0E10;
      v129 = v17;
      v13 = v119;
      v132 = v119;
      v130 = v77;
      v131 = v12;
      [v131 snapshotDataForPassUniqueIdentifier:v15 size:v128 completion:{v91, v93}];
    }

    else
    {
      v13 = v119;
      (v119)[2](v119, v77);
    }
  }
}

id __97__PKCoreSpotlightUtilities_searchableItemForPass_passTiles_passKitServicesXPCService_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 paymentNetworkIdentifier];

  return PKDisplayablePaymentNetworkNameForPaymentCredentialType(v2);
}

uint64_t __97__PKCoreSpotlightUtilities_searchableItemForPass_passTiles_passKitServicesXPCService_completion___block_invoke_280(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setThumbnailData:a2];
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

+ (void)searchableItemForCardNumberFromPass:(id)a3 completion:(id)a4
{
  v110[12] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = MEMORY[0x1E6964E90];
    v109 = a4;
    v104 = a3;
    v6 = [[v5 alloc] initWithItemContentType:@"com.apple.pkpassdetail"];
    v7 = [v104 localizedDescription];
    v107 = v6;
    [v6 setDisplayName:v7];

    v13 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_ITEM_DESCRIPTION", 2, 0, v8, v9, v10, v11, v12, v90);
    [v6 setContentDescription:v13];

    v106 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_CARD_NUMBERS", 2, 0, v14, v15, v16, v17, v18, v91);
    v110[0] = v106;
    v105 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_INFO", 2, 0, v19, v20, v21, v22, v23, v92);
    v110[1] = v105;
    v103 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_NAME", 2, 0, v24, v25, v26, v27, v28, v93);
    v110[2] = v103;
    v34 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_CVV", 2, 0, v29, v30, v31, v32, v33, v94);
    v110[3] = v34;
    v40 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_CVC", 2, 0, v35, v36, v37, v38, v39, v95);
    v110[4] = v40;
    v46 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_SECURITY_CODE", 2, 0, v41, v42, v43, v44, v45, v96);
    v110[5] = v46;
    v52 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_CODE", 2, 0, v47, v48, v49, v50, v51, v97);
    v110[6] = v52;
    v58 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_EXPIRATION", 2, 0, v53, v54, v55, v56, v57, v98);
    v110[7] = v58;
    v64 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_EXPIRE", 2, 0, v59, v60, v61, v62, v63, v99);
    v110[8] = v64;
    v70 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_NETWORK", 2, 0, v65, v66, v67, v68, v69, v100);
    v110[9] = v70;
    v76 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_ADVANCED_FRAUD_PROTECTION", 2, 0, v71, v72, v73, v74, v75, v101);
    v110[10] = v76;
    v82 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SPOTLIGHT_CARD_ADVANCED_FRAUD_PROTECTION", 2, 0, v77, v78, v79, v80, v81, v102);
    v110[11] = v82;
    v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:12];

    v84 = v83;
    [v107 setKeywords:v83];
    v85 = [v104 groupingID];
    v86 = [v104 uniqueID];

    v87 = [a1 spotlightIdentifierForCardInformationUniqueIdentifier:v86];

    v88 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v87 domainIdentifier:v85 attributeSet:v107];
    v89 = [MEMORY[0x1E695DF00] distantFuture];
    [v88 setExpirationDate:v89];

    v109[2](v109, v88);
  }
}

+ (id)searchableItemForPaymentSetupProduct:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 productIdentifier];
  v6 = [a1 spotlightIdentifierForPaymentSetupProductIdentifier:v5];

  v7 = [objc_alloc(MEMORY[0x1E6964E90]) initWithItemContentType:@"com.apple.paymentsetupproduct"];
  [v7 setIdentifier:v6];
  v8 = [v4 displayName];
  [v7 setDisplayName:v8];

  v9 = [v4 localizedDescription];
  [v7 setContentDescription:v9];

  v10 = [v4 searchTerms];
  [v7 setKeywords:v10];

  v11 = [v4 imageAssetURLs];
  v12 = [v11 thumbnailImageUrl];
  [v7 setThumbnailURL:v12];

  v13 = [v4 partnerName];
  v14 = v13;
  if (v13)
  {
    v22[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v7 setOrganizations:v15];
  }

  v16 = [v4 imageAssets];
  v17 = [v16 thumbnailImage];

  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithCGImage:v17];
    [v7 setThumbnailData:v18];
  }

  v19 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:v7];
  v20 = [MEMORY[0x1E695DF00] distantFuture];
  [v19 setExpirationDate:v20];

  return v19;
}

+ (id)searchableItemForAccount:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 type] == 4)
  {
    v5 = [v4 accountIdentifier];
    v6 = [a1 spotlightIdentifierForAccountIdentifier:v5];

    v7 = [objc_alloc(MEMORY[0x1E6964E90]) initWithItemContentType:@"com.apple.pkaccount"];
    [v7 setIdentifier:v6];
    v13 = PKLocalizedFeatureString(@"SEARCH_DISPLAY_TITLE", 5, 0, v8, v9, v10, v11, v12, v48);
    [v7 setDisplayName:v13];

    v14 = [v4 savingsDetails];
    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wallet://%@/%@/%@", @"savings", @"details", @"accountNumbers"];
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
      [v7 setCardNumberActionURL:v16];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wallet://%@/%@", @"savings", @"details"];
      v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
      [v7 setCardDetailsActionURL:v18];

      v19 = [v14 contactNumber];

      if (v19)
      {
        v20 = [v14 contactNumber];
        v51[0] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
        [v7 setPhoneNumbers:v21];

        [v7 setSupportsPhoneCall:MEMORY[0x1E695E118]];
      }
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wallet://%@", @"savings"];
    v23 = [MEMORY[0x1E695DFF8] URLWithString:v22];
    [v7 setURL:v23];

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 supportsViewSavingsStatement])
    {
      v30 = PKLocalizedFeatureString(@"DOCUMENTS_STATEMENTS", 5, 0, v25, v26, v27, v28, v29, v49);
      [v24 addObject:v30];
    }

    if ([v4 supportsViewTaxDocuments])
    {
      v36 = PKLocalizedFeatureString(@"DOCUMENTS_TAX_FORMS", 5, 0, v31, v32, v33, v34, v35, v49);
      [v24 addObject:v36];
    }

    v37 = [v24 copy];
    [v7 setKeywords:v37];

    v38 = PKPassKitUIBundle();
    v39 = [v38 URLForResource:@"SAVINGS_Icon" withExtension:@"pdf"];

    v40 = CGPDFDocumentCreateWithURL(v39);
    if (v40)
    {
      v41 = v40;
      v42 = PKScreenScale();
      v43 = PKGetImageFromPDFDocument(v41, 180.0, 180.0, v42);
      v44 = [v43 imageData];
      [v7 setThumbnailData:v44];

      CGPDFDocumentRelease(v41);
    }

    v45 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:v7];
    v46 = [MEMORY[0x1E695DF00] distantFuture];
    [v45 setExpirationDate:v46];

    [PKAppIntentUtilities associateSearchableItem:v45 withEntityForAccount:v4];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0x14uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Unsupported account type for spotlight indexing", buf, 2u);
    }

    v45 = 0;
  }

  return v45;
}

+ (CGSize)_thumbnailImageSizeForSourceImageSize:(CGSize)result
{
  v3 = result.width / result.height;
  if (fabs(result.width / result.height + -1.0) >= 0.1)
  {
    if (result.height <= result.width)
    {
      if (result.width > 180.0)
      {
        result.width = 180.0;
      }

      result.height = ceil(result.width / v3);
    }

    else
    {
      if (result.height > 270.0)
      {
        result.height = 270.0;
      }

      result.width = ceil(v3 * result.height);
    }
  }

  else
  {
    if (result.width <= result.height)
    {
      result.width = result.height;
    }

    if (result.width > 180.0)
    {
      result.width = 180.0;
    }

    result.height = result.width;
  }

  return result;
}

+ (id)passUniqueIdentifierFromCardInformationSpotlightIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"card-information-"])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"card-information-" withString:&stru_1F227FD28];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)passUniqueIdentifierFromSpotlightIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"pass-"])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"pass-" withString:&stru_1F227FD28];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)transactionIdentifierFromSpotlightIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"transaction-"])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"transaction-" withString:&stru_1F227FD28];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)paymentSetupProductIdentifierFromSpotlightIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"payment-setup-product-"])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"payment-setup-product-" withString:&stru_1F227FD28];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)accountIdentifierFromSpotlightIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"account-"])
  {
    v4 = [v3 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"account-", "length"), &stru_1F227FD28}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_allPassFields:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 passType] || objc_msgSend(v3, "style") == 10 || objc_msgSend(v3, "style") == 9)
  {
    v4 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [v3 frontFieldBuckets];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __43__PKCoreSpotlightUtilities__allPassFields___block_invoke;
    v39[3] = &unk_1E79D0E38;
    v28 = v3;
    v8 = v3;
    v40 = v8;
    v9 = v6;
    v41 = v9;
    [v7 enumerateObjectsUsingBlock:v39];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v8 backFieldBuckets];
    v10 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v30 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v42 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * j);
                v20 = [v19 label];
                v21 = v20;
                if (v20)
                {
                  v22 = v20;
                }

                else
                {
                  v22 = [v19 key];
                }

                v23 = v22;

                v24 = [v19 value];
                v25 = v24;
                if (v23)
                {
                  v26 = v24 == 0;
                }

                else
                {
                  v26 = 1;
                }

                if (!v26)
                {
                  [v9 setObject:v24 forKey:v23];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v31 objects:v42 count:16];
            }

            while (v16);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v11);
    }

    v27 = v41;
    v4 = v9;

    v3 = v28;
  }

  return v4;
}

void __43__PKCoreSpotlightUtilities__allPassFields___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3 == 1 && [*(a1 + 32) style] == 4 && objc_msgSend(v5, "count") == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = *(a1 + 40);
    v9 = [v6 label];
    [v8 safelySetObject:v9 forKey:@"ORIGIN NAME"];

    v10 = *(a1 + 40);
    v11 = [v6 value];
    [v10 safelySetObject:v11 forKey:@"ORIGIN CODE"];

    v12 = *(a1 + 40);
    v13 = [v7 label];
    [v12 safelySetObject:v13 forKey:@"DESTINATION NAME"];

    v14 = *(a1 + 40);
    v15 = [v7 value];
    [v14 safelySetObject:v15 forKey:@"DESTINATION CODE"];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v5;
    v16 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v6);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v20 label];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = [v20 key];
          }

          v24 = v23;

          v25 = [v20 value];
          v26 = v25;
          if (v24)
          {
            v27 = v25 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            [*(a1 + 40) setObject:v25 forKey:v24];
          }
        }

        v17 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }
  }
}

+ (id)textContentAttributeForPass:(id)a3 passTiles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 passType])
  {
    if ([v5 passType] != 1)
    {
      goto LABEL_10;
    }

    v8 = [v5 secureElementPass];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_2;
    aBlock[3] = &unk_1E79CEC30;
    v9 = v7;
    v37 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [v8 availableActions];
    v10[2](v10, v11);

    v12 = [v8 actionGroups];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_4;
    v33[3] = &unk_1E79D0E88;
    v34 = v9;
    v35 = v10;
    v13 = v10;
    [v12 enumerateObjectsUsingBlock:v33];
  }

  else
  {
    v14 = [v5 frontFieldBuckets];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke;
    v38[3] = &unk_1E79D0E38;
    v15 = v5;
    v39 = v15;
    v16 = v7;
    v40 = v16;
    [v14 enumerateObjectsUsingBlock:v38];

    if ([v15 style] == 4 || objc_msgSend(v15, "style") == 10)
    {
      v17 = [v15 transitType] - 1;
      if (v17 <= 3)
      {
        v18 = PKLocalizedString(&off_1E79D0F28[v17]->isa, 0);
        [v16 addObject:v18];
      }
    }

    v8 = v39;
  }

LABEL_10:
  if ([v6 count])
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_5;
    v28[3] = &unk_1E79D0EB0;
    v29 = v7;
    v30 = v31;
    v19 = _Block_copy(v28);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_6;
    v26 = &unk_1E79D0ED8;
    v20 = v19;
    v27 = v20;
    [v6 enumerateObjectsUsingBlock:&v23];

    _Block_object_dispose(v31, 8);
  }

  if ([v7 count])
  {
    v21 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3 == 1 && [*(a1 + 32) style] == 4 && objc_msgSend(v5, "count") == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = *(a1 + 40);
    v9 = [v6 label];
    [v8 safelyAddObject:v9];

    v10 = *(a1 + 40);
    v11 = [v6 value];
    [v10 safelyAddObject:v11];

    v12 = *(a1 + 40);
    v13 = [v7 label];
    [v12 safelyAddObject:v13];

    v14 = *(a1 + 40);
    v15 = [v7 value];
    [v14 safelyAddObject:v15];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v5;
    v16 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v6);
          }

          v20 = *(a1 + 40);
          v21 = [*(*(&v22 + 1) + 8 * v19) value];
          [v20 safelyAddObject:v21];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }
}

void __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_3;
  v3[3] = &unk_1E79D0E60;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 isActionAvailable])
  {
    v3 = [v10 availableUntil];
    v4 = [MEMORY[0x1E695DF00] distantFuture];
    v5 = [v3 isDateEqualToDateIgnoringTime:v4];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v10 title];
      [v6 safelyAddObject:v7];

      v8 = *(a1 + 32);
      v9 = [v10 actionDescription];
      [v8 safelyAddObject:v9];
    }
  }
}

void __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 title];
  [v3 safelyAddObject:v5];

  v6 = *(a1 + 32);
  v7 = [v4 actionGroupDescription];
  [v6 safelyAddObject:v7];

  v8 = *(a1 + 40);
  v9 = [v4 actions];

  (*(v8 + 16))(v8, v9);
}

void __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metadata];
  v5 = [v4 type];

  v14 = [v3 state];

  v6 = [v14 type];
  if (v5 == 1)
  {
    if (!v6)
    {
      v7 = [v14 stateTypeDefault];
      v8 = *(a1 + 32);
      v9 = [v7 title];
      [v8 safelyAddObject:v9];

      v10 = *(a1 + 32);
      v11 = [v7 body];
      [v10 safelyAddObject:v11];
    }
  }

  else if (v6 == 2)
  {
    v12 = *(*(*(a1 + 40) + 8) + 24);

    if (v12)
    {
      return;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v13 = *(a1 + 32);
    v14 = PKLocalizedPaymentString(&cfstr_PassTileChecki.isa, 0);
    [v13 addObject:v14];
  }
}

void __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isGroupTile])
  {
    v4 = [v3 tiles];

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PKCoreSpotlightUtilities_textContentAttributeForPass_passTiles___block_invoke_7;
    v5[3] = &unk_1E79D0ED8;
    v6 = *(a1 + 32);
    [v4 enumerateObjectsUsingBlock:v5];

    v3 = v6;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)displayNameForPass:(id)a3
{
  v3 = PKDisplayTitleStringForPass(a3);
  v4 = [v3 pk_stringByNormalizingWhitespace];

  return v4;
}

+ (id)textContentAttributeForTransaction:(id)a3 passLocalizedDescription:(id)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [a1 searchKeywordForTransactionType:{objc_msgSend(v8, "transactionType")}];
  [v9 safelyAddObject:v10];

  v11 = PKLocalizedPaymentString(&cfstr_SearchKeywordT.isa, 0);
  [v9 safelyAddObject:v11];

  v12 = PKLocalizedPaymentString(&cfstr_SearchKeywordT_0.isa, 0);
  [v9 safelyAddObject:v12];

  v13 = [v7 pk_stringByNormalizingWhitespace];

  [v9 safelyAddObject:v13];
  v14 = PKLocalizedStringFromMerchantCategory([v8 effectiveTransactionCategory]);
  [v9 safelyAddObject:v14];

  v15 = [a1 searchKeywordForTransactionStatus:{objc_msgSend(v8, "transactionStatus")}];
  [v9 safelyAddObject:v15];

  v16 = [v8 currencyAmount];

  v17 = [v16 formattedStringValue];
  [v9 safelyAddObject:v17];

  if ([v9 count])
  {
    v18 = [v9 componentsJoinedByString:{@", "}];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)searchKeywordForTransactionStatus:(int64_t)a3
{
  if (a3 <= 7 && ((0xE5u >> a3) & 1) != 0)
  {
    v4 = PKLocalizedPaymentString(&off_1E79D0F48[a3]->isa, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)searchKeywordForTransactionType:(int64_t)a3
{
  if (a3 <= 0xD && ((0x2FF3u >> a3) & 1) != 0)
  {
    v4 = PKLocalizedPaymentString(&off_1E79D0F88[a3]->isa, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)addSemanticSearchableAttributes:(id)a3 toPass:(id)a4
{
  v74[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 allSemantics];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKCoreSpotlightUtilities_SemanticKeys__addSemanticSearchableAttributes_toPass___block_invoke;
  aBlock[3] = &unk_1E79D9E58;
  v8 = v7;
  v72 = v8;
  v9 = v5;
  v73 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v6 style];
  v12 = v11;
  if ((v11 == 10 || v11 == 4) && [v6 transitType] == 1)
  {
    v10[2](v10, @"departureGate", *MEMORY[0x1E6964100]);
    v10[2](v10, @"departureTerminal", *MEMORY[0x1E6964108]);
    v10[2](v10, @"departureAirportCode", *MEMORY[0x1E69640C8]);
    v10[2](v10, @"departureAirportName", *MEMORY[0x1E69640E0]);
    v10[2](v10, @"flightCode", *MEMORY[0x1E6964118]);
    v10[2](v10, @"airlineCode", *MEMORY[0x1E69640A8]);
    v10[2](v10, @"destinationGate", *MEMORY[0x1E6964078]);
    v10[2](v10, @"destinationTerminal", *MEMORY[0x1E6964080]);
    v10[2](v10, @"destinationAirportCode", *MEMORY[0x1E6964040]);
    v10[2](v10, @"destinationAirportName", *MEMORY[0x1E6964058]);
    v10[2](v10, @"confirmationNumber", *MEMORY[0x1E69640B8]);
    v13 = [v8 objectForKey:@"flightNumber"];
    v14 = [v13 numberValue];

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v14, "unsignedIntValue")];
      [v9 setFlightNumber:v15];
    }

    v16 = [v8 objectForKey:@"departureLocation"];
    v17 = [v16 locationValue];

    if (v17)
    {
      v18 = MEMORY[0x1E696AD98];
      [v17 coordinate];
      v20 = [v18 numberWithDouble:v19];
      [v9 setFlightDepartureAirportLongitude:v20];

      v21 = MEMORY[0x1E696AD98];
      [v17 coordinate];
      v22 = [v21 numberWithDouble:?];
      [v9 setFlightDepartureAirportLatitude:v22];
    }

    v68 = v17;
    v23 = [v8 objectForKey:@"destinationLocation"];
    v24 = [v23 locationValue];

    if (v24)
    {
      v25 = MEMORY[0x1E696AD98];
      [v24 coordinate];
      v27 = [v25 numberWithDouble:v26];
      [v9 setFlightArrivalAirportLongitude:v27];

      v28 = MEMORY[0x1E696AD98];
      [v24 coordinate];
      v29 = [v28 numberWithDouble:?];
      [v9 setFlightArrivalAirportLatitude:v29];
    }

    v69 = v14;
    v30 = [v8 objectForKey:@"passengerName"];
    v31 = [v30 personNameComponentsValue];

    if (v31)
    {
      v32 = v6;
      v33 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      v34 = [v33 stringFromPersonNameComponents:v31];
      v35 = v34;
      if (v34)
      {
        v74[0] = v34;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
        [v9 setFlightPassengerNames:v36];
      }

      v6 = v32;
    }

    v37 = [v8 objectForKey:@"currentBoardingDate"];
    v38 = [v37 dateValue];
    [v9 setFlightBoardingDateTime:v38];

    v39 = [v8 objectForKey:@"currentArrivalDate"];
    v40 = [v39 dateValue];
    [v9 setFlightArrivalDateTime:v40];

    v41 = [v8 objectForKey:@"currentDepartureDate"];
    v42 = [v41 dateValue];
    [v9 setFlightDepartureDateTime:v42];

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  if (v12 > 8)
  {
    if (v12 == 10)
    {
LABEL_28:
      v58 = [v6 seatingInformation];
      v59 = [v58 allSeats];
      v60 = [v59 pk_arrayBySafelyApplyingBlock:&__block_literal_global_143];

      if (v43)
      {
        [v9 setFlightPassengerSeatNumbers:v60];
      }

      else
      {
        [v9 setEventSeatNumbers:v60];
      }

      v61 = [v8 objectForKey:@"duration"];
      v62 = [v61 numberValue];

      if (v62)
      {
        [v62 doubleValue];
        [v9 setEventDuration:?];
      }

      v63 = [v8 objectForKey:@"totalPrice"];
      v64 = [v63 currencyAmountValue];

      if (v64)
      {
        v65 = [v64 currency];
        [v9 setCostCode:v65];

        v66 = [v64 amount];
        [v9 setCost:v66];

        v67 = [v64 formattedStringValue];
        [v9 setEventTotalCost:v67];
      }

      goto LABEL_36;
    }

    if (v12 != 9)
    {
      goto LABEL_36;
    }
  }

  else if (v12 != 2)
  {
    if (v12 != 4)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v70 = v6;
  v10[2](v10, @"eventName", *MEMORY[0x1E69641E8]);
  v10[2](v10, @"venueName", *MEMORY[0x1E6964250]);
  v10[2](v10, @"venueName", *MEMORY[0x1E6964020]);
  v44 = [v8 objectForKey:@"venueLocation"];
  v45 = [v44 locationValue];

  if (v45)
  {
    v46 = [v45 name];
    [v9 setNamedLocation:v46];

    v47 = MEMORY[0x1E696AD98];
    [v45 coordinate];
    v49 = [v47 numberWithDouble:v48];
    [v9 setLongitude:v49];

    v50 = MEMORY[0x1E696AD98];
    [v45 coordinate];
    v51 = [v50 numberWithDouble:?];
    [v9 setLatitude:v51];
  }

  v52 = [v8 objectForKey:@"eventStartDate"];
  v53 = [v52 dateValue];

  v54 = [v8 objectForKey:@"eventStartDateInfo"];
  v55 = [v54 eventDateInfoValue];
  v56 = [v55 date];

  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = v53;
  }

  [v9 setStartDate:v57];

  v6 = v70;
  if (((1 << v12) & 0x214) != 0)
  {
    goto LABEL_28;
  }

LABEL_36:
}

void __81__PKCoreSpotlightUtilities_SemanticKeys__addSemanticSearchableAttributes_toPass___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = [v5 stringValue];

  if (v6)
  {
    [*(a1 + 40) setAttribute:v6 forKey:v7];
  }
}

@end