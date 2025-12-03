@interface CHSMutableConfiguredWidgetDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSupportedRenderSchemes:(id)schemes;
- (void)setSupportedRenderingModes:(unint64_t)modes;
@end

@implementation CHSMutableConfiguredWidgetDescriptor

- (void)setSupportedRenderingModes:(unint64_t)modes
{
  modesCopy = modes;
  v10 = objc_opt_new();
  if (modesCopy)
  {
    widget = [(CHSConfiguredWidgetDescriptor *)self widget];
    IsAccessory = CHSWidgetFamilyIsAccessory([widget family]);

    v7 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:1 backgroundViewPolicy:IsAccessory];
    [v10 addObject:v7];
  }

  if ((modesCopy & 4) != 0)
  {
    v8 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:4 backgroundViewPolicy:1];
    [v10 addObject:v8];
  }

  if ((modesCopy & 2) != 0)
  {
    v9 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:2 backgroundViewPolicy:1];
    [v10 addObject:v9];
  }

  [(CHSMutableConfiguredWidgetDescriptor *)self setSupportedRenderSchemes:v10];
}

- (void)setSupportedRenderSchemes:(id)schemes
{
  v20 = *MEMORY[0x1E69E9840];
  schemesCopy = schemes;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = schemesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        _compatibilityRenderSchemesFromDeprecatedRenderingModes = [v10 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
        if ([_compatibilityRenderSchemesFromDeprecatedRenderingModes count])
        {
          [(NSArray *)array addObjectsFromArray:_compatibilityRenderSchemesFromDeprecatedRenderingModes];
        }

        else
        {
          v12 = [v10 copy];
          [(NSArray *)array addObject:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  supportedRenderSchemes = self->super._supportedRenderSchemes;
  self->super._supportedRenderSchemes = array;

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSConfiguredWidgetDescriptor alloc];

  return [(CHSConfiguredWidgetDescriptor *)v4 _initWithDescriptor:self];
}

@end