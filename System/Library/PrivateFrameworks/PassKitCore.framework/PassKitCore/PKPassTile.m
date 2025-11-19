@interface PKPassTile
+ (id)_createDefaultDashboardGroupTileWithChildTiles:(id)a3;
+ (id)createTileRowsForTiles:(id)a3 forceCompact:(BOOL)a4 maximumRows:(unint64_t)a5 maximumColumns:(unint64_t)a6;
- (BOOL)supportsPaymentPassAction:(id)a3;
- (PKPassTile)initWithCoder:(id)a3;
- (id)_init;
- (id)_initWithMetadata:(id)a3 childTiles:(id)a4 stateIdentifier:(id)a5 state:(id)a6 inProgress:(BOOL)a7;
- (id)maximumRows;
- (id)prearmTiles;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTile

+ (id)createTileRowsForTiles:(id)a3 forceCompact:(BOOL)a4 maximumRows:(unint64_t)a5 maximumColumns:(unint64_t)a6
{
  v37 = a4;
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = 0;
  if (v8 && a6)
  {
    v38 = a6;
    v34 = v8;
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
    if (v12 >= v38 * a5)
    {
      v14 = v38 * a5;
    }

    else
    {
      v14 = v12;
    }

    if (v37 && v12 >= a5 + 1 && v14)
    {
      do
      {
        if (v14 >= v38)
        {
          v15 = v38;
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
          v21 = [v20 state];
          v22 = [v21 stateTypeDefaultV2];

          if (v37)
          {
            goto LABEL_19;
          }

          v24 = [v20 metadata];
          if (![v24 preferredStyle])
          {

LABEL_26:
            v11[2](v11);
            v23 = 1;
            goto LABEL_27;
          }

          if (!v22)
          {

LABEL_19:
            v23 = 0;
            goto LABEL_27;
          }

          v25 = [v22 preferredStyle];

          v23 = 0;
          if (v25 <= 4 && ((1 << v25) & 0x15) != 0)
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
          v30 = v38;
          if ([v13 count] > v29)
          {
            v31 = [v13 objectAtIndexedSubscript:v29];
            v30 = [v31 unsignedIntegerValue];
          }

          if (((v54[3] < v30) & ~v23) == 0)
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

    v8 = v34;
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

- (id)_initWithMetadata:(id)a3 childTiles:(id)a4 stateIdentifier:(id)a5 state:(id)a6 inProgress:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  v17 = 0;
  if (v12 && v15)
  {
    if ([v15 isResolved])
    {
      v18 = [(PKPassTile *)self _init];
      v19 = v18;
      if (v18)
      {
        objc_storeStrong(v18 + 2, a3);
        objc_storeStrong(v19 + 5, a4);
        objc_storeStrong(v19 + 3, a5);
        objc_storeStrong(v19 + 4, a6);
        *(v19 + 8) = a7;
      }

      self = v19;
      v17 = self;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
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
  v2 = [(PKPassTile *)self metadata];
  if ([v2 type] == 2)
  {
    v3 = [v2 metadataTypeHorizontalFlowGroup];
    v4 = [v3 maximumRows];
    if (v4)
    {
LABEL_3:
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
LABEL_7:

      goto LABEL_9;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if ([v2 type] == 3)
  {
    v3 = [v2 metadataTypeVerticalFlowGroup];
    v4 = [v3 rows];
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (id)_createDefaultDashboardGroupTileWithChildTiles:(id)a3
{
  v3 = a3;
  v4 = +[PKPassTileMetadataHorizontalFlowGroup _createDefaultDashboardGroupMetadata];
  v5 = [PKPassTileStateGroup _createDefaultDashboardGroupStateWithMetadata:v4];
  v6 = [[PKPassTile alloc] _initWithMetadata:v4 childTiles:v3 stateIdentifier:@"default" state:v5 inProgress:0];

  return v6;
}

- (PKPassTile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassTile *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tiles"];
    tiles = v5->_tiles;
    v5->_tiles = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateIdentifier"];
    stateIdentifier = v5->_stateIdentifier;
    v5->_stateIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v5->_inProgress = [v4 decodeBoolForKey:@"inProgress"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  metadata = self->_metadata;
  v5 = a3;
  [v5 encodeObject:metadata forKey:@"metadata"];
  [v5 encodeObject:self->_tiles forKey:@"tiles"];
  [v5 encodeObject:self->_stateIdentifier forKey:@"stateIdentifier"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeBool:self->_inProgress forKey:@"inProgress"];
}

- (BOOL)supportsPaymentPassAction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 isActionAvailable])
  {
    goto LABEL_11;
  }

  v6 = [v5 type];
  v7 = 0;
  if (v6 > 0xE)
  {
    goto LABEL_12;
  }

  if (((1 << v6) & 0x6380) != 0 || v6 == 3)
  {
    v7 = 1;
    goto LABEL_12;
  }

  if (v6 != 4)
  {
    goto LABEL_12;
  }

  if ([(PKPassTileMetadata *)self->_metadata type]!= 1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [(PKPassTileMetadata *)self->_metadata metadataTypeVehicleFunction];
  v9 = [v8 vehicleFunctions];
  if ([v9 count])
  {
    v10 = [v5 vehicleFunctionActions];
    v7 = [v10 count] != 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_12:
  return v7;
}

@end