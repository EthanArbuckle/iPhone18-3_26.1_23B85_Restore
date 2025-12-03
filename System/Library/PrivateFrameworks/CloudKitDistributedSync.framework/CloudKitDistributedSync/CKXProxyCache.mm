@interface CKXProxyCache
- (CKXProxyCache)init;
- (id)debugDescription;
- (id)proxyForClass:(Class)class withScope:(int64_t)scope;
- (void)_putBackProxyWithoutCheckingScope:(id)scope;
- (void)dealloc;
- (void)putBackAllProxiesWithScope:(int64_t)scope;
@end

@implementation CKXProxyCache

- (void)dealloc
{
  v36 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_totalProxiesRetainedOutOfScope(self, a2, v2, v3, v4, v5, v6) >= 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
      *buf = 134218496;
      v31 = objc_msgSend_totalProxiesRetainedOutOfScope(self, v11, v12, v13, v14, v15, v16);
      v32 = 2048;
      v33 = objc_msgSend_totalProxiesCreated(self, v17, v18, v19, v20, v21, v22);
      v34 = 2048;
      v35 = objc_msgSend_totalProxiesReclaimed(self, v23, v24, v25, v26, v27, v28);
      _os_log_debug_impl(&dword_2438A8000, v10, OS_LOG_TYPE_DEBUG, "%lu proxies retained out of expected scope (%lu created, %lu reclaimed). This may cause degraded performance if it happens too often.", buf, 0x20u);
    }
  }

  v29.receiver = self;
  v29.super_class = CKXProxyCache;
  [(CKXProxyCache *)&v29 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (CKXProxyCache)init
{
  v14.receiver = self;
  v14.super_class = CKXProxyCache;
  v8 = [(CKXProxyCache *)&v14 init];
  if (v8)
  {
    v9 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v2, v3, v4, v5, v6, v7);
    cachedProxies = v8->_cachedProxies;
    v8->_cachedProxies = v9;

    v11 = objc_opt_new();
    scopedProxies = v8->_scopedProxies;
    v8->_scopedProxies = v11;
  }

  return v8;
}

- (id)proxyForClass:(Class)class withScope:(int64_t)scope
{
  v10 = objc_msgSend_cachedProxies(self, a2, class, scope, v4, v5, v6);
  v16 = objc_msgSend_objectForKey_(v10, v11, class, v12, v13, v14, v15);

  if (objc_msgSend_count(v16, v17, v18, v19, v20, v21, v22))
  {
    inited = objc_msgSend_lastObject(v16, v23, v24, v25, v26, v27, v28);
    objc_msgSend_removeLastObject(v16, v30, v31, v32, v33, v34, v35);
    if (!scope)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v54 = [class alloc];
  inited = objc_msgSend_initInternal(v54, v55, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_totalProxiesCreated(self, v61, v62, v63, v64, v65, v66);
  objc_msgSend_setTotalProxiesCreated_(self, v68, v67 + 1, v69, v70, v71, v72);
  if (scope)
  {
LABEL_3:
    objc_msgSend_setScope_(inited, v36, scope, v37, v38, v39, v40);
    v47 = objc_msgSend_scopedProxies(self, v41, v42, v43, v44, v45, v46);
    objc_msgSend_addObject_(v47, v48, inited, v49, v50, v51, v52);
  }

LABEL_4:

  return inited;
}

- (void)_putBackProxyWithoutCheckingScope:(id)scope
{
  scopeCopy = scope;
  v10 = objc_msgSend_cachedProxies(self, v4, v5, v6, v7, v8, v9);
  v11 = objc_opt_class();
  v17 = objc_msgSend_objectForKey_(v10, v12, v11, v13, v14, v15, v16);

  if (!v17)
  {
    v24 = objc_msgSend_cachedProxies(self, v18, v19, v20, v21, v22, v23);
    v25 = objc_opt_new();
    v26 = objc_opt_class();
    objc_msgSend_setObject_forKey_(v24, v27, v25, v26, v28, v29, v30);
  }

  v31 = objc_autoreleasePoolPush();
  objc_msgSend_reset(scopeCopy, v32, v33, v34, v35, v36, v37);
  objc_autoreleasePoolPop(v31);
  v44 = objc_msgSend_cachedProxies(self, v38, v39, v40, v41, v42, v43);
  v45 = objc_opt_class();
  v51 = objc_msgSend_objectForKey_(v44, v46, v45, v47, v48, v49, v50);
  objc_msgSend_addObject_(v51, v52, scopeCopy, v53, v54, v55, v56);

  v63 = objc_msgSend_totalProxiesReclaimed(self, v57, v58, v59, v60, v61, v62);
  objc_msgSend_setTotalProxiesReclaimed_(self, v64, v63 + 1, v65, v66, v67, v68);
}

- (void)putBackAllProxiesWithScope:(int64_t)scope
{
  v5 = objc_opt_new();
  v12 = objc_msgSend_scopedProxies(self, v6, v7, v8, v9, v10, v11);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_24397701C;
  v59[3] = &unk_278DDB208;
  scopeCopy = scope;
  v59[4] = self;
  v13 = v5;
  v60 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v14, v59, v15, v16, v17, v18);

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_2439770C8;
  v54[3] = &unk_278DDB230;
  v54[4] = &v55;
  objc_msgSend_enumerateRangesUsingBlock_(v13, v19, v54, v20, v21, v22, v23);
  v30 = v56[3];
  if (v30)
  {
    if (v30 == 1)
    {
      Index = objc_msgSend_lastIndex(v13, v24, v25, v26, v27, v28, v29);
      v38 = objc_msgSend_scopedProxies(self, v32, v33, v34, v35, v36, v37);
      if (Index + 1 == objc_msgSend_count(v38, v39, v40, v41, v42, v43, v44))
      {
        v45 = v56[3];

        if (v45 < 2)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *v53 = 0;
      _os_log_error_impl(&dword_2438A8000, v46, OS_LOG_TYPE_ERROR, "Proxies not put back in expected order. This may cause degraded performance if it happens too often.", v53, 2u);
    }
  }

LABEL_11:
  v47 = objc_msgSend_scopedProxies(self, v24, v25, v26, v27, v28, v29);
  objc_msgSend_removeObjectsAtIndexes_(v47, v48, v13, v49, v50, v51, v52);

  _Block_object_dispose(&v55, 8);
}

- (id)debugDescription
{
  v143 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v10 = objc_msgSend_cachedProxies(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_count(v10, v11, v12, v13, v14, v15, v16);

  if (v17)
  {
    objc_msgSend_appendFormat_(v3, v18, @"Proxies by class:\n", v20, v21, v22, v23);
    v24 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v31 = objc_msgSend_cachedProxies(self, v25, v26, v27, v28, v29, v30);
    v38 = objc_msgSend_keyEnumerator(v31, v32, v33, v34, v35, v36, v37);

    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v138, v142, 16, v40, v41);
    if (v42)
    {
      v48 = v42;
      v49 = *v139;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v139 != v49)
          {
            objc_enumerationMutation(v38);
          }

          objc_msgSend_addObject_(v24, v43, *(*(&v138 + 1) + 8 * i), v44, v45, v46, v47);
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v43, &v138, v142, 16, v46, v47);
      }

      while (v48);
    }

    v56 = objc_msgSend_sortedArrayUsingComparator_(v24, v51, &unk_2856A2CF8, v52, v53, v54, v55);
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = sub_2439774CC;
    v136[3] = &unk_278DDB278;
    v136[4] = self;
    v137 = v3;
    objc_msgSend_enumerateObjectsUsingBlock_(v56, v57, v136, v58, v59, v60, v61);
  }

  v62 = objc_msgSend_scopedProxies(self, v18, v19, v20, v21, v22, v23);
  v69 = objc_msgSend_count(v62, v63, v64, v65, v66, v67, v68);

  if (v69)
  {
    v76 = objc_opt_new();
    v83 = objc_msgSend_scopedProxies(self, v77, v78, v79, v80, v81, v82);
    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = sub_24397756C;
    v134[3] = &unk_278DDB2A0;
    v135 = v76;
    v84 = v76;
    objc_msgSend_enumerateObjectsUsingBlock_(v83, v85, v134, v86, v87, v88, v89);

    objc_msgSend_appendFormat_(v3, v90, @"Active proxies by scope:\n", v91, v92, v93, v94);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_243977658;
    v132[3] = &unk_278DDB2C8;
    v133 = v3;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v84, v95, v132, v96, v97, v98, v99);
  }

  else if (!v17)
  {
    objc_msgSend_appendFormat_(v3, v70, @"No proxies in cache\n", v72, v73, v74, v75);
  }

  v100 = objc_msgSend_totalProxiesCreated(self, v70, v71, v72, v73, v74, v75);
  objc_msgSend_appendFormat_(v3, v101, @"Total proxies created: %ld\n", v102, v103, v104, v105, v100);
  v112 = objc_msgSend_totalProxiesReclaimed(self, v106, v107, v108, v109, v110, v111);
  objc_msgSend_appendFormat_(v3, v113, @"Total proxies reclaimed: %ld\n", v114, v115, v116, v117, v112);
  v124 = objc_msgSend_totalProxiesRetainedOutOfScope(self, v118, v119, v120, v121, v122, v123);
  objc_msgSend_appendFormat_(v3, v125, @"Total proxies retained out of scope: %ld\n", v126, v127, v128, v129, v124);
  v130 = *MEMORY[0x277D85DE8];

  return v3;
}

@end