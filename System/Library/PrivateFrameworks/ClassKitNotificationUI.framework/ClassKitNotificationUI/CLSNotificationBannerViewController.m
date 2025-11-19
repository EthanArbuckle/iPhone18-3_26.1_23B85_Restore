@interface CLSNotificationBannerViewController
- (BOOL)windowPointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)_hiddenBannerPosition:(CGSize)a3;
- (CGPoint)_visibleBannerCenterPosition:(CGSize)a3;
- (double)bannerWidthForViewSize:(CGSize)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)addBannerView:(id)a3;
- (void)addConstraintsForBannerView;
- (void)handleWindowPan:(id)a3;
- (void)showCurrentBanner;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CLSNotificationBannerViewController

- (BOOL)windowPointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_view(self, a2, a4, 0);
  v9 = objc_msgSend_subviews(v6, v7, v8);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v11)
  {
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_msgSend_layer(v14, v15, v16);
          v20 = objc_msgSend_presentationLayer(v17, v18, v19);
          v23 = objc_msgSend_hitTest_(v20, v21, v22, x, y);

          if (v23)
          {
            LOBYTE(v11) = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v26, v30, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)handleWindowPan:(id)a3
{
  v13 = a3;
  if (objc_msgSend_bannerVisible(self, v4, v5))
  {
    v8 = objc_msgSend_view(self, v6, v7);
    objc_msgSend_translationInView_(v13, v9, v8);
    v11 = v10;

    if (v11 < 0.0)
    {
      objc_msgSend_hideBannerQuickly_(self, v12, 1);
    }
  }
}

- (void)addBannerView:(id)a3
{
  v24 = a3;
  v6 = objc_msgSend_bannerView(self, v4, v5);

  if (v6)
  {
    objc_msgSend_setBannerYPositionConstraint_(self, v7, 0);
    objc_msgSend_setBannerWidthConstraint_(self, v8, 0);
    v11 = objc_msgSend_bannerView(self, v9, v10);
    objc_msgSend_removeFromSuperview(v11, v12, v13);

    objc_msgSend_setBannerView_(self, v14, 0);
  }

  objc_msgSend_setBannerView_(self, v7, v24);
  v17 = objc_msgSend_view(self, v15, v16);
  v20 = objc_msgSend_bannerView(self, v18, v19);
  objc_msgSend_addSubview_(v17, v21, v20);

  objc_msgSend_addConstraintsForBannerView(self, v22, v23);
}

- (void)showCurrentBanner
{
  v4 = objc_msgSend_bannerView(self, a2, v2);
  v7 = objc_msgSend_view(self, v5, v6);
  v10 = objc_msgSend_subviews(v7, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, v4);

  if ((v12 & 1) == 0)
  {
    v15 = objc_msgSend_view(self, v13, v14);
    objc_msgSend_addSubview_(v15, v16, v4);
  }

  objc_msgSend_setBannerAnimating_(self, v13, 1);
  objc_msgSend_setBannerVisible_(self, v17, 1);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_24351EFAC;
  v31[3] = &unk_278DBEF68;
  v31[4] = self;
  v32 = v4;
  v18 = v4;
  v19 = MEMORY[0x245D38F90](v31);
  v22 = objc_msgSend_view(self, v20, v21);
  objc_msgSend_layoutIfNeeded(v22, v23, v24);

  v25 = MEMORY[0x277D75D18];
  v29 = v19;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_24351F0AC;
  v30[3] = &unk_278DBEF40;
  v30[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_24351F0F4;
  v28[3] = &unk_278DBEF90;
  v26 = v19;
  objc_msgSend_animateWithDuration_delay_options_animations_completion_(v25, v27, 38, v30, v28, 0.6, 0.0);
}

- (unint64_t)supportedInterfaceOrientations
{
  v4 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, v2);
  v7 = sub_24351D11C(v4, v5, v6);
  v10 = objc_msgSend_view(self, v8, v9);
  v13 = objc_msgSend_window(v10, v11, v12);
  v16 = v13;
  if (v7 == v13)
  {
  }

  else
  {
    v17 = objc_msgSend_rootViewController(v7, v14, v15);

    if (v17)
    {
      v20 = objc_msgSend_rootViewController(v7, v18, v19);
      v23 = objc_msgSend_supportedInterfaceOrientations(v20, v21, v22);

      if (v23)
      {
        goto LABEL_12;
      }
    }
  }

  v24 = objc_msgSend_supportedInterfaceOrientationsForWindow_(v4, v18, v7);
  if (v24)
  {
    v23 = v24;
  }

  else
  {
    v27 = objc_msgSend_traitCollection(self, v25, v26);
    if (objc_msgSend_userInterfaceIdiom(v27, v28, v29))
    {
      v23 = 30;
    }

    else
    {
      v23 = 26;
    }
  }

LABEL_12:

  return v23;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CLSNotificationBannerViewController;
  [(CLSNotificationBannerViewController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v10 = objc_msgSend_bannerView(self, v8, v9);
  v13 = objc_msgSend_superview(v10, v11, v12);

  if (v13)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_24351F66C;
    v15[3] = &unk_278DBEFB8;
    v15[4] = self;
    *&v15[5] = width;
    *&v15[6] = height;
    objc_msgSend_animateAlongsideTransition_completion_(v7, v14, v15, 0);
  }
}

- (double)bannerWidthForViewSize:(CGSize)a3
{
  width = a3.width;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310 == 1)
  {
    v6 = objc_msgSend_bannerView(self, a2, v3);
    objc_msgSend_preferredWidthPad(v6, v7, v8);
    v10 = v9;

    if (width >= v10)
    {
      return v10;
    }
  }

  return width;
}

- (void)addConstraintsForBannerView
{
  v79[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_view(self, a2, v2);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;

  v13 = objc_msgSend_bannerView(self, v11, v12);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v13, v14, 0);

  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310 == 1)
  {
    objc_msgSend_bannerWidthForViewSize_(self, v15, v16, v8, v10);
    v18 = v17;
    v19 = MEMORY[0x277CCAAD0];
    v22 = objc_msgSend_bannerView(self, v20, v21);
    v24 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v19, v23, v22, 7, 0, 0, 0, 1.0, v18);
    objc_msgSend_setBannerWidthConstraint_(self, v25, v24);

    v28 = objc_msgSend_bannerView(self, v26, v27);
    v31 = objc_msgSend_bannerWidthConstraint(self, v29, v30);
    objc_msgSend_addConstraint_(v28, v32, v31);
  }

  else
  {
    v28 = objc_msgSend_view(self, v15, v16);
    v33 = MEMORY[0x277CCAAD0];
    v31 = objc_msgSend_bannerView(self, v34, v35);
    v38 = objc_msgSend_view(self, v36, v37);
    v40 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v33, v39, v31, 7, 0, v38, 7, 1.0, 0.0);
    objc_msgSend_addConstraint_(v28, v41, v40);
  }

  v44 = objc_msgSend_view(self, v42, v43);
  v45 = MEMORY[0x277CCAAD0];
  v48 = objc_msgSend_bannerView(self, v46, v47);
  v51 = objc_msgSend_view(self, v49, v50);
  v53 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v45, v52, v48, 9, 0, v51, 9, 1.0, 0.0);
  objc_msgSend_addConstraint_(v44, v54, v53);

  v57 = objc_msgSend_bannerView(self, v55, v56);
  objc_msgSend_setAlpha_(v57, v58, v59, 0.0);

  v60 = MEMORY[0x277CCAAD0];
  v63 = objc_msgSend_bannerView(self, v61, v62);
  v66 = objc_msgSend_topAnchor(v63, v64, v65);
  v69 = objc_msgSend_view(self, v67, v68);
  v73 = objc_msgSend_topAnchor(v69, v70, v71);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v66, v72, v73, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v66, v72, v73, 15.0);
  }
  v74 = ;
  v79[0] = v74;
  v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, v79, 1);
  objc_msgSend_activateConstraints_(v60, v77, v76);

  v78 = *MEMORY[0x277D85DE8];
}

- (CGPoint)_hiddenBannerPosition:(CGSize)a3
{
  v4 = objc_msgSend_view(self, a2, v3, a3.width, a3.height);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  MinY = CGRectGetMinY(v22);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  v17 = 32.0;
  if (byte_27ED78310)
  {
    v17 = 33.0;
  }

  v18 = MinY - floorf(v17);
  v19 = MidX;
  result.y = v18;
  result.x = v19;
  return result;
}

- (CGPoint)_visibleBannerCenterPosition:(CGSize)a3
{
  v4 = objc_msgSend_view(self, a2, v3, a3.width, a3.height);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v17 = objc_msgSend_windowScene(qword_27ED78318, v15, v16);
  v20 = objc_msgSend_statusBarManager(v17, v18, v19);
  objc_msgSend_statusBarFrame(v20, v21, v22);
  v24 = v23;
  v26 = v25;

  v35.origin.x = v8;
  v35.origin.y = v10;
  v35.size.width = v12;
  v35.size.height = v14;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  MinY = CGRectGetMinY(v36);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  v29 = 32.0;
  if (byte_27ED78310)
  {
    v29 = 33.0;
  }

  v30 = floorf(v29);
  if (byte_27ED78310)
  {
    v30 = v30 + 16.0;
  }

  if (v24 >= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v24;
  }

  v32 = v31 + MinY + v30;
  v33 = MidX;
  result.y = v32;
  result.x = v33;
  return result;
}

@end