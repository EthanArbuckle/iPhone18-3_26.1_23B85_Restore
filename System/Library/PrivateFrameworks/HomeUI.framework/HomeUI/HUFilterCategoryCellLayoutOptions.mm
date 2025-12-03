@interface HUFilterCategoryCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
- (double)cellHeight;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUFilterCategoryCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___HUFilterCategoryCellLayoutOptions;
  v3 = objc_msgSendSuper2(&v8, sel_defaultOptionsForCellSizeSubclass_, subclass);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HUFilterCategoryCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v8 copyWithZone:zone];
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
  primaryTextFont = [(HUFilterCategoryCellLayoutOptions *)self primaryTextFont];
  [v4 setPrimaryTextFont:primaryTextFont];

  secondaryTextFont = [(HUFilterCategoryCellLayoutOptions *)self secondaryTextFont];
  [v4 setSecondaryTextFont:secondaryTextFont];

  return v4;
}

- (double)cellHeight
{
  [(HUFilterCategoryCellLayoutOptions *)self innerTopMargin];
  v4 = v3;
  [(HUGridCellLayoutOptions *)self iconSize];
  v6 = v5;
  primaryTextFont = [(HUFilterCategoryCellLayoutOptions *)self primaryTextFont];
  [primaryTextFont lineHeight];
  v9 = v8 + 2.0;
  secondaryTextFont = [(HUFilterCategoryCellLayoutOptions *)self secondaryTextFont];
  [secondaryTextFont lineHeight];
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