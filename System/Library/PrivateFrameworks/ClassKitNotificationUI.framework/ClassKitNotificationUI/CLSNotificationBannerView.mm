@interface CLSNotificationBannerView
+ (id)bannerMessageAttributes;
+ (id)bannerTitleAttributes;
+ (id)bundle;
- (CLSNotificationBannerView)initWithTitle:(id)title image:(id)image message:(id)message;
- (CLSNotificationBannerView)initWithTitle:(id)title imageView:(id)view message:(id)message;
- (CLSNotificationBannerView)initWithTitle:(id)title message:(id)message;
- (void)applyConstraints;
- (void)callCompletionHandler;
- (void)hideBanner;
- (void)showWithCompletionHandler:(id)handler;
@end

@implementation CLSNotificationBannerView

+ (id)bannerTitleAttributes
{
  if (qword_27ED78338 != -1)
  {
    dispatch_once(&qword_27ED78338, &unk_28563EF18);
  }

  v3 = qword_27ED78330;

  return v3;
}

+ (id)bannerMessageAttributes
{
  if (qword_27ED78348 != -1)
  {
    dispatch_once(&qword_27ED78348, &unk_28563EF38);
  }

  v3 = qword_27ED78340;

  return v3;
}

+ (id)bundle
{
  if (qword_27ED78358 != -1)
  {
    dispatch_once(&qword_27ED78358, &unk_28563EF58);
  }

  v3 = qword_27ED78350;

  return v3;
}

- (CLSNotificationBannerView)initWithTitle:(id)title imageView:(id)view message:(id)message
{
  titleCopy = title;
  viewCopy = view;
  messageCopy = message;
  v113.receiver = self;
  v113.super_class = CLSNotificationBannerView;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(CLSNotificationBannerView *)&v113 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  v18 = v15;
  if (v15)
  {
    objc_msgSend_setDuration_(v15, v16, v17, 9.0);
    v21 = objc_msgSend_currentTraitCollection(MEMORY[0x277D75C80], v19, v20);
    v24 = objc_msgSend_userInterfaceStyle(v21, v22, v23);

    if (v24 > 2)
    {
      v25 = 0;
    }

    else
    {
      v25 = qword_2435210D8[v24];
    }

    v26 = objc_alloc(MEMORY[0x277D75DE8]);
    v112 = objc_msgSend_initWithPrivateStyle_(v26, v27, v25);
    objc_msgSend_addSubview_(v18, v28, v112);
    objc_storeStrong(&v18->_imageView, view);
    objc_msgSend_addSubview_(v18, v29, v18->_imageView);
    v30 = objc_alloc_init(MEMORY[0x277D75A68]);
    labelsStackView = v18->_labelsStackView;
    v18->_labelsStackView = v30;

    objc_msgSend_setAxis_(v18->_labelsStackView, v32, 1);
    objc_msgSend_setAlignment_(v18->_labelsStackView, v33, 0);
    objc_msgSend_setDistribution_(v18->_labelsStackView, v34, 2);
    objc_msgSend_addSubview_(v18, v35, v18->_labelsStackView);
    v38 = 0x277D75000uLL;
    if (titleCopy)
    {
      v39 = objc_alloc(MEMORY[0x277D756B8]);
      v42 = objc_msgSend_initWithFrame_(v39, v40, v41, v11, v12, v13, v14);
      titleLabel = v18->_titleLabel;
      v18->_titleLabel = v42;

      v46 = objc_msgSend_clearColor(MEMORY[0x277D75348], v44, v45);
      objc_msgSend_setBackgroundColor_(v18->_titleLabel, v47, v46);

      objc_msgSend_setNumberOfLines_(v18->_titleLabel, v48, 1);
      objc_msgSend_setAdjustsFontSizeToFitWidth_(v18->_titleLabel, v49, 1);
      objc_msgSend_setMinimumScaleFactor_(v18->_titleLabel, v50, v51, 0.8);
      v52 = objc_alloc(MEMORY[0x277CCA898]);
      v53 = objc_opt_class();
      v56 = objc_msgSend_bannerTitleAttributes(v53, v54, v55);
      v58 = objc_msgSend_initWithString_attributes_(v52, v57, titleCopy, v56);
      objc_msgSend_setAttributedText_(v18->_titleLabel, v59, v58);

      v38 = 0x277D75000uLL;
      objc_msgSend_setTextAlignment_(v18->_titleLabel, v60, 4);
      objc_msgSend_addArrangedSubview_(v18->_labelsStackView, v61, v18->_titleLabel);
    }

    if (messageCopy)
    {
      v62 = objc_alloc(MEMORY[0x277D756B8]);
      v65 = objc_msgSend_initWithFrame_(v62, v63, v64, v11, v12, v13, v14);
      messageLabel = v18->_messageLabel;
      v18->_messageLabel = v65;

      v69 = objc_msgSend_clearColor(MEMORY[0x277D75348], v67, v68);
      objc_msgSend_setBackgroundColor_(v18->_messageLabel, v70, v69);

      objc_msgSend_setNumberOfLines_(v18->_messageLabel, v71, 0);
      objc_msgSend_setAdjustsFontSizeToFitWidth_(v18->_messageLabel, v72, 1);
      objc_msgSend_setMinimumScaleFactor_(v18->_messageLabel, v73, v74, 0.8);
      v75 = objc_alloc(MEMORY[0x277CCA898]);
      v76 = objc_opt_class();
      v79 = objc_msgSend_bannerMessageAttributes(v76, v77, v78);
      v81 = objc_msgSend_initWithString_attributes_(v75, v80, messageCopy, v79);
      objc_msgSend_setAttributedText_(v18->_messageLabel, v82, v81);

      v38 = 0x277D75000;
      objc_msgSend_setTextAlignment_(v18->_messageLabel, v83, 4);
      objc_msgSend_addArrangedSubview_(v18->_labelsStackView, v84, v18->_messageLabel);
    }

    if (qword_27ED78360 != -1)
    {
      dispatch_once(&qword_27ED78360, &unk_28563EF98);
    }

    if (byte_27ED78310 == 1)
    {
      objc_msgSend_sizeToFit(v18->_titleLabel, v36, v37);
      objc_msgSend_sizeToFit(v18->_messageLabel, v85, v86);
      v89 = v18->_titleLabel;
      if (v89)
      {
        objc_msgSend_frame(v89, v87, v88);
        v91 = v90;
      }

      else
      {
        v91 = 0.0;
      }

      v92 = v18->_messageLabel;
      if (v92)
      {
        objc_msgSend_frame(v92, v87, v88);
        if (v91 < v93)
        {
          v91 = v93;
        }
      }

      v38 = 0x277D75000uLL;
      v94 = fmin(v91, 512.0);
      if (qword_27ED78360 != -1)
      {
        dispatch_once(&qword_27ED78360, &unk_28563EF98);
      }

      v95 = 57.0;
      if (byte_27ED78310)
      {
        v95 = 54.0;
      }

      v96 = 15.0;
      if (byte_27ED78310)
      {
        v97 = 12.0;
      }

      else
      {
        v97 = 15.0;
      }

      v98 = v94 + v95 + v97;
      if (byte_27ED78310)
      {
        v96 = 12.0;
      }

      v99 = v98 + v96;
      if (v99 < 282.0)
      {
        v99 = 282.0;
      }

      v18->_preferredWidthPad = v99;
      v100 = 16.5;
      if (!byte_27ED78310)
      {
        v100 = 16.0;
      }

      v101 = floorf(v100);
      v102 = objc_msgSend_layer(v18, v87, v88);
      objc_msgSend_setCornerRadius_(v102, v103, v104, v101);

      v107 = objc_msgSend_layer(v18, v105, v106);
      objc_msgSend_setMasksToBounds_(v107, v108, 1);
    }

    v109 = objc_msgSend_systemBackgroundColor(*(v38 + 840), v36, v37);
    objc_msgSend_setBackgroundColor_(v18, v110, v109);
  }

  objc_msgSend_applyConstraints(v18, v16, v17);

  return v18;
}

- (CLSNotificationBannerView)initWithTitle:(id)title image:(id)image message:(id)message
{
  v8 = MEMORY[0x277D755E8];
  messageCopy = message;
  imageCopy = image;
  titleCopy = title;
  v12 = [v8 alloc];
  v14 = objc_msgSend_initWithImage_(v12, v13, imageCopy);

  v17 = objc_msgSend_clearColor(MEMORY[0x277D75348], v15, v16);
  objc_msgSend_setBackgroundColor_(v14, v18, v17);

  objc_msgSend_setContentMode_(v14, v19, 1);
  objc_msgSend_setClipsToBounds_(v14, v20, 1);
  v22 = objc_msgSend_initWithTitle_imageView_message_(self, v21, titleCopy, v14, messageCopy);

  return v22;
}

- (CLSNotificationBannerView)initWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v10 = objc_msgSend_bundle(CLSNotificationBannerView, v8, v9);
  v12 = objc_msgSend_imageNamed_inBundle_(MEMORY[0x277D755B8], v11, @"BannerIcon", v10);
  v14 = objc_msgSend_initWithTitle_image_message_(self, v13, titleCopy, v12, messageCopy);

  return v14;
}

- (void)applyConstraints
{
  v107[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_imageView(self, a2, v2);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v4, v5, 0);

  v8 = objc_msgSend_labelsStackView(self, v6, v7);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v8, v9, 0);

  v98 = MEMORY[0x277CCAAD0];
  v104 = objc_msgSend_imageView(self, v10, v11);
  v14 = objc_msgSend_topAnchor(v104, v12, v13);
  v18 = objc_msgSend_topAnchor(self, v15, v16);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v14, v17, v18, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v14, v17, v18, 11.0);
  }
  v96 = ;
  v107[0] = v96;
  v21 = objc_msgSend_imageView(self, v19, v20);
  v24 = objc_msgSend_leadingAnchor(v21, v22, v23);
  v28 = objc_msgSend_leadingAnchor(self, v25, v26);
  v100 = v18;
  v102 = v14;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v24, v27, v28, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v24, v27, v28, 11.0);
  }
  v29 = ;
  v107[1] = v29;
  v32 = objc_msgSend_imageView(self, v30, v31);
  v35 = objc_msgSend_centerYAnchor(v32, v33, v34);
  v38 = objc_msgSend_centerYAnchor(self, v36, v37);
  v40 = objc_msgSend_constraintEqualToAnchor_(v35, v39, v38);
  v107[2] = v40;
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v41, v107, 3);
  objc_msgSend_activateConstraints_(v98, v43, v42);

  v95 = MEMORY[0x277CCAAD0];
  v105 = objc_msgSend_labelsStackView(self, v44, v45);
  v48 = objc_msgSend_leadingAnchor(v105, v46, v47);
  v101 = objc_msgSend_imageView(self, v49, v50);
  v54 = objc_msgSend_trailingAnchor(v101, v51, v52);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v48, v53, v54, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v48, v53, v54, 11.0);
  }
  v97 = ;
  v106[0] = v97;
  v94 = objc_msgSend_labelsStackView(self, v55, v56);
  v59 = objc_msgSend_topAnchor(v94, v57, v58);
  v63 = objc_msgSend_topAnchor(self, v60, v61);
  v103 = v48;
  v99 = v54;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  v64 = 15.0;
  if (byte_27ED78310)
  {
    v64 = 12.0;
  }

  v93 = v59;
  v65 = objc_msgSend_constraintEqualToAnchor_constant_(v59, v62, v63, v64);
  v106[1] = v65;
  v68 = objc_msgSend_labelsStackView(self, v66, v67);
  v71 = objc_msgSend_bottomAnchor(v68, v69, v70);
  v75 = objc_msgSend_bottomAnchor(self, v72, v73);
  v92 = v63;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v71, v74, v75, -12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v71, v74, v75, -15.0);
  }
  v76 = ;
  v106[2] = v76;
  v79 = objc_msgSend_labelsStackView(self, v77, v78);
  v82 = objc_msgSend_trailingAnchor(v79, v80, v81);
  v86 = objc_msgSend_trailingAnchor(self, v83, v84);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v82, v85, v86, -12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v82, v85, v86, -15.0);
  }
  v87 = ;
  v106[3] = v87;
  v89 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v88, v106, 4);
  objc_msgSend_activateConstraints_(v95, v90, v89);

  v91 = *MEMORY[0x277D85DE8];
}

- (void)showWithCompletionHandler:(id)handler
{
  objc_msgSend_setCompletionHandler_(self, a2, handler);

  MEMORY[0x2821F9670](CLSNotificationBannerWindow, sel_enqueBanner_, self);
}

- (void)hideBanner
{
  v5 = objc_msgSend_superview(self, a2, v2);
  objc_msgSend__hideBanner_quickly_(v5, v4, self, 1);
}

- (void)callCompletionHandler
{
  v5 = objc_msgSend_completionHandler(self, a2, v2);
  if (v5)
  {
    v5[2]();
  }

  objc_msgSend_setCompletionHandler_(self, v4, 0);
}

@end