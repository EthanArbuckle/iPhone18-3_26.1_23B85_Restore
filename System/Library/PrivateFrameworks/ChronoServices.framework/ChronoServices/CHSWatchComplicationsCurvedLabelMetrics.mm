@interface CHSWatchComplicationsCurvedLabelMetrics
- (BOOL)isEqual:(id)equal;
- (CGPoint)circleCenter;
- (CGSize)accessoryMaxSize;
- (CHSWatchComplicationsCurvedLabelMetrics)init;
- (CHSWatchComplicationsCurvedLabelMetrics)initWithBSXPCCoder:(id)coder;
- (CHSWatchComplicationsCurvedLabelMetrics)initWithCoder:(id)coder;
- (NSString)description;
- (id)_filenameSafeStableHash;
- (id)_filenameSafeStableHashFromData:(id)data;
- (id)_initWithInstance:(id)instance;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_filenameSafeStableHash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWatchComplicationsCurvedLabelMetrics

- (CHSWatchComplicationsCurvedLabelMetrics)init
{
  v8.receiver = self;
  v8.super_class = CHSWatchComplicationsCurvedLabelMetrics;
  v2 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = *MEMORY[0x1E695EFF8];
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    v4 = *(v2 + 6);
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;

    v3[56] = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    v5 = [MEMORY[0x1E698E650] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v6 = *(v3 + 10);
    *(v3 + 10) = v5;

    *(v3 + 11) = 0;
    *(v3 + 12) = 0;
    *(v3 + 104) = *MEMORY[0x1E695F060];
  }

  return v3;
}

- (id)_initWithInstance:(id)instance
{
  instanceCopy = instance;
  v12.receiver = self;
  v12.super_class = CHSWatchComplicationsCurvedLabelMetrics;
  v5 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = *(instanceCopy + 8);
    *(v5 + 3) = *(instanceCopy + 3);
    *(v5 + 4) = *(instanceCopy + 4);
    *(v5 + 5) = *(instanceCopy + 5);
    v7 = [*(instanceCopy + 6) copy];
    v8 = *(v6 + 6);
    *(v6 + 6) = v7;

    v6[56] = instanceCopy[56];
    *(v6 + 8) = *(instanceCopy + 8);
    *(v6 + 9) = *(instanceCopy + 9);
    v9 = [*(instanceCopy + 10) copy];
    v10 = *(v6 + 10);
    *(v6 + 10) = v9;

    *(v6 + 11) = *(instanceCopy + 11);
    *(v6 + 12) = *(instanceCopy + 12);
    *(v6 + 104) = *(instanceCopy + 104);
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __54__CHSWatchComplicationsCurvedLabelMetrics_description__block_invoke;
  v11 = &unk_1E7453000;
  v4 = v3;
  v12 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:&v8];
  build = [v4 build];

  return build;
}

id __54__CHSWatchComplicationsCurvedLabelMetrics_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendPoint:@"circleCenter" withName:{*(*(a1 + 40) + 8), *(*(a1 + 40) + 16)}];
  v3 = [*(a1 + 32) appendFloat:@"circleRadius" withName:2 decimalPrecision:*(*(a1 + 40) + 24)];
  v4 = [*(a1 + 32) appendFloat:@"maximumAngularWidth" withName:2 decimalPrecision:*(*(a1 + 40) + 32)];
  v5 = [*(a1 + 32) appendFloat:@"centerAngle" withName:2 decimalPrecision:*(*(a1 + 40) + 40)];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"bezierPath" skipIfNil:1];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 56) withName:@"interior"];
  v8 = [*(a1 + 32) appendFloat:@"tracking" withName:2 decimalPrecision:*(*(a1 + 40) + 64)];
  v9 = [*(a1 + 32) appendFloat:@"fontSize" withName:2 decimalPrecision:*(*(a1 + 40) + 72)];
  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"textColor"];
  v11 = [*(a1 + 32) appendFloat:@"accessoryPlacement" withName:2 decimalPrecision:*(*(a1 + 40) + 88)];
  v12 = [*(a1 + 32) appendFloat:@"accessoryPadding" withName:2 decimalPrecision:*(*(a1 + 40) + 96)];
  return [*(a1 + 32) appendSize:@"accessoryMaxSize" withName:{*(*(a1 + 40) + 104), *(*(a1 + 40) + 112)}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke;
  v71[3] = &unk_1E74532C8;
  v10 = v9;
  v72 = v10;
  v11 = [v5 appendCGPoint:v71 counterpart:{self->_circleCenter.x, self->_circleCenter.y}];
  circleRadius = self->_circleRadius;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_2;
  v69[3] = &unk_1E74530A0;
  v13 = v10;
  v70 = v13;
  v14 = [v5 appendCGFloat:v69 counterpart:circleRadius];
  maximumAngularWidth = self->_maximumAngularWidth;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_3;
  v67[3] = &unk_1E74530A0;
  v16 = v13;
  v68 = v16;
  v17 = [v5 appendCGFloat:v67 counterpart:maximumAngularWidth];
  centerAngle = self->_centerAngle;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_4;
  v65[3] = &unk_1E74530A0;
  v19 = v16;
  v66 = v19;
  v20 = [v5 appendCGFloat:v65 counterpart:centerAngle];
  bezierPath = self->_bezierPath;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_5;
  v63[3] = &unk_1E7453078;
  v22 = v19;
  v64 = v22;
  v23 = [v5 appendObject:bezierPath counterpart:v63];
  interior = self->_interior;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_6;
  v61[3] = &unk_1E7452FB0;
  v25 = v22;
  v62 = v25;
  v26 = [v5 appendBool:interior counterpart:v61];
  tracking = self->_tracking;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_7;
  v59[3] = &unk_1E74530A0;
  v28 = v25;
  v60 = v28;
  v29 = [v5 appendCGFloat:v59 counterpart:tracking];
  fontSize = self->_fontSize;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_8;
  v57[3] = &unk_1E74530A0;
  v31 = v28;
  v58 = v31;
  v32 = [v5 appendCGFloat:v57 counterpart:fontSize];
  textColor = self->_textColor;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_9;
  v55[3] = &unk_1E74532F0;
  v34 = v31;
  v56 = v34;
  v35 = [v5 appendObject:textColor counterpart:v55];
  accessoryPlacement = self->_accessoryPlacement;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_10;
  v53[3] = &unk_1E7453318;
  v37 = v34;
  v54 = v37;
  v38 = [v5 appendUnsignedInteger:accessoryPlacement counterpart:v53];
  accessoryPadding = self->_accessoryPadding;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_11;
  v51[3] = &unk_1E74530A0;
  v40 = v37;
  v52 = v40;
  v41 = [v5 appendCGFloat:v51 counterpart:accessoryPadding];
  v46 = MEMORY[0x1E69E9820];
  v47 = 3221225472;
  v48 = __51__CHSWatchComplicationsCurvedLabelMetrics_isEqual___block_invoke_12;
  v49 = &unk_1E7453340;
  v42 = v40;
  v50 = v42;
  v43 = [v5 appendCGSize:&v46 counterpart:{self->_accessoryMaxSize.width, self->_accessoryMaxSize.height}];
  v44 = [v5 isEqual];

  return v44;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendCGPoint:{self->_circleCenter.x, self->_circleCenter.y}];
  v5 = [builder appendCGFloat:self->_circleRadius];
  v6 = [builder appendCGFloat:self->_maximumAngularWidth];
  v7 = [builder appendCGFloat:self->_centerAngle];
  v8 = [builder appendObject:self->_bezierPath];
  v9 = [builder appendBool:self->_interior];
  v10 = [builder appendCGFloat:self->_tracking];
  v11 = [builder appendCGFloat:self->_fontSize];
  v12 = [builder appendObject:self->_textColor];
  v13 = [builder appendUnsignedInteger:self->_accessoryPlacement];
  v14 = [builder appendCGFloat:self->_accessoryPadding];
  v15 = [builder appendCGSize:{self->_accessoryMaxSize.width, self->_accessoryMaxSize.height}];
  v16 = [builder hash];

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWatchComplicationsCurvedLabelMetrics alloc];

  return [(CHSWatchComplicationsCurvedLabelMetrics *)v4 _initWithInstance:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  x = self->_circleCenter.x;
  y = self->_circleCenter.y;
  v6 = BSValueWithPoint();
  [coderCopy encodeObject:v6 forKey:@"circleCenter"];

  [coderCopy encodeDouble:@"circleRadius" forKey:self->_circleRadius];
  [coderCopy encodeDouble:@"maximumAngularWidth" forKey:self->_maximumAngularWidth];
  [coderCopy encodeDouble:@"centerAngle" forKey:self->_centerAngle];
  [coderCopy encodeObject:self->_bezierPath forKey:@"bezierPath"];
  [coderCopy encodeBool:self->_interior forKey:@"interior"];
  [coderCopy encodeDouble:@"tracking" forKey:self->_tracking];
  [coderCopy encodeDouble:@"fontSize" forKey:self->_fontSize];
  [coderCopy encodeObject:self->_textColor forKey:@"textColor"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_accessoryPlacement];
  [coderCopy encodeObject:v7 forKey:@"accessoryPlacement"];

  [coderCopy encodeDouble:@"accessoryPadding" forKey:self->_accessoryPadding];
  width = self->_accessoryMaxSize.width;
  height = self->_accessoryMaxSize.height;
  v10 = BSValueWithSize();
  [coderCopy encodeObject:v10 forKey:@"accessoryMaxSize"];
}

- (CHSWatchComplicationsCurvedLabelMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CHSWatchComplicationsCurvedLabelMetrics;
  v5 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"circleCenter"];
    v5->_circleCenter.x = MEMORY[0x19A8C4BA0]();
    v5->_circleCenter.y = v7;

    [coderCopy decodeDoubleForKey:@"circleRadius"];
    v5->_circleRadius = v8;
    [coderCopy decodeDoubleForKey:@"maximumAngularWidth"];
    v5->_maximumAngularWidth = v9;
    [coderCopy decodeDoubleForKey:@"centerAngle"];
    v5->_centerAngle = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bezierPath"];
    bezierPath = v5->_bezierPath;
    v5->_bezierPath = v11;

    v5->_interior = [coderCopy decodeBoolForKey:@"interior"];
    [coderCopy decodeDoubleForKey:@"tracking"];
    v5->_tracking = v13;
    [coderCopy decodeDoubleForKey:@"fontSize"];
    v5->_fontSize = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryPlacement"];
    v5->_accessoryPlacement = [v17 unsignedIntegerValue];

    [coderCopy decodeDoubleForKey:@"accessoryPadding"];
    v5->_accessoryPadding = v18;
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryMaxSize"];
    v5->_accessoryMaxSize.width = MEMORY[0x19A8C4C10]();
    v5->_accessoryMaxSize.height = v20;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeCGPoint:@"circleCenter" forKey:{self->_circleCenter.x, self->_circleCenter.y}];
  [coderCopy encodeDouble:@"circleRadius" forKey:self->_circleRadius];
  [coderCopy encodeDouble:@"maximumAngularWidth" forKey:self->_maximumAngularWidth];
  [coderCopy encodeDouble:@"centerAngle" forKey:self->_centerAngle];
  [coderCopy encodeObject:self->_bezierPath forKey:@"bezierPath"];
  [coderCopy encodeBool:self->_interior forKey:@"interior"];
  [coderCopy encodeDouble:@"tracking" forKey:self->_tracking];
  [coderCopy encodeDouble:@"fontSize" forKey:self->_fontSize];
  [coderCopy encodeObject:self->_textColor forKey:@"textColor"];
  [coderCopy encodeUInt64:self->_accessoryPlacement forKey:@"accessoryPlacement"];
  [coderCopy encodeDouble:@"accessoryPadding" forKey:self->_accessoryPadding];
  [coderCopy encodeCGSize:@"accessoryMaxSize" forKey:{self->_accessoryMaxSize.width, self->_accessoryMaxSize.height}];
}

- (CHSWatchComplicationsCurvedLabelMetrics)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CHSWatchComplicationsCurvedLabelMetrics;
  v5 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v21 init];
  if (v5)
  {
    [coderCopy decodeCGPointForKey:@"circleCenter"];
    v5->_circleCenter.x = v6;
    v5->_circleCenter.y = v7;
    [coderCopy decodeDoubleForKey:@"circleRadius"];
    v5->_circleRadius = v8;
    [coderCopy decodeDoubleForKey:@"maximumAngularWidth"];
    v5->_maximumAngularWidth = v9;
    [coderCopy decodeDoubleForKey:@"centerAngle"];
    v5->_centerAngle = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bezierPath"];
    bezierPath = v5->_bezierPath;
    v5->_bezierPath = v11;

    v5->_interior = [coderCopy decodeBoolForKey:@"interior"];
    [coderCopy decodeDoubleForKey:@"tracking"];
    v5->_tracking = v13;
    [coderCopy decodeDoubleForKey:@"fontSize"];
    v5->_fontSize = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v15;

    v5->_accessoryPlacement = [coderCopy decodeUInt64ForKey:@"accessoryPlacement"];
    [coderCopy decodeDoubleForKey:@"accessoryPadding"];
    v5->_accessoryPadding = v17;
    [coderCopy decodeCGSizeForKey:@"accessoryMaxSize"];
    v5->_accessoryMaxSize.width = v18;
    v5->_accessoryMaxSize.height = v19;
  }

  return v5;
}

- (id)_filenameSafeStableHash
{
  v8 = 0;
  v3 = [MEMORY[0x1E69C7360] encodeObject:self error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CHSWatchComplicationsCurvedLabelMetrics *)v4 _filenameSafeStableHash];
    }
  }

  v6 = [(CHSWatchComplicationsCurvedLabelMetrics *)self _filenameSafeStableHashFromData:v3];

  return v6;
}

- (id)_filenameSafeStableHashFromData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_autoreleasePoolPush();
    if (CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), md))
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
      v6 = [v5 base64EncodedStringWithOptions:0];
      v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:@"#"];

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (CGPoint)circleCenter
{
  x = self->_circleCenter.x;
  y = self->_circleCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)accessoryMaxSize
{
  width = self->_accessoryMaxSize.width;
  height = self->_accessoryMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_filenameSafeStableHash
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_195EB2000, a2, OS_LOG_TYPE_ERROR, "Error encoding object: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end