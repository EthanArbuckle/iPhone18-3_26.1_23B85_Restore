@interface IRStatisticsDO
+ (id)statisticsDOWithNumberOfContextChanges:(int64_t)changes numberOfMiLoPredictions:(int64_t)predictions numberOfMiLoPredictionsInUpdatesMode:(int64_t)mode lastMiLoLSLItems:(int64_t)items lastMiLoQualityReasonBitmap:(int64_t)bitmap lastMiLoQuality:(int64_t)quality lastMiLoModels:(int64_t)models timeInUpdatesModeInSeconds:(int64_t)self0 numberOfPickerChoiceEvents:(int64_t)self1 numberOfCorrectPickerChoiceEvents:(int64_t)self2 lastClearDate:(id)self3;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStatisticsDO:(id)o;
- (IRStatisticsDO)initWithCoder:(id)coder;
- (IRStatisticsDO)initWithNumberOfContextChanges:(int64_t)changes numberOfMiLoPredictions:(int64_t)predictions numberOfMiLoPredictionsInUpdatesMode:(int64_t)mode lastMiLoLSLItems:(int64_t)items lastMiLoQualityReasonBitmap:(int64_t)bitmap lastMiLoQuality:(int64_t)quality lastMiLoModels:(int64_t)models timeInUpdatesModeInSeconds:(int64_t)self0 numberOfPickerChoiceEvents:(int64_t)self1 numberOfCorrectPickerChoiceEvents:(int64_t)self2 lastClearDate:(id)self3;
- (id)copyWithReplacementLastClearDate:(id)date;
- (id)copyWithReplacementLastMiLoLSLItems:(int64_t)items;
- (id)copyWithReplacementLastMiLoQuality:(int64_t)quality;
- (id)copyWithReplacementLastMiLoQualityReasonBitmap:(int64_t)bitmap;
- (id)copyWithReplacementNumberOfContextChanges:(int64_t)changes;
- (id)copyWithReplacementNumberOfMiLoPredictions:(int64_t)predictions;
- (id)copyWithReplacementNumberOfMiLoPredictionsInUpdatesMode:(int64_t)mode;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRStatisticsDO

- (IRStatisticsDO)initWithNumberOfContextChanges:(int64_t)changes numberOfMiLoPredictions:(int64_t)predictions numberOfMiLoPredictionsInUpdatesMode:(int64_t)mode lastMiLoLSLItems:(int64_t)items lastMiLoQualityReasonBitmap:(int64_t)bitmap lastMiLoQuality:(int64_t)quality lastMiLoModels:(int64_t)models timeInUpdatesModeInSeconds:(int64_t)self0 numberOfPickerChoiceEvents:(int64_t)self1 numberOfCorrectPickerChoiceEvents:(int64_t)self2 lastClearDate:(id)self3
{
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = IRStatisticsDO;
  v21 = [(IRStatisticsDO *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_numberOfContextChanges = changes;
    v21->_numberOfMiLoPredictions = predictions;
    v21->_numberOfMiLoPredictionsInUpdatesMode = mode;
    v21->_lastMiLoLSLItems = items;
    v21->_lastMiLoQualityReasonBitmap = bitmap;
    v21->_lastMiLoQuality = quality;
    v21->_lastMiLoModels = models;
    v21->_timeInUpdatesModeInSeconds = seconds;
    v21->_numberOfPickerChoiceEvents = events;
    v21->_numberOfCorrectPickerChoiceEvents = choiceEvents;
    objc_storeStrong(&v21->_lastClearDate, date);
  }

  return v22;
}

+ (id)statisticsDOWithNumberOfContextChanges:(int64_t)changes numberOfMiLoPredictions:(int64_t)predictions numberOfMiLoPredictionsInUpdatesMode:(int64_t)mode lastMiLoLSLItems:(int64_t)items lastMiLoQualityReasonBitmap:(int64_t)bitmap lastMiLoQuality:(int64_t)quality lastMiLoModels:(int64_t)models timeInUpdatesModeInSeconds:(int64_t)self0 numberOfPickerChoiceEvents:(int64_t)self1 numberOfCorrectPickerChoiceEvents:(int64_t)self2 lastClearDate:(id)self3
{
  dateCopy = date;
  v21 = [[self alloc] initWithNumberOfContextChanges:changes numberOfMiLoPredictions:predictions numberOfMiLoPredictionsInUpdatesMode:mode lastMiLoLSLItems:items lastMiLoQualityReasonBitmap:bitmap lastMiLoQuality:quality lastMiLoModels:models timeInUpdatesModeInSeconds:seconds numberOfPickerChoiceEvents:events numberOfCorrectPickerChoiceEvents:choiceEvents lastClearDate:dateCopy];

  return v21;
}

- (id)copyWithReplacementNumberOfContextChanges:(int64_t)changes
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:changes numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementNumberOfMiLoPredictions:(int64_t)predictions
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:predictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementNumberOfMiLoPredictionsInUpdatesMode:(int64_t)mode
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:mode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastMiLoLSLItems:(int64_t)items
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:items lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastMiLoQualityReasonBitmap:(int64_t)bitmap
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:bitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastMiLoQuality:(int64_t)quality
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_lastMiLoModels;
  return [v5 initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:quality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:self->_lastClearDate];
}

- (id)copyWithReplacementLastClearDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithNumberOfContextChanges:self->_numberOfContextChanges numberOfMiLoPredictions:self->_numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:self->_numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:self->_lastMiLoLSLItems lastMiLoQualityReasonBitmap:self->_lastMiLoQualityReasonBitmap lastMiLoQuality:self->_lastMiLoQuality lastMiLoModels:self->_lastMiLoModels timeInUpdatesModeInSeconds:self->_timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:self->_numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:self->_numberOfCorrectPickerChoiceEvents lastClearDate:dateCopy];

  return v5;
}

- (BOOL)isEqualToStatisticsDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_15;
  }

  numberOfContextChanges = self->_numberOfContextChanges;
  if (numberOfContextChanges != [oCopy numberOfContextChanges])
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
      lastClearDate = [v5 lastClearDate];
      v21 = [(NSDate *)lastClearDate isEqual:lastClearDate];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRStatisticsDO *)self isEqualToStatisticsDO:v5];
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

- (IRStatisticsDO)initWithCoder:(id)coder
{
  v61[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"numberOfContextChanges"];
  if (!v5)
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"numberOfContextChanges"] & 1) == 0)
    {
      v60 = *MEMORY[0x277CCA450];
      v61[0] = @"Missing serialized value for IRStatisticsDO.numberOfContextChanges";
      v21 = MEMORY[0x277CBEAC0];
      v22 = v61;
      v23 = &v60;
      goto LABEL_47;
    }
  }

  v6 = [coderCopy decodeInt64ForKey:@"numberOfMiLoPredictions"];
  if (!v6)
  {
    error2 = [coderCopy error];

    if (error2)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"numberOfMiLoPredictions"] & 1) == 0)
    {
      v58 = *MEMORY[0x277CCA450];
      v59 = @"Missing serialized value for IRStatisticsDO.numberOfMiLoPredictions";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v59;
      v23 = &v58;
      goto LABEL_47;
    }
  }

  v7 = [coderCopy decodeInt64ForKey:@"numberOfMiLoPredictionsInUpdatesMode"];
  if (!v7)
  {
    error3 = [coderCopy error];

    if (error3)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"numberOfMiLoPredictionsInUpdatesMode"] & 1) == 0)
    {
      v56 = *MEMORY[0x277CCA450];
      v57 = @"Missing serialized value for IRStatisticsDO.numberOfMiLoPredictionsInUpdatesMode";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v57;
      v23 = &v56;
      goto LABEL_47;
    }
  }

  v8 = [coderCopy decodeInt64ForKey:@"lastMiLoLSLItems"];
  if (!v8)
  {
    error4 = [coderCopy error];

    if (error4)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"lastMiLoLSLItems"] & 1) == 0)
    {
      v54 = *MEMORY[0x277CCA450];
      v55 = @"Missing serialized value for IRStatisticsDO.lastMiLoLSLItems";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v55;
      v23 = &v54;
      goto LABEL_47;
    }
  }

  v9 = [coderCopy decodeInt64ForKey:@"lastMiLoQualityReasonBitmap"];
  if (!v9)
  {
    error5 = [coderCopy error];

    if (error5)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"lastMiLoQualityReasonBitmap"] & 1) == 0)
    {
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Missing serialized value for IRStatisticsDO.lastMiLoQualityReasonBitmap";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v53;
      v23 = &v52;
      goto LABEL_47;
    }
  }

  v10 = [coderCopy decodeInt64ForKey:@"lastMiLoQuality"];
  if (!v10)
  {
    error6 = [coderCopy error];

    if (error6)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"lastMiLoQuality"] & 1) == 0)
    {
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Missing serialized value for IRStatisticsDO.lastMiLoQuality";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v51;
      v23 = &v50;
      goto LABEL_47;
    }
  }

  v11 = [coderCopy decodeInt64ForKey:@"lastMiLoModels"];
  if (!v11)
  {
    error7 = [coderCopy error];

    if (error7)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"lastMiLoModels"] & 1) == 0)
    {
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Missing serialized value for IRStatisticsDO.lastMiLoModels";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v49;
      v23 = &v48;
      goto LABEL_47;
    }
  }

  v39 = [coderCopy decodeInt64ForKey:@"timeInUpdatesModeInSeconds"];
  if (!v39)
  {
    error8 = [coderCopy error];

    if (error8)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"timeInUpdatesModeInSeconds"] & 1) == 0)
    {
      v46 = *MEMORY[0x277CCA450];
      v47 = @"Missing serialized value for IRStatisticsDO.timeInUpdatesModeInSeconds";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v47;
      v23 = &v46;
      goto LABEL_47;
    }
  }

  v38 = [coderCopy decodeInt64ForKey:@"numberOfPickerChoiceEvents"];
  if (!v38)
  {
    error9 = [coderCopy error];

    if (error9)
    {
      goto LABEL_42;
    }

    if (([coderCopy containsValueForKey:@"numberOfPickerChoiceEvents"] & 1) == 0)
    {
      v44 = *MEMORY[0x277CCA450];
      v45 = @"Missing serialized value for IRStatisticsDO.numberOfPickerChoiceEvents";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v45;
      v23 = &v44;
      goto LABEL_47;
    }
  }

  v37 = [coderCopy decodeInt64ForKey:@"numberOfCorrectPickerChoiceEvents"];
  if (v37)
  {
    goto LABEL_11;
  }

  error10 = [coderCopy error];

  if (!error10)
  {
    if ([coderCopy containsValueForKey:@"numberOfCorrectPickerChoiceEvents"])
    {
LABEL_11:
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastClearDate"];
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
          [coderCopy failWithError:v19];

LABEL_48:
          goto LABEL_49;
        }
      }

      else
      {
        error11 = [coderCopy error];

        if (error11)
        {
LABEL_49:
          selfCopy = 0;
          goto LABEL_50;
        }
      }

      self = [(IRStatisticsDO *)self initWithNumberOfContextChanges:v5 numberOfMiLoPredictions:v6 numberOfMiLoPredictionsInUpdatesMode:v7 lastMiLoLSLItems:v8 lastMiLoQualityReasonBitmap:v9 lastMiLoQuality:v10 lastMiLoModels:v11 timeInUpdatesModeInSeconds:v39 numberOfPickerChoiceEvents:v38 numberOfCorrectPickerChoiceEvents:v37 lastClearDate:v12];
      selfCopy = self;
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
    [coderCopy failWithError:v14];
    goto LABEL_48;
  }

LABEL_42:
  selfCopy = 0;
LABEL_51:

  v34 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_numberOfContextChanges forKey:@"numberOfContextChanges"];
  [coderCopy encodeInt64:self->_numberOfMiLoPredictions forKey:@"numberOfMiLoPredictions"];
  [coderCopy encodeInt64:self->_numberOfMiLoPredictionsInUpdatesMode forKey:@"numberOfMiLoPredictionsInUpdatesMode"];
  [coderCopy encodeInt64:self->_lastMiLoLSLItems forKey:@"lastMiLoLSLItems"];
  [coderCopy encodeInt64:self->_lastMiLoQualityReasonBitmap forKey:@"lastMiLoQualityReasonBitmap"];
  [coderCopy encodeInt64:self->_lastMiLoQuality forKey:@"lastMiLoQuality"];
  [coderCopy encodeInt64:self->_lastMiLoModels forKey:@"lastMiLoModels"];
  [coderCopy encodeInt64:self->_timeInUpdatesModeInSeconds forKey:@"timeInUpdatesModeInSeconds"];
  [coderCopy encodeInt64:self->_numberOfPickerChoiceEvents forKey:@"numberOfPickerChoiceEvents"];
  [coderCopy encodeInt64:self->_numberOfCorrectPickerChoiceEvents forKey:@"numberOfCorrectPickerChoiceEvents"];
  lastClearDate = self->_lastClearDate;
  if (lastClearDate)
  {
    [coderCopy encodeObject:lastClearDate forKey:@"lastClearDate"];
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