@interface GTTelemetry
@end

@implementation GTTelemetry

void __GTTelemetry_trackMTL4Commit_block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = telemetry;
  std::mutex::lock((telemetry + 136));
  v5 = *(telemetry + 248);
  v4 = *(telemetry + 256);
  if (v5 != v4)
  {
    while (*v5 != *(a1 + 32))
    {
      v5 += 528;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *(v5 + 8);
    [v17 GPUEndTime];
    v8 = v7;
    [v17 GPUStartTime];
    *&v9 = (v8 - v9) * 1000.0;
    CHistoryRecord::Add(v5 + 24, v6, *&v9);
    ++*(v5 + 8);
  }

LABEL_6:
  std::mutex::unlock((v3 + 136));
  v10 = telemetry;
  std::mutex::lock((telemetry + 72));
  v12 = *(telemetry + 224);
  v11 = *(telemetry + 232);
  if (v12 != v11)
  {
    while (*v12 != *(a1 + 40))
    {
      v12 += 528;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    v13 = *(v12 + 8);
    [v17 GPUEndTime];
    v15 = v14;
    [v17 GPUStartTime];
    *&v16 = (v15 - v16) * 1000.0;
    CHistoryRecord::Add(v12 + 24, v13, *&v16);
    ++*(v12 + 8);
  }

LABEL_11:
  std::mutex::unlock((v10 + 72));
}

void __GTTelemetry_trackPresent_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 presentedTime];

  GTTelemetry_trackStreamRefPresent(v2, v3);
}

void __GTTelemetry_trackCommit_block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = telemetry;
  std::mutex::lock((telemetry + 136));
  v5 = *(telemetry + 248);
  v4 = *(telemetry + 256);
  if (v5 != v4)
  {
    while (*v5 != *(a1 + 32))
    {
      v5 += 528;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *(v5 + 8);
    [v17 GPUEndTime];
    v8 = v7;
    [v17 GPUStartTime];
    *&v9 = (v8 - v9) * 1000.0;
    CHistoryRecord::Add(v5 + 24, v6, *&v9);
    ++*(v5 + 8);
  }

LABEL_6:
  std::mutex::unlock((v3 + 136));
  v10 = telemetry;
  std::mutex::lock((telemetry + 72));
  v12 = *(telemetry + 224);
  v11 = *(telemetry + 232);
  if (v12 != v11)
  {
    while (*v12 != *(a1 + 40))
    {
      v12 += 528;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    v13 = *(v12 + 8);
    [v17 GPUEndTime];
    v15 = v14;
    [v17 GPUStartTime];
    *&v16 = (v15 - v16) * 1000.0;
    CHistoryRecord::Add(v12 + 24, v13, *&v16);
    ++*(v12 + 8);
  }

LABEL_11:
  std::mutex::unlock((v10 + 72));
}

@end