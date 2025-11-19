@interface GEORegisterPListStateCaptureAtFrequency
@end

@implementation GEORegisterPListStateCaptureAtFrequency

char *___GEORegisterPListStateCaptureAtFrequency_block_invoke(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
LABEL_50:
    v19 = 0;
    goto LABEL_51;
  }

  v6 = GEOGetStateCaptureLog();
  v7 = os_signpost_id_generate(v6);

  v8 = GEOGetStateCaptureLog();
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AB6F6000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CapturePlistState", &unk_1AB6FA747, buf, 2u);
  }

  if (*(WeakRetained + 6) <= 0.0)
  {
    goto LABEL_14;
  }

  v11 = *(a2 + 16);
  if (v11 == 1)
  {
    if (WeakRetained[10] <= 1)
    {
      v30 = GEOGetStateCaptureLog();
      v31 = v30;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        v32 = WeakRetained[10];
        if (v32 > 2)
        {
          v33 = "INVALID";
        }

        else
        {
          v33 = off_1E795E818[v32];
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_signpost_emit_with_name_impl(&dword_1AB6F6000, v31, OS_SIGNPOST_INTERVAL_END, v7, "CapturePlistState", "Skipped: ERROR & %s < OFTEN", buf, 0xCu);
      }

      goto LABEL_50;
    }

    v12 = 45.0;
  }

  else if (v11 == 2)
  {
    v12 = dbl_1AB6FA210[WeakRetained[10] > 1];
  }

  else
  {
    v12 = 0.0;
    if (v11 == 3)
    {
      v12 = 0.5;
    }
  }

  v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 1000000000.0 - *(WeakRetained + 6);
  if (v13 < v12)
  {
    v25 = GEOGetStateCaptureLog();
    v26 = v25;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v27 = *(a2 + 16) - 1;
      if (v27 > 2)
      {
        v28 = "INVALID";
      }

      else
      {
        v28 = off_1E795E800[v27];
      }

      v34 = WeakRetained[10];
      if (v34 > 2)
      {
        v35 = "INVALID";
      }

      else
      {
        v35 = off_1E795E818[v34];
      }

      *buf = 136315906;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = v35;
      *&buf[22] = 2048;
      v47 = v13;
      LOWORD(v48) = 2048;
      *(&v48 + 2) = v12;
      _os_signpost_emit_with_name_impl(&dword_1AB6F6000, v26, OS_SIGNPOST_INTERVAL_END, v7, "CapturePlistState", "Skipped: %s & %s delta(%f) < minDelta(%f)", buf, 0x2Au);
    }

    goto LABEL_50;
  }

LABEL_14:
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v14 = *(WeakRetained + 2);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __47__geo_state_capture_handle__capturePlistState___block_invoke;
  v47 = COERCE_DOUBLE(&unk_1E795E7B8);
  *&v48 = WeakRetained;
  *(&v48 + 1) = &v38;
  v49 = a2;
  dispatch_async_and_wait(v14, buf);
  v15 = v39[5];
  if (v15)
  {
    v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v15 format:200 options:0 error:0];
    v17 = [v16 length];
    if (v16 && (v18 = v17, v17 <= 0xFFFFFFFE))
    {
      v19 = malloc_type_malloc(v17 + 200, 0x1000040BEF03554uLL);
      *v19 = 1;
      *(v19 + 136) = 0u;
      *(v19 + 152) = 0u;
      *(v19 + 168) = 0u;
      *(v19 + 184) = 0u;
      v20 = [*(WeakRetained + 3) bytes];
      if ([*(WeakRetained + 3) length] > 0x3F)
      {
        v21 = 64;
      }

      else
      {
        v21 = [*(WeakRetained + 3) length];
      }

      memcpy(v19 + 136, v20, v21);
      *(v19 + 1) = v18;
      [v16 getBytes:v19 + 200 length:v18];
      *(WeakRetained + 6) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 1000000000.0;
      v29 = GEOGetStateCaptureLog();
      v24 = v29;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *v44 = 134217984;
        v45 = v18;
        _os_signpost_emit_with_name_impl(&dword_1AB6F6000, v24, OS_SIGNPOST_INTERVAL_END, v7, "CapturePlistState", "Captured %zu bytes", v44, 0xCu);
      }
    }

    else
    {
      v23 = GEOGetStateCaptureLog();
      v24 = v23;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *v44 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AB6F6000, v24, OS_SIGNPOST_INTERVAL_END, v7, "CapturePlistState", "Failed: serialization", v44, 2u);
      }

      v19 = 0;
    }
  }

  else
  {
    v22 = GEOGetStateCaptureLog();
    v16 = v22;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v44 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AB6F6000, v16, OS_SIGNPOST_INTERVAL_END, v7, "CapturePlistState", "Failed: nil plist", v44, 2u);
    }

    v19 = 0;
  }

  _Block_object_dispose(&v38, 8);
LABEL_51:

  objc_autoreleasePoolPop(v4);
  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

@end