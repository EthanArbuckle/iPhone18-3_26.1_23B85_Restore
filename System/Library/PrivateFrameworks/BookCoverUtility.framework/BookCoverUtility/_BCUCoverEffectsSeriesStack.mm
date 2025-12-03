@interface _BCUCoverEffectsSeriesStack
- (CGPoint)_positionForImageAtIndex:(int64_t)index imageSetCount:(int64_t)count coverWidth:(double)width coverAreaWidth:(double)areaWidth isRTL:(BOOL)l;
- (_BCUCoverEffectsSeriesStack)initWithIdentifier:(id)identifier renderer:(id)renderer;
- (double)_coverScaleForIndex:(unint64_t)index;
- (id)_stackLayerForDiagonalstyleWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale insets:(UIEdgeInsets *)insets path:(const CGPath *)path;
- (id)_stackLayerForHorizontalstyleWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale insets:(UIEdgeInsets *)insets path:(const CGPath *)path isRTL:(BOOL)l;
- (id)_stackLayerWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale insets:(UIEdgeInsets *)insets path:(const CGPath *)path;
- (id)newOperationWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale waitForCPUSynchronization:(BOOL)synchronization completion:(id)completion;
@end

@implementation _BCUCoverEffectsSeriesStack

- (_BCUCoverEffectsSeriesStack)initWithIdentifier:(id)identifier renderer:(id)renderer
{
  identifierCopy = identifier;
  rendererCopy = renderer;
  v12.receiver = self;
  v12.super_class = _BCUCoverEffectsSeriesStack;
  v9 = [(_BCUCoverEffectsSeriesStack *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_renderer, renderer);
  }

  return v10;
}

- (id)newOperationWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale waitForCPUSynchronization:(BOOL)synchronization completion:(id)completion
{
  synchronizationCopy = synchronization;
  height = size.height;
  width = size.width;
  imagesCopy = images;
  filtersCopy = filters;
  completionCopy = completion;
  if (objc_msgSend_count(imagesCopy, v18, v19))
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[3] = &unk_241C885FE;
    v40[2] = 0x4010000000;
    v41 = BCUInsetsZero;
    v42 = *&qword_241C86DD0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    v22 = objc_msgSend_renderer(self, v20, v21);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_241C81DF0;
    v31[3] = &unk_278D14168;
    v31[4] = self;
    v32 = imagesCopy;
    v36 = width;
    v37 = height;
    scaleCopy = scale;
    v33 = filtersCopy;
    v34 = v40;
    v35 = v39;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_241C81E1C;
    v27[3] = &unk_278D14190;
    v28 = completionCopy;
    v29 = v40;
    v30 = v39;
    LODWORD(v23) = 1056964608;
    v25 = objc_msgSend_newOperationWithPriority_waitForCPUSynchronization_logKey_renderLayer_completion_(v22, v24, synchronizationCopy, 0, v31, v27, v23);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v40, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    v25 = 0;
  }

  return v25;
}

- (double)_coverScaleForIndex:(unint64_t)index
{
  result = 1.0;
  if (index - 1 <= 3)
  {
    return dbl_241C86DA0[index - 1];
  }

  return result;
}

- (CGPoint)_positionForImageAtIndex:(int64_t)index imageSetCount:(int64_t)count coverWidth:(double)width coverAreaWidth:(double)areaWidth isRTL:(BOOL)l
{
  if (index)
  {
    if (count - 1 == index)
    {
      v7 = areaWidth * 0.0;
      v8 = areaWidth - width;
    }

    else if (index == 3)
    {
      v7 = areaWidth * 0.04;
      v8 = -(width - areaWidth * 0.96);
    }

    else
    {
      if (index == 2)
      {
        v10 = -width;
        if (count == 4)
        {
          v7 = areaWidth * 0.09;
          v11 = 0.91;
        }

        else
        {
          v7 = areaWidth * 0.12;
          v11 = 0.88;
        }
      }

      else
      {
        v7 = 0.0;
        if (index != 1)
        {
          goto LABEL_22;
        }

        v10 = -width;
        if (count == 4)
        {
          v7 = areaWidth * 0.24;
          v11 = 0.76;
        }

        else if (count == 3)
        {
          v7 = areaWidth * 0.17;
          v11 = 0.83;
        }

        else
        {
          v7 = areaWidth * 0.25;
          v11 = 0.75;
        }
      }

      v8 = v10 + areaWidth * v11;
    }

    if (!l)
    {
      v7 = v8;
    }
  }

  else
  {
    v9 = areaWidth - width;
    if (l)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0.0;
    }
  }

LABEL_22:
  v12 = 0.0;
  v13 = v7;
  result.y = v12;
  result.x = v13;
  return result;
}

- (id)_stackLayerForHorizontalstyleWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale insets:(UIEdgeInsets *)insets path:(const CGPath *)path isRTL:(BOOL)l
{
  lCopy = l;
  width = size.width;
  height = size.height;
  v151[1] = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  filtersCopy = filters;
  v17 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v15, v16);
  v19 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v18, MEMORY[0x277CBEBF8]);
  v22 = objc_msgSend_count(imagesCopy, v20, v21);
  if (v22 >= 5)
  {
    v25 = 5;
  }

  else
  {
    v25 = v22;
  }

  if (v22)
  {
    v26 = 0;
    v28 = *MEMORY[0x277CBF3A8];
    v27 = *(MEMORY[0x277CBF3A8] + 8);
    v29 = *MEMORY[0x277CBF348];
    v30 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      v31 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v23, v26);

      v33 = objc_msgSend_objectAtIndexedSubscript_(filtersCopy, v32, v26);
      objc_msgSend__coverScaleForIndex_(self, v34, v26);
      v37 = v27;
      v38 = v28;
      if (v31)
      {
        v38 = sub_241C80F64(v31, width * 0.536 * v36, height * v36, scale);
        v37 = v39;
      }

      v40 = objc_msgSend_coverLayerWithImage_size_contentsScale_(v33, v35, v31, v38, v37, scale);
      objc_msgSend_setAnchorPoint_(v40, v41, v42, v29, v30);
      objc_msgSend__positionForImageAtIndex_imageSetCount_coverWidth_coverAreaWidth_isRTL_(self, v43, v26, v25, lCopy, v38, width);
      objc_msgSend_setPosition_(v40, v44, v45);
      objc_msgSend_addObject_(v19, v46, v40);

      ++v26;
    }

    while (v25 != v26);
  }

  v47 = objc_msgSend_count(v19, v23, v24);
  if (v47 - 1 >= 0)
  {
    v50 = v47;
    v51 = 0.0;
    v52 = 0.0;
    do
    {
      v53 = objc_msgSend_objectAtIndexedSubscript_(v19, v48, --v50);
      if (v50 == objc_msgSend_count(v19, v54, v55) - 1)
      {
        objc_msgSend_addSublayer_(v17, v56, v53);
      }

      else
      {
        v60 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v56, v57);
        objc_msgSend__coverScaleForIndex_(self, v61, v50);
        v63 = v62;
        objc_msgSend_setMasksToBounds_(v60, v64, 0);
        objc_msgSend_setShadowRadius_(v60, v65, v66, v63 * 1.2);
        LODWORD(v67) = 0.5;
        objc_msgSend_setShadowOpacity_(v60, v68, v69, v67);
        objc_msgSend_setShouldRasterize_(v60, v70, 1);
        objc_msgSend_setRasterizationScale_(v60, v71, v72, 1.0);
        if (qword_27EC698F8 != -1)
        {
          sub_241C85C00();
        }

        objc_msgSend_setShadowColor_(v60, v73, qword_27EC698F0);
        objc_msgSend_setShadowOffset_(v60, v74, v75, 0.0, 0.0);
        objc_msgSend_frame(v53, v76, v77);
        v79 = v78;
        objc_msgSend_size(v53, v80, v81);
        v83 = v79 + v82 + -0.5;
        Mutable = CGPathCreateMutable();
        v153.origin.x = v83;
        v153.origin.y = v51 + 1.0;
        v153.size.width = v63 * 4.0;
        v153.size.height = v52 + -2.0;
        CGPathAddRect(Mutable, 0, v153);
        objc_msgSend_setShadowPath_(v60, v85, Mutable);
        CGPathRelease(Mutable);
        objc_msgSend_addSublayer_(v17, v86, v60);
        objc_msgSend_addSublayer_(v17, v87, v53);
      }

      objc_msgSend_frame(v53, v58, v59);
      v51 = v88;
      objc_msgSend_frame(v53, v89, v90);
      v52 = v91;
    }

    while (v50 > 0);
  }

  v143 = filtersCopy;
  objc_msgSend_setBounds_(v17, v48, v49, 0.0, 0.0, width, height);
  v154.origin.x = sub_241C82684(v17);
  x = v154.origin.x;
  y = v154.origin.y;
  v94 = v154.size.width;
  v95 = v154.size.height;
  v140 = fmax(0.0 - CGRectGetMinX(v154), 0.0);
  v155.origin.x = x;
  v155.origin.y = y;
  v155.size.width = v94;
  v155.size.height = v95;
  v96 = fmax(0.0 - CGRectGetMinY(v155), 0.0);
  v156.origin.x = x;
  v156.origin.y = y;
  v156.size.width = v94;
  v156.size.height = v95;
  MaxX = CGRectGetMaxX(v156);
  objc_msgSend_bounds(v17, v98, v99);
  v100 = fmax(MaxX - CGRectGetMaxX(v157), 0.0);
  v158.origin.x = x;
  v158.origin.y = y;
  v158.size.width = v94;
  v158.size.height = v95;
  MaxY = CGRectGetMaxY(v158);
  objc_msgSend_bounds(v17, v102, v103);
  v104 = fmax(MaxY - CGRectGetMaxY(v159), 0.0);
  v107 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v105, v106);
  v108 = v140;
  objc_msgSend_setFrame_(v107, v109, v110, 0.0, 0.0, width + v140 + v100, height + v96 + v104);
  v151[0] = v17;
  v112 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v111, v151, 1);
  objc_msgSend_setSublayers_(v107, v113, v112);

  objc_msgSend_setPosition_(v17, v114, v115, v140 + width * 0.5, v96 + height * 0.5);
  v116 = CGPathCreateMutable();
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v119 = objc_msgSend_sublayers(v17, v117, v118);
  v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v120, &v146, v150, 16);
  if (v121)
  {
    v124 = v121;
    v125 = *v147;
    do
    {
      for (i = 0; i != v124; ++i)
      {
        if (*v147 != v125)
        {
          objc_enumerationMutation(v119);
        }

        v127 = *(*(&v146 + 1) + 8 * i);
        objc_msgSend_bounds(v127, v122, v123, *&v140);
        objc_msgSend_convertRect_toLayer_(v127, v128, v107);
        CGPathAddRect(v116, 0, v160);
      }

      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v122, &v146, v150, 16);
    }

    while (v124);
  }

  v131 = objc_msgSend_sublayers(v17, v129, v130);
  v134 = objc_msgSend_count(v131, v132, v133);

  if (!v134)
  {
    objc_msgSend_bounds(v107, v135, v136);
    CGPathAddRect(v116, 0, v161);
  }

  if (insets)
  {
    insets->top = v96;
    insets->left = v108;
    insets->bottom = v104;
    insets->right = v100;
  }

  if (path)
  {
    *path = CGPathRetain(v116);
  }

  CGPathRelease(v116);
  objc_msgSend_setRasterizationScale_(v107, v137, v138, scale);

  return v107;
}

- (id)_stackLayerForDiagonalstyleWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale insets:(UIEdgeInsets *)insets path:(const CGPath *)path
{
  height = size.height;
  width = size.width;
  v139[1] = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  filtersCopy = filters;
  v17 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v15, v16);
  if (objc_msgSend_count(imagesCopy, v18, v19) <= 1)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.85;
  }

  Object = objc_msgSend_firstObject(imagesCopy, v20, v21);
  if (objc_msgSend_count(imagesCopy, v24, v25) < 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v26, 1);
  }

  v29 = objc_msgSend_firstObject(filtersCopy, v26, v27);
  if (objc_msgSend_count(filtersCopy, v30, v31) < 2)
  {
    v131 = 0;
  }

  else
  {
    v131 = objc_msgSend_objectAtIndexedSubscript_(filtersCopy, v32, 1);
  }

  v130 = filtersCopy;
  scaleCopy = scale;
  pathCopy = path;
  v126 = v29;
  if (Object)
  {
    v35 = sub_241C80F64(Object, width, height, scale);
    v37 = v36;
    v132 = height;
    if (v28)
    {
      v38 = sub_241C80F64(v28, width, height, scale);
      v40 = v39;
    }

    else
    {
      v38 = *MEMORY[0x277CBF3A8];
      v40 = *(MEMORY[0x277CBF3A8] + 8);
    }

    v43 = objc_msgSend_coverLayerWithImage_size_contentsScale_(v29, v34, Object, v35, v37, scale);
    if (!v28)
    {
      v44 = objc_msgSend_shadowLayerWithImage_size_contentsScale_kind_(v29, v46, Object, 0, v35, v37, scale);
      v48 = 0;
      v50 = 0;
      v45 = 0;
      v51 = 1;
      if (v44)
      {
LABEL_21:
        objc_msgSend_addSublayer_(v17, v32, v44);
      }

LABEL_22:
      v125 = v48 != 0;
      if (v48)
      {
        if (v45)
        {
          objc_msgSend_addSublayer_(v48, v32, v45);
        }

        objc_msgSend_addSublayer_(v17, v32, v48);
      }

      v52 = v40;
      v53 = v43 != 0;
      if (v43)
      {
        objc_msgSend_addSublayer_(v17, v32, v43);
        v54 = v132;
        v55 = fmin(width, v132) * (1.0 - v22);
        if (v51)
        {
          v53 = 1;
LABEL_31:
          v56 = v54;
          v57 = width;
          v122 = v55;
LABEL_33:
          v58 = v38;
          v59 = v55;
          goto LABEL_34;
        }
      }

      else
      {
        v54 = v132;
        v55 = fmin(width, v132) * (1.0 - v22);
        if (v51)
        {
          v43 = 0;
          v53 = 0;
          goto LABEL_31;
        }
      }

      v122 = v55 + fmax(width * 0.1 - (v35 + v55 - v38), 0.0);
      v57 = fmax(v22 * v38, v122 + v35 * v22);
      v56 = fmax(v22 * v40, v55 + v37 * v22);
      goto LABEL_33;
    }

    v44 = objc_msgSend_shadowLayerWithImage_size_contentsScale_kind_(v29, v46, Object, 1, v35, v37, scale);
    v45 = objc_msgSend_shadowLayerWithImage_size_contentsScale_kind_(v29, v47, Object, 2, v35, v37, scale);
LABEL_18:
    v48 = objc_msgSend_coverLayerWithImage_size_contentsScale_(v131, v41, v28, v38, v40, scale);
    v50 = objc_msgSend_shadowLayerWithImage_size_contentsScale_kind_(v131, v49, v28, 0, v38, v40, scale);
    if (v50)
    {
      objc_msgSend_addSublayer_(v17, v32, v50);
    }

    v51 = 0;
    if (v44)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v35 = *MEMORY[0x277CBF3A8];
  v37 = *(MEMORY[0x277CBF3A8] + 8);
  if (v28)
  {
    v132 = height;
    v38 = sub_241C80F64(v28, width, height, scale);
    v40 = v42;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_18;
  }

  v125 = 0;
  v48 = 0;
  v50 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v53 = 0;
  v120 = height;
  v121 = fmin(width, height) * (1.0 - v22);
  v52 = *(MEMORY[0x277CBF3A8] + 8);
  v58 = *MEMORY[0x277CBF3A8];
  v56 = v120;
  v57 = width;
  v59 = v121;
  v122 = v121;
LABEL_34:
  v60 = v56;
  objc_msgSend_setBounds_(v17, v32, v33, 0.0, 0.0, v57, *&v122);
  v61 = v57;
  v124 = v57;
  v62 = v57 + v35 * -0.5 * v22;
  v133 = v60;
  v63 = v60 + v37 * -0.5 * v22;
  v64 = v61 - v35 * v22 - v123 + v58 * 0.5 * v22;
  v65 = v60 - v59 + v52 * -0.5 * v22;
  CGAffineTransformMakeScale(&v138, v22, v22);
  v137 = v138;
  objc_msgSend_setAffineTransform_(v44, v66, &v137);
  CGAffineTransformMakeScale(&v136, v22, v22);
  v137 = v136;
  objc_msgSend_setAffineTransform_(v50, v67, &v137);
  CGAffineTransformMakeScale(&v135, v22, v22);
  v137 = v135;
  objc_msgSend_setAffineTransform_(v43, v68, &v137);
  CGAffineTransformMakeScale(&v134, v22, v22);
  v137 = v134;
  objc_msgSend_setAffineTransform_(v48, v69, &v137);
  objc_msgSend_setPosition_(v44, v70, v71, v62, v63);
  objc_msgSend_setPosition_(v50, v72, v73, v64, v65);
  objc_msgSend_setPosition_(v43, v74, v75, v62, v63);
  objc_msgSend_setPosition_(v48, v76, v77, v64, v65);
  v80 = objc_msgSend_superlayer(v45, v78, v79);
  objc_msgSend_convertPoint_fromLayer_(v80, v81, v17, v62, v63);
  objc_msgSend_setPosition_(v45, v82, v83);

  v141.origin.x = sub_241C82684(v17);
  x = v141.origin.x;
  y = v141.origin.y;
  v86 = v141.size.width;
  v87 = v141.size.height;
  v88 = fmax(0.0 - CGRectGetMinX(v141), 0.0);
  v142.origin.x = x;
  v142.origin.y = y;
  v142.size.width = v86;
  v142.size.height = v87;
  v89 = fmax(0.0 - CGRectGetMinY(v142), 0.0);
  v143.origin.x = x;
  v143.origin.y = y;
  v143.size.width = v86;
  v143.size.height = v87;
  MaxX = CGRectGetMaxX(v143);
  objc_msgSend_bounds(v17, v91, v92);
  v93 = fmax(MaxX - CGRectGetMaxX(v144), 0.0);
  v145.origin.x = x;
  v145.origin.y = y;
  v145.size.width = v86;
  v145.size.height = v87;
  MaxY = CGRectGetMaxY(v145);
  objc_msgSend_bounds(v17, v95, v96);
  v97 = fmax(MaxY - CGRectGetMaxY(v146), 0.0);
  v100 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v98, v99);
  objc_msgSend_setFrame_(v100, v101, v102, 0.0, 0.0, v124 + v88 + v93, v133 + v89 + v97);
  v139[0] = v17;
  v104 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v103, v139, 1);
  objc_msgSend_setSublayers_(v100, v105, v104);

  objc_msgSend_setPosition_(v17, v106, v107, v88 + v124 * 0.5, v89 + v133 * 0.5);
  Mutable = CGPathCreateMutable();
  if (!v125)
  {
    if (!v53)
    {
      objc_msgSend_bounds(v100, v108, v109);
      goto LABEL_40;
    }

LABEL_38:
    objc_msgSend_bounds(v43, v108, v109);
    objc_msgSend_convertRect_toLayer_(v43, v112, v100);
LABEL_40:
    CGPathAddRect(Mutable, 0, *&v113);
    goto LABEL_41;
  }

  objc_msgSend_bounds(v48, v108, v109);
  objc_msgSend_convertRect_toLayer_(v48, v111, v100);
  CGPathAddRect(Mutable, 0, v147);
  if (v53)
  {
    goto LABEL_38;
  }

LABEL_41:
  if (insets)
  {
    insets->top = v89;
    insets->left = v88;
    insets->bottom = v97;
    insets->right = v93;
  }

  if (pathCopy)
  {
    *pathCopy = CGPathRetain(Mutable);
  }

  CGPathRelease(Mutable);
  objc_msgSend_setRasterizationScale_(v100, v117, v118, scaleCopy);

  return v100;
}

- (id)_stackLayerWithImages:(id)images filters:(id)filters size:(CGSize)size contentsScale:(double)scale insets:(UIEdgeInsets *)insets path:(const CGPath *)path
{
  height = size.height;
  width = size.width;
  imagesCopy = images;
  filtersCopy = filters;
  v19 = objc_msgSend_identifier(self, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"BCUCoverEffectsIdentifierSeriesStackHorizontal");

  if (isEqualToString)
  {
    objc_msgSend__stackLayerForHorizontalstyleWithImages_filters_size_contentsScale_insets_path_isRTL_(self, v22, imagesCopy, filtersCopy, insets, path, 0, width, height, scale);
    v28 = LABEL_5:;
    goto LABEL_7;
  }

  v24 = objc_msgSend_identifier(self, v22, v23);
  v26 = objc_msgSend_isEqualToString_(v24, v25, @"BCUCoverEffectsIdentifierSeriesStackHorizontalRTL");

  if (v26)
  {
    objc_msgSend__stackLayerForHorizontalstyleWithImages_filters_size_contentsScale_insets_path_isRTL_(self, v27, imagesCopy, filtersCopy, insets, path, 1, width, height, scale);
    goto LABEL_5;
  }

  v28 = objc_msgSend__stackLayerForDiagonalstyleWithImages_filters_size_contentsScale_insets_path_(self, v27, imagesCopy, filtersCopy, insets, path, width, height, scale);
LABEL_7:
  v29 = v28;

  return v29;
}

@end