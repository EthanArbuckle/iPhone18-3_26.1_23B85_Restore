@interface MediaControlsBluetoothListeningModeButton
- (MediaControlsBluetoothListeningModeButton)initWithFrame:(CGRect)frame;
- (NSString)selectedListeningMode;
- (id)initForControlCenter;
- (void)playRequiresBothBudsInEarErrorHaptic;
- (void)setAvailableListeningModes:(id)modes;
- (void)setSelectedListeningMode:(id)mode animated:(BOOL)animated;
@end

@implementation MediaControlsBluetoothListeningModeButton

- (MediaControlsBluetoothListeningModeButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MediaControlsBluetoothListeningModeButton;
  v3 = [(MediaControlsExpandableButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[MRUStringsProvider listeningModeTitle];
    [(MediaControlsExpandableButton *)v3 setTitle:v4];

    systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
    offColor = v3->_offColor;
    v3->_offColor = systemGray3Color;

    [(MediaControlsExpandableButton *)v3 setButtonImageSize:54.0, 54.0];
  }

  return v3;
}

- (id)initForControlCenter
{
  v6.receiver = self;
  v6.super_class = MediaControlsBluetoothListeningModeButton;
  initForControlCenter = [(MediaControlsExpandableButton *)&v6 initForControlCenter];
  v3 = initForControlCenter;
  if (initForControlCenter)
  {
    v4 = initForControlCenter[78];
    initForControlCenter[78] = 0;
  }

  return v3;
}

- (void)setAvailableListeningModes:(id)modes
{
  modesCopy = modes;
  if (![(NSSet *)self->_availableListeningModes isEqualToSet:?])
  {
    objc_storeStrong(&self->_availableListeningModes, modes);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(modesCopy, "count")}];
    v6 = *MEMORY[0x1E6958738];
    if ([modesCopy containsObject:*MEMORY[0x1E6958738]])
    {
      v7 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v7 setIdentifier:v6];
      v8 = [MRUAsset packageAssetNamed:@"ListeningModeAuto"];
      [(MediaControlsExpandableButtonOption *)v7 setAsset:v8];

      v9 = +[MRUStringsProvider listeningModeAutomatic];
      [(MediaControlsExpandableButtonOption *)v7 setTitle:v9];

      [(MediaControlsExpandableButtonOption *)v7 setSelectedState:@"on"];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [(MediaControlsExpandableButtonOption *)v7 setSelectedBackgroundColor:systemBlueColor];

      [v5 addObject:v7];
    }

    v11 = *MEMORY[0x1E6958730];
    if ([modesCopy containsObject:*MEMORY[0x1E6958730]])
    {
      v12 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v12 setIdentifier:v11];
      v13 = [MRUAsset packageAssetNamed:@"ListeningModeTransparency"];
      [(MediaControlsExpandableButtonOption *)v12 setAsset:v13];

      v14 = +[MRUStringsProvider listeningModeTransparency];
      [(MediaControlsExpandableButtonOption *)v12 setTitle:v14];

      [(MediaControlsExpandableButtonOption *)v12 setSelectedState:@"on"];
      systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(MediaControlsExpandableButtonOption *)v12 setSelectedBackgroundColor:systemBlueColor2];

      [v5 addObject:v12];
    }

    v16 = *MEMORY[0x1E6958740];
    if ([modesCopy containsObject:*MEMORY[0x1E6958740]])
    {
      v17 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v17 setIdentifier:v16];
      v18 = [MRUAsset packageAssetNamed:@"ListeningModeOff"];
      [(MediaControlsExpandableButtonOption *)v17 setAsset:v18];

      v19 = +[MRUStringsProvider listeningModeOff];
      [(MediaControlsExpandableButtonOption *)v17 setTitle:v19];

      [(MediaControlsExpandableButtonOption *)v17 setSelectedState:@"on"];
      [(MediaControlsExpandableButtonOption *)v17 setSelectedBackgroundColor:self->_offColor];
      [v5 addObject:v17];
    }

    v20 = *MEMORY[0x1E6958728];
    if ([modesCopy containsObject:*MEMORY[0x1E6958728]])
    {
      v21 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v21 setIdentifier:v20];
      v22 = [MRUAsset packageAssetNamed:@"ListeningModeNoiseCancellation"];
      [(MediaControlsExpandableButtonOption *)v21 setAsset:v22];

      v23 = +[MRUStringsProvider listeningModeNoiseCancellation];
      [(MediaControlsExpandableButtonOption *)v21 setTitle:v23];

      [(MediaControlsExpandableButtonOption *)v21 setSelectedState:@"on"];
      systemBlueColor3 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(MediaControlsExpandableButtonOption *)v21 setSelectedBackgroundColor:systemBlueColor3];

      [v5 addObject:v21];
    }

    traitCollection = [(MediaControlsBluetoothListeningModeButton *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      reverseObjectEnumerator = [v5 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      [(MediaControlsExpandableButton *)self setOptions:allObjects];
    }

    else
    {
      reverseObjectEnumerator = [v5 copy];
      [(MediaControlsExpandableButton *)self setOptions:reverseObjectEnumerator];
    }
  }
}

- (NSString)selectedListeningMode
{
  selectedOption = [(MediaControlsExpandableButton *)self selectedOption];
  identifier = [selectedOption identifier];

  return identifier;
}

- (void)setSelectedListeningMode:(id)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  modeCopy = mode;
  options = [(MediaControlsExpandableButton *)self options];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__MediaControlsBluetoothListeningModeButton_setSelectedListeningMode_animated___block_invoke;
  v10[3] = &unk_1E7665190;
  v11 = modeCopy;
  v8 = modeCopy;
  v9 = [options indexOfObjectPassingTest:v10];

  [(MediaControlsExpandableButton *)self setSelectedOptionIndex:v9 animated:animatedCopy];
}

uint64_t __79__MediaControlsBluetoothListeningModeButton_setSelectedListeningMode_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)playRequiresBothBudsInEarErrorHaptic
{
  v3 = +[MRUStringsProvider listeningModeErrorMessage];
  [(MediaControlsExpandableButton *)self playFailedValueChangedEventHapticWithMessage:v3];
}

@end