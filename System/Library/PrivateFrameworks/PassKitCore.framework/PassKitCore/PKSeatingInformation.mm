@interface PKSeatingInformation
- (BOOL)_isStringAllLetters:(id)a3;
- (BOOL)_isStringAllNumbers:(id)a3 formatter:(id)a4;
- (BOOL)seatsSpanMultipleSections;
- (PKSeatingInformation)initWithCoder:(id)a3;
- (id)_allAisles;
- (id)_allLevels;
- (id)_allRows;
- (id)_allSectionColors;
- (id)_allSections;
- (id)_displayableAirlineSeatsStringForRow:(id)a3 designations:(id)a4;
- (id)_formatSeatLettersForRow:(id)a3 designations:(id)a4 includeSpaceBetweenRowAndSeats:(BOOL)a5;
- (id)_formatSeatNumbersForRow:(id)a3 designations:(id)a4 formatter:(id)a5 includeSpaceBetweenRowAndSeats:(BOOL)a6;
- (id)_formattedAirlineSeatsStringForRow:(id)a3 designation:(id)a4 includeSpaceBetweenRowAndSeats:(BOOL)a5;
- (id)changeMessageFromAirlineSeatingInformation:(id)a3;
- (id)changeMessageFromInformation:(id)a3 isTransit:(BOOL)a4;
- (id)displayableAirlineSeatsString;
- (id)displayableAllAislesString;
- (id)displayableAllLevelsString;
- (id)displayableAllRowsString;
- (id)displayableAllSeatsString;
- (id)displayableAllSectionsColor;
- (id)displayableAllSectionsString;
- (id)firstSeatContainingAttributes:(unint64_t)a3;
- (id)initFromSemantic:(id)a3;
- (id)initFromSemantics:(id)a3;
- (id)seatsContainingAttributes:(unint64_t)a3;
@end

@implementation PKSeatingInformation

- (id)displayableAirlineSeatsString
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(PKSeatingInformation *)self seatsContainingAttributes:3];
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 firstObject];
      v6 = [v5 airlineSeat];
    }

    else
    {
      v7 = [(PKSeatingInformation *)self _allRows];
      v8 = [v7 count];

      if (v8 < 3)
      {
        v35 = v8;
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = v3;
        v10 = v3;
        v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v42;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v41 + 1) + 8 * i);
              v16 = [v15 row];
              v17 = [v15 designation];
              if ([v16 length] && objc_msgSend(v17, "length"))
              {
                v18 = [v9 objectForKeyedSubscript:v16];
                if (!v18)
                {
                  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [v9 setObject:v18 forKeyedSubscript:v16];
                }

                [v18 addObject:v17];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v12);
        }

        v19 = [v9 allKeys];
        v20 = [v19 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

        v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
        v24 = v35;
        if (v23)
        {
          v25 = v23;
          v26 = *v38;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v38 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v28 = *(*(&v37 + 1) + 8 * j);
              v29 = [v9 objectForKeyedSubscript:{v28, v35}];
              v30 = v29;
              if (v24 == 2 && [v29 count] > 1 || (-[PKSeatingInformation _displayableAirlineSeatsStringForRow:designations:](self, "_displayableAirlineSeatsStringForRow:designations:", v28, v30), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v6 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);

                v33 = v22;
                goto LABEL_31;
              }

              v32 = v31;
              [v21 addObject:v31];
            }

            v25 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v33 = PKLocalizedTicketingString(&cfstr_LocalizedListD.isa, 0);
        v6 = [v21 componentsJoinedByString:v33];
LABEL_31:

        v3 = v36;
      }

      else
      {
        v6 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)changeMessageFromAirlineSeatingInformation:(id)a3
{
  v4 = [a3 firstSeat];
  v5 = [(PKSeatingInformation *)self firstSeat];
  if (([v5 diffFromSeat:v4] & 3) != 0)
  {
    v6 = [v5 airlineSeat];
    v7 = PKLocalizedTicketingString(&cfstr_SemanticsSeats.isa, &stru_1F2281668.isa, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isStringAllNumbers:(id)a3 formatter:(id)a4
{
  v4 = [a4 numberFromString:a3];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_isStringAllLetters:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 letterCharacterSet];
  v6 = [v4 rangeOfCharacterFromSet:v5];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_formattedAirlineSeatsStringForRow:(id)a3 designation:(id)a4 includeSpaceBetweenRowAndSeats:(BOOL)a5
{
  if (a5)
  {
    v5 = @"LOCALIZED_ROW_AND_SEAT_WITH_SPACE_FORMAT";
  }

  else
  {
    v5 = @"LOCALIZED_ROW_AND_SEAT_NO_SPACE_FORMAT";
  }

  v6 = PKLocalizedTicketingString(&v5->isa, &stru_1F22903C8.isa, a3, a4);

  return v6;
}

- (id)_displayableAirlineSeatsStringForRow:(id)a3 designations:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKSeatingInformationNumberFormatter();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {

    goto LABEL_22;
  }

  v11 = v10;
  v12 = *v21;
  LOBYTE(v13) = 1;
  LOBYTE(v14) = 1;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v20 + 1) + 8 * i);
      if (!v16 || ![*(*(&v20 + 1) + 8 * i) length])
      {
LABEL_19:

LABEL_20:
        v18 = 0;
        goto LABEL_24;
      }

      if (v13)
      {
        v13 = [(PKSeatingInformation *)self _isStringAllLetters:v16];
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
        if (!v14)
        {
LABEL_10:
          v14 = 0;
          goto LABEL_13;
        }
      }

      v14 = [(PKSeatingInformation *)self _isStringAllNumbers:v16 formatter:v8];
LABEL_13:
      if (!v14 && !v13)
      {
        goto LABEL_19;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  if (!v14)
  {
    if (v13)
    {
      v17 = [(PKSeatingInformation *)self _formatSeatLettersForRow:v6 designations:v9 includeSpaceBetweenRowAndSeats:[(PKSeatingInformation *)self _isStringAllLetters:v6]];
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_22:
  v17 = [(PKSeatingInformation *)self _formatSeatNumbersForRow:v6 designations:v9 formatter:v8 includeSpaceBetweenRowAndSeats:[(PKSeatingInformation *)self _isStringAllNumbers:v6 formatter:v8, v20]];
LABEL_23:
  v18 = v17;
LABEL_24:

  return v18;
}

- (id)_formatSeatNumbersForRow:(id)a3 designations:(id)a4 formatter:(id)a5 includeSpaceBetweenRowAndSeats:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __111__PKSeatingInformation_Flight___formatSeatNumbersForRow_designations_formatter_includeSpaceBetweenRowAndSeats___block_invoke;
  v27[3] = &unk_1E79E0B78;
  v12 = v11;
  v28 = v12;
  v13 = [a4 sortedArrayUsingComparator:v27];
  v14 = [v13 count];
  v15 = [v13 firstObject];
  if (v14 <= 1)
  {
    v16 = [(PKSeatingInformation *)self _formattedAirlineSeatsStringForRow:v10 designation:v15 includeSpaceBetweenRowAndSeats:v6];
    goto LABEL_12;
  }

  v26 = v6;
  v17 = [v13 lastObject];
  v18 = [v12 numberFromString:v15];
  v19 = [v12 numberFromString:v17];
  v20 = v19;
  v16 = 0;
  if (v18 && v19)
  {
    v21 = [v18 integerValue];
    v22 = [v20 integerValue] - v21;
    if (v22 == [v13 count] - 1)
    {
      v23 = PKLocalizedTicketingString(&cfstr_LocalizedNumbe.isa, &stru_1F22903C8.isa, v15, v17);
LABEL_10:
      v16 = [(PKSeatingInformation *)self _formattedAirlineSeatsStringForRow:v10 designation:v23 includeSpaceBetweenRowAndSeats:v26];

      goto LABEL_11;
    }

    if ([v13 count] < 5)
    {
      v24 = PKLocalizedTicketingString(&cfstr_LocalizedListD_0.isa, 0);
      v23 = [v13 componentsJoinedByString:v24];

      goto LABEL_10;
    }

    v16 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
  }

LABEL_11:

LABEL_12:

  return v16;
}

uint64_t __111__PKSeatingInformation_Flight___formatSeatNumbersForRow_designations_formatter_includeSpaceBetweenRowAndSeats___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 numberFromString:a2];
  v8 = [*(a1 + 32) numberFromString:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 compare:v8];
  }

  return v10;
}

- (id)_formatSeatLettersForRow:(id)a3 designations:(id)a4 includeSpaceBetweenRowAndSeats:(BOOL)a5
{
  v5 = a5;
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a4 sortedArrayUsingComparator:&__block_literal_global_206];
  if ([v9 count] > 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if ([*(*(&v32 + 1) + 8 * i) length] != 1)
          {

            goto LABEL_19;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v31 = v5;

    if ([v15 count] < 2)
    {
LABEL_17:
      v27 = [v15 firstObject];
      v28 = [v15 lastObject];
      v10 = PKLocalizedTicketingString(&cfstr_LocalizedChara.isa, &stru_1F22903C8.isa, v27, v28);
    }

    else
    {
      v20 = 1;
      while (1)
      {
        v21 = [v15 objectAtIndexedSubscript:v20 - 1];
        v22 = [v15 objectAtIndexedSubscript:v20];
        if (![v21 length] || !objc_msgSend(v22, "length"))
        {
          break;
        }

        v23 = [v21 uppercaseString];
        v24 = [v23 characterAtIndex:0];

        v25 = [v22 uppercaseString];
        v26 = [v25 characterAtIndex:0];

        if (v24 + 1 != v26)
        {
          goto LABEL_21;
        }

        if (++v20 >= [v15 count])
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ([v15 count] >= 5)
      {
LABEL_19:
        v29 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
        goto LABEL_25;
      }

      v27 = PKLocalizedTicketingString(&cfstr_LocalizedListD_0.isa, 0);
      v10 = [v15 componentsJoinedByString:v27];
    }

    v11 = self;
    v12 = v8;
    v13 = v10;
    v14 = v31;
  }

  else
  {
    v10 = [v9 firstObject];
    v11 = self;
    v12 = v8;
    v13 = v10;
    v14 = v5;
  }

  v29 = [(PKSeatingInformation *)v11 _formattedAirlineSeatsStringForRow:v12 designation:v13 includeSpaceBetweenRowAndSeats:v14];

LABEL_25:

  return v29;
}

- (id)initFromSemantic:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKSeatingInformation;
  v5 = [(PKSeatingInformation *)&v24 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v4 semanticKey];
  v7 = [@"seats" isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_18;
  }

  result = [v4 dictionariesValue];
  if (result)
  {
    v9 = result;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [PKSeat createFromDictionary:*(*(&v20 + 1) + 8 * v15), v20];
          if (v16)
          {
            if (([v10 containsObject:v16] & 1) == 0)
            {
              [v10 addObject:v16];
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v17 = [v10 copy];
      allSeats = v5->_allSeats;
      v5->_allSeats = v17;

LABEL_16:
      v19 = v5;
LABEL_19:

      return v19;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

- (id)initFromSemantics:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKSeatingInformation;
  v5 = [(PKSeatingInformation *)&v34 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = v4;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [[PKSeatingInformation alloc] initFromSemantic:*(*(&v30 + 1) + 8 * i)];
          v12 = [v11 allSeats];
          if ([v12 count])
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v27;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v27 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v26 + 1) + 8 * j);
                  if (![(NSArray *)v7 containsObject:v18, v22])
                  {
                    [(NSArray *)v7 addObject:v18];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
              }

              while (v15);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    if (![(NSArray *)v7 count])
    {

      v20 = 0;
      v6 = v22;
      v4 = v23;
      goto LABEL_24;
    }

    v6 = v22;
    allSeats = v22->_allSeats;
    v22->_allSeats = v7;

    v4 = v23;
  }

  v20 = v6;
LABEL_24:

  return v20;
}

- (id)firstSeatContainingAttributes:(unint64_t)a3
{
  allSeats = self->_allSeats;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKSeatingInformation_firstSeatContainingAttributes___block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__PKSeat_8l;
  v6[4] = a3;
  v4 = [(NSArray *)allSeats pk_firstObjectPassingTest:v6];

  return v4;
}

- (id)seatsContainingAttributes:(unint64_t)a3
{
  allSeats = self->_allSeats;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKSeatingInformation_seatsContainingAttributes___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B32__0__PKSeat_8Q16_B24l;
  v6[4] = a3;
  v4 = [(NSArray *)allSeats pk_objectsPassingTest:v6];

  return v4;
}

- (BOOL)seatsSpanMultipleSections
{
  v3 = [(PKSeatingInformation *)self _allLevels];
  if ([v3 count] > 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = [(PKSeatingInformation *)self _allSections];
    if ([v4 count] <= 1)
    {
      v6 = [(PKSeatingInformation *)self _allRows];
      v5 = [v6 count] > 1;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)displayableAllSeatsString
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(PKSeatingInformation *)self seatsContainingAttributes:1];
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 firstObject];
      v6 = [v5 designation];
      goto LABEL_4;
    }

    if (v4 < 5)
    {
      v5 = [(PKSeatingInformation *)self _allLevels];
      if ([v5 count] < 2)
      {
        v9 = [(PKSeatingInformation *)self _allSections];
        if ([v9 count] < 2)
        {
          v10 = [(PKSeatingInformation *)self _allRows];
          if ([v10 count] < 2)
          {
            v33 = v10;
            v34 = v5;
            v35 = v9;
            v11 = PKSeatingInformationNumberFormatter();
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v12 = v3;
            v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v39;
              LOBYTE(v16) = 1;
              LOBYTE(v17) = 1;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v39 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v19 = [*(*(&v38 + 1) + 8 * i) designation];
                  v20 = [v11 numberFromString:v19];

                  v16 = (v20 == 0) & v16;
                  v17 = (v20 != 0) & v17;
                }

                v14 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
              }

              while (v14);
            }

            else
            {
              v16 = 1;
              v17 = 1;
            }

            v21 = [v12 pk_arrayByApplyingBlock:&__block_literal_global_144_2];
            v22 = [v21 mutableCopy];

            if (v17)
            {
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = __49__PKSeatingInformation_displayableAllSeatsString__block_invoke_2;
              v36[3] = &unk_1E79E0B78;
              v23 = v11;
              v37 = v23;
              [v22 sortUsingComparator:v36];
              v24 = [v22 firstObject];
              v25 = [v22 lastObject];
              v26 = [v23 numberFromString:v24];
              v27 = [v26 integerValue];

              v28 = [v23 numberFromString:v25];
              v29 = [v28 integerValue];

              v9 = v35;
              if (v29 - v27 == [v22 count] - 1)
              {
                v7 = PKLocalizedTicketingString(&cfstr_LocalizedNumbe.isa, &stru_1F22903C8.isa, v24, v25);
              }

              else
              {
                v31 = PKLocalizedTicketingString(&cfstr_LocalizedListD_0.isa, 0);
                v7 = [v22 componentsJoinedByString:v31];
              }

              v32 = v24;
              v10 = v33;
              v5 = v34;
            }

            else
            {
              v9 = v35;
              if (v16)
              {
                [v22 sortUsingComparator:&__block_literal_global_156];
                v30 = PKLocalizedTicketingString(&cfstr_LocalizedListD_0.isa, 0);
                v7 = [v22 componentsJoinedByString:v30];
              }

              else
              {
                v7 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
              }

              v10 = v33;
              v5 = v34;
            }
          }

          else
          {
            v7 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
          }
        }

        else
        {
          v7 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
        }

        goto LABEL_5;
      }

      v6 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
LABEL_4:
      v7 = v6;
LABEL_5:

      goto LABEL_9;
    }

    v7 = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

uint64_t __49__PKSeatingInformation_displayableAllSeatsString__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 numberFromString:a2];
  v8 = [*(a1 + 32) numberFromString:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)displayableAllRowsString
{
  v3 = [(PKSeatingInformation *)self _allLevels];
  if ([v3 count] < 2)
  {
    v5 = [(PKSeatingInformation *)self _allSections];
    if ([v5 count] < 2)
    {
      v6 = [(PKSeatingInformation *)self _allRows];
      v7 = v6;
      if (v6)
      {
        if ([v6 count] == 1)
        {
          [v7 anyObject];
        }

        else
        {
          PKLocalizedTicketingString(&cfstr_LabelMultipleR.isa, 0);
        }
        v4 = ;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = PKLocalizedTicketingString(&cfstr_LabelMultipleR.isa, 0);
    }
  }

  else
  {
    v4 = PKLocalizedTicketingString(&cfstr_LabelMultipleR.isa, 0);
  }

  return v4;
}

- (id)displayableAllSectionsString
{
  v3 = [(PKSeatingInformation *)self _allLevels];
  if ([v3 count] < 2)
  {
    v5 = [(PKSeatingInformation *)self _allSections];
    v6 = v5;
    if (v5)
    {
      if ([v5 count] == 1)
      {
        [v6 anyObject];
      }

      else
      {
        PKLocalizedTicketingString(&cfstr_LabelMultipleS_0.isa, 0);
      }
      v4 = ;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = PKLocalizedTicketingString(&cfstr_LabelMultipleS_0.isa, 0);
  }

  return v4;
}

- (id)displayableAllAislesString
{
  v2 = [(PKSeatingInformation *)self _allAisles];
  v3 = v2;
  if (v2)
  {
    if ([v2 count] == 1)
    {
      [v3 anyObject];
    }

    else
    {
      PKLocalizedTicketingString(&cfstr_LabelMultipleA.isa, 0);
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)displayableAllLevelsString
{
  v2 = [(PKSeatingInformation *)self _allLevels];
  v3 = v2;
  if (v2)
  {
    if ([v2 count] == 1)
    {
      [v3 anyObject];
    }

    else
    {
      PKLocalizedTicketingString(&cfstr_LabelMultipleL.isa, 0);
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)displayableAllSectionsColor
{
  v2 = [(PKSeatingInformation *)self _allSectionColors];
  v3 = v2;
  if (v2 && [v2 count] == 1)
  {
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)changeMessageFromInformation:(id)a3 isTransit:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 firstSeat];
  v8 = [(PKSeatingInformation *)self firstSeat];
  v9 = v8;
  if (v7 && v8)
  {
    if ([v8 isEqual:v7])
    {
LABEL_4:
      v10 = 0;
      goto LABEL_25;
    }
  }

  else if (v8 == v7)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v10 = [(PKSeatingInformation *)self changeMessageFromAirlineSeatingInformation:v6];
    goto LABEL_25;
  }

  v11 = [v9 diffFromSeat:v7];
  v12 = v11 & 0x1F;
  v13 = [v9 designation];
  v14 = [v9 row];
  v15 = [v9 section];
  v16 = [v9 aisle];
  v17 = [v9 level];
  v18 = v17;
  if (v13 && v12 == 1)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_0.isa, &stru_1F2281668.isa, v13);
  }

  else if (v14 && v12 == 2)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_1.isa, &stru_1F2281668.isa, v14);
  }

  else if (v15 && v12 == 4)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_2.isa, &stru_1F2281668.isa, v15);
  }

  else if (v16 && v12 == 8)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_3.isa, &stru_1F2281668.isa, v15);
  }

  else
  {
    if (!v17 || v12 != 16)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v18 && (v11 & 0x10) != 0)
      {
        v20 = PKLocalizedTicketingString(&cfstr_SeatLevel.isa, &stru_1F2281668.isa, v18);
        [v27 addObject:v20];
      }

      if (v16 && (v11 & 8) != 0)
      {
        v21 = PKLocalizedTicketingString(&cfstr_SeatAisle.isa, &stru_1F2281668.isa, v16);
        [v27 addObject:v21];
      }

      if (v15 && (v11 & 4) != 0)
      {
        v22 = PKLocalizedTicketingString(&cfstr_SeatSection.isa, &stru_1F2281668.isa, v15);
        [v27 addObject:v22];
      }

      if (v14 && (v11 & 2) != 0)
      {
        v23 = PKLocalizedTicketingString(&cfstr_SeatRow.isa, &stru_1F2281668.isa, v14);
        [v27 addObject:v23];
      }

      if (v13 && (v11 & 1) != 0)
      {
        v24 = PKLocalizedTicketingString(&cfstr_SeatNumber_0.isa, &stru_1F2281668.isa, v13);
        [v27 addObject:v24];
      }

      v26 = PKLocalizedTicketingString(&cfstr_LocalizedListD.isa, 0);
      v25 = [v27 componentsJoinedByString:v26];
      v10 = PKLocalizedTicketingString(&cfstr_SemanticsSeats.isa, &stru_1F2281668.isa, v25);

      goto LABEL_24;
    }

    PKLocalizedTicketingString(&cfstr_SemanticsSeats_4.isa, &stru_1F2281668.isa, v17);
  }
  v10 = ;
LABEL_24:

LABEL_25:

  return v10;
}

- (id)_allSections
{
  v2 = [(PKSeatingInformation *)self seatsContainingAttributes:4];
  if ([v2 count])
  {
    v3 = [v2 pk_createSetByApplyingBlock:&__block_literal_global_188];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allRows
{
  v2 = [(PKSeatingInformation *)self seatsContainingAttributes:2];
  if ([v2 count])
  {
    v3 = [v2 pk_createSetByApplyingBlock:&__block_literal_global_190_1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allAisles
{
  v2 = [(PKSeatingInformation *)self seatsContainingAttributes:8];
  if ([v2 count])
  {
    v3 = [v2 pk_createSetByApplyingBlock:&__block_literal_global_192_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allLevels
{
  v2 = [(PKSeatingInformation *)self seatsContainingAttributes:16];
  if ([v2 count])
  {
    v3 = [v2 pk_createSetByApplyingBlock:&__block_literal_global_194_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allSectionColors
{
  v2 = [(PKSeatingInformation *)self seatsContainingAttributes:64];
  if ([v2 count])
  {
    v3 = [v2 pk_createSetByApplyingBlock:&__block_literal_global_197_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKSeatingInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSeatingInformation;
  v5 = [(PKSeatingInformation *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allSeats"];
    allSeats = v5->_allSeats;
    v5->_allSeats = v6;
  }

  return v5;
}

@end