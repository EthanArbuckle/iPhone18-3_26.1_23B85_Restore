@interface HUQuickControlSingleControlHostView
@end

@implementation HUQuickControlSingleControlHostView

id __59___HUQuickControlSingleControlHostView__setupConstraintSet__block_invoke(uint64_t a1, void *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 window];
  if (v3 && (v4 = v3, [v2 contentView], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v30 = [v2 contentView];
    v28 = [v30 centerXAnchor];
    v29 = [v2 preferredFrameLayoutGuide];
    v27 = [v29 centerXAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [v2 contentView];
    v23 = [v25 centerYAnchor];
    v24 = [v2 preferredFrameLayoutGuide];
    v22 = [v24 centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v31[1] = v21;
    v20 = [v2 contentView];
    v18 = [v20 heightAnchor];
    v19 = [v2 preferredFrameLayoutGuide];
    v6 = [v19 heightAnchor];
    LODWORD(v7) = 1132134400;
    v8 = [v18 hu_constraintsLessThanOrEqualToAnchor:v6 equalityPriority:v7];
    v31[2] = v8;
    v9 = [v2 contentView];
    v10 = [v9 widthAnchor];
    v11 = [v2 preferredFrameLayoutGuide];
    v12 = [v11 widthAnchor];
    LODWORD(v13) = 1132134400;
    v14 = [v10 hu_constraintsLessThanOrEqualToAnchor:v12 equalityPriority:v13];
    v31[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    v16 = [v15 na_arrayByFlattening];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

@end