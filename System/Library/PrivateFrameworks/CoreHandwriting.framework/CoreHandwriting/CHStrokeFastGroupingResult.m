@interface CHStrokeFastGroupingResult
- (CHStrokeFastGroupingResult)initWithFastGroupingClusters:(const void *)a3 clusteredStrokes:(id)a4 strokeProvider:(id)a5 strategyIdentifier:(id)a6 clutterFilter:(id)a7;
- (id).cxx_construct;
- (vector<CHFastGroupingCluster,)fastGroupingClusters;
@end

@implementation CHStrokeFastGroupingResult

- (CHStrokeFastGroupingResult)initWithFastGroupingClusters:(const void *)a3 clusteredStrokes:(id)a4 strokeProvider:(id)a5 strategyIdentifier:(id)a6 clutterFilter:(id)a7
{
  p_info = &OBJC_METACLASS___CHRemoteSynthesisRequest.info;
  v12 = a4;
  v114 = a5;
  v113 = a6;
  v13 = a7;
  objc_opt_self();
  v111 = v13;
  v115 = objc_msgSend_setWithCapacity_(MEMORY[0x1E695DFA8], v14, 0x8E38E38E38E38E39 * ((*(a3 + 1) - *a3) >> 3), v15, v16, v17);
  v23 = *a3;
  if (*a3 != *(a3 + 1))
  {
    v112 = v12;
    do
    {
      v24 = v12;
      v25 = v114;
      v26 = v113;
      objc_opt_self();
      v27 = p_info;
      v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v28, *(v23 + 7), v29, v30, v31);
      v37 = *(v23 + 5);
      if (v37 != v23 + 48)
      {
        do
        {
          v43 = objc_msgSend_objectAtIndexedSubscript_(v24, v32, *(v37 + 4), v33, v34, v35);
          v49 = objc_msgSend_encodedStrokeIdentifier(v43, v44, v45, v46, v47, v48);
          objc_msgSend_addObject_(v36, v50, v49, v51, v52, v53);

          v54 = *(v37 + 1);
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = *(v37 + 2);
              v56 = *v55 == v37;
              v37 = v55;
            }

            while (!v56);
          }

          v37 = v55;
        }

        while (v55 != v23 + 48);
      }

      p_info = v27;
      v38 = sub_183980D4C((v27 + 196), v36, v25, v26);

      objc_msgSend_addObject_(v115, v39, v38, v40, v41, v42);
      v23 += 72;
      v12 = v112;
    }

    while (v23 != *(a3 + 1));
  }

  if (v111 && objc_msgSend_highDensityStrokeCount(v111, v18, v19, v20, v21, v22) >= 1)
  {
    v62 = MEMORY[0x1E695DF70];
    v63 = objc_msgSend_highDensityStrokeCount(v111, v57, v58, v59, v60, v61);
    v73 = objc_msgSend_arrayWithCapacity_(v62, v64, v63, v65, v66, v67);
    for (i = 0; i < objc_msgSend_count(v12, v68, v69, v70, v71, v72); ++i)
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(v12, v75, i, v76, v77, v78);
      v85 = objc_msgSend_encodedStrokeIdentifier(v79, v80, v81, v82, v83, v84);
      isHighDensityStroke = objc_msgSend_isHighDensityStroke_(v111, v86, v85, v87, v88, v89);

      if (isHighDensityStroke)
      {
        v96 = objc_msgSend_encodedStrokeIdentifier(v79, v91, v92, v93, v94, v95);
        objc_msgSend_addObject_(v73, v97, v96, v98, v99, v100);
      }
    }

    v101 = sub_183980D4C((p_info + 196), v73, v114, v113);
    objc_msgSend_addObject_(v115, v102, v101, v103, v104, v105);
  }

  v116.receiver = self;
  v116.super_class = CHStrokeFastGroupingResult;
  v106 = [(CHStrokeGroupingResult *)&v116 initWithStrokeGroups:v115 createdStrokeGroups:0 deletedStrokeGroups:0];
  v107 = v106;
  if (v106)
  {
    p_begin = &v106->_fastGroupingClusters.__begin_;
    if (&v107->_fastGroupingClusters != a3)
    {
      sub_183975F34(p_begin, *a3, *(a3 + 1), 0x8E38E38E38E38E39 * ((*(a3 + 1) - *a3) >> 3));
    }
  }

  return v107;
}

- (vector<CHFastGroupingCluster,)fastGroupingClusters
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  end = self[5].__end_;
  cap = self[5].__cap_;
  if (cap != end)
  {
    if (0x8E38E38E38E38E39 * ((cap - end) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  return self;
}

@end