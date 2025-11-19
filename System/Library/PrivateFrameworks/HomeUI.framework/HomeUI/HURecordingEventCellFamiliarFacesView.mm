@interface HURecordingEventCellFamiliarFacesView
+ (id)faceCropImageView;
+ (id)placeholderImage;
- (HURecordingEventCellFamiliarFacesView)initWithFrame:(CGRect)a3;
- (UILabel)titleLabel;
- (UIView)pointerView;
- (id)faceCropImageViews;
- (void)manager:(id)a3 didFindFaceCrop:(id)a4 forClip:(id)a5 usingPersonName:(id)a6;
- (void)manager:(id)a3 failedToFindFaceCropForPersonName:(id)a4;
- (void)resizeWithMaxWidth:(double)a3;
- (void)updateTitleLabel;
- (void)updateWithPersonEvents:(id)a3 forCameraClip:(id)a4;
@end

@implementation HURecordingEventCellFamiliarFacesView

- (HURecordingEventCellFamiliarFacesView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = HURecordingEventCellFamiliarFacesView;
  v3 = [(HURecordingEventCellFamiliarFacesView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemWhiteColor];
    [(HURecordingEventCellFamiliarFacesView *)v3 setBackgroundColor:v4];

    v5 = [(HURecordingEventCellFamiliarFacesView *)v3 layer];
    [v5 setCornerRadius:20.0];

    v6 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    [(HURecordingEventCellFamiliarFacesView *)v3 addSubview:v6];

    v7 = [(HURecordingEventCellFamiliarFacesView *)v3 faceCropImageViews];
    imageViews = v3->_imageViews;
    v3->_imageViews = v7;

    v9 = [(HURecordingEventCellFamiliarFacesView *)v3 pointerView];
    [(HURecordingEventCellFamiliarFacesView *)v3 addSubview:v9];

    v10 = [(HURecordingEventCellFamiliarFacesView *)v3 pointerView];
    [(HURecordingEventCellFamiliarFacesView *)v3 sendSubviewToBack:v10];

    v11 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    v12 = [v11 rightAnchor];
    v13 = [(HURecordingEventCellFamiliarFacesView *)v3 rightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-5.0];
    [v14 setActive:1];

    v15 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    v16 = [v15 centerYAnchor];
    v17 = [(HURecordingEventCellFamiliarFacesView *)v3 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    v20 = [v19 leftAnchor];
    v21 = [(HURecordingEventCellFamiliarFacesView *)v3 leftAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:40.0];
    leftTitleConstraint = v3->_leftTitleConstraint;
    v3->_leftTitleConstraint = v22;

    [(NSLayoutConstraint *)v3->_leftTitleConstraint setActive:1];
  }

  return v3;
}

- (void)updateWithPersonEvents:(id)a3 forCameraClip:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v47 = a4;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = [(HURecordingEventCellFamiliarFacesView *)self imageViews];
  v8 = [v7 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v55 + 1) + 8 * i) setHidden:1];
      }

      v9 = [v7 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v9);
  }

  v48 = self;

  v12 = [MEMORY[0x277D14498] sharedManager];
  v13 = [v6 count];
  if (v13)
  {
    v14 = v13;
    for (j = 0; j != v14; ++j)
    {
      v16 = [v6 objectAtIndexedSubscript:j];
      v17 = [v16 faceClassification];
      v18 = [v17 person];
      v19 = [v18 name];
      v20 = [v12 faceCropForPersonName:v19];

      if (!v20)
      {
        v21 = [v6 objectAtIndexedSubscript:j];
        [v12 addFaceCropImageObserver:v48 forClip:v47 usingSignificantEvent:v21];
      }
    }
  }

  v22 = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v52;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v51 + 1) + 8 * k);
        v29 = [v28 faceClassification];
        v30 = [v29 person];
        v31 = [v30 name];

        [v22 setObject:v28 forKey:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v25);
  }

  v32 = [v22 allValues];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __78__HURecordingEventCellFamiliarFacesView_updateWithPersonEvents_forCameraClip___block_invoke;
  v49[3] = &unk_277DB9280;
  v33 = v12;
  v50 = v33;
  v34 = [v32 sortedArrayUsingComparator:v49];
  [(HURecordingEventCellFamiliarFacesView *)v48 setSortedPeople:v34];

  v35 = [(HURecordingEventCellFamiliarFacesView *)v48 sortedPeople];
  v36 = [v35 count];

  if (v36 >= 3)
  {
    v37 = 3;
  }

  else
  {
    v37 = v36;
  }

  if (v36)
  {
    v38 = 0;
    do
    {
      v39 = [(HURecordingEventCellFamiliarFacesView *)v48 sortedPeople];
      v40 = [v39 objectAtIndexedSubscript:v38];
      v41 = [v40 faceClassification];
      v42 = [v41 person];

      v43 = [v42 name];
      v44 = [v33 faceCropForPersonName:v43];

      if (!v44)
      {
        v44 = +[HURecordingEventCellFamiliarFacesView placeholderImage];
      }

      v45 = [(HURecordingEventCellFamiliarFacesView *)v48 imageViews];
      v46 = [v45 objectAtIndexedSubscript:v38];

      [v46 setImage:v44];
      [v46 setHidden:0];

      ++v38;
    }

    while (v37 != v38);
  }

  [(HURecordingEventCellFamiliarFacesView *)v48 resizeWithMaxWidth:118.0];
}

uint64_t __78__HURecordingEventCellFamiliarFacesView_updateWithPersonEvents_forCameraClip___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 faceClassification];
  v8 = [v7 person];
  v9 = [v8 name];
  v10 = [v5 faceCropForPersonName:v9];

  v11 = *(a1 + 32);
  v12 = [v6 faceClassification];

  v13 = [v12 person];
  v14 = [v13 name];
  v15 = [v11 faceCropForPersonName:v14];

  v16 = -1;
  if (v15)
  {
    v16 = 1;
  }

  if (v10)
  {
    v17 = -1;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (void)updateTitleLabel
{
  v2 = self;
  v112[1] = *MEMORY[0x277D85DE8];
  v3 = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
  v4 = [v3 font];

  v5 = [(HURecordingEventCellFamiliarFacesView *)v2 sortedPeople];
  v6 = [v5 count];

  v105 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionTimelineSeparator", @"HUFaceRecognitionTimelineSeparator", 1);
  v106 = v6;
  if (v6)
  {
    v108 = v4;
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x277D740A8];
    do
    {
      v10 = v2;
      v11 = [(HURecordingEventCellFamiliarFacesView *)v2 sortedPeople];
      v12 = [v11 objectAtIndexedSubscript:v8];
      v13 = [v12 faceClassification];
      v14 = [v13 person];
      v15 = [v14 name];

      v111 = v9;
      v112[0] = v108;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:&v111 count:1];
      [v15 sizeWithAttributes:v16];
      v18 = ceil(v17);

      v19 = v18 + 0.0;
      if (v7 == 1)
      {
        v109 = v9;
        v110 = v108;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        [v105 sizeWithAttributes:v20];
        v19 = v19 + ceil(v21);
      }

      v2 = v10;
      [(HURecordingEventCellFamiliarFacesView *)v10 maxWidthForNames];
      if (v19 < v22)
      {
        ++v7;
      }

      ++v8;
    }

    while (v6 != v8);
    v23 = [(HURecordingEventCellFamiliarFacesView *)v10 leftTitleConstraint];
    [v23 setConstant:40.0];

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v59 = MEMORY[0x277CCACA8];
        v95 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v104 = [v95 objectAtIndexedSubscript:0];
        v101 = [v104 faceClassification];
        v98 = [v101 person];
        v60 = [v98 name];
        v61 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v62 = [v61 objectAtIndexedSubscript:1];
        v63 = [v62 faceClassification];
        v64 = [v63 person];
        v65 = [v64 name];
        v42 = v10;
        v66 = v65;
        if (v106 == 2)
        {
          v24 = v105;
          v67 = [v59 stringWithFormat:@"%@%@%@", v60, v105, v65];
          v68 = [(HURecordingEventCellFamiliarFacesView *)v42 titleLabel];
          [v68 setText:v67];

          v26 = [(HURecordingEventCellFamiliarFacesView *)v42 leftTitleConstraint];
          [v26 constant];
          v70 = 15.0;
LABEL_27:
          v81 = v69 + v70;
          goto LABEL_28;
        }

        v24 = v105;
        v82 = [v59 stringWithFormat:@"%@, %@%@+%lu", v60, v65, v105, v106 - 2];
        v83 = [(HURecordingEventCellFamiliarFacesView *)v42 titleLabel];
        [v83 setText:v82];

        v48 = v95;
      }

      else
      {
        if (v7 != 3)
        {
LABEL_18:
          v49 = MEMORY[0x277CCACA8];
          v94 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v103 = [v94 objectAtIndexedSubscript:0];
          v100 = [v103 faceClassification];
          v97 = [v100 person];
          v84 = [v97 name];
          v92 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v90 = [v92 objectAtIndexedSubscript:1];
          v88 = [v90 faceClassification];
          v86 = [v88 person];
          v50 = [v86 name];
          v51 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v52 = [v51 objectAtIndexedSubscript:2];
          v53 = [v52 faceClassification];
          v54 = [v53 person];
          v55 = [v54 name];
          v24 = v105;
          v56 = [v49 stringWithFormat:@"%@, %@, %@%@+%lu", v84, v50, v55, v105, v106 - 3];
          v57 = [(HURecordingEventCellFamiliarFacesView *)v2 titleLabel];
          [v57 setText:v56];

          v58 = v2;
LABEL_26:
          v26 = [(HURecordingEventCellFamiliarFacesView *)v58 leftTitleConstraint];
          [v26 constant];
          v70 = 30.0;
          goto LABEL_27;
        }

        v38 = MEMORY[0x277CCACA8];
        v96 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v107 = [v96 objectAtIndexedSubscript:0];
        v102 = [v107 faceClassification];
        v99 = [v102 person];
        v85 = [v99 name];
        v93 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v91 = [v93 objectAtIndexedSubscript:1];
        v89 = [v91 faceClassification];
        v87 = [v89 person];
        v39 = [v87 name];
        v40 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v41 = [v40 objectAtIndexedSubscript:2];
        [v41 faceClassification];
        v43 = v42 = v10;
        v44 = [v43 person];
        v45 = [v44 name];
        v24 = v105;
        v46 = [v38 stringWithFormat:@"%@, %@, %@%@", v85, v39, v105, v45];
        v47 = [(HURecordingEventCellFamiliarFacesView *)v42 titleLabel];
        [v47 setText:v46];

        v48 = v96;
      }

      v58 = v42;
      goto LABEL_26;
    }

    v4 = v108;
    if (v7)
    {
      if (v7 == 1)
      {
        v24 = v105;
        v25 = v6 - 1;
        if (v6 == 1)
        {
          v26 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v27 = [v26 objectAtIndexedSubscript:0];
          v28 = [v27 faceClassification];
          v29 = [v28 person];
          v30 = [v29 name];
          v31 = [(HURecordingEventCellFamiliarFacesView *)v2 titleLabel];
          [v31 setText:v30];

LABEL_29:
          v4 = v108;
          goto LABEL_30;
        }

        v71 = MEMORY[0x277CCACA8];
        v72 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v73 = [v72 objectAtIndexedSubscript:0];
        v74 = [v73 faceClassification];
        v75 = [v74 person];
        [v75 name];
        v77 = v76 = v2;
        v78 = [v71 stringWithFormat:@"%@%@+%lu", v77, v105, v25];
        v79 = [(HURecordingEventCellFamiliarFacesView *)v76 titleLabel];
        [v79 setText:v78];

        if (v25 >= 2)
        {
          v25 = 2;
        }

        v26 = [(HURecordingEventCellFamiliarFacesView *)v76 leftTitleConstraint];
        [v26 constant];
        v81 = v80 + v25 * 15.0;
LABEL_28:
        [v26 setConstant:v81];
        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v32 = [(HURecordingEventCellFamiliarFacesView *)v2 leftTitleConstraint];
    [v32 setConstant:40.0];
  }

  v26 = [(HURecordingEventCellFamiliarFacesView *)v2 sortedPeople];
  v33 = [v26 objectAtIndexedSubscript:0];
  v34 = [v33 faceClassification];
  v35 = [v34 person];
  v36 = [v35 name];
  v37 = [(HURecordingEventCellFamiliarFacesView *)v2 titleLabel];
  [v37 setText:v36];

  v24 = v105;
LABEL_30:
}

- (void)resizeWithMaxWidth:(double)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  [(HURecordingEventCellFamiliarFacesView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HURecordingEventCellFamiliarFacesView *)self imageViews];
  v12 = [v11 objectAtIndexedSubscript:1];
  v13 = [v12 isHidden];

  if (v13)
  {
    v14 = 40.0;
  }

  else
  {
    v14 = 55.0;
  }

  v15 = [(HURecordingEventCellFamiliarFacesView *)self imageViews];
  v16 = [v15 objectAtIndexedSubscript:2];
  v17 = [v16 isHidden];

  v18 = v14 + 15.0;
  if (v17)
  {
    v18 = v14;
  }

  v19 = v18 + 10.0;
  [(HURecordingEventCellFamiliarFacesView *)self setMaxWidthForNames:a3 - (v18 + 10.0)];
  [(HURecordingEventCellFamiliarFacesView *)self updateTitleLabel];
  v20 = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
  v21 = [v20 text];
  v42 = *MEMORY[0x277D740A8];
  v22 = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
  v23 = [v22 font];
  v43[0] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [v21 sizeWithAttributes:v24];
  v26 = ceil(v25);

  if (v19 + v26 <= a3)
  {
    v27 = v19 + v26;
  }

  else
  {
    v27 = a3;
  }

  [(HURecordingEventCellFamiliarFacesView *)self setFrame:v6, v8, v27, v10];
  v28 = HFLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
    v30 = [v29 text];
    [(HURecordingEventCellFamiliarFacesView *)self maxWidthForNames];
    v32 = v31;
    [(HURecordingEventCellFamiliarFacesView *)self frame];
    v34 = 138413058;
    v35 = v30;
    v36 = 2048;
    v37 = v32;
    v38 = 2048;
    v39 = v33;
    v40 = 2048;
    v41 = v19 + -10.0;
    _os_log_debug_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEBUG, "FF: Title text - %@. MaxWidth:%.0f CellWidth:%.0f ImageOffset:%.0f", &v34, 0x2Au);
  }
}

- (void)manager:(id)a3 didFindFaceCrop:(id)a4 forClip:(id)a5 usingPersonName:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [(HURecordingEventCellFamiliarFacesView *)self sortedPeople];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HURecordingEventCellFamiliarFacesView_manager_didFindFaceCrop_forClip_usingPersonName___block_invoke;
  v13[3] = &unk_277DB92A8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  [v10 enumerateObjectsUsingBlock:v13];
}

void __89__HURecordingEventCellFamiliarFacesView_manager_didFindFaceCrop_forClip_usingPersonName___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [a2 faceClassification];
  v8 = [v7 person];
  v9 = [v8 name];
  v10 = [v9 isEqual:*(a1 + 32)];

  if (a3 <= 2 && v10)
  {
    v11 = [*(a1 + 40) imageViews];
    v12 = [v11 objectAtIndexedSubscript:a3];

    [v12 setImage:*(a1 + 48)];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Did find face crop. Updated face crop image for %@ using personName:%@", &v16, 0x16u);
    }

    *a4 = 1;
  }

  else if (a3 >= 3)
  {
    *a4 = 1;
  }
}

- (void)manager:(id)a3 failedToFindFaceCropForPersonName:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Failed to find face crop for personName:%@", &v6, 0xCu);
  }
}

- (id)faceCropImageViews
{
  imageViews = self->_imageViews;
  if (!imageViews)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    for (i = 0; i != 90; i += 30)
    {
      v6 = +[HURecordingEventCellFamiliarFacesView faceCropImageView];
      [v6 setFrame:{vcvtd_n_f64_u32(i, 1uLL) + 5.0, 5.0, 30.0, 30.0}];
      [(NSArray *)v4 addObject:v6];
      [(HURecordingEventCellFamiliarFacesView *)self addSubview:v6];
      [(HURecordingEventCellFamiliarFacesView *)self sendSubviewToBack:v6];
    }

    v7 = self->_imageViews;
    self->_imageViews = v4;

    imageViews = self->_imageViews;
  }

  return imageViews;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v4 setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(UILabel *)v4 setLineBreakMode:5];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)v4 setTextColor:v5];

    v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    [(UILabel *)v4 setFont:v6];

    v7 = self->_titleLabel;
    self->_titleLabel = v4;

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UIView)pointerView
{
  pointerView = self->_pointerView;
  if (!pointerView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [v4 setBackgroundColor:v5];

    CGAffineTransformMakeRotation(&v12, 0.785398163);
    v11 = v12;
    [v4 setTransform:&v11];
    v6 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v6 setBackgroundColor:v7];

    v8 = [(UIView *)v6 layer];
    [v8 setCornerRadius:15.0];

    [(UIView *)v6 setOpaque:0];
    [(UIView *)v6 addSubview:v4];
    [(UIView *)v6 center];
    [v4 setCenter:?];
    [(UIView *)v6 frame];
    [(UIView *)v6 setFrame:32.0, 28.0];
    v9 = self->_pointerView;
    self->_pointerView = v6;

    pointerView = self->_pointerView;
  }

  return pointerView;
}

+ (id)faceCropImageView
{
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  [v2 setBackgroundColor:v3];

  v4 = [v2 layer];
  [v4 setCornerRadius:15.0];

  v5 = [MEMORY[0x277D75348] systemWhiteColor];
  v6 = [v5 CGColor];
  v7 = [v2 layer];
  [v7 setBorderColor:v6];

  v8 = [v2 layer];
  [v8 setBorderWidth:2.0];

  [v2 setClipsToBounds:1];
  [v2 setContentMode:2];

  return v2;
}

+ (id)placeholderImage
{
  if (qword_27C837E40 != -1)
  {
    dispatch_once(&qword_27C837E40, &__block_literal_global_31);
  }

  v3 = _MergedGlobals_3_1;

  return v3;
}

void __57__HURecordingEventCellFamiliarFacesView_placeholderImage__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{26.0, 26.0}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HURecordingEventCellFamiliarFacesView_placeholderImage__block_invoke_2;
  v8[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  __asm { FMOV            V0.2D, #26.0 }

  v9 = _Q0;
  v6 = [v0 imageWithActions:v8];
  v7 = _MergedGlobals_3_1;
  _MergedGlobals_3_1 = v6;
}

void __57__HURecordingEventCellFamiliarFacesView_placeholderImage__block_invoke_2(uint64_t a1)
{
  v2 = HUImageNamed(@"CameraFamiliarFacePlaceholder");
  [v2 drawInRect:{0.0, 0.0, *(a1 + 32), *(a1 + 40)}];
}

@end