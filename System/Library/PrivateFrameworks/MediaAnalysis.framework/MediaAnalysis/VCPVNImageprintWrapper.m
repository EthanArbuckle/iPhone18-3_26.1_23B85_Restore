@interface VCPVNImageprintWrapper
+ (VCPVNImageprintWrapper)wrapperWithImageprintType:(unint64_t)a3 version:(int)a4 andData:(id)a5;
+ (id)generateVNImageprintWithType:(unint64_t)a3 archiveData:(id)a4 andError:(id *)a5;
- (BOOL)calculateDistance:(float *)a3 toWrapper:(id)a4 andError:(id *)a5;
- (VCPVNImageprintWrapper)initWithImageprintType:(unint64_t)a3 version:(int)a4 andData:(id)a5;
- (id)description;
@end

@implementation VCPVNImageprintWrapper

- (VCPVNImageprintWrapper)initWithImageprintType:(unint64_t)a3 version:(int)a4 andData:(id)a5
{
  v9 = a5;
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = VCPVNImageprintWrapper;
    v10 = [(VCPVNImageprintWrapper *)&v14 init];
    v11 = v10;
    if (v10)
    {
      v10->_type = a3;
      v10->_version = a4;
      objc_storeStrong(&v10->_data, a5);
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (VCPVNImageprintWrapper)wrapperWithImageprintType:(unint64_t)a3 version:(int)a4 andData:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [[a1 alloc] initWithImageprintType:a3 version:v5 andData:v8];

  return v9;
}

+ (id)generateVNImageprintWithType:(unint64_t)a3 archiveData:(id)a4 andError:(id *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!a3)
  {
    v8 = 0x1E6984520;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = 0x1E6984408;
LABEL_5:
    a5 = [objc_alloc(*v8) initWithState:v7 error:a5];
    goto LABEL_8;
  }

  if (a5)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPVNImageprintWrapper] Invalid imageprint type %lu", a3, *MEMORY[0x1E696A578]];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a5 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];

    a5 = 0;
  }

LABEL_8:

  return a5;
}

- (BOOL)calculateDistance:(float *)a3 toWrapper:(id)a4 andError:(id *)a5
{
  v60[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!v8)
  {
    if (!a5)
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
    *a5 = v24;
    goto LABEL_18;
  }

  v9 = [(VCPVNImageprintWrapper *)self type];
  if (v9 != [v8 type])
  {
    if (!a5)
    {
      goto LABEL_19;
    }

    v25 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - mismatched imageprint type (%lu vs %lu)", -[VCPVNImageprintWrapper type](self, "type"), objc_msgSend(v8, "type")];
    v58 = v15;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v24 = [v25 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
    goto LABEL_17;
  }

  v10 = [(VCPVNImageprintWrapper *)self version];
  if (v10 != [v8 version])
  {
    if (a5)
    {
      v26 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - mismatched versions (%d vs %d)", -[VCPVNImageprintWrapper version](self, "version"), objc_msgSend(v8, "version")];
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
  v12 = [(VCPVNImageprintWrapper *)self type];
  v13 = [(VCPVNImageprintWrapper *)self data];
  v44 = 0;
  v14 = [v11 generateVNImageprintWithType:v12 archiveData:v13 andError:&v44];
  v15 = v44;

  if (v14 && !v15)
  {
    v16 = objc_opt_class();
    v17 = [v8 type];
    v18 = [v8 data];
    v43 = 0;
    v19 = [v16 generateVNImageprintWithType:v17 archiveData:v18 andError:&v43];
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
        v32 = [v20 isValidTorsoprint];
      }

      else
      {
        v32 = 1;
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
        if ([v21 isValidTorsoprint] & 1 | ((v22 & 1) == 0) && ((v33 ^ 1 | v32) & 1) != 0)
        {
          goto LABEL_37;
        }
      }

      else if (v32 & 1 | ((v33 & 1) == 0))
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
          if (a3)
          {
            [v20 floatValue];
            *a3 = v36;
          }
        }

        else if (a5)
        {
          v37 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A578];
          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot get distance between faceprints. Distance function returns nil"];
          v46 = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          *a5 = [v37 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v39];
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

      if (a3)
      {
        *a3 = 1.0;
      }

      v15 = 0;
      v27 = 1;
      v19 = v21;
      goto LABEL_62;
    }

    if (!a5)
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
    *a5 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v31];

    v27 = 0;
LABEL_62:

    goto LABEL_63;
  }

  if (a5)
  {
    v29 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot calculate distance - unarchive self.data - %@", v15];
    v54 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
    *a5 = v27 = 0;
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

  v6 = [(VCPVNImageprintWrapper *)self type];
  v7 = [(VCPVNImageprintWrapper *)self version];
  v8 = [(VCPVNImageprintWrapper *)self data];
  v9 = [v8 length];
  v10 = [(VCPVNImageprintWrapper *)self data];
  [v5 appendFormat:@"type: %lu, version: %d, and data[length:%lu]: <%p>", v6, v7, v9, v10];

  return v5;
}

@end