@interface NSPConnectionInfo
+ (BOOL)shouldResolveForFallbackReason:(int64_t)a3;
+ (id)getFallbackReasonDescription:(int64_t)a3;
+ (int)fallbackReasonToErrno:(int64_t)a3;
- (NSPConnectionInfo)initWithCoder:(id)a3;
- (id)copyDictionary;
- (id)timingIntervalAtIndex:(unint64_t)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setFallbackReason:(int64_t)a3;
@end

@implementation NSPConnectionInfo

- (NSPConnectionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NSPConnectionInfo;
  v5 = [(NSPConnectionInfo *)&v27 init];
  if (v5)
  {
    v5->_pathType = [v4 decodeIntegerForKey:@"pathType"];
    v5->_fallbackReason = [v4 decodeIntegerForKey:@"fallbackReason"];
    v5->_fallbackReasonCategory = [v4 decodeIntegerForKey:@"fallbackCategory"];
    [v4 decodeDoubleForKey:@"fallbackDelay"];
    v5->_fallbackDelay = v6;
    v5->_edgeType = [v4 decodeIntegerForKey:@"edgeType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"edgeAddress"];
    edgeAddress = v5->_edgeAddress;
    v5->_edgeAddress = v7;

    v5->_isMultipath = [v4 decodeBoolForKey:@"isMultipath"];
    v5->_multipathSubflowCount = [v4 decodeIntegerForKey:@"multipathSubflowCountKey"];
    v5->_multipathConnectedSubflowCount = [v4 decodeIntegerForKey:@"multipathConnectedSubflowCountKey"];
    v5->_multipathPrimarySubflowInterfaceIndex = [v4 decodeIntegerForKey:@"multipathPrimarySubflowInterfaceIndex"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"multipathSubflowSwitchCounts"];
    multipathSubflowSwitchCounts = v5->_multipathSubflowSwitchCounts;
    v5->_multipathSubflowSwitchCounts = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"TCPInfo"];
    TCPInfo = v5->_TCPInfo;
    v5->_TCPInfo = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstTxByteTimeStamp"];
    firstTxByteTimeStamp = v5->_firstTxByteTimeStamp;
    v5->_firstTxByteTimeStamp = v21;

    [v4 decodeDoubleForKey:@"firstTxByteDelay"];
    v5->_firstTxByteDelay = v23;
    [v4 decodeDoubleForKey:@"connectionDelay"];
    v5->_connectionDelay = v24;
    v5->_TFOSucceeded = [v4 decodeBoolForKey:@"TFOSucceeded"];
    v5->_IPType = [v4 decodeIntegerForKey:@"IPType"];
    v5->_interfaceType = [v4 decodeIntegerForKey:@"interfaceType"];
    [v4 decodeDoubleForKey:@"timeIntervalSinceLastUsage"];
    v5->_timeIntervalSinceLastUsage = v25;
    v5->_timeToFirstByte = [v4 decodeIntegerForKey:@"timeToFirstByte"];
    v5->_tunnelConnectionError = [v4 decodeIntegerForKey:@"tunnelConnectionError"];
    v5->_isTFOProbeSucceeded = [v4 decodeBoolForKey:@"isTFOProbeSucceeded"];
    v5->_initialBytesLeftOver = [v4 decodeIntegerForKey:@"initialBytesLeftOver"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[NSPConnectionInfo pathType](self forKey:{"pathType"), @"pathType"}];
  [v8 encodeInteger:-[NSPConnectionInfo fallbackReason](self forKey:{"fallbackReason"), @"fallbackReason"}];
  [v8 encodeInteger:-[NSPConnectionInfo fallbackReasonCategory](self forKey:{"fallbackReasonCategory"), @"fallbackCategory"}];
  [(NSPConnectionInfo *)self fallbackDelay];
  [v8 encodeDouble:@"fallbackDelay" forKey:?];
  [v8 encodeInteger:-[NSPConnectionInfo edgeType](self forKey:{"edgeType"), @"edgeType"}];
  v4 = [(NSPConnectionInfo *)self edgeAddress];
  [v8 encodeObject:v4 forKey:@"edgeAddress"];

  [v8 encodeBool:-[NSPConnectionInfo isMultipath](self forKey:{"isMultipath"), @"isMultipath"}];
  [v8 encodeInteger:-[NSPConnectionInfo multipathSubflowCount](self forKey:{"multipathSubflowCount"), @"multipathSubflowCountKey"}];
  [v8 encodeInteger:-[NSPConnectionInfo multipathConnectedSubflowCount](self forKey:{"multipathConnectedSubflowCount"), @"multipathConnectedSubflowCountKey"}];
  [v8 encodeInteger:-[NSPConnectionInfo multipathPrimarySubflowInterfaceIndex](self forKey:{"multipathPrimarySubflowInterfaceIndex"), @"multipathPrimarySubflowInterfaceIndex"}];
  v5 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
  [v8 encodeObject:v5 forKey:@"multipathSubflowSwitchCounts"];

  v6 = [(NSPConnectionInfo *)self TCPInfo];
  [v8 encodeObject:v6 forKey:@"TCPInfo"];

  v7 = [(NSPConnectionInfo *)self firstTxByteTimeStamp];
  [v8 encodeObject:v7 forKey:@"firstTxByteTimeStamp"];

  [(NSPConnectionInfo *)self firstTxByteDelay];
  [v8 encodeDouble:@"firstTxByteDelay" forKey:?];
  [(NSPConnectionInfo *)self connectionDelay];
  [v8 encodeDouble:@"connectionDelay" forKey:?];
  [v8 encodeBool:-[NSPConnectionInfo TFOSucceeded](self forKey:{"TFOSucceeded"), @"TFOSucceeded"}];
  [v8 encodeInteger:-[NSPConnectionInfo IPType](self forKey:{"IPType"), @"IPType"}];
  [v8 encodeInteger:-[NSPConnectionInfo interfaceType](self forKey:{"interfaceType"), @"interfaceType"}];
  [(NSPConnectionInfo *)self timeIntervalSinceLastUsage];
  [v8 encodeDouble:@"timeIntervalSinceLastUsage" forKey:?];
  [(NSPConnectionInfo *)self timeToFirstByte];
  [v8 encodeDouble:@"timeToFirstByte" forKey:?];
  [v8 encodeInteger:-[NSPConnectionInfo tunnelConnectionError](self forKey:{"tunnelConnectionError"), @"tunnelConnectionError"}];
  [v8 encodeBool:-[NSPConnectionInfo isTFOProbeSucceeded](self forKey:{"isTFOProbeSucceeded"), @"isTFOProbeSucceeded"}];
  [v8 encodeInteger:-[NSPConnectionInfo initialBytesLeftOver](self forKey:{"initialBytesLeftOver"), @"initialBytesLeftOver"}];
}

- (id)copyDictionary
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo pathType](self, "pathType")}];
  [v3 setObject:v4 forKeyedSubscript:@"pathType"];

  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo fallbackReason](self, "fallbackReason")}];
  [v3 setObject:v5 forKeyedSubscript:@"fallbackReason"];

  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo fallbackReasonCategory](self, "fallbackReasonCategory")}];
  [v3 setObject:v6 forKeyedSubscript:@"fallbackCategory"];

  v7 = objc_alloc(MEMORY[0x1E696AD98]);
  [(NSPConnectionInfo *)self fallbackDelay];
  v8 = [v7 initWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"fallbackDelay"];

  v9 = [(NSPConnectionInfo *)self edgeAddress];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo edgeType](self, "edgeType")}];
    [v3 setObject:v10 forKeyedSubscript:@"edgeType"];

    v11 = [(NSPConnectionInfo *)self edgeAddress];
    [v3 setObject:v11 forKeyedSubscript:@"edgeAddress"];
  }

  if ([(NSPConnectionInfo *)self isMultipath])
  {
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[NSPConnectionInfo isMultipath](self, "isMultipath")}];
    [v3 setObject:v12 forKeyedSubscript:@"isMultipath"];

    v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[NSPConnectionInfo multipathSubflowCount](self, "multipathSubflowCount")}];
    [v3 setObject:v13 forKeyedSubscript:@"multipathSubflowCountKey"];

    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[NSPConnectionInfo multipathConnectedSubflowCount](self, "multipathConnectedSubflowCount")}];
    [v3 setObject:v14 forKeyedSubscript:@"multipathConnectedSubflowCountKey"];

    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[NSPConnectionInfo multipathPrimarySubflowInterfaceIndex](self, "multipathPrimarySubflowInterfaceIndex")}];
    [v3 setObject:v15 forKeyedSubscript:@"multipathPrimarySubflowInterfaceIndex"];

    v16 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
      [v3 setObject:v18 forKeyedSubscript:@"multipathSubflowSwitchCounts"];
    }
  }

  v19 = [(NSPConnectionInfo *)self TCPInfo];
  v20 = [v19 count];

  if (v20)
  {
    v58 = self;
    v59 = v3;
    v21 = [(NSPConnectionInfo *)self TCPInfo];
    v22 = [v21 mutableCopy];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v61;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v60 + 1) + 8 * i);
          v29 = [v23 objectForKeyedSubscript:v28];
          if ([v29 length] == 424)
          {
            v30 = [v29 bytes];
            v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v32 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v30 + 100)];
            [v31 setObject:v32 forKeyedSubscript:@"rxPackets"];

            v33 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v30 + 108)];
            [v31 setObject:v33 forKeyedSubscript:@"rxBytes"];

            v34 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v30 + 68)];
            [v31 setObject:v34 forKeyedSubscript:@"txPackets"];

            v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v30 + 76)];
            [v31 setObject:v35 forKeyedSubscript:@"txBytes"];

            v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v30 + 84)];
            [v31 setObject:v36 forKeyedSubscript:@"retransmitBytes"];

            v37 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(v30 + 284)];
            [v31 setObject:v37 forKeyedSubscript:@"retransmitPackets"];

            v38 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v31];
            [v23 setObject:v38 forKeyedSubscript:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v25);
    }

    v39 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v23];
    v3 = v59;
    [v59 setObject:v39 forKeyedSubscript:@"TCPInfo"];

    self = v58;
  }

  v40 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo interfaceType](self, "interfaceType")}];
  [v3 setObject:v40 forKeyedSubscript:@"interfaceType"];

  v41 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[NSPConnectionInfo isTFOProbeSucceeded](self, "isTFOProbeSucceeded")}];
  [v3 setObject:v41 forKeyedSubscript:@"isTFOProbeSucceeded"];

  v42 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo tunnelConnectionError](self, "tunnelConnectionError")}];
  [v3 setObject:v42 forKeyedSubscript:@"tunnelConnectionError"];

  if ([(NSPConnectionInfo *)self pathType]== 1)
  {
    v43 = objc_alloc(MEMORY[0x1E696AD98]);
    [(NSPConnectionInfo *)self firstTxByteDelay];
    v44 = [v43 initWithDouble:?];
    [v3 setObject:v44 forKeyedSubscript:@"firstTxByteDelay"];

    v45 = objc_alloc(MEMORY[0x1E696AD98]);
    [(NSPConnectionInfo *)self connectionDelay];
    v46 = [v45 initWithDouble:?];
    [v3 setObject:v46 forKeyedSubscript:@"connectionDelay"];

    v47 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[NSPConnectionInfo TFOSucceeded](self, "TFOSucceeded")}];
    [v3 setObject:v47 forKeyedSubscript:@"TFOSucceeded"];

    v48 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo IPType](self, "IPType")}];
    [v3 setObject:v48 forKeyedSubscript:@"IPType"];

    v49 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[NSPConnectionInfo minimumRTT](self, "minimumRTT")}];
    [v3 setObject:v49 forKeyedSubscript:@"minimumRTT"];

    v50 = objc_alloc(MEMORY[0x1E696AD98]);
    [(NSPConnectionInfo *)self timeIntervalSinceLastUsage];
    v51 = [v50 initWithDouble:?];
    [v3 setObject:v51 forKeyedSubscript:@"timeIntervalSinceLastUsage"];

    v52 = objc_alloc(MEMORY[0x1E696AD98]);
    [(NSPConnectionInfo *)self timeToFirstByte];
    v53 = [v52 initWithDouble:?];
    [v3 setObject:v53 forKeyedSubscript:@"timeToFirstByte"];

    v54 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[NSPConnectionInfo initialBytesLeftOver](self, "initialBytesLeftOver")}];
    [v3 setObject:v54 forKeyedSubscript:@"initialBytesLeftOver"];
  }

  v55 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v3];

  v56 = *MEMORY[0x1E69E9840];
  return v55;
}

+ (id)getFallbackReasonDescription:(int64_t)a3
{
  if (a3 > 0x2D)
  {
    return 0;
  }

  else
  {
    return off_1E7A30EC8[a3];
  }
}

+ (int)fallbackReasonToErrno:(int64_t)a3
{
  if ((a3 - 1) > 0x2C)
  {
    return 0;
  }

  else
  {
    return dword_1AE83AC38[a3 - 1];
  }
}

- (void)setFallbackReason:(int64_t)a3
{
  self->_fallbackReason = a3;
  if ((a3 - 1) <= 0x2C)
  {
    self->_fallbackReasonCategory = qword_1AE83ACF0[a3 - 1];
  }
}

+ (BOOL)shouldResolveForFallbackReason:(int64_t)a3
{
  result = [NSPConnectionInfo shouldMoveToNextEdgeForFallbackReason:?];
  if (a3 == 4)
  {
    return 1;
  }

  return result;
}

- (id)timingIntervalAtIndex:(unint64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(NSPConnectionInfo *)self timingIntervals];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(NSPConnectionInfo *)self timingIntervals];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = [v10 objectForKeyedSubscript:v6];
  }

  return v11;
}

@end