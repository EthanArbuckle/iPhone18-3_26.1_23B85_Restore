@interface EMTResult
- (BOOL)isEqual:(id)equal;
- (EMTResult)initWithLocale:(id)locale tokens:(id)tokens confidence:(float)confidence lowConfidence:(BOOL)lowConfidence metaInfo:(id)info romanization:(id)romanization alternativeSelectionSpans:(id)spans sourceSpans:(id)self0 targetProjections:(id)self1 stableSegments:(id)self2;
- (id)description;
- (unint64_t)hash;
@end

@implementation EMTResult

- (EMTResult)initWithLocale:(id)locale tokens:(id)tokens confidence:(float)confidence lowConfidence:(BOOL)lowConfidence metaInfo:(id)info romanization:(id)romanization alternativeSelectionSpans:(id)spans sourceSpans:(id)self0 targetProjections:(id)self1 stableSegments:(id)self2
{
  localeCopy = locale;
  tokensCopy = tokens;
  infoCopy = info;
  romanizationCopy = romanization;
  spansCopy = spans;
  sourceSpansCopy = sourceSpans;
  projectionsCopy = projections;
  segmentsCopy = segments;
  v41.receiver = self;
  v41.super_class = EMTResult;
  v24 = [(EMTResult *)&v41 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_locale, locale);
    v26 = [tokensCopy copy];
    tokens = v25->_tokens;
    v25->_tokens = v26;

    v25->_confidence = confidence;
    v25->_lowConfidence = lowConfidence;
    objc_storeStrong(&v25->_metaInfo, info);
    objc_storeStrong(&v25->_romanization, romanization);
    v28 = [spansCopy copy];
    alternativeSelectionSpans = v25->_alternativeSelectionSpans;
    v25->_alternativeSelectionSpans = v28;

    v30 = [sourceSpansCopy copy];
    sourceSpans = v25->_sourceSpans;
    v25->_sourceSpans = v30;

    v32 = [projectionsCopy copy];
    targetProjections = v25->_targetProjections;
    v25->_targetProjections = v32;

    v34 = [segmentsCopy copy];
    stableSegments = v25->_stableSegments;
    v25->_stableSegments = v34;
  }

  return v25;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_tokens;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    v7 = 1;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v7)
        {
          goto LABEL_9;
        }

        if ([*(*(&v14 + 1) + 8 * i) precededBySpace])
        {
          [v3 addObject:@" "];
LABEL_9:
          v10 = 1;
          goto LABEL_11;
        }

        v10 = 0;
LABEL_11:
        text = [v9 text];
        if ([text length])
        {
          [v3 addObject:text];
        }

        else if (v10)
        {
          goto LABEL_16;
        }

        if ([v9 followedBySpace])
        {
          [v3 addObject:@" "];
LABEL_16:
          v7 = 1;
          goto LABEL_18;
        }

        v7 = 0;
LABEL_18:
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v5)
      {

        if ((v7 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_23:
  if ([v3 count])
  {
    [v3 removeLastObject];
  }

LABEL_25:
  v12 = [v3 componentsJoinedByString:&stru_1F2D44B60];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tokens = self->_tokens;
    tokens = [v5 tokens];
    if ([(NSArray *)tokens isEqual:tokens])
    {
      confidence = self->_confidence;
      [v5 confidence];
      v10 = confidence == v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v14 = *MEMORY[0x1E69E9840];
  confidence = self->_confidence;
  if (confidence == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 31 * LODWORD(confidence);
  }

  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_tokens;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v3 = [*(*(&v9 + 1) + 8 * v7++) hash] + 17 * v3;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

@end