@interface CKAppIconView
- (CKAppIconView)initWithFrame:(CGRect)a3 withAppName:(int64_t)a4;
- (void)setUpSubviews;
- (void)updateConstraints;
@end

@implementation CKAppIconView

- (CKAppIconView)initWithFrame:(CGRect)a3 withAppName:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CKAppIconView;
  v5 = [(CKAppIconView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKAppIconView *)v5 setAppName:a4];
    [(CKAppIconView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKAppIconView *)v6 setUpSubviews];
  }

  return v6;
}

- (void)setUpSubviews
{
  v3 = [(CKAppIconView *)self appName];
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          goto LABEL_18;
        }

        v4 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"HighlightPhotos"];
        v5 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"Syndication_Avatar3"];
        v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
        [(CKAppIconView *)self setActivityItemView:v6];

        v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
        [(CKAppIconView *)self setContactItemView:v7];

        goto LABEL_17;
      }

      v10 = MEMORY[0x1E69DCAB8];
      v11 = @"Syndication_Avatar2";
    }

    else
    {
      v10 = MEMORY[0x1E69DCAB8];
      v11 = @"Syndication_Avatar1";
    }

    goto LABEL_15;
  }

  switch(v3)
  {
    case 3:
      v8 = MEMORY[0x1E69DCAB8];
      v9 = @"Syndication_Avatar4";
      break;
    case 4:
      v10 = MEMORY[0x1E69DCAB8];
      v11 = @"Syndication_Avatar5";
LABEL_15:
      v4 = [v10 ckImageNamed:v11];
      v12 = [CKAppIconLinkView alloc];
      v13 = [(CKAppIconView *)self appName];
      v14 = [(CKAppIconLinkView *)v12 initWithFrame:v13 withAppName:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(CKAppIconView *)self setActivityItemView:v14];

      goto LABEL_16;
    case 5:
      v8 = MEMORY[0x1E69DCAB8];
      v9 = @"Syndication_Avatar6";
      break;
    default:
      goto LABEL_18;
  }

  v4 = [v8 ckImageNamed:v9];
  [(CKAppIconView *)self setActivityItemView:0];
LABEL_16:
  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
  [(CKAppIconView *)self setContactItemView:v5];
LABEL_17:

LABEL_18:
  v15 = [(CKAppIconView *)self activityItemView];

  if (v15)
  {
    v16 = [(CKAppIconView *)self activityItemView];
    [(CKAppIconView *)self addSubview:v16];

    v17 = [(CKAppIconView *)self activityItemView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v18 = [(CKAppIconView *)self contactItemView];
  [(CKAppIconView *)self addSubview:v18];

  v19 = [(CKAppIconView *)self contactItemView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)updateConstraints
{
  v91[8] = *MEMORY[0x1E69E9840];
  v3 = [(CKAppIconView *)self constraints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(CKAppIconView *)self constraints];
    [v5 deactivateConstraints:v6];
  }

  v7 = [MEMORY[0x1E695DF70] array];
  [(CKAppIconView *)self setConstraints:v7];

  v8 = [(CKAppIconView *)self appName];
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_20;
        }

        v82 = [(CKAppIconView *)self constraints];
        v72 = [(CKAppIconView *)self activityItemView];
        v71 = [v72 widthAnchor];
        v68 = [(CKAppIconView *)self heightAnchor];
        v66 = [v71 constraintEqualToAnchor:v68 multiplier:2.45];
        v89[0] = v66;
        v70 = [(CKAppIconView *)self activityItemView];
        v65 = [v70 heightAnchor];
        v64 = [(CKAppIconView *)self heightAnchor];
        v81 = [v65 constraintEqualToAnchor:v64 multiplier:2.1];
        v89[1] = v81;
        v80 = [(CKAppIconView *)self contactItemView];
        v9 = [v80 widthAnchor];
        v63 = [(CKAppIconView *)self heightAnchor];
        v79 = v9;
        v78 = [v9 constraintEqualToAnchor:v63 multiplier:0.35];
        v89[2] = v78;
        v77 = [(CKAppIconView *)self contactItemView];
        v10 = [v77 heightAnchor];
        v75 = [(CKAppIconView *)self heightAnchor];
        v76 = v10;
        v74 = [v10 constraintEqualToAnchor:0.35 multiplier:?];
        v89[3] = v74;
        v73 = [(CKAppIconView *)self contactItemView];
        v62 = [v73 bottomAnchor];
        v61 = [(CKAppIconView *)self bottomAnchor];
        v60 = [v62 constraintEqualToAnchor:v61];
        v89[4] = v60;
        v59 = [(CKAppIconView *)self contactItemView];
        v58 = [v59 trailingAnchor];
        v57 = [(CKAppIconView *)self trailingAnchor];
        v56 = [v58 constraintEqualToAnchor:v57];
        v89[5] = v56;
        v55 = [(CKAppIconView *)self activityItemView];
        v53 = [v55 trailingAnchor];
        v54 = [(CKAppIconView *)self contactItemView];
        v11 = [v54 trailingAnchor];
        v12 = [v53 constraintEqualToAnchor:v11 constant:30.0];
        v89[6] = v12;
        v13 = [(CKAppIconView *)self activityItemView];
        v14 = [v13 centerYAnchor];
        v15 = [(CKAppIconView *)self contactItemView];
        v16 = [v15 topAnchor];
        v17 = [v14 constraintEqualToAnchor:v16 constant:-25.0];
        v89[7] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:8];
        v19 = v82;
        [v82 addObjectsFromArray:v18];

        v20 = v66;
        v21 = v68;

        goto LABEL_18;
      }

      v84 = [(CKAppIconView *)self constraints];
      v72 = [(CKAppIconView *)self activityItemView];
      v71 = [v72 widthAnchor];
      v69 = [(CKAppIconView *)self heightAnchor];
      v67 = [v71 constraintEqualToAnchor:v69 multiplier:2.17];
      v90[0] = v67;
      v70 = [(CKAppIconView *)self activityItemView];
      v65 = [v70 heightAnchor];
      v64 = [(CKAppIconView *)self heightAnchor];
      v81 = [v65 constraintEqualToAnchor:v64 multiplier:0.98];
      v90[1] = v81;
      v80 = [(CKAppIconView *)self contactItemView];
      v44 = [v80 widthAnchor];
      v63 = [(CKAppIconView *)self heightAnchor];
      v79 = v44;
      v78 = [v44 constraintEqualToAnchor:v63 multiplier:0.35];
      v90[2] = v78;
      v77 = [(CKAppIconView *)self contactItemView];
      v45 = [v77 heightAnchor];
      v75 = [(CKAppIconView *)self heightAnchor];
      v76 = v45;
      v74 = [v45 constraintEqualToAnchor:0.35 multiplier:?];
      v90[3] = v74;
      v73 = [(CKAppIconView *)self activityItemView];
      v62 = [v73 leadingAnchor];
      v61 = [(CKAppIconView *)self leadingAnchor];
      v60 = [v62 constraintEqualToAnchor:v61];
      v90[4] = v60;
      v59 = [(CKAppIconView *)self activityItemView];
      v58 = [v59 bottomAnchor];
      v57 = [(CKAppIconView *)self bottomAnchor];
      v56 = [v58 constraintEqualToAnchor:v57];
      v90[5] = v56;
      v55 = [(CKAppIconView *)self activityItemView];
      v53 = [v55 trailingAnchor];
      v54 = [(CKAppIconView *)self contactItemView];
      v11 = [v54 trailingAnchor];
      v12 = [v53 constraintEqualToAnchor:v11];
      v90[6] = v12;
      v13 = [(CKAppIconView *)self activityItemView];
      v14 = [v13 topAnchor];
      v15 = [(CKAppIconView *)self contactItemView];
      v36 = [v15 bottomAnchor];
      v37 = [v14 constraintEqualToAnchor:v36 constant:5.0];
      v90[7] = v37;
      v38 = MEMORY[0x1E695DEC8];
      v39 = v90;
    }

    else
    {
      v84 = [(CKAppIconView *)self constraints];
      v72 = [(CKAppIconView *)self activityItemView];
      v71 = [v72 widthAnchor];
      v69 = [(CKAppIconView *)self heightAnchor];
      v67 = [v71 constraintEqualToAnchor:v69 multiplier:2.8];
      v91[0] = v67;
      v70 = [(CKAppIconView *)self activityItemView];
      v65 = [v70 heightAnchor];
      v64 = [(CKAppIconView *)self heightAnchor];
      v81 = [v65 constraintEqualToAnchor:v64 multiplier:0.98];
      v91[1] = v81;
      v80 = [(CKAppIconView *)self contactItemView];
      v34 = [v80 widthAnchor];
      v63 = [(CKAppIconView *)self heightAnchor];
      v79 = v34;
      v78 = [v34 constraintEqualToAnchor:v63 multiplier:0.35];
      v91[2] = v78;
      v77 = [(CKAppIconView *)self contactItemView];
      v35 = [v77 heightAnchor];
      v75 = [(CKAppIconView *)self heightAnchor];
      v76 = v35;
      v74 = [v35 constraintEqualToAnchor:0.35 multiplier:?];
      v91[3] = v74;
      v73 = [(CKAppIconView *)self contactItemView];
      v62 = [v73 leadingAnchor];
      v61 = [(CKAppIconView *)self leadingAnchor];
      v60 = [v62 constraintEqualToAnchor:v61];
      v91[4] = v60;
      v59 = [(CKAppIconView *)self contactItemView];
      v58 = [v59 bottomAnchor];
      v57 = [(CKAppIconView *)self bottomAnchor];
      v56 = [v58 constraintEqualToAnchor:v57];
      v91[5] = v56;
      v55 = [(CKAppIconView *)self activityItemView];
      v53 = [v55 leadingAnchor];
      v54 = [(CKAppIconView *)self contactItemView];
      v11 = [v54 leadingAnchor];
      v12 = [v53 constraintEqualToAnchor:v11];
      v91[6] = v12;
      v13 = [(CKAppIconView *)self activityItemView];
      v14 = [v13 bottomAnchor];
      v15 = [(CKAppIconView *)self contactItemView];
      v36 = [v15 topAnchor];
      v37 = [v14 constraintEqualToAnchor:v36 constant:-3.0];
      v91[7] = v37;
      v38 = MEMORY[0x1E695DEC8];
      v39 = v91;
    }

LABEL_17:
    v48 = [v38 arrayWithObjects:v39 count:8];
    v19 = v84;
    [v84 addObjectsFromArray:v48];

    v20 = v67;
    v21 = v69;
LABEL_18:

    v26 = v64;
    v23 = v71;

    v25 = v65;
    v22 = v72;

    v24 = v70;
    v30 = v63;

    goto LABEL_19;
  }

  switch(v8)
  {
    case 3:
      v83 = [(CKAppIconView *)self constraints];
      v22 = [(CKAppIconView *)self contactItemView];
      v23 = [v22 widthAnchor];
      v21 = [(CKAppIconView *)self heightAnchor];
      v20 = [v23 constraintEqualToAnchor:v21 multiplier:0.35];
      v88[0] = v20;
      v24 = [(CKAppIconView *)self contactItemView];
      v25 = [v24 heightAnchor];
      v26 = [(CKAppIconView *)self heightAnchor];
      v81 = [v25 constraintEqualToAnchor:v26 multiplier:0.35];
      v88[1] = v81;
      v80 = [(CKAppIconView *)self contactItemView];
      v40 = [v80 centerXAnchor];
      v41 = [(CKAppIconView *)self centerXAnchor];
      v79 = v40;
      v42 = v40;
      v30 = v41;
      v78 = [v42 constraintEqualToAnchor:v41];
      v88[2] = v78;
      v77 = [(CKAppIconView *)self contactItemView];
      v43 = [v77 centerYAnchor];
      v75 = [(CKAppIconView *)self centerYAnchor];
      v76 = v43;
      v74 = [v43 constraintEqualToAnchor:?];
      v88[3] = v74;
      v32 = MEMORY[0x1E695DEC8];
      v33 = v88;
      break;
    case 4:
      v84 = [(CKAppIconView *)self constraints];
      v72 = [(CKAppIconView *)self activityItemView];
      v71 = [v72 widthAnchor];
      v69 = [(CKAppIconView *)self heightAnchor];
      v67 = [v71 constraintEqualToAnchor:v69 multiplier:2.345];
      v87[0] = v67;
      v70 = [(CKAppIconView *)self activityItemView];
      v65 = [v70 heightAnchor];
      v64 = [(CKAppIconView *)self heightAnchor];
      v81 = [v65 constraintEqualToAnchor:v64 multiplier:0.98];
      v87[1] = v81;
      v80 = [(CKAppIconView *)self contactItemView];
      v46 = [v80 widthAnchor];
      v63 = [(CKAppIconView *)self heightAnchor];
      v79 = v46;
      v78 = [v46 constraintEqualToAnchor:v63 multiplier:0.35];
      v87[2] = v78;
      v77 = [(CKAppIconView *)self contactItemView];
      v47 = [v77 heightAnchor];
      v75 = [(CKAppIconView *)self heightAnchor];
      v76 = v47;
      v74 = [v47 constraintEqualToAnchor:0.35 multiplier:?];
      v87[3] = v74;
      v73 = [(CKAppIconView *)self contactItemView];
      v62 = [v73 leadingAnchor];
      v61 = [(CKAppIconView *)self leadingAnchor];
      v60 = [v62 constraintEqualToAnchor:v61];
      v87[4] = v60;
      v59 = [(CKAppIconView *)self contactItemView];
      v58 = [v59 topAnchor];
      v57 = [(CKAppIconView *)self topAnchor];
      v56 = [v58 constraintEqualToAnchor:v57];
      v87[5] = v56;
      v55 = [(CKAppIconView *)self activityItemView];
      v53 = [v55 leadingAnchor];
      v54 = [(CKAppIconView *)self contactItemView];
      v11 = [v54 leadingAnchor];
      v12 = [v53 constraintEqualToAnchor:v11];
      v87[6] = v12;
      v13 = [(CKAppIconView *)self activityItemView];
      v14 = [v13 topAnchor];
      v15 = [(CKAppIconView *)self contactItemView];
      v36 = [v15 bottomAnchor];
      v37 = [v14 constraintEqualToAnchor:v36 constant:3.0];
      v87[7] = v37;
      v38 = MEMORY[0x1E695DEC8];
      v39 = v87;
      goto LABEL_17;
    case 5:
      v83 = [(CKAppIconView *)self constraints];
      v22 = [(CKAppIconView *)self contactItemView];
      v23 = [v22 widthAnchor];
      v21 = [(CKAppIconView *)self heightAnchor];
      v20 = [v23 constraintEqualToAnchor:v21 multiplier:0.35];
      v86[0] = v20;
      v24 = [(CKAppIconView *)self contactItemView];
      v25 = [v24 heightAnchor];
      v26 = [(CKAppIconView *)self heightAnchor];
      v81 = [v25 constraintEqualToAnchor:v26 multiplier:0.35];
      v86[1] = v81;
      v80 = [(CKAppIconView *)self contactItemView];
      v27 = [v80 centerXAnchor];
      v28 = [(CKAppIconView *)self centerXAnchor];
      v79 = v27;
      v29 = v27;
      v30 = v28;
      v78 = [v29 constraintEqualToAnchor:v28];
      v86[2] = v78;
      v77 = [(CKAppIconView *)self contactItemView];
      v31 = [v77 centerYAnchor];
      v75 = [(CKAppIconView *)self centerYAnchor];
      v76 = v31;
      v74 = [v31 constraintEqualToAnchor:?];
      v86[3] = v74;
      v32 = MEMORY[0x1E695DEC8];
      v33 = v86;
      break;
    default:
      goto LABEL_20;
  }

  [v32 arrayWithObjects:v33 count:4];
  v73 = v19 = v83;
  [v83 addObjectsFromArray:?];
LABEL_19:

LABEL_20:
  v49 = [(CKAppIconView *)self constraints];
  v50 = [v49 count];

  if (v50)
  {
    v51 = MEMORY[0x1E696ACD8];
    v52 = [(CKAppIconView *)self constraints];
    [v51 activateConstraints:v52];
  }

  v85.receiver = self;
  v85.super_class = CKAppIconView;
  [(CKAppIconView *)&v85 updateConstraints];
}

@end