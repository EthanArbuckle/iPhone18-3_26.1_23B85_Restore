@interface CRFDRGen7DeviceHandler
- (BOOL)getMakeDataClassesAndInstancesWithPartSPC:(id)c fdrRemote:(__AMFDR *)remote makeClasses:(id *)classes makeInstances:(id *)instances makePropertiesDict:(id *)dict fdrError:(id *)error;
- (BOOL)getMinimalManifestsClassesAndInstancesWithPartSPC:(id)c fdrLocal:(__AMFDR *)local fdrRemote:(__AMFDR *)remote minimalSealingDataInstances:(id *)instances minimalSealedDataClasses:(id *)classes minimalSealedDataInstances:(id *)dataInstances minimalSealedVersions:(id *)versions error:(id *)self0;
- (BOOL)validateAndFilterPatchWithPartSPC:(id)c patchClasses:(id *)classes patchInstances:(id *)instances patchValues:(id *)values validClasses:(id)validClasses validInstances:(id)validInstances error:(id *)error;
- (BOOL)validateAndSetSerialNumbersUsingPartSPC:(id)c KGBSerialNumber:(id)number KBBSerialNumber:(id)serialNumber withError:(id *)error;
- (CRFDRGen7DeviceHandler)init;
- (id)getClaimDataClassesAndInstancesWithPartSPC:(id)c withError:(id *)error;
- (id)getPatchInfoPerSPC;
- (id)spcInPartSPC:(id)c withDataClass:(id)class;
- (id)spcWithComponent:(id)component withIdentifier:(id)identifier;
- (int64_t)validateDisplaySwapped:(id)swapped lessThan:(id)than;
@end

@implementation CRFDRGen7DeviceHandler

- (CRFDRGen7DeviceHandler)init
{
  v10.receiver = self;
  v10.super_class = CRFDRGen7DeviceHandler;
  v2 = [(CRFDRBaseDeviceHandler *)&v10 init];
  if (v2)
  {
    v3 = +[CRComponentDisplayRoswell sharedSingleton];
    v4 = +[CRComponentVeridian sharedSingleton];
    v5 = +[CRComponentPearl sharedSingleton];
    if (v3)
    {
      componentsMapping = [(CRFDRBaseDeviceHandler *)v2 componentsMapping];
      [componentsMapping setObject:v3 forKeyedSubscript:@"tcrt"];
    }

    if (v4)
    {
      componentsMapping2 = [(CRFDRBaseDeviceHandler *)v2 componentsMapping];
      [componentsMapping2 setObject:v4 forKeyedSubscript:@"vcrt"];
    }

    if (v5)
    {
      componentsMapping3 = [(CRFDRBaseDeviceHandler *)v2 componentsMapping];
      [componentsMapping3 setObject:v5 forKeyedSubscript:@"prpc"];
    }
  }

  return v2;
}

- (id)getClaimDataClassesAndInstancesWithPartSPC:(id)c withError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  cCopy = c;
  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = cCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v8)
  {
    v15 = 0;
    goto LABEL_27;
  }

  v9 = v8;
  errorCopy = error;
  v10 = *v30;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * i);
      if ([v12 isEqualToString:@"IPHONE COMP BATTERY"])
      {
        v28 = 0;
        v13 = [(CRFDRBaseDeviceHandler *)self _addDataClassAndInstanceToMutableDictionary:v7 dataClass:@"vcrt" withError:&v28];
        v14 = v28;
        v15 = v14;
        if (!v13 || v14)
        {
          v20 = handleForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }

      if ([v12 isEqualToString:@"IPHONE COMP DISPLAY"])
      {
        v27 = 0;
        v16 = [(CRFDRBaseDeviceHandler *)self _addDataClassAndInstanceToMutableDictionary:v7 dataClass:@"tcrt" withError:&v27];
        v17 = v27;
        v15 = v17;
        if (!v16 || v17)
        {
          v20 = handleForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
LABEL_25:
            [CRFDRGen7DeviceHandler getClaimDataClassesAndInstancesWithPartSPC:withError:];
          }

LABEL_26:
          error = errorCopy;

          goto LABEL_27;
        }
      }

      if ([v12 isEqualToString:@"IPHONE COMP FACEID"])
      {
        if ([CRFDRBaseDeviceHandler isFDRDataClassSupported:@"prpc"])
        {
          v26 = 0;
          v18 = [(CRFDRBaseDeviceHandler *)self _addDataClassAndInstanceToMutableDictionary:v7 dataClass:@"prpc" withError:&v26];
          v19 = v26;
          v15 = v19;
          if (!v18 || v19)
          {
            v20 = handleForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }
        }
      }
    }

    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v15 = 0;
  error = errorCopy;
LABEL_27:

  if (error)
  {
    v21 = v15;
    *error = v15;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)getPatchInfoPerSPC
{
  v2 = MGGetProductType();
  if (v2 == 3591055299 || v2 == 3048527336)
  {
    return &unk_1F4BCD828;
  }

  else
  {
    return 0;
  }
}

- (BOOL)getMakeDataClassesAndInstancesWithPartSPC:(id)c fdrRemote:(__AMFDR *)remote makeClasses:(id *)classes makeInstances:(id *)instances makePropertiesDict:(id *)dict fdrError:(id *)error
{
  v183 = *MEMORY[0x1E69E9840];
  cCopy = c;
  currentProperties = [(CRFDRBaseDeviceHandler *)self currentProperties];
  v14 = [currentProperties mutableCopy];

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v136 = v16;
  obj = v15;
  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:v18 fdrRemote:? makeClasses:? makeInstances:? makePropertiesDict:? fdrError:?];
    }

    v19 = 0;
    v20 = 0;
    LOBYTE(v21) = 0;
    dictCopy3 = dict;
    classesCopy3 = classes;
    goto LABEL_264;
  }

  v24 = AMFDRGetOptions();
  v132 = v24;
  selfCopy = self;
  if (v24)
  {
    instancesCopy = instances;
    v26 = [v24 objectForKeyedSubscript:@"Metadata"];
    v27 = [v26 mutableCopy];
    if (v27)
    {
      currentProperties2 = [(CRFDRBaseDeviceHandler *)selfCopy currentProperties];
      v29 = [currentProperties2 objectForKeyedSubscript:@"mlb#"];

      if (v29)
      {
        currentProperties3 = [(CRFDRBaseDeviceHandler *)selfCopy currentProperties];
        v31 = [currentProperties3 objectForKeyedSubscript:@"mlb#"];
        [(__CFString *)v27 setObject:v31 forKeyedSubscript:@"MLBNumber"];
      }

      currentProperties4 = [(CRFDRBaseDeviceHandler *)selfCopy currentProperties];
      v33 = [currentProperties4 objectForKeyedSubscript:@"SrNm"];

      if (v33)
      {
        currentProperties5 = [(CRFDRBaseDeviceHandler *)selfCopy currentProperties];
        v35 = [currentProperties5 objectForKeyedSubscript:@"SrNm"];
        [(__CFString *)v27 setObject:v35 forKeyedSubscript:@"SerialNumber"];
      }

      AMFDRSetOption();
    }

    v36 = handleForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v180 = v27;
      _os_log_impl(&dword_1CEDC5000, v36, OS_LOG_TYPE_DEFAULT, "Meta-data = %@", buf, 0xCu);
    }

    instances = instancesCopy;
    self = selfCopy;
  }

  if ([(CRFDRBaseDeviceHandler *)self allowFactoryReset])
  {
    [v14 setObject:@"1" forKeyedSubscript:@"SrvP"];
    v19 = 0;
LABEL_21:
    LOBYTE(v21) = 0;
    goto LABEL_263;
  }

  if ([(CRFDRBaseDeviceHandler *)self isServicePart])
  {
    if (([cCopy containsObject:@"IPHONE COMP MLB"] & 1) == 0)
    {
      v19 = createCRError(0xFFFFFFFFFFFFFFE2, @"KGB isServicePart without MTUB SPC", 0);
      goto LABEL_21;
    }

    v172 = 0;
    v171 = 0;
    v170 = 0;
    v169 = 0;
    LODWORD(v21) = [(CRFDRBaseDeviceHandler *)self getDataClassesAndInstancesOfKBBWith:remote dataClasses:&v172 dataInstances:&v171 propertiesDict:&v170 fdrError:&v169];
    v37 = v169;
    v38 = v37;
    if (v21 && !v37)
    {
      if (v170)
      {
        v39 = [v170 objectForKeyedSubscript:@"SrvP"];
        v40 = [v39 isEqualToString:@"1"];

        if (v40)
        {
          v38 = createCRError(0xFFFFFFFFFFFFFFE3, @"KBB isServicePart", 0);
LABEL_167:
          v87 = 0;
          goto LABEL_255;
        }

        if (v170)
        {
          v109 = [v170 objectForKeyedSubscript:@"drp#"];

          if (v109)
          {
            v110 = [v170 objectForKeyedSubscript:@"drp#"];
            [v14 setObject:v110 forKeyedSubscript:@"drp#"];

            v111 = handleForCategory(0);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              [v170 objectForKeyedSubscript:@"drp#"];
              v113 = v112 = instances;
              *buf = 138412546;
              v180 = @"drp#";
              v181 = 2112;
              v182 = v113;
              _os_log_impl(&dword_1CEDC5000, v111, OS_LOG_TYPE_DEFAULT, "transferring property %@: %@", buf, 0x16u);

              instances = v112;
            }

            v114 = [v14 objectForKeyedSubscript:@"drp#"];
            [(CRFDRBaseDeviceHandler *)self setKbbCGSN:v114];
          }

          if (v170)
          {
            v115 = [v170 objectForKeyedSubscript:@"arc#"];

            if (v115)
            {
              v116 = [v170 objectForKeyedSubscript:@"arc#"];
              [v14 setObject:v116 forKeyedSubscript:@"arc#"];

              v117 = handleForCategory(0);
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                [v170 objectForKeyedSubscript:@"arc#"];
                v119 = v118 = instances;
                *buf = 138412546;
                v180 = @"arc#";
                v181 = 2112;
                v182 = v119;
                _os_log_impl(&dword_1CEDC5000, v117, OS_LOG_TYPE_DEFAULT, "transferring property %@: %@", buf, 0x16u);

                instances = v118;
              }
            }
          }
        }
      }

      [v14 setObject:@"0" forKeyedSubscript:@"SrvP"];
      if ([v172 count])
      {
        instancesCopy2 = instances;
        v121 = 0;
        do
        {
          v122 = [v172 objectAtIndexedSubscript:v121];
          v123 = [v171 objectAtIndexedSubscript:v121];
          if ([&unk_1F4BCD1B0 containsObject:v122])
          {
            [obj addObject:v122];
            [v136 addObject:v123];
          }

          ++v121;
        }

        while ([v172 count]> v121);
        v38 = 0;
        v87 = 1;
        instances = instancesCopy2;
      }

      else
      {
        v38 = 0;
        v87 = 1;
      }

LABEL_255:

      if (!v87)
      {
        v19 = v38;
        goto LABEL_263;
      }

      goto LABEL_30;
    }

    v86 = handleForCategory(0);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:v86 fdrRemote:? makeClasses:? makeInstances:? makePropertiesDict:? fdrError:?];
    }

    goto LABEL_167;
  }

  v38 = 0;
LABEL_30:
  errorCopy = error;
  instancesCopy3 = instances;
  v130 = v14;
  if (![cCopy containsObject:@"IPHONE COMP DISPLAY"])
  {
    goto LABEL_60;
  }

  v127 = cCopy;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v41 = [&unk_1F4BCD120 countByEnumeratingWithState:&v165 objects:v178 count:16];
  if (!v41)
  {
    goto LABEL_57;
  }

  v42 = v41;
  v43 = *v166;
  do
  {
    v44 = 0;
    do
    {
      if (*v166 != v43)
      {
        objc_enumerationMutation(&unk_1F4BCD120);
      }

      v45 = *(*(&v165 + 1) + 8 * v44);
      if ([CRFDRBaseDeviceHandler isFDRDataClassSupported:v45])
      {
        v164 = v38;
        LOBYTE(v21) = [(CRFDRBaseDeviceHandler *)self _addDataClassAndInstancesToMutableArray:v45 dataClasses:obj dataInstances:v136 withError:&v164];
        v19 = v164;

        if (![(CRFDRBaseDeviceHandler *)self allowMissingData]|| [CRFDRBaseDeviceHandler isFDRPrimaryDataClass:v45])
        {
          if (v19)
          {
            v46 = 0;
          }

          else
          {
            v46 = v21;
          }

          if ((v46 & 1) == 0)
          {
            v85 = handleForCategory(0);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
            }

            goto LABEL_259;
          }

LABEL_43:
          v38 = 0;
          goto LABEL_47;
        }

        if (v19)
        {
          v47 = 0;
        }

        else
        {
          v47 = v21;
        }

        if (v47)
        {
          goto LABEL_43;
        }

        v48 = handleForCategory(0);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v180 = v45;
          _os_log_impl(&dword_1CEDC5000, v48, OS_LOG_TYPE_DEFAULT, "%@ is missing, but allowed", buf, 0xCu);
        }

        v38 = 0;
      }

      else
      {
        v19 = handleForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v180 = v45;
          _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "The device doesn't support class %@, so the class won't be added", buf, 0xCu);
        }
      }

LABEL_47:
      ++v44;
    }

    while (v42 != v44);
    v49 = [&unk_1F4BCD120 countByEnumeratingWithState:&v165 objects:v178 count:16];
    v42 = v49;
  }

  while (v49);
LABEL_57:
  v163 = v38;
  LODWORD(v21) = [(CRFDRBaseDeviceHandler *)self _addPropertyToMutableDictionary:v14 property:@"drp#" withError:&v163];
  v19 = v163;

  if (!v21 || v19)
  {
    v108 = handleForCategory(0);
    cCopy = v127;
    instances = instancesCopy3;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
    }

    goto LABEL_263;
  }

  v38 = 0;
  cCopy = v127;
LABEL_60:
  if ([cCopy containsObject:@"IPHONE COMP CAMERA"])
  {
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v50 = [&unk_1F4BCD150 countByEnumeratingWithState:&v159 objects:v177 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v160;
      do
      {
        v53 = 0;
        v131 = v51;
        do
        {
          if (*v160 != v52)
          {
            objc_enumerationMutation(&unk_1F4BCD150);
          }

          v54 = *(*(&v159 + 1) + 8 * v53);
          if ([CRFDRBaseDeviceHandler isFDRDataClassSupported:v54])
          {
            v158 = v38;
            LOBYTE(v21) = [(CRFDRBaseDeviceHandler *)selfCopy _addDataClassAndInstancesToMutableArray:v54 dataClasses:obj dataInstances:v136 withError:&v158];
            v19 = v158;

            if ([(CRFDRBaseDeviceHandler *)selfCopy allowMissingData]&& ![CRFDRBaseDeviceHandler isFDRPrimaryDataClass:v54])
            {
              if (v19)
              {
                v61 = 0;
              }

              else
              {
                v61 = v21;
              }

              if ((v61 & 1) == 0)
              {
                v62 = handleForCategory(0);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v180 = v54;
                  _os_log_impl(&dword_1CEDC5000, v62, OS_LOG_TYPE_DEFAULT, "%@ is missing, but allowed", buf, 0xCu);
                }
              }
            }

            else
            {
              if (v19)
              {
                v55 = 0;
              }

              else
              {
                v55 = v21;
              }

              if ((v55 & 1) == 0)
              {
                v106 = handleForCategory(0);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
                }

                goto LABEL_262;
              }
            }

            if (![@"CmCl" isEqual:v54])
            {
              v38 = 0;
              v51 = v131;
              goto LABEL_96;
            }

            v172 = 0;
            v56 = AMFDRSealingMapCopyAssemblyIdentifierForClass();
            v57 = v56;
            v19 = v172;
            if (v172)
            {
              v58 = handleForCategory(0);
              v51 = v131;
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v180 = v19;
                _os_log_error_impl(&dword_1CEDC5000, v58, OS_LOG_TYPE_ERROR, "Failed to get asid: %@", buf, 0xCu);
              }

              if (![(CRFDRBaseDeviceHandler *)selfCopy allowMissingData])
              {

                LOBYTE(v21) = 1;
                goto LABEL_262;
              }

              v59 = handleForCategory(0);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1CEDC5000, v59, OS_LOG_TYPE_DEFAULT, "Allow missing data, skip asid verify", buf, 2u);
              }

LABEL_94:
            }

            else
            {
              v51 = v131;
              if (v56)
              {
                AMFDRSetAssemblyIdentifierToVerify();
                v19 = v57;
                goto LABEL_94;
              }
            }

            v38 = 0;
            goto LABEL_96;
          }

          v60 = handleForCategory(0);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v180 = v54;
            _os_log_impl(&dword_1CEDC5000, v60, OS_LOG_TYPE_DEFAULT, "The device doesn't support class %@, so the class won't be added", buf, 0xCu);
          }

LABEL_96:
          ++v53;
        }

        while (v51 != v53);
        v51 = [&unk_1F4BCD150 countByEnumeratingWithState:&v159 objects:v177 count:16];
      }

      while (v51);
    }
  }

  if (![cCopy containsObject:@"IPHONE COMP FACEID"] || (v156 = 0u, v157 = 0u, v154 = 0u, v155 = 0u, (v63 = objc_msgSend(&unk_1F4BCD138, "countByEnumeratingWithState:objects:count:", &v154, v176, 16)) == 0))
  {
    v66 = selfCopy;
    goto LABEL_132;
  }

  v64 = v63;
  v65 = *v155;
  v21 = @"PlCl";
  v66 = selfCopy;
  while (2)
  {
    v67 = 0;
    while (2)
    {
      if (*v155 != v65)
      {
        objc_enumerationMutation(&unk_1F4BCD138);
      }

      v68 = *(*(&v154 + 1) + 8 * v67);
      if ([CRFDRBaseDeviceHandler isFDRDataClassSupported:v68])
      {
        v69 = cCopy;
        v70 = v21;
        v153 = v38;
        LOBYTE(v21) = [(CRFDRBaseDeviceHandler *)selfCopy _addDataClassAndInstancesToMutableArray:v68 dataClasses:obj dataInstances:v136 withError:&v153];
        v19 = v153;

        if ([(CRFDRBaseDeviceHandler *)selfCopy allowMissingData]&& ![CRFDRBaseDeviceHandler isFDRPrimaryDataClass:v68])
        {
          if (v19)
          {
            v73 = 0;
          }

          else
          {
            v73 = v21;
          }

          if ((v73 & 1) == 0)
          {
            v74 = handleForCategory(0);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v180 = v68;
              _os_log_impl(&dword_1CEDC5000, v74, OS_LOG_TYPE_DEFAULT, "%@ is missing, but allowed", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v19)
          {
            v71 = 0;
          }

          else
          {
            v71 = v21;
          }

          if ((v71 & 1) == 0)
          {
            v107 = handleForCategory(0);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
            }

            error = errorCopy;
            instances = instancesCopy3;
            dictCopy3 = dict;
            classesCopy3 = classes;
            v20 = v132;
            cCopy = v69;
            v14 = v130;
            goto LABEL_264;
          }
        }

        v21 = v70;
        if ([(__CFString *)v70 isEqual:v68])
        {
          v72 = AMFDRSealingMapCopyAssemblyIdentifierForClass();
          if (v72)
          {
            AMFDRSetAssemblyIdentifierToVerify();
          }

          v38 = 0;
          cCopy = v69;
          goto LABEL_117;
        }

        v38 = 0;
        cCopy = v69;
      }

      else
      {
        v72 = handleForCategory(0);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v180 = v68;
          _os_log_impl(&dword_1CEDC5000, v72, OS_LOG_TYPE_DEFAULT, "The device doesn't support class %@, so the class won't be added", buf, 0xCu);
        }

LABEL_117:
      }

      if (v64 != ++v67)
      {
        continue;
      }

      break;
    }

    v75 = [&unk_1F4BCD138 countByEnumeratingWithState:&v154 objects:v176 count:16];
    v64 = v75;
    if (v75)
    {
      continue;
    }

    break;
  }

LABEL_132:
  v127 = cCopy;
  if ([cCopy containsObject:@"IPHONE BACK GLASS"])
  {
    if ([CRDeviceMap supportRepair:1030])
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v76 = [&unk_1F4BCD198 countByEnumeratingWithState:&v149 objects:v175 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v150;
        do
        {
          v79 = 0;
          do
          {
            if (*v150 != v78)
            {
              objc_enumerationMutation(&unk_1F4BCD198);
            }

            v80 = *(*(&v149 + 1) + 8 * v79);
            if (![CRFDRBaseDeviceHandler isFDRDataClassSupported:v80, v127])
            {
              v19 = handleForCategory(0);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v180 = v80;
                _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "The device doesn't support class %@, so the class won't be added", buf, 0xCu);
              }

              goto LABEL_149;
            }

            v148 = v38;
            LOBYTE(v21) = [(CRFDRBaseDeviceHandler *)v66 _addDataClassAndInstancesToMutableArray:v80 dataClasses:obj dataInstances:v136 withError:&v148];
            v19 = v148;

            if ([(CRFDRBaseDeviceHandler *)v66 allowMissingData]&& ![CRFDRBaseDeviceHandler isFDRPrimaryDataClass:v80])
            {
              if (v19)
              {
                v82 = 0;
              }

              else
              {
                v82 = v21;
              }

              if ((v82 & 1) == 0)
              {
                v83 = handleForCategory(0);
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v180 = v80;
                  _os_log_impl(&dword_1CEDC5000, v83, OS_LOG_TYPE_DEFAULT, "%@ is missing, but allowed", buf, 0xCu);
                }

                v38 = 0;
LABEL_149:

                goto LABEL_150;
              }

              v38 = 0;
            }

            else
            {
              if (v19)
              {
                v81 = 0;
              }

              else
              {
                v81 = v21;
              }

              if ((v81 & 1) == 0)
              {
                v85 = handleForCategory(0);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
                }

                goto LABEL_259;
              }

              v38 = 0;
            }

LABEL_150:
            ++v79;
          }

          while (v77 != v79);
          v84 = [&unk_1F4BCD198 countByEnumeratingWithState:&v149 objects:v175 count:16];
          v77 = v84;
          cCopy = v127;
        }

        while (v84);
      }
    }
  }

  if ([cCopy containsObject:{@"IPHONE COMP ENCL", v127}])
  {
    v147 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v88 = [&unk_1F4BCD180 countByEnumeratingWithState:&v144 objects:v174 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v145;
      do
      {
        v91 = 0;
        do
        {
          if (*v145 != v90)
          {
            objc_enumerationMutation(&unk_1F4BCD180);
          }

          v92 = *(*(&v144 + 1) + 8 * v91);
          if ([CRFDRBaseDeviceHandler isFDRDataClassSupported:v92])
          {
            v143 = v38;
            LOBYTE(v21) = [(CRFDRBaseDeviceHandler *)v66 _addDataClassAndInstancesToMutableArray:v92 dataClasses:obj dataInstances:v136 withError:&v143];
            v19 = v143;

            if (![(CRFDRBaseDeviceHandler *)v66 allowMissingData]|| [CRFDRBaseDeviceHandler isFDRPrimaryDataClass:v92])
            {
              if (v19)
              {
                v93 = 0;
              }

              else
              {
                v93 = v21;
              }

              if ((v93 & 1) == 0)
              {
                v85 = handleForCategory(0);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
                }

                goto LABEL_259;
              }

LABEL_181:
              v38 = 0;
              goto LABEL_185;
            }

            if (v19)
            {
              v94 = 0;
            }

            else
            {
              v94 = v21;
            }

            if (v94)
            {
              goto LABEL_181;
            }

            v95 = handleForCategory(0);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v180 = v92;
              _os_log_impl(&dword_1CEDC5000, v95, OS_LOG_TYPE_DEFAULT, "%@ is missing, but allowed", buf, 0xCu);
            }

            v38 = 0;
          }

          else
          {
            v19 = handleForCategory(0);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v180 = v92;
              _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "The device doesn't support class %@, so the class won't be added", buf, 0xCu);
            }
          }

LABEL_185:
          ++v91;
        }

        while (v89 != v91);
        v96 = [&unk_1F4BCD180 countByEnumeratingWithState:&v144 objects:v174 count:16];
        v89 = v96;
      }

      while (v96);
    }
  }

  cCopy = v127;
  if (![v127 containsObject:@"IPHONE ENCLOSURE"] || (v141 = 0u, v142 = 0u, v139 = 0u, v140 = 0u, (v97 = objc_msgSend(&unk_1F4BCD168, "countByEnumeratingWithState:objects:count:", &v139, v173, 16)) == 0))
  {
    LOBYTE(v21) = 1;
    v19 = v38;
    goto LABEL_261;
  }

  v98 = v97;
  v99 = *v140;
  while (2)
  {
    v100 = 0;
LABEL_199:
    if (*v140 != v99)
    {
      objc_enumerationMutation(&unk_1F4BCD168);
    }

    v101 = *(*(&v139 + 1) + 8 * v100);
    if (![CRFDRBaseDeviceHandler isFDRDataClassSupported:v101])
    {
      v19 = handleForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v180 = v101;
        _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "The device doesn't support class %@, so the class won't be added", buf, 0xCu);
      }

      goto LABEL_211;
    }

    v138 = v38;
    LOBYTE(v21) = [(CRFDRBaseDeviceHandler *)v66 _addDataClassAndInstancesToMutableArray:v101 dataClasses:obj dataInstances:v136 withError:&v138];
    v19 = v138;

    if ([(CRFDRBaseDeviceHandler *)v66 allowMissingData]&& ![CRFDRBaseDeviceHandler isFDRPrimaryDataClass:v101])
    {
      if (v19)
      {
        v103 = 0;
      }

      else
      {
        v103 = v21;
      }

      if (v103)
      {
LABEL_208:
        v38 = 0;
        goto LABEL_212;
      }

      v104 = handleForCategory(0);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v180 = v101;
        _os_log_impl(&dword_1CEDC5000, v104, OS_LOG_TYPE_DEFAULT, "%@ is missing, but allowed", buf, 0xCu);
      }

      v38 = 0;
LABEL_211:

LABEL_212:
      if (v98 == ++v100)
      {
        v105 = [&unk_1F4BCD168 countByEnumeratingWithState:&v139 objects:v173 count:16];
        v98 = v105;
        LOBYTE(v21) = 1;
        if (!v105)
        {
          v19 = v38;
          goto LABEL_260;
        }

        continue;
      }

      goto LABEL_199;
    }

    break;
  }

  if (v19)
  {
    v102 = 0;
  }

  else
  {
    v102 = v21;
  }

  if (v102)
  {
    goto LABEL_208;
  }

  v85 = handleForCategory(0);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    [CRFDRGen7DeviceHandler getMakeDataClassesAndInstancesWithPartSPC:fdrRemote:makeClasses:makeInstances:makePropertiesDict:fdrError:];
  }

LABEL_259:

LABEL_260:
  cCopy = v127;
LABEL_261:
  error = errorCopy;
LABEL_262:
  instances = instancesCopy3;
  v14 = v130;
LABEL_263:
  dictCopy3 = dict;
  classesCopy3 = classes;
  v20 = v132;
LABEL_264:
  if (dictCopy3)
  {
    objc_storeStrong(dictCopy3, v14);
  }

  if (classesCopy3)
  {
    objc_storeStrong(classesCopy3, obj);
  }

  if (instances)
  {
    objc_storeStrong(instances, v136);
  }

  if (error)
  {
    v124 = v19;
    *error = v19;
  }

  v125 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)getMinimalManifestsClassesAndInstancesWithPartSPC:(id)c fdrLocal:(__AMFDR *)local fdrRemote:(__AMFDR *)remote minimalSealingDataInstances:(id *)instances minimalSealedDataClasses:(id *)classes minimalSealedDataInstances:(id *)dataInstances minimalSealedVersions:(id *)versions error:(id *)self0
{
  v96 = *MEMORY[0x1E69E9840];
  cCopy = c;
  v91 = 0;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v85 = cCopy;
  localCopy = local;
  remoteCopy = remote;
  if (!-[CRFDRBaseDeviceHandler isServicePart](self, "isServicePart") || ![cCopy containsObject:@"IPHONE COMP MLB"])
  {
    v36 = 0;
    v38 = 0;
    goto LABEL_25;
  }

  v89 = 0;
  v90 = 0;
  v88 = 0;
  v16 = [(CRFDRBaseDeviceHandler *)self getKBBMinimalManifestsWithVersions:&v88 minimalSealingDataInstances:&v90 minimalSealedDataClasses:0 minimalSealedDataInstances:0 minimalSealedVersions:&v89];
  v17 = v88;
  v18 = v17;
  v80 = v17;
  if (!v16 || v17)
  {
    v74 = @"getKBBMinimalManifestsWithVersions failed";
  }

  else
  {
    v19 = handleForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v93 = v90;
      v94 = 2112;
      v95 = v89;
      _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "KBB MinimalManifests: %@, %@", buf, 0x16u);
    }

    kBBDataClasses = [(CRFDRBaseDeviceHandler *)self KBBDataClasses];
    v21 = [kBBDataClasses count];

    if (v21)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        kBBDataClasses2 = [(CRFDRBaseDeviceHandler *)self KBBDataClasses];
        v25 = [kBBDataClasses2 objectAtIndexedSubscript:v22];

        if ([v25 isEqual:@"prpc"])
        {
          kBBDataInstances = [(CRFDRBaseDeviceHandler *)self KBBDataInstances];
          v27 = [kBBDataInstances objectAtIndexedSubscript:v22];

          v23 = v27;
        }

        ++v22;
        kBBDataClasses3 = [(CRFDRBaseDeviceHandler *)self KBBDataClasses];
        v29 = [kBBDataClasses3 count];
      }

      while (v29 > v22);
      if (v23)
      {
        v30 = handleForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v23;
          _os_log_impl(&dword_1CEDC5000, v30, OS_LOG_TYPE_DEFAULT, "KBB pearl instance: %@", buf, 0xCu);
        }

        if ([v90 count])
        {
          v31 = 0;
          do
          {
            v32 = [v90 objectAtIndexedSubscript:v31];
            if ([v32 isEqual:v23])
            {
              v33 = [v90 objectAtIndexedSubscript:v31];
              [v14 addObject:v33];

              v34 = [v89 objectAtIndexedSubscript:v31];
              if (v34)
              {
                [v15 addObject:v34];
              }

              else
              {
                null = [MEMORY[0x1E695DFB0] null];
                [v15 addObject:null];
              }
            }

            ++v31;
          }

          while ([v90 count] > v31);
        }

        v36 = 0;
        v37 = 1;
        goto LABEL_84;
      }
    }

    v74 = @"Failed to get kbb pearl instance";
    v18 = 0;
  }

  v36 = createCRError(0xFFFFFFFFFFFFFFDELL, v74, v18);
  v37 = 0;
  v23 = 0;
LABEL_84:

  if (!v37)
  {
    v45 = v15;
    v40 = v14;
    errorCopy6 = error;
    v41 = v80;
    if (!error)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  v38 = v80;
  cCopy = v85;
LABEL_25:
  if (([cCopy containsObject:@"IPHONE COMP FACEID"] & 1) != 0 || objc_msgSend(cCopy, "containsObject:", @"RECOVER"))
  {
    v89 = 0;
    v90 = 0;
    v39 = AMFDRSealingMapCopyMinimalManifestClassesAndInstancesWithAttribute();
    v40 = v90;

    v84 = v89;
    v41 = v91;

    if (!v39 || v41)
    {
      v43 = createCRError(0xFFFFFFFFFFFFFFFDLL, @"AMFDRSealingMapCopyMinimalManifestClassesAndInstancesWithAttribute failed", v41);

      LOBYTE(v37) = 0;
      v36 = v43;
      errorCopy6 = error;
      v45 = v84;
      if (!error)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    v42 = handleForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v93 = v40;
      v94 = 2112;
      v95 = v84;
      _os_log_impl(&dword_1CEDC5000, v42, OS_LOG_TYPE_DEFAULT, "Current MinimalManifests: %@, %@", buf, 0x16u);
    }

    v38 = 0;
  }

  else
  {
    v84 = v15;
    v40 = v14;
  }

  if ([v40 count])
  {
    v89 = 0;
    v90 = 0;
    obj = objc_opt_new();
    v46 = objc_opt_new();
    v87 = v38;
    v47 = [(CRFDRBaseDeviceHandler *)self getCurrentMinimalManifestsWithVersions:&v87 fdrRemote:remoteCopy minimalSealingDataInstances:&v90 minimalSealedDataClasses:0 minimalSealedDataInstances:0 minimalSealedVersions:&v89];
    v41 = v87;

    if (!v47 || v41)
    {
      v72 = @"getCurrentMinimalManifestsWithVersions failed";
      v73 = v41;
    }

    else
    {
      v48 = handleForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v93 = v90;
        v94 = 2112;
        v95 = v89;
        _os_log_impl(&dword_1CEDC5000, v48, OS_LOG_TYPE_DEFAULT, "Original MinimalManifests: %@, %@", buf, 0x16u);
      }

      currentDataClasses = [(CRFDRBaseDeviceHandler *)self currentDataClasses];
      v50 = [currentDataClasses count];

      if (v50)
      {
        v51 = 0;
        v52 = 0;
        do
        {
          currentDataClasses2 = [(CRFDRBaseDeviceHandler *)self currentDataClasses];
          v54 = [currentDataClasses2 objectAtIndexedSubscript:v51];

          if ([v54 isEqual:@"prpc"])
          {
            currentDataInstances = [(CRFDRBaseDeviceHandler *)self currentDataInstances];
            v56 = [currentDataInstances objectAtIndexedSubscript:v51];

            v52 = v56;
          }

          ++v51;
          currentDataClasses3 = [(CRFDRBaseDeviceHandler *)self currentDataClasses];
          v58 = [currentDataClasses3 count];
        }

        while (v58 > v51);
        v41 = 0;
        if (v52)
        {
          v59 = handleForCategory(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v93 = v52;
            _os_log_impl(&dword_1CEDC5000, v59, OS_LOG_TYPE_DEFAULT, "Current pearl instance: %@", buf, 0xCu);
          }

          v45 = v84;
          if ([v90 count])
          {
            v60 = 0;
            do
            {
              v61 = [v90 objectAtIndexedSubscript:v60];
              if (([v61 isEqual:v52] & 1) == 0)
              {
                v62 = [v90 objectAtIndexedSubscript:v60];
                [obj addObject:v62];

                v63 = [v89 objectAtIndexedSubscript:v60];
                if (v63)
                {
                  [v46 addObject:v63];
                }

                else
                {
                  null2 = [MEMORY[0x1E695DFB0] null];
                  [v46 addObject:null2];

                  v45 = v84;
                }
              }

              ++v60;
            }

            while ([v90 count] > v60);
          }

          if ([v40 count])
          {
            v65 = 0;
            do
            {
              v66 = [v40 objectAtIndexedSubscript:v65];
              [obj addObject:v66];

              v67 = [v45 objectAtIndexedSubscript:v65];
              if (v67)
              {
                [v46 addObject:v67];
              }

              else
              {
                null3 = [MEMORY[0x1E695DFB0] null];
                [v46 addObject:null3];
              }

              ++v65;
            }

            while ([v40 count] > v65);
          }

          v69 = handleForCategory(0);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v93 = obj;
            v94 = 2112;
            v95 = v46;
            _os_log_impl(&dword_1CEDC5000, v69, OS_LOG_TYPE_DEFAULT, "Merged MinimalManifests: %@, %@", buf, 0x16u);
          }

          v41 = 0;
          if ((([v85 containsObject:@"IPHONE COMP MLB"] & 1) != 0 || objc_msgSend(v85, "containsObject:", @"IPHONE COMP FACEID")) && !-[CRFDRBaseDeviceHandler setMinimalSealingMeta:hintDataClass:sealingInstances:](self, "setMinimalSealingMeta:hintDataClass:sealingInstances:", localCopy, @"pspc", v40))
          {
            v79 = createCRError(0xFFFFFFFFFFFFFFFDLL, @"Failed to set minimal sealing meta", 0);
            v37 = 0;
            v71 = v36;
            v36 = v79;
            errorCopy6 = error;
          }

          else
          {
            if (instances)
            {
              objc_storeStrong(instances, obj);
            }

            errorCopy6 = error;
            if (!versions)
            {
              v37 = 1;
LABEL_77:

              if (!v37)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }

            v70 = v46;
            v71 = *versions;
            *versions = v70;
            v37 = 1;
          }

LABEL_76:

          goto LABEL_77;
        }
      }

      v72 = @"Failed to get current pearl instance";
      v73 = 0;
    }

    v75 = createCRError(0xFFFFFFFFFFFFFFFDLL, v72, v73);
    v37 = 0;
    v52 = 0;
    v71 = v36;
    v36 = v75;
    errorCopy6 = error;
    v45 = v84;
    goto LABEL_76;
  }

  v41 = v38;
  errorCopy6 = error;
  v45 = v84;
LABEL_78:
  LOBYTE(v37) = 1;
LABEL_79:
  if (errorCopy6)
  {
LABEL_80:
    v76 = v36;
    *errorCopy6 = v36;
  }

LABEL_81:

  v77 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)validateAndSetSerialNumbersUsingPartSPC:(id)c KGBSerialNumber:(id)number KBBSerialNumber:(id)serialNumber withError:(id *)error
{
  cCopy = c;
  numberCopy = number;
  serialNumberCopy = serialNumber;
  v21.receiver = self;
  v21.super_class = CRFDRGen7DeviceHandler;
  v22 = 0;
  v13 = [(CRFDRBaseDeviceHandler *)&v21 validateAndSetSerialNumbersUsingPartSPC:cCopy KGBSerialNumber:numberCopy KBBSerialNumber:serialNumberCopy withError:&v22];
  v14 = v22;
  if (!v13)
  {
    v17 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (![cCopy containsObject:@"IPHONE COMP MLB"] || numberCopy && serialNumberCopy && objc_msgSend(numberCopy, "length") && objc_msgSend(serialNumberCopy, "length"))
  {
    if (!numberCopy || !serialNumberCopy || ![numberCopy isEqualToString:serialNumberCopy])
    {
      [(CRFDRBaseDeviceHandler *)self setKBBSerialNumber:serialNumberCopy];
      [(CRFDRBaseDeviceHandler *)self setKGBSerialNumber:numberCopy];
      v17 = 1;
      if (!error)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    serialNumberCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"KGBSrnm:%@ matches KBBSrnm:%@", numberCopy, serialNumberCopy];
    v16 = -31;
  }

  else
  {
    serialNumberCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required Srnm KGBSrnm:%@ KBBSrnm:%@", numberCopy, serialNumberCopy];
    v16 = -32;
  }

  v18 = createCRError(v16, serialNumberCopy, 0);

  v17 = 0;
  v14 = v18;
  if (error)
  {
LABEL_17:
    v19 = v14;
    *error = v14;
  }

LABEL_18:

  return v17;
}

- (int64_t)validateDisplaySwapped:(id)swapped lessThan:(id)than
{
  swappedCopy = swapped;
  thanCopy = than;
  v8 = thanCopy;
  if (!thanCopy || [thanCopy isEqual:&unk_1F4BCD9E0])
  {
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v9, OS_LOG_TYPE_DEFAULT, "No requirement for display swapped duration check", buf, 2u);
    }

    v10 = 0;
    goto LABEL_6;
  }

  if (![swappedCopy containsObject:@"IPHONE COMP DISPLAY"])
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = MGCopyAnswer();
  convertToHexString = [v9 convertToHexString];
  isServicePart = [(CRFDRBaseDeviceHandler *)self isServicePart];
  v14 = handleForCategory(0);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!isServicePart)
  {
    if (v15)
    {
      *v24 = 0;
      _os_log_impl(&dword_1CEDC5000, v14, OS_LOG_TYPE_DEFAULT, "Validate CG serial number with original MLB", v24, 2u);
    }

    intValue = [v8 intValue];
    previousCGSN = [(CRFDRBaseDeviceHandler *)self previousCGSN];
    sealDate = [(CRFDRBaseDeviceHandler *)self sealDate];
    v23 = [(CRFDRBaseDeviceHandler *)self validateSwappedForDays:intValue currentSN:convertToHexString previousSN:previousCGSN sealDate:sealDate];

    if (!v23)
    {
      v10 = -44;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    *v25 = 0;
    _os_log_impl(&dword_1CEDC5000, v14, OS_LOG_TYPE_DEFAULT, "Validate CG serial number with service MLB", v25, 2u);
  }

  intValue2 = [v8 intValue];
  kbbCGSN = [(CRFDRBaseDeviceHandler *)self kbbCGSN];
  kbbSealDate = [(CRFDRBaseDeviceHandler *)self kbbSealDate];
  v19 = [(CRFDRBaseDeviceHandler *)self validateSwappedForDays:intValue2 currentSN:convertToHexString previousSN:kbbCGSN sealDate:kbbSealDate];

  if (v19)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = -51;
LABEL_20:

LABEL_6:
LABEL_7:

  return v10;
}

- (id)spcInPartSPC:(id)c withDataClass:(id)class
{
  cCopy = c;
  classCopy = class;
  if (![@"vcrt" isEqual:classCopy] || (v7 = @"IPHONE COMP BATTERY", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP BATTERY") & 1) == 0))
  {
    if (![@"tcrt" isEqual:classCopy] || (v7 = @"IPHONE COMP DISPLAY", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP DISPLAY") & 1) == 0))
    {
      if (![@"prpc" isEqual:classCopy] || (v7 = @"IPHONE COMP FACEID", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP FACEID") & 1) == 0))
      {
        if (![&unk_1F4BCD150 containsObject:classCopy] || (v7 = @"IPHONE COMP CAMERA", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP CAMERA") & 1) == 0))
        {
          if (![&unk_1F4BCD198 containsObject:classCopy] || (v7 = @"IPHONE BACK GLASS", (objc_msgSend(cCopy, "containsObject:", @"IPHONE BACK GLASS") & 1) == 0))
          {
            if (![&unk_1F4BCD120 containsObject:classCopy] || (v7 = @"IPHONE COMP DISPLAY", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP DISPLAY") & 1) == 0))
            {
              if (![&unk_1F4BCD138 containsObject:classCopy] || (v7 = @"IPHONE COMP FACEID", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP FACEID") & 1) == 0))
              {
                if (![&unk_1F4BCD180 containsObject:classCopy] || (v7 = @"IPHONE COMP ENCL", (objc_msgSend(cCopy, "containsObject:", @"IPHONE COMP ENCL") & 1) == 0))
                {
                  if (![&unk_1F4BCD168 containsObject:classCopy] || (v7 = @"IPHONE ENCLOSURE", (objc_msgSend(cCopy, "containsObject:", @"IPHONE ENCLOSURE") & 1) == 0))
                  {
                    if ([&unk_1F4BCD1B0 containsObject:classCopy])
                    {
                      v7 = @"IPHONE COMP MLB";
                      if (![cCopy containsObject:@"IPHONE COMP MLB"])
                      {
                        v7 = 0;
                      }
                    }

                    else
                    {
                      v7 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (id)spcWithComponent:(id)component withIdentifier:(id)identifier
{
  componentCopy = component;
  if ([@"vcrt" isEqual:componentCopy])
  {
    v6 = @"IPHONE COMP BATTERY";
    goto LABEL_7;
  }

  if ([@"tcrt" isEqual:componentCopy])
  {
LABEL_4:
    v6 = @"IPHONE COMP DISPLAY";
    goto LABEL_7;
  }

  if ([@"prpc" isEqual:componentCopy])
  {
    goto LABEL_6;
  }

  if ([@"drp#" isEqual:componentCopy])
  {
    goto LABEL_4;
  }

  if ([&unk_1F4BCD150 containsObject:componentCopy])
  {
    v6 = @"IPHONE COMP CAMERA";
    goto LABEL_7;
  }

  if ([&unk_1F4BCD198 containsObject:componentCopy] && +[CRDeviceMap supportRepair:](CRDeviceMap, "supportRepair:", 1030))
  {
    v6 = @"IPHONE BACK GLASS";
    goto LABEL_7;
  }

  if ([&unk_1F4BCD120 containsObject:componentCopy])
  {
    goto LABEL_4;
  }

  if ([&unk_1F4BCD138 containsObject:componentCopy])
  {
LABEL_6:
    v6 = @"IPHONE COMP FACEID";
    goto LABEL_7;
  }

  if ([&unk_1F4BCD180 containsObject:componentCopy] && -[CRFDRGen7DeviceHandler supportArgonRepair](self, "supportArgonRepair"))
  {
    v6 = @"IPHONE COMP ENCL";
  }

  else if ([&unk_1F4BCD168 containsObject:componentCopy])
  {
    if ([(CRFDRGen7DeviceHandler *)self supportArgonRepair])
    {
      v6 = 0;
    }

    else
    {
      v6 = @"IPHONE ENCLOSURE";
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)validateAndFilterPatchWithPartSPC:(id)c patchClasses:(id *)classes patchInstances:(id *)instances patchValues:(id *)values validClasses:(id)validClasses validInstances:(id)validInstances error:(id *)error
{
  cCopy = c;
  v25.receiver = self;
  v25.super_class = CRFDRGen7DeviceHandler;
  v16 = [(CRFDRBaseDeviceHandler *)&v25 validateAndFilterPatchWithPartSPC:cCopy patchClasses:classes patchInstances:instances patchValues:values validClasses:validClasses validInstances:validInstances error:error];
  if (v16 && (!error || !*error))
  {
LABEL_13:
    LOBYTE(v16) = 1;
    goto LABEL_14;
  }

  if (([cCopy containsObject:@"IPHONE ENCLOSURE"] & 1) == 0)
  {
    if (classes)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid patch classes ignored: %@", *classes];
      [(CRFDRBaseDeviceHandler *)self storeWarningStrings:v17];

      v18 = *classes;
      *classes = 0;
    }

    if (instances)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid patch instances ignored: %@", *instances];
      [(CRFDRBaseDeviceHandler *)self storeWarningStrings:v19];

      v20 = *instances;
      *instances = 0;
    }

    if (values)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid patch values ignored: %@", *values];
      [(CRFDRBaseDeviceHandler *)self storeWarningStrings:v21];

      v22 = *values;
      *values = 0;
    }

    if (error)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Patch error ignored: %@", *error];
      [(CRFDRBaseDeviceHandler *)self storeWarningStrings:v23];

      *error = 0;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v16;
}

@end