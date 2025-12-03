@interface FCFeedTransformationEndOfArticle
- (id)transformItems:(id)items isPaidBlock:(id)block sourceChannelIDProvider:(id)provider;
@end

@implementation FCFeedTransformationEndOfArticle

- (id)transformItems:(id)items isPaidBlock:(id)block sourceChannelIDProvider:(id)provider
{
  v123 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  blockCopy = block;
  providerCopy = provider;
  v9 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = itemsCopy;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Transforming items: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__36;
  v121 = __Block_byref_object_dispose__36;
  v72 = itemsCopy;
  v122 = [itemsCopy mutableCopy];
  v10 = [*(*(&buf + 1) + 40) count];
  if (v10 > [(FCFeedTransformationEndOfArticle *)self minimumResultHeadlineCount])
  {
    *&v113 = 0;
    *(&v113 + 1) = &v113;
    v114 = 0x3032000000;
    v115 = __Block_byref_object_copy__36;
    v116 = __Block_byref_object_dispose__36;
    v117 = 0;
    v11 = *(*(&buf + 1) + 40);
    minimumResultHeadlineCount = [(FCFeedTransformationEndOfArticle *)self minimumResultHeadlineCount];
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke;
    v108[3] = &unk_1E7C3B658;
    v108[4] = &buf;
    v108[5] = &v113;
    [v11 fc_subarrayWithCount:minimumResultHeadlineCount result:v108];
    [(FCFeedTransformationEndOfArticle *)self paidHeadlineRatio];
    if (v13 != 0.0)
    {
      minimumResultHeadlineCount2 = [(FCFeedTransformationEndOfArticle *)self minimumResultHeadlineCount];
      [(FCFeedTransformationEndOfArticle *)self paidHeadlineRatio];
      v16 = floor(v15 * minimumResultHeadlineCount2);
      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      v17 = v16;
      if (v16)
      {
        v18 = *(*(&buf + 1) + 40);
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_2;
        v106[3] = &unk_1E7C40740;
        v19 = blockCopy;
        v107 = v19;
        v20 = [v18 fc_countOfObjectsPassingTest:v106];
        v21 = v17 > v20;
        v22 = v17 - v20;
        if (v21)
        {
          v23 = objc_opt_new();
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v24 = [*(*(&v113 + 1) + 40) copy];
          v25 = [v24 countByEnumeratingWithState:&v102 objects:v112 count:16];
          if (v25)
          {
            v26 = *v103;
LABEL_12:
            v27 = 0;
            while (1)
            {
              if (*v103 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v102 + 1) + 8 * v27);
              if ((*(v19 + 2))(v19, v28))
              {
                [v23 addObject:v28];
                [*(*(&v113 + 1) + 40) removeObject:v28];
              }

              if ([v23 count] >= v22)
              {
                break;
              }

              if (v25 == ++v27)
              {
                v25 = [v24 countByEnumeratingWithState:&v102 objects:v112 count:16];
                if (v25)
                {
                  goto LABEL_12;
                }

                break;
              }
            }
          }

          v29 = objc_opt_new();
          v30 = *(*(&buf + 1) + 40);
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_3;
          v97[3] = &unk_1E7C40768;
          v31 = v29;
          v98 = v31;
          v32 = v23;
          v99 = v32;
          p_buf = &buf;
          v100 = v19;
          [v30 enumerateObjectsWithOptions:2 usingBlock:v97];
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          obj = v31;
          v33 = [obj countByEnumeratingWithState:&v93 objects:v111 count:16];
          if (v33)
          {
            v34 = *v94;
LABEL_22:
            v35 = 0;
            while (1)
            {
              if (*v94 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v93 + 1) + 8 * v35);
              if (![v32 count])
              {
                break;
              }

              v37 = [*(*(&buf + 1) + 40) objectAtIndex:{objc_msgSend(v36, "unsignedIntegerValue")}];
              [*(*(&v113 + 1) + 40) insertObject:v37 atIndex:0];
              v38 = *(*(&buf + 1) + 40);
              unsignedIntegerValue = [v36 unsignedIntegerValue];
              firstObject = [v32 firstObject];
              [v38 replaceObjectAtIndex:unsignedIntegerValue withObject:firstObject];

              [v32 removeObjectAtIndex:0];
              if (v33 == ++v35)
              {
                v33 = [obj countByEnumeratingWithState:&v93 objects:v111 count:16];
                if (v33)
                {
                  goto LABEL_22;
                }

                break;
              }
            }
          }
        }
      }
    }

    if ([(FCFeedTransformationEndOfArticle *)self isPaywallAvailable])
    {
      maxiumInaccessibleHeadlineCount = [(FCFeedTransformationEndOfArticle *)self maxiumInaccessibleHeadlineCount];
    }

    else
    {
      maxiumInaccessibleHeadlineCount = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_4;
    aBlock[3] = &unk_1E7C40790;
    aBlock[4] = self;
    v91 = blockCopy;
    v92 = providerCopy;
    v42 = _Block_copy(aBlock);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_5;
    v88[3] = &unk_1E7C407B8;
    v43 = v42;
    v89 = v43;
    obja = _Block_copy(v88);
    v44 = [*(*(&buf + 1) + 40) fc_countOfObjectsPassingTest:obja];
    v45 = v44 - maxiumInaccessibleHeadlineCount;
    if (v44 > maxiumInaccessibleHeadlineCount)
    {
      v46 = objc_opt_new();
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v47 = *(*(&v113 + 1) + 40);
      v48 = [v47 countByEnumeratingWithState:&v84 objects:v110 count:16];
      if (v48)
      {
        v49 = *v85;
LABEL_36:
        v50 = 0;
        while (1)
        {
          if (*v85 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v84 + 1) + 8 * v50);
          if ((*(v43 + 2))(v43, v51))
          {
            [v46 addObject:v51];
          }

          if ([v46 count] >= v45)
          {
            break;
          }

          if (v48 == ++v50)
          {
            v48 = [v47 countByEnumeratingWithState:&v84 objects:v110 count:16];
            if (v48)
            {
              goto LABEL_36;
            }

            break;
          }
        }
      }

      v52 = objc_opt_new();
      v53 = *(*(&buf + 1) + 40);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_6;
      v79[3] = &unk_1E7C407E0;
      v54 = v52;
      v80 = v54;
      v83 = v45;
      v81 = obja;
      v82 = &buf;
      [v53 enumerateObjectsWithOptions:2 usingBlock:v79];
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v55 = v54;
      v56 = [v55 countByEnumeratingWithState:&v75 objects:v109 count:16];
      if (v56)
      {
        v57 = *v76;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v76 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v75 + 1) + 8 * i);
            if ([v46 count])
            {
              v60 = *(*(&buf + 1) + 40);
              unsignedIntegerValue2 = [v59 unsignedIntegerValue];
              firstObject2 = [v46 firstObject];
              [v60 replaceObjectAtIndex:unsignedIntegerValue2 withObject:firstObject2];

              unsignedIntegerValue3 = 0;
              v64 = v46;
            }

            else
            {
              if ([(FCFeedTransformationEndOfArticle *)self isPaywallAvailable])
              {
                goto LABEL_55;
              }

              v64 = *(*(&buf + 1) + 40);
              unsignedIntegerValue3 = [v59 unsignedIntegerValue];
            }

            [v64 removeObjectAtIndex:unsignedIntegerValue3];
          }

          v56 = [v55 countByEnumeratingWithState:&v75 objects:v109 count:16];
        }

        while (v56);
      }

LABEL_55:
    }

    _Block_object_dispose(&v113, 8);
  }

  v65 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(*(&buf + 1) + 40);
    LODWORD(v113) = 138412290;
    *(&v113 + 4) = v66;
    _os_log_impl(&dword_1B63EF000, v65, OS_LOG_TYPE_DEFAULT, "Transformed items: %@", &v113, 0xCu);
  }

  v67 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v68 = *MEMORY[0x1E69E9840];

  return v67;
}

void __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 mutableCopy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) count];
  if (v7 >= [*(a1 + 40) count])
  {
    *a4 = 1;
  }

  else
  {
    v10 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a3];
    if (((*(*(a1 + 48) + 16))() & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v8 addObject:v9];
    }
  }
}

uint64_t __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = [*(a1 + 32) purchaseProvider];
    v5 = (*(*(a1 + 48) + 16))();
    v6 = [v4 purchasedTagIDs];
    v7 = [v6 containsObject:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) count] >= *(a1 + 56))
  {
    *a4 = 1;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:a3];
    LODWORD(v7) = (*(v7 + 16))(v7, v8);

    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v9 addObject:v10];
    }
  }
}

id __55__FCFeedTransformationEndOfArticle_transformHeadlines___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

@end