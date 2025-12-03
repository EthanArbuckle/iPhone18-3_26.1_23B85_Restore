@interface BMDataCollectorTelemetryUploadTelemetry
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDataCollectorTelemetryUploadTelemetry)initWithEventsProcessed:(id)processed eventsSkippedRedactedAtUpload:(id)upload eventsUploaded:(id)uploaded bytesUploaded:(id)bytesUploaded batchesUploaded:(id)batchesUploaded batchesFailedToUpload:(id)toUpload latenciesInHours:(id)hours;
- (BMDataCollectorTelemetryUploadTelemetry)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_latenciesInHoursJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDataCollectorTelemetryUploadTelemetry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMDataCollectorTelemetryUploadTelemetry hasEventsProcessed](self, "hasEventsProcessed") && ![v5 hasEventsProcessed] || -[BMDataCollectorTelemetryUploadTelemetry hasEventsProcessed](self, "hasEventsProcessed") && objc_msgSend(v5, "hasEventsProcessed") && (v6 = -[BMDataCollectorTelemetryUploadTelemetry eventsProcessed](self, "eventsProcessed"), v6 == objc_msgSend(v5, "eventsProcessed"))) && (!-[BMDataCollectorTelemetryUploadTelemetry hasEventsSkippedRedactedAtUpload](self, "hasEventsSkippedRedactedAtUpload") && !objc_msgSend(v5, "hasEventsSkippedRedactedAtUpload") || -[BMDataCollectorTelemetryUploadTelemetry hasEventsSkippedRedactedAtUpload](self, "hasEventsSkippedRedactedAtUpload") && objc_msgSend(v5, "hasEventsSkippedRedactedAtUpload") && (v7 = -[BMDataCollectorTelemetryUploadTelemetry eventsSkippedRedactedAtUpload](self, "eventsSkippedRedactedAtUpload"), v7 == objc_msgSend(v5, "eventsSkippedRedactedAtUpload"))) && (!-[BMDataCollectorTelemetryUploadTelemetry hasEventsUploaded](self, "hasEventsUploaded") && !objc_msgSend(v5, "hasEventsUploaded") || -[BMDataCollectorTelemetryUploadTelemetry hasEventsUploaded](self, "hasEventsUploaded") && objc_msgSend(v5, "hasEventsUploaded") && (v8 = -[BMDataCollectorTelemetryUploadTelemetry eventsUploaded](self, "eventsUploaded"), v8 == objc_msgSend(v5, "eventsUploaded"))) && (!-[BMDataCollectorTelemetryUploadTelemetry hasBytesUploaded](self, "hasBytesUploaded") && !objc_msgSend(v5, "hasBytesUploaded") || -[BMDataCollectorTelemetryUploadTelemetry hasBytesUploaded](self, "hasBytesUploaded") && objc_msgSend(v5, "hasBytesUploaded") && (v9 = -[BMDataCollectorTelemetryUploadTelemetry bytesUploaded](self, "bytesUploaded"), v9 == objc_msgSend(v5, "bytesUploaded"))) && (!-[BMDataCollectorTelemetryUploadTelemetry hasBatchesUploaded](self, "hasBatchesUploaded") && !objc_msgSend(v5, "hasBatchesUploaded") || -[BMDataCollectorTelemetryUploadTelemetry hasBatchesUploaded](self, "hasBatchesUploaded") && objc_msgSend(v5, "hasBatchesUploaded") && (v10 = -[BMDataCollectorTelemetryUploadTelemetry batchesUploaded](self, "batchesUploaded"), v10 == objc_msgSend(v5, "batchesUploaded"))) && (!-[BMDataCollectorTelemetryUploadTelemetry hasBatchesFailedToUpload](self, "hasBatchesFailedToUpload") && !objc_msgSend(v5, "hasBatchesFailedToUpload") || -[BMDataCollectorTelemetryUploadTelemetry hasBatchesFailedToUpload](self, "hasBatchesFailedToUpload") && objc_msgSend(v5, "hasBatchesFailedToUpload") && (v11 = -[BMDataCollectorTelemetryUploadTelemetry batchesFailedToUpload](self, "batchesFailedToUpload"), v11 == objc_msgSend(v5, "batchesFailedToUpload"))))
    {
      latenciesInHours = [(BMDataCollectorTelemetryUploadTelemetry *)self latenciesInHours];
      latenciesInHours2 = [v5 latenciesInHours];
      if (latenciesInHours == latenciesInHours2)
      {
        v16 = 1;
      }

      else
      {
        latenciesInHours3 = [(BMDataCollectorTelemetryUploadTelemetry *)self latenciesInHours];
        latenciesInHours4 = [v5 latenciesInHours];
        v16 = [latenciesInHours3 isEqual:latenciesInHours4];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  if ([(BMDataCollectorTelemetryUploadTelemetry *)self hasEventsProcessed])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry eventsProcessed](self, "eventsProcessed")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDataCollectorTelemetryUploadTelemetry *)self hasEventsSkippedRedactedAtUpload])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry eventsSkippedRedactedAtUpload](self, "eventsSkippedRedactedAtUpload")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDataCollectorTelemetryUploadTelemetry *)self hasEventsUploaded])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry eventsUploaded](self, "eventsUploaded")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDataCollectorTelemetryUploadTelemetry *)self hasBytesUploaded])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry bytesUploaded](self, "bytesUploaded")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMDataCollectorTelemetryUploadTelemetry *)self hasBatchesUploaded])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry batchesUploaded](self, "batchesUploaded")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDataCollectorTelemetryUploadTelemetry *)self hasBatchesFailedToUpload])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry batchesFailedToUpload](self, "batchesFailedToUpload")}];
  }

  else
  {
    v8 = 0;
  }

  _latenciesInHoursJSONArray = [(BMDataCollectorTelemetryUploadTelemetry *)self _latenciesInHoursJSONArray];
  v25[0] = @"eventsProcessed";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v26[0] = null;
  v25[1] = @"eventsSkippedRedactedAtUpload";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = null2;
  v26[1] = null2;
  v25[2] = @"eventsUploaded";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v26[2] = null3;
  v25[3] = @"bytesUploaded";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v5;
  v26[3] = null4;
  v25[4] = @"batchesUploaded";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"batchesFailedToUpload";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"latenciesInHours";
  null7 = _latenciesInHoursJSONArray;
  if (!_latenciesInHoursJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (_latenciesInHoursJSONArray)
  {
    if (v8)
    {
      goto LABEL_35;
    }

LABEL_46:

    if (v7)
    {
      goto LABEL_36;
    }

    goto LABEL_47;
  }

  if (!v8)
  {
    goto LABEL_46;
  }

LABEL_35:
  if (v7)
  {
    goto LABEL_36;
  }

LABEL_47:

LABEL_36:
  if (!v6)
  {
  }

  if (!v22)
  {
  }

  if (v23)
  {
    if (v24)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (v24)
    {
      goto LABEL_42;
    }
  }

LABEL_42:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_latenciesInHoursJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  latenciesInHours = [(BMDataCollectorTelemetryUploadTelemetry *)self latenciesInHours];
  v5 = [latenciesInHours countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(latenciesInHours);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [latenciesInHours countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMDataCollectorTelemetryUploadTelemetry)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v114[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"eventsProcessed"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v113 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsProcessed"];
        v114[0] = v28;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:&v113 count:1];
        v7 = 0;
        selfCopy2 = 0;
        *error = [v31 initWithDomain:v32 code:2 userInfo:v8];
        goto LABEL_73;
      }

      v7 = 0;
      selfCopy2 = 0;
      goto LABEL_74;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"eventsSkippedRedactedAtUpload"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsSkippedRedactedAtUpload"];
        v112 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v37 = v33;
        v10 = v35;
        v38 = v34;
        v9 = v36;
        v28 = 0;
        selfCopy2 = 0;
        *error = [v37 initWithDomain:v38 code:2 userInfo:v36];
        goto LABEL_72;
      }

      v28 = 0;
      selfCopy2 = 0;
      goto LABEL_73;
    }

    v90 = v8;
  }

  else
  {
    v90 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"eventsUploaded"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v10 = 0;
        selfCopy2 = 0;
        v28 = v90;
        goto LABEL_72;
      }

      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v109 = *MEMORY[0x1E696A578];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsUploaded"];
      v110 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v42 = v89;
      v88 = v41;
      v43 = [v42 initWithDomain:v39 code:2 userInfo:?];
      v10 = 0;
      selfCopy2 = 0;
      *error = v43;
      errorCopy = v40;
      goto LABEL_78;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"bytesUploaded"];
  v84 = v9;
  v85 = v10;
  v88 = v11;
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = v12;
        goto LABEL_13;
      }

      errorCopy = error;
      if (error)
      {
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v107 = *MEMORY[0x1E696A578];
        v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bytesUploaded"];
        v108 = v87;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v52 = v49;
        v53 = v50;
        v9 = v84;
        v10 = v85;
        v86 = v51;
        selfCopy2 = 0;
        *error = [v52 initWithDomain:v53 code:2 userInfo:?];
        errorCopy = 0;
        v28 = v90;
        goto LABEL_70;
      }

      selfCopy2 = 0;
LABEL_78:
      v28 = v90;
      goto LABEL_71;
    }
  }

  v82 = 0;
LABEL_13:
  v13 = [dictionaryCopy objectForKeyedSubscript:@"batchesUploaded"];
  v86 = v13;
  if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v87 = 0;
        selfCopy2 = 0;
        v28 = v90;
        errorCopy = v82;
        goto LABEL_70;
      }

      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E698F240];
      v105 = *MEMORY[0x1E696A578];
      v57 = v8;
      v58 = objc_alloc(MEMORY[0x1E696AEC0]);
      v75 = objc_opt_class();
      v59 = v58;
      v8 = v57;
      v83 = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v75, @"batchesUploaded"];
      v106 = v83;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v61 = v55;
      v9 = v84;
      v81 = v60;
      v62 = [v61 initWithDomain:v56 code:2 userInfo:?];
      v87 = 0;
      selfCopy2 = 0;
      *error = v62;
      v28 = v90;
      goto LABEL_81;
    }

    v87 = v14;
  }

  else
  {
    v87 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"batchesFailedToUpload"];
  v80 = v8;
  v81 = v15;
  if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v83 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v63 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = v6;
      v65 = *MEMORY[0x1E698F240];
      v103 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batchesFailedToUpload"];
      v104 = v17;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v66 = v65;
      v6 = v64;
      v67 = [v63 initWithDomain:v66 code:2 userInfo:v20];
      v83 = 0;
      selfCopy2 = 0;
      *error = v67;
      goto LABEL_66;
    }

    v83 = 0;
    selfCopy2 = 0;
    v28 = v90;
LABEL_81:
    v10 = v85;
    errorCopy = v82;
    goto LABEL_69;
  }

  v83 = v16;
LABEL_19:
  v17 = [dictionaryCopy objectForKeyedSubscript:@"latenciesInHours"];
  null = [MEMORY[0x1E695DFB0] null];
  v19 = [v17 isEqual:null];

  if (!v19)
  {
    if (!v17)
    {
      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_31;
    }

    if (!error)
    {
      selfCopy2 = 0;
      v28 = v90;
      v10 = v85;
      errorCopy = v82;
      goto LABEL_68;
    }

    v68 = objc_alloc(MEMORY[0x1E696ABC0]);
    v69 = v6;
    v70 = *MEMORY[0x1E698F240];
    v101 = *MEMORY[0x1E696A578];
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"latenciesInHours"];
    v102 = v20;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v72 = v70;
    v6 = v69;
    *error = [v68 initWithDomain:v72 code:2 userInfo:v71];

    selfCopy2 = 0;
LABEL_66:
    v28 = v90;
    v10 = v85;
    errorCopy = v82;
    goto LABEL_67;
  }

  v17 = 0;
LABEL_31:
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v17 = v17;
  v21 = [v17 countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = v21;
  v23 = *v93;
  v78 = v6;
  v79 = dictionaryCopy;
  while (2)
  {
    v24 = v7;
    selfCopy = self;
    for (i = 0; i != v22; ++i)
    {
      if (*v93 != v23)
      {
        objc_enumerationMutation(v17);
      }

      v27 = *(*(&v92 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = selfCopy;
        v7 = v24;
        dictionaryCopy = v79;
        v28 = v90;
        errorCopy3 = error;
        errorCopy = v82;
        if (error)
        {
          v77 = objc_alloc(MEMORY[0x1E696ABC0]);
          v76 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"latenciesInHours"];
          v99 = v45;
          v46 = MEMORY[0x1E695DF20];
          v47 = &v99;
          v48 = &v98;
LABEL_57:
          v54 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:1];
          *errorCopy3 = [v77 initWithDomain:v76 code:2 userInfo:v54];
        }

LABEL_58:

        selfCopy2 = 0;
        v6 = v78;
        v10 = v85;
        goto LABEL_67;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy;
        v7 = v24;
        dictionaryCopy = v79;
        v28 = v90;
        errorCopy3 = error;
        errorCopy = v82;
        if (error)
        {
          v77 = objc_alloc(MEMORY[0x1E696ABC0]);
          v76 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"latenciesInHours"];
          v97 = v45;
          v46 = MEMORY[0x1E695DF20];
          v47 = &v97;
          v48 = &v96;
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      [v20 addObject:v27];
    }

    v22 = [v17 countByEnumeratingWithState:&v92 objects:v100 count:16];
    self = selfCopy;
    v7 = v24;
    v6 = v78;
    dictionaryCopy = v79;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v28 = v90;
  v10 = v85;
  errorCopy = v82;
  self = [(BMDataCollectorTelemetryUploadTelemetry *)self initWithEventsProcessed:v7 eventsSkippedRedactedAtUpload:v90 eventsUploaded:v85 bytesUploaded:v82 batchesUploaded:v87 batchesFailedToUpload:v83 latenciesInHours:v20];
  selfCopy2 = self;
LABEL_67:

LABEL_68:
  v8 = v80;
  v9 = v84;
LABEL_69:

LABEL_70:
LABEL_71:

LABEL_72:
LABEL_73:

LABEL_74:
  v73 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDataCollectorTelemetryUploadTelemetry *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasEventsProcessed)
  {
    eventsProcessed = self->_eventsProcessed;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasEventsSkippedRedactedAtUpload)
  {
    eventsSkippedRedactedAtUpload = self->_eventsSkippedRedactedAtUpload;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasEventsUploaded)
  {
    eventsUploaded = self->_eventsUploaded;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasBytesUploaded)
  {
    bytesUploaded = self->_bytesUploaded;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasBatchesUploaded)
  {
    batchesUploaded = self->_batchesUploaded;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasBatchesFailedToUpload)
  {
    batchesFailedToUpload = self->_batchesFailedToUpload;
    PBDataWriterWriteUint64Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_latenciesInHours;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v71.receiver = self;
  v71.super_class = BMDataCollectorTelemetryUploadTelemetry;
  v5 = [(BMEventBase *)&v71 init];
  if (!v5)
  {
    goto LABEL_125;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_123;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v72 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v72 & 0x7F) << v8;
        if ((v72 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_123;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasBytesUploaded = 1;
          while (1)
          {
            v72 = 0;
            v47 = [fromCopy position] + 1;
            if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 = (((v72 & 0x7F) << v44) | v46);
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v14 = v45++ >= 9;
            if (v14)
            {
              v23 = 0;
              goto LABEL_99;
            }
          }

          if ([fromCopy hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v46;
          }

LABEL_99:
          v62 = 56;
          goto LABEL_121;
        }

        if (v16 == 5)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v5->_hasBatchesUploaded = 1;
          while (1)
          {
            v72 = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 = (((v72 & 0x7F) << v17) | v19);
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v14 = v18++ >= 9;
            if (v14)
            {
              v23 = 0;
              goto LABEL_107;
            }
          }

          if ([fromCopy hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_107:
          v62 = 64;
LABEL_121:
          *(&v5->super.super.isa + v62) = v23;
          goto LABEL_122;
        }

        goto LABEL_63;
      }

      if (v16 == 6)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasBatchesFailedToUpload = 1;
        while (1)
        {
          v72 = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 = (((v72 & 0x7F) << v50) | v52);
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v14 = v51++ >= 9;
          if (v14)
          {
            v23 = 0;
            goto LABEL_103;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v52;
        }

LABEL_103:
        v62 = 72;
        goto LABEL_121;
      }

      if (v16 != 7)
      {
        goto LABEL_63;
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = MEMORY[0x1E696AD98];
      while (1)
      {
        v72 = 0;
        v34 = [fromCopy position] + 1;
        if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v32 |= (v72 & 0x7F) << v30;
        if ((v72 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v14 = v31++ >= 9;
        if (v14)
        {
          v37 = 0;
          goto LABEL_111;
        }
      }

      if ([fromCopy hasError])
      {
        v37 = 0;
      }

      else
      {
        v37 = v32;
      }

LABEL_111:
      v63 = [v33 numberWithUnsignedInt:v37];
      if (!v63)
      {
LABEL_127:

        goto LABEL_124;
      }

      v64 = v63;
      [v6 addObject:v63];

LABEL_122:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_123;
      }
    }

    switch(v16)
    {
      case 1:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasEventsProcessed = 1;
        while (1)
        {
          v72 = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 = (((v72 & 0x7F) << v38) | v40);
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v14 = v39++ >= 9;
          if (v14)
          {
            v23 = 0;
            goto LABEL_95;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v40;
        }

LABEL_95:
        v62 = 32;
        goto LABEL_121;
      case 2:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v5->_hasEventsSkippedRedactedAtUpload = 1;
        while (1)
        {
          v72 = 0;
          v59 = [fromCopy position] + 1;
          if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v58 = (((v72 & 0x7F) << v56) | v58);
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v14 = v57++ >= 9;
          if (v14)
          {
            v23 = 0;
            goto LABEL_120;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v58;
        }

LABEL_120:
        v62 = 40;
        goto LABEL_121;
      case 3:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasEventsUploaded = 1;
        while (1)
        {
          v72 = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 = (((v72 & 0x7F) << v24) | v26);
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v14 = v25++ >= 9;
          if (v14)
          {
            v23 = 0;
            goto LABEL_116;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_116:
        v62 = 48;
        goto LABEL_121;
    }

LABEL_63:
    if (!PBReaderSkipValueWithTag())
    {
      goto LABEL_127;
    }

    goto LABEL_122;
  }

LABEL_123:
  v66 = [v6 copy];
  latenciesInHours = v5->_latenciesInHours;
  v5->_latenciesInHours = v66;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_124:
    v69 = 0;
  }

  else
  {
LABEL_125:
    v69 = v5;
  }

  return v69;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry eventsProcessed](self, "eventsProcessed")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry eventsSkippedRedactedAtUpload](self, "eventsSkippedRedactedAtUpload")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry eventsUploaded](self, "eventsUploaded")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry bytesUploaded](self, "bytesUploaded")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry batchesUploaded](self, "batchesUploaded")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryUploadTelemetry batchesFailedToUpload](self, "batchesFailedToUpload")}];
  latenciesInHours = [(BMDataCollectorTelemetryUploadTelemetry *)self latenciesInHours];
  v11 = [v3 initWithFormat:@"BMDataCollectorTelemetryUploadTelemetry with eventsProcessed: %@, eventsSkippedRedactedAtUpload: %@, eventsUploaded: %@, bytesUploaded: %@, batchesUploaded: %@, batchesFailedToUpload: %@, latenciesInHours: %@", v4, v5, v6, v7, v8, v9, latenciesInHours];

  return v11;
}

- (BMDataCollectorTelemetryUploadTelemetry)initWithEventsProcessed:(id)processed eventsSkippedRedactedAtUpload:(id)upload eventsUploaded:(id)uploaded bytesUploaded:(id)bytesUploaded batchesUploaded:(id)batchesUploaded batchesFailedToUpload:(id)toUpload latenciesInHours:(id)hours
{
  processedCopy = processed;
  uploadCopy = upload;
  uploadedCopy = uploaded;
  bytesUploadedCopy = bytesUploaded;
  batchesUploadedCopy = batchesUploaded;
  toUploadCopy = toUpload;
  hoursCopy = hours;
  v30.receiver = self;
  v30.super_class = BMDataCollectorTelemetryUploadTelemetry;
  v22 = [(BMEventBase *)&v30 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (processedCopy)
    {
      v22->_hasEventsProcessed = 1;
      unsignedLongLongValue = [processedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v22->_hasEventsProcessed = 0;
    }

    v22->_eventsProcessed = unsignedLongLongValue;
    if (uploadCopy)
    {
      v22->_hasEventsSkippedRedactedAtUpload = 1;
      unsignedLongLongValue2 = [uploadCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v22->_hasEventsSkippedRedactedAtUpload = 0;
    }

    v22->_eventsSkippedRedactedAtUpload = unsignedLongLongValue2;
    if (uploadedCopy)
    {
      v22->_hasEventsUploaded = 1;
      unsignedLongLongValue3 = [uploadedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
      v22->_hasEventsUploaded = 0;
    }

    v22->_eventsUploaded = unsignedLongLongValue3;
    if (bytesUploadedCopy)
    {
      v22->_hasBytesUploaded = 1;
      unsignedLongLongValue4 = [bytesUploadedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue4 = 0;
      v22->_hasBytesUploaded = 0;
    }

    v22->_bytesUploaded = unsignedLongLongValue4;
    if (batchesUploadedCopy)
    {
      v22->_hasBatchesUploaded = 1;
      unsignedLongLongValue5 = [batchesUploadedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue5 = 0;
      v22->_hasBatchesUploaded = 0;
    }

    v22->_batchesUploaded = unsignedLongLongValue5;
    if (toUploadCopy)
    {
      v22->_hasBatchesFailedToUpload = 1;
      unsignedLongLongValue6 = [toUploadCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue6 = 0;
      v22->_hasBatchesFailedToUpload = 0;
    }

    v22->_batchesFailedToUpload = unsignedLongLongValue6;
    objc_storeStrong(&v22->_latenciesInHours, hours);
  }

  return v22;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsProcessed" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsSkippedRedactedAtUpload" number:2 type:5 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsUploaded" number:3 type:5 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bytesUploaded" number:4 type:5 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batchesUploaded" number:5 type:5 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batchesFailedToUpload" number:6 type:5 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latenciesInHours" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsProcessed" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsSkippedRedactedAtUpload" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsUploaded" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:5 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bytesUploaded" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:5 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batchesUploaded" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:5 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batchesFailedToUpload" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:5 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"latenciesInHours_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_111894];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __50__BMDataCollectorTelemetryUploadTelemetry_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _latenciesInHoursJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMDataCollectorTelemetryUploadTelemetry alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end