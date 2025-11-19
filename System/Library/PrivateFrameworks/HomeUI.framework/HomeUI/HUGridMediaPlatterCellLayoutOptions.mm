@interface HUGridMediaPlatterCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUGridMediaPlatterCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HUGridMediaPlatterCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v8, sel_defaultOptionsForCellSizeSubclass_);
  v11[0] = &unk_282492288;
  v11[1] = &unk_282492270;
  v12[0] = &unk_282493610;
  v12[1] = &unk_2824937C0;
  v11[2] = &unk_282492330;
  v11[3] = &unk_2824922B8;
  v12[2] = &unk_282493730;
  v12[3] = &unk_2824937C0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [v4 setCellHeight:{HUConstantForCellSizeSubclass(a3, v5)}];

  v9[0] = &unk_282492288;
  v9[1] = &unk_282492270;
  v10[0] = &unk_282493710;
  v10[1] = &unk_282493710;
  v9[2] = &unk_282492330;
  v9[3] = &unk_2824922B8;
  v10[2] = &unk_282493710;
  v10[3] = &unk_282493710;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v4 setInterPlatterSpacing:{HUConstantForCellSizeSubclass(a3, v6)}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HUGridMediaPlatterCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v6 copyWithZone:a3];
  [(HUGridMediaPlatterCellLayoutOptions *)self cellHeight];
  [v4 setCellHeight:?];
  [(HUGridMediaPlatterCellLayoutOptions *)self interPlatterSpacing];
  [v4 setInterPlatterSpacing:?];
  return v4;
}

@end