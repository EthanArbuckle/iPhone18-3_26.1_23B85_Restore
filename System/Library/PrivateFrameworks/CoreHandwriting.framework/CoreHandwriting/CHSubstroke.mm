@interface CHSubstroke
+ (id)substrokesForStroke:(id)stroke;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSubstroke:(id)substroke;
- (CGRect)bounds;
- (CHSubstroke)initWithCoder:(id)coder;
- (CHSubstroke)initWithStrokeIdentifier:(id)identifier bounds:(CGRect)bounds startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp convexHull:(const void *)hull curvature:(double)curvature;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSubstroke

- (CHSubstroke)initWithStrokeIdentifier:(id)identifier bounds:(CGRect)bounds startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp convexHull:(const void *)hull curvature:(double)curvature
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = CHSubstroke;
  v19 = [(CHSubstroke *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_strokeIdentifier, identifier);
    v20->_bounds.origin.x = x;
    v20->_bounds.origin.y = y;
    v20->_bounds.size.width = width;
    v20->_bounds.size.height = height;
    v20->_startTimestamp = timestamp;
    v20->_endTimestamp = endTimestamp;
    if (&v20->_convexHull != hull)
    {
      sub_18374AA38(&v20->_convexHull, *hull, *(hull + 1), (*(hull + 1) - *hull) >> 4);
    }

    v20->_curvature = curvature;
  }

  return v20;
}

+ (id)substrokesForStroke:(id)stroke
{
  strokeCopy = stroke;
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  v167 = 0;
  v168 = &v167;
  v169 = 0x5012000000;
  v170 = sub_18389AA68;
  v171 = nullsub_58;
  v172 = &unk_183A5AC72;
  v10 = *(MEMORY[0x1E695F050] + 16);
  v173 = *MEMORY[0x1E695F050];
  v174 = v10;
  v165[0] = 0;
  v165[1] = v165;
  v165[2] = 0x4012000000;
  v165[3] = sub_18389AA78;
  v165[4] = nullsub_59;
  v165[5] = &unk_183A5AC72;
  v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v161[0] = 0;
  v161[1] = v161;
  v161[2] = 0x4812000000;
  v161[3] = sub_18389AA88;
  v161[4] = sub_18389AAD0;
  v161[5] = 0;
  v162 = &v162;
  v163 = &v162;
  v164 = 0;
  v157 = 0;
  v158 = &v157;
  v159 = 0x2020000000;
  v160 = 0;
  v153 = 0;
  v154 = &v153;
  v155 = 0x2020000000;
  v156 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x2020000000;
  v152 = 0;
  v140 = 0;
  v141 = &v140;
  v142 = 0x4812000000;
  v143 = sub_18389AB38;
  v144 = sub_18389AB5C;
  v145 = &unk_183A5AC72;
  v147 = 0;
  v148 = 0;
  v146 = 0;
  v16 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v11, v12, v13, v14, v15);
  v17 = objc_opt_class();
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = sub_18389AB74;
  v130[3] = &unk_1E6DDF590;
  v133 = &v140;
  v134 = &v167;
  v135 = &v153;
  v136 = &v149;
  v137 = v165;
  v138 = v161;
  v139 = &v157;
  v18 = v16;
  v131 = v18;
  v19 = v9;
  v132 = v19;
  objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v17, v20, strokeCopy, 0, 1, v130);
  v27 = v141[6];
  v26 = v141[7];
  v28 = (v26 - v27) >> 4;
  if (v28 < 2)
  {
    if (v26 == v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v29 = *v27;
    v30 = 0.0;
    for (i = 1; i != v28; ++i)
    {
      v32 = v27[i];
      v33 = vsub_f32(vcvt_f32_f64(v32), vcvt_f32_f64(v29));
      v30 = v30 + sqrtf(vaddv_f32(vmul_f32(v33, v33)));
      v29 = v32;
    }

    if (v30 >= 10.0 && v158[3] != 0.0)
    {
      if (v26 == v27)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }
  }

  if (!objc_msgSend_count(v19, v21, v22, v23, v24, v25))
  {
    if (v141[7] == v141[6])
    {
      goto LABEL_25;
    }

LABEL_16:
    v74 = objc_opt_class();
    if (v74)
    {
      objc_msgSend_convexHullForPoints_(v74, v75, (v141 + 6), v76, v77, v78);
    }

    else
    {
      __p = 0;
      v128 = 0;
      v129 = 0;
    }

    v112 = [CHSubstroke alloc];
    started = objc_msgSend_initWithStrokeIdentifier_bounds_startTimestamp_endTimestamp_convexHull_curvature_(v112, v113, v18, &__p, v114, v115, v168[6], v168[7], v168[8], v168[9], v154[3], v150[3], v158[3]);
    objc_msgSend_addObject_(v19, v117, started, v118, v119, v120);

    if (__p)
    {
      v128 = __p;
      operator delete(__p);
    }

    goto LABEL_25;
  }

  v39 = objc_msgSend_lastObject(v19, v34, v35, v36, v37, v38, v9);
  v40 = v168[6];
  v41 = v168[7];
  v42 = v168[8];
  v43 = v168[9];
  objc_msgSend_bounds(v39, v44, v45, v46, v47, v48);
  v177.origin.x = v49;
  v177.origin.y = v50;
  v177.size.width = v51;
  v177.size.height = v52;
  v176.origin.x = v40;
  v176.origin.y = v41;
  v176.size.width = v42;
  v176.size.height = v43;
  v53 = 0;
  v54 = 0;
  *(v168 + 6) = CGRectUnion(v176, v177);
  while (1)
  {
    v60 = objc_msgSend_convexHull(v39, v55, v56, v57, v58, v59);
    if (v54 >= (v60[1] - *v60) >> 4)
    {
      break;
    }

    v66 = v141;
    v67 = objc_msgSend_convexHull(v39, v61, v62, v63, v64, v65);
    sub_1836973A4((v66 + 6), (*v67 + v53));
    ++v54;
    v53 += 16;
  }

  v68 = objc_opt_class();
  if (v68)
  {
    objc_msgSend_convexHullForPoints_(v68, v69, (v141 + 6), v71, v72, v73);
  }

  else
  {
    __p = 0;
    v128 = 0;
    v129 = 0;
  }

  v79 = v158[3];
  objc_msgSend_curvature(v39, v69, v70, v71, v72, v73);
  v81 = v80;
  v82 = [CHSubstroke alloc];
  v88 = objc_msgSend_strokeIdentifier(v39, v83, v84, v85, v86, v87);
  v89 = v168[6];
  v90 = v168[7];
  v91 = v168[8];
  v92 = v168[9];
  objc_msgSend_startTimestamp(v39, v93, v94, v95, v96, v97);
  v102 = objc_msgSend_initWithStrokeIdentifier_bounds_startTimestamp_endTimestamp_convexHull_curvature_(v82, v98, v88, &__p, v99, v100, v89, v90, v91, v92, v101, v150[3], v79 + v81);

  v108 = objc_msgSend_count(v19, v103, v104, v105, v106, v107);
  objc_msgSend_setObject_atIndexedSubscript_(v19, v109, v102, v108 - 1, v110, v111);

  if (__p)
  {
    v128 = __p;
    operator delete(__p);
  }

LABEL_25:
  v121 = v19;

  _Block_object_dispose(&v140, 8);
  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v153, 8);
  _Block_object_dispose(&v157, 8);
  _Block_object_dispose(v161, 8);
  if (v164)
  {
    v122 = v163;
    v123 = *(v162 + 8);
    v124 = *v163;
    *(v124 + 8) = v123;
    *v123 = v124;
    v164 = 0;
    if (v122 != &v162)
    {
      do
      {
        v125 = v122[1];
        operator delete(v122);
        v122 = v125;
      }

      while (v125 != &v162);
    }
  }

  _Block_object_dispose(v165, 8);
  _Block_object_dispose(&v167, 8);

  return v121;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_strokeIdentifier(self, v4, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"strokeIdentifier", v11, v12);

  v16 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v13, &self->_bounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v14, v15);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, v16, @"bounds", v18, v19);
  objc_msgSend_startTimestamp(self, v20, v21, v22, v23, v24);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v25, @"startTimestamp", v26, v27, v28);
  objc_msgSend_endTimestamp(self, v29, v30, v31, v32, v33);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v34, @"endTimestamp", v35, v36, v37);
  v38 = MEMORY[0x1E695DEF0];
  v44 = *objc_msgSend_convexHull(self, v39, v40, v41, v42, v43);
  v50 = objc_msgSend_convexHull(self, v45, v46, v47, v48, v49);
  v54 = objc_msgSend_dataWithBytes_length_(v38, v51, v44, v50[1] - *v50, v52, v53);
  objc_msgSend_encodeObject_forKey_(coderCopy, v55, v54, @"convexHull", v56, v57);
  objc_msgSend_curvature(self, v58, v59, v60, v61, v62);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v63, @"curvature", v64, v65, v66);
}

- (CHSubstroke)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"strokeIdentifier", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"bounds", v12, v13);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v62 = *MEMORY[0x1E695F050];
  v63 = v15;
  objc_msgSend_getValue_size_(v14, v16, &v62, 32, v17, v18);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v19, @"startTimestamp", v20, v21, v22);
  v24 = v23;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v25, @"endTimestamp", v26, v27, v28);
  v30 = v29;
  v31 = objc_opt_class();
  v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"convexHull", v33, v34);
  v41 = objc_msgSend_length(v35, v36, v37, v38, v39, v40);
  v42 = v35;
  v48 = objc_msgSend_bytes(v42, v43, v44, v45, v46, v47);
  __p = 0;
  v60 = 0;
  v61 = 0;
  sub_18374AA38(&__p, v48, &v48[v41 & 0xFFFFFFFFFFFFFFF0], v41 >> 4);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v49, @"curvature", v50, v51, v52);
  started = objc_msgSend_initWithStrokeIdentifier_bounds_startTimestamp_endTimestamp_convexHull_curvature_(self, v53, v9, &__p, v54, v55, v62, v63, v24, v30, v56);
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  return started;
}

- (BOOL)isEqualToSubstroke:(id)substroke
{
  substrokeCopy = substroke;
  v10 = substrokeCopy;
  if (self == substrokeCopy)
  {
    LOBYTE(v30) = 1;
    goto LABEL_28;
  }

  strokeIdentifier = self->_strokeIdentifier;
  v12 = objc_msgSend_strokeIdentifier(substrokeCopy, v5, v6, v7, v8, v9);
  v18 = v12;
  if (strokeIdentifier == v12)
  {
  }

  else
  {
    v19 = objc_msgSend_strokeIdentifier(v10, v13, v14, v15, v16, v17);
    isEqual = objc_msgSend_isEqual_(v19, v20, self->_strokeIdentifier, v21, v22, v23);

    if (!isEqual)
    {
LABEL_10:
      v30 = 0;
      goto LABEL_11;
    }
  }

  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  objc_msgSend_bounds(v10, v25, v26, v27, v28, v29);
  v67.origin.x = v35;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  if (!CGRectEqualToRect(v66, v67))
  {
    goto LABEL_10;
  }

  startTimestamp = self->_startTimestamp;
  objc_msgSend_startTimestamp(v10, v25, v26, v27, v28, v29);
  if (startTimestamp != v40)
  {
    goto LABEL_10;
  }

  endTimestamp = self->_endTimestamp;
  objc_msgSend_endTimestamp(v10, v25, v26, v27, v28, v29);
  v30 = endTimestamp == v42;
LABEL_11:
  begin = self->_convexHull.__begin_;
  end = self->_convexHull.__end_;
  v45 = objc_msgSend_convexHull(v10, v25, v26, v27, v28, v29);
  if (end - begin != v45[1] - *v45)
  {
LABEL_25:
    LOBYTE(v30) = 0;
    goto LABEL_28;
  }

  v51 = self->_convexHull.__begin_;
  if (self->_convexHull.__end_ == v51)
  {
    if (!v30)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v30)
  {
    v53 = v51->x;
    v52 = v51->y;
    v54 = objc_msgSend_convexHull(v10, v46, v47, v48, v49, v50);
    LOBYTE(v30) = 0;
    if (v53 == **v54 && v52 == *(*v54 + 8))
    {
      v55 = self->_convexHull.__begin_;
      if ((self->_convexHull.__end_ - v55) >= 0x11)
      {
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = &v55[v56];
          v59 = v58[1].x;
          v60 = v58[1].y;
          v61 = *objc_msgSend_convexHull(v10, v46, v47, v48, v49, v50) + v56 * 16;
          if (v59 != *(v61 + 16) || v60 != *(v61 + 24))
          {
            goto LABEL_25;
          }

          ++v57;
          v55 = self->_convexHull.__begin_;
          ++v56;
        }

        while (v57 < self->_convexHull.__end_ - v55);
      }

LABEL_27:
      curvature = self->_curvature;
      objc_msgSend_curvature(v10, v46, v47, v48, v49, v50);
      LOBYTE(v30) = vabdd_f64(curvature, v64) < 2.22044605e-16;
    }
  }

LABEL_28:

  return v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToSubstroke = objc_msgSend_isEqualToSubstroke_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToSubstroke;
  }

  else
  {

    return 0;
  }
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end