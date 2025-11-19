@interface VCPProtoMovieStabilizationRecipe
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (float)homographyParamsAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (int64_t)timeValueAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieStabilizationRecipe

+ (id)resultFromLegacyDictionary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v36 = v3;
  v4 = [v3 objectForKeyedSubscript:@"stabCropRect"];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = [v3 objectForKeyedSubscript:@"inputBounds"];
  if (!v5)
  {

    goto LABEL_17;
  }

  v6 = [v3 objectForKeyedSubscript:@"sourceSize"];
  if (!v6)
  {

    goto LABEL_18;
  }

  v7 = [v3 objectForKeyedSubscript:@"frameInstructions"];
  v8 = [v7 count];

  if (!v8)
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v9 = objc_alloc_init(VCPProtoMovieStabilizationRecipe);
  v34 = [v3 objectForKeyedSubscript:@"frameInstructions"];
  v32 = [v3 objectForKeyedSubscript:@"stabCropRect"];
  v33 = [v3 objectForKeyedSubscript:@"inputBounds"];
  v35 = [v3 objectForKeyedSubscript:@"sourceSize"];
  v10 = [v32 objectForKeyedSubscript:@"X"];
  [v10 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setCropRectX:?];

  v11 = [v32 objectForKeyedSubscript:@"Y"];
  [v11 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setCropRectY:?];

  v12 = [v32 objectForKeyedSubscript:@"Width"];
  [v12 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setCropRectWidth:?];

  v13 = [v32 objectForKeyedSubscript:@"Height"];
  [v13 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setCropRectHeight:?];

  v14 = [v33 objectForKeyedSubscript:@"X"];
  [v14 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setInputBoundsX:?];

  v15 = [v33 objectForKeyedSubscript:@"Y"];
  [v15 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setInputBoundsY:?];

  v16 = [v33 objectForKeyedSubscript:@"Width"];
  [v16 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setInputBoundsWidth:?];

  v17 = [v33 objectForKeyedSubscript:@"Height"];
  [v17 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setInputBoundsHeight:?];

  v18 = [v35 objectForKeyedSubscript:@"Width"];
  [v18 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setSourceSizeWidth:?];

  v19 = [v35 objectForKeyedSubscript:@"Height"];
  [v19 floatValue];
  [(VCPProtoMovieStabilizationRecipe *)v9 setSourceSizeHeight:?];

  memset(&v42, 0, sizeof(v42));
  v20 = [v34 objectAtIndexedSubscript:0];
  v21 = [v20 objectForKeyedSubscript:@"rawTime"];
  CMTimeMakeFromDictionary(&v42, v21);

  [(VCPProtoMovieStabilizationRecipe *)v9 setTimeScale:v42.timescale];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = v34;
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v23)
  {
    v24 = *v39;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        memset(&v37, 0, sizeof(v37));
        v27 = [v26 objectForKeyedSubscript:@"rawTime"];
        CMTimeMakeFromDictionary(&v37, v27);

        v28 = [v26 objectForKeyedSubscript:@"homography"];
        if ([v28 count] != 9)
        {

          v6 = 0;
          goto LABEL_23;
        }

        [(VCPProtoMovieStabilizationRecipe *)v9 addTimeValue:v37.value];
        for (j = 0; j != 9; ++j)
        {
          v30 = [v28 objectAtIndexedSubscript:j];
          [v30 floatValue];
          [(VCPProtoMovieStabilizationRecipe *)v9 addHomographyParams:?];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v6 = v9;
LABEL_23:

LABEL_18:

  return v6;
}

- (id)exportToLegacyDictionary
{
  v53[4] = *MEMORY[0x1E69E9840];
  if ([(VCPProtoMovieStabilizationRecipe *)self homographyParamsCount]&& [(VCPProtoMovieStabilizationRecipe *)self timeValuesCount]&& (v3 = [(VCPProtoMovieStabilizationRecipe *)self homographyParamsCount], v3 == 9 * [(VCPProtoMovieStabilizationRecipe *)self timeValuesCount]))
  {
    v52[0] = @"X";
    v4 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self cropRectX];
    v5 = [v4 numberWithFloat:?];
    v53[0] = v5;
    v52[1] = @"Y";
    v6 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self cropRectY];
    v7 = [v6 numberWithFloat:?];
    v53[1] = v7;
    v52[2] = @"Width";
    v8 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self cropRectWidth];
    v9 = [v8 numberWithFloat:?];
    v53[2] = v9;
    v52[3] = @"Height";
    v10 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self cropRectHeight];
    v11 = [v10 numberWithFloat:?];
    v53[3] = v11;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];

    v50[0] = @"X";
    v12 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self inputBoundsX];
    v13 = [v12 numberWithFloat:?];
    v51[0] = v13;
    v50[1] = @"Y";
    v14 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self inputBoundsY];
    v15 = [v14 numberWithFloat:?];
    v51[1] = v15;
    v50[2] = @"Width";
    v16 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self inputBoundsWidth];
    v17 = [v16 numberWithFloat:?];
    v51[2] = v17;
    v50[3] = @"Height";
    v18 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self inputBoundsHeight];
    v19 = [v18 numberWithFloat:?];
    v51[3] = v19;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];

    v48[0] = @"Width";
    v20 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self sourceSizeWidth];
    v21 = [v20 numberWithFloat:?];
    v48[1] = @"Height";
    v49[0] = v21;
    v22 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieStabilizationRecipe *)self sourceSizeHeight];
    v23 = [v22 numberWithFloat:?];
    v49[1] = v23;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];

    v24 = [MEMORY[0x1E695DF70] array];
    v25 = 0;
    for (i = 0; [(VCPProtoMovieStabilizationRecipe *)self timeValuesCount]> i; ++i)
    {
      v27 = [MEMORY[0x1E695DF20] dictionary];
      memset(&v42, 0, sizeof(v42));
      CMTimeMake(&v42, [(VCPProtoMovieStabilizationRecipe *)self timeValues][8 * i], [(VCPProtoMovieStabilizationRecipe *)self timeScale]);
      v28 = [MEMORY[0x1E695DF70] array];
      v29 = 9;
      v30 = v25;
      do
      {
        v31 = MEMORY[0x1E696AD98];
        LODWORD(v32) = [(VCPProtoMovieStabilizationRecipe *)self homographyParams][v30];
        v33 = [v31 numberWithFloat:v32];
        [v28 addObject:v33];

        v30 += 4;
        --v29;
      }

      while (v29);
      v46[0] = @"rawTime";
      time = v42;
      v34 = CMTimeCopyAsDictionary(&time, 0);
      v46[1] = @"homography";
      v47[0] = v34;
      v47[1] = v28;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];

      [v24 addObject:v35];
      v25 += 36;
    }

    v38 = [MEMORY[0x1E695DF20] dictionary];
    v44[0] = @"stabCropRect";
    v44[1] = @"inputBounds";
    v45[0] = v39;
    v45[1] = v40;
    v44[2] = @"sourceSize";
    v44[3] = @"frameInstructions";
    v45[2] = v41;
    v45[3] = v24;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = VCPProtoMovieStabilizationRecipe;
  [(VCPProtoMovieStabilizationRecipe *)&v3 dealloc];
}

- (int64_t)timeValueAtIndex:(unint64_t)a3
{
  p_timeValues = &self->_timeValues;
  count = self->_timeValues.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_timeValues->list[a3];
}

- (float)homographyParamsAtIndex:(unint64_t)a3
{
  p_homographyParams = &self->_homographyParams;
  count = self->_homographyParams.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_homographyParams->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieStabilizationRecipe;
  v4 = [(VCPProtoMovieStabilizationRecipe *)&v8 description];
  v5 = [(VCPProtoMovieStabilizationRecipe *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_cropRectX;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"cropRectX"];

  *&v6 = self->_cropRectY;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"cropRectY"];

  *&v8 = self->_cropRectHeight;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v3 setObject:v9 forKey:@"cropRectHeight"];

  *&v10 = self->_cropRectWidth;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [v3 setObject:v11 forKey:@"cropRectWidth"];

  *&v12 = self->_inputBoundsX;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [v3 setObject:v13 forKey:@"inputBoundsX"];

  *&v14 = self->_inputBoundsY;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  [v3 setObject:v15 forKey:@"inputBoundsY"];

  *&v16 = self->_inputBoundsHeight;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  [v3 setObject:v17 forKey:@"inputBoundsHeight"];

  *&v18 = self->_inputBoundsWidth;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  [v3 setObject:v19 forKey:@"inputBoundsWidth"];

  *&v20 = self->_sourceSizeHeight;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  [v3 setObject:v21 forKey:@"sourceSizeHeight"];

  *&v22 = self->_sourceSizeWidth;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  [v3 setObject:v23 forKey:@"sourceSizeWidth"];

  v24 = [MEMORY[0x1E696AD98] numberWithInt:self->_timeScale];
  [v3 setObject:v24 forKey:@"timeScale"];

  v25 = PBRepeatedInt64NSArray();
  [v3 setObject:v25 forKey:@"timeValue"];

  v26 = PBRepeatedFloatNSArray();
  [v3 setObject:v26 forKey:@"homographyParams"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteInt32Field();
  if (self->_timeValues.count)
  {
    PBDataWriterPlaceMark();
    if (self->_timeValues.count)
    {
      v5 = 0;
      do
      {
        PBDataWriterWriteInt64Field();
        ++v5;
      }

      while (v5 < self->_timeValues.count);
    }

    PBDataWriterRecallMark();
  }

  p_homographyParams = &self->_homographyParams;
  if (p_homographyParams->count)
  {
    PBDataWriterPlaceMark();
    if (p_homographyParams->count)
    {
      v7 = 0;
      do
      {
        PBDataWriterWriteFloatField();
        ++v7;
      }

      while (v7 < p_homographyParams->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[16] = LODWORD(self->_cropRectX);
  v4[17] = LODWORD(self->_cropRectY);
  v4[14] = LODWORD(self->_cropRectHeight);
  v4[15] = LODWORD(self->_cropRectWidth);
  v4[20] = LODWORD(self->_inputBoundsX);
  v4[21] = LODWORD(self->_inputBoundsY);
  v4[18] = LODWORD(self->_inputBoundsHeight);
  v4[19] = LODWORD(self->_inputBoundsWidth);
  v4[22] = LODWORD(self->_sourceSizeHeight);
  v4[23] = LODWORD(self->_sourceSizeWidth);
  v11 = v4;
  v4[24] = self->_timeScale;
  if ([(VCPProtoMovieStabilizationRecipe *)self timeValuesCount])
  {
    [v11 clearTimeValues];
    v5 = [(VCPProtoMovieStabilizationRecipe *)self timeValuesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v11 addTimeValue:{-[VCPProtoMovieStabilizationRecipe timeValueAtIndex:](self, "timeValueAtIndex:", i)}];
      }
    }
  }

  if ([(VCPProtoMovieStabilizationRecipe *)self homographyParamsCount])
  {
    [v11 clearHomographyParams];
    v8 = [(VCPProtoMovieStabilizationRecipe *)self homographyParamsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [(VCPProtoMovieStabilizationRecipe *)self homographyParamsAtIndex:j];
        [v11 addHomographyParams:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 64) = self->_cropRectX;
  *(v4 + 68) = self->_cropRectY;
  *(v4 + 56) = self->_cropRectHeight;
  *(v4 + 60) = self->_cropRectWidth;
  *(v4 + 80) = self->_inputBoundsX;
  *(v4 + 84) = self->_inputBoundsY;
  *(v4 + 72) = self->_inputBoundsHeight;
  *(v4 + 76) = self->_inputBoundsWidth;
  *(v4 + 88) = self->_sourceSizeHeight;
  *(v4 + 92) = self->_sourceSizeWidth;
  *(v4 + 96) = self->_timeScale;
  PBRepeatedInt64Copy();
  PBRepeatedFloatCopy();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_cropRectX == *(v4 + 16) && self->_cropRectY == *(v4 + 17) && self->_cropRectHeight == *(v4 + 14) && self->_cropRectWidth == *(v4 + 15) && self->_inputBoundsX == *(v4 + 20) && self->_inputBoundsY == *(v4 + 21) && self->_inputBoundsHeight == *(v4 + 18) && self->_inputBoundsWidth == *(v4 + 19) && self->_sourceSizeHeight == *(v4 + 22) && self->_sourceSizeWidth == *(v4 + 23) && self->_timeScale == *(v4 + 24) && PBRepeatedInt64IsEqual())
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  cropRectX = self->_cropRectX;
  v9 = -cropRectX;
  if (cropRectX >= 0.0)
  {
    v9 = self->_cropRectX;
  }

  *v3.i32 = floorf(v9 + 0.5);
  v10 = (v9 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = 2654435761u * *vbslq_s8(v11, v4, v3).i32;
  v13 = v12 + v10;
  v14 = fabsf(v10);
  if (v10 <= 0.0)
  {
    v13 = v12;
  }

  v15 = v12 - v14;
  if (v10 >= 0.0)
  {
    v15 = v13;
  }

  cropRectY = self->_cropRectY;
  if (cropRectY < 0.0)
  {
    cropRectY = -cropRectY;
  }

  *v4.i32 = floorf(cropRectY + 0.5);
  v17 = cropRectY - *v4.i32;
  *v6.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v18 = vbslq_s8(v11, v6, v4);
  v19 = v17 * 1.8447e19;
  v20 = 2654435761u * *v18.i32;
  v21 = v20 + v19;
  if (v19 <= 0.0)
  {
    v21 = 2654435761u * *v18.i32;
  }

  v22 = v20 - fabsf(v19);
  if (v19 >= 0.0)
  {
    v22 = v21;
  }

  cropRectHeight = self->_cropRectHeight;
  if (cropRectHeight < 0.0)
  {
    cropRectHeight = -cropRectHeight;
  }

  *v18.i32 = floorf(cropRectHeight + 0.5);
  v24 = (cropRectHeight - *v18.i32) * 1.8447e19;
  *v5.i32 = *v18.i32 - (truncf(*v18.i32 * 5.421e-20) * 1.8447e19);
  v27 = vbslq_s8(v11, v5, v18);
  v25 = 2654435761u * *v27.i32;
  v26 = v25 + v24;
  *v27.i32 = fabsf(v24);
  if (v24 <= 0.0)
  {
    v26 = v25;
  }

  v28 = v25 - *v27.i32;
  if (v24 >= 0.0)
  {
    v28 = v26;
  }

  cropRectWidth = self->_cropRectWidth;
  if (cropRectWidth < 0.0)
  {
    cropRectWidth = -cropRectWidth;
  }

  *v27.i32 = floorf(cropRectWidth + 0.5);
  v30 = cropRectWidth - *v27.i32;
  *v6.i32 = *v27.i32 - (truncf(*v27.i32 * 5.421e-20) * 1.8447e19);
  v31 = vbslq_s8(v11, v6, v27);
  v32 = v30 * 1.8447e19;
  v33 = 2654435761u * *v31.i32;
  v34 = v33 + v32;
  if (v32 <= 0.0)
  {
    v34 = 2654435761u * *v31.i32;
  }

  v35 = v33 - fabsf(v32);
  if (v32 >= 0.0)
  {
    v35 = v34;
  }

  inputBoundsX = self->_inputBoundsX;
  if (inputBoundsX < 0.0)
  {
    inputBoundsX = -inputBoundsX;
  }

  *v31.i32 = floorf(inputBoundsX + 0.5);
  v37 = (inputBoundsX - *v31.i32) * 1.8447e19;
  *v5.i32 = *v31.i32 - (truncf(*v31.i32 * 5.421e-20) * 1.8447e19);
  v40 = vbslq_s8(v11, v5, v31);
  v38 = 2654435761u * *v40.i32;
  v39 = v38 + v37;
  *v40.i32 = fabsf(v37);
  if (v37 <= 0.0)
  {
    v39 = v38;
  }

  v41 = v38 - *v40.i32;
  if (v37 >= 0.0)
  {
    v41 = v39;
  }

  inputBoundsY = self->_inputBoundsY;
  if (inputBoundsY < 0.0)
  {
    inputBoundsY = -inputBoundsY;
  }

  *v40.i32 = floorf(inputBoundsY + 0.5);
  v43 = inputBoundsY - *v40.i32;
  *v6.i32 = *v40.i32 - (truncf(*v40.i32 * 5.421e-20) * 1.8447e19);
  v44 = vbslq_s8(v11, v6, v40);
  v45 = v43 * 1.8447e19;
  v46 = 2654435761u * *v44.i32;
  v47 = v46 + v45;
  if (v45 <= 0.0)
  {
    v47 = 2654435761u * *v44.i32;
  }

  v48 = v46 - fabsf(v45);
  if (v45 >= 0.0)
  {
    v48 = v47;
  }

  inputBoundsHeight = self->_inputBoundsHeight;
  if (inputBoundsHeight < 0.0)
  {
    inputBoundsHeight = -inputBoundsHeight;
  }

  *v44.i32 = floorf(inputBoundsHeight + 0.5);
  v50 = (inputBoundsHeight - *v44.i32) * 1.8447e19;
  *v5.i32 = *v44.i32 - (truncf(*v44.i32 * 5.421e-20) * 1.8447e19);
  v53 = vbslq_s8(v11, v5, v44);
  v51 = 2654435761u * *v53.i32;
  v52 = v51 + v50;
  *v53.i32 = fabsf(v50);
  if (v50 <= 0.0)
  {
    v52 = v51;
  }

  v54 = v51 - *v53.i32;
  if (v50 >= 0.0)
  {
    v54 = v52;
  }

  inputBoundsWidth = self->_inputBoundsWidth;
  if (inputBoundsWidth < 0.0)
  {
    inputBoundsWidth = -inputBoundsWidth;
  }

  *v53.i32 = floorf(inputBoundsWidth + 0.5);
  v56 = inputBoundsWidth - *v53.i32;
  *v6.i32 = *v53.i32 - (truncf(*v53.i32 * 5.421e-20) * 1.8447e19);
  v57 = vbslq_s8(v11, v6, v53);
  v58 = v56 * 1.8447e19;
  v59 = 2654435761u * *v57.i32;
  v60 = v59 + v58;
  if (v58 <= 0.0)
  {
    v60 = 2654435761u * *v57.i32;
  }

  v61 = v59 - fabsf(v58);
  if (v58 >= 0.0)
  {
    v61 = v60;
  }

  sourceSizeHeight = self->_sourceSizeHeight;
  if (sourceSizeHeight < 0.0)
  {
    sourceSizeHeight = -sourceSizeHeight;
  }

  *v57.i32 = floorf(sourceSizeHeight + 0.5);
  v63 = (sourceSizeHeight - *v57.i32) * 1.8447e19;
  *v5.i32 = *v57.i32 - (truncf(*v57.i32 * 5.421e-20) * 1.8447e19);
  v64 = 2654435761u * *vbslq_s8(v11, v5, v57).i32;
  v65 = v64 + v63;
  v66 = fabsf(v63);
  if (v63 <= 0.0)
  {
    v65 = v64;
  }

  v67 = v64 - v66;
  if (v63 >= 0.0)
  {
    v67 = v65;
  }

  sourceSizeWidth = self->_sourceSizeWidth;
  if (sourceSizeWidth < 0.0)
  {
    sourceSizeWidth = -sourceSizeWidth;
  }

  *v2.i32 = floorf(sourceSizeWidth + 0.5);
  *v5.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v69 = *vbslq_s8(v11, v5, v2).i32;
  *v2.i32 = (sourceSizeWidth - *v2.i32) * 1.8447e19;
  v70 = 2654435761u * v69;
  v71 = v70 + *v2.i32;
  if (*v2.i32 <= 0.0)
  {
    v71 = v70;
  }

  v72 = v70 - fabsf(*v2.i32);
  if (*v2.i32 >= 0.0)
  {
    v72 = v71;
  }

  v73 = v22 ^ v15 ^ v28 ^ v35 ^ v41 ^ v48 ^ v54 ^ v61 ^ v67 ^ v72 ^ (2654435761 * self->_timeScale);
  v74 = PBRepeatedInt64Hash();
  return v73 ^ v74 ^ PBRepeatedFloatHash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_cropRectX = *(v4 + 16);
  self->_cropRectY = *(v4 + 17);
  self->_cropRectHeight = *(v4 + 14);
  self->_cropRectWidth = *(v4 + 15);
  self->_inputBoundsX = *(v4 + 20);
  self->_inputBoundsY = *(v4 + 21);
  self->_inputBoundsHeight = *(v4 + 18);
  self->_inputBoundsWidth = *(v4 + 19);
  self->_sourceSizeHeight = *(v4 + 22);
  self->_sourceSizeWidth = *(v4 + 23);
  self->_timeScale = *(v4 + 24);
  v11 = v4;
  v5 = [v4 timeValuesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[VCPProtoMovieStabilizationRecipe addTimeValue:](self, "addTimeValue:", [v11 timeValueAtIndex:i]);
    }
  }

  v8 = [v11 homographyParamsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      [v11 homographyParamsAtIndex:j];
      [(VCPProtoMovieStabilizationRecipe *)self addHomographyParams:?];
    }
  }
}

@end