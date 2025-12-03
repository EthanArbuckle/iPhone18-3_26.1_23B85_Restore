@interface CHStrokeGroupingResult
+ (id)expandedStrokeGroupClusters:(id)clusters allClusters:(id)allClusters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToStrokeGroupingResult:(id)result;
- (CHStrokeGroupingResult)init;
- (CHStrokeGroupingResult)initWithCoder:(id)coder;
- (CHStrokeGroupingResult)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups;
- (CHStrokeGroupingResult)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups cachedAdjacencies:(const void *)adjacencies;
- (NSArray)strokeGroupClusters;
- (NSArray)textStrokeGroupClusters;
- (NSSet)nontextStrokeGroups;
- (NSSet)textStrokeGroups;
- (id).cxx_construct;
- (id)description;
- (id)groupingResultUpdatedWithGroupReplacements:(id)replacements;
- (id)strokeGroupsSortedBy:(unint64_t)by textGroupsOnly:(BOOL)only;
- (id)textStrokeGroupClustersAtPosition:(CGPoint)position closestAbove:(id *)above closestBelow:(id *)below;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHStrokeGroupingResult

- (CHStrokeGroupingResult)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use the designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use the designated initializer instead", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (CHStrokeGroupingResult)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups
{
  groupsCopy = groups;
  strokeGroupsCopy = strokeGroups;
  deletedStrokeGroupsCopy = deletedStrokeGroups;
  v40.receiver = self;
  v40.super_class = CHStrokeGroupingResult;
  v16 = [(CHStrokeGroupingResult *)&v40 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(groupsCopy, v11, v12, v13, v14, v15);
    strokeGroups = v16->_strokeGroups;
    v16->_strokeGroups = v17;

    v24 = objc_msgSend_copy(strokeGroupsCopy, v19, v20, v21, v22, v23);
    createdStrokeGroups = v16->_createdStrokeGroups;
    v16->_createdStrokeGroups = v24;

    v31 = objc_msgSend_copy(deletedStrokeGroupsCopy, v26, v27, v28, v29, v30);
    deletedStrokeGroups = v16->_deletedStrokeGroups;
    v16->_deletedStrokeGroups = v31;

    v38 = 0;
    v39 = 0;
    v37 = &v38;
    p_end_node = &v16->_cachedAdjacencies.__tree_.__end_node_;
    sub_18373F424(&v16->_cachedAdjacencies, v16->_cachedAdjacencies.__tree_.__end_node_.__left_);
    v34 = v38;
    v16->_cachedAdjacencies.__tree_.__begin_node_ = &v38;
    v16->_cachedAdjacencies.__tree_.__end_node_.__left_ = v34;
    v35 = v39;
    v16->_cachedAdjacencies.__tree_.__size_ = v39;
    if (v35)
    {
      v34[2] = p_end_node;
      v37 = &v38;
      v38 = 0;
      v39 = 0;
      v34 = 0;
    }

    else
    {
      v16->_cachedAdjacencies.__tree_.__begin_node_ = p_end_node;
    }

    sub_18373F424(&v37, v34);
  }

  return v16;
}

- (CHStrokeGroupingResult)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups cachedAdjacencies:(const void *)adjacencies
{
  groupsCopy = groups;
  strokeGroupsCopy = strokeGroups;
  deletedStrokeGroupsCopy = deletedStrokeGroups;
  v68.receiver = self;
  v68.super_class = CHStrokeGroupingResult;
  v18 = [(CHStrokeGroupingResult *)&v68 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(groupsCopy, v13, v14, v15, v16, v17);
    v20 = *(v18 + 13);
    *(v18 + 13) = v19;

    v26 = objc_msgSend_copy(strokeGroupsCopy, v21, v22, v23, v24, v25);
    v27 = *(v18 + 14);
    *(v18 + 14) = v26;

    v33 = objc_msgSend_copy(deletedStrokeGroupsCopy, v28, v29, v30, v31, v32);
    v34 = *(v18 + 15);
    *(v18 + 15) = v33;

    v35 = (v18 + 80);
    if (v18 + 80 != adjacencies)
    {
      v38 = *adjacencies;
      v37 = adjacencies + 8;
      v36 = v38;
      if (*(v18 + 12))
      {
        v40 = (v18 + 88);
        v39 = *(v18 + 11);
        v41 = *(v18 + 10);
        *(v18 + 10) = v18 + 88;
        *(v39 + 16) = 0;
        *(v18 + 11) = 0;
        *(v18 + 12) = 0;
        if (*(v41 + 8))
        {
          v42 = *(v41 + 8);
        }

        else
        {
          v42 = v41;
        }

        v69 = v18 + 80;
        v71 = v42;
        v67 = groupsCopy;
        if (!v42)
        {
          v61 = v36;
          goto LABEL_68;
        }

        v43 = v42[2];
        if (v43)
        {
          v44 = *v43;
          if (*v43 == v42)
          {
            *v43 = 0;
            while (1)
            {
              v66 = v43[1];
              if (!v66)
              {
                break;
              }

              do
              {
                v43 = v66;
                v66 = *v66;
              }

              while (v66);
            }
          }

          else
          {
            for (v43[1] = 0; v44; v44 = v43[1])
            {
              do
              {
                v43 = v44;
                v44 = *v44;
              }

              while (v44);
            }
          }
        }

        v70 = v43;
        if (v36 != v37)
        {
          while (1)
          {
            if (v42 != v36)
            {
              sub_1836DC16C((v42 + 4), v36[4], v36 + 5);
              sub_18372D3D4(v42 + 7, v36[7], v36[8], 0xCCCCCCCCCCCCCCCDLL * ((v36[8] - v36[7]) >> 3));
              v42 = v71;
            }

            v45 = *v40;
            v46 = (v18 + 88);
            v47 = (v18 + 88);
            if (*v40)
            {
              do
              {
                while (1)
                {
                  v46 = v45;
                  v48 = v45[4];
                  v49 = v45 + 5;
                  if (v48 == v49)
                  {
                    break;
                  }

                  v50 = v42[4];
                  while (v50 != v42 + 5)
                  {
                    v51 = v50[4];
                    v52 = v48[4];
                    if (v51 < v52)
                    {
                      break;
                    }

                    if (v52 >= v51)
                    {
                      v53 = v50[1];
                      v54 = v50;
                      if (v53)
                      {
                        do
                        {
                          v50 = v53;
                          v53 = *v53;
                        }

                        while (v53);
                      }

                      else
                      {
                        do
                        {
                          v50 = v54[2];
                          v55 = *v50 == v54;
                          v54 = v50;
                        }

                        while (!v55);
                      }

                      v56 = v48[1];
                      if (v56)
                      {
                        do
                        {
                          v57 = v56;
                          v56 = *v56;
                        }

                        while (v56);
                      }

                      else
                      {
                        do
                        {
                          v57 = v48[2];
                          v55 = *v57 == v48;
                          v48 = v57;
                        }

                        while (!v55);
                      }

                      v48 = v57;
                      if (v57 != v49)
                      {
                        continue;
                      }
                    }

                    goto LABEL_18;
                  }

                  v45 = *v46;
                  v47 = v46;
                  if (!*v46)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_18:
                v45 = v46[1];
              }

              while (v45);
              v47 = v46 + 1;
            }

LABEL_39:
            *v42 = 0;
            v42[1] = 0;
            v42[2] = v46;
            *v47 = v42;
            v58 = **v35;
            if (v58)
            {
              *v35 = v58;
            }

            sub_1836894A0(*(v18 + 11), v42);
            ++*(v18 + 12);
            v42 = v70;
            v71 = v70;
            if (v70)
            {
              v43 = v70[2];
              if (v43)
              {
                v59 = *v43;
                if (*v43 == v70)
                {
                  *v43 = 0;
                  while (1)
                  {
                    v62 = v43[1];
                    if (!v62)
                    {
                      break;
                    }

                    do
                    {
                      v43 = v62;
                      v62 = *v62;
                    }

                    while (v62);
                  }
                }

                else
                {
                  for (v43[1] = 0; v59; v59 = v43[1])
                  {
                    do
                    {
                      v43 = v59;
                      v59 = *v59;
                    }

                    while (v59);
                  }
                }
              }

              v70 = v43;
              v60 = v36[1];
              if (v60)
              {
                do
                {
LABEL_50:
                  v61 = v60;
                  v60 = *v60;
                }

                while (v60);
                goto LABEL_54;
              }
            }

            else
            {
              v43 = 0;
              v60 = v36[1];
              if (v60)
              {
                goto LABEL_50;
              }
            }

            do
            {
              v61 = v36[2];
              v55 = *v61 == v36;
              v36 = v61;
            }

            while (!v55);
LABEL_54:
            if (v42)
            {
              v36 = v61;
              if (v61 != v37)
              {
                continue;
              }
            }

            v63 = v69;
            sub_18373F424(v69, v42);
            if (!v43)
            {
              goto LABEL_68;
            }

            goto LABEL_65;
          }
        }

        v63 = (v18 + 80);
        v61 = v36;
        sub_18373F424((v18 + 80), v42);
        if (!v43)
        {
          goto LABEL_68;
        }

LABEL_65:
        for (i = v43[2]; i; i = i[2])
        {
          v43 = i;
        }

        sub_18373F424(v63, v43);
LABEL_68:
        v36 = v61;
        groupsCopy = v67;
      }

      if (v36 != v37)
      {
        operator new();
      }
    }
  }

  return v18;
}

- (id)groupingResultUpdatedWithGroupReplacements:(id)replacements
{
  selfCopy = self;
  v138 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  if (objc_msgSend_count(replacementsCopy, v3, v4, v5, v6, v7))
  {
    v13 = objc_msgSend_strokeGroups(selfCopy, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_mutableCopy(v13, v14, v15, v16, v17, v18);

    v30 = objc_msgSend_createdStrokeGroups(selfCopy, v20, v21, v22, v23, v24);
    if (v30)
    {
      v31 = objc_msgSend_createdStrokeGroups(selfCopy, v25, v26, v27, v28, v29);
      v37 = objc_msgSend_mutableCopy(v31, v32, v33, v34, v35, v36);
    }

    else
    {
      v37 = objc_msgSend_set(MEMORY[0x1E695DFA8], v25, v26, v27, v28, v29);
    }

    v49 = objc_msgSend_deletedStrokeGroups(selfCopy, v39, v40, v41, v42, v43);
    if (v49)
    {
      v50 = objc_msgSend_deletedStrokeGroups(selfCopy, v44, v45, v46, v47, v48);
      v130 = objc_msgSend_mutableCopy(v50, v51, v52, v53, v54, v55);
    }

    else
    {
      v130 = objc_msgSend_set(MEMORY[0x1E695DFA8], v44, v45, v46, v47, v48);
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = objc_msgSend_strokeGroups(selfCopy, v56, v57, v58, v59, v60);
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v133, v137, 16, v62);
    if (v68)
    {
      v69 = *v134;
      do
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v134 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v71 = *(*(&v133 + 1) + 8 * i);
          v72 = MEMORY[0x1E696AD98];
          v73 = objc_msgSend_uniqueIdentifier(v71, v63, v64, v65, v66, v67, selfCopy);
          v78 = objc_msgSend_numberWithInteger_(v72, v74, v73, v75, v76, v77);
          v83 = objc_msgSend_objectForKeyedSubscript_(replacementsCopy, v79, v78, v80, v81, v82);

          v89 = objc_msgSend_strategyIdentifier(v71, v84, v85, v86, v87, v88);
          v95 = objc_msgSend_classification(v71, v90, v91, v92, v93, v94);
          v99 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v83, v96, v89, v95, v97, v98);

          if (v99)
          {
            objc_msgSend_removeObject_(v19, v100, v71, v101, v102, v103);
            objc_msgSend_addObject_(v19, v104, v99, v105, v106, v107);
            if (objc_msgSend_containsObject_(v37, v108, v71, v109, v110, v111))
            {
              objc_msgSend_removeObject_(v37, v112, v71, v113, v114, v115);
              objc_msgSend_addObject_(v37, v116, v99, v117, v118, v119);
            }

            else
            {
              objc_msgSend_addObject_(v130, v112, v71, v113, v114, v115);
            }
          }
        }

        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v133, v137, 16, v67);
      }

      while (v68);
    }

    v120 = [CHStrokeGroupingResult alloc];
    v126 = objc_msgSend_cachedAdjacencies(selfCopy, v121, v122, v123, v124, v125);
    v38 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_cachedAdjacencies_(v120, v127, v19, v37, v130, v126);
  }

  else
  {
    v38 = selfCopy;
  }

  return v38;
}

- (id)description
{
  v46.receiver = self;
  v46.super_class = CHStrokeGroupingResult;
  v3 = [(CHStrokeGroupingResult *)&v46 description];
  v9 = objc_msgSend_strokeGroups(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_createdStrokeGroups(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_deletedStrokeGroups(self, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);
  v44 = objc_msgSend_stringByAppendingFormat_(v3, v40, @" Groups: %ld, created: %ld, deleted: %ld", v41, v42, v43, v15, v27, v39);

  return v44;
}

- (id)strokeGroupsSortedBy:(unint64_t)by textGroupsOnly:(BOOL)only
{
  onlyCopy = only;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0;
  if (by > 1)
  {
    if (by == 2)
    {
      if (onlyCopy)
      {
        p_textStrokeGroupsSortedByWritingOrientation = &selfCopy->_textStrokeGroupsSortedByWritingOrientation;
        textStrokeGroupsSortedByWritingOrientation = selfCopy->_textStrokeGroupsSortedByWritingOrientation;
        if (!textStrokeGroupsSortedByWritingOrientation)
        {
          v15 = sub_183757CE4(selfCopy, 1, v8, v9, v10, v11);
          goto LABEL_21;
        }
      }

      else
      {
        p_textStrokeGroupsSortedByWritingOrientation = &selfCopy->_strokeGroupsSortedByWritingOrientation;
        textStrokeGroupsSortedByWritingOrientation = selfCopy->_strokeGroupsSortedByWritingOrientation;
        if (!textStrokeGroupsSortedByWritingOrientation)
        {
          v15 = sub_183757CE4(selfCopy, 0, v8, v9, v10, v11);
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (by != 3)
      {
        goto LABEL_24;
      }

      if (onlyCopy)
      {
        p_textStrokeGroupsSortedByWritingOrientation = &selfCopy->_textStrokeGroupsSortedByCTLD;
        textStrokeGroupsSortedByWritingOrientation = selfCopy->_textStrokeGroupsSortedByCTLD;
        if (!textStrokeGroupsSortedByWritingOrientation)
        {
          v15 = sub_1837583CC(selfCopy, 1);
          goto LABEL_21;
        }
      }

      else
      {
        p_textStrokeGroupsSortedByWritingOrientation = &selfCopy->_strokeGroupsSortedByCTLD;
        textStrokeGroupsSortedByWritingOrientation = selfCopy->_strokeGroupsSortedByCTLD;
        if (!textStrokeGroupsSortedByWritingOrientation)
        {
          v15 = sub_1837583CC(selfCopy, 0);
          goto LABEL_21;
        }
      }
    }

LABEL_22:
    v16 = textStrokeGroupsSortedByWritingOrientation;
    goto LABEL_23;
  }

  if (by)
  {
    if (by != 1)
    {
      goto LABEL_24;
    }

    if (onlyCopy)
    {
      p_textStrokeGroupsSortedByWritingOrientation = &selfCopy->_strokeGroupsSortedTopBottomLeftRight;
      textStrokeGroupsSortedByWritingOrientation = selfCopy->_strokeGroupsSortedTopBottomLeftRight;
      if (!textStrokeGroupsSortedByWritingOrientation)
      {
        v15 = sub_183757A64(selfCopy, 1, v8, v9, v10, v11);
LABEL_21:
        v17 = *p_textStrokeGroupsSortedByWritingOrientation;
        *p_textStrokeGroupsSortedByWritingOrientation = v15;

        textStrokeGroupsSortedByWritingOrientation = *p_textStrokeGroupsSortedByWritingOrientation;
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v16 = sub_183757A64(selfCopy, 0, v8, v9, v10, v11);
  }

  else
  {
    v16 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(selfCopy, v7, 3, onlyCopy, v10, v11);
  }

LABEL_23:
  v12 = v16;
LABEL_24:
  objc_sync_exit(selfCopy);

  return v12;
}

- (NSArray)strokeGroupClusters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_strokeGroupClusters)
  {
    v3 = objc_opt_class();
    v7 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(selfCopy, v4, 0, 0, v5, v6);
    v12 = objc_msgSend_strokeGroupsClusteredByProximity_(v3, v8, v7, v9, v10, v11);

    strokeGroupClusters = selfCopy->_strokeGroupClusters;
    selfCopy->_strokeGroupClusters = v12;
  }

  objc_sync_exit(selfCopy);

  v14 = selfCopy->_strokeGroupClusters;

  return v14;
}

- (NSArray)textStrokeGroupClusters
{
  v54 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_textStrokeGroupClusters)
  {
    v3 = objc_alloc_init(CHCTLD);
    v9 = objc_msgSend_textStrokeGroups(selfCopy, v4, v5, v6, v7, v8);
    v15 = objc_msgSend_allObjects(v9, v10, v11, v12, v13, v14);

    v20 = objc_msgSend_strokeGroupRegions_(v3, v16, v15, v17, v18, v19);

    v26 = objc_msgSend_array(MEMORY[0x1E695DF70], v21, v22, v23, v24, v25);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v27 = v20;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v49, v53, 16, v29);
    if (v30)
    {
      v31 = *v50;
      do
      {
        v32 = 0;
        do
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v49 + 1) + 8 * v32);
          v34 = objc_opt_class();
          v39 = objc_msgSend_strokeGroupsClusteredByProximity_(v34, v35, v33, v36, v37, v38, v49);
          objc_msgSend_addObjectsFromArray_(v26, v40, v39, v41, v42, v43);

          ++v32;
        }

        while (v30 != v32);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v44, &v49, v53, 16, v45);
      }

      while (v30);
    }

    textStrokeGroupClusters = selfCopy->_textStrokeGroupClusters;
    selfCopy->_textStrokeGroupClusters = v26;
  }

  objc_sync_exit(selfCopy);

  v47 = selfCopy->_textStrokeGroupClusters;

  return v47;
}

- (id)textStrokeGroupClustersAtPosition:(CGPoint)position closestAbove:(id *)above closestBelow:(id *)below
{
  y = position.y;
  v75 = *MEMORY[0x1E69E9840];
  v62 = objc_msgSend_textStrokeGroupClusters(self, a2, above, below, v5, v6, position.x);
  v63 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v62;
  v15 = 0;
  v16 = 0;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v69, v74, 16, v14);
  if (v17)
  {
    v18 = *v70;
    v19 = 1.79769313e308;
    v20 = MEMORY[0x1E695F050];
    v21 = 1.79769313e308;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        x = *v20;
        v25 = v20[1];
        width = v20[2];
        height = v20[3];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v28 = v23;
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v65, v73, 16, v30);
        if (v36)
        {
          v37 = *v66;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v66 != v37)
              {
                objc_enumerationMutation(v28);
              }

              objc_msgSend_bounds(*(*(&v65 + 1) + 8 * j), v31, v32, v33, v34, v35);
              v82.origin.x = v39;
              v82.origin.y = v40;
              v82.size.width = v41;
              v82.size.height = v42;
              v76.origin.x = x;
              v76.origin.y = v25;
              v76.size.width = width;
              v76.size.height = height;
              v77 = CGRectUnion(v76, v82);
              x = v77.origin.x;
              v25 = v77.origin.y;
              width = v77.size.width;
              height = v77.size.height;
            }

            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v65, v73, 16, v35);
          }

          while (v36);
        }

        v78.origin.x = x;
        v78.origin.y = v25;
        v78.size.width = width;
        v78.size.height = height;
        if (CGRectGetMinY(v78) <= y)
        {
          v79.origin.x = x;
          v79.origin.y = v25;
          v79.size.width = width;
          v79.size.height = height;
          if (CGRectGetMaxY(v79) >= y)
          {
            objc_msgSend_addObject_(v63, v43, v28, v44, v45, v46);
          }
        }

        v80.origin.x = x;
        v80.origin.y = v25;
        v80.size.width = width;
        v80.size.height = height;
        MaxY = CGRectGetMaxY(v80);
        v81.origin.x = x;
        v81.origin.y = v25;
        v81.size.width = width;
        v81.size.height = height;
        MinY = CGRectGetMinY(v81);
        if (y - MaxY > 0.0 && y - MaxY < v21)
        {
          v52 = v28;

          v16 = v52;
          v21 = y - MaxY;
        }

        v53 = MinY - y;
        if (v53 > 0.0 && v53 < v19)
        {
          v55 = v28;

          v15 = v55;
          v19 = v53;
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v69, v74, 16, v49);
    }

    while (v17);
  }

  if (above)
  {
    v56 = v16;
    *above = v16;
  }

  if (below)
  {
    v57 = v15;
    *below = v15;
  }

  v58 = v63;

  return v63;
}

- (NSSet)textStrokeGroups
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_textStrokeGroups)
  {
    v8 = objc_msgSend_strokeGroups(selfCopy, v3, v4, v5, v6, v7);
    v13 = objc_msgSend_objectsPassingTest_(v8, v9, &unk_1EF1BC890, v10, v11, v12);

    textStrokeGroups = selfCopy->_textStrokeGroups;
    selfCopy->_textStrokeGroups = v13;
  }

  objc_sync_exit(selfCopy);

  v15 = selfCopy->_textStrokeGroups;

  return v15;
}

- (NSSet)nontextStrokeGroups
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_nontextStrokeGroups)
  {
    v8 = objc_msgSend_strokeGroups(selfCopy, v3, v4, v5, v6, v7);
    v13 = objc_msgSend_objectsPassingTest_(v8, v9, &unk_1EF1BC8B0, v10, v11, v12);

    nontextStrokeGroups = selfCopy->_nontextStrokeGroups;
    selfCopy->_nontextStrokeGroups = v13;
  }

  objc_sync_exit(selfCopy);

  v15 = selfCopy->_nontextStrokeGroups;

  return v15;
}

+ (id)expandedStrokeGroupClusters:(id)clusters allClusters:(id)allClusters
{
  v410 = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  allClustersCopy = allClusters;
  v6 = MEMORY[0x1E695DF90];
  v370 = allClustersCopy;
  v12 = objc_msgSend_count(allClustersCopy, v7, v8, v9, v10, v11);
  v375 = objc_msgSend_dictionaryWithCapacity_(v6, v13, v12, v14, v15, v16);
  v17 = MEMORY[0x1E695DF90];
  v23 = objc_msgSend_count(v370, v18, v19, v20, v21, v22);
  v376 = objc_msgSend_dictionaryWithCapacity_(v17, v24, v23, v25, v26, v27);
  v28 = MEMORY[0x1E695DF90];
  v34 = objc_msgSend_count(v370, v29, v30, v31, v32, v33);
  v377 = objc_msgSend_dictionaryWithCapacity_(v28, v35, v34, v36, v37, v38);
  v403 = 0u;
  v404 = 0u;
  v401 = 0u;
  v402 = 0u;
  obj = v370;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v401, v409, 16, v40);
  if (v46)
  {
    v47 = *v402;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v402 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v401 + 1) + 8 * i);
        v50 = objc_msgSend_firstObject(v49, v41, v42, v43, v44, v45);
        objc_msgSend_bounds(v50, v51, v52, v53, v54, v55);
        rect = v56;
        x = v57;
        y = v59;
        width = v61;

        v399 = 0u;
        v400 = 0u;
        v397 = 0u;
        v398 = 0u;
        v63 = v49;
        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v397, v408, 16, v65);
        if (v71)
        {
          v72 = *v398;
          v73 = 0.0;
          v74 = 0.0;
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v398 != v72)
              {
                objc_enumerationMutation(v63);
              }

              v76 = *(*(&v397 + 1) + 8 * j);
              objc_msgSend_normalizedSize(v76, v66, v67, v68, v69, v70);
              if (v82 <= 0.0)
              {
                objc_msgSend_bounds(v76, v77, v78, v79, v80, v81);
                v89 = v90;
              }

              else
              {
                objc_msgSend_normalizedSize(v76, v77, v78, v79, v80, v81);
                v89 = v88;
              }

              objc_msgSend_bounds(v76, v83, v84, v85, v86, v87);
              MinY = CGRectGetMinY(v412);
              v413.origin.x = x;
              v413.origin.y = y;
              v413.size.width = width;
              v413.size.height = rect;
              MaxY = CGRectGetMaxY(v413);
              objc_msgSend_bounds(v76, v93, v94, v95, v96, v97);
              v422.origin.x = v98;
              v422.origin.y = v99;
              v422.size.width = v100;
              v422.size.height = v101;
              v414.origin.x = x;
              v414.origin.y = y;
              v414.size.width = width;
              v414.size.height = rect;
              v415 = CGRectUnion(v414, v422);
              rect = v415.size.height;
              x = v415.origin.x;
              y = v415.origin.y;
              width = v415.size.width;
              v74 = v74 + v89;
              v73 = v73 + fmax(MinY - MaxY, 0.0);
            }

            v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v397, v408, 16, v70);
          }

          while (v71);
        }

        else
        {
          v73 = 0.0;
          v74 = 0.0;
        }

        v117 = v74 / objc_msgSend_count(v63, v102, v103, v104, v105, v106);
        if (objc_msgSend_count(v63, v107, v108, v109, v110, v111) < 2)
        {
          v118 = v117 / 3.0;
        }

        else
        {
          v118 = v73 / (objc_msgSend_count(v63, v112, v113, v114, v115, v116) - 1);
        }

        v119 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v112, v113, v114, v115, v116, x, y, width, rect);
        objc_msgSend_setObject_forKeyedSubscript_(v375, v120, v119, v63, v121, v122);

        v128 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v123, v124, v125, v126, v127, v117);
        objc_msgSend_setObject_forKeyedSubscript_(v376, v129, v128, v63, v130, v131);

        v137 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v132, v133, v134, v135, v136, v118);
        objc_msgSend_setObject_forKeyedSubscript_(v377, v138, v137, v63, v139, v140);
      }

      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v401, v409, 16, v45);
    }

    while (v46);
  }

  v393[0] = MEMORY[0x1E69E9820];
  v393[1] = 3221225472;
  v393[2] = sub_183759C44;
  v393[3] = &unk_1E6DDD570;
  v141 = v375;
  v394 = v141;
  v367 = v376;
  v395 = v367;
  v369 = v377;
  v396 = v369;
  v372 = MEMORY[0x1865E6810](v393);
  recta = objc_msgSend_array(MEMORY[0x1E695DF70], v142, v143, v144, v145, v146);
  v152 = objc_msgSend_count(obj, v147, v148, v149, v150, v151);
  if (v152 == objc_msgSend_count(clustersCopy, v153, v154, v155, v156, v157))
  {
    v163 = 0;
    v164 = recta;
    recta = objc_msgSend_mutableCopy(clustersCopy, v158, v159, v160, v161, v162, v367);
  }

  else
  {
    v391 = 0u;
    v392 = 0u;
    v389 = 0u;
    v390 = 0u;
    v164 = obj;
    v163 = 0;
    v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v164, v165, &v389, v407, 16, v166, v367);
    if (v171)
    {
      v172 = *v390;
      do
      {
        for (k = 0; k != v171; ++k)
        {
          if (*v390 != v172)
          {
            objc_enumerationMutation(v164);
          }

          v175 = *(*(&v389 + 1) + 8 * k);
          if (objc_msgSend_containsObject_(clustersCopy, v167, v175, v168, v169, v170) || objc_msgSend_count(recta, v167, v176, v168, v169, v170) && (v372)[2](v372, v163, v175))
          {
            objc_msgSend_addObject_(recta, v167, v175, v168, v169, v170);
            v174 = v175;

            v163 = v174;
          }
        }

        v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v164, v167, &v389, v407, 16, v170);
      }

      while (v171);
    }
  }

  v182 = objc_msgSend_count(recta, v177, v178, v179, v180, v181);
  if (v182 == objc_msgSend_count(obj, v183, v184, v185, v186, v187))
  {
    v193 = recta;
  }

  else
  {
    v194 = objc_msgSend_array(MEMORY[0x1E695DF70], v188, v189, v190, v191, v192);
    v205 = objc_msgSend_count(obj, v195, v196, v197, v198, v199);
    if (v205 - 1 >= 0)
    {
      do
      {
        v206 = objc_msgSend_objectAtIndexedSubscript_(obj, v200, --v205, v202, v203, v204);
        if (objc_msgSend_containsObject_(recta, v207, v206, v208, v209, v210) || objc_msgSend_count(v194, v211, v212, v213, v214, v215) && (v372)[2](v372, v206, v163))
        {
          objc_msgSend_addObject_(v194, v211, v206, v213, v214, v215);
          v216 = v206;

          v163 = v216;
        }
      }

      while (v205 > 0);
    }

    v217 = objc_msgSend_reverseObjectEnumerator(v194, v200, v201, v202, v203, v204);
    v193 = objc_msgSend_allObjects(v217, v218, v219, v220, v221, v222);
  }

  v223 = *MEMORY[0x1E695F050];
  v224 = *(MEMORY[0x1E695F050] + 8);
  v225 = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v385 = 0u;
  v386 = 0u;
  v387 = 0u;
  v388 = 0u;
  v227 = v193;
  v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v228, &v385, v406, 16, v229);
  if (v234)
  {
    v235 = *v386;
    do
    {
      for (m = 0; m != v234; ++m)
      {
        if (*v386 != v235)
        {
          objc_enumerationMutation(v227);
        }

        v237 = objc_msgSend_objectForKeyedSubscript_(v141, v230, *(*(&v385 + 1) + 8 * m), v231, v232, v233);
        objc_msgSend_ch_CGRectValue(v237, v238, v239, v240, v241, v242);
        v244 = v243;
        v246 = v245;
        v248 = v247;
        v250 = v249;

        v416.origin.x = v223;
        v416.origin.y = v224;
        v416.size.width = v225;
        v416.size.height = height;
        v423.origin.x = v244;
        v423.origin.y = v246;
        v423.size.width = v248;
        v423.size.height = v250;
        v417 = CGRectUnion(v416, v423);
        v223 = v417.origin.x;
        v224 = v417.origin.y;
        v225 = v417.size.width;
        height = v417.size.height;
      }

      v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v230, &v385, v406, 16, v233);
    }

    while (v234);
  }

  v256 = objc_msgSend_array(MEMORY[0x1E695DF70], v251, v252, v253, v254, v255);
  v262 = objc_msgSend_count(v227, v257, v258, v259, v260, v261);
  if (v262 == objc_msgSend_count(obj, v263, v264, v265, v266, v267))
  {
    v273 = v256;
    v256 = objc_msgSend_mutableCopy(v227, v268, v269, v270, v271, v272);
  }

  else
  {
    v383 = 0u;
    v384 = 0u;
    v381 = 0u;
    v382 = 0u;
    v273 = obj;
    v280 = objc_msgSend_countByEnumeratingWithState_objects_count_(v273, v274, &v381, v405, 16, v275);
    if (v280)
    {
      v281 = *v382;
      do
      {
        for (n = 0; n != v280; ++n)
        {
          if (*v382 != v281)
          {
            objc_enumerationMutation(v273);
          }

          v283 = *(*(&v381 + 1) + 8 * n);
          if (!objc_msgSend_containsObject_(v227, v276, v283, v277, v278, v279))
          {
            v284 = objc_msgSend_objectForKeyedSubscript_(v141, v276, v283, v277, v278, v279);
            objc_msgSend_ch_CGRectValue(v284, v285, v286, v287, v288, v289);
            v291 = v290;
            v293 = v292;
            v295 = v294;
            v297 = v296;

            v418.origin.x = v223;
            v418.origin.y = v224;
            v418.size.width = v225;
            v418.size.height = height;
            v424.origin.x = v291;
            v424.origin.y = v293;
            v424.size.width = v295;
            v424.size.height = v297;
            v419 = CGRectIntersection(v418, v424);
            if (v419.size.width * v419.size.height / (v295 * v297 + 1.0e-10) <= 0.65)
            {
              continue;
            }
          }

          objc_msgSend_addObject_(v256, v276, v283, v277, v278, v279);
        }

        v280 = objc_msgSend_countByEnumeratingWithState_objects_count_(v273, v276, &v381, v405, 16, v279);
      }

      while (v280);
    }
  }

  if (objc_msgSend_count(clustersCopy, v298, v299, v300, v301, v302) >= 2)
  {
    v308 = 0;
    while (v308 < objc_msgSend_count(v256, v303, v304, v305, v306, v307))
    {
      v313 = objc_msgSend_objectAtIndexedSubscript_(v256, v309, v308, v310, v311, v312);
      v318 = objc_msgSend_objectForKeyedSubscript_(v141, v314, v313, v315, v316, v317);
      objc_msgSend_ch_CGRectValue(v318, v319, v320, v321, v322, v323);
      v374 = v324;
      v371 = v325;
      v327 = v326;
      v329 = v328;

      v335 = ++v308;
      while (v335 < objc_msgSend_count(v256, v330, v331, v332, v333, v334))
      {
        v340 = objc_msgSend_objectAtIndexedSubscript_(v256, v336, v335, v337, v338, v339);
        v345 = objc_msgSend_objectForKeyedSubscript_(v141, v341, v340, v342, v343, v344);
        objc_msgSend_ch_CGRectValue(v345, v346, v347, v348, v349, v350);
        v352 = v351;
        v354 = v353;
        v356 = v355;
        v358 = v357;

        v420.origin.x = v327;
        v420.origin.y = v374;
        v420.size.width = v329;
        v420.size.height = v371;
        MaxX = CGRectGetMaxX(v420);
        v421.origin.x = v352;
        v421.origin.y = v354;
        v421.size.width = v356;
        v421.size.height = v358;
        v360 = fmin(MaxX, CGRectGetMaxX(v421)) - fmax(v327, v352);
        LOBYTE(v345) = fmin(v360 / (v329 + 1.0e-10), v360 / (v356 + 1.0e-10)) >= 0.05;

        ++v335;
        if ((v345 & 1) == 0)
        {

          objc_msgSend_removeAllObjects(v256, v361, v362, v363, v364, v365);
          goto LABEL_74;
        }
      }
    }
  }

LABEL_74:

  return v256;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_strokeGroups, @"strokeGroups", v6, v7);
  objc_autoreleasePoolPop(v4);
}

- (CHStrokeGroupingResult)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, &v24, 3, v8, v9);
  v15 = objc_msgSend_setWithArray_(v6, v11, v10, v12, v13, v14, v24, v25);
  v19 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v16, v15, @"strokeGroups", v17, v18);

  v22 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(self, v20, v19, v19, 0, v21);
  objc_autoreleasePoolPop(v5);

  return v22;
}

- (BOOL)isEquivalentToStrokeGroupingResult:(id)result
{
  resultCopy = result;
  v10 = resultCopy;
  if (self == resultCopy)
  {

    return 1;
  }

  else
  {
    strokeGroups = self->_strokeGroups;
    v17 = objc_msgSend_strokeGroups(resultCopy, v5, v6, v7, v8, v9);
    if (strokeGroups == v17)
    {
      isEqual = 1;
    }

    else
    {
      v18 = objc_msgSend_strokeGroups(v10, v12, v13, v14, v15, v16);
      isEqual = objc_msgSend_isEqual_(v18, v19, self->_strokeGroups, v20, v21, v22);
    }

    return isEqual;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = equalCopy;
    if (!self)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (!objc_msgSend_isEquivalentToStrokeGroupingResult_(self, v5, v9, v6, v7, v8))
    {
LABEL_7:
      LOBYTE(self) = 0;
      goto LABEL_16;
    }

    createdStrokeGroups = self->_createdStrokeGroups;
    v16 = objc_msgSend_createdStrokeGroups(v9, v10, v11, v12, v13, v14);
    v22 = v16;
    if (createdStrokeGroups == v16)
    {
    }

    else
    {
      if (!self->_createdStrokeGroups)
      {
        goto LABEL_13;
      }

      v23 = objc_msgSend_createdStrokeGroups(v9, v17, v18, v19, v20, v21);
      isEqual = objc_msgSend_isEqual_(v23, v24, self->_createdStrokeGroups, v25, v26, v27);

      if (!isEqual)
      {
        goto LABEL_7;
      }
    }

    deletedStrokeGroups = self->_deletedStrokeGroups;
    v22 = objc_msgSend_deletedStrokeGroups(v9, v29, v30, v31, v32, v33);
    if (deletedStrokeGroups == v22)
    {
      LOBYTE(self) = 1;
      goto LABEL_15;
    }

    if (self->_deletedStrokeGroups)
    {
      v40 = objc_msgSend_deletedStrokeGroups(v9, v35, v36, v37, v38, v39);
      LOBYTE(self) = objc_msgSend_isEqual_(v40, v41, self->_deletedStrokeGroups, v42, v43, v44);

LABEL_15:
      goto LABEL_16;
    }

LABEL_13:
    LOBYTE(self) = 0;
    goto LABEL_15;
  }

  LOBYTE(self) = 0;
LABEL_17:

  return self;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 10) = self + 88;
  return self;
}

@end