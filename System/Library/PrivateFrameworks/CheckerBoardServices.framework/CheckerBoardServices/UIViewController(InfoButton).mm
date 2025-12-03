@interface UIViewController(InfoButton)
- (id)_deviceInformation;
- (id)_deviceInformationView;
- (id)generateBarcode:()InfoButton showAsQRCode:;
- (void)_layoutDeviceInformationView;
- (void)barcodeViewTapped:()InfoButton;
- (void)infoButtonTapped;
- (void)setupInfoButton;
@end

@implementation UIViewController(InfoButton)

- (id)generateBarcode:()InfoButton showAsQRCode:
{
  if (a4)
  {
    v5 = 3.5;
  }

  else
  {
    v5 = 2.5;
  }

  v6 = @"CICode128BarcodeGenerator";
  if (a4)
  {
    v6 = @"CIQRCodeGenerator";
  }

  v7 = v6;
  v8 = [a3 dataUsingEncoding:1];
  v9 = [MEMORY[0x277CBF750] filterWithName:v7];

  [v9 setValue:v8 forKey:@"inputMessage"];
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v5, v5);
  outputImage = [v9 outputImage];
  v14 = v15;
  v11 = [outputImage imageByApplyingTransform:&v14];

  v12 = [objc_alloc(MEMORY[0x277D755B8]) initWithCIImage:v11];

  return v12;
}

- (id)_deviceInformation
{
  array = [MEMORY[0x277CBEB18] array];
  v1 = +[CBSGestaltEquipmentInfo CurrentEquipmentInfo];
  serialNumber = [v1 serialNumber];

  if (serialNumber)
  {
    serialNumber2 = [v1 serialNumber];
    v4 = [CBSDeviceInformationField fieldWithFormat:0 value:serialNumber2];
    [array addObject:v4];
  }

  meid = [v1 meid];

  if (meid)
  {
    meid2 = [v1 meid];
    v7 = [CBSDeviceInformationField fieldWithFormat:1 value:meid2];
    [array addObject:v7];
  }

  imeiArray = [v1 imeiArray];
  if (imeiArray)
  {
    v9 = imeiArray;
    imeiArray2 = [v1 imeiArray];
    v11 = [imeiArray2 count];

    if (v11)
    {
      imeiArray3 = [v1 imeiArray];
      v13 = [imeiArray3 componentsJoinedByString:@""];;

      v14 = [CBSDeviceInformationField fieldWithFormat:2 value:v13];
      [array addObject:v14];
    }
  }

  v15 = [array copy];

  return v15;
}

- (id)_deviceInformationView
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = 0x277D75000uLL;
  v3 = objc_alloc(MEMORY[0x277D75A68]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setAxis:1];
  [v4 setAlignment:3];
  [v4 setDistribution:3];
  [v4 setSpacing:20.0];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [self _deviceInformation];
  v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v39)
  {
    v37 = *v45;
    v38 = v4;
    selfCopy = self;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        v7 = objc_alloc_init(*(v2 + 2664));
        [v7 setAxis:1];
        [v7 setAlignment:3];
        [v7 setDistribution:3];
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
        [v8 setFont:v9];

        formattedTitle = [v6 formattedTitle];
        [v8 setText:formattedTitle];

        [v7 addArrangedSubview:v8];
        if ([v6 multiLineFormatted])
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          formattedValuesArray = [v6 formattedValuesArray];
          v12 = [formattedValuesArray countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v34 = v6;
            v35 = v8;
            v36 = i;
            v14 = *v41;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(formattedValuesArray);
                }

                v16 = *(*(&v40 + 1) + 8 * j);
                v17 = objc_alloc_init(MEMORY[0x277D756B8]);
                v18 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
                [v17 setFont:v18];

                [v17 setText:v16];
                [v7 addArrangedSubview:v17];
              }

              v13 = [formattedValuesArray countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v13);
            self = selfCopy;
            v2 = 0x277D75000;
            v4 = v38;
            v8 = v35;
            i = v36;
            v6 = v34;
          }

          else
          {
            v4 = v38;
          }
        }

        else
        {
          formattedValuesArray = objc_alloc_init(MEMORY[0x277D756B8]);
          [MEMORY[0x277D74300] systemFontOfSize:20.0];
          v19 = v2;
          selfCopy2 = self;
          v22 = v21 = v6;
          [formattedValuesArray setFont:v22];

          formattedValue = [v21 formattedValue];
          [formattedValuesArray setText:formattedValue];

          v6 = v21;
          self = selfCopy2;
          v2 = v19;
          v4 = v38;
          [v7 addArrangedSubview:formattedValuesArray];
        }

        [v4 addArrangedSubview:v7];
        if (![v6 format])
        {
          v24 = v8;
          formattedValue2 = [v6 formattedValue];
          v26 = [self generateBarcode:formattedValue2 showAsQRCode:1];

          if (v26)
          {
            v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v26];
            [v27 setTag:1];
            [v27 setUserInteractionEnabled:1];
            v28 = i;
            v29 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_barcodeViewTapped_];
            [v29 setNumberOfTapsRequired:2];
            [v27 addGestureRecognizer:v29];
            [v4 addArrangedSubview:v27];

            i = v28;
          }

          v8 = v24;
          v2 = 0x277D75000;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v39);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setupInfoButton
{
  _deviceInformationView = [self _deviceInformationView];
  [self setDeviceInformationView:_deviceInformationView];

  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"info.circle"];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:self action:sel_infoButtonTapped];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setTintColor:systemBlueColor];

  navigationItem = [self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

- (void)_layoutDeviceInformationView
{
  substitutableView = [self substitutableView];
  [substitutableView frame];
  v3 = v2;
  substitutableView2 = [self substitutableView];
  [substitutableView2 frame];
  v6 = v5;
  substitutableView3 = [self substitutableView];
  [substitutableView3 frame];
  v9 = v8;
  deviceInformationView = [self deviceInformationView];
  view = [self view];
  [view frame];
  [deviceInformationView systemLayoutSizeFittingSize:{v12, *(MEMORY[0x277D76C78] + 8)}];
  v14 = v13;
  deviceInformationView2 = [self deviceInformationView];
  [deviceInformationView2 setFrame:{v3, v6, v9, v14}];
}

- (void)infoButtonTapped
{
  v2 = CheckerBoardLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2433DB000, v2, OS_LOG_TYPE_DEFAULT, "[Info] button was tapped. Toggling device information…", v8, 2u);
  }

  [self setShowingDeviceInformation:{objc_msgSend(self, "showingDeviceInformation") ^ 1}];
  showingDeviceInformation = [self showingDeviceInformation];
  if (showingDeviceInformation)
  {
    [self _layoutDeviceInformationView];
    substitutableView = [self substitutableView];
    superview = [substitutableView superview];
    deviceInformationView = [self deviceInformationView];
    [superview addSubview:deviceInformationView];
  }

  else
  {
    substitutableView = [self deviceInformationView];
    [substitutableView removeFromSuperview];
  }

  substitutableView2 = [self substitutableView];
  [substitutableView2 setHidden:showingDeviceInformation];
}

- (void)barcodeViewTapped:()InfoButton
{
  v4 = a3;
  v11 = +[CBSGestaltEquipmentInfo CurrentEquipmentInfo];
  view = [v4 view];

  serialNumber = [v11 serialNumber];

  if (serialNumber)
  {
    v7 = view == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [view setTag:{objc_msgSend(view, "tag") == 0}];
    serialNumber2 = [v11 serialNumber];
    v9 = [self generateBarcode:serialNumber2 showAsQRCode:{objc_msgSend(view, "tag") == 1}];
    [view setImage:v9];

    [self _layoutDeviceInformationView];
    view2 = [self view];
    [view2 setNeedsLayout];
  }
}

@end