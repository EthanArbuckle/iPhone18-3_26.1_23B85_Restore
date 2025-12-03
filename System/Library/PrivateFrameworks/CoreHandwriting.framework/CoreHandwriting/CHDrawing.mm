@interface CHDrawing
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDrawing:(id)drawing;
- (BOOL)isPrefixForDrawing:(id)drawing;
- (CGPoint)centroidForStrokeIndexes:(id)indexes;
- (CGPoint)pointForStrokeIndex:(unint64_t)index pointIndex:(unint64_t)pointIndex;
- (CGRect)bounds;
- (CGRect)boundsForStrokeIndex:(unint64_t)index;
- (CGRect)boundsForStrokeIndexes:(id)indexes;
- (CHDrawing)drawingWithLastStrokes:(int64_t)strokes;
- (CHDrawing)drawingWithStrokesFromIndexArray:(id)array;
- (CHDrawing)drawingWithStrokesFromIndexSet:(id)set;
- (CHDrawing)initWithCoder:(id)coder;
- (CHDrawing)initWithContentsOfFile:(id)file;
- (CHDrawing)initWithContentsOfJSONDictionary:(id)dictionary;
- (CHDrawing)initWithContentsOfXYString:(id)string;
- (Matrix<float>)bitmapRepresentationForSize:(SEL)size;
- (_NSRange)matchingStrokePrefixRangeForDrawing:(id)drawing;
- (double)averageCharacterHeightEstimation:(double)estimation minChunkHeight:(double)height;
- (double)endTimeForStroke:(unint64_t)stroke;
- (double)startTimeForStroke:(unint64_t)stroke;
- (float)cumulativePointToPointDistance;
- (float)distanceBetweenFirstAndLastPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)description;
- (id)drawingByRemovingUnnaturalHorizontalGaps:(double)gaps;
- (id)drawingResampledWithCatmullRomSplineInterpolation:(double)interpolation;
- (id)drawingSpatiallyResampled:(double)resampled maxPointsPerStroke:(int64_t)stroke;
- (id)drawingSpatiallyResampled:(double)resampled outputPointMap:(void *)map;
- (id)drawingTransformedWithTranslation:(CGVector)translation scaleFactor:(double)factor;
- (id)indexesOfStrokesSmallerThanSize:(CGSize)size;
- (id)jsonRepresentationWithContext:(id)context;
- (id)newDrawingWithAffineTransform:(CGAffineTransform *)transform;
- (id)newDrawingWithTransform:(id)transform;
- (id)singleStrokeDrawing;
- (id)sortedDrawingUsingMinXCoordinate;
- (id)sortedDrawingUsingStrokeMidPoint:(id *)point;
- (id)sortedDrawingUsingStrokeMidPointHorizontalOverlapAware:(id *)aware shouldSortRTL:(BOOL)l;
- (id)xyRepresentation;
- (unint64_t)hash;
- (unint64_t)pointCount;
- (unint64_t)strokeCount;
- (vector<long,)strokeIndicesSortedByMinXCoordinate;
- (void)addPoint:(CGPoint)point;
- (void)appendDrawing:(id)drawing;
- (void)appendSegment:(id)segment fromDrawing:(id)drawing;
- (void)encodeWithCoder:(id)coder;
- (void)endStroke;
- (void)writeToFile;
- (void)writeToFileWithContext:(id)context folder:(id)folder basename:(id)basename;
@end

@implementation CHDrawing

- (CHDrawing)initWithContentsOfFile:(id)file
{
  v84 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v78.receiver = self;
  v78.super_class = CHDrawing;
  v76 = [(CHDrawing *)&v78 init];
  if (!v76)
  {
    goto LABEL_64;
  }

  if (objc_msgSend_length(fileCopy, v5, v6, v7, v8, v9) < 5 || (v15 = objc_msgSend_length(fileCopy, v10, v11, v12, v13, v14), objc_msgSend_substringFromIndex_(fileCopy, v16, v15 - 4, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v20, v21, @"json", v22, v23, v24), v20, !isEqualToString))
  {
    v41 = fileCopy;
    v46 = objc_msgSend_cStringUsingEncoding_(fileCopy, v42, 4, v43, v44, v45);
    v47 = v46;
    if (!v46 || !*v46)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v72 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v72, OS_LOG_TYPE_ERROR, "filename is empty", buf, 2u);
      }

      goto LABEL_64;
    }

    v81 = 0;
    v80 = 0;
    v79 = 0;
    v48 = fopen(v46, "rt");
    if (v48)
    {
      sub_1836FB678(v76 + 16);
      do
      {
        buf[0] = 0;
        while (!feof(v48) && !ferror(v48) && fgets(buf, 1024, v48) && sscanf(buf, "%d %d %d", &v80, &v79 + 4, &v79) >= 1)
        {
          v50 = HIDWORD(v79);
          v51 = v80;
          v52 = *(v76 + 28) + 24 * *(v76 + 31);
          v54 = *(v52 + 8);
          v53 = *(v52 + 16);
          if (v54 >= v53)
          {
            v56 = *v52;
            v57 = v54 - *v52;
            v58 = v57 >> 3;
            v59 = (v57 >> 3) + 1;
            if (v59 >> 61)
            {
              goto LABEL_68;
            }

            v60 = v53 - v56;
            if (v60 >> 2 > v59)
            {
              v59 = v60 >> 2;
            }

            if (v60 >= 0x7FFFFFFFFFFFFFF8)
            {
              v61 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              if (!(v61 >> 61))
              {
                operator new();
              }

LABEL_69:
              sub_183688F00();
            }

            *(8 * v58) = v51;
            v55 = 8 * v58 + 8;
            memcpy(0, v56, v57);
            *v52 = 0;
            *(v52 + 8) = v55;
            *(v52 + 16) = 0;
            if (v56)
            {
              operator delete(v56);
            }
          }

          else
          {
            *v54 = v51;
            v55 = (v54 + 1);
          }

          v62 = v50;
          *(v52 + 8) = v55;
          v63 = *(v76 + 28) + 24 * *(v76 + 31);
          v65 = *(v63 + 8);
          v64 = *(v63 + 16);
          if (v65 < v64)
          {
            *v65 = v62;
            v49 = (v65 + 1);
          }

          else
          {
            v66 = *v63;
            v67 = v65 - *v63;
            v68 = v67 >> 3;
            v69 = (v67 >> 3) + 1;
            if (v69 >> 61)
            {
LABEL_68:
              sub_1836D58DC();
            }

            v70 = v64 - v66;
            if (v70 >> 2 > v69)
            {
              v69 = v70 >> 2;
            }

            if (v70 >= 0x7FFFFFFFFFFFFFF8)
            {
              v71 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v71 = v69;
            }

            if (v71)
            {
              if (!(v71 >> 61))
              {
                operator new();
              }

              goto LABEL_69;
            }

            *(8 * v68) = v62;
            v49 = 8 * v68 + 8;
            memcpy(0, v66, v67);
            *v63 = 0;
            *(v63 + 8) = v49;
            *(v63 + 16) = 0;
            if (v66)
            {
              operator delete(v66);
            }
          }

          *(v63 + 8) = v49;
          *(*(v76 + 19) + ((*(v76 + 31) >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << *(v76 + 31));
        }

        if (*(*(v76 + 29) - 16) != *(*(v76 + 29) - 24))
        {
          ++*(v76 + 31);
          sub_1836FE1BC(v76 + 16);
        }
      }

      while (sscanf(buf, " %c", &v81) > 0);
      fclose(v48);
      goto LABEL_64;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v73 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v83 = v47;
      _os_log_impl(&dword_18366B000, v73, OS_LOG_TYPE_ERROR, "Error: readCharacter: Wrong filename :%s:\n", buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v74 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
      {
LABEL_63:

        sub_1836FB678(v76 + 16);
LABEL_64:
        v40 = v76;
        goto LABEL_65;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v74 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }
    }

    *buf = 136315138;
    v83 = v47;
    _os_log_impl(&dword_18366B000, v74, OS_LOG_TYPE_FAULT, "Error: readCharacter: Wrong filename :%s:\n", buf, 0xCu);
    goto LABEL_63;
  }

  v32 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v26, fileCopy, v27, v28, v29);
  if (!v32)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v83 = fileCopy;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "Could not read data from file %@", buf, 0xCu);
    }
  }

  v77 = 0;
  v34 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v30, v32, 1, &v77, v31);
  v35 = v77;
  v40 = objc_msgSend_initWithContentsOfJSONDictionary_(v76, v36, v34, v37, v38, v39);

LABEL_65:
  return v40;
}

- (CHDrawing)initWithContentsOfXYString:(id)string
{
  v78 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v76.receiver = self;
  v76.super_class = CHDrawing;
  v8 = [(CHDrawing *)&v76 init];
  if (v8)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v9 = objc_msgSend_componentsSeparatedByString_(stringCopy, v4, @"\n", v5, v6, v7);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v72, v77, 16, v11);
    if (v16)
    {
      v17 = *v73;
      do
      {
        v18 = 0;
        do
        {
          if (*v73 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v19 = objc_msgSend_componentsSeparatedByString_(*(*(&v72 + 1) + 8 * v18), v12, @" ", v13, v14, v15);
          if (objc_msgSend_count(v19, v20, v21, v22, v23, v24) < 2)
          {
            if (objc_msgSend_count(v19, v25, v26, v27, v28, v29) == 1)
            {
              v59 = objc_msgSend_objectAtIndexedSubscript_(v19, v55, 0, v56, v57, v58);
              isEqualToString = objc_msgSend_isEqualToString_(v59, v60, @";", v61, v62, v63);

              if (isEqualToString)
              {
                objc_msgSend_endStroke(v8, v65, v66, v67, v68, v69);
              }
            }
          }

          else
          {
            v30 = objc_msgSend_objectAtIndexedSubscript_(v19, v25, 0, v27, v28, v29);
            objc_msgSend_floatValue(v30, v31, v32, v33, v34, v35);
            v37 = v36;
            v42 = objc_msgSend_objectAtIndexedSubscript_(v19, v38, 1, v39, v40, v41);
            objc_msgSend_floatValue(v42, v43, v44, v45, v46, v47);
            v49 = v48;

            objc_msgSend_addPoint_(v8, v50, v51, v52, v53, v54, v37, v49);
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v72, v77, 16, v15);
      }

      while (v16);
    }
  }

  return v8;
}

- (CHDrawing)initWithContentsOfJSONDictionary:(id)dictionary
{
  v110 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v107.receiver = self;
  v107.super_class = CHDrawing;
  v8 = [(CHDrawing *)&v107 init];
  if (v8)
  {
    v9 = objc_msgSend_objectForKey_(dictionaryCopy, v4, @"channel", v5, v6, v7);
    v10 = v9 == 0;

    if (v10)
    {
      v32 = 0;
      v33 = 1;
    }

    else
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, @"channel", v12, v13, v14);
      v20 = objc_msgSend_objectForKey_(v15, v16, @"x", v17, v18, v19);
      v21 = v20 == 0;

      if (v21)
      {
        v32 = 0;
      }

      else
      {
        v26 = objc_msgSend_objectForKeyedSubscript_(v15, v22, @"x", v23, v24, v25);
        v32 = objc_msgSend_integerValue(v26, v27, v28, v29, v30, v31);
      }

      v34 = objc_msgSend_objectForKey_(v15, v22, @"y", v23, v24, v25);
      v35 = v34 == 0;

      if (v35)
      {
        v33 = 1;
      }

      else
      {
        v40 = objc_msgSend_objectForKeyedSubscript_(v15, v36, @"y", v37, v38, v39);
        v33 = objc_msgSend_integerValue(v40, v41, v42, v43, v44, v45);
      }
    }

    objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, @"data", v12, v13, v14);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    obj = v104 = 0u;
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v103, v109, 16, v47);
    if (v48)
    {
      v97 = *v104;
      do
      {
        v98 = v48;
        for (i = 0; i != v98; ++i)
        {
          if (*v104 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v103 + 1) + 8 * i);
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v51 = v50;
          v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v99, v108, 16, v53);
          if (v58)
          {
            v59 = *v100;
            do
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v100 != v59)
                {
                  objc_enumerationMutation(v51);
                }

                v61 = *(*(&v99 + 1) + 8 * j);
                v62 = objc_msgSend_objectAtIndexedSubscript_(v61, v54, v32, v55, v56, v57);
                objc_msgSend_floatValue(v62, v63, v64, v65, v66, v67);
                v69 = v68;
                v74 = objc_msgSend_objectAtIndexedSubscript_(v61, v70, v33, v71, v72, v73);
                objc_msgSend_floatValue(v74, v75, v76, v77, v78, v79);
                v81 = v80;

                objc_msgSend_addPoint_(v8, v82, v83, v84, v85, v86, v69, v81);
              }

              v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v99, v108, 16, v57);
            }

            while (v58);
          }

          objc_msgSend_endStroke(v8, v87, v88, v89, v90, v91);
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v92, &v103, v109, 16, v93);
      }

      while (v48);
    }
  }

  return v8;
}

- (CHDrawing)initWithCoder:(id)coder
{
  STACK[0xD38] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v73.receiver = self;
  v73.super_class = CHDrawing;
  v5 = [(CHDrawing *)&v73 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    objc_opt_class();
    vars8 = objc_msgSend_setWithObjects_(v6, v8, v7, v9, v10, v11);
    v67 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, vars8, @"drawingStrokes", v13, v14);
    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, vars8, @"drawingStrokesTimeStamps", v16, v17);
    if (v67)
    {
      sub_183707B88(&STACK[0xAA0]);
      if (objc_msgSend_count(v67, v19, v20, v21, v22, v23))
      {
        v24 = STACK[0xB00];
        if (STACK[0xB00])
        {
          v25 = STACK[0xB08];
          v26 = STACK[0xB00];
          if (STACK[0xB08] != v24)
          {
            v27 = STACK[0xB08];
            do
            {
              v29 = *(v27 - 24);
              v27 -= 24;
              v28 = v29;
              if (v29)
              {
                *(v25 - 16) = v28;
                operator delete(v28);
              }

              v25 = v27;
            }

            while (v27 != v24);
            v26 = STACK[0xB00];
          }

          STACK[0xB08] = v24;
          operator delete(v26);
        }

        *(&STACK[0xAA0] | 0x60) = 0;
        *((&STACK[0xAA0] | 0x60) + 8) = 0;
        *((&STACK[0xAA0] | 0x60) + 0x10) = 0;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = v67;
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v69, &STACK[0xA20], 16, v31);
        if (v37)
        {
          v38 = *v70;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v70 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v41 = *(*(&v69 + 1) + 8 * i);
              v42 = objc_msgSend_length(v41, v32, v33, v34, v35, v36);
              if ((v42 & 0xF) != 0)
              {
                goto LABEL_40;
              }

              v43 = v41;
              objc_msgSend_bytes(v41, v44, v45, v46, v47, v48);
              v49 = STACK[0xB08];
              if (STACK[0xB08] >= STACK[0xB10])
              {
                v50 = 0xAAAAAAAAAAAAAAABLL * ((v49 - STACK[0xB00]) >> 3);
                v51 = v50 + 1;
                if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1836D58DC();
                }

                if (0x5555555555555556 * ((STACK[0xB10] - STACK[0xB00]) >> 3) > v51)
                {
                  v51 = 0x5555555555555556 * ((STACK[0xB10] - STACK[0xB00]) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((STACK[0xB10] - STACK[0xB00]) >> 3) >= 0x555555555555555)
                {
                  v52 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v52 = v51;
                }

                v78 = &STACK[0xAA0] | 0x60;
                if (v52)
                {
                  if (v52 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                v53 = 24 * v50;
                v74 = 0;
                v75 = v53;
                v76 = 24 * v50;
                v77 = 0;
                *(v53 + 8) = 0;
                *(v53 + 16) = 0;
                *v53 = 0;
                if (v42 >= 8)
                {
                  if ((v42 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1836D58DC();
                }

                v40 = v53 + 24;
                v54 = STACK[0xB00];
                v55 = STACK[0xB08] - STACK[0xB00];
                v56 = v53 - v55;
                memcpy((v53 - v55), STACK[0xB00], v55);
                STACK[0xB00] = v56;
                STACK[0xB08] = v53 + 24;
                STACK[0xB10] = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                *v49 = 0;
                v49[1] = 0;
                v49[2] = 0;
                if (v42)
                {
                  if ((v42 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1836D58DC();
                }

                v40 = (v49 + 3);
              }

              STACK[0xB08] = v40;
            }

            v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v69, &STACK[0xA20], 16, v36);
          }

          while (v37);
        }

LABEL_40:

        STACK[0xB18] = objc_msgSend_count(obj, v57, v58, v59, v60, v61);
        sub_1836FE1BC(&STACK[0xAA0]);
      }

      else
      {
        sub_1836FB678(&STACK[0xAA0]);
      }

      sub_1837088E8(v79, &STACK[0xAA0]);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v62 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      LODWORD(STACK[0xAA0]) = 138412290;
      STACK[0xAA4] = v63;
      v64 = v63;
      _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_ERROR, "%@ decoding failed. There was a problem decoding the stroke data.", &STACK[0xAA0], 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  STACK[0x618] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  if (self)
  {
    if (objc_msgSend_strokeCount(self, v10, v11, v12, v13, v14))
    {
      sub_1837088E8(v33, &self->_drawing);
    }
  }

  else
  {
    objc_msgSend_strokeCount(0, v10, v11, v12, v13, v14);
  }

  v20 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
  if (objc_msgSend_strokeCount(self, v21, v22, v23, v24, v25))
  {
    operator new();
  }

  objc_msgSend_encodeObject_forKey_(coderCopy, v26, v32, @"drawingStrokes", v27, v28);
  objc_msgSend_encodeObject_forKey_(coderCopy, v29, v20, @"drawingStrokesTimeStamps", v30, v31);
}

- (id)description
{
  objc_msgSend_bounds(self, a2, v2, v3, v4, v5);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"origin: (%0.2f, %0.2f), size: (%0.2f, %0.2f)", v8, v9, v10, v11, v12, v13, v14);
  v35.receiver = self;
  v35.super_class = CHDrawing;
  v16 = [(CHDrawing *)&v35 description];
  v22 = objc_msgSend_strokeCount(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_pointCount(self, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_stringByAppendingFormat_(v16, v29, @" strokes: %lu, points: %lu, %@", v30, v31, v32, v22, v28, v15);

  return v33;
}

- (id)newDrawingWithTransform:(id)transform
{
  transformCopy = transform;
  v10 = objc_alloc_init(CHDrawing);
  for (i = 0; objc_msgSend_strokeCount(self, v5, v6, v7, v8, v9) > i; ++i)
  {
    for (j = 0; objc_msgSend_pointCountForStrokeIndex_(self, v12, i, v13, v14, v15) > j; ++j)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(self, v17, i, j, v20, v21);
      transformCopy[2](transformCopy);
      objc_msgSend_addPoint_(v10, v22, v23, v24, v25, v26);
    }

    objc_msgSend_endStroke(v10, v17, v18, v19, v20, v21);
  }

  return v10;
}

- (id)newDrawingWithAffineTransform:(CGAffineTransform *)transform
{
  v10 = objc_alloc_init(CHDrawing);
  for (i = 0; objc_msgSend_strokeCount(self, v5, v6, v7, v8, v9) > i; ++i)
  {
    for (j = 0; objc_msgSend_pointCountForStrokeIndex_(self, v12, i, v13, v14, v15) > j; ++j)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(self, v17, i, j, v20, v21);
      objc_msgSend_addPoint_(v10, v24, v25, v26, v27, v28, vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v22), *&transform->a, v23)));
    }

    objc_msgSend_endStroke(v10, v17, v18, v19, v20, v21);
  }

  return v10;
}

- (id)drawingByRemovingUnnaturalHorizontalGaps:(double)gaps
{
  selfCopy = self;
  objc_msgSend_bounds(selfCopy, v5, v6, v7, v8, v9);
  if (v15 <= gaps * 0.8)
  {
    v28 = selfCopy;
  }

  else
  {
    objc_msgSend_strokeIndicesSortedByMinXCoordinate(selfCopy, v10, v11, v12, v13, v14);
    if (v31 != __p)
    {
      v20 = *(MEMORY[0x1E695F050] + 16);
      v21 = *(MEMORY[0x1E695F050] + 24);
      v22 = *MEMORY[0x1E695F050];
      v23 = *(MEMORY[0x1E695F050] + 8);
      objc_msgSend_boundsForStrokeIndex_(selfCopy, v16, *__p, v17, v18, v19, gaps + 50.0);
      v25 = v24;
      v27 = v26;
      v33.origin.x = v22;
      v33.origin.y = v23;
      v33.size.width = v20;
      v33.size.height = v21;
      if (!CGRectIsNull(v33))
      {
        v37.origin.y = 0.0;
        v37.size.height = 1.0;
        v34.origin.x = v22;
        v34.origin.y = v23;
        v34.size.width = v20;
        v34.size.height = v21;
        v37.origin.x = v25;
        v37.size.width = v27;
        if (CGRectIntersectsRect(v34, v37))
        {
          v38.origin.y = 0.0;
          v38.size.height = 1.0;
          v35.origin.x = v22;
          v35.origin.y = v23;
          v35.size.width = v20;
          v35.size.height = v21;
          v38.origin.x = v25;
          v38.size.width = v27;
          CGRectUnion(v35, v38);
        }

        else
        {
          v36.origin.x = v22;
          v36.origin.y = v23;
          v36.size.width = v20;
          v36.size.height = v21;
          CGRectGetMaxX(v36);
        }
      }

      operator new();
    }

    v28 = selfCopy;
    if (__p)
    {
      operator delete(__p);
    }
  }

  return v28;
}

- (unint64_t)pointCount
{
  begin = self->_drawing.strokes.__begin_;
  end = self->_drawing.strokes.__end_;
  if (end == begin)
  {
    return 0;
  }

  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  v5 = *(end - 2) == *(end - 3);
  v6 = *(end - 2) == *(end - 3) ? -1 : 0;
  v7 = v4 - v5;
  if (v7 < 1)
  {
    return 0;
  }

  if (v7 >= 5)
  {
    v10 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v10 = 4;
    }

    v8 = v7 - v10;
    v11 = 0uLL;
    v12 = v8;
    v13 = self->_drawing.strokes.__begin_;
    v14 = 0uLL;
    do
    {
      v15 = v13;
      v13 += 12;
      v18 = vld3q_f64(v15);
      v15 += 6;
      v11 = vsraq_n_u64(v11, vshrq_n_s64(vsubq_s64(v18.val[1], v18.val[0]), 3uLL), 1uLL);
      v19 = vld3q_f64(v15);
      v14 = vsraq_n_u64(v14, vshrq_n_s64(vsubq_s64(v19.val[1], v19.val[0]), 3uLL), 1uLL);
      v12 -= 4;
    }

    while (v12);
    result = vaddvq_s64(vaddq_s64(v14, v11));
  }

  else
  {
    v8 = 0;
    result = 0;
  }

  v16 = v4 + v6 - v8;
  v17 = &begin[24 * v8 + 8];
  do
  {
    result += ((*v17 - *(v17 - 1)) >> 3) >> 1;
    v17 += 3;
    --v16;
  }

  while (v16);
  return result;
}

- (CGPoint)pointForStrokeIndex:(unint64_t)index pointIndex:(unint64_t)pointIndex
{
  v4 = (*(self->_drawing.strokes.__begin_ + 3 * index) + 16 * pointIndex);
  v5 = *v4;
  v6 = v4[1];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)startTimeForStroke:(unint64_t)stroke
{
  begin = self->_drawing.startTimes.__begin_;
  result = -1.0;
  if (stroke < self->_drawing.startTimes.__end_ - begin)
  {
    return begin[stroke];
  }

  return result;
}

- (double)endTimeForStroke:(unint64_t)stroke
{
  begin = self->_drawing.endTimes.__begin_;
  result = -1.0;
  if (stroke < self->_drawing.endTimes.__end_ - begin)
  {
    return begin[stroke];
  }

  return result;
}

- (unint64_t)strokeCount
{
  end = self->_drawing.strokes.__end_;
  v3 = end - self->_drawing.strokes.__begin_;
  if (v3)
  {
    return 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) - (*(end - 2) == *(end - 3));
  }

  else
  {
    return 0;
  }
}

- (id)indexesOfStrokesSmallerThanSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], a2, v3, v4, v5, v6);
  end = self->_drawing.strokes.__end_;
  v12 = end - self->_drawing.strokes.__begin_;
  if (v12)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    v14 = *(end - 2) == *(end - 3);
    v15 = v13 - v14;
    if (v13 != v14)
    {
      v16 = 0;
      do
      {
        sub_1836FCBE8(&__p, &self->_drawing.strokeBounds.__begin_, v16);
        v21 = __p;
        if (*(__p + 2) - *__p < width && *(__p + 3) - *(__p + 1) < height)
        {
          objc_msgSend_addIndex_(v10, v17, v16, v18, v19, v20);
        }

        operator delete(v21);
        ++v16;
      }

      while (v15 != v16);
    }
  }

  return v10;
}

- (CHDrawing)drawingWithStrokesFromIndexSet:(id)set
{
  setCopy = set;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1836FF4F8;
  v22[3] = &unk_1E6DDCC38;
  v11 = v10;
  v23 = v11;
  objc_msgSend_enumerateIndexesUsingBlock_(setCopy, v12, v22, v13, v14, v15);
  v20 = objc_msgSend_drawingWithStrokesFromIndexArray_(self, v16, v11, v17, v18, v19);

  return v20;
}

- (CHDrawing)drawingWithStrokesFromIndexArray:(id)array
{
  STACK[0xD38] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v3 = objc_alloc_init(CHDrawing);
  sub_183707B88(&STACK[0xAA0]);
  v4 = STACK[0xB00];
  if (STACK[0xB00])
  {
    v5 = STACK[0xB08];
    v6 = STACK[0xB00];
    if (STACK[0xB08] != v4)
    {
      v7 = STACK[0xB08];
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = STACK[0xB00];
    }

    STACK[0xB08] = v4;
    operator delete(v6);
  }

  *(&STACK[0xAA0] | 0x60) = 0;
  *((&STACK[0xAA0] | 0x60) + 8) = 0;
  *((&STACK[0xAA0] | 0x60) + 0x10) = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = arrayCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v42, &STACK[0xA20], 16, v11);
  if (v17)
  {
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v3;
        v22 = self->_drawing.strokes.__begin_ + 24 * objc_msgSend_integerValue(*(*(&v42 + 1) + 8 * i), v12, v13, v14, v15, v16);
        v23 = STACK[0xB08];
        if (STACK[0xB08] >= STACK[0xB10])
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - STACK[0xB00]) >> 3);
          v26 = v25 + 1;
          if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1836D58DC();
          }

          if (0x5555555555555556 * ((STACK[0xB10] - STACK[0xB00]) >> 3) > v26)
          {
            v26 = 0x5555555555555556 * ((STACK[0xB10] - STACK[0xB00]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((STACK[0xB10] - STACK[0xB00]) >> 3) >= 0x555555555555555)
          {
            v27 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v27 = v26;
          }

          v50 = &STACK[0xAA0] | 0x60;
          if (v27)
          {
            if (v27 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v28 = 24 * v25;
          v46 = 0;
          v47 = v28;
          v48 = 24 * v25;
          v49 = 0;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *v28 = 0;
          v29 = v22[1] - *v22;
          if (v29)
          {
            if ((v29 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1836D58DC();
          }

          v20 = v28 + 24;
          v30 = STACK[0xB00];
          v31 = STACK[0xB08] - STACK[0xB00];
          v32 = v28 - v31;
          memcpy((v28 - v31), STACK[0xB00], v31);
          STACK[0xB00] = v32;
          STACK[0xB08] = v28 + 24;
          STACK[0xB10] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v23 = 0;
          v23[1] = 0;
          v23[2] = 0;
          v24 = v22[1] - *v22;
          if (v24)
          {
            if ((v24 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1836D58DC();
          }

          v20 = (v23 + 3);
        }

        v3 = v21;
        STACK[0xB08] = v20;
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v42, &STACK[0xA20], 16, v16);
    }

    while (v17);
  }

  STACK[0xB18] = objc_msgSend_count(obj, v33, v34, v35, v36, v37);
  sub_1836FE1BC(&STACK[0xAA0]);
  sub_1837088E8(v51, &STACK[0xAA0]);
}

- (CGPoint)centroidForStrokeIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (!objc_msgSend_count(indexesCopy, v5, v6, v7, v8, v9))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "At least one stroke index must be passed", buf, 2u);
    }
  }

  if (!objc_msgSend_count(indexesCopy, v10, v11, v12, v13, v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_FAULT, "At least one stroke index must be passed", buf, 2u);
    }
  }

  *buf = 0;
  v36 = buf;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1836FFC48;
  v26[3] = &unk_1E6DDCC60;
  v26[4] = self;
  v26[5] = buf;
  v26[6] = &v31;
  v26[7] = &v27;
  objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v16, v26, v17, v18, v19);
  v21 = v28[3];
  if (v21 < 1)
  {
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v22 = *(v36 + 3) / v21;
    v23 = v32[3] / v21;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);

  v24 = v22;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGRect)boundsForStrokeIndexes:(id)indexes
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x5012000000;
  v19 = sub_1836FFE0C;
  v20 = nullsub_15;
  v21 = &unk_183A5AC72;
  v6 = *(MEMORY[0x1E695F050] + 16);
  v22 = *MEMORY[0x1E695F050];
  v23 = v6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1836FFE1C;
  v15[3] = &unk_1E6DDCB80;
  v15[4] = self;
  v15[5] = &v16;
  objc_msgSend_enumerateIndexesUsingBlock_(indexes, a2, v15, v3, v4, v5);
  v7 = v17[6];
  v8 = v17[7];
  v9 = v17[8];
  v10 = v17[9];
  _Block_object_dispose(&v16, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)boundsForStrokeIndex:(unint64_t)index
{
  end = self->_drawing.strokes.__end_;
  v4 = end - self->_drawing.strokes.__begin_;
  if (v4 && (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) - (*(end - 2) == *(end - 3))) > 0)
  {
    sub_1836FCBE8(&__p, &self->_drawing.strokeBounds.__begin_, index);
    v5 = *__p;
    v6 = *(__p + 1);
    v7 = *(__p + 2) - *__p;
    v8 = *(__p + 3) - v6;
    operator delete(__p);
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)bounds
{
  sub_1836FBAA8(&__p, &self->_drawing.strokeBounds.__begin_);
  v2 = *__p;
  v3 = *(__p + 1);
  v4 = *(__p + 2) - *__p;
  v5 = *(__p + 3) - v3;
  operator delete(__p);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (float)cumulativePointToPointDistance
{
  begin = self->_drawing.strokes.__begin_;
  end = self->_drawing.strokes.__end_;
  result = 0.0;
  if (end != begin)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) - (*(end - 2) == *(end - 3));
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *&begin[24 * i];
        v8 = (*&begin[24 * i + 8] - v7) >> 3;
        if (v8 >= 4)
        {
          v9 = v7 + 1;
          v10 = (v8 >> 1) - 1;
          do
          {
            v11 = vsub_f32(vcvt_f32_f64(v9[-1]), vcvt_f32_f64(*v9));
            result = result + sqrtf(vaddv_f32(vmul_f32(v11, v11)));
            ++v9;
            --v10;
          }

          while (v10);
        }
      }
    }
  }

  return result;
}

- (float)distanceBetweenFirstAndLastPoint
{
  begin = self->_drawing.strokes.__begin_;
  end = self->_drawing.strokes.__end_;
  if (end == begin)
  {
    v4 = -1;
  }

  else
  {
    v4 = ~(*(end - 2) == *(end - 3)) - 0x5555555555555555 * (end - begin);
  }

  v5 = vsub_f32(vcvt_f32_f64(**begin), vcvt_f32_f64(*(begin[3 * v4] + ((begin[3 * v4 + 1] - begin[3 * v4]) & 0xFFFFFFFFFFFFFFF0) - 16)));
  return sqrtf(vaddv_f32(vmul_f32(v5, v5)));
}

- (void)addPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sub_183707A70(self->_drawing.strokes.__begin_ + 24 * self->_drawing.currentStrokeIndex, &x);
  sub_183707A70(self->_drawing.strokes.__begin_ + 24 * self->_drawing.currentStrokeIndex, &y);
  *(self->_drawing.strokeBoundsValidity.__begin_ + ((self->_drawing.currentStrokeIndex >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << self->_drawing.currentStrokeIndex);
}

- (void)endStroke
{
  if (*(self->_drawing.strokes.__end_ - 2) != *(self->_drawing.strokes.__end_ - 3))
  {
    ++self->_drawing.currentStrokeIndex;
    sub_1836FE1BC(&self->_drawing.strokeBounds.__begin_);
  }
}

- (BOOL)isPrefixForDrawing:(id)drawing
{
  drawingCopy = drawing;
  v10 = objc_msgSend_pointCount(self, v5, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_pointCount(drawingCopy, v11, v12, v13, v14, v15) && (v21 = objc_msgSend_strokeCount(self, v16, v17, v18, v19, v20), v21 <= objc_msgSend_strokeCount(drawingCopy, v22, v23, v24, v25, v26)))
  {
    for (i = 0; ; ++i)
    {
      v35 = objc_msgSend_strokeCount(self, v27, v28, v29, v30, v31);
      v32 = i >= v35;
      if (i >= v35)
      {
        break;
      }

      v40 = objc_msgSend_pointCountForStrokeIndex_(self, v36, i, v37, v38, v39);
      if (v40 > objc_msgSend_pointCountForStrokeIndex_(drawingCopy, v41, i, v42, v43, v44))
      {
        break;
      }

      v49 = 0;
      while (v49 < objc_msgSend_pointCountForStrokeIndex_(self, v45, i, v46, v47, v48))
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(self, v27, i, v49, v30, v31);
        v51 = v50;
        v53 = v52;
        objc_msgSend_pointForStrokeIndex_pointIndex_(drawingCopy, v54, i, v49, v55, v56);
        v32 = 0;
        if (v51 == v58)
        {
          ++v49;
          if (v53 == v57)
          {
            continue;
          }
        }

        goto LABEL_4;
      }
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_4:

  return v32;
}

- (_NSRange)matchingStrokePrefixRangeForDrawing:(id)drawing
{
  drawingCopy = drawing;
  for (i = 0; i < objc_msgSend_strokeCount(self, v4, v5, v6, v7, v8); ++i)
  {
    if (i >= objc_msgSend_strokeCount(drawingCopy, v11, v12, v13, v14, v15))
    {
      break;
    }

    v20 = objc_msgSend_pointCountForStrokeIndex_(self, v16, i, v17, v18, v19);
    if (v20 != objc_msgSend_pointCountForStrokeIndex_(drawingCopy, v21, i, v22, v23, v24))
    {
      break;
    }

    v29 = 0;
    while (v29 < objc_msgSend_pointCountForStrokeIndex_(self, v25, i, v26, v27, v28))
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(self, v4, i, v29, v7, v8);
      v31 = v30;
      v33 = v32;
      objc_msgSend_pointForStrokeIndex_pointIndex_(drawingCopy, v34, i, v29, v35, v36);
      if (v31 == v38)
      {
        ++v29;
        if (v33 == v37)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

LABEL_11:

  v39 = 0;
  v40 = i;
  result.length = v40;
  result.location = v39;
  return result;
}

- (BOOL)isEqualToDrawing:(id)drawing
{
  STACK[0x598] = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v5 = drawingCopy;
  if (self == drawingCopy)
  {
    v6 = 1;
  }

  else
  {
    if (drawingCopy)
    {
      sub_1837088E8(&v15, &drawingCopy->_drawing);
    }

    bzero(&v15, 0x280uLL);
    v7 = 0;
    begin = self->_drawing.strokes.__begin_;
    end = self->_drawing.strokes.__end_;
    if (end == begin)
    {
      while (1)
      {
        if (begin == end)
        {
          sub_18370859C(&v15);
          currentStrokeIndex = self->_drawing.currentStrokeIndex;
          bzero(&v15, 0x280uLL);
          v6 = currentStrokeIndex == 0;
          sub_18370859C(&v15);
          goto LABEL_16;
        }

        v11 = *begin;
        v10 = begin[1];
        v12 = *v7;
        if (v10 - *begin != *(v7 + 8) - *v7)
        {
          goto LABEL_4;
        }

        if (v11 != v10)
        {
          break;
        }

LABEL_8:
        begin += 3;
        v7 += 24;
      }

      while (*v11 == *v12)
      {
        ++v11;
        ++v12;
        if (v11 == v10)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_4:
    sub_18370859C(&v15);
    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToDrawing = objc_msgSend_isEqualToDrawing_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToDrawing;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v12 = 0;
  if (objc_msgSend_strokeCount(self, a2, v2, v3, v4, v5))
  {
    v13 = 0;
    do
    {
      v12 += objc_msgSend_pointCountForStrokeIndex_(self, v7, v13++, v9, v10, v11);
    }

    while (v13 < objc_msgSend_strokeCount(self, v14, v15, v16, v17, v18));
  }

  return objc_msgSend_strokeCount(self, v7, v8, v9, v10, v11) + v12;
}

- (id)xyRepresentation
{
  v12 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  for (i = 0; i < objc_msgSend_strokeCount(self, v7, v8, v9, v10, v11); ++i)
  {
    for (j = 0; j < objc_msgSend_pointCountForStrokeIndex_(self, v14, i, v15, v16, v17); ++j)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(self, v19, i, j, v21, v22);
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"%d %d\n", v26, v27, v28, v23, v24);
      objc_msgSend_appendString_(v12, v30, v29, v31, v32, v33);
    }

    objc_msgSend_appendString_(v12, v19, @";\n", v20, v21, v22);
  }

  return v12;
}

- (id)jsonRepresentationWithContext:(id)context
{
  v64[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v63 = objc_msgSend_mutableCopy(contextCopy, v4, v5, v6, v7, v8);
  v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  for (i = 0; i < objc_msgSend_strokeCount(self, v14, v15, v16, v17, v18); ++i)
  {
    v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v21, v22, v23, v24, v25);
    for (j = 0; j < objc_msgSend_pointCountForStrokeIndex_(self, v26, i, v27, v28, v29); ++j)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(self, v32, i, j, v34, v35);
      v37 = v36;
      v43 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v38, v39, v40, v41, v42);
      v64[0] = v43;
      v49 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v44, v45, v46, v47, v48, v37);
      v64[1] = v49;
      v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v50, v64, 2, v51, v52);
      objc_msgSend_addObject_(v30, v54, v53, v55, v56, v57);
    }

    objc_msgSend_addObject_(v19, v32, v30, v33, v34, v35);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v63, v21, v19, @"data", v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v63, v58, &unk_1EF1EB9A0, @"channels", v59, v60);

  return v63;
}

- (Matrix<float>)bitmapRepresentationForSize:(SEL)size
{
  STACK[0xCF8] = *MEMORY[0x1E69E9840];
  sub_183707B88(&STACK[0xA00]);
  sub_183707B88(v91);
  sub_1836FB678(&STACK[0xA00]);
  end = self->_drawing.strokes.__end_;
  v5 = end - self->_drawing.strokes.__begin_;
  if (!v5)
  {
    goto LABEL_63;
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3) - (*(end - 2) == *(end - 3));
  if (v6 < 1)
  {
    goto LABEL_63;
  }

  v7 = STACK[0xA68];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0xA68] - STACK[0xA60]) >> 3);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v9 = STACK[0xA60] + 24 * v6;
      if (v7 != v9)
      {
        v10 = STACK[0xA68];
        do
        {
          v12 = *(v10 - 24);
          v10 -= 24;
          v11 = v12;
          if (v12)
          {
            *(v7 - 16) = v11;
            operator delete(v11);
          }

          v7 = v10;
        }

        while (v10 != v9);
      }

      STACK[0xA68] = v9;
    }
  }

  else
  {
    sub_18370D180(&STACK[0xA00] | 0x60, v6 - v8);
  }

  v13 = STACK[0xA08];
  v14 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0xA08] - STACK[0xA00]) >> 3);
  if (v6 <= v14)
  {
    if (v6 < v14)
    {
      v15 = STACK[0xA00] + 24 * v6;
      if (v13 != v15)
      {
        v16 = STACK[0xA08];
        do
        {
          v18 = *(v16 - 24);
          v16 -= 24;
          v17 = v18;
          if (v18)
          {
            *(v13 - 16) = v17;
            operator delete(v17);
          }

          v13 = v16;
        }

        while (v16 != v15);
      }

      STACK[0xA08] = v15;
    }
  }

  else
  {
    sub_18370D180(&STACK[0xA00], v6 - v14);
  }

  sub_1836FB830(&STACK[0xA00] | 0x18, v6, 0);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v86 = v6;
  while (1)
  {
    v22 = (self->_drawing.strokes.__begin_ + 24 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = (*v22)[1];
    STACK[0xCE0] = **v22;
    v90 = v25;
    sub_183707A70(STACK[0xA60] + 24 * v21, &STACK[0xCE0]);
    sub_183707A70(STACK[0xA60] + 24 * v21, &v90);
    v87 = v19;
    v26 = v23 - v24;
    v89[0] = v26 >> 1;
    *(STACK[0xA18] + 8 * (v21 >> 6)) &= ~(1 << v21);
    ++v20;
    if (v26 >= 4)
    {
      break;
    }

LABEL_22:
    v19 = v87 + LODWORD(v89[0]);
    if (++v21 == v86)
    {
      if (v19 * 0.1 > v20)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v53 = qword_1EA84DC58;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(STACK[0xCE0]) = 134218496;
          STACK[0xCE4] = 0x4024000000000000;
          LOWORD(STACK[0xCEC]) = 1024;
          LODWORD(STACK[0xCEE]) = v19;
          LOWORD(STACK[0xCF2]) = 1024;
          LODWORD(STACK[0xCF4]) = v20;
          _os_log_impl(&dword_18366B000, v53, OS_LOG_TYPE_DEBUG, "Warning: Less than %2.1f%% of the original points remain in the drawing after cleanup (before: %d, after: %d)", &STACK[0xCE0], 0x18u);
        }
      }

LABEL_63:
      v54 = STACK[0xA60];
      v55 = STACK[0xA68];
      v56 = 0.0;
      if (STACK[0xA68] == STACK[0xA60])
      {
        goto LABEL_87;
      }

      v57 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0xA68] - STACK[0xA60]) >> 3);
      v58 = *(v55 - 16) == *(v55 - 24);
      v59 = *(v55 - 16) == *(v55 - 24) ? -1 : 0;
      v60 = v57 - v58;
      v61 = 0.0;
      if (v60 < 1)
      {
        goto LABEL_87;
      }

      v62 = 0;
      while (2)
      {
        v63 = *(v54 + 24 * v62);
        v64 = (*(v54 + 24 * v62 + 8) - v63) >> 3;
        if (v64 >= 2)
        {
          v65 = v64 >> 1;
          if (v64 <= 7)
          {
            v66 = 0;
            goto LABEL_76;
          }

          v66 = v65 & 0x7FFFFFFFFFFFFFFCLL;
          v67 = (v63 + 32);
          v68 = v65 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v69 = v67 - 4;
            v92 = vld2q_f64(v69);
            v93 = vld2q_f64(v67);
            v61 = v61 + v92.val[0].f64[0] + v92.val[0].f64[1] + v93.val[0].f64[0] + v93.val[0].f64[1];
            v56 = v56 + v92.val[1].f64[0] + v92.val[1].f64[1] + v93.val[1].f64[0] + v93.val[1].f64[1];
            v67 += 8;
            v68 -= 4;
          }

          while (v68);
          if (v65 != v66)
          {
LABEL_76:
            v70 = v65 - v66;
            v71 = (v63 + 16 * v66 + 8);
            do
            {
              v61 = v61 + *(v71 - 1);
              v56 = v56 + *v71;
              v71 += 2;
              --v70;
            }

            while (v70);
          }
        }

        if (++v62 == v60)
        {
          if (v60 == 1)
          {
            v72 = 0;
            v73 = 0;
            goto LABEL_85;
          }

          v74 = 0;
          v75 = 0;
          v72 = v60 & 0x7FFFFFFFFFFFFFFELL;
          v76 = (v54 + 24);
          v77 = v60 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v78 = *(v76 - 3);
            v79 = *(v76 - 2);
            v81 = *v76;
            v80 = v76[1];
            v76 += 6;
            v74 += ((v79 - v78) >> 3) >> 1;
            v75 += ((v80 - v81) >> 3) >> 1;
            v77 -= 2;
          }

          while (v77);
          v73 = v75 + v74;
          if (v60 != v72)
          {
LABEL_85:
            v82 = v57 + v59 - v72;
            v83 = (v54 + 24 * v72 + 8);
            do
            {
              v73 += ((*v83 - *(v83 - 1)) >> 3) >> 1;
              v83 += 3;
              --v82;
            }

            while (v82);
          }

LABEL_87:
          operator new();
        }

        continue;
      }
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 1;
  while (1)
  {
    v31 = *(self->_drawing.strokes.__begin_ + 3 * v21);
    v33 = *(v31 + v27 + 16);
    v32 = *(v31 + v27 + 24);
    if (vabdd_f64(v33, *(v31 + 16 * v28)) <= 0.5 && vabdd_f64(v32, *(v31 + 16 * v28 + 8)) <= 0.5)
    {
      goto LABEL_27;
    }

    v34 = STACK[0xA60] + 24 * v21;
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
    if (v36 >= v35)
    {
      v40 = *v34;
      v41 = v36 - *v34;
      v42 = v41 >> 3;
      v43 = (v41 >> 3) + 1;
      if (v43 >> 61)
      {
        goto LABEL_88;
      }

      v44 = v35 - v40;
      if (v44 >> 2 > v43)
      {
        v43 = v44 >> 2;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        if (!(v45 >> 61))
        {
          operator new();
        }

LABEL_89:
        sub_183688F00();
      }

      *(8 * v42) = v33;
      v46 = 8 * v42 + 8;
      memcpy(0, v40, v41);
      *v34 = 0;
      *(v34 + 8) = v46;
      *(v34 + 16) = 0;
      if (v40)
      {
        operator delete(v40);
      }

      *(v34 + 8) = v46;
      v37 = STACK[0xA60] + 24 * v21;
      v39 = *(v37 + 8);
      v38 = *(v37 + 16);
      if (v39 >= v38)
      {
LABEL_45:
        v47 = *v37;
        v48 = v39 - *v37;
        v49 = v48 >> 3;
        v50 = (v48 >> 3) + 1;
        if (v50 >> 61)
        {
LABEL_88:
          sub_1836D58DC();
        }

        v51 = v38 - v47;
        if (v51 >> 2 > v50)
        {
          v50 = v51 >> 2;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          if (!(v52 >> 61))
          {
            operator new();
          }

          goto LABEL_89;
        }

        *(8 * v49) = v32;
        v30 = 8 * v49 + 8;
        memcpy(0, v47, v48);
        *v37 = 0;
        *(v37 + 8) = v30;
        *(v37 + 16) = 0;
        if (v47)
        {
          operator delete(v47);
        }

        goto LABEL_26;
      }
    }

    else
    {
      *v36 = v33;
      *(v34 + 8) = v36 + 1;
      v37 = STACK[0xA60] + 24 * v21;
      v39 = *(v37 + 8);
      v38 = *(v37 + 16);
      if (v39 >= v38)
      {
        goto LABEL_45;
      }
    }

    *v39 = v32;
    v30 = (v39 + 1);
LABEL_26:
    *(v37 + 8) = v30;
    *(STACK[0xA18] + 8 * (v21 >> 6)) &= ~(1 << v21);
    ++v20;
    v28 = v29;
LABEL_27:
    ++v29;
    v27 += 16;
    if (v89[0] == v29)
    {
      goto LABEL_22;
    }
  }
}

- (id)sortedDrawingUsingMinXCoordinate
{
  STACK[0xB78] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_copy(self, a2, v2, v3, v4, v5);
  if (v6)
  {
    sub_1837088E8(&STACK[0x8C0], v6 + 128);
  }

  bzero(&STACK[0x8C0], 0x280uLL);
  v11 = sub_1837091CC;
  sub_183709268(0, 0, &v11, 0, 1);
  if (STACK[0x928] == STACK[0x920])
  {
    v9 = 0;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0x928] - STACK[0x920]) >> 3);
    v8 = *(STACK[0x928] - 16) == *(STACK[0x928] - 24);
    v9 = v7 - v8;
    if (v7 != v8)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369F168();
    }
  }

  if (STACK[0x8D8])
  {
    operator delete(STACK[0x8D8]);
  }

  STACK[0x8D8] = 0;
  STACK[0x8E0] = v9;
  STACK[0x8E8] = 0;
  sub_1837088E8(v12, &STACK[0x8C0]);
}

- (id)sortedDrawingUsingStrokeMidPoint:(id *)point
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (objc_msgSend_strokeCount(self, a2, point, v3, v4, v5))
  {
    objc_msgSend_boundsForStrokeIndex_(self, v7, 0, v8, v9, v10);
    operator new();
  }

  p_p = &__p;
  sub_18370D614(0, 0, &p_p, 0, 1);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_msgSend_drawingWithStrokesFromIndexArray_(self, v12, v11, v13, v14, v15);
  if (point)
  {
    v17 = v11;
    *point = v11;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v16;
}

- (id)sortedDrawingUsingStrokeMidPointHorizontalOverlapAware:(id *)aware shouldSortRTL:(BOOL)l
{
  lCopy = l;
  v8 = objc_msgSend_strokeCount(self, a2, aware, l, v4, v5);
  if (v8)
  {
    if (!(v8 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  __p = 0;
  v62 = 0;
  v63 = 0;
  v14 = objc_msgSend_strokeCount(self, v9, v10, v11, v12, v13);
  if (v14)
  {
    if (!(v14 >> 59))
    {
      operator new();
    }

    sub_18368964C();
  }

  for (i = 0; i < objc_msgSend_strokeCount(self, v15, v16, v17, v18, v19); ++i)
  {
    objc_msgSend_boundsForStrokeIndex_(self, v22, i, v23, v24, v25);
    v30 = v62;
    if (v62 < v63)
    {
      *v62 = v26;
      v30[1] = v27;
      v21 = (v30 + 4);
      v30[2] = v28;
      v30[3] = v29;
    }

    else
    {
      v31 = __p;
      v32 = v62 - __p;
      v33 = (v62 - __p) >> 5;
      v34 = v33 + 1;
      if ((v33 + 1) >> 59)
      {
        sub_18368964C();
      }

      v35 = v63 - __p;
      if ((v63 - __p) >> 4 > v34)
      {
        v34 = v35 >> 4;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFE0)
      {
        v36 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (!(v36 >> 59))
        {
          operator new();
        }

        sub_183688F00();
      }

      v37 = (v62 - __p) >> 5;
      v38 = (32 * v33);
      *v38 = v26;
      v38[1] = v27;
      v38[2] = v28;
      v38[3] = v29;
      v21 = 32 * v33 + 32;
      v39 = (32 * v33 - 32 * v37);
      memcpy(&v38[-4 * v37], v31, v32);
      __p = v39;
      v63 = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    v62 = v21;
  }

  *&v64 = &__p;
  *(&v64 + 1) = lCopy;
  v40 = sub_18370E5F8(0, 0, &v64, 0, 0, 0);
  v41 = MEMORY[0x1E695DF70];
  v47 = objc_msgSend_strokeCount(self, v42, v43, v44, v45, v46, v40);
  v52 = objc_msgSend_arrayWithCapacity_(v41, v48, v47, v49, v50, v51);
  v57 = objc_msgSend_drawingWithStrokesFromIndexArray_(self, v53, v52, v54, v55, v56);
  if (aware)
  {
    v58 = v52;
    *aware = v52;
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  return v57;
}

- (id)drawingTransformedWithTranslation:(CGVector)translation scaleFactor:(double)factor
{
  dy = translation.dy;
  dx = translation.dx;
  if (factor == 1.0 && translation.dx == 0.0 && translation.dy == 0.0)
  {
    v12 = objc_msgSend_copy(self, a2, v4, v5, v6, v7);
  }

  else
  {
    v12 = objc_alloc_init(CHDrawing);
    for (i = 0; i < objc_msgSend_strokeCount(self, v14, v15, v16, v17, v18); ++i)
    {
      for (j = 0; j < objc_msgSend_pointCountForStrokeIndex_(self, v20, i, v21, v22, v23); ++j)
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(self, v25, i, j, v28, v29);
        objc_msgSend_addPoint_(v12, v32, v33, v34, v35, v36, (dx + v30) * factor, (dy + v31) * factor);
      }

      objc_msgSend_endStroke(v12, v25, v26, v27, v28, v29);
    }
  }

  return v12;
}

- (id)drawingSpatiallyResampled:(double)resampled outputPointMap:(void *)map
{
  STACK[0xF78] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_copy(self, a2, map, v4, v5, v6);
  if (v9)
  {
    sub_1837088E8(&STACK[0xCC0], v9 + 128);
  }

  bzero(&STACK[0xCC0], 0x280uLL);
  sub_183707B88(&STACK[0xA40]);
  resampledCopy = resampled;
  sub_1836FBBE4(&STACK[0xCC0], &STACK[0xA40], map, 0x7FFFFFFFFFFFFFFFLL, resampledCopy);
  sub_1837088E8(&v12, &STACK[0xA40]);
}

- (id)drawingSpatiallyResampled:(double)resampled maxPointsPerStroke:(int64_t)stroke
{
  STACK[0xF78] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_copy(self, a2, stroke, v4, v5, v6);
  if (v9)
  {
    sub_1837088E8(&STACK[0xCC0], v9 + 128);
  }

  bzero(&STACK[0xCC0], 0x280uLL);
  sub_183707B88(&STACK[0xA40]);
  resampledCopy = resampled;
  sub_1836FBBE4(&STACK[0xCC0], &STACK[0xA40], 0, stroke, resampledCopy);
  sub_1837088E8(&v12, &STACK[0xA40]);
}

- (id)drawingResampledWithCatmullRomSplineInterpolation:(double)interpolation
{
  STACK[0x10B8] = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_copy(self, a2, v3, v4, v5, v6);
  if (v8)
  {
    sub_1837088E8(&STACK[0xDE0], v8 + 128);
  }

  bzero(&STACK[0xDE0], 0x280uLL);
  sub_183707B88(&STACK[0xB60]);
  if (STACK[0xE48] == STACK[0xE40])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0xE48] - STACK[0xE40]) >> 3) - (*(STACK[0xE48] - 16) == *(STACK[0xE48] - 24));
  }

  sub_1836FB678(&STACK[0xB60]);
  v10 = STACK[0xBC8];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0xBC8] - STACK[0xBC0]) >> 3);
  if (v9 <= v11)
  {
    if (v9 < v11)
    {
      v12 = STACK[0xBC0] + 24 * v9;
      if (v10 != v12)
      {
        v13 = STACK[0xBC8];
        do
        {
          v15 = *(v13 - 24);
          v13 -= 24;
          v14 = v15;
          if (v15)
          {
            *(v10 - 16) = v14;
            operator delete(v14);
          }

          v10 = v13;
        }

        while (v13 != v12);
      }

      STACK[0xBC8] = v12;
    }
  }

  else
  {
    sub_18370D180(&STACK[0xB60] | 0x60, v9 - v11);
  }

  v16 = STACK[0xB68];
  v17 = 0xAAAAAAAAAAAAAAABLL * ((STACK[0xB68] - STACK[0xB60]) >> 3);
  if (v9 <= v17)
  {
    if (v9 < v17)
    {
      v18 = STACK[0xB60] + 24 * v9;
      if (v16 != v18)
      {
        v19 = STACK[0xB68];
        do
        {
          v21 = *(v19 - 24);
          v19 -= 24;
          v20 = v21;
          if (v21)
          {
            *(v16 - 16) = v20;
            operator delete(v20);
          }

          v16 = v19;
        }

        while (v19 != v18);
      }

      STACK[0xB68] = v18;
    }
  }

  else
  {
    sub_18370D180(&STACK[0xB60], v9 - v17);
  }

  sub_1836FB830(&STACK[0xB60] | 0x18, v9, 0);
  v22 = 0;
  interpolationCopy = interpolation;
  v24 = STACK[0xE48];
  v25 = STACK[0xE40];
  v26 = STACK[0xE48] - STACK[0xE40];
  if (STACK[0xE48] == STACK[0xE40])
  {
LABEL_43:
    sub_1837088E8(&v52, &STACK[0xB60]);
  }

  while (1)
  {
    if (v22 >= 0xAAAAAAAAAAAAAAABLL * (v26 >> 3) - (*(v24 - 16) == *(v24 - 24)))
    {
      goto LABEL_43;
    }

    v27 = (v25 + 24 * v22);
    v28 = *v27;
    v29 = (v27[1] - *v27) >> 3;
    v30 = v29 >> 1;
    v31 = 0.0;
    if (v29 >= 4)
    {
      v32 = v30 - 1;
      if (v30 - 1 >= 4)
      {
        v33 = v32 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v34 = v28 + 2;
        v35 = v32 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v37 = v34[1];
          v36 = v34[2];
          v39 = v34[-2];
          v38 = v34[-1];
          v40 = *v34;
          v34 += 4;
          v41 = vsubq_f64(v40, v38);
          v42 = vsubq_f64(v38, v39);
          v43 = vzip1q_s64(v42, v41);
          v44 = vsubq_f64(v36, v37);
          v45 = vsubq_f64(v37, v40);
          v46 = vzip1q_s64(v45, v44);
          v47 = vsqrtq_f64(vmlaq_f64(vzip2q_s64(vmulq_f64(v42, v42), vmulq_f64(v41, v41)), v43, v43));
          v48 = vsqrtq_f64(vmlaq_f64(vzip2q_s64(vmulq_f64(v45, v45), vmulq_f64(v44, v44)), v46, v46));
          v31 = v31 + v47.f64[0] + v47.f64[1] + v48.f64[0] + v48.f64[1];
          v35 -= 4;
        }

        while (v35);
        if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v33 = 1;
      }

      v49 = v30 - v33;
      f64 = v28[v33].f64;
      do
      {
        v31 = v31 + sqrt((f64[1] - *(f64 - 1)) * (f64[1] - *(f64 - 1)) + (*f64 - *(f64 - 2)) * (*f64 - *(f64 - 2)));
        f64 += 2;
        --v49;
      }

      while (v49);
    }

LABEL_38:
    if (v29 >= 2)
    {
      if (v29 >= 8)
      {
        if (v29 < 0x1FFFFFFFFFFFFFFALL)
        {
          operator new();
        }

        sub_18368964C();
      }

      sub_1836FBD80(&STACK[0xDE0], &STACK[0xB60], v22, 0, (round(v31 / interpolationCopy) + 1.0), interpolationCopy);
    }

    ++v22;
    v24 = STACK[0xE48];
    v25 = STACK[0xE40];
    v26 = STACK[0xE48] - STACK[0xE40];
    if (STACK[0xE48] == STACK[0xE40])
    {
      goto LABEL_43;
    }
  }
}

- (CHDrawing)drawingWithLastStrokes:(int64_t)strokes
{
  v8 = objc_msgSend_strokeCount(self, a2, strokes, v3, v4, v5);
  v9 = v8 - strokes;
  if (v8 <= strokes)
  {
    selfCopy = self;
  }

  else
  {
    v10 = v8;
    selfCopy = objc_alloc_init(CHDrawing);
    v16 = v9 & ~(v9 >> 63);
    if (v16 < v10)
    {
      do
      {
        for (i = 0; i < objc_msgSend_pointCountForStrokeIndex_(self, v11, v16, v12, v13, v14); ++i)
        {
          objc_msgSend_pointForStrokeIndex_pointIndex_(self, v18, v16, i, v21, v22);
          objc_msgSend_addPoint_(selfCopy, v23, v24, v25, v26, v27);
        }

        objc_msgSend_endStroke(selfCopy, v18, v19, v20, v21, v22);
        ++v16;
      }

      while (v16 != v10);
    }
  }

  return selfCopy;
}

- (id)singleStrokeDrawing
{
  if (objc_msgSend_strokeCount(self, a2, v2, v3, v4, v5) > 1)
  {
    v14 = objc_alloc_init(CHDrawing);
    for (i = 0; i < objc_msgSend_strokeCount(self, v9, v10, v11, v12, v13); ++i)
    {
      for (j = 0; j < objc_msgSend_pointCountForStrokeIndex_(self, v16, i, v18, v19, v20); ++j)
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(self, v9, i, j, v12, v13);
        objc_msgSend_addPoint_(v14, v22, v23, v24, v25, v26);
      }
    }

    objc_msgSend_endStroke(v14, v16, v17, v18, v19, v20);
    selfCopy = v14;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (vector<long,)strokeIndicesSortedByMinXCoordinate
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  end = self->_drawing.strokes.__end_;
  p_strokes = &self->_drawing.strokes;
  v6 = end - self->_drawing.strokes.__begin_;
  if (v6 && (v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) - (*(end - 2) == *(end - 3)), v13 = 0, v7 >= 1))
  {
    do
    {
      sub_18367B094(retstr, &v13);
      v13 = (v13 + 1);
    }

    while (v13 < v7);
    var0 = retstr->var0;
    var1 = retstr->var1;
  }

  else
  {
    var1 = 0;
    var0 = 0;
  }

  v10 = 126 - 2 * __clz(var1 - var0);
  v13 = p_strokes;
  if (var1 == var0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return sub_18370ACC0(var0, var1, &v13, v11, 1);
}

- (void)appendSegment:(id)segment fromDrawing:(id)drawing
{
  segmentCopy = segment;
  drawingCopy = drawing;
  v12 = objc_msgSend_startCutPoint(segmentCopy, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIndex(v12, v13, v14, v15, v16, v17);

  v24 = objc_msgSend_endCutPoint(segmentCopy, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_strokeIndex(v24, v25, v26, v27, v28, v29);

  v36 = objc_msgSend_startCutPoint(segmentCopy, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_pointIndex(v36, v37, v38, v39, v40, v41);

  if (v18 <= v30)
  {
    v48 = v18;
    do
    {
      if (v48 != v18)
      {
        v42 = 0;
      }

      v50 = objc_msgSend_endCutPoint(segmentCopy, v43, v44, v45, v46, v47);
      v56 = objc_msgSend_pointIndex(v50, v51, v52, v53, v54, v55);

      v61 = objc_msgSend_pointCountForStrokeIndex_(drawingCopy, v57, v48, v58, v59, v60);
      v62 = v61 - 1;
      if (v61 >= 1)
      {
        if (v48 == v30)
        {
          v62 = v56;
        }

        if (v42 <= v62)
        {
          v63 = v62 + 1;
          v64 = v42;
          do
          {
            objc_msgSend_pointForStrokeIndex_pointIndex_(drawingCopy, v43, v48, v64, v46, v47);
            objc_msgSend_addPoint_(self, v65, v66, v67, v68, v69);
            ++v64;
          }

          while (v63 != v64);
        }

        objc_msgSend_endStroke(self, v43, v44, v45, v46, v47);
      }
    }

    while (v48++ != v30);
  }
}

- (void)appendDrawing:(id)drawing
{
  drawingCopy = drawing;
  for (i = 0; i < objc_msgSend_strokeCount(drawingCopy, v4, v5, v6, v7, v8); ++i)
  {
    for (j = 0; j < objc_msgSend_pointCountForStrokeIndex_(drawingCopy, v10, i, v11, v12, v13); ++j)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(drawingCopy, v15, i, j, v18, v19);
      objc_msgSend_addPoint_(self, v20, v21, v22, v23, v24);
    }

    objc_msgSend_endStroke(self, v15, v16, v17, v18, v19);
  }
}

- (double)averageCharacterHeightEstimation:(double)estimation minChunkHeight:(double)height
{
  v9 = objc_msgSend_strokeCount(self, a2, v4, v5, v6, v7);
  if (v9)
  {
    if (!(v9 >> 59))
    {
      operator new();
    }

    sub_18368964C();
  }

  if (objc_msgSend_strokeCount(self, v10, v11, v12, v13, v14))
  {
    objc_msgSend_boundsForStrokeIndex_(self, v15, 0, v16, v17, v18);
    operator new();
  }

  sub_18370F42C(0, 0, 0, 1);
  v24 = 0;
  v25 = 0;
  v26 = *MEMORY[0x1E695F050];
  heightCopy = *(MEMORY[0x1E695F050] + 24);
  MaxX = -1.79769313e308;
  v29 = 16;
  v46 = 0.0;
  v47 = *(MEMORY[0x1E695F050] + 16);
  v41 = *(MEMORY[0x1E695F050] + 8);
  v42 = *MEMORY[0x1E695F050];
  v48 = v41;
  r2 = v47;
  v43 = heightCopy;
  while (v24 < objc_msgSend_strokeCount(self, v19, v20, v21, v22, v23))
  {
    x = *(v29 - 16);
    y = *(v29 - 8);
    width = *v29;
    height = *(v29 + 8);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = *v29;
    v49.size.height = height;
    MinX = CGRectGetMinX(v49);
    v50.origin.x = v26;
    v50.size.width = v47;
    v50.origin.y = v48;
    v50.size.height = heightCopy;
    IsNull = CGRectIsNull(v50);
    v36 = MinX - MaxX < estimation || IsNull;
    if ((v36 & 1) != 0 || heightCopy < height)
    {
      v51.origin.x = v26;
      v51.size.width = v47;
      v51.origin.y = v48;
      v51.size.height = heightCopy;
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = height;
      v52 = CGRectUnion(v51, v56);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
    }

    else
    {
      ++v25;
      v46 = heightCopy + v46;
      v41 = v48;
      v42 = v26;
      r2 = v47;
      v43 = heightCopy;
    }

    v26 = x;
    v47 = width;
    v48 = y;
    heightCopy = height;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    MaxX = CGRectGetMaxX(v53);
    ++v24;
    v29 += 32;
  }

  if (heightCopy >= height || v25 <= 0)
  {
    v39 = heightCopy + v46;
    ++v25;
  }

  else
  {
    v54.origin.x = v26;
    v54.size.width = v47;
    v54.origin.y = v48;
    v54.size.height = heightCopy;
    v57.origin.y = v41;
    v57.origin.x = v42;
    v57.size.width = r2;
    v57.size.height = v43;
    v55 = CGRectUnion(v54, v57);
    v39 = v46 - v43 + v55.size.height;
  }

  return v39 / v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  STACK[0x598] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9);
  if (objc_msgSend_init(v10, v11, v12, v13, v14, v15))
  {
    sub_1837088E8(&v17, &self->_drawing);
  }

  return 0;
}

- (void)writeToFile
{
  v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3, v4, v5);
  v65 = objc_msgSend_UUIDString(v7, v8, v9, v10, v11, v12);

  v13 = MEMORY[0x1E695DFF8];
  v14 = NSTemporaryDirectory();
  v19 = objc_msgSend_fileURLWithPath_(v13, v15, v14, v16, v17, v18);
  v24 = objc_msgSend_URLByAppendingPathComponent_(v19, v20, v65, v21, v22, v23);

  v25 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v25, v26, @"dd-MM-yyyy-HH-mm-ss-SSS", v27, v28, v29);
  v35 = objc_msgSend_now(MEMORY[0x1E695DF00], v30, v31, v32, v33, v34);
  v40 = objc_msgSend_stringFromDate_(v25, v36, v35, v37, v38, v39);

  v46 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v41, v42, v43, v44, v45);
  v52 = objc_msgSend_UUIDString(v46, v47, v48, v49, v50, v51);
  v57 = objc_msgSend_substringToIndex_(v52, v53, 4, v54, v55, v56);

  v62 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v58, @"/drawing_%@-%@.json", v59, v60, v61, v40, v57);
  objc_msgSend_writeToFileWithContext_folder_basename_(self, v63, &unk_1EF1EB9C8, v24, v62, v64);
}

- (void)writeToFileWithContext:(id)context folder:(id)folder basename:(id)basename
{
  v55 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  folderCopy = folder;
  basenameCopy = basename;
  v10 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v16 = objc_msgSend_absoluteString(folderCopy, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_fileExistsAtPath_(v10, v17, v16, v18, v19, v20);

  if (v21)
  {
    v26 = 0;
LABEL_4:
    v28 = objc_msgSend_jsonRepresentationWithContext_(self, v22, contextCopy, v23, v24, v25);
    v31 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v29, v28, 1, 0, v30);
    v36 = objc_msgSend_URLByAppendingPathComponent_(folderCopy, v32, basenameCopy, v33, v34, v35);
    v49 = 0;
    objc_msgSend_writeToURL_options_error_(v31, v37, v36, 1, &v49, v38);
    v39 = v49;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v40 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v46 = objc_msgSend_absoluteString(v36, v41, v42, v43, v44, v45);
      *buf = 138412546;
      v52 = v46;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_DEFAULT, "Drawing writeToFile saving drawing at URL %@, error = %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v50 = 0;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v10, v22, folderCopy, 1, 0, &v50);
  v26 = v50;
  if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    goto LABEL_4;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v47 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v52 = folderCopy;
    v53 = 2112;
    v54 = v26;
    _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_ERROR, "Drawing unable to create folder at URL %@: Error %@", buf, 0x16u);
  }

LABEL_14:
}

- (id)debugQuickLookObject
{
  objc_msgSend_bounds(self, a2, v2, v3, v4, v5);
  v13 = 1.0;
  v14 = 1.0;
  if (1000.0 / v12 <= 1.0)
  {
    objc_msgSend_bounds(self, v7, v8, v9, v10, v11, 1000.0 / v12);
    v14 = 1000.0 / v15;
  }

  objc_msgSend_bounds(self, v7, v8, v9, v10, v11);
  if (1000.0 / v21 <= 1.0)
  {
    objc_msgSend_bounds(self, v16, v17, v18, v19, v20, 1000.0 / v21);
    v13 = 1000.0 / v22;
  }

  if (v14 >= v13)
  {
    v23 = v13;
  }

  else
  {
    v23 = v14;
  }

  objc_msgSend_bounds(self, v16, v17, v18, v19, v20);
  v25 = (v24 * v23 + 20.0);
  objc_msgSend_bounds(self, v26, v27, v28, v29, v30);
  v32 = (v31 * v23 + 20.0);
  objc_msgSend_bounds(self, v33, v34, v35, v36, v37);
  v39 = v38;
  v41 = v40;
  v42 = malloc_type_malloc(v32 * v25, 0x100004077774924uLL);
  v48 = v42;
  if (v32 * v25)
  {
    memset(v42, 255, v32 * v25);
  }

  if (objc_msgSend_strokeCount(self, v43, v44, v45, v46, v47))
  {
    v53 = 0;
    v90 = v48;
    for (i = objc_msgSend_pointCountForStrokeIndex_(self, v49, 0, v50, v51, v52); ; i = objc_msgSend_pointCountForStrokeIndex_(self, v59, v53, v60, v61, v62))
    {
      v63 = i;
      v64 = objc_msgSend_pointCountForStrokeIndex_(self, v55, v53, v56, v57, v58);
      if (v63 >= 2)
      {
        v48 = v90;
        if (v64 != 1)
        {
          objc_msgSend_pointForStrokeIndex_pointIndex_(self, v65, v53, 0, v68, v69);
          objc_msgSend_pointForStrokeIndex_pointIndex_(self, v75, v53, 1, v76, v77);
          operator new();
        }
      }

      else
      {
        v48 = v90;
        if (!v64)
        {
          free(v90);
          v88 = @"Error: Degenerated drawing (empty stroke present)";
          goto LABEL_30;
        }

        objc_msgSend_pointForStrokeIndex_pointIndex_(self, v65, v53, 0, v68, v69);
        v71 = ((v70 - v41) * v23 + 10.0);
        v73 = ((v72 - v39) * v23 + 10.0);
        v74 = &v90[v71 * v25 + v73];
        *v74 = 0;
        if (v73)
        {
          *(v74 - 1) = 0;
        }

        if (v25 - 1 > v73)
        {
          v74[1] = 0;
        }

        if (v71)
        {
          v90[(v71 - 1) * v25 + v73] = 0;
        }

        if (v32 - 1 > v71)
        {
          v90[v25 + v25 * v71 + v73] = 0;
        }
      }

      if (++v53 >= objc_msgSend_strokeCount(self, v65, v66, v67, v68, v69))
      {
        break;
      }
    }
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v79 = CGBitmapContextCreate(v48, v25, v32, 8uLL, v25, DeviceGray, 0);
  Image = CGBitmapContextCreateImage(v79);
  v92 = 0;
  v93 = &v92;
  v94 = 0x2050000000;
  v81 = qword_1EA84CDD8;
  v95 = qword_1EA84CDD8;
  if (!qword_1EA84CDD8)
  {
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = sub_18370CFB8;
    v91[3] = &unk_1E6DDCCD0;
    v91[4] = &v92;
    sub_18370CFB8(v91);
    v81 = v93[3];
  }

  v82 = v81;
  _Block_object_dispose(&v92, 8);
  v83 = [v81 alloc];
  v88 = objc_msgSend_initWithCGImage_(v83, v84, Image, v85, v86, v87);
  CGImageRelease(Image);
  CGContextRelease(v79);
  CGColorSpaceRelease(DeviceGray);
  free(v48);
LABEL_30:

  return v88;
}

@end