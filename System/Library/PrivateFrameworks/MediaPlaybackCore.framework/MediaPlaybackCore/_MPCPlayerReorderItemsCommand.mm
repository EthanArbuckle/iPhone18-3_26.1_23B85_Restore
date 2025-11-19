@interface _MPCPlayerReorderItemsCommand
- (BOOL)canMoveItem:(id)a3;
- (id)limitedDisplayIndexPathForMovingIndexPath:(id)a3 toProprosedIndexPath:(id)a4;
- (id)limitedIndexPathForMovingIndexPath:(id)a3 toProprosedIndexPath:(id)a4;
- (id)moveItem:(id)a3 afterItem:(id)a4;
- (id)moveItem:(id)a3 beforeItem:(id)a4;
@end

@implementation _MPCPlayerReorderItemsCommand

- (id)moveItem:(id)a3 beforeItem:(id)a4
{
  v49[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlayerCommand *)self response];
  v9 = [v6 indexPath];
  v10 = [v7 indexPath];
  v11 = [(_MPCPlayerReorderItemsCommand *)self limitedIndexPathForMovingIndexPath:v9 toProprosedIndexPath:v10];

  v12 = [v7 indexPath];
  LODWORD(v10) = [v11 isEqual:v12];

  if (v10)
  {
    v13 = [v6 metadataObject];
    v14 = [v13 identifiers];
    v15 = [v14 contentItemID];

    v16 = [v7 metadataObject];
    v17 = [v16 identifiers];
    v18 = [v17 contentItemID];

    if ([v15 length] && objc_msgSend(v18, "length"))
    {
      v19 = MEMORY[0x1E695DF90];
      v20 = *MEMORY[0x1E69B1138];
      v48[0] = *MEMORY[0x1E69B10C8];
      v48[1] = v20;
      v45 = v18;
      v46 = v15;
      v49[0] = v15;
      v49[1] = v18;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      v47 = [v19 dictionaryWithDictionary:v21];

      v44 = [v8 tracklist];
      v22 = [v44 items];
      v23 = [v8 tracklist];
      v24 = [v23 items];
      v25 = [v24 totalItemCount] - 1;

      v26 = [v8 tracklist];
      v27 = [v26 items];
      v28 = [v7 indexPath];
      v29 = [v27 globalIndexForIndexPath:v28] - 1;

      if (v25 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v25;
      }

      v31 = [v22 indexPathForGlobalIndex:v30];

      if (v31)
      {
        v32 = [v8 tracklist];
        v33 = [v32 items];
        v34 = [v33 itemAtIndexPath:v31];

        v35 = [v34 metadataObject];
        v36 = [v35 identifiers];
        v37 = [v36 contentItemID];

        if ([v37 length])
        {
          [v47 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69B1130]];
        }
      }

      v38 = [MPCPlayerCommandRequest alloc];
      v39 = [v8 controller];
      v40 = [v8 request];
      v41 = [v40 label];
      v42 = [(MPCPlayerCommandRequest *)v38 initWithMediaRemoteCommand:130 options:v47 controller:v39 label:v41];

      v18 = v45;
      v15 = v46;
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

- (id)moveItem:(id)a3 afterItem:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlayerCommand *)self response];
  v9 = [v8 tracklist];
  v10 = [v6 indexPath];
  v11 = [v9 displayIndexPathForStructuredIndexPath:v10];

  v12 = [v8 tracklist];
  v13 = [v7 indexPath];
  v14 = [v12 displayIndexPathForStructuredIndexPath:v13];

  v15 = v14;
  v16 = [(_MPCPlayerReorderItemsCommand *)self limitedDisplayIndexPathForMovingIndexPath:v11 toProprosedIndexPath:v15];
  if ([v16 isEqual:v15])
  {
    v17 = [v6 metadataObject];
    v18 = [v17 identifiers];
    v19 = [v18 contentItemID];

    v20 = [v7 metadataObject];
    v21 = [v20 identifiers];
    v22 = [v21 contentItemID];

    if ([v19 length] && objc_msgSend(v22, "length"))
    {
      v23 = *MEMORY[0x1E69B1130];
      v33[0] = *MEMORY[0x1E69B10C8];
      v33[1] = v23;
      v34[0] = v19;
      v34[1] = v22;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v29 = [MPCPlayerCommandRequest alloc];
      [v8 controller];
      v24 = v31 = v22;
      [v8 request];
      v25 = v32 = v19;
      v26 = [v25 label];
      v27 = [(MPCPlayerCommandRequest *)v29 initWithMediaRemoteCommand:130 options:v30 controller:v24 label:v26];

      v19 = v32;
      v22 = v31;
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

- (id)limitedDisplayIndexPathForMovingIndexPath:(id)a3 toProprosedIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 isEqual:v8])
  {
    v9 = v7;
  }

  else
  {
    v36 = a2;
    v37 = self;
    v10 = [(_MPCPlayerCommand *)self response];
    v11 = [v10 tracklist];
    v12 = [v11 displayItems];
    v13 = [v12 globalIndexForIndexPath:v7];

    v14 = [v10 tracklist];
    v15 = [v14 displayItems];
    v39 = v8;
    v16 = [v15 globalIndexForIndexPath:v8];

    v40 = v7;
    v41 = [v7 section];
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
        v21 = [v10 tracklist];
        v22 = [v21 items];
        v23 = [v22 indexPathForGlobalIndex:v20];

        v24 = [v10 builder];
        v25 = [v10 chain];
        v26 = [v24 playerItemEditingStyleFlags:0 atIndexPath:v23 chain:v25];

        v27 = [v10 tracklist];
        v28 = [v27 displayItems];
        v29 = [v28 indexPathForGlobalIndex:v20];

        v30 = [v29 section];
        if ((v26 & 1) == 0 || v41 != v30)
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

      v32 = [v10 tracklist];
      v33 = [v32 displayItems];
      v9 = [v33 indexPathForGlobalIndex:v20 + v38];

      if (!v9)
      {
        v35 = [MEMORY[0x1E696AAA8] currentHandler];
        [v35 handleFailureInMethod:v36 object:v37 file:@"MPCPlayerResponseTracklist.m" lineNumber:1045 description:@"Invalid section collection (2)."];
      }

      v8 = v39;
      v7 = v40;
    }

    else
    {
LABEL_19:
      v8 = v39;
      v9 = v39;
      v7 = v40;
    }
  }

  return v9;
}

- (id)limitedIndexPathForMovingIndexPath:(id)a3 toProprosedIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:v7])
  {
    v8 = v6;
  }

  else
  {
    v9 = [(_MPCPlayerCommand *)self response];
    v10 = [v9 tracklist];
    v11 = [v10 displayIndexPathForStructuredIndexPath:v6];

    v12 = [v9 tracklist];
    v13 = [v12 displayIndexPathForStructuredIndexPath:v7];

    v14 = [(_MPCPlayerReorderItemsCommand *)self limitedDisplayIndexPathForMovingIndexPath:v11 toProprosedIndexPath:v13];
    v15 = [v9 tracklist];
    v8 = [v15 structuredIndexPathForDisplayIndexPath:v14];
  }

  return v8;
}

- (BOOL)canMoveItem:(id)a3
{
  v4 = a3;
  v5 = [(_MPCPlayerCommand *)self response];
  v6 = [v5 builder];
  v7 = [v4 indexPath];

  v8 = [v5 chain];
  v9 = [v6 playerItemEditingStyleFlags:0 atIndexPath:v7 chain:v8];

  return v9 & 1;
}

@end