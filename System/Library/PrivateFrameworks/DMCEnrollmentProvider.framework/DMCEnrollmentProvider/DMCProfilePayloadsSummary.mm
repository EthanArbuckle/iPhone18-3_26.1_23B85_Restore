@interface DMCProfilePayloadsSummary
+ (BOOL)_isInstalledMDMProfile:(id)profile;
+ (BOOL)_isMDMProfile:(id)profile;
+ (id)_consentModelWithProfileName:(id)name consentString:(id)string;
+ (id)_installedManagedAppIDs;
+ (id)_localizedPayloadSummaryByType:(id)type;
+ (id)_signedByStringFromProfile:(id)profile;
+ (id)_sortedPayloads:(id)payloads;
+ (id)_warningTextFromPayload:(id)payload;
+ (id)summaryForProfile:(id)profile showManagedPayloads:(BOOL)payloads dataSource:(unint64_t)source;
+ (void)_addObjectsOfClass:(Class)class fromArray:(id)array toArray:(id)toArray;
- (DMCProfilePayloadsSummary)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMCProfilePayloadsSummary

+ (id)summaryForProfile:(id)profile showManagedPayloads:(BOOL)payloads dataSource:(unint64_t)source
{
  payloadsCopy = payloads;
  v218 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v7 = objc_opt_new();
  v175 = objc_opt_new();
  if (payloadsCopy)
  {
    [profileCopy managedPayloads];
  }

  else
  {
    [profileCopy payloads];
  }
  v8 = ;

  v156 = v8;
  [v175 addObjectsFromArray:v8];
  v9 = [self _isMDMProfile:profileCopy];
  v10 = [self _isInstalledMDMProfile:profileCopy];
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [profileCopy payloadsOfKindOfClass:objc_opt_class()];
  firstObject = [v13 firstObject];

  assignedManagedAppleID = [firstObject assignedManagedAppleID];
  v16 = assignedManagedAppleID;
  if (assignedManagedAppleID)
  {
    managedAppleID = assignedManagedAppleID;
  }

  else
  {
    managedAppleID = [firstObject managedAppleID];
  }

  if ([managedAppleID length])
  {
    [v7 setManagedAppleID:managedAppleID];
  }

  [v7 setFinalInstallationWarningStyle:v9];
  v163 = v7;
  v170 = v11;
  v171 = profileCopy;
  v169 = v12;
  v158 = firstObject;
  v155 = managedAppleID;
  if ((v10 & payloadsCopy) == 1)
  {
    v181 = v9;
    [self _installedManagedAppIDs];
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v18 = v207 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v204 objects:v217 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v205;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v205 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v204 + 1) + 8 * i);
          v24 = [[DMCApplicationProxy alloc] initWithBundleID:v23 dataSource:source];
          v25 = [[DMCPayloadViewModel alloc] initWithManagedApp:v24];
          [v170 addObject:v25];
          v26 = [[DMCManagedAppPayload alloc] initWithManagedAppID:v23 profile:v171];
          [v175 addObject:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v204 objects:v217 count:16];
      }

      while (v20);
    }

    v27 = *DMCLogObjects();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v18 count];
      *buf = 134217984;
      v216 = v28;
      _os_log_impl(&dword_247E7D000, v27, OS_LOG_TYPE_DEFAULT, "DMCProfileViewModel: number of installed managed apps: %lu.", buf, 0xCu);
    }

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    _managedBooks = [self _managedBooks];
    v30 = [_managedBooks countByEnumeratingWithState:&v200 objects:v214 count:16];
    v9 = v181;
    if (v30)
    {
      v31 = v30;
      v32 = *v201;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v201 != v32)
          {
            objc_enumerationMutation(_managedBooks);
          }

          v34 = *(*(&v200 + 1) + 8 * j);
          v35 = [[DMCPayloadViewModel alloc] initWithManagedBook:v34];
          [v12 addObject:v35];
          v36 = [[DMCManagedBookPayload alloc] initWithBook:v34];
          [v175 addObject:v36];
        }

        v31 = [_managedBooks countByEnumeratingWithState:&v200 objects:v214 count:16];
      }

      while (v31);
    }

    v7 = v163;
    v11 = v170;
  }

  if ([v11 count])
  {
    v37 = [[DMCProfilePayloadSection alloc] initWithSectionTitle:0 footer:0 payloadViewModels:v11];
  }

  else
  {
    v37 = 0;
  }

  if ([v12 count])
  {
    v38 = [[DMCProfilePayloadSection alloc] initWithSectionTitle:0 footer:0 payloadViewModels:v12];
  }

  else
  {
    v38 = 0;
  }

  v154 = v37;
  if (v37)
  {
    v213 = v37;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v213 count:1];
    [v7 setManagedAppSections:v39];
  }

  else
  {
    [v7 setManagedAppSections:0];
  }

  v153 = v38;
  if (v38)
  {
    v212 = v38;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v212 count:1];
    [v7 setManagedBookSections:v40];
  }

  else
  {
    [v7 setManagedBookSections:0];
  }

  v41 = [self _sortedPayloads:v175];
  v42 = objc_alloc_init(MEMORY[0x277CCA940]);
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v43 = v41;
  v44 = [v43 countByEnumeratingWithState:&v196 objects:v211 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v197;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v197 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [v42 addObject:objc_opt_class()];
      }

      v45 = [v43 countByEnumeratingWithState:&v196 objects:v211 count:16];
    }

    while (v45);
  }

  v164 = v42;

  v162 = objc_opt_new();
  v160 = objc_opt_new();
  v159 = objc_opt_new();
  v165 = objc_opt_new();
  v157 = objc_opt_new();
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = v43;
  v176 = [obj countByEnumeratingWithState:&v192 objects:v210 count:16];
  v48 = 0;
  v49 = 0;
  if (v176)
  {
    v177 = 0;
    v180 = 0;
    v50 = 0;
    v51 = 0;
    v174 = *v193;
    v167 = *MEMORY[0x277D25E48];
    v52 = 2;
    if (v9)
    {
      v52 = 3;
    }

    v161 = v52;
    v53 = 0x278EE6000uLL;
    do
    {
      for (m = 0; m != v176; ++m)
      {
        v55 = v49;
        if (*v193 != v174)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v192 + 1) + 8 * m);
        v57 = objc_autoreleasePoolPush();
        v58 = objc_opt_class();
        v59 = [*(v53 + 1400) payloadTypeForPayloadClass:v58];
        if (v58 == objc_opt_class())
        {
          v49 = v55;
        }

        else
        {
          v182 = v56;
          v178 = [*(v53 + 1400) payloadViewModelsFromPayload:v56];
          if (v58 == objc_opt_class())
          {
            v60 = v57;
            v61 = v48;
            v62 = MEMORY[0x277D262C0];
            [v56 restrictions];
            v64 = v63 = v51;
            LODWORD(v62) = [v62 restrictedBoolForFeature:v167 withRestrictionsDictionary:v64];

            v51 = v63;
            v65 = v62 == 2;
            v48 = v61;
            v57 = v60;
            v53 = 0x278EE6000uLL;
            if (v65)
            {
              [v163 setFinalInstallationWarningStyle:v161];
            }
          }

          v66 = v59;
          if (v51 == v58)
          {
            v49 = v55;
          }

          else
          {
            v67 = v55;
            if (v48)
            {
              if (v51 == objc_opt_class())
              {
                v166 = v51;
                if (v55)
                {
                  v68 = *(v53 + 1400);
                  payloadViewModels = [(DMCProfilePayloadSection *)v55 payloadViewModels];
                  v70 = [v68 removeDuplicatesFromRestrictionPayloadViewModels:payloadViewModels];

                  v71 = [v70 mutableCopy];
                  [(DMCProfilePayloadSection *)v55 setPayloadViewModels:v71];

                  v67 = v55;
                }

                payloadViewModels2 = [(DMCProfilePayloadSection *)v67 payloadViewModels];
                v48 = [payloadViewModels2 count];

                v51 = v166;
              }

              v73 = v50;
              v74 = [v51 localizedDescriptionForPayloadCount:v48];
              if (v74)
              {
                [v165 addObject:v74];
              }

              if (v67)
              {
                v75 = v67;
                if ([v164 countForObject:v51] > 1)
                {
                  [v51 localizedPluralForm];
                }

                else
                {
                  [v51 localizedSingularForm];
                }
                v76 = ;
                [(DMCProfilePayloadSection *)v75 setSectionTitle:v76];

                v67 = v75;
                v77 = [self _warningTextFromPayload:v73];
                [(DMCProfilePayloadSection *)v75 setSectionFooter:v77];

                [v177 addObject:v75];
              }

              v50 = v73;
              v53 = 0x278EE6000;
            }

            v78 = objc_alloc_init(DMCProfilePayloadSection);

            v48 = 0;
            v49 = v78;
          }

          if (v180 != v66)
          {
            if ([v177 count] && (v180 - 2) >= 2)
            {
              v79 = v162;
              if (v180 != 1)
              {
                v79 = v160;
                if (v180 != 4)
                {
                  v79 = v159;
                }
              }

              [v79 addObjectsFromArray:v177];
            }

            v80 = objc_opt_new();

            v177 = v80;
          }

          v48 += [v178 count];
          payloadViewModels3 = [(DMCProfilePayloadSection *)v49 payloadViewModels];
          [payloadViewModels3 addObjectsFromArray:v178];

          v82 = v182;
          v180 = v66;
          v50 = v82;
          v51 = v58;
        }

        objc_autoreleasePoolPop(v57);
      }

      v176 = [obj countByEnumeratingWithState:&v192 objects:v210 count:16];
    }

    while (v176);
  }

  else
  {
    v177 = 0;
    v180 = 0;
    v50 = 0;
    v51 = 0;
  }

  v83 = v48;

  [(DMCProfilePayloadSection *)v49 payloadViewModels];
  v85 = v84 = v51;
  v86 = [v85 count];

  v87 = v171;
  v183 = v49;
  if (v86)
  {
    v88 = v84;
    if (v84)
    {
      if (v84 == objc_opt_class())
      {
        payloadViewModels4 = [(DMCProfilePayloadSection *)v49 payloadViewModels];
        v90 = [DMCPayloadViewModel removeDuplicatesFromRestrictionPayloadViewModels:payloadViewModels4];

        v91 = [v90 mutableCopy];
        [(DMCProfilePayloadSection *)v49 setPayloadViewModels:v91];

        payloadViewModels5 = [(DMCProfilePayloadSection *)v49 payloadViewModels];
        v83 = [payloadViewModels5 count];

        v88 = v84;
      }

      [v88 localizedDescriptionForPayloadCount:v83];
      v94 = v93 = v88;
      [v165 addObject:v94];
      v95 = [v93 localizedParenthesizedFormDescriptionForPayloadCount:{objc_msgSend(v164, "countForObject:", v93)}];
      [(DMCProfilePayloadSection *)v49 setSectionTitle:v95];
      v96 = [self _warningTextFromPayload:v50];
      [(DMCProfilePayloadSection *)v183 setSectionFooter:v96];

      [v177 addObject:v183];
    }
  }

  v179 = v50;
  if ([v177 count] && (v180 - 2) >= 2)
  {
    v97 = v160;
    if (v180 != 4)
    {
      v97 = v159;
    }

    if (v180 == 1)
    {
      v98 = v162;
    }

    else
    {
      v98 = v97;
    }

    [v98 addObjectsFromArray:v177];
  }

  if (source != 1)
  {
    signerCertificates = [v171 signerCertificates];
    v100 = objc_opt_new();
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v101 = signerCertificates;
    v102 = [v101 countByEnumeratingWithState:&v188 objects:v209 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v189;
      do
      {
        for (n = 0; n != v103; ++n)
        {
          if (*v189 != v104)
          {
            objc_enumerationMutation(v101);
          }

          v106 = *(*(&v188 + 1) + 8 * n);
          null = [MEMORY[0x277CBEB68] null];
          v108 = [v106 isEqual:null];

          if ((v108 & 1) == 0)
          {
            [v100 addObject:v106];
          }
        }

        v103 = [v101 countByEnumeratingWithState:&v188 objects:v209 count:16];
      }

      while (v103);
    }

    objc_opt_class();
    v87 = v171;
    if ((objc_opt_isKindOfClass() & 1) == 0 && [v100 count])
    {
      if ([v100 count] <= 1)
      {
        v109 = @"DMC_SIGNING_CERTIFICATE";
      }

      else
      {
        v109 = @"DMC_SIGNING_CERTIFICATES";
      }

      v110 = DMCEnrollmentLocalizedString(v109);
      v111 = [[DMCProfilePayloadSection alloc] initWithSectionTitle:v110 footer:0 payloadViewModels:v100];
      [v159 addObject:v111];
    }
  }

  localizedManagedProfileConsentTexts = [v87 localizedManagedProfileConsentTexts];
  v113 = v157;
  if ([localizedManagedProfileConsentTexts count])
  {
    v114 = objc_opt_new();
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v115 = localizedManagedProfileConsentTexts;
    v116 = [v115 countByEnumeratingWithState:&v184 objects:v208 count:16];
    if (v116)
    {
      v117 = v116;
      v118 = *v185;
      do
      {
        for (ii = 0; ii != v117; ++ii)
        {
          if (*v185 != v118)
          {
            objc_enumerationMutation(v115);
          }

          v120 = *(*(&v184 + 1) + 8 * ii);
          v121 = [v115 objectForKeyedSubscript:v120];
          v122 = [self _consentModelWithProfileName:v120 consentString:v121];

          [v114 addObject:v122];
        }

        v117 = [v115 countByEnumeratingWithState:&v184 objects:v208 count:16];
      }

      while (v117);
    }

    if ([v115 count] <= 1)
    {
      v123 = @"DMC_CONSENT_NOTICE";
    }

    else
    {
      v123 = @"DMC_CONSENT_NOTICES";
    }

    v124 = DMCEnrollmentLocalizedString(v123);
    v125 = [[DMCProfilePayloadSection alloc] initWithSectionTitle:v124 footer:0 payloadViewModels:v114];
    [v159 addObject:v125];
    if ([v115 count] >= 2)
    {
      v126 = MEMORY[0x277CCACA8];
      v127 = DMCEnrollmentLocalizedString(@"DMC_CONSENT_NOTICES_%@");
      v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v115, "count")}];
      v128 = [v126 stringWithFormat:v127, v128];

      v124 = v128;
    }

    v113 = v157;
    [v165 addObject:v124];
  }

  v130 = [DMCEnrollmentFlowManagedConfigurationHelper organizationNameFromProfile:v171 payload:v158];
  v131 = [DMCProfileInfoSection alloc];
  v132 = DMCEnrollmentLocalizedString(@"DMC_ORGANIZATION");
  v133 = [(DMCProfileInfoSection *)v131 initWithSectionTitle:v132 footer:0 text:v130];
  [v113 addObject:v133];

  v134 = MEMORY[0x277CCACA8];
  v135 = DMCEnrollmentLocalizedString(@"DMC_SIGNED_BY");
  v135 = [v134 stringWithFormat:@"%@ ", v135];

  v137 = [self _signedByStringFromProfile:v171];
  v138 = [[DMCProfileInfoSection alloc] initWithSectionTitle:v135 footer:0 attributedText:v137];
  [v113 addObject:v138];

  localizedConsentText = [v171 localizedConsentText];
  v140 = [localizedConsentText length];

  if (v140)
  {
    v141 = MEMORY[0x277CCACA8];
    v142 = DMCEnrollmentLocalizedString(@"DMC_INSTALL_CONSENT_MESSAGE_FROM_%@");
    v130 = [v141 stringWithFormat:v142, v130];

    v144 = [DMCProfileInfoSection alloc];
    localizedConsentText2 = [v171 localizedConsentText];
    v146 = [(DMCProfileInfoSection *)v144 initWithSectionTitle:v130 footer:0 text:localizedConsentText2];
    [v113 addObject:v146];
  }

  if ([v162 count])
  {
    v147 = v162;
  }

  else
  {
    v147 = 0;
  }

  [v163 setAccountSections:v147];
  if ([v159 count])
  {
    v148 = v159;
  }

  else
  {
    v148 = 0;
  }

  [v163 setMoreDetailsSections:v148];
  if ([v160 count])
  {
    v149 = v160;
  }

  else
  {
    v149 = 0;
  }

  [v163 setRestrictionSections:v149];
  if ([v165 count])
  {
    v150 = v165;
  }

  else
  {
    v150 = 0;
  }

  [v163 setPayloadInfoSectionSummaries:v150];
  [v163 setByodInfoSections:v113];
  v151 = v163;

  return v163;
}

+ (BOOL)_isInstalledMDMProfile:(id)profile
{
  profileCopy = profile;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  unverifiedInstalledMDMProfileIdentifier = [mEMORY[0x277D262A0] unverifiedInstalledMDMProfileIdentifier];

  if ([self _isMDMProfile:profileCopy])
  {
    identifier = [profileCopy identifier];
    v8 = [identifier isEqualToString:unverifiedInstalledMDMProfileIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isMDMProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isMDMProfile = [profileCopy isMDMProfile];
  }

  else
  {
    isMDMProfile = 0;
  }

  return isMDMProfile;
}

+ (id)_installedManagedAppIDs
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D24678] managedAppIDsExcludeDDMApps:1];
  if ([v2 count])
  {
    v3 = objc_opt_new();
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([defaultWorkspace applicationIsInstalled:{v10, v12}])
          {
            [v3 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

+ (id)_sortedPayloads:(id)payloads
{
  v54 = *MEMORY[0x277D85DE8];
  payloadsCopy = payloads;
  if ([payloadsCopy count])
  {
    if (!_sortedPayloads__classSortOrder)
    {
      v48 = MEMORY[0x277CBEA60];
      v47 = objc_opt_class();
      v46 = objc_opt_class();
      v45 = objc_opt_class();
      v44 = objc_opt_class();
      v43 = objc_opt_class();
      v42 = objc_opt_class();
      v41 = objc_opt_class();
      v40 = objc_opt_class();
      v39 = objc_opt_class();
      v38 = objc_opt_class();
      v37 = objc_opt_class();
      v36 = objc_opt_class();
      v35 = objc_opt_class();
      v34 = objc_opt_class();
      v33 = objc_opt_class();
      v32 = objc_opt_class();
      v31 = objc_opt_class();
      v30 = objc_opt_class();
      v29 = objc_opt_class();
      v28 = objc_opt_class();
      v27 = objc_opt_class();
      v26 = objc_opt_class();
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v48 arrayWithObjects:{v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
      v14 = _sortedPayloads__classSortOrder;
      _sortedPayloads__classSortOrder = v13;
    }

    v15 = [payloadsCopy mutableCopy];
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(payloadsCopy, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v17 = _sortedPayloads__classSortOrder;
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v50;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [self _addObjectsOfClass:*(*(&v49 + 1) + 8 * i) fromArray:v15 toArray:v16];
        }

        v19 = [v17 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v19);
    }

    while ([v15 count])
    {
      v22 = [v15 objectAtIndex:0];
      v23 = objc_opt_class();

      [self _addObjectsOfClass:v23 fromArray:v15 toArray:v16];
    }

    v24 = [v16 copy];
  }

  else
  {
    v24 = payloadsCopy;
  }

  return v24;
}

+ (void)_addObjectsOfClass:(Class)class fromArray:(id)array toArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  if ([arrayCopy count] && objc_msgSend(arrayCopy, "count"))
  {
    v8 = 0;
    do
    {
      if (v8 >= [arrayCopy count])
      {
        break;
      }

      v9 = [arrayCopy objectAtIndex:v8];
      if (objc_opt_isKindOfClass() & 1) == 0 || objc_opt_class() == class && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        ++v8;
      }

      else
      {
        [toArrayCopy addObject:v9];
        [arrayCopy removeObjectAtIndex:v8];
      }
    }

    while ([arrayCopy count]);
  }
}

+ (id)_localizedPayloadSummaryByType:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(typeCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = typeCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = objc_opt_class();
      if (v13 != objc_opt_class())
      {
        if (v10 == v13)
        {
          ++v9;
        }

        else
        {
          if (v10 && v9)
          {
            v14 = [v10 localizedDescriptionForPayloadCount:{v9, v16}];
            [v4 addObject:v14];
          }

          v9 = 1;
          v10 = v13;
        }
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);

  if (v10 && v9)
  {
    v7 = [v10 localizedDescriptionForPayloadCount:v9];
    [v4 addObject:v7];
LABEL_18:
  }

  return v4;
}

+ (id)_warningTextFromPayload:(id)payload
{
  installationWarnings = [payload installationWarnings];
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__DMCProfilePayloadsSummary__warningTextFromPayload___block_invoke;
  v9[3] = &unk_278EE7EF0;
  v10 = v4;
  v5 = v4;
  [installationWarnings enumerateObjectsUsingBlock:v9];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void __53__DMCProfilePayloadsSummary__warningTextFromPayload___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  v5 = *(a1 + 32);
  v6 = [v7 localizedBody];
  [v5 appendString:v6];
}

+ (id)_signedByStringFromProfile:(id)profile
{
  profileCopy = profile;
  signerSummary = [profileCopy signerSummary];
  if (![(__CFString *)signerSummary length])
  {

    signerSummary = &stru_2859FB650;
  }

  v5 = objc_opt_new();
  if ([profileCopy isSigned])
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ · ", signerSummary];
    v8 = [v6 initWithString:v7];
    [v5 appendAttributedString:v8];
  }

  v9 = [DMCProfileViewModel trustTextForProfile:profileCopy];
  if (v9)
  {
    [v5 appendAttributedString:v9];
  }

  return v5;
}

+ (id)_consentModelWithProfileName:(id)name consentString:(id)string
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D26250];
  stringCopy = string;
  nameCopy = name;
  v8 = [[v5 alloc] initWithLocalizedString:0 localizedKey:stringCopy];

  v9 = MEMORY[0x277D26258];
  v17[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 sectionWithKeyValues:v10];

  v12 = DMCEnrollmentLocalizedString(@"DMC_CONSENT_NOTICE");
  [v11 setSectionTitle:v12];

  v13 = objc_opt_new();
  [v13 setType:5];
  [v13 setTitle:nameCopy];
  [v13 setFriendlyName:nameCopy];

  [v13 setShowIcon:0];
  [v13 setHasDetails:1];
  v16 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [v13 setPayloadDescriptionKeyValueSections:v14];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  managedAppleID = [(DMCProfilePayloadsSummary *)self managedAppleID];
  [coderCopy encodeObject:managedAppleID forKey:@"managedAppleID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMCProfilePayloadsSummary finalInstallationWarningStyle](self, "finalInstallationWarningStyle")}];
  [coderCopy encodeObject:v6 forKey:@"finalInstallationWarningStyle"];

  accountSections = [(DMCProfilePayloadsSummary *)self accountSections];
  [coderCopy encodeObject:accountSections forKey:@"accountSections"];

  managedAppSections = [(DMCProfilePayloadsSummary *)self managedAppSections];
  [coderCopy encodeObject:managedAppSections forKey:@"managedAppSections"];

  managedBookSections = [(DMCProfilePayloadsSummary *)self managedBookSections];
  [coderCopy encodeObject:managedBookSections forKey:@"managedBookSections"];

  moreDetailsSections = [(DMCProfilePayloadsSummary *)self moreDetailsSections];
  [coderCopy encodeObject:moreDetailsSections forKey:@"moreDetailsSections"];

  restrictionSections = [(DMCProfilePayloadsSummary *)self restrictionSections];
  [coderCopy encodeObject:restrictionSections forKey:@"restrictionSections"];

  byodInfoSections = [(DMCProfilePayloadsSummary *)self byodInfoSections];
  [coderCopy encodeObject:byodInfoSections forKey:@"byodInfoSections"];

  payloadInfoSectionSummaries = [(DMCProfilePayloadsSummary *)self payloadInfoSectionSummaries];
  [coderCopy encodeObject:payloadInfoSectionSummaries forKey:@"payloadInfoSectionSummaries"];
}

- (DMCProfilePayloadsSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = DMCProfilePayloadsSummary;
  v5 = [(DMCProfilePayloadsSummary *)&v46 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"managedAppleID"];
    managedAppleID = v5->_managedAppleID;
    v5->_managedAppleID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finalInstallationWarningStyle"];
    v5->_finalInstallationWarningStyle = [v9 integerValue];

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"accountSections"];
    accountSections = v5->_accountSections;
    v5->_accountSections = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"managedAppSections"];
    managedAppSections = v5->_managedAppSections;
    v5->_managedAppSections = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"managedBookSections"];
    managedBookSections = v5->_managedBookSections;
    v5->_managedBookSections = v23;

    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"moreDetailsSections"];
    moreDetailsSections = v5->_moreDetailsSections;
    v5->_moreDetailsSections = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"restrictionSections"];
    restrictionSections = v5->_restrictionSections;
    v5->_restrictionSections = v33;

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"byodInfoSections"];
    byodInfoSections = v5->_byodInfoSections;
    v5->_byodInfoSections = v38;

    v40 = MEMORY[0x277CBEB98];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"payloadInfoSectionSummaries"];
    payloadInfoSectionSummaries = v5->_payloadInfoSectionSummaries;
    v5->_payloadInfoSectionSummaries = v43;
  }

  return v5;
}

@end