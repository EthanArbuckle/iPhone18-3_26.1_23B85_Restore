@interface BMAppLaunchEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMAppLaunchEvent)initWithCoder:(id)coder;
- (BMAppLaunchEvent)initWithProto:(id)proto;
- (BMAppLaunchEvent)initWithProtoData:(id)data;
- (BMAppLaunchEvent)initWithStarting:(BOOL)starting bundleID:(id)d absoluteTimeStamp:(double)stamp duration:(double)duration launchReason:(id)reason launchType:(unint64_t)type parentBundleID:(id)iD extensionHostID:(id)self0 shortVersionString:(id)self1 exactBundleVersion:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMAppLaunchEvent

- (BMAppLaunchEvent)initWithStarting:(BOOL)starting bundleID:(id)d absoluteTimeStamp:(double)stamp duration:(double)duration launchReason:(id)reason launchType:(unint64_t)type parentBundleID:(id)iD extensionHostID:(id)self0 shortVersionString:(id)self1 exactBundleVersion:(id)self2
{
  startingCopy = starting;
  v42[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  iDCopy = iD;
  hostIDCopy = hostID;
  stringCopy = string;
  versionCopy = version;
  v41.receiver = self;
  v41.super_class = BMAppLaunchEvent;
  v26 = [(BMEventBase *)&v41 init];
  if (v26)
  {
    v27 = objc_alloc_init(BMEventTimeElapsingImplementor);
    v42[0] = v27;
    v40 = stringCopy;
    v28 = objc_alloc_init(BMEventBinarySteppingImplementor);
    v42[1] = v28;
    typeCopy = type;
    v29 = hostIDCopy;
    v30 = iDCopy;
    v31 = reasonCopy;
    v32 = dCopy;
    v33 = objc_alloc_init(BMEventAppAssociatingImplementor);
    v42[2] = v33;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    v38 = startingCopy;
    v35 = v34 = versionCopy;
    [(BMEventBase *)v26 set_validators:v35];

    versionCopy = v34;
    dCopy = v32;
    reasonCopy = v31;
    iDCopy = v30;
    hostIDCopy = v29;

    stringCopy = v40;
    [(BMAppLaunchEvent *)v26 setAbsoluteTimestamp:stamp];
    [(BMAppLaunchEvent *)v26 setStarting:v38];
    [(BMAppLaunchEvent *)v26 setBundleID:dCopy];
    [(BMAppLaunchEvent *)v26 setDuration:duration];
    [(BMAppLaunchEvent *)v26 setLaunchReason:reasonCopy];
    [(BMAppLaunchEvent *)v26 setLaunchType:typeCopy];
    [(BMAppLaunchEvent *)v26 setParentBundleID:iDCopy];
    [(BMAppLaunchEvent *)v26 setExtensionHostID:v29];
    [(BMAppLaunchEvent *)v26 setShortVersionString:v40];
    [(BMAppLaunchEvent *)v26 setExactVersionString:v34];
  }

  v36 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version != 9)
  {
    if (version == 10)
    {
      selfCopy = self;
      goto LABEL_6;
    }

    if (version == 11)
    {
      selfCopy = BMAppLaunchEvent_v11;
LABEL_6:
      v8 = [[selfCopy alloc] initWithProtoData:dataCopy];
      goto LABEL_11;
    }

    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMAppClipLaunchEvent eventWithData:v9 dataVersion:?];
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)jsonDict
{
  v25[9] = *MEMORY[0x1E69E9840];
  v24[0] = @"bundleId";
  bundleID = [(BMAppLaunchEvent *)self bundleID];
  v23 = bundleID;
  if (!bundleID)
  {
    bundleID = [MEMORY[0x1E695DFB0] null];
  }

  v19 = bundleID;
  v25[0] = bundleID;
  v24[1] = @"isStart";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLaunchEvent isStarting](self, "isStarting")}];
  v25[1] = v22;
  v24[2] = @"time";
  v4 = MEMORY[0x1E696AD98];
  [(BMAppLaunchEvent *)self absoluteTimestamp];
  v21 = [v4 numberWithDouble:?];
  v25[2] = v21;
  v24[3] = @"launchReason";
  launchReason = [(BMAppLaunchEvent *)self launchReason];
  v6 = launchReason;
  if (!launchReason)
  {
    launchReason = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = launchReason;
  v24[4] = @"launchType";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMAppLaunchEvent launchType](self, "launchType", launchReason)}];
  v25[4] = v20;
  v24[5] = @"parentBundleID";
  parentBundleID = [(BMAppLaunchEvent *)self parentBundleID];
  null = parentBundleID;
  if (!parentBundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null;
  v24[6] = @"extensionHostID";
  extensionHostID = [(BMAppLaunchEvent *)self extensionHostID];
  null2 = extensionHostID;
  if (!extensionHostID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = null2;
  v24[7] = @"shortVersionString";
  shortVersionString = [(BMAppLaunchEvent *)self shortVersionString];
  null3 = shortVersionString;
  if (!shortVersionString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[7] = null3;
  v24[8] = @"exactVersionString";
  exactVersionString = [(BMAppLaunchEvent *)self exactVersionString];
  null4 = exactVersionString;
  if (!exactVersionString)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[8] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:9];
  if (!exactVersionString)
  {
  }

  if (!shortVersionString)
  {
  }

  if (!extensionHostID)
  {
  }

  if (!parentBundleID)
  {
  }

  if (!v6)
  {
  }

  if (!v23)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMAppLaunchEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMPOICategoryEvent *)v6 json];
    }
  }

  return v4;
}

- (NSString)description
{
  jsonDict = [(BMAppLaunchEvent *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (BMAppLaunchEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protoData"];
  if (v5)
  {
    v6 = [(BMAppLaunchEvent *)self initWithProtoData:v5];
  }

  else
  {
    v7 = [coderCopy decodeInt64ForKey:@"launchType"];
    if (v7 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v21 = v8;
    v9 = [coderCopy decodeBoolForKey:@"starting"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [coderCopy decodeDoubleForKey:@"absoluteTimestamp"];
    v12 = v11;
    [coderCopy decodeDoubleForKey:@"duration"];
    v14 = v13;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentBundleID"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionHostID"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortVersionString"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exactVersionString"];
    v6 = [(BMAppLaunchEvent *)self initWithStarting:v9 bundleID:v10 absoluteTimeStamp:v15 duration:v21 launchReason:v16 launchType:v17 parentBundleID:v12 extensionHostID:v14 shortVersionString:v18 exactBundleVersion:v19];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMAppLaunchEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protoData"];
}

- (unint64_t)hash
{
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLaunchEvent isStarting](self, "isStarting")}];
  v3 = [v25 hash];
  bundleID = [(BMAppLaunchEvent *)self bundleID];
  v4 = [bundleID hash] ^ v3;
  v5 = MEMORY[0x1E696AD98];
  [(BMAppLaunchEvent *)self absoluteTimestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  v8 = MEMORY[0x1E696AD98];
  [(BMAppLaunchEvent *)self duration];
  v9 = [v8 numberWithDouble:?];
  v10 = v4 ^ v7 ^ [v9 hash];
  launchReason = [(BMAppLaunchEvent *)self launchReason];
  v12 = [launchReason hash];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMAppLaunchEvent launchType](self, "launchType")}];
  v14 = v12 ^ [v13 hash];
  parentBundleID = [(BMAppLaunchEvent *)self parentBundleID];
  v16 = v10 ^ v14 ^ [parentBundleID hash];
  extensionHostID = [(BMAppLaunchEvent *)self extensionHostID];
  v18 = [extensionHostID hash];
  shortVersionString = [(BMAppLaunchEvent *)self shortVersionString];
  v20 = v18 ^ [shortVersionString hash];
  exactVersionString = [(BMAppLaunchEvent *)self exactVersionString];
  v22 = v20 ^ [exactVersionString hash];

  return v16 ^ v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_46;
  }

  v8 = equalCopy;
  isStarting = [(BMAppLaunchEvent *)self isStarting];
  isStarting2 = [v8 isStarting];
  bundleID = [(BMAppLaunchEvent *)self bundleID];
  if (!bundleID)
  {
    bundleID2 = [v8 bundleID];
    if (!bundleID2)
    {
      v45 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  bundleID3 = [(BMAppLaunchEvent *)self bundleID];
  bundleID4 = [v8 bundleID];
  v45 = [bundleID3 isEqual:bundleID4];

  if (!bundleID)
  {
    goto LABEL_8;
  }

LABEL_9:

  [(BMAppLaunchEvent *)self absoluteTimestamp];
  v15 = v14;
  [v8 absoluteTimestamp];
  v17 = v16;
  [(BMAppLaunchEvent *)self duration];
  v19 = v18;
  [v8 duration];
  v21 = v20;
  launchReason = [(BMAppLaunchEvent *)self launchReason];
  if (!launchReason)
  {
    bundleID2 = [v8 launchReason];
    if (!bundleID2)
    {
      v44 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  bundleID3 = [(BMAppLaunchEvent *)self launchReason];
  launchReason2 = [v8 launchReason];
  v44 = [bundleID3 isEqual:launchReason2];

  if (!launchReason)
  {
    goto LABEL_14;
  }

LABEL_15:

  launchType = [(BMAppLaunchEvent *)self launchType];
  launchType2 = [v8 launchType];
  parentBundleID = [(BMAppLaunchEvent *)self parentBundleID];
  if (!parentBundleID)
  {
    bundleID2 = [v8 parentBundleID];
    if (!bundleID2)
    {
      v41 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  bundleID3 = [(BMAppLaunchEvent *)self parentBundleID];
  parentBundleID2 = [v8 parentBundleID];
  v41 = [bundleID3 isEqual:parentBundleID2];

  if (!parentBundleID)
  {
    goto LABEL_20;
  }

LABEL_21:

  extensionHostID = [(BMAppLaunchEvent *)self extensionHostID];
  if (!extensionHostID)
  {
    bundleID3 = [v8 extensionHostID];
    if (!bundleID3)
    {
      v27 = 1;
LABEL_26:

      goto LABEL_27;
    }
  }

  parentBundleID2 = [(BMAppLaunchEvent *)self extensionHostID];
  extensionHostID2 = [v8 extensionHostID];
  v27 = [parentBundleID2 isEqual:extensionHostID2];

  if (!extensionHostID)
  {
    goto LABEL_26;
  }

LABEL_27:
  v28 = isStarting ^ isStarting2;

  shortVersionString = [(BMAppLaunchEvent *)self shortVersionString];
  if (!shortVersionString)
  {
    parentBundleID2 = [v8 shortVersionString];
    if (!parentBundleID2)
    {
      v32 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  shortVersionString2 = [(BMAppLaunchEvent *)self shortVersionString];
  shortVersionString3 = [v8 shortVersionString];
  v32 = [shortVersionString2 isEqual:shortVersionString3];

  if (!shortVersionString)
  {
    goto LABEL_32;
  }

LABEL_33:
  v33 = v28 ^ 1;

  exactVersionString = [(BMAppLaunchEvent *)self exactVersionString];
  if (!exactVersionString)
  {
    parentBundleID2 = [v8 exactVersionString];
    if (!parentBundleID2)
    {
      v37 = 1;
LABEL_38:

      goto LABEL_39;
    }
  }

  exactVersionString2 = [(BMAppLaunchEvent *)self exactVersionString];
  exactVersionString3 = [v8 exactVersionString];
  v37 = [exactVersionString2 isEqual:exactVersionString3];

  if (!exactVersionString)
  {
    goto LABEL_38;
  }

LABEL_39:

  v38 = v33 & v45;
  if (v15 != v17)
  {
    v38 = 0;
  }

  if (v19 != v21)
  {
    v38 = 0;
  }

  v39 = v38 & v44;
  if (launchType != launchType2)
  {
    v39 = 0;
  }

  v13 = v39 & v41 & v27 & v32 & v37;

LABEL_46:
  return v13;
}

- (id)encodeAsProto
{
  proto = [(BMAppLaunchEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMAppLaunchEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      launchType = [v5 launchType];
      v7 = launchType;
      if (launchType >= 4)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMAppLaunchEvent initWithProto:v7];
        }

        v22 = 0;
      }

      else
      {
        v22 = launchType;
      }

      starting = [v5 starting];
      bundleID = [v5 bundleID];
      [v5 absoluteTimestamp];
      v13 = v12;
      [v5 duration];
      v15 = v14;
      launchReason = [v5 launchReason];
      parentBundleID = [v5 parentBundleID];
      extensionHostID = [v5 extensionHostID];
      shortVersionString = [v5 shortVersionString];
      exactVersionString = [v5 exactVersionString];

      self = [(BMAppLaunchEvent *)self initWithStarting:starting bundleID:bundleID absoluteTimeStamp:launchReason duration:v22 launchReason:parentBundleID launchType:extensionHostID parentBundleID:v13 extensionHostID:v15 shortVersionString:shortVersionString exactBundleVersion:exactVersionString];
      selfCopy = self;
    }

    else
    {
      bundleID = __biome_log_for_category();
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_FAULT))
      {
        [BMAppLaunchEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMAppLaunchEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBAppLaunchEvent alloc] initWithData:dataCopy];

    self = [(BMAppLaunchEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setStarting:{-[BMAppLaunchEvent isStarting](self, "isStarting")}];
  bundleID = [(BMAppLaunchEvent *)self bundleID];
  [v3 setBundleID:bundleID];

  [(BMAppLaunchEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [(BMAppLaunchEvent *)self duration];
  [v3 setDuration:?];
  launchReason = [(BMAppLaunchEvent *)self launchReason];
  [v3 setLaunchReason:launchReason];

  parentBundleID = [(BMAppLaunchEvent *)self parentBundleID];
  [v3 setParentBundleID:parentBundleID];

  extensionHostID = [(BMAppLaunchEvent *)self extensionHostID];
  [v3 setExtensionHostID:extensionHostID];

  shortVersionString = [(BMAppLaunchEvent *)self shortVersionString];
  [v3 setShortVersionString:shortVersionString];

  exactVersionString = [(BMAppLaunchEvent *)self exactVersionString];
  [v3 setExactVersionString:exactVersionString];

  launchType = [(BMAppLaunchEvent *)self launchType];
  if (launchType >= 4)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMAppLaunchEvent *)launchType proto];
    }

    v11 = 0;
  }

  else
  {
    [v3 setLaunchType:launchType];
    v11 = v3;
  }

  return v11;
}

@end