@interface HUFilterCategoryCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
- (double)cellHeight;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUFilterCategoryCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HUFilterCategoryCellLayoutOptions;
  v3 = objc_msgSendSuper2(&v8, sel_defaultOptionsForCellSizeSubclass_, a3);
  [v3 setIconSize:24.0];
  [v3 setIconToTextPadding:6.0];
  [v3 setInnerTopMargin:5.0];
  [v3 setInnerBottomMargin:5.0];
  [v3 setInnerLeadingMargin:10.0];
  [v3 setInnerTrailingMargin:20.0];
  v4 = *MEMORY[0x277D76968];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74420]];
  [v3 setPrimaryTextFont:v5];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
  [v3 setSecondaryTextFont:v6];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = HUFilterCategoryCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v8 copyWithZone:a3];
  [(HUFilterCategoryCellLayoutOptions *)self iconToTextPadding];
  [v4 setIconToTextPadding:?];
  [(HUFilterCategoryCellLayoutOptions *)self innerTopMargin];
  [v4 setInnerTopMargin:?];
  [(HUFilterCategoryCellLayoutOptions *)self innerBottomMargin];
  [v4 setInnerBottomMargin:?];
  [(HUFilterCategoryCellLayoutOptions *)self innerLeadingMargin];
  [v4 setInnerLeadingMargin:?];
  [(HUFilterCategoryCellLayoutOptions *)self innerTrailingMargin];
  [v4 setInnerTrailingMargin:?];
  v5 = [(HUFilterCategoryCellLayoutOptions *)self primaryTextFont];
  [v4 setPrimaryTextFont:v5];

  v6 = [(HUFilterCategoryCellLayoutOptions *)self secondaryTextFont];
  [v4 setSecondaryTextFont:v6];

  return v4;
}

- (double)cellHeight
{
  [(HUFilterCategoryCellLayoutOptions *)self innerTopMargin];
  v4 = v3;
  [(HUGridCellLayoutOptions *)self iconSize];
  v6 = v5;
  v7 = [(HUFilterCategoryCellLayoutOptions *)self primaryTextFont];
  [v7 lineHeight];
  v9 = v8 + 2.0;
  v10 = [(HUFilterCategoryCellLayoutOptions *)self secondaryTextFont];
  [v10 lineHeight];
  v12 = v9 + v11;

  if (v6 >= v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = v12;
  }

  v14 = v4 + v13;
  [(HUFilterCategoryCellLayoutOptions *)self innerBottomMargin];
  return v15 + v14;
}

@end