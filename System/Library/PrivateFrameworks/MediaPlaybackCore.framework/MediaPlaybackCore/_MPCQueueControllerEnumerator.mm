@interface _MPCQueueControllerEnumerator
+ (_MPCQueueControllerEnumerator)enumeratorWithMusicBehavior:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5 startPosition:(id)a6 endPosition:(id)a7;
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
  v5 = self->_endPosition;
  options = self->_options;
  WeakRetained = objc_loadWeakRetained(&self->_musicBehavior);
  if ([WeakRetained autoPlayEnabled] && objc_msgSend(WeakRetained, "repeatType") != 2)
  {
    v12 = 0;
  }

  else
  {
    v7 = [WeakRetained autoPlayEndPosition];
    v8 = v7;
    if (v7)
    {
      if ([v7 entryType] != 3)
      {
        v37 = [MEMORY[0x1E696AAA8] currentHandler];
        [v37 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4797 description:{@"Unexpected autoPlayEndPosition.entryType: %d", objc_msgSend(v8, "entryType")}];
      }

      v9 = [v8 sectionIdentifier];
      v10 = [v8 itemIdentifier];
      v11 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v9 itemID:v10];

      v12 = [WeakRetained _upNextSectionIdentifierForItem:v11 shouldLookInBaseList:0];
    }

    else
    {
      v12 = [WeakRetained latestUpNextSectionID];
      if (v12)
      {
        v13 = [WeakRetained autoPlayIdentifierList];
        v14 = [WeakRetained latestUpNextSectionID];
        v15 = [v13 hasSection:v14];

        if (v15)
        {
          v12 = [WeakRetained latestUpNextSectionID];
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  v16 = 0;
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
        v16 = [WeakRetained identifierList];
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
          v26 = [(MPSectionedIdentifierListPosition *)v4 sectionIdentifier];
          v27 = [v16 hasSection:v26];

          if ((v27 & 1) == 0)
          {

            v4 = 0;
          }
        }

LABEL_52:
        if (v5)
        {
          v28 = [(MPSectionedIdentifierListPosition *)v5 sectionIdentifier];
          v29 = [v16 hasSection:v28];

          if ((v29 & 1) == 0)
          {

            v5 = 0;
          }
        }

        if ([(MPSectionedIdentifierListPosition *)v4 isEqual:v5])
        {
          self->_nextEnumerator = 0;
        }

        else
        {
          v30 = [v16 enumeratorWithOptions:options startPosition:v4 endPosition:v5];
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
        if (v12)
        {
          [MEMORY[0x1E6970948] positionForTailOfSection:v12];
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
      if (v5)
      {
LABEL_38:
        v25 = 0;
        goto LABEL_47;
      }

      if (v12)
      {
        v5 = [MEMORY[0x1E6970948] positionForTailOfSection:v12];
        goto LABEL_38;
      }

      v5 = [WeakRetained autoPlayEndPosition];
      v25 = 0;
      options |= 0x40uLL;
    }

LABEL_47:
    self->_nextEnumerator = v25;
    self->_isEnumeratingFromRepeatAllBase = 0;
    v23 = [WeakRetained autoPlayIdentifierList];
    if (!v23)
    {
      if ([WeakRetained autoPlayState] == 9 && self->_mode)
      {
        v32 = [_MPCAutoPlayEnumerationResult alloc];
        v16 = [WeakRetained sessionID];
        v33 = [(_MPCAutoPlayEnumerationResult *)v32 initWithSectionIdentifier:v16];
        v39[0] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
        v35 = [v34 objectEnumerator];
        v36 = self->_enumerator;
        self->_enumerator = v35;

LABEL_58:
        goto LABEL_59;
      }

      v16 = 0;
      if (v4)
      {
        goto LABEL_50;
      }

      goto LABEL_52;
    }

LABEL_48:
    v16 = v23;
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
      if ((v18 = [WeakRetained repeatType], (objc_msgSend(WeakRetained, "autoPlayEnabled")) || (objc_msgSend(WeakRetained, "autoPlayEndPosition"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19)) && !v18 || !self->_mode || v12)
      {
        self->_nextEnumerator = 2;
      }
    }

    if ((self->_mode & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v20 = [WeakRetained repeatType];
      if (!self->_nextEnumerator && v20 == 2)
      {
        self->_nextEnumerator = 3;
        startPosition = self->_startPosition;
        self->_startPosition = 0;

        endPosition = self->_endPosition;
        self->_endPosition = 0;
      }
    }

    self->_isEnumeratingFromRepeatAllBase = 0;
    v23 = [WeakRetained identifierList];
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

  v4 = [(NSEnumerator *)enumerator nextObject];
  if (!v4)
  {
    [(_MPCQueueControllerEnumerator *)self _buildEnumerator];
    v4 = [(NSEnumerator *)self->_enumerator nextObject];
  }

  if (self->_isEnumeratingFromRepeatAllBase && [v4 entryType] == 3)
  {
    self->_hasEmittedItemFromRepeatAllBase = 1;
  }

  return v4;
}

+ (_MPCQueueControllerEnumerator)enumeratorWithMusicBehavior:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5 startPosition:(id)a6 endPosition:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [[_MPCQueueControllerEnumerator alloc] _init];
  objc_storeWeak(v14 + 4, v11);
  v14[5] = a4;
  v14[6] = a5;
  objc_storeStrong(v14 + 8, a6);
  if ((a5 & 8) != 0)
  {
    v14[1] = 2;
    if (v12)
    {
      v22 = [v12 itemIdentifier];
      v23 = [v22 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"];

      if (v23)
      {
        v14[1] = 1;
        v24 = v14[8];
        v14[8] = 0;
      }

      v25 = [v11 identifierList];
      v26 = [v12 sectionIdentifier];
      v27 = [v25 hasSection:v26];

      if (v27)
      {
        v21 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v14[1] = 1;
    if (v12)
    {
      v15 = [v12 itemIdentifier];
      v16 = [v15 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"];

      if (v16)
      {
        v14[1] = 2;
        v17 = v14[8];
        v14[8] = 0;
      }

      v18 = [v11 autoPlayIdentifierList];
      v19 = [v12 sectionIdentifier];
      v20 = [v18 hasSection:v19];

      if (v20)
      {
        v21 = 2;
LABEL_12:
        v14[1] = v21;
      }
    }
  }

  v28 = v14[9];
  v14[9] = v13;

  return v14;
}

@end