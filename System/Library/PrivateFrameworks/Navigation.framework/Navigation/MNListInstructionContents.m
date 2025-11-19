@interface MNListInstructionContents
+ (id)contentsWithStep:(id)a3;
- (BOOL)hasServerContent;
- (MNListInstructionContents)init;
- (id)_evaluatedStringsForInstructionStrings:(id)a3;
- (id)_instructionsForFormats:(id)a3;
- (id)description;
- (id)instruction;
- (id)instructionWithShorterAlternatives;
- (id)stringForDistance:(double)a3;
- (unint64_t)_distanceFormatOptions;
- (void)_populateFromStep:(id)a3;
@end

@implementation MNListInstructionContents

- (BOOL)hasServerContent
{
  if ([(NSArray *)self->_instructionStrings count])
  {
    return 1;
  }

  v4 = [(MNListInstructionContents *)self instructionFormats];
  v3 = [v4 count] != 0;

  return v3;
}

- (id)instruction
{
  v2 = [(MNListInstructionContents *)self instructionWithShorterAlternatives];
  v3 = [v2 firstObject];

  return v3;
}

- (id)instructionWithShorterAlternatives
{
  if ([(NSArray *)self->_instructionStrings count])
  {
    v3 = [(MNListInstructionContents *)self _evaluatedStringsForInstructionStrings:self->_instructionStrings];
  }

  else
  {
    v4 = [(MNListInstructionContents *)self instructionFormats];
    v3 = [(MNListInstructionContents *)self _instructionsForFormats:v4];
  }

  return v3;
}

- (id)_instructionsForFormats:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v6 = [(MNListInstructionContents *)self transportType]== 2;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 2 * v6;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:*(*(&v16 + 1) + 8 * i) abbreviatedUnits:0 detail:v10 spoken:0 overrideVariables:{0, v16}];
          if ([v13 length] && (objc_msgSend(v13, "_navigation_containsVariables") & 1) == 0)
          {
            [v5 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)stringForDistance:(double)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a3 < 0.0)
  {
    [(MNListInstructionContents *)self distance];
    v5 = v6;
  }

  v7 = [(MNListInstructionContents *)self context];
  v8 = v7 != 0;
  if (self->_distanceString)
  {
    v9 = [(MNListInstructionContents *)self distanceString];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__MNListInstructionContents_stringForDistance___block_invoke;
    v20[3] = &unk_1E84308D8;
    v20[4] = self;
    *&v20[5] = a3;
    v10 = [v9 optionsWithArgumentHandler:v20];

    v11 = [(GEOComposedString *)self->_distanceString stringWithOptions:v10];
  }

  else
  {
    v12 = v7;
    v13 = 2 * ([(MNListInstructionContents *)self transportType]== 2);
    if (v5 >= 0.0)
    {
      v21 = @"{distance}";
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
      v22[0] = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }

    else
    {
      v14 = 0;
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [(MNListInstructionContents *)self distanceFormat];
    v11 = [v16 _navigation_stringForServerFormattedString:v17 abbreviatedUnits:v8 detail:v13 spoken:v12 == 0 overrideVariables:v14];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

void __47__MNListInstructionContents_stringForDistance___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 type] == 1)
  {
    v3 = [*(a1 + 32) _distanceFormatOptions];
    v4 = [v10 distanceFormat];
    [v4 setFormatOptions:v3];

    if (*(a1 + 40) >= 0.0)
    {
      v5 = objc_alloc(MEMORY[0x1E696AD28]);
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x1E696B058] meters];
      v8 = [v5 initWithDoubleValue:v7 unit:v6];
      v9 = [v10 distanceFormat];
      [v9 setOverrideValue:v8];
    }
  }
}

- (unint64_t)_distanceFormatOptions
{
  if ([(MNListInstructionContents *)self transportType]== 2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (id)_evaluatedStringsForInstructionStrings:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MNListInstructionContents__evaluatedStringsForInstructionStrings___block_invoke;
  v5[3] = &unk_1E84308B0;
  v5[4] = self;
  v3 = [a3 _geo_compactMap:v5];

  return v3;
}

id __68__MNListInstructionContents__evaluatedStringsForInstructionStrings___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MNListInstructionContents__evaluatedStringsForInstructionStrings___block_invoke_2;
  v8[3] = &unk_1E8430888;
  v8[4] = *(a1 + 32);
  v2 = a2;
  v3 = [v2 optionsWithArgumentHandler:v8];
  v4 = [v2 stringResultWithOptions:v3];

  if ([v4 success])
  {
    v5 = [v4 string];
    if ([v5 length])
    {
      v6 = [v4 string];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __68__MNListInstructionContents__evaluatedStringsForInstructionStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 type] == 1)
  {
    v3 = [*(a1 + 32) _distanceFormatOptions];
    v4 = [v5 distanceFormat];
    [v4 setFormatOptions:v3];
  }
}

- (id)description
{
  if ([(NSArray *)self->_instructionStrings count])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSArray *)self->_instructionStrings firstObject];
    v5 = [v3 stringWithFormat:@"MNListInstructionContents: %@", v4];
LABEL_5:

    goto LABEL_6;
  }

  v6 = [(MNListInstructionContents *)self instructionFormats];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v4 = [(MNListInstructionContents *)self instructionFormats];
    v9 = [v4 firstObject];
    v5 = [v8 _navigation_stringForServerFormattedString:v9];

    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = MNListInstructionContents;
  v5 = [(MNListInstructionContents *)&v11 description];
LABEL_6:

  return v5;
}

- (void)_populateFromStep:(id)a3
{
  v4 = a3;
  [v4 distance];
  [(MNListInstructionContents *)self setDistance:?];
  v5 = [v4 distanceStringForListView];
  [(MNListInstructionContents *)self setDistanceString:v5];

  v6 = [v4 instructionStringsForListView];
  instructionStrings = self->_instructionStrings;
  self->_instructionStrings = v6;

  v8 = [v4 geoStep];
  v9 = [v8 distanceForListView];
  [(MNListInstructionContents *)self setDistanceFormat:v9];

  v11 = [v4 geoStep];

  v10 = [v11 instructionsForListView];
  [(MNListInstructionContents *)self setInstructionFormats:v10];
}

- (MNListInstructionContents)init
{
  v6.receiver = self;
  v6.super_class = MNListInstructionContents;
  v2 = [(MNListInstructionContents *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_maneuverType = 0x400000000;
    v2->_suppressFallback = 0;
    v4 = v2;
  }

  return v3;
}

+ (id)contentsWithStep:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  if (v5)
  {
    [v5 setTransportType:{objc_msgSend(v4, "transportType")}];
    [v5 _populateFromStep:v4];
    v6 = v5;
  }

  return v5;
}

@end