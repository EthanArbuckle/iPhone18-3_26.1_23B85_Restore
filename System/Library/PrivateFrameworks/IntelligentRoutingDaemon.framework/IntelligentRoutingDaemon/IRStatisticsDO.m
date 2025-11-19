@interface IRStatisticsDO
+ (id)statisticsDOWithNumberOfContextChanges:(int64_t)a3 numberOfMiLoPredictions:(int64_t)a4 numberOfMiLoPredictionsInUpdatesMode:(int64_t)a5 lastMiLoLSLItems:(int64_t)a6 lastMiLoQualityReasonBitmap:(int64_t)a7 lastMiLoQuality:(int64_t)a8 lastMiLoModels:(int64_t)a9 timeInUpdatesModeInSeconds:(int64_t)a10 numberOfPickerChoiceEvents:(int64_t)a11 numberOfCorrectPickerChoiceEvents:(int64_t)a12 lastClearDate:(id)a13;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStatisticsDO:(id)a3;
- (IRStatisticsDO)initWithCoder:(id)a3;
- (IRStatisticsDO)initWithNumberOfContextChanges:(int64_t)a3 numberOfMiLoPredictions:(int64_t)a4 numberOfMiLoPredictionsInUpdatesMode:(int64_t)a5 lastMiLoLSLItems:(int64_t)a6 lastMiLoQualityReasonBitmap:(int64_t)a7 lastMiLoQuality:(int64_t)a8 lastMiLoModels:(int64_t)a9 timeInUpdatesModeInSeconds:(int64_t)a10 numberOfPickerChoiceEvents:(int64_t)a11 numberOfCorrectPickerChoiceEvents:(int64_t)a12 lastClearDate:(id)a13;
- (id)copyWithReplacementLastClearDate:(id)a3;
- (id)copyWithReplacementLastMiLoLSLItems:(int64_t)a3;
- (id)copyWithReplacementLastMiLoQuality:(int64_t)a3;
- (id)copyWithReplacementLastMiLoQualityReasonBitmap:(int64_t)a3;
- (id)copyWithReplacementNumberOfContextChanges:(int64_t)a3;
- (id)copyWithReplacementNumberOfMiLoPredictions:(int64_t)a3;
- (id)copyWithReplacementNumberOfMiLoPredictionsInUpdatesMode:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRStatisticsDO

- (IRStatisticsDO)initWithNumberOfContextChanges:(int64_t)a3 numberOfMiLoPredictions:(int64_t)a4 numberOfMiLoPredictionsInUpdatesMode:(int64_t)a5 lastMiLoLSLItems:(int64_t)a6 lastMiLoQualityReasonBitmap:(int64_t)a7 lastMiLoQuality:(int64_t)a8 lastMiLoModels:(int64_t)a9 timeInUpdatesModeInSeconds:(int64_t)a10 numberOfPickerChoiceEvents:(int64_t)a11 numberOfCorrectPickerChoiceEvents:(int64_t)a12 lastClearDate:(id)a13
{
  v20 = a13;
  v24.receiver = self;
  v24.super_class = IRStatisticsDO;
  v21 = [(IRStatisticsDO *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_numberOfContextChanges = a3;
    v21->_numberOfMiLoPredictions = a4;
    v21->_numberOfMiLoPredictionsInUpdatesMode = a5;
    v21->_lastMiLoLSLItems = a6;
    v21->_lastMiLoQualityReasonBitmap = a7;
    v21->_lastMiLoQuality = a8;
    v21->_lastMiLoModels = a9;
    v21->_timeInUpdatesModeInSeconds = a10;
    v21->_numberOfPickerChoiceEvents = a11;
    v21->_numberOfCorrectPickerChoiceEvents = a12;
    objc_storeStrong(&v21->_lastClearDate, a13);
  }

  return v22;
}

+ (id)statisticsDOWithNumberOfContextChanges:(int64_t)a3 numberOfMiLoPredictions:(int64_t)a4 numberOfMiLoPredictionsInUpdatesMode:(int64_t)a5 lastMiLoLSLItems:(int64_t)a6 lastMiLoQualityReasonBitmap:(int64_t)a7 lastMiLoQuality:(int64_t)a8 lastMiLoModels:(int64_t)a9 timeInUpdatesModeInSeconds:(int64_t)a10 numberOfPickerChoiceEvents:(int64_t)a11 numberOfCorrectPickerChoiceEvents:(int64_t)a12 lastClearDate:(id)a13
{
  v20 = a13;
  v21 = [[a1 alloc] initWithNumberOfContextChanges:a3 numberOfMiLoPredictions:a4 numberOfMiLoPredictionsInUpdatesMode:a5 lastMiLoLSLItems:a6 lastMiLoQualityReasonBitmap:a7 lastMiLoQuality:a8 lastMiLoModels:a9 timeInUpdatesModeInSeconds:a10 numberOfPickerChoiceEvents:a11 numberOfCorrectPickerChoiceEvents:a12 lastClearDate:v20];

  return v21;
}

- (id)copyWithReplacementNumberOfContextChanges:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:a3 numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementNumberOfMiLoPredictions:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:a3 numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementNumberOfMiLoPredictionsInUpdatesMode:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:a3 lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastMiLoLSLItems:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:a3 lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastMiLoQualityReasonBitmap:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:a3 lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastMiLoQuality:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:a3 lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastClearDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:v4];

  return v5;
}

- (BOOL)isEqualToStatisticsDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  numberOfContextChanges = self->_numberOfContextChanges;
  if (numberOfContextChanges != [v4 numberOfContextChanges])
  {
    goto LABEL_15;
  }

  numberOfMiLoPredictions = self->_numberOfMiLoPredictions;
  if (numberOfMiLoPredictions != [v5 numberOfMiLoPredictions])
  {
    goto LABEL_15;
  }

  numberOfMiLoPredictionsInUpdatesMode = self->_numberOfMiLoPredictionsInUpdatesMode;
  if (numberOfMiLoPredictionsInUpdatesMode != [v5 numberOfMiLoPredictionsInUpdatesMode])
  {
    goto LABEL_15;
  }

  lastMiLoLSLItems = self->_lastMiLoLSLItems;
  if (lastMiLoLSLItems != [v5 lastMiLoLSLItems])
  {
    goto LABEL_15;
  }

  lastMiLoQualityReasonBitmap = self->_lastMiLoQualityReasonBitmap;
  if (lastMiLoQualityReasonBitmap != [v5 lastMiLoQualityReasonBitmap])
  {
    goto LABEL_15;
  }

  lastMiLoQuality = self->_lastMiLoQuality;
  if (lastMiLoQuality != [v5 lastMiLoQuality])
  {
    goto LABEL_15;
  }

  lastMiLoModels = self->_lastMiLoModels;
  if (lastMiLoModels != [v5 lastMiLoModels])
  {
    goto LABEL_15;
  }

  timeInUpdatesModeInSeconds = self->_timeInUpdatesModeInSeconds;
  if (timeInUpdatesModeInSeconds != [v5 timeInUpdatesModeInSeconds])
  {
    goto LABEL_15;
  }

  numberOfPickerChoiceEvents = self->_numberOfPickerChoiceEvents;
  if (numberOfPickerChoiceEvents == [v5 numberOfPickerChoiceEvents] && (numberOfCorrectPickerChoiceEvents = self->_numberOfCorrectPickerChoiceEvents, numberOfCorrectPickerChoiceEvents == objc_msgSend(v5, "numberOfCorrectPickerChoiceEvents")) && (v16 = self->_lastClearDate == 0, objc_msgSend(v5, "lastClearDate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 != 0, v17, v16 != v18))
  {
    lastClearDate = self->_lastClearDate;
    if (lastClearDate)
    {
      v20 = [v5 lastClearDate];
      v21 = [(NSDate *)lastClearDate isEqual:v20];
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
LABEL_15:
    v21 = 0;
  }

  return v21 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRStatisticsDO *)self isEqualToStatisticsDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = self->_numberOfMiLoPredictions - self->_numberOfContextChanges + 32 * self->_numberOfContextChanges;
  v3 = self->_numberOfMiLoPredictionsInUpdatesMode - v2 + 32 * v2;
  v4 = self->_lastMiLoLSLItems - v3 + 32 * v3;
  v5 = self->_lastMiLoQualityReasonBitmap - v4 + 32 * v4;
  v6 = self->_lastMiLoQuality - v5 + 32 * v5;
  v7 = self->_lastMiLoModels - v6 + 32 * v6;
  v8 = self->_timeInUpdatesModeInSeconds - v7 + 32 * v7;
  v9 = self->_numberOfPickerChoiceEvents - v8 + 32 * v8;
  v10 = self->_numberOfCorrectPickerChoiceEvents - v9 + 32 * v9;
  return [(NSDate *)self->_lastClearDate hash]- v10 + 32 * v10;
}

- (IRStatisticsDO)initWithCoder:(id)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"numberOfContextChanges"];
  if (!v5)
  {
    v20 = [v4 error];

    if (v20)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"numberOfContextChanges"] & 1) == 0)
    {
      v60 = *MEMORY[0x277CCA450];
      v61[0] = @"Missing serialized value for IRStatisticsDO.numberOfContextChanges";
      v21 = MEMORY[0x277CBEAC0];
      v22 = v61;
      v23 = &v60;
      goto LABEL_47;
    }
  }

  v6 = [v4 decodeInt64ForKey:@"numberOfMiLoPredictions"];
  if (!v6)
  {
    v24 = [v4 error];

    if (v24)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"numberOfMiLoPredictions"] & 1) == 0)
    {
      v58 = *MEMORY[0x277CCA450];
      v59 = @"Missing serialized value for IRStatisticsDO.numberOfMiLoPredictions";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v59;
      v23 = &v58;
      goto LABEL_47;
    }
  }

  v7 = [v4 decodeInt64ForKey:@"numberOfMiLoPredictionsInUpdatesMode"];
  if (!v7)
  {
    v25 = [v4 error];

    if (v25)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"numberOfMiLoPredictionsInUpdatesMode"] & 1) == 0)
    {
      v56 = *MEMORY[0x277CCA450];
      v57 = @"Missing serialized value for IRStatisticsDO.numberOfMiLoPredictionsInUpdatesMode";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v57;
      v23 = &v56;
      goto LABEL_47;
    }
  }

  v8 = [v4 decodeInt64ForKey:@"lastMiLoLSLItems"];
  if (!v8)
  {
    v26 = [v4 error];

    if (v26)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"lastMiLoLSLItems"] & 1) == 0)
    {
      v54 = *MEMORY[0x277CCA450];
      v55 = @"Missing serialized value for IRStatisticsDO.lastMiLoLSLItems";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v55;
      v23 = &v54;
      goto LABEL_47;
    }
  }

  v9 = [v4 decodeInt64ForKey:@"lastMiLoQualityReasonBitmap"];
  if (!v9)
  {
    v27 = [v4 error];

    if (v27)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"lastMiLoQualityReasonBitmap"] & 1) == 0)
    {
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Missing serialized value for IRStatisticsDO.lastMiLoQualityReasonBitmap";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v53;
      v23 = &v52;
      goto LABEL_47;
    }
  }

  v10 = [v4 decodeInt64ForKey:@"lastMiLoQuality"];
  if (!v10)
  {
    v28 = [v4 error];

    if (v28)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"lastMiLoQuality"] & 1) == 0)
    {
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Missing serialized value for IRStatisticsDO.lastMiLoQuality";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v51;
      v23 = &v50;
      goto LABEL_47;
    }
  }

  v11 = [v4 decodeInt64ForKey:@"lastMiLoModels"];
  if (!v11)
  {
    v29 = [v4 error];

    if (v29)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"lastMiLoModels"] & 1) == 0)
    {
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Missing serialized value for IRStatisticsDO.lastMiLoModels";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v49;
      v23 = &v48;
      goto LABEL_47;
    }
  }

  v39 = [v4 decodeInt64ForKey:@"timeInUpdatesModeInSeconds"];
  if (!v39)
  {
    v30 = [v4 error];

    if (v30)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"timeInUpdatesModeInSeconds"] & 1) == 0)
    {
      v46 = *MEMORY[0x277CCA450];
      v47 = @"Missing serialized value for IRStatisticsDO.timeInUpdatesModeInSeconds";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v47;
      v23 = &v46;
      goto LABEL_47;
    }
  }

  v38 = [v4 decodeInt64ForKey:@"numberOfPickerChoiceEvents"];
  if (!v38)
  {
    v31 = [v4 error];

    if (v31)
    {
      goto LABEL_42;
    }

    if (([v4 containsValueForKey:@"numberOfPickerChoiceEvents"] & 1) == 0)
    {
      v44 = *MEMORY[0x277CCA450];
      v45 = @"Missing serialized value for IRStatisticsDO.numberOfPickerChoiceEvents";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v45;
      v23 = &v44;
      goto LABEL_47;
    }
  }

  v37 = [v4 decodeInt64ForKey:@"numberOfCorrectPickerChoiceEvents"];
  if (v37)
  {
    goto LABEL_11;
  }

  v32 = [v4 error];

  if (!v32)
  {
    if ([v4 containsValueForKey:@"numberOfCorrectPickerChoiceEvents"])
    {
LABEL_11:
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastClearDate"];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRStatisticsDO key lastClearDate (expected %@, decoded %@)", v14, v16, 0];
          v40 = *MEMORY[0x277CCA450];
          v41 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRStatisticsDOOCNTErrorDomain" code:3 userInfo:v18];
          [v4 failWithError:v19];

LABEL_48:
          goto LABEL_49;
        }
      }

      else
      {
        v36 = [v4 error];

        if (v36)
        {
LABEL_49:
          v33 = 0;
          goto LABEL_50;
        }
      }

      self = [(IRStatisticsDO *)self initWithNumberOfContextChanges:v5 numberOfMiLoPredictions:v6 numberOfMiLoPredictionsInUpdatesMode:v7 lastMiLoLSLItems:v8 lastMiLoQualityReasonBitmap:v9 lastMiLoQuality:v10 lastMiLoModels:v11 timeInUpdatesModeInSeconds:v39 numberOfPickerChoiceEvents:v38 numberOfCorrectPickerChoiceEvents:v37 lastClearDate:v12];
      v33 = self;
LABEL_50:

      goto LABEL_51;
    }

    v42 = *MEMORY[0x277CCA450];
    v43 = @"Missing serialized value for IRStatisticsDO.numberOfCorrectPickerChoiceEvents";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v43;
    v23 = &v42;
LABEL_47:
    v12 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRStatisticsDOOCNTErrorDomain" code:1 userInfo:v12];
    [v4 failWithError:v14];
    goto LABEL_48;
  }

LABEL_42:
  v33 = 0;
LABEL_51:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:self->_numberOfContextChanges forKey:@"numberOfContextChanges"];
  [v5 encodeInt64:self->_numberOfMiLoPredictions forKey:@"numberOfMiLoPredictions"];
  [v5 encodeInt64:self->_numberOfMiLoPredictionsInUpdatesMode forKey:@"numberOfMiLoPredictionsInUpdatesMode"];
  [v5 encodeInt64:self->_lastMiLoLSLItems forKey:@"lastMiLoLSLItems"];
  [v5 encodeInt64:self->_lastMiLoQualityReasonBitmap forKey:@"lastMiLoQualityReasonBitmap"];
  [v5 encodeInt64:self->_lastMiLoQuality forKey:@"lastMiLoQuality"];
  [v5 encodeInt64:self->_lastMiLoModels forKey:@"lastMiLoModels"];
  [v5 encodeInt64:self->_timeInUpdatesModeInSeconds forKey:@"timeInUpdatesModeInSeconds"];
  [v5 encodeInt64:self->_numberOfPickerChoiceEvents forKey:@"numberOfPickerChoiceEvents"];
  [v5 encodeInt64:self->_numberOfCorrectPickerChoiceEvents forKey:@"numberOfCorrectPickerChoiceEvents"];
  lastClearDate = self->_lastClearDate;
  if (lastClearDate)
  {
    [v5 encodeObject:lastClearDate forKey:@"lastClearDate"];
  }
}

- (id)description
{
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfContextChanges];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfMiLoPredictions];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfMiLoPredictionsInUpdatesMode];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastMiLoLSLItems];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastMiLoQualityReasonBitmap];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastMiLoQuality];
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastMiLoModels];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timeInUpdatesModeInSeconds];
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfPickerChoiceEvents];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberOfCorrectPickerChoiceEvents];
  v15 = [v14 initWithFormat:@"<IRStatisticsDO | numberOfContextChanges:%@ numberOfMiLoPredictions:%@ numberOfMiLoPredictionsInUpdatesMode:%@ lastMiLoLSLItems:%@ lastMiLoQualityReasonBitmap:%@ lastMiLoQuality:%@ lastMiLoModels:%@ timeInUpdatesModeInSeconds:%@ numberOfPickerChoiceEvents:%@ numberOfCorrectPickerChoiceEvents:%@ lastClearDate:%@>", v13, v3, v4, v5, v6, v7, v8, v9, v10, v11, self->_lastClearDate];

  return v15;
}

@end