@interface CSWidgetGridModel
- (CSWidgetGridModel)initWithComplicationDescriptors:(id)descriptors iconLayout:(id)layout type:(unint64_t)type;
- (void)setComplicationDescriptors:(id)descriptors iconLayout:(id)layout;
- (void)validateIconsForAvailableWidgets;
@end

@implementation CSWidgetGridModel

- (CSWidgetGridModel)initWithComplicationDescriptors:(id)descriptors iconLayout:(id)layout type:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = CSWidgetGridModel;
  v5 = [(PRWidgetGridModel *)&v9 initWithComplicationDescriptors:descriptors iconLayout:layout type:type];
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
  complicationDescriptors = [(PRWidgetGridModel *)self complicationDescriptors];
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
        widgetDescriptor = [v7 widgetDescriptor];
        effectiveContainerBundleIdentifier = [widgetDescriptor effectiveContainerBundleIdentifier];
        if (([v7 hasMatchingDescriptor] & 1) == 0)
        {
          v11 = [(CSApplicationInforming *)self->_applicationInformer applicationExistsForBundleIdentifier:effectiveContainerBundleIdentifier];
          v12 = [(CSApplicationInforming *)self->_applicationInformer isInstallingApplicationWithBundleIdentifier:effectiveContainerBundleIdentifier];
          if ((v11 & 1) == 0 && !v12)
          {
            goto LABEL_14;
          }
        }

        v10 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:effectiveContainerBundleIdentifier];
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
            selfCopy2 = self;
            v19 = v18;
            v20 = "Removed %{public}@ from widget grid %{public}@";
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        isHidden = [v10 isHidden];

        if (isHidden)
        {
          goto LABEL_14;
        }

        v14 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:effectiveContainerBundleIdentifier allowPlaceholder:0 error:0];
        applicationState = [v14 applicationState];
        isRestricted = [applicationState isRestricted];

        if (isRestricted)
        {
          goto LABEL_14;
        }

        if (([complicationDescriptors containsObject:v7] & 1) == 0)
        {
          v17 = [(NSMutableDictionary *)self->_removedDescriptorToIndex objectForKeyedSubscript:v7];
          [(PRWidgetGridModel *)self addComplicationDescriptor:v7 withGridIndex:v17];
          v18 = SBLogDashBoard();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v7;
            v30 = 2114;
            selfCopy2 = self;
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

- (void)setComplicationDescriptors:(id)descriptors iconLayout:(id)layout
{
  v6 = MEMORY[0x277CBEA60];
  layoutCopy = layout;
  descriptorsCopy = descriptors;
  v9 = [[v6 alloc] initWithArray:descriptorsCopy copyItems:1];
  posterComplicationDescriptors = self->_posterComplicationDescriptors;
  self->_posterComplicationDescriptors = v9;

  v11.receiver = self;
  v11.super_class = CSWidgetGridModel;
  [(PRWidgetGridModel *)&v11 setComplicationDescriptors:descriptorsCopy iconLayout:layoutCopy];
}

@end