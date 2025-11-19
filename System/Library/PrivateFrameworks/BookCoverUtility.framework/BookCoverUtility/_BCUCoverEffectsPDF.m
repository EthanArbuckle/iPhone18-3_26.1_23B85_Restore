@interface _BCUCoverEffectsPDF
- (UIEdgeInsets)_roundedInsetsWithSize:(CGSize)a3;
- (UIEdgeInsets)insetsForSize:(CGSize)a3 contentsScale:(double)a4 options:(id)a5;
- (_BCUCoverEffectsPDF)initWithIdentifier:(id)a3 renderer:(id)a4 image:(BOOL)a5 shadow:(BOOL)a6 night:(BOOL)a7;
- (id)_layerWithImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5 minificationFilter:(id)a6;
- (id)newOperationWithImage:(CGImage *)a3 size:(CGSize)a4 contentsScale:(double)a5 priority:(float)a6 options:(id)a7 waitForCPUSynchronization:(BOOL)a8 logKey:(id)a9 completion:(id)a10;
@end

@implementation _BCUCoverEffectsPDF

- (_BCUCoverEffectsPDF)initWithIdentifier:(id)a3 renderer:(id)a4 image:(BOOL)a5 shadow:(BOOL)a6 night:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = _BCUCoverEffectsPDF;
  v15 = [(_BCUCoverEffectsPDF *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_renderer, a4);
    v16->_image = a5;
    v16->_shadow = a6;
    v16->_night = a7;
  }

  return v16;
}

- (UIEdgeInsets)_roundedInsetsWithSize:(CGSize)a3
{
  v3 = 618.0 / a3.width;
  v4 = a3.width <= 0.0;
  v5 = 1.0;
  if (!v4)
  {
    v5 = v3;
  }

  v6 = 46.0 / v5;
  v7 = floor(40.0 / v5);
  v8 = floor(v6);
  v9 = v7;
  v10 = v7;
  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (id)_layerWithImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5 minificationFilter:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  objc_msgSend__roundedInsetsWithSize_(self, v12, v13, width, height);
  shadow = self->_shadow;
  v18 = width + v15 + v17;
  v20 = height + v14 + v19;
  if (shadow)
  {
    v21 = v20;
  }

  else
  {
    v21 = height;
  }

  if (shadow)
  {
    v22 = v18;
  }

  else
  {
    v22 = width;
  }

  if (shadow)
  {
    v23 = v14;
  }

  else
  {
    v23 = 0.0;
  }

  if (shadow)
  {
    v24 = v15;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = objc_opt_new();
  objc_msgSend_setRasterizationScale_(v25, v26, v27, a5);
  objc_msgSend_setFrame_(v25, v28, v29, 0.0, 0.0, v22, v21);
  if (self->_shadow)
  {
    v84 = v24;
    v85 = v23;
    if (qword_27EC698E8 != -1)
    {
      sub_241C85BB0();
    }

    v30 = objc_opt_new();
    v31 = objc_opt_new();
    Mutable = CGPathCreateMutable();
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = width;
    v87.size.height = height;
    MinX = CGRectGetMinX(v87);
    v88.origin.x = 0.0;
    v88.origin.y = 0.0;
    v88.size.width = width;
    v88.size.height = height;
    MaxY = CGRectGetMaxY(v88);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = width;
    v89.size.height = height;
    x1 = CGRectGetMaxX(v89);
    v90.origin.x = 0.0;
    v90.origin.y = 0.0;
    v90.size.width = width;
    v90.size.height = height;
    v34 = CGRectGetMaxY(v90);
    v91.origin.x = 0.0;
    v91.origin.y = 0.0;
    v91.size.width = width;
    v91.size.height = height;
    MaxX = CGRectGetMaxX(v91);
    v92.origin.x = 0.0;
    v92.origin.y = 0.0;
    v92.size.width = width;
    v92.size.height = height;
    MinY = CGRectGetMinY(v92);
    CGPathMoveToPoint(Mutable, 0, MinX + 0.0, MaxY + -2.0);
    CGPathAddArcToPoint(Mutable, 0, 0.0, 0.0, 2.0, 0.0, 2.0);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MinY + 2.0, 2.0);
    CGPathAddArcToPoint(Mutable, 0, x1, v34, x1 + -2.0, v34, 2.0);
    CGPathAddArcToPoint(Mutable, 0, MinX, MaxY, MinX + 0.0, MaxY + -2.0, 2.0);
    CGPathCloseSubpath(Mutable);
    objc_msgSend_setShadowPath_(v30, v37, Mutable);
    objc_msgSend_setShadowPath_(v31, v38, Mutable);
    CGPathRelease(Mutable);
    objc_msgSend_setShadowColor_(v30, v39, qword_27EC698D8);
    LODWORD(v40) = 1.0;
    objc_msgSend_setShadowOpacity_(v30, v41, v42, v40);
    objc_msgSend_setShadowRadius_(v30, v43, v44, width / 618.0 * 20.0);
    objc_msgSend_setShadowOffset_(v30, v45, v46, 0.0, width / 618.0 * 6.0);
    objc_msgSend_setShadowColor_(v31, v47, qword_27EC698E0);
    LODWORD(v48) = 1.0;
    objc_msgSend_setShadowOpacity_(v31, v49, v50, v48);
    objc_msgSend_setShadowRadius_(v31, v51, v52, width / 618.0 * 4.0);
    objc_msgSend_setShadowOffset_(v31, v53, v54, 0.0, width / 618.0);
    v24 = v84;
    v23 = v85;
    objc_msgSend_setFrame_(v30, v55, v56, v84, v85, width, height);
    objc_msgSend_setFrame_(v31, v57, v58, v84, v85, width, height);
    objc_msgSend_addSublayer_(v25, v59, v30);
    objc_msgSend_addSublayer_(v25, v60, v31);
  }

  if (self->_image)
  {
    v61 = objc_opt_new();
    objc_msgSend_setContents_(v61, v62, a3);
    objc_msgSend_setCornerRadius_(v61, v63, v64, 2.0);
    objc_msgSend_setMasksToBounds_(v61, v65, 1);
    objc_msgSend_setFrame_(v61, v66, v67, v24, v23, width, height);
    if (v11)
    {
      objc_msgSend_setMinificationFilter_(v61, v68, v11);
    }

    objc_msgSend_addSublayer_(v25, v68, v61);
    if (self->_night)
    {
      v71 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v69, v70);
      v74 = objc_msgSend_overlayColor(qword_2810D51E0, v72, v73);
      objc_msgSend_setBackgroundColor_(v71, v75, v74);
      objc_msgSend_setCornerRadius_(v71, v76, v77, 2.0);
      objc_msgSend_setFrame_(v71, v78, v79, v24, v23, width, height);
      objc_msgSend_addSublayer_(v25, v80, v71);
    }
  }

  return v25;
}

- (UIEdgeInsets)insetsForSize:(CGSize)a3 contentsScale:(double)a4 options:(id)a5
{
  if (self->_shadow)
  {
    objc_msgSend__roundedInsetsWithSize_(self, a2, a5, a3.width, a3.height, a4);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)newOperationWithImage:(CGImage *)a3 size:(CGSize)a4 contentsScale:(double)a5 priority:(float)a6 options:(id)a7 waitForCPUSynchronization:(BOOL)a8 logKey:(id)a9 completion:(id)a10
{
  v12 = a8;
  height = a4.height;
  width = a4.width;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v22 = v21;
  if (a3)
  {
    v23 = sub_241C80F64(a3, width, height, a5);
    v25 = v24;
    v27 = objc_msgSend_objectForKeyedSubscript_(v19, v26, @"BCUCoverEffectsFilterOptionMinificationFilter");
    CGImageRetain(a3);
    renderer = self->_renderer;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_241C819EC;
    v39[3] = &unk_278D14140;
    v40 = v27;
    v41 = a3;
    v42 = v23;
    v43 = v25;
    v44 = a5;
    v39[4] = self;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_241C81A04;
    v34[3] = &unk_278D14118;
    v34[4] = self;
    v36 = v23;
    v37 = v25;
    v35 = v22;
    v38 = a3;
    v29 = v27;
    *&v30 = a6;
    v32 = objc_msgSend_newOperationWithPriority_waitForCPUSynchronization_logKey_renderLayer_completion_(renderer, v31, v12, v20, v39, v34, v30);
  }

  else
  {
    (*(v21 + 2))(v21, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    v32 = 0;
  }

  return v32;
}

@end