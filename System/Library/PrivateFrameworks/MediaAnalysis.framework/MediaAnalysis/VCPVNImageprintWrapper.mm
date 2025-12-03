@interface VCPVNImageprintWrapper
+ (VCPVNImageprintWrapper)wrapperWithImageprintType:(unint64_t)type version:(int)version andData:(id)data;
+ (id)generateVNImageprintWithType:(unint64_t)type archiveData:(id)data andError:(id *)error;
- (BOOL)calculateDistance:(float *)distance toWrapper:(id)wrapper andError:(id *)error;
- (VCPVNImageprintWrapper)initWithImageprintType:(unint64_t)type version:(int)version andData:(id)data;
- (id)description;
@end

@implementation VCPVNImageprintWrapper

- (VCPVNImageprintWrapper)initWithImageprintType:(unint64_t)type version:(int)version andData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v14.receiver = self;
    v14.super_class = VCPVNImageprintWrapper;
    v10 = [(VCPVNImageprintWrapper *)&v14 init];
    v11 = v10;
    if (v10)
    {
      v10->_type = type;
      v10->_version = version;
      objc_storeStrong(&v10->_data, data);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (VCPVNImageprintWrapper)wrapperWithImageprintType:(unint64_t)type version:(int)version andData:(id)data
{
  v5 = *&version;
  dataCopy = data;
  v9 = [[self alloc] initWithImageprintType:type version:v5 andData:dataCopy];

  return v9;
}

+ (id)generateVNImageprintWithType:(unint64_t)type archiveData:(id)data andError:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!type)
  {
    v8 = 0x1E6984520;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v8 = 0x1E6984408;
LABEL_5:
    error = [objc_alloc(*v8) initWithState:dataCopy error:error];
    goto LABEL_8;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPVNImageprintWrapper] Invalid imageprint type %lu", type, *MEMORY[0x1E696A578]];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];

    error = 0;
  }

LABEL_8:

  return error;
}

- (BOOL)calculateDistance:(float *)distance toWrapper:(id)wrapper andError:(id *)error
{
  v60[1] = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  if (!wrapperCopy)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v23 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - missing the other imageprint"];
    v60[0] = v15;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v24 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
LABEL_17:
    v27 = 0;
    *error = v24;
    goto LABEL_18;
  }

  type = [(VCPVNImageprintWrapper *)self type];
  if (type != [wrapperCopy type])
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v25 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - mismatched imageprint type (%lu vs %lu)", -[VCPVNImageprintWrapper type](self, "type"), objc_msgSend(wrapperCopy, "type")];
    v58 = v15;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v24 = [v25 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
    goto LABEL_17;
  }

  version = [(VCPVNImageprintWrapper *)self version];
  if (version != [wrapperCopy version])
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - mismatched versions (%d vs %d)", -[VCPVNImageprintWrapper version](self, "version"), objc_msgSend(wrapperCopy, "version")];
      v56 = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v24 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
      goto LABEL_17;
    }

LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  v11 = objc_opt_class();
  type2 = [(VCPVNImageprintWrapper *)self type];
  data = [(VCPVNImageprintWrapper *)self data];
  v44 = 0;
  v14 = [v11 generateVNImageprintWithType:type2 archiveData:data andError:&v44];
  v15 = v44;

  if (v14 && !v15)
  {
    v16 = objc_opt_class();
    type3 = [wrapperCopy type];
    data2 = [wrapperCopy data];
    v43 = 0;
    v19 = [v16 generateVNImageprintWithType:type3 archiveData:data2 andError:&v43];
    v15 = v43;

    if (v19 && !v15)
    {
      if ([(VCPVNImageprintWrapper *)self type])
      {
        goto LABEL_38;
      }

      v20 = v14;
      v21 = v19;
      if ([v20 isValidTorsoprint])
      {
        v22 = [v20 isValidFaceprint] ^ 1;
      }

      else
      {
        v22 = 0;
      }

      if ([v20 isValidFaceprint])
      {
        isValidTorsoprint = [v20 isValidTorsoprint];
      }

      else
      {
        isValidTorsoprint = 1;
      }

      if ([v21 isValidTorsoprint])
      {
        v33 = [v21 isValidFaceprint] ^ 1;
      }

      else
      {
        v33 = 0;
      }

      if ([v21 isValidFaceprint])
      {
        if ([v21 isValidTorsoprint] & 1 | ((v22 & 1) == 0) && ((v33 ^ 1 | isValidTorsoprint) & 1) != 0)
        {
          goto LABEL_37;
        }
      }

      else if (isValidTorsoprint & 1 | ((v33 & 1) == 0))
      {
LABEL_37:

LABEL_38:
        v42 = 0;
        v20 = [v14 computeDistance:v19 withDistanceFunction:0 error:&v42];
        v34 = v42;
        v15 = v34;
        if (v20)
        {
          v35 = v34 == 0;
        }

        else
        {
          v35 = 0;
        }

        v27 = v35;
        if (v35)
        {
          if (distance)
          {
            [v20 floatValue];
            *distance = v36;
          }
        }

        else if (error)
        {
          v37 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A578];
          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot get distance between faceprints. Distance function returns nil"];
          v46 = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          *error = [v37 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v39];
        }

        goto LABEL_62;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v40 = @"face-only";
        if (v22)
        {
          v41 = @"torso-only";
        }

        else
        {
          v41 = @"face-only";
        }

        if (v33)
        {
          v40 = @"torso-only";
        }

        *buf = 138412546;
        v48 = v41;
        v49 = 2112;
        v50 = v40;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Incomparable images: this - %@ vs that - %@", buf, 0x16u);
      }

      if (distance)
      {
        *distance = 1.0;
      }

      v15 = 0;
      v27 = 1;
      v19 = v21;
      goto LABEL_62;
    }

    if (!error)
    {
      v27 = 0;
LABEL_63:

      goto LABEL_18;
    }

    v30 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - unarchive theOtherImageprint.data - %@", v15];
    v52 = v20;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    *error = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v31];

    v27 = 0;
LABEL_62:

    goto LABEL_63;
  }

  if (error)
  {
    v29 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - unarchive self.data - %@", v15];
    v54 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
    *error = v27 = 0;
    goto LABEL_62;
  }

  v27 = 0;
LABEL_18:

LABEL_20:
  return v27;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v12.receiver = self;
  v12.super_class = VCPVNImageprintWrapper;
  v4 = [(VCPVNImageprintWrapper *)&v12 description];
  v5 = [v3 stringWithString:v4];

  type = [(VCPVNImageprintWrapper *)self type];
  version = [(VCPVNImageprintWrapper *)self version];
  data = [(VCPVNImageprintWrapper *)self data];
  v9 = [data length];
  data2 = [(VCPVNImageprintWrapper *)self data];
  [v5 appendFormat:@"type: %lu, version: %d, and data[length:%lu]: <%p>", type, version, v9, data2];

  return v5;
}

@end