@interface _MPCPlayerChangeItemCommand
- (_MPCPlayerChangeItemCommand)initWithResponse:(id)response changeItemSupport:(unint64_t)support;
- (id)changeToItem:(id)item;
- (id)nextChapter;
- (id)nextItem;
- (id)nextSection;
- (id)previousChapter;
- (id)previousItem;
- (id)previousItemDeferringToPlaybackQueuePosition;
- (id)previousSection;
@end

@implementation _MPCPlayerChangeItemCommand

- (id)changeToItem:(id)item
{
  v25[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ((self->_changeItemSupport & 0x80) != 0 && (-[_MPCPlayerCommand response](self, "response"), v5 = objc_claimAutoreleasedReturnValue(), [itemCopy response], v6 = objc_claimAutoreleasedReturnValue(), v7 = v5 == v6, v6, v5, -[_MPCPlayerCommand response](self, "response"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "builder"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "indexPath"), v10 = objc_claimAutoreleasedReturnValue(), -[_MPCPlayerCommand response](self, "response"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "chain"), v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v9, "playerItemShouldDisableJumpToItem:atIndexPath:boundsCheck:chain:", 0, v10, v7, v12), v12, v11, v10, v9, v8, (v7 & 1) == 0))
  {
    metadataObject = [itemCopy metadataObject];
    identifiers = [metadataObject identifiers];
    contentItemID = [identifiers contentItemID];

    if ([contentItemID length])
    {
      v24 = *MEMORY[0x1E69B10C8];
      v25[0] = contentItemID;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      response = [(_MPCPlayerCommand *)self response];
      v19 = [MPCPlayerCommandRequest alloc];
      controller = [response controller];
      request = [response request];
      label = [request label];
      v13 = [(MPCPlayerCommandRequest *)v19 initWithMediaRemoteCommand:131 options:v17 controller:controller label:label];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)nextChapter
{
  if ((self->_changeItemSupport & 0x40) != 0)
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:100 options:0 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)nextSection
{
  if ((self->_changeItemSupport & 0x20) != 0)
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:109 options:0 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)nextItem
{
  if ((self->_changeItemSupport & 0x10) != 0)
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    tracklist = [response tracklist];
    playingItem = [tracklist playingItem];
    contentItemIdentifier = [playingItem contentItemIdentifier];

    if (contentItemIdentifier)
    {
      [v4 setObject:contentItemIdentifier forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v8 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:4 options:v4 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)previousChapter
{
  if ((self->_changeItemSupport & 8) != 0)
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:101 options:0 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)previousSection
{
  if ((self->_changeItemSupport & 4) != 0)
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:110 options:0 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)previousItemDeferringToPlaybackQueuePosition
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((self->_changeItemSupport & 2) != 0)
  {
    v11 = *MEMORY[0x1E69B1210];
    v12[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    response = [(_MPCPlayerCommand *)self response];
    v6 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:5 options:v4 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)previousItem
{
  if ((self->_changeItemSupport & 2) != 0)
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    tracklist = [response tracklist];
    playingItem = [tracklist playingItem];
    contentItemIdentifier = [playingItem contentItemIdentifier];

    if (contentItemIdentifier)
    {
      [v4 setObject:contentItemIdentifier forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v8 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v2 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:5 options:v4 controller:controller label:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_MPCPlayerChangeItemCommand)initWithResponse:(id)response changeItemSupport:(unint64_t)support
{
  v6.receiver = self;
  v6.super_class = _MPCPlayerChangeItemCommand;
  result = [(_MPCPlayerCommand *)&v6 initWithResponse:response];
  if (result)
  {
    result->_changeItemSupport = support;
  }

  return result;
}

@end