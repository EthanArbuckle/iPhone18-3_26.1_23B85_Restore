@interface NTKComplicationControllerDisplayProperties
- (BOOL)isEqual:(id)a3;
- (NTKComplicationControllerDisplayProperties)init;
- (id)_initWithDisplayProperties:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation NTKComplicationControllerDisplayProperties

- (NTKComplicationControllerDisplayProperties)init
{
  v7.receiver = self;
  v7.super_class = NTKComplicationControllerDisplayProperties;
  v2 = [(NTKComplicationControllerDisplayProperties *)&v7 init];
  v3 = v2;
  if (v2)
  {
    launchLocation = v2->_launchLocation;
    v2->_faceDataMode = 0;
    v2->_launchLocation = 0;

    *&v3->_tapEnabled = 257;
    v3->_supportsWatchGestureInteraction = 0;
    v3->_visibility = 0;
    *&v3->_supportsTinting = 16842753;
    widgetConfigurationIdentifier = v3->_widgetConfigurationIdentifier;
    v3->_widgetConfigurationIdentifier = 0;

    *&v3->_widgetShowsSnapshot = 1;
    v3->_widgetHostPriorityTransientSnapshot = 0;
    v3->_contentOverride = 0;
  }

  return v3;
}

- (id)_initWithDisplayProperties:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKComplicationControllerDisplayProperties;
  v5 = [(NTKComplicationControllerDisplayProperties *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_faceDataMode = *(v4 + 1);
    v7 = [*(v4 + 2) copy];
    launchLocation = v6->_launchLocation;
    v6->_launchLocation = v7;

    v6->_tapEnabled = *(v4 + 24);
    v6->_defaultTapAnimationEnabled = *(v4 + 25);
    v6->_supportsWatchGestureInteraction = *(v4 + 26);
    v6->_visibility = *(v4 + 4);
    v6->_supportsTinting = *(v4 + 40);
    v6->_supportsSpecularHighlighting = *(v4 + 41);
    v6->_showsWhenLocked = *(v4 + 42);
    v6->_showsInLowLuminance = *(v4 + 43);
    v9 = [*(v4 + 6) copy];
    widgetConfigurationIdentifier = v6->_widgetConfigurationIdentifier;
    v6->_widgetConfigurationIdentifier = v9;

    v6->_widgetShowsSnapshot = *(v4 + 56);
    v6->_widgetRequiresSnapshot = *(v4 + 57);
    v6->_widgetHostPriorityTransientSnapshot = *(v4 + 58);
    v6->_contentOverride = *(v4 + 8);
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NTKMutableComplicationControllerDisplayProperties allocWithZone:a3];

  return [(NTKComplicationControllerDisplayProperties *)v4 _initWithDisplayProperties:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(NTKComplicationControllerDisplayProperties *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = [NTKComplicationControllerDisplayProperties allocWithZone:a3];

    return [(NTKComplicationControllerDisplayProperties *)v5 _initWithDisplayProperties:self];
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_faceDataMode];
  v5 = [v3 appendString:self->_launchLocation];
  v6 = [v3 appendBool:self->_tapEnabled];
  v7 = [v3 appendBool:self->_defaultTapAnimationEnabled];
  v8 = [v3 appendBool:self->_supportsWatchGestureInteraction];
  v9 = [v3 appendUnsignedInteger:self->_visibility];
  v10 = [v3 appendBool:self->_supportsTinting];
  v11 = [v3 appendBool:self->_supportsSpecularHighlighting];
  v12 = [v3 appendBool:self->_showsWhenLocked];
  v13 = [v3 appendBool:self->_showsInLowLuminance];
  v14 = [v3 appendString:self->_widgetConfigurationIdentifier];
  v15 = [v3 appendBool:self->_widgetShowsSnapshot];
  v16 = [v3 appendBool:self->_widgetRequiresSnapshot];
  v17 = [v3 appendBool:self->_widgetHostPriorityTransientSnapshot];
  v18 = [v3 appendUnsignedInteger:self->_contentOverride];
  v19 = [v3 hash];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  faceDataMode = self->_faceDataMode;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke;
  v80[3] = &unk_278780170;
  v7 = v4;
  v81 = v7;
  v8 = [v5 appendInteger:faceDataMode counterpart:v80];
  launchLocation = self->_launchLocation;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_2;
  v78[3] = &unk_278781840;
  v10 = v7;
  v79 = v10;
  v11 = [v5 appendString:launchLocation counterpart:v78];
  tapEnabled = self->_tapEnabled;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_3;
  v76[3] = &unk_27877EB68;
  v13 = v10;
  v77 = v13;
  v14 = [v5 appendBool:tapEnabled counterpart:v76];
  defaultTapAnimationEnabled = self->_defaultTapAnimationEnabled;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_4;
  v74[3] = &unk_27877EB68;
  v16 = v13;
  v75 = v16;
  v17 = [v5 appendBool:defaultTapAnimationEnabled counterpart:v74];
  supportsWatchGestureInteraction = self->_supportsWatchGestureInteraction;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_5;
  v72[3] = &unk_27877EB68;
  v19 = v16;
  v73 = v19;
  v20 = [v5 appendBool:supportsWatchGestureInteraction counterpart:v72];
  visibility = self->_visibility;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_6;
  v70[3] = &unk_278781868;
  v22 = v19;
  v71 = v22;
  v23 = [v5 appendUnsignedInteger:visibility counterpart:v70];
  supportsTinting = self->_supportsTinting;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_7;
  v68[3] = &unk_27877EB68;
  v25 = v22;
  v69 = v25;
  v26 = [v5 appendBool:supportsTinting counterpart:v68];
  supportsSpecularHighlighting = self->_supportsSpecularHighlighting;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_8;
  v66[3] = &unk_27877EB68;
  v28 = v25;
  v67 = v28;
  v29 = [v5 appendBool:supportsSpecularHighlighting counterpart:v66];
  showsWhenLocked = self->_showsWhenLocked;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_9;
  v64[3] = &unk_27877EB68;
  v31 = v28;
  v65 = v31;
  v32 = [v5 appendBool:showsWhenLocked counterpart:v64];
  showsInLowLuminance = self->_showsInLowLuminance;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_10;
  v62[3] = &unk_27877EB68;
  v34 = v31;
  v63 = v34;
  v35 = [v5 appendBool:showsInLowLuminance counterpart:v62];
  widgetConfigurationIdentifier = self->_widgetConfigurationIdentifier;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_11;
  v60[3] = &unk_278781840;
  v37 = v34;
  v61 = v37;
  v38 = [v5 appendString:widgetConfigurationIdentifier counterpart:v60];
  widgetShowsSnapshot = self->_widgetShowsSnapshot;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_12;
  v58[3] = &unk_27877EB68;
  v40 = v37;
  v59 = v40;
  v41 = [v5 appendBool:widgetShowsSnapshot counterpart:v58];
  widgetRequiresSnapshot = self->_widgetRequiresSnapshot;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_13;
  v56[3] = &unk_27877EB68;
  v43 = v40;
  v57 = v43;
  v44 = [v5 appendBool:widgetRequiresSnapshot counterpart:v56];
  widgetHostPriorityTransientSnapshot = self->_widgetHostPriorityTransientSnapshot;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_14;
  v54[3] = &unk_27877EB68;
  v46 = v43;
  v55 = v46;
  v47 = [v5 appendBool:widgetHostPriorityTransientSnapshot counterpart:v54];
  contentOverride = self->_contentOverride;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __54__NTKComplicationControllerDisplayProperties_isEqual___block_invoke_15;
  v52[3] = &unk_278781868;
  v53 = v46;
  v49 = v46;
  v50 = [v5 appendUnsignedInteger:contentOverride counterpart:v52];
  LOBYTE(v46) = [v5 isEqual];

  return v46;
}

@end