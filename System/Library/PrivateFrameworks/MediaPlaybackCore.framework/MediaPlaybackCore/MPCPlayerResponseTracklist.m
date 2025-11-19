@interface MPCPlayerResponseTracklist
+ (id)insertCommandForPlayerPath:(id)a3 devices:(id)a4;
+ (id)resetCommandForPlayerPath:(id)a3 devices:(id)a4;
- (MPCPlayerResponse)response;
- (MPCPlayerResponseItem)playingItem;
- (MPCPlayerResponseTracklist)initWithResponse:(id)a3;
- (id)_stateDumpObject;
- (id)actionAtQueueEndCommand;
- (id)changeItemCommand;
- (id)displayIndexPathForStructuredIndexPath:(id)a3;
- (id)enhanceDialogueCommand;
- (id)insertCommand;
- (id)prepareVocalsControlCommand;
- (id)reorderCommand;
- (id)repeatCommand;
- (id)representativeSectionForDisplaySection:(id)a3;
- (id)resetCommand;
- (id)shuffleCommand;
- (id)sleepTimerCommand;
- (id)structuredIndexPathForDisplayIndexPath:(id)a3;
- (id)toggleTransitionsCommand;
- (id)vocalsControlCommand;
- (unint64_t)_determineChangeItemSupport;
@end

@implementation MPCPlayerResponseTracklist

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (unint64_t)_determineChangeItemSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:5 chain:v4];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [WeakRetained builder];
  v8 = [WeakRetained chain];
  v9 = [v7 playerCommandEnabled:0 command:110 chain:v8];

  if (v9)
  {
    v6 |= 4uLL;
  }

  v10 = [WeakRetained builder];
  v11 = [WeakRetained chain];
  v12 = [v10 playerCommandEnabled:0 command:101 chain:v11];

  if (v12)
  {
    v6 |= 8uLL;
  }

  v13 = [WeakRetained builder];
  v14 = [WeakRetained chain];
  v15 = [v13 playerCommandEnabled:0 command:4 chain:v14];

  if (v15)
  {
    v6 |= 0x10uLL;
  }

  v16 = [WeakRetained builder];
  v17 = [WeakRetained chain];
  v18 = [v16 playerCommandEnabled:0 command:109 chain:v17];

  if (v18)
  {
    v6 |= 0x20uLL;
  }

  v19 = [WeakRetained builder];
  v20 = [WeakRetained chain];
  v21 = [v19 playerCommandEnabled:0 command:100 chain:v20];

  if (v21)
  {
    v6 |= 0x40uLL;
  }

  v22 = [WeakRetained builder];
  v23 = [WeakRetained chain];
  v24 = [v22 playerCommandEnabled:0 command:131 chain:v23];

  if (v24)
  {
    v25 = v6 | 0x80;
  }

  else
  {
    v25 = v6;
  }

  return v25;
}

- (id)_stateDumpObject
{
  v10[3] = *MEMORY[0x1E69E9840];
  lastChangeDirection = self->_lastChangeDirection;
  v10[0] = self->_uniqueIdentifier;
  v9[0] = @"uniqueID";
  v9[1] = @"lastChangeDirection";
  if ((lastChangeDirection + 1) > 6)
  {
    v3 = @"MPCPlayerDirectionReverseJump";
  }

  else
  {
    v3 = off_1E8238F98[lastChangeDirection + 1];
  }

  v10[1] = v3;
  v9[2] = @"playingItem";
  v4 = [(MPCPlayerResponseTracklist *)self playingItem];
  v5 = v4;
  v6 = @"<NONE>";
  if (v4)
  {
    v6 = v4;
  }

  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (id)enhanceDialogueCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandSupported:0 command:147 chain:v4];

  if (v5 && ([WeakRetained builder], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "playerCommandEnabled:command:chain:", 0, 147, v7), v7, v6, v8))
  {
    v9 = [(_MPCPlayerCommand *)[_MPCEnhanceDialogueCommand alloc] initWithResponse:WeakRetained];
    v10 = [WeakRetained builder];
    v11 = [WeakRetained chain];
    -[_MPCEnhanceDialogueCommand setActive:](v9, "setActive:", [v10 playerEnhanceDialogueActive:0 chain:v11]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sleepTimerCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandSupported:0 command:124 chain:v4];

  if (v5 && ([WeakRetained builder], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "playerCommandEnabled:command:chain:", 0, 124, v7), v7, v6, v8))
  {
    v9 = [(_MPCPlayerCommand *)[_MPCSleepTimerCommand alloc] initWithResponse:WeakRetained];
    v10 = [WeakRetained builder];
    v11 = [WeakRetained chain];
    [v10 playerSleepTimerTime:v11 chain:0.0];
    [(_MPCSleepTimerCommand *)v9 setTime:?];

    v12 = [WeakRetained builder];
    v13 = [WeakRetained chain];
    [v12 playerSleepTimerFireDate:v13 chain:0.0];
    [(_MPCSleepTimerCommand *)v9 setFireDate:?];

    v14 = [WeakRetained builder];
    v15 = [WeakRetained chain];
    -[_MPCSleepTimerCommand setStopMode:](v9, "setStopMode:", [v14 playerSleepTimerStopMode:0 chain:v15]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)vocalsControlCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandSupported:0 command:142 chain:v4];

  if (v5 && (([WeakRetained builder], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "playerCommandEnabled:command:chain:", 0, 142, v7), v7, v6, objc_msgSend(WeakRetained, "builder"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "playerCommandDisabledReason:command:chain:", 0, 142, v10), v10, v9, (v8 & 1) != 0) || v11))
  {
    v12 = [(_MPCPlayerCommand *)[_MPCVocalsControlCommand alloc] initWithResponse:WeakRetained];
    [(_MPCVocalsControlCommand *)v12 setDisabled:v8 ^ 1u];
    if ([(_MPCVocalsControlCommand *)v12 isDisabled])
    {
      [(_MPCVocalsControlCommand *)v12 setDisabledReason:v11];
    }

    v13 = [WeakRetained builder];
    v14 = [WeakRetained chain];
    -[_MPCVocalsControlCommand setActive:](v12, "setActive:", [v13 playerVocalsControlActive:0 chain:v14]);

    v15 = [WeakRetained builder];
    v16 = [WeakRetained chain];
    [v15 playerVocalsLevel:v16 chain:0.0];
    [(_MPCVocalsControlCommand *)v12 setLevel:?];

    v17 = [WeakRetained builder];
    v18 = [WeakRetained chain];
    [v17 playerMinVocalsLevel:v18 chain:0.0];
    [(_MPCVocalsControlCommand *)v12 setMinLevel:?];

    v19 = [WeakRetained builder];
    v20 = [WeakRetained chain];
    [v19 playerMaxVocalsLevel:v20 chain:0.0];
    [(_MPCVocalsControlCommand *)v12 setMaxLevel:?];

    v21 = [WeakRetained builder];
    v22 = [WeakRetained chain];
    -[_MPCVocalsControlCommand setContinuous:](v12, "setContinuous:", [v21 playerVocalsControlContinuous:1 chain:v22]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)prepareVocalsControlCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:143 chain:v4];

  if (v5)
  {
    v6 = [(_MPCPlayerCommand *)[_MPCPrepareVocalsControlCommand alloc] initWithResponse:WeakRetained];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)toggleTransitionsCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:149 chain:v4];

  if (v5)
  {
    v6 = [(_MPCPlayerCommand *)[_MPCToggleTransitionsCommand alloc] initWithResponse:WeakRetained];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)changeItemCommand
{
  changeItemSupport = self->_changeItemSupport;
  if ((changeItemSupport & 1) == 0)
  {
    changeItemSupport = [(MPCPlayerResponseTracklist *)self _determineChangeItemSupport];
    self->_changeItemSupport = changeItemSupport;
  }

  if (changeItemSupport == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [_MPCPlayerChangeItemCommand alloc];
    WeakRetained = objc_loadWeakRetained(&self->_response);
    v4 = [(_MPCPlayerChangeItemCommand *)v5 initWithResponse:WeakRetained changeItemSupport:self->_changeItemSupport];
  }

  return v4;
}

- (id)actionAtQueueEndCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v4 = [WeakRetained builder];
  v5 = [WeakRetained chain];
  v6 = [v4 playerCommandEnabled:0 command:135 chain:v5];

  if (v6)
  {
    v7 = [(_MPCPlayerCommand *)[_MPCPlayerActionAtQueueEndCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerActionAtQueueEndCommand *)v7 setActionAtQueueEnd:[(MPCPlayerResponseTracklist *)self actionAtQueueEnd]];
    v8 = [WeakRetained builder];
    v9 = *MEMORY[0x1E69B0D58];
    v10 = [WeakRetained chain];
    v11 = [v8 playerCommandOptionValue:&unk_1F45999B8 forKey:v9 command:135 chain:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &unk_1F45999B8;
    }

    [(_MPCPlayerActionAtQueueEndCommand *)v7 setSupportedActions:v13];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)shuffleCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v4 = [WeakRetained builder];
  v5 = [WeakRetained chain];
  v6 = [v4 playerCommandEnabled:0 command:26 chain:v5];

  v7 = [WeakRetained builder];
  v8 = [WeakRetained chain];
  v9 = [v7 playerCommandEnabled:0 command:6 chain:v8];

  if ((v6 & 1) != 0 || v9)
  {
    v10 = [(_MPCPlayerCommand *)[_MPCPlayerShuffleCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerShuffleCommand *)v10 setCurrentShuffleType:[(MPCPlayerResponseTracklist *)self shuffleType]];
    [(_MPCPlayerShuffleCommand *)v10 setSupportsChangeShuffle:v6];
    [(_MPCPlayerShuffleCommand *)v10 setSupportsAdvanceShuffle:v9];
    v11 = [WeakRetained builder];
    v12 = *MEMORY[0x1E69B0D68];
    v13 = [WeakRetained chain];
    v14 = [v11 playerCommandOptionValue:&unk_1F45999A0 forKey:v12 command:26 chain:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_1F45999A0;
    }

    [(_MPCPlayerShuffleCommand *)v10 setSupportedShuffleTypes:v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)repeatCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v4 = [WeakRetained builder];
  v5 = [WeakRetained chain];
  v6 = [v4 playerCommandEnabled:0 command:25 chain:v5];

  v7 = [WeakRetained builder];
  v8 = [WeakRetained chain];
  v9 = [v7 playerCommandEnabled:0 command:7 chain:v8];

  if ((v6 & 1) != 0 || v9)
  {
    v10 = [(_MPCPlayerCommand *)[_MPCPlayerRepeatCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerRepeatCommand *)v10 setCurrentRepeatType:[(MPCPlayerResponseTracklist *)self repeatType]];
    [(_MPCPlayerRepeatCommand *)v10 setSupportsChangeRepeat:v6];
    [(_MPCPlayerRepeatCommand *)v10 setSupportsAdvanceRepeat:v9];
    v11 = [WeakRetained builder];
    v12 = *MEMORY[0x1E69B0D60];
    v13 = [WeakRetained chain];
    v14 = [v11 playerCommandOptionValue:&unk_1F4599988 forKey:v12 command:25 chain:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_1F4599988;
    }

    [(_MPCPlayerRepeatCommand *)v10 setSupportedRepeatTypes:v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)reorderCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:130 chain:v4];

  if (v5)
  {
    v6 = [(_MPCPlayerCommand *)[_MPCPlayerReorderItemsCommand alloc] initWithResponse:WeakRetained];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)insertCommand
{
  v58 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:125 chain:v4];

  v6 = [WeakRetained builder];
  v7 = [WeakRetained chain];
  v8 = [v6 playerCommandEnabled:0 command:121 chain:v7];

  if ((v5 & 1) != 0 || v8)
  {
    v9 = [(_MPCPlayerCommand *)[_MPCPlayerInsertItemsCommand alloc] initWithResponse:WeakRetained];
    if (!v5)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v9 = 0;
    if (!v5)
    {
      goto LABEL_36;
    }
  }

  v10 = [WeakRetained builder];
  v11 = *MEMORY[0x1E69B0D30];
  v12 = [WeakRetained chain];
  v13 = MEMORY[0x1E695E0F0];
  v14 = [v10 playerCommandOptionValue:MEMORY[0x1E695E0F0] forKey:v11 command:125 chain:v12];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;

  v18 = v17;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v54;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v21 |= 1 << [*(*(&v53 + 1) + 8 * i) integerValue];
      }

      v20 = [v18 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  [(_MPCPlayerInsertItemsCommand *)v9 setSupportedInsertionPositions:v21];
  v24 = [WeakRetained builder];
  v25 = *MEMORY[0x1E69B0D38];
  v26 = [WeakRetained chain];
  v27 = [v24 playerCommandOptionValue:v13 forKey:v25 command:125 chain:v26];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v13;
  }

  v30 = v29;

  v31 = v30;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v54;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v34 |= 1 << [*(*(&v53 + 1) + 8 * j) integerValue];
      }

      v33 = [v31 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v33);
  }

  else
  {
    v34 = 0;
  }

  [(_MPCPlayerInsertItemsCommand *)v9 setSupportedQueueTypes:v34];
  v37 = [WeakRetained builder];
  v38 = *MEMORY[0x1E69B0D28];
  v39 = [WeakRetained chain];
  v40 = MEMORY[0x1E695E0F0];
  v41 = [v37 playerCommandOptionValue:MEMORY[0x1E695E0F0] forKey:v38 command:125 chain:v39];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v40;
  }

  v44 = v43;

  v45 = [MEMORY[0x1E695DFD8] setWithArray:v44];

  [(_MPCPlayerInsertItemsCommand *)v9 setSupportedCustomDataQueueIdentifiers:v45];
  v46 = [WeakRetained builder];
  v47 = [WeakRetained request];
  v48 = [v47 queueSectionProperties];
  v49 = [WeakRetained chain];
  v50 = [v46 lastSectionModelObject:0 propertySet:v48 chain:v49];

  if (v50)
  {
    v51 = [[MPCPlayerResponseSection alloc] initWithModelGenericObject:v50 sectionIndex:0x7FFFFFFFFFFFFFFFLL response:WeakRetained];
    [(_MPCPlayerInsertItemsCommand *)v9 setLastSection:v51];
  }

LABEL_36:
  if (v8)
  {
    [(_MPCPlayerInsertItemsCommand *)v9 setSupportsCreateStation:1];
  }

  return v9;
}

- (id)resetCommand
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:122 chain:v4];

  if (v5)
  {
    v6 = [(_MPCPlayerCommand *)[_MPCPlayerResetTracklistCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerResetTracklistCommand *)v6 setSupportsSetQueueCommand:1];
    v7 = [WeakRetained builder];
    v8 = *MEMORY[0x1E69B0D20];
    v9 = [WeakRetained chain];
    v10 = MEMORY[0x1E695E0F8];
    v11 = [v7 playerCommandOptionValue:MEMORY[0x1E695E0F8] forKey:v8 command:122 chain:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    [(_MPCPlayerResetTracklistCommand *)v6 setSupportedSpecializedQueues:v13];

    v14 = [WeakRetained builder];
    v15 = *MEMORY[0x1E69B0D38];
    v16 = [WeakRetained chain];
    v17 = MEMORY[0x1E695E0F0];
    v18 = [v14 playerCommandOptionValue:MEMORY[0x1E695E0F0] forKey:v15 command:122 chain:v16];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    v21 = v20;

    v22 = v21;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v38;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v25 |= 1 << [*(*(&v37 + 1) + 8 * i) integerValue];
        }

        v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    [(_MPCPlayerResetTracklistCommand *)v6 setSupportedQueueTypes:v25];
    v28 = [WeakRetained builder];
    v29 = *MEMORY[0x1E69B0D28];
    v30 = [WeakRetained chain];
    v31 = [v28 playerCommandOptionValue:v17 forKey:v29 command:122 chain:v30];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v17;
    }

    v34 = v33;

    v35 = [MEMORY[0x1E695DFD8] setWithArray:v34];

    [(_MPCPlayerResetTracklistCommand *)v6 setSupportedCustomDataQueueIdentifiers:v35];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)representativeSectionForDisplaySection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"MPCPlayerResponseTracklistDisplaySectionNextItems" || (v6 = [(__CFString *)v4 isEqual:@"MPCPlayerResponseTracklistDisplaySectionNextItems"], v5, v6))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    displayItems = self->_displayItems;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__MPCPlayerResponseTracklist_representativeSectionForDisplaySection___block_invoke;
    v10[3] = &unk_1E8238F78;
    v10[4] = self;
    v10[5] = &v11;
    [(MPSectionedCollection *)displayItems enumerateSectionsUsingBlock:v10];
    if (v12[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(MPSectionedCollection *)self->_items sectionAtIndex:?];
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __69__MPCPlayerResponseTracklist_representativeSectionForDisplaySection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v15 = v7;
  if (v7 == @"MPCPlayerResponseTracklistDisplaySectionNextItems" || (v8 = [(__CFString *)v7 isEqual:@"MPCPlayerResponseTracklistDisplaySectionNextItems"], v15, v9 = v15, v8))
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(*(*(a1 + 32) + 112) inSection:{"numberOfItemsInSection:", a3) - 1, a3}];
    v12 = [*(a1 + 32) structuredIndexPathForDisplayIndexPath:v10];
    v13 = [*(a1 + 32) structuredIndexPathForDisplayIndexPath:v11];
    v14 = [v12 section];
    if (v14 == [v13 section])
    {
      *(*(*(a1 + 40) + 8) + 24) = [v12 section];
      *a4 = 1;
    }

    v9 = v15;
  }
}

- (id)displayIndexPathForStructuredIndexPath:(id)a3
{
  displayItems = self->_displayItems;
  v4 = a3;
  v5 = [(MPSectionedCollection *)displayItems dataSource];
  v6 = [v5 displayIndexPathForStructuredIndexPath:v4];

  return v6;
}

- (id)structuredIndexPathForDisplayIndexPath:(id)a3
{
  displayItems = self->_displayItems;
  v4 = a3;
  v5 = [(MPSectionedCollection *)displayItems dataSource];
  v6 = [v5 structuredIndexPathForDisplayIndexPath:v4];

  return v6;
}

- (MPCPlayerResponseItem)playingItem
{
  if (self->_playingItemIndexPath)
  {
    v3 = [(MPSectionedCollection *)self->_items itemAtIndexPath:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MPCPlayerResponseTracklist)initWithResponse:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = MPCPlayerResponseTracklist;
  v5 = [(MPCPlayerResponseTracklist *)&v48 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_response, v4);
    v7 = [v4 builder];
    v8 = [v4 chain];
    v9 = [v7 tracklistUniqueIdentifier:@"<missing queue identifier>" chain:v8];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v9;

    v11 = [v4 builder];
    v12 = [v4 chain];
    v6->_lastChangeDirection = [v11 playerLastChangeDirection:0 chain:v12];

    v13 = [v4 builder];
    v14 = [v4 chain];
    v15 = [v13 playerPlayingItemIndexPath:0 chain:v14];
    playingItemIndexPath = v6->_playingItemIndexPath;
    v6->_playingItemIndexPath = v15;

    v17 = [v4 builder];
    v18 = [v4 chain];
    v6->_playingItemGlobalIndex = [v17 playerPlayingItemGlobalIndex:0 chain:v18];

    v19 = [v4 builder];
    v20 = [v4 chain];
    v6->_globalItemCount = [v19 playerGlobalItemCount:0 chain:v20];

    v21 = [v4 builder];
    v22 = [v4 chain];
    v6->_upNextItemCount = [v21 playerUpNextItemCount:0 chain:v22];

    v23 = [v4 builder];
    v24 = [v4 chain];
    v6->_explicitContentState = [v23 playerExplicitContentState:0 chain:v24];

    v25 = [v4 builder];
    v26 = [v4 chain];
    v6->_repeatType = [v25 playerRepeatType:0 chain:v26];

    v27 = [v4 builder];
    v28 = [v4 chain];
    v6->_shuffleType = [v27 playerShuffleType:0 chain:v28];

    v29 = [v4 builder];
    v30 = [v4 chain];
    v6->_actionAtQueueEnd = [v29 playerQueueEndAction:1 chain:v30];

    v31 = [v4 builder];
    v32 = [v4 chain];
    v6->_transitionsActive = [v31 transitionsActive:0 chain:v32];

    v33 = [v4 builder];
    v34 = [v4 chain];
    v6->_transitionStyle = [v33 transitionStyle:0 chain:v34];

    v35 = objc_alloc(MEMORY[0x1E6970560]);
    v36 = [[_MPCPlayerResponseTracklistDataSource alloc] initWithResponse:v4 playingItemIndexPath:v6->_playingItemIndexPath];
    v37 = [v35 initWithDataSource:v36];
    items = v6->_items;
    v6->_items = v37;

    v39 = [v4 builder];
    v40 = [v4 chain];
    v41 = [v39 tracklistProperties:MEMORY[0x1E695E0F8] chain:v40];

    v42 = [v41 objectForKeyedSubscript:@"tailInsertionContentItemID"];
    v43 = objc_alloc(MEMORY[0x1E6970560]);
    v44 = [[_MPCPlayerResponseTracklistDisplayDataSource alloc] initWithResponse:v4 tracklistItems:v6->_items playingItemIndexPath:v6->_playingItemIndexPath tailInsertionContentItemID:v42];
    v45 = [v43 initWithDataSource:v44];
    displayItems = v6->_displayItems;
    v6->_displayItems = v45;
  }

  return v6;
}

+ (id)insertCommandForPlayerPath:(id)a3 devices:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(_MPCPlayerCommand *)[_MPCPlayerInsertItemsCommand alloc] initWithPlayerPath:v6];

  [(_MPCPlayerInsertItemsCommand *)v7 setDevices:v5];

  return v7;
}

+ (id)resetCommandForPlayerPath:(id)a3 devices:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(_MPCPlayerCommand *)[_MPCPlayerResetTracklistCommand alloc] initWithPlayerPath:v6];

  [(_MPCPlayerResetTracklistCommand *)v7 setDevices:v5];

  return v7;
}

@end