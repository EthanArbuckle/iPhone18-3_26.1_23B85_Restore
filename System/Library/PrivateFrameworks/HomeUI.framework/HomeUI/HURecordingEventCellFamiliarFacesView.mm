@interface HURecordingEventCellFamiliarFacesView
+ (id)faceCropImageView;
+ (id)placeholderImage;
- (HURecordingEventCellFamiliarFacesView)initWithFrame:(CGRect)frame;
- (UILabel)titleLabel;
- (UIView)pointerView;
- (id)faceCropImageViews;
- (void)manager:(id)manager didFindFaceCrop:(id)crop forClip:(id)clip usingPersonName:(id)name;
- (void)manager:(id)manager failedToFindFaceCropForPersonName:(id)name;
- (void)resizeWithMaxWidth:(double)width;
- (void)updateTitleLabel;
- (void)updateWithPersonEvents:(id)events forCameraClip:(id)clip;
@end

@implementation HURecordingEventCellFamiliarFacesView

- (HURecordingEventCellFamiliarFacesView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = HURecordingEventCellFamiliarFacesView;
  v3 = [(HURecordingEventCellFamiliarFacesView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(HURecordingEventCellFamiliarFacesView *)v3 setBackgroundColor:systemWhiteColor];

    layer = [(HURecordingEventCellFamiliarFacesView *)v3 layer];
    [layer setCornerRadius:20.0];

    titleLabel = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    [(HURecordingEventCellFamiliarFacesView *)v3 addSubview:titleLabel];

    faceCropImageViews = [(HURecordingEventCellFamiliarFacesView *)v3 faceCropImageViews];
    imageViews = v3->_imageViews;
    v3->_imageViews = faceCropImageViews;

    pointerView = [(HURecordingEventCellFamiliarFacesView *)v3 pointerView];
    [(HURecordingEventCellFamiliarFacesView *)v3 addSubview:pointerView];

    pointerView2 = [(HURecordingEventCellFamiliarFacesView *)v3 pointerView];
    [(HURecordingEventCellFamiliarFacesView *)v3 sendSubviewToBack:pointerView2];

    titleLabel2 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    rightAnchor = [titleLabel2 rightAnchor];
    rightAnchor2 = [(HURecordingEventCellFamiliarFacesView *)v3 rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
    [v14 setActive:1];

    titleLabel3 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    centerYAnchor = [titleLabel3 centerYAnchor];
    centerYAnchor2 = [(HURecordingEventCellFamiliarFacesView *)v3 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v18 setActive:1];

    titleLabel4 = [(HURecordingEventCellFamiliarFacesView *)v3 titleLabel];
    leftAnchor = [titleLabel4 leftAnchor];
    leftAnchor2 = [(HURecordingEventCellFamiliarFacesView *)v3 leftAnchor];
    v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:40.0];
    leftTitleConstraint = v3->_leftTitleConstraint;
    v3->_leftTitleConstraint = v22;

    [(NSLayoutConstraint *)v3->_leftTitleConstraint setActive:1];
  }

  return v3;
}

- (void)updateWithPersonEvents:(id)events forCameraClip:(id)clip
{
  v61 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  clipCopy = clip;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  imageViews = [(HURecordingEventCellFamiliarFacesView *)self imageViews];
  v8 = [imageViews countByEnumeratingWithState:&v55 objects:v60 count:16];
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
          objc_enumerationMutation(imageViews);
        }

        [*(*(&v55 + 1) + 8 * i) setHidden:1];
      }

      v9 = [imageViews countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v9);
  }

  selfCopy = self;

  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  v13 = [eventsCopy count];
  if (v13)
  {
    v14 = v13;
    for (j = 0; j != v14; ++j)
    {
      v16 = [eventsCopy objectAtIndexedSubscript:j];
      faceClassification = [v16 faceClassification];
      person = [faceClassification person];
      name = [person name];
      v20 = [mEMORY[0x277D14498] faceCropForPersonName:name];

      if (!v20)
      {
        v21 = [eventsCopy objectAtIndexedSubscript:j];
        [mEMORY[0x277D14498] addFaceCropImageObserver:selfCopy forClip:clipCopy usingSignificantEvent:v21];
      }
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = eventsCopy;
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
        faceClassification2 = [v28 faceClassification];
        person2 = [faceClassification2 person];
        name2 = [person2 name];

        [dictionary setObject:v28 forKey:name2];
      }

      v25 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v25);
  }

  allValues = [dictionary allValues];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __78__HURecordingEventCellFamiliarFacesView_updateWithPersonEvents_forCameraClip___block_invoke;
  v49[3] = &unk_277DB9280;
  v33 = mEMORY[0x277D14498];
  v50 = v33;
  v34 = [allValues sortedArrayUsingComparator:v49];
  [(HURecordingEventCellFamiliarFacesView *)selfCopy setSortedPeople:v34];

  sortedPeople = [(HURecordingEventCellFamiliarFacesView *)selfCopy sortedPeople];
  v36 = [sortedPeople count];

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
      sortedPeople2 = [(HURecordingEventCellFamiliarFacesView *)selfCopy sortedPeople];
      v40 = [sortedPeople2 objectAtIndexedSubscript:v38];
      faceClassification3 = [v40 faceClassification];
      person3 = [faceClassification3 person];

      name3 = [person3 name];
      v44 = [v33 faceCropForPersonName:name3];

      if (!v44)
      {
        v44 = +[HURecordingEventCellFamiliarFacesView placeholderImage];
      }

      imageViews2 = [(HURecordingEventCellFamiliarFacesView *)selfCopy imageViews];
      v46 = [imageViews2 objectAtIndexedSubscript:v38];

      [v46 setImage:v44];
      [v46 setHidden:0];

      ++v38;
    }

    while (v37 != v38);
  }

  [(HURecordingEventCellFamiliarFacesView *)selfCopy resizeWithMaxWidth:118.0];
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
  selfCopy = self;
  v112[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
  font = [titleLabel font];

  sortedPeople = [(HURecordingEventCellFamiliarFacesView *)selfCopy sortedPeople];
  v6 = [sortedPeople count];

  v105 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionTimelineSeparator", @"HUFaceRecognitionTimelineSeparator", 1);
  v106 = v6;
  if (v6)
  {
    v108 = font;
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x277D740A8];
    do
    {
      v10 = selfCopy;
      sortedPeople2 = [(HURecordingEventCellFamiliarFacesView *)selfCopy sortedPeople];
      v12 = [sortedPeople2 objectAtIndexedSubscript:v8];
      faceClassification = [v12 faceClassification];
      person = [faceClassification person];
      name = [person name];

      v111 = v9;
      v112[0] = v108;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:&v111 count:1];
      [name sizeWithAttributes:v16];
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

      selfCopy = v10;
      [(HURecordingEventCellFamiliarFacesView *)v10 maxWidthForNames];
      if (v19 < v22)
      {
        ++v7;
      }

      ++v8;
    }

    while (v6 != v8);
    leftTitleConstraint = [(HURecordingEventCellFamiliarFacesView *)v10 leftTitleConstraint];
    [leftTitleConstraint setConstant:40.0];

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v59 = MEMORY[0x277CCACA8];
        sortedPeople3 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v104 = [sortedPeople3 objectAtIndexedSubscript:0];
        faceClassification2 = [v104 faceClassification];
        person2 = [faceClassification2 person];
        name2 = [person2 name];
        sortedPeople4 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v62 = [sortedPeople4 objectAtIndexedSubscript:1];
        faceClassification3 = [v62 faceClassification];
        person3 = [faceClassification3 person];
        name3 = [person3 name];
        v42 = v10;
        v66 = name3;
        if (v106 == 2)
        {
          v24 = v105;
          v67 = [v59 stringWithFormat:@"%@%@%@", name2, v105, name3];
          titleLabel2 = [(HURecordingEventCellFamiliarFacesView *)v42 titleLabel];
          [titleLabel2 setText:v67];

          leftTitleConstraint2 = [(HURecordingEventCellFamiliarFacesView *)v42 leftTitleConstraint];
          [leftTitleConstraint2 constant];
          v70 = 15.0;
LABEL_27:
          v81 = v69 + v70;
          goto LABEL_28;
        }

        v24 = v105;
        v82 = [v59 stringWithFormat:@"%@, %@%@+%lu", name2, name3, v105, v106 - 2];
        titleLabel3 = [(HURecordingEventCellFamiliarFacesView *)v42 titleLabel];
        [titleLabel3 setText:v82];

        v48 = sortedPeople3;
      }

      else
      {
        if (v7 != 3)
        {
LABEL_18:
          v49 = MEMORY[0x277CCACA8];
          sortedPeople5 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v103 = [sortedPeople5 objectAtIndexedSubscript:0];
          faceClassification4 = [v103 faceClassification];
          person4 = [faceClassification4 person];
          name4 = [person4 name];
          sortedPeople6 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v90 = [sortedPeople6 objectAtIndexedSubscript:1];
          faceClassification5 = [v90 faceClassification];
          person5 = [faceClassification5 person];
          name5 = [person5 name];
          sortedPeople7 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v52 = [sortedPeople7 objectAtIndexedSubscript:2];
          faceClassification6 = [v52 faceClassification];
          person6 = [faceClassification6 person];
          name6 = [person6 name];
          v24 = v105;
          v56 = [v49 stringWithFormat:@"%@, %@, %@%@+%lu", name4, name5, name6, v105, v106 - 3];
          titleLabel4 = [(HURecordingEventCellFamiliarFacesView *)selfCopy titleLabel];
          [titleLabel4 setText:v56];

          v58 = selfCopy;
LABEL_26:
          leftTitleConstraint2 = [(HURecordingEventCellFamiliarFacesView *)v58 leftTitleConstraint];
          [leftTitleConstraint2 constant];
          v70 = 30.0;
          goto LABEL_27;
        }

        v38 = MEMORY[0x277CCACA8];
        sortedPeople8 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v107 = [sortedPeople8 objectAtIndexedSubscript:0];
        faceClassification7 = [v107 faceClassification];
        person7 = [faceClassification7 person];
        name7 = [person7 name];
        sortedPeople9 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v91 = [sortedPeople9 objectAtIndexedSubscript:1];
        faceClassification8 = [v91 faceClassification];
        person8 = [faceClassification8 person];
        name8 = [person8 name];
        sortedPeople10 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v41 = [sortedPeople10 objectAtIndexedSubscript:2];
        [v41 faceClassification];
        v43 = v42 = v10;
        person9 = [v43 person];
        name9 = [person9 name];
        v24 = v105;
        v46 = [v38 stringWithFormat:@"%@, %@, %@%@", name7, name8, v105, name9];
        titleLabel5 = [(HURecordingEventCellFamiliarFacesView *)v42 titleLabel];
        [titleLabel5 setText:v46];

        v48 = sortedPeople8;
      }

      v58 = v42;
      goto LABEL_26;
    }

    font = v108;
    if (v7)
    {
      if (v7 == 1)
      {
        v24 = v105;
        v25 = v6 - 1;
        if (v6 == 1)
        {
          leftTitleConstraint2 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
          v27 = [leftTitleConstraint2 objectAtIndexedSubscript:0];
          faceClassification9 = [v27 faceClassification];
          person10 = [faceClassification9 person];
          name10 = [person10 name];
          titleLabel6 = [(HURecordingEventCellFamiliarFacesView *)selfCopy titleLabel];
          [titleLabel6 setText:name10];

LABEL_29:
          font = v108;
          goto LABEL_30;
        }

        v71 = MEMORY[0x277CCACA8];
        sortedPeople11 = [(HURecordingEventCellFamiliarFacesView *)v10 sortedPeople];
        v73 = [sortedPeople11 objectAtIndexedSubscript:0];
        faceClassification10 = [v73 faceClassification];
        person11 = [faceClassification10 person];
        [person11 name];
        v77 = v76 = selfCopy;
        v78 = [v71 stringWithFormat:@"%@%@+%lu", v77, v105, v25];
        titleLabel7 = [(HURecordingEventCellFamiliarFacesView *)v76 titleLabel];
        [titleLabel7 setText:v78];

        if (v25 >= 2)
        {
          v25 = 2;
        }

        leftTitleConstraint2 = [(HURecordingEventCellFamiliarFacesView *)v76 leftTitleConstraint];
        [leftTitleConstraint2 constant];
        v81 = v80 + v25 * 15.0;
LABEL_28:
        [leftTitleConstraint2 setConstant:v81];
        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  else
  {
    leftTitleConstraint3 = [(HURecordingEventCellFamiliarFacesView *)selfCopy leftTitleConstraint];
    [leftTitleConstraint3 setConstant:40.0];
  }

  leftTitleConstraint2 = [(HURecordingEventCellFamiliarFacesView *)selfCopy sortedPeople];
  v33 = [leftTitleConstraint2 objectAtIndexedSubscript:0];
  faceClassification11 = [v33 faceClassification];
  person12 = [faceClassification11 person];
  name11 = [person12 name];
  titleLabel8 = [(HURecordingEventCellFamiliarFacesView *)selfCopy titleLabel];
  [titleLabel8 setText:name11];

  v24 = v105;
LABEL_30:
}

- (void)resizeWithMaxWidth:(double)width
{
  v43[1] = *MEMORY[0x277D85DE8];
  [(HURecordingEventCellFamiliarFacesView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageViews = [(HURecordingEventCellFamiliarFacesView *)self imageViews];
  v12 = [imageViews objectAtIndexedSubscript:1];
  isHidden = [v12 isHidden];

  if (isHidden)
  {
    v14 = 40.0;
  }

  else
  {
    v14 = 55.0;
  }

  imageViews2 = [(HURecordingEventCellFamiliarFacesView *)self imageViews];
  v16 = [imageViews2 objectAtIndexedSubscript:2];
  isHidden2 = [v16 isHidden];

  v18 = v14 + 15.0;
  if (isHidden2)
  {
    v18 = v14;
  }

  v19 = v18 + 10.0;
  [(HURecordingEventCellFamiliarFacesView *)self setMaxWidthForNames:width - (v18 + 10.0)];
  [(HURecordingEventCellFamiliarFacesView *)self updateTitleLabel];
  titleLabel = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
  text = [titleLabel text];
  v42 = *MEMORY[0x277D740A8];
  titleLabel2 = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
  font = [titleLabel2 font];
  v43[0] = font;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [text sizeWithAttributes:v24];
  v26 = ceil(v25);

  if (v19 + v26 <= width)
  {
    widthCopy = v19 + v26;
  }

  else
  {
    widthCopy = width;
  }

  [(HURecordingEventCellFamiliarFacesView *)self setFrame:v6, v8, widthCopy, v10];
  v28 = HFLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    titleLabel3 = [(HURecordingEventCellFamiliarFacesView *)self titleLabel];
    text2 = [titleLabel3 text];
    [(HURecordingEventCellFamiliarFacesView *)self maxWidthForNames];
    v32 = v31;
    [(HURecordingEventCellFamiliarFacesView *)self frame];
    v34 = 138413058;
    v35 = text2;
    v36 = 2048;
    v37 = v32;
    v38 = 2048;
    v39 = v33;
    v40 = 2048;
    v41 = v19 + -10.0;
    _os_log_debug_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEBUG, "FF: Title text - %@. MaxWidth:%.0f CellWidth:%.0f ImageOffset:%.0f", &v34, 0x2Au);
  }
}

- (void)manager:(id)manager didFindFaceCrop:(id)crop forClip:(id)clip usingPersonName:(id)name
{
  cropCopy = crop;
  nameCopy = name;
  sortedPeople = [(HURecordingEventCellFamiliarFacesView *)self sortedPeople];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HURecordingEventCellFamiliarFacesView_manager_didFindFaceCrop_forClip_usingPersonName___block_invoke;
  v13[3] = &unk_277DB92A8;
  v14 = nameCopy;
  selfCopy = self;
  v16 = cropCopy;
  v11 = cropCopy;
  v12 = nameCopy;
  [sortedPeople enumerateObjectsUsingBlock:v13];
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

- (void)manager:(id)manager failedToFindFaceCropForPersonName:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = nameCopy;
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
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)v4 setTextColor:systemBlackColor];

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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [v4 setBackgroundColor:systemWhiteColor];

    CGAffineTransformMakeRotation(&v12, 0.785398163);
    v11 = v12;
    [v4 setTransform:&v11];
    v6 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v6 setBackgroundColor:clearColor];

    layer = [(UIView *)v6 layer];
    [layer setCornerRadius:15.0];

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
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v2 setBackgroundColor:systemWhiteColor];

  layer = [v2 layer];
  [layer setCornerRadius:15.0];

  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  cGColor = [systemWhiteColor2 CGColor];
  layer2 = [v2 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [v2 layer];
  [layer3 setBorderWidth:2.0];

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