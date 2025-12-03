@interface MNListInstructionContents
+ (id)contentsWithStep:(id)step;
- (BOOL)hasServerContent;
- (MNListInstructionContents)init;
- (id)_evaluatedStringsForInstructionStrings:(id)strings;
- (id)_instructionsForFormats:(id)formats;
- (id)description;
- (id)instruction;
- (id)instructionWithShorterAlternatives;
- (id)stringForDistance:(double)distance;
- (unint64_t)_distanceFormatOptions;
- (void)_populateFromStep:(id)step;
@end

@implementation MNListInstructionContents

- (BOOL)hasServerContent
{
  if ([(NSArray *)self->_instructionStrings count])
  {
    return 1;
  }

  instructionFormats = [(MNListInstructionContents *)self instructionFormats];
  v3 = [instructionFormats count] != 0;

  return v3;
}

- (id)instruction
{
  instructionWithShorterAlternatives = [(MNListInstructionContents *)self instructionWithShorterAlternatives];
  firstObject = [instructionWithShorterAlternatives firstObject];

  return firstObject;
}

- (id)instructionWithShorterAlternatives
{
  if ([(NSArray *)self->_instructionStrings count])
  {
    v3 = [(MNListInstructionContents *)self _evaluatedStringsForInstructionStrings:self->_instructionStrings];
  }

  else
  {
    instructionFormats = [(MNListInstructionContents *)self instructionFormats];
    v3 = [(MNListInstructionContents *)self _instructionsForFormats:instructionFormats];
  }

  return v3;
}

- (id)_instructionsForFormats:(id)formats
{
  v21 = *MEMORY[0x1E69E9840];
  formatsCopy = formats;
  if ([formatsCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(formatsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v6 = [(MNListInstructionContents *)self transportType]== 2;
    v18 = 0u;
    v19 = 0u;
    v7 = formatsCopy;
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

- (id)stringForDistance:(double)distance
{
  v22[1] = *MEMORY[0x1E69E9840];
  distanceCopy = distance;
  if (distance < 0.0)
  {
    [(MNListInstructionContents *)self distance];
    distanceCopy = v6;
  }

  context = [(MNListInstructionContents *)self context];
  v8 = context != 0;
  if (self->_distanceString)
  {
    distanceString = [(MNListInstructionContents *)self distanceString];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__MNListInstructionContents_stringForDistance___block_invoke;
    v20[3] = &unk_1E84308D8;
    v20[4] = self;
    *&v20[5] = distance;
    v10 = [distanceString optionsWithArgumentHandler:v20];

    v11 = [(GEOComposedString *)self->_distanceString stringWithOptions:v10];
  }

  else
  {
    v12 = context;
    v13 = 2 * ([(MNListInstructionContents *)self transportType]== 2);
    if (distanceCopy >= 0.0)
    {
      v21 = @"{distance}";
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:distanceCopy];
      v22[0] = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }

    else
    {
      v14 = 0;
    }

    v16 = MEMORY[0x1E696AEC0];
    distanceFormat = [(MNListInstructionContents *)self distanceFormat];
    v11 = [v16 _navigation_stringForServerFormattedString:distanceFormat abbreviatedUnits:v8 detail:v13 spoken:v12 == 0 overrideVariables:v14];
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

- (id)_evaluatedStringsForInstructionStrings:(id)strings
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MNListInstructionContents__evaluatedStringsForInstructionStrings___block_invoke;
  v5[3] = &unk_1E84308B0;
  v5[4] = self;
  v3 = [strings _geo_compactMap:v5];

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
    firstObject = [(NSArray *)self->_instructionStrings firstObject];
    v5 = [v3 stringWithFormat:@"MNListInstructionContents: %@", firstObject];
LABEL_5:

    goto LABEL_6;
  }

  instructionFormats = [(MNListInstructionContents *)self instructionFormats];
  v7 = [instructionFormats count];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    firstObject = [(MNListInstructionContents *)self instructionFormats];
    v4FirstObject = [firstObject firstObject];
    v5 = [v8 _navigation_stringForServerFormattedString:v4FirstObject];

    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = MNListInstructionContents;
  v5 = [(MNListInstructionContents *)&v11 description];
LABEL_6:

  return v5;
}

- (void)_populateFromStep:(id)step
{
  stepCopy = step;
  [stepCopy distance];
  [(MNListInstructionContents *)self setDistance:?];
  distanceStringForListView = [stepCopy distanceStringForListView];
  [(MNListInstructionContents *)self setDistanceString:distanceStringForListView];

  instructionStringsForListView = [stepCopy instructionStringsForListView];
  instructionStrings = self->_instructionStrings;
  self->_instructionStrings = instructionStringsForListView;

  geoStep = [stepCopy geoStep];
  distanceForListView = [geoStep distanceForListView];
  [(MNListInstructionContents *)self setDistanceFormat:distanceForListView];

  geoStep2 = [stepCopy geoStep];

  instructionsForListView = [geoStep2 instructionsForListView];
  [(MNListInstructionContents *)self setInstructionFormats:instructionsForListView];
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

+ (id)contentsWithStep:(id)step
{
  stepCopy = step;
  v5 = objc_alloc_init(self);
  if (v5)
  {
    [v5 setTransportType:{objc_msgSend(stepCopy, "transportType")}];
    [v5 _populateFromStep:stepCopy];
    v6 = v5;
  }

  return v5;
}

@end