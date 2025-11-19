@interface MediaControlsBluetoothListeningModeButton
- (MediaControlsBluetoothListeningModeButton)initWithFrame:(CGRect)a3;
- (NSString)selectedListeningMode;
- (id)initForControlCenter;
- (void)playRequiresBothBudsInEarErrorHaptic;
- (void)setAvailableListeningModes:(id)a3;
- (void)setSelectedListeningMode:(id)a3 animated:(BOOL)a4;
@end

@implementation MediaControlsBluetoothListeningModeButton

- (MediaControlsBluetoothListeningModeButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MediaControlsBluetoothListeningModeButton;
  v3 = [(MediaControlsExpandableButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[MRUStringsProvider listeningModeTitle];
    [(MediaControlsExpandableButton *)v3 setTitle:v4];

    v5 = [MEMORY[0x1E69DC888] systemGray3Color];
    offColor = v3->_offColor;
    v3->_offColor = v5;

    [(MediaControlsExpandableButton *)v3 setButtonImageSize:54.0, 54.0];
  }

  return v3;
}

- (id)initForControlCenter
{
  v6.receiver = self;
  v6.super_class = MediaControlsBluetoothListeningModeButton;
  v2 = [(MediaControlsExpandableButton *)&v6 initForControlCenter];
  v3 = v2;
  if (v2)
  {
    v4 = v2[78];
    v2[78] = 0;
  }

  return v3;
}

- (void)setAvailableListeningModes:(id)a3
{
  v29 = a3;
  if (![(NSSet *)self->_availableListeningModes isEqualToSet:?])
  {
    objc_storeStrong(&self->_availableListeningModes, a3);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v29, "count")}];
    v6 = *MEMORY[0x1E6958738];
    if ([v29 containsObject:*MEMORY[0x1E6958738]])
    {
      v7 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v7 setIdentifier:v6];
      v8 = [MRUAsset packageAssetNamed:@"ListeningModeAuto"];
      [(MediaControlsExpandableButtonOption *)v7 setAsset:v8];

      v9 = +[MRUStringsProvider listeningModeAutomatic];
      [(MediaControlsExpandableButtonOption *)v7 setTitle:v9];

      [(MediaControlsExpandableButtonOption *)v7 setSelectedState:@"on"];
      v10 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(MediaControlsExpandableButtonOption *)v7 setSelectedBackgroundColor:v10];

      [v5 addObject:v7];
    }

    v11 = *MEMORY[0x1E6958730];
    if ([v29 containsObject:*MEMORY[0x1E6958730]])
    {
      v12 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v12 setIdentifier:v11];
      v13 = [MRUAsset packageAssetNamed:@"ListeningModeTransparency"];
      [(MediaControlsExpandableButtonOption *)v12 setAsset:v13];

      v14 = +[MRUStringsProvider listeningModeTransparency];
      [(MediaControlsExpandableButtonOption *)v12 setTitle:v14];

      [(MediaControlsExpandableButtonOption *)v12 setSelectedState:@"on"];
      v15 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(MediaControlsExpandableButtonOption *)v12 setSelectedBackgroundColor:v15];

      [v5 addObject:v12];
    }

    v16 = *MEMORY[0x1E6958740];
    if ([v29 containsObject:*MEMORY[0x1E6958740]])
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
    if ([v29 containsObject:*MEMORY[0x1E6958728]])
    {
      v21 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v21 setIdentifier:v20];
      v22 = [MRUAsset packageAssetNamed:@"ListeningModeNoiseCancellation"];
      [(MediaControlsExpandableButtonOption *)v21 setAsset:v22];

      v23 = +[MRUStringsProvider listeningModeNoiseCancellation];
      [(MediaControlsExpandableButtonOption *)v21 setTitle:v23];

      [(MediaControlsExpandableButtonOption *)v21 setSelectedState:@"on"];
      v24 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(MediaControlsExpandableButtonOption *)v21 setSelectedBackgroundColor:v24];

      [v5 addObject:v21];
    }

    v25 = [(MediaControlsBluetoothListeningModeButton *)self traitCollection];
    v26 = [v25 layoutDirection];

    if (v26 == 1)
    {
      v27 = [v5 reverseObjectEnumerator];
      v28 = [v27 allObjects];
      [(MediaControlsExpandableButton *)self setOptions:v28];
    }

    else
    {
      v27 = [v5 copy];
      [(MediaControlsExpandableButton *)self setOptions:v27];
    }
  }
}

- (NSString)selectedListeningMode
{
  v2 = [(MediaControlsExpandableButton *)self selectedOption];
  v3 = [v2 identifier];

  return v3;
}

- (void)setSelectedListeningMode:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MediaControlsExpandableButton *)self options];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__MediaControlsBluetoothListeningModeButton_setSelectedListeningMode_animated___block_invoke;
  v10[3] = &unk_1E7665190;
  v11 = v6;
  v8 = v6;
  v9 = [v7 indexOfObjectPassingTest:v10];

  [(MediaControlsExpandableButton *)self setSelectedOptionIndex:v9 animated:v4];
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