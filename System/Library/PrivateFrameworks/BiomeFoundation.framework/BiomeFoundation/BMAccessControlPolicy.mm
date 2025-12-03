@interface BMAccessControlPolicy
+ (BOOL)allowsConfiguringConnection:(id)connection forUseCase:(id)case inDomain:(unint64_t)domain error:(id *)error;
+ (BOOL)process:(id)process canActOnBehalfOfProcess:(id)ofProcess;
+ (id)library;
+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags onBehalfOfProcessWithAccessControlPolicy:(id)policy;
+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case;
+ (id)syncableSetIdentifiers;
+ (void)library;
+ (void)setLegacyStreamNameMappingCallback:(id)callback;
+ (void)setLegacyViewResourceMappingCallback:(id)callback;
+ (void)setUUIDStreamNameMappingCallback:(id)callback;
- (BMAccessControlPolicy)init;
- (BMAccessControlPolicy)initWithProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case;
- (BOOL)allowsAccessToAllSetsWithMode:(unint64_t)mode;
- (BOOL)allowsAccessToBiomeAgentForUser:(unsigned int)user;
- (BOOL)allowsAccessToClientCompute:(id)compute;
- (BOOL)allowsAccessToContextSync;
- (BOOL)allowsAccessToContextSyncStreams:(id)streams;
- (BOOL)allowsAccessToDatabase:(id)database withMode:(unint64_t)mode;
- (BOOL)allowsAccessToProxyBiomeAgentEndpoint;
- (BOOL)allowsAccessToResource:(id)resource withMode:(unint64_t)mode;
- (BOOL)allowsAccessToSet:(id)set withMode:(unint64_t)mode;
- (BOOL)allowsAccessToSetStoreUpdateServiceForSet:(id)set;
- (BOOL)allowsAccessToStream:(id)stream withMode:(unint64_t)mode;
- (BOOL)allowsAccessToSync;
- (BOOL)allowsAccessToSyncMergeableDeltas;
- (BOOL)allowsAccessToView:(id)view withMode:(unint64_t)mode;
- (BOOL)allowsAccessToWriteServiceForStream:(id)stream ofUser:(unsigned int)user;
- (BOOL)allowsComputePublisherAccessToStreams:(id)streams;
- (BOOL)allowsComputeSourceAccessToStream:(id)stream;
- (BOOL)allowsConnectionToAccessServiceWithDomain:(unint64_t)domain;
- (BOOL)allowsConnectionToComputePublisherService;
- (BOOL)allowsConnectionToComputeSourceServiceWithDomain:(unint64_t)domain;
- (BOOL)allowsConnectionToSetStoreUpdateService;
- (BOOL)allowsConnectionToWriteService;
- (BOOL)allowsProxyingBiomeEndpoint;
- (NSString)descriptionOfProcessAndUseCase;
- (id)authorizedResources;
- (id)explicitlyAuthorizedResourcesOfType:(unint64_t)type withAccessMode:(unint64_t)mode;
- (unint64_t)allowedModeForStream:(id)stream;
- (void)_warnAboutInternalEntitlement:(id)entitlement streamIdentifier:(id)identifier;
@end

@implementation BMAccessControlPolicy

- (id)authorizedResources
{
  v163 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  authorizedResources = self->_authorizedResources;
  selfCopy = self;
  if (authorizedResources)
  {
    v4 = authorizedResources;
    goto LABEL_3;
  }

  processType = [(BMProcess *)self->_process processType];
  if (!processType)
  {
    goto LABEL_23;
  }

  if (processType == 3)
  {
    v21 = objc_opt_new();
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    syncableSetIdentifiers = [objc_opt_class() syncableSetIdentifiers];
    v23 = [syncableSetIdentifiers countByEnumeratingWithState:&v119 objects:v132 count:16];
    if (v23)
    {
      v24 = *v120;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v120 != v24)
          {
            objc_enumerationMutation(syncableSetIdentifiers);
          }

          v26 = [[BMResourceSpecifier alloc] initWithType:4 name:*(*(&v119 + 1) + 8 * i)];
          [(NSDictionary *)v21 setObject:&unk_1F20EBC08 forKeyedSubscript:v26];
        }

        v23 = [syncableSetIdentifiers countByEnumeratingWithState:&v119 objects:v132 count:16];
      }

      while (v23);
    }

    v27 = selfCopy->_authorizedResources;
    selfCopy->_authorizedResources = v21;
    v28 = v21;

    v4 = selfCopy->_authorizedResources;
    goto LABEL_3;
  }

  if (processType == 8 && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
LABEL_23:
    v20 = self->_authorizedResources;
    v4 = MEMORY[0x1E695E0F8];
    selfCopy->_authorizedResources = MEMORY[0x1E695E0F8];

    goto LABEL_3;
  }

  v97 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v8 = self->_useCase;
  *&v159 = @"__legacy__";
  v136 = @"com.apple.private.biome.read-only";
  v137 = @"com.apple.private.biome.read-write";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:2];
  v145[0] = v9;
  *(&v159 + 1) = @"__legacy_view__";
  v133[0] = @"com.apple.private.intelligenceplatform.views.read-only";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:1];
  v145[1] = v10;
  *&v160 = @"__writer__";
  *&v154 = @"com.apple.private.biome.write-only";
  *(&v154 + 1) = @"com.apple.private.biome.read-write";
  *&v155 = @"com.apple.private.biome.writer";
  *(&v155 + 1) = @"com.apple.private.intelligenceplatform.use-cases";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:4];
  v145[2] = v11;
  *(&v160 + 1) = @"__pruner__";
  *&v146 = @"com.apple.private.biome.read-write";
  *(&v146 + 1) = @"com.apple.private.biome.pruner";
  *&v147 = @"com.apple.private.biome.writer";
  *(&v147 + 1) = @"com.apple.private.intelligenceplatform.use-cases";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:4];
  v145[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:&v159 count:4];

  v14 = [v13 objectForKeyedSubscript:v8];
  if (!v14)
  {
    v143[0] = @"com.apple.private.intelligenceplatform.use-cases";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:1];
  }

  if (os_variant_allows_internal_security_policies())
  {
    obj = [v14 mutableCopy];
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v150 objects:v158 count:16];
    if (v16)
    {
      v17 = *v151;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v151 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = BMAppleInternalVariantOfEntitlement(*(*(&v150 + 1) + 8 * j));
          if (v19)
          {
            [obj addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v150 objects:v158 count:16];
      }

      while (v16);
    }
  }

  else
  {
    obj = v14;
  }

  v95 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
  if (v95)
  {
    v96 = *v116;
    do
    {
      v103 = 0;
      do
      {
        if (*v116 != v96)
        {
          objc_enumerationMutation(obj);
        }

        process = selfCopy->_process;
        useCase = selfCopy->_useCase;
        v31 = *(*(&v115 + 1) + 8 * v103);
        v32 = process;
        v33 = useCase;
        v107 = v31;
        v104 = v32;
        v105 = v33;
        if ((os_variant_allows_internal_security_policies() & 1) == 0 && ((BMEntitlementIsAppleInternal(v107, v34) & 1) != 0 || [(BMProcess *)v104 processType]== 8))
        {
LABEL_46:
          v37 = MEMORY[0x1E695E0F8];
          goto LABEL_99;
        }

        if (([v107 isEqual:@"com.apple.private.intelligenceplatform.use-cases"] & 1) == 0 && !objc_msgSend(v107, "isEqual:", @"com.apple.internal.intelligenceplatform.use-cases"))
        {
          if (([v107 isEqual:@"com.apple.private.biome.writer"] & 1) != 0 || (objc_msgSend(v107, "isEqual:", @"com.apple.internal.biome.writer") & 1) != 0 || (objc_msgSend(v107, "isEqual:", @"com.apple.private.biome.pruner") & 1) != 0 || objc_msgSend(v107, "isEqual:", @"com.apple.internal.biome.pruner"))
          {
            v38 = objc_opt_new();
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v39 = [(BMProcess *)v104 nonnullSetOfStringsForEntitlement:v107];
            v40 = [v39 countByEnumeratingWithState:&v150 objects:v158 count:16];
            if (v40)
            {
              v41 = *v151;
              do
              {
                for (k = 0; k != v40; ++k)
                {
                  if (*v151 != v41)
                  {
                    objc_enumerationMutation(v39);
                  }

                  [v38 setObject:&unk_1F20EBC08 forKeyedSubscript:*(*(&v150 + 1) + 8 * k)];
                }

                v40 = [v39 countByEnumeratingWithState:&v150 objects:v158 count:16];
              }

              while (v40);
            }

            databaseForViewName = v38;

            v43 = objc_opt_new();
            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3;
            v129[3] = &unk_1E796AD30;
            v130 = v43;
            v111 = v43;
            [v38 enumerateKeysAndObjectsUsingBlock:v129];
            v37 = [v111 copy];
            allKeys = v130;
            goto LABEL_96;
          }

          if (([v107 isEqual:@"com.apple.private.biome.write-only"] & 1) != 0 || objc_msgSend(v107, "isEqual:", @"com.apple.internal.biome.write-only"))
          {
            v64 = objc_opt_new();
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v65 = [(BMProcess *)v104 nonnullSetOfStringsForEntitlement:v107];
            v66 = [v65 countByEnumeratingWithState:&v150 objects:v158 count:16];
            if (v66)
            {
              v67 = *v151;
              do
              {
                for (m = 0; m != v66; ++m)
                {
                  if (*v151 != v67)
                  {
                    objc_enumerationMutation(v65);
                  }

                  [v64 setObject:&unk_1F20EBC50 forKeyedSubscript:*(*(&v150 + 1) + 8 * m)];
                }

                v66 = [v65 countByEnumeratingWithState:&v150 objects:v158 count:16];
              }

              while (v66);
            }

            databaseForViewName = v64;

            v69 = objc_opt_new();
            v127[0] = MEMORY[0x1E69E9820];
            v127[1] = 3221225472;
            v127[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_321;
            v127[3] = &unk_1E796AD30;
            v128 = v69;
            v111 = v69;
            [v64 enumerateKeysAndObjectsUsingBlock:v127];
            v37 = [v111 copy];
            allKeys = v128;
            goto LABEL_96;
          }

          if (([v107 isEqual:@"com.apple.private.biome.read-only"] & 1) != 0 || objc_msgSend(v107, "isEqual:", @"com.apple.internal.biome.read-only"))
          {
            v70 = objc_opt_new();
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v71 = [(BMProcess *)v104 nonnullSetOfStringsForEntitlement:v107];
            v72 = [v71 countByEnumeratingWithState:&v150 objects:v158 count:16];
            if (v72)
            {
              v73 = *v151;
              do
              {
                for (n = 0; n != v72; ++n)
                {
                  if (*v151 != v73)
                  {
                    objc_enumerationMutation(v71);
                  }

                  [v70 setObject:&unk_1F20EBC38 forKeyedSubscript:*(*(&v150 + 1) + 8 * n)];
                }

                v72 = [v71 countByEnumeratingWithState:&v150 objects:v158 count:16];
              }

              while (v72);
            }

            databaseForViewName = v70;

            v75 = objc_opt_new();
            v125[0] = MEMORY[0x1E69E9820];
            v125[1] = 3221225472;
            v125[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2_322;
            v125[3] = &unk_1E796AD30;
            v126 = v75;
            v111 = v75;
            [v70 enumerateKeysAndObjectsUsingBlock:v125];
            v37 = [v111 copy];
            allKeys = v126;
            goto LABEL_96;
          }

          if (([v107 isEqual:@"com.apple.private.biome.read-write"] & 1) != 0 || objc_msgSend(v107, "isEqual:", @"com.apple.internal.biome.read-write"))
          {
            v76 = objc_opt_new();
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v77 = [(BMProcess *)v104 nonnullSetOfStringsForEntitlement:v107];
            v78 = [v77 countByEnumeratingWithState:&v150 objects:v158 count:16];
            if (v78)
            {
              v79 = *v151;
              do
              {
                for (ii = 0; ii != v78; ++ii)
                {
                  if (*v151 != v79)
                  {
                    objc_enumerationMutation(v77);
                  }

                  [v76 setObject:&unk_1F20EBC08 forKeyedSubscript:*(*(&v150 + 1) + 8 * ii)];
                }

                v78 = [v77 countByEnumeratingWithState:&v150 objects:v158 count:16];
              }

              while (v78);
            }

            databaseForViewName = v76;

            v81 = objc_opt_new();
            v123[0] = MEMORY[0x1E69E9820];
            v123[1] = 3221225472;
            v123[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3_323;
            v123[3] = &unk_1E796AD30;
            v124 = v81;
            v111 = v81;
            [v76 enumerateKeysAndObjectsUsingBlock:v123];
            v37 = [v111 copy];
            allKeys = v124;
            goto LABEL_96;
          }

          if (![v107 isEqual:@"com.apple.private.intelligenceplatform.views.read-only"])
          {
            goto LABEL_46;
          }

          v82 = legacyViewResourceMapper();
          databaseForViewName = [v82 databaseForViewName];

          if (!databaseForViewName)
          {
            v37 = objc_opt_new();
            v35 = 0;
            goto LABEL_98;
          }

          v111 = [(BMProcess *)v104 nonnullArrayForEntitlement:v107];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v84 = objc_opt_new();
          allKeys = v84;
          if (isKindOfClass)
          {
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v111 = v111;
            v85 = [v111 countByEnumeratingWithState:&v150 objects:v158 count:16];
            if (v85)
            {
              v86 = *v151;
              do
              {
                for (jj = 0; jj != v85; ++jj)
                {
                  if (*v151 != v86)
                  {
                    objc_enumerationMutation(v111);
                  }

                  v88 = *(*(&v150 + 1) + 8 * jj);
                  v89 = objc_autoreleasePoolPush();
                  v90 = (*(databaseForViewName + 16))(databaseForViewName, v88);
                  if (v90)
                  {
                    v91 = [[BMResourceSpecifier alloc] initWithType:3 name:v90];
                    if (v91)
                    {
                      [allKeys setObject:&unk_1F20EBC38 forKeyedSubscript:v91];
                    }
                  }

                  objc_autoreleasePoolPop(v89);
                }

                v85 = [v111 countByEnumeratingWithState:&v150 objects:v158 count:16];
              }

              while (v85);
            }

            v37 = [allKeys copy];
            goto LABEL_96;
          }

          v37 = v84;
LABEL_97:

          v35 = databaseForViewName;
          goto LABEL_98;
        }

        v35 = [(BMProcess *)v104 dictionaryForEntitlement:v107];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(NSString *)v105 isEqualToString:@"__pruner__"])
          {
            v36 = 1;
          }

          else
          {
            v36 = [(NSString *)v105 isEqualToString:@"__writer__"];
          }

          v111 = objc_opt_new();
          v162 = 0u;
          v161 = 0u;
          v160 = 0u;
          v159 = 0u;
          allKeys = [v35 allKeys];
          v45 = [allKeys countByEnumeratingWithState:&v159 objects:v158 count:16];
          databaseForViewName = v35;
          if (v45)
          {
            v100 = *v160;
            v98 = allKeys;
            v109 = v36;
LABEL_63:
            v46 = 0;
            v99 = v45;
            while (1)
            {
              if (*v160 != v100)
              {
                objc_enumerationMutation(allKeys);
              }

              v47 = *(*(&v159 + 1) + 8 * v46);
              if ((v36 & 1) != 0 || [(NSString *)v105 isEqualToString:*(*(&v159 + 1) + 8 * v46)])
              {
                break;
              }

LABEL_92:
              if (++v46 == v45)
              {
                v45 = [allKeys countByEnumeratingWithState:&v159 objects:v158 count:16];
                if (!v45)
                {
                  goto LABEL_94;
                }

                goto LABEL_63;
              }
            }

            v48 = [v35 objectForKeyedSubscript:v47];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v156 = 0u;
              v157 = 0u;
              v154 = 0u;
              v155 = 0u;
              v49 = v48;
              v50 = [v49 countByEnumeratingWithState:&v154 objects:&v150 count:16];
              v102 = v46;
              if (!v50)
              {
                goto LABEL_91;
              }

              v112 = *v155;
              v110 = v49;
              while (1)
              {
                for (kk = 0; kk != v50; ++kk)
                {
                  if (*v155 != v112)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v52 = *(*(&v154 + 1) + 8 * kk);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v53 = BMResourceTypeFromEntitlementResourceTypeString(v52);
                    if (v53)
                    {
                      v54 = objc_opt_new();
                      v55 = [v49 objectForKeyedSubscript:v52];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v56 = BMNonnullSetOfStringsFromEntitlementValue(v55);
                        v148 = 0u;
                        v149 = 0u;
                        v146 = 0u;
                        v147 = 0u;
                        v57 = [v56 countByEnumeratingWithState:&v146 objects:v145 count:16];
                        if (v57)
                        {
                          v58 = *v147;
                          do
                          {
                            for (mm = 0; mm != v57; ++mm)
                            {
                              if (*v147 != v58)
                              {
                                objc_enumerationMutation(v56);
                              }

                              [v54 setObject:&unk_1F20EBC38 forKeyedSubscript:*(*(&v146 + 1) + 8 * mm)];
                            }

                            v57 = [v56 countByEnumeratingWithState:&v146 objects:v145 count:16];
                          }

                          while (v57);
                          v36 = v109;
                          v49 = v110;
                        }

LABEL_87:
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v143[0] = MEMORY[0x1E69E9820];
                          v143[1] = 3221225472;
                          v143[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke;
                          v143[3] = &unk_1E796ACE0;
                          v144 = v54;
                          [v55 enumerateKeysAndObjectsUsingBlock:v143];
                          v56 = v144;
                          goto LABEL_87;
                        }
                      }

                      v136 = MEMORY[0x1E69E9820];
                      v137 = 3221225472;
                      v138 = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2;
                      v139 = &unk_1E796AD08;
                      v142 = v36;
                      v141 = v53;
                      v140 = v111;
                      [v54 enumerateKeysAndObjectsUsingBlock:&v136];

                      continue;
                    }
                  }
                }

                v50 = [v49 countByEnumeratingWithState:&v154 objects:&v150 count:16];
                if (!v50)
                {
LABEL_91:

                  v35 = databaseForViewName;
                  v46 = v102;
                  allKeys = v98;
                  v45 = v99;
                  goto LABEL_92;
                }
              }
            }

            v37 = MEMORY[0x1E695E0F8];
LABEL_96:
          }

          else
          {
LABEL_94:

            v37 = [v111 copy];
          }

          goto LABEL_97;
        }

        v37 = MEMORY[0x1E695E0F8];
LABEL_98:

LABEL_99:
        v60 = objc_opt_new();
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke;
        v133[3] = &unk_1E796ACB8;
        v134 = v60;
        v135 = v104;
        v61 = v104;
        v62 = v60;
        [v37 enumerateKeysAndObjectsUsingBlock:v133];
        v63 = [v62 copy];

        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __44__BMAccessControlPolicy_authorizedResources__block_invoke;
        v113[3] = &unk_1E796AC38;
        v114 = v97;
        [v63 enumerateKeysAndObjectsUsingBlock:v113];

        ++v103;
      }

      while (v103 != v95);
      v92 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
      v95 = v92;
    }

    while (v92);
  }

  v93 = [v97 copy];
  v94 = selfCopy->_authorizedResources;
  selfCopy->_authorizedResources = v93;

  v4 = v93;
LABEL_3:
  os_unfair_lock_unlock(&selfCopy->_lock);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)library
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr;
  v9 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr;
  if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr)
  {
    v3 = BiomeStreamsLibrary();
    v7[3] = dlsym(v3, "BiomeLibraryAndInternalLibraryNode");
    getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    +[BMAccessControlPolicy library];
  }

  v4 = v2();

  return v4;
}

void __44__BMAccessControlPolicy_authorizedResources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = [a3 unsignedIntegerValue];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v8 = [v7 unsignedIntegerValue];
    v9 = 2;
    v10 = v8 == 1 && v6 == 3;
    v11 = 3;
    if (!v10)
    {
      v11 = v8;
    }

    if (v8 == 2)
    {
      v11 = 2;
    }

    if (v6 != 2)
    {
      v9 = v11;
    }

    if (v8)
    {
      v6 = v9;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v13];
  }
}

- (BOOL)allowsConnectionToSetStoreUpdateService
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    return 0;
  }

  processType = [(BMProcess *)self->_process processType];
  result = 0;
  if (processType <= 3)
  {
    if (!processType)
    {
      return result;
    }

    if (processType == 2 || processType == 3)
    {
      return 1;
    }

    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"];
  }

  if ((processType - 4) < 2)
  {
    return result;
  }

  if (processType != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"];
  }

  return os_variant_allows_internal_security_policies();
}

- (BOOL)allowsConnectionToWriteService
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    return 0;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType - 2 < 4 || processType == 0)
  {
    return 0;
  }

  if (processType != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]);
  }

  return os_variant_allows_internal_security_policies();
}

- (NSString)descriptionOfProcessAndUseCase
{
  v3 = [(NSString *)self->_useCase hasPrefix:@"__"];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  executableName = [(BMProcess *)self->_process executableName];
  v6 = executableName;
  if (v3)
  {
    v7 = [v4 initWithFormat:@"'%@'", executableName, v10];
  }

  else
  {
    v7 = [v4 initWithFormat:@"'%@' use case '%@'", executableName, self->_useCase];
  }

  v8 = v7;

  return v8;
}

+ (void)setLegacyViewResourceMappingCallback:(id)callback
{
  callbackCopy = callback;
  v4 = legacyViewResourceMapper();
  [v4 setDatabaseForViewName:callbackCopy];
}

+ (void)setLegacyStreamNameMappingCallback:(id)callback
{
  callbackCopy = callback;
  v4 = legacyViewResourceMapper();
  [v4 setStreamIdentifierForLegacyStreamName:callbackCopy];
}

+ (void)setUUIDStreamNameMappingCallback:(id)callback
{
  callbackCopy = callback;
  v4 = legacyViewResourceMapper();
  [v4 setStreamIdentifierForUUIDString:callbackCopy];
}

+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case
{
  processCopy = process;
  caseCopy = case;
  v10 = +[BMAccessControlPolicy library];
  if (processCopy)
  {
    if ((flags & 1) == 0)
    {
      v11 = [[self alloc] initWithProcess:processCopy connectionFlags:flags useCase:caseCopy];
      goto LABEL_8;
    }

    v12 = __biome_log_for_category(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BMAccessControlPolicy policyForProcess:v12 connectionFlags:? useCase:?];
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags onBehalfOfProcessWithAccessControlPolicy:(id)policy
{
  processCopy = process;
  policyCopy = policy;
  v10 = +[BMAccessControlPolicy library];
  v11 = 0;
  if (processCopy && policyCopy)
  {
    v12 = [self alloc];
    useCase = [policyCopy useCase];
    v11 = [v12 initWithProcess:processCopy connectionFlags:flags | 1 useCase:useCase];

    objc_storeStrong(v11 + 1, policy);
  }

  return v11;
}

- (BMAccessControlPolicy)init
{
  v3 = +[BMAccessControlPolicy library];

  return 0;
}

- (BMAccessControlPolicy)initWithProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case
{
  processCopy = process;
  caseCopy = case;
  v11 = +[BMAccessControlPolicy library];
  if (processCopy)
  {
    v19.receiver = self;
    v19.super_class = BMAccessControlPolicy;
    v12 = [(BMAccessControlPolicy *)&v19 init];
    v13 = v12;
    if (v12)
    {
      v12->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v12->_process, process);
      v14 = [caseCopy copy];
      useCase = v13->_useCase;
      v13->_useCase = v14;

      authorizedResources = v13->_authorizedResources;
      v13->_authorizedResources = 0;

      v13->_connectionFlags = flags;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)allowsConnectionToAccessServiceWithDomain:(unint64_t)domain
{
  p_process = &self->_process;
  if (![(BMProcess *)self->_process processType])
  {
    return 0;
  }

  [(BMProcess *)*p_process identifier];

  if ([(BMProcess *)*p_process processType]== 2 || [(BMProcess *)*p_process processType]== 3 || [(BMProcess *)*p_process processType]== 4 || [(BMProcess *)*p_process processType]== 5 || [(BMProcess *)*p_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.writer"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.pruner"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.intelligenceplatform.views.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)*p_process processType]== 8 || [(BMProcess *)*p_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.writer"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.pruner"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]))
  {
    return 1;
  }

  v5 = [(BMProcess *)*p_process BOOLForEntitlement:@"com.apple.private.security.storage.Biome"];
  v6 = *p_process;
  if (!v5)
  {
    if ([(BMProcess *)v6 BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"]|| [(BMProcess *)*p_process BOOLForEntitlement:@"com.apple.coreduetd.allow"])
    {
      v9 = __biome_log_for_category(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMAccessControlPolicy allowsConnectionToAccessServiceWithDomain:?];
      }

      goto LABEL_30;
    }

    return 0;
  }

  executableName = [(BMProcess *)v6 executableName];
  v8 = [&unk_1F20EBE30 containsObject:executableName];

  if ((v8 & 1) == 0)
  {
    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BMAccessControlPolicy *)p_process allowsConnectionToAccessServiceWithDomain:v9];
    }

LABEL_30:
    v4 = !v5;

    return v4;
  }

  return 1;
}

- (BOOL)allowsAccessToStream:(id)stream withMode:(unint64_t)mode
{
  streamCopy = stream;
  v7 = streamCopy;
  v8 = 0;
  if (!mode || !self->_process)
  {
    goto LABEL_27;
  }

  if (!BMIdentifierIsPathSafe(streamCopy))
  {
    goto LABEL_26;
  }

  processType = [(BMProcess *)self->_process processType];
  v8 = 1;
  if (processType > 4)
  {
    if ((processType - 6) < 2)
    {
      goto LABEL_27;
    }

    if (processType == 5)
    {
      goto LABEL_26;
    }

    if (processType == 8)
    {
      v10 = os_variant_allows_internal_security_policies();
LABEL_13:
      v8 = v10;
      goto LABEL_27;
    }
  }

  else if (processType > 2)
  {
    if (processType != 3)
    {
      onBehalfOf = self->_onBehalfOf;
      if (onBehalfOf && [(BMAccessControlPolicy *)onBehalfOf allowsAccessToStream:v7 withMode:2])
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    v12 = BMSyncableStreamIdentifiers();
    v13 = [v12 containsObject:v7];

    if (v13)
    {
LABEL_22:
      v8 = 1;
      goto LABEL_27;
    }
  }

  else
  {
    if (!processType)
    {
      goto LABEL_26;
    }

    if (processType == 2)
    {
      goto LABEL_27;
    }
  }

  v14 = [v7 hasSuffix:@":subscriptions"];
  v15 = [v7 hasSuffix:@":tombstones"];
  if ([v7 hasPrefix:@"_DK"])
  {
    if (((v14 | v15) & 1) == 0)
    {
      if ([(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"])
      {
        goto LABEL_22;
      }

      v10 = [(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.coreduetd.allow"];
      goto LABEL_13;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if (v14)
  {
    if ((mode & 2) != 0)
    {
      goto LABEL_26;
    }

    v16 = [v7 componentsSeparatedByString:@":"];
    firstObject = [v16 firstObject];

    selfCopy2 = self;
    modeCopy = 2;
LABEL_30:
    v22 = [(BMAccessControlPolicy *)selfCopy2 explicitlyAuthorizedResourcesOfType:1 withAccessMode:modeCopy];
    v8 = [v22 containsObject:firstObject];

    goto LABEL_27;
  }

  if (v15)
  {
    v21 = [v7 componentsSeparatedByString:@":"];
    firstObject = [v21 firstObject];

    selfCopy2 = self;
    modeCopy = mode;
    goto LABEL_30;
  }

  v8 = 1;
  v23 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:mode];
  if (([v23 containsObject:v7] & 1) == 0)
  {
    v8 = 0;
    if ([(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.private.security.storage.Biome"])
    {
      executableName = [(BMProcess *)self->_process executableName];
      v25 = [&unk_1F20EBE48 containsObject:executableName];

      if (v25)
      {
        v8 = 1;
      }
    }
  }

LABEL_27:
  return v8;
}

- (BOOL)allowsAccessToDatabase:(id)database withMode:(unint64_t)mode
{
  databaseCopy = database;
  v7 = databaseCopy;
  v8 = 0;
  if (mode && self->_process)
  {
    if (BMIdentifierIsPathSafe(databaseCopy))
    {
      processType = [(BMProcess *)self->_process processType];
      if (processType > 8)
      {
LABEL_10:
        if (processType)
        {
          v11 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:3 withAccessMode:mode];
          v8 = [v11 containsObject:v7];

          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (((1 << processType) & 0x38) == 0)
      {
        if (((1 << processType) & 0xC4) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (processType == 8)
        {
          v8 = os_variant_allows_internal_security_policies();
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (BOOL)allowsAccessToView:(id)view withMode:(unint64_t)mode
{
  viewCopy = view;
  v7 = viewCopy;
  v8 = 0;
  if (mode && self->_process)
  {
    if (BMIdentifierIsPathSafe(viewCopy))
    {
      processType = [(BMProcess *)self->_process processType];
      if (processType > 8)
      {
LABEL_10:
        if (processType)
        {
          v11 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:2 withAccessMode:mode];
          v8 = [v11 containsObject:v7];

          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (((1 << processType) & 0x38) == 0)
      {
        if (((1 << processType) & 0xC4) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (processType == 8)
        {
          v8 = os_variant_allows_internal_security_policies();
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (BOOL)allowsAccessToSet:(id)set withMode:(unint64_t)mode
{
  setCopy = set;
  v7 = setCopy;
  v8 = 0;
  if (mode && self->_process)
  {
    if (!BMIdentifierIsPathSafe(setCopy))
    {
      goto LABEL_22;
    }

    if ([v7 isEqual:@"BMSetsResource"])
    {
      v9 = [(BMAccessControlPolicy *)self allowsAccessToAllSetsWithMode:mode];
LABEL_6:
      v8 = v9;
      goto LABEL_23;
    }

    processType = [(BMProcess *)self->_process processType];
    v8 = 1;
    if (processType <= 4)
    {
      if (processType > 2)
      {
        if (processType == 3)
        {
          syncableSetIdentifiers = [objc_opt_class() syncableSetIdentifiers];
          v12 = [syncableSetIdentifiers containsObject:v7];

          if (v12)
          {
            v8 = 1;
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      else if (processType)
      {
        if (processType == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      goto LABEL_22;
    }

    if ((processType - 6) < 2)
    {
      goto LABEL_23;
    }

    if (processType != 5)
    {
      if (processType == 8)
      {
        v9 = os_variant_allows_internal_security_policies();
        goto LABEL_6;
      }

LABEL_19:
      v13 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:4 withAccessMode:mode];
      v8 = [v13 containsObject:v7];

      goto LABEL_23;
    }

    onBehalfOf = self->_onBehalfOf;
    if (!onBehalfOf || ![(BMAccessControlPolicy *)onBehalfOf allowsAccessToSet:v7 withMode:3])
    {
LABEL_22:
      v8 = 0;
    }
  }

LABEL_23:

  return v8;
}

- (BOOL)allowsAccessToResource:(id)resource withMode:(unint64_t)mode
{
  resourceCopy = resource;
  type = [resourceCopy type];
  LOBYTE(v8) = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToStream:name withMode:mode];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_14;
      }

      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToView:name withMode:mode];
    }

LABEL_13:
    LOBYTE(v8) = v11;

    goto LABEL_14;
  }

  switch(type)
  {
    case 3:
      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToDatabase:name withMode:mode];
      goto LABEL_13;
    case 4:
      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToSet:name withMode:mode];
      goto LABEL_13;
    case 5:
      name2 = [resourceCopy name];
      if ([name2 isEqual:@"BMSyncResource"])
      {
      }

      else
      {
        name3 = [resourceCopy name];
        v14 = [name3 isEqual:@"BMSharedSyncResource"];

        if (!v14)
        {
          name4 = [resourceCopy name];
          v8 = [name4 isEqual:@"BMSetsMergeableDeltasResource"];

          if (!v8)
          {
            break;
          }

          allowsAccessToSyncMergeableDeltas = [(BMAccessControlPolicy *)self allowsAccessToSyncMergeableDeltas];
          goto LABEL_17;
        }
      }

      allowsAccessToSyncMergeableDeltas = [(BMAccessControlPolicy *)self allowsAccessToSync];
LABEL_17:
      LOBYTE(v8) = allowsAccessToSyncMergeableDeltas;
      break;
  }

LABEL_14:

  return v8;
}

- (id)explicitlyAuthorizedResourcesOfType:(unint64_t)type withAccessMode:(unint64_t)mode
{
  v25 = *MEMORY[0x1E69E9840];
  if (mode)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    authorizedResources = [(BMAccessControlPolicy *)self authorizedResources];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [authorizedResources countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(authorizedResources);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 type] == type)
          {
            v14 = [authorizedResources objectForKeyedSubscript:v13];
            unsignedIntegerValue = [v14 unsignedIntegerValue];

            if (unsignedIntegerValue)
            {
              if (unsignedIntegerValue == mode || unsignedIntegerValue == 3)
              {
                name = [v13 name];
                [v7 addObject:name];
              }
            }
          }
        }

        v10 = [authorizedResources countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unint64_t)allowedModeForStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy hasSuffix:@":subscriptions"])
  {
    if ([(BMProcess *)self->_process processType]== 2)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if ([(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:3]|| [(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:2])
    {
      v5 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 3;
  if (![(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:3])
  {
    v5 = 1;
    if (![(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:1])
    {
      v5 = 2;
      if (![(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:2])
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:

  return v5;
}

- (BOOL)allowsAccessToSync
{
  process = self->_process;
  if (process)
  {
    process = [(BMProcess *)process processType];
    if (process)
    {
      LOBYTE(process) = [(BMProcess *)self->_process processType]== 3 || os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process processType]== 8;
    }
  }

  return process;
}

- (BOOL)allowsAccessToSyncMergeableDeltas
{
  process = self->_process;
  if (process)
  {
    processType = [process processType];
    if (processType > 8 || ((1 << processType) & 0x1D3) != 0)
    {
      LOBYTE(process) = 0;
    }

    else if (((1 << processType) & 0xC) != 0)
    {
      LOBYTE(process) = 1;
    }

    else
    {
      process = self->_onBehalfOf;
      if (process)
      {

        LOBYTE(process) = [process allowsAccessToSyncMergeableDeltas];
      }
    }
  }

  return process;
}

- (BOOL)allowsAccessToAllSetsWithMode:(unint64_t)mode
{
  process = self->_process;
  if (!process)
  {
    return process;
  }

  process = [process processType];
  if (process > 8)
  {
    goto LABEL_10;
  }

  if (((1 << process) & 0xD8) != 0)
  {
    LOBYTE(process) = 0;
    return process;
  }

  if (process != 5)
  {
    if (process == 8)
    {

      LOBYTE(process) = os_variant_allows_internal_security_policies();
      return process;
    }

LABEL_10:
    if (process)
    {
      LOBYTE(process) = process == 2;
    }

    else
    {
      LOBYTE(process) = 0;
    }

    return process;
  }

  process = self->_onBehalfOf;
  if (process)
  {

    LOBYTE(process) = [process allowsAccessToAllSetsWithMode:mode];
  }

  return process;
}

- (BOOL)allowsConnectionToComputePublisherService
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    goto LABEL_6;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType > 8)
  {
    goto LABEL_12;
  }

  if (((1 << processType) & 0xCC) != 0)
  {
LABEL_4:
    LOBYTE(processType) = 1;
    return processType;
  }

  if (((1 << processType) & 0x30) != 0)
  {
LABEL_6:
    LOBYTE(processType) = 0;
    return processType;
  }

  if (processType != 8)
  {
LABEL_12:
    if (!processType)
    {
      return processType;
    }

    if ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]))
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  LOBYTE(processType) = os_variant_allows_internal_security_policies();
  return processType;
}

- (BOOL)allowsComputePublisherAccessToStreams:(id)streams
{
  v31 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  process = self->_process;
  if (!process || ([(BMProcess *)process identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v13 = 0;
    goto LABEL_21;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = streamsCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!BMIdentifierIsPathSafe(*(*(&v25 + 1) + 8 * i)))
        {

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  processType = [(BMProcess *)self->_process processType];
  v13 = 1;
  if (processType <= 3)
  {
    if (processType)
    {
      if (processType != 2)
      {
        if (processType == 3)
        {
          v14 = BMSyncableStreamIdentifiers();
          streamsCopy = [v7 bm_setBySubtractingSet:v14];

          if (![streamsCopy count])
          {
            v13 = 1;
            goto LABEL_21;
          }

          v7 = streamsCopy;
        }

        goto LABEL_26;
      }

LABEL_20:
      streamsCopy = v7;
      goto LABEL_21;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if ((processType - 4) < 2)
  {
    goto LABEL_19;
  }

  if ((processType - 6) < 2)
  {
    goto LABEL_20;
  }

  if (processType == 8)
  {
    v13 = os_variant_allows_internal_security_policies();
    goto LABEL_20;
  }

LABEL_26:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  streamsCopy = v7;
  v17 = [streamsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(streamsCopy);
        }

        if (![(BMAccessControlPolicy *)self allowsAccessToStream:*(*(&v21 + 1) + 8 * j) withMode:1, v21])
        {
          v13 = 0;
          goto LABEL_36;
        }
      }

      v18 = [streamsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_36:

LABEL_21:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)allowsConnectionToComputeSourceServiceWithDomain:(unint64_t)domain
{
  process = self->_process;
  if (!process)
  {
    return process;
  }

  [process identifier];

  process = [(BMProcess *)self->_process processType];
  if (process > 8)
  {
    goto LABEL_15;
  }

  if (((1 << process) & 0xCC) != 0)
  {
LABEL_4:
    LOBYTE(process) = 1;
    return process;
  }

  if (((1 << process) & 0x30) != 0)
  {
    process = self->_onBehalfOf;
    if (process)
    {

      LOBYTE(process) = [process allowsConnectionToComputeSourceServiceWithDomain:domain];
    }

    return process;
  }

  if (process == 8)
  {

    LOBYTE(process) = os_variant_allows_internal_security_policies();
  }

  else
  {
LABEL_15:
    if (!process)
    {
      return process;
    }

    if ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.writer"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.pruner"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.writer"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.pruner"]))
    {
      goto LABEL_4;
    }

    LOBYTE(process) = 0;
  }

  return process;
}

- (BOOL)allowsComputeSourceAccessToStream:(id)stream
{
  v4 = [stream componentsSeparatedByString:@":"];
  firstObject = [v4 firstObject];

  process = self->_process;
  if (!process)
  {
    goto LABEL_15;
  }

  [(BMProcess *)process identifier];

  if (!BMIdentifierIsPathSafe(firstObject))
  {
    goto LABEL_15;
  }

  processType = [(BMProcess *)self->_process processType];
  v8 = 1;
  if (processType > 4)
  {
    if ((processType - 6) < 2)
    {
      goto LABEL_16;
    }

    if (processType == 5)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (processType == 8)
    {
      v9 = os_variant_allows_internal_security_policies();
      goto LABEL_20;
    }

LABEL_19:
    v9 = [(BMAccessControlPolicy *)self allowsAccessToStream:firstObject withMode:2];
    goto LABEL_20;
  }

  if (processType > 2)
  {
    if (processType != 3)
    {
      onBehalfOf = self->_onBehalfOf;
      if (!onBehalfOf)
      {
        goto LABEL_15;
      }

      v9 = [(BMAccessControlPolicy *)onBehalfOf allowsComputeSourceAccessToStream:firstObject];
LABEL_20:
      v8 = v9;
      goto LABEL_16;
    }

    v12 = BMSyncableStreamIdentifiers();
    v13 = [v12 containsObject:firstObject];

    if (v13)
    {
      v8 = 1;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!processType)
  {
    goto LABEL_15;
  }

  if (processType != 2)
  {
    goto LABEL_19;
  }

LABEL_16:

  return v8;
}

- (BOOL)allowsAccessToClientCompute:(id)compute
{
  computeCopy = compute;
  process = self->_process;
  if (!process)
  {
    goto LABEL_12;
  }

  processType = [(BMProcess *)process processType];
  v7 = 0;
  if (processType > 3)
  {
    if ((processType - 4) >= 2)
    {
      if ((processType - 6) < 2)
      {
        goto LABEL_9;
      }

      if (processType != 8)
      {
        goto LABEL_13;
      }

      v10 = os_variant_allows_internal_security_policies();
LABEL_16:
      v7 = v10;
      goto LABEL_13;
    }

    onBehalfOf = self->_onBehalfOf;
    if (onBehalfOf)
    {
      v10 = [(BMAccessControlPolicy *)onBehalfOf allowsAccessToClientCompute:computeCopy];
      goto LABEL_16;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  switch(processType)
  {
    case 1:
LABEL_6:
      identifier = [(BMProcess *)self->_process identifier];
      v7 = [identifier isEqual:computeCopy];

      break;
    case 2:
LABEL_9:
      v7 = 1;
      break;
    case 3:
      goto LABEL_6;
  }

LABEL_13:

  return v7;
}

- (BOOL)allowsProxyingBiomeEndpoint
{
  identifier = [(BMProcess *)self->_process identifier];
  if ([identifier isEqual:@"com.apple.coreduetd"])
  {
  }

  else
  {
    identifier2 = [(BMProcess *)self->_process identifier];
    v5 = [identifier2 isEqual:@"com.apple.knowledge-agent"];

    if (!v5)
    {
      return 0;
    }
  }

  process = self->_process;

  return [(BMProcess *)process BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"];
}

- (void)_warnAboutInternalEntitlement:(id)entitlement streamIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  identifierCopy = identifier;
  if (os_variant_has_internal_diagnostics())
  {
    executablePath = [(BMProcess *)self->_process executablePath];
    if (([executablePath containsString:@"/usr/local/"] & 1) == 0 && (objc_msgSend(executablePath, "containsString:", @"/usr/appleinternal/") & 1) == 0 && (objc_msgSend(executablePath, "containsString:", @"/AppleInternal/") & 1) == 0)
    {
      v9 = __biome_log_for_category(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = identifierCopy;
        v13 = 2114;
        v14 = entitlementCopy;
        _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "WARNING: utilizing internal-only policy to allow access to '%{public}@' via entitlement '%{public}@'", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)allowsAccessToContextSyncStreams:(id)streams
{
  v51 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  v5 = +[BMAccessControlPolicy contextSyncMapping];
  v6 = [streamsCopy mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = streamsCopy;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v24 = __biome_log_for_category(6);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC15D000, v24, OS_LOG_TYPE_INFO, "allowsAccessToContextSyncStreams: set is not exclusively ContextSync.LOI", buf, 2u);
          }

          goto LABEL_36;
        }

        v14 = [v5 objectForKeyedSubscript:v12];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  process = self->_process;
  if (!process)
  {
    v25 = __biome_log_for_category(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "allowsAccessToContextSyncStreams: _process == nil";
LABEL_34:
      _os_log_impl(&dword_1AC15D000, v25, OS_LOG_TYPE_INFO, v26, buf, 2u);
    }

LABEL_35:

    goto LABEL_36;
  }

  identifier = [(BMProcess *)process identifier];

  if (!identifier)
  {
    v25 = __biome_log_for_category(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "allowsAccessToContextSyncStreams: !_process.identifier";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if ((BMIdentifierIsPathSafe(*(*(&v39 + 1) + 8 * j)) & 1) == 0)
        {
          v27 = __biome_log_for_category(6);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC15D000, v27, OS_LOG_TYPE_INFO, "allowsAccessToContextSyncStreams: !BMStreamIdentifierIsPathSafe(streamIdentifier)", buf, 2u);
          }

          goto LABEL_36;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType <= 3)
  {
    if ((processType - 2) < 2)
    {
      v23 = 1;
      goto LABEL_37;
    }

    if (processType)
    {
      goto LABEL_41;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  if ((processType - 4) < 2 || (processType - 6) < 2)
  {
    goto LABEL_36;
  }

  if (processType == 8)
  {
    v23 = os_variant_allows_internal_security_policies();
    goto LABEL_37;
  }

LABEL_41:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v7;
  v31 = [v30 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    while (2)
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        if (![(BMAccessControlPolicy *)self allowsAccessToStream:*(*(&v35 + 1) + 8 * k) withMode:1, v35])
        {
          v23 = 0;
          goto LABEL_51;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_51:

LABEL_37:
  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)allowsAccessToContextSync
{
  if ([(BMProcess *)self->_process processType]== 2 || [(BMProcess *)self->_process processType]== 3)
  {
    return 1;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType > 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]);
  }

  if (((1 << processType) & 0xF1) != 0)
  {
    return 0;
  }

  if (((1 << processType) & 0xC) != 0)
  {
    return 1;
  }

  if (processType != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]);
  }

  return os_variant_allows_internal_security_policies();
}

+ (BOOL)process:(id)process canActOnBehalfOfProcess:(id)ofProcess
{
  processCopy = process;
  ofProcessCopy = ofProcess;
  if ([processCopy processType] != 4)
  {
    if ([processCopy processType] != 5)
    {
      goto LABEL_9;
    }

    processType = [ofProcessCopy processType];
    if ((processType - 1) < 3 || processType == 7)
    {
      v8 = 1;
      goto LABEL_11;
    }

    if (processType != 8)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  processType2 = [ofProcessCopy processType];
  if (processType2 == 8)
  {
LABEL_8:
    v8 = os_variant_allows_internal_security_policies();
    goto LABEL_11;
  }

  v8 = processType2 == 1;
LABEL_11:

  return v8;
}

+ (id)syncableSetIdentifiers
{
  if (syncableSetIdentifiers_onceToken != -1)
  {
    +[BMAccessControlPolicy(SyncableSets) syncableSetIdentifiers];
  }

  v3 = syncableSetIdentifiers_identifiers;

  return v3;
}

void __61__BMAccessControlPolicy_SyncableSets__syncableSetIdentifiers__block_invoke()
{
  v0 = objc_opt_new();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = getCCSetConfigurationClass_softClass;
  v10 = getCCSetConfigurationClass_softClass;
  if (!getCCSetConfigurationClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getCCSetConfigurationClass_block_invoke;
    v6[3] = &unk_1E796AC10;
    v6[4] = &v7;
    __getCCSetConfigurationClass_block_invoke(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = [v1 valueForKeyPath:@"syncableSetConfigurations.setIdentifier"];
  [v0 addObjectsFromArray:v3];

  v4 = [v0 copy];
  v5 = syncableSetIdentifiers_identifiers;
  syncableSetIdentifiers_identifiers = v4;
}

- (BOOL)allowsAccessToSetStoreUpdateServiceForSet:(id)set
{
  setCopy = set;
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    goto LABEL_4;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType > 8)
  {
    goto LABEL_10;
  }

  if (((1 << processType) & 0x35) == 0)
  {
    if (processType == 3)
    {
      syncableSetIdentifiers = [objc_opt_class() syncableSetIdentifiers];
      v10 = [syncableSetIdentifiers containsObject:setCopy];

      if (v10)
      {
        v7 = 1;
        goto LABEL_12;
      }
    }

    else if (processType == 8)
    {
      v8 = os_variant_allows_internal_security_policies();
LABEL_11:
      v7 = v8;
      goto LABEL_12;
    }

LABEL_10:
    v8 = [(BMAccessControlPolicy *)self allowsAccessToSet:setCopy withMode:3];
    goto LABEL_11;
  }

LABEL_4:
  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)allowsAccessToWriteServiceForStream:(id)stream ofUser:(unsigned int)user
{
  streamCopy = stream;
  if ([streamCopy hasSuffix:@":subscriptions"] & 1) != 0 || (objc_msgSend(streamCopy, "hasSuffix:", @":tombstones"))
  {
    LOBYTE(identifier) = 0;
  }

  else
  {
    identifier = [(BMProcess *)self->_process identifier];

    if (identifier)
    {
      processType = [(BMProcess *)self->_process processType];
      LOBYTE(identifier) = 0;
      if (processType - 2 >= 4)
      {
        if (processType)
        {
          if (processType == 8)
          {
            LOBYTE(identifier) = os_variant_allows_internal_security_policies();
          }

          else
          {
            v9 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:2];
            LOBYTE(identifier) = [v9 containsObject:streamCopy];
          }
        }
      }
    }
  }

  return identifier;
}

- (BOOL)allowsAccessToBiomeAgentForUser:(unsigned int)user
{
  v23 = *MEMORY[0x1E69E9840];
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    goto LABEL_14;
  }

  if ([(BMProcess *)self->_process uid]>= 0x1F5)
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAccessControlPolicy(DaemonToAgent) allowsAccessToBiomeAgentForUser:v6];
    }

LABEL_8:

LABEL_14:
    LOBYTE(v9) = 0;
LABEL_15:
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  if (user <= 0x1F4)
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAccessControlPolicy(DaemonToAgent) allowsAccessToBiomeAgentForUser:v6];
    }

    goto LABEL_8;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType - 2 < 6 || processType == 0)
  {
    goto LABEL_14;
  }

  if (processType != 8)
  {
    v13 = objc_opt_new();
    v14 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:2];
    [v13 unionSet:v14];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v13;
    v9 = [v15 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v16 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v15);
          }

          if (!BMServiceDomainForStream(2, *(*(&v18 + 1) + 8 * i)))
          {
            LOBYTE(v9) = 1;
            goto LABEL_30;
          }
        }

        v9 = [v15 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E69E9840];

  return os_variant_allows_internal_security_policies();
}

- (BOOL)allowsAccessToProxyBiomeAgentEndpoint
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier || [(BMProcess *)self->_process processType]!= 2 || ![(NSString *)self->_useCase isEqual:@"__proxy__"])
  {
    return 0;
  }

  identifier2 = [(BMProcess *)self->_process identifier];
  v5 = [identifier2 isEqual:@"com.apple.biomed"];

  return v5;
}

+ (BOOL)allowsConfiguringConnection:(id)connection forUseCase:(id)case inDomain:(unint64_t)domain error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  caseCopy = case;
  if (BMIdentifierIsPathSafe(caseCopy))
  {
    bm_process = [connectionCopy bm_process];
    bm_accessControlPolicy = [connectionCopy bm_accessControlPolicy];
    useCase = [bm_accessControlPolicy useCase];
    if (useCase)
    {
      v13 = useCase;
      useCase2 = [bm_accessControlPolicy useCase];
      v15 = [useCase2 isEqual:caseCopy];

      if ((v15 & 1) == 0)
      {
        if (error)
        {
          v20 = MEMORY[0x1E696ABC0];
          v50 = *MEMORY[0x1E696A578];
          v51 = @"Use case already set";
          executableName = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          *error = [v20 errorWithDomain:@"BMAccessErrorDomain" code:5 userInfo:executableName];
LABEL_22:

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    if (([caseCopy hasPrefix:@"__"] & 1) == 0)
    {
      useCases = [bm_process useCases];
      v17 = [useCases containsObject:caseCopy];

      if (v17)
      {
        goto LABEL_7;
      }
    }

    if ([BMAnyClientUseCaseAllowList containsObject:caseCopy])
    {
      goto LABEL_7;
    }

    v22 = [caseCopy isEqual:@"__proxy__"];
    processType = [bm_process processType];
    if (v22)
    {
      if (processType != 2 || ([bm_process identifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqual:", @"com.apple.biomed"), v24, (v25 & 1) == 0))
      {
        if ([bm_process processType] != 1 || (objc_msgSend(bm_process, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(&unk_1F20EBE60, "containsObject:", v26), v26, (v27 & 1) == 0))
        {
          if (error)
          {
            v28 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A578];
            v29 = MEMORY[0x1E696AEC0];
            executableName = [bm_process executableName];
            caseCopy = [v29 stringWithFormat:@"Process '%@' not authorized for use-case '%@'", executableName, caseCopy];
            v49 = caseCopy;
            v31 = MEMORY[0x1E695DF20];
            v32 = &v49;
            v33 = &v48;
LABEL_20:
            v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
            *error = [v28 errorWithDomain:@"BMAccessErrorDomain" code:4 userInfo:v34];

LABEL_21:
            goto LABEL_22;
          }

LABEL_23:
          v18 = 0;
          goto LABEL_24;
        }
      }

LABEL_7:
      v18 = 1;
LABEL_24:

      goto LABEL_25;
    }

    if ((processType == 2 || [bm_process processType] == 7) && (objc_msgSend(BMBiomeDaemonUseCaseAllowList, "containsObject:", caseCopy) & 1) != 0 || objc_msgSend(bm_process, "processType") == 2 || objc_msgSend(bm_process, "processType") == 3)
    {
      goto LABEL_7;
    }

    if ([caseCopy isEqual:@"__internal__"])
    {
      if (os_variant_allows_internal_security_policies())
      {
        if ([bm_process processType] != 8)
        {
          if (!error)
          {
            goto LABEL_23;
          }

          v28 = MEMORY[0x1E696ABC0];
          v44 = *MEMORY[0x1E696A578];
          v37 = MEMORY[0x1E696AEC0];
          executableName = [bm_process executableName];
          caseCopy = [v37 stringWithFormat:@"Process '%@' not authorized for use-case '%@'", executableName, caseCopy];
          v45 = caseCopy;
          v31 = MEMORY[0x1E695DF20];
          v32 = &v45;
          v33 = &v44;
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if (!error)
      {
        goto LABEL_23;
      }

      v41 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      executableName = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use-case '%@' not authorized", caseCopy];
      v47 = executableName;
      caseCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v39 = v41;
      v40 = 4;
    }

    else
    {
      if (!error)
      {
        goto LABEL_23;
      }

      v38 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      executableName = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use case '%@' not found", caseCopy];
      v43 = executableName;
      caseCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v39 = v38;
      v40 = 3;
    }

    *error = [v39 errorWithDomain:@"BMAccessErrorDomain" code:v40 userInfo:caseCopy];
    goto LABEL_21;
  }

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    bm_process = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid use case '%@'", caseCopy];
    v53[0] = bm_process;
    bm_accessControlPolicy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    [v19 errorWithDomain:@"BMAccessErrorDomain" code:2 userInfo:bm_accessControlPolicy];
    *error = v18 = 0;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_25:

  v35 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (void)library
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"BMAccessControlPolicy.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)allowsConnectionToAccessServiceWithDomain:(id *)a1 .cold.1(id *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*a1 executableName];
  [*a1 pid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)allowsConnectionToAccessServiceWithDomain:(id *)a1 .cold.2(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [*a1 executableName];
  [*a1 pid];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_FAULT, "Process %{public}@(%d) is not allowed to have datavault entitlement", v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

@end