@interface CHNonTextCandidateStroke
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupportedByValidTextStrokesOrNonTextCandidates:(id)candidates;
- (CHNonTextCandidateStroke)initWithCoder:(id)coder;
- (CHNonTextCandidateStroke)initWithStroke:(id)stroke consistingOfSubstrokes:(id)substrokes classificationAsNonText:(int64_t)text lineOrientation:(double)orientation lineError:(double)error containerScore:(double)score fallbackClassification:(int64_t)classification;
- (id)initWithStrokeIdentifier:(double)identifier substrokesCount:(double)count classificationAsNonText:(double)text lineOrientation:(double)orientation lineError:(double)error containerScore:(double)score fallbackClassification:(double)classification bounds:(uint64_t)self0 boundsDiagonal:(void *)self1 enlargedBounds:(void *)self2 rotatedBounds:(void *)self3 supportByStrokeIdentifier:(void *)self4 sizeRatioByStrokeIdentifier:(void *)self5 support:(void *)self6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHNonTextCandidateStroke

- (CHNonTextCandidateStroke)initWithStroke:(id)stroke consistingOfSubstrokes:(id)substrokes classificationAsNonText:(int64_t)text lineOrientation:(double)orientation lineError:(double)error containerScore:(double)score fallbackClassification:(int64_t)classification
{
  strokeCopy = stroke;
  substrokesCopy = substrokes;
  objc_msgSend_bounds(strokeCopy, v14, v15, v16, v17, v18);
  v20 = v19;
  objc_msgSend_bounds(strokeCopy, v21, v22, v23, v24, v25);
  v27 = v26;
  objc_msgSend_bounds(strokeCopy, v28, v29, v30, v31, v32);
  v34 = v33;
  objc_msgSend_bounds(strokeCopy, v35, v36, v37, v38, v39);
  v41 = v40;
  objc_msgSend_bounds(strokeCopy, v42, v43, v44, v45, v46);
  v47 = sqrt(v34 * v41 + v20 * v27);
  v138 = CGRectInset(v137, v47 * -0.5, v47 * -0.5);
  y = v138.origin.y;
  x = v138.origin.x;
  width = v138.size.width;
  height = v138.size.height;
  objc_msgSend_bounds(strokeCopy, v50, v51, v52, v53, v54);
  if (text == 6)
  {
    v64 = objc_msgSend_firstObject(substrokesCopy, v55, v56, v57, v58, v59);
    v70 = objc_msgSend_convexHull(v64, v65, v66, v67, v68, v69);
    __p = 0;
    v135 = 0;
    v136 = 0;
    v71 = v70[1];
    if (v71 != *v70)
    {
      if (((v71 - *v70) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    for (i = 1; i < objc_msgSend_count(substrokesCopy, v76, v77, v78, v79, v80); ++i)
    {
      v86 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v82, i, v83, v84, v85);
      v92 = objc_msgSend_convexHull(v86, v87, v88, v89, v90, v91);
      v93 = v92[1] - *v92;

      if (v93 >> 4)
      {
        v94 = objc_msgSend_objectAtIndexedSubscript_(substrokesCopy, v76, i, v78, v79, v80);
        objc_msgSend_convexHull(v94, v95, v96, v97, v98, v99);
        operator new();
      }
    }

    v100 = objc_opt_class();
    objc_msgSend_boundingBoxOfPoints_rotatedAroundPoint_byAngle_(v100, v101, &__p, v102, v103, v104, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), -orientation);
    v72 = v105;
    v73 = v106;
    v74 = v107;
    v75 = v108;
    text = 6;
    if (__p)
    {
      v135 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
  }

  v109 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v55, v56, v57, v58, v59);
  v115 = objc_msgSend_count(substrokesCopy, v110, v111, v112, v113, v114);
  objc_msgSend_bounds(strokeCopy, v116, v117, v118, v119, v120);
  v126 = objc_msgSend_initWithStrokeIdentifier_substrokesCount_classificationAsNonText_lineOrientation_lineError_containerScore_fallbackClassification_bounds_boundsDiagonal_enlargedBounds_rotatedBounds_supportByStrokeIdentifier_sizeRatioByStrokeIdentifier_support_(self, v121, v109, v115, text, classification, 0, 0, orientation, error, score, v122, v123, v124, v125, v47, *&x, *&y, *&width, *&height, v72, v73, v74, v75, 0);

  return v126;
}

- (id)initWithStrokeIdentifier:(double)identifier substrokesCount:(double)count classificationAsNonText:(double)text lineOrientation:(double)orientation lineError:(double)error containerScore:(double)score fallbackClassification:(double)classification bounds:(uint64_t)self0 boundsDiagonal:(void *)self1 enlargedBounds:(void *)self2 rotatedBounds:(void *)self3 supportByStrokeIdentifier:(void *)self4 sizeRatioByStrokeIdentifier:(void *)self5 support:(void *)self6
{
  diagonalCopy = diagonal;
  byStrokeIdentifierCopy = byStrokeIdentifier;
  supportCopy = support;
  v60.receiver = self;
  v60.super_class = CHNonTextCandidateStroke;
  v43 = objc_msgSendSuper2(&v60, sel_init);
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(v43 + 11, diagonal);
    v44[5] = rotatedBounds;
    v44[6] = enlargedBounds;
    v44[4] = strokeIdentifier;
    *(v44 + 7) = identifier;
    *(v44 + 8) = count;
    *(v44 + 12) = text;
    *(v44 + 13) = orientation;
    *(v44 + 14) = error;
    *(v44 + 15) = score;
    *(v44 + 9) = a2;
    *(v44 + 10) = classification;
    v44[16] = a17;
    v44[17] = a18;
    v44[18] = a19;
    v44[19] = a20;
    v44[20] = a21;
    v44[21] = a22;
    v44[22] = a23;
    v44[23] = a24;
    if (byStrokeIdentifierCopy)
    {
      v50 = objc_msgSend_mutableCopy(byStrokeIdentifierCopy, v45, v46, v47, v48, v49);
    }

    else
    {
      v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v51 = v44[1];
    v44[1] = v50;

    if (supportCopy)
    {
      v57 = objc_msgSend_mutableCopy(supportCopy, v52, v53, v54, v55, v56);
    }

    else
    {
      v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v58 = v44[2];
    v44[2] = v57;

    v44[3] = a25;
  }

  return v44;
}

- (BOOL)isSupportedByValidTextStrokesOrNonTextCandidates:(id)candidates
{
  v77 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  if (self)
  {
    v9 = objc_msgSend_allKeys(self->_supportByStrokeIdentifier, v4, v5, v6, v7, v8);
    v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  }

  else
  {
    self = 0;
    v9 = 0;
    v15 = objc_msgSend_count(0, v4, v5, v6, v7, v8);
  }

  v16 = v15;

  if (v16)
  {
    v64 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    if (self)
    {
      obj = objc_msgSend_allKeys(self->_supportByStrokeIdentifier, v22, v23, v24, v25, v26, self);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v71, v76, 16, v28, v62);
    }

    else
    {
      obj = 0;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(0, v22, &v71, v76, 16, v26, 0);
    }

    v30 = v29;
    if (v29)
    {
      v31 = *v72;
      do
      {
        v32 = 0;
        do
        {
          if (*v72 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v71 + 1) + 8 * v32);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v36 = candidatesCopy;
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v67, v75, 16, v38);
          if (v39)
          {
            v40 = *v68;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v68 != v40)
                {
                  objc_enumerationMutation(v36);
                }

                v42 = *(*(&v67 + 1) + 8 * i);
                if (v42)
                {
                  v42 = v42[11];
                }

                v43 = v42;
                isEqual = objc_msgSend_isEqual_(v35, v44, v43, v45, v46, v47);

                if (isEqual)
                {

                  goto LABEL_10;
                }
              }

              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v49, &v67, v75, 16, v50);
            }

            while (v39);
          }

          objc_msgSend_addObject_(v64, v51, v35, v52, v53, v54);
LABEL_10:
          ++v32;
        }

        while (v32 != v30);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v71, v76, 16, v34);
      }

      while (v30);
    }

    if (objc_msgSend_count(v64, v55, v56, v57, v58, v59))
    {
      v60 = sub_183730C6C(v63, v64) > 0.07;
    }

    else
    {
      v60 = 1;
    }
  }

  else
  {
    v60 = 1;
  }

  return v60;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_strokeIdentifier, @"strokeIdentifier", v5, v6);
  }

  else
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v4, 0, @"strokeIdentifier", v5, v6);
  }

  if (self)
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_substrokesCount, @"substrokesCount", v8, v9);
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v7, 0, @"substrokesCount", v8, v9);
  }

  if (self)
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v10, self->_classificationAsNonText, @"classificationAsNonText", v11, v12);
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v10, 0, @"classificationAsNonText", v11, v12);
  }

  if (self)
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v13, self->_fallbackClassification, @"fallbackClassification", v14, v15);
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v13, 0, @"fallbackClassification", v14, v15);
  }

  if (self)
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v16, @"lineOrientation", v17, v18, v19, self->_lineOrientationAngle);
  }

  else
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v16, @"lineOrientation", v17, v18, v19, 0.0);
  }

  if (self)
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v20, @"lineError", v21, v22, v23, self->_lineError);
  }

  else
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v20, @"lineError", v21, v22, v23, 0.0);
  }

  if (self)
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v24, @"containerScore", v25, v26, v27, self->_containerScore);
  }

  else
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v24, @"containerScore", v25, v26, v27, 0.0);
  }

  v31 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v28, &self->_bounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"bounds", v33, v34);
  if (self)
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v35, @"boundsDiagonal", v36, v37, v38, self->_boundsDiagonal);
  }

  else
  {
    objc_msgSend_encodeDouble_forKey_(coderCopy, v35, @"boundsDiagonal", v36, v37, v38, 0.0);
  }

  v42 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v39, &self->_enlargedBounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v40, v41);
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, v42, @"enlargedBounds", v44, v45);
  v49 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v46, &self->_rotatedBounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v47, v48);
  objc_msgSend_encodeObject_forKey_(coderCopy, v50, v49, @"rotatedBounds", v51, v52);
  v58 = objc_msgSend_supportByStrokeIdentifier(self, v53, v54, v55, v56, v57);
  objc_msgSend_encodeObject_forKey_(coderCopy, v59, v58, @"supportByStrokeIdentifier", v60, v61);

  v67 = objc_msgSend_sizeRatioByStrokeIdentifier(self, v62, v63, v64, v65, v66);
  objc_msgSend_encodeObject_forKey_(coderCopy, v68, v67, @"sizeRatioByStrokeIdentifier", v69, v70);

  objc_msgSend_support(self, v71, v72, v73, v74, v75);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v76, @"support", v77, v78, v79);
}

- (CHNonTextCandidateStroke)initWithCoder:(id)coder
{
  v121[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  selfCopy = self;
  v5 = objc_opt_class();
  v111 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"strokeIdentifier", v7, v8);
  v109 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"substrokesCount", v10, v11, v12);
  v108 = objc_msgSend_decodeIntegerForKey_(coderCopy, v13, @"classificationAsNonText", v14, v15, v16);
  v107 = objc_msgSend_decodeIntegerForKey_(coderCopy, v17, @"fallbackClassification", v18, v19, v20);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v21, @"lineOrientation", v22, v23, v24);
  v26 = v25;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v27, @"lineError", v28, v29, v30);
  v32 = v31;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v33, @"containerScore", v34, v35, v36);
  v38 = v37;
  v39 = objc_opt_class();
  v43 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"bounds", v41, v42);
  v44 = *(MEMORY[0x1E695F050] + 16);
  v118 = *MEMORY[0x1E695F050];
  v119 = v44;
  v106 = v43;
  objc_msgSend_getValue_size_(v43, v45, &v118, 32, v46, v47);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v48, @"boundsDiagonal", v49, v50, v51);
  v53 = v52;
  v54 = objc_opt_class();
  v58 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v55, v54, @"enlargedBounds", v56, v57);
  objc_msgSend_getValue_size_(v58, v59, &v115, 32, v60, v61);
  v62 = objc_opt_class();
  v66 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v63, v62, @"rotatedBounds", v64, v65);
  objc_msgSend_getValue_size_(v66, v67, &v112, 32, v68, v69);
  v70 = MEMORY[0x1E695DFD8];
  v121[0] = objc_opt_class();
  v121[1] = objc_opt_class();
  v121[2] = objc_opt_class();
  v74 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v71, v121, 3, v72, v73);
  v79 = objc_msgSend_setWithArray_(v70, v75, v74, v76, v77, v78);
  v83 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v80, v79, @"supportByStrokeIdentifier", v81, v82);

  v84 = MEMORY[0x1E695DFD8];
  v120[0] = objc_opt_class();
  v120[1] = objc_opt_class();
  v120[2] = objc_opt_class();
  v88 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v85, v120, 3, v86, v87);
  v93 = objc_msgSend_setWithArray_(v84, v89, v88, v90, v91, v92);
  v97 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v94, v93, @"sizeRatioByStrokeIdentifier", v95, v96);

  objc_msgSend_decodeDoubleForKey_(coderCopy, v98, @"support", v99, v100, v101);
  v104 = objc_msgSend_initWithStrokeIdentifier_substrokesCount_classificationAsNonText_lineOrientation_lineError_containerScore_fallbackClassification_bounds_boundsDiagonal_enlargedBounds_rotatedBounds_supportByStrokeIdentifier_sizeRatioByStrokeIdentifier_support_(selfCopy, v102, v111, v109, v108, v107, v83, v97, v26, v32, v38, v118, v119, v53, v115, v116, v117, v112, v113, v114, v103);

  return v104;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v10 = v5;
    if (self)
    {
      if (self != v5)
      {
        strokeIdentifier = self->_strokeIdentifier;
        if (v5)
        {
          v12 = v5->_strokeIdentifier;
          if (strokeIdentifier != v12)
          {
            v13 = v10->_strokeIdentifier;
            strokeIdentifier = self->_strokeIdentifier;
            goto LABEL_7;
          }
        }

        else
        {
          v12 = 0;
          v13 = 0;
          if (strokeIdentifier)
          {
LABEL_7:
            isEqual = objc_msgSend_isEqual_(v13, v6, strokeIdentifier, v7, v8, v9);

            if (!isEqual)
            {
              goto LABEL_38;
            }

LABEL_13:
            substrokesCount = self->_substrokesCount;
            if (v10)
            {
              if (substrokesCount != v10->_substrokesCount || self->_classificationAsNonText != v10->_classificationAsNonText || self->_fallbackClassification != v10->_fallbackClassification || vabdd_f64(self->_lineOrientationAngle, v10->_lineOrientationAngle) >= 2.22044605e-16 || vabdd_f64(self->_lineError, v10->_lineError) >= 2.22044605e-16)
              {
                goto LABEL_38;
              }

              containerScore = v10->_containerScore;
            }

            else
            {
              if (substrokesCount)
              {
                goto LABEL_38;
              }

              if (self->_classificationAsNonText)
              {
                goto LABEL_38;
              }

              if (self->_fallbackClassification)
              {
                goto LABEL_38;
              }

              if (fabs(self->_lineOrientationAngle) >= 2.22044605e-16)
              {
                goto LABEL_38;
              }

              containerScore = 0.0;
              if (fabs(self->_lineError) >= 2.22044605e-16)
              {
                goto LABEL_38;
              }
            }

            if (vabdd_f64(self->_containerScore, containerScore) >= 2.22044605e-16)
            {
              goto LABEL_38;
            }

            if (v10)
            {
              x = v10->_bounds.origin.x;
              y = v10->_bounds.origin.y;
              width = v10->_bounds.size.width;
              height = v10->_bounds.size.height;
            }

            else
            {
              y = 0.0;
              width = 0.0;
              height = 0.0;
              x = 0.0;
            }

            if (!CGRectEqualToRect(self->_bounds, *&x))
            {
              goto LABEL_38;
            }

            boundsDiagonal = self->_boundsDiagonal;
            if (v10)
            {
              if (vabdd_f64(boundsDiagonal, v10->_boundsDiagonal) >= 2.22044605e-16)
              {
LABEL_38:
                LOBYTE(self) = 0;
                goto LABEL_39;
              }
            }

            else if (vabdd_f64(boundsDiagonal, 0.0) >= 2.22044605e-16)
            {
              goto LABEL_38;
            }

            if (v10)
            {
              v22 = v10->_enlargedBounds.origin.x;
              v23 = v10->_enlargedBounds.origin.y;
              v24 = v10->_enlargedBounds.size.width;
              v25 = v10->_enlargedBounds.size.height;
            }

            else
            {
              v23 = 0.0;
              v24 = 0.0;
              v25 = 0.0;
              v22 = 0.0;
            }

            if (!CGRectEqualToRect(self->_enlargedBounds, *&v22))
            {
              goto LABEL_38;
            }

            if (v10)
            {
              v26 = v10->_rotatedBounds.origin.x;
              v27 = v10->_rotatedBounds.origin.y;
              v28 = v10->_rotatedBounds.size.width;
              v29 = v10->_rotatedBounds.size.height;
            }

            else
            {
              v27 = 0.0;
              v28 = 0.0;
              v29 = 0.0;
              v26 = 0.0;
            }

            if (!CGRectEqualToRect(self->_rotatedBounds, *&v26))
            {
              goto LABEL_38;
            }

            supportByStrokeIdentifier = self->_supportByStrokeIdentifier;
            v36 = objc_msgSend_supportByStrokeIdentifier(v10, v30, v31, v32, v33, v34);
            v42 = v36;
            if (supportByStrokeIdentifier == v36)
            {
            }

            else
            {
              v43 = objc_msgSend_supportByStrokeIdentifier(v10, v37, v38, v39, v40, v41);
              v48 = objc_msgSend_isEqual_(v43, v44, self->_supportByStrokeIdentifier, v45, v46, v47);

              if (!v48)
              {
                goto LABEL_38;
              }
            }

            sizeRatioByStrokeIdentifier = self->_sizeRatioByStrokeIdentifier;
            v55 = objc_msgSend_sizeRatioByStrokeIdentifier(v10, v49, v50, v51, v52, v53);
            v61 = v55;
            if (sizeRatioByStrokeIdentifier == v55)
            {
            }

            else
            {
              v62 = objc_msgSend_sizeRatioByStrokeIdentifier(v10, v56, v57, v58, v59, v60);
              v67 = objc_msgSend_isEqual_(v62, v63, self->_sizeRatioByStrokeIdentifier, v64, v65, v66);

              if (!v67)
              {
                goto LABEL_38;
              }
            }

            support = self->_support;
            objc_msgSend_support(v10, v68, v69, v70, v71, v72);
            LOBYTE(self) = vabdd_f64(support, v75) < 2.22044605e-16;
            goto LABEL_39;
          }
        }

        goto LABEL_13;
      }

      LOBYTE(self) = 1;
    }

LABEL_39:

    goto LABEL_40;
  }

  LOBYTE(self) = 0;
LABEL_40:

  return self;
}

- (unint64_t)hash
{
  v224 = objc_msgSend_hash(self->_strokeIdentifier, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v7, v8, v9, v10, v11, self->_lineOrientationAngle);
  v223 = objc_msgSend_hash(v12, v13, v14, v15, v16, v17);

  v23 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, v20, v21, v22, self->_lineError);
  v222 = objc_msgSend_hash(v23, v24, v25, v26, v27, v28);

  v34 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, v31, v32, v33, self->_containerScore);
  v221 = objc_msgSend_hash(v34, v35, v36, v37, v38, v39);

  v45 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v40, v41, v42, v43, v44, self->_bounds.origin.x);
  v220 = objc_msgSend_hash(v45, v46, v47, v48, v49, v50);
  v56 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v51, v52, v53, v54, v55, self->_bounds.origin.y);
  v219 = objc_msgSend_hash(v56, v57, v58, v59, v60, v61);
  v67 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v62, v63, v64, v65, v66, self->_bounds.size.width);
  v218 = objc_msgSend_hash(v67, v68, v69, v70, v71, v72);
  v78 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v73, v74, v75, v76, v77, self->_bounds.size.height);
  v217 = objc_msgSend_hash(v78, v79, v80, v81, v82, v83);

  v89 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v84, v85, v86, v87, v88, self->_boundsDiagonal);
  v216 = objc_msgSend_hash(v89, v90, v91, v92, v93, v94);

  v100 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v95, v96, v97, v98, v99, self->_enlargedBounds.origin.x);
  v215 = objc_msgSend_hash(v100, v101, v102, v103, v104, v105);
  v111 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v106, v107, v108, v109, v110, self->_enlargedBounds.origin.y);
  v214 = objc_msgSend_hash(v111, v112, v113, v114, v115, v116);
  v122 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v117, v118, v119, v120, v121, self->_enlargedBounds.size.width);
  v213 = objc_msgSend_hash(v122, v123, v124, v125, v126, v127);
  v133 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v128, v129, v130, v131, v132, self->_enlargedBounds.size.height);
  v212 = objc_msgSend_hash(v133, v134, v135, v136, v137, v138);

  v144 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v139, v140, v141, v142, v143, self->_rotatedBounds.origin.x);
  v150 = objc_msgSend_hash(v144, v145, v146, v147, v148, v149);
  v156 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v151, v152, v153, v154, v155, self->_rotatedBounds.origin.y);
  v162 = objc_msgSend_hash(v156, v157, v158, v159, v160, v161);
  v168 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v163, v164, v165, v166, v167, self->_rotatedBounds.size.width);
  v174 = objc_msgSend_hash(v168, v169, v170, v171, v172, v173);
  v180 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v175, v176, v177, v178, v179, self->_rotatedBounds.size.height);
  v186 = objc_msgSend_hash(v180, v181, v182, v183, v184, v185);

  v192 = objc_msgSend_hash(self->_supportByStrokeIdentifier, v187, v188, v189, v190, v191);
  v198 = objc_msgSend_hash(self->_sizeRatioByStrokeIdentifier, v193, v194, v195, v196, v197);
  v204 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v199, v200, v201, v202, v203, self->_support);
  v210 = objc_msgSend_hash(v204, v205, v206, v207, v208, v209);

  return v223 ^ v224 ^ v222 ^ v221 ^ v220 ^ v219 ^ v218 ^ v217 ^ v216 ^ v215 ^ v214 ^ v213 ^ v212 ^ v150 ^ v162 ^ v174 ^ v186 ^ v192 ^ v198 ^ v210 ^ self->_substrokesCount ^ self->_classificationAsNonText ^ self->_fallbackClassification;
}

@end