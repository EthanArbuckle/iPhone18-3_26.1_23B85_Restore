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
    v24 = [a1 initWithCustomView:v23 placement:a5];

    v21 = v24;
  }

  else
  {
    v8 = MEMORY[0x1E69DD250];
    v9 = a4;
    v31 = a1;
    v10 = objc_alloc_init(v8);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v9];
    v26 = MEMORY[0x1E696ACD8];
    v30 = [v10 topAnchor];
    v29 = [v9 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v27 = [v10 bottomAnchor];
    v11 = [v9 bottomAnchor];
    v12 = [v27 constraintEqualToAnchor:v11];
    v33[1] = v12;
    v13 = [v10 leadingAnchor];
    v14 = [v9 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v33[2] = v15;
    v16 = [v10 trailingAnchor];
    v17 = [v9 trailingAnchor];

    v18 = [v16 constraintEqualToAnchor:v17 constant:a2];
    v33[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v26 activateConstraints:v19];

    v20 = [v31 initWithCustomView:v10 placement:a5];
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