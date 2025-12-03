@interface PKPassTile
+ (id)_createDefaultDashboardGroupTileWithChildTiles:(id)tiles;
+ (id)createTileRowsForTiles:(id)tiles forceCompact:(BOOL)compact maximumRows:(unint64_t)rows maximumColumns:(unint64_t)columns;
- (BOOL)supportsPaymentPassAction:(id)action;
- (PKPassTile)initWithCoder:(id)coder;
- (id)_init;
- (id)_initWithMetadata:(id)metadata childTiles:(id)tiles stateIdentifier:(id)identifier state:(id)state inProgress:(BOOL)progress;
- (id)maximumRows;
- (id)prearmTiles;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTile

+ (id)createTileRowsForTiles:(id)tiles forceCompact:(BOOL)compact maximumRows:(unint64_t)rows maximumColumns:(unint64_t)columns
{
  compactCopy = compact;
  v58 = *MEMORY[0x1E69E9840];
  tilesCopy = tiles;
  v9 = 0;
  if (tilesCopy && columns)
  {
    columnsCopy = columns;
    v34 = tilesCopy;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__33;
    v51 = __Block_byref_object_dispose__33;
    v52 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PKPassTile_createTileRowsForTiles_forceCompact_maximumRows_maximumColumns___block_invoke;
    aBlock[3] = &unk_1E79D4838;
    v45 = &v47;
    v36 = v10;
    v44 = v36;
    v46 = &v53;
    v11 = _Block_copy(aBlock);
    v12 = [v34 count];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v12 >= columnsCopy * rows)
    {
      v14 = columnsCopy * rows;
    }

    else
    {
      v14 = v12;
    }

    if (compactCopy && v12 >= rows + 1 && v14)
    {
      do
      {
        if (v14 >= columnsCopy)
        {
          v15 = columnsCopy;
        }

        else
        {
          v15 = v14;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v15, v34}];
        [v13 insertObject:v16 atIndex:0];

        v14 -= v15;
      }

      while (v14);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v34;
    v17 = [obj countByEnumeratingWithState:&v39 objects:v57 count:16];
    if (v17)
    {
      v18 = *v40;
      do
      {
        v19 = 0;
        do
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * v19);
          state = [v20 state];
          stateTypeDefaultV2 = [state stateTypeDefaultV2];

          if (compactCopy)
          {
            goto LABEL_19;
          }

          metadata = [v20 metadata];
          if (![metadata preferredStyle])
          {

LABEL_26:
            v11[2](v11);
            v23 = 1;
            goto LABEL_27;
          }

          if (!stateTypeDefaultV2)
          {

LABEL_19:
            v23 = 0;
            goto LABEL_27;
          }

          preferredStyle = [stateTypeDefaultV2 preferredStyle];

          v23 = 0;
          if (preferredStyle <= 4 && ((1 << preferredStyle) & 0x15) != 0)
          {
            goto LABEL_26;
          }

LABEL_27:
          v26 = v48[5];
          if (!v26)
          {
            v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v28 = v48[5];
            v48[5] = v27;

            v26 = v48[5];
          }

          [v26 addObject:v20];
          ++v54[3];
          v29 = [v36 count];
          unsignedIntegerValue = columnsCopy;
          if ([v13 count] > v29)
          {
            v31 = [v13 objectAtIndexedSubscript:v29];
            unsignedIntegerValue = [v31 unsignedIntegerValue];
          }

          if (((v54[3] < unsignedIntegerValue) & ~v23) == 0)
          {
            v11[2](v11);
          }

          ++v19;
        }

        while (v17 != v19);
        v32 = [obj countByEnumeratingWithState:&v39 objects:v57 count:16];
        v17 = v32;
      }

      while (v32);
    }

    v11[2](v11);
    v9 = [v36 copy];

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v53, 8);

    tilesCopy = v34;
  }

  return v9;
}

void __77__PKPassTile_createTileRowsForTiles_forceCompact_maximumRows_maximumColumns___block_invoke(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    v3 = a1[4];
    v4 = [v2 copy];
    [v3 addObject:v4];

    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassTile;
  return [(PKPassTile *)&v3 init];
}

- (id)_initWithMetadata:(id)metadata childTiles:(id)tiles stateIdentifier:(id)identifier state:(id)state inProgress:(BOOL)progress
{
  metadataCopy = metadata;
  tilesCopy = tiles;
  identifierCopy = identifier;
  stateCopy = state;
  v16 = stateCopy;
  selfCopy = 0;
  if (metadataCopy && stateCopy)
  {
    if ([stateCopy isResolved])
    {
      _init = [(PKPassTile *)self _init];
      v19 = _init;
      if (_init)
      {
        objc_storeStrong(_init + 2, metadata);
        objc_storeStrong(v19 + 5, tiles);
        objc_storeStrong(v19 + 3, identifier);
        objc_storeStrong(v19 + 4, state);
        *(v19 + 8) = progress;
      }

      self = v19;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)prearmTiles
{
  v2 = [(NSArray *)self->_tiles pk_objectsPassingTest:&__block_literal_global_105];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __25__PKPassTile_prearmTiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 showInPrearm];

  return v3;
}

- (id)maximumRows
{
  metadata = [(PKPassTile *)self metadata];
  if ([metadata type] == 2)
  {
    metadataTypeHorizontalFlowGroup = [metadata metadataTypeHorizontalFlowGroup];
    maximumRows = [metadataTypeHorizontalFlowGroup maximumRows];
    if (maximumRows)
    {
LABEL_3:
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumRows];
LABEL_7:

      goto LABEL_9;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if ([metadata type] == 3)
  {
    metadataTypeHorizontalFlowGroup = [metadata metadataTypeVerticalFlowGroup];
    maximumRows = [metadataTypeHorizontalFlowGroup rows];
    if (maximumRows)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (id)_createDefaultDashboardGroupTileWithChildTiles:(id)tiles
{
  tilesCopy = tiles;
  v4 = +[PKPassTileMetadataHorizontalFlowGroup _createDefaultDashboardGroupMetadata];
  v5 = [PKPassTileStateGroup _createDefaultDashboardGroupStateWithMetadata:v4];
  v6 = [[PKPassTile alloc] _initWithMetadata:v4 childTiles:tilesCopy stateIdentifier:@"default" state:v5 inProgress:0];

  return v6;
}

- (PKPassTile)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKPassTile *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = _init->_metadata;
    _init->_metadata = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tiles"];
    tiles = _init->_tiles;
    _init->_tiles = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateIdentifier"];
    stateIdentifier = _init->_stateIdentifier;
    _init->_stateIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = _init->_state;
    _init->_state = v12;

    _init->_inProgress = [coderCopy decodeBoolForKey:@"inProgress"];
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  metadata = self->_metadata;
  coderCopy = coder;
  [coderCopy encodeObject:metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_tiles forKey:@"tiles"];
  [coderCopy encodeObject:self->_stateIdentifier forKey:@"stateIdentifier"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeBool:self->_inProgress forKey:@"inProgress"];
}

- (BOOL)supportsPaymentPassAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (!actionCopy || ![actionCopy isActionAvailable])
  {
    goto LABEL_11;
  }

  type = [v5 type];
  v7 = 0;
  if (type > 0xE)
  {
    goto LABEL_12;
  }

  if (((1 << type) & 0x6380) != 0 || type == 3)
  {
    v7 = 1;
    goto LABEL_12;
  }

  if (type != 4)
  {
    goto LABEL_12;
  }

  if ([(PKPassTileMetadata *)self->_metadata type]!= 1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  metadataTypeVehicleFunction = [(PKPassTileMetadata *)self->_metadata metadataTypeVehicleFunction];
  vehicleFunctions = [metadataTypeVehicleFunction vehicleFunctions];
  if ([vehicleFunctions count])
  {
    vehicleFunctionActions = [v5 vehicleFunctionActions];
    v7 = [vehicleFunctionActions count] != 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_12:
  return v7;
}

@end