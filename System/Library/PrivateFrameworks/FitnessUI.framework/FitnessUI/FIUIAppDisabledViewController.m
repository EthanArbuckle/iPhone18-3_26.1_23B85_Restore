@interface FIUIAppDisabledViewController
- (FIUIAppDisabledViewController)initWithAppName:(id)a3 disabledReason:(unint64_t)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation FIUIAppDisabledViewController

- (FIUIAppDisabledViewController)initWithAppName:(id)a3 disabledReason:(unint64_t)a4
{
  v37[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35.receiver = self;
  v35.super_class = FIUIAppDisabledViewController;
  v7 = [(FIUIAppDisabledViewController *)&v35 init];
  v8 = v7;
  if (v7)
  {
    [(FIUIAppDisabledViewController *)v7 setTitle:v6];
    if (a4)
    {
      if (a4 != 1)
      {
        v11 = 0;
LABEL_8:
        active = FIIsActivePairedDeviceSatellitePaired();
        v34 = v6;
        if (a4 == 1)
        {
          v14 = FIUIBundle();
          v15 = v14;
          v16 = @"HEART_RATE_DISABLED_BODY";
          v17 = @"Localizable";
        }

        else
        {
          if (a4)
          {
            v18 = 0;
LABEL_16:
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v11, v18];
            v19 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
            [v19 setAlignment:1];
            LODWORD(v20) = 1057803469;
            [v19 setHyphenationFactor:v20];
            v36[0] = *MEMORY[0x1E69DB650];
            v21 = v36[0];
            v22 = [MEMORY[0x1E6989B18] systemGrayTextColor];
            v37[0] = v22;
            v36[1] = *MEMORY[0x1E69DB648];
            v23 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
            v36[2] = *MEMORY[0x1E69DB688];
            v37[1] = v23;
            v37[2] = v19;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

            v25 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v33 attributes:v24];
            v26 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
            v27 = [MEMORY[0x1E69DC888] whiteColor];
            [v26 setObject:v27 forKey:v21];

            [v25 setAttributes:v26 range:{0, objc_msgSend(v11, "length")}];
            v28 = [FIUITextView alloc];
            v29 = [(FIUITextView *)v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
            textView = v8->_textView;
            v8->_textView = v29;

            [(FIUITextView *)v8->_textView setEditable:0];
            [(FIUITextView *)v8->_textView setSelectable:0];
            v31 = [MEMORY[0x1E69DC888] blackColor];
            [(FIUITextView *)v8->_textView setBackgroundColor:v31];

            [(FIUITextView *)v8->_textView setAttributedText:v25];
            v6 = v34;
            goto LABEL_17;
          }

          v13 = active;
          v14 = FIUIBundle();
          v15 = v14;
          if (v13)
          {
            v16 = @"FITNESS_TRACKING_DISABLED_BODY_TINKER";
            v17 = @"Localizable-tinker";
          }

          else
          {
            v16 = @"FITNESS_TRACKING_DISABLED_BODY";
            v17 = @"Localizable";
          }
        }

        v18 = [v14 localizedStringForKey:v16 value:&stru_1F5F88F90 table:v17];

        goto LABEL_16;
      }

      v9 = @"HEART_RATE_DISABLED_TITLE";
    }

    else
    {
      v9 = @"FITNESS_TRACKING_DISABLED_TITLE";
    }

    v10 = FIUIBundle();
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F5F88F90 table:@"Localizable"];

    goto LABEL_8;
  }

LABEL_17:

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = FIUIAppDisabledViewController;
  [(FIUIAppDisabledViewController *)&v4 viewDidLoad];
  v3 = [(FIUIAppDisabledViewController *)self view];
  [v3 addSubview:self->_textView];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = FIUIAppDisabledViewController;
  [(FIUIAppDisabledViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(FIUIAppDisabledViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(FIUIAppDisabledViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 statusBarManager];
  [v11 statusBarFrame];
  v13 = v12;

  [(FIUITextView *)self->_textView setFrame:0.0, v13, v5, v7 - v13];
  [(FIUITextView *)self->_textView centerTextVerticallyWithTopOffset:v13 * 0.5];
}

@end