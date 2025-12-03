@interface BWIrisDiscontinuity
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)targetFrameDuration;
- (BOOL)containsVideoBufferTime:(id *)time;
- (BOOL)shouldKeepBufferWithTime:(id *)time forceKeepingBuffer:(BOOL)buffer nextAdjustedTimeInOut:(id *)out discontinuityFrameAttributesOut:(id *)attributesOut;
- (BWIrisDiscontinuity)initWithTime:(id *)time duration:(id *)duration targetFrameDuration:(id *)frameDuration onlyRetime:(BOOL)retime generateIFrames:(BOOL)frames timeSkews:(id)skews;
- (uint64_t)_offsetIndexFromDiscontinuityForTime:(uint64_t)time;
- (void)dealloc;
- (void)resetWithNewTimeSkews:(id)skews;
@end

@implementation BWIrisDiscontinuity

- (BWIrisDiscontinuity)initWithTime:(id *)time duration:(id *)duration targetFrameDuration:(id *)frameDuration onlyRetime:(BOOL)retime generateIFrames:(BOOL)frames timeSkews:(id)skews
{
  v23.receiver = self;
  v23.super_class = BWIrisDiscontinuity;
  v14 = [(BWIrisDiscontinuity *)&v23 init];
  if ((duration->var2 & 1) != 0 && skews && (frameDuration->var2 & 1) != 0 && [skews count])
  {
    if (v14)
    {
      v16 = *&time->var0;
      *(v14 + 3) = time->var3;
      *(v14 + 8) = v16;
      v17 = *&duration->var0;
      *(v14 + 6) = duration->var3;
      *(v14 + 2) = v17;
      v18 = *&frameDuration->var0;
      *(v14 + 108) = frameDuration->var3;
      *(v14 + 92) = v18;
      v14[116] = retime;
      v14[117] = 0;
      v14[118] = frames;
      *(v14 + 7) = skews;
      if (!retime)
      {
        v21 = *frameDuration;
        CMTimeMultiply(&time2, &v21, 3);
        v21 = *duration;
        if (CMTimeCompare(&v21, &time2) >= 1)
        {
          CMTimeMake(&time2, 1, 29);
          v21 = *frameDuration;
          if (CMTimeCompare(&v21, &time2) < 0)
          {
            v19 = &unk_1F22498E8;
            *(v14 + 8) = v19;
            *(v14 + 22) = 1;
            if (!v19)
            {
              return v14;
            }

            goto LABEL_22;
          }

          CMTimeMake(&time2, 1, 23);
          v21 = *frameDuration;
          if (CMTimeCompare(&v21, &time2) < 0)
          {
            v19 = &unk_1F2249900;
            *(v14 + 8) = v19;
            v20 = 2;
          }

          else
          {
            CMTimeMake(&time2, 1, 19);
            v21 = *frameDuration;
            if (CMTimeCompare(&v21, &time2) < 0)
            {
              v19 = &unk_1F2249918;
              *(v14 + 8) = v19;
              v20 = 3;
            }

            else
            {
              CMTimeMake(&time2, 1, 16);
              v21 = *frameDuration;
              if (CMTimeCompare(&v21, &time2) < 0)
              {
                v19 = &unk_1F2249930;
                *(v14 + 8) = v19;
                v20 = 4;
              }

              else
              {
                v21 = *frameDuration;
                CMTimeMultiply(&time2, &v21, 6);
                v21 = *duration;
                if (CMTimeCompare(&v21, &time2) < 1)
                {
                  v19 = &unk_1F2249960;
                  *(v14 + 8) = v19;
                  *(v14 + 22) = 6;
                  if (!v19)
                  {
                    return v14;
                  }

                  goto LABEL_22;
                }

                v19 = &unk_1F2249948;
                *(v14 + 8) = v19;
                v20 = 5;
              }
            }
          }

          *(v14 + 22) = v20;
          if (v19)
          {
LABEL_22:
            *(v14 + 9) = [objc_msgSend(v19 "firstObject")] - 1;
            *(v14 + 10) = [objc_msgSend(*(v14 + 8) "lastObject")] + 2;
          }
        }
      }
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

- (void)resetWithNewTimeSkews:(id)skews
{
  skewsCopy = skews;

  self->_timeSkews = skewsCopy;
  BYTE5(self->_targetFrameDuration.epoch) = 0;
  HIBYTE(self->_targetFrameDuration.epoch) = 0;
}

- (BOOL)containsVideoBufferTime:(id *)time
{
  if (BYTE4(self->_targetFrameDuration.epoch) == 1)
  {
    memset(&v10, 0, sizeof(v10));
    lhs = self->_discontinuityTime;
    duration = self->_duration;
    CMTimeAdd(&v10, &lhs, &duration);
    lhs = *time;
    duration = self->_discontinuityTime;
    if ((CMTimeCompare(&lhs, &duration) & 0x80000000) == 0)
    {
      lhs = *time;
      duration = v10;
      v5 = CMTimeCompare(&lhs, &duration) >> 31;
      return v5 & 1;
    }

LABEL_6:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v10 = *time;
  v6 = [(BWIrisDiscontinuity *)self _offsetIndexFromDiscontinuityForTime:?];
  if (v6 < self->_recipeMinDisplacement || v6 > self->_recipeMaxDisplacement)
  {
    goto LABEL_6;
  }

  if (v6 < 1)
  {
    LOBYTE(v5) = 1;
    BYTE5(self->_targetFrameDuration.epoch) = 1;
  }

  else
  {
    LOBYTE(v5) = BYTE5(self->_targetFrameDuration.epoch);
  }

  return v5 & 1;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)targetFrameDuration
{
  *&retstr->var0 = *(&self[3].var3 + 4);
  retstr->var3 = *&self[4].var2;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIrisDiscontinuity;
  [(BWIrisDiscontinuity *)&v3 dealloc];
}

- (uint64_t)_offsetIndexFromDiscontinuityForTime:(uint64_t)time
{
  if (!time)
  {
    return 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(time + 56);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v21;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v11 = 0;
      v15 = v7 + v6;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (v12)
        {
          [v12 original];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = *(time + 8);
        if (!CMTimeCompare(&time1, &time2))
        {
          v9 = v7;
        }

        if (v12)
        {
          [v12 original];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = *a2;
        if (!CMTimeCompare(&time1, &time2))
        {
          v10 = v7;
        }

        if (v9 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v10 - v9;
        }

        ++v7;
        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
      v7 = v15;
    }

    while (v6);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)shouldKeepBufferWithTime:(id *)time forceKeepingBuffer:(BOOL)buffer nextAdjustedTimeInOut:(id *)out discontinuityFrameAttributesOut:(id *)attributesOut
{
  bufferCopy = buffer;
  v97 = *time;
  v11 = [(BWIrisDiscontinuity *)self _offsetIndexFromDiscontinuityForTime:?];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  if ((self->_targetFrameDuration.epoch & 0x100000000) != 0 || bufferCopy)
  {
    if (out->var2)
    {
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_0_109(v37, v58, v67, v72, v77, v82, v87, v92, v97.value);
    }

    else
    {
      OUTLINED_FUNCTION_0_109(time->var3, v58, v67, v72, time->var0, *&time->var1, v87, v92, v97.value);
    }

    OUTLINED_FUNCTION_3_96();
    OUTLINED_FUNCTION_14_39(v38, v39, v40, v41, v42, v43, v44, v45, v61, v65, v70, v75, v80, v85, v90, v95, v46);
    out->var3 = v97.epoch;
    goto LABEL_16;
  }

  v15 = v11;
  v16 = -[NSArray containsObject:](self->_recipe, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:v11]);
  v17 = v16;
  if (BYTE6(self->_targetFrameDuration.epoch) == 1)
  {
    v17 = HIBYTE(self->_targetFrameDuration.epoch) & v16;
  }

  if (!v15)
  {
    OUTLINED_FUNCTION_11_48();
    v19 = OUTLINED_FUNCTION_0_109(v18, v58, v67, v72, v77, v82, v87, v92, v97.value);
    OUTLINED_FUNCTION_14_39(v19, v20, v21, v22, v23, v24, v25, v26, v59, v63, v68, v73, v78, v83, v88, v93, v27);
    out->var3 = v97.epoch;
  }

  if (out->var2)
  {
    if ((v17 & -[NSArray containsObject:](self->_recipe, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:v15 - 1]) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_48();
      v48 = OUTLINED_FUNCTION_0_109(v47, v58, v67, v72, v77, v82, v87, v92, v97.value);
      OUTLINED_FUNCTION_14_39(v48, v49, v50, v51, v52, v53, v54, v55, v62, v66, v71, v76, v81, v86, v91, v96, v56);
      out->var3 = v97.epoch;
    }

    if (v17)
    {
      OUTLINED_FUNCTION_3_96();
      result = 0;
      goto LABEL_17;
    }
  }

  else if (v17)
  {
    OUTLINED_FUNCTION_0_109(time->var3, v58, v67, v72, time->var0, *&time->var1, v87, v92, v97.value);
    OUTLINED_FUNCTION_3_96();
    OUTLINED_FUNCTION_14_39(0, v28, v29, v30, v31, v32, v33, v34, v60, v64, v69, v74, v79, v84, v89, v94, v35);
    out->var3 = v97.epoch;
LABEL_17:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  if ((self->_targetFrameDuration.epoch & 0x100000000) != 0 || BYTE6(self->_targetFrameDuration.epoch) != 1 || v15 < self->_recipeMinDisplacement || (recipeMaxDisplacement = self->_recipeMaxDisplacement, v15 > recipeMaxDisplacement))
  {
LABEL_2:
    OUTLINED_FUNCTION_3_96();
LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  if ((self->_targetFrameDuration.epoch & 0x100000000000000) != 0)
  {
    v12 = v15 == recipeMaxDisplacement;
  }

  else
  {
    v12 = 1;
    HIBYTE(self->_targetFrameDuration.epoch) = 1;
  }

  recipeIdentifier = self->_recipeIdentifier;
  v13 = 1;
  result = 1;
LABEL_18:
  attributesOut->var0 = v13;
  attributesOut->var1 = v12;
  *(&attributesOut->var1 + 1) = 0;
  *(&attributesOut->var1 + 5) = 0;
  attributesOut->var2 = v15;
  attributesOut->var3 = recipeIdentifier;
  *(&attributesOut->var3 + 1) = 0;
  return result;
}

@end