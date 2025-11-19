@interface MNSignInstructionContents
+ (id)contentsWithStep:(id)a3 destination:(id)a4;
- (BOOL)hasServerContent;
- (id)_evaluatedStringsForInstructionStrings:(id)a3;
- (id)_instructionsForFormats:(id)a3;
- (id)description;
- (id)instructionWithShorterAlternatives;
- (unint64_t)_distanceFormatOptions;
- (void)_populateFromStep:(id)a3;
@end

@implementation MNSignInstructionContents

- (BOOL)hasServerContent
{
  if ([(NSArray *)self->_normalInstructionStrings count])
  {
    return 1;
  }

  v4 = [(MNSignInstructionContents *)self maneuverFormats];
  v3 = [v4 count] != 0;

  return v3;
}

- (id)instructionWithShorterAlternatives
{
  if ([(NSArray *)self->_normalInstructionStrings count])
  {
    v3 = [(MNSignInstructionContents *)self _evaluatedStringsForInstructionStrings:self->_normalInstructionStrings];
  }

  else
  {
    v4 = [(MNSignInstructionContents *)self maneuverFormats];
    v3 = [(MNSignInstructionContents *)self _instructionsForFormats:v4];
  }

  v5 = [MEMORY[0x1E696AEC0] _navigation_selectInstructionWithServerStringArray:v3 isSpoken:0 clientBlock:0];

  return v5;
}

- (id)_instructionsForFormats:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = [(MNListInstructionContents *)self transportType]== 2;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [(MNListInstructionContents *)self destination];
    v9 = [v8 navDisplayAddress];

    if ([v9 length])
    {
      [v7 setObject:v9 forKey:@"{Address}"];
    }

    v10 = [(MNListInstructionContents *)self destination];
    v11 = [v10 navDisplayNameWithSpecialContacts:0];

    if ([v11 length])
    {
      [v7 setObject:v11 forKey:@"{Name}"];
    }

    v12 = [(MNListInstructionContents *)self roadName];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [(MNListInstructionContents *)self roadName];
      [v7 setObject:v14 forKey:@"{Road}"];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 2 * v6;
      v19 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:*(*(&v25 + 1) + 8 * i) abbreviatedUnits:0 detail:v18 spoken:0 overrideVariables:v7];
          if ([v21 length] && (objc_msgSend(v21, "_navigation_containsVariables") & 1) == 0)
          {
            [v5 addObject:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v5;
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
  normalInstructionStrings = self->_normalInstructionStrings;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MNSignInstructionContents__evaluatedStringsForInstructionStrings___block_invoke;
  v6[3] = &unk_1E84308B0;
  v6[4] = self;
  v4 = [(NSArray *)normalInstructionStrings _geo_compactMap:v6];

  return v4;
}

id __68__MNSignInstructionContents__evaluatedStringsForInstructionStrings___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MNSignInstructionContents__evaluatedStringsForInstructionStrings___block_invoke_2;
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

void __68__MNSignInstructionContents__evaluatedStringsForInstructionStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 type];
  if (v3 == 10)
  {
    v6 = [v13 token];
    v7 = [v6 isEqualToString:@"{Name}"];

    if (v7)
    {
      v5 = [*(a1 + 32) destination];
      v8 = [v5 navDisplayName];
    }

    else
    {
      v9 = [v13 token];
      v10 = [v9 isEqualToString:@"{Address}"];

      if (!v10)
      {
        goto LABEL_10;
      }

      v5 = [*(a1 + 32) destination];
      v8 = [v5 navDisplayAddress];
    }

    v11 = v8;
    v12 = [v13 stringFormat];
    [v12 setOverrideValue:v11];
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_10;
    }

    v4 = [*(a1 + 32) _distanceFormatOptions];
    v5 = [v13 distanceFormat];
    [v5 setFormatOptions:v4];
  }

LABEL_10:
}

- (id)description
{
  if ([(NSArray *)self->_normalInstructionStrings count])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSArray *)self->_normalInstructionStrings firstObject];
    v5 = [v3 stringWithFormat:@"MNSignInstructionContents: %@", v4];
LABEL_5:

    goto LABEL_6;
  }

  v6 = [(MNSignInstructionContents *)self maneuverFormats];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v4 = [(MNSignInstructionContents *)self maneuverFormats];
    v9 = [v4 firstObject];
    v5 = [v8 _navigation_stringForServerFormattedString:v9];

    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = MNSignInstructionContents;
  v5 = [(MNListInstructionContents *)&v11 description];
LABEL_6:

  return v5;
}

- (void)_populateFromStep:(id)a3
{
  v12.receiver = self;
  v12.super_class = MNSignInstructionContents;
  v4 = a3;
  [(MNListInstructionContents *)&v12 _populateFromStep:v4];
  v5 = [v4 distanceStringForSignView];
  [(MNListInstructionContents *)self setDistanceString:v5];

  v6 = [v4 normalInstructionStringsForSignView];
  normalInstructionStrings = self->_normalInstructionStrings;
  self->_normalInstructionStrings = v6;

  v8 = [v4 geoStep];
  v9 = [v8 distanceForSignView];
  [(MNListInstructionContents *)self setDistanceFormat:v9];

  v10 = [v4 geoStep];

  v11 = [v10 normalInstructionsForSignView];
  [(MNSignInstructionContents *)self setManeuverFormats:v11];
}

+ (id)contentsWithStep:(id)a3 destination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  if (v8)
  {
    [v8 setTransportType:{objc_msgSend(v6, "transportType")}];
    [v8 setDestination:v7];
    v9 = [v7 navDisplayAddress];
    [v8 setDestinationName:v9];

    [v8 _populateFromStep:v6];
    v10 = v8;
  }

  return v8;
}

@end