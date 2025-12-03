@interface IMDynamicGradientLayer
- (CGColorSpace)colorSpace;
- (CGImage)gradient;
- (CGRect)gradientFrame;
- (IMDynamicGradientLayer)init;
- (IMDynamicGradientReferenceView)referenceView;
- (id)description;
- (void)_updateAnimation;
- (void)_updateGradientImage;
- (void)dealloc;
- (void)didMoveToWindow:(id)window;
- (void)layoutSublayers;
- (void)setColorSpace:(CGColorSpace *)space;
- (void)setColors:(id)colors;
- (void)setReferenceView:(id)view;
- (void)setScreenScale:(double)scale;
@end

@implementation IMDynamicGradientLayer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = IMDynamicGradientLayer;
  v4 = [(IMDynamicGradientLayer *)&v11 description];
  v7 = objc_msgSend_referenceView(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ referenceView:%@", v4, v7);

  return v9;
}

- (IMDynamicGradientLayer)init
{
  v21.receiver = self;
  v21.super_class = IMDynamicGradientLayer;
  v2 = [(IMDynamicGradientLayer *)&v21 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setScreenScale_(v2, v3, v4, 1.0);
    v8 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v6, v7);
    objc_msgSend_setAnchorPoint_(v8, v9, v10, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    v13 = objc_msgSend_layer(MEMORY[0x277CD9FF8], v11, v12);
    CATransform3DMakeScale(&v20, -1.0, -1.0, 1.0);
    objc_msgSend_setSublayerTransform_(v13, v14, &v20);
    objc_msgSend_setTrackingLayer_(v5, v15, v13);
    objc_msgSend_addSublayer_(v5, v16, v13);
    objc_msgSend_setGradientLayer_(v5, v17, v8);
    objc_msgSend_addSublayer_(v13, v18, v8);
  }

  return v5;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = IMDynamicGradientLayer;
  [(IMDynamicGradientLayer *)&v3 dealloc];
}

- (void)layoutSublayers
{
  v73.receiver = self;
  v73.super_class = IMDynamicGradientLayer;
  [(IMDynamicGradientLayer *)&v73 layoutSublayers];
  v5 = objc_msgSend_superlayer(self, v3, v4);
  v8 = objc_msgSend_referenceView(self, v6, v7);
  v11 = v8;
  if (v5)
  {
    if (v8)
    {
      objc_msgSend_bounds(self, v9, v10);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      objc_msgSend_gradientFrame(v11, v20, v21);
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      objc_msgSend_gradientFrame(v11, v30, v31);
      v69 = v32;
      v70 = v33;
      v67 = v35;
      v68 = v34;
      v66 = v13;
      v74.origin.x = v13;
      v36 = v15;
      v74.origin.y = v15;
      v37 = v17;
      v74.size.width = v17;
      v38 = v19;
      v74.size.height = v19;
      v39 = v27;
      if (!CGRectIsEmpty(v74))
      {
        v75.origin.x = v23;
        v75.origin.y = v25;
        v75.size.width = v27;
        v75.size.height = v29;
        if (!CGRectIsEmpty(v75))
        {
          v76.origin.x = v69;
          v76.origin.y = v70;
          v76.size.height = v67;
          v76.size.width = v68;
          if (!CGRectIsEmpty(v76))
          {
            objc_msgSend_setGradientFrame_(self, v40, v41, v69, v70, v68, v67);
            v42 = v37 / v27 * (v68 / v27);
            objc_msgSend_begin(MEMORY[0x277CD9FF0], v43, v44);
            objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v45, 1);
            v48 = objc_msgSend_trackingLayer(self, v46, v47);
            objc_msgSend_setBounds_(v48, v49, v50, 0.0, 0.0, v42, v38 / v29 * (v67 / v29));
            v77.origin.x = v66;
            v77.origin.y = v36;
            v77.size.width = v37;
            v77.size.height = v38;
            MidX = CGRectGetMidX(v77);
            v78.origin.x = v66;
            v78.origin.y = v36;
            v78.size.width = v37;
            v78.size.height = v38;
            MidY = CGRectGetMidY(v78);
            objc_msgSend_setPosition_(v48, v53, v54, MidX, MidY);
            CATransform3DMakeScale(&v72, -v39, -v29, 1.0);
            objc_msgSend_setTransform_(v48, v55, &v72);
            v58 = objc_msgSend_gradientLayer(self, v56, v57);
            objc_msgSend_setContentsRect_(v58, v59, v60, -v42 - v69 / v39, -(v38 / v29 * (v67 / v29)) - v70 / v29, v42, v38 / v29 * (v67 / v29));
            objc_msgSend_setBounds_(v58, v61, v62, v66, v36, v37, v38);
            CATransform3DMakeScale(&v71, 1.0 / v39, 1.0 / v29, 1.0);
            CATransform3DTranslate(&v72, &v71, 0.0, 0.0, 0.0);
            objc_msgSend_setTransform_(v58, v63, &v72);
            objc_msgSend_commit(MEMORY[0x277CD9FF0], v64, v65);
          }
        }
      }
    }
  }
}

- (void)setReferenceView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_referenceView, obj);
    objc_msgSend__updateGradientImage(self, v6, v7);
    updated = objc_msgSend__updateAnimation(self, v8, v9);
    if (obj)
    {
      objc_msgSend_gradientFrame(obj, obj, v10);
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      objc_msgSend_gradientFrame(self, v19, v20);
      v29.origin.x = v21;
      v29.origin.y = v22;
      v29.size.width = v23;
      v29.size.height = v24;
      v28.origin.x = v12;
      v28.origin.y = v14;
      v28.size.width = v16;
      v28.size.height = v18;
      updated = CGRectEqualToRect(v28, v29);
      if ((updated & 1) == 0)
      {
        updated = objc_msgSend_setNeedsLayout(self, obj, v25);
      }
    }
  }

  MEMORY[0x2821F96F8](updated);
}

- (void)didMoveToWindow:(id)window
{
  if (window)
  {
    objc_msgSend__updateAnimation(self, a2, window);
  }
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  if ((objc_msgSend_isEqualToArray_(self->_colors, v4, colorsCopy) & 1) == 0)
  {
    v7 = objc_msgSend_copy(colorsCopy, v5, v6);
    colors = self->_colors;
    self->_colors = v7;

    objc_msgSend__updateGradientImage(self, v9, v10);
  }
}

- (void)setScreenScale:(double)scale
{
  if (self->_screenScale != scale)
  {
    self->_screenScale = scale;
    objc_msgSend__updateGradientImage(self, a2, v3);
  }
}

- (void)setColorSpace:(CGColorSpace *)space
{
  if (self->_colorSpace != space && (CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    CGColorSpaceRelease(self->_colorSpace);
    self->_colorSpace = CGColorSpaceRetain(space);

    objc_msgSend__updateGradientImage(self, v5, v6);
  }
}

- (CGColorSpace)colorSpace
{
  result = self->_colorSpace;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    self->_colorSpace = result;
  }

  return result;
}

- (CGImage)gradient
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_colors(self, a2, v2);
  v7 = objc_msgSend_referenceView(self, v5, v6);
  v10 = v7;
  Image = 0;
  if (v4 && v7)
  {
    if (qword_27F611840 != -1)
    {
      sub_254805940();
    }

    objc_msgSend_gradientFrame(v10, v8, v9);
    objc_msgSend__floorToPixels_(self, v12, v13, v14);
    v16 = v15;
    v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v17, v18);
    v22 = objc_msgSend_objectForKey_(qword_27F611838, v20, v19);
    if (!v22)
    {
      v22 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v21, 2);
      objc_msgSend_setObject_forKey_(qword_27F611838, v23, v22, v19);
    }

    Image = objc_msgSend_objectForKey_(v22, v21, v4);
    if (Image)
    {
      goto LABEL_16;
    }

    objc_msgSend_screenScale(self, v24, v25);
    v27 = v16 * v26;
    v30 = objc_msgSend_count(v4, v28, v29);
    Mutable = CFArrayCreateMutable(0, v30, MEMORY[0x277CBF128]);
    v49[0] = v49;
    MEMORY[0x28223BE20](Mutable);
    v33 = (v49 - v32);
    bzero(v49 - v32, v34);
    if (v30 >= 1)
    {
      for (i = 0; i != v30; ++i)
      {
        v38 = objc_msgSend_objectAtIndexedSubscript_(v4, v35, i);
        CFArrayAppendValue(Mutable, v38);

        v33[i] = i / (v30 - 1);
      }
    }

    v39 = objc_msgSend_colorSpace(self, v35, v36);
    v40 = CGBitmapContextCreate(0, 1uLL, v27, 8uLL, 4uLL, v39, 5u);
    if (v40)
    {
      v41 = v40;
      v42 = *MEMORY[0x277CBF348];
      v43 = *(MEMORY[0x277CBF348] + 8);
      v44 = CGGradientCreateWithColors(0, Mutable, v33);
      v51.x = 0.0;
      v50.x = v42;
      v50.y = v43;
      v51.y = v27;
      CGContextDrawLinearGradient(v41, v44, v50, v51, 0);
      Image = CGBitmapContextCreateImage(v41);
      CGGradientRelease(v44);
      CGContextRelease(v41);
      if (Image)
      {
        objc_msgSend_setObject_forKey_(v22, v45, Image, v4);
        CGImageRelease(Image);
      }

      if (!Mutable)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v48 = IMLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_254805954(v48);
      }

      CGContextRelease(0);
      Image = 0;
      if (!Mutable)
      {
        goto LABEL_16;
      }
    }

    CFRelease(Mutable);
LABEL_16:
  }

  v46 = *MEMORY[0x277D85DE8];
  return Image;
}

- (void)_updateAnimation
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_gradientLayer(self, a2, v2);
  objc_msgSend_removeAnimationForKey_(v4, v5, @"matchmove");
  v8 = objc_msgSend_superlayer(self, v6, v7);
  v11 = objc_msgSend_referenceView(self, v9, v10);
  v12 = v11;
  if (v8 && v11)
  {
    v13 = objc_alloc_init(MEMORY[0x277CD9EE8]);
    objc_msgSend_setKeyPath_(v13, v14, @"contentsRect.origin");
    v17 = objc_msgSend_layer(v12, v15, v16);
    objc_msgSend_setSourceLayer_(v13, v18, v17);

    objc_msgSend_setDuration_(v13, v19, v20, INFINITY);
    v23 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v21, v22, 0.0, 0.0);
    v34[0] = v23;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v34, 1);
    objc_msgSend_setSourcePoints_(v13, v26, v25);

    objc_msgSend_setBeginTimeMode_(v13, v27, @"absolute");
    objc_msgSend_setBeginTime_(v13, v28, v29, 0.0);
    objc_msgSend_setAdditive_(v13, v30, 1);
    objc_msgSend_setTargetsSuperlayer_(v13, v31, 1);
    objc_msgSend_addAnimation_forKey_(v4, v32, v13, @"matchmove");
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_updateGradientImage
{
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v4, 1);
  v7 = objc_msgSend_gradientLayer(self, v5, v6);
  v10 = objc_msgSend_gradient(self, v8, v9);
  objc_msgSend_setContents_(v7, v11, v10);

  v14 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v14, v12, v13);
}

- (IMDynamicGradientReferenceView)referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  return WeakRetained;
}

- (CGRect)gradientFrame
{
  x = self->_gradientFrame.origin.x;
  y = self->_gradientFrame.origin.y;
  width = self->_gradientFrame.size.width;
  height = self->_gradientFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end