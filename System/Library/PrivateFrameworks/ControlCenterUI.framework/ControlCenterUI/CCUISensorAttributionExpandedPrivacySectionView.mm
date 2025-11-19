@interface CCUISensorAttributionExpandedPrivacySectionView
- (CCUISensorAttributionExpandedPrivacySectionView)initWithWidth:(double)a3 appsUsingSensors:(id)a4 sensorActivityData:(id)a5;
- (CGSize)intrinsicContentSize;
- (id)_makeHeaderSeparatorView;
- (void)_layout;
@end

@implementation CCUISensorAttributionExpandedPrivacySectionView

- (CCUISensorAttributionExpandedPrivacySectionView)initWithWidth:(double)a3 appsUsingSensors:(id)a4 sensorActivityData:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CCUISensorAttributionExpandedPrivacySectionView;
  v11 = [(CCUISensorAttributionExpandedPrivacySectionView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    v11->_width = a3;
    objc_storeStrong(&v11->_appsUsingSensors, a4);
    objc_storeStrong(&v12->_sensorActivityData, a5);
    [(CCUISensorAttributionExpandedPrivacySectionView *)v12 _layout];
  }

  return v12;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  yOffset = self->_yOffset;
  result.height = yOffset;
  result.width = v2;
  return result;
}

- (void)_layout
{
  v100 = *MEMORY[0x277D85DE8];
  [(CCUISensorAttributionExpandedPrivacySectionView *)self width];
  v81 = v3;
  v4 = [(CCUISensorAttributionExpandedPrivacySectionView *)self appsUsingSensors];
  v76 = [(CCUISensorAttributionExpandedPrivacySectionView *)self sensorActivityData];
  self->_yOffset = 0.0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v4;
  v77 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v77)
  {
    v75 = *v94;
    v73 = v81 * 0.5;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v94 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v93 + 1) + 8 * i);
        v7 = CCUISortedAttributionsForEntity(v6, v76);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v89 objects:v98 count:16];
        v10 = v8;
        if (v9)
        {
          v11 = v9;
          v12 = *v90;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v90 != v12)
              {
                objc_enumerationMutation(v8);
              }

              if (!CCUISectionForSensorType([*(*(&v89 + 1) + 8 * j) sensorType]))
              {

                v14 = [(CCUISensorAttributionExpandedPrivacySectionView *)self _makeHeaderSeparatorView];
                v15 = v81;
                [v14 setFrame:{0.0, self->_yOffset, v81, 1.0}];
                [(CCUISensorAttributionExpandedPrivacySectionView *)self addSubview:v14];
                self->_yOffset = self->_yOffset + 15.0;
                v16 = [(CCUISensorAttributionExpandedPrivacySectionView *)self traitCollection];
                v17 = [v16 preferredContentSizeCategory];
                IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);

                v19 = [(CCUISensorAttributionExpandedPrivacySectionView *)self traitCollection];
                [v19 displayScale];

                v84 = IsAccessibilityCategory;
                if (!IsAccessibilityCategory)
                {
                  UIRoundToScale();
                  v15 = v20;
                }

                v78 = v14;
                v80 = i;
                v21 = v15 + -10.0;
                +[CCUISensorEntityNameAndIconView iconSize];
                v23 = v22 * (+[CCUISensorEntityNameAndIconView maximumNumberOfLines]+ 1);
                v24 = [[CCUISensorEntityNameAndIconView alloc] initWithSensorEntity:v6 maxSize:v15 + -10.0, v23];
                v25 = objc_alloc_init(MEMORY[0x277D756C8]);
                [(CCUISensorEntityNameAndIconView *)v24 addInteraction:v25];

                [(CCUISensorAttributionExpandedPrivacySectionView *)self addSubview:v24];
                [(CCUISensorEntityNameAndIconView *)v24 frame];
                v27 = v26;
                v29 = v28;
                v30 = [MEMORY[0x277D75128] sharedApplication];
                v31 = [v30 userInterfaceLayoutDirection];

                if (v31 == 1)
                {
                  v32 = v81 - v27 + -2.0;
                }

                else
                {
                  v32 = 2.0;
                }

                yOffset = self->_yOffset;
                [(CCUISensorEntityNameAndIconView *)v24 setFrame:v32, yOffset, v27, v29];
                [(CCUISensorEntityNameAndIconView *)v24 setCachedExpandedRect:v32, yOffset, v27, v29];
                v82 = [MEMORY[0x277CBEB58] set];
                if (!IsAccessibilityCategory)
                {
                  v15 = v15 + 5.0;
                }

                v34 = 0.0;
                v35 = 0.0;
                if (!IsAccessibilityCategory)
                {
                  v36 = [MEMORY[0x277D75128] sharedApplication];
                  if ([v36 userInterfaceLayoutDirection] == 1)
                  {
                    v35 = 0.0;
                  }

                  else
                  {
                    v35 = v21;
                  }
                }

                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v79 = v8;
                v83 = v8;
                v37 = [v83 countByEnumeratingWithState:&v85 objects:v97 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = 0;
                  v40 = *v86;
                  do
                  {
                    for (k = 0; k != v38; ++k)
                    {
                      if (*v86 != v40)
                      {
                        objc_enumerationMutation(v83);
                      }

                      v42 = *(*(&v85 + 1) + 8 * k);
                      if (!CCUISectionForSensorType([v42 sensorType]))
                      {
                        v43 = [v42 website];

                        if (v43)
                        {
                          v44 = self->_yOffset;
                          [(CCUISensorEntityNameAndIconView *)v24 frame];
                          if (v44 < CGRectGetMaxY(v101))
                          {
                            [(CCUISensorEntityNameAndIconView *)v24 frame];
                            v46 = v45;
                            [objc_opt_class() iconSize];
                            self->_yOffset = self->_yOffset + v46 - v47;
                          }

                          if (![v82 count])
                          {
                            v48 = [v83 firstObject];

                            if (v42 == v48)
                            {
                              self->_yOffset = self->_yOffset + 25.0;
                            }
                          }

                          v49 = [v42 website];
                          v50 = [v82 containsObject:v49];

                          if ((v50 & 1) == 0)
                          {
                            v51 = [v42 website];
                            [v82 addObject:v51];

                            +[CCUISensorEntityNameAndIconView iconSize];
                            v53 = v52 + 2.0;
                            +[CCUISensorEntityNameAndIconView horizontalPaddingBetweenIconAndLabel];
                            v55 = v53 + v54;
                            v56 = [MEMORY[0x277D75128] sharedApplication];
                            v57 = [v56 userInterfaceLayoutDirection];

                            v58 = v81 - v55 - (v81 * 0.5 + 5.0 + 5.0);
                            if (v57 == 1)
                            {
                              v55 = v81 * 0.5 + 5.0 + 5.0;
                              v59 = v58;
                            }

                            else
                            {
                              v59 = v35 + -5.0 - v55;
                            }

                            v60 = [[CCUISensorAttributionWebsiteView alloc] initWithSensorActivityData:v42 maxSize:v59, 20.0];
                            [(CCUISensorAttributionExpandedPrivacySectionView *)self addSubview:v60];
                            v61 = self->_yOffset;
                            [(CCUISensorAttributionWebsiteView *)v60 setFrame:v55, v61, v59, 20.0];
                            [(CCUISensorAttributionWebsiteView *)v60 setCachedExpandedRect:v55, v61, v59, 20.0];
                          }
                        }

                        v62 = [[CCUISensorAttributionSensorButton alloc] initWithSensorActivityData:v42];
                        v63 = objc_alloc_init(MEMORY[0x277D756C8]);
                        [(CCUISensorAttributionSensorButton *)v62 addInteraction:v63];

                        if (v39)
                        {
                          v64 = 0;
                        }

                        else
                        {
                          v64 = v84;
                        }

                        if (v64)
                        {
                          [(CCUISensorEntityNameAndIconView *)v24 bounds];
                          self->_yOffset = self->_yOffset + v65;
                        }

                        [(CCUISensorAttributionSensorButton *)v62 sizeThatFits:v15, v23];
                        v67 = v66;
                        v68 = 0.0;
                        if (!v84)
                        {
                          [objc_opt_class() iconSize];
                          v68 = (v69 - v67) * 0.5;
                        }

                        v70 = v68 + self->_yOffset;
                        [(CCUISensorAttributionSensorButton *)v62 setFrame:v35, v70, v15, v67];
                        [(CCUISensorAttributionSensorButton *)v62 setCachedExpandedRect:v35, v70, v15, v67];
                        [(CCUISensorAttributionSensorButton *)v62 bounds];
                        v34 = self->_yOffset + v68 + v71 + 5.0;
                        self->_yOffset = v34;
                        [(CCUISensorAttributionExpandedPrivacySectionView *)self addSubview:v62];
                        ++v39;
                      }
                    }

                    v38 = [v83 countByEnumeratingWithState:&v85 objects:v97 count:16];
                  }

                  while (v38);
                }

                [(CCUISensorEntityNameAndIconView *)v24 frame];
                if (v34 >= CGRectGetMaxY(v102))
                {
                  v72 = self->_yOffset;
                }

                else
                {
                  [(CCUISensorEntityNameAndIconView *)v24 frame];
                  v72 = self->_yOffset + CGRectGetMaxY(v103) - v34;
                }

                i = v80;
                v10 = v78;
                self->_yOffset = v72 + 10.0;

                v8 = v79;
                goto LABEL_58;
              }
            }

            v11 = [v8 countByEnumeratingWithState:&v89 objects:v98 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }

          v10 = v8;
        }

LABEL_58:
      }

      v77 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v77);
  }

  self->_yOffset = self->_yOffset + -25.0 + 30.0;
}

- (id)_makeHeaderSeparatorView
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setBackgroundColor:v3];

  v4 = [v2 layer];
  [v4 setCornerCurve:*MEMORY[0x277CDA138]];

  v5 = [v2 layer];
  [v5 setCornerRadius:0.5];

  v6 = [v2 layer];
  [v6 setCompositingFilter:*MEMORY[0x277CDA5D0]];

  v7 = [v2 layer];
  [v7 setAllowsGroupBlending:0];

  [v2 setAlpha:0.125];

  return v2;
}

@end