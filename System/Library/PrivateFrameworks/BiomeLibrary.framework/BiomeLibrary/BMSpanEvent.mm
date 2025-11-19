@interface BMSpanEvent
+ (BMSpanEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)columns;
+ (id)protoFields;
- (BMSpanEvent)initWithDeviceIdentifier:(id)a3 testKey:(id)a4 version:(id)a5 name:(id)a6 trialDeploymentId:(id)a7 trialExperimentId:(id)a8 trialTreatmentId:(id)a9 traceId:(id)a10 parentSpanId:(id)a11 spanId:(id)a12 privatizedStartTime:(id)a13 privatizedEndTime:(id)a14 intervalInMilliSeconds:(id)a15 errorString:(id)a16 errorCode:(id)a17 processName:(id)a18 startMemoryLevelInKB:(id)a19 endMemoryLevelInKB:(id)a20 memoryLevelDeltaInKB:(id)a21 gcdQueueName:(id)a22 qosClassName:(id)a23 relativePriority:(id)a24 projectName:(id)a25 attributes:(id)a26 infoEvents:(id)a27 warningEvents:(id)a28 debugEvents:(id)a29 errorEvents:(id)a30;
- (BMSpanEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_attributesJSONArray;
- (id)_debugEventsJSONArray;
- (id)_errorEventsJSONArray;
- (id)_infoEventsJSONArray;
- (id)_warningEventsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSpanEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSpanEvent *)self deviceIdentifier];
    v7 = [v5 deviceIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSpanEvent *)self deviceIdentifier];
      v10 = [v5 deviceIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_116;
      }
    }

    v13 = [(BMSpanEvent *)self testKey];
    v14 = [v5 testKey];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSpanEvent *)self testKey];
      v17 = [v5 testKey];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_116;
      }
    }

    v19 = [(BMSpanEvent *)self version];
    v20 = [v5 version];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSpanEvent *)self version];
      v23 = [v5 version];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_116;
      }
    }

    v25 = [(BMSpanEvent *)self name];
    v26 = [v5 name];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSpanEvent *)self name];
      v29 = [v5 name];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_116;
      }
    }

    v31 = [(BMSpanEvent *)self trialDeploymentId];
    v32 = [v5 trialDeploymentId];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMSpanEvent *)self trialDeploymentId];
      v35 = [v5 trialDeploymentId];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_116;
      }
    }

    v37 = [(BMSpanEvent *)self trialExperimentId];
    v38 = [v5 trialExperimentId];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMSpanEvent *)self trialExperimentId];
      v41 = [v5 trialExperimentId];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_116;
      }
    }

    v43 = [(BMSpanEvent *)self trialTreatmentId];
    v44 = [v5 trialTreatmentId];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMSpanEvent *)self trialTreatmentId];
      v47 = [v5 trialTreatmentId];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_116;
      }
    }

    v49 = [(BMSpanEvent *)self traceId];
    v50 = [v5 traceId];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMSpanEvent *)self traceId];
      v53 = [v5 traceId];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_116;
      }
    }

    v55 = [(BMSpanEvent *)self parentSpanId];
    v56 = [v5 parentSpanId];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMSpanEvent *)self parentSpanId];
      v59 = [v5 parentSpanId];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_116;
      }
    }

    v61 = [(BMSpanEvent *)self spanId];
    v62 = [v5 spanId];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMSpanEvent *)self spanId];
      v65 = [v5 spanId];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasPrivatizedStartTime](self, "hasPrivatizedStartTime") || [v5 hasPrivatizedStartTime])
    {
      if (![(BMSpanEvent *)self hasPrivatizedStartTime])
      {
        goto LABEL_116;
      }

      if (![v5 hasPrivatizedStartTime])
      {
        goto LABEL_116;
      }

      v67 = [(BMSpanEvent *)self privatizedStartTime];
      if (v67 != [v5 privatizedStartTime])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasPrivatizedEndTime](self, "hasPrivatizedEndTime") || [v5 hasPrivatizedEndTime])
    {
      if (![(BMSpanEvent *)self hasPrivatizedEndTime])
      {
        goto LABEL_116;
      }

      if (![v5 hasPrivatizedEndTime])
      {
        goto LABEL_116;
      }

      v68 = [(BMSpanEvent *)self privatizedEndTime];
      if (v68 != [v5 privatizedEndTime])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasIntervalInMilliSeconds](self, "hasIntervalInMilliSeconds") || [v5 hasIntervalInMilliSeconds])
    {
      if (![(BMSpanEvent *)self hasIntervalInMilliSeconds])
      {
        goto LABEL_116;
      }

      if (![v5 hasIntervalInMilliSeconds])
      {
        goto LABEL_116;
      }

      v69 = [(BMSpanEvent *)self intervalInMilliSeconds];
      if (v69 != [v5 intervalInMilliSeconds])
      {
        goto LABEL_116;
      }
    }

    v70 = [(BMSpanEvent *)self errorString];
    v71 = [v5 errorString];
    v72 = v71;
    if (v70 == v71)
    {
    }

    else
    {
      v73 = [(BMSpanEvent *)self errorString];
      v74 = [v5 errorString];
      v75 = [v73 isEqual:v74];

      if (!v75)
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasErrorCode](self, "hasErrorCode") || [v5 hasErrorCode])
    {
      if (![(BMSpanEvent *)self hasErrorCode])
      {
        goto LABEL_116;
      }

      if (![v5 hasErrorCode])
      {
        goto LABEL_116;
      }

      v76 = [(BMSpanEvent *)self errorCode];
      if (v76 != [v5 errorCode])
      {
        goto LABEL_116;
      }
    }

    v77 = [(BMSpanEvent *)self processName];
    v78 = [v5 processName];
    v79 = v78;
    if (v77 == v78)
    {
    }

    else
    {
      v80 = [(BMSpanEvent *)self processName];
      v81 = [v5 processName];
      v82 = [v80 isEqual:v81];

      if (!v82)
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasStartMemoryLevelInKB](self, "hasStartMemoryLevelInKB") || [v5 hasStartMemoryLevelInKB])
    {
      if (![(BMSpanEvent *)self hasStartMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      if (![v5 hasStartMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      v83 = [(BMSpanEvent *)self startMemoryLevelInKB];
      if (v83 != [v5 startMemoryLevelInKB])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasEndMemoryLevelInKB](self, "hasEndMemoryLevelInKB") || [v5 hasEndMemoryLevelInKB])
    {
      if (![(BMSpanEvent *)self hasEndMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      if (![v5 hasEndMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      v84 = [(BMSpanEvent *)self endMemoryLevelInKB];
      if (v84 != [v5 endMemoryLevelInKB])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasMemoryLevelDeltaInKB](self, "hasMemoryLevelDeltaInKB") || [v5 hasMemoryLevelDeltaInKB])
    {
      if (![(BMSpanEvent *)self hasMemoryLevelDeltaInKB])
      {
        goto LABEL_116;
      }

      if (![v5 hasMemoryLevelDeltaInKB])
      {
        goto LABEL_116;
      }

      v85 = [(BMSpanEvent *)self memoryLevelDeltaInKB];
      if (v85 != [v5 memoryLevelDeltaInKB])
      {
        goto LABEL_116;
      }
    }

    v86 = [(BMSpanEvent *)self gcdQueueName];
    v87 = [v5 gcdQueueName];
    v88 = v87;
    if (v86 == v87)
    {
    }

    else
    {
      v89 = [(BMSpanEvent *)self gcdQueueName];
      v90 = [v5 gcdQueueName];
      v91 = [v89 isEqual:v90];

      if (!v91)
      {
        goto LABEL_116;
      }
    }

    v92 = [(BMSpanEvent *)self qosClassName];
    v93 = [v5 qosClassName];
    v94 = v93;
    if (v92 == v93)
    {
    }

    else
    {
      v95 = [(BMSpanEvent *)self qosClassName];
      v96 = [v5 qosClassName];
      v97 = [v95 isEqual:v96];

      if (!v97)
      {
        goto LABEL_116;
      }
    }

    v98 = [(BMSpanEvent *)self relativePriority];
    v99 = [v5 relativePriority];
    v100 = v99;
    if (v98 == v99)
    {
    }

    else
    {
      v101 = [(BMSpanEvent *)self relativePriority];
      v102 = [v5 relativePriority];
      v103 = [v101 isEqual:v102];

      if (!v103)
      {
        goto LABEL_116;
      }
    }

    v104 = [(BMSpanEvent *)self projectName];
    v105 = [v5 projectName];
    v106 = v105;
    if (v104 == v105)
    {
    }

    else
    {
      v107 = [(BMSpanEvent *)self projectName];
      v108 = [v5 projectName];
      v109 = [v107 isEqual:v108];

      if (!v109)
      {
        goto LABEL_116;
      }
    }

    v110 = [(BMSpanEvent *)self attributes];
    v111 = [v5 attributes];
    v112 = v111;
    if (v110 == v111)
    {
    }

    else
    {
      v113 = [(BMSpanEvent *)self attributes];
      v114 = [v5 attributes];
      v115 = [v113 isEqual:v114];

      if (!v115)
      {
        goto LABEL_116;
      }
    }

    v116 = [(BMSpanEvent *)self infoEvents];
    v117 = [v5 infoEvents];
    v118 = v117;
    if (v116 == v117)
    {
    }

    else
    {
      v119 = [(BMSpanEvent *)self infoEvents];
      v120 = [v5 infoEvents];
      v121 = [v119 isEqual:v120];

      if (!v121)
      {
        goto LABEL_116;
      }
    }

    v122 = [(BMSpanEvent *)self warningEvents];
    v123 = [v5 warningEvents];
    v124 = v123;
    if (v122 == v123)
    {
    }

    else
    {
      v125 = [(BMSpanEvent *)self warningEvents];
      v126 = [v5 warningEvents];
      v127 = [v125 isEqual:v126];

      if (!v127)
      {
        goto LABEL_116;
      }
    }

    v128 = [(BMSpanEvent *)self debugEvents];
    v129 = [v5 debugEvents];
    v130 = v129;
    if (v128 == v129)
    {
    }

    else
    {
      v131 = [(BMSpanEvent *)self debugEvents];
      v132 = [v5 debugEvents];
      v133 = [v131 isEqual:v132];

      if (!v133)
      {
LABEL_116:
        v12 = 0;
LABEL_117:

        goto LABEL_118;
      }
    }

    v135 = [(BMSpanEvent *)self errorEvents];
    v136 = [v5 errorEvents];
    if (v135 == v136)
    {
      v12 = 1;
    }

    else
    {
      v137 = [(BMSpanEvent *)self errorEvents];
      v138 = [v5 errorEvents];
      v12 = [v137 isEqual:v138];
    }

    goto LABEL_117;
  }

  v12 = 0;
LABEL_118:

  return v12;
}

- (id)jsonDictionary
{
  v91[28] = *MEMORY[0x1E69E9840];
  v3 = [(BMSpanEvent *)self deviceIdentifier];
  v4 = [(BMSpanEvent *)self testKey];
  v5 = [(BMSpanEvent *)self version];
  v6 = [(BMSpanEvent *)self name];
  v7 = [(BMSpanEvent *)self trialDeploymentId];
  v8 = [(BMSpanEvent *)self trialExperimentId];
  v9 = [(BMSpanEvent *)self trialTreatmentId];
  v89 = [(BMSpanEvent *)self traceId];
  v88 = [(BMSpanEvent *)self parentSpanId];
  v87 = [(BMSpanEvent *)self spanId];
  if ([(BMSpanEvent *)self hasPrivatizedStartTime])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedStartTime](self, "privatizedStartTime")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMSpanEvent *)self hasPrivatizedEndTime])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedEndTime](self, "privatizedEndTime")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMSpanEvent *)self hasIntervalInMilliSeconds])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent intervalInMilliSeconds](self, "intervalInMilliSeconds")}];
  }

  else
  {
    v84 = 0;
  }

  v83 = [(BMSpanEvent *)self errorString];
  if ([(BMSpanEvent *)self hasErrorCode])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent errorCode](self, "errorCode")}];
  }

  else
  {
    v82 = 0;
  }

  v81 = [(BMSpanEvent *)self processName];
  if ([(BMSpanEvent *)self hasStartMemoryLevelInKB])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent startMemoryLevelInKB](self, "startMemoryLevelInKB")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMSpanEvent *)self hasEndMemoryLevelInKB])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent endMemoryLevelInKB](self, "endMemoryLevelInKB")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMSpanEvent *)self hasMemoryLevelDeltaInKB])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent memoryLevelDeltaInKB](self, "memoryLevelDeltaInKB")}];
  }

  else
  {
    v78 = 0;
  }

  v77 = [(BMSpanEvent *)self gcdQueueName];
  v76 = [(BMSpanEvent *)self qosClassName];
  v75 = [(BMSpanEvent *)self relativePriority];
  v74 = [(BMSpanEvent *)self projectName];
  v73 = [(BMSpanEvent *)self _attributesJSONArray];
  v72 = [(BMSpanEvent *)self _infoEventsJSONArray];
  v71 = [(BMSpanEvent *)self _warningEventsJSONArray];
  v70 = [(BMSpanEvent *)self _debugEventsJSONArray];
  v10 = [(BMSpanEvent *)self _errorEventsJSONArray];
  v90[0] = @"deviceIdentifier";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v11;
  v91[0] = v11;
  v90[1] = @"testKey";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v12;
  v91[1] = v12;
  v90[2] = @"version";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v13;
  v91[2] = v13;
  v90[3] = @"name";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v14;
  v91[3] = v14;
  v90[4] = @"trialDeploymentId";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v15;
  v91[4] = v15;
  v90[5] = @"trialExperimentId";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v16;
  v91[5] = v16;
  v90[6] = @"trialTreatmentId";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v17;
  v91[6] = v17;
  v90[7] = @"traceId";
  v18 = v89;
  if (!v89)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v91[7] = v18;
  v90[8] = @"parentSpanId";
  v19 = v88;
  if (!v88)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v91[8] = v19;
  v90[9] = @"spanId";
  v20 = v87;
  if (!v87)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v20;
  v91[9] = v20;
  v90[10] = @"privatizedStartTime";
  v21 = v86;
  if (!v86)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v21;
  v91[10] = v21;
  v90[11] = @"privatizedEndTime";
  v22 = v85;
  if (!v85)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v5;
  v64 = v22;
  v91[11] = v22;
  v90[12] = @"intervalInMilliSeconds";
  v23 = v84;
  if (!v84)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v23;
  v91[12] = v23;
  v90[13] = @"errorString";
  v25 = v83;
  if (!v83)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v25;
  v91[13] = v25;
  v90[14] = @"errorCode";
  v26 = v82;
  if (!v82)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v26;
  v91[14] = v26;
  v90[15] = @"processName";
  v27 = v81;
  if (!v81)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v27;
  v91[15] = v27;
  v90[16] = @"startMemoryLevelInKB";
  v28 = v80;
  if (!v80)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v28;
  v91[16] = v28;
  v90[17] = @"endMemoryLevelInKB";
  v29 = v79;
  if (!v79)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v4;
  v47 = v29;
  v91[17] = v29;
  v90[18] = @"memoryLevelDeltaInKB";
  v30 = v78;
  if (!v78)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v6;
  v46 = v30;
  v91[18] = v30;
  v90[19] = @"gcdQueueName";
  v31 = v77;
  if (!v77)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v31;
  v91[19] = v31;
  v90[20] = @"qosClassName";
  v32 = v76;
  if (!v76)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v9;
  v44 = v32;
  v91[20] = v32;
  v90[21] = @"relativePriority";
  v33 = v75;
  if (!v75)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v10;
  v43 = v33;
  v91[21] = v33;
  v90[22] = @"projectName";
  v34 = v74;
  if (!v74)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v18;
  v91[22] = v34;
  v90[23] = @"attributes";
  v35 = v73;
  if (!v73)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v91[23] = v35;
  v90[24] = @"infoEvents";
  v36 = v72;
  if (!v72)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v91[24] = v36;
  v90[25] = @"warningEvents";
  v37 = v71;
  if (!v71)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v19;
  v91[25] = v37;
  v90[26] = @"debugEvents";
  v38 = v70;
  if (!v70)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v91[26] = v38;
  v90[27] = @"errorEvents";
  v39 = v69;
  if (!v69)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v91[27] = v39;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:28];
  if (!v69)
  {
  }

  v40 = v24;
  if (!v70)
  {

    v40 = v24;
  }

  if (!v71)
  {

    v40 = v24;
  }

  if (!v72)
  {

    v40 = v24;
  }

  if (!v73)
  {

    v40 = v24;
  }

  if (!v74)
  {

    v40 = v24;
  }

  if (!v75)
  {

    v40 = v24;
  }

  if (!v76)
  {

    v40 = v24;
  }

  if (!v77)
  {

    v40 = v24;
  }

  if (!v78)
  {

    v40 = v24;
  }

  if (!v79)
  {

    v40 = v24;
  }

  if (!v80)
  {

    v40 = v24;
  }

  if (!v81)
  {

    v40 = v24;
  }

  if (!v82)
  {

    v40 = v24;
  }

  if (!v83)
  {

    v40 = v24;
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (v89)
  {
    if (v66)
    {
      goto LABEL_120;
    }
  }

  else
  {

    if (v66)
    {
LABEL_120:
      if (v8)
      {
        goto LABEL_121;
      }

      goto LABEL_131;
    }
  }

  if (v8)
  {
LABEL_121:
    if (v7)
    {
      goto LABEL_122;
    }

    goto LABEL_132;
  }

LABEL_131:

  if (v7)
  {
LABEL_122:
    if (v67)
    {
      goto LABEL_123;
    }

    goto LABEL_133;
  }

LABEL_132:

  if (v67)
  {
LABEL_123:
    if (v63)
    {
      goto LABEL_124;
    }

    goto LABEL_134;
  }

LABEL_133:

  if (v63)
  {
LABEL_124:
    if (v68)
    {
      goto LABEL_125;
    }

LABEL_135:

    if (v3)
    {
      goto LABEL_126;
    }

    goto LABEL_136;
  }

LABEL_134:

  if (!v68)
  {
    goto LABEL_135;
  }

LABEL_125:
  if (v3)
  {
    goto LABEL_126;
  }

LABEL_136:

LABEL_126:
  v41 = *MEMORY[0x1E69E9840];

  return v62;
}

- (id)_errorEventsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSpanEvent *)self errorEvents];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_debugEventsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSpanEvent *)self debugEvents];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_warningEventsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSpanEvent *)self warningEvents];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_infoEventsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSpanEvent *)self infoEvents];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_attributesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSpanEvent *)self attributes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSpanEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v489[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"testKey"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [v6 objectForKeyedSubscript:@"version"];
      v382 = v8;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v40 = 0;
            v27 = 0;
LABEL_378:
            v8 = v382;
            goto LABEL_379;
          }

          v368 = v6;
          v41 = v7;
          v42 = v9;
          v43 = v10;
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v484 = *MEMORY[0x1E696A578];
          v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"version"];
          v485 = v380;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v485 forKeys:&v484 count:1];
          v46 = v44;
          v10 = v43;
          v9 = v42;
          v7 = v41;
          v6 = v368;
          v47 = [v46 initWithDomain:v45 code:2 userInfo:v12];
          v40 = 0;
          v27 = 0;
          *a4 = v47;
LABEL_377:

          goto LABEL_378;
        }

        v379 = v11;
      }

      else
      {
        v379 = 0;
      }

      v12 = [v6 objectForKeyedSubscript:@"name"];
      v383 = v12;
      v381 = v10;
      v378 = a4;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v380 = 0;
            v27 = 0;
LABEL_376:
            v40 = v379;
            goto LABEL_377;
          }

          v361 = v7;
          v48 = self;
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v482 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
          v483 = v15;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v483 forKeys:&v482 count:1];
          v52 = v49;
          self = v48;
          v7 = v361;
          v53 = v50;
          v54 = v51;
          v380 = 0;
          v27 = 0;
          *v378 = [v52 initWithDomain:v53 code:2 userInfo:v51];
          goto LABEL_375;
        }

        v13 = v9;
        v14 = a4;
        v380 = v12;
      }

      else
      {
        v13 = v9;
        v14 = a4;
        v380 = 0;
      }

      v15 = [v6 objectForKeyedSubscript:@"trialDeploymentId"];
      v376 = self;
      if (!v15)
      {
        v16 = v7;
        v17 = v11;
        v374 = 0;
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7;
        v17 = v11;
        v374 = v15;
        v15 = 0;
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7;
        v17 = v11;
        v374 = v15;
        v15 = v15;
LABEL_27:
        v18 = [v6 objectForKeyedSubscript:@"trialExperimentId"];
        v372 = v15;
        v377 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v375 = 0;
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v375 = v19;
LABEL_30:
          v20 = [v6 objectForKeyedSubscript:@"trialTreatmentId"];
          v11 = v17;
          v373 = v20;
          if (v20)
          {
            v21 = v20;
            objc_opt_class();
            v7 = v16;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
LABEL_38:
                v28 = [v6 objectForKeyedSubscript:@"traceId"];
                v367 = v28;
                if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (v14)
                    {
                      v370 = v6;
                      v352 = v13;
                      v343 = v11;
                      v97 = v22;
                      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v99 = *MEMORY[0x1E698F240];
                      v474 = *MEMORY[0x1E696A578];
                      v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"traceId"];
                      v475 = v100;
                      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v475 forKeys:&v474 count:1];
                      v102 = v98;
                      v103 = v100;
                      v22 = v97;
                      v10 = v381;
                      v11 = v343;
                      v9 = v352;
                      v6 = v370;
                      v365 = v101;
                      v366 = 0;
                      v27 = 0;
                      *v378 = [v102 initWithDomain:v99 code:2 userInfo:?];
                      v54 = v374;
                      goto LABEL_370;
                    }

                    v366 = 0;
                    v27 = 0;
                    v54 = v374;
                    v9 = v13;
                    v10 = v381;
                    goto LABEL_371;
                  }

                  v366 = v29;
                }

                else
                {
                  v366 = 0;
                }

                v30 = [v6 objectForKeyedSubscript:@"parentSpanId"];
                v365 = v30;
                if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (v14)
                    {
                      v353 = v13;
                      v344 = v11;
                      v104 = v22;
                      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v106 = *MEMORY[0x1E698F240];
                      v472 = *MEMORY[0x1E696A578];
                      v347 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parentSpanId"];
                      v473 = v347;
                      v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v473 forKeys:&v472 count:1];
                      v108 = v105;
                      v22 = v104;
                      v10 = v381;
                      v11 = v344;
                      v9 = v353;
                      v348 = v107;
                      v103 = 0;
                      v27 = 0;
                      *v378 = [v108 initWithDomain:v106 code:2 userInfo:?];
                      v54 = v374;
                      goto LABEL_369;
                    }

                    v103 = 0;
                    v27 = 0;
                    v54 = v374;
                    v9 = v13;
                    v10 = v381;
                    goto LABEL_370;
                  }

                  v342 = v31;
                }

                else
                {
                  v342 = 0;
                }

                v32 = [v6 objectForKeyedSubscript:@"spanId"];
                v348 = v32;
                if (v32)
                {
                  v33 = v32;
                  objc_opt_class();
                  v9 = v13;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v10 = v381;
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!v378)
                      {
                        v347 = 0;
                        v27 = 0;
                        v54 = v374;
                        v103 = v342;
                        goto LABEL_369;
                      }

                      v345 = v11;
                      v109 = v22;
                      v110 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v111 = *MEMORY[0x1E698F240];
                      v470 = *MEMORY[0x1E696A578];
                      v340 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spanId"];
                      v471 = v340;
                      v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v471 forKeys:&v470 count:1];
                      v113 = v110;
                      v22 = v109;
                      v10 = v381;
                      v11 = v345;
                      v341 = v112;
                      v347 = 0;
                      v27 = 0;
                      *v378 = [v113 initWithDomain:v111 code:2 userInfo:?];
                      goto LABEL_159;
                    }

                    v347 = v33;
LABEL_59:
                    v55 = [v6 objectForKeyedSubscript:@"privatizedStartTime"];
                    v341 = v55;
                    v338 = v22;
                    if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v340 = 0;
                      goto LABEL_62;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v340 = v56;
LABEL_62:
                      v57 = [v6 objectForKeyedSubscript:@"privatizedEndTime"];
                      v339 = v57;
                      if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v59 = 0;
                        goto LABEL_65;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v59 = v58;
LABEL_65:
                        v60 = [v6 objectForKeyedSubscript:@"intervalInMilliSeconds"];
                        v337 = v60;
                        if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v335 = 0;
                          goto LABEL_68;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v335 = v61;
LABEL_68:
                          v62 = [v6 objectForKeyedSubscript:@"errorString"];
                          v334 = v62;
                          if (!v62 || (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v333 = 0;
                            goto LABEL_71;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v333 = v63;
LABEL_71:
                            v64 = [v6 objectForKeyedSubscript:@"errorCode"];
                            v332 = v64;
                            if (!v64 || (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v330 = 0;
                              goto LABEL_74;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v330 = v65;
LABEL_74:
                              v66 = [v6 objectForKeyedSubscript:@"processName"];
                              v329 = v66;
                              if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v328 = 0;
                                goto LABEL_77;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v328 = v67;
LABEL_77:
                                v68 = [v6 objectForKeyedSubscript:@"startMemoryLevelInKB"];
                                v327 = v68;
                                if (!v68 || (v69 = v68, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v321 = 0;
                                  goto LABEL_80;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v321 = v69;
LABEL_80:
                                  v70 = [v6 objectForKeyedSubscript:@"endMemoryLevelInKB"];
                                  v320 = v70;
                                  if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v319 = 0;
                                    goto LABEL_83;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v319 = v71;
LABEL_83:
                                    v72 = [v6 objectForKeyedSubscript:@"memoryLevelDeltaInKB"];
                                    v317 = v72;
                                    if (!v72 || (v73 = v72, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v316 = 0;
                                      goto LABEL_86;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v316 = v73;
LABEL_86:
                                      v74 = [v6 objectForKeyedSubscript:@"gcdQueueName"];
                                      v315 = v74;
                                      if (!v74 || (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v314 = 0;
                                        goto LABEL_89;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v314 = v75;
LABEL_89:
                                        v76 = [v6 objectForKeyedSubscript:@"qosClassName"];
                                        v313 = v76;
                                        if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v312 = 0;
                                          goto LABEL_92;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v312 = v77;
LABEL_92:
                                          v78 = [v6 objectForKeyedSubscript:@"relativePriority"];
                                          v311 = v78;
                                          if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v310 = 0;
                                            goto LABEL_95;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v310 = v79;
LABEL_95:
                                            v80 = [v6 objectForKeyedSubscript:@"projectName"];
                                            v308 = v80;
                                            if (!v80 || (v81 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v304 = v59;
                                              v307 = 0;
                                              goto LABEL_98;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v304 = v59;
                                              v307 = v81;
LABEL_98:
                                              v82 = [v6 objectForKeyedSubscript:@"attributes"];
                                              v83 = [MEMORY[0x1E695DFB0] null];
                                              v84 = [v82 isEqual:v83];

                                              if (v84)
                                              {

                                                v82 = 0;
                                              }

                                              else if (v82)
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  obj = v82;
                                                  if (!v378)
                                                  {
                                                    v27 = 0;
                                                    v54 = v374;
                                                    v103 = v342;
                                                    v59 = v304;
                                                    goto LABEL_355;
                                                  }

                                                  v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v198 = *MEMORY[0x1E698F240];
                                                  v442 = *MEMORY[0x1E696A578];
                                                  v323 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attributes"];
                                                  v443 = v323;
                                                  v360 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v443 forKeys:&v442 count:1];
                                                  v199 = [v197 initWithDomain:v198 code:2 userInfo:?];
                                                  v27 = 0;
                                                  *v378 = v199;
                                                  v54 = v374;
                                                  goto LABEL_239;
                                                }
                                              }

                                              v323 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v82, "count")}];
                                              v405 = 0u;
                                              v406 = 0u;
                                              v407 = 0u;
                                              v408 = 0u;
                                              obj = v82;
                                              v140 = [obj countByEnumeratingWithState:&v405 objects:v441 count:16];
                                              if (!v140)
                                              {
                                                goto LABEL_176;
                                              }

                                              v141 = v140;
                                              v142 = *v406;
LABEL_168:
                                              v143 = 0;
                                              while (1)
                                              {
                                                if (*v406 != v142)
                                                {
                                                  objc_enumerationMutation(obj);
                                                }

                                                v144 = *(*(&v405 + 1) + 8 * v143);
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  break;
                                                }

                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (v378)
                                                  {
                                                    v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v182 = *MEMORY[0x1E698F240];
                                                    v437 = *MEMORY[0x1E696A578];
                                                    v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attributes"];
                                                    v438 = v309;
                                                    v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v438 forKeys:&v437 count:1];
                                                    v27 = 0;
                                                    *v378 = [v181 initWithDomain:v182 code:2 userInfo:v183];
                                                    v180 = v183;
                                                    goto LABEL_210;
                                                  }

                                                  goto LABEL_237;
                                                }

                                                v145 = v144;
                                                v146 = [BMSpanEventAttribute alloc];
                                                v404 = 0;
                                                v147 = [(BMSpanEventAttribute *)v146 initWithJSONDictionary:v145 error:&v404];
                                                v148 = v404;
                                                if (v148)
                                                {
                                                  v309 = v145;
                                                  v12 = v383;
                                                  v54 = v374;
                                                  v10 = v381;
                                                  v184 = v148;
                                                  if (v378)
                                                  {
                                                    v185 = v148;
                                                    *v378 = v184;
                                                  }

                                                  v180 = v184;
                                                  v27 = 0;
                                                  v360 = obj;
                                                  goto LABEL_216;
                                                }

                                                [v323 addObject:v147];

                                                if (v141 == ++v143)
                                                {
                                                  v141 = [obj countByEnumeratingWithState:&v405 objects:v441 count:16];
                                                  v12 = v383;
                                                  if (!v141)
                                                  {
LABEL_176:

                                                    v149 = [v6 objectForKeyedSubscript:@"infoEvents"];
                                                    v150 = [MEMORY[0x1E695DFB0] null];
                                                    v151 = [v149 isEqual:v150];

                                                    if (v151)
                                                    {

                                                      v149 = 0;
                                                      goto LABEL_221;
                                                    }

                                                    if (!v149 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
LABEL_221:
                                                      v309 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v149, "count")}];
                                                      v400 = 0u;
                                                      v401 = 0u;
                                                      v402 = 0u;
                                                      v403 = 0u;
                                                      v360 = v149;
                                                      v186 = [v360 countByEnumeratingWithState:&v400 objects:v434 count:16];
                                                      if (!v186)
                                                      {
                                                        goto LABEL_231;
                                                      }

                                                      v187 = v186;
                                                      v305 = *v401;
LABEL_223:
                                                      v188 = 0;
                                                      while (1)
                                                      {
                                                        if (*v401 != v305)
                                                        {
                                                          objc_enumerationMutation(v360);
                                                        }

                                                        v189 = *(*(&v400 + 1) + 8 * v188);
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          break;
                                                        }

                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (v378)
                                                          {
                                                            v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v206 = *MEMORY[0x1E698F240];
                                                            v430 = *MEMORY[0x1E696A578];
                                                            v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"infoEvents"];
                                                            v431 = v301;
                                                            v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v431 forKeys:&v430 count:1];
                                                            v27 = 0;
                                                            *v378 = [v205 initWithDomain:v206 code:2 userInfo:v207];
                                                            v204 = v207;
                                                            goto LABEL_253;
                                                          }

                                                          goto LABEL_276;
                                                        }

                                                        v190 = v189;
                                                        v191 = [BMSpanEventSubEvent alloc];
                                                        v399 = 0;
                                                        v192 = [(BMSpanEventSubEvent *)v191 initWithJSONDictionary:v190 error:&v399];
                                                        v193 = v399;
                                                        if (v193)
                                                        {
                                                          v301 = v190;
                                                          v12 = v383;
                                                          v208 = v193;
                                                          if (v378)
                                                          {
                                                            v209 = v193;
                                                            *v378 = v208;
                                                          }

                                                          v204 = v208;
                                                          v27 = 0;
                                                          v306 = v360;
                                                          goto LABEL_258;
                                                        }

                                                        [v309 addObject:v192];

                                                        if (v187 == ++v188)
                                                        {
                                                          v187 = [v360 countByEnumeratingWithState:&v400 objects:v434 count:16];
                                                          v12 = v383;
                                                          if (!v187)
                                                          {
LABEL_231:

                                                            v194 = [v6 objectForKeyedSubscript:@"warningEvents"];
                                                            v195 = [MEMORY[0x1E695DFB0] null];
                                                            v196 = [v194 isEqual:v195];

                                                            if (v196)
                                                            {

                                                              v194 = 0;
                                                            }

                                                            else
                                                            {
                                                              v10 = v381;
                                                              if (v194)
                                                              {
                                                                objc_opt_class();
                                                                v306 = v194;
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!v378)
                                                                  {
                                                                    v27 = 0;
                                                                    v54 = v374;
                                                                    v103 = v342;
                                                                    v59 = v304;
                                                                    goto LABEL_352;
                                                                  }

                                                                  v249 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v250 = *MEMORY[0x1E698F240];
                                                                  v428 = *MEMORY[0x1E696A578];
                                                                  v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"warningEvents"];
                                                                  v429 = v301;
                                                                  v251 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v429 forKeys:&v428 count:1];
                                                                  v252 = [v249 initWithDomain:v250 code:2 userInfo:v251];
                                                                  v27 = 0;
                                                                  *v378 = v252;
                                                                  v204 = v251;
                                                                  v54 = v374;
                                                                  goto LABEL_259;
                                                                }
                                                              }
                                                            }

                                                            v301 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v194, "count")}];
                                                            v395 = 0u;
                                                            v396 = 0u;
                                                            v397 = 0u;
                                                            v398 = 0u;
                                                            v306 = v194;
                                                            v210 = [v306 countByEnumeratingWithState:&v395 objects:v427 count:16];
                                                            if (!v210)
                                                            {
                                                              goto LABEL_272;
                                                            }

                                                            v211 = v210;
                                                            v302 = *v396;
                                                            while (1)
                                                            {
                                                              for (i = 0; i != v211; ++i)
                                                              {
                                                                if (*v396 != v302)
                                                                {
                                                                  objc_enumerationMutation(v306);
                                                                }

                                                                v213 = *(*(&v395 + 1) + 8 * i);
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  if (v378)
                                                                  {
                                                                    v225 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v226 = *MEMORY[0x1E698F240];
                                                                    v425 = *MEMORY[0x1E696A578];
                                                                    v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"warningEvents"];
                                                                    v426 = v303;
                                                                    v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
                                                                    v228 = [v225 initWithDomain:v226 code:2 userInfo:v227];
                                                                    v27 = 0;
                                                                    *v378 = v228;
                                                                    v229 = v227;
LABEL_282:
                                                                    v300 = v306;
                                                                    goto LABEL_283;
                                                                  }

LABEL_306:
                                                                  v27 = 0;
                                                                  v204 = v306;
LABEL_254:
                                                                  v12 = v383;
LABEL_258:
                                                                  v54 = v374;
                                                                  v10 = v381;
LABEL_259:
                                                                  v103 = v342;
                                                                  v59 = v304;
                                                                  goto LABEL_351;
                                                                }

                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (v378)
                                                                  {
                                                                    v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v231 = *MEMORY[0x1E698F240];
                                                                    v423 = *MEMORY[0x1E696A578];
                                                                    v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"warningEvents"];
                                                                    v424 = v303;
                                                                    v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v424 forKeys:&v423 count:1];
                                                                    v27 = 0;
                                                                    *v378 = [v230 initWithDomain:v231 code:2 userInfo:v232];
                                                                    v229 = v232;
                                                                    goto LABEL_282;
                                                                  }

                                                                  goto LABEL_306;
                                                                }

                                                                v214 = v213;
                                                                v215 = [BMSpanEventSubEvent alloc];
                                                                v394 = 0;
                                                                v216 = [(BMSpanEventSubEvent *)v215 initWithJSONDictionary:v214 error:&v394];
                                                                v217 = v394;
                                                                if (v217)
                                                                {
                                                                  v303 = v214;
                                                                  v12 = v383;
                                                                  v233 = v217;
                                                                  if (v378)
                                                                  {
                                                                    v234 = v217;
                                                                    *v378 = v233;
                                                                  }

                                                                  v229 = v233;
                                                                  v27 = 0;
                                                                  v300 = v306;
                                                                  goto LABEL_287;
                                                                }

                                                                [v301 addObject:v216];
                                                              }

                                                              v211 = [v306 countByEnumeratingWithState:&v395 objects:v427 count:16];
                                                              v12 = v383;
                                                              if (!v211)
                                                              {
LABEL_272:

                                                                v218 = [v6 objectForKeyedSubscript:@"debugEvents"];
                                                                v219 = [MEMORY[0x1E695DFB0] null];
                                                                v220 = [v218 isEqual:v219];

                                                                if (v220)
                                                                {

                                                                  goto LABEL_291;
                                                                }

                                                                if (v218)
                                                                {
                                                                  objc_opt_class();
                                                                  v300 = v218;
                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                  {
                                                                    if (!v378)
                                                                    {
                                                                      v27 = 0;
                                                                      v54 = v374;
                                                                      v10 = v381;
                                                                      v103 = v342;
                                                                      v59 = v304;
                                                                      goto LABEL_350;
                                                                    }

                                                                    v274 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v275 = *MEMORY[0x1E698F240];
                                                                    v421 = *MEMORY[0x1E696A578];
                                                                    v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"debugEvents"];
                                                                    v422 = v303;
                                                                    v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v422 forKeys:&v421 count:1];
                                                                    v277 = [v274 initWithDomain:v275 code:2 userInfo:v276];
                                                                    v27 = 0;
                                                                    *v378 = v277;
                                                                    v229 = v276;
                                                                    goto LABEL_287;
                                                                  }

                                                                  v235 = v218;
                                                                }

                                                                else
                                                                {
LABEL_291:
                                                                  v235 = 0;
                                                                }

                                                                v303 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v235, "count")}];
                                                                v390 = 0u;
                                                                v391 = 0u;
                                                                v392 = 0u;
                                                                v393 = 0u;
                                                                v300 = v235;
                                                                v236 = [v300 countByEnumeratingWithState:&v390 objects:v420 count:16];
                                                                if (!v236)
                                                                {
                                                                  goto LABEL_302;
                                                                }

                                                                v237 = v236;
                                                                v298 = *v391;
                                                                while (1)
                                                                {
                                                                  for (j = 0; j != v237; ++j)
                                                                  {
                                                                    if (*v391 != v298)
                                                                    {
                                                                      objc_enumerationMutation(v300);
                                                                    }

                                                                    v239 = *(*(&v390 + 1) + 8 * j);
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      if (v378)
                                                                      {
                                                                        v253 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v254 = *MEMORY[0x1E698F240];
                                                                        v418 = *MEMORY[0x1E696A578];
                                                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"debugEvents"];
                                                                        v419 = v255;
                                                                        v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v419 forKeys:&v418 count:1];
                                                                        *v378 = [v253 initWithDomain:v254 code:2 userInfo:v256];

LABEL_312:
                                                                        v27 = 0;
                                                                        v299 = v300;
                                                                        v260 = v255;
                                                                        v12 = v383;
                                                                        v54 = v374;
                                                                        v10 = v381;
                                                                        goto LABEL_313;
                                                                      }

LABEL_334:
                                                                      v27 = 0;
                                                                      v229 = v300;
LABEL_283:
                                                                      v12 = v383;
LABEL_287:
                                                                      v54 = v374;
                                                                      v10 = v381;
                                                                      v103 = v342;
                                                                      v59 = v304;
                                                                      goto LABEL_349;
                                                                    }

                                                                    objc_opt_class();
                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                    {
                                                                      if (v378)
                                                                      {
                                                                        v257 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v258 = *MEMORY[0x1E698F240];
                                                                        v416 = *MEMORY[0x1E696A578];
                                                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"debugEvents"];
                                                                        v417 = v255;
                                                                        v259 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v417 forKeys:&v416 count:1];
                                                                        *v378 = [v257 initWithDomain:v258 code:2 userInfo:v259];

                                                                        goto LABEL_312;
                                                                      }

                                                                      goto LABEL_334;
                                                                    }

                                                                    v240 = v239;
                                                                    v241 = [BMSpanEventSubEvent alloc];
                                                                    v389 = 0;
                                                                    v242 = [(BMSpanEventSubEvent *)v241 initWithJSONDictionary:v240 error:&v389];
                                                                    v243 = v389;
                                                                    if (v243)
                                                                    {
                                                                      v261 = v243;
                                                                      v297 = v240;
                                                                      if (v378)
                                                                      {
                                                                        v262 = v243;
                                                                        *v378 = v261;
                                                                      }

                                                                      v27 = 0;
                                                                      v299 = v300;
                                                                      v12 = v383;
                                                                      v54 = v374;
                                                                      v10 = v381;
LABEL_346:
                                                                      v103 = v342;
                                                                      v59 = v304;
                                                                      v260 = v297;
                                                                      goto LABEL_347;
                                                                    }

                                                                    [v303 addObject:v242];
                                                                  }

                                                                  v237 = [v300 countByEnumeratingWithState:&v390 objects:v420 count:16];
                                                                  if (!v237)
                                                                  {
LABEL_302:

                                                                    v244 = [v6 objectForKeyedSubscript:@"errorEvents"];
                                                                    v245 = [MEMORY[0x1E695DFB0] null];
                                                                    v246 = [v244 isEqual:v245];

                                                                    v371 = v6;
                                                                    v364 = v7;
                                                                    v346 = v11;
                                                                    v247 = v9;
                                                                    if (v246)
                                                                    {
                                                                      v248 = v381;

                                                                      goto LABEL_320;
                                                                    }

                                                                    v248 = v381;
                                                                    if (!v244)
                                                                    {
LABEL_320:
                                                                      v263 = 0;
                                                                      goto LABEL_321;
                                                                    }

                                                                    objc_opt_class();
                                                                    v299 = v244;
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v263 = v244;
LABEL_321:
                                                                      v264 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v263, "count")}];
                                                                      v385 = 0u;
                                                                      v386 = 0u;
                                                                      v387 = 0u;
                                                                      v388 = 0u;
                                                                      v299 = v263;
                                                                      v265 = [v299 countByEnumeratingWithState:&v385 objects:v413 count:16];
                                                                      if (!v265)
                                                                      {
                                                                        goto LABEL_331;
                                                                      }

                                                                      v266 = v265;
                                                                      v267 = *v386;
                                                                      v297 = v264;
LABEL_323:
                                                                      v268 = 0;
                                                                      while (1)
                                                                      {
                                                                        if (*v386 != v267)
                                                                        {
                                                                          objc_enumerationMutation(v299);
                                                                        }

                                                                        v269 = *(*(&v385 + 1) + 8 * v268);
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          break;
                                                                        }

                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (!v378)
                                                                          {
                                                                            goto LABEL_345;
                                                                          }

                                                                          v282 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v279 = *MEMORY[0x1E698F240];
                                                                          v409 = *MEMORY[0x1E696A578];
                                                                          v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"errorEvents"];
                                                                          v410 = v270;
                                                                          v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v410 forKeys:&v409 count:1];
                                                                          v281 = v282;
                                                                          goto LABEL_340;
                                                                        }

                                                                        v270 = v269;
                                                                        v271 = [BMSpanEventSubEvent alloc];
                                                                        v384 = 0;
                                                                        v272 = [(BMSpanEventSubEvent *)v271 initWithJSONDictionary:v270 error:&v384];
                                                                        v273 = v384;
                                                                        if (v273)
                                                                        {
                                                                          v280 = v273;
                                                                          if (v378)
                                                                          {
                                                                            v283 = v273;
                                                                            *v378 = v280;
                                                                          }

LABEL_344:
LABEL_345:

                                                                          v27 = 0;
                                                                          v10 = v248;
                                                                          v11 = v346;
                                                                          v9 = v247;
                                                                          v7 = v364;
                                                                          v6 = v371;
                                                                          v12 = v383;
                                                                          v54 = v374;
                                                                          goto LABEL_346;
                                                                        }

                                                                        v264 = v297;
                                                                        [v297 addObject:v272];

                                                                        if (v266 == ++v268)
                                                                        {
                                                                          v266 = [v299 countByEnumeratingWithState:&v385 objects:v413 count:16];
                                                                          if (v266)
                                                                          {
                                                                            goto LABEL_323;
                                                                          }

LABEL_331:

                                                                          v59 = v304;
                                                                          v103 = v342;
                                                                          v10 = v248;
                                                                          v376 = [(BMSpanEvent *)v376 initWithDeviceIdentifier:v382 testKey:v248 version:v379 name:v380 trialDeploymentId:v372 trialExperimentId:v375 trialTreatmentId:v338 traceId:v366 parentSpanId:v342 spanId:v347 privatizedStartTime:v340 privatizedEndTime:v304 intervalInMilliSeconds:v335 errorString:v333 errorCode:v330 processName:v328 startMemoryLevelInKB:v321 endMemoryLevelInKB:v319 memoryLevelDeltaInKB:v316 gcdQueueName:v314 qosClassName:v312 relativePriority:v310 projectName:v307 attributes:v323 infoEvents:v309 warningEvents:v301 debugEvents:v303 errorEvents:v264];
                                                                          v260 = v264;
                                                                          v27 = v376;
                                                                          v11 = v346;
                                                                          v9 = v247;
                                                                          v7 = v364;
                                                                          v6 = v371;
                                                                          v12 = v383;
                                                                          v54 = v374;
LABEL_347:

LABEL_348:
                                                                          v229 = v299;
LABEL_349:

LABEL_350:
                                                                          v204 = v300;
LABEL_351:

LABEL_352:
                                                                          v180 = v306;
LABEL_353:

LABEL_354:
LABEL_355:

LABEL_356:
LABEL_357:

LABEL_358:
LABEL_359:

LABEL_360:
LABEL_361:

LABEL_362:
LABEL_363:

LABEL_364:
LABEL_365:

LABEL_366:
LABEL_367:

                                                                          v22 = v338;
LABEL_368:

LABEL_369:
LABEL_370:

LABEL_371:
                                                                          v15 = v372;
LABEL_372:

                                                                          goto LABEL_373;
                                                                        }
                                                                      }

                                                                      if (!v378)
                                                                      {
                                                                        goto LABEL_345;
                                                                      }

                                                                      v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v279 = *MEMORY[0x1E698F240];
                                                                      v411 = *MEMORY[0x1E696A578];
                                                                      v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"errorEvents"];
                                                                      v412 = v270;
                                                                      v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v412 forKeys:&v411 count:1];
                                                                      v281 = v278;
LABEL_340:
                                                                      *v378 = [v281 initWithDomain:v279 code:2 userInfo:v280];
                                                                      goto LABEL_344;
                                                                    }

                                                                    if (!v378)
                                                                    {
                                                                      v27 = 0;
                                                                      v10 = v381;
                                                                      v103 = v342;
                                                                      v9 = v247;
                                                                      v7 = v364;
                                                                      v12 = v383;
                                                                      v54 = v374;
                                                                      v59 = v304;
                                                                      goto LABEL_348;
                                                                    }

                                                                    v286 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v287 = *MEMORY[0x1E698F240];
                                                                    v414 = *MEMORY[0x1E696A578];
                                                                    v288 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"errorEvents"];
                                                                    v415 = v288;
                                                                    v289 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
                                                                    *v378 = [v286 initWithDomain:v287 code:2 userInfo:v289];

                                                                    v260 = v288;
                                                                    v27 = 0;
                                                                    v10 = v381;
                                                                    v9 = v247;
                                                                    v7 = v364;
                                                                    v12 = v383;
                                                                    v54 = v374;
LABEL_313:
                                                                    v103 = v342;
                                                                    v59 = v304;
                                                                    goto LABEL_347;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }

                                                          goto LABEL_223;
                                                        }
                                                      }

                                                      if (v378)
                                                      {
                                                        v200 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v201 = *MEMORY[0x1E698F240];
                                                        v432 = *MEMORY[0x1E696A578];
                                                        v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"infoEvents"];
                                                        v433 = v301;
                                                        v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v433 forKeys:&v432 count:1];
                                                        v203 = [v200 initWithDomain:v201 code:2 userInfo:v202];
                                                        v27 = 0;
                                                        *v378 = v203;
                                                        v204 = v202;
LABEL_253:
                                                        v306 = v360;
                                                        goto LABEL_254;
                                                      }

LABEL_276:
                                                      v27 = 0;
                                                      v180 = v360;
LABEL_211:
                                                      v12 = v383;
LABEL_212:
                                                      v54 = v374;
                                                      v10 = v381;
LABEL_216:
                                                      v103 = v342;
                                                      v59 = v304;
                                                      goto LABEL_353;
                                                    }

                                                    v360 = v149;
                                                    if (v378)
                                                    {
                                                      v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v222 = *MEMORY[0x1E698F240];
                                                      v435 = *MEMORY[0x1E696A578];
                                                      v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"infoEvents"];
                                                      v436 = v309;
                                                      v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v436 forKeys:&v435 count:1];
                                                      v224 = [v221 initWithDomain:v222 code:2 userInfo:v223];
                                                      v27 = 0;
                                                      *v378 = v224;
                                                      v180 = v223;
                                                      goto LABEL_212;
                                                    }

                                                    v27 = 0;
LABEL_238:
                                                    v54 = v374;
                                                    v10 = v381;
LABEL_239:
                                                    v103 = v342;
                                                    v59 = v304;
                                                    goto LABEL_354;
                                                  }

                                                  goto LABEL_168;
                                                }
                                              }

                                              if (v378)
                                              {
                                                v176 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v177 = *MEMORY[0x1E698F240];
                                                v439 = *MEMORY[0x1E696A578];
                                                v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attributes"];
                                                v440 = v309;
                                                v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v440 forKeys:&v439 count:1];
                                                v179 = [v176 initWithDomain:v177 code:2 userInfo:v178];
                                                v27 = 0;
                                                *v378 = v179;
                                                v180 = v178;
LABEL_210:
                                                v360 = obj;
                                                goto LABEL_211;
                                              }

LABEL_237:
                                              v27 = 0;
                                              v360 = obj;
                                              v12 = v383;
                                              goto LABEL_238;
                                            }

                                            if (v378)
                                            {
                                              v171 = v59;
                                              v172 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v173 = *MEMORY[0x1E698F240];
                                              v444 = *MEMORY[0x1E696A578];
                                              obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"projectName"];
                                              v445 = obj;
                                              v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v445 forKeys:&v444 count:1];
                                              v175 = v172;
                                              v59 = v171;
                                              v10 = v381;
                                              v326 = v174;
                                              v307 = 0;
                                              v27 = 0;
                                              *v378 = [v175 initWithDomain:v173 code:2 userInfo:?];
                                              v54 = v374;
                                              v103 = v342;

                                              goto LABEL_355;
                                            }

                                            v307 = 0;
                                            v27 = 0;
LABEL_247:
                                            v54 = v374;
                                            v103 = v342;
                                            goto LABEL_356;
                                          }

                                          if (v378)
                                          {
                                            v166 = v59;
                                            v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v168 = *MEMORY[0x1E698F240];
                                            v446 = *MEMORY[0x1E696A578];
                                            v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"relativePriority"];
                                            v447 = v307;
                                            v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v447 forKeys:&v446 count:1];
                                            v170 = v167;
                                            v59 = v166;
                                            v10 = v381;
                                            v308 = v169;
                                            v310 = 0;
                                            v27 = 0;
                                            *v378 = [v170 initWithDomain:v168 code:2 userInfo:?];
                                            goto LABEL_247;
                                          }

                                          v310 = 0;
                                          v27 = 0;
LABEL_245:
                                          v54 = v374;
                                          v103 = v342;
                                          goto LABEL_357;
                                        }

                                        if (v378)
                                        {
                                          v161 = v59;
                                          v162 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v163 = *MEMORY[0x1E698F240];
                                          v448 = *MEMORY[0x1E696A578];
                                          v310 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"qosClassName"];
                                          v449 = v310;
                                          v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v449 forKeys:&v448 count:1];
                                          v165 = v162;
                                          v59 = v161;
                                          v10 = v381;
                                          v311 = v164;
                                          v312 = 0;
                                          v27 = 0;
                                          *v378 = [v165 initWithDomain:v163 code:2 userInfo:?];
                                          goto LABEL_245;
                                        }

                                        v312 = 0;
                                        v27 = 0;
LABEL_243:
                                        v54 = v374;
                                        v103 = v342;
                                        goto LABEL_358;
                                      }

                                      if (v378)
                                      {
                                        v156 = v59;
                                        v157 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v158 = *MEMORY[0x1E698F240];
                                        v450 = *MEMORY[0x1E696A578];
                                        v312 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"gcdQueueName"];
                                        v451 = v312;
                                        v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v451 forKeys:&v450 count:1];
                                        v160 = v157;
                                        v59 = v156;
                                        v10 = v381;
                                        v313 = v159;
                                        v314 = 0;
                                        v27 = 0;
                                        *v378 = [v160 initWithDomain:v158 code:2 userInfo:?];
                                        goto LABEL_243;
                                      }

                                      v314 = 0;
                                      v27 = 0;
LABEL_241:
                                      v54 = v374;
                                      v103 = v342;
                                      goto LABEL_359;
                                    }

                                    if (v378)
                                    {
                                      v359 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v325 = *MEMORY[0x1E698F240];
                                      v452 = *MEMORY[0x1E696A578];
                                      v154 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v296 = objc_opt_class();
                                      v155 = v154;
                                      v10 = v381;
                                      v314 = [v155 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v296, @"memoryLevelDeltaInKB"];
                                      v453 = v314;
                                      v315 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v453 forKeys:&v452 count:1];
                                      v316 = 0;
                                      v27 = 0;
                                      *v378 = [v359 initWithDomain:v325 code:2 userInfo:?];
                                      goto LABEL_241;
                                    }

                                    v316 = 0;
                                    v27 = 0;
LABEL_236:
                                    v54 = v374;
                                    v103 = v342;
                                    goto LABEL_360;
                                  }

                                  if (v378)
                                  {
                                    v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v324 = *MEMORY[0x1E698F240];
                                    v454 = *MEMORY[0x1E696A578];
                                    v152 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v295 = objc_opt_class();
                                    v153 = v152;
                                    v10 = v381;
                                    v316 = [v153 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v295, @"endMemoryLevelInKB"];
                                    v455 = v316;
                                    v317 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v455 forKeys:&v454 count:1];
                                    v319 = 0;
                                    v27 = 0;
                                    *v378 = [v358 initWithDomain:v324 code:2 userInfo:?];
                                    goto LABEL_236;
                                  }

                                  v319 = 0;
                                  v27 = 0;
LABEL_218:
                                  v54 = v374;
                                  v103 = v342;
                                  goto LABEL_361;
                                }

                                if (v378)
                                {
                                  v357 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v322 = *MEMORY[0x1E698F240];
                                  v456 = *MEMORY[0x1E696A578];
                                  v138 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v294 = objc_opt_class();
                                  v139 = v138;
                                  v10 = v381;
                                  v319 = [v139 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v294, @"startMemoryLevelInKB"];
                                  v457 = v319;
                                  v320 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v457 forKeys:&v456 count:1];
                                  v321 = 0;
                                  v27 = 0;
                                  *v378 = [v357 initWithDomain:v322 code:2 userInfo:?];
                                  goto LABEL_218;
                                }

                                v321 = 0;
                                v27 = 0;
LABEL_203:
                                v54 = v374;
                                v103 = v342;
                                goto LABEL_362;
                              }

                              if (v378)
                              {
                                v133 = v59;
                                v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v135 = *MEMORY[0x1E698F240];
                                v458 = *MEMORY[0x1E696A578];
                                v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"processName"];
                                v459 = v321;
                                v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v459 forKeys:&v458 count:1];
                                v137 = v134;
                                v59 = v133;
                                v10 = v381;
                                v327 = v136;
                                v328 = 0;
                                v27 = 0;
                                *v378 = [v137 initWithDomain:v135 code:2 userInfo:?];
                                goto LABEL_203;
                              }

                              v328 = 0;
                              v27 = 0;
LABEL_199:
                              v54 = v374;
                              v103 = v342;
                              goto LABEL_363;
                            }

                            if (v378)
                            {
                              v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v331 = *MEMORY[0x1E698F240];
                              v460 = *MEMORY[0x1E696A578];
                              v130 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v293 = objc_opt_class();
                              v131 = v130;
                              v10 = v381;
                              v328 = [v131 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v293, @"errorCode"];
                              v461 = v328;
                              v329 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v461 forKeys:&v460 count:1];
                              v132 = [v356 initWithDomain:v331 code:2 userInfo:?];
                              v330 = 0;
                              v27 = 0;
                              *v378 = v132;
                              goto LABEL_199;
                            }

                            v330 = 0;
                            v27 = 0;
LABEL_195:
                            v54 = v374;
                            v103 = v342;
                            goto LABEL_364;
                          }

                          if (v378)
                          {
                            v125 = v59;
                            v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v127 = *MEMORY[0x1E698F240];
                            v462 = *MEMORY[0x1E696A578];
                            v330 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"errorString"];
                            v463 = v330;
                            v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v463 forKeys:&v462 count:1];
                            v129 = v126;
                            v59 = v125;
                            v10 = v381;
                            v332 = v128;
                            v333 = 0;
                            v27 = 0;
                            *v378 = [v129 initWithDomain:v127 code:2 userInfo:?];
                            goto LABEL_195;
                          }

                          v333 = 0;
                          v27 = 0;
LABEL_191:
                          v54 = v374;
                          v103 = v342;
                          goto LABEL_365;
                        }

                        if (v378)
                        {
                          v355 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v336 = *MEMORY[0x1E698F240];
                          v464 = *MEMORY[0x1E696A578];
                          v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v292 = objc_opt_class();
                          v123 = v122;
                          v10 = v381;
                          v333 = [v123 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v292, @"intervalInMilliSeconds"];
                          v465 = v333;
                          v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v465 forKeys:&v464 count:1];
                          v124 = [v355 initWithDomain:v336 code:2 userInfo:?];
                          v335 = 0;
                          v27 = 0;
                          *v378 = v124;
                          goto LABEL_191;
                        }

                        v335 = 0;
                        v27 = 0;
LABEL_185:
                        v54 = v374;
                        v103 = v342;
                        goto LABEL_366;
                      }

                      if (v378)
                      {
                        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v118 = *MEMORY[0x1E698F240];
                        v466 = *MEMORY[0x1E696A578];
                        v119 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v291 = objc_opt_class();
                        v120 = v119;
                        v10 = v381;
                        v335 = [v120 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v291, @"privatizedEndTime"];
                        v467 = v335;
                        v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v467 forKeys:&v466 count:1];
                        v121 = [v117 initWithDomain:v118 code:2 userInfo:?];
                        v59 = 0;
                        v27 = 0;
                        *v378 = v121;
                        goto LABEL_185;
                      }

                      v59 = 0;
                      v27 = 0;
LABEL_179:
                      v54 = v374;
                      v103 = v342;
                      goto LABEL_367;
                    }

                    if (v378)
                    {
                      v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v354 = *MEMORY[0x1E698F240];
                      v468 = *MEMORY[0x1E696A578];
                      v115 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v290 = objc_opt_class();
                      v116 = v115;
                      v10 = v381;
                      v59 = [v116 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v290, @"privatizedStartTime"];
                      v469 = v59;
                      v339 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v469 forKeys:&v468 count:1];
                      v340 = 0;
                      v27 = 0;
                      *v378 = [v114 initWithDomain:v354 code:2 userInfo:?];
                      goto LABEL_179;
                    }

                    v340 = 0;
                    v27 = 0;
LABEL_159:
                    v54 = v374;
                    v103 = v342;
                    goto LABEL_368;
                  }

                  v347 = 0;
                }

                else
                {
                  v347 = 0;
                  v9 = v13;
                }

                v10 = v381;
                goto LABEL_59;
              }

              if (v14)
              {
                v351 = v13;
                v363 = v16;
                v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                v95 = *MEMORY[0x1E698F240];
                v476 = *MEMORY[0x1E696A578];
                v366 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialTreatmentId"];
                v477 = v366;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v477 forKeys:&v476 count:1];
                v15 = v372;
                v10 = v381;
                v9 = v351;
                v367 = v7 = v363;
                v96 = [v94 initWithDomain:v95 code:2 userInfo:?];
                v22 = 0;
                v27 = 0;
                *v378 = v96;
                v54 = v374;
                goto LABEL_372;
              }

              v22 = 0;
              v27 = 0;
              v54 = v374;
              v9 = v13;
              v10 = v381;
              v15 = v372;
LABEL_373:

              goto LABEL_374;
            }
          }

          else
          {
            v7 = v16;
          }

          v22 = 0;
          goto LABEL_38;
        }

        if (v14)
        {
          v369 = v6;
          v350 = v13;
          v362 = v16;
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = *MEMORY[0x1E698F240];
          v478 = *MEMORY[0x1E696A578];
          v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
          v479 = v91;
          v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v479 forKeys:&v478 count:1];
          v93 = v89;
          v22 = v91;
          v10 = v381;
          v11 = v17;
          v9 = v350;
          v7 = v362;
          v6 = v369;
          v373 = v92;
          v375 = 0;
          v27 = 0;
          *v378 = [v93 initWithDomain:v90 code:2 userInfo:?];
          v54 = v374;
          goto LABEL_373;
        }

        v375 = 0;
        v27 = 0;
        v54 = v374;
        v9 = v13;
        v10 = v381;
        v11 = v17;
        v7 = v16;
LABEL_374:

        self = v376;
        goto LABEL_375;
      }

      v54 = v15;
      if (v14)
      {
        v349 = v13;
        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
        v86 = *MEMORY[0x1E698F240];
        v480 = *MEMORY[0x1E696A578];
        v375 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialDeploymentId"];
        v481 = v375;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v481 forKeys:&v480 count:1];
        v10 = v381;
        v88 = v86;
        v9 = v349;
        v377 = v87;
        v15 = 0;
        v27 = 0;
        *v378 = [v85 initWithDomain:v88 code:2 userInfo:v87];
        goto LABEL_374;
      }

      v15 = 0;
      v27 = 0;
      v9 = v13;
      v10 = v381;
LABEL_375:

      goto LABEL_376;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_7;
    }

    if (a4)
    {
      v34 = self;
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v486 = *MEMORY[0x1E696A578];
      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"testKey"];
      v487 = v37;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v487 forKeys:&v486 count:1];
      v38 = v35;
      self = v34;
      v39 = v36;
      v40 = v37;
      v10 = 0;
      v27 = 0;
      *a4 = [v38 initWithDomain:v39 code:2 userInfo:v11];
LABEL_379:

      goto LABEL_380;
    }

    v10 = 0;
    v27 = 0;
LABEL_380:

    goto LABEL_381;
  }

  if (a4)
  {
    v23 = self;
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E698F240];
    v488 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
    v489[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v489 forKeys:&v488 count:1];
    v26 = v24;
    self = v23;
    v8 = 0;
    v27 = 0;
    *a4 = [v26 initWithDomain:v25 code:2 userInfo:v9];
    goto LABEL_380;
  }

  v8 = 0;
  v27 = 0;
LABEL_381:

  v284 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpanEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_traceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentSpanId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spanId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrivatizedStartTime)
  {
    privatizedStartTime = self->_privatizedStartTime;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPrivatizedEndTime)
  {
    privatizedEndTime = self->_privatizedEndTime;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIntervalInMilliSeconds)
  {
    intervalInMilliSeconds = self->_intervalInMilliSeconds;
    PBDataWriterWriteUint32Field();
  }

  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasErrorCode)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStartMemoryLevelInKB)
  {
    startMemoryLevelInKB = self->_startMemoryLevelInKB;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasEndMemoryLevelInKB)
  {
    endMemoryLevelInKB = self->_endMemoryLevelInKB;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMemoryLevelDeltaInKB)
  {
    memoryLevelDeltaInKB = self->_memoryLevelDeltaInKB;
    PBDataWriterWriteUint32Field();
  }

  if (self->_gcdQueueName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_qosClassName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_relativePriority)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_projectName)
  {
    PBDataWriterWriteStringField();
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = self->_attributes;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    do
    {
      v16 = 0;
      do
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v60 + 1) + 8 * v16);
        v59 = 0;
        PBDataWriterPlaceMark();
        [v17 writeTo:v4];
        PBDataWriterRecallMark();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v14);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v18 = self->_infoEvents;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v56;
    do
    {
      v22 = 0;
      do
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v55 + 1) + 8 * v22);
        v59 = 0;
        PBDataWriterPlaceMark();
        [v23 writeTo:v4];
        PBDataWriterRecallMark();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v20);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v24 = self->_warningEvents;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v52;
    do
    {
      v28 = 0;
      do
      {
        if (*v52 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v51 + 1) + 8 * v28);
        v59 = 0;
        PBDataWriterPlaceMark();
        [v29 writeTo:v4];
        PBDataWriterRecallMark();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v26);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = self->_debugEvents;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v47 objects:v65 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      v34 = 0;
      do
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v47 + 1) + 8 * v34);
        v59 = 0;
        PBDataWriterPlaceMark();
        [v35 writeTo:v4];
        PBDataWriterRecallMark();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v47 objects:v65 count:16];
    }

    while (v32);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = self->_errorEvents;
  v37 = [(NSArray *)v36 countByEnumeratingWithState:&v43 objects:v64 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      v40 = 0;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v43 + 1) + 8 * v40);
        v59 = 0;
        PBDataWriterPlaceMark();
        [v41 writeTo:{v4, v43}];
        PBDataWriterRecallMark();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSArray *)v36 countByEnumeratingWithState:&v43 objects:v64 count:16];
    }

    while (v38);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v86.receiver = self;
  v86.super_class = BMSpanEvent;
  v5 = [(BMEventBase *)&v86 init];
  if (!v5)
  {
    goto LABEL_148;
  }

  v85 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    v10 = [v4 position];
    if (v10 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v87) = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (v87 & 0x7F) << v11;
      if ((v87 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    if ([v4 hasError])
    {
      v13 = 0;
    }

LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v18 = PBReaderReadString();
        v19 = 56;
        goto LABEL_109;
      case 2u:
        v18 = PBReaderReadString();
        v19 = 64;
        goto LABEL_109;
      case 0xAu:
        v18 = PBReaderReadString();
        v19 = 72;
        goto LABEL_109;
      case 0xBu:
        v18 = PBReaderReadString();
        v19 = 80;
        goto LABEL_109;
      case 0xCu:
        v18 = PBReaderReadString();
        v19 = 88;
        goto LABEL_109;
      case 0xDu:
        v18 = PBReaderReadString();
        v19 = 96;
        goto LABEL_109;
      case 0xEu:
        v18 = PBReaderReadString();
        v19 = 104;
        goto LABEL_109;
      case 0xFu:
        v18 = PBReaderReadString();
        v19 = 112;
        goto LABEL_109;
      case 0x10u:
        v18 = PBReaderReadString();
        v19 = 120;
        goto LABEL_109;
      case 0x11u:
        v18 = PBReaderReadString();
        v19 = 128;
        goto LABEL_109;
      case 0x12u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v5->_hasPrivatizedStartTime = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v59 = [v4 position] + 1;
          if (v59 >= [v4 position] && (v60 = objc_msgSend(v4, "position") + 1, v60 <= objc_msgSend(v4, "length")))
          {
            v61 = [v4 data];
            [v61 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v58 |= (v87 & 0x7F) << v56;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v17 = v57++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_140;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v58;
        }

LABEL_140:
        v71 = 28;
        goto LABEL_145;
      case 0x13u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasPrivatizedEndTime = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v40 = [v4 position] + 1;
          if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
          {
            v42 = [v4 data];
            [v42 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v39 |= (v87 & 0x7F) << v37;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v17 = v38++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_128;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v39;
        }

LABEL_128:
        v71 = 32;
        goto LABEL_145;
      case 0x14u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasIntervalInMilliSeconds = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v33 |= (v87 & 0x7F) << v31;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v17 = v32++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_124;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v33;
        }

LABEL_124:
        v71 = 36;
        goto LABEL_145;
      case 0x15u:
        v18 = PBReaderReadString();
        v19 = 136;
        goto LABEL_109;
      case 0x16u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasErrorCode = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v47 = [v4 position] + 1;
          if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
          {
            v49 = [v4 data];
            [v49 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v46 |= (v87 & 0x7F) << v44;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v17 = v45++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_132;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v46;
        }

LABEL_132:
        v71 = 40;
        goto LABEL_145;
      case 0x17u:
        v18 = PBReaderReadString();
        v19 = 144;
        goto LABEL_109;
      case 0x18u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v5->_hasStartMemoryLevelInKB = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v65 = [v4 position] + 1;
          if (v65 >= [v4 position] && (v66 = objc_msgSend(v4, "position") + 1, v66 <= objc_msgSend(v4, "length")))
          {
            v67 = [v4 data];
            [v67 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v64 |= (v87 & 0x7F) << v62;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v17 = v63++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_144;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v64;
        }

LABEL_144:
        v71 = 44;
        goto LABEL_145;
      case 0x19u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasEndMemoryLevelInKB = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v53 = [v4 position] + 1;
          if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
          {
            v55 = [v4 data];
            [v55 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v52 |= (v87 & 0x7F) << v50;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v17 = v51++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_136;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v52;
        }

LABEL_136:
        v71 = 48;
        goto LABEL_145;
      case 0x1Au:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasMemoryLevelDeltaInKB = 1;
        break;
      case 0x1Bu:
        v18 = PBReaderReadString();
        v19 = 152;
        goto LABEL_109;
      case 0x1Cu:
        v18 = PBReaderReadString();
        v19 = 160;
        goto LABEL_109;
      case 0x1Du:
        v18 = PBReaderReadString();
        v19 = 168;
        goto LABEL_109;
      case 0x1Eu:
        v18 = PBReaderReadString();
        v19 = 176;
LABEL_109:
        v68 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        continue;
      case 0x28u:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v30 = [[BMSpanEventAttribute alloc] initByReadFrom:v4];
        if (!v30)
        {
          goto LABEL_150;
        }

        v28 = v30;
        v29 = v85;
        goto LABEL_116;
      case 0x29u:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v43 = [[BMSpanEventSubEvent alloc] initByReadFrom:v4];
        if (!v43)
        {
          goto LABEL_150;
        }

        v28 = v43;
        v29 = v6;
        goto LABEL_116;
      case 0x2Au:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v27 = [[BMSpanEventSubEvent alloc] initByReadFrom:v4];
        if (!v27)
        {
          goto LABEL_150;
        }

        v28 = v27;
        v29 = v7;
        goto LABEL_116;
      case 0x2Bu:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v70 = [[BMSpanEventSubEvent alloc] initByReadFrom:v4];
        if (!v70)
        {
          goto LABEL_150;
        }

        v28 = v70;
        v29 = v8;
        goto LABEL_116;
      case 0x2Cu:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v69 = [[BMSpanEventSubEvent alloc] initByReadFrom:v4];
        if (!v69)
        {
          goto LABEL_150;
        }

        v28 = v69;
        v29 = v9;
LABEL_116:
        [v29 addObject:v28];
        PBReaderRecallMark();

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_150:

        goto LABEL_147;
    }

    while (1)
    {
      LOBYTE(v87) = 0;
      v23 = [v4 position] + 1;
      if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
      {
        v25 = [v4 data];
        [v25 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v22 |= (v87 & 0x7F) << v20;
      if ((v87 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ >= 9;
      if (v17)
      {
        v26 = 0;
        goto LABEL_120;
      }
    }

    if ([v4 hasError])
    {
      v26 = 0;
    }

    else
    {
      v26 = v22;
    }

LABEL_120:
    v71 = 52;
LABEL_145:
    *(&v5->super.super.isa + v71) = v26;
  }

  v72 = [v85 copy];
  attributes = v5->_attributes;
  v5->_attributes = v72;

  v74 = [v6 copy];
  infoEvents = v5->_infoEvents;
  v5->_infoEvents = v74;

  v76 = [v7 copy];
  warningEvents = v5->_warningEvents;
  v5->_warningEvents = v76;

  v78 = [v8 copy];
  debugEvents = v5->_debugEvents;
  v5->_debugEvents = v78;

  v80 = [v9 copy];
  errorEvents = v5->_errorEvents;
  v5->_errorEvents = v80;

  v82 = [v4 hasError];
  if (v82)
  {
LABEL_147:
    v83 = 0;
  }

  else
  {
LABEL_148:
    v83 = v5;
  }

  return v83;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v31 = [(BMSpanEvent *)self deviceIdentifier];
  v33 = [(BMSpanEvent *)self testKey];
  v32 = [(BMSpanEvent *)self version];
  v28 = [(BMSpanEvent *)self name];
  v30 = [(BMSpanEvent *)self trialDeploymentId];
  v27 = [(BMSpanEvent *)self trialExperimentId];
  v29 = [(BMSpanEvent *)self trialTreatmentId];
  v24 = [(BMSpanEvent *)self traceId];
  v26 = [(BMSpanEvent *)self parentSpanId];
  v17 = [(BMSpanEvent *)self spanId];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedStartTime](self, "privatizedStartTime")}];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedEndTime](self, "privatizedEndTime")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent intervalInMilliSeconds](self, "intervalInMilliSeconds")}];
  v23 = [(BMSpanEvent *)self errorString];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent errorCode](self, "errorCode")}];
  v22 = [(BMSpanEvent *)self processName];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent startMemoryLevelInKB](self, "startMemoryLevelInKB")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent endMemoryLevelInKB](self, "endMemoryLevelInKB")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent memoryLevelDeltaInKB](self, "memoryLevelDeltaInKB")}];
  v12 = [(BMSpanEvent *)self gcdQueueName];
  v3 = [(BMSpanEvent *)self qosClassName];
  v11 = [(BMSpanEvent *)self relativePriority];
  v4 = [(BMSpanEvent *)self projectName];
  v10 = [(BMSpanEvent *)self attributes];
  v5 = [(BMSpanEvent *)self infoEvents];
  v6 = [(BMSpanEvent *)self warningEvents];
  v7 = [(BMSpanEvent *)self debugEvents];
  v8 = [(BMSpanEvent *)self errorEvents];
  v19 = [v18 initWithFormat:@"BMSpanEvent with deviceIdentifier: %@, testKey: %@, version: %@, name: %@, trialDeploymentId: %@, trialExperimentId: %@, trialTreatmentId: %@, traceId: %@, parentSpanId: %@, spanId: %@, privatizedStartTime: %@, privatizedEndTime: %@, intervalInMilliSeconds: %@, errorString: %@, errorCode: %@, processName: %@, startMemoryLevelInKB: %@, endMemoryLevelInKB: %@, memoryLevelDeltaInKB: %@, gcdQueueName: %@, qosClassName: %@, relativePriority: %@, projectName: %@, attributes: %@, infoEvents: %@, warningEvents: %@, debugEvents: %@, errorEvents: %@", v31, v33, v32, v28, v30, v27, v29, v24, v26, v17, v16, v25, v15, v23, v14, v22, v21, v20, v13, v12, v3, v11, v4, v10, v5, v6, v7, v8];

  return v19;
}

- (BMSpanEvent)initWithDeviceIdentifier:(id)a3 testKey:(id)a4 version:(id)a5 name:(id)a6 trialDeploymentId:(id)a7 trialExperimentId:(id)a8 trialTreatmentId:(id)a9 traceId:(id)a10 parentSpanId:(id)a11 spanId:(id)a12 privatizedStartTime:(id)a13 privatizedEndTime:(id)a14 intervalInMilliSeconds:(id)a15 errorString:(id)a16 errorCode:(id)a17 processName:(id)a18 startMemoryLevelInKB:(id)a19 endMemoryLevelInKB:(id)a20 memoryLevelDeltaInKB:(id)a21 gcdQueueName:(id)a22 qosClassName:(id)a23 relativePriority:(id)a24 projectName:(id)a25 attributes:(id)a26 infoEvents:(id)a27 warningEvents:(id)a28 debugEvents:(id)a29 errorEvents:(id)a30
{
  v73 = a3;
  v72 = a4;
  v71 = a5;
  v48 = a6;
  v70 = a6;
  v49 = a7;
  v69 = a7;
  v68 = a8;
  v67 = a9;
  v66 = a10;
  v65 = a11;
  v64 = a12;
  v51 = a13;
  v50 = a14;
  v75 = a15;
  v63 = a16;
  v35 = a17;
  v62 = a18;
  v36 = a19;
  v37 = a20;
  v74 = a21;
  v61 = a22;
  v60 = a23;
  v59 = a24;
  v58 = a25;
  v57 = a26;
  v56 = a27;
  v55 = a28;
  v54 = a29;
  v53 = a30;
  v76.receiver = self;
  v76.super_class = BMSpanEvent;
  v38 = [(BMEventBase *)&v76 init];
  if (v38)
  {
    v38->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v38->_deviceIdentifier, a3);
    objc_storeStrong(&v38->_testKey, a4);
    objc_storeStrong(&v38->_version, a5);
    objc_storeStrong(&v38->_name, v48);
    objc_storeStrong(&v38->_trialDeploymentId, v49);
    objc_storeStrong(&v38->_trialExperimentId, a8);
    objc_storeStrong(&v38->_trialTreatmentId, a9);
    objc_storeStrong(&v38->_traceId, a10);
    objc_storeStrong(&v38->_parentSpanId, a11);
    objc_storeStrong(&v38->_spanId, a12);
    if (v51)
    {
      v38->_hasPrivatizedStartTime = 1;
      v39 = [v51 unsignedIntValue];
    }

    else
    {
      v39 = 0;
      v38->_hasPrivatizedStartTime = 0;
    }

    v38->_privatizedStartTime = v39;
    if (v50)
    {
      v38->_hasPrivatizedEndTime = 1;
      v40 = [v50 unsignedIntValue];
    }

    else
    {
      v40 = 0;
      v38->_hasPrivatizedEndTime = 0;
    }

    v38->_privatizedEndTime = v40;
    if (v75)
    {
      v38->_hasIntervalInMilliSeconds = 1;
      v41 = [v75 unsignedIntValue];
    }

    else
    {
      v41 = 0;
      v38->_hasIntervalInMilliSeconds = 0;
    }

    v38->_intervalInMilliSeconds = v41;
    objc_storeStrong(&v38->_errorString, a16);
    if (v35)
    {
      v38->_hasErrorCode = 1;
      v42 = [v35 unsignedIntValue];
    }

    else
    {
      v42 = 0;
      v38->_hasErrorCode = 0;
    }

    v38->_errorCode = v42;
    objc_storeStrong(&v38->_processName, a18);
    if (v36)
    {
      v38->_hasStartMemoryLevelInKB = 1;
      v43 = [v36 unsignedIntValue];
    }

    else
    {
      v43 = 0;
      v38->_hasStartMemoryLevelInKB = 0;
    }

    v38->_startMemoryLevelInKB = v43;
    if (v37)
    {
      v38->_hasEndMemoryLevelInKB = 1;
      v44 = [v37 unsignedIntValue];
    }

    else
    {
      v44 = 0;
      v38->_hasEndMemoryLevelInKB = 0;
    }

    v38->_endMemoryLevelInKB = v44;
    v45 = v74;
    if (v74)
    {
      v38->_hasMemoryLevelDeltaInKB = 1;
      v45 = [v74 unsignedIntValue];
    }

    else
    {
      v38->_hasMemoryLevelDeltaInKB = 0;
    }

    v38->_memoryLevelDeltaInKB = v45;
    objc_storeStrong(&v38->_gcdQueueName, a22);
    objc_storeStrong(&v38->_qosClassName, a23);
    objc_storeStrong(&v38->_relativePriority, a24);
    objc_storeStrong(&v38->_projectName, a25);
    objc_storeStrong(&v38->_attributes, a26);
    objc_storeStrong(&v38->_infoEvents, a27);
    objc_storeStrong(&v38->_warningEvents, a28);
    objc_storeStrong(&v38->_debugEvents, a29);
    objc_storeStrong(&v38->_errorEvents, a30);
  }

  return v38;
}

+ (id)protoFields
{
  v33[28] = *MEMORY[0x1E69E9840];
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:1 type:13 subMessageClass:0];
  v33[0] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"testKey" number:2 type:13 subMessageClass:0];
  v33[1] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:10 type:13 subMessageClass:0];
  v33[2] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:11 type:13 subMessageClass:0];
  v33[3] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialDeploymentId" number:12 type:13 subMessageClass:0];
  v33[4] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentId" number:13 type:13 subMessageClass:0];
  v33[5] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialTreatmentId" number:14 type:13 subMessageClass:0];
  v33[6] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"traceId" number:15 type:13 subMessageClass:0];
  v33[7] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentSpanId" number:16 type:13 subMessageClass:0];
  v33[8] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spanId" number:17 type:13 subMessageClass:0];
  v33[9] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedStartTime" number:18 type:4 subMessageClass:0];
  v33[10] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedEndTime" number:19 type:4 subMessageClass:0];
  v33[11] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intervalInMilliSeconds" number:20 type:4 subMessageClass:0];
  v33[12] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorString" number:21 type:13 subMessageClass:0];
  v33[13] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:22 type:4 subMessageClass:0];
  v33[14] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"processName" number:23 type:13 subMessageClass:0];
  v33[15] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startMemoryLevelInKB" number:24 type:4 subMessageClass:0];
  v33[16] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endMemoryLevelInKB" number:25 type:4 subMessageClass:0];
  v33[17] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"memoryLevelDeltaInKB" number:26 type:4 subMessageClass:0];
  v33[18] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gcdQueueName" number:27 type:13 subMessageClass:0];
  v33[19] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosClassName" number:28 type:13 subMessageClass:0];
  v33[20] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"relativePriority" number:29 type:13 subMessageClass:0];
  v33[21] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"projectName" number:30 type:13 subMessageClass:0];
  v33[22] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attributes" number:40 type:14 subMessageClass:objc_opt_class()];
  v33[23] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"infoEvents" number:41 type:14 subMessageClass:objc_opt_class()];
  v33[24] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"warningEvents" number:42 type:14 subMessageClass:objc_opt_class()];
  v33[25] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"debugEvents" number:43 type:14 subMessageClass:objc_opt_class()];
  v33[26] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorEvents" number:44 type:14 subMessageClass:objc_opt_class()];
  v33[27] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:28];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v33[28] = *MEMORY[0x1E69E9840];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"testKey" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialDeploymentId" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentId" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialTreatmentId" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"traceId" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentSpanId" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spanId" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedStartTime" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedEndTime" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intervalInMilliSeconds" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorString" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"processName" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startMemoryLevelInKB" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endMemoryLevelInKB" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"memoryLevelDeltaInKB" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gcdQueueName" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosClassName" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"relativePriority" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"projectName" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_366];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"infoEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_368];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"warningEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_370_78096];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"debugEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_372_78098];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"errorEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_374_78100];
  v33[0] = v32;
  v33[1] = v31;
  v33[2] = v30;
  v33[3] = v29;
  v33[4] = v28;
  v33[5] = v27;
  v33[6] = v26;
  v33[7] = v25;
  v33[8] = v24;
  v33[9] = v23;
  v33[10] = v22;
  v33[11] = v20;
  v33[12] = v18;
  v33[13] = v17;
  v33[14] = v21;
  v33[15] = v16;
  v33[16] = v19;
  v33[17] = v15;
  v33[18] = v2;
  v33[19] = v3;
  v33[20] = v4;
  v33[21] = v14;
  v33[22] = v5;
  v33[23] = v6;
  v33[24] = v13;
  v33[25] = v12;
  v33[26] = v7;
  v33[27] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:28];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __22__BMSpanEvent_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _errorEventsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __22__BMSpanEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _debugEventsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __22__BMSpanEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _warningEventsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __22__BMSpanEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _infoEventsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __22__BMSpanEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _attributesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (BMSpanEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMSpanEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end