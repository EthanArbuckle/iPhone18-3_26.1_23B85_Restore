@interface SGStructuredEventDocument
+ (BOOL)caseInsensitiveContainsString:(id)a3 inCandidates:(id)a4;
+ (id)candidatesForLabelIndexSets:(id)a3 inPlainText:(id)a4 forTaggedCharacterRanges:(id)a5;
+ (id)cleanCandidates:(id)a3 outputName:(id)a4 label:(id)a5;
+ (id)modelOutputSummary:(id)a3;
+ (id)simpleCandidateResolutionFromCandidates:(id)a3;
+ (id)stripRepeatedContent:(id)a3 repeatedLength:(unint64_t)a4;
- (BOOL)detectedEventPolarity;
- (SGStructuredEventDocument)initWithPlainText:(id)a3 category:(unsigned __int8)a4 dataDetectorMatches:(id)a5 enrichedTaggedCharacterRanges:(id)a6 modelOutput:(id)a7 fromSuggestTool:(BOOL)a8;
- (id)_simpleCandidateForOutputName:(id)a3 label:(id)a4 withError:(id *)a5;
- (id)detectedAddressForLabel:(id)a3 withError:(id *)a4;
- (id)detectedEndDateComponents;
- (id)detectedEventName;
- (id)detectedPostalAddressExtractionForTokenIndexes:(id)a3 dataDetectorMatches:(id)a4 label:(id)a5;
- (id)detectedReservationIdWithError:(id *)a3;
- (id)detectedStartDateComponents;
- (id)filterCandidateDateComponents:(id)a3;
- (id)labelTokenIndexesForOutputName:(id)a3 label:(id)a4;
- (id)mergePostalAddressComponents:(id)a3;
- (id)modelOutputSummary;
- (id)predictedStringsFromModelOutput;
- (id)titleMapping;
@end

@implementation SGStructuredEventDocument

- (BOOL)detectedEventPolarity
{
  v3 = [(SGExtractionDocument *)self modelOutput];
  v4 = [SGExtractionDocument labelTokenIndexesForOutputName:@"polarity" label:@"POLARITY__EVENT_YES" modelOutput:v3];

  v5 = [(SGExtractionDocument *)self modelOutput];
  v6 = [v5 objectForKeyedSubscript:@"polarity"];
  if (v6)
  {
    if ([v4 containsIndex:0])
    {
      v7 = [(SGExtractionDocument *)self modelOutput];
      v8 = [v7 objectForKey:@"polarity"];
      v9 = [v8 firstObject];
      v10 = [v9 isEqualToString:@"POLARITY__EVENT_YES"];
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

- (id)labelTokenIndexesForOutputName:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SGStructuredEventExtractionModel sharedInstance];
  v9 = [v8 maxMergeDistanceForSection:v7 label:v6];

  v10 = objc_opt_class();
  v11 = [(SGExtractionDocument *)self modelOutput];
  v12 = [v10 labelTokenIndexesForOutputName:v7 label:v6 modelOutput:v11 maxMergeDistance:v9];

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
          v8 = [(SGExtractionDocument *)self modelOutput];
          v9 = [v8 objectForKeyedSubscript:v7];
          v10 = [v9 count];

          if (v10)
          {
            v11 = 0;
            do
            {
              v12 = [(SGExtractionDocument *)self modelOutput];
              v13 = [v12 objectForKeyedSubscript:v7];
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
              v18 = [(SGExtractionDocument *)self modelOutput];
              v19 = [v18 objectForKeyedSubscript:v7];
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
  v22 = [(SGStructuredEventDocument *)self plainText];
  v23 = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
  v24 = [v21 candidatesForLabelIndexSets:v3 inPlainText:v22 forTaggedCharacterRanges:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)modelOutputSummary
{
  v3 = objc_opt_class();
  v4 = [(SGExtractionDocument *)self modelOutput];
  v5 = [v3 modelOutputSummary:v4];

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

- (id)detectedPostalAddressExtractionForTokenIndexes:(id)a3 dataDetectorMatches:(id)a4 label:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SGExtractionDocument *)self modelOutput];

  if (!v11)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __102__SGStructuredEventDocument_detectedPostalAddressExtractionForTokenIndexes_dataDetectorMatches_label___block_invoke;
  v27 = &unk_27894B1A0;
  v28 = self;
  v29 = v9;
  v14 = v13;
  v30 = v14;
  v15 = v12;
  v31 = v15;
  [v8 enumerateRangesUsingBlock:&v24];
  if ([v14 count] == 1)
  {
    v16 = [v14 anyObject];
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else if ([v14 count] >= 2)
  {
    v18 = [v14 allObjects];
    v16 = [(SGStructuredEventDocument *)self mergePostalAddressComponents:v18];

    if (v16)
    {
      goto LABEL_14;
    }
  }

  if ([v15 count] != 1)
  {
    if ([v15 count] >= 2)
    {
      v19 = [v15 allObjects];
      category = self->_category;
      v21 = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
      v17 = [(SGStructuredEventDocument *)self resolveCandidates:v19 forCategory:category label:v10 rawIndexSet:v8 taggedCharacterRanges:v21];

      goto LABEL_12;
    }

    v16 = 0;
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v17 = [v15 anyObject];
LABEL_12:
  v16 = 0;
LABEL_15:

LABEL_16:
  v22 = [[SGPostalAddressExtraction alloc] initWithPlainText:v17 components:v16];

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

- (id)mergePostalAddressComponents:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    obj = v3;
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
        v13 = [v12 street];

        if (v13)
        {
          if (v6)
          {
            v14 = [v12 street];
            v15 = [v6 caseInsensitiveCompare:v14];

            if (v15)
            {
LABEL_29:
              v3 = obj;

              v33 = 0;
              goto LABEL_32;
            }
          }

          v16 = [v12 street];

          v6 = v16;
        }

        v17 = [v12 city];

        if (v17)
        {
          if (v7)
          {
            v18 = [v12 city];
            v19 = [v7 caseInsensitiveCompare:v18];

            if (v19)
            {
              goto LABEL_29;
            }
          }

          v20 = [v12 city];

          v7 = v20;
        }

        v21 = [v12 postalCode];

        if (v21)
        {
          if (v8)
          {
            v22 = [v12 postalCode];
            v23 = [v8 caseInsensitiveCompare:v22];

            if (v23)
            {
              goto LABEL_29;
            }
          }

          v24 = [v12 postalCode];

          v8 = v24;
        }

        v25 = [v12 state];

        if (v25)
        {
          if (v9)
          {
            v26 = [v12 state];
            v27 = [v9 caseInsensitiveCompare:v26];

            if (v27)
            {
              goto LABEL_29;
            }
          }

          v28 = [v12 state];

          v9 = v28;
        }

        v29 = [v12 country];

        if (v29)
        {
          if (v10)
          {
            v30 = [v12 country];
            v31 = [v10 caseInsensitiveCompare:v30];

            if (v31)
            {
              goto LABEL_29;
            }
          }

          v32 = [v12 country];

          v10 = v32;
        }
      }

      v3 = obj;
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

- (id)_simpleCandidateForOutputName:(id)a3 label:(id)a4 withError:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SGExtractionDocument *)self modelOutput];
  if (!v10 || (v11 = v10, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    v13 = sgEventsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect %@, missing modelOutput or enrichedTaggedCharacterRanges", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v13 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:v8 label:v9];
  if (![v13 count])
  {
LABEL_8:
    v17 = 0;
    goto LABEL_16;
  }

  v14 = [(SGExtractionDocument *)self candidatesForLabelTokenIndexes:v13 inPlainText:self->_plainText];
  v15 = [objc_opt_class() cleanCandidates:v14 outputName:v8 label:v9];
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
      v20 = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
      v18 = [(SGStructuredEventDocument *)self resolveCandidates:v15 forCategory:category label:v9 rawIndexSet:v13 taggedCharacterRanges:v20];
    }

    if (a5 && !v18)
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v26 = *MEMORY[0x277CCA450];
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGStructuredEventDocument: %@, unable to resolve candidates", v9];
      v27 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *a5 = [v21 initWithDomain:@"SGExtractionDocumentErrorDomain" code:1 userInfo:v23];

      v18 = 0;
    }
  }

LABEL_16:
  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)detectedAddressForLabel:(id)a3 withError:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SGExtractionDocument *)self modelOutput];
  if (!v7 || (v8 = v7, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v10 = sgEventsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGStructuredEventDocument: Unable to detect startAddress, missing modelOutput or enrichedTaggedCharacterRanges", v17, 2u);
    }

    goto LABEL_9;
  }

  v10 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"location" label:v6];
  if (![v10 count])
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = [(SGStructuredEventDocument *)self detectedPostalAddressExtractionForTokenIndexes:v10 dataDetectorMatches:self->_dataDetectorMatches label:v6];
  v12 = [v11 hasExtraction];
  if (a4 && (v12 & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"SGStructuredEventDocument: address, unable to resolve candidates";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v13 initWithDomain:@"SGExtractionDocumentErrorDomain" code:1 userInfo:v14];
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)filterCandidateDateComponents:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    if ([v3 count] < 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v4 = [objc_opt_class() mergeDetectedDateComponents:v3];
  }

  v5 = v4;
  if (v4 && ([v4 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "day") == 0x7FFFFFFFFFFFFFFFLL))
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
  v3 = [(SGExtractionDocument *)self modelOutput];
  if (v3 && (v4 = v3, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
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
  v3 = [(SGExtractionDocument *)self modelOutput];
  if (v3 && (v4 = v3, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
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

- (id)detectedReservationIdWithError:(id *)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = [(SGExtractionDocument *)self modelOutput];
  if (v5 && (v6 = v5, [(SGExtractionDocument *)self enrichedTaggedCharacterRanges], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
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
          v12 = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
          v10 = [(SGStructuredEventDocument *)self resolveCandidates:v9 forCategory:category label:@"EVENT_CORE__RESERVATION_ID" rawIndexSet:v8 taggedCharacterRanges:v12];
        }

        if (a3 && !v10)
        {
          v14 = objc_alloc(MEMORY[0x277CCA9B8]);
          v19 = *MEMORY[0x277CCA450];
          v20[0] = @"SGStructuredEventDocument: reservationId, unable to resolve candidates";
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
          *a3 = [v14 initWithDomain:@"SGExtractionDocumentErrorDomain" code:1 userInfo:v15];
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
  v3 = [(SGExtractionDocument *)self modelOutput];
  if (v3 && (v4 = v3, -[SGExtractionDocument enrichedTaggedCharacterRanges](self, "enrichedTaggedCharacterRanges"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = [(SGStructuredEventDocument *)self titleMapping];
    if (v7)
    {
      v8 = v7;
      v9 = [(SGStructuredEventDocument *)self labelTokenIndexesForOutputName:@"title" label:v7];
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
        v17 = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
        v14 = [(SGStructuredEventDocument *)self resolveCandidates:v11 forCategory:category label:v8 rawIndexSet:v9 taggedCharacterRanges:v17];
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

- (SGStructuredEventDocument)initWithPlainText:(id)a3 category:(unsigned __int8)a4 dataDetectorMatches:(id)a5 enrichedTaggedCharacterRanges:(id)a6 modelOutput:(id)a7 fromSuggestTool:(BOOL)a8
{
  v15 = a3;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = SGStructuredEventDocument;
  v17 = [(SGExtractionDocument *)&v20 initWithEnrichedTaggedCharacterRanges:a6 modelOutput:a7];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_plainText, a3);
    v18->_category = a4;
    objc_storeStrong(&v18->_dataDetectorMatches, a5);
    v18->_fromSuggestTool = a8;
  }

  return v18;
}

+ (id)stripRepeatedContent:(id)a3 repeatedLength:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 && [v5 length] >= a4)
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

+ (id)cleanCandidates:(id)a3 outputName:(id)a4 label:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SGStructuredEventExtractionModel sharedInstance];
  [v10 stripRepeatedContentForSectionLength:v8 label:v7];

  v11 = sgMap();

  return v11;
}

+ (BOOL)caseInsensitiveContainsString:(id)a3 inCandidates:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v12 + 1) + 8 * i) caseInsensitiveCompare:{v5, v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (id)simpleCandidateResolutionFromCandidates:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        if (([a1 caseInsensitiveContainsString:v11 inCandidates:{v5, v15}] & 1) == 0)
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
    v12 = [v5 firstObject];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)candidatesForLabelIndexSets:(id)a3 inPlainText:(id)a4 forTaggedCharacterRanges:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
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
        v18 = [a1 candidatesForLabelTokenIndexes:v17 inPlainText:v9 forTaggedCharacterRanges:v10];

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

+ (id)modelOutputSummary:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
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