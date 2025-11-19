@interface EARLanguageDetectorV2
@end

@implementation EARLanguageDetectorV2

void __51___EARLanguageDetectorV2_languageDetectorV2Result___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  [v6 floatValue];
  v8 = v7;
  v9 = [v12 hasPrefix:@"en"];
  v10 = v8;
  if (v9)
  {
    *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) + v10;
  }

  v11 = *(a1[5] + 8);
  if (*(v11 + 24) < v10)
  {
    *(v11 + 24) = v10;
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

void __43___EARLanguageDetectorV2__startComputeTask__block_invoke(uint64_t a1)
{
  v2 = (*(**(*(a1 + 48) + 16) + 8))(*(*(a1 + 48) + 16));
  v3 = quasar::PSRAudioProcessor::frameDurationMs(*(a1 + 48));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v24 = [WeakRetained lidDelegate];

  v32 = 0;
  v33 = 0;
  v34 = 0;
  kaldi::Vector<float>::Resize(&v32, v2, 0);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v30 = 0xFFFFFFFFLL;
  v31 = 0;
  do
  {
    v9 = v6;
    Segment = quasar::PSRAudioProcessor::NextSegment(*(a1 + 48));
    v22 = v31;
    if ((*(*(a1 + 32) + 1632) & (v31 - v9 > 0)) != 0)
    {
      v7 = v31 - v9 + v5;
      v5 = v7;
    }

    while (1)
    {
      kaldi::Matrix<float>::Matrix(buf, 1, v2, 0, 0);
      v10 = quasar::PSRAudioProcessor::compute(*(a1 + 48), buf);
      if (kaldi::MatrixBase<float>::NumRows(buf) >= 1)
      {
        break;
      }

LABEL_15:
      kaldi::Matrix<float>::~Matrix(buf);
      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ([*(*(a1 + 32) + 1624) useMaxpool])
    {
      if (!v5)
      {
        v26 = 0;
        v27 = 0;
        v25 = *buf;
        v11 = kaldi::MatrixBase<float>::NumCols(buf);
        LODWORD(v26) = v11;
        kaldi::Vector<float>::Resize(&v32, v11, 1);
        kaldi::VectorBase<float>::CopyFromVec(&v32, &v25);
      }

      maxpool(buf, &v32);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      kaldi::Vector<float>::Resize(&v25, v33, 1);
      kaldi::VectorBase<float>::CopyFromVec(&v25, &v32);
      v12 = [*(a1 + 32) earLIDScores:&v25];

      kaldi::Vector<float>::Destroy(&v25);
    }

    else
    {
      v13 = kaldi::MatrixBase<float>::NumRows(buf);
      v26 = 0;
      v27 = 0;
      v25 = *buf + 4 * v29 * (v13 - 1);
      LODWORD(v26) = kaldi::MatrixBase<float>::NumCols(buf);
      v12 = [*(a1 + 32) earLIDScores:&v25];
    }

    v8 = v12;
    v5 += kaldi::MatrixBase<float>::NumRows(buf) * v3;
    if (v10)
    {
      if ([*(a1 + 32) shouldReportResults:v5 - v7 reportingFrequency:{objc_msgSend(*(*(a1 + 32) + 1624), "reportingFrequency")}])
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = *(a1 + 32);
          v15 = [v14 languageDetectorV2Result:v12];
          [v24 languageDetector:v14 didProduceResult:v15 processedAudioDuration:v5 / 1000.0];
        }

        v7 = v5;
      }

      goto LABEL_15;
    }

    kaldi::Matrix<float>::~Matrix(buf);
LABEL_18:
    v6 = v22;
  }

  while (Segment);
  if (v7 < v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = *(a1 + 32);
    v17 = [v16 languageDetectorV2Result:v8];
    [v24 languageDetector:v16 didProduceResult:v17 processedAudioDuration:v5 / 1000.0];
  }

  v18 = objc_opt_respondsToSelector();
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = objc_alloc_init(_EARLanguageDetectorV2LoggingInfo);
    [v24 languageDetector:v19 didCompleteProcessingWithLoggingInfo:v20];
  }

  v21 = EARLogger::QuasarOSLogger(v18);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_INFO, "ComputeTask done", buf, 2u);
  }

  kaldi::Vector<float>::Destroy(&v32);
}

@end