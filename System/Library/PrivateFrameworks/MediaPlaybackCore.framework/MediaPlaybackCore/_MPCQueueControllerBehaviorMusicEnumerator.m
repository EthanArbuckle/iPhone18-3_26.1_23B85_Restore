@interface _MPCQueueControllerBehaviorMusicEnumerator
- (_MPCQueueControllerBehaviorMusicEnumerator)initWithQueueEnumerator:(id)a3 startingComponents:(id)a4;
- (id)_loadingComponentsForHeadOfSection:(id)a3;
- (id)nextObject;
@end

@implementation _MPCQueueControllerBehaviorMusicEnumerator

- (id)nextObject
{
  v3 = self;
  v112 = *MEMORY[0x1E69E9840];
  v93 = [(_MPCQueueControllerEnumerator *)self->_queueEnumerator musicBehavior];
  v86 = [v93 host];
  v4 = [(_MPCQueueControllerEnumerator *)v3->_queueEnumerator mode];
  v84 = [(_MPCQueueControllerEnumerator *)v3->_queueEnumerator options];
  v87 = v4;
  v90 = v3;
  if (v4 != 3 || [v93 repeatType] != 1)
  {
    v83 = a2;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v24 = v3->_queueEnumerator;
    v25 = [(_MPCQueueControllerEnumerator *)v24 countByEnumeratingWithState:&v94 objects:v110 count:16];
    if (!v25)
    {
      goto LABEL_82;
    }

    v26 = v25;
    v27 = (v84 >> 3) & 1;
    v88 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v28 = *v95;
    v29 = (v4 & 0xFFFFFFFFFFFFFFFELL) != 2 || (v84 & 8) != 0;
    v92 = v29;
    if (!v4)
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
        v32 = [v31 entryType];
        if (v32 == 2)
        {
          if (v92)
          {
            goto LABEL_62;
          }

          v42 = [v31 trackingEntryResult];
          v43 = [v42 sectionIdentifier];
          v46 = [(_MPCQueueControllerBehaviorMusicEnumerator *)v90 _loadingComponentsForHeadOfSection:v43];
          if (v46)
          {
            v45 = v46;
            v91 = [v46 contentItemID];
LABEL_100:

LABEL_101:
            v59 = v91;
            goto LABEL_102;
          }

          goto LABEL_52;
        }

        if (v32 == 4)
        {
          v42 = [v31 trackingEntryResult];
          v43 = [v42 sectionIdentifier];
          v44 = [v93 dataSources];
          v45 = [v44 objectForKeyedSubscript:v43];

          if ([v45 isRadioDataSource] && objc_msgSend(v45, "shouldRequestAdditionalItemsAtTail"))
          {
            if (v87 == 1)
            {
              if ((v84 & 8) != 0)
              {
                v60 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  v61 = [v86 engineID];
                  v62 = [v93 sessionID];
                  *buf = 138543874;
                  v103 = v61;
                  v104 = 2114;
                  v105 = v62;
                  v106 = 2114;
                  v107 = v43;
                  _os_log_impl(&dword_1C5C61000, v60, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | returning nil [encountered radio tail while reverse enumerating in display mode] sectionID=%{public}@", buf, 0x20u);
                }
              }

              v63 = 0;
              queueEnumerator = v90->_queueEnumerator;
              v90->_queueEnumerator = 0;
              goto LABEL_99;
            }

            if (v88 == 2)
            {
              v70 = [MEMORY[0x1E6970948] positionForTailOfSection:v43];
              queueEnumerator = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:v93 mode:0 options:8 startPosition:v70 endPosition:0];

              v71 = [queueEnumerator nextObject];
              v72 = v71;
              if (v71)
              {
                if ([v71 entryType] != 3)
                {
                  v80 = [MEMORY[0x1E696AAA8] currentHandler];
                  [v80 handleFailureInMethod:v83 object:v90 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4692 description:{@"Encountered unexpected enumeration result type: %ld", objc_msgSend(v72, "entryType")}];
                }

                v73 = [v72 itemResult];
                v74 = [v73 sectionIdentifier];
                v75 = [v73 itemIdentifier];
                v76 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v74 itemID:v75];
                v77 = [v76 copyAsDeferredWithLoadingSectionID:v43];

                v78 = [v77 contentItemID];

                v63 = v78;
                v24 = v89;
              }

              else
              {
                v73 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:v43];
                v63 = [v73 contentItemID];
              }

LABEL_99:
              v91 = v63;

              goto LABEL_100;
            }
          }

LABEL_52:
          goto LABEL_62;
        }

        if (v32 != 3)
        {
          goto LABEL_62;
        }

        v33 = [v31 itemResult];
        v34 = [v33 sectionIdentifier];
        v35 = [v33 itemIdentifier];
        v36 = [v93 dataSources];
        v37 = [v36 objectForKeyedSubscript:v34];

        if (!v37)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v57 = [MEMORY[0x1E696AAA8] currentHandler];
            [v57 handleFailureInMethod:v83 object:v90 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4615 description:{@"Enumerated an itemResult that has no dataSourceState: sectionID=%@", v34}];
          }

          p_super = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v34 itemID:v35];
          v47 = [p_super copyAsPlaceholder];
LABEL_56:
          v41 = v47;
LABEL_57:

LABEL_58:
          p_super = v41;
LABEL_59:
          v91 = [p_super contentItemID];
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
              v39 = [v86 engineID];
              v40 = [v93 sessionID];
              *buf = 138543874;
              v103 = v39;
              v104 = 2114;
              v105 = v40;
              v106 = 2114;
              v107 = v34;
              _os_log_impl(&dword_1C5C61000, p_super, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | returning nil [encountered loading section in non-playback mode] sectionID=%{public}@", buf, 0x20u);
            }

            v41 = 0;
            goto LABEL_57;
          }

          v50 = [(_MPCQueueControllerBehaviorMusicEnumerator *)v90 _loadingComponentsForHeadOfSection:v34];
          p_super = v50;
          if (!v50)
          {
            goto LABEL_59;
          }

          v91 = [v50 contentItemID];
          v51 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v81 = [v86 engineID];
            v52 = [v93 sessionID];
            *buf = 138544130;
            v103 = v81;
            v104 = 2114;
            v105 = v52;
            v53 = v52;
            v106 = 2114;
            v107 = v34;
            v108 = 2114;
            v109 = v91;
            _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] enumerator nextObject: | returning placeholder [dataSource loading, playback mode] sectionID=%{public}@ nextContentItemID=%{public}@", buf, 0x2Au);
          }

          goto LABEL_60;
        }

        if ([v37 shouldUsePlaceholderForItem:v35 inSection:v34])
        {
          if (v88 == 2)
          {
            v49 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v34 itemID:v35];
            v41 = [v49 copyAsPlaceholder];
          }

          else
          {
            v41 = 0;
          }

          if ((v85 & 1) == 0)
          {
            p_super = &v90->_queueEnumerator->super.super;
            v90->_queueEnumerator = 0;
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        if (v88 != 2 || ([v37 isPlayableItem:v35 inSection:v34] & 1) != 0)
        {
          v54 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v34 itemID:v35];
          p_super = v54;
          if (v88 == 2)
          {
            v47 = [v54 copyWithRepeatIteration:v90->_repeatIteration];
            goto LABEL_56;
          }

          goto LABEL_59;
        }

        p_super = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v86 engineID];
          v56 = [v93 sessionID];
          *buf = 138544130;
          v103 = v55;
          v104 = 2114;
          v105 = v56;
          v106 = 2114;
          v107 = v35;
          v108 = 2114;
          v109 = v34;
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

        v59 = 0;
        goto LABEL_102;
      }
    }
  }

  repeatOneComponents = v3->_repeatOneComponents;
  if (repeatOneComponents)
  {
    goto LABEL_91;
  }

  v82 = a2;
  if (v3->_startingComponents)
  {
    ++v3->_repeatIteration;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v6 = v3->_queueEnumerator;
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
          v12 = [v11 itemResult];
          v13 = [v12 sectionIdentifier];
          v14 = [v12 itemIdentifier];
          v15 = [v93 dataSources];
          v16 = [v15 objectForKeyedSubscript:v13];

          if ([v16 isPlayableItem:v14 inSection:v13])
          {
            v65 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v13 itemID:v14];
            v66 = [v65 copyWithRepeatIteration:v90->_repeatIteration];
            v67 = v90->_repeatOneComponents;
            v90->_repeatOneComponents = v66;

            goto LABEL_90;
          }

          goto LABEL_13;
        }

        if ([v11 entryType] == 2)
        {
          v12 = [v11 trackingEntryResult];
          v13 = [v12 sectionIdentifier];
          v14 = [(_MPCQueueControllerBehaviorMusicEnumerator *)v90 _loadingComponentsForHeadOfSection:v13];
          if (!v14)
          {
            goto LABEL_19;
          }

          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = v17;
          v18 = v82;
          v19 = v90;
          v20 = 4586;
          v21 = @"Encountered unexpected loading section Head in Natural Repeat One enumerator";
LABEL_23:
          [v17 handleFailureInMethod:v18 object:v19 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:v20 description:v21];
LABEL_13:

          goto LABEL_19;
        }

        if ([v11 entryType] != 4)
        {
          goto LABEL_20;
        }

        v12 = [v11 trackingEntryResult];
        v13 = [v12 sectionIdentifier];
        v22 = [v93 dataSources];
        v14 = [v22 objectForKeyedSubscript:v13];

        if ([v14 shouldRequestAdditionalItemsAtTail])
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = v17;
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

  v3 = v90;
  repeatOneComponents = v90->_repeatOneComponents;
  if (repeatOneComponents)
  {
LABEL_91:
    v68 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)repeatOneComponents copyWithRepeatIteration:v3->_repeatIteration];
    v69 = v3->_repeatOneComponents;
    v3->_repeatOneComponents = v68;

    ++v3->_repeatIteration;
    repeatOneComponents = v3->_repeatOneComponents;
  }

  v59 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)repeatOneComponents contentItemID];
LABEL_102:

  return v59;
}

- (id)_loadingComponentsForHeadOfSection:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCQueueControllerEnumerator *)self->_queueEnumerator musicBehavior];
  v6 = [v5 dataSources];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v5 dataSources];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v16 + 1) + 8 * i) state] != 1)
          {

            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v14 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:v4];
    goto LABEL_16;
  }

LABEL_15:
  v14 = 0;
LABEL_16:

  return v14;
}

- (_MPCQueueControllerBehaviorMusicEnumerator)initWithQueueEnumerator:(id)a3 startingComponents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = _MPCQueueControllerBehaviorMusicEnumerator;
  v9 = [(_MPCQueueControllerBehaviorMusicEnumerator *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingComponents, a4);
    objc_storeStrong(&v10->_queueEnumerator, a3);
    objc_initWeak(&location, v10);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __89___MPCQueueControllerBehaviorMusicEnumerator_initWithQueueEnumerator_startingComponents___block_invoke;
    v17 = &unk_1E8239500;
    objc_copyWeak(&v18, &location);
    [(_MPCQueueControllerEnumerator *)v10->_queueEnumerator setRepeatBoundaryBlock:&v14];
    if (([(_MPCQueueControllerEnumerator *)v10->_queueEnumerator mode:v14]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v11 = [(_MPCQueueControllerEnumerator *)v10->_queueEnumerator musicBehavior];
      v12 = [v11 repeatType];

      if (v12)
      {
        v10->_repeatIteration = [v8 repeatIteration];
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

@end