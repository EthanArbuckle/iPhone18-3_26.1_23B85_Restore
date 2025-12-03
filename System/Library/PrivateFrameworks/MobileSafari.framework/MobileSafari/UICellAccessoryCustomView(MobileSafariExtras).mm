@interface UICellAccessoryCustomView(MobileSafariExtras)
- (id)sf_initWithCustomView:()MobileSafariExtras placement:trailingPadding:;
@end

@implementation UICellAccessoryCustomView(MobileSafariExtras)

- (id)sf_initWithCustomView:()MobileSafariExtras placement:trailingPadding:
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    v23 = a4;
    v24 = [self initWithCustomView:v23 placement:a5];

    v21 = v24;
  }

  else
  {
    v8 = MEMORY[0x1E69DD250];
    v9 = a4;
    selfCopy = self;
    v10 = objc_alloc_init(v8);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v9];
    v26 = MEMORY[0x1E696ACD8];
    topAnchor = [v10 topAnchor];
    topAnchor2 = [v9 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[0] = v28;
    bottomAnchor = [v10 bottomAnchor];
    bottomAnchor2 = [v9 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[1] = v12;
    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [v9 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[2] = v15;
    trailingAnchor = [v10 trailingAnchor];
    trailingAnchor2 = [v9 trailingAnchor];

    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:a2];
    v33[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v26 activateConstraints:v19];

    v20 = [selfCopy initWithCustomView:v10 placement:a5];
    v21 = v20;
    if (v20)
    {
      [v20 setReservedLayoutWidth:0.0];
      v22 = v21;
    }
  }

  return v21;
}

@end