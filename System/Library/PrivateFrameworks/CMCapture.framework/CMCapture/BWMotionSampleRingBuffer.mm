@interface BWMotionSampleRingBuffer
- (double)duration;
- (uint64_t)addMotionDataToRingBuffer:(int)a3 withSampleCount:;
- (void)dealloc;
- (void)initWithMaxDuration:(void *)a1;
@end

@implementation BWMotionSampleRingBuffer

- (double)duration
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(v2 + 16);
      if ((*(v2 + 20) + *(v2 + 24) - v3) % *(v2 + 24) >= 1)
      {
        return *([(BWRingBuffer *)*(a1 + 8) lastElement]+ 8) - *(*(v2 + 8) + *(v2 + 32) * v3 + 8);
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMotionSampleRingBuffer;
  [(BWMotionSampleRingBuffer *)&v3 dealloc];
}

- (void)initWithMaxDuration:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWMotionSampleRingBuffer;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3;
  if (v3)
  {
    *(v3 + 2) = a2;
    *(v3 + 6) = (a2 * 66.6666641);
    v6 = [[BWRingBuffer alloc] initWithLength:48 dataTypeSize:?];
    v4[1] = v6;
    if (!v6)
    {

      return 0;
    }
  }

  return v4;
}

- (uint64_t)addMotionDataToRingBuffer:(int)a3 withSampleCount:
{
  if (result)
  {
    v5 = result;
    mach_absolute_time();
    v6 = FigHostTimeToNanoseconds();
    if (a3 >= 1)
    {
      v14 = 0;
      v15 = (v6 / 1000) / 1000000.0;
      do
      {
        v16 = *(v5 + 8);
        if (!v16 || !((*(v16 + 20) + *(v16 + 24) - *(v16 + 16)) % *(v16 + 24)) || (v17 = a2[1], v6 = [(BWRingBuffer *)*(v5 + 8) lastElement], v17 > *(v6 + 8)) && vabdd_f64(v15, v17) < *(v5 + 16))
        {
          v6 = [(BWRingBuffer *)v16 appendElement:a2];
        }

        a2 += 18;
        v14 += 3;
      }

      while (v14 < a3);
    }

    v18 = *(v5 + 8);
    result = OUTLINED_FUNCTION_1_3(v6, v7, v8, v9, v10, v11, v12, v13, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, 0);
    if (result)
    {
      v19 = result;
      v20 = 0;
      v21 = MEMORY[0];
      while (2)
      {
        v22 = 0;
        v23 = v20;
        v20 += v19;
        do
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(8 * v22);
          result = [(BWRingBuffer *)*(v5 + 8) lastElement];
          if (*(result + 8) - *(v24 + 8) <= *(v5 + 16))
          {
            v20 = v23;
            goto LABEL_21;
          }

          ++v23;
          ++v22;
        }

        while (v19 != v22);
        result = OUTLINED_FUNCTION_1_3(result, v25, v26, v27, v28, v29, v30, v31, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
        v19 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_21:
    v32 = *(v5 + 8);
    if (v32)
    {
      v33 = v32[6];
      v34 = v32[4];
      v35 = (v32[5] + v33 - v34) % v33;
      v36 = v35 - *(v5 + 24);
      if (v20 <= v36)
      {
        v20 = v35 - *(v5 + 24);
        if (!v36)
        {
          return result;
        }
      }

      else if (!v20)
      {
        return result;
      }

      if (v35 >= v20)
      {
        v35 = v20;
      }

      v32[4] = (v35 + v34) % v33;
    }
  }

  return result;
}

@end