@interface CHCTLD
- (CHCTLD)init;
- (CHCTLD)initWithType:(unint64_t)a3;
- (id)mergeStrokeGroups:(id)a3;
- (id)orderStrokeGroups:(id)a3;
- (id)reflowableLineRegions:(id)a3;
- (id)strokeGroupRegions:(id)a3;
@end

@implementation CHCTLD

- (CHCTLD)init
{
  v8.receiver = self;
  v8.super_class = CHCTLD;
  v2 = [(CHCTLD *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D9D48]);
    ctld = v2->_ctld;
    v2->_ctld = v3;

    v5 = sub_1837BED20(0);
    ctldConfig = v2->_ctldConfig;
    v2->_ctldConfig = v5;
  }

  return v2;
}

- (CHCTLD)initWithType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = CHCTLD;
  v4 = [(CHCTLD *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69D9D48]);
    ctld = v4->_ctld;
    v4->_ctld = v5;

    v7 = sub_1837BED20(a3);
    ctldConfig = v4->_ctldConfig;
    v4->_ctldConfig = v7;
  }

  return v4;
}

- (id)orderStrokeGroups:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_groupAndOrderRegions_config_(self->_ctld, a2, a3, self->_ctldConfig, v3, v4);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v5;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16, v14);
  if (v20)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = objc_msgSend_subregions(*(*(&v29 + 1) + 8 * i), v15, v16, v17, v18, v19, v29);
        objc_msgSend_addObjectsFromArray_(v11, v24, v23, v25, v26, v27);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v29, v33, 16, v19);
    }

    while (v20);
  }

  return v11;
}

- (id)strokeGroupRegions:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_groupAndOrderRegions_config_(self->_ctld, a2, a3, self->_ctldConfig, v3, v4);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v5;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16, v14);
  if (v20)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = objc_msgSend_subregions(*(*(&v29 + 1) + 8 * i), v15, v16, v17, v18, v19, v29);
        objc_msgSend_addObject_(v11, v24, v23, v25, v26, v27);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v29, v33, 16, v19);
    }

    while (v20);
  }

  return v11;
}

- (id)reflowableLineRegions:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_groupAndOrderRegions_config_(self->_ctld, a2, a3, self->_ctldConfig, v3, v4);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v5;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16, v14);
  if (v20)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = objc_msgSend_subregions(*(*(&v29 + 1) + 8 * i), v15, v16, v17, v18, v19, v29);
        objc_msgSend_addObject_(v11, v24, v23, v25, v26, v27);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v29, v33, 16, v19);
    }

    while (v20);
  }

  return v11;
}

- (id)mergeStrokeGroups:(id)a3
{
  v114 = *MEMORY[0x1E69E9840];
  v99 = objc_msgSend_groupAndOrderRegions_config_(self->_ctld, a2, a3, self->_ctldConfig, v3, v4);
  v100 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v99;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v108, v113, 16, v11);
  if (v12)
  {
    v102 = *v109;
    do
    {
      v103 = v12;
      for (i = 0; i != v103; ++i)
      {
        if (*v109 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v108 + 1) + 8 * i);
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v20 = objc_msgSend_subregions(v19, v13, v14, v15, v16, v17);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v104, v112, 16, v22);
        if (v28)
        {
          v29 = 0;
          v30 = *v105;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              while (1)
              {
                if (*v105 != v30)
                {
                  objc_enumerationMutation(v20);
                }

                v32 = *(*(&v104 + 1) + 8 * j);
                if (v29)
                {
                  break;
                }

                v29 = v32;
                if (v28 == ++j)
                {
                  goto LABEL_14;
                }
              }

              v33 = objc_msgSend_strokeIdentifiers(*(*(&v104 + 1) + 8 * j), v23, v24, v25, v26, v27);
              v39 = objc_msgSend_firstStrokeIdentifier(v29, v34, v35, v36, v37, v38);
              v45 = objc_msgSend_lastStrokeIdentifier(v32, v40, v41, v42, v43, v44);
              objc_msgSend_bounds(v29, v46, v47, v48, v49, v50);
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v58 = v57;
              objc_msgSend_bounds(v32, v59, v60, v61, v62, v63);
              v118.origin.x = v64;
              v118.origin.y = v65;
              v118.size.width = v66;
              v118.size.height = v67;
              v116.origin.x = v52;
              v116.origin.y = v54;
              v116.size.width = v56;
              v116.size.height = v58;
              v117 = CGRectUnion(v116, v118);
              x = v117.origin.x;
              y = v117.origin.y;
              width = v117.size.width;
              height = v117.size.height;
              v77 = objc_msgSend_classification(v29, v72, v73, v74, v75, v76);
              objc_msgSend_groupingConfidence(v29, v78, v79, v80, v81, v82);
              v84 = v83;
              objc_msgSend_firstStrokeOrigin(v29, v85, v86, v87, v88, v89);
              v93 = objc_msgSend_groupByAddingStrokeIdentifiers_removingStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_firstStrokeOrigin_(v29, v90, v33, 0, v39, v45, v77, x, y, width, height, v84, v91, v92);

              v29 = v93;
            }

LABEL_14:
            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v104, v112, 16, v27);
          }

          while (v28);

          if (v29)
          {
            objc_msgSend_addObject_(v100, v94, v29, v95, v96, v97);
          }
        }

        else
        {

          v29 = 0;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v108, v113, 16, v17);
    }

    while (v12);
  }

  return v100;
}

@end