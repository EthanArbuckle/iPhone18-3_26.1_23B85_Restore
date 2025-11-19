@interface CHReflowableTextToken
+ ($196E0A09E4C4E138EEBEC6372622051A)horizontalPrincipalLinesForPrincipalPoints:(SEL)a3 string:(id)a4 bounds:(id)a5;
- ($196E0A09E4C4E138EEBEC6372622051A)principalLines;
- (BOOL)hasValidPrincipalLines;
- (CGRect)bounds;
- (CHReflowableTextToken)initWithString:(id)a3 principalLines:(id *)a4 principalPoints:(id)a5 textSize:(id)a6 bounds:(CGRect)a7 hasPrecedingSpace:(BOOL)a8;
- (CHReflowableTextToken)initWithString:(id)a3 principalLines:(id *)a4 textSize:(id)a5 bounds:(CGRect)a6 hasPrecedingSpace:(BOOL)a7;
- (CHReflowableTextToken)initWithTokenizedTextResultToken:(id)a3;
- (double)principalOrientation;
- (id)asFullTextResultWithStrokeIdentifiers:(id)a3 strokeProvider:(id)a4;
@end

@implementation CHReflowableTextToken

- (CHReflowableTextToken)initWithString:(id)a3 principalLines:(id *)a4 textSize:(id)a5 bounds:(CGRect)a6 hasPrecedingSpace:(BOOL)a7
{
  var1 = a4->var2.var1;
  v12[4] = a4->var2.var0;
  v12[5] = var1;
  v8 = a4->var3.var1;
  v12[6] = a4->var3.var0;
  v12[7] = v8;
  v9 = a4->var0.var1;
  v12[0] = a4->var0.var0;
  v12[1] = v9;
  v10 = a4->var1.var1;
  v12[2] = a4->var1.var0;
  v12[3] = v10;
  return objc_msgSend_initWithString_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(self, a2, a3, v12, MEMORY[0x1E695E0F0], a5, a7, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height);
}

- (CHReflowableTextToken)initWithString:(id)a3 principalLines:(id *)a4 principalPoints:(id)a5 textSize:(id)a6 bounds:(CGRect)a7 hasPrecedingSpace:(BOOL)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v35.receiver = self;
  v35.super_class = CHReflowableTextToken;
  v25 = [(CHReflowableTextToken *)&v35 init];
  if (v25)
  {
    v26 = objc_msgSend_copy(v17, v20, v21, v22, v23, v24);
    string = v25->_string;
    v25->_string = v26;

    var0 = a4->var0.var0;
    var1 = a4->var0.var1;
    v30 = a4->var1.var0;
    v25->_principalLines.base.end = a4->var1.var1;
    v25->_principalLines.base.start = v30;
    v25->_principalLines.descender.end = var1;
    v25->_principalLines.descender.start = var0;
    v31 = a4->var2.var0;
    v32 = a4->var2.var1;
    v33 = a4->var3.var0;
    v25->_principalLines.top.end = a4->var3.var1;
    v25->_principalLines.top.start = v33;
    v25->_principalLines.median.end = v32;
    v25->_principalLines.median.start = v31;
    objc_storeStrong(&v25->_principalPoints, a5);
    objc_storeStrong(&v25->_textSize, a6);
    v25->_bounds.origin.x = x;
    v25->_bounds.origin.y = y;
    v25->_bounds.size.width = width;
    v25->_bounds.size.height = height;
    v25->_hasPrecedingSpace = a8;
  }

  return v25;
}

- (CHReflowableTextToken)initWithTokenizedTextResultToken:(id)a3
{
  v4 = a3;
  v117.receiver = self;
  v117.super_class = CHReflowableTextToken;
  v10 = [(CHReflowableTextToken *)&v117 init];
  if (v10)
  {
    v11 = objc_msgSend_string(v4, v5, v6, v7, v8, v9);
    v17 = objc_msgSend_copy(v11, v12, v13, v14, v15, v16);
    v18 = *(v10 + 2);
    *(v10 + 2) = v17;

    if (v4)
    {
      objc_msgSend_principalLines(v4, v19, v20, v21, v22, v23);
    }

    else
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
    }

    v24 = v114;
    *(v10 + 136) = v113;
    *(v10 + 152) = v24;
    v25 = v116;
    *(v10 + 168) = v115;
    *(v10 + 184) = v25;
    v26 = v110;
    *(v10 + 72) = v109;
    *(v10 + 88) = v26;
    v27 = v112;
    *(v10 + 104) = v111;
    *(v10 + 120) = v27;
    v28 = objc_msgSend_principalPoints(v4, v19, v20, v21, v22, v23);
    v29 = *(v10 + 3);
    *(v10 + 3) = v28;

    objc_msgSend_originalBounds(v4, v30, v31, v32, v33, v34);
    *(v10 + 5) = v35;
    *(v10 + 6) = v36;
    *(v10 + 7) = v37;
    *(v10 + 8) = v38;
    v10[8] = (objc_msgSend_properties(v4, v39, v40, v41, v42, v43) & 0x20) != 0;
    v49 = objc_opt_class();
    if (v4)
    {
      objc_msgSend_principalLines(v4, v44, v45, v46, v47, v48);
    }

    else
    {
      v103 = 0u;
      v106 = 0u;
      v97 = 0u;
      v100 = 0u;
      v91 = 0u;
      v94 = 0u;
      v85 = 0u;
      v88 = 0u;
    }

    objc_msgSend_originalBounds(v4, v44, v45, v46, v47, v48, v85, v88, v91, v94, v97, v100, v103, v106);
    if (v57 == 0.0)
    {
      v57 = 1.0;
    }

    if (v58 == 0.0)
    {
      v58 = 1.0;
    }

    *&v109 = v55 + v86 * v57;
    *(&v109 + 1) = v56 + v87 * v58;
    *&v110 = v55 + v89 * v57;
    *(&v110 + 1) = v56 + v90 * v58;
    *&v111 = v55 + v92 * v57;
    *(&v111 + 1) = v56 + v93 * v58;
    *&v112 = v55 + v95 * v57;
    *(&v112 + 1) = v56 + v96 * v58;
    *&v113 = v55 + v98 * v57;
    *(&v113 + 1) = v56 + v99 * v58;
    *&v114 = v55 + v101 * v57;
    *(&v114 + 1) = v56 + v102 * v58;
    *&v115 = v55 + v104 * v57;
    *(&v115 + 1) = v56 + v105 * v58;
    *&v116 = v55 + v107 * v57;
    *(&v116 + 1) = v56 + v108 * v58;
    v59 = objc_msgSend_string(v4, v50, v51, v52, v53, v54);
    v63 = objc_msgSend_textSizeFromPrincipalLines_string_(v49, v60, &v109, v59, v61, v62);

    objc_msgSend_originalBounds(v4, v64, v65, v66, v67, v68);
    if (v74 == 0.0)
    {
      v76 = 1.0;
    }

    else
    {
      objc_msgSend_originalBounds(v4, v69, v70, v71, v72, v73);
      v76 = 1.0 / v75;
    }

    v77 = objc_opt_class();
    v82 = objc_msgSend_scaledSize_scale_(v77, v78, v63, v79, v80, v81, v76);
    v83 = *(v10 + 4);
    *(v10 + 4) = v82;
  }

  return v10;
}

- (id)asFullTextResultWithStrokeIdentifiers:(id)a3 strokeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v14 = objc_msgSend_string(self, v9, v10, v11, v12, v13);
  v15 = MEMORY[0x1E696AC90];
  v21 = objc_msgSend_count(v6, v16, v17, v18, v19, v20);
  v25 = objc_msgSend_indexSetWithIndexesInRange_(v15, v22, 0, v21, v23, v24);
  objc_msgSend_bounds(self, v26, v27, v28, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  objc_msgSend_bounds(self, v39, v40, v41, v42, v43);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  objc_msgSend_principalLines(self, v52, v53, v54, v55, v56);
  v58 = objc_msgSend_tokenizedTextResultWithString_strokeIndexes_bounds_trailingSeparator_recognizerGenerationIdentifier_defaultTokenScores_originalBounds_principalLines_principalPoints_(v8, v57, v14, v25, &stru_1EF1C0318, 0, v69, MEMORY[0x1E695E0F0], v32, v34, v36, v38, 1.0, v45, v47, v49, v51);

  v59 = objc_opt_class();
  v63 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(v59, v60, v6, v7, v61, v62);
  objc_msgSend_setInputStrokeIdentifiers_(v58, v64, v63, v65, v66, v67);

  return v58;
}

- (BOOL)hasValidPrincipalLines
{
  v2 = *(MEMORY[0x1E695EFF8] + 8);
  if (self->_principalLines.base.start.x != *MEMORY[0x1E695EFF8] || self->_principalLines.base.start.y != v2)
  {
    return 1;
  }

  if (self->_principalLines.base.end.y == v2)
  {
    return self->_principalLines.base.end.x != *MEMORY[0x1E695EFF8];
  }

  return 1;
}

- (double)principalOrientation
{
  if (!objc_msgSend_hasValidPrincipalLines(self, a2, v2, v3, v4, v5) || CGRectIsNull(self->_bounds))
  {
    return 1.79769313e308;
  }

  v8 = (self->_principalLines.base.end.y - self->_principalLines.base.start.y) * self->_bounds.size.height;
  v9 = (self->_principalLines.base.end.x - self->_principalLines.base.start.x) * self->_bounds.size.width;

  return atan2(v8, v9);
}

+ ($196E0A09E4C4E138EEBEC6372622051A)horizontalPrincipalLinesForPrincipalPoints:(SEL)a3 string:(id)a4 bounds:(id)a5
{
  rect = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4;
  v12 = a5;
  hasAscender = objc_msgSend_hasAscender(v12, v13, v14, v15, v16, v17);
  hasDescender = objc_msgSend_hasDescender(v12, v19, v20, v21, v22, v23);
  v25 = sub_1838903F0(v11);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 3, v27, v28, v29);
  v36 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);

  if (v36)
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(v25, v37, 3, v38, v39, v40);
    sub_1838C340C(v41, &v131);
    v42 = (v132 - v131) >> 4;
    if (v132 == v131)
    {
      v46 = 0.0 / v42;
      if (!v132)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v42 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = (v132 - v131) >> 4;
    }

    if (v42 >= 4)
    {
      v44 = v43 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = v131 + 4;
      v45 = 0.0;
      v48 = v43 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v49 = v47 - 4;
        v133 = vld2q_f64(v49);
        v137 = vld2q_f64(v47);
        v133.val[1] = vmlsq_f64(v133.val[1], 0, v133.val[0]);
        v137.val[1] = vmlsq_f64(v137.val[1], 0, v137.val[0]);
        v45 = v45 + v133.val[1].f64[0] + v133.val[1].f64[1] + v137.val[1].f64[0] + v137.val[1].f64[1];
        v47 += 8;
        v48 -= 4;
      }

      while (v48);
      if (v42 == v44)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v44 = 0;
      v45 = 0.0;
    }

    v50 = v43 - v44;
    v51 = &v131[2 * v44 + 1];
    do
    {
      v45 = v45 + *v51 + *(v51 - 1) * -0.0;
      v51 += 2;
      --v50;
    }

    while (v50);
LABEL_18:
    v46 = v45 / v42;
LABEL_19:
    v132 = v131;
    operator delete(v131);
LABEL_20:

    goto LABEL_21;
  }

  if (hasAscender)
  {
    v46 = y;
  }

  else
  {
    v46 = 1.79769313e308;
  }

LABEL_21:
  v52 = objc_msgSend_objectAtIndexedSubscript_(v25, v37, 2, v38, v39, v40, *&rect);
  v58 = objc_msgSend_count(v52, v53, v54, v55, v56, v57);

  if (v58)
  {
    v63 = objc_msgSend_objectAtIndexedSubscript_(v25, v59, 2, v60, v61, v62);
    sub_1838C340C(v63, &v131);
    v64 = (v132 - v131) >> 4;
    if (v132 == v131)
    {
      v68 = 0.0 / v64;
      if (!v132)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v64 <= 1)
    {
      v65 = 1;
    }

    else
    {
      v65 = (v132 - v131) >> 4;
    }

    if (v64 >= 4)
    {
      v66 = v65 & 0xFFFFFFFFFFFFFFFCLL;
      v69 = v131 + 4;
      v67 = 0.0;
      v70 = v65 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v71 = v69 - 4;
        v134 = vld2q_f64(v71);
        v138 = vld2q_f64(v69);
        v134.val[1] = vmlsq_f64(v134.val[1], 0, v134.val[0]);
        v138.val[1] = vmlsq_f64(v138.val[1], 0, v138.val[0]);
        v67 = v67 + v134.val[1].f64[0] + v134.val[1].f64[1] + v138.val[1].f64[0] + v138.val[1].f64[1];
        v69 += 8;
        v70 -= 4;
      }

      while (v70);
      if (v64 == v66)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0.0;
    }

    v72 = v65 - v66;
    v73 = &v131[2 * v66 + 1];
    do
    {
      v67 = v67 + *v73 + *(v73 - 1) * -0.0;
      v73 += 2;
      --v72;
    }

    while (v72);
LABEL_38:
    v68 = v67 / v64;
LABEL_39:
    v132 = v131;
    operator delete(v131);
LABEL_40:

    goto LABEL_41;
  }

  if (hasAscender)
  {
    v68 = 1.79769313e308;
  }

  else
  {
    v68 = y;
  }

LABEL_41:
  v74 = objc_msgSend_objectAtIndexedSubscript_(v25, v59, 1, v60, v61, v62);
  v80 = objc_msgSend_count(v74, v75, v76, v77, v78, v79);

  if (v80)
  {
    v85 = objc_msgSend_objectAtIndexedSubscript_(v25, v81, 1, v82, v83, v84);
    sub_1838C340C(v85, &v131);
    v86 = (v132 - v131) >> 4;
    if (v132 == v131)
    {
      MaxY = 0.0 / v86;
      if (!v132)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (v86 <= 1)
    {
      v87 = 1;
    }

    else
    {
      v87 = (v132 - v131) >> 4;
    }

    if (v86 >= 4)
    {
      v88 = v87 & 0xFFFFFFFFFFFFFFFCLL;
      v91 = v131 + 4;
      v89 = 0.0;
      v92 = v87 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v93 = v91 - 4;
        v135 = vld2q_f64(v93);
        v139 = vld2q_f64(v91);
        v135.val[1] = vmlsq_f64(v135.val[1], 0, v135.val[0]);
        v139.val[1] = vmlsq_f64(v139.val[1], 0, v139.val[0]);
        v89 = v89 + v135.val[1].f64[0] + v135.val[1].f64[1] + v139.val[1].f64[0] + v139.val[1].f64[1];
        v91 += 8;
        v92 -= 4;
      }

      while (v92);
      if (v86 == v88)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v88 = 0;
      v89 = 0.0;
    }

    v94 = v87 - v88;
    v95 = &v131[2 * v88 + 1];
    do
    {
      v89 = v89 + *v95 + *(v95 - 1) * -0.0;
      v95 += 2;
      --v94;
    }

    while (v94);
LABEL_57:
    MaxY = v89 / v86;
LABEL_58:
    v132 = v131;
    operator delete(v131);
LABEL_59:

    goto LABEL_61;
  }

  if (hasDescender)
  {
    MaxY = 1.79769313e308;
  }

  else
  {
    v141.origin.x = x;
    v141.origin.y = y;
    v141.size.width = width;
    v141.size.height = recta;
    MaxY = CGRectGetMaxY(v141);
  }

LABEL_61:
  v96 = objc_msgSend_objectAtIndexedSubscript_(v25, v81, 4, v82, v83, v84);
  v102 = objc_msgSend_count(v96, v97, v98, v99, v100, v101);

  if (v102)
  {
    v108 = objc_msgSend_objectAtIndexedSubscript_(v25, v103, 4, v105, v106, v107);
    sub_1838C340C(v108, &v131);
    v109 = (v132 - v131) >> 4;
    if (v132 == v131)
    {
      v113 = 0.0 / v109;
      if (!v132)
      {
LABEL_80:

        if (MaxY != 1.79769313e308)
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      }

LABEL_79:
      v132 = v131;
      operator delete(v131);
      goto LABEL_80;
    }

    if (v109 <= 1)
    {
      v110 = 1;
    }

    else
    {
      v110 = (v132 - v131) >> 4;
    }

    if (v109 >= 4)
    {
      v111 = v110 & 0xFFFFFFFFFFFFFFFCLL;
      v114 = v131 + 4;
      v112 = 0.0;
      v115 = v110 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v116 = v114 - 4;
        v136 = vld2q_f64(v116);
        v140 = vld2q_f64(v114);
        v136.val[1] = vmlsq_f64(v136.val[1], 0, v136.val[0]);
        v140.val[1] = vmlsq_f64(v140.val[1], 0, v140.val[0]);
        v112 = v112 + v136.val[1].f64[0] + v136.val[1].f64[1] + v140.val[1].f64[0] + v140.val[1].f64[1];
        v114 += 8;
        v115 -= 4;
      }

      while (v115);
      if (v109 == v111)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v111 = 0;
      v112 = 0.0;
    }

    v117 = v110 - v111;
    v118 = &v131[2 * v111 + 1];
    do
    {
      v112 = v112 + *v118 + *(v118 - 1) * -0.0;
      v118 += 2;
      --v117;
    }

    while (v117);
LABEL_78:
    v113 = v112 / v109;
    goto LABEL_79;
  }

  if (hasDescender)
  {
    v142.origin.x = x;
    v142.origin.y = y;
    v142.size.width = width;
    v142.size.height = recta;
    v113 = CGRectGetMaxY(v142);
    if (MaxY != 1.79769313e308)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v113 = 1.79769313e308;
    if (MaxY != 1.79769313e308)
    {
      goto LABEL_87;
    }
  }

LABEL_83:
  if (v46 == 1.79769313e308)
  {
    v119 = (v113 - v68) * -0.5;
  }

  else
  {
    v119 = (v113 - v46) / -3.0;
  }

  MaxY = v113 + v119;
LABEL_87:
  if (v46 == 1.79769313e308)
  {
    v46 = v68 - (MaxY - v68);
  }

  if (v68 == 1.79769313e308)
  {
    v68 = MaxY + (MaxY - v46) * -0.5;
  }

  if (v113 == 1.79769313e308)
  {
    v113 = MaxY + MaxY - v68;
  }

  v125 = fabs(MaxY - v46);
  if (width / (v125 * objc_msgSend_countCharacters(v12, v103, v104, v105, v106, v107)) > 4.0)
  {
    v126 = (width / objc_msgSend_countCharacters(v12, v120, v121, v122, v123, v124) * 0.5 - v125) * 0.5;
    v113 = v113 + v126;
    v68 = v68 - v126;
    v46 = v46 + v126 * -2.0;
  }

  retstr->var3.var0 = 0u;
  retstr->var3.var1 = 0u;
  retstr->var2.var0 = 0u;
  retstr->var2.var1 = 0u;
  retstr->var1.var0 = 0u;
  retstr->var1.var1 = 0u;
  retstr->var0.var0 = 0u;
  retstr->var0.var1 = 0u;
  v143.origin.x = x;
  v143.origin.y = y;
  v143.size.width = width;
  v143.size.height = recta;
  MaxX = CGRectGetMaxX(v143);
  if (x == MaxX)
  {
    MaxX = MaxX + 0.01;
  }

  retstr->var3.var0.x = x;
  retstr->var3.var0.y = v46 + x * 0.0;
  retstr->var3.var1.x = MaxX;
  retstr->var3.var1.y = v46 + MaxX * 0.0;
  retstr->var2.var0.x = x;
  retstr->var2.var0.y = v68 + x * 0.0;
  retstr->var2.var1.x = MaxX;
  retstr->var2.var1.y = v68 + MaxX * 0.0;
  retstr->var1.var0.x = x;
  retstr->var1.var0.y = MaxY + x * 0.0;
  retstr->var1.var1.x = MaxX;
  retstr->var1.var1.y = MaxY + MaxX * 0.0;
  retstr->var0.var0.x = x;
  retstr->var0.var0.y = v113 + x * 0.0;
  retstr->var0.var1.x = MaxX;
  retstr->var0.var1.y = v113 + MaxX * 0.0;

  return result;
}

- ($196E0A09E4C4E138EEBEC6372622051A)principalLines
{
  v3 = *&self[1].var0.var1.y;
  retstr->var2.var0 = *&self[1].var0.var0.y;
  retstr->var2.var1 = v3;
  v4 = *&self[1].var1.var1.y;
  retstr->var3.var0 = *&self[1].var1.var0.y;
  retstr->var3.var1 = v4;
  v5 = *&self->var2.var1.y;
  retstr->var0.var0 = *&self->var2.var0.y;
  retstr->var0.var1 = v5;
  v6 = *&self->var3.var1.y;
  retstr->var1.var0 = *&self->var3.var0.y;
  retstr->var1.var1 = v6;
  return self;
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

@end