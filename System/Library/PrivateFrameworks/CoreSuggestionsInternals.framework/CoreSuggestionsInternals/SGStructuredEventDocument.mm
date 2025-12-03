@interface SGStructuredEventDocument
+ (BOOL)caseInsensitiveContainsString:(id)string inCandidates:(id)candidates;
+ (id)candidatesForLabelIndexSets:(id)sets inPlainText:(id)text forTaggedCharacterRanges:(id)ranges;
+ (id)cleanCandidates:(id)candidates outputName:(id)name label:(id)label;
+ (id)modelOutputSummary:(id)summary;
+ (id)simpleCandidateResolutionFromCandidates:(id)candidates;
+ (id)stripRepeatedContent:(id)content repeatedLength:(unint64_t)length;
- (BOOL)detectedEventPolarity;
- (SGStructuredEventDocument)initWithPlainText:(id)text category:(unsigned __int8)category dataDetectorMatches:(id)matches enrichedTaggedCharacterRanges:(id)ranges modelOutput:(id)output fromSuggestTool:(BOOL)tool;
- (id)_simpleCandidateForOutputName:(id)name label:(id)label withError:(id *)error;
- (id)detectedAddressForLabel:(id)label withError:(id *)error;
- (id)detectedEndDateComponents;
- (id)detectedEventName;
- (id)detectedPostalAddressExtractionForTokenIndexes:(id)indexes dataDetectorMatches:(id)matches label:(id)label;
- (id)detectedReservationIdWithError:(id *)error;
- (id)detectedStartDateComponents;
- (id)filterCandidateDateComponents:(id)components;
- (id)labelTokenIndexesForOutputName:(id)name label:(id)label;
- (id)mergePostalAddressComponents:(id)components;
- (id)modelOutputSummary;
- (id)predictedStringsFromModelOutput;
- (id)titleMapping;
@end

@implementation SGStructuredEventDocument

- (BOOL)detectedEventPolarity
{
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  v4 = [SGExtractionDocument labelTokenIndexesForOutputName:@"polarity" label:@"POLARITY__EVENT_YES" modelOutput:modelOutput];

  modelOutput2 = [(SGExtractionDocument *)self modelOutput];
  v6 = [modelOutput2 objectForKeyedSubscript:@"polarity"];
  if (v6)
  {
    if ([v4 containsIndex:0])
    {
      modelOutput3 = [(SGExtractionDocument *)self modelOutput];
      v8 = [modelOutput3 objectForKey:@"polarity"];
      firstObject = [v8 firstObject];
      v10 = [firstObject isEqualToString:@"POLARITY__EVENT_YES"];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)labelTokenIndexesForOutputName:(id)name label:(id)label
{
  labelCopy = label;
  nameCopy = name;
  v8 = +[SGStructuredEventExtractionModel sharedInstance];
  v9 = [v8 maxMergeDistanceForSection:nameCopy label:labelCopy];

  v10 = objc_opt_class();
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  v12 = [v10 labelTokenIndexesForOutputName:nameCopy label:labelCopy modelOutput:modelOutput maxMergeDistance:v9];

  return v12;
}

- (id)predictedStringsFromModelOutput
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(SGExtractionDocument *)self modelOutput];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v28 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        if (([v7 isEqualToString:@"polarity"] & 1) == 0)
        {
          modelOutput = [(SGExtractionDocument *)self modelOutput];
          v9 = [modelOutput objectForKeyedSubscript:v7];
          v10 = [v9 count];

          if (v10)
          {
            v11 = 0;
            do
            {
              modelOutput2 = [(SGExtractionDocument *)self modelOutput];
              v13 = [modelOutput2 objectForKeyedSubscript:v7];
              v14 = [v13 objectAtIndexedSubscript:v11];

              if (([v14 isEqualToString:@"NONE"] & 1) == 0)
              {
                v15 = [v3 objectForKeyedSubscript:v14];

                if (!v15)
                {
                  v16 = objc_opt_new();
                  [v3 setObject:v16 forKeyedSubscript:v14];
                }

                v17 = [v3 objectForKeyedSubscript:v14];
                [v17 addIndex:v11];
              }

              ++v11;
              modelOutput3 = [(SGExtractionDocument *)self modelOutput];
              v19 = [modelOutput3 objectForKeyedSubscript:v7];
              v20 = [v19 count];
            }

            while (v20 > v11);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v21 = objc_opt_class();
  plainText = [(SGStructuredEventDocument *)self plainText];
  enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
  v24 = [v21 candidatesForLabelIndexSets:v3 inPlainText:plainText forTaggedCharacterRanges:enrichedTaggedCharacterRanges];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)modelOutputSummary
{
  v3 = objc_opt_class();
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  v5 = [v3 modelOutputSummary:modelOutput];

  return v5;
}

- (id)titleMapping
{
  if (self->_category - 4 > 4)
  {
    return 0;
  }

  else
  {
    return off_27894B1E0[(self->_category - 4)];
  }
}

- (id)detectedPostalAddressExtractionForTokenIndexes:(id)indexes dataDetectorMatches:(id)matches label:(id)label
{
  indexesCopy = indexes;
  matchesCopy = matches;
  labelCopy = label;
  modelOutput = [(SGExtractionDocument *)self modelOutput];

  if (!modelOutput)
  {
    anyObject2 = 0;
    anyObject = 0;
    goto LABEL_16;
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __102__SGStructuredEventDocument_detectedPostalAddressExtractionForTokenIndexes_dataDetectorMatches_label___block_invoke;
  v27 = &unk_27894B1A0;
  selfCopy = self;
  v29 = matchesCopy;
  v14 = v13;
  v30 = v14;
  v15 = v12;
  v31 = v15;
  [indexesCopy enumerateRangesUsingBlock:&v24];
  if ([v14 count] == 1)
  {
    anyObject = [v14 anyObject];
    if (anyObject)
    {
      goto LABEL_14;
    }
  }

  else if ([v14 count] >= 2)
  {
    allObjects = [v14 allObjects];
    anyObject = [(SGStructuredEventDocument *)self mergePostalAddressComponents:allObjects];

    if (anyObject)
    {
      goto LABEL_14;
    }
  }

  if ([v15 count] != 1)
  {
    if ([v15 count] >= 2)
    {
      allObjects2 = [v15 allObjects];
      category = self->_category;
      enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
      anyObject2 = [(SGStructuredEventDocument *)self resolveCandidates:allObjects2 forCategory:category label:labelCopy rawIndexSet:indexesCopy taggedCharacterRanges:enrichedTaggedCharacterRanges];

      goto LABEL_12;
    }

    anyObject = 0;
LABEL_14:
    anyObject2 = 0;
    goto LABEL_15;
  }

  anyObject2 = [v15 anyObject];
LABEL_12:
  anyObject = 0;
LABEL_15:

LABEL_16:
  v22 = [[SGPostalAddressExtraction alloc] initWithPlainText:anyObject2 components:anyObject];

  return v22;
}

void __102__SGStructuredEventDocument_detectedPostalAddressExtractionForTokenIndexes_dataDetectorMatches_label___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) textRangeForTokenRange:{a2, a3}];
  v6 = v5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = a1;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if ([v12 matchType] == 1)
        {
          v14 = [v12 postalAddressComponents];
          if (v14)
          {
            v15 = v14;
            v33.location = [v12 range];
            v33.length = v16;
            v32.location = v4;
            v32.length = v6;
            length = NSIntersectionRange(v32, v33).length;

            if (length)
            {
              v18 = *(v25 + 48);
              v19 = [v12 postalAddressComponents];
              [v18 addObject:v19];
            }
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v20 = *(v25 + 56);
  v21 = [*(v25 + 32) plainText];
  v22 = [v21 substringWithRange:{v4, v6}];
  v23 = _PASCollapseWhitespaceAndStrip();
  [v20 addObject:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)mergePostalAddressComponents:(id)components
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  componentsCopy = components;
  v4 = [componentsCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    obj = componentsCopy;
    v37 = *v39;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        street = [v12 street];

        if (street)
        {
          if (v6)
          {
            street2 = [v12 street];
            v15 = [v6 caseInsensitiveCompare:street2];

            if (v15)
            {
LABEL_29:
              componentsCopy = obj;

              v33 = 0;
              goto LABEL_32;
            }
          }

          street3 = [v12 street];

          v6 = street3;
        }

        city = [v12 city];

        if (city)
        {
          if (v7)
          {
            city2 = [v12 city];
            v19 = [v7 caseInsensitiveCompare:city2];

            if (v19)
            {
              goto LABEL_29;
            }
          }

          city3 = [v12 city];

          v7 = city3;
        }

        postalCode = [v12 postalCode];

        if (postalCode)
        {
          if (v8)
          {
            postalCode2 = [v12 postalCode];
            v23 = [v8 caseInsensitiveCompare:postalCode2];

            if (v23)
            {
              goto LABEL_29;
            }
          }

          postalCode3 = [v12 postalCode];

          v8 = postalCode3;
        }

        state = [v12 state];

        if (state)
        {
          if (v9)
          {
            state2 = [v12 state];
            v27 = [v9 caseInsensitiveCompare:state2];

            if (v27)
            {
              goto LABEL_29;
            }
          }

          state3 = [v12 state];

          v9 = state3;
        }

        country = [v12 country];

        if (country)
        {
          if (v10)
          {
            country2 = [v12 country];
            v31 = [v10 caseInsensitiveCompare:country2];

            if (v31)
            {
              goto LABEL_29;
            }
          }

          country3 = [v12 country];

          v10 = country3;
        }
      }

      componentsCopy = obj;
      v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v33 = [MEMORY[0x277D02090] components:v6 city:v7 state:v9 postalCode:v8 country:v10];
LABEL_32:

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_simpleCandidateForOutputName:(id)name label:(id)label withError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  labelCopy = label;
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  if (!modelOutput || (v11 = modelOutput, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    v13 = sgEventsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = labelCopy;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect %@, missing modelOutput or enrichedTaggedCharacterRanges", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v13 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:nameCopy label:labelCopy];
  if (![v13 count])
  {
LABEL_8:
    v17 = 0;
    goto LABEL_16;
  }

  v14 = [(SGExtractionDocument *)self candidatesForLabelTokenIndexes:v13 inPlainText:self->_plainText];
  v15 = [objc_opt_class() cleanCandidates:v14 outputName:nameCopy label:labelCopy];
  v16 = [objc_opt_class() simpleCandidateResolutionFromCandidates:v15];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    if ([v15 count] < 2)
    {
      v18 = 0;
    }

    else
    {
      category = self->_category;
      enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
      v18 = [(SGStructuredEventDocument *)self resolveCandidates:v15 forCategory:category label:labelCopy rawIndexSet:v13 taggedCharacterRanges:enrichedTaggedCharacterRanges];
    }

    if (error && !v18)
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v26 = *MEMORY[0x277CCA450];
      labelCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGStructuredEventDocument: %@, unable to resolve candidates", labelCopy];
      v27 = labelCopy;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *error = [v21 initWithDomain:@"SGExtractionDocumentErrorDomain" code:1 userInfo:v23];

      v18 = 0;
    }
  }

LABEL_16:
  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)detectedAddressForLabel:(id)label withError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  if (!modelOutput || (v8 = modelOutput, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v10 = sgEventsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect startAddress, missing modelOutput or enrichedTaggedCharacterRanges", v17, 2u);
    }

    goto LABEL_9;
  }

  v10 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"location" label:labelCopy];
  if (![v10 count])
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = [(SGStructuredEventDocument *)self detectedPostalAddressExtractionForTokenIndexes:v10 dataDetectorMatches:self->_dataDetectorMatches label:labelCopy];
  hasExtraction = [v11 hasExtraction];
  if (error && (hasExtraction & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"SGStructuredEventDocument: address, unable to resolve candidates";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v13 initWithDomain:@"SGExtractionDocumentErrorDomain" code:1 userInfo:v14];
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)filterCandidateDateComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy count] == 1)
  {
    firstObject = [componentsCopy firstObject];
  }

  else
  {
    if ([componentsCopy count] < 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    firstObject = [objc_opt_class() mergeDetectedDateComponents:componentsCopy];
  }

  v5 = firstObject;
  if (firstObject && ([firstObject year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "day") == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v5 = v5;
  v6 = v5;
LABEL_12:

  return v6;
}

- (id)detectedEndDateComponents
{
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  if (modelOutput && (v4 = modelOutput, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"time" label:@"EVENT_TIME__END_DATETIME"];
    LOBYTE(v11) = 1;
    v7 = [(SGExtractionDocument *)self detectedDateComponentsForTokenIndexes:v6 dataDetectorMatches:self->_dataDetectorMatches allowDatesInPast:1 inferDates:0 approximateTime:0 partialDate:0 useEndForDurations:v11];
    v8 = [(SGStructuredEventDocument *)self filterCandidateDateComponents:v7];
  }

  else
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect endDateComponents, missing modelOutput or enrichedTaggedCharacterRanges", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)detectedStartDateComponents
{
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  if (modelOutput && (v4 = modelOutput, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"time" label:@"EVENT_TIME__START_DATETIME"];
    LOBYTE(v11) = 0;
    v7 = [(SGExtractionDocument *)self detectedDateComponentsForTokenIndexes:v6 dataDetectorMatches:self->_dataDetectorMatches allowDatesInPast:1 inferDates:0 approximateTime:0 partialDate:0 useEndForDurations:v11];
    v8 = [(SGStructuredEventDocument *)self filterCandidateDateComponents:v7];
  }

  else
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect startDateComponents, missing modelOutput or enrichedTaggedCharacterRanges", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)detectedReservationIdWithError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  if (modelOutput && (v6 = modelOutput, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"core" label:@"EVENT_CORE__RESERVATION_ID"];
    v9 = [(SGExtractionDocument *)self candidatesForLabelTokenIndexes:v8 inPlainText:self->_plainText];
    if ([v9 count])
    {
      v10 = [objc_opt_class() simpleCandidateResolutionFromCandidates:v9];
      if (!v10)
      {
        if ([v9 count] < 2)
        {
          v10 = 0;
        }

        else
        {
          category = self->_category;
          enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
          v10 = [(SGStructuredEventDocument *)self resolveCandidates:v9 forCategory:category label:@"EVENT_CORE__RESERVATION_ID" rawIndexSet:v8 taggedCharacterRanges:enrichedTaggedCharacterRanges];
        }

        if (error && !v10)
        {
          v14 = objc_alloc(MEMORY[0x277CCA9B8]);
          v19 = *MEMORY[0x277CCA450];
          v20[0] = @"SGStructuredEventDocument: reservationId, unable to resolve candidates";
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
          *error = [v14 initWithDomain:@"SGExtractionDocumentErrorDomain" code:1 userInfo:v15];
        }
      }

      v13 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v8 = sgEventsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect reservationId, missing modelOutput or enrichedTaggedCharacterRanges", v18, 2u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)detectedEventName
{
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  if (modelOutput && (v4 = modelOutput, -[SGExtractionDocument enrichedTaggedCharacterRanges](self, "enrichedTaggedCharacterRanges"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    titleMapping = [(SGStructuredEventDocument *)self titleMapping];
    if (titleMapping)
    {
      v8 = titleMapping;
      v9 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"title" label:titleMapping];
      v10 = [(SGExtractionDocument *)self candidatesForLabelTokenIndexes:v9 inPlainText:self->_plainText];
      v11 = [objc_opt_class() cleanCandidates:v10 outputName:@"title" label:v8];
      v12 = [objc_opt_class() simpleCandidateResolutionFromCandidates:v11];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else if ([v11 count] < 2)
      {
        v14 = 0;
      }

      else
      {
        category = self->_category;
        enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
        v14 = [(SGStructuredEventDocument *)self resolveCandidates:v11 forCategory:category label:v8 rawIndexSet:v9 taggedCharacterRanges:enrichedTaggedCharacterRanges];
      }

      goto LABEL_16;
    }

    v15 = sgEventsLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: No title mapping, unsupported category", v19, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = sgEventsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect title, missing modelOutput or enrichedTaggedCharacterRanges", buf, 2u);
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (SGStructuredEventDocument)initWithPlainText:(id)text category:(unsigned __int8)category dataDetectorMatches:(id)matches enrichedTaggedCharacterRanges:(id)ranges modelOutput:(id)output fromSuggestTool:(BOOL)tool
{
  textCopy = text;
  matchesCopy = matches;
  v20.receiver = self;
  v20.super_class = SGStructuredEventDocument;
  v17 = [(SGExtractionDocument *)&v20 initWithEnrichedTaggedCharacterRanges:ranges modelOutput:output];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_plainText, text);
    v18->_category = category;
    objc_storeStrong(&v18->_dataDetectorMatches, matches);
    v18->_fromSuggestTool = tool;
  }

  return v18;
}

+ (id)stripRepeatedContent:(id)content repeatedLength:(unint64_t)length
{
  contentCopy = content;
  v6 = contentCopy;
  if (length && [contentCopy length] >= length)
  {
    v7 = vcvtpd_u64_f64(vcvtd_n_f64_u64([v6 length], 1uLL));
    v8 = [v6 substringToIndex:v7];
    v9 = _PASTrimTrailingWhitespace();

    v10 = [v6 substringFromIndex:v7];
    LOBYTE(v8) = [v9 isEqualToString:v10];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v9 = v6;
LABEL_6:

  return v9;
}

+ (id)cleanCandidates:(id)candidates outputName:(id)name label:(id)label
{
  labelCopy = label;
  nameCopy = name;
  candidatesCopy = candidates;
  v10 = +[SGStructuredEventExtractionModel sharedInstance];
  [v10 stripRepeatedContentForSectionLength:nameCopy label:labelCopy];

  v11 = sgMap();

  return v11;
}

+ (BOOL)caseInsensitiveContainsString:(id)string inCandidates:(id)candidates
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  candidatesCopy = candidates;
  v7 = [candidatesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        if (![*(*(&v12 + 1) + 8 * i) caseInsensitiveCompare:{stringCopy, v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [candidatesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)simpleCandidateResolutionFromCandidates:(id)candidates
{
  v20 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = candidatesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([self caseInsensitiveContainsString:v11 inCandidates:{v5, v15}] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)candidatesForLabelIndexSets:(id)sets inPlainText:(id)text forTaggedCharacterRanges:(id)ranges
{
  v27 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  textCopy = text;
  rangesCopy = ranges;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = setsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = [self candidatesForLabelTokenIndexes:v17 inPlainText:textCopy forTaggedCharacterRanges:rangesCopy];

        if (v18)
        {
          [v21 setObject:v18 forKeyedSubscript:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)modelOutputSummary:(id)summary
{
  v36 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = summaryCopy;
  v24 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v22 = v5;
    v23 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v5 objectForKeyedSubscript:{v7, v22}];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v25 = i;
          v11 = 0;
          v12 = *v27;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              v14 = v11;
              if (*v27 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              if ((!v14 || ([v14 isEqualToString:*(*(&v26 + 1) + 8 * j)] & 1) == 0) && (objc_msgSend(@"NONE", "isEqualToString:", v15) & 1) == 0)
              {
                v16 = [v4 objectForKeyedSubscript:v15];

                if (v16)
                {
                  v17 = MEMORY[0x277CCABB0];
                  v18 = [v4 objectForKeyedSubscript:v15];
                  v19 = [v17 numberWithUnsignedInt:{objc_msgSend(v18, "unsignedIntValue") + 1}];
                  [v4 setObject:v19 forKeyedSubscript:v15];
                }

                else
                {
                  [v4 setObject:&unk_284749200 forKeyedSubscript:v15];
                }
              }

              v11 = v15;
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);

          v5 = v22;
          i = v25;
        }
      }

      v24 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

@end