@interface RTInferredMapItem
+ (BOOL)hasKnownTypeItem:(id)item;
+ (double)consolidatedConfidenceFromConfidences:(id)confidences;
+ (id)dedupeInferredMapItems:(id)items;
+ (id)heaviestMapItemFrom:(id)from closestToLocation:(id)location distanceCalculator:(id)calculator error:(id *)error;
+ (unint64_t)consolidatedSourceFromInferredMapItems:(id)items;
- (BOOL)isEqual:(id)equal;
- (RTInferredMapItem)initWithCoder:(id)coder;
- (RTInferredMapItem)initWithMapItem:(id)item confidence:(double)confidence source:(unint64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTInferredMapItem

- (RTInferredMapItem)initWithMapItem:(id)item confidence:(double)confidence source:(unint64_t)source
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTInferredMapItem initWithMapItem:confidence:source:]";
      v21 = 1024;
      v22 = 47;
      _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem (in %s:%d)", buf, 0x12u);
    }
  }

  if (confidence < 0.0 || confidence > 1.0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTInferredMapItem initWithMapItem:confidence:source:]";
      v21 = 1024;
      v22 = 49;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: kRTInferredMapItemConfidenceMin <= confidence && confidence <= kRTInferredMapItemConfidenceMax (in %s:%d)", buf, 0x12u);
    }
  }

  selfCopy = 0;
  if (itemCopy && confidence >= 0.0 && confidence <= 1.0 && (source & 0xFFFFFFFFFFC00020) == 0)
  {
    v18.receiver = self;
    v18.super_class = RTInferredMapItem;
    v14 = [(RTInferredMapItem *)&v18 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_mapItem, item);
      v15->_confidence = confidence;
      v15->_source = source;
    }

    self = v15;
    selfCopy = self;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  mapItem = [(RTInferredMapItem *)self mapItem];
  [(RTInferredMapItem *)self confidence];
  v6 = v5;
  v7 = [RTMapItem sourceToString:[(RTInferredMapItem *)self source]];
  v8 = [v3 stringWithFormat:@"mapItem, %@, confidence, %.3f, source, %@", mapItem, v6, v7];

  return v8;
}

+ (BOOL)hasKnownTypeItem:(id)item
{
  itemCopy = item;
  if ([itemCopy count])
  {
    v4 = [itemCopy indexOfObjectPassingTest:&__block_literal_global_1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __38__RTInferredMapItem_hasKnownTypeItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 extendedAttributes];
  v4 = [v3 isMe];

  return v4;
}

+ (double)consolidatedConfidenceFromConfidences:(id)confidences
{
  v33 = *MEMORY[0x1E69E9840];
  confidencesCopy = confidences;
  v4 = 0.0;
  if ([confidencesCopy count])
  {
    if ([confidencesCopy count] == 1)
    {
      firstObject = [confidencesCopy firstObject];
      [firstObject doubleValue];
      v4 = v6;
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = confidencesCopy;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        v11 = 1.0;
        v12 = 1.0;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            [v14 doubleValue];
            if (v15 < 0.0 || ([v14 doubleValue], v16 > 1.0))
            {
              v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v27 = v14;
                v28 = 2080;
                v29 = "+[RTInferredMapItem consolidatedConfidenceFromConfidences:]";
                v30 = 1024;
                v31 = 117;
                _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "invalid confidence, %@ (in %s:%d)", buf, 0x1Cu);
              }
            }

            [v14 doubleValue];
            v12 = v12 * v18;
            [v14 doubleValue];
            v11 = v11 * (1.0 - v19);
          }

          v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 1.0;
        v12 = 1.0;
      }

      if (v11 + v12 != 0.0)
      {
        v4 = fmax(fmin(v12 / (v11 + v12), 1.0), 0.0);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (unint64_t)consolidatedSourceFromInferredMapItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v6 |= [*(*(&v11 + 1) + 8 * i) source];
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)dedupeInferredMapItems:(id)items
{
  v71 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count] <= 1)
  {
    v4 = [itemsCopy copy];
    goto LABEL_36;
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v56 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v51 = itemsCopy;
  v6 = itemsCopy;
  v53 = v6;
  v55 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (!v55)
  {
    goto LABEL_23;
  }

  v7 = *v66;
  v54 = v5;
  v52 = *v66;
  do
  {
    for (i = 0; i != v55; ++i)
    {
      if (*v66 != v7)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v65 + 1) + 8 * i);
      mapItem = [v9 mapItem];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __44__RTInferredMapItem_dedupeInferredMapItems___block_invoke;
      v63[3] = &unk_1E80B48F8;
      v11 = mapItem;
      v64 = v11;
      v12 = [v5 indexOfObjectPassingTest:v63];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 addObject:v11];
        v13 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
        identifier = [v11 identifier];
        [v56 setObject:v13 forKeyedSubscript:identifier];
      }

      else
      {
        v15 = v12;
        v13 = [v5 objectAtIndexedSubscript:v12];
        identifier2 = [v13 identifier];
        v17 = [v56 objectForKeyedSubscript:identifier2];
        [v17 addObject:v9];

        source = [v13 source];
        v19 = [v11 source] & source;
        if (v19 == [v11 source])
        {
          goto LABEL_21;
        }

        [v11 weight];
        v21 = v20;
        [v13 weight];
        if (v21 <= v22)
        {
          v23 = v13;
        }

        else
        {
          v23 = v11;
        }

        identifier = v23;
        if (identifier == v11)
        {
          v24 = v13;
        }

        else
        {
          v24 = v11;
        }

        v25 = v24;
        v26 = [identifier appendSource:{objc_msgSend(v25, "source")}];
        [v5 setObject:v26 atIndexedSubscript:v15];

        v27 = [v5 objectAtIndexedSubscript:v15];
        identifier3 = [v27 identifier];
        identifier4 = [v13 identifier];
        v30 = [identifier3 isEqual:identifier4];

        if ((v30 & 1) == 0)
        {
          identifier5 = [v13 identifier];
          v32 = [v56 objectForKeyedSubscript:identifier5];
          v33 = [v54 objectAtIndexedSubscript:v15];
          identifier6 = [v33 identifier];
          [v56 setObject:v32 forKeyedSubscript:identifier6];
        }

        v6 = v53;
        v5 = v54;
        v7 = v52;
      }

LABEL_21:
    }

    v55 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
  }

  while (v55);
LABEL_23:

  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v36 = v5;
  v4 = v35;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v60;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v60 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v59 + 1) + 8 * j);
        identifier7 = [v42 identifier];
        v44 = [v56 objectForKeyedSubscript:identifier7];

        if ([v44 count] == 1)
        {
          firstObject = [v44 firstObject];
          [v4 addObject:firstObject];
        }

        else
        {
          firstObject = [v44 valueForKeyPath:@"confidence"];
          [objc_opt_class() consolidatedConfidenceFromConfidences:firstObject];
          v47 = -[RTInferredMapItem initWithMapItem:confidence:source:]([RTInferredMapItem alloc], "initWithMapItem:confidence:source:", v42, [objc_opt_class() consolidatedSourceFromInferredMapItems:v44], v46);
          [v4 addObject:v47];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v39);
  }

  v48 = [v53 count];
  if (v48 != [v4 count])
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __44__RTInferredMapItem_dedupeInferredMapItems___block_invoke_2;
    v57[3] = &unk_1E80B4920;
    v58 = v56;
    [v4 enumerateObjectsUsingBlock:v57];
  }

  itemsCopy = v51;
LABEL_36:

  v49 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __44__RTInferredMapItem_dedupeInferredMapItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToMapItem:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __44__RTInferredMapItem_dedupeInferredMapItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a3 + 1;
      v8 = *(a1 + 32);
      v9 = [v5 mapItem];
      v10 = [v9 identifier];
      v11 = [v8 objectForKeyedSubscript:v10];
      v13 = 134218498;
      v14 = v7;
      v15 = 2048;
      v16 = [v11 count];
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_INFO, "de-duped mapItem %lu (from %lu mapItems), %@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)heaviestMapItemFrom:(id)from closestToLocation:(id)location distanceCalculator:(id)calculator error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  locationCopy = location;
  calculatorCopy = calculator;
  if ([fromCopy count] > 1)
  {
    v13 = [fromCopy valueForKeyPath:@"mapItem"];
    v14 = [RTMapItem heaviestMapItemFrom:v13 closestToLocation:locationCopy distanceCalculator:calculatorCopy error:error];
    if (*error)
    {
      firstObject = 0;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = fromCopy;
      firstObject = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (firstObject)
      {
        v22 = v13;
        v16 = *v24;
        while (2)
        {
          for (i = 0; i != firstObject; i = i + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v23 + 1) + 8 * i);
            mapItem = [v18 mapItem];

            if (mapItem == v14)
            {
              firstObject = v18;
              goto LABEL_15;
            }
          }

          firstObject = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (firstObject)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v13 = v22;
      }
    }
  }

  else
  {
    firstObject = [fromCopy firstObject];
  }

  v20 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mapItem = self->_mapItem;
  confidence = self->_confidence;
  source = self->_source;

  return [v4 initWithMapItem:mapItem confidence:source source:confidence];
}

- (void)encodeWithCoder:(id)coder
{
  mapItem = self->_mapItem;
  coderCopy = coder;
  [coderCopy encodeObject:mapItem forKey:@"mapItem"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
}

- (RTInferredMapItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
  [coderCopy decodeDoubleForKey:@"confidence"];
  v7 = v6;
  v8 = [coderCopy decodeIntegerForKey:@"source"];

  v9 = [(RTInferredMapItem *)self initWithMapItem:v5 confidence:v8 source:v7];
  return v9;
}

- (unint64_t)hash
{
  v3 = [(RTMapItem *)self->_mapItem hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mapItem = [(RTInferredMapItem *)self mapItem];
      mapItem2 = [(RTInferredMapItem *)v5 mapItem];
      v8 = [mapItem isEqual:mapItem2];

      [(RTInferredMapItem *)self confidence];
      v10 = v9;
      [(RTInferredMapItem *)v5 confidence];
      v12 = v11;
      source = [(RTInferredMapItem *)self source];
      source2 = [(RTInferredMapItem *)v5 source];

      if (v10 == v12)
      {
        v15 = v8;
      }

      else
      {
        v15 = 0;
      }

      v16 = source == source2 && v15;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end