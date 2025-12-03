@interface _MPCQueueControllerBehaviorMusicEnumerator
- (_MPCQueueControllerBehaviorMusicEnumerator)initWithQueueEnumerator:(id)enumerator startingComponents:(id)components;
- (id)_loadingComponentsForHeadOfSection:(id)section;
- (id)nextObject;
@end

@implementation _MPCQueueControllerBehaviorMusicEnumerator

- (id)nextObject
{
  selfCopy = self;
  v112 = *MEMORY[0x1E69E9840];
  musicBehavior = [(_MPCQueueControllerEnumerator *)self->_queueEnumerator musicBehavior];
  host = [musicBehavior host];
  mode = [(_MPCQueueControllerEnumerator *)selfCopy->_queueEnumerator mode];
  options = [(_MPCQueueControllerEnumerator *)selfCopy->_queueEnumerator options];
  v87 = mode;
  v90 = selfCopy;
  if (mode != 3 || [musicBehavior repeatType] != 1)
  {
    v83 = a2;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v24 = selfCopy->_queueEnumerator;
    v25 = [(_MPCQueueControllerEnumerator *)v24 countByEnumeratingWithState:&v94 objects:v110 count:16];
    if (!v25)
    {
      goto LABEL_82;
    }

    v26 = v25;
    v27 = (options >> 3) & 1;
    v88 = mode & 0xFFFFFFFFFFFFFFFELL;
    v28 = *v95;
    v29 = (mode & 0xFFFFFFFFFFFFFFFELL) != 2 || (options & 8) != 0;
    v92 = v29;
    if (!mode)
    {
      LOBYTE(v27) = 1;
    }

    v85 = v27;
    v89 = v24;
    while (1)
    {
      v30 = 0;
      do
      {
        if (*v95 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v94 + 1) + 8 * v30);
        entryType = [v31 entryType];
        if (entryType == 2)
        {
          if (v92)
          {
            goto LABEL_62;
          }

          trackingEntryResult = [v31 trackingEntryResult];
          sectionIdentifier = [trackingEntryResult sectionIdentifier];
          v46 = [(_MPCQueueControllerBehaviorMusicEnumerator *)v90 _loadingComponentsForHeadOfSection:sectionIdentifier];
          if (v46)
          {
            v45 = v46;
            contentItemID = [v46 contentItemID];
LABEL_100:

LABEL_101:
            contentItemID4 = contentItemID;
            goto LABEL_102;
          }

          goto LABEL_52;
        }

        if (entryType == 4)
        {
          trackingEntryResult = [v31 trackingEntryResult];
          sectionIdentifier = [trackingEntryResult sectionIdentifier];
          dataSources = [musicBehavior dataSources];
          v45 = [dataSources objectForKeyedSubscript:sectionIdentifier];

          if ([v45 isRadioDataSource] && objc_msgSend(v45, "shouldRequestAdditionalItemsAtTail"))
          {
            if (v87 == 1)
            {
              if ((options & 8) != 0)
              {
                v60 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  engineID = [host engineID];
                  sessionID = [musicBehavior sessionID];
                  *buf = 138543874;
                  v103 = engineID;
                  v104 = 2114;
                  v105 = sessionID;
                  v106 = 2114;
                  v107 = sectionIdentifier;
                  _os_log_impl(&dword_1C5C61000, v60, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | returning nil [encountered radio tail while reverse enumerating in display mode] sectionID=%{public}@", buf, 0x20u);
                }
              }

              contentItemID3 = 0;
              queueEnumerator = v90->_queueEnumerator;
              v90->_queueEnumerator = 0;
              goto LABEL_99;
            }

            if (v88 == 2)
            {
              v70 = [MEMORY[0x1E6970948] positionForTailOfSection:sectionIdentifier];
              queueEnumerator = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:musicBehavior mode:0 options:8 startPosition:v70 endPosition:0];

              nextObject = [queueEnumerator nextObject];
              v72 = nextObject;
              if (nextObject)
              {
                if ([nextObject entryType] != 3)
                {
                  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                  [currentHandler handleFailureInMethod:v83 object:v90 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4692 description:{@"Encountered unexpected enumeration result type: %ld", objc_msgSend(v72, "entryType")}];
                }

                itemResult = [v72 itemResult];
                sectionIdentifier2 = [itemResult sectionIdentifier];
                itemIdentifier = [itemResult itemIdentifier];
                v76 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier2 itemID:itemIdentifier];
                v77 = [v76 copyAsDeferredWithLoadingSectionID:sectionIdentifier];

                contentItemID2 = [v77 contentItemID];

                contentItemID3 = contentItemID2;
                v24 = v89;
              }

              else
              {
                itemResult = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:sectionIdentifier];
                contentItemID3 = [itemResult contentItemID];
              }

LABEL_99:
              contentItemID = contentItemID3;

              goto LABEL_100;
            }
          }

LABEL_52:
          goto LABEL_62;
        }

        if (entryType != 3)
        {
          goto LABEL_62;
        }

        itemResult2 = [v31 itemResult];
        sectionIdentifier3 = [itemResult2 sectionIdentifier];
        itemIdentifier2 = [itemResult2 itemIdentifier];
        dataSources2 = [musicBehavior dataSources];
        v37 = [dataSources2 objectForKeyedSubscript:sectionIdentifier3];

        if (!v37)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:v83 object:v90 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4615 description:{@"Enumerated an itemResult that has no dataSourceState: sectionID=%@", sectionIdentifier3}];
          }

          p_super = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier3 itemID:itemIdentifier2];
          copyAsPlaceholder = [p_super copyAsPlaceholder];
LABEL_56:
          copyAsPlaceholder2 = copyAsPlaceholder;
LABEL_57:

LABEL_58:
          p_super = copyAsPlaceholder2;
LABEL_59:
          contentItemID = [p_super contentItemID];
LABEL_60:
          v48 = 0;
          goto LABEL_61;
        }

        if ([v37 state] == 1)
        {
          if (v92)
          {
            p_super = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              engineID2 = [host engineID];
              sessionID2 = [musicBehavior sessionID];
              *buf = 138543874;
              v103 = engineID2;
              v104 = 2114;
              v105 = sessionID2;
              v106 = 2114;
              v107 = sectionIdentifier3;
              _os_log_impl(&dword_1C5C61000, p_super, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | returning nil [encountered loading section in non-playback mode] sectionID=%{public}@", buf, 0x20u);
            }

            copyAsPlaceholder2 = 0;
            goto LABEL_57;
          }

          v50 = [(_MPCQueueControllerBehaviorMusicEnumerator *)v90 _loadingComponentsForHeadOfSection:sectionIdentifier3];
          p_super = v50;
          if (!v50)
          {
            goto LABEL_59;
          }

          contentItemID = [v50 contentItemID];
          v51 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            engineID3 = [host engineID];
            sessionID3 = [musicBehavior sessionID];
            *buf = 138544130;
            v103 = engineID3;
            v104 = 2114;
            v105 = sessionID3;
            v53 = sessionID3;
            v106 = 2114;
            v107 = sectionIdentifier3;
            v108 = 2114;
            v109 = contentItemID;
            _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | returning placeholder [dataSource loading, playback mode] sectionID=%{public}@ nextContentItemID=%{public}@", buf, 0x2Au);
          }

          goto LABEL_60;
        }

        if ([v37 shouldUsePlaceholderForItem:itemIdentifier2 inSection:sectionIdentifier3])
        {
          if (v88 == 2)
          {
            v49 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier3 itemID:itemIdentifier2];
            copyAsPlaceholder2 = [v49 copyAsPlaceholder];
          }

          else
          {
            copyAsPlaceholder2 = 0;
          }

          if ((v85 & 1) == 0)
          {
            p_super = &v90->_queueEnumerator->super.super;
            v90->_queueEnumerator = 0;
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        if (v88 != 2 || ([v37 isPlayableItem:itemIdentifier2 inSection:sectionIdentifier3] & 1) != 0)
        {
          v54 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier3 itemID:itemIdentifier2];
          p_super = v54;
          if (v88 == 2)
          {
            copyAsPlaceholder = [v54 copyWithRepeatIteration:v90->_repeatIteration];
            goto LABEL_56;
          }

          goto LABEL_59;
        }

        p_super = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          engineID4 = [host engineID];
          sessionID4 = [musicBehavior sessionID];
          *buf = 138544130;
          v103 = engineID4;
          v104 = 2114;
          v105 = sessionID4;
          v106 = 2114;
          v107 = itemIdentifier2;
          v108 = 2114;
          v109 = sectionIdentifier3;
          _os_log_impl(&dword_1C5C61000, p_super, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | skipping item [unplayable] itemID=%{public}@ sectionID=%{public}@", buf, 0x2Au);
        }

        v48 = 1;
LABEL_61:

        v24 = v89;
        if ((v48 & 1) == 0)
        {
          goto LABEL_101;
        }

LABEL_62:
        ++v30;
      }

      while (v26 != v30);
      v58 = [(_MPCQueueControllerEnumerator *)v24 countByEnumeratingWithState:&v94 objects:v110 count:16];
      v26 = v58;
      if (!v58)
      {
LABEL_82:

        contentItemID4 = 0;
        goto LABEL_102;
      }
    }
  }

  repeatOneComponents = selfCopy->_repeatOneComponents;
  if (repeatOneComponents)
  {
    goto LABEL_91;
  }

  v82 = a2;
  if (selfCopy->_startingComponents)
  {
    ++selfCopy->_repeatIteration;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v6 = selfCopy->_queueEnumerator;
  v7 = [(_MPCQueueControllerEnumerator *)v6 countByEnumeratingWithState:&v98 objects:v111 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v99;
    do
    {
      v10 = 0;
      do
      {
        if (*v99 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v98 + 1) + 8 * v10);
        if ([v11 entryType] == 3)
        {
          itemResult3 = [v11 itemResult];
          sectionIdentifier4 = [itemResult3 sectionIdentifier];
          itemIdentifier3 = [itemResult3 itemIdentifier];
          dataSources3 = [musicBehavior dataSources];
          v16 = [dataSources3 objectForKeyedSubscript:sectionIdentifier4];

          if ([v16 isPlayableItem:itemIdentifier3 inSection:sectionIdentifier4])
          {
            v65 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier4 itemID:itemIdentifier3];
            v66 = [v65 copyWithRepeatIteration:v90->_repeatIteration];
            v67 = v90->_repeatOneComponents;
            v90->_repeatOneComponents = v66;

            goto LABEL_90;
          }

          goto LABEL_13;
        }

        if ([v11 entryType] == 2)
        {
          itemResult3 = [v11 trackingEntryResult];
          sectionIdentifier4 = [itemResult3 sectionIdentifier];
          itemIdentifier3 = [(_MPCQueueControllerBehaviorMusicEnumerator *)v90 _loadingComponentsForHeadOfSection:sectionIdentifier4];
          if (!itemIdentifier3)
          {
            goto LABEL_19;
          }

          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = currentHandler3;
          v18 = v82;
          v19 = v90;
          v20 = 4586;
          v21 = @"Encountered unexpected loading section Head in Natural Repeat One enumerator";
LABEL_23:
          [currentHandler3 handleFailureInMethod:v18 object:v19 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:v20 description:v21];
LABEL_13:

          goto LABEL_19;
        }

        if ([v11 entryType] != 4)
        {
          goto LABEL_20;
        }

        itemResult3 = [v11 trackingEntryResult];
        sectionIdentifier4 = [itemResult3 sectionIdentifier];
        dataSources4 = [musicBehavior dataSources];
        itemIdentifier3 = [dataSources4 objectForKeyedSubscript:sectionIdentifier4];

        if ([itemIdentifier3 shouldRequestAdditionalItemsAtTail])
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = currentHandler3;
          v18 = v82;
          v19 = v90;
          v20 = 4593;
          v21 = @"Encountered unexpected loading section Tail in Natural Repeat One enumerator";
          goto LABEL_23;
        }

LABEL_19:

LABEL_20:
        ++v10;
      }

      while (v8 != v10);
      v23 = [(_MPCQueueControllerEnumerator *)v6 countByEnumeratingWithState:&v98 objects:v111 count:16];
      v8 = v23;
    }

    while (v23);
  }

LABEL_90:

  selfCopy = v90;
  repeatOneComponents = v90->_repeatOneComponents;
  if (repeatOneComponents)
  {
LABEL_91:
    v68 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)repeatOneComponents copyWithRepeatIteration:selfCopy->_repeatIteration];
    v69 = selfCopy->_repeatOneComponents;
    selfCopy->_repeatOneComponents = v68;

    ++selfCopy->_repeatIteration;
    repeatOneComponents = selfCopy->_repeatOneComponents;
  }

  contentItemID4 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)repeatOneComponents contentItemID];
LABEL_102:

  return contentItemID4;
}

- (id)_loadingComponentsForHeadOfSection:(id)section
{
  v21 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  musicBehavior = [(_MPCQueueControllerEnumerator *)self->_queueEnumerator musicBehavior];
  dataSources = [musicBehavior dataSources];
  v7 = [dataSources objectForKeyedSubscript:sectionCopy];

  if (!v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    dataSources2 = [musicBehavior dataSources];
    allValues = [dataSources2 allValues];

    v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v16 + 1) + 8 * i) state] != 1)
          {

            goto LABEL_15;
          }
        }

        v11 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

  if ([v7 state] == 1)
  {
LABEL_13:
    v14 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:sectionCopy];
    goto LABEL_16;
  }

LABEL_15:
  v14 = 0;
LABEL_16:

  return v14;
}

- (_MPCQueueControllerBehaviorMusicEnumerator)initWithQueueEnumerator:(id)enumerator startingComponents:(id)components
{
  enumeratorCopy = enumerator;
  componentsCopy = components;
  v20.receiver = self;
  v20.super_class = _MPCQueueControllerBehaviorMusicEnumerator;
  v9 = [(_MPCQueueControllerBehaviorMusicEnumerator *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingComponents, components);
    objc_storeStrong(&v10->_queueEnumerator, enumerator);
    objc_initWeak(&location, v10);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __89___MPCQueueControllerBehaviorMusicEnumerator_initWithQueueEnumerator_startingComponents___block_invoke;
    v17 = &unk_1E8239500;
    objc_copyWeak(&v18, &location);
    [(_MPCQueueControllerEnumerator *)v10->_queueEnumerator setRepeatBoundaryBlock:&v14];
    if (([(_MPCQueueControllerEnumerator *)v10->_queueEnumerator mode:v14]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      musicBehavior = [(_MPCQueueControllerEnumerator *)v10->_queueEnumerator musicBehavior];
      repeatType = [musicBehavior repeatType];

      if (repeatType)
      {
        v10->_repeatIteration = [componentsCopy repeatIteration];
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

@end