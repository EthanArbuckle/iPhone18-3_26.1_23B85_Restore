@interface PHHandsetDialerView
- (BOOL)dialerIsNumericOnly;
- (CGSize)intrinsicContentSize;
- (double)_keypadToCallButtonYSpacing;
- (double)_remoteViewControllerDialerOffset;
- (double)_yOffsetForAddContactButton;
- (double)_yOffsetForKeypadView;
- (double)callButtonDiameter;
- (double)yOffsetFromKeypadToDialerButtonForExplictLayoutDevices;
- (double)yOffsetFromKeypadToLCDViewForExplicitLayoutDevices;
- (id)deleteButtonXImageView;
- (id)newCallButton;
- (id)newDeleteButton;
- (id)newNumberPadView;
- (id)numberPadButtonsForCharacters:(id)characters;
- (void)constraintAddContactButtonForIPad;
- (void)constraintAddContactButtonForNonIPad;
- (void)constraintDualSimPicker;
- (void)createConstraints;
- (void)createDeleteButtonX;
- (void)layoutSubviews;
- (void)setDeleteButtonAlpha:(double)alpha;
- (void)setEnableDualSimMenu:(BOOL)menu;
- (void)updateContraintsForStatusBar;
@end

@implementation PHHandsetDialerView

- (void)setEnableDualSimMenu:(BOOL)menu
{
  if (self->_enableDualSimMenu != menu)
  {
    menuCopy = menu;
    if ([(PHHandsetDialerView *)self appType]== 1)
    {
      pillView = [(PHHandsetDialerView *)self pillView];

      if (pillView)
      {
        self->_enableDualSimMenu = menuCopy;
        pillView2 = [(PHHandsetDialerView *)self pillView];
        superview = [pillView2 superview];

        if (menuCopy)
        {
          if (!superview)
          {
            pillView3 = [(PHHandsetDialerView *)self pillView];
            [(PHHandsetDialerView *)self addSubview:pillView3];

            [(PHHandsetDialerView *)self constraintDualSimPicker];
          }
        }

        else if (superview)
        {
          pillView4 = [(PHHandsetDialerView *)self pillView];
          [pillView4 removeFromSuperview];
        }
      }
    }
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PHHandsetDialerView;
  [(PHHandsetDialerView *)&v8 layoutSubviews];
  featureFlags = [(PHHandsetDialerView *)self featureFlags];
  if ([featureFlags phoneLargeFormatUIEnabled])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      return;
    }

    [(PHHandsetDialerView *)self _yOffsetForKeypadView];
    v7 = v6;
    featureFlags = [(PHHandsetDialerView *)self phonePadViewTopConstraint];
    [featureFlags setConstant:v7];
  }
}

- (CGSize)intrinsicContentSize
{
  lcdView = [(PHAbstractDialerView *)self lcdView];
  [lcdView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  deleteButton = [(PHAbstractDialerView *)self deleteButton];
  [deleteButton frame];
  v28.origin.x = v13;
  v28.origin.y = v14;
  v28.size.width = v15;
  v28.size.height = v16;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v25 = CGRectUnion(v24, v28);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, -32.0, -32.0);
  v21 = v27.size.width;
  v22 = v27.size.height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)createConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  lcdView = [(PHAbstractDialerView *)self lcdView];
  v5 = [v3 constraintWithItem:lcdView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v5];

  v6 = MEMORY[0x277CCAAD0];
  callButton = [(PHAbstractDialerView *)self callButton];
  phonePadView = [(PHAbstractDialerView *)self phonePadView];
  v9 = [v6 constraintWithItem:callButton attribute:9 relatedBy:0 toItem:phonePadView attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v9];

  v10 = MEMORY[0x277CCAAD0];
  phonePadView2 = [(PHAbstractDialerView *)self phonePadView];
  v12 = [v10 constraintWithItem:phonePadView2 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v12];

  v13 = MEMORY[0x277CCAAD0];
  deleteButton = [(PHAbstractDialerView *)self deleteButton];
  phonePadView3 = [(PHAbstractDialerView *)self phonePadView];
  phonePadView4 = [(PHAbstractDialerView *)self phonePadView];
  [phonePadView4 bounds];
  v18 = [v13 constraintWithItem:deleteButton attribute:9 relatedBy:0 toItem:phonePadView3 attribute:2 multiplier:1.0 constant:v17 / -6.0 + -2.0];
  [(PHHandsetDialerView *)self addConstraint:v18];

  v19 = MEMORY[0x277CCAAD0];
  deleteButton2 = [(PHAbstractDialerView *)self deleteButton];
  callButton2 = [(PHAbstractDialerView *)self callButton];
  v22 = [v19 constraintWithItem:deleteButton2 attribute:10 relatedBy:0 toItem:callButton2 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v22];

  v23 = MEMORY[0x277CCAAD0];
  lcdView2 = [(PHAbstractDialerView *)self lcdView];
  v25 = [v23 constraintWithItem:lcdView2 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v25];

  lcdView3 = [(PHAbstractDialerView *)self lcdView];
  widthAnchor = [lcdView3 widthAnchor];
  phonePadView5 = [(PHAbstractDialerView *)self phonePadView];
  [phonePadView5 bounds];
  v30 = [widthAnchor constraintEqualToConstant:v29];
  [v30 setActive:1];

  if ([(PHHandsetDialerView *)self appType]== 1)
  {
    if ([(PHHandsetDialerView *)self enableSmartDialer])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(PHHandsetDialerView *)self constraintAddContactButtonForIPad];
      }

      else
      {
        [(PHHandsetDialerView *)self constraintAddContactButtonForNonIPad];
      }
    }

    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 5)
    {

      [(PHHandsetDialerView *)self constraintDualSimPicker];
    }
  }
}

- (void)constraintAddContactButtonForIPad
{
  v3 = MEMORY[0x277CCAAD0];
  addContactButton = [(PHAbstractDialerView *)self addContactButton];
  callButton = [(PHAbstractDialerView *)self callButton];
  v6 = [v3 constraintWithItem:addContactButton attribute:10 relatedBy:0 toItem:callButton attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v6];

  v7 = MEMORY[0x277CCAAD0];
  addContactButton2 = [(PHAbstractDialerView *)self addContactButton];
  phonePadView = [(PHAbstractDialerView *)self phonePadView];
  phonePadView2 = [(PHAbstractDialerView *)self phonePadView];
  [phonePadView2 bounds];
  v11 = [v7 constraintWithItem:addContactButton2 attribute:9 relatedBy:0 toItem:phonePadView attribute:1 multiplier:1.0 constant:v10 / 6.0 + 2.0];
  [(PHHandsetDialerView *)self addConstraint:v11];
}

- (void)constraintAddContactButtonForNonIPad
{
  v21[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCAAD0];
  addContactButton = [(PHAbstractDialerView *)self addContactButton];
  topAnchor = [addContactButton topAnchor];
  headerLayoutGuide = [(PHHandsetDialerView *)self headerLayoutGuide];
  topAnchor2 = [headerLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[0] = v16;
  addContactButton2 = [(PHAbstractDialerView *)self addContactButton];
  bottomAnchor = [addContactButton2 bottomAnchor];
  headerLayoutGuide2 = [(PHHandsetDialerView *)self headerLayoutGuide];
  bottomAnchor2 = [headerLayoutGuide2 bottomAnchor];
  v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[1] = v6;
  addContactButton3 = [(PHAbstractDialerView *)self addContactButton];
  trailingAnchor = [addContactButton3 trailingAnchor];
  layoutMarginsGuide = [(PHHandsetDialerView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)constraintDualSimPicker
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCAAD0];
  pillView = [(PHHandsetDialerView *)self pillView];
  leadingAnchor = [pillView leadingAnchor];
  layoutMarginsGuide = [(PHHandsetDialerView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v16[0] = v6;
  pillView2 = [(PHHandsetDialerView *)self pillView];
  centerYAnchor = [pillView2 centerYAnchor];
  headerLayoutGuide = [(PHHandsetDialerView *)self headerLayoutGuide];
  centerYAnchor2 = [headerLayoutGuide centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)dialerIsNumericOnly
{
  if (dialerIsNumericOnly_onceToken != -1)
  {
    [PHHandsetDialerView dialerIsNumericOnly];
  }

  return dialerIsNumericOnly_isNumericOnly;
}

void __42__PHHandsetDialerView_dialerIsNumericOnly__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = TUPreferredFaceTimeBundleIdentifier();
  dialerIsNumericOnly_isNumericOnly = [v0 isEqualToString:v1];
}

- (void)updateContraintsForStatusBar
{
  [(PHHandsetDialerView *)self _keypadToCallButtonYSpacing];
  v4 = v3;
  callButtonKeypadOffsetConstraint = [(PHHandsetDialerView *)self callButtonKeypadOffsetConstraint];
  [callButtonKeypadOffsetConstraint setConstant:v4];

  [(PHHandsetDialerView *)self _yOffsetForKeypadView];
  v7 = v6;
  phonePadViewTopConstraint = [(PHHandsetDialerView *)self phonePadViewTopConstraint];
  [phonePadViewTopConstraint setConstant:v7];

  [(PHHandsetDialerView *)self _yOffsetForAddContactButton];
  v10 = v9;
  addContactButtonTopConstraint = [(PHHandsetDialerView *)self addContactButtonTopConstraint];
  [addContactButtonTopConstraint setConstant:v10];

  phonePadView = [(PHAbstractDialerView *)self phonePadView];
  [phonePadView invalidateIntrinsicContentSize];
}

- (id)numberPadButtonsForCharacters:(id)characters
{
  v4 = MEMORY[0x277CBEB18];
  charactersCopy = characters;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(charactersCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__PHHandsetDialerView_numberPadButtonsForCharacters___block_invoke;
  v11[3] = &unk_278D74F40;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [charactersCopy enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __53__PHHandsetDialerView_numberPadButtonsForCharacters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PHHandsetDialerNumberPadButton alloc];
  v7 = [v5 intValue];

  v8 = v7;
  v9 = [*(a1 + 32) traitCollection];
  v10 = -[TPNumberPadDynamicButton initForCharacter:style:](v6, "initForCharacter:style:", v8, [v9 userInterfaceStyle]);

  [*(a1 + 40) insertObject:v10 atIndex:a3];
}

- (void)createDeleteButtonX
{
  deleteButtonXImageView = [(PHHandsetDialerView *)self deleteButtonXImageView];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  deleteButton = [(PHAbstractDialerView *)self deleteButton];
  [deleteButton frame];
  v6 = v5;
  +[(TPNumberPadButton *)PHHandsetDialerNumberPadButton];
  v8 = v6 - (v7 * 0.5 + 2.0);
  deleteButton2 = [(PHAbstractDialerView *)self deleteButton];
  [deleteButton2 frame];
  v11 = v10 * 0.5;
  [deleteButtonXImageView frame];
  v13 = v11 - v12 * 0.5;
  [deleteButtonXImageView frame];
  v15 = v14;
  [deleteButtonXImageView frame];
  v16 = [v3 initWithFrame:{v8, v13, v15}];
  deleteButtonXView = self->_deleteButtonXView;
  self->_deleteButtonXView = v16;

  [(UIView *)self->_deleteButtonXView setUserInteractionEnabled:0];
  [(UIView *)self->_deleteButtonXView addSubview:deleteButtonXImageView];
  deleteButton3 = [(PHAbstractDialerView *)self deleteButton];
  [deleteButton3 addSubview:self->_deleteButtonXView];
}

- (id)deleteButtonXImageView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"keypad-delete-x" inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];
  v7 = [v2 initWithImage:v6];

  dynamicLabelColor = [MEMORY[0x277D75348] dynamicLabelColor];
  [v7 setTintColor:dynamicLabelColor];

  return v7;
}

- (id)newDeleteButton
{
  v3 = [PHHandsetDialerDeleteButton buttonWithType:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setOpaque:0];
  dynamicLabelColor = [MEMORY[0x277D75348] dynamicLabelColor];
  [v3 setTintColor:dynamicLabelColor];

  [v3 setHighlighted:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = MEMORY[0x277D755B8];
  deleteButtonImageName = [(PHHandsetDialerView *)self deleteButtonImageName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v7 imageNamed:deleteButtonImageName inBundle:v9];

  [v3 setImage:v10 forState:0];
  +[(TPNumberPadButton *)PHHandsetDialerNumberPadButton];
  v12 = v11 * 0.5;
  [v10 size];
  v14 = v12 - v13 * 0.5;
  +[(TPNumberPadButton *)PHHandsetDialerNumberPadButton];
  v16 = v15 * 0.5;
  [v10 size];
  v18 = v16 - v17 * 0.5;
  +[(TPNumberPadButton *)PHHandsetDialerNumberPadButton];
  v20 = v19 * 0.5;
  [v10 size];
  v22 = v20 - v21 * 0.5;
  +[(TPNumberPadButton *)PHHandsetDialerNumberPadButton];
  v24 = v23 * 0.5;
  [v10 size];
  [v3 setContentEdgeInsets:{v14, v18, v22, v24 - v25 * 0.5}];
  +[(TPNumberPadButton *)PHHandsetDialerNumberPadButton];
  v27 = v26 * 0.5;
  layer = [v3 layer];
  [layer setCornerRadius:v27];

  [v3 sizeToFit];
  return v3;
}

- (void)setDeleteButtonAlpha:(double)alpha
{
  deleteButton = [(PHAbstractDialerView *)self deleteButton];
  [deleteButton setAlpha:alpha];
}

- (id)newNumberPadView
{
  if ([(PHHandsetDialerView *)self dialerIsNumericOnly])
  {
    [MEMORY[0x277D6ED60] dialerNumberPadNumericCharacters];
  }

  else
  {
    [MEMORY[0x277D6ED60] dialerNumberPadFullCharacters];
  }
  v3 = ;
  v4 = objc_alloc(MEMORY[0x277D6ED60]);
  v5 = [(PHHandsetDialerView *)self numberPadButtonsForCharacters:v3];
  v6 = [v4 initWithButtons:v5];

  if (_UISolariumEnabled())
  {
    v7 = objc_opt_new();
    [v6 _setBackground:v7];
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

- (id)newCallButton
{
  v3 = [PHBottomBarButtonConfiguration alloc];
  [(PHHandsetDialerView *)self callButtonDiameter];
  v4 = [(PHBottomBarButtonConfiguration *)v3 initWithAction:1 diameter:2 callState:?];
  v5 = [[PHBottomBarButton alloc] initWithConfiguration:v4 appType:[(PHHandsetDialerView *)self appType]];
  [(PHBottomBarButton *)v5 setTitle:0 forState:0];
  [(PHBottomBarButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

- (double)callButtonDiameter
{
  +[PHBottomBarButtonConfiguration defaultWidth];
  v3 = v2;
  if (!+[PHInCallUIUtilities hasMultipleSenderIdentities](PHInCallUIUtilities, "hasMultipleSenderIdentities") || ([MEMORY[0x277D3A7E0] handsetDialerSpacing] | 2) != 2)
  {
    return v3;
  }

  +[PHHandsetDialerNumberPadButton outerCircleDiameter];
  return result;
}

- (double)_yOffsetForAddContactButton
{
  featureFlags = [(PHHandsetDialerView *)self featureFlags];
  if ([featureFlags phoneLargeFormatUIEnabled])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 32.0;
    }
  }

  else
  {
  }

  v6 = 0.0;
  if ([MEMORY[0x277D3A7E0] requiresSmallScreenConfig] && !+[PHInCallUIUtilities hasMultipleSenderIdentities](PHInCallUIUtilities, "hasMultipleSenderIdentities"))
  {
    if ([(PHAbstractDialerView *)self isHostedInRemoteViewController])
    {
      return 0.0;
    }

    else
    {
      return 15.0;
    }
  }

  return v6;
}

- (double)_yOffsetForKeypadView
{
  if (![MEMORY[0x277D3A7E0] shouldUseExplicitLayoutDimensions:{-[PHHandsetDialerView appType](self, "appType")}])
  {
    handsetDialerSpacing = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    if (handsetDialerSpacing > 2)
    {
      if (handsetDialerSpacing <= 4)
      {
        if (handsetDialerSpacing != 3)
        {
          v8 = 87.5;
          goto LABEL_25;
        }

        +[PHHandsetDialerNumberPadButton verticalPadding];
        v10 = 173.5;
        goto LABEL_23;
      }

      if (handsetDialerSpacing == 5)
      {
        +[PHHandsetDialerNumberPadButton verticalPadding];
        v10 = 81.0;
        goto LABEL_23;
      }

      if (handsetDialerSpacing == 6)
      {
        +[PHHandsetDialerNumberPadButton verticalPadding];
        v10 = 99.0;
LABEL_23:
        v8 = v10 - v9;
        goto LABEL_25;
      }

LABEL_20:
      v8 = 150.0;
      goto LABEL_25;
    }

    switch(handsetDialerSpacing)
    {
      case 0:
        v8 = 17.0;
        break;
      case 1:
        v8 = 84.0;
        break;
      case 2:
        if (+[PHInCallUIUtilities hasMultipleSenderIdentities])
        {
          v8 = 156.0;
        }

        else
        {
          v8 = 141.0;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_25:
    [(PHHandsetDialerView *)self _remoteViewControllerDialerOffset];
    v5 = v8 - v11;
    featureFlags = [(PHHandsetDialerView *)self featureFlags];
    if ([featureFlags phoneLargeFormatUIEnabled])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        return v5;
      }

      window = [(PHHandsetDialerView *)self window];
      featureFlags = [window windowScene];

      [MEMORY[0x277D3A7E0] yOffsetForSmartDialerLCDViewForOrientation:{objc_msgSend(featureFlags, "interfaceOrientation")}];
      v5 = v5 - v16;
    }

    return v5;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v5 = 20.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return v5;
  }

  [(PHHandsetDialerView *)self yOffsetFromKeypadToLCDViewForExplicitLayoutDevices];
  return result;
}

- (double)_remoteViewControllerDialerOffset
{
  v2 = 0.0;
  if ([(PHAbstractDialerView *)self isHostedInRemoteViewController])
  {
    handsetDialerSpacing = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    if (handsetDialerSpacing <= 6)
    {
      return dbl_2429ED380[handsetDialerSpacing];
    }
  }

  return v2;
}

- (double)_keypadToCallButtonYSpacing
{
  if ([MEMORY[0x277D3A7E0] shouldUseExplicitLayoutDimensions:{-[PHHandsetDialerView appType](self, "appType")}])
  {

    [(PHHandsetDialerView *)self yOffsetFromKeypadToDialerButtonForExplictLayoutDevices];
    return result;
  }

  handsetDialerSpacing = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
  if (handsetDialerSpacing > 2)
  {
    if (handsetDialerSpacing == 3)
    {
      +[PHHandsetDialerNumberPadButton verticalPadding];
      v6 = 17.0;
    }

    else
    {
      if (handsetDialerSpacing != 5)
      {
        return 8.5;
      }

      +[PHHandsetDialerNumberPadButton verticalPadding];
      v6 = 18.0;
    }

    return v6 - v5;
  }

  if (handsetDialerSpacing)
  {
    if (handsetDialerSpacing == 1)
    {
      return 7.0;
    }

    return 8.5;
  }

  +[PHHandsetDialerNumberPadButton verticalPadding];
  return result;
}

- (double)yOffsetFromKeypadToLCDViewForExplicitLayoutDevices
{
  screenSize = [MEMORY[0x277D3A7E0] screenSize];
  result = 38.0;
  if (screenSize <= 0xF)
  {
    if (((1 << screenSize) & 0xA210) != 0)
    {
      v5 = ![(PHAbstractDialerView *)self isHostedInRemoteViewController];
      result = 20.0;
LABEL_4:
      if (!v5)
      {
        return 12.0;
      }

      return result;
    }

    if (screenSize)
    {
      if (screenSize != 1)
      {
        return result;
      }

      v5 = ![(PHAbstractDialerView *)self isHostedInRemoteViewController];
      result = 17.0;
      goto LABEL_4;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 3.0;
    if (!userInterfaceIdiom)
    {
      return -20.0;
    }
  }

  return result;
}

- (double)yOffsetFromKeypadToDialerButtonForExplictLayoutDevices
{
  screenSize = [MEMORY[0x277D3A7E0] screenSize];
  v3 = 0.0;
  if (screenSize <= 10)
  {
    if (screenSize <= 3)
    {
      if (screenSize)
      {
        if (screenSize != 1)
        {
          goto LABEL_25;
        }

        +[PHHandsetDialerNumberPadButton verticalPadding];
        v5 = 8.5;
      }

      else
      {
        +[PHHandsetDialerNumberPadButton verticalPadding];
        v5 = 3.5;
      }

      v3 = v4 + v5;
      goto LABEL_25;
    }

    if (screenSize != 4)
    {
      if (screenSize != 9)
      {
        if (screenSize == 10)
        {
          v3 = 18.0;
        }

        goto LABEL_25;
      }

LABEL_21:
      v3 = 9.0;
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  if (screenSize <= 12)
  {
    v6 = 19.0;
    if (screenSize != 12)
    {
      v6 = 0.0;
    }

    if (screenSize == 11)
    {
      v3 = 9.0;
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    switch(screenSize)
    {
      case 13:
        goto LABEL_21;
      case 14:
        v3 = 26.0;
        break;
      case 15:
LABEL_12:
        v3 = 18.0;
        break;
    }
  }

LABEL_25:
  +[PHHandsetDialerNumberPadButton verticalPadding];
  return v3 - v7;
}

@end