@interface GKBasePlayerCell
+ (double)defaultRowHeight;
+ (id)itemHeightList;
+ (id)itemHeightListForIdiom:(int64_t)a3;
+ (id)padMetrics;
+ (id)phoneMetrics;
+ (void)initialize;
- (CGRect)alignmentRectForText;
- (GKBasePlayerCell)initWithFrame:(CGRect)a3;
- (void)didUpdateModel;
- (void)prepareForReuse;
- (void)setMetricsOverrides:(id)a3;
- (void)setRepresentedItem:(id)a3;
@end

@implementation GKBasePlayerCell

+ (void)initialize
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 appearanceWhenContainedInInstancesOfClasses:v3];

  v5 = [objc_opt_class() phoneMetrics];
  [v4 setMetricsOverrides:v5];
}

+ (id)itemHeightList
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v5 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v5 = 1;
  }

  if (v4 == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return [a1 itemHeightListForIdiom:v6];
}

+ (id)itemHeightListForIdiom:(int64_t)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D76918];
  if (a3 == 1)
  {
    v11[0] = @"GKFixedHeightSentinel";
    v11[1] = v3;
    v12[0] = &unk_286188DC0;
    v12[1] = &unk_286189698;
    v4 = MEMORY[0x277CBEAC0];
    v5 = v12;
    v6 = v11;
  }

  else
  {
    v9[0] = @"GKFixedHeightSentinel";
    v9[1] = v3;
    v10[0] = &unk_2861896A8;
    v10[1] = &unk_286189698;
    v4 = MEMORY[0x277CBEAC0];
    v5 = v10;
    v6 = v9;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:2];

  return v7;
}

+ (id)padMetrics
{
  v2 = objc_opt_class();

  return [v2 _gkStandardConstraintMetricsForIdiom:1];
}

+ (id)phoneMetrics
{
  v2 = objc_opt_class();

  return [v2 _gkStandardConstraintMetricsForIdiom:0];
}

+ (double)defaultRowHeight
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    return 65.0;
  }

  result = 65.0;
  if (*MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
  {
    return 90.0;
  }

  return result;
}

- (CGRect)alignmentRectForText
{
  [(UILabel *)self->_nameLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UILabel *)self->_nameLabel superview];
  [(GKBasePlayerCell *)self convertRect:v11 fromView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (GKBasePlayerCell)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = GKBasePlayerCell;
  v3 = [(GKCollectionViewCell *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [GKDashboardPlayerPhotoView alloc];
    v5 = [(GKDashboardPlayerPhotoView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    iconView = v3->_iconView;
    v3->_iconView = v5;

    [(GKDashboardPlayerPhotoView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKDashboardPlayerPhotoView *)v3->_iconView setAvatarSize:0x10000];
    v7 = [(UICollectionReusableView *)v3 _gkNewStandardTitleLabel];
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v7;

    v9 = [(GKCollectionViewCell *)v3 staticContentView];
    [v9 addSubview:v3->_nameLabel];

    v10 = [(GKCollectionViewCell *)v3 staticContentView];
    [v10 addSubview:v3->_iconView];

    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      v13 = [objc_opt_class() padMetrics];
    }

    else
    {
      v13 = [objc_opt_class() phoneMetrics];
    }

    v14 = v13;
    objc_storeStrong(&v3->_metricsOverrides, v13);
  }

  return v3;
}

- (void)setRepresentedItem:(id)a3
{
  v4 = a3;
  v5 = [(GKCollectionViewCell *)self representedItem];
  if (v5 != v4)
  {
    v6 = [(GKBasePlayerCell *)self iconView];
    [v6 setPlayer:v4];

    v7.receiver = self;
    v7.super_class = GKBasePlayerCell;
    [(GKCollectionViewCell *)&v7 setRepresentedItem:v4];
  }
}

- (void)didUpdateModel
{
  v4 = [(GKBasePlayerCell *)self player];
  v3 = [v4 displayNameWithOptions:0];
  [(UILabel *)self->_nameLabel setText:v3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKBasePlayerCell;
  [(GKCollectionViewCell *)&v3 prepareForReuse];
  [(GKDashboardPlayerPhotoView *)self->_iconView setPlayer:0];
}

- (void)setMetricsOverrides:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_metricsOverrides != v5)
  {
    objc_storeStrong(&self->_metricsOverrides, a3);
    v6 = [(GKBasePlayerCell *)self iconView];
    v7 = [(NSDictionary *)self->_metricsOverrides objectForKeyedSubscript:@"iconSize"];
    [v7 doubleValue];
    v9 = v8;

    if (v9 > 0.0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [(GKCollectionViewCell *)self staticContentView];
      v11 = [v10 constraints];

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * v15);
            v17 = [v16 firstItem];
            if (v17 == v6 && ![v16 relation])
            {
              v18 = [v16 secondItem];

              if (!v18 && ([v16 firstAttribute] == 8 || objc_msgSend(v16, "firstAttribute") == 7))
              {
                [v16 setConstant:v9];
              }
            }

            else
            {
            }

            ++v15;
          }

          while (v13 != v15);
          v19 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v13 = v19;
        }

        while (v19);
      }
    }
  }
}

@end