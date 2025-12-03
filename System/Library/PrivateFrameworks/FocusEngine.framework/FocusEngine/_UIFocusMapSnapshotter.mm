@interface _UIFocusMapSnapshotter
- (CGRect)snapshotFrame;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusSystem)focusSystem;
- (_UIFocusMapSnapshotter)init;
- (_UIFocusMapSnapshotter)initWithFocusSystem:(id)system rootContainer:(id)container coordinateSpace:(id)space searchInfo:(id)info ignoresRootContainerClippingRect:(BOOL)rect;
- (_UIFocusRegionContainer)regionsContainer;
- (_UIFocusRegionContainer)rootContainer;
- (id)_searchAreaForContainerSearchRect:(CGRect)rect;
- (id)captureSnapshot;
- (void)setSnapshotFrame:(CGRect)frame;
@end

@implementation _UIFocusMapSnapshotter

- (_UIFocusMapSnapshotter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshotter.m" lineNumber:33 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusMapSnapshotter)initWithFocusSystem:(id)system rootContainer:(id)container coordinateSpace:(id)space searchInfo:(id)info ignoresRootContainerClippingRect:(BOOL)rect
{
  systemCopy = system;
  containerCopy = container;
  spaceCopy = space;
  infoCopy = info;
  if (systemCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshotter.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"rootContainer"}];

    if (spaceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshotter.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

  if (!containerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (spaceCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshotter.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_4:
  v24.receiver = self;
  v24.super_class = _UIFocusMapSnapshotter;
  v17 = [(_UIFocusMapSnapshotter *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_focusSystem, systemCopy);
    objc_storeWeak(&v18->_rootContainer, containerCopy);
    objc_storeWeak(&v18->_coordinateSpace, spaceCopy);
    v19 = *(MEMORY[0x277CBF398] + 16);
    v18->_snapshotFrame.origin = *MEMORY[0x277CBF398];
    v18->_snapshotFrame.size = v19;
    v18->_snapshotFrameIsEmpty = 1;
    v18->_ignoresRootContainerClippingRect = rect;
    v18->_clipToSnapshotRect = 1;
    objc_storeStrong(&v18->_searchInfo, info);
  }

  return v18;
}

- (void)setSnapshotFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectEqualToRect(self->_snapshotFrame, frame))
  {
    self->_snapshotFrame.origin.x = x;
    self->_snapshotFrame.origin.y = y;
    self->_snapshotFrame.size.width = width;
    self->_snapshotFrame.size.height = height;
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    self->_snapshotFrameIsEmpty = CGRectIsEmpty(v8);
  }
}

- (id)_searchAreaForContainerSearchRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((_UIFocusRectSmartIntersectsRect(v9, v11, v13, v15, x, y, width, height) & 1) == 0)
  {
    x = _UIRectThatJustBarelyIntersectsRect(x, y, width, height, v10, v12, v14, v16);
    y = v17;
    width = v18;
    height = v19;
  }

  v20 = self->_focusedRegion;
  if (v20)
  {
    [_UIFocusRegionEvaluator frameForRegion:v20 inCoordinateSpace:WeakRetained];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    if ((_UIFocusRectSmartIntersectsRect(v21, v23, v25, v27, x, y, width, height) & 1) == 0)
    {
      x = _UIRectThatJustBarelyIntersectsRect(x, y, width, height, v22, v24, v26, v28);
      y = v29;
      width = v30;
      height = v31;
    }
  }

  v32 = objc_loadWeakRetained(&self->_rootContainer);
  v33 = _UIFocusItemSafeCast(v32);
  v34 = _UIFocusItemFrameInCoordinateSpace(v33, WeakRetained);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v47.origin.x = v34;
  v47.origin.y = v36;
  v47.size.width = v38;
  v47.size.height = v40;
  if (!CGRectIsNull(v47) && (_UIFocusRectSmartIntersectsRect(v34, v36, v38, v40, x, y, width, height) & 1) == 0)
  {
    x = _UIRectThatJustBarelyIntersectsRect(x, y, width, height, v34, v36, v38, v40);
    y = v41;
    width = v42;
    height = v43;
  }

  height = [[_UIFocusMapRect alloc] initWithFrame:WeakRetained coordinateSpace:x, y, width, height];

  return height;
}

- (id)captureSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  v4 = WeakRetained;
  if (self->_snapshotFrameIsEmpty)
  {
    [WeakRetained bounds];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = self->_snapshotFrame.origin.x;
    y = self->_snapshotFrame.origin.y;
    width = self->_snapshotFrame.size.width;
    height = self->_snapshotFrame.size.height;
  }

  height = [[_UIFocusMapRect alloc] initWithFrame:v4 coordinateSpace:x, y, width, height];
  height2 = [(_UIFocusMapSnapshotter *)self _searchAreaForContainerSearchRect:x, y, width, height];
  v15 = [[_UIFocusMapSnapshot alloc] _initWithSnapshotter:self mapArea:height searchArea:height2];

  return v15;
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

- (_UIFocusRegionContainer)rootContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);

  return WeakRetained;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

- (_UIFocusRegionContainer)regionsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_regionsContainer);

  return WeakRetained;
}

- (CGRect)snapshotFrame
{
  x = self->_snapshotFrame.origin.x;
  y = self->_snapshotFrame.origin.y;
  width = self->_snapshotFrame.size.width;
  height = self->_snapshotFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end