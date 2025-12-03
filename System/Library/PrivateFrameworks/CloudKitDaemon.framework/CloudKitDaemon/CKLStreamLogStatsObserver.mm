@interface CKLStreamLogStatsObserver
- (CKLStreamLogStatsObserver)initWithLogTypes:(unint64_t)types;
- (void)eventMatched:(id)matched;
- (void)finish;
@end

@implementation CKLStreamLogStatsObserver

- (CKLStreamLogStatsObserver)initWithLogTypes:(unint64_t)types
{
  v9.receiver = self;
  v9.super_class = CKLStreamLogStatsObserver;
  v3 = [(CKLStreamObserver *)&v9 initWithLogTypes:types];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    totalSizeByLine = v3->_totalSizeByLine;
    v3->_totalSizeByLine = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    totalCountByLine = v3->_totalCountByLine;
    v3->_totalCountByLine = v6;
  }

  return v3;
}

- (void)eventMatched:(id)matched
{
  v43 = objc_msgSend_composedMessage(matched, a2, matched);
  v5 = objc_msgSend_componentsSeparatedByString_(v43, v4, @" ");
  v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v8, 1);
  v12 = objc_msgSend_intValue(v9, v10, v11);

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_totalSizeByLine(self, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v7);
  v21 = objc_msgSend_intValue(v18, v19, v20);
  v23 = objc_msgSend_numberWithInt_(v13, v22, (v21 + v12));
  v26 = objc_msgSend_totalSizeByLine(self, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v26, v27, v23, v7);

  v28 = MEMORY[0x277CCABB0];
  v31 = objc_msgSend_totalCountByLine(self, v29, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, v7);
  v36 = objc_msgSend_intValue(v33, v34, v35);
  v38 = objc_msgSend_numberWithInt_(v28, v37, (v36 + 1));
  v41 = objc_msgSend_totalCountByLine(self, v39, v40);
  objc_msgSend_setObject_forKeyedSubscript_(v41, v42, v38, v7);
}

- (void)finish
{
  v104 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v6 = objc_msgSend_totalSizeByLine(self, v4, v5);
  v9 = objc_msgSend_allKeys(v6, v7, v8);

  obj = v9;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v99, v103, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v100;
    do
    {
      v16 = 0;
      do
      {
        if (*v100 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v99 + 1) + 8 * v16);
        v18 = objc_msgSend_totalCountByLine(self, v12, v13);
        v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17);
        v23 = objc_msgSend_intValue(v20, v21, v22);

        v26 = objc_msgSend_totalSizeByLine(self, v24, v25);
        v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v17);
        v31 = objc_msgSend_intValue(v28, v29, v30);

        v32 = objc_opt_new();
        objc_msgSend_setFileAndLine_(v32, v33, v17);
        objc_msgSend_setCount_(v32, v34, v23);
        objc_msgSend_setSize_(v32, v35, v31);
        objc_msgSend_addObject_(v3, v36, v32);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v99, v103, 16);
    }

    while (v14);
  }

  v37 = v3;
  objc_msgSend_sortUsingComparator_(v3, v38, &unk_28385D2E0);
  v39 = objc_alloc(MEMORY[0x277CCACA8]);
  v41 = objc_msgSend_initWithFormat_(v39, v40, @"Biggest logging call sites by size:\nTotal Size\tAvg Size\tCallsite\n");
  v42 = v41;
  v45 = objc_msgSend_UTF8String(v42, v43, v44);
  puts(v45);

  for (i = 0; i != 30; ++i)
  {
    if (i >= objc_msgSend_count(v37, v46, v47))
    {
      break;
    }

    v49 = objc_msgSend_objectAtIndexedSubscript_(v37, v46, i);
    v50 = objc_alloc(MEMORY[0x277CCACA8]);
    v53 = objc_msgSend_size(v49, v51, v52);
    v56 = objc_msgSend_size(v49, v54, v55);
    v59 = v56 / objc_msgSend_count(v49, v57, v58);
    v62 = objc_msgSend_fileAndLine(v49, v60, v61);
    v64 = objc_msgSend_initWithFormat_(v50, v63, @"%ld\t%ld\t%@", v53, v59, v62);
    v65 = v64;
    v68 = objc_msgSend_UTF8String(v65, v66, v67);
    puts(v68);
  }

  objc_msgSend_sortUsingComparator_(v37, v46, &unk_28385D300);
  v69 = objc_alloc(MEMORY[0x277CCACA8]);
  v71 = objc_msgSend_initWithFormat_(v69, v70, @"Most frequent logging call sites:\nTotal Count\tTotal Size\tCallsite\n");
  v72 = v71;
  v75 = objc_msgSend_UTF8String(v72, v73, v74);
  puts(v75);

  for (j = 0; j != 30; ++j)
  {
    if (j >= objc_msgSend_count(v37, v76, v77))
    {
      break;
    }

    v80 = objc_msgSend_objectAtIndexedSubscript_(v37, v79, j);
    v81 = objc_alloc(MEMORY[0x277CCACA8]);
    v84 = objc_msgSend_count(v80, v82, v83);
    v87 = objc_msgSend_size(v80, v85, v86);
    v90 = objc_msgSend_fileAndLine(v80, v88, v89);
    v92 = objc_msgSend_initWithFormat_(v81, v91, @"%ld\t%ld\t%@", v84, v87, v90);
    v93 = v92;
    v96 = objc_msgSend_UTF8String(v93, v94, v95);
    puts(v96);
  }

  v97 = *MEMORY[0x277D85DE8];
}

@end