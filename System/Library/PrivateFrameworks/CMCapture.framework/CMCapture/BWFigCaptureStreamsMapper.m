@interface BWFigCaptureStreamsMapper
- (uint64_t)bwFigCaptureStreamForFigCaptureStream:(uint64_t)a1;
- (uint64_t)figCaptureStreamForBWFigCaptureStream:(uint64_t)a1;
- (void)bwFigCaptureStreamsForFigCaptureStreams:(uint64_t)a1;
- (void)dealloc;
- (void)figCaptureStreamsForBWFigCaptureStreams:(uint64_t)a1;
- (void)initWithBWFigCaptureStreams:(void *)a3 figCaptureStreams:;
@end

@implementation BWFigCaptureStreamsMapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigCaptureStreamsMapper;
  [(BWFigCaptureStreamsMapper *)&v3 dealloc];
}

- (void)initWithBWFigCaptureStreams:(void *)a3 figCaptureStreams:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWFigCaptureStreamsMapper;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = [a2 copy];
    v5[2] = [a3 copy];
  }

  return v5;
}

- (uint64_t)bwFigCaptureStreamForFigCaptureStream:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 16) indexOfObject:a2];
  OUTLINED_FUNCTION_79();
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = *(a1 + 8);

  return [v7 objectAtIndexedSubscript:v6];
}

- (uint64_t)figCaptureStreamForBWFigCaptureStream:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 8) indexOfObject:a2];
  OUTLINED_FUNCTION_79();
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = *(a1 + 16);

  return [v7 objectAtIndexedSubscript:v6];
}

- (void)bwFigCaptureStreamsForFigCaptureStreams:(uint64_t)a1
{
  v45 = 0;
  if (a1)
  {
    if (a2)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      if (OUTLINED_FUNCTION_1_1(v7, v8, v9, v10, v11, v12, v13, v14, v39, v41, v43, v7, v46, v48, *v49, *&v49[8], *&v49[16], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67))
      {
        OUTLINED_FUNCTION_20_13();
        *&v15 = 136315394;
        *v47 = v15;
        do
        {
          v16 = 0;
          do
          {
            if (*v69 != v3)
            {
              objc_enumerationMutation(a2);
            }

            v17 = *(*(&v68 + 1) + 8 * v16);
            [*(a1 + 16) indexOfObject:{v17, v40, v42}];
            OUTLINED_FUNCTION_79();
            if (v19 || (v20 = [*(a1 + 8) objectAtIndexedSubscript:v18]) == 0)
            {
              v29 = OUTLINED_FUNCTION_19_18();
              if (OUTLINED_FUNCTION_25_14(v29, v30, v31, v32, v33, v34, v35, v36, v40, v42, v44, v45, v47[0], v47[1], *v49, *&v49[8], *&v49[16], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, SBYTE2(v66), BYTE3(v66), SHIDWORD(v66)))
              {
                v37 = v4;
              }

              else
              {
                v37 = v4 & 0xFFFFFFFE;
              }

              if (v37)
              {
                *v49 = v47[0];
                *&v49[4] = "[BWFigCaptureStreamsMapper bwFigCaptureStreamsForFigCaptureStreams:]";
                *&v49[12] = 2112;
                *&v49[14] = v17;
                LODWORD(v42) = 22;
                v40 = v49;
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
                v4 = HIDWORD(v66);
              }

              OUTLINED_FUNCTION_1_4();
              v21 = fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v21 = [v45 addObject:v20];
            }

            ++v16;
          }

          while (v2 != v16);
          v2 = OUTLINED_FUNCTION_1_1(v21, v22, v23, v24, v25, v26, v27, v28, v40, v42, v44, v45, v47[0], v47[1], *v49, *&v49[8], *&v49[16], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        }

        while (v2);
      }
    }
  }

  return v45;
}

- (void)figCaptureStreamsForBWFigCaptureStreams:(uint64_t)a1
{
  v45 = 0;
  if (a1)
  {
    if (a2)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      if (OUTLINED_FUNCTION_1_1(v7, v8, v9, v10, v11, v12, v13, v14, v39, v41, v43, v7, v46, v48, *v49, *&v49[8], *&v49[16], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67))
      {
        OUTLINED_FUNCTION_20_13();
        *&v15 = 136315394;
        *v47 = v15;
        do
        {
          v16 = 0;
          do
          {
            if (*v69 != v3)
            {
              objc_enumerationMutation(a2);
            }

            v17 = *(*(&v68 + 1) + 8 * v16);
            [*(a1 + 8) indexOfObject:{v17, v40, v42}];
            OUTLINED_FUNCTION_79();
            if (v19 || (v20 = [*(a1 + 16) objectAtIndexedSubscript:v18]) == 0)
            {
              v29 = OUTLINED_FUNCTION_19_18();
              if (OUTLINED_FUNCTION_25_14(v29, v30, v31, v32, v33, v34, v35, v36, v40, v42, v44, v45, v47[0], v47[1], *v49, *&v49[8], *&v49[16], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, SBYTE2(v66), BYTE3(v66), SHIDWORD(v66)))
              {
                v37 = v4;
              }

              else
              {
                v37 = v4 & 0xFFFFFFFE;
              }

              if (v37)
              {
                *v49 = v47[0];
                *&v49[4] = "[BWFigCaptureStreamsMapper figCaptureStreamsForBWFigCaptureStreams:]";
                *&v49[12] = 2112;
                *&v49[14] = v17;
                LODWORD(v42) = 22;
                v40 = v49;
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
                v4 = HIDWORD(v66);
              }

              OUTLINED_FUNCTION_1_4();
              v21 = fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v21 = [v45 addObject:v20];
            }

            ++v16;
          }

          while (v2 != v16);
          v2 = OUTLINED_FUNCTION_1_1(v21, v22, v23, v24, v25, v26, v27, v28, v40, v42, v44, v45, v47[0], v47[1], *v49, *&v49[8], *&v49[16], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        }

        while (v2);
      }
    }
  }

  return v45;
}

@end