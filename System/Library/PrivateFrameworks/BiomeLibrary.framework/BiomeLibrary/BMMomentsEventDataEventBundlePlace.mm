@interface BMMomentsEventDataEventBundlePlace
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEventDataEventBundlePlace)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsEventDataEventBundlePlace)initWithPlaceInferencePlaceType:(int)a3 placeInferenceUserSpecificPlaceType:(int)a4 geoPOICategoryType:(int)a5 placeNameConfidence:(id)a6 familiarityIndexLOI:(id)a7 distanceToHomeInMiles:(id)a8 poiCategoryConfidence:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEventDataEventBundlePlace

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEventDataEventBundlePlace *)self placeInferencePlaceType];
    if (v6 != [v5 placeInferencePlaceType])
    {
      goto LABEL_26;
    }

    v7 = [(BMMomentsEventDataEventBundlePlace *)self placeInferenceUserSpecificPlaceType];
    if (v7 != [v5 placeInferenceUserSpecificPlaceType])
    {
      goto LABEL_26;
    }

    v8 = [(BMMomentsEventDataEventBundlePlace *)self geoPOICategoryType];
    if (v8 != [v5 geoPOICategoryType])
    {
      goto LABEL_26;
    }

    if (-[BMMomentsEventDataEventBundlePlace hasPlaceNameConfidence](self, "hasPlaceNameConfidence") || [v5 hasPlaceNameConfidence])
    {
      if (![(BMMomentsEventDataEventBundlePlace *)self hasPlaceNameConfidence])
      {
        goto LABEL_26;
      }

      if (![v5 hasPlaceNameConfidence])
      {
        goto LABEL_26;
      }

      [(BMMomentsEventDataEventBundlePlace *)self placeNameConfidence];
      v10 = v9;
      [v5 placeNameConfidence];
      if (v10 != v11)
      {
        goto LABEL_26;
      }
    }

    if (-[BMMomentsEventDataEventBundlePlace hasFamiliarityIndexLOI](self, "hasFamiliarityIndexLOI") || [v5 hasFamiliarityIndexLOI])
    {
      if (![(BMMomentsEventDataEventBundlePlace *)self hasFamiliarityIndexLOI])
      {
        goto LABEL_26;
      }

      if (![v5 hasFamiliarityIndexLOI])
      {
        goto LABEL_26;
      }

      [(BMMomentsEventDataEventBundlePlace *)self familiarityIndexLOI];
      v13 = v12;
      [v5 familiarityIndexLOI];
      if (v13 != v14)
      {
        goto LABEL_26;
      }
    }

    if (-[BMMomentsEventDataEventBundlePlace hasDistanceToHomeInMiles](self, "hasDistanceToHomeInMiles") || [v5 hasDistanceToHomeInMiles])
    {
      if (![(BMMomentsEventDataEventBundlePlace *)self hasDistanceToHomeInMiles])
      {
        goto LABEL_26;
      }

      if (![v5 hasDistanceToHomeInMiles])
      {
        goto LABEL_26;
      }

      [(BMMomentsEventDataEventBundlePlace *)self distanceToHomeInMiles];
      v16 = v15;
      [v5 distanceToHomeInMiles];
      if (v16 != v17)
      {
        goto LABEL_26;
      }
    }

    if (!-[BMMomentsEventDataEventBundlePlace hasPoiCategoryConfidence](self, "hasPoiCategoryConfidence") && ![v5 hasPoiCategoryConfidence])
    {
      v21 = 1;
      goto LABEL_27;
    }

    if (-[BMMomentsEventDataEventBundlePlace hasPoiCategoryConfidence](self, "hasPoiCategoryConfidence") && [v5 hasPoiCategoryConfidence])
    {
      [(BMMomentsEventDataEventBundlePlace *)self poiCategoryConfidence];
      v19 = v18;
      [v5 poiCategoryConfidence];
      v21 = v19 == v20;
    }

    else
    {
LABEL_26:
      v21 = 0;
    }

LABEL_27:

    goto LABEL_28;
  }

  v21 = 0;
LABEL_28:

  return v21;
}

- (id)jsonDictionary
{
  v32[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundlePlace placeInferencePlaceType](self, "placeInferencePlaceType")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundlePlace placeInferenceUserSpecificPlaceType](self, "placeInferenceUserSpecificPlaceType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundlePlace geoPOICategoryType](self, "geoPOICategoryType")}];
  if (![(BMMomentsEventDataEventBundlePlace *)self hasPlaceNameConfidence]|| ([(BMMomentsEventDataEventBundlePlace *)self placeNameConfidence], fabs(v6) == INFINITY))
  {
    v30 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundlePlace *)self placeNameConfidence];
    v7 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundlePlace *)self placeNameConfidence];
    v30 = [v7 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundlePlace *)self hasFamiliarityIndexLOI]|| ([(BMMomentsEventDataEventBundlePlace *)self familiarityIndexLOI], fabs(v8) == INFINITY))
  {
    v29 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundlePlace *)self familiarityIndexLOI];
    v9 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundlePlace *)self familiarityIndexLOI];
    v29 = [v9 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundlePlace *)self hasDistanceToHomeInMiles]|| ([(BMMomentsEventDataEventBundlePlace *)self distanceToHomeInMiles], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundlePlace *)self distanceToHomeInMiles];
    v11 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundlePlace *)self distanceToHomeInMiles];
    v12 = [v11 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundlePlace *)self hasPoiCategoryConfidence]|| ([(BMMomentsEventDataEventBundlePlace *)self poiCategoryConfidence], fabs(v13) == INFINITY))
  {
    v15 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundlePlace *)self poiCategoryConfidence];
    v14 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundlePlace *)self poiCategoryConfidence];
    v15 = [v14 numberWithDouble:?];
  }

  v31[0] = @"placeInferencePlaceType";
  v16 = v3;
  if (!v3)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v16;
  v32[0] = v16;
  v31[1] = @"placeInferenceUserSpecificPlaceType";
  v17 = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v32[1] = v17;
  v31[2] = @"geoPOICategoryType";
  v18 = v5;
  if (!v5)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v32[2] = v18;
  v31[3] = @"placeNameConfidence";
  v19 = v30;
  if (!v30)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[3] = v19;
  v31[4] = @"familiarityIndexLOI";
  v20 = v29;
  if (!v29)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = v20;
  v31[5] = @"distanceToHomeInMiles";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v21;
  v31[6] = @"poiCategoryConfidence";
  v22 = v15;
  if (!v15)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  if (v15)
  {
    if (v12)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v29)
  {
  }

  if (!v30)
  {
  }

  if (!v5)
  {
  }

  if (v27)
  {
    if (v28)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (v28)
    {
      goto LABEL_41;
    }
  }

LABEL_41:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BMMomentsEventDataEventBundlePlace)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v86[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"placeInferencePlaceType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = v7;
    }

    else
    {
      v26 = self;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v72 = 0;
          v25 = 0;
          goto LABEL_62;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = a4;
        v42 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeInferencePlaceType"];
        v86[0] = v71;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
        v43 = [v40 initWithDomain:v42 code:2 userInfo:v8];
        v72 = 0;
        v25 = 0;
        *v41 = v43;
        goto LABEL_73;
      }

      v72 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferencePlaceTypeFromString(v7)];
    }
  }

  else
  {
    v72 = 0;
  }

  v8 = [v6 objectForKeyedSubscript:@"placeInferenceUserSpecificPlaceType"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = v8;
        goto LABEL_7;
      }

      v26 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeFromString(v8)];
        goto LABEL_7;
      }

      if (a4)
      {
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = a4;
        v50 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeInferenceUserSpecificPlaceType"];
        v84 = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v53 = v50;
        a4 = v51;
        v54 = [v48 initWithDomain:v53 code:2 userInfo:v52];
        v71 = 0;
        v25 = 0;
        *v49 = v54;
        v9 = v52;
        goto LABEL_60;
      }

      v71 = 0;
      v25 = 0;
LABEL_73:
      self = v26;
      goto LABEL_61;
    }
  }

  v71 = 0;
LABEL_7:
  v9 = [v6 objectForKeyedSubscript:@"geoPOICategoryType"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v25 = 0;
          goto LABEL_60;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"geoPOICategoryType"];
        v82 = v69;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v57 = [v55 initWithDomain:v56 code:2 userInfo:?];
        v25 = 0;
        *a4 = v57;
        a4 = 0;
        goto LABEL_59;
      }

      v67 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataGeoPOICategoryTypeFromString(v9)];
    }
  }

  else
  {
    v67 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"placeNameConfidence"];
  v68 = v10;
  if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v69 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v69 = v11;
LABEL_13:
    v12 = [v6 objectForKeyedSubscript:@"familiarityIndexLOI"];
    v65 = v8;
    v66 = v12;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v12 = 0;
            v25 = 0;
            a4 = v67;
            goto LABEL_57;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v33 = v9;
          v34 = self;
          v35 = objc_alloc(MEMORY[0x1E696AEC0]);
          v58 = objc_opt_class();
          v36 = v35;
          self = v34;
          v9 = v33;
          v14 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v58, @"familiarityIndexLOI"];
          v78 = v14;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v37 = [v31 initWithDomain:v32 code:2 userInfo:v13];
          v12 = 0;
          v25 = 0;
          *a4 = v37;
          goto LABEL_70;
        }

        v12 = v12;
      }
    }

    v13 = [v6 objectForKeyedSubscript:@"distanceToHomeInMiles"];
    v64 = v9;
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
LABEL_29:
      v15 = [v6 objectForKeyedSubscript:@"poiCategoryConfidence"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v59 = v15;
        v61 = v13;
        v16 = v6;
        v17 = v12;
        v18 = v71;
        v19 = v72;
        v20 = v7;
        v21 = self;
        v22 = 0;
LABEL_32:
        v72 = v19;
        v23 = [v19 intValue];
        v71 = v18;
        v24 = [v18 intValue];
        a4 = v67;
        v12 = v17;
        self = -[BMMomentsEventDataEventBundlePlace initWithPlaceInferencePlaceType:placeInferenceUserSpecificPlaceType:geoPOICategoryType:placeNameConfidence:familiarityIndexLOI:distanceToHomeInMiles:poiCategoryConfidence:](v21, "initWithPlaceInferencePlaceType:placeInferenceUserSpecificPlaceType:geoPOICategoryType:placeNameConfidence:familiarityIndexLOI:distanceToHomeInMiles:poiCategoryConfidence:", v23, v24, [v67 intValue], v69, v17, v14, v22);
        v25 = self;
        v7 = v20;
        v6 = v16;
        v15 = v59;
        v13 = v61;
LABEL_55:

        v9 = v64;
LABEL_56:

        v8 = v65;
LABEL_57:
        v29 = v66;
        goto LABEL_58;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v13;
        v16 = v6;
        v17 = v12;
        v18 = v71;
        v19 = v72;
        v27 = v15;
        v20 = v7;
        v21 = self;
        v59 = v27;
        v22 = v27;
        goto LABEL_32;
      }

      if (a4)
      {
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"poiCategoryConfidence"];
        v74 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *a4 = [v63 initWithDomain:v60 code:2 userInfo:v45];
      }

      v22 = 0;
      v25 = 0;
LABEL_54:
      a4 = v67;
      goto LABEL_55;
    }

    if (a4)
    {
      v62 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"distanceToHomeInMiles"];
      v76 = v22;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v39 = [v62 initWithDomain:v38 code:2 userInfo:v15];
      v14 = 0;
      v25 = 0;
      *a4 = v39;
      goto LABEL_54;
    }

    v14 = 0;
    v25 = 0;
LABEL_70:
    a4 = v67;
    goto LABEL_56;
  }

  if (!a4)
  {
    v69 = 0;
    v25 = 0;
    a4 = v67;
    goto LABEL_59;
  }

  v70 = objc_alloc(MEMORY[0x1E696ABC0]);
  v28 = *MEMORY[0x1E698F240];
  v79 = *MEMORY[0x1E696A578];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"placeNameConfidence"];
  v80 = v12;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v30 = [v70 initWithDomain:v28 code:2 userInfo:v29];
  v69 = 0;
  v25 = 0;
  *a4 = v30;
  a4 = v67;
LABEL_58:

LABEL_59:
LABEL_60:

LABEL_61:
LABEL_62:

  v46 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundlePlace *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  placeInferencePlaceType = self->_placeInferencePlaceType;
  PBDataWriterWriteUint32Field();
  placeInferenceUserSpecificPlaceType = self->_placeInferenceUserSpecificPlaceType;
  PBDataWriterWriteUint32Field();
  geoPOICategoryType = self->_geoPOICategoryType;
  PBDataWriterWriteUint32Field();
  if (self->_hasPlaceNameConfidence)
  {
    placeNameConfidence = self->_placeNameConfidence;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasFamiliarityIndexLOI)
  {
    familiarityIndexLOI = self->_familiarityIndexLOI;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDistanceToHomeInMiles)
  {
    distanceToHomeInMiles = self->_distanceToHomeInMiles;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasPoiCategoryConfidence)
  {
    poiCategoryConfidence = self->_poiCategoryConfidence;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = BMMomentsEventDataEventBundlePlace;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_93;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v57) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v57 & 0x7F) << v7;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        if (v15 == 1)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          while (1)
          {
            LOBYTE(v57) = 0;
            v30 = [v4 position] + 1;
            if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
            {
              v32 = [v4 data];
              [v32 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v29 |= (v57 & 0x7F) << v27;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              v33 = 0;
              goto LABEL_71;
            }
          }

          if ([v4 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v29;
          }

LABEL_71:
          v45 = BMMomentsEventDataPlaceInferencePlaceTypeDecode(v33);
          v46 = 24;
          goto LABEL_80;
        }

        if (v15 == 2)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            LOBYTE(v57) = 0;
            v41 = [v4 position] + 1;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v40 |= (v57 & 0x7F) << v38;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v13 = v39++ >= 9;
            if (v13)
            {
              v44 = 0;
              goto LABEL_79;
            }
          }

          if ([v4 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v40;
          }

LABEL_79:
          v45 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeDecode(v44);
          v46 = 28;
LABEL_80:
          *(&v5->super.super.isa + v46) = v45;
          goto LABEL_90;
        }

        if (v15 != 3)
        {
          goto LABEL_51;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v57) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v57 & 0x7F) << v18;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          if (v19++ > 8)
          {
            goto LABEL_74;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 0x4D)
        {
LABEL_74:
          LODWORD(v20) = 0;
        }

        v5->_geoPOICategoryType = v20;
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v5->_hasDistanceToHomeInMiles = 1;
            v57 = 0;
            v36 = [v4 position] + 8;
            if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 8, v37 <= objc_msgSend(v4, "length")))
            {
              v50 = [v4 data];
              [v50 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v48 = v57;
            v49 = 56;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_51:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_92;
              }

              goto LABEL_90;
            }

            v5->_hasPoiCategoryConfidence = 1;
            v57 = 0;
            v25 = [v4 position] + 8;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
            {
              v52 = [v4 data];
              [v52 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v48 = v57;
            v49 = 64;
          }
        }

        else if (v15 == 4)
        {
          v5->_hasPlaceNameConfidence = 1;
          v57 = 0;
          v34 = [v4 position] + 8;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 8, v35 <= objc_msgSend(v4, "length")))
          {
            v47 = [v4 data];
            [v47 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v48 = v57;
          v49 = 40;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_51;
          }

          v5->_hasFamiliarityIndexLOI = 1;
          v57 = 0;
          v16 = [v4 position] + 8;
          if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
          {
            v51 = [v4 data];
            [v51 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v48 = v57;
          v49 = 48;
        }

        *(&v5->super.super.isa + v49) = v48;
      }

LABEL_90:
      v53 = [v4 position];
    }

    while (v53 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_92:
    v54 = 0;
  }

  else
  {
LABEL_93:
    v54 = v5;
  }

  return v54;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEventDataPlaceInferencePlaceTypeAsString([(BMMomentsEventDataEventBundlePlace *)self placeInferencePlaceType]);
  v5 = BMMomentsEventDataPlaceInferenceUserSpecificPlaceTypeAsString([(BMMomentsEventDataEventBundlePlace *)self placeInferenceUserSpecificPlaceType]);
  v6 = BMMomentsEventDataGeoPOICategoryTypeAsString([(BMMomentsEventDataEventBundlePlace *)self geoPOICategoryType]);
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundlePlace *)self placeNameConfidence];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundlePlace *)self familiarityIndexLOI];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundlePlace *)self distanceToHomeInMiles];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundlePlace *)self poiCategoryConfidence];
  v14 = [v13 numberWithDouble:?];
  v15 = [v3 initWithFormat:@"BMMomentsEventDataEventBundlePlace with placeInferencePlaceType: %@, placeInferenceUserSpecificPlaceType: %@, geoPOICategoryType: %@, placeNameConfidence: %@, familiarityIndexLOI: %@, distanceToHomeInMiles: %@, poiCategoryConfidence: %@", v4, v5, v6, v8, v10, v12, v14];

  return v15;
}

- (BMMomentsEventDataEventBundlePlace)initWithPlaceInferencePlaceType:(int)a3 placeInferenceUserSpecificPlaceType:(int)a4 geoPOICategoryType:(int)a5 placeNameConfidence:(id)a6 familiarityIndexLOI:(id)a7 distanceToHomeInMiles:(id)a8 poiCategoryConfidence:(id)a9
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v25.receiver = self;
  v25.super_class = BMMomentsEventDataEventBundlePlace;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v19->_placeInferencePlaceType = a3;
    v19->_placeInferenceUserSpecificPlaceType = a4;
    v19->_geoPOICategoryType = a5;
    if (v15)
    {
      v19->_hasPlaceNameConfidence = 1;
      [v15 doubleValue];
    }

    else
    {
      v19->_hasPlaceNameConfidence = 0;
      v20 = -1.0;
    }

    v19->_placeNameConfidence = v20;
    if (v16)
    {
      v19->_hasFamiliarityIndexLOI = 1;
      [v16 doubleValue];
    }

    else
    {
      v19->_hasFamiliarityIndexLOI = 0;
      v21 = -1.0;
    }

    v19->_familiarityIndexLOI = v21;
    if (v17)
    {
      v19->_hasDistanceToHomeInMiles = 1;
      [v17 doubleValue];
    }

    else
    {
      v19->_hasDistanceToHomeInMiles = 0;
      v22 = -1.0;
    }

    v19->_distanceToHomeInMiles = v22;
    if (v18)
    {
      v19->_hasPoiCategoryConfidence = 1;
      [v18 doubleValue];
    }

    else
    {
      v19->_hasPoiCategoryConfidence = 0;
      v23 = -1.0;
    }

    v19->_poiCategoryConfidence = v23;
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeInferencePlaceType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeInferenceUserSpecificPlaceType" number:2 type:4 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"geoPOICategoryType" number:3 type:4 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeNameConfidence" number:4 type:0 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familiarityIndexLOI" number:5 type:0 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceToHomeInMiles" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategoryConfidence" number:7 type:0 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeInferencePlaceType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeInferenceUserSpecificPlaceType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"geoPOICategoryType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeNameConfidence" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familiarityIndexLOI" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceToHomeInMiles" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategoryConfidence" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMomentsEventDataEventBundlePlace alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end