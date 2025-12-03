@interface MPCPlayerResponseTracklist
+ (id)insertCommandForPlayerPath:(id)path devices:(id)devices;
+ (id)resetCommandForPlayerPath:(id)path devices:(id)devices;
- (MPCPlayerResponse)response;
- (MPCPlayerResponseItem)playingItem;
- (MPCPlayerResponseTracklist)initWithResponse:(id)response;
- (id)_stateDumpObject;
- (id)actionAtQueueEndCommand;
- (id)changeItemCommand;
- (id)displayIndexPathForStructuredIndexPath:(id)path;
- (id)enhanceDialogueCommand;
- (id)insertCommand;
- (id)prepareVocalsControlCommand;
- (id)reorderCommand;
- (id)repeatCommand;
- (id)representativeSectionForDisplaySection:(id)section;
- (id)resetCommand;
- (id)shuffleCommand;
- (id)sleepTimerCommand;
- (id)structuredIndexPathForDisplayIndexPath:(id)path;
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:5 chain:chain];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  builder2 = [WeakRetained builder];
  chain2 = [WeakRetained chain];
  v9 = [builder2 playerCommandEnabled:0 command:110 chain:chain2];

  if (v9)
  {
    v6 |= 4uLL;
  }

  builder3 = [WeakRetained builder];
  chain3 = [WeakRetained chain];
  v12 = [builder3 playerCommandEnabled:0 command:101 chain:chain3];

  if (v12)
  {
    v6 |= 8uLL;
  }

  builder4 = [WeakRetained builder];
  chain4 = [WeakRetained chain];
  v15 = [builder4 playerCommandEnabled:0 command:4 chain:chain4];

  if (v15)
  {
    v6 |= 0x10uLL;
  }

  builder5 = [WeakRetained builder];
  chain5 = [WeakRetained chain];
  v18 = [builder5 playerCommandEnabled:0 command:109 chain:chain5];

  if (v18)
  {
    v6 |= 0x20uLL;
  }

  builder6 = [WeakRetained builder];
  chain6 = [WeakRetained chain];
  v21 = [builder6 playerCommandEnabled:0 command:100 chain:chain6];

  if (v21)
  {
    v6 |= 0x40uLL;
  }

  builder7 = [WeakRetained builder];
  chain7 = [WeakRetained chain];
  v24 = [builder7 playerCommandEnabled:0 command:131 chain:chain7];

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
  playingItem = [(MPCPlayerResponseTracklist *)self playingItem];
  v5 = playingItem;
  v6 = @"<NONE>";
  if (playingItem)
  {
    v6 = playingItem;
  }

  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (id)enhanceDialogueCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandSupported:0 command:147 chain:chain];

  if (v5 && ([WeakRetained builder], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "playerCommandEnabled:command:chain:", 0, 147, v7), v7, v6, v8))
  {
    v9 = [(_MPCPlayerCommand *)[_MPCEnhanceDialogueCommand alloc] initWithResponse:WeakRetained];
    builder2 = [WeakRetained builder];
    chain2 = [WeakRetained chain];
    -[_MPCEnhanceDialogueCommand setActive:](v9, "setActive:", [builder2 playerEnhanceDialogueActive:0 chain:chain2]);
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandSupported:0 command:124 chain:chain];

  if (v5 && ([WeakRetained builder], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "playerCommandEnabled:command:chain:", 0, 124, v7), v7, v6, v8))
  {
    v9 = [(_MPCPlayerCommand *)[_MPCSleepTimerCommand alloc] initWithResponse:WeakRetained];
    builder2 = [WeakRetained builder];
    chain2 = [WeakRetained chain];
    [builder2 playerSleepTimerTime:chain2 chain:0.0];
    [(_MPCSleepTimerCommand *)v9 setTime:?];

    builder3 = [WeakRetained builder];
    chain3 = [WeakRetained chain];
    [builder3 playerSleepTimerFireDate:chain3 chain:0.0];
    [(_MPCSleepTimerCommand *)v9 setFireDate:?];

    builder4 = [WeakRetained builder];
    chain4 = [WeakRetained chain];
    -[_MPCSleepTimerCommand setStopMode:](v9, "setStopMode:", [builder4 playerSleepTimerStopMode:0 chain:chain4]);
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandSupported:0 command:142 chain:chain];

  if (v5 && (([WeakRetained builder], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "playerCommandEnabled:command:chain:", 0, 142, v7), v7, v6, objc_msgSend(WeakRetained, "builder"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "chain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "playerCommandDisabledReason:command:chain:", 0, 142, v10), v10, v9, (v8 & 1) != 0) || v11))
  {
    v12 = [(_MPCPlayerCommand *)[_MPCVocalsControlCommand alloc] initWithResponse:WeakRetained];
    [(_MPCVocalsControlCommand *)v12 setDisabled:v8 ^ 1u];
    if ([(_MPCVocalsControlCommand *)v12 isDisabled])
    {
      [(_MPCVocalsControlCommand *)v12 setDisabledReason:v11];
    }

    builder2 = [WeakRetained builder];
    chain2 = [WeakRetained chain];
    -[_MPCVocalsControlCommand setActive:](v12, "setActive:", [builder2 playerVocalsControlActive:0 chain:chain2]);

    builder3 = [WeakRetained builder];
    chain3 = [WeakRetained chain];
    [builder3 playerVocalsLevel:chain3 chain:0.0];
    [(_MPCVocalsControlCommand *)v12 setLevel:?];

    builder4 = [WeakRetained builder];
    chain4 = [WeakRetained chain];
    [builder4 playerMinVocalsLevel:chain4 chain:0.0];
    [(_MPCVocalsControlCommand *)v12 setMinLevel:?];

    builder5 = [WeakRetained builder];
    chain5 = [WeakRetained chain];
    [builder5 playerMaxVocalsLevel:chain5 chain:0.0];
    [(_MPCVocalsControlCommand *)v12 setMaxLevel:?];

    builder6 = [WeakRetained builder];
    chain6 = [WeakRetained chain];
    -[_MPCVocalsControlCommand setContinuous:](v12, "setContinuous:", [builder6 playerVocalsControlContinuous:1 chain:chain6]);
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:143 chain:chain];

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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:149 chain:chain];

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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v6 = [builder playerCommandEnabled:0 command:135 chain:chain];

  if (v6)
  {
    v7 = [(_MPCPlayerCommand *)[_MPCPlayerActionAtQueueEndCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerActionAtQueueEndCommand *)v7 setActionAtQueueEnd:[(MPCPlayerResponseTracklist *)self actionAtQueueEnd]];
    builder2 = [WeakRetained builder];
    v9 = *MEMORY[0x1E69B0D58];
    chain2 = [WeakRetained chain];
    v11 = [builder2 playerCommandOptionValue:&unk_1F45999B8 forKey:v9 command:135 chain:chain2];
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v6 = [builder playerCommandEnabled:0 command:26 chain:chain];

  builder2 = [WeakRetained builder];
  chain2 = [WeakRetained chain];
  v9 = [builder2 playerCommandEnabled:0 command:6 chain:chain2];

  if ((v6 & 1) != 0 || v9)
  {
    v10 = [(_MPCPlayerCommand *)[_MPCPlayerShuffleCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerShuffleCommand *)v10 setCurrentShuffleType:[(MPCPlayerResponseTracklist *)self shuffleType]];
    [(_MPCPlayerShuffleCommand *)v10 setSupportsChangeShuffle:v6];
    [(_MPCPlayerShuffleCommand *)v10 setSupportsAdvanceShuffle:v9];
    builder3 = [WeakRetained builder];
    v12 = *MEMORY[0x1E69B0D68];
    chain3 = [WeakRetained chain];
    v14 = [builder3 playerCommandOptionValue:&unk_1F45999A0 forKey:v12 command:26 chain:chain3];
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v6 = [builder playerCommandEnabled:0 command:25 chain:chain];

  builder2 = [WeakRetained builder];
  chain2 = [WeakRetained chain];
  v9 = [builder2 playerCommandEnabled:0 command:7 chain:chain2];

  if ((v6 & 1) != 0 || v9)
  {
    v10 = [(_MPCPlayerCommand *)[_MPCPlayerRepeatCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerRepeatCommand *)v10 setCurrentRepeatType:[(MPCPlayerResponseTracklist *)self repeatType]];
    [(_MPCPlayerRepeatCommand *)v10 setSupportsChangeRepeat:v6];
    [(_MPCPlayerRepeatCommand *)v10 setSupportsAdvanceRepeat:v9];
    builder3 = [WeakRetained builder];
    v12 = *MEMORY[0x1E69B0D60];
    chain3 = [WeakRetained chain];
    v14 = [builder3 playerCommandOptionValue:&unk_1F4599988 forKey:v12 command:25 chain:chain3];
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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:130 chain:chain];

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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:125 chain:chain];

  builder2 = [WeakRetained builder];
  chain2 = [WeakRetained chain];
  v8 = [builder2 playerCommandEnabled:0 command:121 chain:chain2];

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

  builder3 = [WeakRetained builder];
  v11 = *MEMORY[0x1E69B0D30];
  chain3 = [WeakRetained chain];
  v13 = MEMORY[0x1E695E0F0];
  v14 = [builder3 playerCommandOptionValue:MEMORY[0x1E695E0F0] forKey:v11 command:125 chain:chain3];
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
  builder4 = [WeakRetained builder];
  v25 = *MEMORY[0x1E69B0D38];
  chain4 = [WeakRetained chain];
  v27 = [builder4 playerCommandOptionValue:v13 forKey:v25 command:125 chain:chain4];
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
  builder5 = [WeakRetained builder];
  v38 = *MEMORY[0x1E69B0D28];
  chain5 = [WeakRetained chain];
  v40 = MEMORY[0x1E695E0F0];
  v41 = [builder5 playerCommandOptionValue:MEMORY[0x1E695E0F0] forKey:v38 command:125 chain:chain5];
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
  builder6 = [WeakRetained builder];
  request = [WeakRetained request];
  queueSectionProperties = [request queueSectionProperties];
  chain6 = [WeakRetained chain];
  v50 = [builder6 lastSectionModelObject:0 propertySet:queueSectionProperties chain:chain6];

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
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:122 chain:chain];

  if (v5)
  {
    v6 = [(_MPCPlayerCommand *)[_MPCPlayerResetTracklistCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerResetTracklistCommand *)v6 setSupportsSetQueueCommand:1];
    builder2 = [WeakRetained builder];
    v8 = *MEMORY[0x1E69B0D20];
    chain2 = [WeakRetained chain];
    v10 = MEMORY[0x1E695E0F8];
    v11 = [builder2 playerCommandOptionValue:MEMORY[0x1E695E0F8] forKey:v8 command:122 chain:chain2];
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

    builder3 = [WeakRetained builder];
    v15 = *MEMORY[0x1E69B0D38];
    chain3 = [WeakRetained chain];
    v17 = MEMORY[0x1E695E0F0];
    v18 = [builder3 playerCommandOptionValue:MEMORY[0x1E695E0F0] forKey:v15 command:122 chain:chain3];
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
    builder4 = [WeakRetained builder];
    v29 = *MEMORY[0x1E69B0D28];
    chain4 = [WeakRetained chain];
    v31 = [builder4 playerCommandOptionValue:v17 forKey:v29 command:122 chain:chain4];
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

- (id)representativeSectionForDisplaySection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (sectionCopy == @"MPCPlayerResponseTracklistDisplaySectionNextItems" || (v6 = [(__CFString *)sectionCopy isEqual:@"MPCPlayerResponseTracklistDisplaySectionNextItems"], v5, v6))
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

- (id)displayIndexPathForStructuredIndexPath:(id)path
{
  displayItems = self->_displayItems;
  pathCopy = path;
  dataSource = [(MPSectionedCollection *)displayItems dataSource];
  v6 = [dataSource displayIndexPathForStructuredIndexPath:pathCopy];

  return v6;
}

- (id)structuredIndexPathForDisplayIndexPath:(id)path
{
  displayItems = self->_displayItems;
  pathCopy = path;
  dataSource = [(MPSectionedCollection *)displayItems dataSource];
  v6 = [dataSource structuredIndexPathForDisplayIndexPath:pathCopy];

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

- (MPCPlayerResponseTracklist)initWithResponse:(id)response
{
  responseCopy = response;
  v48.receiver = self;
  v48.super_class = MPCPlayerResponseTracklist;
  v5 = [(MPCPlayerResponseTracklist *)&v48 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_response, responseCopy);
    builder = [responseCopy builder];
    chain = [responseCopy chain];
    v9 = [builder tracklistUniqueIdentifier:@"<missing queue identifier>" chain:chain];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v9;

    builder2 = [responseCopy builder];
    chain2 = [responseCopy chain];
    v6->_lastChangeDirection = [builder2 playerLastChangeDirection:0 chain:chain2];

    builder3 = [responseCopy builder];
    chain3 = [responseCopy chain];
    v15 = [builder3 playerPlayingItemIndexPath:0 chain:chain3];
    playingItemIndexPath = v6->_playingItemIndexPath;
    v6->_playingItemIndexPath = v15;

    builder4 = [responseCopy builder];
    chain4 = [responseCopy chain];
    v6->_playingItemGlobalIndex = [builder4 playerPlayingItemGlobalIndex:0 chain:chain4];

    builder5 = [responseCopy builder];
    chain5 = [responseCopy chain];
    v6->_globalItemCount = [builder5 playerGlobalItemCount:0 chain:chain5];

    builder6 = [responseCopy builder];
    chain6 = [responseCopy chain];
    v6->_upNextItemCount = [builder6 playerUpNextItemCount:0 chain:chain6];

    builder7 = [responseCopy builder];
    chain7 = [responseCopy chain];
    v6->_explicitContentState = [builder7 playerExplicitContentState:0 chain:chain7];

    builder8 = [responseCopy builder];
    chain8 = [responseCopy chain];
    v6->_repeatType = [builder8 playerRepeatType:0 chain:chain8];

    builder9 = [responseCopy builder];
    chain9 = [responseCopy chain];
    v6->_shuffleType = [builder9 playerShuffleType:0 chain:chain9];

    builder10 = [responseCopy builder];
    chain10 = [responseCopy chain];
    v6->_actionAtQueueEnd = [builder10 playerQueueEndAction:1 chain:chain10];

    builder11 = [responseCopy builder];
    chain11 = [responseCopy chain];
    v6->_transitionsActive = [builder11 transitionsActive:0 chain:chain11];

    builder12 = [responseCopy builder];
    chain12 = [responseCopy chain];
    v6->_transitionStyle = [builder12 transitionStyle:0 chain:chain12];

    v35 = objc_alloc(MEMORY[0x1E6970560]);
    v36 = [[_MPCPlayerResponseTracklistDataSource alloc] initWithResponse:responseCopy playingItemIndexPath:v6->_playingItemIndexPath];
    v37 = [v35 initWithDataSource:v36];
    items = v6->_items;
    v6->_items = v37;

    builder13 = [responseCopy builder];
    chain13 = [responseCopy chain];
    v41 = [builder13 tracklistProperties:MEMORY[0x1E695E0F8] chain:chain13];

    v42 = [v41 objectForKeyedSubscript:@"tailInsertionContentItemID"];
    v43 = objc_alloc(MEMORY[0x1E6970560]);
    v44 = [[_MPCPlayerResponseTracklistDisplayDataSource alloc] initWithResponse:responseCopy tracklistItems:v6->_items playingItemIndexPath:v6->_playingItemIndexPath tailInsertionContentItemID:v42];
    v45 = [v43 initWithDataSource:v44];
    displayItems = v6->_displayItems;
    v6->_displayItems = v45;
  }

  return v6;
}

+ (id)insertCommandForPlayerPath:(id)path devices:(id)devices
{
  devicesCopy = devices;
  pathCopy = path;
  v7 = [(_MPCPlayerCommand *)[_MPCPlayerInsertItemsCommand alloc] initWithPlayerPath:pathCopy];

  [(_MPCPlayerInsertItemsCommand *)v7 setDevices:devicesCopy];

  return v7;
}

+ (id)resetCommandForPlayerPath:(id)path devices:(id)devices
{
  devicesCopy = devices;
  pathCopy = path;
  v7 = [(_MPCPlayerCommand *)[_MPCPlayerResetTracklistCommand alloc] initWithPlayerPath:pathCopy];

  [(_MPCPlayerResetTracklistCommand *)v7 setDevices:devicesCopy];

  return v7;
}

@end