@interface CAMAnalyticsVisionSession
- (CAMAnalyticsVisionSession)initWithTextDetectionEnabled:(BOOL)enabled MRCDetectionEnabled:(BOOL)detectionEnabled documentScanningEnabled:(BOOL)scanningEnabled;
- (id)_analyticsValueForQRType:(int64_t)type;
- (id)_analyticsValueForQRTypes:(id)types;
- (unint64_t)totalMRCInteractions;
- (void)_countMRCTypeForAction:(id)action;
- (void)countButtonPressForDocumentScanning;
- (void)countButtonPressForMRC:(id)c action:(id)action;
- (void)countDocumentScanningCanceledScans;
- (void)countDocumentScanningCompletedScans;
- (void)countObservedDocumentScanning;
- (void)countObservedSignficantMRCs:(id)cs;
- (void)countObservedSignficantTextRegionCount:(unint64_t)count;
- (void)countPillPressForMRC:(id)c action:(id)action;
- (void)countTextButtonPress;
- (void)publish;
@end

@implementation CAMAnalyticsVisionSession

- (CAMAnalyticsVisionSession)initWithTextDetectionEnabled:(BOOL)enabled MRCDetectionEnabled:(BOOL)detectionEnabled documentScanningEnabled:(BOOL)scanningEnabled
{
  v11.receiver = self;
  v11.super_class = CAMAnalyticsVisionSession;
  v8 = [(CAMAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->__textDetectionEnabled = enabled;
    v8->__MRCDetectionEnabled = detectionEnabled;
    v8->__documentScanningEnabled = scanningEnabled;
    v8->__startTime = CFAbsoluteTimeGetCurrent();
  }

  return v9;
}

- (void)countTextButtonPress
{
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1A3640000, v2, v3, "%{public}@ called when text detection is disabled", v4, v5, v6, v7, v8);
}

- (void)countButtonPressForMRC:(id)c action:(id)action
{
  cCopy = c;
  actionCopy = action;
  if ([(CAMAnalyticsVisionSession *)self _isMRCDetectionEnabled])
  {
    mrcType = [cCopy mrcType];
    if (mrcType == 1)
    {
      [(CAMAnalyticsVisionSession *)self _setAppClipButtonPressCount:[(CAMAnalyticsVisionSession *)self _appClipButtonPressCount]+ 1];
    }

    else if (!mrcType)
    {
      [(CAMAnalyticsVisionSession *)self _setQRButtonPressCount:[(CAMAnalyticsVisionSession *)self _qrButtonPressCount]+ 1];
      [(CAMAnalyticsVisionSession *)self _countMRCTypeForAction:actionCopy];
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

- (void)countPillPressForMRC:(id)c action:(id)action
{
  cCopy = c;
  actionCopy = action;
  if ([(CAMAnalyticsVisionSession *)self _isMRCDetectionEnabled])
  {
    mrcType = [cCopy mrcType];
    if (mrcType == 1)
    {
      [(CAMAnalyticsVisionSession *)self _setAppClipPillPressCount:[(CAMAnalyticsVisionSession *)self _appClipPillPressCount]+ 1];
    }

    else if (!mrcType)
    {
      [(CAMAnalyticsVisionSession *)self _setQRPillPressCount:[(CAMAnalyticsVisionSession *)self _qrPillPressCount]+ 1];
      [(CAMAnalyticsVisionSession *)self _countMRCTypeForAction:actionCopy];
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

- (void)countObservedSignficantTextRegionCount:(unint64_t)count
{
  _isTextDetectionEnabled = [(CAMAnalyticsVisionSession *)self _isTextDetectionEnabled];
  if (!count || _isTextDetectionEnabled)
  {
    _maxTextRegionCount = [(CAMAnalyticsVisionSession *)self _maxTextRegionCount];
    if (_maxTextRegionCount <= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = _maxTextRegionCount;
    }

    [(CAMAnalyticsVisionSession *)self _setMaxTextRegionCount:countCopy];
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

- (void)countObservedSignficantMRCs:(id)cs
{
  v24 = *MEMORY[0x1E69E9840];
  csCopy = cs;
  if (-[CAMAnalyticsVisionSession _isMRCDetectionEnabled](self, "_isMRCDetectionEnabled") || ![csCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = csCopy;
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

          mrcType = [*(*(&v19 + 1) + 8 * i) mrcType];
          if (mrcType == 1)
          {
            ++v10;
          }

          else if (!mrcType)
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

    _maxQRCodeCount = [(CAMAnalyticsVisionSession *)self _maxQRCodeCount];
    if (v11 <= _maxQRCodeCount)
    {
      v16 = _maxQRCodeCount;
    }

    else
    {
      v16 = v11;
    }

    [(CAMAnalyticsVisionSession *)self _setMaxQRCodeCount:v16, v19];
    _maxAppClipCodeCount = [(CAMAnalyticsVisionSession *)self _maxAppClipCodeCount];
    if (v10 <= _maxAppClipCodeCount)
    {
      v18 = _maxAppClipCodeCount;
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
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsVisionSession *)self _startTime];
  v6 = Current - v5;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [_eventMap setObject:v7 forKeyedSubscript:@"duration"];

  v8 = [objc_opt_class() durationRangeStringForDuration:v6];
  [_eventMap setObject:v8 forKeyedSubscript:@"durationRange"];

  if ([(CAMAnalyticsVisionSession *)self _isTextDetectionEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _textButtonPressCount](self, "_textButtonPressCount"))}];
    [_eventMap setObject:v9 forKeyedSubscript:@"textButtonPressCount"];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _maxTextRegionCount](self, "_maxTextRegionCount"))}];
    [_eventMap setObject:v10 forKeyedSubscript:@"maxTextRegionCount"];

    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _textButtonPressCount](self, "_textButtonPressCount") != 0}];
    [_eventMap setObject:v11 forKeyedSubscript:@"didInteractWithText"];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _maxTextRegionCount](self, "_maxTextRegionCount") != 0}];
    [_eventMap setObject:v12 forKeyedSubscript:@"didObserveText"];
  }

  if ([(CAMAnalyticsVisionSession *)self _isMRCDetectionEnabled])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _qrButtonPressCount](self, "_qrButtonPressCount"))}];
    [_eventMap setObject:v13 forKeyedSubscript:@"qrButtonPressCount"];

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _appClipButtonPressCount](self, "_appClipButtonPressCount"))}];
    [_eventMap setObject:v14 forKeyedSubscript:@"appClipButtonPressCount"];

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _qrPillPressCount](self, "_qrPillPressCount"))}];
    [_eventMap setObject:v15 forKeyedSubscript:@"qrPillPressCount"];

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _appClipPillPressCount](self, "_appClipPillPressCount"))}];
    [_eventMap setObject:v16 forKeyedSubscript:@"appClipPillPressCount"];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _maxQRCodeCount](self, "_maxQRCodeCount"))}];
    [_eventMap setObject:v17 forKeyedSubscript:@"maxQRCodeCount"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _maxAppClipCodeCount](self, "_maxAppClipCodeCount"))}];
    [_eventMap setObject:v18 forKeyedSubscript:@"maxAppClipCodeCount"];

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
    [_eventMap setObject:v21 forKeyedSubscript:@"didInteractWithQR"];

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
    [_eventMap setObject:v24 forKeyedSubscript:@"didInteractWithAppClip"];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _maxQRCodeCount](self, "_maxQRCodeCount") != 0}];
    [_eventMap setObject:v25 forKeyedSubscript:@"didObserveQR"];

    v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _maxAppClipCodeCount](self, "_maxAppClipCodeCount") != 0}];
    [_eventMap setObject:v26 forKeyedSubscript:@"didObserveAppClip"];

    _pressedQRTypes = [(CAMAnalyticsVisionSession *)self _pressedQRTypes];
    v28 = [(CAMAnalyticsVisionSession *)self _analyticsValueForQRTypes:_pressedQRTypes];
    [_eventMap setObject:v28 forKeyedSubscript:@"pressedQRTypes"];
  }

  if ([(CAMAnalyticsVisionSession *)self _isDocumentScanningEnabled])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMAnalyticsVisionSession _countObservedDocuments](self, "_countObservedDocuments") != 0}];
    [_eventMap setObject:v29 forKeyedSubscript:@"didObserveDocuments"];

    v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _countDocumentScanningPressCount](self, "_countDocumentScanningPressCount"))}];
    [_eventMap setObject:v30 forKeyedSubscript:@"documentScanningPressCount"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _countDocumentScanningCompletedScans](self, "_countDocumentScanningCompletedScans"))}];
    [_eventMap setObject:v31 forKeyedSubscript:@"documentScanningCompletedScans"];

    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMAnalyticsVisionSession _bucketedCount:](self, "_bucketedCount:", -[CAMAnalyticsVisionSession _countDocumentScanningCanceledScans](self, "_countDocumentScanningCanceledScans"))}];
    [_eventMap setObject:v32 forKeyedSubscript:@"documentScaningCanceledScans"];
  }

  v33.receiver = self;
  v33.super_class = CAMAnalyticsVisionSession;
  [(CAMAnalyticsEvent *)&v33 publish];
}

- (void)_countMRCTypeForAction:(id)action
{
  actionCopy = action;
  _pressedQRTypes = [(CAMAnalyticsVisionSession *)self _pressedQRTypes];
  if (!_pressedQRTypes)
  {
    _pressedQRTypes = [MEMORY[0x1E695DFA8] set];
    [(CAMAnalyticsVisionSession *)self _setPressedMRCTypes:_pressedQRTypes];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(actionCopy, "payloadDataType")}];
  [_pressedQRTypes addObject:v5];
}

- (id)_analyticsValueForQRTypes:(id)types
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (types)
  {
    v4 = MEMORY[0x1E696AEB0];
    typesCopy = types;
    v6 = [v4 sortDescriptorWithKey:@"integerValue" ascending:1];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v8 = [typesCopy sortedArrayUsingDescriptors:v7];

    string = [MEMORY[0x1E696AD60] string];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CAMAnalyticsVisionSession__analyticsValueForQRTypes___block_invoke;
    v15[3] = &unk_1E76F8178;
    v15[4] = self;
    v10 = string;
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

- (id)_analyticsValueForQRType:(int64_t)type
{
  if (type >= 0x12)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", type];
  }

  else
  {
    type = off_1E76F8198[type];
  }

  return type;
}

- (unint64_t)totalMRCInteractions
{
  _qrPillPressCount = [(CAMAnalyticsVisionSession *)self _qrPillPressCount];
  v4 = [(CAMAnalyticsVisionSession *)self _appClipPillPressCount]+ _qrPillPressCount;
  _qrButtonPressCount = [(CAMAnalyticsVisionSession *)self _qrButtonPressCount];
  return v4 + _qrButtonPressCount + [(CAMAnalyticsVisionSession *)self _appClipPillPressCount];
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