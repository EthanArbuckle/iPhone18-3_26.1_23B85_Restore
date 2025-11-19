@interface HUPersonFaceCropTableCell
- (HUPersonFaceCropTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUPersonFaceCropTableCell

- (HUPersonFaceCropTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = HUPersonFaceCropTableCell;
  v4 = [(HUPersonFaceCropTableCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(HUPersonFaceCropTableCell *)v4 setFaceCropView:v5];

    v6 = [(HUPersonFaceCropTableCell *)v4 faceCropView];
    [v6 setContentMode:1];

    v7 = [(HUPersonFaceCropTableCell *)v4 contentView];
    v8 = [(HUPersonFaceCropTableCell *)v4 faceCropView];
    [v7 addSubview:v8];

    v9 = objc_alloc(MEMORY[0x277D180C0]);
    v10 = [(HUPersonFaceCropTableCell *)v4 imageView];
    [v10 frame];
    v11 = [v9 initWithFrame:?];

    v12 = [MEMORY[0x277D75348] blackColor];
    [v11 setBackgroundColor:v12];

    v13 = [(HUPersonFaceCropTableCell *)v4 faceCropView];
    [v13 setMaskView:v11];

    [(HUPersonFaceCropTableCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUPersonFaceCropTableCell;
  [(HUPersonFaceCropTableCell *)&v4 prepareForReuse];
  v3 = [(HUPersonFaceCropTableCell *)self faceCropView];
  [v3 setImage:0];

  [(HUPersonFaceCropTableCell *)self setItem:0];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HUPersonFaceCropTableCell;
  [(HUPersonFaceCropTableCell *)&v14 layoutSubviews];
  v3 = [(HUPersonFaceCropTableCell *)self faceCropView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUPersonFaceCropTableCell *)self faceCropView];
  v13 = [v12 maskView];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUPersonFaceCropTableCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  [(HUPersonFaceCropTableCell *)self setFaceImage:v6];

  v7 = [(HUPersonFaceCropTableCell *)self faceImage];
  v8 = [(HUPersonFaceCropTableCell *)self faceCropView];
  [v8 setImage:v7];

  v9 = [(HUPersonFaceCropTableCell *)self faceCropView];
  [v9 sizeToFit];
}

- (void)_setupConstraints
{
  v3 = [(HUPersonFaceCropTableCell *)self constraints];

  if (!v3)
  {
    v4 = [(HUPersonFaceCropTableCell *)self faceCropView];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v38 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v6 = [v5 centerXAnchor];
    v7 = [(HUPersonFaceCropTableCell *)self layoutMarginsGuide];
    v8 = [v7 centerXAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    [v38 addObject:v9];

    v10 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v11 = [v10 centerYAnchor];
    v12 = [(HUPersonFaceCropTableCell *)self layoutMarginsGuide];
    v13 = [v12 centerYAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v38 addObject:v14];

    v15 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v16 = [v15 topAnchor];
    v17 = [(HUPersonFaceCropTableCell *)self contentView];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:20.0];
    [v38 addObject:v19];

    v20 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v21 = [v20 bottomAnchor];
    v22 = [(HUPersonFaceCropTableCell *)self contentView];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:-20.0];
    [v38 addObject:v24];

    v25 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v26 = [v25 heightAnchor];
    v27 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v28 = [v27 widthAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    [v38 addObject:v29];

    v30 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v31 = [v30 heightAnchor];
    v32 = [v31 constraintGreaterThanOrEqualToConstant:30.0];
    [v38 addObject:v32];

    v33 = [(HUPersonFaceCropTableCell *)self faceCropView];
    v34 = [v33 heightAnchor];
    v35 = [v34 constraintLessThanOrEqualToConstant:256.0];
    [v38 addObject:v35];

    [(HUPersonFaceCropTableCell *)self setConstraints:v38];
    v36 = MEMORY[0x277CCAAD0];
    v37 = [(HUPersonFaceCropTableCell *)self constraints];
    [v36 activateConstraints:v37];
  }
}

@end