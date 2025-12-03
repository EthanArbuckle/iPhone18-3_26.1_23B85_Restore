@interface NSPConnectionInfo
+ (BOOL)shouldResolveForFallbackReason:(int64_t)reason;
+ (id)getFallbackReasonDescription:(int64_t)description;
+ (int)fallbackReasonToErrno:(int64_t)errno;
- (NSPConnectionInfo)initWithCoder:(id)coder;
- (id)copyDictionary;
- (id)timingIntervalAtIndex:(unint64_t)index forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setFallbackReason:(int64_t)reason;
@end

@implementation NSPConnectionInfo

- (NSPConnectionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = NSPConnectionInfo;
  v5 = [(NSPConnectionInfo *)&v27 init];
  if (v5)
  {
    v5->_pathType = [coderCopy decodeIntegerForKey:@"pathType"];
    v5->_fallbackReason = [coderCopy decodeIntegerForKey:@"fallbackReason"];
    v5->_fallbackReasonCategory = [coderCopy decodeIntegerForKey:@"fallbackCategory"];
    [coderCopy decodeDoubleForKey:@"fallbackDelay"];
    v5->_fallbackDelay = v6;
    v5->_edgeType = [coderCopy decodeIntegerForKey:@"edgeType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edgeAddress"];
    edgeAddress = v5->_edgeAddress;
    v5->_edgeAddress = v7;

    v5->_isMultipath = [coderCopy decodeBoolForKey:@"isMultipath"];
    v5->_multipathSubflowCount = [coderCopy decodeIntegerForKey:@"multipathSubflowCountKey"];
    v5->_multipathConnectedSubflowCount = [coderCopy decodeIntegerForKey:@"multipathConnectedSubflowCountKey"];
    v5->_multipathPrimarySubflowInterfaceIndex = [coderCopy decodeIntegerForKey:@"multipathPrimarySubflowInterfaceIndex"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"multipathSubflowSwitchCounts"];
    multipathSubflowSwitchCounts = v5->_multipathSubflowSwitchCounts;
    v5->_multipathSubflowSwitchCounts = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"TCPInfo"];
    TCPInfo = v5->_TCPInfo;
    v5->_TCPInfo = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstTxByteTimeStamp"];
    firstTxByteTimeStamp = v5->_firstTxByteTimeStamp;
    v5->_firstTxByteTimeStamp = v21;

    [coderCopy decodeDoubleForKey:@"firstTxByteDelay"];
    v5->_firstTxByteDelay = v23;
    [coderCopy decodeDoubleForKey:@"connectionDelay"];
    v5->_connectionDelay = v24;
    v5->_TFOSucceeded = [coderCopy decodeBoolForKey:@"TFOSucceeded"];
    v5->_IPType = [coderCopy decodeIntegerForKey:@"IPType"];
    v5->_interfaceType = [coderCopy decodeIntegerForKey:@"interfaceType"];
    [coderCopy decodeDoubleForKey:@"timeIntervalSinceLastUsage"];
    v5->_timeIntervalSinceLastUsage = v25;
    v5->_timeToFirstByte = [coderCopy decodeIntegerForKey:@"timeToFirstByte"];
    v5->_tunnelConnectionError = [coderCopy decodeIntegerForKey:@"tunnelConnectionError"];
    v5->_isTFOProbeSucceeded = [coderCopy decodeBoolForKey:@"isTFOProbeSucceeded"];
    v5->_initialBytesLeftOver = [coderCopy decodeIntegerForKey:@"initialBytesLeftOver"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSPConnectionInfo pathType](self forKey:{"pathType"), @"pathType"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo fallbackReason](self forKey:{"fallbackReason"), @"fallbackReason"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo fallbackReasonCategory](self forKey:{"fallbackReasonCategory"), @"fallbackCategory"}];
  [(NSPConnectionInfo *)self fallbackDelay];
  [coderCopy encodeDouble:@"fallbackDelay" forKey:?];
  [coderCopy encodeInteger:-[NSPConnectionInfo edgeType](self forKey:{"edgeType"), @"edgeType"}];
  edgeAddress = [(NSPConnectionInfo *)self edgeAddress];
  [coderCopy encodeObject:edgeAddress forKey:@"edgeAddress"];

  [coderCopy encodeBool:-[NSPConnectionInfo isMultipath](self forKey:{"isMultipath"), @"isMultipath"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo multipathSubflowCount](self forKey:{"multipathSubflowCount"), @"multipathSubflowCountKey"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo multipathConnectedSubflowCount](self forKey:{"multipathConnectedSubflowCount"), @"multipathConnectedSubflowCountKey"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo multipathPrimarySubflowInterfaceIndex](self forKey:{"multipathPrimarySubflowInterfaceIndex"), @"multipathPrimarySubflowInterfaceIndex"}];
  multipathSubflowSwitchCounts = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
  [coderCopy encodeObject:multipathSubflowSwitchCounts forKey:@"multipathSubflowSwitchCounts"];

  tCPInfo = [(NSPConnectionInfo *)self TCPInfo];
  [coderCopy encodeObject:tCPInfo forKey:@"TCPInfo"];

  firstTxByteTimeStamp = [(NSPConnectionInfo *)self firstTxByteTimeStamp];
  [coderCopy encodeObject:firstTxByteTimeStamp forKey:@"firstTxByteTimeStamp"];

  [(NSPConnectionInfo *)self firstTxByteDelay];
  [coderCopy encodeDouble:@"firstTxByteDelay" forKey:?];
  [(NSPConnectionInfo *)self connectionDelay];
  [coderCopy encodeDouble:@"connectionDelay" forKey:?];
  [coderCopy encodeBool:-[NSPConnectionInfo TFOSucceeded](self forKey:{"TFOSucceeded"), @"TFOSucceeded"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo IPType](self forKey:{"IPType"), @"IPType"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo interfaceType](self forKey:{"interfaceType"), @"interfaceType"}];
  [(NSPConnectionInfo *)self timeIntervalSinceLastUsage];
  [coderCopy encodeDouble:@"timeIntervalSinceLastUsage" forKey:?];
  [(NSPConnectionInfo *)self timeToFirstByte];
  [coderCopy encodeDouble:@"timeToFirstByte" forKey:?];
  [coderCopy encodeInteger:-[NSPConnectionInfo tunnelConnectionError](self forKey:{"tunnelConnectionError"), @"tunnelConnectionError"}];
  [coderCopy encodeBool:-[NSPConnectionInfo isTFOProbeSucceeded](self forKey:{"isTFOProbeSucceeded"), @"isTFOProbeSucceeded"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo initialBytesLeftOver](self forKey:{"initialBytesLeftOver"), @"initialBytesLeftOver"}];
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

  edgeAddress = [(NSPConnectionInfo *)self edgeAddress];

  if (edgeAddress)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[NSPConnectionInfo edgeType](self, "edgeType")}];
    [v3 setObject:v10 forKeyedSubscript:@"edgeType"];

    edgeAddress2 = [(NSPConnectionInfo *)self edgeAddress];
    [v3 setObject:edgeAddress2 forKeyedSubscript:@"edgeAddress"];
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

    multipathSubflowSwitchCounts = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
    v17 = [multipathSubflowSwitchCounts count];

    if (v17)
    {
      multipathSubflowSwitchCounts2 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
      [v3 setObject:multipathSubflowSwitchCounts2 forKeyedSubscript:@"multipathSubflowSwitchCounts"];
    }
  }

  tCPInfo = [(NSPConnectionInfo *)self TCPInfo];
  v20 = [tCPInfo count];

  if (v20)
  {
    selfCopy = self;
    v59 = v3;
    tCPInfo2 = [(NSPConnectionInfo *)self TCPInfo];
    v22 = [tCPInfo2 mutableCopy];

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
            bytes = [v29 bytes];
            v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v32 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(bytes + 100)];
            [v31 setObject:v32 forKeyedSubscript:@"rxPackets"];

            v33 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(bytes + 108)];
            [v31 setObject:v33 forKeyedSubscript:@"rxBytes"];

            v34 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(bytes + 68)];
            [v31 setObject:v34 forKeyedSubscript:@"txPackets"];

            v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(bytes + 76)];
            [v31 setObject:v35 forKeyedSubscript:@"txBytes"];

            v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(bytes + 84)];
            [v31 setObject:v36 forKeyedSubscript:@"retransmitBytes"];

            v37 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(bytes + 284)];
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

    self = selfCopy;
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

+ (id)getFallbackReasonDescription:(int64_t)description
{
  if (description > 0x2D)
  {
    return 0;
  }

  else
  {
    return off_1E7A30EC8[description];
  }
}

+ (int)fallbackReasonToErrno:(int64_t)errno
{
  if ((errno - 1) > 0x2C)
  {
    return 0;
  }

  else
  {
    return dword_1AE83AC38[errno - 1];
  }
}

- (void)setFallbackReason:(int64_t)reason
{
  self->_fallbackReason = reason;
  if ((reason - 1) <= 0x2C)
  {
    self->_fallbackReasonCategory = qword_1AE83ACF0[reason - 1];
  }
}

+ (BOOL)shouldResolveForFallbackReason:(int64_t)reason
{
  result = [NSPConnectionInfo shouldMoveToNextEdgeForFallbackReason:?];
  if (reason == 4)
  {
    return 1;
  }

  return result;
}

- (id)timingIntervalAtIndex:(unint64_t)index forKey:(id)key
{
  keyCopy = key;
  timingIntervals = [(NSPConnectionInfo *)self timingIntervals];
  v8 = [timingIntervals count];

  if (v8 <= index)
  {
    v11 = 0;
  }

  else
  {
    timingIntervals2 = [(NSPConnectionInfo *)self timingIntervals];
    v10 = [timingIntervals2 objectAtIndexedSubscript:index];

    v11 = [v10 objectForKeyedSubscript:keyCopy];
  }

  return v11;
}

@end