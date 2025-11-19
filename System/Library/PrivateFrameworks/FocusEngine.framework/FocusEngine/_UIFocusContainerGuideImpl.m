@interface _UIFocusContainerGuideImpl
- (BOOL)_isEligibleForFocusInteraction;
- (_UIFocusContainerGuideImpl)initWithDelegate:(id)a3;
- (void)_searchForFocusRegionsInContext:(id)a3;
@end

@implementation _UIFocusContainerGuideImpl

- (_UIFocusContainerGuideImpl)initWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIFocusContainerGuideImpl;
  v3 = [(_UIFocusGuideImpl *)&v6 initWithDelegate:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIFocusGuideImpl *)v3 _setAutomaticallyPreferOwningItem:0];
  }

  return v4;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if (![(_UIFocusGuideImpl *)self isEnabled])
  {
    return 0;
  }

  v3 = [(_UIFocusGuideImpl *)self owningItem];
  v4 = v3 != 0;

  return v4;
}

- (void)_searchForFocusRegionsInContext:(id)a3
{
  v28 = a3;
  v4 = [_UIFocusContainerGuideRegion alloc];
  [(_UIFocusGuideImpl *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(_UIFocusGuideImpl *)self owningItem];
  v14 = [v13 focusItemContainer];
  v15 = [v14 coordinateSpace];
  v16 = [(_UIFocusGuideRegion *)v4 initWithFrame:v15 coordinateSpace:v6, v8, v10, v12];

  [(_UIFocusGuideRegion *)v16 setDelegate:self];
  v17 = [(_UIFocusGuideImpl *)self owningItem];
  v18 = [(_UIFocusGuideImpl *)self owningItem];
  v19 = [v18 focusItemContainer];
  v20 = _UIFocusRegionContainerFromEnvironmentAndContainer(v17, v19);
  [(_UIFocusContainerGuideRegion *)v16 setContentFocusRegionContainer:v20];

  v21 = [(_UIFocusContainerGuideImpl *)self fallbackItemProvider];
  v22 = v21;
  if (v21)
  {
    v23 = (*(v21 + 16))(v21);
    v24 = [_UIFocusContainerGuideFallbackItemsContainer alloc];
    v25 = [(_UIFocusGuideImpl *)self owningItem];
    v26 = [(_UIFocusContainerGuideFallbackItemsContainer *)v24 initWithParentEnvironment:v25 childItems:v23];

    v27 = _UIFocusRegionContainerFromEnvironmentAndContainer(v26, v26);
    [(_UIFocusContainerGuideRegion *)v16 setFallbackRootRegionContainer:v27];
  }

  [v28 addRegion:v16];
}

@end