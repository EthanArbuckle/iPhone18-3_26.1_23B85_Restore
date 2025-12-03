@interface NTKAnalogUtilitarianFaceViewComplicationFactory
- (id)_utilityComplicationSlots;
- (id)initForDevice:(id)device;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)_utilitarianUtilitySlotForSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKAnalogUtilitarianFaceViewComplicationFactory

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKAnalogUtilitarianFaceViewComplicationFactory;
  v5 = [(NTKFaceViewComplicationFactory *)&v13 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    v7 = v5[9];
    v5[9] = v6;

    v8 = v5[9];
    device = [v5 device];
    [v8 setForegroundAlpha:NTKUtilityComplicationNormalForegroundAlpha()];

    v10 = v5[9];
    device2 = [v5 device];
    [v10 setForegroundImageAlpha:NTKUtilityComplicationNormalForegroundAlpha()];
  }

  return v5;
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _utilityComplicationSlots = [(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilityComplicationSlots];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [_utilityComplicationSlots countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(_utilityComplicationSlots);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        v19 = [viewCopy complicationLayoutforSlot:v18];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v19 forSlot:[(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilitarianUtilitySlotForSlot:v18] withBounds:v6, v8, v10, v12];
      }

      v15 = [_utilityComplicationSlots countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  complicationFactory = self->_complicationFactory;
  complicationCopy = complication;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilitarianUtilitySlotForSlot:slot]];

  return v11;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  complicationFactory = self->_complicationFactory;
  faceViewCopy = faceView;
  slotCopy = slot;
  viewCopy = view;
  -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](complicationFactory, "foregroundAlphaForEditing:", [faceViewCopy editing]);
  [viewCopy setForegroundAlpha:?];
  v11 = self->_complicationFactory;
  editing = [faceViewCopy editing];

  [(NTKUtilityComplicationFactory *)v11 foregroundImageAlphaForEditing:editing];
  [viewCopy setForegroundImageAlpha:?];
  v13 = [(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilitarianUtilitySlotForSlot:slotCopy];

  [viewCopy setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", v13)}];
}

- (id)_utilityComplicationSlots
{
  if (_utilityComplicationSlots_onceToken_0 != -1)
  {
    [NTKAnalogUtilitarianFaceViewComplicationFactory _utilityComplicationSlots];
  }

  v3 = _utilityComplicationSlots___slots;

  return v3;
}

void __76__NTKAnalogUtilitarianFaceViewComplicationFactory__utilityComplicationSlots__block_invoke()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v2[0] = @"top-left";
  v2[1] = @"top-right";
  v2[2] = @"bottom-center";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:3];
  v1 = _utilityComplicationSlots___slots;
  _utilityComplicationSlots___slots = v0;
}

- (int64_t)_utilitarianUtilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top-left"])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:@"top-right"])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:@"bottom-left"])
  {
    v4 = 3;
  }

  else if ([slotCopy isEqualToString:@"bottom-right"])
  {
    v4 = 4;
  }

  else if ([slotCopy isEqualToString:@"bottom-center"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end