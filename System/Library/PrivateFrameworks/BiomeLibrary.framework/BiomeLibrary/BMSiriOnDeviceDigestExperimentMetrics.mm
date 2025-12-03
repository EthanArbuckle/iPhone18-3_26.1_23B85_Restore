@interface BMSiriOnDeviceDigestExperimentMetrics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetrics)initWithEventMetadata:(id)metadata digestType:(id)type experimentId:(id)id treatmentIdUUID:(id)d deploymentId:(id)deploymentId deviceType:(id)deviceType programCode:(id)code digests:(id)self0;
- (BMSiriOnDeviceDigestExperimentMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_digestsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestExperimentMetrics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventMetadata = [(BMSiriOnDeviceDigestExperimentMetrics *)self eventMetadata];
    eventMetadata2 = [v5 eventMetadata];
    v8 = eventMetadata2;
    if (eventMetadata == eventMetadata2)
    {
    }

    else
    {
      eventMetadata3 = [(BMSiriOnDeviceDigestExperimentMetrics *)self eventMetadata];
      eventMetadata4 = [v5 eventMetadata];
      v11 = [eventMetadata3 isEqual:eventMetadata4];

      if (!v11)
      {
        goto LABEL_36;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetrics hasDigestType](self, "hasDigestType") || [v5 hasDigestType])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetrics *)self hasDigestType])
      {
        goto LABEL_36;
      }

      if (![v5 hasDigestType])
      {
        goto LABEL_36;
      }

      digestType = [(BMSiriOnDeviceDigestExperimentMetrics *)self digestType];
      if (digestType != [v5 digestType])
      {
        goto LABEL_36;
      }
    }

    experimentId = [(BMSiriOnDeviceDigestExperimentMetrics *)self experimentId];
    experimentId2 = [v5 experimentId];
    v16 = experimentId2;
    if (experimentId == experimentId2)
    {
    }

    else
    {
      experimentId3 = [(BMSiriOnDeviceDigestExperimentMetrics *)self experimentId];
      experimentId4 = [v5 experimentId];
      v19 = [experimentId3 isEqual:experimentId4];

      if (!v19)
      {
        goto LABEL_36;
      }
    }

    treatmentIdUUID = [(BMSiriOnDeviceDigestExperimentMetrics *)self treatmentIdUUID];
    treatmentIdUUID2 = [v5 treatmentIdUUID];
    v22 = treatmentIdUUID2;
    if (treatmentIdUUID == treatmentIdUUID2)
    {
    }

    else
    {
      treatmentIdUUID3 = [(BMSiriOnDeviceDigestExperimentMetrics *)self treatmentIdUUID];
      treatmentIdUUID4 = [v5 treatmentIdUUID];
      v25 = [treatmentIdUUID3 isEqual:treatmentIdUUID4];

      if (!v25)
      {
        goto LABEL_36;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetrics hasDeploymentId](self, "hasDeploymentId") || [v5 hasDeploymentId])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetrics *)self hasDeploymentId])
      {
        goto LABEL_36;
      }

      if (![v5 hasDeploymentId])
      {
        goto LABEL_36;
      }

      deploymentId = [(BMSiriOnDeviceDigestExperimentMetrics *)self deploymentId];
      if (deploymentId != [v5 deploymentId])
      {
        goto LABEL_36;
      }
    }

    deviceType = [(BMSiriOnDeviceDigestExperimentMetrics *)self deviceType];
    deviceType2 = [v5 deviceType];
    v29 = deviceType2;
    if (deviceType == deviceType2)
    {
    }

    else
    {
      deviceType3 = [(BMSiriOnDeviceDigestExperimentMetrics *)self deviceType];
      deviceType4 = [v5 deviceType];
      v32 = [deviceType3 isEqual:deviceType4];

      if (!v32)
      {
        goto LABEL_36;
      }
    }

    if (!-[BMSiriOnDeviceDigestExperimentMetrics hasProgramCode](self, "hasProgramCode") && ![v5 hasProgramCode] || -[BMSiriOnDeviceDigestExperimentMetrics hasProgramCode](self, "hasProgramCode") && objc_msgSend(v5, "hasProgramCode") && (v33 = -[BMSiriOnDeviceDigestExperimentMetrics programCode](self, "programCode"), v33 == objc_msgSend(v5, "programCode")))
    {
      digests = [(BMSiriOnDeviceDigestExperimentMetrics *)self digests];
      digests2 = [v5 digests];
      if (digests == digests2)
      {
        v12 = 1;
      }

      else
      {
        digests3 = [(BMSiriOnDeviceDigestExperimentMetrics *)self digests];
        digests4 = [v5 digests];
        v12 = [digests3 isEqual:digests4];
      }

      goto LABEL_37;
    }

LABEL_36:
    v12 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v12 = 0;
LABEL_38:

  return v12;
}

- (id)jsonDictionary
{
  v31[8] = *MEMORY[0x1E69E9840];
  eventMetadata = [(BMSiriOnDeviceDigestExperimentMetrics *)self eventMetadata];
  jsonDictionary = [eventMetadata jsonDictionary];

  if ([(BMSiriOnDeviceDigestExperimentMetrics *)self hasDigestType])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetrics digestType](self, "digestType")}];
  }

  else
  {
    v5 = 0;
  }

  experimentId = [(BMSiriOnDeviceDigestExperimentMetrics *)self experimentId];
  treatmentIdUUID = [(BMSiriOnDeviceDigestExperimentMetrics *)self treatmentIdUUID];
  if ([(BMSiriOnDeviceDigestExperimentMetrics *)self hasDeploymentId])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriOnDeviceDigestExperimentMetrics deploymentId](self, "deploymentId")}];
  }

  else
  {
    v8 = 0;
  }

  deviceType = [(BMSiriOnDeviceDigestExperimentMetrics *)self deviceType];
  if ([(BMSiriOnDeviceDigestExperimentMetrics *)self hasProgramCode])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetrics programCode](self, "programCode")}];
  }

  else
  {
    v10 = 0;
  }

  _digestsJSONArray = [(BMSiriOnDeviceDigestExperimentMetrics *)self _digestsJSONArray];
  v30[0] = @"eventMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v31[0] = null;
  v30[1] = @"digestType";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = jsonDictionary;
  v24 = null2;
  v31[1] = null2;
  v30[2] = @"experimentId";
  null3 = experimentId;
  if (!experimentId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v5;
  v23 = null3;
  v31[2] = null3;
  v30[3] = @"treatmentIdUUID";
  null4 = treatmentIdUUID;
  if (!treatmentIdUUID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = experimentId;
  v31[3] = null4;
  v30[4] = @"deploymentId";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = treatmentIdUUID;
  v31[4] = null5;
  v30[5] = @"deviceType";
  null6 = deviceType;
  if (!deviceType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = null6;
  v30[6] = @"programCode";
  null7 = v10;
  if (!v10)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v30[7] = @"digests";
  null8 = _digestsJSONArray;
  if (!_digestsJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null8;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  if (_digestsJSONArray)
  {
    if (v10)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!deviceType)
  {
  }

  if (!v8)
  {
  }

  if (!v26)
  {
  }

  if (!v27)
  {
  }

  if (v28)
  {
    if (v29)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v29)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_digestsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  digests = [(BMSiriOnDeviceDigestExperimentMetrics *)self digests];
  v5 = [digests countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(digests);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [digests countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriOnDeviceDigestExperimentMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v151[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy = self;
        v26 = *MEMORY[0x1E698F240];
        v150 = *MEMORY[0x1E696A578];
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"eventMetadata"];
        v151[0] = v7;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v151 forKeys:&v150 count:1];
        v27 = v26;
        self = selfCopy;
        v28 = [v24 initWithDomain:v27 code:2 userInfo:v21];
        selfCopy3 = 0;
        *error = v28;
        goto LABEL_91;
      }

      selfCopy3 = 0;
      goto LABEL_92;
    }

    v21 = v6;
    v130 = 0;
    v7 = [[BMSiriOnDeviceDigestExperimentMetricsEventMetadata alloc] initWithJSONDictionary:v21 error:&v130];
    v22 = v130;
    if (v22)
    {
      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      selfCopy3 = 0;
      goto LABEL_91;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"digestType"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = v8;
        v43 = *MEMORY[0x1E698F240];
        v148 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"digestType"];
        v149 = v39;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v45 = v43;
        v8 = v42;
        v122 = v44;
        v46 = [v41 initWithDomain:v45 code:2 userInfo:?];
        v21 = 0;
        selfCopy3 = 0;
        *error = v46;
        goto LABEL_89;
      }

      v21 = 0;
      selfCopy3 = 0;
      goto LABEL_90;
    }

    v121 = v8;
  }

  else
  {
    v121 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
  v122 = v9;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = v8;
        v49 = *MEMORY[0x1E698F240];
        v146 = *MEMORY[0x1E696A578];
        v50 = v7;
        v51 = objc_alloc(MEMORY[0x1E696AEC0]);
        v104 = objc_opt_class();
        v52 = v51;
        v7 = v50;
        v53 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v104, @"experimentId"];
        v147 = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v55 = v49;
        v8 = v48;
        v40 = v53;
        v120 = v54;
        v56 = [v47 initWithDomain:v55 code:2 userInfo:?];
        v39 = 0;
        selfCopy3 = 0;
        *error = v56;
        v21 = v121;
        goto LABEL_88;
      }

      v39 = 0;
      selfCopy3 = 0;
      v21 = v121;
      goto LABEL_89;
    }

    v118 = v10;
  }

  else
  {
    v118 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"treatmentIdUUID"];
  v120 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = v8;
        v59 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v60 = v7;
        v61 = objc_alloc(MEMORY[0x1E696AEC0]);
        v105 = objc_opt_class();
        v62 = v61;
        v7 = v60;
        v119 = [v62 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v105, @"treatmentIdUUID"];
        v145 = v119;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v64 = v59;
        v8 = v58;
        v65 = [v57 initWithDomain:v64 code:2 userInfo:v63];
        v40 = 0;
        selfCopy3 = 0;
        *error = v65;
        v13 = v63;
        v21 = v121;
        v39 = v118;
        goto LABEL_87;
      }

      v40 = 0;
      selfCopy3 = 0;
      v21 = v121;
      v39 = v118;
      goto LABEL_88;
    }

    v115 = v12;
  }

  else
  {
    v115 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
  v124 = v13;
  selfCopy2 = self;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = v8;
        v68 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        v69 = v7;
        v70 = objc_alloc(MEMORY[0x1E696AEC0]);
        v106 = objc_opt_class();
        v71 = v70;
        v7 = v69;
        v116 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v106, @"deploymentId"];
        v143 = v116;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
        v73 = v68;
        v8 = v67;
        v114 = v72;
        v74 = [v66 initWithDomain:v73 code:2 userInfo:?];
        v119 = 0;
        selfCopy3 = 0;
        *error = v74;
        v21 = v121;
        v39 = v118;
        v40 = v115;
        goto LABEL_86;
      }

      v119 = 0;
      selfCopy3 = 0;
      v21 = v121;
      v39 = v118;
      v40 = v115;
      goto LABEL_87;
    }

    v119 = v13;
  }

  else
  {
    v119 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
  v114 = v14;
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v75 = objc_alloc(MEMORY[0x1E696ABC0]);
        v76 = v8;
        v77 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v78 = v7;
        v79 = objc_alloc(MEMORY[0x1E696AEC0]);
        v107 = objc_opt_class();
        v80 = v79;
        v7 = v78;
        v113 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v107, @"deviceType"];
        v141 = v113;
        v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v82 = v77;
        v8 = v76;
        v112 = v81;
        v83 = [v75 initWithDomain:v82 code:2 userInfo:?];
        v116 = 0;
        selfCopy3 = 0;
        *error = v83;
        v21 = v121;
        self = selfCopy2;
        v39 = v118;
        v40 = v115;
        goto LABEL_85;
      }

      v116 = 0;
      selfCopy3 = 0;
      v21 = v121;
      self = selfCopy2;
      v39 = v118;
      v40 = v115;
      goto LABEL_86;
    }

    v116 = v15;
  }

  else
  {
    v116 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
  v110 = v8;
  v111 = v7;
  v112 = v16;
  if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v113 = 0;
        selfCopy3 = 0;
        v21 = v121;
        self = selfCopy2;
        v39 = v118;
        v40 = v115;
        goto LABEL_85;
      }

      v84 = objc_alloc(MEMORY[0x1E696ABC0]);
      v85 = v6;
      v86 = *MEMORY[0x1E698F240];
      v138 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"programCode"];
      v139 = v18;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v87 = v86;
      v6 = v85;
      v113 = 0;
      selfCopy3 = 0;
      *error = [v84 initWithDomain:v87 code:2 userInfo:v29];
      v21 = v121;
      self = selfCopy2;
      v39 = v118;
      goto LABEL_82;
    }

    v113 = v17;
  }

  else
  {
    v113 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"digests"];
  null = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null];

  self = selfCopy2;
  if (!v20)
  {
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v108 = v6;
      v109 = dictionaryCopy;
      goto LABEL_42;
    }

    if (!error)
    {
      selfCopy3 = 0;
      v21 = v121;
      v39 = v118;
      v40 = v115;
      goto LABEL_84;
    }

    v100 = objc_alloc(MEMORY[0x1E696ABC0]);
    v101 = *MEMORY[0x1E698F240];
    v136 = *MEMORY[0x1E696A578];
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"digests"];
    v137 = v29;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    v103 = v102 = v6;
    *error = [v100 initWithDomain:v101 code:2 userInfo:v103];

    v6 = v102;
LABEL_81:
    selfCopy3 = 0;
    v21 = v121;
    v39 = v118;
LABEL_82:
    v40 = v115;
    goto LABEL_83;
  }

  v108 = v6;
  v109 = dictionaryCopy;

  v18 = 0;
LABEL_42:
  v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v18 = v18;
  v30 = [v18 countByEnumeratingWithState:&v126 objects:v135 count:16];
  if (!v30)
  {
    goto LABEL_52;
  }

  v31 = v30;
  v32 = *v127;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v127 != v32)
      {
        objc_enumerationMutation(v18);
      }

      v34 = *(*(&v126 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v108;
        dictionaryCopy = v109;
        self = selfCopy2;
        errorCopy2 = error;
        if (error)
        {
          v89 = v108;
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"digests"];
          v134 = v35;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v134;
          v94 = &v133;
LABEL_75:
          v95 = [v92 dictionaryWithObjects:v93 forKeys:v94 count:1];
          v96 = v90;
          v6 = v89;
          *errorCopy2 = [v96 initWithDomain:v91 code:2 userInfo:v95];
LABEL_79:

          v13 = v124;
        }

LABEL_80:

        goto LABEL_81;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = v108;
        dictionaryCopy = v109;
        self = selfCopy2;
        errorCopy2 = error;
        if (error)
        {
          v89 = v108;
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"digests"];
          v132 = v35;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v132;
          v94 = &v131;
          goto LABEL_75;
        }

        goto LABEL_80;
      }

      v35 = v34;
      v36 = [BMSiriOnDeviceDigestExperimentMetricsExperimentDigest alloc];
      v125 = 0;
      v37 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)v36 initWithJSONDictionary:v35 error:&v125];
      v38 = v125;
      if (v38)
      {
        v95 = v38;
        if (error)
        {
          v97 = v38;
          *error = v95;
        }

        v6 = v108;
        dictionaryCopy = v109;
        self = selfCopy2;
        goto LABEL_79;
      }

      [v29 addObject:v37];

      v13 = v124;
    }

    v31 = [v18 countByEnumeratingWithState:&v126 objects:v135 count:16];
    self = selfCopy2;
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_52:

  v21 = v121;
  v39 = v118;
  v40 = v115;
  self = [(BMSiriOnDeviceDigestExperimentMetrics *)self initWithEventMetadata:v111 digestType:v121 experimentId:v118 treatmentIdUUID:v115 deploymentId:v119 deviceType:v116 programCode:v113 digests:v29];
  selfCopy3 = self;
  v6 = v108;
  dictionaryCopy = v109;
LABEL_83:

  v7 = v111;
LABEL_84:

  v8 = v110;
LABEL_85:

LABEL_86:
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
  v98 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetrics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_eventMetadata)
  {
    v19 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self->_eventMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasDigestType)
  {
    digestType = self->_digestType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentIdUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDeploymentId)
  {
    deploymentId = self->_deploymentId;
    PBDataWriterWriteInt64Field();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasProgramCode)
  {
    programCode = self->_programCode;
    PBDataWriterWriteUint32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_digests;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v19 = 0;
        PBDataWriterPlaceMark();
        [v13 writeTo:{toCopy, v15}];
        PBDataWriterRecallMark();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v51.receiver = self;
  v51.super_class = BMSiriOnDeviceDigestExperimentMetrics;
  v5 = [(BMEventBase *)&v51 init];
  if (!v5)
  {
    goto LABEL_84;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v52 & 0x7F) << v8;
        if ((v52 & 0x80) == 0)
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
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        if (v16 <= 6)
        {
          if (v16 == 5)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v5->_hasDeploymentId = 1;
            while (1)
            {
              LOBYTE(v52) = 0;
              v33 = [fromCopy position] + 1;
              if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v32 |= (v52 & 0x7F) << v30;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v14 = v31++ >= 9;
              if (v14)
              {
                v36 = 0;
                goto LABEL_71;
              }
            }

            if ([fromCopy hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_71:
            v5->_deploymentId = v36;
            goto LABEL_81;
          }

          if (v16 == 6)
          {
            v24 = PBReaderReadString();
            v25 = 64;
LABEL_56:
            v37 = *(&v5->super.super.isa + v25);
            *(&v5->super.super.isa + v25) = v24;

            goto LABEL_81;
          }

          goto LABEL_66;
        }

        if (v16 == 7)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v5->_hasProgramCode = 1;
          while (1)
          {
            LOBYTE(v52) = 0;
            v41 = [fromCopy position] + 1;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v40 |= (v52 & 0x7F) << v38;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v14 = v39++ >= 9;
            if (v14)
            {
              v23 = 0;
              goto LABEL_75;
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

LABEL_75:
          v44 = 28;
          goto LABEL_80;
        }

        if (v16 != 8)
        {
          goto LABEL_66;
        }

        v52 = 0;
        v53 = 0;
        if (!PBReaderPlaceMark() || (v26 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_86:

          goto LABEL_83;
        }

        v27 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v24 = PBReaderReadString();
            v25 = 40;
            goto LABEL_56;
          }

          if (v16 == 4)
          {
            v24 = PBReaderReadString();
            v25 = 48;
            goto LABEL_56;
          }

          goto LABEL_66;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v5->_hasDigestType = 1;
            while (1)
            {
              LOBYTE(v52) = 0;
              v20 = [fromCopy position] + 1;
              if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v19 |= (v52 & 0x7F) << v17;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v14 = v18++ >= 9;
              if (v14)
              {
                v23 = 0;
                goto LABEL_79;
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

LABEL_79:
            v44 = 24;
LABEL_80:
            *(&v5->super.super.isa + v44) = v23;
            goto LABEL_81;
          }

LABEL_66:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_86;
          }

          goto LABEL_81;
        }

        v52 = 0;
        v53 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_86;
        }

        v28 = [[BMSiriOnDeviceDigestExperimentMetricsEventMetadata alloc] initByReadFrom:fromCopy];
        if (!v28)
        {
          goto LABEL_86;
        }

        eventMetadata = v5->_eventMetadata;
        v5->_eventMetadata = v28;

        PBReaderRecallMark();
      }

LABEL_81:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v46 = [v6 copy];
  digests = v5->_digests;
  v5->_digests = v46;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_83:
    v49 = 0;
  }

  else
  {
LABEL_84:
    v49 = v5;
  }

  return v49;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventMetadata = [(BMSiriOnDeviceDigestExperimentMetrics *)self eventMetadata];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetrics digestType](self, "digestType")}];
  experimentId = [(BMSiriOnDeviceDigestExperimentMetrics *)self experimentId];
  treatmentIdUUID = [(BMSiriOnDeviceDigestExperimentMetrics *)self treatmentIdUUID];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriOnDeviceDigestExperimentMetrics deploymentId](self, "deploymentId")}];
  deviceType = [(BMSiriOnDeviceDigestExperimentMetrics *)self deviceType];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetrics programCode](self, "programCode")}];
  digests = [(BMSiriOnDeviceDigestExperimentMetrics *)self digests];
  v12 = [v3 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetrics with eventMetadata: %@, digestType: %@, experimentId: %@, treatmentIdUUID: %@, deploymentId: %@, deviceType: %@, programCode: %@, digests: %@", eventMetadata, v5, experimentId, treatmentIdUUID, v8, deviceType, v10, digests];

  return v12;
}

- (BMSiriOnDeviceDigestExperimentMetrics)initWithEventMetadata:(id)metadata digestType:(id)type experimentId:(id)id treatmentIdUUID:(id)d deploymentId:(id)deploymentId deviceType:(id)deviceType programCode:(id)code digests:(id)self0
{
  metadataCopy = metadata;
  typeCopy = type;
  idCopy = id;
  dCopy = d;
  deploymentIdCopy = deploymentId;
  deviceTypeCopy = deviceType;
  codeCopy = code;
  digestsCopy = digests;
  v30.receiver = self;
  v30.super_class = BMSiriOnDeviceDigestExperimentMetrics;
  v21 = [(BMEventBase *)&v30 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_eventMetadata, metadata);
    if (typeCopy)
    {
      v21->_hasDigestType = 1;
      unsignedIntValue = [typeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v21->_hasDigestType = 0;
    }

    v21->_digestType = unsignedIntValue;
    objc_storeStrong(&v21->_experimentId, id);
    objc_storeStrong(&v21->_treatmentIdUUID, d);
    if (deploymentIdCopy)
    {
      v21->_hasDeploymentId = 1;
      longLongValue = [deploymentIdCopy longLongValue];
    }

    else
    {
      v21->_hasDeploymentId = 0;
      longLongValue = -1;
    }

    v21->_deploymentId = longLongValue;
    objc_storeStrong(&v21->_deviceType, deviceType);
    if (codeCopy)
    {
      v21->_hasProgramCode = 1;
      unsignedIntValue2 = [codeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v21->_hasProgramCode = 0;
    }

    v21->_programCode = unsignedIntValue2;
    objc_storeStrong(&v21->_digests, digests);
  }

  return v21;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"digestType" number:2 type:4 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentId" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"treatmentIdUUID" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deploymentId" number:5 type:3 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"programCode" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"digests" number:8 type:14 subMessageClass:objc_opt_class()];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"eventMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_747];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"digestType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"treatmentIdUUID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deploymentId" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:3 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"programCode" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"digests_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_749_54721];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __48__BMSiriOnDeviceDigestExperimentMetrics_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _digestsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __48__BMSiriOnDeviceDigestExperimentMetrics_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 eventMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSiriOnDeviceDigestExperimentMetrics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end