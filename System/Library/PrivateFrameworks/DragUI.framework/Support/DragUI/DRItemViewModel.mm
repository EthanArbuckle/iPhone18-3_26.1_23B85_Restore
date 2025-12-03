@interface DRItemViewModel
- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize;
- (CGPoint)anchorPoint;
- (CGPoint)center;
- (CGPoint)stackOffset;
- (CGRect)bounds;
- (DRClientItemViewModel)currentClientItemViewModel;
- (DRItemViewModel)initWithIndex:(unint64_t)index;
- (_DUIImageComponent)imageComponent;
- (_DUIPreview)preview;
- (id)clientItemViewModelForClient:(id)client;
@end

@implementation DRItemViewModel

- (DRItemViewModel)initWithIndex:(unint64_t)index
{
  v15.receiver = self;
  v15.super_class = DRItemViewModel;
  v4 = [(DRItemViewModel *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_itemIndex = index;
    v4->_applyOriginalRotation = 1;
    if (index)
    {
      if (qword_100063560 != -1)
      {
        sub_10002FEEC();
      }

      v6 = 6.0;
      if (byte_100063568 == 1)
      {
        v6 = sub_10000EFFC();
      }

      v7 = arc4random_uniform(0x64u) / 50.0 + -1.0;
      if (qword_100063560 != -1)
      {
        sub_10002FEEC();
      }

      v8 = v6 * v7;
      v9 = 6.0;
      if (byte_100063568 == 1)
      {
        v9 = sub_10000EFFC();
      }

      v10 = arc4random_uniform(0x64u);
      v5->_stackOffset.x = v8;
      v5->_stackOffset.y = v9 * (v10 / 50.0 + -1.0);
      if (qword_100063560 != -1)
      {
        sub_10002FF14();
      }

      if (byte_100063568 == 1)
      {
        v11 = sub_10000F1A0();
      }

      else
      {
        v11 = 0.07;
      }

      v5->_stackRotation = v11 * (arc4random_uniform(0x64u) / 50.0 + -1.0);
    }

    v12 = +[NSMapTable weakToStrongObjectsMapTable];
    clientItemViewModels = v5->_clientItemViewModels;
    v5->_clientItemViewModels = v12;
  }

  return v5;
}

- (id)clientItemViewModelForClient:(id)client
{
  clientCopy = client;
  if (clientCopy)
  {
    v5 = [(NSMapTable *)self->_clientItemViewModels objectForKey:clientCopy];
    if (!v5)
    {
      v5 = [[DRClientItemViewModel alloc] initWithClient:clientCopy];
      [(NSMapTable *)self->_clientItemViewModels setObject:v5 forKey:clientCopy];
      currentClient = [(DRItemViewModel *)self currentClient];

      if (!currentClient)
      {
        [(DRItemViewModel *)self setCurrentClient:clientCopy];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (DRClientItemViewModel)currentClientItemViewModel
{
  currentClient = [(DRItemViewModel *)self currentClient];
  v4 = [(DRItemViewModel *)self clientItemViewModelForClient:currentClient];

  return v4;
}

- (_DUIImageComponent)imageComponent
{
  if ([(DRItemViewModel *)self isObjectManipulationActive])
  {
    imageComponent = 0;
  }

  else
  {
    currentClientItemViewModel = [(DRItemViewModel *)self currentClientItemViewModel];
    imageComponent = [currentClientItemViewModel imageComponent];
  }

  return imageComponent;
}

- (_DUIPreview)preview
{
  currentClientItemViewModel = [(DRItemViewModel *)self currentClientItemViewModel];
  preview = [currentClientItemViewModel preview];

  currentClient = [(DRItemViewModel *)self currentClient];
  isSource = [currentClient isSource];

  if (!isSource)
  {
LABEL_5:
    self->_everReturnedDifferentPreviewThanFirstSourcePreview = 1;
    goto LABEL_8;
  }

  firstSourcePreview = self->_firstSourcePreview;
  if (!firstSourcePreview)
  {
    objc_storeStrong(&self->_firstSourcePreview, preview);
    goto LABEL_8;
  }

  if (!self->_everReturnedDifferentPreviewThanFirstSourcePreview)
  {
    if (preview == firstSourcePreview)
    {
      imageComponent = [(DRItemViewModel *)self imageComponent];
      self->_everReturnedDifferentPreviewThanFirstSourcePreview = [imageComponent hidesImage];

      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_8:
  if (self->_everReturnedDifferentPreviewThanFirstSourcePreview && [(_DUIPreview *)preview previewMode]!= 4)
  {
    [(_DUIPreview *)preview setLiftAnchorPoint:CGPointZero.x, CGPointZero.y];
  }

  return preview;
}

- (CGPoint)anchorPoint
{
  currentClientItemViewModel = [(DRItemViewModel *)self currentClientItemViewModel];
  [currentClientItemViewModel anchorPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)bounds
{
  if ([(DRItemViewModel *)self isObjectManipulationActive])
  {
    [(DRItemViewModel *)self associatedObjectManipulationDragItemSize];
    width = v3;
    height = v5;
    y = 0.0;
    x = 0.0;
  }

  else
  {
    imageComponent = [(DRItemViewModel *)self imageComponent];

    if (imageComponent)
    {
      imageComponent2 = [(DRItemViewModel *)self imageComponent];
      [imageComponent2 frame];
      x = v11;
      y = v12;
      width = v13;
      height = v14;
    }

    else
    {
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGPoint)stackOffset
{
  x = self->_stackOffset.x;
  y = self->_stackOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize
{
  width = self->_associatedObjectManipulationDragItemSize.width;
  height = self->_associatedObjectManipulationDragItemSize.height;
  depth = self->_associatedObjectManipulationDragItemSize.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

@end