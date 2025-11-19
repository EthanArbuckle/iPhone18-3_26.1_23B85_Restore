@interface CHTextSize
+ (id)averageTextSize:(id)a3;
+ (id)scaledSize:(id)a3 scale:(double)a4;
+ (id)textSizeFromPrincipalLines:(id *)a3 string:(id)a4;
- (CHTextSize)init;
- (CHTextSize)initWithXHeight:(double)a3 ascenderHeight:(double)a4 descenderHeight:(double)a5 activeLines:(unint64_t)a6;
- (double)scaleToMatchSize:(id)a3;
@end

@implementation CHTextSize

- (CHTextSize)init
{
  v3.receiver = self;
  v3.super_class = CHTextSize;
  result = [(CHTextSize *)&v3 init];
  if (result)
  {
    *&result->_descenderHeight = 0u;
    *&result->_xHeight = 0u;
  }

  return result;
}

- (CHTextSize)initWithXHeight:(double)a3 ascenderHeight:(double)a4 descenderHeight:(double)a5 activeLines:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = CHTextSize;
  result = [(CHTextSize *)&v11 init];
  if (result)
  {
    result->_xHeight = a3;
    result->_ascenderHeight = a4;
    result->_descenderHeight = a5;
    result->_activeLines = a6;
  }

  return result;
}

- (double)scaleToMatchSize:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_activeLines & 1) != 0 && (objc_msgSend_activeLines(v4, v5, v6, v7, v8, v9))
  {
    v11 = self->_ascenderHeight != 0.0;
    if ((self->_activeLines & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if ((self->_activeLines & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  if ((objc_msgSend_activeLines(v10, v5, v6, v7, v8, v9) & 2) != 0)
  {
    xHeight = self->_xHeight;
    if (xHeight != 0.0 && v11)
    {
      goto LABEL_18;
    }

    if (v11)
    {
      goto LABEL_8;
    }

    if (xHeight != 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

LABEL_7:
  if (!v11)
  {
    xHeight = self->_xHeight;
LABEL_11:
    if (self->_ascenderHeight != 0.0)
    {
      if (xHeight == 0.0)
      {
        goto LABEL_8;
      }

LABEL_18:
      objc_msgSend_xHeight(v10, v5, v6, v7, v8, v9);
      v18 = v17;
      objc_msgSend_ascenderHeight(v10, v19, v20, v21, v22, v23);
      v14 = sqrt(v18 * v24 / (self->_xHeight * self->_ascenderHeight));
      goto LABEL_19;
    }

    if (xHeight == 0.0)
    {
      v14 = 1.0;
      goto LABEL_19;
    }

LABEL_24:
    objc_msgSend_xHeight(v10, v5, v6, v7, v8, v9);
    ascenderHeight = self->_xHeight;
    goto LABEL_9;
  }

LABEL_8:
  objc_msgSend_ascenderHeight(v10, v5, v6, v7, v8, v9);
  ascenderHeight = self->_ascenderHeight;
LABEL_9:
  v14 = v12 / ascenderHeight;
LABEL_19:

  return v14;
}

+ (id)scaledSize:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = [CHTextSize alloc];
  objc_msgSend_xHeight(v5, v7, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_ascenderHeight(v5, v14, v15, v16, v17, v18);
  v20 = v19;
  objc_msgSend_descenderHeight(v5, v21, v22, v23, v24, v25);
  v27 = v26;
  active = objc_msgSend_activeLines(v5, v28, v29, v30, v31, v32);
  v38 = objc_msgSend_initWithXHeight_ascenderHeight_descenderHeight_activeLines_(v6, v34, active, v35, v36, v37, v13 * a4, v20 * a4, v27 * a4);

  return v38;
}

+ (id)textSizeFromPrincipalLines:(id *)a3 string:(id)a4
{
  v5 = a4;
  x = a3->var1.var1.x;
  v8 = a3->var1.var0.x;
  y = a3->var1.var0.y;
  v9 = a3->var3.var0.x;
  v52 = a3->var1.var1.y;
  v53 = a3->var3.var0.y;
  v10 = a3->var2.var0.x;
  v11 = a3->var2.var0.y;
  v12 = a3->var0.var0.x;
  v13 = a3->var0.var0.y;
  v14 = v5;
  hasXHeightCharacter = objc_msgSend_hasXHeightCharacter(v14, v15, v16, v17, v18, v19);
  hasAscender = objc_msgSend_hasAscender(v14, v21, v22, v23, v24, v25);
  hasDescender = objc_msgSend_hasDescender(v14, v27, v28, v29, v30, v31);

  v33 = [CHTextSize alloc];
  v38 = (v52 - y) / (x - v8 + 1.0e-10);
  v39 = v53 - v9 * v38;
  v40 = v11 - v10 * v38;
  v41 = y - v8 * v38;
  v42 = v13 - v12 * v38;
  v43 = sqrt(v38 * v38 + 1.0);
  v44 = vabdd_f64(v40, v41) / v43;
  v45 = vabdd_f64(v39, v41) / v43;
  v46 = vabdd_f64(v40, v42) / v43;
  v47 = 4;
  if (hasXHeightCharacter)
  {
    v47 = 6;
  }

  v48 = v47 | hasAscender;
  if (hasDescender)
  {
    active = objc_msgSend_initWithXHeight_ascenderHeight_descenderHeight_activeLines_(v33, v34, v48 | 8, v35, v36, v37, v44, v45, v46, *&v52, *&v53);
  }

  else
  {
    active = objc_msgSend_initWithXHeight_ascenderHeight_descenderHeight_activeLines_(v33, v34, v48, v35, v36, v37, v44, v45, v46, *&v52, *&v53);
  }

  v50 = active;

  return v50;
}

+ (id)averageTextSize:(id)a3
{
  v178 = *MEMORY[0x1E69E9840];
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = a3;
  LOBYTE(v5) = 0;
  LOBYTE(v6) = 0;
  LOBYTE(v7) = 0;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v172, v177, 16, v4);
  if (v13)
  {
    v14 = *v173;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        while (1)
        {
          if (*v173 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v172 + 1) + 8 * i);
          if ((v7 & 1) == 0)
          {
            break;
          }

          LOBYTE(v7) = 1;
          if (v6)
          {
            goto LABEL_9;
          }

LABEL_12:
          v6 = (objc_msgSend_activeLines(v16, v8, v9, v10, v11, v12) >> 1) & 1;
          if ((v5 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_4:
          LOBYTE(v5) = 1;
          if (v13 == ++i)
          {
            goto LABEL_14;
          }
        }

        v7 = objc_msgSend_activeLines(*(*(&v172 + 1) + 8 * i), v8, v9, v10, v11, v12) & 1;
        if ((v6 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        LOBYTE(v6) = 1;
        if (v5)
        {
          goto LABEL_4;
        }

LABEL_13:
        v5 = (objc_msgSend_activeLines(v16, v8, v9, v10, v11, v12) >> 3) & 1;
      }

LABEL_14:
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v172, v177, 16, v12);
    }

    while (v13);
  }

  v17 = MEMORY[0x1E695DF70];
  v23 = objc_msgSend_count(obj, v18, v19, v20, v21, v22);
  v164 = objc_msgSend_arrayWithCapacity_(v17, v24, v23, v25, v26, v27);
  v28 = MEMORY[0x1E695DF70];
  v34 = objc_msgSend_count(obj, v29, v30, v31, v32, v33);
  v163 = objc_msgSend_arrayWithCapacity_(v28, v35, v34, v36, v37, v38);
  v39 = MEMORY[0x1E695DF70];
  v45 = objc_msgSend_count(obj, v40, v41, v42, v43, v44);
  v165 = objc_msgSend_arrayWithCapacity_(v39, v46, v45, v47, v48, v49);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = obj;
  v52 = 0;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v50, &v168, v176, 16, v51);
  if (!v58)
  {
    goto LABEL_38;
  }

  v59 = *v169;
  do
  {
    for (j = 0; j != v58; ++j)
    {
      if (*v169 != v59)
      {
        objc_enumerationMutation(v166);
      }

      v61 = *(*(&v168 + 1) + 8 * j);
      if ((objc_msgSend_activeLines(v61, v53, v54, v55, v56, v57) & 2) != 0)
      {
        objc_msgSend_xHeight(v61, v62, v63, v64, v65, v66);
LABEL_24:
        v67 = MEMORY[0x1E696AD98];
        objc_msgSend_xHeight(v61, v62, v63, v64, v65, v66);
        v73 = objc_msgSend_numberWithDouble_(v67, v68, v69, v70, v71, v72);
        objc_msgSend_addObject_(v164, v74, v73, v75, v76, v77);

        goto LABEL_25;
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (objc_msgSend_activeLines(v61, v62, v63, v64, v65, v66))
      {
        objc_msgSend_ascenderHeight(v61, v78, v79, v80, v81, v82);
      }

      else if (v7)
      {
        goto LABEL_30;
      }

      v83 = MEMORY[0x1E696AD98];
      objc_msgSend_ascenderHeight(v61, v78, v79, v80, v81, v82);
      v89 = objc_msgSend_numberWithDouble_(v83, v84, v85, v86, v87, v88);
      objc_msgSend_addObject_(v163, v90, v89, v91, v92, v93);

LABEL_30:
      if ((objc_msgSend_activeLines(v61, v78, v79, v80, v81, v82) & 8) != 0 && (objc_msgSend_activeLines(v61, v94, v95, v96, v97, v98) & 2) != 0)
      {
        objc_msgSend_descenderHeight(v61, v94, v95, v96, v97, v98);
LABEL_35:
        v99 = MEMORY[0x1E696AD98];
        objc_msgSend_descenderHeight(v61, v94, v95, v96, v97, v98);
        v105 = objc_msgSend_numberWithDouble_(v99, v100, v101, v102, v103, v104);
        objc_msgSend_addObject_(v165, v106, v105, v107, v108, v109);

        goto LABEL_36;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_36:
      v52 |= objc_msgSend_activeLines(v61, v94, v95, v96, v97, v98);
    }

    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v53, &v168, v176, 16, v57);
  }

  while (v58);
LABEL_38:

  if (objc_msgSend_count(v164, v110, v111, v112, v113, v114))
  {
    v120 = objc_msgSend_valueForKeyPath_(v164, v115, @"@avg.floatValue", v117, v118, v119);
    objc_msgSend_floatValue(v120, v121, v122, v123, v124, v125);
    v127 = v126;

    v128 = v127;
  }

  else
  {
    v128 = 0.0;
  }

  if (objc_msgSend_count(v163, v115, v116, v117, v118, v119))
  {
    v134 = objc_msgSend_valueForKeyPath_(v163, v129, @"@avg.floatValue", v131, v132, v133);
    objc_msgSend_floatValue(v134, v135, v136, v137, v138, v139);
    v141 = v140;

    v142 = v141;
  }

  else
  {
    v142 = 0.0;
  }

  if (objc_msgSend_count(v165, v129, v130, v131, v132, v133))
  {
    v147 = objc_msgSend_valueForKeyPath_(v165, v143, @"@avg.floatValue", v144, v145, v146);
    objc_msgSend_floatValue(v147, v148, v149, v150, v151, v152);
    v154 = v153;

    v155 = v154;
  }

  else
  {
    v155 = 0.0;
  }

  v156 = [CHTextSize alloc];
  active = objc_msgSend_initWithXHeight_ascenderHeight_descenderHeight_activeLines_(v156, v157, v52, v158, v159, v160, v128, v142, v155);

  return active;
}

@end