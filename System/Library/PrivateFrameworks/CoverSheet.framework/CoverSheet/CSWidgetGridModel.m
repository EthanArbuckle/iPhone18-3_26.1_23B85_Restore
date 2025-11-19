@interface CSWidgetGridModel
- (CSWidgetGridModel)initWithComplicationDescriptors:(id)a3 iconLayout:(id)a4 type:(unint64_t)a5;
- (void)setComplicationDescriptors:(id)a3 iconLayout:(id)a4;
- (void)validateIconsForAvailableWidgets;
@end

@implementation CSWidgetGridModel

- (CSWidgetGridModel)initWithComplicationDescriptors:(id)a3 iconLayout:(id)a4 type:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = CSWidgetGridModel;
  v5 = [(PRWidgetGridModel *)&v9 initWithComplicationDescriptors:a3 iconLayout:a4 type:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    removedDescriptorToIndex = v5->_removedDescriptorToIndex;
    v5->_removedDescriptorToIndex = v6;
  }

  return v5;
}

- (void)validateIconsForAvailableWidgets
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = [(PRWidgetGridModel *)self complicationDescriptors];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_posterComplicationDescriptors;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = [v7 widgetDescriptor];
        v9 = [v8 effectiveContainerBundleIdentifier];
        if (([v7 hasMatchingDescriptor] & 1) == 0)
        {
          v11 = [(CSApplicationInforming *)self->_applicationInformer applicationExistsForBundleIdentifier:v9];
          v12 = [(CSApplicationInforming *)self->_applicationInformer isInstallingApplicationWithBundleIdentifier:v9];
          if ((v11 & 1) == 0 && !v12)
          {
            goto LABEL_14;
          }
        }

        v10 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v9];
        if ([v10 isLocked])
        {

LABEL_14:
          v17 = [(PRWidgetGridModel *)self removeComplicationDescriptor:v7];
          [(NSMutableDictionary *)self->_removedDescriptorToIndex setObject:v17 forKeyedSubscript:v7];
          v18 = SBLogDashBoard();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v7;
            v30 = 2114;
            v31 = self;
            v19 = v18;
            v20 = "Removed %{public}@ from widget grid %{public}@";
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        v13 = [v10 isHidden];

        if (v13)
        {
          goto LABEL_14;
        }

        v14 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
        v15 = [v14 applicationState];
        v16 = [v15 isRestricted];

        if (v16)
        {
          goto LABEL_14;
        }

        if (([v22 containsObject:v7] & 1) == 0)
        {
          v17 = [(NSMutableDictionary *)self->_removedDescriptorToIndex objectForKeyedSubscript:v7];
          [(PRWidgetGridModel *)self addComplicationDescriptor:v7 withGridIndex:v17];
          v18 = SBLogDashBoard();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v7;
            v30 = 2114;
            v31 = self;
            v19 = v18;
            v20 = "Adding %{public}@ back to widget grid %{public}@";
LABEL_16:
            _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
          }

LABEL_17:
        }

        ++v6;
      }

      while (v4 != v6);
      v21 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      v4 = v21;
    }

    while (v21);
  }
}

- (void)setComplicationDescriptors:(id)a3 iconLayout:(id)a4
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithArray:v8 copyItems:1];
  posterComplicationDescriptors = self->_posterComplicationDescriptors;
  self->_posterComplicationDescriptors = v9;

  v11.receiver = self;
  v11.super_class = CSWidgetGridModel;
  [(PRWidgetGridModel *)&v11 setComplicationDescriptors:v8 iconLayout:v7];
}

@end