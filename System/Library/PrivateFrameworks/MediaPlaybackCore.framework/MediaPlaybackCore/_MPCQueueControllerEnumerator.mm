@interface _MPCQueueControllerEnumerator
+ (_MPCQueueControllerEnumerator)enumeratorWithMusicBehavior:(id)behavior mode:(int64_t)mode options:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition;
- (_MPCQueueControllerBehaviorMusic)musicBehavior;
- (id)_init;
- (id)nextObject;
- (void)_buildEnumerator;
@end

@implementation _MPCQueueControllerEnumerator

- (_MPCQueueControllerBehaviorMusic)musicBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_musicBehavior);

  return WeakRetained;
}

- (void)_buildEnumerator
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = self->_startPosition;
  autoPlayEndPosition2 = self->_endPosition;
  options = self->_options;
  WeakRetained = objc_loadWeakRetained(&self->_musicBehavior);
  if ([WeakRetained autoPlayEnabled] && objc_msgSend(WeakRetained, "repeatType") != 2)
  {
    latestUpNextSectionID = 0;
  }

  else
  {
    autoPlayEndPosition = [WeakRetained autoPlayEndPosition];
    v8 = autoPlayEndPosition;
    if (autoPlayEndPosition)
    {
      if ([autoPlayEndPosition entryType] != 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4797 description:{@"Unexpected autoPlayEndPosition.entryType: %d", objc_msgSend(v8, "entryType")}];
      }

      sectionIdentifier = [v8 sectionIdentifier];
      itemIdentifier = [v8 itemIdentifier];
      v11 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier itemID:itemIdentifier];

      latestUpNextSectionID = [WeakRetained _upNextSectionIdentifierForItem:v11 shouldLookInBaseList:0];
    }

    else
    {
      latestUpNextSectionID = [WeakRetained latestUpNextSectionID];
      if (latestUpNextSectionID)
      {
        autoPlayIdentifierList = [WeakRetained autoPlayIdentifierList];
        latestUpNextSectionID2 = [WeakRetained latestUpNextSectionID];
        v15 = [autoPlayIdentifierList hasSection:latestUpNextSectionID2];

        if (v15)
        {
          latestUpNextSectionID = [WeakRetained latestUpNextSectionID];
        }

        else
        {
          latestUpNextSectionID = 0;
        }
      }
    }
  }

  identifierList = 0;
  nextEnumerator = self->_nextEnumerator;
  if (nextEnumerator > 1)
  {
    if (nextEnumerator != 2)
    {
      if (nextEnumerator != 3)
      {
        goto LABEL_49;
      }

      if (!self->_isEnumeratingFromRepeatAllBase || self->_hasEmittedItemFromRepeatAllBase)
      {
        self->_isEnumeratingFromRepeatAllBase = 1;
        identifierList = [WeakRetained identifierList];
        repeatBoundaryBlock = self->_repeatBoundaryBlock;
        if (repeatBoundaryBlock)
        {
          repeatBoundaryBlock[2]();
          if (v4)
          {
            goto LABEL_50;
          }

          goto LABEL_52;
        }

LABEL_49:
        if (v4)
        {
LABEL_50:
          sectionIdentifier2 = [(MPSectionedIdentifierListPosition *)v4 sectionIdentifier];
          v27 = [identifierList hasSection:sectionIdentifier2];

          if ((v27 & 1) == 0)
          {

            v4 = 0;
          }
        }

LABEL_52:
        if (autoPlayEndPosition2)
        {
          sectionIdentifier3 = [(MPSectionedIdentifierListPosition *)autoPlayEndPosition2 sectionIdentifier];
          v29 = [identifierList hasSection:sectionIdentifier3];

          if ((v29 & 1) == 0)
          {

            autoPlayEndPosition2 = 0;
          }
        }

        if ([(MPSectionedIdentifierListPosition *)v4 isEqual:autoPlayEndPosition2])
        {
          self->_nextEnumerator = 0;
        }

        else
        {
          v30 = [identifierList enumeratorWithOptions:options startPosition:v4 endPosition:autoPlayEndPosition2];
          enumerator = self->_enumerator;
          self->_enumerator = v30;
        }

        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if ((self->_options & 8) != 0)
    {
      if (!v4)
      {
        if (latestUpNextSectionID)
        {
          [MEMORY[0x1E6970948] positionForTailOfSection:latestUpNextSectionID];
        }

        else
        {
          [WeakRetained autoPlayEndPosition];
        }
        v4 = ;
      }

      v25 = 1;
    }

    else
    {
      if (autoPlayEndPosition2)
      {
LABEL_38:
        v25 = 0;
        goto LABEL_47;
      }

      if (latestUpNextSectionID)
      {
        autoPlayEndPosition2 = [MEMORY[0x1E6970948] positionForTailOfSection:latestUpNextSectionID];
        goto LABEL_38;
      }

      autoPlayEndPosition2 = [WeakRetained autoPlayEndPosition];
      v25 = 0;
      options |= 0x40uLL;
    }

LABEL_47:
    self->_nextEnumerator = v25;
    self->_isEnumeratingFromRepeatAllBase = 0;
    autoPlayIdentifierList2 = [WeakRetained autoPlayIdentifierList];
    if (!autoPlayIdentifierList2)
    {
      if ([WeakRetained autoPlayState] == 9 && self->_mode)
      {
        v32 = [_MPCAutoPlayEnumerationResult alloc];
        identifierList = [WeakRetained sessionID];
        v33 = [(_MPCAutoPlayEnumerationResult *)v32 initWithSectionIdentifier:identifierList];
        v39[0] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
        objectEnumerator = [v34 objectEnumerator];
        v36 = self->_enumerator;
        self->_enumerator = objectEnumerator;

LABEL_58:
        goto LABEL_59;
      }

      identifierList = 0;
      if (v4)
      {
        goto LABEL_50;
      }

      goto LABEL_52;
    }

LABEL_48:
    identifierList = autoPlayIdentifierList2;
    goto LABEL_49;
  }

  if (nextEnumerator)
  {
    if (nextEnumerator != 1)
    {
      goto LABEL_49;
    }

    self->_nextEnumerator = 0;
    if ((self->_options & 8) == 0)
    {
      if ((v18 = [WeakRetained repeatType], (objc_msgSend(WeakRetained, "autoPlayEnabled")) || (objc_msgSend(WeakRetained, "autoPlayEndPosition"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19)) && !v18 || !self->_mode || latestUpNextSectionID)
      {
        self->_nextEnumerator = 2;
      }
    }

    if ((self->_mode & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      repeatType = [WeakRetained repeatType];
      if (!self->_nextEnumerator && repeatType == 2)
      {
        self->_nextEnumerator = 3;
        startPosition = self->_startPosition;
        self->_startPosition = 0;

        endPosition = self->_endPosition;
        self->_endPosition = 0;
      }
    }

    self->_isEnumeratingFromRepeatAllBase = 0;
    autoPlayIdentifierList2 = [WeakRetained identifierList];
    goto LABEL_48;
  }

LABEL_59:
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _MPCQueueControllerEnumerator;
  return [(_MPCQueueControllerEnumerator *)&v3 init];
}

- (id)nextObject
{
  enumerator = self->_enumerator;
  if (!enumerator)
  {
    [(_MPCQueueControllerEnumerator *)self _buildEnumerator];
    enumerator = self->_enumerator;
  }

  nextObject = [(NSEnumerator *)enumerator nextObject];
  if (!nextObject)
  {
    [(_MPCQueueControllerEnumerator *)self _buildEnumerator];
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];
  }

  if (self->_isEnumeratingFromRepeatAllBase && [nextObject entryType] == 3)
  {
    self->_hasEmittedItemFromRepeatAllBase = 1;
  }

  return nextObject;
}

+ (_MPCQueueControllerEnumerator)enumeratorWithMusicBehavior:(id)behavior mode:(int64_t)mode options:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition
{
  behaviorCopy = behavior;
  positionCopy = position;
  endPositionCopy = endPosition;
  _init = [[_MPCQueueControllerEnumerator alloc] _init];
  objc_storeWeak(_init + 4, behaviorCopy);
  _init[5] = mode;
  _init[6] = options;
  objc_storeStrong(_init + 8, position);
  if ((options & 8) != 0)
  {
    _init[1] = 2;
    if (positionCopy)
    {
      itemIdentifier = [positionCopy itemIdentifier];
      v23 = [itemIdentifier isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"];

      if (v23)
      {
        _init[1] = 1;
        v24 = _init[8];
        _init[8] = 0;
      }

      identifierList = [behaviorCopy identifierList];
      sectionIdentifier = [positionCopy sectionIdentifier];
      v27 = [identifierList hasSection:sectionIdentifier];

      if (v27)
      {
        v21 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
    _init[1] = 1;
    if (positionCopy)
    {
      itemIdentifier2 = [positionCopy itemIdentifier];
      v16 = [itemIdentifier2 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"];

      if (v16)
      {
        _init[1] = 2;
        v17 = _init[8];
        _init[8] = 0;
      }

      autoPlayIdentifierList = [behaviorCopy autoPlayIdentifierList];
      sectionIdentifier2 = [positionCopy sectionIdentifier];
      v20 = [autoPlayIdentifierList hasSection:sectionIdentifier2];

      if (v20)
      {
        v21 = 2;
LABEL_12:
        _init[1] = v21;
      }
    }
  }

  v28 = _init[9];
  _init[9] = endPositionCopy;

  return _init;
}

@end