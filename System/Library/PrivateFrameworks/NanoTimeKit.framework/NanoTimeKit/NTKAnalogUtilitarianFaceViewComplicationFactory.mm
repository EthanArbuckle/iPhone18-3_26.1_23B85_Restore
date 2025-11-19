@interface NTKAnalogUtilitarianFaceViewComplicationFactory
- (id)_utilityComplicationSlots;
- (id)initForDevice:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)_utilitarianUtilitySlotForSlot:(id)a3;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKAnalogUtilitarianFaceViewComplicationFactory

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKAnalogUtilitarianFaceViewComplicationFactory;
  v5 = [(NTKFaceViewComplicationFactory *)&v13 initForDevice:v4];
  if (v5)
  {
    v6 = [[NTKUtilityComplicationFactory alloc] initForDevice:v4];
    v7 = v5[9];
    v5[9] = v6;

    v8 = v5[9];
    v9 = [v5 device];
    [v8 setForegroundAlpha:NTKUtilityComplicationNormalForegroundAlpha()];

    v10 = v5[9];
    v11 = [v5 device];
    [v10 setForegroundImageAlpha:NTKUtilityComplicationNormalForegroundAlpha()];
  }

  return v5;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilityComplicationSlots];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        v19 = [v4 complicationLayoutforSlot:v18];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v19 forSlot:[(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilitarianUtilitySlotForSlot:v18] withBounds:v6, v8, v10, v12];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  complicationFactory = self->_complicationFactory;
  v10 = a3;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilitarianUtilitySlotForSlot:a5]];

  return v11;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  complicationFactory = self->_complicationFactory;
  v9 = a5;
  v10 = a4;
  v14 = a3;
  -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](complicationFactory, "foregroundAlphaForEditing:", [v9 editing]);
  [v14 setForegroundAlpha:?];
  v11 = self->_complicationFactory;
  v12 = [v9 editing];

  [(NTKUtilityComplicationFactory *)v11 foregroundImageAlphaForEditing:v12];
  [v14 setForegroundImageAlpha:?];
  v13 = [(NTKAnalogUtilitarianFaceViewComplicationFactory *)self _utilitarianUtilitySlotForSlot:v10];

  [v14 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", v13)}];
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

- (int64_t)_utilitarianUtilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"top-left"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"top-right"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"bottom-left"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"bottom-right"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"bottom-center"])
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