@interface CHClientStroke
+ (id)encodedStrokeIdentifierWithIdentifier:(int64_t)a3;
+ (id)encodedStrokeIdentifierWithStrokeIdentifier:(id)a3;
+ (id)strokesFromDrawing:(id)a3 classification:(int64_t)a4;
- (CGRect)boundingBox;
- (CHClientStroke)initWithAllPoints:(CHClientStrokePoint *)a3 pointCount:(int64_t)a4 type:(int64_t)a5;
- (CHClientStroke)initWithArray:(id)a3 channels:(id)a4 withTimeOffset:(double)a5 type:(int64_t)a6;
- (CHClientStrokePoint)pointAtIndex:(SEL)a3;
- (CHEncodedStrokeIdentifier)encodedStrokeIdentifier;
- (NSString)description;
- (double)_strokePathLength;
- (id)newStrokeWithTransformation:(id)a3;
- (id)newStrokeWithoutTransformation;
- (void)_expandPointsArrayIfNeeded;
- (void)addAllPoints:(CHClientStrokePoint *)a3 count:(int64_t)a4;
- (void)addPoint:(CHClientStrokePoint *)a3;
- (void)dealloc;
- (void)enumeratePointsWithDistanceStep:(double)a3 usingBlock:(id)a4;
- (void)enumeratePointsWithTimestep:(double)a3 usingBlock:(id)a4;
@end

@implementation CHClientStroke

- (CHClientStroke)initWithArray:(id)a3 channels:(id)a4 withTimeOffset:(double)a5 type:(int64_t)a6
{
  v187 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v14 = v9;
    objc_msgSend_valueForKey_(v9, v10, @"x", v11, v12, v13);
  }

  else
  {
    v14 = &unk_1EF1EB978;
    objc_msgSend_valueForKey_(&unk_1EF1EB978, v10, @"x", v11, v12, v13);
  }
  v15 = ;
  v21 = objc_msgSend_intValue(v15, v16, v17, v18, v19, v20);

  v26 = objc_msgSend_valueForKey_(v14, v22, @"y", v23, v24, v25);
  v32 = objc_msgSend_intValue(v26, v27, v28, v29, v30, v31);

  v41 = objc_msgSend_valueForKey_(v14, v33, @"t", v34, v35, v36);
  if (v41)
  {
    v42 = objc_msgSend_valueForKey_(v14, v37, @"t", v38, v39, v40);
    v48 = objc_msgSend_intValue(v42, v43, v44, v45, v46, v47);
  }

  else
  {
    v48 = -1;
  }

  v57 = objc_msgSend_valueForKey_(v14, v49, @"azimuth", v50, v51, v52);
  if (v57)
  {
    v58 = objc_msgSend_valueForKey_(v14, v53, @"azimuth", v54, v55, v56);
    v64 = objc_msgSend_intValue(v58, v59, v60, v61, v62, v63);
  }

  else
  {
    v64 = -1;
  }

  v73 = objc_msgSend_valueForKey_(v14, v65, @"altitude", v66, v67, v68);
  if (v73)
  {
    v74 = objc_msgSend_valueForKey_(v14, v69, @"altitude", v70, v71, v72);
    v80 = objc_msgSend_intValue(v74, v75, v76, v77, v78, v79);
  }

  else
  {
    v80 = -1;
  }

  v89 = objc_msgSend_valueForKey_(v14, v81, @"force", v82, v83, v84);
  v181 = v48;
  if (v89)
  {
    v90 = objc_msgSend_valueForKey_(v14, v85, @"force", v86, v87, v88);
    v96 = objc_msgSend_intValue(v90, v91, v92, v93, v94, v95);

    v48 = v181;
  }

  else
  {
    v96 = -1;
  }

  v174 = v14;

  v102 = objc_msgSend_count(v8, v97, v98, v99, v100, v101);
  v180 = malloc_type_calloc(v102, 0x30uLL, 0x1000040EED21634uLL);
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  obj = v8;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, &v182, v186, 16, v104);
  if (v105)
  {
    v111 = v105;
    v112 = 0;
    v178 = v32;
    v179 = v21;
    v113 = *v183;
    v114 = 0.0;
    while (1)
    {
      for (i = 0; i != v111; ++i)
      {
        if (*v183 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v117 = *(*(&v182 + 1) + 8 * i);
        if (objc_msgSend_count(v117, v106, v107, v108, v109, v110, v174))
        {
          if ((v48 & 0x8000000000000000) == 0 && objc_msgSend_count(v117, v106, v107, v108, v109, v110) > v48)
          {
            v118 = objc_msgSend_objectAtIndex_(v117, v106, v181, v108, v109, v110);
            objc_msgSend_doubleValue(v118, v119, v120, v121, v122, v123);
            v114 = v124;
          }

          v125 = objc_msgSend_objectAtIndex_(v117, v106, v179, v108, v109, v110);
          objc_msgSend_floatValue(v125, v126, v127, v128, v129, v130);
          v132 = v131;
          v137 = objc_msgSend_objectAtIndex_(v117, v133, v178, v134, v135, v136);
          objc_msgSend_floatValue(v137, v138, v139, v140, v141, v142);
          v144 = v143;

          v145 = 0.0;
          v146 = 0.0;
          if ((v64 & 0x8000000000000000) == 0 && objc_msgSend_count(v117, v106, v107, v108, v109, v110) > v64)
          {
            v147 = objc_msgSend_objectAtIndex_(v117, v106, v64, v108, v109, v110);
            objc_msgSend_floatValue(v147, v148, v149, v150, v151, v152);
            v146 = v153;
          }

          if ((v80 & 0x8000000000000000) != 0)
          {
            v48 = v181;
            v161 = 0.0;
            if ((v96 & 0x8000000000000000) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v48 = v181;
            if (objc_msgSend_count(v117, v106, v107, v108, v109, v110) > v80)
            {
              v154 = objc_msgSend_objectAtIndex_(v117, v106, v80, v108, v109, v110);
              objc_msgSend_floatValue(v154, v155, v156, v157, v158, v159);
              v145 = v160;
            }

            v161 = 0.0;
            if ((v96 & 0x8000000000000000) != 0)
            {
              goto LABEL_20;
            }

LABEL_37:
            if (objc_msgSend_count(v117, v106, v107, v108, v109, v110) > v96)
            {
              v162 = objc_msgSend_objectAtIndex_(v117, v106, v96, v108, v109, v110);
              objc_msgSend_floatValue(v162, v163, v164, v165, v166, v167);
              v161 = v168;
            }
          }

LABEL_20:
          v116 = &v180[48 * v112];
          *v116 = v132;
          v116[1] = v144;
          v116[2] = v114 + a5;
          v116[3] = v146;
          v116[4] = v145;
          v116[5] = v161;
          ++v112;
          v114 = v114 + 0.00416666667;
          continue;
        }
      }

      v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v106, &v182, v186, 16, v110);
      if (!v111)
      {
        goto LABEL_40;
      }
    }
  }

  v112 = 0;
LABEL_40:

  v169 = [CHClientStroke alloc];
  v172 = objc_msgSend_initWithAllPoints_pointCount_type_(v169, v170, v180, v112, a6, v171);
  free(v180);

  return v172;
}

- (CHClientStroke)initWithAllPoints:(CHClientStrokePoint *)a3 pointCount:(int64_t)a4 type:(int64_t)a5
{
  if (qword_1EA84CDA8 != -1)
  {
    v18 = self;
    dispatch_once(&qword_1EA84CDA8, &unk_1EF1BC2D0);
    self = v18;
  }

  v21.receiver = self;
  v21.super_class = CHClientStroke;
  v8 = [(CHClientStroke *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v10 = *(MEMORY[0x1E695F050] + 16);
    *(v8 + 88) = *MEMORY[0x1E695F050];
    *(v8 + 104) = v10;
    *(v8 + 7) = a5;
    *(v8 + 8) = 1;
    v11 = *(v8 + 10);
    *(v8 + 10) = 0;

    v9->_isFinished = 1;
    v12 = qword_1EA84CDB0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1836E3E8C;
    block[3] = &unk_1E6DDC1D0;
    v13 = v9;
    v20 = v13;
    dispatch_sync(v12, block);
    objc_msgSend_addAllPoints_count_(v13, v14, a3, a4, v15, v16);
  }

  return v9;
}

- (NSString)description
{
  v22.receiver = self;
  v22.super_class = CHClientStroke;
  v3 = [(CHClientStroke *)&v22 description];
  v9 = objc_msgSend_strokeIdentifier(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_pointsCount(self, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_stringByAppendingFormat_(v3, v16, @" Identifier: %@, Points: %ld", v17, v18, v19, v9, v15);

  return v20;
}

- (void)dealloc
{
  points = self->_points;
  if (points)
  {
    free(points);
  }

  v4.receiver = self;
  v4.super_class = CHClientStroke;
  [(CHClientStroke *)&v4 dealloc];
}

+ (id)strokesFromDrawing:(id)a3 classification:(int64_t)a4
{
  v71 = a4;
  v72[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  if (objc_msgSend_strokeCount(v4, v11, v12, v13, v14, v15))
  {
    v21 = 0;
    do
    {
      v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20, v71);
      if (objc_msgSend_pointCountForStrokeIndex_(v4, v36, v21, v37, v38, v39))
      {
        v43 = 0;
        do
        {
          objc_msgSend_pointForStrokeIndex_pointIndex_(v4, v40, v21, v43, v41, v42);
          v45 = v44;
          v51 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v46, v47, v48, v49, v50);
          v72[0] = v51;
          v57 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v52, v53, v54, v55, v56, v45);
          v72[1] = v57;
          v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v58, v72, 2, v59, v60);
          objc_msgSend_addObject_(v35, v62, v61, v63, v64, v65);

          ++v43;
        }

        while (v43 < objc_msgSend_pointCountForStrokeIndex_(v4, v66, v21, v67, v68, v69));
      }

      v22 = [CHClientStroke alloc];
      v25 = objc_msgSend_initWithArray_channels_withTimeOffset_type_(v22, v23, v35, 0, v71, v24, 0.0);
      objc_msgSend_addObject_(v10, v26, v25, v27, v28, v29);

      ++v21;
    }

    while (v21 < objc_msgSend_strokeCount(v4, v30, v31, v32, v33, v34));
  }

  return v10;
}

- (CHClientStrokePoint)pointAtIndex:(SEL)a3
{
  v4 = *&self->var0.y + 48 * a4;
  v5 = *(v4 + 16);
  retstr->var0 = *v4;
  *&retstr->var1 = v5;
  *&retstr->var3 = *(v4 + 32);
  return self;
}

- (void)addAllPoints:(CHClientStrokePoint *)a3 count:(int64_t)a4
{
  if (a4 >= 1)
  {
    v13 = v6;
    v14 = v7;
    v8 = a4;
    do
    {
      v11 = *&a3->var1;
      v12[0] = a3->var0;
      v12[1] = v11;
      v12[2] = *&a3->var3;
      objc_msgSend_addPoint_(self, a2, v12, a4, v4, v5);
      ++a3;
      --v8;
    }

    while (v8);
  }
}

- (void)addPoint:(CHClientStrokePoint *)a3
{
  objc_msgSend_boundingBox(self, a2, a3, v3, v4, v5);
  if (CGRectIsNull(v27))
  {
    v13 = 24;
  }

  else
  {
    v13 = 32;
  }

  *(&self->super.isa + v13) = *&a3->var1;
  objc_msgSend__expandPointsArrayIfNeeded(self, v8, v9, v10, v11, v12);
  pointsCount = self->_pointsCount;
  objc_msgSend_setPointsCount_(self, v15, pointsCount + 1, v16, v17, v18);
  v23 = &self->_points[pointsCount];
  var0 = a3->var0;
  v25 = *&a3->var3;
  *&v23->var1 = *&a3->var1;
  *&v23->var3 = v25;
  v23->var0 = var0;

  MEMORY[0x1EEE66B58](self, sel_setBoundingBox_, v19, v20, v21, v22);
}

- (void)_expandPointsArrayIfNeeded
{
  if (self->_points)
  {
    v7 = objc_msgSend_pointsCount(self, a2, v2, v3, v4, v5);
    if (v7 < objc_msgSend_pointsCapacity(self, v8, v9, v10, v11, v12))
    {
      return;
    }

    v18 = objc_msgSend_pointsCapacity(self, v13, v14, v15, v16, v17);
    objc_msgSend_setPointsCapacity_(self, v19, v18 + 200, v20, v21, v22);
    points = self->_points;
    v29 = objc_msgSend_pointsCapacity(self, v24, v25, v26, v27, v28);
    v30 = malloc_type_realloc(points, 48 * v29, 0x1000040EED21634uLL);
  }

  else
  {
    objc_msgSend_setPointsCapacity_(self, a2, 200, v3, v4, v5);
    v36 = objc_msgSend_pointsCapacity(self, v31, v32, v33, v34, v35);
    v30 = malloc_type_calloc(v36, 0x30uLL, 0x1000040EED21634uLL);
  }

  self->_points = v30;
}

+ (id)encodedStrokeIdentifierWithStrokeIdentifier:(id)a3
{
  v3 = a3;
  v4 = [CHEncodedStrokeIdentifier alloc];
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v5, v3, 1, 0, v6);

  v12 = objc_msgSend_initWithData_(v4, v8, v7, v9, v10, v11);

  return v12;
}

+ (id)encodedStrokeIdentifierWithIdentifier:(int64_t)a3
{
  v6 = objc_msgSend_strokeIdentifierWithIdentifier_(CHClientStroke, a2, a3, v3, v4, v5);
  v11 = objc_msgSend_encodedStrokeIdentifierWithStrokeIdentifier_(CHClientStroke, v7, v6, v8, v9, v10);

  return v11;
}

- (CHEncodedStrokeIdentifier)encodedStrokeIdentifier
{
  encodedStrokeIdentifier = self->_encodedStrokeIdentifier;
  if (encodedStrokeIdentifier)
  {
  }

  else
  {
    v9 = objc_msgSend_strokeIdentifier(self, a2, v2, v3, v4, v5);
    v14 = objc_msgSend_encodedStrokeIdentifierWithStrokeIdentifier_(CHClientStroke, v10, v9, v11, v12, v13);
    v15 = self->_encodedStrokeIdentifier;
    self->_encodedStrokeIdentifier = v14;

    encodedStrokeIdentifier = self->_encodedStrokeIdentifier;
  }

  return encodedStrokeIdentifier;
}

- (void)enumeratePointsWithTimestep:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_pointsCount(self, v7, v8, v9, v10, v11);
  if (v12 >= 1)
  {
    v17 = v12;
    v26 = 0;
    objc_msgSend_pointAtIndex_(self, v13, 0, v14, v15, v16);
    v6[2](v6, &v26, 0.0, 0.0, 0.0);
    if (v17 != 1 && (v26 & 1) == 0)
    {
      for (i = 1; i != v17; ++i)
      {
        v26 = 0;
        if (i == v17 - 1 || !(i % (a3 / 0.00416666667)))
        {
          objc_msgSend_pointAtIndex_(self, v18, i, v19, v20, v21, 0, 0, 0, 0, 0, 0);
          v6[2](v6, &v26, v23, v24, v25);
          if (v26)
          {
            break;
          }
        }
      }
    }
  }
}

- (double)_strokePathLength
{
  v7 = objc_msgSend_pointsCount(self, a2, v2, v3, v4, v5);
  v12 = 0.0;
  if (v7 >= 2)
  {
    v13 = v7;
    for (i = 1; i != v13; ++i)
    {
      objc_msgSend_pointAtIndex_(self, v8, i - 1, v9, v10, v11);
      objc_msgSend_pointAtIndex_(self, v15, i, v16, v17, v18);
      v19 = vsub_f32(vcvt_f32_f64(0), vcvt_f32_f64(0));
      v12 = v12 + sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    }
  }

  return v12;
}

- (void)enumeratePointsWithDistanceStep:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_pointsCount(self, v7, v8, v9, v10, v11);
  v50 = 0;
  objc_msgSend__strokePathLength(self, v13, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_pointAtIndex_(self, v20, 0, v21, v22, v23);
  v28 = (v6[2])(v6, &v50, 0.0, 0.0, 0.0);
  v29 = 0.0;
  v28.n128_u64[0] = 0;
  v49 = v28;
  v30 = v50;
  if ((v50 & 1) != 0 || v19 < a3 || v12 < 2)
  {
LABEL_13:
    if ((v30 & 1) == 0 && v12 >= 2)
    {
      objc_msgSend_pointAtIndex_(self, v24, v12 - 1, v25, v26, v27);
      if (v49.n128_f64[0] != 0.0 || v29 != 0.0)
      {
        (v6[2])(v6, &v50);
      }
    }
  }

  else
  {
    v31 = 0.0;
    v32 = 1;
    while (1)
    {
      objc_msgSend_pointAtIndex_(self, v24, v32 - 1, v25, v26, v27, *&v49);
      objc_msgSend_pointAtIndex_(self, v33, v32, v34, v35, v36);
      v37 = vcvt_f32_f64(0);
      v38 = v37;
      v39 = vsub_f32(v37, v37);
      v40 = sqrtf(vaddv_f32(vmul_f32(v39, v39)));
      v31 = v31 + v40;
      v41 = v50;
      if ((v50 & 1) == 0 && v31 >= a3)
      {
        v42 = 0.0;
        do
        {
          v43 = (v40 - (v31 - a3)) / v40;
          v44 = v43;
          v37 = vmla_n_f32(v37, vsub_f32(v38, v37), v44);
          v45 = vcvtq_f64_f32(v37);
          v42 = v42 + v43 * (0.0 - v42);
          v29 = v45.f64[1];
          v49 = v45;
          (v6[2])(v6, &v50);
          v46 = vsub_f32(v37, v38);
          v47 = sqrtf(vaddv_f32(vmul_f32(v46, v46)));
          v31 = v47;
          v41 = v50;
          if (v50)
          {
            break;
          }

          v40 = v47;
        }

        while (v31 >= a3);
      }

      if (v41)
      {
        break;
      }

      if (++v32 == v12)
      {
        v30 = 0;
        goto LABEL_13;
      }
    }
  }
}

- (id)newStrokeWithTransformation:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_pointsCount(self, v5, v6, v7, v8, v9);
  v11 = malloc_type_calloc(v10, 0x30uLL, 0x1000040EED21634uLL);
  v12 = v11;
  if (self->_pointsCount)
  {
    v13 = 0;
    v14 = 0;
    v15 = v11 + 2;
    do
    {
      v16 = &self->_points[v13];
      v23 = *&v16->var3;
      v24 = *&v16->var1;
      *(v15 - 2) = v4[2](v4, v16->var0.x, v16->var0.y);
      *(v15 - 1) = v17;
      *v15 = v24;
      *(v15 + 1) = v23;
      v15 += 6;
      ++v14;
      ++v13;
    }

    while (v14 < self->_pointsCount);
  }

  v18 = [CHClientStroke alloc];
  v21 = objc_msgSend_initWithAllPoints_pointCount_type_(v18, v19, v12, self->_pointsCount, self->_type, v20);
  free(v12);

  return v21;
}

- (id)newStrokeWithoutTransformation
{
  v3 = [CHClientStroke alloc];
  points = self->_points;
  pointsCount = self->_pointsCount;
  type = self->_type;

  return objc_msgSend_initWithAllPoints_pointCount_type_(v3, v4, points, pointsCount, type, v5);
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end