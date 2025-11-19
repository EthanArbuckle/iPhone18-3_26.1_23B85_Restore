@interface NTKCFaceDetailEditOptionCell
+ (double)insetSpacingForStyle:(int64_t)a3;
+ (id)reuseIdentifier;
- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4;
- (CGRect)swatchFrame;
- (NTKCFaceDetailEditOptionCell)initWithCollection:(id)a3 forFaceView:(id)a4 face:(id)a5;
- (NTKCFaceDetailEditOptionCellDelegate)delegate;
- (NTKFace)face;
- (NTKFaceView)faceView;
- (double)rowHeight;
- (id)_dequeueCellForIndexPath:(id)a3;
- (id)_imageForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_swatchImageContentMode;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_ensureIndexPathVisible:(id)a3 animated:(BOOL)a4;
- (void)_fontSizeDidChange;
- (void)_setVerticalBottomBuffer:(double)a3;
- (void)_setupCell:(id)a3;
- (void)_setupFromCollection;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)ensureIndexVisible:(int64_t)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)reloadVisibleCells;
- (void)scrollToIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setOptionsText:(id)a3;
- (void)setSelectedOptions:(id)a3;
@end

@implementation NTKCFaceDetailEditOptionCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailEditOptionCell)initWithCollection:(id)a3 forFaceView:(id)a4 face:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = NTKCFaceDetailEditOptionCell;
  v11 = [(NTKCDetailTableViewCell *)&v22 init];
  v12 = v11;
  if (v11)
  {
    [(NTKCFaceDetailEditOptionCell *)v11 setCollection:v8];
    [(NTKCFaceDetailEditOptionCell *)v12 setFaceView:v9];
    [v10 prepareEditOptions];
    [(NTKCFaceDetailEditOptionCell *)v12 setFace:v10];
    v13 = objc_opt_new();
    [(NTKCFaceDetailEditOptionCell *)v12 setLayout:v13];

    [(UICollectionViewFlowLayout *)v12->_layout _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    [(UICollectionViewFlowLayout *)v12->_layout setScrollDirection:1];
    v14 = objc_alloc(MEMORY[0x277D752A0]);
    v15 = [v14 initWithFrame:v12->_layout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(NTKCFaceDetailEditOptionCell *)v12 setCollectionView:v15];

    [(UICollectionView *)v12->_collectionView setBackgroundColor:0];
    [(UICollectionView *)v12->_collectionView setAlwaysBounceHorizontal:1];
    [(UICollectionView *)v12->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v12->_collectionView setDelegate:v12];
    [(UICollectionView *)v12->_collectionView setDataSource:v12];
    collectionView = v12->_collectionView;
    v17 = objc_opt_class();
    v18 = +[_NTKCFaceDetailCollectionCell reuseIdentifier];
    [(UICollectionView *)collectionView registerClass:v17 forCellWithReuseIdentifier:v18];

    v19 = [(NTKCFaceDetailEditOptionCell *)v12 contentView];
    [v19 addSubview:v12->_collectionView];

    [(NTKCFaceDetailEditOptionCell *)v12 _setVerticalBottomBuffer:50.0];
    v20 = [(NTKEditOptionCollection *)v12->_collection optionsDescription];
    [(NTKCFaceDetailEditOptionCell *)v12 setOptionsText:v20];
    v12->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(NTKCFaceDetailEditOptionCell *)v12 _fontSizeDidChange];
  }

  return v12;
}

- (void)_setVerticalBottomBuffer:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_editOptionVerticalBottomBuffer = a3;

    [(NTKCFaceDetailEditOptionCell *)self _setupFromCollection];
  }
}

- (void)setOptionsText:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(NTKCFaceDetailEditOptionCell *)self optionsDescription];
    [v4 removeFromSuperview];

    v5 = objc_opt_new();
    [(NTKCFaceDetailEditOptionCell *)self setOptionsDescription:v5];

    v6 = BPSDetailTextColor();
    [(UILabel *)self->_optionsDescription setTextColor:v6];

    [(UILabel *)self->_optionsDescription setNumberOfLines:0];
    [(UILabel *)self->_optionsDescription setText:v8];
    [(UILabel *)self->_optionsDescription setLineBreakMode:0];
    optionsDescription = [(NTKCFaceDetailEditOptionCell *)self contentView];
    [optionsDescription addSubview:self->_optionsDescription];
  }

  else
  {
    [(UILabel *)self->_optionsDescription removeFromSuperview];
    optionsDescription = self->_optionsDescription;
    self->_optionsDescription = 0;
  }

  [(NTKCFaceDetailEditOptionCell *)self setNeedsLayout];
  [(NTKCFaceDetailEditOptionCell *)self setNeedsDisplay];
}

- (void)_setupFromCollection
{
  [NTKEditOption sizeForSwatchStyle:[(NTKEditOptionCollection *)self->_collection swatchStyle]];
  v4 = v3;
  v6 = v5;
  +[_NTKCFaceDetailCollectionCell outlineLineWidth];
  v8 = v7;
  v9 = 4.0;
  if ([(NTKEditOptionCollection *)self->_collection mode]== 11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_faceView);
    v11 = [WeakRetained faceStyle];

    if (v11 == 1)
    {
      v9 = (114.0 - v4 + v8 * -2.0) * 0.5;
    }
  }

  self->_outlineOutset = v9;
  self->_outlinePadding = v8 + v9 + v8 + v9;
  [(NTKCFaceDetailEditOptionCell *)self _spacing];
  [(UICollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:?];
  v12 = self->_outlinePadding * -0.5 + 23.0;
  v13 = [(NTKEditOptionCollection *)self->_collection collectionType];
  outlinePadding = self->_outlinePadding;
  v15 = v12;
  if (v13 != 1)
  {
    v15 = self->_editOptionVerticalBottomBuffer + outlinePadding * -0.5;
  }

  [(UICollectionViewFlowLayout *)self->_layout setItemSize:v4 + outlinePadding, v15 + v6 + v12 + outlinePadding];
  self->_swatchFrame.origin.x = self->_outlinePadding * 0.5;
  self->_swatchFrame.origin.y = 23.0;
  self->_swatchFrame.size.width = v4;
  self->_swatchFrame.size.height = v6;
}

- (double)rowHeight
{
  [(UICollectionViewFlowLayout *)self->_layout itemSize];
  v4 = v3;
  if (self->_optionsDescription)
  {
    v5 = v3 - self->_editOptionVerticalBottomBuffer;
    [(NTKCFaceDetailEditOptionCell *)self layoutIfNeeded];
    v6 = [(UILabel *)self->_optionsDescription font];
    [v6 _scaledValueForValue:60.0];
    v8 = v5 + v7;
    [(UILabel *)self->_optionsDescription _firstLineBaselineOffsetFromBoundsTop];
    v10 = v8 - v9;
    [(UILabel *)self->_optionsDescription bounds];
    v11 = v10 + CGRectGetHeight(v16);
    [v6 _scaledValueForValue:25.0];
    v13 = v12;
    [(UILabel *)self->_optionsDescription _baselineOffsetFromBottom];
    v4 = v11 + v13 - v14;
  }

  return v4;
}

- (void)reloadVisibleCells
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = [(NTKCFaceDetailEditOptionCell *)self _indexPathForEditOptionIndex:self->_selectedIndex];
  v3 = [v11 row];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(UICollectionView *)self->_collectionView visibleCells];
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(UICollectionView *)self->_collectionView indexPathForCell:v8];
        v10 = [(NTKCFaceDetailEditOptionCell *)self _imageForIndexPath:v9];
        [v8 setImage:v10];

        [v8 setActive:{objc_msgSend(v9, "row") == v3}];
        [v8 setSwatchImageContentMode:{-[NTKCFaceDetailEditOptionCell _swatchImageContentMode](self, "_swatchImageContentMode")}];
        [v8 setDisabled:self->_disabled];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)setSelectedOptions:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v7 = [(NTKCFaceDetailEditOptionCell *)self _isReloadCollectionRequired:v6 selectedOptions:v5];

  if (v7)
  {
    objc_storeStrong(&self->_selectedOptions, a3);
    [(NTKCFaceDetailEditOptionCell *)self _setupFromCollection];
    [(UICollectionView *)self->_collectionView reloadData];
    WeakRetained = objc_loadWeakRetained(&self->_face);
    v9 = [WeakRetained editOptionsPrepared];

    if ((v9 & 1) == 0)
    {
      v10 = objc_loadWeakRetained(&self->_face);
      [v10 prepareEditOptions];
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NTKEditOptionCollection mode](self->_collection, "mode")}];
    v12 = [v5 objectForKeyedSubscript:v11];

    v13 = objc_loadWeakRetained(&self->_face);
    v14 = [(NTKEditOptionCollection *)self->_collection mode];
    v15 = [(NTKEditOptionCollection *)self->_collection slot];
    v16 = [v13 indexOfOption:v12 forCustomEditMode:v14 slot:v15];

    if (v16 != self->_selectedIndex)
    {
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      self->_selectedIndex = v16;
    }

    v17 = [(NTKCFaceDetailEditOptionCell *)self _indexPathForEditOptionIndex:v16];
    if (v17)
    {
      [(NTKCFaceDetailEditOptionCell *)self _ensureIndexPathVisible:v17 animated:0];
    }

    [(NTKCFaceDetailEditOptionCell *)self reloadVisibleCells];

    goto LABEL_59;
  }

  v82 = a3;
  v18 = objc_loadWeakRetained(&self->_faceView);
  v19 = objc_opt_class();
  v20 = [(NTKEditOptionCollection *)self->_collection mode];
  v21 = objc_loadWeakRetained(&self->_faceView);
  v22 = [v21 device];
  v23 = [v19 swatchForEditModeDependsOnOptions:v20 forDevice:v22];

  v89 = objc_opt_new();
  v88 = objc_opt_new();
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v23;
  v84 = v5;
  v90 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
  if (v90)
  {
    v26 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
    v86 = *v99;
    do
    {
      v27 = 0;
      do
      {
        if (*v99 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v92 = v27;
        v28 = *(*(&v98 + 1) + 8 * v27);
        v29 = [(NSDictionary *)self->_selectedOptions objectForKeyedSubscript:v28, v82];
        [v89 setObject:v29 forKeyedSubscript:v28];

        v30 = [v5 objectForKeyedSubscript:v28];
        [v88 setObject:v30 forKeyedSubscript:v28];

        v31 = v26[174];
        v32 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v31));
        v33 = [v32 dynamicEditMode];
        v34 = [v28 integerValue];

        if (v33 == v34)
        {
          v35 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v31));
          v36 = [v35 selectedSlotOptionsForCustomEditMode:{objc_msgSend(v35, "dynamicEditMode")}];

          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v37 = v36;
          v38 = [(NSDictionary *)v37 countByEnumeratingWithState:&v94 objects:v102 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v95;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v95 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v94 + 1) + 8 * i);
                v43 = [(NSDictionary *)self->_selectedSlotOptions objectForKeyedSubscript:v42];
                [v24 setObject:v43 forKeyedSubscript:v42];

                v44 = [(NSDictionary *)v37 objectForKeyedSubscript:v42];
                [v25 setObject:v44 forKeyedSubscript:v42];
              }

              v39 = [(NSDictionary *)v37 countByEnumeratingWithState:&v94 objects:v102 count:16];
            }

            while (v39);
          }

          selectedSlotOptions = self->_selectedSlotOptions;
          self->_selectedSlotOptions = v37;

          v5 = v84;
          v26 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
        }

        v27 = v92 + 1;
      }

      while (v92 + 1 != v90);
      v90 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
    }

    while (v90);
  }

  selectedOptions = self->_selectedOptions;
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NTKEditOptionCollection mode](self->_collection, "mode")}];
  v91 = [(NSDictionary *)selectedOptions objectForKeyedSubscript:v47];

  v48 = [(NTKEditOptionCollection *)self->_collection slot];

  if (!v48)
  {
    v54 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NTKEditOptionCollection mode](self->_collection, "mode")}];
    v55 = [v5 objectForKeyedSubscript:v54];

    objc_storeStrong(&self->_selectedOptions, v82);
    goto LABEL_35;
  }

  v49 = objc_loadWeakRetained(&self->_face);
  v50 = [(NTKEditOptionCollection *)self->_collection mode];
  v51 = [(NTKEditOptionCollection *)self->_collection slot];
  v52 = [v49 selectedOptionForCustomEditMode:v50 slot:v51];

  if (v52)
  {
    v53 = v52;
  }

  else
  {
    if (!v91)
    {
      v78 = objc_loadWeakRetained(&self->_face);
      v79 = [(NTKEditOptionCollection *)self->_collection mode];
      v80 = [(NTKEditOptionCollection *)self->_collection slot];
      v81 = [v78 defaultOptionForCustomEditMode:v79 slot:v80];

      v55 = v81;
      goto LABEL_34;
    }

    v53 = v91;
  }

  v55 = v53;
LABEL_34:
  v56 = [v84 mutableCopy];
  v57 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NTKEditOptionCollection mode](self->_collection, "mode")}];
  [(NSDictionary *)v56 setObject:v55 forKey:v57];

  v58 = self->_selectedOptions;
  self->_selectedOptions = v56;

LABEL_35:
  v93 = v55;
  v59 = objc_loadWeakRetained(&self->_face);
  v60 = [v59 editOptionsPrepared];

  if ((v60 & 1) == 0)
  {
    v61 = objc_loadWeakRetained(&self->_face);
    [v61 prepareEditOptions];
  }

  v62 = objc_loadWeakRetained(&self->_face);
  v63 = [(NTKEditOptionCollection *)self->_collection mode];
  v64 = [(NTKEditOptionCollection *)self->_collection slot];
  v65 = [v62 indexOfOption:v93 forCustomEditMode:v63 slot:v64];

  v66 = v91;
  if ([v93 isEqual:v91] && v65 == self->_selectedIndex)
  {
    v87 = 0;
  }

  else
  {
    if (v65 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v67 = 0;
    }

    else
    {
      v67 = v65;
    }

    self->_selectedIndex = v67;
    v87 = 1;
  }

  if ([obj count])
  {
    if ([v88 isEqualToDictionary:v89])
    {
      v68 = [v25 isEqualToDictionary:v24] ^ 1;
    }

    else
    {
      v68 = 1;
    }

    v83 = v68;
  }

  else
  {
    v83 = 0;
  }

  v69 = objc_loadWeakRetained(&self->_faceView);
  v70 = [v69 _editModesDisabledByCurrentConfiguration];

  v71 = [(NTKEditOptionCollection *)self->_collection mode];
  v72 = [MEMORY[0x277CCABB0] numberWithInteger:v71];
  v73 = [v70 containsObject:v72];

  disabled = self->_disabled;
  if (disabled == v73)
  {
    if (!self->_disabled)
    {
      goto LABEL_52;
    }
  }

  else
  {
    self->_disabled = v73;
    if ((v73 & 1) == 0)
    {
LABEL_52:
      v75 = [(NTKEditOptionCollection *)self->_collection optionsDescription];
      [(NTKCFaceDetailEditOptionCell *)self setOptionsText:v75];
      [(UICollectionView *)self->_collectionView setScrollEnabled:1];

      goto LABEL_55;
    }
  }

  v76 = objc_loadWeakRetained(&self->_face);
  v77 = [v76 localizedExplanationMessageForDisabledEditMode:v71];
  [(NTKCFaceDetailEditOptionCell *)self setOptionsText:v77];

  v66 = v91;
  [(UICollectionView *)self->_collectionView setScrollEnabled:0];
LABEL_55:
  if (((v87 | v83) & 1) != 0 || disabled != v73)
  {
    [(NTKCFaceDetailEditOptionCell *)self reloadVisibleCells];
  }

  v5 = v84;
LABEL_59:
}

- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4
{
  v6 = a4;
  [(NTKCFaceDetailEditOptionCell *)self setCollection:a3];
  [(NTKCFaceDetailEditOptionCell *)self setSelectedOptions:v6];

  [(NTKCFaceDetailEditOptionCell *)self _setupFromCollection];
  [(UICollectionView *)self->_collectionView reloadData];
  return 0;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = NTKCFaceDetailEditOptionCell;
  [(NTKCDetailTableViewCell *)&v48 layoutSubviews];
  v3 = [(NTKCFaceDetailEditOptionCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v49.origin.x = v5;
  v49.origin.y = v7;
  v49.size.width = v9;
  v49.size.height = v11;
  Width = CGRectGetWidth(v49);
  [(NTKCFaceDetailEditOptionCell *)self separatorInset];
  v46 = v12;
  [(UICollectionView *)self->_collectionView frame];
  v44 = v14;
  v45 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *MEMORY[0x277CBF348];
  v20 = *(MEMORY[0x277CBF348] + 8);
  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  v21 = CGRectGetWidth(v50);
  [(UICollectionViewFlowLayout *)self->_layout itemSize];
  [(UICollectionView *)self->_collectionView setFrame:v19, v20, v21, v22];
  [(UICollectionView *)self->_collectionView contentInset];
  v24 = v23;
  v26 = v25;
  [(NTKCFaceDetailEditOptionCell *)self separatorInset];
  [(UICollectionView *)self->_collectionView setContentInset:v24, v27 + self->_outlinePadding * -0.5, v26, v27 + self->_outlinePadding * -0.5];
  if (self->_selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = [(NTKCFaceDetailEditOptionCell *)self _indexPathForEditOptionIndex:?];
    v51.origin.y = v44;
    v51.origin.x = v45;
    v51.size.width = v16;
    v51.size.height = v18;
    if (CGRectIsEmpty(v51) || (-[UICollectionView indexPathsForVisibleItems](self->_collectionView, "indexPathsForVisibleItems"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 containsObject:v28], v29, (v30 & 1) == 0))
    {
      [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v28 atScrollPosition:16 animated:0, *&v44, *&v45];
    }
  }

  v31 = Width + v46 * -2.0;
  [(UILabel *)self->_optionsDescription frame:*&v44];
  v33 = v32;
  [(UILabel *)self->_optionsDescription sizeThatFits:v31, 1.79769313e308];
  v35 = v34;
  [(NTKCFaceDetailEditOptionCell *)self separatorInset];
  v37 = v36;
  [(UILabel *)self->_optionsDescription setFrame:v36, v33, v31, v35];
  MaxY = CGRectGetMaxY(self->_swatchFrame);
  v39 = [(UILabel *)self->_optionsDescription font];
  [v39 _scaledValueForValue:60.0];
  v41 = MaxY + v40;
  [(UILabel *)self->_optionsDescription _firstLineBaselineOffsetFromBoundsTop];
  v43 = v41 - v42;

  [(UILabel *)self->_optionsDescription setFrame:v37, v43, v31, v35];
}

+ (double)insetSpacingForStyle:(int64_t)a3
{
  v4 = NTKCScreenStyle();
  result = 20.0;
  if (v4 != 1)
  {
    result = 0.0;
    if (a3 <= 4)
    {
      return dbl_22DCE7C20[a3];
    }
  }

  return result;
}

- (id)_dequeueCellForIndexPath:(id)a3
{
  collectionView = self->_collectionView;
  v5 = a3;
  v6 = +[_NTKCFaceDetailCollectionCell reuseIdentifier];
  v7 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v5];

  [(NTKCFaceDetailEditOptionCell *)self _setupCell:v7];

  return v7;
}

- (void)_setupCell:(id)a3
{
  x = self->_swatchFrame.origin.x;
  y = self->_swatchFrame.origin.y;
  width = self->_swatchFrame.size.width;
  height = self->_swatchFrame.size.height;
  v8 = a3;
  [v8 setSwatchFrame:{x, y, width, height}];
  [v8 setOutlineOutset:self->_outlineOutset];
}

- (id)_imageForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NTKCFaceDetailEditOptionCell *)self _editOptionIndexForIndexPath:v4];
  v6 = [(NTKEditOptionCollection *)self->_collection options];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v13 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_faceView);
    v9 = [(NTKEditOptionCollection *)self->_collection options];
    v10 = [v9 objectAtIndexedSubscript:v5];
    v11 = [(NTKEditOptionCollection *)self->_collection mode];
    selectedOptions = self->_selectedOptions;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__NTKCFaceDetailEditOptionCell__imageForIndexPath___block_invoke;
    v15[3] = &unk_27877F610;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    v13 = [WeakRetained swatchImageForEditOption:v10 mode:v11 withSelectedOptions:selectedOptions refreshHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __51__NTKCFaceDetailEditOptionCell__imageForIndexPath___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __51__NTKCFaceDetailEditOptionCell__imageForIndexPath___block_invoke_2;
  v6 = &unk_27877F610;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  v2 = _Block_copy(&v3);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v2);
  }

  objc_destroyWeak(&v8);
}

void __51__NTKCFaceDetailEditOptionCell__imageForIndexPath___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 141);
    v6[0] = *(a1 + 32);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v4 reloadItemsAtIndexPaths:v5];
  }
}

- (int64_t)_swatchImageContentMode
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  v3 = [WeakRetained swatchImageContentMode];

  return v3;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(NTKEditOptionCollection *)self->_collection options:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NTKCFaceDetailEditOptionCell *)self _dequeueCellForIndexPath:v5];
  v7 = [(NTKCFaceDetailEditOptionCell *)self _editOptionIndexForIndexPath:v5];

  v8 = [(NTKEditOptionCollection *)self->_collection options];
  v9 = [v8 objectAtIndexedSubscript:v7];

  if ([(NTKEditOptionCollection *)self->_collection collectionType]!= 1)
  {
    v10 = [v9 localizedName];
    v11 = [v10 localizedUppercaseString];
    [v6 setText:v11];
  }

  [v6 setStyle:{objc_msgSend(v9, "swatchStyle")}];
  if ([v6 is3Lines])
  {
    [(NTKCFaceDetailEditOptionCell *)self _setVerticalBottomBuffer:64.0];
  }

  return v6;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a5;
  v9 = a4;
  [v9 setActive:self->_selectedIndex == -[NTKCFaceDetailEditOptionCell _editOptionIndexForIndexPath:](self animated:{"_editOptionIndexForIndexPath:", v7), 0}];
  [v9 setDisabled:self->_disabled];
  v8 = [(NTKCFaceDetailEditOptionCell *)self _imageForIndexPath:v7];

  [v9 setImage:v8];
  [v9 setSwatchImageContentMode:{-[NTKCFaceDetailEditOptionCell _swatchImageContentMode](self, "_swatchImageContentMode")}];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_disabled)
  {
    v7 = [(NTKCFaceDetailEditOptionCell *)self _editOptionIndexForIndexPath:v6];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v9 = [(NTKCFaceDetailEditOptionCell *)self delegate];
      [v9 editOptionCell:self didSelectOptionAtIndex:v8];

      [(NTKCFaceDetailEditOptionCell *)self _ensureIndexPathVisible:v6 animated:1];
    }
  }
}

- (void)_fontSizeDidChange
{
  if (self->_optionsDescription)
  {
    v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0]];
    v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

    v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
    [(UILabel *)self->_optionsDescription setFont:v5];
  }

  [(NTKCFaceDetailEditOptionCell *)self setNeedsLayout];
}

- (void)scrollToIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  collectionView = self->_collectionView;
  v6 = [(NTKCFaceDetailEditOptionCell *)self _indexPathForEditOptionIndex:a3];
  [(UICollectionView *)collectionView scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:v4];
}

- (void)_ensureIndexPathVisible:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  rect_16 = a3;
  v6 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:rect_16];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [rect_16 item];
  if (v15 && v15 != -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", [rect_16 section]) - 1)
  {
    [(UICollectionView *)self->_collectionView bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(UICollectionView *)self->_collectionView contentInset];
    v24 = v10;
    v26 = v17 + v25;
    v28 = v19 + v27;
    v30 = v21 - (v25 + v29);
    v32 = v23 - (v27 + v31);
    v47.origin.x = v8;
    rect_8 = v24;
    v47.origin.y = v24;
    v47.size.width = v12;
    v47.size.height = v14;
    MaxX = CGRectGetMaxX(v47);
    rect = v26;
    v48.origin.x = v26;
    v48.origin.y = v28;
    v48.size.width = v30;
    v48.size.height = v32;
    if (MaxX <= CGRectGetMaxX(v48))
    {
      v49.origin.x = v8;
      v10 = rect_8;
      v49.origin.y = rect_8;
      v49.size.width = v12;
      v49.size.height = v14;
      MinX = CGRectGetMinX(v49);
      v50.origin.x = rect;
      v50.origin.y = v28;
      v50.size.width = v30;
      v50.size.height = v32;
      if (MinX < CGRectGetMinX(v50))
      {
        [(UICollectionView *)self->_collectionView contentInset];
        v40 = v39;
        v41 = self->_outlinePadding * 0.5;
        [(NTKCFaceDetailEditOptionCell *)self _spacing];
        v8 = v8 + v40 - (v41 + v42);
      }
    }

    else
    {
      [(UICollectionView *)self->_collectionView contentInset];
      v35 = v34;
      v36 = self->_outlinePadding * 0.5;
      [(NTKCFaceDetailEditOptionCell *)self _spacing];
      v8 = v8 - (v35 - (v36 + v37));
      v10 = rect_8;
    }
  }

  [(UICollectionView *)self->_collectionView scrollRectToVisible:v4 animated:v8, v10, v12, v14];
}

- (void)ensureIndexVisible:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(NTKCFaceDetailEditOptionCell *)self _indexPathForEditOptionIndex:a3];
  [(NTKCFaceDetailEditOptionCell *)self _ensureIndexPathVisible:v6 animated:v4];
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKFace)face
{
  WeakRetained = objc_loadWeakRetained(&self->_face);

  return WeakRetained;
}

- (NTKCFaceDetailEditOptionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)swatchFrame
{
  x = self->_swatchFrame.origin.x;
  y = self->_swatchFrame.origin.y;
  width = self->_swatchFrame.size.width;
  height = self->_swatchFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end