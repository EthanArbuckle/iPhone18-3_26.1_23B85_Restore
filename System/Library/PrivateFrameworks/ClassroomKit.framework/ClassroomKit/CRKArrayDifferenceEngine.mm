@interface CRKArrayDifferenceEngine
+ (id)configurationWithIncomingItemsIdentifierFunction:(id)function publishedItemsIdentifierFunction:(id)identifierFunction;
+ (id)identityConfiguration;
- (CRKArrayDifferenceEngine)initWithObject:(id)object keyPath:(id)path configuration:(id)configuration;
- (void)updateWithNewArray:(id)array;
@end

@implementation CRKArrayDifferenceEngine

- (CRKArrayDifferenceEngine)initWithObject:(id)object keyPath:(id)path configuration:(id)configuration
{
  objectCopy = object;
  pathCopy = path;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = CRKArrayDifferenceEngine;
  v11 = [(CRKArrayDifferenceEngine *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->mObject, objectCopy);
    v13 = [pathCopy copy];
    mKeyPath = v12->mKeyPath;
    v12->mKeyPath = v13;

    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v12;
}

+ (id)identityConfiguration
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)configurationWithIncomingItemsIdentifierFunction:(id)function publishedItemsIdentifierFunction:(id)identifierFunction
{
  identifierFunctionCopy = identifierFunction;
  functionCopy = function;
  v7 = objc_opt_new();
  [v7 setIncomingItemsIdentifierFunction:functionCopy];

  [v7 setPublishedItemsIdentifierFunction:identifierFunctionCopy];

  return v7;
}

- (void)updateWithNewArray:(id)array
{
  v121 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  WeakRetained = objc_loadWeakRetained(&self->mObject);
  if (!WeakRetained)
  {
    [CRKArrayDifferenceEngine updateWithNewArray:];
  }

  v87 = WeakRetained;
  v6 = [WeakRetained mutableArrayValueForKeyPath:self->mKeyPath];
  configuration = [(CRKArrayDifferenceEngine *)self configuration];
  incomingItemsIdentifierFunction = [configuration incomingItemsIdentifierFunction];
  v9 = &off_243616000;
  v91 = arrayCopy;
  v94 = v6;
  if (incomingItemsIdentifierFunction)
  {
    v10 = incomingItemsIdentifierFunction;
    configuration2 = [(CRKArrayDifferenceEngine *)self configuration];
    publishedItemsIdentifierFunction = [configuration2 publishedItemsIdentifierFunction];

    if (publishedItemsIdentifierFunction)
    {
      configuration3 = [(CRKArrayDifferenceEngine *)self configuration];
      incomingItemsIdentifierFunction2 = [configuration3 incomingItemsIdentifierFunction];

      configuration4 = [(CRKArrayDifferenceEngine *)self configuration];
      publishedItemsIdentifierFunction2 = [configuration4 publishedItemsIdentifierFunction];

      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __47__CRKArrayDifferenceEngine_updateWithNewArray___block_invoke;
      v118[3] = &unk_278DC20D8;
      v17 = publishedItemsIdentifierFunction2;
      v119 = v17;
      v18 = [v6 crk_mapUsingBlock:v118];
      v92 = [MEMORY[0x277CBEB98] setWithArray:v18];
      v19 = [v92 count];
      v96 = v18;
      if (v19 != [v18 count])
      {
        [(CRKArrayDifferenceEngine *)a2 updateWithNewArray:v6];
      }

      selfCopy = self;
      v20 = objc_opt_new();
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v21 = arrayCopy;
      v22 = [v21 countByEnumeratingWithState:&v114 objects:v120 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v115;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v115 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v114 + 1) + 8 * i);
            v27 = incomingItemsIdentifierFunction2[2](incomingItemsIdentifierFunction2, v26);
            [v20 setObject:v26 forKeyedSubscript:v27];
          }

          v23 = [v21 countByEnumeratingWithState:&v114 objects:v120 count:16];
        }

        while (v23);
      }

      v28 = MEMORY[0x277CBEB98];
      allKeys = [v20 allKeys];
      v30 = [v28 setWithArray:allKeys];

      v31 = v30;
      v32 = [v31 count];
      self = selfCopy;
      if (v32 != [v20 count])
      {
        [(CRKArrayDifferenceEngine *)a2 updateWithNewArray:selfCopy, v21];
      }

      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __47__CRKArrayDifferenceEngine_updateWithNewArray___block_invoke_2;
      v112[3] = &unk_278DC27C8;
      v113 = v20;
      v33 = v20;
      v34 = MEMORY[0x245D3AAD0](v112);
      v35 = v92;
      v36 = [v92 setByIntersectingSet:v31];

      v37 = v94;
      v9 = &off_243616000;
      goto LABEL_23;
    }
  }

  else
  {
  }

  configuration5 = [(CRKArrayDifferenceEngine *)self configuration];
  incomingItemsIdentifierFunction3 = [configuration5 incomingItemsIdentifierFunction];

  if (incomingItemsIdentifierFunction3)
  {
    [CRKArrayDifferenceEngine updateWithNewArray:];
  }

  configuration6 = [(CRKArrayDifferenceEngine *)self configuration];
  publishedItemsIdentifierFunction3 = [configuration6 publishedItemsIdentifierFunction];

  if (publishedItemsIdentifierFunction3)
  {
    [CRKArrayDifferenceEngine updateWithNewArray:];
  }

  v35 = [CRKPointerSet setWithArray:v6];
  v31 = [CRKPointerSet setWithArray:arrayCopy];
  v37 = v6;
  v36 = objc_opt_new();
  v17 = &__block_literal_global_67;
  v34 = &__block_literal_global_67;
  incomingItemsIdentifierFunction2 = &__block_literal_global_67;
LABEL_23:
  v89 = [v31 setBySubtractingSet:v35];
  v90 = v31;
  v93 = v35;
  v42 = [v35 setBySubtractingSet:v31];
  v43 = objc_opt_new();
  v44 = objc_opt_new();
  v104[0] = MEMORY[0x277D85DD0];
  v45 = *(v9 + 140);
  v104[1] = v45;
  v104[2] = __47__CRKArrayDifferenceEngine_updateWithNewArray___block_invoke_3;
  v104[3] = &unk_278DC27F0;
  v86 = v17;
  v110 = v86;
  v84 = v42;
  v105 = v84;
  v46 = v43;
  v106 = v46;
  selfCopy2 = self;
  v85 = v36;
  v108 = v85;
  v47 = v34;
  v111 = v47;
  v48 = v44;
  v109 = v48;
  [v37 enumerateObjectsUsingBlock:v104];
  v49 = v37;
  if ([v46 count])
  {
    [v37 removeObjectsAtIndexes:v46];
  }

  v83 = v46;
  v50 = v89;
  v52 = v90;
  v51 = v91;
  if ([v89 count] || objc_msgSend(v48, "count"))
  {
    v88 = v48;
    v82 = v47;
    configuration7 = [(CRKArrayDifferenceEngine *)self configuration];
    liftingFunction = [configuration7 liftingFunction];
    v55 = liftingFunction;
    if (!liftingFunction)
    {
      liftingFunction = &__block_literal_global_67;
    }

    v56 = MEMORY[0x245D3AAD0](liftingFunction);

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = v45;
    v100[2] = __47__CRKArrayDifferenceEngine_updateWithNewArray___block_invoke_4;
    v100[3] = &unk_278DC2818;
    v101 = v89;
    v102 = incomingItemsIdentifierFunction2;
    v81 = v56;
    v103 = v81;
    v57 = [v91 crk_mapUsingBlock:v100];
    configuration8 = [(CRKArrayDifferenceEngine *)self configuration];
    publishedItemsComparator = [configuration8 publishedItemsComparator];

    if (publishedItemsComparator)
    {
      v60 = v88;
      v80 = v57;
      [v60 addObjectsFromArray:v57];
      configuration9 = [(CRKArrayDifferenceEngine *)self configuration];
      publishedItemsComparator2 = [configuration9 publishedItemsComparator];
      v63 = [v60 sortedArrayUsingComparator:publishedItemsComparator2];

      v64 = [MEMORY[0x277CBEA60] arrayWithArray:v49];
      if ([v64 count])
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v97 = v63;
        v99 = v60;
        v95 = v64;
        do
        {
          if (v65 >= [v63 count])
          {
            break;
          }

          v68 = [v64 objectAtIndexedSubscript:v66];
          v69 = [v63 objectAtIndexedSubscript:v65];
          selfCopy3 = self;
          configuration10 = [(CRKArrayDifferenceEngine *)self configuration];
          publishedItemsComparator3 = [configuration10 publishedItemsComparator];
          v73 = (publishedItemsComparator3)[2](publishedItemsComparator3, v68, v69);

          if ((v73 + 1) > 1)
          {
            [v94 insertObject:v69 atIndex:v67];
            ++v65;
          }

          else
          {
            ++v66;
          }

          ++v67;

          v64 = v95;
          self = selfCopy3;
          v63 = v97;
          v60 = v99;
        }

        while (v66 < [v95 count]);
      }

      else
      {
        v66 = 0;
        v65 = 0;
      }

      v49 = v94;
      if (v65 < [v63 count])
      {
        v76 = v64;
        if (v66 != [v64 count])
        {
          [CRKArrayDifferenceEngine updateWithNewArray:];
        }

        v77 = [v63 subarrayWithRange:{v65, objc_msgSend(v63, "count") - v65}];
        v78 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v94, "count"), objc_msgSend(v77, "count")}];
        [v94 insertObjects:v77 atIndexes:v78];

        v64 = v76;
      }

      v52 = v90;
      v51 = v91;
      v48 = v88;
      v50 = v89;
      v47 = v82;
      v75 = v80;
    }

    else
    {
      v74 = v57;
      v48 = v88;
      if ([v88 count])
      {
        [CRKArrayDifferenceEngine updateWithNewArray:];
      }

      v75 = v74;
      v60 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v49, "count"), objc_msgSend(v74, "count")}];
      [v49 insertObjects:v75 atIndexes:v60];
      v47 = v82;
    }
  }
}

void __47__CRKArrayDifferenceEngine_updateWithNewArray___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v5 = (*(*(a1 + 72) + 16))();
  if ([*(a1 + 32) containsObject:v5])
  {
    goto LABEL_2;
  }

  v6 = [*(a1 + 48) configuration];
  v7 = [v6 updateBlock];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 56) containsObject:v5];

    if (v9)
    {
      v10 = (*(*(a1 + 80) + 16))();
      v11 = [*(a1 + 48) configuration];
      v12 = [v11 updateBlock];
      v13 = (v12)[2](v12, v21, v10);

      v14 = [*(a1 + 48) configuration];
      v15 = [v14 publishedItemsComparator];

      if (v15 && v13)
      {
        [*(a1 + 64) addObject:v21];
        [*(a1 + 40) addIndex:a3];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = [*(a1 + 48) configuration];
  v16 = [v10 updateBlock];
  if (v16)
  {

LABEL_11:
    goto LABEL_12;
  }

  v17 = [*(a1 + 48) configuration];
  v18 = [v17 publishedItemsComparator];
  if (!v18)
  {

    goto LABEL_11;
  }

  v19 = v18;
  v20 = [*(a1 + 56) containsObject:v5];

  if (v20)
  {
    [*(a1 + 64) addObject:v21];
LABEL_2:
    [*(a1 + 40) addIndex:a3];
  }

LABEL_12:
}

id __47__CRKArrayDifferenceEngine_updateWithNewArray___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = (*(a1[5] + 16))();
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = (*(a1[6] + 16))();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateWithNewArray:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateWithNewArray:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CRKArrayDifferenceEngine.m" lineNumber:127 description:{@"identifiers are not unique in the published array: %@", a3}];
}

- (void)updateWithNewArray:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CRKArrayDifferenceEngine.m" lineNumber:135 description:{@"identifiers are not unique in the incoming array: %@", a3}];
}

- (void)updateWithNewArray:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateWithNewArray:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateWithNewArray:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateWithNewArray:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end