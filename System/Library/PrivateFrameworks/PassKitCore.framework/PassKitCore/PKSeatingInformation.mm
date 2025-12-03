@interface PKSeatingInformation
- (BOOL)_isStringAllLetters:(id)letters;
- (BOOL)_isStringAllNumbers:(id)numbers formatter:(id)formatter;
- (BOOL)seatsSpanMultipleSections;
- (PKSeatingInformation)initWithCoder:(id)coder;
- (id)_allAisles;
- (id)_allLevels;
- (id)_allRows;
- (id)_allSectionColors;
- (id)_allSections;
- (id)_displayableAirlineSeatsStringForRow:(id)row designations:(id)designations;
- (id)_formatSeatLettersForRow:(id)row designations:(id)designations includeSpaceBetweenRowAndSeats:(BOOL)seats;
- (id)_formatSeatNumbersForRow:(id)row designations:(id)designations formatter:(id)formatter includeSpaceBetweenRowAndSeats:(BOOL)seats;
- (id)_formattedAirlineSeatsStringForRow:(id)row designation:(id)designation includeSpaceBetweenRowAndSeats:(BOOL)seats;
- (id)changeMessageFromAirlineSeatingInformation:(id)information;
- (id)changeMessageFromInformation:(id)information isTransit:(BOOL)transit;
- (id)displayableAirlineSeatsString;
- (id)displayableAllAislesString;
- (id)displayableAllLevelsString;
- (id)displayableAllRowsString;
- (id)displayableAllSeatsString;
- (id)displayableAllSectionsColor;
- (id)displayableAllSectionsString;
- (id)firstSeatContainingAttributes:(unint64_t)attributes;
- (id)initFromSemantic:(id)semantic;
- (id)initFromSemantics:(id)semantics;
- (id)seatsContainingAttributes:(unint64_t)attributes;
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
      firstObject = [v3 firstObject];
      airlineSeat = [firstObject airlineSeat];
    }

    else
    {
      _allRows = [(PKSeatingInformation *)self _allRows];
      v8 = [_allRows count];

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
              designation = [v15 designation];
              if ([v16 length] && objc_msgSend(designation, "length"))
              {
                v18 = [v9 objectForKeyedSubscript:v16];
                if (!v18)
                {
                  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [v9 setObject:v18 forKeyedSubscript:v16];
                }

                [v18 addObject:designation];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v12);
        }

        allKeys = [v9 allKeys];
        v20 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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
                airlineSeat = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);

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
        airlineSeat = [v21 componentsJoinedByString:v33];
LABEL_31:

        v3 = v36;
      }

      else
      {
        airlineSeat = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
      }
    }
  }

  else
  {
    airlineSeat = 0;
  }

  return airlineSeat;
}

- (id)changeMessageFromAirlineSeatingInformation:(id)information
{
  firstSeat = [information firstSeat];
  firstSeat2 = [(PKSeatingInformation *)self firstSeat];
  if (([firstSeat2 diffFromSeat:firstSeat] & 3) != 0)
  {
    airlineSeat = [firstSeat2 airlineSeat];
    v7 = PKLocalizedTicketingString(&cfstr_SemanticsSeats.isa, &stru_1F2281668.isa, airlineSeat);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isStringAllNumbers:(id)numbers formatter:(id)formatter
{
  v4 = [formatter numberFromString:numbers];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_isStringAllLetters:(id)letters
{
  v3 = MEMORY[0x1E696AB08];
  lettersCopy = letters;
  letterCharacterSet = [v3 letterCharacterSet];
  v6 = [lettersCopy rangeOfCharacterFromSet:letterCharacterSet];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_formattedAirlineSeatsStringForRow:(id)row designation:(id)designation includeSpaceBetweenRowAndSeats:(BOOL)seats
{
  if (seats)
  {
    v5 = @"LOCALIZED_ROW_AND_SEAT_WITH_SPACE_FORMAT";
  }

  else
  {
    v5 = @"LOCALIZED_ROW_AND_SEAT_NO_SPACE_FORMAT";
  }

  v6 = PKLocalizedTicketingString(&v5->isa, &stru_1F22903C8.isa, row, designation);

  return v6;
}

- (id)_displayableAirlineSeatsStringForRow:(id)row designations:(id)designations
{
  v25 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  designationsCopy = designations;
  v8 = PKSeatingInformationNumberFormatter();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = designationsCopy;
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
      v17 = [(PKSeatingInformation *)self _formatSeatLettersForRow:rowCopy designations:v9 includeSpaceBetweenRowAndSeats:[(PKSeatingInformation *)self _isStringAllLetters:rowCopy]];
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_22:
  v17 = [(PKSeatingInformation *)self _formatSeatNumbersForRow:rowCopy designations:v9 formatter:v8 includeSpaceBetweenRowAndSeats:[(PKSeatingInformation *)self _isStringAllNumbers:rowCopy formatter:v8, v20]];
LABEL_23:
  v18 = v17;
LABEL_24:

  return v18;
}

- (id)_formatSeatNumbersForRow:(id)row designations:(id)designations formatter:(id)formatter includeSpaceBetweenRowAndSeats:(BOOL)seats
{
  seatsCopy = seats;
  rowCopy = row;
  formatterCopy = formatter;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __111__PKSeatingInformation_Flight___formatSeatNumbersForRow_designations_formatter_includeSpaceBetweenRowAndSeats___block_invoke;
  v27[3] = &unk_1E79E0B78;
  v12 = formatterCopy;
  v28 = v12;
  v13 = [designations sortedArrayUsingComparator:v27];
  v14 = [v13 count];
  firstObject = [v13 firstObject];
  if (v14 <= 1)
  {
    v16 = [(PKSeatingInformation *)self _formattedAirlineSeatsStringForRow:rowCopy designation:firstObject includeSpaceBetweenRowAndSeats:seatsCopy];
    goto LABEL_12;
  }

  v26 = seatsCopy;
  lastObject = [v13 lastObject];
  v18 = [v12 numberFromString:firstObject];
  v19 = [v12 numberFromString:lastObject];
  v20 = v19;
  v16 = 0;
  if (v18 && v19)
  {
    integerValue = [v18 integerValue];
    v22 = [v20 integerValue] - integerValue;
    if (v22 == [v13 count] - 1)
    {
      v23 = PKLocalizedTicketingString(&cfstr_LocalizedNumbe.isa, &stru_1F22903C8.isa, firstObject, lastObject);
LABEL_10:
      v16 = [(PKSeatingInformation *)self _formattedAirlineSeatsStringForRow:rowCopy designation:v23 includeSpaceBetweenRowAndSeats:v26];

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

- (id)_formatSeatLettersForRow:(id)row designations:(id)designations includeSpaceBetweenRowAndSeats:(BOOL)seats
{
  seatsCopy = seats;
  v37 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v9 = [designations sortedArrayUsingComparator:&__block_literal_global_206];
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

    v31 = seatsCopy;

    if ([v15 count] < 2)
    {
LABEL_17:
      firstObject = [v15 firstObject];
      lastObject = [v15 lastObject];
      firstObject2 = PKLocalizedTicketingString(&cfstr_LocalizedChara.isa, &stru_1F22903C8.isa, firstObject, lastObject);
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

        uppercaseString = [v21 uppercaseString];
        v24 = [uppercaseString characterAtIndex:0];

        uppercaseString2 = [v22 uppercaseString];
        v26 = [uppercaseString2 characterAtIndex:0];

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

      firstObject = PKLocalizedTicketingString(&cfstr_LocalizedListD_0.isa, 0);
      firstObject2 = [v15 componentsJoinedByString:firstObject];
    }

    selfCopy2 = self;
    v12 = rowCopy;
    v13 = firstObject2;
    v14 = v31;
  }

  else
  {
    firstObject2 = [v9 firstObject];
    selfCopy2 = self;
    v12 = rowCopy;
    v13 = firstObject2;
    v14 = seatsCopy;
  }

  v29 = [(PKSeatingInformation *)selfCopy2 _formattedAirlineSeatsStringForRow:v12 designation:v13 includeSpaceBetweenRowAndSeats:v14];

LABEL_25:

  return v29;
}

- (id)initFromSemantic:(id)semantic
{
  v26 = *MEMORY[0x1E69E9840];
  semanticCopy = semantic;
  v24.receiver = self;
  v24.super_class = PKSeatingInformation;
  v5 = [(PKSeatingInformation *)&v24 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  semanticKey = [semanticCopy semanticKey];
  v7 = [@"seats" isEqualToString:semanticKey];

  if (!v7)
  {
    goto LABEL_18;
  }

  result = [semanticCopy dictionariesValue];
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

- (id)initFromSemantics:(id)semantics
{
  v37 = *MEMORY[0x1E69E9840];
  semanticsCopy = semantics;
  v34.receiver = self;
  v34.super_class = PKSeatingInformation;
  v5 = [(PKSeatingInformation *)&v34 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(semanticsCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = semanticsCopy;
    obj = semanticsCopy;
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
          allSeats = [v11 allSeats];
          if ([allSeats count])
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v13 = allSeats;
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
      semanticsCopy = v23;
      goto LABEL_24;
    }

    v6 = v22;
    allSeats = v22->_allSeats;
    v22->_allSeats = v7;

    semanticsCopy = v23;
  }

  v20 = v6;
LABEL_24:

  return v20;
}

- (id)firstSeatContainingAttributes:(unint64_t)attributes
{
  allSeats = self->_allSeats;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKSeatingInformation_firstSeatContainingAttributes___block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__PKSeat_8l;
  v6[4] = attributes;
  v4 = [(NSArray *)allSeats pk_firstObjectPassingTest:v6];

  return v4;
}

- (id)seatsContainingAttributes:(unint64_t)attributes
{
  allSeats = self->_allSeats;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKSeatingInformation_seatsContainingAttributes___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B32__0__PKSeat_8Q16_B24l;
  v6[4] = attributes;
  v4 = [(NSArray *)allSeats pk_objectsPassingTest:v6];

  return v4;
}

- (BOOL)seatsSpanMultipleSections
{
  _allLevels = [(PKSeatingInformation *)self _allLevels];
  if ([_allLevels count] > 1)
  {
    v5 = 1;
  }

  else
  {
    _allSections = [(PKSeatingInformation *)self _allSections];
    if ([_allSections count] <= 1)
    {
      _allRows = [(PKSeatingInformation *)self _allRows];
      v5 = [_allRows count] > 1;
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
      firstObject = [v3 firstObject];
      designation = [firstObject designation];
      goto LABEL_4;
    }

    if (v4 < 5)
    {
      firstObject = [(PKSeatingInformation *)self _allLevels];
      if ([firstObject count] < 2)
      {
        _allSections = [(PKSeatingInformation *)self _allSections];
        if ([_allSections count] < 2)
        {
          _allRows = [(PKSeatingInformation *)self _allRows];
          if ([_allRows count] < 2)
          {
            v33 = _allRows;
            v34 = firstObject;
            v35 = _allSections;
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

                  designation2 = [*(*(&v38 + 1) + 8 * i) designation];
                  v20 = [v11 numberFromString:designation2];

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
              firstObject2 = [v22 firstObject];
              lastObject = [v22 lastObject];
              v26 = [v23 numberFromString:firstObject2];
              integerValue = [v26 integerValue];

              v28 = [v23 numberFromString:lastObject];
              integerValue2 = [v28 integerValue];

              _allSections = v35;
              if (integerValue2 - integerValue == [v22 count] - 1)
              {
                v7 = PKLocalizedTicketingString(&cfstr_LocalizedNumbe.isa, &stru_1F22903C8.isa, firstObject2, lastObject);
              }

              else
              {
                v31 = PKLocalizedTicketingString(&cfstr_LocalizedListD_0.isa, 0);
                v7 = [v22 componentsJoinedByString:v31];
              }

              v32 = firstObject2;
              _allRows = v33;
              firstObject = v34;
            }

            else
            {
              _allSections = v35;
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

              _allRows = v33;
              firstObject = v34;
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

      designation = PKLocalizedTicketingString(&cfstr_LabelMultipleS.isa, 0);
LABEL_4:
      v7 = designation;
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
  _allLevels = [(PKSeatingInformation *)self _allLevels];
  if ([_allLevels count] < 2)
  {
    _allSections = [(PKSeatingInformation *)self _allSections];
    if ([_allSections count] < 2)
    {
      _allRows = [(PKSeatingInformation *)self _allRows];
      v7 = _allRows;
      if (_allRows)
      {
        if ([_allRows count] == 1)
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
  _allLevels = [(PKSeatingInformation *)self _allLevels];
  if ([_allLevels count] < 2)
  {
    _allSections = [(PKSeatingInformation *)self _allSections];
    v6 = _allSections;
    if (_allSections)
    {
      if ([_allSections count] == 1)
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
  _allAisles = [(PKSeatingInformation *)self _allAisles];
  v3 = _allAisles;
  if (_allAisles)
  {
    if ([_allAisles count] == 1)
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
  _allLevels = [(PKSeatingInformation *)self _allLevels];
  v3 = _allLevels;
  if (_allLevels)
  {
    if ([_allLevels count] == 1)
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
  _allSectionColors = [(PKSeatingInformation *)self _allSectionColors];
  v3 = _allSectionColors;
  if (_allSectionColors && [_allSectionColors count] == 1)
  {
    anyObject = [v3 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)changeMessageFromInformation:(id)information isTransit:(BOOL)transit
{
  transitCopy = transit;
  informationCopy = information;
  firstSeat = [informationCopy firstSeat];
  firstSeat2 = [(PKSeatingInformation *)self firstSeat];
  v9 = firstSeat2;
  if (firstSeat && firstSeat2)
  {
    if ([firstSeat2 isEqual:firstSeat])
    {
LABEL_4:
      v10 = 0;
      goto LABEL_25;
    }
  }

  else if (firstSeat2 == firstSeat)
  {
    goto LABEL_4;
  }

  if (transitCopy)
  {
    v10 = [(PKSeatingInformation *)self changeMessageFromAirlineSeatingInformation:informationCopy];
    goto LABEL_25;
  }

  v11 = [v9 diffFromSeat:firstSeat];
  v12 = v11 & 0x1F;
  designation = [v9 designation];
  v14 = [v9 row];
  section = [v9 section];
  aisle = [v9 aisle];
  level = [v9 level];
  v18 = level;
  if (designation && v12 == 1)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_0.isa, &stru_1F2281668.isa, designation);
  }

  else if (v14 && v12 == 2)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_1.isa, &stru_1F2281668.isa, v14);
  }

  else if (section && v12 == 4)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_2.isa, &stru_1F2281668.isa, section);
  }

  else if (aisle && v12 == 8)
  {
    PKLocalizedTicketingString(&cfstr_SemanticsSeats_3.isa, &stru_1F2281668.isa, section);
  }

  else
  {
    if (!level || v12 != 16)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v18 && (v11 & 0x10) != 0)
      {
        v20 = PKLocalizedTicketingString(&cfstr_SeatLevel.isa, &stru_1F2281668.isa, v18);
        [v27 addObject:v20];
      }

      if (aisle && (v11 & 8) != 0)
      {
        v21 = PKLocalizedTicketingString(&cfstr_SeatAisle.isa, &stru_1F2281668.isa, aisle);
        [v27 addObject:v21];
      }

      if (section && (v11 & 4) != 0)
      {
        v22 = PKLocalizedTicketingString(&cfstr_SeatSection.isa, &stru_1F2281668.isa, section);
        [v27 addObject:v22];
      }

      if (v14 && (v11 & 2) != 0)
      {
        v23 = PKLocalizedTicketingString(&cfstr_SeatRow.isa, &stru_1F2281668.isa, v14);
        [v27 addObject:v23];
      }

      if (designation && (v11 & 1) != 0)
      {
        v24 = PKLocalizedTicketingString(&cfstr_SeatNumber_0.isa, &stru_1F2281668.isa, designation);
        [v27 addObject:v24];
      }

      v26 = PKLocalizedTicketingString(&cfstr_LocalizedListD.isa, 0);
      v25 = [v27 componentsJoinedByString:v26];
      v10 = PKLocalizedTicketingString(&cfstr_SemanticsSeats.isa, &stru_1F2281668.isa, v25);

      goto LABEL_24;
    }

    PKLocalizedTicketingString(&cfstr_SemanticsSeats_4.isa, &stru_1F2281668.isa, level);
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

- (PKSeatingInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSeatingInformation;
  v5 = [(PKSeatingInformation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allSeats"];
    allSeats = v5->_allSeats;
    v5->_allSeats = v6;
  }

  return v5;
}

@end