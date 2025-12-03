@interface _MPCPlayerReorderItemsCommand
- (BOOL)canMoveItem:(id)item;
- (id)limitedDisplayIndexPathForMovingIndexPath:(id)path toProprosedIndexPath:(id)indexPath;
- (id)limitedIndexPathForMovingIndexPath:(id)path toProprosedIndexPath:(id)indexPath;
- (id)moveItem:(id)item afterItem:(id)afterItem;
- (id)moveItem:(id)item beforeItem:(id)beforeItem;
@end

@implementation _MPCPlayerReorderItemsCommand

- (id)moveItem:(id)item beforeItem:(id)beforeItem
{
  v49[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  beforeItemCopy = beforeItem;
  response = [(_MPCPlayerCommand *)self response];
  indexPath = [itemCopy indexPath];
  indexPath2 = [beforeItemCopy indexPath];
  v11 = [(_MPCPlayerReorderItemsCommand *)self limitedIndexPathForMovingIndexPath:indexPath toProprosedIndexPath:indexPath2];

  indexPath3 = [beforeItemCopy indexPath];
  LODWORD(indexPath2) = [v11 isEqual:indexPath3];

  if (indexPath2)
  {
    metadataObject = [itemCopy metadataObject];
    identifiers = [metadataObject identifiers];
    contentItemID = [identifiers contentItemID];

    metadataObject2 = [beforeItemCopy metadataObject];
    identifiers2 = [metadataObject2 identifiers];
    contentItemID2 = [identifiers2 contentItemID];

    if ([contentItemID length] && objc_msgSend(contentItemID2, "length"))
    {
      v19 = MEMORY[0x1E695DF90];
      v20 = *MEMORY[0x1E69B1138];
      v48[0] = *MEMORY[0x1E69B10C8];
      v48[1] = v20;
      v45 = contentItemID2;
      v46 = contentItemID;
      v49[0] = contentItemID;
      v49[1] = contentItemID2;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      v47 = [v19 dictionaryWithDictionary:v21];

      tracklist = [response tracklist];
      items = [tracklist items];
      tracklist2 = [response tracklist];
      items2 = [tracklist2 items];
      v25 = [items2 totalItemCount] - 1;

      tracklist3 = [response tracklist];
      items3 = [tracklist3 items];
      indexPath4 = [beforeItemCopy indexPath];
      v29 = [items3 globalIndexForIndexPath:indexPath4] - 1;

      if (v25 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v25;
      }

      v31 = [items indexPathForGlobalIndex:v30];

      if (v31)
      {
        tracklist4 = [response tracklist];
        items4 = [tracklist4 items];
        v34 = [items4 itemAtIndexPath:v31];

        metadataObject3 = [v34 metadataObject];
        identifiers3 = [metadataObject3 identifiers];
        contentItemID3 = [identifiers3 contentItemID];

        if ([contentItemID3 length])
        {
          [v47 setObject:contentItemID3 forKeyedSubscript:*MEMORY[0x1E69B1130]];
        }
      }

      v38 = [MPCPlayerCommandRequest alloc];
      controller = [response controller];
      request = [response request];
      label = [request label];
      v42 = [(MPCPlayerCommandRequest *)v38 initWithMediaRemoteCommand:130 options:v47 controller:controller label:label];

      contentItemID2 = v45;
      contentItemID = v46;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (id)moveItem:(id)item afterItem:(id)afterItem
{
  v34[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  afterItemCopy = afterItem;
  response = [(_MPCPlayerCommand *)self response];
  tracklist = [response tracklist];
  indexPath = [itemCopy indexPath];
  v11 = [tracklist displayIndexPathForStructuredIndexPath:indexPath];

  tracklist2 = [response tracklist];
  indexPath2 = [afterItemCopy indexPath];
  v14 = [tracklist2 displayIndexPathForStructuredIndexPath:indexPath2];

  v15 = v14;
  v16 = [(_MPCPlayerReorderItemsCommand *)self limitedDisplayIndexPathForMovingIndexPath:v11 toProprosedIndexPath:v15];
  if ([v16 isEqual:v15])
  {
    metadataObject = [itemCopy metadataObject];
    identifiers = [metadataObject identifiers];
    contentItemID = [identifiers contentItemID];

    metadataObject2 = [afterItemCopy metadataObject];
    identifiers2 = [metadataObject2 identifiers];
    contentItemID2 = [identifiers2 contentItemID];

    if ([contentItemID length] && objc_msgSend(contentItemID2, "length"))
    {
      v23 = *MEMORY[0x1E69B1130];
      v33[0] = *MEMORY[0x1E69B10C8];
      v33[1] = v23;
      v34[0] = contentItemID;
      v34[1] = contentItemID2;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v29 = [MPCPlayerCommandRequest alloc];
      [response controller];
      v24 = v31 = contentItemID2;
      [response request];
      v25 = v32 = contentItemID;
      label = [v25 label];
      v27 = [(MPCPlayerCommandRequest *)v29 initWithMediaRemoteCommand:130 options:v30 controller:v24 label:label];

      contentItemID = v32;
      contentItemID2 = v31;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)limitedDisplayIndexPathForMovingIndexPath:(id)path toProprosedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([pathCopy isEqual:indexPathCopy])
  {
    v9 = pathCopy;
  }

  else
  {
    v36 = a2;
    selfCopy = self;
    response = [(_MPCPlayerCommand *)self response];
    tracklist = [response tracklist];
    displayItems = [tracklist displayItems];
    v13 = [displayItems globalIndexForIndexPath:pathCopy];

    tracklist2 = [response tracklist];
    displayItems2 = [tracklist2 displayItems];
    v39 = indexPathCopy;
    v16 = [displayItems2 globalIndexForIndexPath:indexPathCopy];

    v40 = pathCopy;
    section = [pathCopy section];
    if (v16 > v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    v18 = -1;
    if (v16 <= v13)
    {
      v18 = 1;
    }

    v38 = v18;
    if (v16 <= v13 || v13 <= v16)
    {
      v20 = v13;
      while (1)
      {
        tracklist3 = [response tracklist];
        items = [tracklist3 items];
        v23 = [items indexPathForGlobalIndex:v20];

        builder = [response builder];
        chain = [response chain];
        v26 = [builder playerItemEditingStyleFlags:0 atIndexPath:v23 chain:chain];

        tracklist4 = [response tracklist];
        displayItems3 = [tracklist4 displayItems];
        v29 = [displayItems3 indexPathForGlobalIndex:v20];

        section2 = [v29 section];
        if ((v26 & 1) == 0 || section != section2)
        {
          break;
        }

        v20 += v17;
        if (v16 <= v13)
        {
          v31 = v20 >= v16;
        }

        else
        {
          v31 = v20 <= v16;
        }

        if (!v31)
        {
          goto LABEL_19;
        }
      }

      tracklist5 = [response tracklist];
      displayItems4 = [tracklist5 displayItems];
      v9 = [displayItems4 indexPathForGlobalIndex:v20 + v38];

      if (!v9)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v36 object:selfCopy file:@"MPCPlayerResponseTracklist.m" lineNumber:1045 description:@"Invalid section collection (2)."];
      }

      indexPathCopy = v39;
      pathCopy = v40;
    }

    else
    {
LABEL_19:
      indexPathCopy = v39;
      v9 = v39;
      pathCopy = v40;
    }
  }

  return v9;
}

- (id)limitedIndexPathForMovingIndexPath:(id)path toProprosedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([pathCopy isEqual:indexPathCopy])
  {
    v8 = pathCopy;
  }

  else
  {
    response = [(_MPCPlayerCommand *)self response];
    tracklist = [response tracklist];
    v11 = [tracklist displayIndexPathForStructuredIndexPath:pathCopy];

    tracklist2 = [response tracklist];
    v13 = [tracklist2 displayIndexPathForStructuredIndexPath:indexPathCopy];

    v14 = [(_MPCPlayerReorderItemsCommand *)self limitedDisplayIndexPathForMovingIndexPath:v11 toProprosedIndexPath:v13];
    tracklist3 = [response tracklist];
    v8 = [tracklist3 structuredIndexPathForDisplayIndexPath:v14];
  }

  return v8;
}

- (BOOL)canMoveItem:(id)item
{
  itemCopy = item;
  response = [(_MPCPlayerCommand *)self response];
  builder = [response builder];
  indexPath = [itemCopy indexPath];

  chain = [response chain];
  v9 = [builder playerItemEditingStyleFlags:0 atIndexPath:indexPath chain:chain];

  return v9 & 1;
}

@end