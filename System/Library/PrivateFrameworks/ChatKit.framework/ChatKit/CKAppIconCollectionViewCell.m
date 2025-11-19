@interface CKAppIconCollectionViewCell
- (id)appIconForBundleID:(id)a3;
- (void)configureWithAppName:(int64_t)a3;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation CKAppIconCollectionViewCell

- (void)configureWithAppName:(int64_t)a3
{
  [(CKAppIconCollectionViewCell *)self setAppName:?];
  if (a3 > 5)
  {
    v23 = 0;
  }

  else
  {
    v23 = [(CKAppIconCollectionViewCell *)self appIconForBundleID:off_1E72F6990[a3]];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v23];
  [(CKAppIconCollectionViewCell *)self setAppIconView:v5];

  v6 = [(CKAppIconCollectionViewCell *)self appIconView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CKAppIconCollectionViewCell *)self appIconView];
  v8 = [v7 layer];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setShadowColor:{objc_msgSend(v9, "CGColor")}];

  v10 = [(CKAppIconCollectionViewCell *)self appIconView];
  v11 = [v10 layer];
  LODWORD(v12) = 1050253722;
  [v11 setShadowOpacity:v12];

  v13 = [(CKAppIconCollectionViewCell *)self appIconView];
  v14 = [v13 layer];
  [v14 setShadowRadius:4.0];

  v15 = [(CKAppIconCollectionViewCell *)self appIconView];
  v16 = [v15 layer];
  [v16 setShadowOffset:{0.0, 1.0}];

  v17 = [(CKAppIconCollectionViewCell *)self contentView];
  v18 = [(CKAppIconCollectionViewCell *)self appIconView];
  [v17 addSubview:v18];

  v19 = [CKAppIconView alloc];
  v20 = [(CKAppIconCollectionViewCell *)self appName];
  v21 = [(CKAppIconView *)v19 initWithFrame:v20 withAppName:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKAppIconView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKAppIconView *)v21 setSemanticContentAttribute:3];
  [(CKAppIconCollectionViewCell *)self setAppContentView:v21];
  v22 = [(CKAppIconCollectionViewCell *)self contentView];
  [v22 addSubview:v21];

  [(CKAppIconCollectionViewCell *)self bringSubviewToFront:v21];
  [(CKAppIconCollectionViewCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)updateConstraints
{
  v75[6] = *MEMORY[0x1E69E9840];
  v3 = [(CKAppIconCollectionViewCell *)self constraints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(CKAppIconCollectionViewCell *)self constraints];
    [v5 deactivateConstraints:v6];
  }

  v7 = [MEMORY[0x1E695DF70] array];
  [(CKAppIconCollectionViewCell *)self setConstraints:v7];

  v66 = [(CKAppIconCollectionViewCell *)self constraints];
  v63 = [(CKAppIconCollectionViewCell *)self appIconView];
  v59 = [v63 widthAnchor];
  v61 = [(CKAppIconCollectionViewCell *)self contentView];
  v57 = [v61 widthAnchor];
  v56 = [v59 constraintEqualToAnchor:v57];
  v75[0] = v56;
  v55 = [(CKAppIconCollectionViewCell *)self appIconView];
  v53 = [v55 heightAnchor];
  v54 = [(CKAppIconCollectionViewCell *)self contentView];
  v52 = [v54 heightAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v75[1] = v51;
  v50 = [(CKAppIconCollectionViewCell *)self appIconView];
  v48 = [v50 centerXAnchor];
  v49 = [(CKAppIconCollectionViewCell *)self contentView];
  v47 = [v49 centerXAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v75[2] = v46;
  v45 = [(CKAppIconCollectionViewCell *)self appIconView];
  v43 = [v45 centerYAnchor];
  v44 = [(CKAppIconCollectionViewCell *)self contentView];
  v42 = [v44 centerYAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v75[3] = v41;
  v40 = [(CKAppIconCollectionViewCell *)self appContentView];
  v8 = [v40 widthAnchor];
  v9 = [(CKAppIconCollectionViewCell *)self contentView];
  v10 = [v9 widthAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v75[4] = v11;
  v12 = [(CKAppIconCollectionViewCell *)self appContentView];
  v13 = [v12 heightAnchor];
  v14 = [(CKAppIconCollectionViewCell *)self contentView];
  [v14 heightAnchor];
  v15 = v65 = self;
  v16 = [v13 constraintEqualToAnchor:v15];
  v75[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:6];
  [v66 addObjectsFromArray:v17];

  v18 = v65;
  v19 = [(CKAppIconCollectionViewCell *)v65 appName];
  if (v19 > 2)
  {
    switch(v19)
    {
      case 3:
        v67 = [(CKAppIconCollectionViewCell *)v65 constraints];
        v64 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        v62 = [v64 contactItemView];
        v32 = [v62 leadingAnchor];
        v58 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        v21 = [v58 leadingAnchor];
        v60 = v32;
        v22 = [v32 constraintEqualToAnchor:v21];
        v71[0] = v22;
        v23 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        v24 = [v23 contactItemView];
        v25 = [v24 topAnchor];
        v26 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        v27 = [v26 topAnchor];
        v28 = [v25 constraintEqualToAnchor:v27];
        v71[1] = v28;
        v29 = v71;
        break;
      case 4:
        v67 = [(CKAppIconCollectionViewCell *)v65 constraints];
        v64 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        v62 = [v64 contactItemView];
        v34 = [v62 leadingAnchor];
        v58 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        v21 = [v58 leadingAnchor];
        v60 = v34;
        v22 = [v34 constraintEqualToAnchor:v21];
        v70[0] = v22;
        v23 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        v24 = [v23 contactItemView];
        v25 = [v24 bottomAnchor];
        v26 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        v27 = [v26 bottomAnchor];
        v28 = [v25 constraintEqualToAnchor:v27];
        v70[1] = v28;
        v29 = v70;
        break;
      case 5:
        v67 = [(CKAppIconCollectionViewCell *)v65 constraints];
        v64 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        v62 = [v64 contactItemView];
        v30 = [v62 leadingAnchor];
        v58 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        v21 = [v58 leadingAnchor];
        v60 = v30;
        v22 = [v30 constraintEqualToAnchor:v21];
        v69[0] = v22;
        v23 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        v24 = [v23 contactItemView];
        v25 = [v24 topAnchor];
        v26 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        v27 = [v26 centerYAnchor];
        v28 = [v25 constraintEqualToAnchor:v27];
        v69[1] = v28;
        v29 = v69;
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (v19)
  {
    if (v19 == 1)
    {
      v67 = [(CKAppIconCollectionViewCell *)v65 constraints];
      v64 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      v62 = [v64 contactItemView];
      v33 = [v62 centerXAnchor];
      v58 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      v21 = [v58 trailingAnchor];
      v60 = v33;
      v22 = [v33 constraintEqualToAnchor:v21];
      v73[0] = v22;
      v23 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      v24 = [v23 contactItemView];
      v25 = [v24 centerYAnchor];
      v26 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      v27 = [v26 centerYAnchor];
      v28 = [v25 constraintEqualToAnchor:v27];
      v73[1] = v28;
      v29 = v73;
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_17;
      }

      v67 = [(CKAppIconCollectionViewCell *)v65 constraints];
      v64 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      v62 = [v64 contactItemView];
      v20 = [v62 trailingAnchor];
      v58 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      v21 = [v58 trailingAnchor];
      v60 = v20;
      v22 = [v20 constraintEqualToAnchor:v21];
      v72[0] = v22;
      v23 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      v24 = [v23 contactItemView];
      v25 = [v24 centerYAnchor];
      v26 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      v27 = [v26 topAnchor];
      v28 = [v25 constraintEqualToAnchor:v27];
      v72[1] = v28;
      v29 = v72;
    }
  }

  else
  {
    v67 = [(CKAppIconCollectionViewCell *)v65 constraints];
    v64 = [(CKAppIconCollectionViewCell *)v65 appContentView];
    v62 = [v64 contactItemView];
    v31 = [v62 centerXAnchor];
    v58 = [(CKAppIconCollectionViewCell *)v65 appIconView];
    v21 = [v58 centerXAnchor];
    v60 = v31;
    v22 = [v31 constraintEqualToAnchor:v21];
    v74[0] = v22;
    v23 = [(CKAppIconCollectionViewCell *)v65 appContentView];
    v24 = [v23 contactItemView];
    v25 = [v24 centerYAnchor];
    v26 = [(CKAppIconCollectionViewCell *)v65 appIconView];
    v27 = [v26 topAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v74[1] = v28;
    v29 = v74;
  }

  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [v67 addObjectsFromArray:v35];

  v18 = v65;
LABEL_17:
  v36 = [(CKAppIconCollectionViewCell *)v18 constraints];
  v37 = [v36 count];

  if (v37)
  {
    v38 = MEMORY[0x1E696ACD8];
    v39 = [(CKAppIconCollectionViewCell *)v18 constraints];
    [v38 activateConstraints:v39];
  }

  v68.receiver = v18;
  v68.super_class = CKAppIconCollectionViewCell;
  [(CKAppIconCollectionViewCell *)&v68 updateConstraints];
}

- (id)appIconForBundleID:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v4];
  v9 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:60.0 scale:{60.0, v7}];
  v10 = [v8 prepareImageForDescriptor:v9];
  v11 = [v8 imageForDescriptor:v9];
  v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v11 scale:"CGImage") orientation:{0, v7}];

  return v12;
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = CKAppIconCollectionViewCell;
  [(CKAppIconCollectionViewCell *)&v9 prepareForReuse];
  v3 = [(CKAppIconCollectionViewCell *)self constraints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(CKAppIconCollectionViewCell *)self constraints];
    [v5 deactivateConstraints:v6];
  }

  v7 = [(CKAppIconCollectionViewCell *)self appIconView];
  [v7 removeFromSuperview];

  v8 = [(CKAppIconCollectionViewCell *)self appContentView];
  [v8 removeFromSuperview];

  [(CKAppIconCollectionViewCell *)self setAppIconView:0];
  [(CKAppIconCollectionViewCell *)self setAppContentView:0];
  [(CKAppIconCollectionViewCell *)self setAppName:-1];
}

@end