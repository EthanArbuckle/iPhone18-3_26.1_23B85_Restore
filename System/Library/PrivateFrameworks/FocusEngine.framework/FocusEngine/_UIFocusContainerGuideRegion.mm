@interface _UIFocusContainerGuideRegion
- (BOOL)isEqual:(id)equal;
- (id)_fallbackFocusItemForMovementRequest:(id)request inFocusMap:(id)map withSnapshot:(id)snapshot;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
@end

@implementation _UIFocusContainerGuideRegion

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  v9.receiver = self;
  v9.super_class = _UIFocusContainerGuideRegion;
  v5 = [(_UIFocusGuideRegion *)&v9 _focusRegionWithAdjustedFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  fallbackRootRegionContainer = [(_UIFocusContainerGuideRegion *)self fallbackRootRegionContainer];
  [v5 setFallbackRootRegionContainer:fallbackRootRegionContainer];

  contentFocusRegionContainer = [(_UIFocusContainerGuideRegion *)self contentFocusRegionContainer];
  [v5 setContentFocusRegionContainer:contentFocusRegionContainer];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = _UIFocusContainerGuideRegion;
  if ([(_UIFocusGuideRegion *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5[10];
    v7 = self->_contentFocusRegionContainer;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_17;
      }

      v11 = [(_UIFocusRegionContainer *)v7 isEqual:v8];

      if (!v11)
      {
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    fallbackRootRegionContainer = self->_fallbackRootRegionContainer;
    v14 = v5[9];
    v7 = fallbackRootRegionContainer;
    v15 = v14;
    v9 = v15;
    if (v7 == v15)
    {
      v12 = 1;
      goto LABEL_19;
    }

    if (v7)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v12 = [(_UIFocusRegionContainer *)v7 isEqual:v15];
LABEL_19:

      goto LABEL_20;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)_fallbackFocusItemForMovementRequest:(id)request inFocusMap:(id)map withSnapshot:(id)snapshot
{
  requestCopy = request;
  mapCopy = map;
  snapshotCopy = snapshot;
  v27.receiver = self;
  v27.super_class = _UIFocusContainerGuideRegion;
  v11 = [(_UIFocusGuideRegion *)&v27 _fallbackFocusItemForMovementRequest:requestCopy inFocusMap:mapCopy withSnapshot:snapshotCopy];
  contentFocusRegionContainer = [(_UIFocusContainerGuideRegion *)self contentFocusRegionContainer];
  v13 = contentFocusRegionContainer;
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = contentFocusRegionContainer == 0;
  }

  if (!v14)
  {
    fallbackRootRegionContainer = [(_UIFocusContainerGuideRegion *)self fallbackRootRegionContainer];
    v16 = fallbackRootRegionContainer;
    if (fallbackRootRegionContainer)
    {
      contentFocusRegionContainer2 = fallbackRootRegionContainer;
      v18 = [_UIFocusMap alloc];
      focusSystem = [mapCopy focusSystem];
      v20 = [(_UIFocusMap *)v18 initWithFocusSystem:focusSystem rootContainer:contentFocusRegionContainer2 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];
    }

    else
    {
      contentFocusRegionContainer2 = [(_UIFocusContainerGuideRegion *)self contentFocusRegionContainer];
      v20 = mapCopy;
    }

    v21 = [snapshotCopy originalRegionForRegion:self];
    v22 = [(_UIFocusMap *)v20 _allRegionsInContainer:contentFocusRegionContainer2 intersectingRegion:v21];

    v23 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93___UIFocusContainerGuideRegion__fallbackFocusItemForMovementRequest_inFocusMap_withSnapshot___block_invoke;
    v26[3] = &__block_descriptor_40_e24_B16__0___UIFocusRegion_8lu32l8;
    v26[4] = v23;
    v24 = [v22 bs_filter:v26];

    v11 = [(_UIFocusMap *)v20 _nextFocusedItemForFocusMovementRequest:requestCopy inRegions:v24 withSnapshot:snapshotCopy];
  }

  return v11;
}

@end