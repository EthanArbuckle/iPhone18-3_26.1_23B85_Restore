@interface BWMotionDataPreserver
- (BOOL)prependPreservedMotionDataToSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (BWMotionDataPreserver)initWithName:(id)a3;
- (uint64_t)_preserveMotionDataForSampleBuffer:(int)a3 willBeDropped:;
- (void)dealloc;
- (void)reset;
@end

@implementation BWMotionDataPreserver

- (BWMotionDataPreserver)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWMotionDataPreserver;
  v4 = [(BWMotionDataPreserver *)&v6 init];
  if (v4)
  {
    v4->_name = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMotionDataPreserver;
  [(BWMotionDataPreserver *)&v3 dealloc];
}

- (BOOL)prependPreservedMotionDataToSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (!self->_preservedISPMotionData)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  [(BWMotionDataPreserver *)self prependPreservedMotionDataToSampleBuffer:a3, &self->_preservedISPMotionData, &v6];
  return v6;
}

- (void)reset
{
  self->_preservedISPMotionData = 0;

  self->_preservedISPHallData = 0;
  self->_currentISPHallPortType = 0;
}

- (uint64_t)_preserveMotionDataForSampleBuffer:(int)a3 willBeDropped:
{
  if (result)
  {
    v4 = result;
    v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v6 = [v5 objectForKeyedSubscript:*off_1E798B3D0];
    v7 = [v5 objectForKeyedSubscript:*off_1E798B540];
    if (v6)
    {
      v8 = [v6 bytes];
      v9 = [v6 length];
      v10 = *(v8 + 4);
      if (v9 != 40 * v10 + 8 || v10 >= 111)
      {
        goto LABEL_44;
      }

      v11 = *(v4 + 16);
      if (v11)
      {
        if (a3)
        {
          v12 = *(v4 + 24);
          v13 = [v11 length];
          v11 = *(v4 + 16);
          if (v12 < v13)
          {
            [*(v4 + 16) replaceBytesInRange:*(v4 + 24) withBytes:objc_msgSend(v11 length:{"length") - *(v4 + 24), 0, 0}];
            v14 = *(v4 + 32);
            *([*(v4 + 16) mutableBytes] + 4) = v14;
            v11 = *(v4 + 16);
          }
        }

        v15 = *([v11 bytes] + 4);
        v16 = *(v8 + 4);
        v17 = v16 + v15;
        v18 = 110 - v15;
        if (v17 <= 110)
        {
          v19 = *(v8 + 4);
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          v20 = v16 - v18;
          if (v17 <= 110)
          {
            v20 = 0;
          }

          [*(v4 + 16) appendBytes:v8 + 40 * v20 + 8 length:40 * v19];
          v21 = [*(v4 + 16) mutableBytes];
          *(v21 + 4) += v19;
        }
      }

      else
      {
        v22 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:v6];
        *(v4 + 16) = v22;
        *(v4 + 24) = [v22 length];
        *(v4 + 32) = *([*(v4 + 16) mutableBytes] + 4);
      }
    }

    v23 = [v5 objectForKeyedSubscript:*off_1E798B3B8];
    if (!v23)
    {
      return 1;
    }

    v24 = v23;
    v25 = [v23 bytes];
    if (*v25)
    {
      v26 = 24;
    }

    else
    {
      v26 = 16;
    }

    v27 = [v24 length];
    v28 = v25[1];
    if (v27 == v26 * v28 + 8 && v28 < 511)
    {
      if (!*(v4 + 40))
      {
        v45 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:v24];
        *(v4 + 40) = v45;
        *(v4 + 48) = [v45 length];
        *(v4 + 56) = *([*(v4 + 40) mutableBytes] + 4);
        v46 = *(v4 + 64);
        *(v4 + 64) = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        return 1;
      }

      if ([v7 isEqualToString:*(v4 + 64)])
      {
        if (a3)
        {
          v29 = *(v4 + 48);
          if (v29 < [*(v4 + 40) length])
          {
            [*(v4 + 40) replaceBytesInRange:*(v4 + 48) withBytes:objc_msgSend(*(v4 + 40) length:{"length") - *(v4 + 48), 0, 0}];
            v30 = *(v4 + 56);
            *([*(v4 + 40) mutableBytes] + 4) = v30;
          }
        }

        v31 = *([*(v4 + 40) bytes] + 4);
        v32 = v25[1];
        v33 = v32 + v31;
        v34 = 510 - v31;
        v35 = v32 - (510 - v31);
        if (v33 > 510)
        {
          v36 = v34;
        }

        else
        {
          v35 = 0;
          v36 = v25[1];
        }

        if (v36)
        {
          v39 = *v25;
          v38 = v25 + 2;
          v37 = v39;
          v40 = &v38[4 * v35];
          v41 = &v38[6 * v35];
          v42 = v41;
          if (v39 != 1)
          {
            v42 = v41;
          }

          if (v37)
          {
            v43 = v42;
          }

          else
          {
            v43 = v40;
          }

          [*(v4 + 40) appendBytes:v43 length:v26 * v36];
          v44 = [*(v4 + 40) mutableBytes];
          *(v44 + 4) += v36;
        }

        return 1;
      }

LABEL_45:
      [v4 reset];
      return 0;
    }

LABEL_44:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_5();
    FigDebugAssert3();
    goto LABEL_45;
  }

  return result;
}

- (void)prependPreservedMotionDataToSampleBuffer:(id *)a3 .cold.1(uint64_t a1, const void *a2, id *a3, char *a4)
{
  v8 = [(BWMotionDataPreserver *)a1 _preserveMotionDataForSampleBuffer:a2 willBeDropped:0];
  v9 = 0;
  if (v8)
  {
    v10 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    [v10 setObject:*a3 forKeyedSubscript:*off_1E798B3D0];

    *a3 = 0;
    v11 = *(a1 + 40);
    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:*off_1E798B3B8];

      *(a1 + 40) = 0;
      *(a1 + 64) = 0;
    }

    v9 = 1;
  }

  *a4 = v9;
}

@end