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
  v10 = [v9 outputImage];
  v14 = v15;
  v11 = [v10 imageByApplyingTransform:&v14];

  v12 = [objc_alloc(MEMORY[0x277D755B8]) initWithCIImage:v11];

  return v12;
}

- (id)_deviceInformation
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = +[CBSGestaltEquipmentInfo CurrentEquipmentInfo];
  v2 = [v1 serialNumber];

  if (v2)
  {
    v3 = [v1 serialNumber];
    v4 = [CBSDeviceInformationField fieldWithFormat:0 value:v3];
    [v0 addObject:v4];
  }

  v5 = [v1 meid];

  if (v5)
  {
    v6 = [v1 meid];
    v7 = [CBSDeviceInformationField fieldWithFormat:1 value:v6];
    [v0 addObject:v7];
  }

  v8 = [v1 imeiArray];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 imeiArray];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v1 imeiArray];
      v13 = [v12 componentsJoinedByString:@""];;

      v14 = [CBSDeviceInformationField fieldWithFormat:2 value:v13];
      [v0 addObject:v14];
    }
  }

  v15 = [v0 copy];

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
  obj = [a1 _deviceInformation];
  v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v39)
  {
    v37 = *v45;
    v38 = v4;
    v32 = a1;
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

        v10 = [v6 formattedTitle];
        [v8 setText:v10];

        [v7 addArrangedSubview:v8];
        if ([v6 multiLineFormatted])
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v11 = [v6 formattedValuesArray];
          v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v40 + 1) + 8 * j);
                v17 = objc_alloc_init(MEMORY[0x277D756B8]);
                v18 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
                [v17 setFont:v18];

                [v17 setText:v16];
                [v7 addArrangedSubview:v17];
              }

              v13 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v13);
            a1 = v32;
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
          v11 = objc_alloc_init(MEMORY[0x277D756B8]);
          [MEMORY[0x277D74300] systemFontOfSize:20.0];
          v19 = v2;
          v20 = a1;
          v22 = v21 = v6;
          [v11 setFont:v22];

          v23 = [v21 formattedValue];
          [v11 setText:v23];

          v6 = v21;
          a1 = v20;
          v2 = v19;
          v4 = v38;
          [v7 addArrangedSubview:v11];
        }

        [v4 addArrangedSubview:v7];
        if (![v6 format])
        {
          v24 = v8;
          v25 = [v6 formattedValue];
          v26 = [a1 generateBarcode:v25 showAsQRCode:1];

          if (v26)
          {
            v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v26];
            [v27 setTag:1];
            [v27 setUserInteractionEnabled:1];
            v28 = i;
            v29 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:a1 action:sel_barcodeViewTapped_];
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
  v2 = [a1 _deviceInformationView];
  [a1 setDeviceInformationView:v2];

  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"info.circle"];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:a1 action:sel_infoButtonTapped];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setTintColor:v4];

  v5 = [a1 navigationItem];
  [v5 setRightBarButtonItem:v3];
}

- (void)_layoutDeviceInformationView
{
  v16 = [a1 substitutableView];
  [v16 frame];
  v3 = v2;
  v4 = [a1 substitutableView];
  [v4 frame];
  v6 = v5;
  v7 = [a1 substitutableView];
  [v7 frame];
  v9 = v8;
  v10 = [a1 deviceInformationView];
  v11 = [a1 view];
  [v11 frame];
  [v10 systemLayoutSizeFittingSize:{v12, *(MEMORY[0x277D76C78] + 8)}];
  v14 = v13;
  v15 = [a1 deviceInformationView];
  [v15 setFrame:{v3, v6, v9, v14}];
}

- (void)infoButtonTapped
{
  v2 = CheckerBoardLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2433DB000, v2, OS_LOG_TYPE_DEFAULT, "[Info] button was tapped. Toggling device information…", v8, 2u);
  }

  [a1 setShowingDeviceInformation:{objc_msgSend(a1, "showingDeviceInformation") ^ 1}];
  v3 = [a1 showingDeviceInformation];
  if (v3)
  {
    [a1 _layoutDeviceInformationView];
    v4 = [a1 substitutableView];
    v5 = [v4 superview];
    v6 = [a1 deviceInformationView];
    [v5 addSubview:v6];
  }

  else
  {
    v4 = [a1 deviceInformationView];
    [v4 removeFromSuperview];
  }

  v7 = [a1 substitutableView];
  [v7 setHidden:v3];
}

- (void)barcodeViewTapped:()InfoButton
{
  v4 = a3;
  v11 = +[CBSGestaltEquipmentInfo CurrentEquipmentInfo];
  v5 = [v4 view];

  v6 = [v11 serialNumber];

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v5 setTag:{objc_msgSend(v5, "tag") == 0}];
    v8 = [v11 serialNumber];
    v9 = [a1 generateBarcode:v8 showAsQRCode:{objc_msgSend(v5, "tag") == 1}];
    [v5 setImage:v9];

    [a1 _layoutDeviceInformationView];
    v10 = [a1 view];
    [v10 setNeedsLayout];
  }
}

@end