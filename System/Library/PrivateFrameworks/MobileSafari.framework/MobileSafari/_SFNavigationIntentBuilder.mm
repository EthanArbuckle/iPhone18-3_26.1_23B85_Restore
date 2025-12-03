@interface _SFNavigationIntentBuilder
+ (BOOL)canCreateNavigationIntentForDropSession:(id)session;
+ (BOOL)shouldOpenBookmarkFolderAsTabs;
+ (id)builder;
+ (id)builderWithModifierFlags:(int64_t)flags;
+ (void)registerBookmarkCollectionFactory:(id)factory;
- (BOOL)_shouldOrderToForeground;
- (id)_initWithModifierFlags:(int64_t)flags;
- (id)_initializeNavigationIntentWithType:(unint64_t)type value:(id)value;
- (id)_navigationIntentForMKMapItem:(id)item;
- (id)_navigationIntentWithItems:(id)items;
- (id)navigationIntentWithBookmark:(id)bookmark;
- (id)navigationIntentWithHighlight:(id)highlight;
- (id)navigationIntentWithMultipleIntents:(id)intents;
- (id)navigationIntentWithOpenURLContexts:(id)contexts;
- (id)navigationIntentWithRecentlyClosedTabStateData:(id)data;
- (id)navigationIntentWithSearchText:(id)text;
- (id)navigationIntentWithServiceWorkerOpenURL:(id)l;
- (id)navigationIntentWithText:(id)text;
- (id)navigationIntentWithWebClip:(id)clip;
- (int64_t)_navigationPolicy;
- (int64_t)_navigationPolicyForCreatingNewTabOrWindow;
- (int64_t)_navigationPolicyForNavigationEvent;
- (int64_t)_navigationPolicyForStandardEvent;
- (void)buildNavigationIntentForDropSession:(id)session completionHandler:(id)handler;
- (void)buildNavigationIntentForItemProviders:(id)providers completionHandler:(id)handler;
@end

@implementation _SFNavigationIntentBuilder

+ (id)builder
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  sf_currentKeyboardModifierFlags = [mEMORY[0x1E69DC668] sf_currentKeyboardModifierFlags];

  return [_SFNavigationIntentBuilder builderWithModifierFlags:sf_currentKeyboardModifierFlags];
}

+ (id)builderWithModifierFlags:(int64_t)flags
{
  v3 = [[_SFNavigationIntentBuilder alloc] _initWithModifierFlags:flags];

  return v3;
}

- (id)_initWithModifierFlags:(int64_t)flags
{
  v8.receiver = self;
  v8.super_class = _SFNavigationIntentBuilder;
  v4 = [(_SFNavigationIntentBuilder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = flags;
    *(v4 + 24) = xmmword_18BC3DDE0;
    *(v4 + 11) = 257;
    v6 = v4;
  }

  return v5;
}

- (id)_initializeNavigationIntentWithType:(unint64_t)type value:(id)value
{
  valueCopy = value;
  v7 = [[_SFNavigationIntent alloc] _initWithType:type value:valueCopy policy:[(_SFNavigationIntentBuilder *)self _navigationPolicy]];

  [v7 setShouldRelateToSourceTab:self->_prefersRelationToSourceTab];

  return v7;
}

- (id)navigationIntentWithBookmark:(id)bookmark
{
  v28 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  if ([bookmarkCopy isFolder])
  {
    managedBookmarkUUID = [bookmarkCopy managedBookmarkUUID];

    if (managedBookmarkUUID)
    {
      v6 = +[SFManagedBookmarksController sharedController];
      topLevelManagedBookmarkFolder = [v6 topLevelManagedBookmarkFolder];
      managedBookmarkUUID2 = [bookmarkCopy managedBookmarkUUID];
      v9 = [topLevelManagedBookmarkFolder findChildBookmarkWithUUID:managedBookmarkUUID2];
      allDescendantsAsWebBookmarks = [v9 allDescendantsAsWebBookmarks];
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

      allDescendantsAsWebBookmarks = [v6 descendantsOfBookmarkFolder:bookmarkCopy];
    }

    v12 = [allDescendantsAsWebBookmarks count];
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

        v15 = [allDescendantsAsWebBookmarks subarrayWithRange:{v14, v13}];

        allDescendantsAsWebBookmarks = v15;
      }

      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allDescendantsAsWebBookmarks, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      allDescendantsAsWebBookmarks = allDescendantsAsWebBookmarks;
      v17 = [allDescendantsAsWebBookmarks countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(allDescendantsAsWebBookmarks);
            }

            v21 = [(_SFNavigationIntentBuilder *)self navigationIntentWithBookmark:*(*(&v23 + 1) + 8 * i), v23];
            [v16 addObject:v21];
          }

          v18 = [allDescendantsAsWebBookmarks countByEnumeratingWithState:&v23 objects:v27 count:16];
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
    v11 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:0 value:bookmarkCopy];
    [v11 setProvenance:2];
  }

  return v11;
}

- (id)navigationIntentWithRecentlyClosedTabStateData:(id)data
{
  self->_prefersOpenInNewTab = 1;
  self->_preferredTabOrder = 1;
  self->_prefersRelationToSourceTab = 0;
  return [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:3 value:data];
}

- (id)navigationIntentWithText:(id)text
{
  safari_stringByRemovingExcessWhitespace = [text safari_stringByRemovingExcessWhitespace];
  v5 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:4 value:safari_stringByRemovingExcessWhitespace];

  return v5;
}

- (id)navigationIntentWithSearchText:(id)text
{
  safari_stringByRemovingExcessWhitespace = [text safari_stringByRemovingExcessWhitespace];
  v5 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:5 value:safari_stringByRemovingExcessWhitespace];

  return v5;
}

- (id)navigationIntentWithWebClip:(id)clip
{
  clipCopy = clip;
  v4 = [[_SFNavigationIntent alloc] _initWithType:7 value:clipCopy policy:3];

  return v4;
}

- (id)navigationIntentWithServiceWorkerOpenURL:(id)l
{
  lCopy = l;
  v4 = [[_SFNavigationIntent alloc] _initWithType:8 value:lCopy policy:3];

  return v4;
}

- (id)navigationIntentWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = WBSURLForHighlight();
  v6 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:6 value:v5];

  [v6 setHighlight:highlightCopy];

  return v6;
}

- (id)navigationIntentWithMultipleIntents:(id)intents
{
  intentsCopy = intents;
  if ([intentsCopy count] == 1)
  {
    v5 = [intentsCopy objectAtIndexedSubscript:0];

    [v5 setIsChildIntent:1];
  }

  else
  {
    v6 = flattenedNavigationIntents(intentsCopy);

    v5 = [(_SFNavigationIntentBuilder *)self _initializeNavigationIntentWithType:11 value:v6];
  }

  return v5;
}

- (id)navigationIntentWithOpenURLContexts:(id)contexts
{
  self->_prefersRelationToSourceTab = 0;
  self->_prefersOpenInNewTab = 1;
  self->_preferredTabOrder = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___SFNavigationIntentBuilder_navigationIntentWithOpenURLContexts___block_invoke;
  v7[3] = &unk_1E721C968;
  v7[4] = self;
  v4 = [contexts safari_mapObjectsUsingBlock:v7];
  v5 = [(_SFNavigationIntentBuilder *)self navigationIntentWithMultipleIntents:v4];

  return v5;
}

+ (void)registerBookmarkCollectionFactory:(id)factory
{
  v3 = _Block_copy(factory);
  v4 = bookmarkCollectionFactory;
  bookmarkCollectionFactory = v3;
}

+ (BOOL)canCreateNavigationIntentForDropSession:(id)session
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E696F0C8];
  v3 = MEMORY[0x1E695DEC8];
  sessionCopy = session;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = allowedClasses_0();
  v7 = [_SFDropSession dropSession:sessionCopy containsItemsMatching:localObjectLoader_0 allowedTypeIdentifiers:v5 allowedClasses:v6, v9, v10];

  return v7;
}

- (void)buildNavigationIntentForDropSession:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___SFNavigationIntentBuilder_buildNavigationIntentForDropSession_completionHandler___block_invoke;
  v8[3] = &unk_1E721C990;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [_SFDropSession dropSession:session loadObjectsUsingLocalObjectLoader:localObjectLoader_0 objectLoader:objectLoader_0 completionHandler:v8];
}

- (void)buildNavigationIntentForItemProviders:(id)providers completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E696ACA0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86___SFNavigationIntentBuilder_buildNavigationIntentForItemProviders_completionHandler___block_invoke;
  v9[3] = &unk_1E721C990;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 safari_loadObjectsFromItemProviders:providers usingLoader:objectLoader_0 completionHandler:v9];
}

- (id)_navigationIntentWithItems:(id)items
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___SFNavigationIntentBuilder__navigationIntentWithItems___block_invoke;
  v7[3] = &unk_1E721C9B8;
  v7[4] = self;
  v4 = [items safari_mapAndFilterObjectsUsingBlock:v7];
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

- (id)_navigationIntentForMKMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isCurrentLocation])
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = [itemCopy url];
  v7 = v6;
  if (v6)
  {
    safari_originalDataAsString = [v6 safari_originalDataAsString];
  }

  else
  {
    safari_originalDataAsString = [itemCopy name];
    if (!safari_originalDataAsString)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = [(_SFNavigationIntentBuilder *)self navigationIntentWithText:safari_originalDataAsString];
LABEL_7:

LABEL_8:

  return v5;
}

+ (BOOL)shouldOpenBookmarkFolderAsTabs
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = ([mEMORY[0x1E69DC668] sf_currentKeyboardModifierFlags] >> 20) & 1;

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
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = [safari_browserDefaults BOOLForKey:@"OpenLinksInBackground"] ^ 1;
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

  _shouldOrderToForeground = [(_SFNavigationIntentBuilder *)self _shouldOrderToForeground];
  if (_shouldOrderToForeground != [(_SFNavigationIntentBuilder *)self _hasModifierFlag:0x20000])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end