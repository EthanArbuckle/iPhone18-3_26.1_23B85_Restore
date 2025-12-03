@interface DRSessionViewModel
- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize;
- (BOOL)acceptsSynthesizedTouchAtLocation:(CGPoint)location displayIdentifier:(id)identifier;
- (BOOL)canAddManipulatedTouch;
- (BOOL)canManipulateTransform;
- (CAPoint3D)centroid;
- (CAPoint3D)initialCentroidInSourceContext;
- (CGAffineTransform)appliedTransform;
- (CGAffineTransform)elasticTransform;
- (CGSize)maximumResizableSize;
- (CGSize)minimumResizableSize;
- (CGSize)originalScale;
- (DRSessionViewModel)init;
- (DRSessionViewModelDelegate)delegate;
- (NSArray)itemModels;
- (double)_manipulatedScale;
- (id)clientModelForClient:(id)client;
- (id)modelsSortedByStackOrder;
- (void)_invalidateElasticEffects;
- (void)_takeDragImageWithComponent:(id)component forClient:(id)client itemModel:(id)model;
- (void)_takePreview:(id)preview forClient:(id)client itemModel:(id)model;
- (void)_updateElasticEffectForLocation:(CAPoint3D)location;
- (void)_updateElasticProperties;
- (void)_updateElasticTransform;
- (void)addInitialItemsWithCount:(int64_t)count;
- (void)addItem;
- (void)addTouchID:(id)d;
- (void)endDragManipulationWithLocation:(CAPoint3D)location;
- (void)invalidateImageForClient:(id)client itemIndex:(unint64_t)index;
- (void)removeTouchID:(id)d;
- (void)setOrientation:(int64_t)orientation;
- (void)setPotentialDrop:(id)drop;
- (void)setPotentialDropDestinationClient:(id)client;
- (void)setPrecisionMode:(id)mode;
- (void)takePreviewAndImageComponents:(id)components forClient:(id)client;
- (void)updateDragManipulationWithLocation:(CAPoint3D)location;
- (void)updateLocation:(CAPoint3D)location ofTouchID:(id)d;
- (void)updateLocationWithoutTouches:(CAPoint3D)touches;
@end

@implementation DRSessionViewModel

- (DRSessionViewModel)init
{
  v17.receiver = self;
  v17.super_class = DRSessionViewModel;
  v2 = [(DRSessionViewModel *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = objc_opt_new();
    v8 = *(v2 + 29);
    *(v2 + 29) = v7;

    [*(v2 + 29) setPrefersFullSizePreview:1];
    v9 = objc_opt_new();
    v10 = *(v2 + 31);
    *(v2 + 31) = v9;

    v11 = +[NSMapTable weakToStrongObjectsMapTable];
    v12 = *(v2 + 8);
    *(v2 + 8) = v11;

    *(v2 + 9) = -1;
    v13 = objc_opt_new();
    v14 = *(v2 + 1);
    *(v2 + 1) = v13;

    *(v2 + 88) = xmmword_10003DE10;
    v15 = *&CGAffineTransformIdentity.c;
    *(v2 + 136) = *&CGAffineTransformIdentity.a;
    *(v2 + 13) = 0x3FF0000000000000;
    *(v2 + 14) = 0;
    *(v2 + 15) = 0;
    *(v2 + 16) = 0;
    v2[81] = 1;
    *(v2 + 152) = v15;
    *(v2 + 168) = *&CGAffineTransformIdentity.tx;
  }

  return v2;
}

- (id)clientModelForClient:(id)client
{
  clientCopy = client;
  v5 = [(NSMapTable *)self->_clientModelsByClient objectForKey:clientCopy];
  if (!v5)
  {
    v5 = [(DRSessionViewModel *)self addClientModelForClient:clientCopy isSource:0];
  }

  return v5;
}

- (BOOL)acceptsSynthesizedTouchAtLocation:(CGPoint)location displayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (-[DRSessionViewModel usesSynthesizedTouch](self, "usesSynthesizedTouch") && (-[DRSessionViewModel displayIdentifierForSynthesizedTouch](self, "displayIdentifierForSynthesizedTouch"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:identifierCopy], v6, (v7 & 1) == 0))
  {
    x = self->_centroidWithoutTouches.x;
    y = self->_centroidWithoutTouches.y;
    UIDistanceBetweenPoints();
    v8 = v11 <= 1.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addTouchID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_touchModels objectForKeyedSubscript:?];

  if (!v4)
  {
    [(NSMutableArray *)self->_touchIDs addObject:dCopy];
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_touchModels setObject:v5 forKeyedSubscript:dCopy];

    delegate = [(DRSessionViewModel *)self delegate];
    [delegate viewModelInvalidated:self];
  }
}

- (void)removeTouchID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_touchModels objectForKeyedSubscript:?];

  if (v4)
  {
    [(DRSessionViewModel *)self centroid];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if ([(NSMutableDictionary *)self->_touchModels count]== 1)
    {
      self->_centroidWithoutTouches.x = v6;
      self->_centroidWithoutTouches.y = v8;
      self->_centroidWithoutTouches.z = v10;
      self->_lastTouchEnded = 1;
    }

    [(NSMutableArray *)self->_touchIDs removeObject:dCopy];
    [(NSMutableDictionary *)self->_touchModels setObject:0 forKeyedSubscript:dCopy];
    [(DRSessionViewModel *)self centroid];
    if ((CAPoint3DEqualToPoint() & 1) == 0)
    {
      delegate = [(DRSessionViewModel *)self delegate];
      [delegate viewModelInvalidated:self];
    }
  }
}

- (void)addInitialItemsWithCount:(int64_t)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v5 = [[DRItemViewModel alloc] initWithIndex:[(NSMutableArray *)self->_itemModels count]];
      [(DRItemViewModel *)v5 setApplyOriginalRotation:[(DRSessionViewModel *)self rotatable]^ 1];
      [(DRItemViewModel *)v5 setIsObjectManipulationActive:[(DRSessionViewModel *)self isObjectManipulationActive]];
      [(DRSessionViewModel *)self associatedObjectManipulationDragItemSize];
      [(DRItemViewModel *)v5 setAssociatedObjectManipulationDragItemSize:?];
      [(NSMutableArray *)self->_itemModels addObject:v5];

      --countCopy;
    }

    while (countCopy);
  }
}

- (void)addItem
{
  v4 = [[DRItemViewModel alloc] initWithIndex:[(NSMutableArray *)self->_itemModels count]];
  [(DRItemViewModel *)v4 setApplyOriginalRotation:[(DRSessionViewModel *)self rotatable]^ 1];
  [(DRItemViewModel *)v4 setIsObjectManipulationActive:[(DRSessionViewModel *)self isObjectManipulationActive]];
  [(DRSessionViewModel *)self associatedObjectManipulationDragItemSize];
  [(DRItemViewModel *)v4 setAssociatedObjectManipulationDragItemSize:?];
  [(NSMutableArray *)self->_itemModels addObject:v4];
  [(DRItemViewModel *)v4 setPreferredStackOrder:self->_topStackOrder];
  topStackOrder = self->_topStackOrder;
  if ((topStackOrder & 0x8000000000000000) == 0)
  {
    self->_topStackOrder = topStackOrder + 1;
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    delegate = [(DRSessionViewModel *)self delegate];
    [delegate viewModelInvalidated:self];

    precisionMode = [(DRSessionViewModel *)self precisionMode];
    v8 = [precisionMode copy];

    [v8 setOrientation:orientation];
    [(DRSessionViewModel *)self setPrecisionMode:v8];
  }
}

- (void)setPotentialDrop:(id)drop
{
  dropCopy = drop;
  potentialDrop = self->_potentialDrop;
  if (potentialDrop != dropCopy && ([(_DUIPotentialDrop *)potentialDrop isEqual:dropCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_potentialDrop, drop);
    delegate = [(DRSessionViewModel *)self delegate];
    [delegate viewModelInvalidated:self];
  }

  _objc_release_x1();
}

- (void)setPotentialDropDestinationClient:(id)client
{
  clientCopy = client;
  p_potentialDropDestinationClient = &self->_potentialDropDestinationClient;
  if (self->_potentialDropDestinationClient != clientCopy)
  {
    v8 = clientCopy;
    objc_storeStrong(p_potentialDropDestinationClient, client);
    delegate = [(DRSessionViewModel *)self delegate];
    [delegate viewModelInvalidated:self];

    clientCopy = v8;
  }

  _objc_release_x1(p_potentialDropDestinationClient, clientCopy);
}

- (void)takePreviewAndImageComponents:(id)components forClient:(id)client
{
  componentsCopy = components;
  clientCopy = client;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [componentsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        index = [v12 index];
        if (index < [(NSMutableArray *)self->_itemModels count])
        {
          v14 = -[NSMutableArray objectAtIndexedSubscript:](self->_itemModels, "objectAtIndexedSubscript:", [v12 index]);
          imageComponent = [v12 imageComponent];
          [(DRSessionViewModel *)self _takeDragImageWithComponent:imageComponent forClient:clientCopy itemModel:v14];

          preview = [v12 preview];
          [(DRSessionViewModel *)self _takePreview:preview forClient:clientCopy itemModel:v14];
        }
      }

      v9 = [componentsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_takeDragImageWithComponent:(id)component forClient:(id)client itemModel:(id)model
{
  componentCopy = component;
  v8 = [model clientItemViewModelForClient:client];
  [v8 fulfillImageRequest];
  imageComponent = [v8 imageComponent];
  if (imageComponent != componentCopy && ([componentCopy isEqual:imageComponent] & 1) == 0)
  {
    [v8 setImageComponent:componentCopy];
    delegate = [(DRSessionViewModel *)self delegate];
    [delegate viewModelInvalidated:self];
  }
}

- (void)_takePreview:(id)preview forClient:(id)client itemModel:(id)model
{
  previewCopy = preview;
  clientCopy = client;
  modelCopy = model;
  preferredStackOrder = [previewCopy preferredStackOrder];
  if ((preferredStackOrder & 0x8000000000000000) == 0)
  {
    [modelCopy setPreferredStackOrder:preferredStackOrder];
    preferredStackOrder2 = [modelCopy preferredStackOrder];
    topStackOrder = self->_topStackOrder;
    if (preferredStackOrder2 <= topStackOrder + 1)
    {
      v13 = topStackOrder + 1;
    }

    else
    {
      v13 = preferredStackOrder2;
    }

    self->_topStackOrder = v13;
  }

  v14 = [modelCopy clientItemViewModelForClient:clientCopy];
  self->_hasReceivedInitialPreviewReply = 1;
  preview = [v14 preview];
  v16 = preview;
  if (!previewCopy || preview != previewCopy && ([preview isEqual:previewCopy] & 1) == 0)
  {
    [v14 setPreview:previewCopy];
    delegate = [(DRSessionViewModel *)self delegate];
    [delegate viewModelInvalidated:self];
  }
}

- (void)invalidateImageForClient:(id)client itemIndex:(unint64_t)index
{
  clientCopy = client;
  if ([(NSMutableArray *)self->_itemModels count]> index)
  {
    v6 = [(NSMutableArray *)self->_itemModels objectAtIndexedSubscript:index];
    v7 = [v6 clientItemViewModelForClient:clientCopy];
    if ([v7 invalidateImage])
    {
      delegate = [(DRSessionViewModel *)self delegate];
      [delegate viewModelInvalidated:self];
    }
  }
}

- (void)updateLocation:(CAPoint3D)location ofTouchID:(id)d
{
  z = location.z;
  y = location.y;
  x = location.x;
  v8 = [(NSMutableDictionary *)self->_touchModels objectForKeyedSubscript:d];
  if (v8)
  {
    v10 = v8;
    if (![v8 hasLocation] || (objc_msgSend(v10, "location"), (CAPoint3DEqualToPoint() & 1) == 0))
    {
      [v10 setLocation:{x, y, z}];
      delegate = [(DRSessionViewModel *)self delegate];
      [delegate viewModelInvalidated:self];
    }

    [(DRSessionViewModel *)self _updateElasticEffectForLocation:x, y, z];
    v8 = v10;
  }
}

- (id)modelsSortedByStackOrder
{
  itemModels = [(DRSessionViewModel *)self itemModels];
  if ((self->_topStackOrder & 0x8000000000000000) == 0)
  {
    itemModels2 = [(DRSessionViewModel *)self itemModels];
    v5 = [itemModels2 sortedArrayUsingComparator:&stru_100054E78];

    itemModels = v5;
  }

  return itemModels;
}

- (void)updateLocationWithoutTouches:(CAPoint3D)touches
{
  z = touches.z;
  y = touches.y;
  x = touches.x;
  self->_centroidWithoutTouches = touches;
  delegate = [(DRSessionViewModel *)self delegate];
  [delegate viewModelInvalidated:self];

  [(DRSessionViewModel *)self _updateElasticEffectForLocation:x, y, z];
}

- (void)setPrecisionMode:(id)mode
{
  modeCopy = mode;
  precisionMode = self->_precisionMode;
  if (precisionMode != modeCopy)
  {
    v9 = modeCopy;
    precisionMode = [precisionMode isEqual:modeCopy];
    modeCopy = v9;
    if ((precisionMode & 1) == 0)
    {
      objc_storeStrong(&self->_precisionMode, mode);
      precisionMode = [(DRPrecisionMode *)v9 direction];
      modeCopy = v9;
      if (precisionMode)
      {
        [(DRSessionViewModel *)self centroid];
        self->_enteredPrecisionModeY = v7;
        v8 = CACurrentMediaTime();
        modeCopy = v9;
        self->_enteredPrecisionModeTime = v8;
      }
    }
  }

  _objc_release_x1(precisionMode, modeCopy);
}

- (void)updateDragManipulationWithLocation:(CAPoint3D)location
{
  z = location.z;
  y = location.y;
  x = location.x;
  if ([(DRSessionViewModel *)self touchesCount])
  {
    touchModels = self->_touchModels;
    firstObject = [(NSMutableArray *)self->_touchIDs firstObject];
    v22 = [(NSMutableDictionary *)touchModels objectForKey:firstObject];

    if ([v22 hasLocation])
    {
      if (self->_invalidatedDragManipulation)
      {
        [v22 location];
        self->_rotationAngle.initial = sub_100002658(v9, v10, v11, x, y);
        [v22 location];
        self->_scaleDistance.initial = sub_100002630(v12, v13, v14, x, y, z);
        self->_invalidatedDragManipulation = 0;
      }

      [v22 location];
      self->_rotationAngle.current = sub_100002658(v15, v16, v17, x, y);
      [v22 location];
      self->_scaleDistance.current = sub_100002630(v18, v19, v20, x, y, z);
      delegate = [(DRSessionViewModel *)self delegate];
      [delegate viewModelInvalidated:self];
    }
  }
}

- (void)endDragManipulationWithLocation:(CAPoint3D)location
{
  [(DRSessionViewModel *)self updateDragManipulationWithLocation:location.x, location.y, location.z];
  self->_isManipulatingTransform = 0;
  self->_rotationAngle.previousValue = self->_rotationAngle.previousValue + self->_rotationAngle.current - self->_rotationAngle.initial;
  self->_rotationAngle.initial = 0.0;
  self->_rotationAngle.current = 0.0;
  [(DRSessionViewModel *)self _manipulatedScale];
  self->_scaleDistance.previousValue = v4;
  __asm { FMOV            V0.2D, #1.0 }

  *&self->_scaleDistance.initial = _Q0;
  self->_invalidatedDragManipulation = 1;
}

- (NSArray)itemModels
{
  v2 = [(NSMutableArray *)self->_itemModels copy];

  return v2;
}

- (CAPoint3D)centroid
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_touchModels objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {

LABEL_13:
    x = self->_centroidWithoutTouches.x;
    y = self->_centroidWithoutTouches.y;
    z = self->_centroidWithoutTouches.z;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v20;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if ([v12 hasLocation])
      {
        [v12 location];
        v10 = v10 + v13;
        [v12 location];
        v9 = v9 + v14;
        [v12 location];
        v8 = v8 + v15;
        ++v6;
      }
    }

    v5 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);

  if (v6 < 1)
  {
    goto LABEL_13;
  }

  x = v10 / v6;
  y = v9 / v6;
  z = v8 / v6;
LABEL_14:
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)appliedTransform
{
  v13 = *&CGAffineTransformIdentity.c;
  v14 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v13;
  v12 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v12;
  result = [(DRSessionViewModel *)self canManipulateTransform];
  if (result)
  {
    if ([(DRSessionViewModel *)self rotatable])
    {
      v6 = -(self->_rotationAngle.current - self->_rotationAngle.initial + self->_rotationAngle.previousValue - self->_originalRotation);
      *&v16.a = v14;
      *&v16.c = v13;
      *&v16.tx = v12;
      CGAffineTransformRotate(retstr, &v16, v6);
    }

    result = [(DRSessionViewModel *)self resizable];
    if (result)
    {
      [(DRSessionViewModel *)self _manipulatedScale];
      v8 = v7 * self->_originalScale.width;
      v9 = v7 * self->_originalScale.height;
      v10 = *&retstr->c;
      *&v15.a = *&retstr->a;
      *&v15.c = v10;
      *&v15.tx = *&retstr->tx;
      result = CGAffineTransformScale(&v16, &v15, v8, v9);
      v11 = *&v16.c;
      *&retstr->a = *&v16.a;
      *&retstr->c = v11;
      *&retstr->tx = *&v16.tx;
    }
  }

  return result;
}

- (double)_manipulatedScale
{
  initial = self->_scaleDistance.initial;
  if (initial == 0.0)
  {
    return 1.0;
  }

  v33 = self->_scaleDistance.current / initial;
  previousValue = self->_scaleDistance.previousValue;
  [(DRSessionViewModel *)self originalScale];
  v5 = v4;
  v7 = v6;
  [(DRSessionViewModel *)self minimumResizableSize];
  v9 = v8;
  v11 = v10;
  [(DRSessionViewModel *)self maximumResizableSize];
  v13 = v12;
  v15 = v14;
  itemModels = [(DRSessionViewModel *)self itemModels];
  firstObject = [itemModels firstObject];
  preview = [firstObject preview];
  [preview unscaledSize];
  v20 = v19;
  v22 = v21;

  v23 = v5 * v20;
  v24 = v7 * v22;
  height = CGSizeZero.height;
  if (v9 == CGSizeZero.width && v11 == height)
  {
    v27 = 2.22507386e-308;
  }

  else
  {
    v27 = v9 / v23;
    v28 = 0.0;
    if (v9 <= 0.0)
    {
      v27 = 0.0;
    }

    if (v11 > 0.0)
    {
      v28 = v11 / v24;
    }

    if (v27 <= 0.0 || v28 <= 0.0)
    {
      if (v28 <= 0.0)
      {
        v28 = 2.22507386e-308;
      }

      if (v27 <= 0.0)
      {
        v27 = v28;
      }
    }

    else
    {
      v27 = fmin(v27, v28);
    }
  }

  if (v13 == CGSizeZero.width && v15 == height)
  {
    v32 = 1.79769313e308;
  }

  else
  {
    v31 = v13 / v23;
    if (v13 <= 0.0)
    {
      v31 = 0.0;
    }

    v32 = v15 / v24;
    if (v15 <= 0.0)
    {
      v32 = 0.0;
    }

    if (v31 <= 0.0 || v32 <= 0.0)
    {
      if (v32 <= 0.0)
      {
        v32 = 1.79769313e308;
      }

      if (v31 > 0.0)
      {
        v32 = v31;
      }
    }

    else
    {
      v32 = fmin(v31, v32);
    }
  }

  return fmax(v27, fmin(v33 * previousValue, v32));
}

- (BOOL)canManipulateTransform
{
  if (![(DRSessionViewModel *)self resizable]&& ![(DRSessionViewModel *)self rotatable])
  {
    return 0;
  }

  itemModels = [(DRSessionViewModel *)self itemModels];
  v4 = [itemModels count] == 1;

  return v4;
}

- (BOOL)canAddManipulatedTouch
{
  canManipulateTransform = [(DRSessionViewModel *)self canManipulateTransform];
  if (canManipulateTransform)
  {
    LOBYTE(canManipulateTransform) = [(DRSessionViewModel *)self touchesCount]!= 0;
  }

  return canManipulateTransform;
}

- (CGAffineTransform)elasticTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(DRSessionViewModel *)self wantsElasticEffects];
  if (result)
  {
    if (!self->_isManipulatingTransform)
    {
      v7 = *&self->_elasticTransform.c;
      *&retstr->a = *&self->_elasticTransform.a;
      *&retstr->c = v7;
      *&retstr->tx = *&self->_elasticTransform.tx;
    }
  }

  return result;
}

- (void)_invalidateElasticEffects
{
  [(UIViewFloatAnimatableProperty *)self->_elasticPositionX invalidate];
  [(UIViewFloatAnimatableProperty *)self->_elasticPositionY invalidate];
  [(UIViewFloatAnimatableProperty *)self->_elasticRotation invalidate];
  [(UIViewFloatAnimatableProperty *)self->_elasticScaleX invalidate];
  elasticScaleY = self->_elasticScaleY;

  [(UIViewFloatAnimatableProperty *)elasticScaleY invalidate];
}

- (void)_updateElasticEffectForLocation:(CAPoint3D)location
{
  z = location.z;
  y = location.y;
  x = location.x;
  delegate = [(DRSessionViewModel *)self delegate];
  v8 = [delegate referenceScreenForViewModel:self];

  if ([(DRSessionViewModel *)self wantsElasticEffects]&& v8)
  {
    elasticPositionX = self->_elasticPositionX;
    if (!elasticPositionX || [(UIViewFloatAnimatableProperty *)elasticPositionX isInvalidated])
    {
      v10 = objc_opt_new();
      v11 = self->_elasticPositionX;
      self->_elasticPositionX = v10;

      [(UIViewFloatAnimatableProperty *)self->_elasticPositionX setValue:x];
      v12 = objc_opt_new();
      elasticPositionY = self->_elasticPositionY;
      self->_elasticPositionY = v12;

      [(UIViewFloatAnimatableProperty *)self->_elasticPositionY setValue:y];
      v14 = objc_opt_new();
      elasticRotation = self->_elasticRotation;
      self->_elasticRotation = v14;

      [(UIViewFloatAnimatableProperty *)self->_elasticRotation setValue:0.0];
      v16 = objc_opt_new();
      elasticScaleX = self->_elasticScaleX;
      self->_elasticScaleX = v16;

      [(UIViewFloatAnimatableProperty *)self->_elasticScaleX setValue:100.0];
      v18 = objc_opt_new();
      elasticScaleY = self->_elasticScaleY;
      self->_elasticScaleY = v18;

      [(UIViewFloatAnimatableProperty *)self->_elasticScaleY setValue:100.0];
      objc_initWeak(&location, self);
      elasticPositionX = [(DRSessionViewModel *)self elasticPositionX];
      v34[0] = elasticPositionX;
      elasticPositionY = [(DRSessionViewModel *)self elasticPositionY];
      v34[1] = elasticPositionY;
      v22 = [NSArray arrayWithObjects:v34 count:2];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000D144;
      v30[3] = &unk_100054CA0;
      objc_copyWeak(&v31, &location);
      [UIView _createTransformerWithInputAnimatableProperties:v22 presentationValueChangedCallback:v30];

      elasticRotation = [(DRSessionViewModel *)self elasticRotation];
      v33[0] = elasticRotation;
      elasticScaleX = [(DRSessionViewModel *)self elasticScaleX];
      v33[1] = elasticScaleX;
      elasticScaleY = [(DRSessionViewModel *)self elasticScaleY];
      v33[2] = elasticScaleY;
      v26 = [NSArray arrayWithObjects:v33 count:3];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000D184;
      v28[3] = &unk_100054CA0;
      objc_copyWeak(&v29, &location);
      [UIView _createTransformerWithInputAnimatableProperties:v26 presentationValueChangedCallback:v28];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000D1C4;
    v27[3] = &unk_100054EA0;
    v27[4] = self;
    *&v27[5] = x;
    *&v27[6] = y;
    *&v27[7] = z;
    [(DRSessionViewModel *)self _animateSpringWithDampingRatio:v27 response:0.4264 animations:0.26792];
  }
}

- (void)_updateElasticProperties
{
  delegate = [(DRSessionViewModel *)self delegate];
  v4 = [delegate referenceScreenForViewModel:self];

  if (v4 && ([(UIViewFloatAnimatableProperty *)self->_elasticRotation isInvalidated]& 1) == 0)
  {
    v5 = sub_100001FD4(v4);
    [(UIViewFloatAnimatableProperty *)self->_elasticPositionX velocity];
    [(UIViewFloatAnimatableProperty *)self->_elasticPositionY velocity];
    height = CGSizeZero.height;
    _UIConvertPointFromOrientationToOrientation();
    v9 = v7;
    if ((v5 - 3) >= 2)
    {
      v10 = v8;
    }

    else
    {
      v10 = -v8;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000D390;
    v12[3] = &unk_100054EC8;
    v12[4] = self;
    v12[5] = v7;
    *&v12[6] = v10;
    [(DRSessionViewModel *)self _animateSpringWithDampingRatio:v12 response:0.40089 animations:0.25];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D3C8;
    v11[3] = &unk_100054EC8;
    v11[4] = self;
    v11[5] = v9;
    *&v11[6] = v10;
    [(DRSessionViewModel *)self _animateSpringWithDampingRatio:v11 response:0.53452 animations:0.25];
  }
}

- (void)_updateElasticTransform
{
  if (([(UIViewFloatAnimatableProperty *)self->_elasticPositionX isInvalidated]& 1) == 0)
  {
    [(UIViewFloatAnimatableProperty *)self->_elasticPositionX presentationValue];
    v4 = v3;
    [(UIViewFloatAnimatableProperty *)self->_elasticPositionX value];
    v6 = v4 - v5;
    [(UIViewFloatAnimatableProperty *)self->_elasticPositionY presentationValue];
    v8 = v7;
    [(UIViewFloatAnimatableProperty *)self->_elasticPositionY value];
    v10 = v8 - v9;
    [(UIViewFloatAnimatableProperty *)self->_elasticRotation presentationValue];
    UIRoundToScale();
    v12 = v11;
    [(UIViewFloatAnimatableProperty *)self->_elasticScaleX presentationValue];
    UIRoundToScale();
    v14 = v13;
    [(UIViewFloatAnimatableProperty *)self->_elasticScaleY presentationValue];
    UIRoundToScale();
    v16 = v15;
    v17 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v17;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    *&t1.a = *&v24.a;
    *&t1.c = v17;
    *&t1.tx = *&v24.tx;
    CGAffineTransformTranslate(&v24, &t1, v6, v10);
    v22 = v24;
    CGAffineTransformRotate(&t1, &v22, -v12);
    *&v24.c = *&t1.c;
    *&v24.tx = *&t1.tx;
    *&v24.a = *&t1.a;
    v22 = t1;
    CGAffineTransformScale(&t1, &v22, v14, v16);
    *&v24.c = *&t1.c;
    *&v24.tx = *&t1.tx;
    v18 = *&t1.a;
    v19 = *&self->_elasticTransform.c;
    *&t1.a = *&self->_elasticTransform.a;
    *&t1.c = v19;
    *&t1.tx = *&self->_elasticTransform.tx;
    *&v24.a = v18;
    *&v22.a = v18;
    *&v22.c = *&v24.c;
    *&v22.tx = *&v24.tx;
    if (!CGAffineTransformEqualToTransform(&t1, &v22))
    {
      v20 = *&v24.c;
      *&self->_elasticTransform.a = *&v24.a;
      *&self->_elasticTransform.c = v20;
      *&self->_elasticTransform.tx = *&v24.tx;
      delegate = [(DRSessionViewModel *)self delegate];
      [delegate viewModelInvalidated:self];
    }
  }
}

- (DRSessionViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CAPoint3D)initialCentroidInSourceContext
{
  x = self->_initialCentroidInSourceContext.x;
  y = self->_initialCentroidInSourceContext.y;
  z = self->_initialCentroidInSourceContext.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)minimumResizableSize
{
  width = self->_minimumResizableSize.width;
  height = self->_minimumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumResizableSize
{
  width = self->_maximumResizableSize.width;
  height = self->_maximumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)originalScale
{
  width = self->_originalScale.width;
  height = self->_originalScale.height;
  result.height = height;
  result.width = width;
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

@end