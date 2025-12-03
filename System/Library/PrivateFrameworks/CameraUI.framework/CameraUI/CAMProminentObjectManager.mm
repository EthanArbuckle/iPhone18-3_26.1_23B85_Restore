@interface CAMProminentObjectManager
- (BCSAction)currentMachineReadableCodeAction;
- (BOOL)_isMetadataObject:(id)object semanticallyEqualToMetadataObject:(id)metadataObject;
- (CAMProminentObjectManager)init;
- (CAMProminentObjectManagerDelegate)delegate;
- (CGRect)_referenceBoundsForAspectRatio:(int64_t)ratio;
- (double)_expirationTimeForObjectType:(unint64_t)type;
- (double)_selectionDelayForNewObject:(id)object;
- (id)_candidateObjectMatchingCurrentObject:(id)object;
- (id)_mostSignificantObjectFromObjects:(id)objects preferredObject:(id)object pointOfInterest:(CGPoint)interest;
- (unint64_t)typeForMetadataObject:(id)object;
- (void)_beginExpiringCurrentObjectIfNeeded;
- (void)_handleExpiredObject:(id)object;
- (void)_setCurrentMachineReadableCodeAction:(id)action updatePreviousAction:(BOOL)previousAction;
- (void)_setCurrentObject:(id)object forPointOfInterest:(CGPoint)interest;
- (void)_updateCurrentMRCActionWhenReady;
- (void)reset;
- (void)updateWithCandidateObjects:(id)objects;
@end

@implementation CAMProminentObjectManager

- (CAMProminentObjectManager)init
{
  v3.receiver = self;
  v3.super_class = CAMProminentObjectManager;
  result = [(CAMProminentObjectManager *)&v3 init];
  if (result)
  {
    result->_viewportAspectRatio = 0;
  }

  return result;
}

- (void)_setCurrentObject:(id)object forPointOfInterest:(CGPoint)interest
{
  y = interest.y;
  x = interest.x;
  objectCopy = object;
  v9 = objectCopy;
  currentObject = self->_currentObject;
  if (currentObject != objectCopy)
  {
    v13 = objectCopy;
    v11 = [(CAMProminentObjectManager *)self _isMetadataObject:currentObject semanticallyEqualToMetadataObject:objectCopy];
    objc_storeStrong(&self->_currentObject, object);
    v9 = v13;
    if (!v11)
    {
      self->_currentObjectPointOfInterest.x = x;
      self->_currentObjectPointOfInterest.y = y;
      delegate = [(CAMProminentObjectManager *)self delegate];
      [delegate prominentObjectManager:self didChangeCurrentObject:v13];

      objectCopy = [(CAMProminentObjectManager *)self _updateCurrentMRCActionWhenReady];
      v9 = v13;
    }
  }

  MEMORY[0x1EEE66BB8](objectCopy, v9);
}

- (void)_setCurrentMachineReadableCodeAction:(id)action updatePreviousAction:(BOOL)previousAction
{
  previousActionCopy = previousAction;
  actionCopy = action;
  currentAction = self->_currentAction;
  if (currentAction != actionCopy)
  {
    v11 = actionCopy;
    if (currentAction)
    {
      v9 = !previousActionCopy;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      objc_storeStrong(&self->_previousAction, currentAction);
    }

    objc_storeStrong(&self->_currentAction, action);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained prominentObjectManager:self didChangeCurrentMachineReadableCodeAction:v11];

    actionCopy = v11;
  }
}

- (BCSAction)currentMachineReadableCodeAction
{
  if ([(CAMProminentObjectManager *)self currentObjectType]== 2)
  {
    v3 = self->_currentAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)typeForMetadataObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    if ([objectCopy isMemberOfClass:objc_opt_class()])
    {
      v4 = 1;
    }

    else if ([objectCopy isMemberOfClass:objc_opt_class()])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reset
{
  isCurrentObjectExpiring = [(CAMProminentObjectManager *)self isCurrentObjectExpiring];
  currentlyParsingCode = self->_currentlyParsingCode;
  self->_currentlyParsingCode = 0;

  previousAction = self->_previousAction;
  self->_previousAction = 0;

  expiringObject = self->_expiringObject;
  self->_expiringObject = 0;

  [(CAMProminentObjectManager *)self _setCurrentMachineReadableCodeAction:0 updatePreviousAction:0];
  [(CAMProminentObjectManager *)self _setCurrentObject:0 forPointOfInterest:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (isCurrentObjectExpiring != [(CAMProminentObjectManager *)self isCurrentObjectExpiring])
  {
    delegate = [(CAMProminentObjectManager *)self delegate];
    [delegate prominentObjectManagerDidChangeIsCurrentObjectExpiring:self];
  }
}

- (void)updateWithCandidateObjects:(id)objects
{
  objectsCopy = objects;
  v4 = [(CAMProminentObjectManager *)self _candidateObjectMatchingCurrentObject:objectsCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained prominentObjectManagerPointOfInterestInNormalizedDeviceSpace:self];
  v7 = v6;
  v9 = v8;

  isCurrentObjectExpiring = [(CAMProminentObjectManager *)self isCurrentObjectExpiring];
  if (![objectsCopy count])
  {
    [(CAMProminentObjectManager *)self _beginExpiringCurrentObjectIfNeeded];
LABEL_7:
    v12 = 0;
    expiringObject = self->_expiringObject;
    goto LABEL_8;
  }

  v11 = [(CAMProminentObjectManager *)self _mostSignificantObjectFromObjects:objectsCopy preferredObject:v4 pointOfInterest:v7, v9];
  v12 = v11;
  if (v11 && v11 == v4)
  {
    expiringObject = v11;
    goto LABEL_8;
  }

  [(CAMProminentObjectManager *)self _beginExpiringCurrentObjectIfNeeded];
  expiringObject = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_8:
  v14 = expiringObject;

  [(CAMProminentObjectManager *)self _setCurrentObject:v14 forPointOfInterest:v7, v9];
  if (isCurrentObjectExpiring != [(CAMProminentObjectManager *)self isCurrentObjectExpiring])
  {
    delegate = [(CAMProminentObjectManager *)self delegate];
    [delegate prominentObjectManagerDidChangeIsCurrentObjectExpiring:self];
  }
}

- (void)_beginExpiringCurrentObjectIfNeeded
{
  [(CAMProminentObjectManager *)self _expirationTimeForObjectType:[(CAMProminentObjectManager *)self typeForMetadataObject:self->_currentObject]];
  v4 = v3;
  [(CAMProminentObjectManager *)self _expirationTimeForObjectType:[(CAMProminentObjectManager *)self typeForMetadataObject:self->_expiringObject]];
  if (v4 > 0.0 && v4 >= v5)
  {
    currentObject = self->_currentObject;
    if (currentObject != self->_expiringObject)
    {
      objc_storeStrong(&self->_expiringObject, currentObject);
      v8 = self->_expiringObject;
      objc_initWeak(&location, self);
      v9 = dispatch_time(0, (v4 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__CAMProminentObjectManager__beginExpiringCurrentObjectIfNeeded__block_invoke;
      block[3] = &unk_1E76F7DC0;
      objc_copyWeak(&v13, &location);
      v12 = v8;
      v10 = v8;
      dispatch_after(v9, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __64__CAMProminentObjectManager__beginExpiringCurrentObjectIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleExpiredObject:*(a1 + 32)];
}

- (void)_handleExpiredObject:(id)object
{
  expiringObject = self->_expiringObject;
  if (expiringObject == object)
  {
    self->_expiringObject = 0;
    objectCopy = object;

    currentObject = self->_currentObject;
    if (currentObject == objectCopy)
    {
      [(CAMProminentObjectManager *)self _setCurrentObject:0 forPointOfInterest:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }

    delegate = [(CAMProminentObjectManager *)self delegate];
    [delegate prominentObjectManagerDidChangeIsCurrentObjectExpiring:self];
  }
}

- (double)_expirationTimeForObjectType:(unint64_t)type
{
  result = 0.45;
  if (type != 1)
  {
    result = 0.0;
  }

  if (type == 2)
  {
    return 4.0;
  }

  return result;
}

- (BOOL)_isMetadataObject:(id)object semanticallyEqualToMetadataObject:(id)metadataObject
{
  objectCopy = object;
  metadataObjectCopy = metadataObject;
  v8 = metadataObjectCopy;
  if (objectCopy)
  {
    if ([metadataObjectCopy isMemberOfClass:objc_opt_class()])
    {
      v9 = [(CAMProminentObjectManager *)self typeForMetadataObject:objectCopy];
      if (v9)
      {
        if (v9 == 2)
        {
          v14 = objectCopy;
          BCSDetectedCodeClass = getBCSDetectedCodeClass();
          underlyingMachineReadableCodeObject = [v14 underlyingMachineReadableCodeObject];

          uniqueIdentifier = [BCSDetectedCodeClass detectedCodeWithMachineReadableObject:underlyingMachineReadableCodeObject];

          v17 = v8;
          v18 = getBCSDetectedCodeClass();
          underlyingMachineReadableCodeObject2 = [v17 underlyingMachineReadableCodeObject];

          uniqueIdentifier2 = [v18 detectedCodeWithMachineReadableObject:underlyingMachineReadableCodeObject2];

          v12 = [uniqueIdentifier isLikelyEqualToCode:uniqueIdentifier2];
          goto LABEL_9;
        }

        if (v9 == 1)
        {
          uniqueIdentifier = [objectCopy uniqueIdentifier];
          uniqueIdentifier2 = [v8 uniqueIdentifier];
          v12 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];
LABEL_9:
          v13 = v12;

          goto LABEL_14;
        }
      }

      else
      {
        v20 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CAMProminentObjectManager _isMetadataObject:objectCopy semanticallyEqualToMetadataObject:v20];
        }
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

  v13 = metadataObjectCopy == 0;
LABEL_14:

  return v13;
}

- (id)_candidateObjectMatchingCurrentObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = objectCopy;
  if (self->_currentObject)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = objectCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([(CAMProminentObjectManager *)self _isMetadataObject:self->_currentObject semanticallyEqualToMetadataObject:v11, v14])
          {
            v12 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_mostSignificantObjectFromObjects:(id)objects preferredObject:(id)object pointOfInterest:(CGPoint)interest
{
  y = interest.y;
  x = interest.x;
  v57 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  objectCopy = object;
  v11 = [objectsCopy count];
  if (!objectCopy && !v11)
  {
    v12 = 0;
    goto LABEL_32;
  }

  [(CAMProminentObjectManager *)self _referenceBoundsForAspectRatio:[(CAMProminentObjectManager *)self viewportAspectRatio]];
  CEKExpandNormalizedPoint();
  point[0] = v13;
  v15 = v14;
  if (self->_currentObject)
  {
    v16 = ![(CAMProminentObjectManager *)self _isPoint:self->_currentObjectPointOfInterest.x equalToPoint:self->_currentObjectPointOfInterest.y tolerance:x, y, 0.001];
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v54 = 0u;
  v55 = 0u;
  *&point[1] = 0u;
  v53 = 0u;
  v17 = objectsCopy;
  v18 = [v17 countByEnumeratingWithState:&point[1] objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v50 = v16;
    selfCopy = self;
    v20 = 0;
    v21 = *v53;
    v22 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*&point[2] + 8 * i);
        underlyingMetadataObject = [v24 underlyingMetadataObject];
        [underlyingMetadataObject bounds];

        CEKExpandNormalizedRect();
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        UIRectGetCenter();
        v35 = v34;
        v37 = v36;
        v38 = [v24 isMemberOfClass:objc_opt_class()];
        if (v38)
        {
          v60.origin.x = v27;
          v60.origin.y = v29;
          v60.size.width = v31;
          v60.size.height = v33;
          v59.x = point[0];
          v59.y = v15;
          if (CGRectContainsPoint(v60, v59))
          {
            v41 = v24;

            LOBYTE(v16) = 1;
            v20 = v41;
            self = selfCopy;
            goto LABEL_26;
          }
        }

        if (v24 == objectCopy)
        {
          v39 = ((v15 - v37) * (v15 - v37) + (point[0] - v35) * (point[0] - v35)) * 0.5625;
        }

        else
        {
          v39 = (v15 - v37) * (v15 - v37) + (point[0] - v35) * (point[0] - v35);
        }

        if (v39 < v22)
        {
          if (((v39 > 0.0625) & ~v38) == 0)
          {
            v40 = v24;

            v20 = v40;
          }

          v22 = v39;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&point[1] objects:v56 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    self = selfCopy;
    LOBYTE(v16) = v50;
  }

  else
  {
    v20 = 0;
  }

LABEL_26:

  v12 = objectCopy;
  v42 = [(CAMProminentObjectManager *)self _isMetadataObject:v20 semanticallyEqualToMetadataObject:self->_currentObject];
  if (v20 && !v42)
  {
    p_candidateObject = &self->_candidateObject;
    v44 = [(CAMProminentObjectManager *)self _isMetadataObject:v20 semanticallyEqualToMetadataObject:self->_candidateObject];
    if ((v16 & 1) == 0)
    {
      v45 = v44;
      [(CAMProminentObjectManager *)self _selectionDelayForNewObject:v20];
      if (v46 != 0.0)
      {
        if (!v45)
        {
          objc_storeStrong(&self->_candidateObject, v20);
          self->_candidateTimestamp = CFAbsoluteTimeGetCurrent();
          goto LABEL_31;
        }

        if (CFAbsoluteTimeGetCurrent() - self->_candidateTimestamp <= v46)
        {
          goto LABEL_31;
        }
      }
    }

    v47 = v20;

    v48 = *p_candidateObject;
    *p_candidateObject = 0;

    v12 = v47;
  }

LABEL_31:

LABEL_32:

  return v12;
}

- (double)_selectionDelayForNewObject:(id)object
{
  objectCopy = object;
  if (_selectionDelayForNewObject__onceToken != -1)
  {
    [CAMProminentObjectManager _selectionDelayForNewObject:];
  }

  currentObject = self->_currentObject;
  if (!currentObject || (v6 = 0.75, currentObject == self->_expiringObject))
  {
    v7 = [(CAMProminentObjectManager *)self typeForMetadataObject:objectCopy];
    if (!v7 || v7 == 2)
    {
      v6 = 0.25;
    }

    else
    {
      v6 = 0.0;
      if (v7 == 1)
      {
        v6 = *&_selectionDelayForNewObject__textSelectionDelay;
      }
    }
  }

  return v6;
}

CFIndex __57__CAMProminentObjectManager__selectionDelayForNewObject___block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"CAMTextSelectionDelayMilliseconds", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = fmax(result / 1000.0, 0.0);
  }

  else
  {
    v1 = 0.25;
  }

  _selectionDelayForNewObject__textSelectionDelay = *&v1;
  return result;
}

- (CGRect)_referenceBoundsForAspectRatio:(int64_t)ratio
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  if (ratio <= 2)
  {
    if (ratio)
    {
      if (ratio == 1)
      {
        v5 = 1.77777778;
      }

      else if (ratio == 2)
      {
        v5 = 1.5;
      }
    }

    else
    {
      v5 = 1.33333333;
    }
  }

  else if (ratio > 4)
  {
    v11 = 0.5625;
    if (ratio != 6)
    {
      v11 = *(MEMORY[0x1E695F058] + 16);
    }

    if (ratio == 5)
    {
      v5 = 0.75;
    }

    else
    {
      v5 = v11;
    }
  }

  else if (ratio == 3)
  {
    v5 = 1.0;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    v8 = v7;
    v10 = v9;

    v5 = v10 / v8;
  }

  v12 = 1.0;
  v13 = v3;
  v14 = v4;
  result.size.height = v12;
  result.size.width = v5;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_updateCurrentMRCActionWhenReady
{
  v19 = *MEMORY[0x1E69E9840];
  currentObjectType = [(CAMProminentObjectManager *)self currentObjectType];
  currentlyParsingCode = self->_currentlyParsingCode;
  if (currentObjectType == 2)
  {
    if (!currentlyParsingCode)
    {
      v5 = self->_currentObject;
      BCSDetectedCodeClass = getBCSDetectedCodeClass();
      underlyingMachineReadableCodeObject = [(CAMMetadataObjectResult *)v5 underlyingMachineReadableCodeObject];
      v8 = [BCSDetectedCodeClass detectedCodeWithMachineReadableObject:underlyingMachineReadableCodeObject];

      detectedCode = [(BCSAction *)self->_currentAction detectedCode];
      v10 = [v8 isLikelyEqualToCode:detectedCode];

      if ((v10 & 1) == 0)
      {
        detectedCode2 = [(BCSAction *)self->_previousAction detectedCode];
        v12 = [v8 isLikelyEqualToCode:detectedCode2];

        if (v12)
        {
          [(CAMProminentObjectManager *)self _setCurrentMachineReadableCodeAction:self->_previousAction];
        }

        else
        {
          v13 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v18 = v8;
            _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Parsing machine readable code (%{public}@)", buf, 0xCu);
          }

          objc_storeStrong(&self->_currentlyParsingCode, v8);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __61__CAMProminentObjectManager__updateCurrentMRCActionWhenReady__block_invoke;
          v14[3] = &unk_1E76F8258;
          v15 = v8;
          selfCopy = self;
          [v15 parseCodeWithCompletion:v14];
        }
      }
    }
  }

  else
  {
    self->_currentlyParsingCode = 0;

    [(CAMProminentObjectManager *)self _setCurrentMachineReadableCodeAction:0];
  }
}

void __61__CAMProminentObjectManager__updateCurrentMRCActionWhenReady__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CAMProminentObjectManager__updateCurrentMRCActionWhenReady__block_invoke_2;
  v11[3] = &unk_1E76F8230;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __61__CAMProminentObjectManager__updateCurrentMRCActionWhenReady__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) description];
      v16 = 138543618;
      v17 = v3;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Failed to parse machine readable code (%{public}@): %{public}@", &v16, 0x16u);
    }

    v5 = *(a1 + 48);
    v6 = 0;
LABEL_5:
    [v5 _setCurrentMachineReadableCodeAction:v6];
    return;
  }

  v7 = [*(a1 + 56) detectedCode];
  v8 = *(*(a1 + 48) + 56);

  v9 = os_log_create("com.apple.camera", "Camera");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7 == v8)
  {
    if (v10)
    {
      v12 = [*(a1 + 56) dataTypeDisplayString];
      v13 = *(a1 + 40);
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Received action of type %{public}@ for machine readable code (%{public}@)", &v16, 0x16u);
    }

    v14 = *(a1 + 48);
    v15 = *(v14 + 56);
    *(v14 + 56) = 0;

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    goto LABEL_5;
  }

  if (v10)
  {
    v11 = *(a1 + 40);
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Ignored action for machine readable code (%{public}@) because parsing was cancelled", &v16, 0xCu);
  }
}

- (CAMProminentObjectManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_isMetadataObject:(uint64_t)a1 semanticallyEqualToMetadataObject:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "CAMMetadataObjectResult is not nil, but its type (%{public}@) is not recognized by the prominent object manager.", &v5, 0xCu);
}

@end