@interface BMAppLaunchEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMAppLaunchEvent)initWithCoder:(id)a3;
- (BMAppLaunchEvent)initWithProto:(id)a3;
- (BMAppLaunchEvent)initWithProtoData:(id)a3;
- (BMAppLaunchEvent)initWithStarting:(BOOL)a3 bundleID:(id)a4 absoluteTimeStamp:(double)a5 duration:(double)a6 launchReason:(id)a7 launchType:(unint64_t)a8 parentBundleID:(id)a9 extensionHostID:(id)a10 shortVersionString:(id)a11 exactBundleVersion:(id)a12;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMAppLaunchEvent

- (BMAppLaunchEvent)initWithStarting:(BOOL)a3 bundleID:(id)a4 absoluteTimeStamp:(double)a5 duration:(double)a6 launchReason:(id)a7 launchType:(unint64_t)a8 parentBundleID:(id)a9 extensionHostID:(id)a10 shortVersionString:(id)a11 exactBundleVersion:(id)a12
{
  v18 = a3;
  v42[3] = *MEMORY[0x1E69E9840];
  v20 = a4;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v41.receiver = self;
  v41.super_class = BMAppLaunchEvent;
  v26 = [(BMEventBase *)&v41 init];
  if (v26)
  {
    v27 = objc_alloc_init(BMEventTimeElapsingImplementor);
    v42[0] = v27;
    v40 = v24;
    v28 = objc_alloc_init(BMEventBinarySteppingImplementor);
    v42[1] = v28;
    v39 = a8;
    v29 = v23;
    v30 = v22;
    v31 = v21;
    v32 = v20;
    v33 = objc_alloc_init(BMEventAppAssociatingImplementor);
    v42[2] = v33;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    v38 = v18;
    v35 = v34 = v25;
    [(BMEventBase *)v26 set_validators:v35];

    v25 = v34;
    v20 = v32;
    v21 = v31;
    v22 = v30;
    v23 = v29;

    v24 = v40;
    [(BMAppLaunchEvent *)v26 setAbsoluteTimestamp:a5];
    [(BMAppLaunchEvent *)v26 setStarting:v38];
    [(BMAppLaunchEvent *)v26 setBundleID:v20];
    [(BMAppLaunchEvent *)v26 setDuration:a6];
    [(BMAppLaunchEvent *)v26 setLaunchReason:v21];
    [(BMAppLaunchEvent *)v26 setLaunchType:v39];
    [(BMAppLaunchEvent *)v26 setParentBundleID:v22];
    [(BMAppLaunchEvent *)v26 setExtensionHostID:v29];
    [(BMAppLaunchEvent *)v26 setShortVersionString:v40];
    [(BMAppLaunchEvent *)v26 setExactVersionString:v34];
  }

  v36 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 != 9)
  {
    if (a4 == 10)
    {
      v7 = a1;
      goto LABEL_6;
    }

    if (a4 == 11)
    {
      v7 = BMAppLaunchEvent_v11;
LABEL_6:
      v8 = [[v7 alloc] initWithProtoData:v6];
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
  v3 = [(BMAppLaunchEvent *)self bundleID];
  v23 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v3;
  v25[0] = v3;
  v24[1] = @"isStart";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLaunchEvent isStarting](self, "isStarting")}];
  v25[1] = v22;
  v24[2] = @"time";
  v4 = MEMORY[0x1E696AD98];
  [(BMAppLaunchEvent *)self absoluteTimestamp];
  v21 = [v4 numberWithDouble:?];
  v25[2] = v21;
  v24[3] = @"launchReason";
  v5 = [(BMAppLaunchEvent *)self launchReason];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v5;
  v24[4] = @"launchType";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMAppLaunchEvent launchType](self, "launchType", v5)}];
  v25[4] = v20;
  v24[5] = @"parentBundleID";
  v7 = [(BMAppLaunchEvent *)self parentBundleID];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v8;
  v24[6] = @"extensionHostID";
  v9 = [(BMAppLaunchEvent *)self extensionHostID];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = v10;
  v24[7] = @"shortVersionString";
  v11 = [(BMAppLaunchEvent *)self shortVersionString];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25[7] = v12;
  v24[8] = @"exactVersionString";
  v13 = [(BMAppLaunchEvent *)self exactVersionString];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[8] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:9];
  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
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
  v3 = [(BMAppLaunchEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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
  v2 = [(BMAppLaunchEvent *)self jsonDict];
  v3 = [v2 description];

  return v3;
}

- (BMAppLaunchEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protoData"];
  if (v5)
  {
    v6 = [(BMAppLaunchEvent *)self initWithProtoData:v5];
  }

  else
  {
    v7 = [v4 decodeInt64ForKey:@"launchType"];
    if (v7 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v21 = v8;
    v9 = [v4 decodeBoolForKey:@"starting"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [v4 decodeDoubleForKey:@"absoluteTimestamp"];
    v12 = v11;
    [v4 decodeDoubleForKey:@"duration"];
    v14 = v13;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentBundleID"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionHostID"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortVersionString"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exactVersionString"];
    v6 = [(BMAppLaunchEvent *)self initWithStarting:v9 bundleID:v10 absoluteTimeStamp:v15 duration:v21 launchReason:v16 launchType:v17 parentBundleID:v12 extensionHostID:v14 shortVersionString:v18 exactBundleVersion:v19];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMAppLaunchEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protoData"];
}

- (unint64_t)hash
{
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppLaunchEvent isStarting](self, "isStarting")}];
  v3 = [v25 hash];
  v24 = [(BMAppLaunchEvent *)self bundleID];
  v4 = [v24 hash] ^ v3;
  v5 = MEMORY[0x1E696AD98];
  [(BMAppLaunchEvent *)self absoluteTimestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  v8 = MEMORY[0x1E696AD98];
  [(BMAppLaunchEvent *)self duration];
  v9 = [v8 numberWithDouble:?];
  v10 = v4 ^ v7 ^ [v9 hash];
  v11 = [(BMAppLaunchEvent *)self launchReason];
  v12 = [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMAppLaunchEvent launchType](self, "launchType")}];
  v14 = v12 ^ [v13 hash];
  v15 = [(BMAppLaunchEvent *)self parentBundleID];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(BMAppLaunchEvent *)self extensionHostID];
  v18 = [v17 hash];
  v19 = [(BMAppLaunchEvent *)self shortVersionString];
  v20 = v18 ^ [v19 hash];
  v21 = [(BMAppLaunchEvent *)self exactVersionString];
  v22 = v20 ^ [v21 hash];

  return v16 ^ v22;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_46;
  }

  v8 = v7;
  v9 = [(BMAppLaunchEvent *)self isStarting];
  v10 = [v8 isStarting];
  v11 = [(BMAppLaunchEvent *)self bundleID];
  if (!v11)
  {
    v3 = [v8 bundleID];
    if (!v3)
    {
      v45 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v4 = [(BMAppLaunchEvent *)self bundleID];
  v12 = [v8 bundleID];
  v45 = [v4 isEqual:v12];

  if (!v11)
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
  v22 = [(BMAppLaunchEvent *)self launchReason];
  if (!v22)
  {
    v3 = [v8 launchReason];
    if (!v3)
    {
      v44 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v4 = [(BMAppLaunchEvent *)self launchReason];
  v23 = [v8 launchReason];
  v44 = [v4 isEqual:v23];

  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_15:

  v43 = [(BMAppLaunchEvent *)self launchType];
  v42 = [v8 launchType];
  v24 = [(BMAppLaunchEvent *)self parentBundleID];
  if (!v24)
  {
    v3 = [v8 parentBundleID];
    if (!v3)
    {
      v41 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  v4 = [(BMAppLaunchEvent *)self parentBundleID];
  v5 = [v8 parentBundleID];
  v41 = [v4 isEqual:v5];

  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_21:

  v25 = [(BMAppLaunchEvent *)self extensionHostID];
  if (!v25)
  {
    v4 = [v8 extensionHostID];
    if (!v4)
    {
      v27 = 1;
LABEL_26:

      goto LABEL_27;
    }
  }

  v5 = [(BMAppLaunchEvent *)self extensionHostID];
  v26 = [v8 extensionHostID];
  v27 = [v5 isEqual:v26];

  if (!v25)
  {
    goto LABEL_26;
  }

LABEL_27:
  v28 = v9 ^ v10;

  v29 = [(BMAppLaunchEvent *)self shortVersionString];
  if (!v29)
  {
    v5 = [v8 shortVersionString];
    if (!v5)
    {
      v32 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  v30 = [(BMAppLaunchEvent *)self shortVersionString];
  v31 = [v8 shortVersionString];
  v32 = [v30 isEqual:v31];

  if (!v29)
  {
    goto LABEL_32;
  }

LABEL_33:
  v33 = v28 ^ 1;

  v34 = [(BMAppLaunchEvent *)self exactVersionString];
  if (!v34)
  {
    v5 = [v8 exactVersionString];
    if (!v5)
    {
      v37 = 1;
LABEL_38:

      goto LABEL_39;
    }
  }

  v35 = [(BMAppLaunchEvent *)self exactVersionString];
  v36 = [v8 exactVersionString];
  v37 = [v35 isEqual:v36];

  if (!v34)
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
  if (v43 != v42)
  {
    v39 = 0;
  }

  v13 = v39 & v41 & v27 & v32 & v37;

LABEL_46:
  return v13;
}

- (id)encodeAsProto
{
  v2 = [(BMAppLaunchEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMAppLaunchEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 launchType];
      v7 = v6;
      if (v6 >= 4)
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
        v22 = v6;
      }

      v11 = [v5 starting];
      v9 = [v5 bundleID];
      [v5 absoluteTimestamp];
      v13 = v12;
      [v5 duration];
      v15 = v14;
      v16 = [v5 launchReason];
      v17 = [v5 parentBundleID];
      v18 = [v5 extensionHostID];
      v19 = [v5 shortVersionString];
      v20 = [v5 exactVersionString];

      self = [(BMAppLaunchEvent *)self initWithStarting:v11 bundleID:v9 absoluteTimeStamp:v16 duration:v22 launchReason:v17 launchType:v18 parentBundleID:v13 extensionHostID:v15 shortVersionString:v19 exactBundleVersion:v20];
      v8 = self;
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BMAppLaunchEvent initWithProto:];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BMAppLaunchEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBAppLaunchEvent alloc] initWithData:v4];

    self = [(BMAppLaunchEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setStarting:{-[BMAppLaunchEvent isStarting](self, "isStarting")}];
  v4 = [(BMAppLaunchEvent *)self bundleID];
  [v3 setBundleID:v4];

  [(BMAppLaunchEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [(BMAppLaunchEvent *)self duration];
  [v3 setDuration:?];
  v5 = [(BMAppLaunchEvent *)self launchReason];
  [v3 setLaunchReason:v5];

  v6 = [(BMAppLaunchEvent *)self parentBundleID];
  [v3 setParentBundleID:v6];

  v7 = [(BMAppLaunchEvent *)self extensionHostID];
  [v3 setExtensionHostID:v7];

  v8 = [(BMAppLaunchEvent *)self shortVersionString];
  [v3 setShortVersionString:v8];

  v9 = [(BMAppLaunchEvent *)self exactVersionString];
  [v3 setExactVersionString:v9];

  v10 = [(BMAppLaunchEvent *)self launchType];
  if (v10 >= 4)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMAppLaunchEvent *)v10 proto];
    }

    v11 = 0;
  }

  else
  {
    [v3 setLaunchType:v10];
    v11 = v3;
  }

  return v11;
}

@end