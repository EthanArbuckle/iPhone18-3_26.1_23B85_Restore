@interface HUGridHeadlineCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3 viewSizeSubclass:(int64_t)a4 viewWidth:(double)a5 containerLeadingMargin:(double)a6 containerTrailingMargin:(double)a7;
- (double)cellInnerMargin;
- (double)editingBackgroundMinimumWidth;
- (double)headlineBaselineOffset;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUGridHeadlineCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_defaultOptionsForCellSizeSubclass_viewSizeSubclass_viewWidth_containerLeadingMargin_containerTrailingMargin_);
  [v5 handleFailureInMethod:a2 object:a1 file:@"HUGridLayoutOptions.m" lineNumber:779 description:{@"%s is unavailable; use %@ instead", "+[HUGridHeadlineCellLayoutOptions defaultOptionsForCellSizeSubclass:]", v6}];

  return 0;
}

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3 viewSizeSubclass:(int64_t)a4 viewWidth:(double)a5 containerLeadingMargin:(double)a6 containerTrailingMargin:(double)a7
{
  v21[4] = *MEMORY[0x277D85DE8];
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___HUGridHeadlineCellLayoutOptions;
  v12 = objc_msgSendSuper2(&v17, sel_defaultOptionsForCellSizeSubclass_);
  *(v12 + 160) = a4;
  *(v12 + 168) = a5;
  *(v12 + 176) = a6;
  *(v12 + 184) = a7;
  v13 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769A8] traits:32770];
  [v12 setFont:v13];

  [v12 setHeadlineBaselineOffset:15.0];
  v20[0] = &unk_282492288;
  v20[1] = &unk_282492270;
  v21[0] = &unk_282493690;
  v21[1] = &unk_2824936A0;
  v20[2] = &unk_282492330;
  v20[3] = &unk_2824922B8;
  v21[2] = &unk_2824936B0;
  v21[3] = &unk_2824936A0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  [v12 setMinimumFontSize:{HUConstantForCellSizeSubclass(a3, v14)}];

  v18[0] = &unk_282492288;
  v18[1] = &unk_282492270;
  v19[0] = &unk_2824936C0;
  v19[1] = &unk_2824936D0;
  v18[2] = &unk_2824922B8;
  v18[3] = &unk_282492348;
  v19[2] = &unk_2824936E0;
  v19[3] = &unk_2824936D0;
  v18[4] = &unk_2824922D0;
  v18[5] = &unk_282492360;
  v19[4] = &unk_2824936F0;
  v19[5] = &unk_282493700;
  v18[6] = &unk_2824922E8;
  v19[6] = &unk_2824936D0;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];
  [v12 setEditingBackgroundHeight:{HUConstantFloatForViewSizeSubclass(a4, v15)}];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = HUGridHeadlineCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v9 copyWithZone:a3];
  v4[20] = [(HUGridHeadlineCellLayoutOptions *)self viewSizeSubclass];
  [(HUGridHeadlineCellLayoutOptions *)self viewWidth];
  v4[21] = v5;
  [(HUGridHeadlineCellLayoutOptions *)self containerLeadingMargin];
  v4[22] = v6;
  [(HUGridHeadlineCellLayoutOptions *)self containerTrailingMargin];
  v4[23] = v7;
  [(HUGridHeadlineCellLayoutOptions *)self minimumFontSize];
  [v4 setMinimumFontSize:?];
  [(HUGridHeadlineCellLayoutOptions *)self headlineBaselineOffset];
  [v4 setHeadlineBaselineOffset:?];
  [(HUGridHeadlineCellLayoutOptions *)self editingBackgroundHeight];
  [v4 setEditingBackgroundHeight:?];
  return v4;
}

- (double)headlineBaselineOffset
{
  v8[4] = *MEMORY[0x277D85DE8];
  headlineBaselineOffset = self->_headlineBaselineOffset;
  if ([(HUGridHeadlineCellLayoutOptions *)self isEditing])
  {
    v4 = [(HUGridHeadlineCellLayoutOptions *)self viewSizeSubclass];
    v7[0] = &unk_282492288;
    v7[1] = &unk_2824922B8;
    v8[0] = &unk_282493710;
    v8[1] = &unk_282493720;
    v7[2] = &unk_282492348;
    v7[3] = &unk_2824922D0;
    v8[2] = &unk_282493660;
    v8[3] = &unk_282493690;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
    headlineBaselineOffset = headlineBaselineOffset + HUConstantFloatForViewSizeSubclass(v4, v5);
  }

  return headlineBaselineOffset;
}

- (double)editingBackgroundMinimumWidth
{
  v3 = [(HUGridHeadlineCellLayoutOptions *)self viewSizeSubclass];
  [(HUGridHeadlineCellLayoutOptions *)self viewWidth];
  v5 = v4;
  if (v3 < 4)
  {
    [(HUGridHeadlineCellLayoutOptions *)self containerLeadingMargin];
    v6 = v5 - v8;
    [(HUGridHeadlineCellLayoutOptions *)self containerTrailingMargin];
  }

  else
  {
    v6 = v4 * 0.5;
    [(HUGridHeadlineCellLayoutOptions *)self containerLeadingMargin];
  }

  return v6 - v7;
}

- (double)cellInnerMargin
{
  v2 = [(HUGridHeadlineCellLayoutOptions *)self isEditing];
  result = 0.0;
  if (v2)
  {
    return 14.0;
  }

  return result;
}

@end