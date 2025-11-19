@interface _SFNavigationIntentBuilder
+ (BOOL)canCreateNavigationIntentForDropSession:(id)a3;
+ (BOOL)shouldOpenBookmarkFolderAsTabs;
+ (id)builder;
+ (id)builderWithModifierFlags:(int64_t)a3;
+ (void)registerBookmarkCollectionFactory:(id)a3;
- (BOOL)_shouldOrderToForeground;
- (id)_initWithModifierFlags:(int64_t)a3;
- (id)_initializeNavigationIntentWithType:(unint64_t)a3 value:(id)a4;
- (id)_navigationIntentForMKMapItem:(id)a3;
- (id)_navigationIntentWithItems:(id)a3;
- (id)navigationIntentWithBookmark:(id)a3;
- (id)navigationIntentWithHighlight:(id)a3;
- (id)navigationIntentWithMultipleIntents:(id)a3;
- (id)navigationIntentWithOpenURLContexts:(id)a3;
- (id)navigationIntentWithRecentlyClosedTabStateData:(id)a3;
- (id)navigationIntentWithSearchText:(id)a3;
- (id)navigationIntentWithServiceWorkerOpenURL:(id)a3;
- (id)navigationIntentWithText:(id)a3;
- (id)navigationIntentWithWebClip:(id)a3;
- (int64_t)_navigationPolicy;
- (int64_t)_navigationPolicyForCreatingNewTabOrWindow;
- (int64_t)_navigationPolicyForNavigationEvent;
- (int64_t)_navigationPolicyForStandardEvent;
- (void)buildNavigationIntentForDropSession:(id)a3 completionHandler:(id)a4;
- (void)buildNavigationIntentForItemProviders:(id)a3 completionHandler:(id)a4;
@end

@implementation _SFNavigationIntentBuilder

+ (id)builder
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 sf_currentKeyboardModifierFlags];

  return [_SFNavigationIntentBuilder builderWithModifierFlags:v3];
}

+ (id)builderWithModifierFlags:(int64_t)a3
{
  v3 = [[_SFNavigationIntentBuilder alloc] _initWithModifierFlags:a3];

  return v3;
}

- (id)_initWithModifierFlags:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _SFNavigationIntentBuilder;
  v4 = [(_SFNavigationIntentBuilder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a3;
    *(v4 + 24) = xmmword_18BC3DDE0;
    *(v4 + 11) = 257;
    v6 = v4;
  }

  return v5;
}

- (id)_initializeNavigationIntentWithType:(unint64_t)a3 value:(id)a4
{
  v6 = a4;
  v7 = [[_SFNavigationIntent alloc] _initWithType:a3 value:v6 policy:[(_SFNavigationIntentBuilder *)self _navigationPolicy]];

  [v7 setShouldRelateToSourceTab:self->_prefersRelationToSourceTab];

  return v7;
}

- (id)navigationIntentWithBookmark:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isFolder])
  {
    v5 = [v4 managedBookmarkUUID];

    if (v5)
    {
      v6 = +[SFManagedBookmarksController sharedController];
      v7 = [v6 topLevelManagedBookmarkFolder];
      v8 = [v4 managedBookmarkUUID];
      v9 = [v7 findChildBookmarkWithUUID:v8];
      v10 = [v9 allDescendantsAsWebBookmarks];
    }

    else
    {
      if (bookmarkCollectionFactory)
      {
        v6 = (*(bookmarkCollectionFactory + 16))();
      }

      else
      {
        v6 = 0;
      }

      v10 = [v6 descendantsOfBookmarkFolder:v4];
    }

    v12 = [v10 count];
    if (v12)
    {
      if (!self->_shouldPromptBeforeHandlingMultipleIntents)
      {
        if (v12 >= 0x64)
        {
          v13 = 100;
        }

        else
        {
          v13 = v12;
        }

        if (v12 <= 0x63)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12 - 100;
        }

        v15 = [v10 subarrayWithRange:{v14, v13}];

        v10 = v15;
      }

      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v10;
      v17 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v10);
            }

            v21 = [(_SFNavigationIntentBuilder *)self navigationIntentWithBookmark:*(*(&v23 + 1) + 8 * i), v23];
            [v16 addObject:v21];
          }

          v18 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v18);
      }

      v11 = [(_SFNavigationIntentBuilder *)self navigationIntentWithMultipleIntents:v16];
      [v11 setShouldPromptBeforeHandling:self->_shouldPromptBeforeHandlingMultipleIntents];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:0 value:v4];
    [v11 setProvenance:2];
  }

  return v11;
}

- (id)navigationIntentWithRecentlyClosedTabStateData:(id)a3
{
  self->_prefersOpenInNewTab = 1;
  self->_preferredTabOrder = 1;
  self->_prefersRelationToSourceTab = 0;
  return [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:3 value:a3];
}

- (id)navigationIntentWithText:(id)a3
{
  v4 = [a3 safari_stringByRemovingExcessWhitespace];
  v5 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:4 value:v4];

  return v5;
}

- (id)navigationIntentWithSearchText:(id)a3
{
  v4 = [a3 safari_stringByRemovingExcessWhitespace];
  v5 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:5 value:v4];

  return v5;
}

- (id)navigationIntentWithWebClip:(id)a3
{
  v3 = a3;
  v4 = [[_SFNavigationIntent alloc] _initWithType:7 value:v3 policy:3];

  return v4;
}

- (id)navigationIntentWithServiceWorkerOpenURL:(id)a3
{
  v3 = a3;
  v4 = [[_SFNavigationIntent alloc] _initWithType:8 value:v3 policy:3];

  return v4;
}

- (id)navigationIntentWithHighlight:(id)a3
{
  v4 = a3;
  v5 = WBSURLForHighlight();
  v6 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:6 value:v5];

  [v6 setHighlight:v4];

  return v6;
}

- (id)navigationIntentWithMultipleIntents:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];

    [v5 setIsChildIntent:1];
  }

  else
  {
    v6 = flattenedNavigationIntents(v4);

    v5 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:11 value:v6];
  }

  return v5;
}

- (id)navigationIntentWithOpenURLContexts:(id)a3
{
  self->_prefersRelationToSourceTab = 0;
  self->_prefersOpenInNewTab = 1;
  self->_preferredTabOrder = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___SFNavigationIntentBuilder_navigationIntentWithOpenURLContexts___block_invoke;
  v7[3] = &unk_1E721C968;
  v7[4] = self;
  v4 = [a3 safari_mapObjectsUsingBlock:v7];
  v5 = [(_SFNavigationIntentBuilder *)self navigationIntentWithMultipleIntents:v4];

  return v5;
}

+ (void)registerBookmarkCollectionFactory:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = bookmarkCollectionFactory;
  bookmarkCollectionFactory = v3;
}

+ (BOOL)canCreateNavigationIntentForDropSession:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E696F0C8];
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = allowedClasses_0();
  v7 = [_SFDropSession dropSession:v4 containsItemsMatching:localObjectLoader_0 allowedTypeIdentifiers:v5 allowedClasses:v6, v9, v10];

  return v7;
}

- (void)buildNavigationIntentForDropSession:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___SFNavigationIntentBuilder_buildNavigationIntentForDropSession_completionHandler___block_invoke;
  v8[3] = &unk_1E721C990;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [_SFDropSession dropSession:a3 loadObjectsUsingLocalObjectLoader:localObjectLoader_0 objectLoader:objectLoader_0 completionHandler:v8];
}

- (void)buildNavigationIntentForItemProviders:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696ACA0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86___SFNavigationIntentBuilder_buildNavigationIntentForItemProviders_completionHandler___block_invoke;
  v9[3] = &unk_1E721C990;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 safari_loadObjectsFromItemProviders:a3 usingLoader:objectLoader_0 completionHandler:v9];
}

- (id)_navigationIntentWithItems:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___SFNavigationIntentBuilder__navigationIntentWithItems___block_invoke;
  v7[3] = &unk_1E721C9B8;
  v7[4] = self;
  v4 = [a3 safari_mapAndFilterObjectsUsingBlock:v7];
  if ([v4 count])
  {
    v5 = [(_SFNavigationIntentBuilder *)self navigationIntentWithMultipleIntents:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_navigationIntentForMKMapItem:(id)a3
{
  v4 = a3;
  if ([v4 isCurrentLocation])
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = [v4 url];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 safari_originalDataAsString];
  }

  else
  {
    v8 = [v4 name];
    if (!v8)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = [(_SFNavigationIntentBuilder *)self navigationIntentWithText:v8];
LABEL_7:

LABEL_8:

  return v5;
}

+ (BOOL)shouldOpenBookmarkFolderAsTabs
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = ([v2 sf_currentKeyboardModifierFlags] >> 20) & 1;

  return v3;
}

- (BOOL)_shouldOrderToForeground
{
  preferredTabOrder = self->_preferredTabOrder;
  if (preferredTabOrder == 2)
  {
    LOBYTE(v4) = 0;
  }

  else if (preferredTabOrder)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = [v3 BOOLForKey:@"OpenLinksInBackground"] ^ 1;
  }

  return v4;
}

- (int64_t)_navigationPolicy
{
  if (self->_navigationType == -1)
  {
    result = [(_SFNavigationIntentBuilder *)self _navigationPolicyForStandardEvent];
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = [(_SFNavigationIntentBuilder *)self _navigationPolicyForNavigationEvent];
    if (result)
    {
      return result;
    }
  }

  if (self->_prefersOpenInNewTabReusingExistingBlankTabIfPossible)
  {
    return 3;
  }

  return result;
}

- (int64_t)_navigationPolicyForStandardEvent
{
  if (!self->_modifierFlags && !self->_prefersOpenInNewTab && !self->_prefersOpenInNewWindow)
  {
    return 0;
  }

  if ([(_SFNavigationIntentBuilder *)self _hasModifierFlag:0x100000]|| self->_prefersOpenInNewTab || self->_prefersOpenInNewWindow)
  {

    return [(_SFNavigationIntentBuilder *)self _navigationPolicyForCreatingNewTabOrWindow];
  }

  else if ([(_SFNavigationIntentBuilder *)self _modifiersEqualToModifierIgnoringCapsLock:0x20000])
  {
    return 5;
  }

  else if ([(_SFNavigationIntentBuilder *)self _modifiersEqualToModifierIgnoringCapsLock:0x80000])
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_navigationPolicyForNavigationEvent
{
  navigationType = self->_navigationType;
  if ((navigationType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  if ([(_SFNavigationIntentBuilder *)self _modifiersEqualToModifierIgnoringCapsLock:0x20000])
  {
    v5 = navigationType == 1 || navigationType == 4;
    if (!v5 && !self->_prefersOpenInNewTab)
    {
      return 5;
    }
  }

  if ([(_SFNavigationIntentBuilder *)self _hasModifierFlag:0x100000]|| self->_prefersOpenInNewTab)
  {

    return [(_SFNavigationIntentBuilder *)self _navigationPolicyForCreatingNewTabOrWindow];
  }

  else
  {
    if (![(_SFNavigationIntentBuilder *)self _hasModifierFlag:0x80000])
    {
      return 0;
    }

    result = 0;
    if (navigationType != 1 && navigationType != 4)
    {
      if ([(_SFNavigationIntentBuilder *)self _modifiersEqualToModifierIgnoringCapsLock:786432])
      {
        return 0;
      }

      else
      {
        return 6;
      }
    }
  }

  return result;
}

- (int64_t)_navigationPolicyForCreatingNewTabOrWindow
{
  if ([(_SFNavigationIntentBuilder *)self _hasModifierFlag:0x80000]|| self->_prefersOpenInNewWindow)
  {
    return 4;
  }

  v4 = [(_SFNavigationIntentBuilder *)self _shouldOrderToForeground];
  if (v4 != [(_SFNavigationIntentBuilder *)self _hasModifierFlag:0x20000])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end