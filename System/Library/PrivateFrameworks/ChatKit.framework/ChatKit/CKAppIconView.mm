@interface CKAppIconView
- (CKAppIconView)initWithFrame:(CGRect)frame withAppName:(int64_t)name;
- (void)setUpSubviews;
- (void)updateConstraints;
@end

@implementation CKAppIconView

- (CKAppIconView)initWithFrame:(CGRect)frame withAppName:(int64_t)name
{
  v8.receiver = self;
  v8.super_class = CKAppIconView;
  v5 = [(CKAppIconView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKAppIconView *)v5 setAppName:name];
    [(CKAppIconView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKAppIconView *)v6 setUpSubviews];
  }

  return v6;
}

- (void)setUpSubviews
{
  appName = [(CKAppIconView *)self appName];
  if (appName <= 2)
  {
    if (appName)
    {
      if (appName != 1)
      {
        if (appName != 2)
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

  switch(appName)
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
      appName2 = [(CKAppIconView *)self appName];
      v14 = [(CKAppIconLinkView *)v12 initWithFrame:appName2 withAppName:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
  activityItemView = [(CKAppIconView *)self activityItemView];

  if (activityItemView)
  {
    activityItemView2 = [(CKAppIconView *)self activityItemView];
    [(CKAppIconView *)self addSubview:activityItemView2];

    activityItemView3 = [(CKAppIconView *)self activityItemView];
    [activityItemView3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  contactItemView = [(CKAppIconView *)self contactItemView];
  [(CKAppIconView *)self addSubview:contactItemView];

  contactItemView2 = [(CKAppIconView *)self contactItemView];
  [contactItemView2 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)updateConstraints
{
  v91[8] = *MEMORY[0x1E69E9840];
  constraints = [(CKAppIconView *)self constraints];
  v4 = [constraints count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    constraints2 = [(CKAppIconView *)self constraints];
    [v5 deactivateConstraints:constraints2];
  }

  array = [MEMORY[0x1E695DF70] array];
  [(CKAppIconView *)self setConstraints:array];

  appName = [(CKAppIconView *)self appName];
  if (appName <= 2)
  {
    if (appName)
    {
      if (appName != 1)
      {
        if (appName != 2)
        {
          goto LABEL_20;
        }

        constraints3 = [(CKAppIconView *)self constraints];
        activityItemView = [(CKAppIconView *)self activityItemView];
        widthAnchor = [activityItemView widthAnchor];
        heightAnchor = [(CKAppIconView *)self heightAnchor];
        v66 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:2.45];
        v89[0] = v66;
        activityItemView2 = [(CKAppIconView *)self activityItemView];
        heightAnchor2 = [activityItemView2 heightAnchor];
        heightAnchor3 = [(CKAppIconView *)self heightAnchor];
        v81 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:2.1];
        v89[1] = v81;
        contactItemView = [(CKAppIconView *)self contactItemView];
        widthAnchor2 = [contactItemView widthAnchor];
        heightAnchor4 = [(CKAppIconView *)self heightAnchor];
        v79 = widthAnchor2;
        v78 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4 multiplier:0.35];
        v89[2] = v78;
        contactItemView2 = [(CKAppIconView *)self contactItemView];
        heightAnchor5 = [contactItemView2 heightAnchor];
        heightAnchor6 = [(CKAppIconView *)self heightAnchor];
        v76 = heightAnchor5;
        v74 = [heightAnchor5 constraintEqualToAnchor:0.35 multiplier:?];
        v89[3] = v74;
        contactItemView3 = [(CKAppIconView *)self contactItemView];
        bottomAnchor = [contactItemView3 bottomAnchor];
        bottomAnchor2 = [(CKAppIconView *)self bottomAnchor];
        v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v89[4] = v60;
        contactItemView4 = [(CKAppIconView *)self contactItemView];
        trailingAnchor = [contactItemView4 trailingAnchor];
        trailingAnchor2 = [(CKAppIconView *)self trailingAnchor];
        v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v89[5] = v56;
        activityItemView3 = [(CKAppIconView *)self activityItemView];
        trailingAnchor3 = [activityItemView3 trailingAnchor];
        contactItemView5 = [(CKAppIconView *)self contactItemView];
        trailingAnchor4 = [contactItemView5 trailingAnchor];
        v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:30.0];
        v89[6] = v12;
        activityItemView4 = [(CKAppIconView *)self activityItemView];
        centerYAnchor = [activityItemView4 centerYAnchor];
        contactItemView6 = [(CKAppIconView *)self contactItemView];
        topAnchor = [contactItemView6 topAnchor];
        v17 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:-25.0];
        v89[7] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:8];
        v19 = constraints3;
        [constraints3 addObjectsFromArray:v18];

        v20 = v66;
        heightAnchor10 = heightAnchor;

        goto LABEL_18;
      }

      constraints4 = [(CKAppIconView *)self constraints];
      activityItemView = [(CKAppIconView *)self activityItemView];
      widthAnchor = [activityItemView widthAnchor];
      heightAnchor7 = [(CKAppIconView *)self heightAnchor];
      v67 = [widthAnchor constraintEqualToAnchor:heightAnchor7 multiplier:2.17];
      v90[0] = v67;
      activityItemView2 = [(CKAppIconView *)self activityItemView];
      heightAnchor2 = [activityItemView2 heightAnchor];
      heightAnchor3 = [(CKAppIconView *)self heightAnchor];
      v81 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.98];
      v90[1] = v81;
      contactItemView = [(CKAppIconView *)self contactItemView];
      widthAnchor3 = [contactItemView widthAnchor];
      heightAnchor4 = [(CKAppIconView *)self heightAnchor];
      v79 = widthAnchor3;
      v78 = [widthAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.35];
      v90[2] = v78;
      contactItemView2 = [(CKAppIconView *)self contactItemView];
      heightAnchor8 = [contactItemView2 heightAnchor];
      heightAnchor6 = [(CKAppIconView *)self heightAnchor];
      v76 = heightAnchor8;
      v74 = [heightAnchor8 constraintEqualToAnchor:0.35 multiplier:?];
      v90[3] = v74;
      contactItemView3 = [(CKAppIconView *)self activityItemView];
      bottomAnchor = [contactItemView3 leadingAnchor];
      bottomAnchor2 = [(CKAppIconView *)self leadingAnchor];
      v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v90[4] = v60;
      contactItemView4 = [(CKAppIconView *)self activityItemView];
      trailingAnchor = [contactItemView4 bottomAnchor];
      trailingAnchor2 = [(CKAppIconView *)self bottomAnchor];
      v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v90[5] = v56;
      activityItemView3 = [(CKAppIconView *)self activityItemView];
      trailingAnchor3 = [activityItemView3 trailingAnchor];
      contactItemView5 = [(CKAppIconView *)self contactItemView];
      trailingAnchor4 = [contactItemView5 trailingAnchor];
      v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v90[6] = v12;
      activityItemView4 = [(CKAppIconView *)self activityItemView];
      centerYAnchor = [activityItemView4 topAnchor];
      contactItemView6 = [(CKAppIconView *)self contactItemView];
      bottomAnchor3 = [contactItemView6 bottomAnchor];
      v37 = [centerYAnchor constraintEqualToAnchor:bottomAnchor3 constant:5.0];
      v90[7] = v37;
      v38 = MEMORY[0x1E695DEC8];
      v39 = v90;
    }

    else
    {
      constraints4 = [(CKAppIconView *)self constraints];
      activityItemView = [(CKAppIconView *)self activityItemView];
      widthAnchor = [activityItemView widthAnchor];
      heightAnchor7 = [(CKAppIconView *)self heightAnchor];
      v67 = [widthAnchor constraintEqualToAnchor:heightAnchor7 multiplier:2.8];
      v91[0] = v67;
      activityItemView2 = [(CKAppIconView *)self activityItemView];
      heightAnchor2 = [activityItemView2 heightAnchor];
      heightAnchor3 = [(CKAppIconView *)self heightAnchor];
      v81 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.98];
      v91[1] = v81;
      contactItemView = [(CKAppIconView *)self contactItemView];
      widthAnchor4 = [contactItemView widthAnchor];
      heightAnchor4 = [(CKAppIconView *)self heightAnchor];
      v79 = widthAnchor4;
      v78 = [widthAnchor4 constraintEqualToAnchor:heightAnchor4 multiplier:0.35];
      v91[2] = v78;
      contactItemView2 = [(CKAppIconView *)self contactItemView];
      heightAnchor9 = [contactItemView2 heightAnchor];
      heightAnchor6 = [(CKAppIconView *)self heightAnchor];
      v76 = heightAnchor9;
      v74 = [heightAnchor9 constraintEqualToAnchor:0.35 multiplier:?];
      v91[3] = v74;
      contactItemView3 = [(CKAppIconView *)self contactItemView];
      bottomAnchor = [contactItemView3 leadingAnchor];
      bottomAnchor2 = [(CKAppIconView *)self leadingAnchor];
      v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v91[4] = v60;
      contactItemView4 = [(CKAppIconView *)self contactItemView];
      trailingAnchor = [contactItemView4 bottomAnchor];
      trailingAnchor2 = [(CKAppIconView *)self bottomAnchor];
      v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v91[5] = v56;
      activityItemView3 = [(CKAppIconView *)self activityItemView];
      trailingAnchor3 = [activityItemView3 leadingAnchor];
      contactItemView5 = [(CKAppIconView *)self contactItemView];
      trailingAnchor4 = [contactItemView5 leadingAnchor];
      v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v91[6] = v12;
      activityItemView4 = [(CKAppIconView *)self activityItemView];
      centerYAnchor = [activityItemView4 bottomAnchor];
      contactItemView6 = [(CKAppIconView *)self contactItemView];
      bottomAnchor3 = [contactItemView6 topAnchor];
      v37 = [centerYAnchor constraintEqualToAnchor:bottomAnchor3 constant:-3.0];
      v91[7] = v37;
      v38 = MEMORY[0x1E695DEC8];
      v39 = v91;
    }

LABEL_17:
    v48 = [v38 arrayWithObjects:v39 count:8];
    v19 = constraints4;
    [constraints4 addObjectsFromArray:v48];

    v20 = v67;
    heightAnchor10 = heightAnchor7;
LABEL_18:

    heightAnchor12 = heightAnchor3;
    widthAnchor5 = widthAnchor;

    heightAnchor11 = heightAnchor2;
    contactItemView7 = activityItemView;

    contactItemView8 = activityItemView2;
    v30 = heightAnchor4;

    goto LABEL_19;
  }

  switch(appName)
  {
    case 3:
      constraints5 = [(CKAppIconView *)self constraints];
      contactItemView7 = [(CKAppIconView *)self contactItemView];
      widthAnchor5 = [contactItemView7 widthAnchor];
      heightAnchor10 = [(CKAppIconView *)self heightAnchor];
      v20 = [widthAnchor5 constraintEqualToAnchor:heightAnchor10 multiplier:0.35];
      v88[0] = v20;
      contactItemView8 = [(CKAppIconView *)self contactItemView];
      heightAnchor11 = [contactItemView8 heightAnchor];
      heightAnchor12 = [(CKAppIconView *)self heightAnchor];
      v81 = [heightAnchor11 constraintEqualToAnchor:heightAnchor12 multiplier:0.35];
      v88[1] = v81;
      contactItemView = [(CKAppIconView *)self contactItemView];
      centerXAnchor = [contactItemView centerXAnchor];
      centerXAnchor2 = [(CKAppIconView *)self centerXAnchor];
      v79 = centerXAnchor;
      v42 = centerXAnchor;
      v30 = centerXAnchor2;
      v78 = [v42 constraintEqualToAnchor:centerXAnchor2];
      v88[2] = v78;
      contactItemView2 = [(CKAppIconView *)self contactItemView];
      centerYAnchor2 = [contactItemView2 centerYAnchor];
      heightAnchor6 = [(CKAppIconView *)self centerYAnchor];
      v76 = centerYAnchor2;
      v74 = [centerYAnchor2 constraintEqualToAnchor:?];
      v88[3] = v74;
      v32 = MEMORY[0x1E695DEC8];
      v33 = v88;
      break;
    case 4:
      constraints4 = [(CKAppIconView *)self constraints];
      activityItemView = [(CKAppIconView *)self activityItemView];
      widthAnchor = [activityItemView widthAnchor];
      heightAnchor7 = [(CKAppIconView *)self heightAnchor];
      v67 = [widthAnchor constraintEqualToAnchor:heightAnchor7 multiplier:2.345];
      v87[0] = v67;
      activityItemView2 = [(CKAppIconView *)self activityItemView];
      heightAnchor2 = [activityItemView2 heightAnchor];
      heightAnchor3 = [(CKAppIconView *)self heightAnchor];
      v81 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.98];
      v87[1] = v81;
      contactItemView = [(CKAppIconView *)self contactItemView];
      widthAnchor6 = [contactItemView widthAnchor];
      heightAnchor4 = [(CKAppIconView *)self heightAnchor];
      v79 = widthAnchor6;
      v78 = [widthAnchor6 constraintEqualToAnchor:heightAnchor4 multiplier:0.35];
      v87[2] = v78;
      contactItemView2 = [(CKAppIconView *)self contactItemView];
      heightAnchor13 = [contactItemView2 heightAnchor];
      heightAnchor6 = [(CKAppIconView *)self heightAnchor];
      v76 = heightAnchor13;
      v74 = [heightAnchor13 constraintEqualToAnchor:0.35 multiplier:?];
      v87[3] = v74;
      contactItemView3 = [(CKAppIconView *)self contactItemView];
      bottomAnchor = [contactItemView3 leadingAnchor];
      bottomAnchor2 = [(CKAppIconView *)self leadingAnchor];
      v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v87[4] = v60;
      contactItemView4 = [(CKAppIconView *)self contactItemView];
      trailingAnchor = [contactItemView4 topAnchor];
      trailingAnchor2 = [(CKAppIconView *)self topAnchor];
      v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v87[5] = v56;
      activityItemView3 = [(CKAppIconView *)self activityItemView];
      trailingAnchor3 = [activityItemView3 leadingAnchor];
      contactItemView5 = [(CKAppIconView *)self contactItemView];
      trailingAnchor4 = [contactItemView5 leadingAnchor];
      v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v87[6] = v12;
      activityItemView4 = [(CKAppIconView *)self activityItemView];
      centerYAnchor = [activityItemView4 topAnchor];
      contactItemView6 = [(CKAppIconView *)self contactItemView];
      bottomAnchor3 = [contactItemView6 bottomAnchor];
      v37 = [centerYAnchor constraintEqualToAnchor:bottomAnchor3 constant:3.0];
      v87[7] = v37;
      v38 = MEMORY[0x1E695DEC8];
      v39 = v87;
      goto LABEL_17;
    case 5:
      constraints5 = [(CKAppIconView *)self constraints];
      contactItemView7 = [(CKAppIconView *)self contactItemView];
      widthAnchor5 = [contactItemView7 widthAnchor];
      heightAnchor10 = [(CKAppIconView *)self heightAnchor];
      v20 = [widthAnchor5 constraintEqualToAnchor:heightAnchor10 multiplier:0.35];
      v86[0] = v20;
      contactItemView8 = [(CKAppIconView *)self contactItemView];
      heightAnchor11 = [contactItemView8 heightAnchor];
      heightAnchor12 = [(CKAppIconView *)self heightAnchor];
      v81 = [heightAnchor11 constraintEqualToAnchor:heightAnchor12 multiplier:0.35];
      v86[1] = v81;
      contactItemView = [(CKAppIconView *)self contactItemView];
      centerXAnchor3 = [contactItemView centerXAnchor];
      centerXAnchor4 = [(CKAppIconView *)self centerXAnchor];
      v79 = centerXAnchor3;
      v29 = centerXAnchor3;
      v30 = centerXAnchor4;
      v78 = [v29 constraintEqualToAnchor:centerXAnchor4];
      v86[2] = v78;
      contactItemView2 = [(CKAppIconView *)self contactItemView];
      centerYAnchor3 = [contactItemView2 centerYAnchor];
      heightAnchor6 = [(CKAppIconView *)self centerYAnchor];
      v76 = centerYAnchor3;
      v74 = [centerYAnchor3 constraintEqualToAnchor:?];
      v86[3] = v74;
      v32 = MEMORY[0x1E695DEC8];
      v33 = v86;
      break;
    default:
      goto LABEL_20;
  }

  [v32 arrayWithObjects:v33 count:4];
  contactItemView3 = v19 = constraints5;
  [constraints5 addObjectsFromArray:?];
LABEL_19:

LABEL_20:
  constraints6 = [(CKAppIconView *)self constraints];
  v50 = [constraints6 count];

  if (v50)
  {
    v51 = MEMORY[0x1E696ACD8];
    constraints7 = [(CKAppIconView *)self constraints];
    [v51 activateConstraints:constraints7];
  }

  v85.receiver = self;
  v85.super_class = CKAppIconView;
  [(CKAppIconView *)&v85 updateConstraints];
}

@end