@interface BMAccessControlPolicy
+ (BOOL)allowsConfiguringConnection:(id)a3 forUseCase:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6;
+ (BOOL)process:(id)a3 canActOnBehalfOfProcess:(id)a4;
+ (id)library;
+ (id)policyForProcess:(id)a3 connectionFlags:(unint64_t)a4 onBehalfOfProcessWithAccessControlPolicy:(id)a5;
+ (id)policyForProcess:(id)a3 connectionFlags:(unint64_t)a4 useCase:(id)a5;
+ (id)syncableSetIdentifiers;
+ (void)library;
+ (void)setLegacyStreamNameMappingCallback:(id)a3;
+ (void)setLegacyViewResourceMappingCallback:(id)a3;
+ (void)setUUIDStreamNameMappingCallback:(id)a3;
- (BMAccessControlPolicy)init;
- (BMAccessControlPolicy)initWithProcess:(id)a3 connectionFlags:(unint64_t)a4 useCase:(id)a5;
- (BOOL)allowsAccessToAllSetsWithMode:(unint64_t)a3;
- (BOOL)allowsAccessToBiomeAgentForUser:(unsigned int)a3;
- (BOOL)allowsAccessToClientCompute:(id)a3;
- (BOOL)allowsAccessToContextSync;
- (BOOL)allowsAccessToContextSyncStreams:(id)a3;
- (BOOL)allowsAccessToDatabase:(id)a3 withMode:(unint64_t)a4;
- (BOOL)allowsAccessToProxyBiomeAgentEndpoint;
- (BOOL)allowsAccessToResource:(id)a3 withMode:(unint64_t)a4;
- (BOOL)allowsAccessToSet:(id)a3 withMode:(unint64_t)a4;
- (BOOL)allowsAccessToSetStoreUpdateServiceForSet:(id)a3;
- (BOOL)allowsAccessToStream:(id)a3 withMode:(unint64_t)a4;
- (BOOL)allowsAccessToSync;
- (BOOL)allowsAccessToSyncMergeableDeltas;
- (BOOL)allowsAccessToView:(id)a3 withMode:(unint64_t)a4;
- (BOOL)allowsAccessToWriteServiceForStream:(id)a3 ofUser:(unsigned int)a4;
- (BOOL)allowsComputePublisherAccessToStreams:(id)a3;
- (BOOL)allowsComputeSourceAccessToStream:(id)a3;
- (BOOL)allowsConnectionToAccessServiceWithDomain:(unint64_t)a3;
- (BOOL)allowsConnectionToComputePublisherService;
- (BOOL)allowsConnectionToComputeSourceServiceWithDomain:(unint64_t)a3;
- (BOOL)allowsConnectionToSetStoreUpdateService;
- (BOOL)allowsConnectionToWriteService;
- (BOOL)allowsProxyingBiomeEndpoint;
- (NSString)descriptionOfProcessAndUseCase;
- (id)authorizedResources;
- (id)explicitlyAuthorizedResourcesOfType:(unint64_t)a3 withAccessMode:(unint64_t)a4;
- (unint64_t)allowedModeForStream:(id)a3;
- (void)_warnAboutInternalEntitlement:(id)a3 streamIdentifier:(id)a4;
@end

@implementation BMAccessControlPolicy

- (id)authorizedResources
{
  v163 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  authorizedResources = self->_authorizedResources;
  v106 = self;
  if (authorizedResources)
  {
    v4 = authorizedResources;
    goto LABEL_3;
  }

  v7 = [(BMProcess *)self->_process processType];
  if (!v7)
  {
    goto LABEL_23;
  }

  if (v7 == 3)
  {
    v21 = objc_opt_new();
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v22 = [objc_opt_class() syncableSetIdentifiers];
    v23 = [v22 countByEnumeratingWithState:&v119 objects:v132 count:16];
    if (v23)
    {
      v24 = *v120;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v120 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = [[BMResourceSpecifier alloc] initWithType:4 name:*(*(&v119 + 1) + 8 * i)];
          [(NSDictionary *)v21 setObject:&unk_1F20EBC08 forKeyedSubscript:v26];
        }

        v23 = [v22 countByEnumeratingWithState:&v119 objects:v132 count:16];
      }

      while (v23);
    }

    v27 = v106->_authorizedResources;
    v106->_authorizedResources = v21;
    v28 = v21;

    v4 = v106->_authorizedResources;
    goto LABEL_3;
  }

  if (v7 == 8 && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
LABEL_23:
    v20 = self->_authorizedResources;
    v4 = MEMORY[0x1E695E0F8];
    v106->_authorizedResources = MEMORY[0x1E695E0F8];

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

        process = v106->_process;
        useCase = v106->_useCase;
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

            v101 = v38;

            v43 = objc_opt_new();
            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3;
            v129[3] = &unk_1E796AD30;
            v130 = v43;
            v111 = v43;
            [v38 enumerateKeysAndObjectsUsingBlock:v129];
            v37 = [v111 copy];
            v44 = v130;
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

            v101 = v64;

            v69 = objc_opt_new();
            v127[0] = MEMORY[0x1E69E9820];
            v127[1] = 3221225472;
            v127[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_321;
            v127[3] = &unk_1E796AD30;
            v128 = v69;
            v111 = v69;
            [v64 enumerateKeysAndObjectsUsingBlock:v127];
            v37 = [v111 copy];
            v44 = v128;
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

            v101 = v70;

            v75 = objc_opt_new();
            v125[0] = MEMORY[0x1E69E9820];
            v125[1] = 3221225472;
            v125[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2_322;
            v125[3] = &unk_1E796AD30;
            v126 = v75;
            v111 = v75;
            [v70 enumerateKeysAndObjectsUsingBlock:v125];
            v37 = [v111 copy];
            v44 = v126;
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

            v101 = v76;

            v81 = objc_opt_new();
            v123[0] = MEMORY[0x1E69E9820];
            v123[1] = 3221225472;
            v123[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3_323;
            v123[3] = &unk_1E796AD30;
            v124 = v81;
            v111 = v81;
            [v76 enumerateKeysAndObjectsUsingBlock:v123];
            v37 = [v111 copy];
            v44 = v124;
            goto LABEL_96;
          }

          if (![v107 isEqual:@"com.apple.private.intelligenceplatform.views.read-only"])
          {
            goto LABEL_46;
          }

          v82 = legacyViewResourceMapper();
          v101 = [v82 databaseForViewName];

          if (!v101)
          {
            v37 = objc_opt_new();
            v35 = 0;
            goto LABEL_98;
          }

          v111 = [(BMProcess *)v104 nonnullArrayForEntitlement:v107];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v84 = objc_opt_new();
          v44 = v84;
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
                  v90 = (*(v101 + 16))(v101, v88);
                  if (v90)
                  {
                    v91 = [[BMResourceSpecifier alloc] initWithType:3 name:v90];
                    if (v91)
                    {
                      [v44 setObject:&unk_1F20EBC38 forKeyedSubscript:v91];
                    }
                  }

                  objc_autoreleasePoolPop(v89);
                }

                v85 = [v111 countByEnumeratingWithState:&v150 objects:v158 count:16];
              }

              while (v85);
            }

            v37 = [v44 copy];
            goto LABEL_96;
          }

          v37 = v84;
LABEL_97:

          v35 = v101;
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
          v44 = [v35 allKeys];
          v45 = [v44 countByEnumeratingWithState:&v159 objects:v158 count:16];
          v101 = v35;
          if (v45)
          {
            v100 = *v160;
            v98 = v44;
            v109 = v36;
LABEL_63:
            v46 = 0;
            v99 = v45;
            while (1)
            {
              if (*v160 != v100)
              {
                objc_enumerationMutation(v44);
              }

              v47 = *(*(&v159 + 1) + 8 * v46);
              if ((v36 & 1) != 0 || [(NSString *)v105 isEqualToString:*(*(&v159 + 1) + 8 * v46)])
              {
                break;
              }

LABEL_92:
              if (++v46 == v45)
              {
                v45 = [v44 countByEnumeratingWithState:&v159 objects:v158 count:16];
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

                  v35 = v101;
                  v46 = v102;
                  v44 = v98;
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
  v94 = v106->_authorizedResources;
  v106->_authorizedResources = v93;

  v4 = v93;
LABEL_3:
  os_unfair_lock_unlock(&v106->_lock);
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
  v3 = [(BMProcess *)self->_process identifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [(BMProcess *)self->_process processType];
  result = 0;
  if (v4 <= 3)
  {
    if (!v4)
    {
      return result;
    }

    if (v4 == 2 || v4 == 3)
    {
      return 1;
    }

    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"];
  }

  if ((v4 - 4) < 2)
  {
    return result;
  }

  if (v4 != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"];
  }

  return os_variant_allows_internal_security_policies();
}

- (BOOL)allowsConnectionToWriteService
{
  v3 = [(BMProcess *)self->_process identifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [(BMProcess *)self->_process processType];
  if (v4 - 2 < 4 || v4 == 0)
  {
    return 0;
  }

  if (v4 != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]);
  }

  return os_variant_allows_internal_security_policies();
}

- (NSString)descriptionOfProcessAndUseCase
{
  v3 = [(NSString *)self->_useCase hasPrefix:@"__"];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(BMProcess *)self->_process executableName];
  v6 = v5;
  if (v3)
  {
    v7 = [v4 initWithFormat:@"'%@'", v5, v10];
  }

  else
  {
    v7 = [v4 initWithFormat:@"'%@' use case '%@'", v5, self->_useCase];
  }

  v8 = v7;

  return v8;
}

+ (void)setLegacyViewResourceMappingCallback:(id)a3
{
  v3 = a3;
  v4 = legacyViewResourceMapper();
  [v4 setDatabaseForViewName:v3];
}

+ (void)setLegacyStreamNameMappingCallback:(id)a3
{
  v3 = a3;
  v4 = legacyViewResourceMapper();
  [v4 setStreamIdentifierForLegacyStreamName:v3];
}

+ (void)setUUIDStreamNameMappingCallback:(id)a3
{
  v3 = a3;
  v4 = legacyViewResourceMapper();
  [v4 setStreamIdentifierForUUIDString:v3];
}

+ (id)policyForProcess:(id)a3 connectionFlags:(unint64_t)a4 useCase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[BMAccessControlPolicy library];
  if (v8)
  {
    if ((a4 & 1) == 0)
    {
      v11 = [[a1 alloc] initWithProcess:v8 connectionFlags:a4 useCase:v9];
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

+ (id)policyForProcess:(id)a3 connectionFlags:(unint64_t)a4 onBehalfOfProcessWithAccessControlPolicy:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[BMAccessControlPolicy library];
  v11 = 0;
  if (v8 && v9)
  {
    v12 = [a1 alloc];
    v13 = [v9 useCase];
    v11 = [v12 initWithProcess:v8 connectionFlags:a4 | 1 useCase:v13];

    objc_storeStrong(v11 + 1, a5);
  }

  return v11;
}

- (BMAccessControlPolicy)init
{
  v3 = +[BMAccessControlPolicy library];

  return 0;
}

- (BMAccessControlPolicy)initWithProcess:(id)a3 connectionFlags:(unint64_t)a4 useCase:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = +[BMAccessControlPolicy library];
  if (v9)
  {
    v19.receiver = self;
    v19.super_class = BMAccessControlPolicy;
    v12 = [(BMAccessControlPolicy *)&v19 init];
    v13 = v12;
    if (v12)
    {
      v12->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v12->_process, a3);
      v14 = [v10 copy];
      useCase = v13->_useCase;
      v13->_useCase = v14;

      authorizedResources = v13->_authorizedResources;
      v13->_authorizedResources = 0;

      v13->_connectionFlags = a4;
    }

    self = v13;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)allowsConnectionToAccessServiceWithDomain:(unint64_t)a3
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

  v7 = [(BMProcess *)v6 executableName];
  v8 = [&unk_1F20EBE30 containsObject:v7];

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

- (BOOL)allowsAccessToStream:(id)a3 withMode:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (!a4 || !self->_process)
  {
    goto LABEL_27;
  }

  if (!BMIdentifierIsPathSafe(v6))
  {
    goto LABEL_26;
  }

  v9 = [(BMProcess *)self->_process processType];
  v8 = 1;
  if (v9 > 4)
  {
    if ((v9 - 6) < 2)
    {
      goto LABEL_27;
    }

    if (v9 == 5)
    {
      goto LABEL_26;
    }

    if (v9 == 8)
    {
      v10 = os_variant_allows_internal_security_policies();
LABEL_13:
      v8 = v10;
      goto LABEL_27;
    }
  }

  else if (v9 > 2)
  {
    if (v9 != 3)
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
    if (!v9)
    {
      goto LABEL_26;
    }

    if (v9 == 2)
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
    if ((a4 & 2) != 0)
    {
      goto LABEL_26;
    }

    v16 = [v7 componentsSeparatedByString:@":"];
    v17 = [v16 firstObject];

    v18 = self;
    v19 = 2;
LABEL_30:
    v22 = [(BMAccessControlPolicy *)v18 explicitlyAuthorizedResourcesOfType:1 withAccessMode:v19];
    v8 = [v22 containsObject:v17];

    goto LABEL_27;
  }

  if (v15)
  {
    v21 = [v7 componentsSeparatedByString:@":"];
    v17 = [v21 firstObject];

    v18 = self;
    v19 = a4;
    goto LABEL_30;
  }

  v8 = 1;
  v23 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:a4];
  if (([v23 containsObject:v7] & 1) == 0)
  {
    v8 = 0;
    if ([(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.private.security.storage.Biome"])
    {
      v24 = [(BMProcess *)self->_process executableName];
      v25 = [&unk_1F20EBE48 containsObject:v24];

      if (v25)
      {
        v8 = 1;
      }
    }
  }

LABEL_27:
  return v8;
}

- (BOOL)allowsAccessToDatabase:(id)a3 withMode:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 && self->_process)
  {
    if (BMIdentifierIsPathSafe(v6))
    {
      v9 = [(BMProcess *)self->_process processType];
      if (v9 > 8)
      {
LABEL_10:
        if (v9)
        {
          v11 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:3 withAccessMode:a4];
          v8 = [v11 containsObject:v7];

          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (((1 << v9) & 0x38) == 0)
      {
        if (((1 << v9) & 0xC4) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (v9 == 8)
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

- (BOOL)allowsAccessToView:(id)a3 withMode:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 && self->_process)
  {
    if (BMIdentifierIsPathSafe(v6))
    {
      v9 = [(BMProcess *)self->_process processType];
      if (v9 > 8)
      {
LABEL_10:
        if (v9)
        {
          v11 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:2 withAccessMode:a4];
          v8 = [v11 containsObject:v7];

          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (((1 << v9) & 0x38) == 0)
      {
        if (((1 << v9) & 0xC4) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (v9 == 8)
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

- (BOOL)allowsAccessToSet:(id)a3 withMode:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 && self->_process)
  {
    if (!BMIdentifierIsPathSafe(v6))
    {
      goto LABEL_22;
    }

    if ([v7 isEqual:@"BMSetsResource"])
    {
      v9 = [(BMAccessControlPolicy *)self allowsAccessToAllSetsWithMode:a4];
LABEL_6:
      v8 = v9;
      goto LABEL_23;
    }

    v10 = [(BMProcess *)self->_process processType];
    v8 = 1;
    if (v10 <= 4)
    {
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = [objc_opt_class() syncableSetIdentifiers];
          v12 = [v11 containsObject:v7];

          if (v12)
          {
            v8 = 1;
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      else if (v10)
      {
        if (v10 == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      goto LABEL_22;
    }

    if ((v10 - 6) < 2)
    {
      goto LABEL_23;
    }

    if (v10 != 5)
    {
      if (v10 == 8)
      {
        v9 = os_variant_allows_internal_security_policies();
        goto LABEL_6;
      }

LABEL_19:
      v13 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:4 withAccessMode:a4];
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

- (BOOL)allowsAccessToResource:(id)a3 withMode:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 type];
  LOBYTE(v8) = 0;
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v10 = [v6 name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToStream:v10 withMode:a4];
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_14;
      }

      v10 = [v6 name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToView:v10 withMode:a4];
    }

LABEL_13:
    LOBYTE(v8) = v11;

    goto LABEL_14;
  }

  switch(v7)
  {
    case 3:
      v10 = [v6 name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToDatabase:v10 withMode:a4];
      goto LABEL_13;
    case 4:
      v10 = [v6 name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToSet:v10 withMode:a4];
      goto LABEL_13;
    case 5:
      v9 = [v6 name];
      if ([v9 isEqual:@"BMSyncResource"])
      {
      }

      else
      {
        v13 = [v6 name];
        v14 = [v13 isEqual:@"BMSharedSyncResource"];

        if (!v14)
        {
          v16 = [v6 name];
          v8 = [v16 isEqual:@"BMSetsMergeableDeltasResource"];

          if (!v8)
          {
            break;
          }

          v15 = [(BMAccessControlPolicy *)self allowsAccessToSyncMergeableDeltas];
          goto LABEL_17;
        }
      }

      v15 = [(BMAccessControlPolicy *)self allowsAccessToSync];
LABEL_17:
      LOBYTE(v8) = v15;
      break;
  }

LABEL_14:

  return v8;
}

- (id)explicitlyAuthorizedResourcesOfType:(unint64_t)a3 withAccessMode:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = [(BMAccessControlPolicy *)self authorizedResources];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 type] == a3)
          {
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = [v14 unsignedIntegerValue];

            if (v15)
            {
              if (v15 == a4 || v15 == 3)
              {
                v17 = [v13 name];
                [v7 addObject:v17];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (unint64_t)allowedModeForStream:(id)a3
{
  v4 = a3;
  if ([v4 hasSuffix:@":subscriptions"])
  {
    if ([(BMProcess *)self->_process processType]== 2)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if ([(BMAccessControlPolicy *)self allowsAccessToStream:v4 withMode:3]|| [(BMAccessControlPolicy *)self allowsAccessToStream:v4 withMode:2])
    {
      v5 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 3;
  if (![(BMAccessControlPolicy *)self allowsAccessToStream:v4 withMode:3])
  {
    v5 = 1;
    if (![(BMAccessControlPolicy *)self allowsAccessToStream:v4 withMode:1])
    {
      v5 = 2;
      if (![(BMAccessControlPolicy *)self allowsAccessToStream:v4 withMode:2])
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
    v4 = [process processType];
    if (v4 > 8 || ((1 << v4) & 0x1D3) != 0)
    {
      LOBYTE(process) = 0;
    }

    else if (((1 << v4) & 0xC) != 0)
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

- (BOOL)allowsAccessToAllSetsWithMode:(unint64_t)a3
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

    LOBYTE(process) = [process allowsAccessToAllSetsWithMode:a3];
  }

  return process;
}

- (BOOL)allowsConnectionToComputePublisherService
{
  v3 = [(BMProcess *)self->_process identifier];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [(BMProcess *)self->_process processType];
  if (v4 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v4) & 0xCC) != 0)
  {
LABEL_4:
    LOBYTE(v4) = 1;
    return v4;
  }

  if (((1 << v4) & 0x30) != 0)
  {
LABEL_6:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (v4 != 8)
  {
LABEL_12:
    if (!v4)
    {
      return v4;
    }

    if ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]))
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  LOBYTE(v4) = os_variant_allows_internal_security_policies();
  return v4;
}

- (BOOL)allowsComputePublisherAccessToStreams:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v7 = v4;
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

  v12 = [(BMProcess *)self->_process processType];
  v13 = 1;
  if (v12 <= 3)
  {
    if (v12)
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v14 = BMSyncableStreamIdentifiers();
          v4 = [v7 bm_setBySubtractingSet:v14];

          if (![v4 count])
          {
            v13 = 1;
            goto LABEL_21;
          }

          v7 = v4;
        }

        goto LABEL_26;
      }

LABEL_20:
      v4 = v7;
      goto LABEL_21;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if ((v12 - 4) < 2)
  {
    goto LABEL_19;
  }

  if ((v12 - 6) < 2)
  {
    goto LABEL_20;
  }

  if (v12 == 8)
  {
    v13 = os_variant_allows_internal_security_policies();
    goto LABEL_20;
  }

LABEL_26:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v7;
  v17 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (![(BMAccessControlPolicy *)self allowsAccessToStream:*(*(&v21 + 1) + 8 * j) withMode:1, v21])
        {
          v13 = 0;
          goto LABEL_36;
        }
      }

      v18 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (BOOL)allowsConnectionToComputeSourceServiceWithDomain:(unint64_t)a3
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

      LOBYTE(process) = [process allowsConnectionToComputeSourceServiceWithDomain:a3];
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

- (BOOL)allowsComputeSourceAccessToStream:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@":"];
  v5 = [v4 firstObject];

  process = self->_process;
  if (!process)
  {
    goto LABEL_15;
  }

  [(BMProcess *)process identifier];

  if (!BMIdentifierIsPathSafe(v5))
  {
    goto LABEL_15;
  }

  v7 = [(BMProcess *)self->_process processType];
  v8 = 1;
  if (v7 > 4)
  {
    if ((v7 - 6) < 2)
    {
      goto LABEL_16;
    }

    if (v7 == 5)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (v7 == 8)
    {
      v9 = os_variant_allows_internal_security_policies();
      goto LABEL_20;
    }

LABEL_19:
    v9 = [(BMAccessControlPolicy *)self allowsAccessToStream:v5 withMode:2];
    goto LABEL_20;
  }

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      onBehalfOf = self->_onBehalfOf;
      if (!onBehalfOf)
      {
        goto LABEL_15;
      }

      v9 = [(BMAccessControlPolicy *)onBehalfOf allowsComputeSourceAccessToStream:v5];
LABEL_20:
      v8 = v9;
      goto LABEL_16;
    }

    v12 = BMSyncableStreamIdentifiers();
    v13 = [v12 containsObject:v5];

    if (v13)
    {
      v8 = 1;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  if (v7 != 2)
  {
    goto LABEL_19;
  }

LABEL_16:

  return v8;
}

- (BOOL)allowsAccessToClientCompute:(id)a3
{
  v4 = a3;
  process = self->_process;
  if (!process)
  {
    goto LABEL_12;
  }

  v6 = [(BMProcess *)process processType];
  v7 = 0;
  if (v6 > 3)
  {
    if ((v6 - 4) >= 2)
    {
      if ((v6 - 6) < 2)
      {
        goto LABEL_9;
      }

      if (v6 != 8)
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
      v10 = [(BMAccessControlPolicy *)onBehalfOf allowsAccessToClientCompute:v4];
      goto LABEL_16;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  switch(v6)
  {
    case 1:
LABEL_6:
      v8 = [(BMProcess *)self->_process identifier];
      v7 = [v8 isEqual:v4];

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
  v3 = [(BMProcess *)self->_process identifier];
  if ([v3 isEqual:@"com.apple.coreduetd"])
  {
  }

  else
  {
    v4 = [(BMProcess *)self->_process identifier];
    v5 = [v4 isEqual:@"com.apple.knowledge-agent"];

    if (!v5)
    {
      return 0;
    }
  }

  process = self->_process;

  return [(BMProcess *)process BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"];
}

- (void)_warnAboutInternalEntitlement:(id)a3 streamIdentifier:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    v8 = [(BMProcess *)self->_process executablePath];
    if (([v8 containsString:@"/usr/local/"] & 1) == 0 && (objc_msgSend(v8, "containsString:", @"/usr/appleinternal/") & 1) == 0 && (objc_msgSend(v8, "containsString:", @"/AppleInternal/") & 1) == 0)
    {
      v9 = __biome_log_for_category(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = v7;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "WARNING: utilizing internal-only policy to allow access to '%{public}@' via entitlement '%{public}@'", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)allowsAccessToContextSyncStreams:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[BMAccessControlPolicy contextSyncMapping];
  v6 = [v4 mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v4;
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

  v16 = [(BMProcess *)process identifier];

  if (!v16)
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

  v22 = [(BMProcess *)self->_process processType];
  if (v22 <= 3)
  {
    if ((v22 - 2) < 2)
    {
      v23 = 1;
      goto LABEL_37;
    }

    if (v22)
    {
      goto LABEL_41;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  if ((v22 - 4) < 2 || (v22 - 6) < 2)
  {
    goto LABEL_36;
  }

  if (v22 == 8)
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

  v4 = [(BMProcess *)self->_process processType];
  if (v4 > 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]);
  }

  if (((1 << v4) & 0xF1) != 0)
  {
    return 0;
  }

  if (((1 << v4) & 0xC) != 0)
  {
    return 1;
  }

  if (v4 != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]);
  }

  return os_variant_allows_internal_security_policies();
}

+ (BOOL)process:(id)a3 canActOnBehalfOfProcess:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 processType] != 4)
  {
    if ([v5 processType] != 5)
    {
      goto LABEL_9;
    }

    v9 = [v6 processType];
    if ((v9 - 1) < 3 || v9 == 7)
    {
      v8 = 1;
      goto LABEL_11;
    }

    if (v9 != 8)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = [v6 processType];
  if (v7 == 8)
  {
LABEL_8:
    v8 = os_variant_allows_internal_security_policies();
    goto LABEL_11;
  }

  v8 = v7 == 1;
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

- (BOOL)allowsAccessToSetStoreUpdateServiceForSet:(id)a3
{
  v4 = a3;
  v5 = [(BMProcess *)self->_process identifier];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(BMProcess *)self->_process processType];
  if (v6 > 8)
  {
    goto LABEL_10;
  }

  if (((1 << v6) & 0x35) == 0)
  {
    if (v6 == 3)
    {
      v9 = [objc_opt_class() syncableSetIdentifiers];
      v10 = [v9 containsObject:v4];

      if (v10)
      {
        v7 = 1;
        goto LABEL_12;
      }
    }

    else if (v6 == 8)
    {
      v8 = os_variant_allows_internal_security_policies();
LABEL_11:
      v7 = v8;
      goto LABEL_12;
    }

LABEL_10:
    v8 = [(BMAccessControlPolicy *)self allowsAccessToSet:v4 withMode:3];
    goto LABEL_11;
  }

LABEL_4:
  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)allowsAccessToWriteServiceForStream:(id)a3 ofUser:(unsigned int)a4
{
  v5 = a3;
  if ([v5 hasSuffix:@":subscriptions"] & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @":tombstones"))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [(BMProcess *)self->_process identifier];

    if (v6)
    {
      v8 = [(BMProcess *)self->_process processType];
      LOBYTE(v6) = 0;
      if (v8 - 2 >= 4)
      {
        if (v8)
        {
          if (v8 == 8)
          {
            LOBYTE(v6) = os_variant_allows_internal_security_policies();
          }

          else
          {
            v9 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:2];
            LOBYTE(v6) = [v9 containsObject:v5];
          }
        }
      }
    }
  }

  return v6;
}

- (BOOL)allowsAccessToBiomeAgentForUser:(unsigned int)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(BMProcess *)self->_process identifier];

  if (!v5)
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

  if (a3 <= 0x1F4)
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAccessControlPolicy(DaemonToAgent) allowsAccessToBiomeAgentForUser:v6];
    }

    goto LABEL_8;
  }

  v7 = [(BMProcess *)self->_process processType];
  if (v7 - 2 < 6 || v7 == 0)
  {
    goto LABEL_14;
  }

  if (v7 != 8)
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
  v3 = [(BMProcess *)self->_process identifier];

  if (!v3 || [(BMProcess *)self->_process processType]!= 2 || ![(NSString *)self->_useCase isEqual:@"__proxy__"])
  {
    return 0;
  }

  v4 = [(BMProcess *)self->_process identifier];
  v5 = [v4 isEqual:@"com.apple.biomed"];

  return v5;
}

+ (BOOL)allowsConfiguringConnection:(id)a3 forUseCase:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6
{
  v53[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (BMIdentifierIsPathSafe(v9))
  {
    v10 = [v8 bm_process];
    v11 = [v8 bm_accessControlPolicy];
    v12 = [v11 useCase];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 useCase];
      v15 = [v14 isEqual:v9];

      if ((v15 & 1) == 0)
      {
        if (a6)
        {
          v20 = MEMORY[0x1E696ABC0];
          v50 = *MEMORY[0x1E696A578];
          v51 = @"Use case already set";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          *a6 = [v20 errorWithDomain:@"BMAccessErrorDomain" code:5 userInfo:v21];
LABEL_22:

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    if (([v9 hasPrefix:@"__"] & 1) == 0)
    {
      v16 = [v10 useCases];
      v17 = [v16 containsObject:v9];

      if (v17)
      {
        goto LABEL_7;
      }
    }

    if ([BMAnyClientUseCaseAllowList containsObject:v9])
    {
      goto LABEL_7;
    }

    v22 = [v9 isEqual:@"__proxy__"];
    v23 = [v10 processType];
    if (v22)
    {
      if (v23 != 2 || ([v10 identifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqual:", @"com.apple.biomed"), v24, (v25 & 1) == 0))
      {
        if ([v10 processType] != 1 || (objc_msgSend(v10, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(&unk_1F20EBE60, "containsObject:", v26), v26, (v27 & 1) == 0))
        {
          if (a6)
          {
            v28 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A578];
            v29 = MEMORY[0x1E696AEC0];
            v21 = [v10 executableName];
            v30 = [v29 stringWithFormat:@"Process '%@' not authorized for use-case '%@'", v21, v9];
            v49 = v30;
            v31 = MEMORY[0x1E695DF20];
            v32 = &v49;
            v33 = &v48;
LABEL_20:
            v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
            *a6 = [v28 errorWithDomain:@"BMAccessErrorDomain" code:4 userInfo:v34];

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

    if ((v23 == 2 || [v10 processType] == 7) && (objc_msgSend(BMBiomeDaemonUseCaseAllowList, "containsObject:", v9) & 1) != 0 || objc_msgSend(v10, "processType") == 2 || objc_msgSend(v10, "processType") == 3)
    {
      goto LABEL_7;
    }

    if ([v9 isEqual:@"__internal__"])
    {
      if (os_variant_allows_internal_security_policies())
      {
        if ([v10 processType] != 8)
        {
          if (!a6)
          {
            goto LABEL_23;
          }

          v28 = MEMORY[0x1E696ABC0];
          v44 = *MEMORY[0x1E696A578];
          v37 = MEMORY[0x1E696AEC0];
          v21 = [v10 executableName];
          v30 = [v37 stringWithFormat:@"Process '%@' not authorized for use-case '%@'", v21, v9];
          v45 = v30;
          v31 = MEMORY[0x1E695DF20];
          v32 = &v45;
          v33 = &v44;
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if (!a6)
      {
        goto LABEL_23;
      }

      v41 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use-case '%@' not authorized", v9];
      v47 = v21;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v39 = v41;
      v40 = 4;
    }

    else
    {
      if (!a6)
      {
        goto LABEL_23;
      }

      v38 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use case '%@' not found", v9];
      v43 = v21;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v39 = v38;
      v40 = 3;
    }

    *a6 = [v39 errorWithDomain:@"BMAccessErrorDomain" code:v40 userInfo:v30];
    goto LABEL_21;
  }

  if (a6)
  {
    v19 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid use case '%@'", v9];
    v53[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    [v19 errorWithDomain:@"BMAccessErrorDomain" code:2 userInfo:v11];
    *a6 = v18 = 0;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_25:

  v35 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (void)library
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMAccessControlPolicy.m" lineNumber:42 description:{@"%s", dlerror()}];

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