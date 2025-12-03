@interface CKDetailsAvatarPancakeView
- (CKDetailsAvatarPancakeView)initWithSize:(CGSize)size avatarViews:(id)views;
- (id)createAvatarCutOutView;
- (void)addConstraints;
@end

@implementation CKDetailsAvatarPancakeView

- (CKDetailsAvatarPancakeView)initWithSize:(CGSize)size avatarViews:(id)views
{
  height = size.height;
  width = size.width;
  viewsCopy = views;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v37.receiver = self;
  v37.super_class = CKDetailsAvatarPancakeView;
  height = [(CKDetailsAvatarPancakeView *)&v37 initWithFrame:v8, v9, width, height];
  if (height)
  {
    v11 = [viewsCopy objectAtIndexedSubscript:0];
    [(CKDetailsAvatarPancakeView *)height setTopAvatar:v11];

    topAvatar = [(CKDetailsAvatarPancakeView *)height topAvatar];
    [topAvatar setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [viewsCopy objectAtIndexedSubscript:1];
    [(CKDetailsAvatarPancakeView *)height setMiddleAvatar:v13];

    middleAvatar = [(CKDetailsAvatarPancakeView *)height middleAvatar];
    [middleAvatar setTranslatesAutoresizingMaskIntoConstraints:0];

    if ([viewsCopy count] <= 2)
    {
      [(CKDetailsAvatarPancakeView *)height setBottomAvatar:0];
    }

    else
    {
      v15 = [viewsCopy objectAtIndexedSubscript:2];
      [(CKDetailsAvatarPancakeView *)height setBottomAvatar:v15];
    }

    bottomAvatar = [(CKDetailsAvatarPancakeView *)height bottomAvatar];
    [bottomAvatar setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v17 setBackgroundColor:whiteColor];

    v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
    layer = [v17 layer];
    [layer setCompositingFilter:v19];

    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 detailsAvatarCornerRadius];
    v23 = v22;
    layer2 = [v17 layer];
    [layer2 setCornerRadius:v23];

    createAvatarCutOutView = [(CKDetailsAvatarPancakeView *)height createAvatarCutOutView];
    [(CKDetailsAvatarPancakeView *)height setTopAvatarCutOutView:createAvatarCutOutView];

    topAvatarCutOutView = [(CKDetailsAvatarPancakeView *)height topAvatarCutOutView];
    [topAvatarCutOutView setTranslatesAutoresizingMaskIntoConstraints:0];

    bottomAvatar2 = [(CKDetailsAvatarPancakeView *)height bottomAvatar];

    if (bottomAvatar2)
    {
      createAvatarCutOutView2 = [(CKDetailsAvatarPancakeView *)height createAvatarCutOutView];
      [(CKDetailsAvatarPancakeView *)height setBottomAvatarCutOutView:createAvatarCutOutView2];

      bottomAvatarCutOutView = [(CKDetailsAvatarPancakeView *)height bottomAvatarCutOutView];
      [bottomAvatarCutOutView setTranslatesAutoresizingMaskIntoConstraints:0];

      bottomAvatar3 = [(CKDetailsAvatarPancakeView *)height bottomAvatar];
      [(CKDetailsAvatarPancakeView *)height addSubview:bottomAvatar3];

      bottomAvatarCutOutView2 = [(CKDetailsAvatarPancakeView *)height bottomAvatarCutOutView];
      bottomAvatar4 = [(CKDetailsAvatarPancakeView *)height bottomAvatar];
      [(CKDetailsAvatarPancakeView *)height insertSubview:bottomAvatarCutOutView2 aboveSubview:bottomAvatar4];
    }

    middleAvatar2 = [(CKDetailsAvatarPancakeView *)height middleAvatar];
    [(CKDetailsAvatarPancakeView *)height addSubview:middleAvatar2];

    topAvatarCutOutView2 = [(CKDetailsAvatarPancakeView *)height topAvatarCutOutView];
    [(CKDetailsAvatarPancakeView *)height addSubview:topAvatarCutOutView2];

    topAvatar2 = [(CKDetailsAvatarPancakeView *)height topAvatar];
    [(CKDetailsAvatarPancakeView *)height addSubview:topAvatar2];

    [(CKDetailsAvatarPancakeView *)height addConstraints];
  }

  return height;
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

  array = [MEMORY[0x1E695DF70] array];
  topAvatarCutOutView = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  widthAnchor = [topAvatarCutOutView widthAnchor];
  v84 = [widthAnchor constraintEqualToConstant:v8];
  v92[0] = v84;
  topAvatarCutOutView2 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  heightAnchor = [topAvatarCutOutView2 heightAnchor];
  v78 = [heightAnchor constraintEqualToConstant:v8];
  v92[1] = v78;
  topAvatarCutOutView3 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  leadingAnchor = [topAvatarCutOutView3 leadingAnchor];
  leadingAnchor2 = [(CKDetailsAvatarPancakeView *)self leadingAnchor];
  v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-((v8 - v5) * 0.5)];
  v92[2] = v70;
  topAvatarCutOutView4 = [(CKDetailsAvatarPancakeView *)self topAvatarCutOutView];
  topAnchor = [topAvatarCutOutView4 topAnchor];
  topAnchor2 = [(CKDetailsAvatarPancakeView *)self topAnchor];
  v62 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v92[3] = v62;
  topAvatar = [(CKDetailsAvatarPancakeView *)self topAvatar];
  widthAnchor2 = [topAvatar widthAnchor];
  v56 = [widthAnchor2 constraintEqualToConstant:v5];
  v92[4] = v56;
  topAvatar2 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  heightAnchor2 = [topAvatar2 heightAnchor];
  v50 = [heightAnchor2 constraintEqualToConstant:v5];
  v92[5] = v50;
  topAvatar3 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  leadingAnchor3 = [topAvatar3 leadingAnchor];
  leadingAnchor4 = [(CKDetailsAvatarPancakeView *)self leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v92[6] = v44;
  topAvatar4 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  topAnchor3 = [topAvatar4 topAnchor];
  topAnchor4 = [(CKDetailsAvatarPancakeView *)self topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:(v8 - v5) * 0.5];
  v92[7] = v40;
  middleAvatar = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  widthAnchor3 = [middleAvatar widthAnchor];
  v37 = [widthAnchor3 constraintEqualToConstant:v5];
  v92[8] = v37;
  middleAvatar2 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  heightAnchor3 = [middleAvatar2 heightAnchor];
  v34 = [heightAnchor3 constraintEqualToConstant:v5];
  v92[9] = v34;
  middleAvatar3 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  leadingAnchor5 = [middleAvatar3 leadingAnchor];
  topAvatar5 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  leadingAnchor6 = [topAvatar5 leadingAnchor];
  v14 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v11];
  v92[10] = v14;
  middleAvatar4 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
  topAnchor5 = [middleAvatar4 topAnchor];
  topAvatar6 = [(CKDetailsAvatarPancakeView *)self topAvatar];
  topAnchor6 = [topAvatar6 topAnchor];
  v19 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v92[11] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:12];
  [array addObjectsFromArray:v20];

  bottomAvatar = [(CKDetailsAvatarPancakeView *)self bottomAvatar];

  if (bottomAvatar)
  {
    bottomAvatar2 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    widthAnchor4 = [bottomAvatar2 widthAnchor];
    v85 = [widthAnchor4 constraintEqualToConstant:v5];
    v91[0] = v85;
    bottomAvatar3 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    heightAnchor4 = [bottomAvatar3 heightAnchor];
    v79 = [heightAnchor4 constraintEqualToConstant:v5];
    v91[1] = v79;
    bottomAvatar4 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    leadingAnchor7 = [bottomAvatar4 leadingAnchor];
    middleAvatar5 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
    leadingAnchor8 = [middleAvatar5 leadingAnchor];
    v69 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v11];
    v91[2] = v69;
    bottomAvatar5 = [(CKDetailsAvatarPancakeView *)self bottomAvatar];
    topAnchor7 = [bottomAvatar5 topAnchor];
    topAvatar7 = [(CKDetailsAvatarPancakeView *)self topAvatar];
    topAnchor8 = [topAvatar7 topAnchor];
    v59 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v91[3] = v59;
    bottomAvatarCutOutView = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    widthAnchor5 = [bottomAvatarCutOutView widthAnchor];
    v53 = [widthAnchor5 constraintEqualToConstant:v8];
    v91[4] = v53;
    bottomAvatarCutOutView2 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    heightAnchor5 = [bottomAvatarCutOutView2 heightAnchor];
    v47 = [heightAnchor5 constraintEqualToConstant:v8];
    v91[5] = v47;
    bottomAvatarCutOutView3 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    centerXAnchor = [bottomAvatarCutOutView3 centerXAnchor];
    middleAvatar6 = [(CKDetailsAvatarPancakeView *)self middleAvatar];
    centerXAnchor2 = [middleAvatar6 centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v91[6] = v26;
    bottomAvatarCutOutView4 = [(CKDetailsAvatarPancakeView *)self bottomAvatarCutOutView];
    topAnchor9 = [bottomAvatarCutOutView4 topAnchor];
    topAnchor10 = [(CKDetailsAvatarPancakeView *)self topAnchor];
    v30 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v91[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:8];
    [array addObjectsFromArray:v31];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (id)createAvatarCutOutView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setBackgroundColor:whiteColor];

  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  layer = [v2 layer];
  [layer setCompositingFilter:v4];

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 detailsAvatarCornerRadius];
  v8 = v7;
  layer2 = [v2 layer];
  [layer2 setCornerRadius:v8];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

@end