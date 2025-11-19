@interface CAMAnalyticsVisionSession
- (CAMAnalyticsVisionSession)initWithTextDetectionEnabled:(BOOL)a3 MRCDetectionEnabled:(BOOL)a4 documentScanningEnabled:(BOOL)a5;
- (id)_analyticsValueForQRType:(int64_t)a3;
- (id)_analyticsValueForQRTypes:(id)a3;
- (unint64_t)totalMRCInteractions;
- (void)_countMRCTypeForAction:(id)a3;
- (void)countButtonPressForDocumentScanning;
- (void)countButtonPressForMRC:(id)a3 action:(id)a4;
- (void)countDocumentScanningCanceledScans;
- (void)countDocumentScanningCompletedScans;
- (void)countObservedDocumentScanning;
- (void)countObservedSignficantMRCs:(id)a3;
- (void)countObservedSignficantTextRegionCount:(unint64_t)a3;
- (void)countPillPressForMRC:(id)a3 action:(id)a4;
- (void)countTextButtonPress;
- (void)publish;
@end

@implementation CAMAnalyticsVisionSession

- (CAMAnalyticsVisionSession)initWithTextDetectionEnabled:(BOOL)a3 MRCDetectionEnabled:(BOOL)a4 documentScanningEnabled:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = CAMAnalyticsVisionSession;
  v8 = [(CAMAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->__textDetectionEnabled = a3;
    v8->__MRCDetectionEnabled = a4;
    v8->__documentScanningEnabled = a5;
    v8->__startTime = CFAbsoluteTimeGetCurrent();
  }

  return v9;
}

- (void)countTextButtonPress
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1A3640000, v2, v3, "%{public}@ called when text detection is disabled", v4, v5, v6, v7, v8);
}

- (void)countButtonPressForMRC:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CAMAnalyticsVisionSession *)self _isMRCDetectionEnabled])
  {
    v9 = [v7 mrcType];
    if (v9 == 1)
    {
      [(CAMAnalyticsVisionSession *)self _setAppClipButtonPressCount:[(CAMAnalyticsVisionSession *)self _appClipButtonPressCount]+ 1];
    }

    else if (!v9)
    {
      [(CAMAnalyticsVisionSession *)self _setQRButtonPressCount:[(CAMAnalyticsVisionSession *)self _qrButtonPressCount]+ 1];
      [(CAMAnalyticsVisionSession *)self _countMRCTypeForAction:v8];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CAMAnalyticsVisionSession countButtonPressForMRC:a2 action:?];
    }
  }
}

- (void)countPillPressForMRC:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CAMAnalyticsVisionSession *)self _isMRCDetectionEnabled])
  {
    v9 = [v7 mrcType];
    if (v9 == 1)
    {
      [(CAMAnalyticsVisionSession *)self _setAppClipPillPressCount:[(CAMAnalyticsVisionSession *)self _appClipPillPressCount]+ 1];
    }

    else if (!v9)
    {
      [(CAMAnalyticsVisionSession *)self _setQRPillPressCount:[(CAMAnalyticsVisionSession *)self _qrPillPressCount]+ 1];
      [(CAMAnalyticsVisionSession *)self _countMRCTypeForAction:v8];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CAMAnalyticsVisionSession countButtonPressForMRC:a2 action:?];
    }
  }
}

- (void)countObservedSignficantTextRegionCount:(unint64_t)a3
{
  v6 = [(CAMAnalyticsVisionSession *)self _isTextDetectionEnabled];
  if (!a3 || v6)
  {
    v8 = [(CAMAnalyticsVisionSession *)self _maxTextRegionCount];
    if (v8 <= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v8;
    }

    [(CAMAnalyticsVisionSession *)self _setMaxTextRegionCount:v9];
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAMAnalyticsVisionSession *)a2 countTextButtonPress];
    }
  }
}

- (void)countObservedSignficantMRCs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (-[CAMAnalyticsVisionSession _isMRCDetectionEnabled](self, "_isMRCDetectionEnabled") || ![v5 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) mrcType];
          if (v14 == 1)
          {
            ++v10;
          }

          else if (!v14)
          {
            ++v11;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v15 = [(CAMAnalyticsVisionSession *)self _maxQRCodeCount];
    if (v11 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    [(CAMAnalyticsVisionSession *)self _setMaxQRCodeCount:v16, v19];
    v17 = [(CAMAnalyticsVisionSession *)self _maxAppClipCodeCount];
    if (v10 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v10;
    }

    [(CAMAnalyticsVisionSession *)self _setMaxAppClipCodeCount:v18];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAMAnalyticsVisionSession countButtonPressForMRC:a2 action:?];
    }
  }
}

- (void)publish
{
  v3 = [(CAMAnalyticsEvent *)self _eventMap];
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsVisionSession *)self _startTime];
  v6 = Current - v5;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v3 setObject:v7 forKeyedSubscript:@"duration"];

  v8 = [objc_opt_class() durationRangeStringForDuration:v6];
  [v3 setObject:v8 forKeyedSubscript:@"durationRange"];

  if ([(CAMAnalyticsVisionSession *)self _isTextDetectionEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _textButtonPressCount](self, "_textButtonPressCount"))}];
    [v3 setObject:v9 forKeyedSubscript:@"textButtonPressCount"];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _maxTextRegionCount](self, "_maxTextRegionCount"))}];
    [v3 setObject:v10 forKeyedSubscript:@"maxTextRegionCount"];

    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _textButtonPressCount](self, "_textButtonPressCount") != 0}];
    [v3 setObject:v11 forKeyedSubscript:@"didInteractWithText"];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _maxTextRegionCount](self, "_maxTextRegionCount") != 0}];
    [v3 setObject:v12 forKeyedSubscript:@"didObserveText"];
  }

  if ([(CAMAnalyticsVisionSession *)self _isMRCDetectionEnabled])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _qrButtonPressCount](self, "_qrButtonPressCount"))}];
    [v3 setObject:v13 forKeyedSubscript:@"qrButtonPressCount"];

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _appClipButtonPressCount](self, "_appClipButtonPressCount"))}];
    [v3 setObject:v14 forKeyedSubscript:@"appClipButtonPressCount"];

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _qrPillPressCount](self, "_qrPillPressCount"))}];
    [v3 setObject:v15 forKeyedSubscript:@"qrPillPressCount"];

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _appClipPillPressCount](self, "_appClipPillPressCount"))}];
    [v3 setObject:v16 forKeyedSubscript:@"appClipPillPressCount"];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _maxQRCodeCount](self, "_maxQRCodeCount"))}];
    [v3 setObject:v17 forKeyedSubscript:@"maxQRCodeCount"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _maxAppClipCodeCount](self, "_maxAppClipCodeCount"))}];
    [v3 setObject:v18 forKeyedSubscript:@"maxAppClipCodeCount"];

    v19 = MEMORY[0x1E696AD98];
    if ([(CAMAnalyticsVisionSession *)self _qrButtonPressCount])
    {
      v20 = 1;
    }

    else
    {
      v20 = [(CAMAnalyticsVisionSession *)self _qrPillPressCount]!= 0;
    }

    v21 = [v19 numberWithInt:v20];
    [v3 setObject:v21 forKeyedSubscript:@"didInteractWithQR"];

    v22 = MEMORY[0x1E696AD98];
    if ([(CAMAnalyticsVisionSession *)self _appClipButtonPressCount])
    {
      v23 = 1;
    }

    else
    {
      v23 = [(CAMAnalyticsVisionSession *)self _appClipPillPressCount]!= 0;
    }

    v24 = [v22 numberWithInt:v23];
    [v3 setObject:v24 forKeyedSubscript:@"didInteractWithAppClip"];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _maxQRCodeCount](self, "_maxQRCodeCount") != 0}];
    [v3 setObject:v25 forKeyedSubscript:@"didObserveQR"];

    v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _maxAppClipCodeCount](self, "_maxAppClipCodeCount") != 0}];
    [v3 setObject:v26 forKeyedSubscript:@"didObserveAppClip"];

    v27 = [(CAMAnalyticsVisionSession *)self _pressedQRTypes];
    v28 = [(CAMAnalyticsVisionSession *)self _analyticsValueForQRTypes:v27];
    [v3 setObject:v28 forKeyedSubscript:@"pressedQRTypes"];
  }

  if ([(CAMAnalyticsVisionSession *)self _isDocumentScanningEnabled])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _countObservedDocuments](self, "_countObservedDocuments") != 0}];
    [v3 setObject:v29 forKeyedSubscript:@"didObserveDocuments"];

    v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _countDocumentScanningPressCount](self, "_countDocumentScanningPressCount"))}];
    [v3 setObject:v30 forKeyedSubscript:@"documentScanningPressCount"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _countDocumentScanningCompletedScans](self, "_countDocumentScanningCompletedScans"))}];
    [v3 setObject:v31 forKeyedSubscript:@"documentScanningCompletedScans"];

    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _countDocumentScanningCanceledScans](self, "_countDocumentScanningCanceledScans"))}];
    [v3 setObject:v32 forKeyedSubscript:@"documentScaningCanceledScans"];
  }

  v33.receiver = self;
  v33.super_class = CAMAnalyticsVisionSession;
  [(CAMAnalyticsEvent *)&v33 publish];
}

- (void)_countMRCTypeForAction:(id)a3
{
  v6 = a3;
  v4 = [(CAMAnalyticsVisionSession *)self _pressedQRTypes];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    [(CAMAnalyticsVisionSession *)self _setPressedMRCTypes:v4];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "payloadDataType")}];
  [v4 addObject:v5];
}

- (id)_analyticsValueForQRTypes:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E696AEB0];
    v5 = a3;
    v6 = [v4 sortDescriptorWithKey:@"integerValue" ascending:1];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v8 = [v5 sortedArrayUsingDescriptors:v7];

    v9 = [MEMORY[0x1E696AD60] string];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CAMAnalyticsVisionSession__analyticsValueForQRTypes___block_invoke;
    v15[3] = &unk_1E76F8178;
    v15[4] = self;
    v10 = v9;
    v16 = v10;
    v17 = v8;
    v11 = v8;
    [v11 enumerateObjectsUsingBlock:v15];
    v12 = v17;
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __55__CAMAnalyticsVisionSession__analyticsValueForQRTypes___block_invoke(id *a1, void *a2, unint64_t a3)
{
  v5 = [a1[4] _analyticsValueForQRType:{objc_msgSend(a2, "integerValue")}];
  [a1[5] appendString:?];
  if ([a1[6] count] - 1 > a3)
  {
    [a1[5] appendString:{@", "}];
  }
}

- (id)_analyticsValueForQRType:(int64_t)a3
{
  if (a3 >= 0x12)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a3];
  }

  else
  {
    v4 = off_1E76F8198[a3];
  }

  return v4;
}

- (unint64_t)totalMRCInteractions
{
  v3 = [(CAMAnalyticsVisionSession *)self _qrPillPressCount];
  v4 = [(CAMAnalyticsVisionSession *)self _appClipPillPressCount]+ v3;
  v5 = [(CAMAnalyticsVisionSession *)self _qrButtonPressCount];
  return v4 + v5 + [(CAMAnalyticsVisionSession *)self _appClipPillPressCount];
}

- (void)countObservedDocumentScanning
{
  v3 = [(CAMAnalyticsVisionSession *)self _countObservedDocuments]+ 1;

  [(CAMAnalyticsVisionSession *)self _setCountObservedDocuments:v3];
}

- (void)countButtonPressForDocumentScanning
{
  v3 = [(CAMAnalyticsVisionSession *)self _countDocumentScanningPressCount]+ 1;

  [(CAMAnalyticsVisionSession *)self _setCountDocumentScanningPressCount:v3];
}

- (void)countDocumentScanningCompletedScans
{
  v3 = [(CAMAnalyticsVisionSession *)self _countDocumentScanningCompletedScans]+ 1;

  [(CAMAnalyticsVisionSession *)self _setCountDocumentScanningCompletedScans:v3];
}

- (void)countDocumentScanningCanceledScans
{
  v3 = [(CAMAnalyticsVisionSession *)self _countDocumentScanningCanceledScans]+ 1;

  [(CAMAnalyticsVisionSession *)self _setCountDocumentScanningCanceleddScans:v3];
}

- (void)countButtonPressForMRC:(const char *)a1 action:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1A3640000, v2, v3, "%{public}@ called when MRC detection is disabled", v4, v5, v6, v7, v8);
}

@end