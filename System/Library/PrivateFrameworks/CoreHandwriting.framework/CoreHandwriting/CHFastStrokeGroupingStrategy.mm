@interface CHFastStrokeGroupingStrategy
- (CHFastStrokeGroupingStrategy)initWithStrokeProvider:(id)a3 locales:(id)a4 clutterFilter:(id)a5;
- (id)fastGroupingResultWithFastGroupingClusters:(void *)a3 clusteredStrokes:(id)a4;
- (id)groupingResultForContextStrokes:(id)a3 clusteredStrokes:(id)a4 fastGroupingResult:(id)a5 point:(CGPoint)a6 tokenizationLevel:(int64_t)a7;
- (id)groupingResultUsingStrokes:(id)a3 distanceMetric:(int)a4 mergingDistanceThreshold:(double)a5 clusteringLinkage:(int)a6 anchorPoints:(unint64_t)a7 shouldCancel:(id)a8;
- (id)lineGroupingResultUsingStrokes:(id)a3 shouldCancel:(id)a4;
- (vector<CHFastGroupingCluster,)clustersForStrokes:(CHFastStrokeGroupingStrategy *)self shouldMakeSingleCluster:(SEL)a3 anchorPoints:(id)a4;
@end

@implementation CHFastStrokeGroupingStrategy

- (CHFastStrokeGroupingStrategy)initWithStrokeProvider:(id)a3 locales:(id)a4 clutterFilter:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CHFastStrokeGroupingStrategy;
  v11 = [(CHStrokeGroupingStrategy *)&v14 initWithStrokeProvider:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_locales, a4);
    objc_storeStrong(&v12->_clutterFilter, a5);
  }

  return v12;
}

- (id)lineGroupingResultUsingStrokes:(id)a3 shouldCancel:(id)a4
{
  v4 = objc_msgSend_groupingResultUsingStrokes_distanceMetric_mergingDistanceThreshold_clusteringLinkage_anchorPoints_shouldCancel_(self, a2, a3, 3, 1, 1, a4, 30.0);

  return v4;
}

- (id)fastGroupingResultWithFastGroupingClusters:(void *)a3 clusteredStrokes:(id)a4
{
  v6 = a4;
  v7 = [CHStrokeFastGroupingResult alloc];
  v13 = objc_msgSend_strokeProvider(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_strategyIdentifier(self, v14, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithFastGroupingClusters_clusteredStrokes_strokeProvider_strategyIdentifier_clutterFilter_(v7, v20, a3, v6, v13, v19, self->_clutterFilter);

  return v21;
}

- (id)groupingResultUsingStrokes:(id)a3 distanceMetric:(int)a4 mergingDistanceThreshold:(double)a5 clusteringLinkage:(int)a6 anchorPoints:(unint64_t)a7 shouldCancel:(id)a8
{
  v118 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a8;
  v98 = self;
  objc_msgSend_clustersForStrokes_shouldMakeSingleCluster_anchorPoints_(self, v15, v13, 0, a7, v16);
  v97 = v14;
  v17 = self;
  if (v14 && v14[2](v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEBUG, "Canceling line cluster results computation", buf, 2u);
    }

    v19 = 0;
    goto LABEL_100;
  }

  if (a6 != 1)
  {
    goto LABEL_83;
  }

  v20 = 0x8E38E38E38E38E39 * ((v108 - v107) >> 3);
  if (v20 < 0x2711)
  {
    goto LABEL_83;
  }

  v116 = 0uLL;
  v117 = 0;
  v21 = v20 / 10000.0;
  v100 = vcvtpd_u64_f64(v21);
  if (!v100)
  {
    v76 = 0;
    v75 = 0;
    goto LABEL_77;
  }

  v96 = v13;
  v22 = 0;
  v23 = vcvtpd_u64_f64(v20 / ceil(v21));
  v99 = v23;
  do
  {
    __p = 0;
    v105 = 0;
    v106 = 0;
    *buf = &__p;
    LOBYTE(v110) = 0;
    if (v23)
    {
      if (v23 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_18368964C();
    }

    v25 = v22 + 1;
    v24 = a5;
    sub_1839710F4(&v102, v17, &__p, a4, 1, v14, v24);
    v27 = v102;
    v26 = v103;
    v28 = v103 - v102;
    if (v103 - v102 < 1)
    {
      goto LABEL_33;
    }

    v29 = *(&v116 + 1);
    if (v117 - *(&v116 + 1) >= v28)
    {
      v114 = *(&v116 + 1);
      v115 = *(&v116 + 1);
      *buf = &v116;
      v110 = &v114;
      v111 = &v115;
      LOBYTE(v112) = 0;
      if (v102 != v103)
      {
        v32 = *(&v116 + 1);
        do
        {
          sub_1836EC4D8(v32, v27);
          v27 += 72;
          v33 = v115;
          v32 = v115 + 72;
          v115 += 72;
        }

        while (v27 != v26);
        v29 = (v33 + 72);
      }

      *(&v116 + 1) = v29;
LABEL_33:
      v34 = v102;
      v23 = v99;
      if (!v102)
      {
        goto LABEL_34;
      }

      goto LABEL_66;
    }

    v30 = 0x8E38E38E38E38E39 * ((*(&v116 + 1) - v116) >> 3) - 0x71C71C71C71C71C7 * (v28 >> 3);
    if (v30 > 0x38E38E38E38E38ELL)
    {
      sub_18368964C();
    }

    if (0x1C71C71C71C71C72 * ((v117 - v116) >> 3) > v30)
    {
      v30 = 0x1C71C71C71C71C72 * ((v117 - v116) >> 3);
    }

    if (0x8E38E38E38E38E39 * ((v117 - v116) >> 3) >= 0x1C71C71C71C71C7)
    {
      v31 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v31 = v30;
    }

    v113 = &v116;
    if (v31)
    {
      if (v31 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_183688F00();
    }

    v36 = 8 * ((*(&v116 + 1) - v116) >> 3);
    *buf = 0;
    v110 = v36;
    v111 = v36;
    v112 = 0;
    v37 = v36 + v28;
    do
    {
      sub_1836EC4D8(v36, v27);
      v36 += 72;
      v27 += 72;
      v28 -= 72;
    }

    while (v28);
    v38 = v110;
    v39 = *(&v116 + 1);
    if (*(&v116 + 1) == v29)
    {
      v53 = v29;
    }

    else
    {
      v40 = 0;
      do
      {
        v41 = (v37 + v40);
        *v41 = *&v29[v40];
        v42 = &v29[v40 + 8];
        v43 = *v42;
        *(v37 + v40 + 8) = *v42;
        v44 = v37 + v40 + 8;
        v45 = *&v29[v40 + 16];
        v41[2] = v45;
        if (v45)
        {
          *(v43 + 16) = v44;
          *&v29[v40] = v42;
          *v42 = 0;
          *&v29[v40 + 16] = 0;
        }

        else
        {
          *(v37 + v40) = v44;
        }

        v46 = v37 + v40;
        *(v46 + 24) = *&v29[v40 + 24];
        *(v46 + 40) = *&v29[v40 + 40];
        v47 = &v29[v40 + 48];
        v48 = *v47;
        *(v37 + v40 + 48) = *v47;
        v49 = v37 + v40 + 48;
        v50 = *&v29[v40 + 56];
        *(v46 + 56) = v50;
        if (v50)
        {
          *(v48 + 16) = v49;
          *&v29[v40 + 40] = v47;
          *v47 = 0;
          *&v29[v40 + 56] = 0;
        }

        else
        {
          *(v46 + 40) = v49;
        }

        *(v37 + v40 + 64) = *&v29[v40 + 64];
        v40 += 72;
      }

      while (&v29[v40] != v39);
      v51 = (v29 + 40);
      do
      {
        sub_18368D56C(v51, *(v51 + 8));
        sub_18368A374(v51 - 40, *(v51 - 32));
        v52 = v51 + 32;
        v51 += 72;
      }

      while (v52 != v39);
      v53 = *(&v116 + 1);
    }

    v17 = v98;
    *(&v116 + 1) = v29;
    v54 = v116;
    v55 = v38 + v116 - v29;
    if (v116 != v29)
    {
      v56 = 0;
      do
      {
        v57 = &v55[v56];
        *v57 = *&v54[v56];
        v58 = &v54[v56 + 8];
        v59 = *v58;
        *&v55[v56 + 8] = *v58;
        v60 = &v55[v56 + 8];
        v61 = *&v54[v56 + 16];
        *(v57 + 2) = v61;
        if (v61)
        {
          *(v59 + 16) = v60;
          *&v54[v56] = v58;
          *v58 = 0;
          *&v54[v56 + 16] = 0;
        }

        else
        {
          *&v55[v56] = v60;
        }

        v62 = &v55[v56];
        *(v62 + 24) = *&v54[v56 + 24];
        *(v62 + 5) = *&v54[v56 + 40];
        v63 = &v54[v56 + 48];
        v64 = *v63;
        *&v55[v56 + 48] = *v63;
        v65 = &v55[v56 + 48];
        v66 = *&v54[v56 + 56];
        *(v62 + 7) = v66;
        if (v66)
        {
          *(v64 + 16) = v65;
          *&v54[v56 + 40] = v63;
          *v63 = 0;
          *&v54[v56 + 56] = 0;
        }

        else
        {
          *(v62 + 5) = v65;
        }

        *&v55[v56 + 64] = *&v54[v56 + 64];
        v56 += 72;
      }

      while (&v54[v56] != v29);
      v67 = (v54 + 40);
      do
      {
        sub_18368D56C(v67, *(v67 + 8));
        sub_18368A374(v67 - 40, *(v67 - 32));
        v68 = v67 + 32;
        v67 += 72;
      }

      while (v68 != v29);
      v54 = v116;
    }

    *&v116 = v55;
    *(&v116 + 1) = v37 + v53 - v29;
    v117 = v112;
    if (v54)
    {
      operator delete(v54);
    }

    v14 = v97;
    v34 = v102;
    v23 = v99;
    if (!v102)
    {
LABEL_34:
      v35 = __p;
      if (!__p)
      {
        goto LABEL_13;
      }

LABEL_71:
      v72 = v35;
      if (v105 != v35)
      {
        v73 = v105 - 32;
        do
        {
          v74 = (v73 - 40);
          sub_18368D56C(v73, *(v73 + 8));
          sub_18368A374(v73 - 40, *(v73 - 32));
          v73 -= 72;
        }

        while (v74 != v35);
        v72 = __p;
      }

      v105 = v35;
      operator delete(v72);
      goto LABEL_13;
    }

LABEL_66:
    v69 = v34;
    if (v103 != v34)
    {
      v70 = (v103 - 32);
      do
      {
        v71 = (v70 - 40);
        sub_18368D56C(v70, *(v70 + 8));
        sub_18368A374(v70 - 40, *(v70 - 32));
        v70 -= 72;
      }

      while (v71 != v34);
      v69 = v102;
    }

    v103 = v34;
    operator delete(v69);
    v35 = __p;
    if (__p)
    {
      goto LABEL_71;
    }

LABEL_13:
    v22 = v25;
  }

  while (v25 != v100);
  v76 = *(&v116 + 1);
  v75 = v116;
  v13 = v96;
  a6 = 1;
LABEL_77:
  sub_183975F34(&v107, v75, v76, 0x8E38E38E38E38E39 * ((v76 - v75) >> 3));
  v77 = v116;
  if (v116)
  {
    v78 = v116;
    if (*(&v116 + 1) != v116)
    {
      v79 = *(&v116 + 1) - 32;
      do
      {
        v80 = v79 - 40;
        sub_18368D56C(v79, *(v79 + 8));
        sub_18368A374(v79 - 40, *(v79 - 32));
        v79 -= 72;
      }

      while (v80 != v77);
      v78 = v116;
      v17 = v98;
    }

    *(&v116 + 1) = v77;
    operator delete(v78);
  }

LABEL_83:
  v81 = a5;
  sub_1839710F4(buf, v17, &v107, a4, a6, v14, v81);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v82 = qword_1EA84DC68;
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v116) = 134217984;
    *(&v116 + 4) = 0x8E38E38E38E38E39 * ((v110 - *buf) >> 3);
    _os_log_impl(&dword_18366B000, v82, OS_LOG_TYPE_DEBUG, "%lu clusters found by the fast grouping algorithm", &v116, 0xCu);
  }

  if (!v14 || !v14[2](v14))
  {
    v19 = objc_msgSend_fastGroupingResultWithFastGroupingClusters_clusteredStrokes_(v17, v83, buf, v13, v84, v85);
    v87 = *buf;
    if (!*buf)
    {
      goto LABEL_100;
    }

    goto LABEL_95;
  }

  if (qword_1EA84DC48 == -1)
  {
    v86 = qword_1EA84DC68;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_91;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v86 = qword_1EA84DC68;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
LABEL_91:
      LOWORD(v116) = 0;
      _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_DEBUG, "Canceling line cluster results computation", &v116, 2u);
    }
  }

  v19 = 0;
  v87 = *buf;
  if (*buf)
  {
LABEL_95:
    v88 = v87;
    if (v110 != v87)
    {
      v89 = (v110 - 4);
      do
      {
        v90 = v89 - 40;
        sub_18368D56C(v89, *(v89 + 8));
        sub_18368A374(v89 - 40, *(v89 - 32));
        v89 -= 72;
      }

      while (v90 != v87);
      v88 = *buf;
      v14 = v97;
    }

    v110 = v87;
    operator delete(v88);
  }

LABEL_100:
  v91 = v107;
  if (v107)
  {
    v92 = v107;
    if (v108 != v107)
    {
      v93 = (v108 - 32);
      do
      {
        v94 = (v93 - 40);
        sub_18368D56C(v93, *(v93 + 8));
        sub_18368A374(v93 - 40, *(v93 - 32));
        v93 -= 72;
      }

      while (v94 != v91);
      v92 = v107;
      v14 = v97;
    }

    v108 = v91;
    operator delete(v92);
  }

  return v19;
}

- (vector<CHFastGroupingCluster,)clustersForStrokes:(CHFastStrokeGroupingStrategy *)self shouldMakeSingleCluster:(SEL)a3 anchorPoints:(id)a4
{
  v7 = a5;
  v9 = a4;
  v10 = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v142[0] = 0;
  v142[1] = 0;
  v141 = v142;
  for (i = objc_msgSend_count(v9, v11, v12, v13, v14, v15, a6); v10 < i; i = objc_msgSend_count(v9, v21, v22, v23, v24, v25, v116))
  {
    v118 = objc_msgSend_objectAtIndexedSubscript_(v9, v17, v10, v18, v19, v20);
    clutterFilter = self->_clutterFilter;
    if (!clutterFilter || (objc_msgSend_encodedStrokeIdentifier(v118, v26, v27, v28, v29, v30), v32 = objc_claimAutoreleasedReturnValue(), isHighDensityStroke = objc_msgSend_isHighDensityStroke_(clutterFilter, v33, v32, v34, v35, v36), v32, (isHighDensityStroke & 1) == 0))
    {
      objc_msgSend_bounds(v118, v26, v27, v28, v29, v30);
      CGRectGetMidX(v143);
      objc_msgSend_bounds(v118, v38, v39, v40, v41, v42);
      CGRectGetMidY(v144);
      v132 = 0;
      v133 = &v132;
      v134 = 0x4812000000;
      v135 = sub_1839731D4;
      v136 = sub_1839731F8;
      v137 = &unk_183A5AC72;
      v139 = 0;
      v140 = 0;
      v138 = 0;
      if (v7)
      {
        operator new();
      }

      if (a6)
      {
        operator new();
      }

      if ((a6 & 2) != 0)
      {
        v131[0] = MEMORY[0x1E69E9820];
        v131[1] = 3221225472;
        v131[2] = sub_183973210;
        v131[3] = &unk_1E6DDCAC0;
        v131[4] = &v132;
        objc_msgSend_enumeratePointsWithDistanceStep_usingBlock_(v118, v43, v131, v44, v45, v46, 1.79769313e308);
      }

      if ((a6 & 4) != 0)
      {
        v122 = 0;
        v123 = &v122;
        v124 = 0x4812000000;
        v125 = sub_1839731D4;
        v126 = sub_1839731F8;
        v127 = &unk_183A5AC72;
        v129 = 0;
        v130 = 0;
        v128 = 0;
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = sub_183973244;
        v121[3] = &unk_1E6DDCAC0;
        v121[4] = &v122;
        objc_msgSend_enumeratePointsWithDistanceStep_usingBlock_(v118, v43, v121, v44, v45, v46, 1.0);
        v47 = objc_opt_class();
        if (v47)
        {
          objc_msgSend_convexHullForPoints_(v47, v48, (v123 + 6), v49, v50, v51);
        }

        else
        {
          __p = 0;
          v120 = 0;
        }

        v57 = objc_alloc_init(CHDrawing);
        for (j = __p; j != v120; j += 2)
        {
          objc_msgSend_addPoint_(v57, v52, v53, v54, v55, v56, *j, j[1]);
        }

        objc_msgSend_endStroke(v57, v52, v53, v54, v55, v56);
        objc_msgSend_bounds(v118, v59, v60, v61, v62, v63);
        v65 = v64;
        objc_msgSend_bounds(v118, v66, v67, v68, v69, v70);
        if (v65 <= v76)
        {
          objc_msgSend_bounds(v118, v71, v72, v73, v74, v75);
          v82 = v83;
        }

        else
        {
          objc_msgSend_bounds(v118, v71, v72, v73, v74, v75);
        }

        v84 = objc_msgSend_drawingSpatiallyResampled_(v57, v77, v78, v79, v80, v81, v82 / 10.0);
        v85 = 0;
        for (k = objc_msgSend_pointCountForStrokeIndex_(v84, v86, 0, v87, v88, v89); v85 < k; k = objc_msgSend_pointCountForStrokeIndex_(v84, v96, 0, v97, v98, v99))
        {
          v95 = v133;
          objc_msgSend_pointForStrokeIndex_pointIndex_(v84, v91, 0, v85, v92, v93);
          v103 = v95[7];
          v102 = v95[8];
          if (v103 < v102)
          {
            *v103 = v100;
            *(v103 + 1) = v101;
            v94 = (v103 + 16);
          }

          else
          {
            v104 = v95[6];
            v105 = v103 - v104;
            v106 = (v103 - v104) >> 4;
            v107 = v106 + 1;
            if ((v106 + 1) >> 60)
            {
              sub_18369761C();
            }

            v108 = v102 - v104;
            if (v108 >> 3 > v107)
            {
              v107 = v108 >> 3;
            }

            if (v108 >= 0x7FFFFFFFFFFFFFF0)
            {
              v109 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v109 = v107;
            }

            if (v109)
            {
              if (!(v109 >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v110 = (16 * v106);
            *v110 = v100;
            v110[1] = v101;
            v94 = 16 * v106 + 16;
            memcpy(0, v104, v105);
            v95[6] = 0;
            v95[7] = v94;
            v95[8] = 0;
            if (v104)
            {
              operator delete(v104);
            }
          }

          v95[7] = v94;
          ++v85;
        }

        if (__p)
        {
          operator delete(__p);
        }

        _Block_object_dispose(&v122, 8);
        if (v128)
        {
          v129 = v128;
          operator delete(v128);
        }
      }

      v112 = v133[6];
      v111 = v133[7];
      if (v111 != v112)
      {
        if (((v111 - v112) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369761C();
      }

      operator new();
    }

    ++v10;
  }

  if (v7)
  {
    sub_1836E9D0C(&v132, &v141);
    end = retstr->__end_;
    if (end >= retstr->__cap_)
    {
      v114 = sub_1836EC8C0(retstr, &v132);
    }

    else
    {
      sub_1836EC4D8(retstr->__end_, &v132);
      v114 = (end + 72);
    }

    retstr->__end_ = v114;
    sub_18368D56C(&v137, v138);
    sub_18368A374(&v132, v133);
  }

  sub_18368A374(&v141, v142[0]);

  return result;
}

- (id)groupingResultForContextStrokes:(id)a3 clusteredStrokes:(id)a4 fastGroupingResult:(id)a5 point:(CGPoint)a6 tokenizationLevel:(int64_t)a7
{
  x = a6.x;
  y = a6.y;
  v315 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v284 = a4;
  v11 = a5;
  v282 = a7;
  v283 = v11;
  v285 = v10;
  if (!a7)
  {
    v64 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v12, v10, v14, v15, v16);
    goto LABEL_192;
  }

  if (!v11)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v65 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v65, OS_LOG_TYPE_ERROR, "Fast grouping result must exist for the requested tokenization type", &buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v66 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v66 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
LABEL_47:

        v303[0] = 0;
        v303[1] = 0;
        v304 = 0;
        v22 = a7;
        if (a7 == 1)
        {
          goto LABEL_4;
        }

LABEL_48:
        if ((v22 - 3) <= 1)
        {
          v67 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v303[1] - v303[0]) >> 3));
          if (v303[1] == v303[0])
          {
            v68 = 0;
          }

          else
          {
            v68 = v67;
          }

          sub_1839762B8(v303[0], v303[1], v68, 1);
        }

        goto LABEL_109;
      }
    }

    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_FAULT, "Fast grouping result must exist for the requested tokenization type", &buf, 2u);
    goto LABEL_47;
  }

  objc_msgSend_fastGroupingClusters(v11, v12, v13, v14, v15, v16);
  v22 = a7;
  if (a7 != 1)
  {
    goto LABEL_48;
  }

LABEL_4:
  if (objc_msgSend_count(v10, v17, v18, v19, v20, v21))
  {
    obj = v10;
    v23 = v284;
    if (self)
    {
      v24 = v303[0];
      if (v303[1] != v303[0])
      {
        while (1)
        {
          while (1)
          {
            v309 = 0u;
            v310 = 0u;
            *__p = 0u;
            v308 = 0u;
            v25 = obj;
            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, __p, &buf, 16, v27);
            if (!v33)
            {
              break;
            }

            v34 = *v308;
            while (1)
            {
              v35 = 0;
LABEL_12:
              if (*v308 != v34)
              {
                objc_enumerationMutation(v25);
              }

              v36 = *(__p[1] + v35);
              v37 = objc_msgSend_strokeProvider(self, v28, v29, v30, v31, v32);
              v41 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v38, v36, v37, v39, v40);

              v46 = objc_msgSend_indexOfObject_(v23, v42, v41, v43, v44, v45);
              v47 = v24[6];
              if (v47)
              {
                break;
              }

LABEL_15:

              if (++v35 != v33)
              {
                goto LABEL_12;
              }

              v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, __p, &buf, 16, v32);
              v33 = v49;
              if (!v49)
              {
                goto LABEL_22;
              }
            }

            while (1)
            {
              v48 = v47[4];
              if (v46 >= v48)
              {
                break;
              }

LABEL_17:
              v47 = *v47;
              if (!v47)
              {
                goto LABEL_15;
              }
            }

            if (v48 < v46)
            {
              ++v47;
              goto LABEL_17;
            }

            v24 += 9;
            if (v303[1] == v24)
            {
              goto LABEL_53;
            }
          }

LABEL_22:

          v50 = v303[1];
          if (v24 + 9 != v303[1])
          {
            break;
          }

          v52 = v24;
          if (v303[1] != v24)
          {
            goto LABEL_36;
          }

LABEL_8:
          v303[1] = v52;
          if (v52 == v24)
          {
            goto LABEL_53;
          }
        }

        v51 = v24;
        do
        {
          v54 = v51 + 8;
          sub_18368A374(v51, *(v51 + 8));
          *v51 = *(v51 + 72);
          v55 = (v51 + 80);
          v56 = *(v51 + 80);
          *(v51 + 8) = v56;
          v57 = *(v51 + 88);
          *(v51 + 16) = v57;
          if (v57)
          {
            *(v56 + 16) = v54;
            *(v51 + 72) = v55;
            *v55 = 0;
            *(v51 + 88) = 0;
          }

          else
          {
            *v51 = v54;
          }

          *(v51 + 24) = *(v51 + 96);
          v58 = v51 + 48;
          sub_18368D56C(v51 + 40, *(v51 + 48));
          v59 = (v51 + 120);
          v60 = *(v51 + 120);
          *(v51 + 40) = *(v51 + 112);
          *(v51 + 48) = v60;
          v61 = *(v51 + 128);
          *(v51 + 56) = v61;
          if (v61)
          {
            *(v60 + 16) = v58;
            *(v51 + 112) = v59;
            *v59 = 0;
            *(v51 + 128) = 0;
          }

          else
          {
            *(v51 + 40) = v58;
          }

          *(v51 + 64) = *(v51 + 136);
          v52 = (v51 + 72);
          v53 = (v51 + 144);
          v51 += 72;
        }

        while (v53 != v50);
        v50 = v303[1];
        if (v303[1] == v52)
        {
          goto LABEL_8;
        }

LABEL_36:
        v62 = v50 - 32;
        do
        {
          v63 = (v62 - 40);
          sub_18368D56C(v62, *(v62 + 8));
          sub_18368A374(v62 - 40, *(v62 - 32));
          v62 -= 72;
        }

        while (v63 != v52);
        goto LABEL_8;
      }
    }

LABEL_53:
  }

  v301[0] = 0;
  v301[1] = 0;
  v302 = 0;
  v69 = v303[0];
  if (self && v303[1] != v303[0])
  {
    v70 = 0;
    do
    {
      sub_1836EA994(&v69[72 * v70], __p);
      sub_1839710F4(&v305, self, __p, 2, 1, 0, 50.0);
      v72 = v305;
      v71 = v306;
      if (v306 != v305)
      {
        v73 = 0;
        v74 = v301[1];
        do
        {
          v75 = v72 + 72 * v73;
          if (v74 < v302)
          {
            sub_1836EC4D8(v74, v75);
            v74 += 72;
          }

          else
          {
            v76 = 0x8E38E38E38E38E39 * ((v74 - v301[0]) >> 3);
            v77 = v76 + 1;
            if (v76 + 1 > 0x38E38E38E38E38ELL)
            {
              sub_18368964C();
            }

            if (0x1C71C71C71C71C72 * ((v302 - v301[0]) >> 3) > v77)
            {
              v77 = 0x1C71C71C71C71C72 * ((v302 - v301[0]) >> 3);
            }

            if (0x8E38E38E38E38E39 * ((v302 - v301[0]) >> 3) >= 0x1C71C71C71C71C7)
            {
              v78 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v78 = v77;
            }

            v314 = v301;
            if (v78)
            {
              if (v78 <= 0x38E38E38E38E38ELL)
              {
                operator new();
              }

              sub_183688F00();
            }

            *&buf = 0;
            *(&buf + 1) = 72 * v76;
            v312 = 72 * v76;
            v313 = 0;
            sub_1836EC4D8(72 * v76, v75);
            v74 = (v312 + 72);
            v312 += 72;
            v79 = v301[0];
            v80 = v301[1];
            v81 = (*(&buf + 1) + v301[0] - v301[1]);
            if (v301[0] != v301[1])
            {
              v82 = 0;
              do
              {
                v83 = &v81[v82];
                *v83 = *&v79[v82];
                v84 = &v79[v82 + 8];
                v85 = *v84;
                *&v81[v82 + 8] = *v84;
                v86 = &v81[v82 + 8];
                v87 = *&v79[v82 + 16];
                *(v83 + 2) = v87;
                if (v87)
                {
                  *(v85 + 16) = v86;
                  *&v79[v82] = v84;
                  *v84 = 0;
                  *&v79[v82 + 16] = 0;
                }

                else
                {
                  *&v81[v82] = v86;
                }

                v88 = &v81[v82];
                *(v88 + 24) = *&v79[v82 + 24];
                *(v88 + 5) = *&v79[v82 + 40];
                v89 = &v79[v82 + 48];
                v90 = *v89;
                *&v81[v82 + 48] = *v89;
                v91 = &v81[v82 + 48];
                v92 = *&v79[v82 + 56];
                *(v88 + 7) = v92;
                if (v92)
                {
                  *(v90 + 16) = v91;
                  *&v79[v82 + 40] = v89;
                  *v89 = 0;
                  *&v79[v82 + 56] = 0;
                }

                else
                {
                  *(v88 + 5) = v91;
                }

                *&v81[v82 + 64] = *&v79[v82 + 64];
                v82 += 72;
              }

              while (&v79[v82] != v80);
              v93 = (v79 + 40);
              do
              {
                sub_18368D56C(v93, *(v93 + 8));
                sub_18368A374(v93 - 40, *(v93 - 32));
                v94 = (v93 + 32);
                v93 += 72;
              }

              while (v94 != v80);
              v79 = v301[0];
              v74 = v312;
            }

            v301[0] = v81;
            v301[1] = v74;
            *(&buf + 1) = v79;
            v312 = v79;
            v302 = v313;
            if (v79)
            {
              operator delete(v79);
            }
          }

          v301[1] = v74;
          ++v73;
          v72 = v305;
          v71 = v306;
        }

        while (v73 < 0x8E38E38E38E38E39 * ((v306 - v305) >> 3));
      }

      if (v72)
      {
        v95 = v72;
        if (v71 != v72)
        {
          v96 = v71 - 32;
          do
          {
            v97 = (v96 - 40);
            sub_18368D56C(v96, *(v96 + 8));
            sub_18368A374(v96 - 40, *(v96 - 32));
            v96 -= 72;
          }

          while (v97 != v72);
          v95 = v305;
        }

        v306 = v72;
        operator delete(v95);
      }

      v98 = __p[0];
      if (__p[0])
      {
        v99 = __p[0];
        if (__p[1] != __p[0])
        {
          v100 = __p[1] - 32;
          do
          {
            v101 = v100 - 40;
            sub_18368D56C(v100, *(v100 + 1));
            sub_18368A374((v100 - 40), *(v100 - 4));
            v100 -= 72;
          }

          while (v101 != v98);
          v99 = __p[0];
        }

        __p[1] = v98;
        operator delete(v99);
      }

      ++v70;
      v69 = v303[0];
    }

    while (v70 < 0x8E38E38E38E38E39 * ((v303[1] - v303[0]) >> 3));
  }

  if (v69)
  {
    v102 = v69;
    if (v303[1] != v69)
    {
      v103 = v303[1] - 32;
      do
      {
        v104 = v103 - 40;
        sub_18368D56C(v103, *(v103 + 1));
        sub_18368A374((v103 - 40), *(v103 - 4));
        v103 -= 72;
      }

      while (v104 != v69);
      v102 = v303[0];
    }

    v303[1] = v69;
    operator delete(v102);
  }

  *v303 = *v301;
  v304 = v302;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v105 = qword_1EA84DC68;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = 0x8E38E38E38E38E39 * ((v303[1] - v303[0]) >> 3);
    _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_DEBUG, "groupingResultForContextStrokes: %lu words found", &buf, 0xCu);
  }

LABEL_109:
  if (!objc_msgSend_count(v285, v17, v18, v19, v20, v21))
  {
    objb = v284;
    v281 = v283;
    if (self)
    {
      v286 = objc_msgSend_set(MEMORY[0x1E695DFD8], v119, v120, v121, v122, v123);
      if (v303[1] != v303[0])
      {
        v287 = 0;
        v289 = 0;
        v291 = 0;
        v129.f64[0] = x;
        v129.f64[1] = y;
        v130 = vcvt_f32_f64(v129);
        v131 = 3.4028e38;
        do
        {
          v137 = objc_msgSend_set(MEMORY[0x1E695DFA8], v124, v125, v126, v127, v128, v281);
          v138 = v303[0] + 72 * v291;
          v139 = *(v138 + 5);
          v140 = v138 + 48;
          if (v139 != v138 + 48)
          {
            do
            {
              v194 = objc_msgSend_objectAtIndexedSubscript_(objb, v132, *(v139 + 4), v134, v135, v136);
              objc_msgSend_addObject_(v137, v195, v194, v196, v197, v198);

              v199 = *(v139 + 1);
              if (v199)
              {
                do
                {
                  v200 = v199;
                  v199 = *v199;
                }

                while (v199);
              }

              else
              {
                do
                {
                  v200 = *(v139 + 2);
                  v201 = *v200 == v139;
                  v139 = v200;
                }

                while (!v201);
              }

              v139 = v200;
            }

            while (v200 != v140);
          }

          v141 = *MEMORY[0x1E695F050];
          v142 = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
          v145 = objc_msgSend_set(MEMORY[0x1E695DFA8], v132, v133, v134, v135, v136);
          v309 = 0u;
          v310 = 0u;
          *__p = 0u;
          v308 = 0u;
          v146 = v137;
          v149 = 0;
          v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v147, __p, &buf, 16, v148);
          if (v155)
          {
            v156 = *v308;
            v157 = 3.4028e38;
            do
            {
              for (i = 0; i != v155; ++i)
              {
                if (*v308 != v156)
                {
                  objc_enumerationMutation(v146);
                }

                v159 = *(__p[1] + i);
                v160 = objc_msgSend_encodedStrokeIdentifier(v159, v150, v151, v152, v153, v154);
                objc_msgSend_addObject_(v145, v161, v160, v162, v163, v164);

                objc_msgSend_bounds(v159, v165, v166, v167, v168, v169);
                v325.origin.x = v170;
                v325.origin.y = v171;
                v325.size.width = v172;
                v325.size.height = v173;
                v319.origin.x = v141;
                v319.origin.y = v142;
                v319.size.width = width;
                v319.size.height = height;
                v320 = CGRectUnion(v319, v325);
                v141 = v320.origin.x;
                v142 = v320.origin.y;
                width = v320.size.width;
                height = v320.size.height;
                objc_msgSend_bounds(v159, v174, v175, v176, v177, v178);
                v317.x = x;
                v317.y = y;
                v179 = CGRectContainsPoint(v321, v317);
                objc_msgSend_bounds(v159, v180, v181, v182, v183, v184);
                MidX = CGRectGetMidX(v322);
                objc_msgSend_bounds(v159, v185, v186, v187, v188, v189);
                MidY = CGRectGetMidY(v323);
                v191.f64[0] = MidX;
                v191.f64[1] = MidY;
                v192 = vsub_f32(vcvt_f32_f64(v191), v130);
                v193 = sqrtf(vaddv_f32(vmul_f32(v192, v192)));
                if (!v149 && v179 || ((v149 ^ v179) & 1) == 0 && v193 < v157)
                {
                  v149 = v179;
                  v157 = v193;
                }
              }

              v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v150, __p, &buf, 16, v154);
            }

            while (v155);
          }

          else
          {
            v157 = 3.4028e38;
          }

          v324.origin.x = v141;
          v324.origin.y = v142;
          v324.size.width = width;
          v324.size.height = height;
          v318.x = x;
          v318.y = y;
          v202 = CGRectContainsPoint(v324, v318);
          v203 = v202;
          if (!v289 && v202 || !v287 && v149 || ((v157 < v131) & ~(v289 ^ v202 | v287 ^ v149)) != 0)
          {
            v204 = v145;

            v287 = v149;
            v289 = v203;
            v131 = v157;
            v286 = v204;
          }

          ++v291;
        }

        while (v291 < 0x8E38E38E38E38E39 * ((v303[1] - v303[0]) >> 3));
      }

      if ((v282 - 3) >= 2)
      {
        v275 = v286;
        v64 = v286;
      }

      else
      {
        v205 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v281, v124, 0, 0, v127, v128);
        v211 = objc_msgSend_strokeGroupClusters(v281, v206, v207, v208, v209, v210);
        v218 = objc_msgSend_allObjects(v286, v212, v213, v214, v215, v216);
        if (v282 == 3)
        {
          objc_msgSend_strokeIdentifiersInProximalGroupsForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(CHRecognitionSession, v217, v218, v205, v211, 0);
        }

        else
        {
          objc_msgSend_strokeIdentifiersInFullContextForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(CHRecognitionSession, v217, v218, v205, v211, 0);
        }
        v64 = ;

        v275 = v286;
      }
    }

    else
    {
      v64 = 0;
    }

    goto LABEL_186;
  }

  v290 = v285;
  v106 = v284;
  v288 = v283;
  if (self)
  {
    if ((v282 - 3) <= 1)
    {
      obja = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v288, v107, 0, 0, v110, v111);
      v118 = objc_msgSend_strokeGroupClusters(v288, v112, v113, v114, v115, v116);
      if (v282 == 3)
      {
        objc_msgSend_strokeIdentifiersInProximalGroupsForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(CHRecognitionSession, v117, v290, obja, v118, 0);
      }

      else
      {
        objc_msgSend_strokeIdentifiersInFullContextForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(CHRecognitionSession, v117, v290, obja, v118, 0);
      }
      v64 = ;

LABEL_180:
      goto LABEL_181;
    }

    v64 = objc_msgSend_set(MEMORY[0x1E695DFA8], v107, v108, v109, v110, v111);
    v309 = 0u;
    v310 = 0u;
    *__p = 0u;
    v308 = 0u;
    obja = v290;
    v221 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v219, __p, &buf, 16, v220);
    if (!v221)
    {
      goto LABEL_180;
    }

    v296 = *v308;
LABEL_151:
    v298 = v221;
    v227 = 0;
    while (1)
    {
      if (*v308 != v296)
      {
        objc_enumerationMutation(obja);
      }

      v228 = *(__p[1] + v227);
      v229 = objc_msgSend_strokeProvider(self, v222, v223, v224, v225, v226);
      v233 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v230, v228, v229, v231, v232);

      v238 = objc_msgSend_indexOfObject_(v106, v234, v233, v235, v236, v237);
      v244 = objc_msgSend_encodedStrokeIdentifier(v233, v239, v240, v241, v242, v243);
      v249 = objc_msgSend_containsObject_(v64, v245, v244, v246, v247, v248);

      if ((v249 & 1) == 0)
      {
        v255 = v303[0];
        v254 = v303[1];
        if (v303[1] != v303[0])
        {
          break;
        }
      }

LABEL_174:

      if (++v227 == v298)
      {
        v221 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v222, __p, &buf, 16, v226);
        if (!v221)
        {
          goto LABEL_180;
        }

        goto LABEL_151;
      }
    }

    v256 = 0;
LABEL_159:
    v257 = v255[9 * v256 + 1];
    if (!v257)
    {
      goto LABEL_158;
    }

    while (1)
    {
      v258 = v257[4];
      if (v258 <= v238)
      {
        if (v258 >= v238)
        {
          v259 = &v255[9 * v256];
          v260 = *(v259 + 5);
          v261 = v259 + 48;
          if (v260 != v259 + 48)
          {
            do
            {
              v262 = objc_msgSend_objectAtIndexedSubscript_(v106, v250, *(v260 + 4), v251, v252, v253);
              v268 = objc_msgSend_encodedStrokeIdentifier(v262, v263, v264, v265, v266, v267);
              objc_msgSend_addObject_(v64, v269, v268, v270, v271, v272);

              v273 = *(v260 + 1);
              if (v273)
              {
                do
                {
                  v274 = v273;
                  v273 = *v273;
                }

                while (v273);
              }

              else
              {
                do
                {
                  v274 = *(v260 + 2);
                  v201 = *v274 == v260;
                  v260 = v274;
                }

                while (!v201);
              }

              v260 = v274;
            }

            while (v274 != v261);
            v255 = v303[0];
            v254 = v303[1];
          }

LABEL_158:
          if (++v256 >= 0x8E38E38E38E38E39 * ((v254 - v255) >> 3))
          {
            goto LABEL_174;
          }

          goto LABEL_159;
        }

        ++v257;
      }

      v257 = *v257;
      if (!v257)
      {
        goto LABEL_158;
      }
    }
  }

  v64 = 0;
LABEL_181:

LABEL_186:
  v276 = v303[0];
  if (v303[0])
  {
    v277 = v303[0];
    if (v303[1] != v303[0])
    {
      v278 = v303[1] - 32;
      do
      {
        v279 = v278 - 40;
        sub_18368D56C(v278, *(v278 + 1));
        sub_18368A374((v278 - 40), *(v278 - 4));
        v278 -= 72;
      }

      while (v279 != v276);
      v277 = v303[0];
    }

    v303[1] = v276;
    operator delete(v277);
  }

LABEL_192:

  return v64;
}

@end