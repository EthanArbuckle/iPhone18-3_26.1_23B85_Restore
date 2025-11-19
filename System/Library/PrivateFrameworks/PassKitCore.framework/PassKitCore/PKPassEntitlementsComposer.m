@interface PKPassEntitlementsComposer
+ (unint64_t)isOwnerPass:(id)a3;
- (BOOL)canAllowResharing;
- (BOOL)preferDetailedCapabilityDisplay;
- (NSArray)composeSharedEntitlements;
- (PKPassEntitlementsComposer)initWithMyEntitlements:(id)a3 predefinedSharedEntitlements:(id)a4;
- (PKPassEntitlementsComposer)initWithRedeemableSharedEntitlements:(id)a3 predefinedSharedEntitlements:(id)a4;
- (PKPassEntitlementsComposerPredefinedSelectionEntry)activePredefinedSelectionEntry;
- (id)_allPossibleCapabilitySetsForView:(id)a3;
- (id)addPredefinedSharedEntitlementSelection:(id)a3;
- (id)localizedSelectedEntitlementSummaryForAccessType:(int64_t)a3;
- (id)viewFor:(id)a3;
- (id)viewForEnabledEntitlements;
- (unsigned)_initWithSharedEntitlements:(void *)a3 availableEntitlements:(void *)a4 predefinedSharedEntitlements:(unsigned __int8)a5 editable:(unsigned __int8)a6 isMyEntitlements:;
- (void)_rootEntryNodeDidSetEnabled:(id)a3;
- (void)setPossiblePredefinedSharedEntitlementSelection:(id)a3;
@end

@implementation PKPassEntitlementsComposer

+ (unint64_t)isOwnerPass:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  [a3 paymentApplications];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = v32 = 0u;
  v22 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  v4 = 0;
  if (v22)
  {
    v5 = *v30;
    v24 = v3;
    v21 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v23 = v6;
        v7 = *(*(&v29 + 1) + 8 * v6);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [v7 subcredentials];
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v25 + 1) + 8 * i) entitlement];
              v14 = [v13 activeCapabilityRole];
              v15 = [v14 unsignedIntegerValue];

              if (!v4)
              {
                v4 = 2;
              }

              if (v15)
              {
                v16 = [[PKPassEntitlementCapabilitySet alloc] initWithIntRole:v15];
                v17 = [(PKPassEntitlementCapabilitySet *)v16 isOwner];

                if (v17)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v18 = [v13 activeShareability];
                v19 = [v18 unsignedIntegerValue];

                if (v19)
                {
LABEL_22:

                  v4 = 1;
                  v3 = v24;
                  goto LABEL_23;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v6 = v23 + 1;
        v3 = v24;
        v5 = v21;
      }

      while (v23 + 1 != v22);
      v22 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

LABEL_23:

  return v4;
}

- (PKPassEntitlementsComposer)initWithRedeemableSharedEntitlements:(id)a3 predefinedSharedEntitlements:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = a4;
  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if (v5)
  {
    v28 = [v5 pk_arrayBySafelyApplyingBlock:&__block_literal_global_279];
  }

  else
  {
    v28 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 sharedEntitlement];
        v12 = objc_alloc_init(PKPassEntitlement);
        v13 = [v11 entitlementIdentifier];
        [(PKPassEntitlement *)v12 setIdentifier:v13];

        v14 = [v11 timeConfiguration];
        [(PKPassEntitlement *)v12 setTimeConfiguration:v14];

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "recipientShareability")}];
        v39 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        [(PKPassEntitlement *)v12 setShareability:v16];

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "recipientShareability")}];
        [(PKPassEntitlement *)v12 setActiveShareability:v17];

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "recipientVisibility")}];
        v38 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [(PKPassEntitlement *)v12 setVisibility:v19];

        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "recipientVisibility")}];
        [(PKPassEntitlement *)v12 setActiveVisibility:v20];

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "recipientManageability")}];
        v37 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [(PKPassEntitlement *)v12 setManageability:v22];

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "recipientManageability")}];
        [(PKPassEntitlement *)v12 setActiveManageability:v23];

        v24 = [v11 recipientCapabilityRole];
        [(PKPassEntitlement *)v12 setActiveCapabilityRole:v24];

        v25 = [v10 copy];
        [v25 replaceSharedEntitlementWithEntitlement:v12];
        [v32 addObject:v25];
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v7);
  }

  v26 = [(PKPassEntitlementsComposer *)self _initWithSharedEntitlements:v28 availableEntitlements:v32 predefinedSharedEntitlements:v30 editable:0 isMyEntitlements:1u];
  return v26;
}

- (unsigned)_initWithSharedEntitlements:(void *)a3 availableEntitlements:(void *)a4 predefinedSharedEntitlements:(unsigned __int8)a5 editable:(unsigned __int8)a6 isMyEntitlements:
{
  v182 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_119;
  }

  v153.receiver = a1;
  v153.super_class = PKPassEntitlementsComposer;
  v14 = objc_msgSendSuper2(&v153, sel_init);
  if (v14)
  {
    v123 = v11;
    v15 = [v11 copy];
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;

    v122 = v12;
    v17 = [v12 copy];
    v18 = *(v14 + 2);
    *(v14 + 2) = v17;

    v121 = a5;
    v14[97] = a5;
    v14[96] = a6;
    v19 = +[PKPassEntitlementCapabilitySet predefinedSets];
    v20 = *(v14 + 6);
    *(v14 + 6) = v19;

    v135 = [*(v14 + 1) pk_indexDictionaryByApplyingBlock:&__block_literal_global_289_0];
    v21 = [*(v14 + 2) pk_indexDictionaryByApplyingBlock:&__block_literal_global_292];
    v137 = [v21 mutableCopy];

    v129 = [*(v14 + 2) mutableCopy];
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v22 = *(v14 + 1);
    v23 = [v22 countByEnumeratingWithState:&v170 objects:v181 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v171;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v171 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v170 + 1) + 8 * i);
          v28 = [v27 entitlementIdentifier];
          v29 = [v137 objectForKeyedSubscript:v28];

          if (!v29)
          {
            v30 = [PKDisplayablePassEntitlement localizedEntitlementFromCarKeySharedEntitlement:v27];
            [v129 safelyAddObject:v30];
            [v137 setObject:v30 forKeyedSubscript:v28];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v170 objects:v181 count:16];
      }

      while (v24);
    }

    v31 = [v129 copy];
    v32 = *(v14 + 2);
    *(v14 + 2) = v31;

    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v33 = *(v14 + 1);
    v34 = [v33 countByEnumeratingWithState:&v166 objects:v180 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v167;
      v38 = 1;
      while (1)
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v167 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v40 = [*(*(&v166 + 1) + 8 * j) timeConfiguration];
          v41 = v40;
          if (v38)
          {
            v42 = v40;

            v36 = v42;
          }

          else if (v36 && v40)
          {
            if (([v36 isEqual:v40] & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (v36 != v40)
          {
LABEL_27:

            v43 = 1;
LABEL_29:
            v131 = v43;

            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v44 = *(v14 + 1);
            v45 = [v44 countByEnumeratingWithState:&v162 objects:v179 count:16];
            v124 = v13;
            v125 = v36;
            if (!v45)
            {
              v132 = 1;
              v120 = -1;
              v127 = -1;
              v128 = -1;
              v126 = -1;
              goto LABEL_62;
            }

            v46 = v45;
            v47 = *v163;
            v48 = -1;
            v127 = -1;
            v128 = -1;
            v126 = -1;
LABEL_31:
            v49 = 0;
            while (1)
            {
              if (*v163 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v50 = *(*(&v162 + 1) + 8 * v49);
              v51 = [v50 recipientShareability];
              v52 = v126;
              v53 = v126 == -1;
              if (v126 == -1)
              {
                v54 = v51;
              }

              else
              {
                v54 = v126;
              }

              v126 = v54;
              v55 = v52 == v51 || v53;
              v56 = [v50 recipientVisibility];
              v57 = v127;
              v58 = v127 == -1;
              if (v127 == -1)
              {
                v59 = v56;
              }

              else
              {
                v59 = v127;
              }

              v127 = v59;
              v60 = v57 == v56 || v58;
              v61 = [v50 recipientManageability];
              v62 = v128;
              v63 = v128 == -1;
              if (v128 == -1)
              {
                v64 = v61;
              }

              else
              {
                v64 = v128;
              }

              v128 = v64;
              if (v62 == v61)
              {
                v63 = 1;
              }

              v65 = v63 & v60 & v55;
              v66 = [v50 intraAccountSharingEnabled];
              if (v48 == -1)
              {
                v36 = v125;
                if ((v65 & 1) == 0)
                {
                  v120 = v66;
                  v132 = 0;
LABEL_62:

                  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v68 = *(v14 + 10);
                  *(v14 + 10) = v67;

                  v69 = [[PKPassEntitlementsComposerEntryNode alloc] initWithIdentifier:@"Global" parentEntitlementComposer:v14];
                  v70 = *(v14 + 7);
                  *(v14 + 7) = v69;

                  [*(v14 + 7) setTimeConfiguration:v36];
                  [*(v14 + 10) addObject:*(v14 + 7)];
                  v71 = [MEMORY[0x1E696AD18] pk_createStrongPointerPersonalityToStrongObjects];
                  v72 = *(v14 + 8);
                  *(v14 + 8) = v71;

                  v133 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v160 = 0u;
                  v161 = 0u;
                  v158 = 0u;
                  v159 = 0u;
                  obj = *(v14 + 2);
                  v73 = [obj countByEnumeratingWithState:&v158 objects:v178 count:16];
                  if (v73)
                  {
                    v74 = v73;
                    v134 = *v159;
                    do
                    {
                      for (k = 0; k != v74; ++k)
                      {
                        if (*v159 != v134)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v76 = *(*(&v158 + 1) + 8 * k);
                        v77 = [v76 entitlementIdentifier];
                        v78 = [v135 objectForKeyedSubscript:v77];
                        if (v78 || v14[97] == 1)
                        {
                          v79 = [[PKPassEntitlementsComposerEntry alloc] initWithDisplayableEntitlement:v76 parentEntitlementComposer:v14];
                          v80 = v78;
                          if (!v78)
                          {
                            v81 = [v76 entitlement];
                            if (v81)
                            {
                              v82 = [[PKPassSharedEntitlement alloc] initWithEntitlement:v81];
                            }

                            else
                            {
                              v82 = [v76 sharedEntitlement];
                            }

                            v80 = v82;
                          }

                          v83 = [v80 copy];
                          [v79 setSharedEntitlement:v83];

                          [v133 addObject:v79];
                          v84 = [[PKPassEntitlementsComposerEntitlementEntryNode alloc] initWithDisplayableEntitlement:v76 sharedEntitlement:v80 parentEntitlementComposer:v14];
                          [(PKPassEntitlementsComposerEntryNode *)v84 setParent:*(v14 + 7)];
                          [(PKPassEntitlementsComposerEntryNode *)v84 setEnabled:v78 != 0];
                          if (v131)
                          {
                            v85 = [v80 timeConfiguration];
                            v86 = [v85 copy];
                            [(PKPassEntitlementsComposerEntryNode *)v84 setTimeConfiguration:v86];
                          }

                          if ((v132 & 1) == 0)
                          {
                            if (v78)
                            {
                              -[PKPassEntitlementsComposerEntryNode setShareability:](v84, "setShareability:", [v80 recipientShareability]);
                              -[PKPassEntitlementsComposerEntryNode setVisibility:](v84, "setVisibility:", [v80 recipientVisibility]);
                              -[PKPassEntitlementsComposerEntryNode setManageability:](v84, "setManageability:", [v80 recipientManageability]);
                              -[PKPassEntitlementsComposerEntryNode setIntraAccountSharingEnabled:](v84, "setIntraAccountSharingEnabled:", [v80 intraAccountSharingEnabled]);
                            }

                            else
                            {
                              [(PKPassEntitlementsComposerEntryNode *)v84 resetCapabilities];
                            }
                          }

                          v87 = [*(v14 + 7) children];
                          [v87 addObject:v84];

                          [*(v14 + 8) setObject:v84 forKey:v79];
                        }
                      }

                      v74 = [obj countByEnumeratingWithState:&v158 objects:v178 count:16];
                    }

                    while (v74);
                  }

                  if (v132)
                  {
                    v88 = [*(v14 + 1) count];
                    v89 = *(v14 + 7);
                    if (v88)
                    {
                      [v89 setShareability:v126];
                      [*(v14 + 7) setVisibility:v127];
                      [*(v14 + 7) setManageability:v128];
                      [*(v14 + 7) setIntraAccountSharingEnabled:v120 == 1];
                    }

                    else
                    {
                      [v89 resetCapabilities];
                    }
                  }

                  v90 = [v133 copy];
                  v91 = [v90 sortedArrayUsingComparator:&__block_literal_global_302];
                  v92 = *(v14 + 4);
                  *(v14 + 4) = v91;

                  v93 = [v133 pk_indexDictionaryByApplyingBlock:&__block_literal_global_305_0];
                  v94 = *(v14 + 3);
                  *(v14 + 3) = v93;

                  *(v14 + 11) = [v133 count];
                  v154 = 0u;
                  v155 = 0u;
                  v156 = 0u;
                  v157 = 0u;
                  v95 = *(v14 + 10);
                  v96 = [v95 countByEnumeratingWithState:&v154 objects:v177 count:16];
                  if (v96)
                  {
                    v97 = v96;
                    v98 = *v155;
                    do
                    {
                      for (m = 0; m != v97; ++m)
                      {
                        if (*v155 != v98)
                        {
                          objc_enumerationMutation(v95);
                        }

                        [*(*(&v154 + 1) + 8 * m) setEditable:v14[97]];
                      }

                      v97 = [v95 countByEnumeratingWithState:&v154 objects:v177 count:16];
                    }

                    while (v97);
                  }

                  v138 = [v14 composeSharedEntitlements];
                  v14[97] = 1;
                  v149 = 0u;
                  v150 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v100 = *(v14 + 10);
                  v101 = [v100 countByEnumeratingWithState:&v149 objects:v176 count:16];
                  if (v101)
                  {
                    v102 = v101;
                    v103 = *v150;
                    do
                    {
                      for (n = 0; n != v102; ++n)
                      {
                        if (*v150 != v103)
                        {
                          objc_enumerationMutation(v100);
                        }

                        [*(*(&v149 + 1) + 8 * n) setEditable:1];
                      }

                      v102 = [v100 countByEnumeratingWithState:&v149 objects:v176 count:16];
                    }

                    while (v102);
                  }

                  [v14 setPossiblePredefinedSharedEntitlementSelection:v124];
                  v147 = 0u;
                  v148 = 0u;
                  v145 = 0u;
                  v146 = 0u;
                  v136 = [v14 predefinedEntitlementEntries];
                  v105 = [v136 countByEnumeratingWithState:&v145 objects:v175 count:16];
                  if (v105)
                  {
                    v106 = v105;
                    v107 = *v146;
                    while (2)
                    {
                      for (ii = 0; ii != v106; ++ii)
                      {
                        if (*v146 != v107)
                        {
                          objc_enumerationMutation(v136);
                        }

                        v109 = *(*(&v145 + 1) + 8 * ii);
                        v110 = [v109 predefinedSelection];
                        v111 = [v110 sharedEntitlements];

                        v112 = [v111 count];
                        v143[0] = MEMORY[0x1E69E9820];
                        v143[1] = 3221225472;
                        v143[2] = __135__PKPassEntitlementsComposer__initWithSharedEntitlements_availableEntitlements_predefinedSharedEntitlements_editable_isMyEntitlements___block_invoke;
                        v143[3] = &unk_1E79E2AF8;
                        v144 = v138;
                        if (v112 == [v111 pk_countObjectsPassingTest:v143])
                        {
                          v113 = [v14 viewForPredefined:v109];
                          [v113 setEnabled:1];

                          goto LABEL_111;
                        }
                      }

                      v106 = [v136 countByEnumeratingWithState:&v145 objects:v175 count:16];
                      if (v106)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_111:

                  v14[97] = v121;
                  v139 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v142 = 0u;
                  v114 = *(v14 + 10);
                  v115 = [v114 countByEnumeratingWithState:&v139 objects:v174 count:16];
                  v12 = v122;
                  if (v115)
                  {
                    v116 = v115;
                    v117 = *v140;
                    do
                    {
                      for (jj = 0; jj != v116; ++jj)
                      {
                        if (*v140 != v117)
                        {
                          objc_enumerationMutation(v114);
                        }

                        [*(*(&v139 + 1) + 8 * jj) setEditable:v14[97]];
                      }

                      v116 = [v114 countByEnumeratingWithState:&v139 objects:v174 count:16];
                    }

                    while (v116);
                  }

                  v11 = v123;
                  v13 = v124;
                  goto LABEL_119;
                }

                v48 = v66;
              }

              else
              {
                v36 = v125;
                if (((v48 == v66) & v65) != 1)
                {
                  v132 = 0;
LABEL_59:
                  v120 = v48;
                  goto LABEL_62;
                }
              }

              if (v46 == ++v49)
              {
                v46 = [v44 countByEnumeratingWithState:&v162 objects:v179 count:16];
                if (v46)
                {
                  goto LABEL_31;
                }

                v132 = 1;
                goto LABEL_59;
              }
            }
          }

          v38 = 0;
        }

        v35 = [v33 countByEnumeratingWithState:&v166 objects:v180 count:16];
        v38 = 0;
        v43 = 0;
        if (!v35)
        {
          goto LABEL_29;
        }
      }
    }

    v43 = 0;
    v36 = 0;
    goto LABEL_29;
  }

LABEL_119:

  return v14;
}

- (PKPassEntitlementsComposer)initWithMyEntitlements:(id)a3 predefinedSharedEntitlements:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 pk_arrayByApplyingBlock:&__block_literal_global_282];
  v9 = [(PKPassEntitlementsComposer *)self _initWithSharedEntitlements:v8 availableEntitlements:v7 predefinedSharedEntitlements:v6 editable:0 isMyEntitlements:1u];

  return v9;
}

PKPassSharedEntitlement *__82__PKPassEntitlementsComposer_initWithMyEntitlements_predefinedSharedEntitlements___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 entitlement];
  v3 = [[PKPassSharedEntitlement alloc] initWithEntitlement:v2];
  v4 = [v2 timeConfiguration];
  [(PKPassSharedEntitlement *)v3 setTimeConfiguration:v4];

  v5 = [v2 activeShareability];
  -[PKPassSharedEntitlement setRecipientShareability:](v3, "setRecipientShareability:", [v5 unsignedIntegerValue]);

  v6 = [v2 activeVisibility];
  -[PKPassSharedEntitlement setRecipientVisibility:](v3, "setRecipientVisibility:", [v6 unsignedIntegerValue]);

  v7 = [v2 activeManageability];
  -[PKPassSharedEntitlement setRecipientManageability:](v3, "setRecipientManageability:", [v7 unsignedIntegerValue]);

  v8 = [v2 activeCapabilityRole];
  [(PKPassSharedEntitlement *)v3 setRecipientCapabilityRole:v8];

  return v3;
}

uint64_t __135__PKPassEntitlementsComposer__initWithSharedEntitlements_availableEntitlements_predefinedSharedEntitlements_editable_isMyEntitlements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entitlementIdentifier];
  if (v4 && (v5 = v4, v6 = [v4 length], v5, v5, v6))
  {
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __135__PKPassEntitlementsComposer__initWithSharedEntitlements_availableEntitlements_predefinedSharedEntitlements_editable_isMyEntitlements___block_invoke_2;
    v10[3] = &unk_1E79E2AD0;
    v11 = v3;
    v8 = [v7 pk_containsObjectPassingTest:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __135__PKPassEntitlementsComposer__initWithSharedEntitlements_availableEntitlements_predefinedSharedEntitlements_editable_isMyEntitlements___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) entitlementIdentifier];
  v5 = [v3 entitlementIdentifier];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v6 isEqualToString:v7];
    }
  }

  if ([*(a1 + 32) hasCanonicallyEquivalentRightsToPassEntitlement:v3])
  {
    v11 = 1;
  }

  else
  {
    v11 = [*(a1 + 32) hasCanonicallyEquivalentRoleToPassSharedEntitlement:v3];
  }

  return v10 & v11;
}

uint64_t __55__PKPassEntitlementsComposer__createEntitlementEntries__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayableEntitlement];
  v6 = [v4 displayableEntitlement];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)setPossiblePredefinedSharedEntitlementSelection:(id)a3
{
  v118 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    predefinedEntitlementEntries = self->_predefinedEntitlementEntries;
    self->_predefinedEntitlementEntries = 0;

    predefinedSelectionNodeForPredefinedEntry = self->_predefinedSelectionNodeForPredefinedEntry;
    self->_predefinedSelectionNodeForPredefinedEntry = 0;

    goto LABEL_72;
  }

  v5 = [MEMORY[0x1E696AD18] pk_createStrongPointerPersonalityToStrongObjects];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v4;
  v86 = [obj countByEnumeratingWithState:&v106 objects:v116 count:16];
  if (!v86)
  {
    goto LABEL_67;
  }

  v84 = v6;
  v85 = *v107;
  v7 = off_1E79C0000;
  v97 = self;
  v81 = v5;
  v82 = v4;
  do
  {
    v8 = 0;
    do
    {
      if (*v107 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v106 + 1) + 8 * v8);
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v11 = [v9 sharedEntitlements];
      v95 = [v11 countByEnumeratingWithState:&v102 objects:v115 count:16];
      if (!v95)
      {
        goto LABEL_63;
      }

      v83 = v9;
      v88 = v8;
      v92 = v11;
      v94 = *v103;
      v91 = v10;
      while (2)
      {
        for (i = 0; i != v95; i = i + 1)
        {
          if (*v103 != v94)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v102 + 1) + 8 * i);
          v14 = v13;
          if (!self)
          {

LABEL_62:
            v5 = v81;
            v4 = v82;
            v6 = v84;
            v8 = v88;
            goto LABEL_63;
          }

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v15 = self->_originalSharedEntitlements;
          v16 = [(NSArray *)v15 countByEnumeratingWithState:&v110 objects:&v117 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v111;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v111 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([*(*(&v110 + 1) + 8 * j) hasCanonicallyEquivalentRoleToPassSharedEntitlement:v14])
                {

                  goto LABEL_46;
                }
              }

              v17 = [(NSArray *)v15 countByEnumeratingWithState:&v110 objects:&v117 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v20 = v14;
          entitlementEntriesForEntitlementIdentifier = self->_entitlementEntriesForEntitlementIdentifier;
          v22 = [v20 entitlementIdentifier];
          v23 = [(NSDictionary *)entitlementEntriesForEntitlementIdentifier objectForKeyedSubscript:v22];
          v24 = [v23 displayableEntitlement];
          v25 = [v24 entitlement];

          if (!v25)
          {

            v5 = v81;
            v4 = v82;
            v6 = v84;
            v8 = v88;
            v10 = v91;
            v11 = v92;
            goto LABEL_63;
          }

          v26 = [PKPassEntitlementCapabilitySet alloc];
          v27 = [v25 activeCapabilityRole];
          v28 = -[PKPassEntitlementCapabilitySet initWithIntRole:](v26, "initWithIntRole:", [v27 unsignedIntValue]);

          v29 = [PKPassEntitlementCapabilitySet alloc];
          v30 = [v20 recipientCapabilityRole];
          v31 = -[PKPassEntitlementCapabilitySet initWithIntRole:](v29, "initWithIntRole:", [v30 unsignedIntValue]);

          v32 = [(PKPassEntitlementCapabilitySet *)v28 isOwner];
          v33 = v32 ^ [(PKPassEntitlementCapabilitySet *)v31 isOwner];
          if ((v33 & 1) == 0)
          {
            v34 = [v25 shareability];
            v35 = MEMORY[0x1E696AD98];
            v36 = [v20 recipientShareability];
            v37 = v35;
            v32 = v34;
            self = [v37 numberWithUnsignedInteger:v36];
            if ([v32 containsObject:self])
            {
              v90 = v32;
              v38 = [v25 visibility];
              v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "recipientVisibility")}];
              v89 = v38;
              if ([v38 containsObject:v39])
              {
                v40 = [v25 manageability];
                v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "recipientManageability")}];
                v87 = v40;
                v42 = v40;
                v43 = v41;
                if ([v42 containsObject:?])
                {
                  v44 = 1;
                }

                else if (v97->_isMyEntitlements)
                {
                  v44 = [v20 hasCanonicallyEquivalentRoleToPassEntitlement:v25];
                }

                else
                {
                  v44 = 0;
                }
              }

              else if (v97->_isMyEntitlements)
              {
                v44 = [v20 hasCanonicallyEquivalentRoleToPassEntitlement:v25];
              }

              else
              {
                v44 = 0;
              }

              v32 = v90;
LABEL_41:

              goto LABEL_42;
            }
          }

          if (v97->_isMyEntitlements)
          {
            v44 = [v20 hasCanonicallyEquivalentRoleToPassEntitlement:v25];
          }

          else
          {
            v44 = 0;
          }

          if ((v33 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_42:
          v45 = [v25 timeConfiguration];
          v46 = [v20 timeConfiguration];
          v47 = 1;
          if (v46 && v45)
          {
            v48 = [v45 intersect:v46];
            v47 = v48 != 0;
          }

          v49 = v44 & v47;

          self = v97;
          v7 = off_1E79C0000;
          v10 = v91;
          v11 = v92;
          if (v49 != 1)
          {
            goto LABEL_62;
          }

LABEL_46:
          v50 = self->_entitlementEntriesForEntitlementIdentifier;
          v51 = [v14 entitlementIdentifier];
          v52 = [(NSDictionary *)v50 objectForKeyedSubscript:v51];

          if (!v52)
          {
            goto LABEL_49;
          }

          v53 = objc_alloc(v7[48]);
          v54 = [v52 displayableEntitlement];
          v55 = [(PKPassEntitlementsComposerEntry *)v53 initWithDisplayableEntitlement:v54 parentEntitlementComposer:self];

          v56 = [v14 copy];
          [v55 setSharedEntitlement:v56];

          [v10 addObject:v55];
        }

        v95 = [v11 countByEnumeratingWithState:&v102 objects:v115 count:16];
        if (v95)
        {
          continue;
        }

        break;
      }

LABEL_49:

      v57 = [PKPassEntitlementsComposerPredefinedSelectionEntry alloc];
      v58 = v83;
      v59 = v10;
      v60 = self;
      if (v57)
      {
        v117.receiver = v57;
        v117.super_class = PKPassEntitlementsComposerPredefinedSelectionEntry;
        v61 = [(PKPassEntitlementsComposer *)&v117 init];
        v62 = v61;
        if (v61)
        {
          objc_storeStrong(&v61->_availableEntitlements, v83);
          objc_storeStrong(&v62->_entitlementEntriesForEntitlementIdentifier, v10);
          objc_storeWeak(&v62->_originalSharedEntitlements, v60);
        }
      }

      else
      {
        v62 = 0;
      }

      v93 = v62;
      [v84 addObject:v62];
      v63 = [[PKPassEntitlementsComposerPredefinedEntryNode alloc] initWithPredefinedSelection:v58 parentEntitlementComposer:v60];
      [(PKPassEntitlementsComposerEntryNode *)v63 setEditable:self->_editable];
      v64 = [(PKPassEntitlementsComposerEntryNode *)v63 children];
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v96 = v59;
      v65 = [v96 countByEnumeratingWithState:&v98 objects:v114 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v99;
        do
        {
          for (k = 0; k != v66; ++k)
          {
            if (*v99 != v67)
            {
              objc_enumerationMutation(v96);
            }

            v69 = *(*(&v98 + 1) + 8 * k);
            v70 = [v69 sharedEntitlement];
            v71 = [PKPassEntitlementsComposerEntitlementEntryNode alloc];
            v72 = [v69 displayableEntitlement];
            v73 = [(PKPassEntitlementsComposerEntitlementEntryNode *)v71 initWithDisplayableEntitlement:v72 sharedEntitlement:v70 parentEntitlementComposer:v60];

            -[PKPassEntitlementsComposerEntryNode setShareability:](v73, "setShareability:", [v70 recipientShareability]);
            -[PKPassEntitlementsComposerEntryNode setVisibility:](v73, "setVisibility:", [v70 recipientVisibility]);
            -[PKPassEntitlementsComposerEntryNode setManageability:](v73, "setManageability:", [v70 recipientManageability]);
            -[PKPassEntitlementsComposerEntryNode setIntraAccountSharingEnabled:](v73, "setIntraAccountSharingEnabled:", [v70 intraAccountSharingEnabled]);
            v74 = [v70 timeConfiguration];
            [(PKPassEntitlementsComposerEntryNode *)v73 setTimeConfiguration:v74];

            [(PKPassEntitlementsComposerEntryNode *)v73 setParent:v63];
            self = v97;
            [(PKPassEntitlementsComposerEntryNode *)v73 setEditable:v97->_editable];
            [v64 addObject:v73];
            [(NSMutableArray *)v97->_allEntryNodes addObject:v73];
          }

          v66 = [v96 countByEnumeratingWithState:&v98 objects:v114 count:16];
        }

        while (v66);
      }

      v5 = v81;
      v11 = v93;
      [v81 setObject:v63 forKey:v93];
      [(NSMutableArray *)self->_allEntryNodes addObject:v63];

      v4 = v82;
      v6 = v84;
      v7 = off_1E79C0000;
      v8 = v88;
      v10 = v91;
LABEL_63:

      ++v8;
    }

    while (v8 != v86);
    v75 = [obj countByEnumeratingWithState:&v106 objects:v116 count:16];
    v86 = v75;
  }

  while (v75);
LABEL_67:

  if ([v6 count] && objc_msgSend(v5, "count"))
  {
    v76 = [v6 copy];
    v77 = self->_predefinedEntitlementEntries;
    self->_predefinedEntitlementEntries = v76;

    objc_storeStrong(&self->_predefinedSelectionNodeForPredefinedEntry, v5);
  }

LABEL_72:
}

- (id)addPredefinedSharedEntitlementSelection:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_predefinedEntitlementEntries)
  {
    v6 = [v4 identifier];
    predefinedEntitlementEntries = self->_predefinedEntitlementEntries;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__PKPassEntitlementsComposer_addPredefinedSharedEntitlementSelection___block_invoke;
    v22[3] = &unk_1E79E2B80;
    v23 = v6;
    v8 = v6;
    v9 = [(NSArray *)predefinedEntitlementEntries pk_arrayBySafelyApplyingBlock:v22];
    v10 = [v9 arrayByAddingObject:v5];
    [(PKPassEntitlementsComposer *)self setPossiblePredefinedSharedEntitlementSelection:v10];
  }

  else
  {
    v25[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(PKPassEntitlementsComposer *)self setPossiblePredefinedSharedEntitlementSelection:v8];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_predefinedEntitlementEntries;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 predefinedSelection];

        if (v16 == v5)
        {
          v12 = v15;
          goto LABEL_14;
        }
      }

      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v12;
}

id __70__PKPassEntitlementsComposer_addPredefinedSharedEntitlementSelection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 predefinedSelection];
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_12;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
  }

  else
  {
    v10 = [v6 isEqualToString:v7];

    if (v10)
    {
      goto LABEL_10;
    }
  }

  v11 = v3;
LABEL_12:

  return v11;
}

- (BOOL)preferDetailedCapabilityDisplay
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_originalSharedEntitlements;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if ([v9 creationVersion] > 1)
        {
          goto LABEL_30;
        }

        v10 = [v9 recipientShareability];
        if (v10 > v6)
        {
          v6 = v10;
        }

        if (v6 > 1 || [v9 recipientVisibility] == 2)
        {
LABEL_30:
          v20 = 1;
          goto LABEL_31;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    if (!v6)
    {
      return 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = self->_availableEntitlements;
    v11 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v3);
          }

          v15 = [*(*(&v22 + 1) + 8 * j) entitlement];
          v16 = [v15 entitlementTemplate];

          v17 = v16;
          v18 = v17;
          if (v17 == @"carKeyEntitlementTemplateV2")
          {

            goto LABEL_30;
          }

          if (@"carKeyEntitlementTemplateV2" && v17)
          {
            v19 = [(__CFString *)v17 isEqualToString:@"carKeyEntitlementTemplateV2"];

            if (v19)
            {
              goto LABEL_30;
            }
          }

          else
          {
          }
        }

        v12 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v20 = 0;
LABEL_31:

  return v20;
}

- (BOOL)canAllowResharing
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_allEntryNodes;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 editable])
        {
          if ([v6 possibleShareability])
          {
            goto LABEL_13;
          }
        }

        else if ([v6 shareability])
        {
LABEL_13:
          LOBYTE(v3) = 1;
          goto LABEL_14;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (NSArray)composeSharedEntitlements
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_allEntryNodes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 parent];

        if (!v10)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __55__PKPassEntitlementsComposer_composeSharedEntitlements__block_invoke;
          v14[3] = &unk_1E79E2BA8;
          v11 = v3;
          v15 = v11;
          [v9 enumerateEntitlementEntries:v14];
          if ([v11 count])
          {
            v12 = [v11 copy];

            goto LABEL_13;
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v12;
}

void __55__PKPassEntitlementsComposer_composeSharedEntitlements__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 enabled])
  {
    v3 = [v6 sharedEntitlement];
    v4 = [v3 copy];

    [v4 setRecipientShareability:{objc_msgSend(v6, "shareability")}];
    [v4 setRecipientVisibility:{objc_msgSend(v6, "visibility")}];
    [v4 setRecipientManageability:{objc_msgSend(v6, "manageability")}];
    [v4 setIntraAccountSharingEnabled:{objc_msgSend(v6, "intraAccountSharingEnabled")}];
    v5 = [v6 timeConfiguration];
    [v4 setTimeConfiguration:v5];

    [*(a1 + 32) addObject:v4];
  }
}

- (PKPassEntitlementsComposerPredefinedSelectionEntry)activePredefinedSelectionEntry
{
  v3 = [(PKPassEntitlementsComposer *)self predefinedEntitlementEntries];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PKPassEntitlementsComposer_activePredefinedSelectionEntry__block_invoke;
  v6[3] = &unk_1E79E2BD0;
  v6[4] = self;
  v4 = [v3 pk_firstObjectPassingTest:v6];

  return v4;
}

uint64_t __60__PKPassEntitlementsComposer_activePredefinedSelectionEntry__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) viewForPredefined:a2];
  v3 = [v2 enabled];

  return v3;
}

- (id)localizedSelectedEntitlementSummaryForAccessType:(int64_t)a3
{
  v5 = [(PKPassEntitlementsComposer *)self activePredefinedSelectionEntry];
  v6 = [v5 predefinedSelection];

  if (v6)
  {
    v7 = [v6 localizedTitle];
    goto LABEL_16;
  }

  v8 = [(PKPassEntitlementsComposer *)self entitlementEntries];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__PKPassEntitlementsComposer_localizedSelectedEntitlementSummaryForAccessType___block_invoke;
  v18[3] = &unk_1E79E2BF8;
  v18[4] = self;
  v9 = [v8 pk_objectsPassingTest:v18];
  v10 = v9;
  if (a3 != 4)
  {
    if ([v9 count])
    {
      goto LABEL_8;
    }

LABEL_10:
    v14 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_NONE";
    goto LABEL_14;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__PKPassEntitlementsComposer_localizedSelectedEntitlementSummaryForAccessType___block_invoke_2;
  v17[3] = &unk_1E79E2C20;
  v17[4] = self;
  v11 = [v9 pk_containsObjectPassingTest:v17];
  if (![v10 count])
  {
    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ([v10 count] != 1)
  {
    v15 = [v8 count];
    if (v15 != [v10 count])
    {
LABEL_13:
      v14 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_CUSTOM";
      goto LABEL_14;
    }

    v14 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_FULL";
LABEL_14:
    v7 = PKLocalizedShareableCredentialString(&v14->isa, 0);
    goto LABEL_15;
  }

  v12 = [v10 firstObject];
  v13 = [v12 displayableEntitlement];
  v7 = [v13 localizedTitle];

LABEL_15:
LABEL_16:

  return v7;
}

uint64_t __79__PKPassEntitlementsComposer_localizedSelectedEntitlementSummaryForAccessType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) viewFor:a2];
  v3 = [v2 enabled];

  return v3;
}

uint64_t __79__PKPassEntitlementsComposer_localizedSelectedEntitlementSummaryForAccessType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 97) == 1)
  {
    v5 = [v3 displayableEntitlement];
    v6 = [v5 entitlement];
    v7 = [v6 activeCapabilityRole];
    v8 = [v7 unsignedIntegerValue] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 sharedEntitlement];
  v10 = [v9 recipientCapabilityRole];
  v11 = [v10 unsignedIntegerValue];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (id)viewFor:(id)a3
{
  if (a3)
  {
    v4 = [(NSMapTable *)self->_entitlementNodeForEntitlementEntry objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)viewForEnabledEntitlements
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [[PKPassEntitlementsComposerEntryNode alloc] initWithIdentifier:@"enabledEntitlements" parentEntitlementComposer:self];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMapTable *)self->_entitlementNodeForEntitlementEntry objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 enabled])
        {
          v10 = [v9 copy];
          [v10 setParent:v3];
          v11 = [(PKPassEntitlementsComposerEntryNode *)v3 children];
          [v11 addObject:v10];

          [(NSMutableArray *)self->_allEntryNodes addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_allEntryNodes addObject:v3];

  return v3;
}

- (id)_allPossibleCapabilitySetsForView:(id)a3
{
  v4 = a3;
  v5 = [v4 allPossibleShareability];
  v6 = [v4 allPossibleVisibility];
  v7 = [v4 allPossibleManageability];

  predefinedCapabilitySets = self->_predefinedCapabilitySets;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PKPassEntitlementsComposer__allPossibleCapabilitySetsForView___block_invoke;
  v17[3] = &unk_1E79E2C48;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = [(NSArray *)predefinedCapabilitySets pk_objectsPassingTest:v17];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = v14;

  return v14;
}

uint64_t __64__PKPassEntitlementsComposer__allPossibleCapabilitySetsForView___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "shareability")}];
  if ([v4 containsObject:v5])
  {
    v6 = a1[5];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "visibility")}];
    if ([v6 containsObject:v7])
    {
      v8 = a1[6];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "manageability")}];
      v10 = [v8 containsObject:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_rootEntryNodeDidSetEnabled:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_allEntryNodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != v4)
        {
          v11 = [*(*(&v12 + 1) + 8 * v9) parent];

          if (!v11)
          {
            [v10 setEnabled:0 notifyIfRoot:0];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end