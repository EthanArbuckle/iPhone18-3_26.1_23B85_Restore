@interface HACCStatusView
+ (id)_backgroundUpdateQueue;
- (BOOL)shouldAddSeparatorForView:(id)view;
- (CGSize)liveListenImageSize:(id)size forProductID:(id)d;
- (HACCContentModuleDelegate)delegate;
- (HACCStatusView)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)liveListenImageNameFromBluetoothRoute:(id)route;
- (void)_updateBatterySubtitleLabelForDevice:(id)device;
- (void)_updateBatterySubtitleLabelForLeft:(double)left right:(double)right andAvailableEars:(int)ears;
- (void)dealloc;
- (void)updateConstraints;
- (void)updateValue;
@end

@implementation HACCStatusView

- (HACCStatusView)initWithFrame:(CGRect)frame
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = HACCStatusView;
  v3 = [(HUICCCapsuleButton *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = objc_alloc_init(MEMORY[0x277CBE030]);
    bluetoothDiscovery = v3->_bluetoothDiscovery;
    v3->_bluetoothDiscovery = v4;

    v6 = +[HACCStatusView _backgroundUpdateQueue];
    [(CBDiscovery *)v3->_bluetoothDiscovery setDispatchQueue:v6];

    [(CBDiscovery *)v3->_bluetoothDiscovery setDiscoveryFlags:10485760];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __32__HACCStatusView_initWithFrame___block_invoke;
    v32[3] = &unk_2796F6DE0;
    objc_copyWeak(&v33, &location);
    [(CBDiscovery *)v3->_bluetoothDiscovery setDeviceFoundHandler:v32];
    v7 = v3->_bluetoothDiscovery;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __32__HACCStatusView_initWithFrame___block_invoke_3;
    v30[3] = &unk_2796F6E08;
    objc_copyWeak(&v31, &location);
    [(CBDiscovery *)v7 activateWithCompletion:v30];
    v3->_shouldAutoExpandForAvailableHAs = 0;
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    numberFormatter = v3->_numberFormatter;
    v3->_numberFormatter = v8;

    [(NSNumberFormatter *)v3->_numberFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v3->_numberFormatter setMaximumFractionDigits:0];
    v10 = v3->_numberFormatter;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v12 = [(NSNumberFormatter *)v10 stringFromNumber:v11];
    [(NSNumberFormatter *)v10 setNotANumberSymbol:v12];

    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:23.0];
    v15 = [v13 systemImageNamed:@"hearingdevice.ear" withConfiguration:v14];

    v16 = HUICCImageViewWithImage(v15);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v16;

    [(HUICCCapsuleButton *)v3 setIconView:v3->_iconImageView];
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v19 = MEMORY[0x277D26C68];
    v36[0] = *MEMORY[0x277D26C68];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [mEMORY[0x277D26E58] setAttribute:v20 forKey:*MEMORY[0x277D26DD0] error:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *v19;
    mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [defaultCenter addObserver:v3 selector:sel_updateValue name:v22 object:mEMORY[0x277D26E58]2];

    v24 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    batteryController = v3->_batteryController;
    v3->_batteryController = v24;

    v26 = v3->_batteryController;
    v27 = MEMORY[0x277D85CD0];
    v28 = MEMORY[0x277D85CD0];
    [(BCBatteryDeviceController *)v26 addBatteryDeviceObserver:v3 queue:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __32__HACCStatusView_initWithFrame___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HACCStatusView_initWithFrame___block_invoke_2;
  block[3] = &unk_2796F6D18;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __32__HACCStatusView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

void __32__HACCStatusView_initWithFrame___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5[3] = v2;
    v5[4] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HACCStatusView_initWithFrame___block_invoke_4;
    block[3] = &unk_2796F6D18;
    objc_copyWeak(v5, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v5);
  }
}

void __32__HACCStatusView_initWithFrame___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

- (void)dealloc
{
  [(CBDiscovery *)self->_bluetoothDiscovery invalidate];
  v3.receiver = self;
  v3.super_class = HACCStatusView;
  [(HACCStatusView *)&v3 dealloc];
}

- (void)updateConstraints
{
  v2.receiver = self;
  v2.super_class = HACCStatusView;
  [(HACCStatusView *)&v2 updateConstraints];
}

- (CGSize)liveListenImageSize:(id)size forProductID:(id)d
{
  dCopy = d;
  [size size];
  v7 = v6;
  v9 = v8;
  v10 = [dCopy isEqualToString:{@"76, 8202"}];

  v11 = 26.0;
  if (v10)
  {
    v12 = 26.0;
  }

  else
  {
    v12 = v9;
  }

  if (!v10)
  {
    v11 = v7;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (id)liveListenImageNameFromBluetoothRoute:(id)route
{
  v3 = [(HACCStatusView *)self _productIdentifierFromBluetoothRoute:route];
  v4 = [v3 isEqualToString:{@"76, 8203"}];
  v5 = [v3 isEqualToString:{@"76, 8204"}];
  v6 = [v3 isEqualToString:{@"76, 8206"}];
  if ([v3 isEqualToString:{@"76, 8202"}])
  {
    goto LABEL_10;
  }

  v7 = @"hearingDevicesIcon";
  if (v4)
  {
    v7 = @"b444";
  }

  if (v5)
  {
    v7 = @"b419";
  }

  v8 = v6 ? @"b298" : v7;
  if ([v3 isEqualToString:*MEMORY[0x277D12DB0]])
  {
LABEL_10:
    v8 = @"b515";
  }

  if ([v3 isEqualToString:{@"76, 8205"}])
  {
    v8 = @"b364";
  }

  if ([v3 isEqualToString:{@"76, 8210"}])
  {
    v8 = @"B494";
  }

  if ([v3 isEqualToString:{@"76, 8211"}])
  {
    v9 = @"B688";
  }

  else
  {
    v9 = v8;
  }

  v10 = [v3 isEqualToString:{@"76, 8212"}];
  if (([v3 isEqualToString:{@"76, 8228"}] | v10))
  {
    v11 = @"b298";
  }

  else
  {
    v11 = v9;
  }

  if ([v3 isEqualToString:{@"76, 8215"}])
  {
    v11 = @"beats.headphones";
  }

  if ([v3 isEqualToString:{@"76, 8230"}])
  {
    v11 = @"beats.studiobuds";
  }

  if ([v3 isEqualToString:{@"76, 8229"}])
  {
    v11 = @"beats.headphones";
  }

  if ([v3 isEqualToString:{@"76, 8214"}])
  {
    v11 = @"beats.studiobuds";
  }

  if ([v3 isEqualToString:{@"76, 8221"}])
  {
    v11 = @"b498";
  }

  if ([v3 isEqualToString:{@"76, 8231"}])
  {
    v11 = @"711495D10BB643F6BDA3693886C0BCAF";
  }

  if ([v3 isEqualToString:{@"76, 8239"}])
  {
    v11 = @"540481B5C3AA4357B2703D54705F5909";
  }

  return v11;
}

+ (id)_backgroundUpdateQueue
{
  if (_backgroundUpdateQueue_onceToken != -1)
  {
    +[HACCStatusView _backgroundUpdateQueue];
  }

  v3 = _backgroundUpdateQueue__backgroundUpdateQueue;

  return v3;
}

void __40__HACCStatusView__backgroundUpdateQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("hacc.background.queue", v0);
  v2 = _backgroundUpdateQueue__backgroundUpdateQueue;
  _backgroundUpdateQueue__backgroundUpdateQueue = v1;
}

- (void)updateValue
{
  v36.receiver = self;
  v36.super_class = HACCStatusView;
  [(HUICCCapsuleButton *)&v36 updateValue];
  delegate = [(HACCStatusView *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_28647C0E8];

  if (!v4)
  {
    currentHearingDevice = 0;
    goto LABEL_6;
  }

  delegate2 = [(HACCStatusView *)self delegate];
  currentHearingDevice = [delegate2 currentHearingDevice];

  if (!currentHearingDevice)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_9;
  }

  if ([currentHearingDevice propertyIsAvailable:4 forEar:{objc_msgSend(currentHearingDevice, "availableEars")}])
  {
    [(HACCStatusView *)self _updateBatterySubtitleLabelForDevice:currentHearingDevice];
  }

  else
  {
    subtitleLabel = [(HUICCCapsuleButton *)self subtitleLabel];
    [subtitleLabel setText:0];
  }

  v7 = 0;
LABEL_9:
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = accessibilityHearingAidImageNamed(@"hearingDevicesIcon");
  v9 = v31[5];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v11 = [v9 _flatImageWithColor:whiteColor];
  v12 = v31[5];
  v31[5] = v11;

  if ((v7 & 1) != 0 || ([MEMORY[0x277D12DE8] sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hearingAidReachable"), v13, (v14 & 1) == 0))
  {
    mEMORY[0x277D12E00] = [MEMORY[0x277D12E00] sharedInstance];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __29__HACCStatusView_updateValue__block_invoke;
    v29[3] = &unk_2796F6EA0;
    v29[4] = self;
    v29[5] = &v30;
    [mEMORY[0x277D12E00] getCurrentRouteInformationWithCompletion:v29];
  }

  else
  {
    mEMORY[0x277D12E00] = [currentHearingDevice name];
    mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
    hearingAidReachable = [mEMORY[0x277D12DE8] hearingAidReachable];

    if (hearingAidReachable)
    {
      mEMORY[0x277D12DE8]2 = [MEMORY[0x277D12DE8] sharedInstance];
      connectedDeviceName = [mEMORY[0x277D12DE8]2 connectedDeviceName];

      if ([connectedDeviceName length])
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = hearingLocString();
        v22 = [v20 localizedStringWithFormat:v21, connectedDeviceName];

        v23 = [mEMORY[0x277D12E00] stringByAppendingFormat:@"\n%@", v22];

        mEMORY[0x277D12E00] = v23;
      }
    }

    if (mEMORY[0x277D12E00])
    {
      titleLabel = [(HUICCCapsuleButton *)self titleLabel];
      [titleLabel setText:mEMORY[0x277D12E00]];
    }

    v25 = v31[5];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    v27 = [v25 _flatImageWithColor:whiteColor2];
    v28 = v31[5];
    v31[5] = v27;

    [(UIImageView *)self->_iconImageView setImage:v31[5]];
    [(HACCStatusView *)self setBatteryDevice:0];
    [(HACCStatusView *)self setShouldAutoExpandForAvailableHAs:1];
  }

  _Block_object_dispose(&v30, 8);
}

void __29__HACCStatusView_updateValue__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = *(*(*(a1 + 40) + 8) + 40);
  if ((a6 & 1) == 0 && [v14 length])
  {
    v16 = [*(a1 + 32) liveListenImageNameFromBluetoothRoute:v14];
    v17 = accessibilityHearingAidImageNamed(v16);

    v18 = [MEMORY[0x277D75348] whiteColor];
    v15 = [v17 _flatImageWithColor:v18];
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  [*(a1 + 32) setBatteryDevice:0];
  v19 = [*(*(a1 + 32) + 632) connectedDevices];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __29__HACCStatusView_updateValue__block_invoke_2;
  v26[3] = &unk_2796F6E50;
  v20 = v13;
  v21 = *(a1 + 32);
  v27 = v20;
  v28 = v21;
  v29 = v30;
  [v19 enumerateObjectsUsingBlock:v26];

  v22 = v11;
  v23 = v15;
  v24 = v14;
  v25 = v22;
  AXPerformBlockOnMainThread();

  _Block_object_dispose(v30, 8);
}

void __29__HACCStatusView_updateValue__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 accessoryIdentifier];
  if ([v6 isEqualToString:*(a1 + 32)])
  {
    [*(a1 + 40) setBatteryDevice:v7];
    *(*(*(a1 + 48) + 8) + 24) = [v7 percentCharge] / 100.0;
    *a4 = 1;
  }
}

void __29__HACCStatusView_updateValue__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) liveListenImageSize:*(a1 + 40) forProductID:*(a1 + 48)];
  [*(*(a1 + 32) + 616) setImage:*(a1 + 40)];
  [*(*(a1 + 32) + 616) frame];
  [*(*(a1 + 32) + 616) setFrame:?];
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) titleLabel];
    [v2 setText:*(a1 + 56)];
  }

  v3 = [*(a1 + 32) batteryDevice];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);

    [v4 _updateBatterySubtitleLabelForLeft:6 right:v5 andAvailableEars:v5];
  }

  else
  {
    v6 = [v4 subtitleLabel];
    [v6 setText:0];
  }
}

- (void)_updateBatterySubtitleLabelForDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy leftBatteryLevel];
  v6 = v5;
  [deviceCopy rightBatteryLevel];
  v8 = v7;
  availableEars = [deviceCopy availableEars];

  [(HACCStatusView *)self _updateBatterySubtitleLabelForLeft:availableEars right:v6 andAvailableEars:v8];
}

- (void)_updateBatterySubtitleLabelForLeft:(double)left right:(double)right andAvailableEars:(int)ears
{
  if (ears)
  {
    leftCopy = right;
    if (ears == 6 && vabdd_f64(left, right) >= 0.05)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = hearingLocString();
      v15 = hearingLocString();
      numberFormatter = self->_numberFormatter;
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:left];
      v18 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v17];
      v9 = [v13 stringWithFormat:v14, v15, v18];

      v19 = MEMORY[0x277CCACA8];
      v20 = hearingLocString();
      v21 = hearingLocString();
      v22 = self->_numberFormatter;
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:leftCopy];
      v24 = [(NSNumberFormatter *)v22 stringFromNumber:v23];
      v11 = [v19 stringWithFormat:v20, v21, v24];

      v25 = MEMORY[0x277CCACA8];
      v12 = hearingLocString();
      [v25 stringWithFormat:v12, v9, v11];
    }

    else
    {
      if (ears == 2)
      {
        leftCopy = left;
      }

      v8 = MEMORY[0x277CCACA8];
      v9 = hearingLocString();
      v10 = self->_numberFormatter;
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:leftCopy];
      v12 = [(NSNumberFormatter *)v10 stringFromNumber:v11];
      [v8 stringWithFormat:v9, v12, v28];
    }
    v29 = ;
  }

  else
  {
    v29 = 0;
  }

  v26 = [(HUICCCapsuleButton *)self subtitleLabel:left];
  [v26 setText:v29];

  delegate = [(HACCStatusView *)self delegate];
  [delegate updateHeight];
}

- (BOOL)shouldAddSeparatorForView:(id)view
{
  viewCopy = view;
  subviews = [viewCopy subviews];
  v6 = [subviews count];

  if (v6)
  {
    subviews2 = [viewCopy subviews];
    v8 = [subviews2 objectAtIndexedSubscript:0];

    if ([(HACCStatusView *)self module]|| (objc_opt_respondsToSelector() & 1) == 0)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v9 = [v8 providesOwnSeparator] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)accessibilityLabel
{
  titleLabel = [(HUICCCapsuleButton *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  delegate = [(HACCStatusView *)self delegate];
  currentHearingDevice = [delegate currentHearingDevice];

  if ([currentHearingDevice isConnected])
  {
    if ([currentHearingDevice leftAvailable])
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = hearingLocString();
      numberFormatter = self->_numberFormatter;
      v8 = MEMORY[0x277CCABB0];
      [currentHearingDevice leftBatteryLevel];
      v9 = [v8 numberWithDouble:?];
      v10 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v9];
      batteryDevice = [v5 stringWithFormat:v6, v10];
    }

    else
    {
      batteryDevice = 0;
    }

    if ([currentHearingDevice rightAvailable])
    {
      v20 = MEMORY[0x277CCACA8];
      v15 = hearingLocString();
      v21 = self->_numberFormatter;
      v22 = MEMORY[0x277CCABB0];
      [currentHearingDevice rightBatteryLevel];
      v17 = [v22 numberWithDouble:?];
      v18 = [(NSNumberFormatter *)v21 stringFromNumber:v17];
      v19 = [v20 stringWithFormat:v15, v18];
      goto LABEL_9;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  batteryDevice = [(HACCStatusView *)self batteryDevice];

  if (!batteryDevice)
  {
    goto LABEL_10;
  }

  batteryDevice2 = [(HACCStatusView *)self batteryDevice];
  v13 = [batteryDevice2 percentCharge] / 100.0;

  v14 = MEMORY[0x277CCACA8];
  v15 = hearingLocString();
  v16 = self->_numberFormatter;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v18 = [(NSNumberFormatter *)v16 stringFromNumber:v17];
  batteryDevice = [v14 stringWithFormat:v15, v18];
  v19 = 0;
LABEL_9:

LABEL_11:
  if ([batteryDevice length] || objc_msgSend(v19, "length"))
  {
    v27.receiver = self;
    v27.super_class = HACCStatusView;
    accessibilityValue = [(HUICCCapsuleButton *)&v27 accessibilityValue];
    v26 = hearingLocString();
    v24 = __AXStringForVariables();
  }

  else
  {
    v24 = hearingLocString();
  }

  return v24;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end