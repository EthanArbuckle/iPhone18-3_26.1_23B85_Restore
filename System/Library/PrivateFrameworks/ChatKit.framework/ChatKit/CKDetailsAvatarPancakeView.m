@interface CKDetailsAvatarPancakeView
- (CKDetailsAvatarPancakeView)initWithSize:(CGSize)a3 avatarViews:(id)a4;
- (id)createAvatarCutOutView;
- (void)addConstraints;
@end

@implementation CKDetailsAvatarPancakeView

- (CKDetailsAvatarPancakeView)initWithSize:(CGSize)a3 avatarViews:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v37.receiver = self;
  v37.super_class = CKDetailsAvatarPancakeView;
  v10 = [(CKDetailsAvatarPancakeView *)&v37 initWithFrame:v8, v9, width, height];
  if (v10)
  {
    v11 = [v7 objectAtIndexedSubscript:0];
    [(CKDetailsAvatarPancakeView *)v10 setTopAvatar:v11];

    v12 = [(CKDetailsAvatarPancakeView *)v10 topAvatar];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [v7 objectAtIndexedSubscript:1];
    [(CKDetailsAvatarPancakeView *)v10 setMiddleAvatar:v13];

    v14 = [(CKDetailsAvatarPancakeView *)v10 middleAvatar];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    if ([v7 count] <= 2)
    {
      [(CKDetailsAvatarPancakeView *)v10 setBottomAvatar:0];
    }

    else
    {
      v15 = [v7 objectAtIndexedSubscript:2];
      [(CKDetailsAvatarPancakeView *)v10 setBottomAvatar:v15];
    }

    v16 = [(CKDetailsAvatarPancakeView *)v10 bottomAvatar];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v18 = [MEMORY[0x1E69DC888] whiteColor];
    [v17 setBackgroundColor:v18];

    v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
    v20 = [v17 layer];
    [v20 setCompositingFilter:v19];

    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 detailsAvatarCornerRadius];
    v23 = v22;
    v24 = [v17 layer];
    [v24 setCornerRadius:v23];

    v25 = [(CKDetailsAvatarPancakeView *)v10 createAvatarCutOutView];
    [(CKDetailsAvatarPancakeView *)v10 setTopAvatarCutOutView:v25];

    v26 = [(CKDetailsAvatarPancakeView *)v10 topAvatarCutOutView];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(CKDetailsAvatarPancakeView *)v10 bottomAvatar];

    if (v27)
    {
      v28 = [(CKDetailsAvatarPancakeView *)v10 createAvatarCutOutView];
      [(CKDetailsAvatarPancakeView *)v10 setBottomAvatarCutOutView:v28];

      v29 = [(CKDetailsAvatarPancakeView *)v10 bottomAvatarCutOutView];
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

      v30 = [(CKDetailsAvatarPancakeView *)v10 bottomAvatar];
      [(CKDetailsAvatarPancakeView *)v10 addSubview:v30];

      v31 = [(CKDetailsAvatarPancakeView *)v10 bottomAvatarCutOutView];
      v32 = [(CKDetailsAvatarPancakeView *)v10 bottomAvatar];
      [(CKDetailsAvatarPancakeView *)v10 insertSubview:v31 aboveSubview:v32];
    }

    v33 = [(CKDetailsAvatarPancakeView *)v10 middleAvatar];
    [(CKDetailsAvatarPancakeView *)v10 addSubview:v33];

    v34 = [(CKDetailsAvatarPancakeView *)v10 topAvatarCutOutView];
    [(CKDetailsAvatarPancakeView *)v10 addSubview:v34];

    v35 = [(CKDetailsAvatarPancakeView *)v10 topAvatar];
    [(CKDetailsAvatarPancakeView *)v10 addSubview:v35];

    [(CKDetailsAvatarPancakeView *)v10 addConstraints];
  }

  return v10;
}

- (void)addConstraints
{
  v92[12] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 detailsAvatarDiameter];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 detailsAvatarCutoutDiameter];
  v8 = v7;

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 detailsAvatarPancakeViewOverlapOffset];
  v11 = v10;

  v90 = [MEMORY[0x1E695DF70] array];
  v88 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  v86 = [v88 widthAnchor];
  v84 = [v86 constraintEqualToConstant:v8];
  v92[0] = v84;
  v82 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  v80 = [v82 heightAnchor];
  v78 = [v80 constraintEqualToConstant:v8];
  v92[1] = v78;
  v76 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  v74 = [v76 leadingAnchor];
  v72 = [(CKDetailsAvatarPancakeView *)self leadingAnchor];
  v70 = [v74 constraintEqualToAnchor:v72 constant:-((v8 - v5) * 0.5)];
  v92[2] = v70;
  v68 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  v66 = [v68 topAnchor];
  v64 = [(CKDetailsAvatarPancakeView *)self topAnchor];
  v62 = [v66 constraintEqualToAnchor:v64];
  v92[3] = v62;
  v60 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  v58 = [v60 widthAnchor];
  v56 = [v58 constraintEqualToConstant:v5];
  v92[4] = v56;
  v54 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  v52 = [v54 heightAnchor];
  v50 = [v52 constraintEqualToConstant:v5];
  v92[5] = v50;
  v48 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  v46 = [v48 leadingAnchor];
  v45 = [(CKDetailsAvatarPancakeView *)self leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v92[6] = v44;
  v43 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  v42 = [v43 topAnchor];
  v41 = [(CKDetailsAvatarPancakeView *)self topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:(v8 - v5) * 0.5];
  v92[7] = v40;
  v39 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  v38 = [v39 widthAnchor];
  v37 = [v38 constraintEqualToConstant:v5];
  v92[8] = v37;
  v36 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  v35 = [v36 heightAnchor];
  v34 = [v35 constraintEqualToConstant:v5];
  v92[9] = v34;
  v33 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  v32 = [v33 leadingAnchor];
  v12 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  v13 = [v12 leadingAnchor];
  v14 = [v32 constraintEqualToAnchor:v13 constant:v11];
  v92[10] = v14;
  v15 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  v16 = [v15 topAnchor];
  v17 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v92[11] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:12];
  [v90 addObjectsFromArray:v20];

  v21 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];

  if (v21)
  {
    v89 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    v87 = [v89 widthAnchor];
    v85 = [v87 constraintEqualToConstant:v5];
    v91[0] = v85;
    v83 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    v81 = [v83 heightAnchor];
    v79 = [v81 constraintEqualToConstant:v5];
    v91[1] = v79;
    v77 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    v73 = [v77 leadingAnchor];
    v75 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
    v71 = [v75 leadingAnchor];
    v69 = [v73 constraintEqualToAnchor:v71 constant:v11];
    v91[2] = v69;
    v67 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    v63 = [v67 topAnchor];
    v65 = [(CKDetailsAvatarPancakeView *)self topAvatar];
    v61 = [v65 topAnchor];
    v59 = [v63 constraintEqualToAnchor:v61];
    v91[3] = v59;
    v57 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    v55 = [v57 widthAnchor];
    v53 = [v55 constraintEqualToConstant:v8];
    v91[4] = v53;
    v51 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    v49 = [v51 heightAnchor];
    v47 = [v49 constraintEqualToConstant:v8];
    v91[5] = v47;
    v22 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    v23 = [v22 centerXAnchor];
    v24 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
    v25 = [v24 centerXAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    v91[6] = v26;
    v27 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    v28 = [v27 topAnchor];
    v29 = [(CKDetailsAvatarPancakeView *)self topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v91[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:8];
    [v90 addObjectsFromArray:v31];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v90];
}

- (id)createAvatarCutOutView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  v5 = [v2 layer];
  [v5 setCompositingFilter:v4];

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 detailsAvatarCornerRadius];
  v8 = v7;
  v9 = [v2 layer];
  [v9 setCornerRadius:v8];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

@end