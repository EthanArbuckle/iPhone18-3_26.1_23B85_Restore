@interface _DKPredictionQuery
+ (id)predictionQueryForStream:(id)stream withPredicate:(id)predicate withPredictionType:(unint64_t)type;
+ (id)predictionQueryForStreams:(id)streams withPredicate:(id)predicate withPredictionType:(unint64_t)type;
+ (id)topNPredictionQueryForStream:(id)stream withPredicate:(id)predicate withTopN:(int64_t)n withMinLikelihood:(double)likelihood;
+ (uint64_t)calendar:(void *)calendar isWeekendWithIntervalToWeekdayWeekendTransition:(void *)transition containingOrAfterDate:;
- (BOOL)both:(void *)both and:(void *)and areSameDayOfWeekWith:;
- (_DKPredictionQuery)initWithCoder:(id)coder;
- (id)constructTimelineWithObservations:(void *)observations withFirstEventDate:(void *)date withHistogramInterval:(void *)interval withPredictionStartDate:(double)startDate durationSinceFirstEvent:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)executeUsingCoreDataStorage:(id)storage error:(id *)error;
- (id)handleResults:(id)results error:(id)error;
- (id)likelihoodForTopN:(void *)n withMinLikelihood:(double)likelihood withData:;
- (id)predictionOfType:(void *)type withData:;
- (uint64_t)both:(void *)both and:(void *)and areWeekendOrWeekdayWithCalendar:;
- (uint64_t)shouldIncludeEventWithStartDate:(void *)date eventSlot:(void *)slot withPredictionStartDate:(uint64_t)startDate withPartitionType:(void *)type andCalendar:;
- (void)addEventsToObservations:(void *)observations startingHistogram:(void *)histogram endingHistogram:(void *)endingHistogram withPredictionDate:;
- (void)encodeWithCoder:(id)coder;
- (void)handleEventPredictionWithEventStartDate:(void *)date eventEndDate:(void *)endDate predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(int)calendar observations:(double)observations useWeights:;
- (void)handleImpulsePredictionWithEventStartDate:(void *)date predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(void *)calendar observations:(_DWORD *)observations lastDate:(double)lastDate lastSlot:;
- (void)setSlotDuration:(int)duration;
- (void)setValueForIndex:(void *)index forObservations:(double)observations withDenominator:;
@end

@implementation _DKPredictionQuery

- (void)setSlotDuration:(int)duration
{
  if (!duration || 86400 % duration)
  {
    duration = 900;
  }

  self->_slotDuration = duration;
  self->_totalSlotsInDay = 86400 / duration;
  asOfDate = self->_asOfDate;
  if (asOfDate)
  {
    date = asOfDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v6 = self->_asOfDate;
  self->_asOfDate = date;

  MEMORY[0x1EEE66BB8](date, v6);
}

+ (id)predictionQueryForStream:(id)stream withPredicate:(id)predicate withPredictionType:(unint64_t)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  streamCopy = stream;
  v9 = objc_opt_class();
  v14[0] = streamCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v11 = [v9 predictionQueryForStreams:v10 withPredicate:predicateCopy withPredictionType:type];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predictionQueryForStreams:(id)streams withPredicate:(id)predicate withPredictionType:(unint64_t)type
{
  v16[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  streamsCopy = streams;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [v9 eventQueryWithPredicate:predicateCopy eventStreams:streamsCopy offset:0 limit:0 sortDescriptors:v11];

  [v12 setType:type];
  [v12 setSlotDuration:900];
  [v12 setReadMetadata:0];
  [v12 setDeduplicateValues:1];
  date = [MEMORY[0x1E695DF00] date];
  [v12 setAsOfDate:date];

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (uint64_t)calendar:(void *)calendar isWeekendWithIntervalToWeekdayWeekendTransition:(void *)transition containingOrAfterDate:
{
  v6 = a2;
  transitionCopy = transition;
  objc_opt_self();
  v18 = 0;
  v19 = 0.0;
  v8 = [v6 rangeOfWeekendStartDate:&v18 interval:&v19 containingDate:transitionCopy];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = [v9 dateByAddingTimeInterval:v19];
    [v11 timeIntervalSinceDate:transitionCopy];
    v13 = v12;

    if (!calendar)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = 0;
  [v6 nextWeekendStartDate:&v17 interval:0 options:4096 afterDate:transitionCopy];
  v14 = v17;

  [v14 timeIntervalSinceDate:transitionCopy];
  v13 = v15;
  v10 = v14;
  if (calendar)
  {
LABEL_5:
    *calendar = v13;
  }

LABEL_6:

  return v8;
}

- (id)executeUsingCoreDataStorage:(id)storage error:(id *)error
{
  if (self->_isTopNPrediction)
  {
    v20.receiver = self;
    v20.super_class = _DKPredictionQuery;
    storageCopy = storage;
    v7 = [(_DKEventQuery *)&v20 executeUsingCoreDataStorage:storageCopy error:error];

    if (error)
    {
      v8 = *error;
    }

    else
    {
      v8 = 0;
    }

    v19.receiver = self;
    v19.super_class = _DKPredictionQuery;
    v11 = [(_DKEventQuery *)&v19 handleResults:v7 error:v8];
    v13 = [(_DKPredictionQuery *)&self->super.super.super.isa likelihoodForTopN:v11 withMinLikelihood:self->_minLikelihood withData:?];
  }

  else
  {
    storageCopy2 = storage;
    [(_DKEventQuery *)self setResultType:3];
    [(_DKEventQuery *)self setGroupByProperties:&unk_1F05EF470];
    v17.receiver = self;
    v17.super_class = _DKPredictionQuery;
    v18 = 0;
    v10 = [(_DKEventQuery *)&v17 executeUsingCoreDataStorage:storageCopy2 error:&v18];

    v11 = v18;
    v16.receiver = self;
    v16.super_class = _DKPredictionQuery;
    v7 = [(_DKEventQuery *)&v16 handleResults:v10 error:v11];

    if (error && v11)
    {
      v12 = v11;
      *error = v11;
    }

    v13 = [(_DKPredictionQuery *)self predictionOfType:v7 withData:?];
  }

  v14 = v13;

  return v14;
}

- (id)handleResults:(id)results error:(id)error
{
  resultsCopy = results;
  predictionHandler = self->_predictionHandler;
  if (predictionHandler)
  {
    predictionHandler[2](predictionHandler, self, resultsCopy, error);
  }

  return resultsCopy;
}

- (_DKPredictionQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _DKPredictionQuery;
  v5 = [(_DKEventQuery *)&v13 initWithCoder:coderCopy];
  if (!v5)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [coderCopy decodeIntForKey:@"slotDuration"];
  if (!v6)
  {
    v11 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionQuery initWithCoder:];
    }

    goto LABEL_9;
  }

  [(_DKPredictionQuery *)v5 setSlotDuration:v6];
  -[_DKPredictionQuery setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asOfDate"];
  asOfDate = v5->_asOfDate;
  v5->_asOfDate = v7;

  v5->_partitionType = [coderCopy decodeIntegerForKey:@"partitionType"];
  v5->_useHistoricalHistogram = [coderCopy decodeBoolForKey:@"useHist"];
  v5->_minimumDaysOfHistory = [coderCopy decodeIntForKey:@"minDays"];
  if ([coderCopy containsValueForKey:@"isTopN"])
  {
    v5->_isTopNPrediction = 1;
    v5->_topN = [coderCopy decodeIntegerForKey:@"topN"];
    [coderCopy decodeDoubleForKey:@"minLikelihood"];
    v5->_minLikelihood = v9;
  }

  v10 = v5;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _DKPredictionQuery;
  [(_DKEventQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:self->_slotDuration forKey:@"slotDuration"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_asOfDate forKey:@"asOfDate"];
  [coderCopy encodeInteger:self->_partitionType forKey:@"partitionType"];
  [coderCopy encodeBool:self->_useHistoricalHistogram forKey:@"useHist"];
  [coderCopy encodeInteger:self->_minimumDaysOfHistory forKey:@"minDays"];
  if (self->_isTopNPrediction)
  {
    [coderCopy encodeBool:1 forKey:@"isTopN"];
    [coderCopy encodeInteger:self->_topN forKey:@"topN"];
    [coderCopy encodeDouble:@"minLikelihood" forKey:self->_minLikelihood];
  }
}

+ (id)topNPredictionQueryForStream:(id)stream withPredicate:(id)predicate withTopN:(int64_t)n withMinLikelihood:(double)likelihood
{
  predicateCopy = predicate;
  streamCopy = stream;
  v11 = [objc_opt_class() predictionQueryForStream:streamCopy withPredicate:predicateCopy withPredictionType:0];

  if (v11)
  {
    *(v11 + 129) = 1;
    *(v11 + 184) = n;
    *(v11 + 192) = likelihood;
  }

  [v11 setReadMetadata:0];
  [v11 setDeduplicateValues:1];
  date = [MEMORY[0x1E695DF00] date];
  [v11 setAsOfDate:date];

  return v11;
}

- (uint64_t)both:(void *)both and:(void *)and areWeekendOrWeekdayWithCalendar:
{
  if (result)
  {
    andCopy = and;
    bothCopy = both;
    LODWORD(a2) = [andCopy isDateInWeekend:a2];
    v8 = [andCopy isDateInWeekend:bothCopy];

    return a2 ^ v8 ^ 1;
  }

  return result;
}

- (BOOL)both:(void *)both and:(void *)and areSameDayOfWeekWith:
{
  if (!self)
  {
    return 0;
  }

  andCopy = and;
  bothCopy = both;
  v8 = [andCopy components:512 fromDate:a2];
  v9 = [andCopy components:512 fromDate:bothCopy];

  weekday = [v8 weekday];
  v11 = weekday == [v9 weekday];

  return v11;
}

- (uint64_t)shouldIncludeEventWithStartDate:(void *)date eventSlot:(void *)slot withPredictionStartDate:(uint64_t)startDate withPartitionType:(void *)type andCalendar:
{
  v11 = a2;
  slotCopy = slot;
  typeCopy = type;
  if (self)
  {
    if (startDate == 2)
    {
      [OUTLINED_FUNCTION_6_11(132) dateByAddingTimeInterval:?];
      objc_claimAutoreleasedReturnValue();
      v20 = OUTLINED_FUNCTION_3_11();
      v19 = [(_DKPredictionQuery *)v20 both:v21 and:v22 areSameDayOfWeekWith:v23];
    }

    else
    {
      if (startDate != 1)
      {
        self = 1;
        goto LABEL_5;
      }

      [OUTLINED_FUNCTION_6_11(132) dateByAddingTimeInterval:?];
      objc_claimAutoreleasedReturnValue();
      v15 = OUTLINED_FUNCTION_3_11();
      v19 = [(_DKPredictionQuery *)v15 both:v16 and:v17 areWeekendOrWeekdayWithCalendar:v18];
    }

    self = v19;
  }

LABEL_5:

  return self;
}

- (void)setValueForIndex:(void *)index forObservations:(double)observations withDenominator:
{
  if (self)
  {
    v6 = a2;
    indexCopy = index;
    v8 = [indexCopy objectAtIndexedSubscript:v6];
    [v8 doubleValue];
    v10 = v9 / observations;

    if (*(self + 144) == 1)
    {
      v10 = 1.0 / (pow(2.71828183, (v10 + -0.5) * -12.0) + 1.0);
    }

    v11 = 1.0;
    if (v10 <= 0.98)
    {
      v11 = v10;
      if (v10 < 0.02)
      {
        v11 = 0.0;
      }
    }

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    dk_dedup = [v13 dk_dedup];
    [indexCopy setObject:dk_dedup atIndexedSubscript:v6];
  }
}

- (id)constructTimelineWithObservations:(void *)observations withFirstEventDate:(void *)date withHistogramInterval:(void *)interval withPredictionStartDate:(double)startDate durationSinceFirstEvent:
{
  v85[1] = *MEMORY[0x1E69E9840];
  v11 = a2;
  observationsCopy = observations;
  dateCopy = date;
  intervalCopy = interval;
  v15 = intervalCopy;
  v82 = dateCopy;
  if (self)
  {
    v16 = *(self + 152);
    if (startDate < 1209600.0)
    {
      v16 = 0;
    }

    v83 = intervalCopy;
    if (v16 == 2)
    {
      v45 = observationsCopy;
      [v45 timeIntervalSinceDate:v15];
      v46 = 0.0;
      if (v47 >= 0.0)
      {
        currentCalendar = v45;
      }

      else
      {
        do
        {
          currentCalendar = [v45 dateByAddingTimeInterval:604800.0];

          v46 = v46 + 1.0;
          [currentCalendar timeIntervalSinceDate:v15];
          v45 = currentCalendar;
        }

        while (v48 < 0.0);
      }

      v49 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2419200.0];
      if (dateCopy)
      {
        startDate = [dateCopy startDate];
        [startDate timeIntervalSinceDate:v49];
        v52 = v51;

        if (v52 >= -4233600.0)
        {
          v53 = vcvtpd_s64_f64(v52 / -604800.0);
          v54 = 1.0;
          if (v53 >= 2)
          {
            v55 = v53 - 1;
            v56 = 1.0;
            do
            {
              v54 = v54 + 1.0 / exp2(v56);
              v56 = v56 + 1.0;
              --v55;
            }

            while (v55);
          }

          v46 = v46 + v54;
        }

        else
        {
          v46 = v46 + 2.0;
        }
      }

      v57 = [v15 dateByAddingTimeInterval:86400.0];
      [currentCalendar timeIntervalSinceDate:v57];
      v59 = v58;

      if (v59 >= 0.0)
      {
        if (*(self + 140) >= 1)
        {
          v70 = 0;
          do
          {
            v71 = OUTLINED_FUNCTION_2_11();
            [(_DKPredictionQuery *)v71 setValueForIndex:v72 forObservations:v73 withDenominator:v46 + -1.0];
            ++v70;
          }

          while (v70 < *(self + 140));
        }
      }

      else
      {
        [currentCalendar timeIntervalSinceDate:v15];
        if (v60 < 0.0)
        {
          OUTLINED_FUNCTION_4_11();
          v60 = v61 + v62 * 86400.0;
        }

        v63 = *(self + 140);
        if (v63 >= 1)
        {
          v64 = 0;
          v65 = v60 / *(self + 132) % v63;
          do
          {
            v66 = OUTLINED_FUNCTION_2_11();
            [(_DKPredictionQuery *)v66 setValueForIndex:v67 forObservations:v68 withDenominator:v69];
            ++v64;
          }

          while (v64 < *(self + 140));
        }
      }
    }

    else
    {
      if (v16 != 1)
      {
        if (!v16)
        {
          [observationsCopy timeIntervalSinceDate:v83];
          v18 = v17;
          if (v17 < 0.0)
          {
            v18 = v17 + ceil(v17 / -86400.0) * 86400.0;
          }

          v19 = *(self + 132);
          v20 = *(self + 140);
          [observationsCopy timeIntervalSinceDate:v83];
          if (*(self + 140) >= 1)
          {
            v22 = 0;
            v23 = -(v21 / 86400.0);
            v24 = (v18 / v19 % v20);
            do
            {
              if (v24 == v22)
              {
                ++v23;
              }

              if (v23)
              {
                v25 = OUTLINED_FUNCTION_2_11();
                [(_DKPredictionQuery *)v25 setValueForIndex:v26 forObservations:v27 withDenominator:v28];
              }

              else
              {
                [v11 setObject:&unk_1F05EEA30 atIndexedSubscript:v22];
              }

              ++v22;
            }

            while (v22 < *(self + 140));
          }
        }

        goto LABEL_65;
      }

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v84 = 0.0;
      v85[0] = 0.0;
      v30 = [_DKPredictionQuery calendar:currentCalendar isWeekendWithIntervalToWeekdayWeekendTransition:v85 containingOrAfterDate:observationsCopy];
      v81 = [_DKPredictionQuery calendar:currentCalendar isWeekendWithIntervalToWeekdayWeekendTransition:&v84 containingOrAfterDate:v15];
      v79 = &v79;
      v31 = &v79 - ((4 * *(self + 140) + 15) & 0x7FFFFFFF0);
      bzero(v31, 4 * *(self + 140));
      v80 = observationsCopy;
      v32 = observationsCopy;
      [v15 timeIntervalSinceDate:v32];
      v34 = v33;
      [v32 timeIntervalSinceDate:v15];
      if (v35 < 0.0)
      {
        OUTLINED_FUNCTION_4_11();
        v35 = v36 + v37 * 86400.0;
      }

      v38 = *(self + 132);
      v39 = *(self + 140);
      v40 = v35 / v38 % v39;
      v41 = v84 - (v38 * v40);
      v42 = v81;
      if (v41 <= 0.0)
      {
        v42 = v81 ^ 1;
        v41 = 1.79769313e308;
      }

      if (v34 <= 0.0)
      {
        v43 = v32;
LABEL_39:
        observationsCopy = v80;
      }

      else
      {
        while (1)
        {
          if (((v42 ^ v30) & 1) == 0)
          {
            ++*&v31[4 * v40];
          }

          v43 = [v32 dateByAddingTimeInterval:*(self + 132)];

          v44 = *(self + 132);
          v34 = v34 - v44;
          if (v34 <= 0.0)
          {
            break;
          }

          v85[0] = v85[0] - v44;
          if (v85[0] <= 0.0)
          {
            v30 ^= 1u;
            [_DKPredictionQuery calendar:currentCalendar isWeekendWithIntervalToWeekdayWeekendTransition:v85 containingOrAfterDate:v43];
          }

          ++v40;
          LODWORD(v39) = *(self + 140);
          if (v40 == v39)
          {
            v40 = 0;
            v41 = v84;
            v42 = v81;
          }

          else if (v41 - *(self + 132) > 0.0)
          {
            v41 = v41 - *(self + 132);
          }

          else
          {
            v42 ^= 1u;
            v41 = 1.79769313e308;
          }

          v32 = v43;
          if (v34 <= 0.0)
          {
            goto LABEL_39;
          }
        }

        LODWORD(v39) = *(self + 140);
        observationsCopy = v80;
      }

      if (v39 >= 1)
      {
        v74 = 0;
        do
        {
          [(_DKPredictionQuery *)self setValueForIndex:v74 forObservations:v11 withDenominator:*&v31[4 * v74]];
          ++v74;
        }

        while (v74 < *(self + 140));
      }
    }

LABEL_65:
    v75 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
    v15 = v83;
    v76 = [_DKPredictionTimeline timelineWithValues:v75 eachWithDuration:v83 startingAt:*(self + 132)];

    goto LABEL_66;
  }

  v76 = 0;
LABEL_66:

  v77 = *MEMORY[0x1E69E9840];

  return v76;
}

- (void)handleImpulsePredictionWithEventStartDate:(void *)date predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(void *)calendar observations:(_DWORD *)observations lastDate:(double)lastDate lastSlot:
{
  v28 = a2;
  dateCopy = date;
  startDateCopy = startDate;
  eventCopy = event;
  if (self)
  {
    [v28 timeIntervalSinceDate:dateCopy];
    if (v18 < 0.0)
    {
      OUTLINED_FUNCTION_4_11();
      v18 = v19 + v20 * 86400.0;
    }

    v21 = v18 / *(self + 132) % *(self + 140);
    v22 = *(self + 152);
    if (lastDate >= 1209600.0)
    {
      v23 = *(self + 152);
    }

    else
    {
      v23 = 0;
    }

    if ([(_DKPredictionQuery *)self shouldIncludeEventWithStartDate:v28 eventSlot:v21 withPredictionStartDate:dateCopy withPartitionType:v23 andCalendar:startDateCopy])
    {
      if (*observations != v21 || ([v28 timeIntervalSinceDate:*calendar], v24 >= *(self + 132)))
      {
        v25 = MEMORY[0x1E696AD98];
        v26 = [eventCopy objectAtIndexedSubscript:v21];
        v27 = [v25 numberWithInteger:{objc_msgSend(v26, "integerValue") + 1}];
        [eventCopy setObject:v27 atIndexedSubscript:v21];

        *observations = v21;
        *calendar = v28;
      }
    }
  }
}

- (void)handleEventPredictionWithEventStartDate:(void *)date eventEndDate:(void *)endDate predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(int)calendar observations:(double)observations useWeights:
{
  HIDWORD(v70) = calendar;
  v72 = a2;
  dateCopy = date;
  endDateCopy = endDate;
  startDateCopy = startDate;
  eventCopy = event;
  if (self)
  {
    [dateCopy timeIntervalSinceDate:v72];
    [v72 timeIntervalSinceDate:endDateCopy];
    v18 = [endDateCopy dateByAddingTimeInterval:(*(self + 132) * (v17 / *(self + 132)))];
    [v72 timeIntervalSinceDate:endDateCopy];
    if (v19 < 0.0)
    {
      OUTLINED_FUNCTION_4_11();
      v19 = v20 + v21 * 86400.0;
    }

    v22 = v19 / *(self + 132) % *(self + 140);
    LODWORD(v23) = v22;
    v24 = *(self + 152);
    if (observations >= 1209600.0)
    {
      v25 = *(self + 152);
    }

    else
    {
      v25 = 0;
    }

    [dateCopy timeIntervalSinceDate:v18];
    v27 = v26;
    v28 = [(_DKPredictionQuery *)self shouldIncludeEventWithStartDate:v72 eventSlot:v22 withPredictionStartDate:endDateCopy withPartitionType:v25 andCalendar:startDateCopy];
    if (v27 <= 0.0)
    {
      if (!v28)
      {
LABEL_29:

        goto LABEL_30;
      }

      v36 = MEMORY[0x1E696AD98];
      v37 = [eventCopy objectAtIndexedSubscript:v22];
      v38 = v37;
      if (HIDWORD(v70))
      {
        [v37 doubleValue];
        OUTLINED_FUNCTION_5_7();
        [v36 numberWithDouble:v39 + v40];
      }

      else
      {
        [v36 numberWithInteger:{objc_msgSend(v37, "integerValue") + 1}];
      }
      v41 = ;
      OUTLINED_FUNCTION_7_4(v41, v58, v59, v60, v61, v62, v63, v64, v65, v66, v68, v70, eventCopy);
    }

    else
    {
      if (v28)
      {
        v29 = MEMORY[0x1E696AD98];
        v30 = [eventCopy objectAtIndexedSubscript:v22];
        v31 = v30;
        if (HIDWORD(v70))
        {
          [v30 doubleValue];
          v33 = v32;
          [v18 timeIntervalSinceDate:v72];
          [v29 numberWithDouble:v33 + v34 / *(self + 132)];
        }

        else
        {
          [v29 numberWithInteger:{objc_msgSend(v30, "integerValue") + 1}];
        }
        v35 = ;
        OUTLINED_FUNCTION_7_4(v35, v42, v43, v44, v45, v46, v47, v48, v65, v66, v68, v70, eventCopy);
      }

      v49 = v18;
      [dateCopy timeIntervalSinceDate:v49];
      if (v50 <= 0.0)
      {
        v38 = v49;
      }

      else
      {
        v67 = v18;
        v69 = startDateCopy;
        do
        {
          v23 = ((v23 + 1) % *(self + 140));
          if ([(_DKPredictionQuery *)self shouldIncludeEventWithStartDate:v49 eventSlot:v23 withPredictionStartDate:endDateCopy withPartitionType:v25 andCalendar:startDateCopy])
          {
            v51 = MEMORY[0x1E696AD98];
            v52 = [eventCopy objectAtIndexedSubscript:v23];
            v53 = v52;
            if (HIDWORD(v70))
            {
              [v52 doubleValue];
              OUTLINED_FUNCTION_5_7();
              [v51 numberWithDouble:{v55 + fmin(v54, 1.0)}];
            }

            else
            {
              [v51 numberWithInteger:{objc_msgSend(v52, "integerValue") + 1}];
            }
            v56 = ;
            [eventCopy setObject:v56 atIndexedSubscript:v23];

            v18 = v67;
            startDateCopy = v69;
          }

          v38 = [v49 dateByAddingTimeInterval:*(self + 132)];

          [dateCopy timeIntervalSinceDate:v38];
          v49 = v38;
        }

        while (v57 > 0.0);
      }
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)addEventsToObservations:(void *)observations startingHistogram:(void *)histogram endingHistogram:(void *)endingHistogram withPredictionDate:
{
  v30 = a2;
  observationsCopy = observations;
  histogramCopy = histogram;
  endingHistogramCopy = endingHistogram;
  if (self && observationsCopy | histogramCopy)
  {
    v28 = [endingHistogramCopy slotFromMidnightWithTotalSlotsInDay:*(self + 140)];
    if (observationsCopy && v28 < *(self + 140))
    {
      v11 = 0;
      v12 = v28;
      do
      {
        if ((v11 & 0x80000000) == 0 && [v30 count] - 1 >= v11)
        {
          v13 = MEMORY[0x1E696AD98];
          v14 = [v30 objectAtIndexedSubscript:v11];
          [v14 doubleValue];
          v16 = v15;
          v17 = [MEMORY[0x1E696AD98] numberWithInt:v12];
          v18 = [v13 numberWithDouble:{v16 + objc_msgSend(observationsCopy, "countForValue:", v17)}];
          [v30 setObject:v18 atIndexedSubscript:v11];
        }

        v12 = (v12 + 1);
        ++v11;
      }

      while (v12 < *(self + 140));
    }

    if (histogramCopy && v28 >= 1)
    {
      v19 = 0;
      v20 = *(self + 140) - v28;
      do
      {
        v21 = v20 + v19;
        if (((v20 + v19) & 0x80000000) == 0 && [v30 count] - 1 >= v21)
        {
          v22 = MEMORY[0x1E696AD98];
          v23 = [v30 objectAtIndexedSubscript:v21];
          [v23 doubleValue];
          v25 = v24;
          v26 = [MEMORY[0x1E696AD98] numberWithInt:v19];
          v27 = [v22 numberWithDouble:{v25 + objc_msgSend(histogramCopy, "countForValue:", v26)}];
          [v30 setObject:v27 atIndexedSubscript:v21];
        }

        ++v19;
      }

      while (v28 != v19);
    }
  }
}

- (id)predictionOfType:(void *)type withData:
{
  v126 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v6 = typeCopy;
  if (self)
  {
    if ([typeCopy count])
    {
      v101 = *(self + 160);
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(self + 140)];
      if (*(self + 140) >= 1)
      {
        v8 = 0;
        do
        {
          [v7 setObject:&unk_1F05EEA30 atIndexedSubscript:v8++];
        }

        while (v8 < *(self + 140));
      }

      selfCopy = self;
      v104 = v7;
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      array = [MEMORY[0x1E695DF70] array];
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      secondsFromGMT = [localTimeZone secondsFromGMT];

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v100 = v6;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v112 objects:v125 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = secondsFromGMT;
        v15 = *v113;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v113 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v112 + 1) + 8 * i);
            v18 = [v17 valueForKey:@"secondsFromGMT"];
            [v18 doubleValue];
            v20 = v19;

            if (v20 == v14)
            {
              [array addObject:v17];
            }

            else
            {
              v21 = [v17 objectForKeyedSubscript:@"startDate"];
              v22 = [v17 objectForKeyedSubscript:@"endDate"];
              v23 = v20 - v14;
              v24 = [v21 dateByAddingTimeInterval:v23];

              v25 = [v22 dateByAddingTimeInterval:v23];

              v123[0] = @"startDate";
              v123[1] = @"endDate";
              v124[0] = v24;
              v124[1] = v25;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
              [array addObject:v26];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v112 objects:v125 count:16];
        }

        while (v13);
      }

      [array sortUsingComparator:&__block_literal_global_44];
      firstObject = [array firstObject];
      v28 = [firstObject objectForKeyedSubscript:@"startDate"];
      v29 = v101;
      [v101 timeIntervalSinceDate:v28];
      v31 = v30;

      v32 = (86400 * *(selfCopy + 136));
      v33 = +[_CDLogging knowledgeChannel];
      v34 = v33;
      if (v31 < v32)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v72 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          v29 = v101;
          v73 = [MEMORY[0x1E696AD98] numberWithInt:(86400 * *(selfCopy + 136))];
          *buf = 138412546;
          v118 = v72;
          v119 = 2112;
          v120 = v73;
          OUTLINED_FUNCTION_19();
          _os_log_error_impl(v74, v75, v76, v77, v78, 0x16u);
        }

        v35 = +[_DKPredictionTimeline predictionUnavailable];
LABEL_54:
        v6 = v100;

        goto LABEL_55;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        firstObject2 = [array firstObject];
        v80 = [firstObject2 objectForKeyedSubscript:@"startDate"];
        *buf = 138412802;
        v118 = v101;
        v119 = 2112;
        v120 = v80;
        v121 = 2048;
        v122 = v31;
        _os_log_debug_impl(&dword_191750000, v34, OS_LOG_TYPE_DEBUG, "Prediction Start Date %@, First Object Start: %@, Duration: %lf", buf, 0x20u);
      }

      if (*(selfCopy + 128) != 1)
      {
        goto LABEL_29;
      }

      v37 = *(selfCopy + 152);
      if (v37)
      {
        if (v37 != 1)
        {
          if (v37 != 2)
          {
LABEL_29:
            v97 = 0;
            v98 = 0;
            v99 = 0;
LABEL_35:
            *buf = -1;
            distantPast = [MEMORY[0x1E695DF00] distantPast];
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v44 = array;
            v45 = [v44 countByEnumeratingWithState:&v108 objects:v116 count:16];
            if (!v45)
            {
              v47 = 0;
LABEL_59:

              v62 = v99;
              v35 = [(_DKPredictionQuery *)selfCopy constructTimelineWithObservations:v104 withFirstEventDate:v47 withHistogramInterval:v99 withPredictionStartDate:v101 durationSinceFirstEvent:v31];
              v63 = v98;
              [v35 setStartHistogram:v98];
              v64 = v97;
              [v35 setEndHistogram:v97];
LABEL_53:

              goto LABEL_54;
            }

            v46 = v45;
            v47 = 0;
            v48 = *v109;
            v96 = distantPast;
LABEL_37:
            v49 = 0;
            while (1)
            {
              if (*v109 != v48)
              {
                objc_enumerationMutation(v44);
              }

              v50 = *(*(&v108 + 1) + 8 * v49);
              v51 = [v50 valueForKey:{@"startDate", v96}];
              v52 = [v50 valueForKey:@"endDate"];
              if (!v47)
              {
                v47 = v51;
              }

              if (a2 == 2)
              {
                v60 = OUTLINED_FUNCTION_0_17();
                v61 = 0;
              }

              else
              {
                if (a2 != 1)
                {
                  if (a2)
                  {

                    v35 = 0;
                    v63 = v98;
                    v62 = v99;
                    distantPast = v96;
                    v64 = v97;
                    goto LABEL_53;
                  }

                  v107 = distantPast;
                  [(_DKPredictionQuery *)selfCopy handleImpulsePredictionWithEventStartDate:v51 predictionStartDate:v101 durationSinceFirstEvent:currentCalendar calendar:v104 observations:&v107 lastDate:buf lastSlot:v31];
                  v53 = v107;

                  distantPast = v53;
                  goto LABEL_49;
                }

                v60 = OUTLINED_FUNCTION_0_17();
                v61 = 1;
              }

              [(_DKPredictionQuery *)v54 handleEventPredictionWithEventStartDate:v55 eventEndDate:v56 predictionStartDate:v57 durationSinceFirstEvent:v58 calendar:v59 observations:v61 useWeights:v60];
LABEL_49:

              if (v46 == ++v49)
              {
                v46 = [v44 countByEnumeratingWithState:&v108 objects:v116 count:16];
                if (v46)
                {
                  goto LABEL_37;
                }

                goto LABEL_59;
              }
            }
          }

          storage = [selfCopy storage];
          v82 = storage;
          if (storage)
          {
            v83 = storage;
          }

          else
          {
            v83 = +[_DKKnowledgeStore knowledgeStoreWithDirectReadOnlyAccess];
          }

          v38 = v83;

          v84 = objc_alloc_init(_DKDeviceActivityStandingQuery);
          v85 = [currentCalendar component:512 fromDate:v101];
          v86 = [v101 dateByAddingTimeInterval:86399.0];
          v87 = [currentCalendar component:512 fromDate:v86];

          v88 = [(_DKDeviceActivityStandingQuery *)v84 fetchResultForDayOfWeek:v85 withStorage:v38];
          if (v85 == v87)
          {
            v89 = 0;
          }

          else
          {
            v89 = [(_DKDeviceActivityStandingQuery *)v84 fetchResultForDayOfWeek:v87 withStorage:v38];
          }

          [(_DKPredictionQuery *)selfCopy addEventsToObservations:v104 startingHistogram:v88 endingHistogram:v89 withPredictionDate:v101];
          if (v88 && v89)
          {
            interval = [v88 interval];
            startDate = [interval startDate];
            interval2 = [v89 interval];
            startDate2 = [interval2 startDate];
            [startDate timeIntervalSinceDate:startDate2];
            if (v94 > 0.0)
            {
              v95 = v89;
            }

            else
            {
              v95 = v88;
            }

            interval3 = [v95 interval];

            v41 = v88;
            v40 = v89;
          }

          else if (v88)
          {
            interval3 = [v88 interval];
            v41 = v88;
            v40 = 0;
          }

          else
          {
            interval3 = [v89 interval];
            v40 = v89;
            v41 = 0;
          }

LABEL_34:
          v97 = v40;
          v98 = v41;
          v99 = interval3;

          goto LABEL_35;
        }

        v38 = +[_CDLogging knowledgeChannel];
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
LABEL_33:
          v40 = 0;
          v41 = 0;
          interval3 = 0;
          goto LABEL_34;
        }

        *buf = 0;
        v39 = "Historical histogram option not supported with _DKDataPartitionTypeWeekdayWeekend";
      }

      else
      {
        v38 = +[_CDLogging knowledgeChannel];
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 0;
        v39 = "Historical histogram option not supported with _DKDataPartitionTypeNone";
      }

      _os_log_error_impl(&dword_191750000, v38, OS_LOG_TYPE_ERROR, v39, buf, 2u);
      goto LABEL_33;
    }

    v36 = +[_CDLogging knowledgeChannel];
    if (OUTLINED_FUNCTION_60(v36))
    {
      *buf = 0;
      OUTLINED_FUNCTION_19();
      _os_log_error_impl(v67, v68, v69, v70, v71, 2u);
    }

    v35 = +[_DKPredictionTimeline predictionUnavailable];
  }

  else
  {
    v35 = 0;
  }

LABEL_55:

  v65 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)likelihoodForTopN:(void *)n withMinLikelihood:(double)likelihood withData:
{
  v129 = *MEMORY[0x1E69E9840];
  nCopy = n;
  v8 = nCopy;
  if (self)
  {
    if ([nCopy count])
    {
      v96 = a2;
      selfCopy = self;
      array = [MEMORY[0x1E695DF70] array];
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      secondsFromGMT = [localTimeZone secondsFromGMT];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v95 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v115 objects:v128 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = secondsFromGMT;
        v16 = *v116;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v116 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v115 + 1) + 8 * i);
            value = [v18 value];
            stringValue = [value stringValue];

            if (stringValue)
            {
              timeZone = [v18 timeZone];
              secondsFromGMT2 = [timeZone secondsFromGMT];

              v23 = [v18 valueForKey:@"startDate"];
              v24 = v23;
              if (secondsFromGMT2 != v15)
              {
                v25 = [v23 dateByAddingTimeInterval:secondsFromGMT2 - v15];

                v24 = v25;
              }

              v126[0] = @"startDate";
              v126[1] = @"bundleID";
              v127[0] = v24;
              v127[1] = stringValue;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
              [array addObject:v26];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v115 objects:v128 count:16];
        }

        while (v14);
      }

      [array sortUsingComparator:&__block_literal_global_25];
      v27 = selfCopy[20];
      firstObject = [array firstObject];
      v29 = [firstObject valueForKey:@"startDate"];

      v102 = v27;
      [v27 timeIntervalSinceDate:v29];
      v31 = v30;
      if (v30 >= (86400 * *(selfCopy + 34)))
      {
        v94 = v29;
        v35 = MEMORY[0x1E695E0F8];
        v107 = [MEMORY[0x1E695E0F8] mutableCopy];
        v106 = [v35 mutableCopy];
        v99 = [v35 mutableCopy];
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v97 = array;
        obj = array;
        v103 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
        if (v103)
        {
          v100 = *v112;
          do
          {
            for (j = 0; j != v103; ++j)
            {
              if (*v112 != v100)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v111 + 1) + 8 * j);
              v38 = objc_autoreleasePoolPush();
              v39 = [v37 valueForKey:@"bundleID"];
              v40 = [v37 valueForKey:@"startDate"];
              v41 = [v106 objectForKeyedSubscript:v39];
              v42 = [v107 objectForKeyedSubscript:v39];
              if (v41)
              {
                intValue = [v41 intValue];
              }

              else
              {
                distantPast = [MEMORY[0x1E695DF00] distantPast];

                intValue = -1;
                v42 = distantPast;
              }

              [v40 timeIntervalSinceDate:v102];
              if (v45 < 0.0)
              {
                v45 = v45 + ceil(v45 / -86400.0) * 86400.0;
              }

              v46 = (v45 / *(selfCopy + 33) % *(selfCopy + 35));
              if (intValue != v46 || ([v40 timeIntervalSinceDate:v42], v47 >= *(selfCopy + 33)))
              {
                v48 = [v99 objectForKeyedSubscript:v39];
                if (!v48)
                {
                  v48 = [MEMORY[0x1E696AB50] set];
                }

                v49 = [MEMORY[0x1E696AD98] numberWithInt:v46];
                [v48 addObject:v49];
                [v99 setObject:v48 forKeyedSubscript:v39];
                [v106 setObject:v49 forKeyedSubscript:v39];
                [v107 setObject:v40 forKeyedSubscript:v39];
              }

              objc_autoreleasePoolPop(v38);
            }

            v103 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
          }

          while (v103);
        }

        v29 = v94;
        [v94 timeIntervalSinceDate:v102];
        v51 = v50;
        if (v50 < 0.0)
        {
          v51 = v50 + ceil(v50 / -86400.0) * 86400.0;
        }

        v52 = selfCopy;
        v53 = *(selfCopy + 33);
        v54 = *(selfCopy + 35);
        [v94 timeIntervalSinceDate:v102];
        v56 = (v55 / 86400.0);
        v57 = -v56;
        array = v97;
        v58 = v99;
        if (v56 < 1)
        {
          v104 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(selfCopy + 35)];
          allKeys = [v99 allKeys];
          v61 = [allKeys mutableCopy];

          if (*(selfCopy + 35) >= 1)
          {
            v62 = 0;
            v101 = v51 / v53 % v54;
            do
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              if (v62 == v101)
              {
                LODWORD(v57) = v57 + 1;
              }

              if (v57)
              {
                v108[0] = MEMORY[0x1E69E9820];
                v108[1] = 3221225472;
                v108[2] = __67___DKPredictionQuery_likelihoodForTopN_withMinLikelihood_withData___block_invoke_28;
                v108[3] = &unk_1E7368F30;
                v64 = v99;
                v109 = v64;
                v110 = v62;
                [v61 sortUsingComparator:v108];
                if ([v61 count] <= v96)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = [v61 count] - v96;
                }

                for (k = [v61 count] - 1; k >= v65; --k)
                {
                  v67 = [v61 objectAtIndexedSubscript:k];
                  v68 = [v64 objectForKeyedSubscript:v67];
                  v69 = [MEMORY[0x1E696AD98] numberWithInt:v62];
                  v70 = [v68 countForObject:v69] / v57;

                  if (v70 >= likelihood)
                  {
                    v71 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
                    dk_dedup = [v71 dk_dedup];
                    [dictionary setObject:dk_dedup forKeyedSubscript:v67];
                  }
                }

                v73 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
                [v104 addObject:v73];

                array = v97;
                v52 = selfCopy;
              }

              else
              {
                [v104 addObject:MEMORY[0x1E695E0F8]];
              }

              v62 = (v62 + 1);
            }

            while (v62 < *(v52 + 35));
          }

          v33 = [_DKPredictionTimeline timelineWithValues:v104 eachWithDuration:v102 startingAt:*(v52 + 33)];

          v29 = v94;
          v8 = v95;
          v58 = v99;
        }

        else
        {
          v59 = +[_CDLogging knowledgeChannel];
          v8 = v95;
          if (OUTLINED_FUNCTION_60(v59))
          {
            v88 = [MEMORY[0x1E696AD98] numberWithInt:v57];
            v119 = 138412802;
            v120 = v88;
            v121 = 2112;
            v122 = v94;
            v123 = 2112;
            v124 = v102;
            OUTLINED_FUNCTION_19();
            _os_log_error_impl(v89, v90, v91, v92, v93, 0x20u);
          }

          v33 = +[_DKPredictionTimeline predictionUnavailable];
        }
      }

      else
      {
        v32 = +[_CDLogging knowledgeChannel];
        if (OUTLINED_FUNCTION_60(v32))
        {
          v81 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          v82 = [MEMORY[0x1E696AD98] numberWithInt:(86400 * *(selfCopy + 34))];
          v119 = 138412546;
          v120 = v81;
          v121 = 2112;
          v122 = v82;
          OUTLINED_FUNCTION_19();
          _os_log_error_impl(v83, v84, v85, v86, v87, 0x16u);
        }

        v33 = +[_DKPredictionTimeline predictionUnavailable];
        v8 = v95;
      }
    }

    else
    {
      v34 = +[_CDLogging knowledgeChannel];
      if (OUTLINED_FUNCTION_60(v34))
      {
        LOWORD(v119) = 0;
        OUTLINED_FUNCTION_19();
        _os_log_error_impl(v76, v77, v78, v79, v80, 2u);
      }

      v33 = +[_DKPredictionTimeline predictionUnavailable];
    }
  }

  else
  {
    v33 = 0;
  }

  v74 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _DKPredictionQuery;
  v4 = [(_DKEventQuery *)&v6 copyWithZone:zone];
  [v4 setSlotDuration:self->_slotDuration];
  [v4 setType:self->_type];
  [v4 setAsOfDate:self->_asOfDate];
  [v4 setPartitionType:self->_partitionType];
  [v4 setUseHistoricalHistogram:self->_useHistoricalHistogram];
  [v4 setMinimumDaysOfHistory:self->_minimumDaysOfHistory];
  if (v4)
  {
    *(v4 + 129) = self->_isTopNPrediction;
    *(v4 + 23) = self->_topN;
    *(v4 + 24) = *&self->_minLikelihood;
  }

  return v4;
}

- (void)initWithCoder:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end