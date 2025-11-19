@interface CHSMutableConfiguredWidgetDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSupportedRenderSchemes:(id)a3;
- (void)setSupportedRenderingModes:(unint64_t)a3;
@end

@implementation CHSMutableConfiguredWidgetDescriptor

- (void)setSupportedRenderingModes:(unint64_t)a3
{
  v3 = a3;
  v10 = objc_opt_new();
  if (v3)
  {
    v5 = [(CHSConfiguredWidgetDescriptor *)self widget];
    IsAccessory = CHSWidgetFamilyIsAccessory([v5 family]);

    v7 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:1 backgroundViewPolicy:IsAccessory];
    [v10 addObject:v7];
  }

  if ((v3 & 4) != 0)
  {
    v8 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:4 backgroundViewPolicy:1];
    [v10 addObject:v8];
  }

  if ((v3 & 2) != 0)
  {
    v9 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:2 backgroundViewPolicy:1];
    [v10 addObject:v9];
  }

  [(CHSMutableConfiguredWidgetDescriptor *)self setSupportedRenderSchemes:v10];
}

- (void)setSupportedRenderSchemes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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
        v11 = [v10 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
        if ([v11 count])
        {
          [(NSArray *)v5 addObjectsFromArray:v11];
        }

        else
        {
          v12 = [v10 copy];
          [(NSArray *)v5 addObject:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  supportedRenderSchemes = self->super._supportedRenderSchemes;
  self->super._supportedRenderSchemes = v5;

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSConfiguredWidgetDescriptor alloc];

  return [(CHSConfiguredWidgetDescriptor *)v4 _initWithDescriptor:self];
}

@end