@interface LACParamChecker
+ (id)_checkDictionary:(id)dictionary againstClassDictionary:(id)classDictionary entryName:(id)name customCheckBlock:(id)block;
+ (id)_checkEventProcessing:(id)processing;
+ (id)_checkEventProcessingEventDictionary:(id)dictionary;
+ (id)_checkSet:(id)set forValue:(id)value entityName:(id)name;
+ (id)checkACL:(id)l;
+ (id)checkCredentialType:(int64_t)type;
+ (id)checkEvent:(int64_t)event;
+ (id)checkInternalOperation:(int64_t)operation options:(id)options;
+ (id)checkOptions:(id)options;
+ (id)checkPolicy:(int64_t)policy;
+ (id)checkStorageOptions:(id)options;
@end

@implementation LACParamChecker

+ (id)_checkSet:(id)set forValue:(id)value entityName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  if ([set containsObject:valueCopy])
  {
    v9 = 0;
  }

  else
  {
    valueCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown %@: '%@'", nameCopy, valueCopy];
    v9 = [LACError errorWithCode:-1001 debugDescription:valueCopy];
  }

  return v9;
}

+ (id)_checkDictionary:(id)dictionary againstClassDictionary:(id)classDictionary entryName:(id)name customCheckBlock:(id)block
{
  dictionaryCopy = dictionary;
  classDictionaryCopy = classDictionary;
  nameCopy = name;
  blockCopy = block;
  v13 = [dictionaryCopy count];
  if (v13 <= [classDictionaryCopy count])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__9;
    v26 = __Block_byref_object_dispose__9;
    v27 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__LACParamChecker__checkDictionary_againstClassDictionary_entryName_customCheckBlock___block_invoke;
    v17[3] = &unk_1E7A97B58;
    v21 = &v22;
    v18 = nameCopy;
    v19 = classDictionaryCopy;
    v20 = blockCopy;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v17];
    v15 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exceeded number of %@s: %d (maximum allowed: %d).", nameCopy, objc_msgSend(dictionaryCopy, "count"), objc_msgSend(classDictionaryCopy, "count")];
    v15 = [LACError errorWithCode:-1001 debugDescription:v14];
  }

  return v15;
}

void __86__LACParamChecker__checkDictionary_againstClassDictionary_entryName_customCheckBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@: '%@'", *(a1 + 32), v20, v18, v19];
    v14 = LABEL_10:;
    v15 = [LACError errorWithCode:-1001 debugDescription:v14];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

LABEL_11:
    *a4 = 1;
    goto LABEL_12;
  }

  v8 = [*(a1 + 40) objectForKeyedSubscript:v20];
  if (!v8)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown %@: '%@'", *(a1 + 32), v20, v18, v19];
    goto LABEL_10;
  }

  v9 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value '%@' specified for %@ '%@', expected %@ instead.", v7, *(a1 + 32), v20, v9];
    goto LABEL_10;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = (*(v10 + 16))(v10, v20, v7);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
}

+ (id)checkOptions:(id)options
{
  optionsCopy = options;
  if (getTKTokenAuthOperationClass())
  {
    TKTokenAuthOperationClass = getTKTokenAuthOperationClass();
  }

  else
  {
    TKTokenAuthOperationClass = objc_opt_class();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__LACParamChecker_checkOptions___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = TKTokenAuthOperationClass;
  if (checkOptions__onceToken != -1)
  {
    dispatch_once(&checkOptions__onceToken, block);
  }

  v5 = [LACParamChecker _checkDictionary:optionsCopy againstClassDictionary:checkOptions__allOptions entryName:@"option" customCheckBlock:&__block_literal_global_32];

  return v5;
}

void __32__LACParamChecker_checkOptions___block_invoke(uint64_t a1)
{
  v84[78] = *MEMORY[0x1E69E9840];
  v82 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v83[0] = v82;
  v84[0] = objc_opt_class();
  v81 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
  v83[1] = v81;
  v84[1] = objc_opt_class();
  v80 = [MEMORY[0x1E696AD98] numberWithInteger:1001];
  v83[2] = v80;
  v84[2] = objc_opt_class();
  v79 = [MEMORY[0x1E696AD98] numberWithInteger:1004];
  v83[3] = v79;
  v84[3] = objc_opt_class();
  v78 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v83[4] = v78;
  v84[4] = objc_opt_class();
  v77 = [MEMORY[0x1E696AD98] numberWithInteger:1007];
  v83[5] = v77;
  v84[5] = objc_opt_class();
  v76 = [MEMORY[0x1E696AD98] numberWithInteger:1096];
  v83[6] = v76;
  v84[6] = objc_opt_class();
  v75 = [MEMORY[0x1E696AD98] numberWithInteger:1005];
  v83[7] = v75;
  v84[7] = objc_opt_class();
  v74 = [MEMORY[0x1E696AD98] numberWithInteger:1006];
  v83[8] = v74;
  v84[8] = objc_opt_class();
  v73 = [MEMORY[0x1E696AD98] numberWithInteger:1010];
  v83[9] = v73;
  v84[9] = objc_opt_class();
  v72 = [MEMORY[0x1E696AD98] numberWithInteger:1011];
  v83[10] = v72;
  v84[10] = objc_opt_class();
  v71 = [MEMORY[0x1E696AD98] numberWithInteger:1077];
  v83[11] = v71;
  v84[11] = objc_opt_class();
  v70 = [MEMORY[0x1E696AD98] numberWithInteger:1061];
  v83[12] = v70;
  v84[12] = objc_opt_class();
  v69 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
  v83[13] = v69;
  v84[13] = objc_opt_class();
  v68 = [MEMORY[0x1E696AD98] numberWithInteger:1063];
  v83[14] = v68;
  v84[14] = objc_opt_class();
  v67 = [MEMORY[0x1E696AD98] numberWithInteger:1064];
  v83[15] = v67;
  v84[15] = objc_opt_class();
  v66 = [MEMORY[0x1E696AD98] numberWithInteger:1066];
  v83[16] = v66;
  v84[16] = objc_opt_class();
  v65 = [MEMORY[0x1E696AD98] numberWithInteger:1069];
  v83[17] = v65;
  v84[17] = objc_opt_class();
  v64 = [MEMORY[0x1E696AD98] numberWithInteger:1070];
  v83[18] = v64;
  v84[18] = objc_opt_class();
  v63 = [MEMORY[0x1E696AD98] numberWithInteger:1088];
  v83[19] = v63;
  v84[19] = objc_opt_class();
  v62 = [MEMORY[0x1E696AD98] numberWithInteger:1071];
  v83[20] = v62;
  v84[20] = objc_opt_class();
  v61 = [MEMORY[0x1E696AD98] numberWithInteger:1072];
  v83[21] = v61;
  v84[21] = objc_opt_class();
  v60 = [MEMORY[0x1E696AD98] numberWithInteger:1068];
  v83[22] = v60;
  v84[22] = objc_opt_class();
  v59 = [MEMORY[0x1E696AD98] numberWithInteger:1073];
  v83[23] = v59;
  v84[23] = objc_opt_class();
  v58 = [MEMORY[0x1E696AD98] numberWithInteger:1074];
  v83[24] = v58;
  v84[24] = objc_opt_class();
  v57 = [MEMORY[0x1E696AD98] numberWithInteger:1075];
  v83[25] = v57;
  v84[25] = objc_opt_class();
  v56 = [MEMORY[0x1E696AD98] numberWithInteger:1076];
  v83[26] = v56;
  v84[26] = objc_opt_class();
  v55 = [MEMORY[0x1E696AD98] numberWithInteger:1081];
  v83[27] = v55;
  v84[27] = objc_opt_class();
  v54 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v83[28] = v54;
  v84[28] = objc_opt_class();
  v53 = [MEMORY[0x1E696AD98] numberWithInteger:1094];
  v83[29] = v53;
  v84[29] = objc_opt_class();
  v52 = [MEMORY[0x1E696AD98] numberWithInteger:1026];
  v83[30] = v52;
  v84[30] = objc_opt_class();
  v51 = [MEMORY[0x1E696AD98] numberWithInteger:1028];
  v83[31] = v51;
  v84[31] = objc_opt_class();
  v50 = [MEMORY[0x1E696AD98] numberWithInteger:1044];
  v83[32] = v50;
  v84[32] = objc_opt_class();
  v49 = [MEMORY[0x1E696AD98] numberWithInteger:1054];
  v83[33] = v49;
  v84[33] = objc_opt_class();
  v48 = [MEMORY[0x1E696AD98] numberWithInteger:1060];
  v83[34] = v48;
  v84[34] = objc_opt_class();
  v47 = [MEMORY[0x1E696AD98] numberWithInteger:1012];
  v83[35] = v47;
  v84[35] = objc_opt_class();
  v46 = [MEMORY[0x1E696AD98] numberWithInteger:1037];
  v83[36] = v46;
  v84[36] = objc_opt_class();
  v45 = [MEMORY[0x1E696AD98] numberWithInteger:1038];
  v83[37] = v45;
  v84[37] = objc_opt_class();
  v44 = [MEMORY[0x1E696AD98] numberWithInteger:1080];
  v83[38] = v44;
  v84[38] = objc_opt_class();
  v43 = [MEMORY[0x1E696AD98] numberWithInteger:1039];
  v83[39] = v43;
  v84[39] = objc_opt_class();
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:1033];
  v83[40] = v42;
  v84[40] = objc_opt_class();
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:1034];
  v83[41] = v41;
  v84[41] = objc_opt_class();
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:1013];
  v83[42] = v40;
  v84[42] = objc_opt_class();
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:1014];
  v83[43] = v39;
  v84[43] = objc_opt_class();
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:1047];
  v83[44] = v38;
  v84[44] = objc_opt_class();
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:1046];
  v83[45] = v37;
  v84[45] = objc_opt_class();
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:1048];
  v83[46] = v36;
  v84[46] = objc_opt_class();
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:1052];
  v83[47] = v35;
  v84[47] = objc_opt_class();
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:1017];
  v83[48] = v34;
  v84[48] = objc_opt_class();
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:1018];
  v83[49] = v33;
  v84[49] = objc_opt_class();
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:1030];
  v83[50] = v32;
  v84[50] = objc_opt_class();
  v31 = [MEMORY[0x1E696AD98] numberWithInteger:1031];
  v83[51] = v31;
  v84[51] = objc_opt_class();
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:1041];
  v83[52] = v30;
  v84[52] = objc_opt_class();
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:1042];
  v83[53] = v29;
  v84[53] = objc_opt_class();
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:1056];
  v83[54] = v28;
  v84[54] = objc_opt_class();
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:1059];
  v83[55] = v27;
  v84[55] = objc_opt_class();
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:1057];
  v83[56] = v26;
  v84[56] = objc_opt_class();
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:1003];
  v83[57] = v25;
  v84[57] = objc_opt_class();
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:1015];
  v83[58] = v24;
  v84[58] = objc_opt_class();
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:1016];
  v83[59] = v23;
  v84[59] = objc_opt_class();
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:1019];
  v83[60] = v22;
  v84[60] = objc_opt_class();
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:1024];
  v83[61] = v21;
  v84[61] = objc_opt_class();
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:1040];
  v83[62] = v20;
  v84[62] = objc_opt_class();
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:1043];
  v83[63] = v19;
  v84[63] = objc_opt_class();
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:1053];
  v83[64] = v18;
  v84[64] = objc_opt_class();
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:1067];
  v83[65] = v17;
  v84[65] = objc_opt_class();
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:1032];
  v83[66] = v16;
  v84[66] = objc_opt_class();
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:1020];
  v83[67] = v15;
  v84[67] = objc_opt_class();
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:1021];
  v83[68] = v14;
  v84[68] = objc_opt_class();
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:1027];
  v83[69] = v2;
  v84[69] = objc_opt_class();
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:1022];
  v83[70] = v3;
  v84[70] = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1025];
  v83[71] = v4;
  v84[71] = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1051];
  v83[72] = v5;
  v84[72] = objc_opt_class();
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:1079];
  v83[73] = v6;
  v84[73] = objc_opt_class();
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1087];
  v83[74] = v7;
  v84[74] = objc_opt_class();
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:1093];
  v83[75] = v8;
  v84[75] = objc_opt_class();
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:1084];
  v83[76] = v9;
  v84[76] = objc_opt_class();
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:1092];
  v83[77] = v10;
  v84[77] = objc_opt_class();
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:78];
  v12 = checkOptions__allOptions;
  checkOptions__allOptions = v11;

  v13 = *MEMORY[0x1E69E9840];
}

id __32__LACParamChecker_checkOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 integerValue] == 1007)
  {
    v5 = [LACParamChecker _checkEventProcessing:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)checkStorageOptions:(id)options
{
  v3 = checkStorageOptions__onceToken;
  optionsCopy = options;
  if (v3 != -1)
  {
    +[LACParamChecker checkStorageOptions:];
  }

  v5 = [LACParamChecker _checkDictionary:optionsCopy againstClassDictionary:checkStorageOptions__allOptions entryName:@"option" customCheckBlock:0];

  return v5;
}

void __39__LACParamChecker_checkStorageOptions___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v4 = v0;
  v5[0] = objc_opt_class();
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = checkStorageOptions__allOptions;
  checkStorageOptions__allOptions = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)_checkEventProcessing:(id)processing
{
  processingCopy = processing;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__LACParamChecker__checkEventProcessing___block_invoke;
  v6[3] = &unk_1E7A97BC0;
  v6[4] = &v7;
  [processingCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __41__LACParamChecker__checkEventProcessing___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid event: '%@'", v20];
    v17 = [LACError errorWithCode:-1001 debugDescription:v16];
    v9 = a1 + 32;
LABEL_7:
    v18 = *(*v9 + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_8;
  }

  v8 = +[LACParamChecker checkEvent:](LACParamChecker, "checkEvent:", [v20 integerValue]);
  v10 = *(a1 + 32);
  v9 = a1 + 32;
  v11 = *(v10 + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  if (*(*(*v9 + 8) + 40))
  {
LABEL_8:
    *a4 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value '%@' specified for event '%@', expected NSDictionary instead.", v20, v7];
    v17 = [LACError errorWithCode:-1001 debugDescription:v16];
    goto LABEL_7;
  }

  v13 = [LACParamChecker _checkEventProcessingEventDictionary:v7];
  v14 = *(*v9 + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (*(*(*v9 + 8) + 40))
  {
    goto LABEL_8;
  }

LABEL_9:
}

+ (id)_checkEventProcessingEventDictionary:(id)dictionary
{
  v3 = _checkEventProcessingEventDictionary__onceToken;
  dictionaryCopy = dictionary;
  if (v3 != -1)
  {
    +[LACParamChecker _checkEventProcessingEventDictionary:];
  }

  v5 = [LACParamChecker _checkDictionary:dictionaryCopy againstClassDictionary:_checkEventProcessingEventDictionary__allProcessingOptions entryName:@"processing option" customCheckBlock:0];

  return v5;
}

void __56__LACParamChecker__checkEventProcessingEventDictionary___block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v7[0] = v0;
  v8[0] = objc_opt_class();
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v7[1] = v1;
  v8[1] = objc_opt_class();
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v7[2] = v2;
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v7[3] = v3;
  v8[3] = objc_opt_class();
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = _checkEventProcessingEventDictionary__allProcessingOptions;
  _checkEventProcessingEventDictionary__allProcessingOptions = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)checkPolicy:(int64_t)policy
{
  if (checkPolicy__onceToken != -1)
  {
    +[LACParamChecker checkPolicy:];
  }

  v4 = checkPolicy__allPolicies;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:policy];
  v6 = [LACParamChecker _checkSet:v4 forValue:v5 entityName:@"policy"];

  return v6;
}

void __31__LACParamChecker_checkPolicy___block_invoke()
{
  v16 = MEMORY[0x1E695DFD8];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:1013];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:1016];
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:1017];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:1020];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:1018];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:1019];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:1010];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:1015];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:1003];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:1007];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:1008];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:1004];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:1005];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:1006];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:1009];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:1023];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:1024];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:1025];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1026];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1028];
  v6 = [v16 setWithObjects:{v26, v25, v23, v24, v22, v15, v21, v14, v20, v13, v19, v18, v17, v11, v12, v10, v9, v8, v0, v1, v2, v3, v4, v5, 0}];
  v7 = checkPolicy__allPolicies;
  checkPolicy__allPolicies = v6;
}

+ (id)checkACL:(id)l
{
  if (l)
  {
    v5 = 0;
  }

  else
  {
    v5 = [LACError errorWithCode:-1001 debugDescription:@"Missing ACL.", v3];
  }

  return v5;
}

+ (id)checkEvent:(int64_t)event
{
  if (checkEvent__onceToken != -1)
  {
    +[LACParamChecker checkEvent:];
  }

  v4 = checkEvent__allEvents;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:event];
  v6 = [LACParamChecker _checkSet:v4 forValue:v5 entityName:@"event"];

  return v6;
}

void __30__LACParamChecker_checkEvent___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:7];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:9];
  v7 = [v0 setWithObjects:{&unk_1F2693808, v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = checkEvent__allEvents;
  checkEvent__allEvents = v7;
}

+ (id)checkCredentialType:(int64_t)type
{
  if (checkCredentialType__onceToken != -1)
  {
    +[LACParamChecker checkCredentialType:];
  }

  v4 = checkCredentialType__allCredentialTypes;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [LACParamChecker _checkSet:v4 forValue:v5 entityName:@"credential type"];

  return v6;
}

void __39__LACParamChecker_checkCredentialType___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:-3];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:-9];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:-11];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:-8];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:-12];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:-2];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:-6];
  v9 = [v0 setWithObjects:{v11, v1, v2, v3, v4, v5, v6, v7, v8, 0}];
  v10 = checkCredentialType__allCredentialTypes;
  checkCredentialType__allCredentialTypes = v9;
}

+ (id)checkInternalOperation:(int64_t)operation options:(id)options
{
  optionsCopy = options;
  if (checkInternalOperation_options__onceToken != -1)
  {
    +[LACParamChecker checkInternalOperation:options:];
  }

  v6 = checkInternalOperation_options__allInternalOperations;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:operation];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    if (!optionsCopy || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Options must be of class: %@", v8];
    v9 = [LACError errorWithCode:-1001 debugDescription:v11];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:operation];
    v12 = [v10 stringWithFormat:@"Unknown internalOperation: %@", v11];
    v9 = [LACError errorWithCode:-1001 debugDescription:v12];
  }

LABEL_10:

  return v9;
}

void __50__LACParamChecker_checkInternalOperation_options___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v4 = v0;
  v5[0] = objc_opt_class();
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = checkInternalOperation_options__allInternalOperations;
  checkInternalOperation_options__allInternalOperations = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end