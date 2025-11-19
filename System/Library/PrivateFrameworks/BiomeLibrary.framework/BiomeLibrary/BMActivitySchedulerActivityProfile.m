@interface BMActivitySchedulerActivityProfile
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMActivitySchedulerActivityProfile)initWithBundleID:(id)a3 activityname:(id)a4 completed:(id)a5 CPUAwakeTime:(id)a6 CPUTime:(id)a7 endBatteryTemperature:(id)a8 endTime:(id)a9 endedInIdle:(id)a10 endedOnBattery:(id)a11 networkProfSuccess:(id)a12 qosBackground:(id)a13 qosLegacy:(id)a14 qosUserInit:(id)a15 runTime:(id)a16 rusageProfSuccess:(id)a17 servicedEnergy:(id)a18 sessionProfSuccess:(id)a19 startBatteryTemperature:(id)a20 startTime:(id)a21 startedInIdle:(id)a22 startedOnBattery:(id)a23 version:(id)a24 wifiDown:(id)a25 wifiUp:(id)a26 dirtyMemoryDelta:(id)a27;
- (BMActivitySchedulerActivityProfile)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)endTime;
- (NSDate)startTime;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMActivitySchedulerActivityProfile

+ (id)columns
{
  v30[25] = *MEMORY[0x1E69E9840];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityname" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completed" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"CPUAwakeTime" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"CPUTime" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endBatteryTemperature" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTime" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:2];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endedInIdle" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endedOnBattery" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"networkProfSuccess" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosBackground" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosLegacy" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosUserInit" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:0 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"runTime" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rusageProfSuccess" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"servicedEnergy" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionProfSuccess" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startBatteryTemperature" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTime" dataType:3 requestOnly:0 fieldNumber:19 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startedInIdle" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startedOnBattery" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wifiDown" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wifiUp" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dirtyMemoryDelta" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v30[0] = v29;
  v30[1] = v28;
  v30[2] = v27;
  v30[3] = v26;
  v30[4] = v25;
  v30[5] = v24;
  v30[6] = v23;
  v30[7] = v22;
  v30[8] = v21;
  v30[9] = v20;
  v30[10] = v19;
  v30[11] = v18;
  v30[12] = v17;
  v30[13] = v16;
  v30[14] = v15;
  v30[15] = v2;
  v30[16] = v3;
  v30[17] = v4;
  v30[18] = v14;
  v30[19] = v5;
  v30[20] = v6;
  v30[21] = v7;
  v30[22] = v13;
  v30[23] = v8;
  v30[24] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:25];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMActivitySchedulerActivityProfile *)self bundleID];
    v7 = [v5 bundleID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMActivitySchedulerActivityProfile *)self bundleID];
      v10 = [v5 bundleID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_124;
      }
    }

    v13 = [(BMActivitySchedulerActivityProfile *)self activityname];
    v14 = [v5 activityname];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMActivitySchedulerActivityProfile *)self activityname];
      v17 = [v5 activityname];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasCompleted](self, "hasCompleted") || [v5 hasCompleted])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasCompleted])
      {
        goto LABEL_124;
      }

      if (![v5 hasCompleted])
      {
        goto LABEL_124;
      }

      v19 = [(BMActivitySchedulerActivityProfile *)self completed];
      if (v19 != [v5 completed])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasCPUAwakeTime](self, "hasCPUAwakeTime") || [v5 hasCPUAwakeTime])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasCPUAwakeTime])
      {
        goto LABEL_124;
      }

      if (![v5 hasCPUAwakeTime])
      {
        goto LABEL_124;
      }

      v20 = [(BMActivitySchedulerActivityProfile *)self CPUAwakeTime];
      if (v20 != [v5 CPUAwakeTime])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasCPUTime](self, "hasCPUTime") || [v5 hasCPUTime])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasCPUTime])
      {
        goto LABEL_124;
      }

      if (![v5 hasCPUTime])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self CPUTime];
      v22 = v21;
      [v5 CPUTime];
      if (v22 != v23)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasEndBatteryTemperature](self, "hasEndBatteryTemperature") || [v5 hasEndBatteryTemperature])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasEndBatteryTemperature])
      {
        goto LABEL_124;
      }

      if (![v5 hasEndBatteryTemperature])
      {
        goto LABEL_124;
      }

      v24 = [(BMActivitySchedulerActivityProfile *)self endBatteryTemperature];
      if (v24 != [v5 endBatteryTemperature])
      {
        goto LABEL_124;
      }
    }

    v25 = [(BMActivitySchedulerActivityProfile *)self endTime];
    v26 = [v5 endTime];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMActivitySchedulerActivityProfile *)self endTime];
      v29 = [v5 endTime];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasEndedInIdle](self, "hasEndedInIdle") || [v5 hasEndedInIdle])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasEndedInIdle])
      {
        goto LABEL_124;
      }

      if (![v5 hasEndedInIdle])
      {
        goto LABEL_124;
      }

      v31 = [(BMActivitySchedulerActivityProfile *)self endedInIdle];
      if (v31 != [v5 endedInIdle])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasEndedOnBattery](self, "hasEndedOnBattery") || [v5 hasEndedOnBattery])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasEndedOnBattery])
      {
        goto LABEL_124;
      }

      if (![v5 hasEndedOnBattery])
      {
        goto LABEL_124;
      }

      v32 = [(BMActivitySchedulerActivityProfile *)self endedOnBattery];
      if (v32 != [v5 endedOnBattery])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasNetworkProfSuccess](self, "hasNetworkProfSuccess") || [v5 hasNetworkProfSuccess])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasNetworkProfSuccess])
      {
        goto LABEL_124;
      }

      if (![v5 hasNetworkProfSuccess])
      {
        goto LABEL_124;
      }

      v33 = [(BMActivitySchedulerActivityProfile *)self networkProfSuccess];
      if (v33 != [v5 networkProfSuccess])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasQosBackground](self, "hasQosBackground") || [v5 hasQosBackground])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasQosBackground])
      {
        goto LABEL_124;
      }

      if (![v5 hasQosBackground])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self qosBackground];
      v35 = v34;
      [v5 qosBackground];
      if (v35 != v36)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasQosLegacy](self, "hasQosLegacy") || [v5 hasQosLegacy])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasQosLegacy])
      {
        goto LABEL_124;
      }

      if (![v5 hasQosLegacy])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self qosLegacy];
      v38 = v37;
      [v5 qosLegacy];
      if (v38 != v39)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasQosUserInit](self, "hasQosUserInit") || [v5 hasQosUserInit])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasQosUserInit])
      {
        goto LABEL_124;
      }

      if (![v5 hasQosUserInit])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self qosUserInit];
      v41 = v40;
      [v5 qosUserInit];
      if (v41 != v42)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasRunTime](self, "hasRunTime") || [v5 hasRunTime])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasRunTime])
      {
        goto LABEL_124;
      }

      if (![v5 hasRunTime])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self runTime];
      v44 = v43;
      [v5 runTime];
      if (v44 != v45)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasRusageProfSuccess](self, "hasRusageProfSuccess") || [v5 hasRusageProfSuccess])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasRusageProfSuccess])
      {
        goto LABEL_124;
      }

      if (![v5 hasRusageProfSuccess])
      {
        goto LABEL_124;
      }

      v46 = [(BMActivitySchedulerActivityProfile *)self rusageProfSuccess];
      if (v46 != [v5 rusageProfSuccess])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasServicedEnergy](self, "hasServicedEnergy") || [v5 hasServicedEnergy])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasServicedEnergy])
      {
        goto LABEL_124;
      }

      if (![v5 hasServicedEnergy])
      {
        goto LABEL_124;
      }

      v47 = [(BMActivitySchedulerActivityProfile *)self servicedEnergy];
      if (v47 != [v5 servicedEnergy])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasSessionProfSuccess](self, "hasSessionProfSuccess") || [v5 hasSessionProfSuccess])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasSessionProfSuccess])
      {
        goto LABEL_124;
      }

      if (![v5 hasSessionProfSuccess])
      {
        goto LABEL_124;
      }

      v48 = [(BMActivitySchedulerActivityProfile *)self sessionProfSuccess];
      if (v48 != [v5 sessionProfSuccess])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasStartBatteryTemperature](self, "hasStartBatteryTemperature") || [v5 hasStartBatteryTemperature])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasStartBatteryTemperature])
      {
        goto LABEL_124;
      }

      if (![v5 hasStartBatteryTemperature])
      {
        goto LABEL_124;
      }

      v49 = [(BMActivitySchedulerActivityProfile *)self startBatteryTemperature];
      if (v49 != [v5 startBatteryTemperature])
      {
        goto LABEL_124;
      }
    }

    v50 = [(BMActivitySchedulerActivityProfile *)self startTime];
    v51 = [v5 startTime];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [(BMActivitySchedulerActivityProfile *)self startTime];
      v54 = [v5 startTime];
      v55 = [v53 isEqual:v54];

      if (!v55)
      {
        goto LABEL_124;
      }
    }

    if (!-[BMActivitySchedulerActivityProfile hasStartedInIdle](self, "hasStartedInIdle") && ![v5 hasStartedInIdle] || -[BMActivitySchedulerActivityProfile hasStartedInIdle](self, "hasStartedInIdle") && objc_msgSend(v5, "hasStartedInIdle") && (v56 = -[BMActivitySchedulerActivityProfile startedInIdle](self, "startedInIdle"), v56 == objc_msgSend(v5, "startedInIdle")))
    {
      if (!-[BMActivitySchedulerActivityProfile hasStartedOnBattery](self, "hasStartedOnBattery") && ![v5 hasStartedOnBattery] || -[BMActivitySchedulerActivityProfile hasStartedOnBattery](self, "hasStartedOnBattery") && objc_msgSend(v5, "hasStartedOnBattery") && (v57 = -[BMActivitySchedulerActivityProfile startedOnBattery](self, "startedOnBattery"), v57 == objc_msgSend(v5, "startedOnBattery")))
      {
        if (!-[BMActivitySchedulerActivityProfile hasVersion](self, "hasVersion") && ![v5 hasVersion] || -[BMActivitySchedulerActivityProfile hasVersion](self, "hasVersion") && objc_msgSend(v5, "hasVersion") && (v58 = -[BMActivitySchedulerActivityProfile version](self, "version"), v58 == objc_msgSend(v5, "version")))
        {
          if (!-[BMActivitySchedulerActivityProfile hasWifiDown](self, "hasWifiDown") && ![v5 hasWifiDown] || -[BMActivitySchedulerActivityProfile hasWifiDown](self, "hasWifiDown") && objc_msgSend(v5, "hasWifiDown") && (v59 = -[BMActivitySchedulerActivityProfile wifiDown](self, "wifiDown"), v59 == objc_msgSend(v5, "wifiDown")))
          {
            if (!-[BMActivitySchedulerActivityProfile hasWifiUp](self, "hasWifiUp") && ![v5 hasWifiUp] || -[BMActivitySchedulerActivityProfile hasWifiUp](self, "hasWifiUp") && objc_msgSend(v5, "hasWifiUp") && (v60 = -[BMActivitySchedulerActivityProfile wifiUp](self, "wifiUp"), v60 == objc_msgSend(v5, "wifiUp")))
            {
              if (!-[BMActivitySchedulerActivityProfile hasDirtyMemoryDelta](self, "hasDirtyMemoryDelta") && ![v5 hasDirtyMemoryDelta])
              {
                v12 = 1;
                goto LABEL_125;
              }

              if (-[BMActivitySchedulerActivityProfile hasDirtyMemoryDelta](self, "hasDirtyMemoryDelta") && [v5 hasDirtyMemoryDelta])
              {
                v61 = [(BMActivitySchedulerActivityProfile *)self dirtyMemoryDelta];
                v12 = v61 == [v5 dirtyMemoryDelta];
LABEL_125:

                goto LABEL_126;
              }
            }
          }
        }
      }
    }

LABEL_124:
    v12 = 0;
    goto LABEL_125;
  }

  v12 = 0;
LABEL_126:

  return v12;
}

- (NSDate)startTime
{
  if (self->_hasRaw_startTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)endTime
{
  if (self->_hasRaw_endTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v98[25] = *MEMORY[0x1E69E9840];
  v3 = [(BMActivitySchedulerActivityProfile *)self bundleID];
  v4 = [(BMActivitySchedulerActivityProfile *)self activityname];
  if ([(BMActivitySchedulerActivityProfile *)self hasCompleted])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile completed](self, "completed")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasCPUAwakeTime])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile CPUAwakeTime](self, "CPUAwakeTime")}];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasCPUTime]|| ([(BMActivitySchedulerActivityProfile *)self CPUTime], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self CPUTime];
    v8 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self CPUTime];
    v9 = [v8 numberWithDouble:?];
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasEndBatteryTemperature])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile endBatteryTemperature](self, "endBatteryTemperature")}];
  }

  else
  {
    v96 = 0;
  }

  v10 = [(BMActivitySchedulerActivityProfile *)self endTime];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(BMActivitySchedulerActivityProfile *)self endTime];
    [v12 timeIntervalSince1970];
    v95 = [v11 numberWithDouble:?];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasEndedInIdle])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedInIdle](self, "endedInIdle")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasEndedOnBattery])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedOnBattery](self, "endedOnBattery")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasNetworkProfSuccess])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile networkProfSuccess](self, "networkProfSuccess")}];
  }

  else
  {
    v92 = 0;
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasQosBackground]|| ([(BMActivitySchedulerActivityProfile *)self qosBackground], fabs(v13) == INFINITY))
  {
    v91 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self qosBackground];
    v14 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self qosBackground];
    v91 = [v14 numberWithDouble:?];
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasQosLegacy]|| ([(BMActivitySchedulerActivityProfile *)self qosLegacy], fabs(v15) == INFINITY))
  {
    v90 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self qosLegacy];
    v16 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self qosLegacy];
    v90 = [v16 numberWithDouble:?];
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasQosUserInit]|| ([(BMActivitySchedulerActivityProfile *)self qosUserInit], fabs(v17) == INFINITY))
  {
    v89 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self qosUserInit];
    v18 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self qosUserInit];
    v89 = [v18 numberWithDouble:?];
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasRunTime]|| ([(BMActivitySchedulerActivityProfile *)self runTime], fabs(v19) == INFINITY))
  {
    v88 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self runTime];
    v20 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self runTime];
    v88 = [v20 numberWithDouble:?];
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasRusageProfSuccess])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile rusageProfSuccess](self, "rusageProfSuccess")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasServicedEnergy])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile servicedEnergy](self, "servicedEnergy")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasSessionProfSuccess])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile sessionProfSuccess](self, "sessionProfSuccess")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasStartBatteryTemperature])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile startBatteryTemperature](self, "startBatteryTemperature")}];
  }

  else
  {
    v84 = 0;
  }

  v21 = [(BMActivitySchedulerActivityProfile *)self startTime];
  if (v21)
  {
    v22 = MEMORY[0x1E696AD98];
    v23 = [(BMActivitySchedulerActivityProfile *)self startTime];
    [v23 timeIntervalSince1970];
    v83 = [v22 numberWithDouble:?];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasStartedInIdle])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedInIdle](self, "startedInIdle")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasStartedOnBattery])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedOnBattery](self, "startedOnBattery")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasVersion])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile version](self, "version")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasWifiDown])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiDown](self, "wifiDown")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasWifiUp])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiUp](self, "wifiUp")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasDirtyMemoryDelta])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile dirtyMemoryDelta](self, "dirtyMemoryDelta")}];
  }

  else
  {
    v24 = 0;
  }

  v97[0] = @"bundleID";
  v25 = v3;
  if (!v3)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v25;
  v98[0] = v25;
  v97[1] = @"activityname";
  v26 = v4;
  if (!v4)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v26;
  v98[1] = v26;
  v97[2] = @"completed";
  v27 = v5;
  if (!v5)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v27;
  v98[2] = v27;
  v97[3] = @"CPUAwakeTime";
  v28 = v6;
  if (!v6)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v28;
  v98[3] = v28;
  v97[4] = @"CPUTime";
  v29 = v9;
  if (!v9)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v29;
  v98[4] = v29;
  v97[5] = @"endBatteryTemperature";
  v30 = v96;
  if (!v96)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v98[5] = v30;
  v97[6] = @"endTime";
  v31 = v95;
  if (!v95)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v98[6] = v31;
  v97[7] = @"endedInIdle";
  v32 = v94;
  if (!v94)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v98[7] = v32;
  v97[8] = @"endedOnBattery";
  v33 = v93;
  if (!v93)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v98[8] = v33;
  v97[9] = @"networkProfSuccess";
  v34 = v92;
  if (!v92)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v34;
  v98[9] = v34;
  v97[10] = @"qosBackground";
  v35 = v91;
  if (!v91)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v6;
  v73 = v35;
  v98[10] = v35;
  v97[11] = @"qosLegacy";
  v36 = v90;
  if (!v90)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v4;
  v72 = v36;
  v98[11] = v36;
  v97[12] = @"qosUserInit";
  v38 = v89;
  if (!v89)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v38;
  v98[12] = v38;
  v97[13] = @"runTime";
  v40 = v88;
  if (!v88)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v40;
  v98[13] = v40;
  v97[14] = @"rusageProfSuccess";
  v41 = v87;
  if (!v87)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v41;
  v98[14] = v41;
  v97[15] = @"servicedEnergy";
  v42 = v86;
  if (!v86)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v42;
  v98[15] = v42;
  v97[16] = @"sessionProfSuccess";
  v43 = v85;
  if (!v85)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v5;
  v59 = v43;
  v98[16] = v43;
  v97[17] = @"startBatteryTemperature";
  v44 = v84;
  if (!v84)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v44;
  v98[17] = v44;
  v97[18] = @"startTime";
  v45 = v83;
  if (!v83)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v32;
  v57 = v45;
  v98[18] = v45;
  v97[19] = @"startedInIdle";
  v46 = v82;
  if (!v82)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v24;
  v56 = v46;
  v98[19] = v46;
  v97[20] = @"startedOnBattery";
  v47 = v81;
  if (!v81)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v33;
  v64 = v31;
  v98[20] = v47;
  v97[21] = @"version";
  v48 = v80;
  if (!v80)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v9;
  v98[21] = v48;
  v97[22] = @"wifiDown";
  v50 = v79;
  if (!v79)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v98[22] = v50;
  v97[23] = @"wifiUp";
  v51 = v78;
  if (!v78)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v98[23] = v51;
  v97[24] = @"dirtyMemoryDelta";
  v52 = v77;
  if (!v77)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v98[24] = v52;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:25];
  if (!v77)
  {
  }

  v53 = v39;
  if (!v78)
  {

    v53 = v39;
  }

  if (!v79)
  {

    v53 = v39;
  }

  if (!v80)
  {

    v53 = v39;
  }

  if (!v81)
  {

    v53 = v39;
  }

  if (!v82)
  {

    v53 = v39;
  }

  if (!v83)
  {

    v53 = v39;
  }

  if (!v84)
  {

    v53 = v39;
  }

  if (!v85)
  {

    v53 = v39;
  }

  if (!v86)
  {

    v53 = v39;
  }

  if (!v87)
  {

    v53 = v39;
  }

  if (!v88)
  {

    v53 = v39;
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!v91)
  {
  }

  if (!v92)
  {
  }

  if (!v93)
  {
  }

  if (!v94)
  {
  }

  if (!v95)
  {
  }

  if (v96)
  {
    if (v49)
    {
      goto LABEL_165;
    }
  }

  else
  {

    if (v49)
    {
LABEL_165:
      if (v71)
      {
        goto LABEL_166;
      }

      goto LABEL_174;
    }
  }

  if (v71)
  {
LABEL_166:
    if (v76)
    {
      goto LABEL_167;
    }

    goto LABEL_175;
  }

LABEL_174:

  if (v76)
  {
LABEL_167:
    if (v37)
    {
      goto LABEL_168;
    }

LABEL_176:

    if (v3)
    {
      goto LABEL_169;
    }

    goto LABEL_177;
  }

LABEL_175:

  if (!v37)
  {
    goto LABEL_176;
  }

LABEL_168:
  if (v3)
  {
    goto LABEL_169;
  }

LABEL_177:

LABEL_169:
  v54 = *MEMORY[0x1E69E9840];

  return v70;
}

- (BMActivitySchedulerActivityProfile)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v363[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v313 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v313 = v7;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"activityname"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v312 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v312 = v8;
LABEL_7:
      v9 = [v6 objectForKeyedSubscript:@"completed"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v309 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v309 = v9;
LABEL_10:
        v10 = [v6 objectForKeyedSubscript:@"CPUAwakeTime"];
        v310 = v10;
        if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v304 = a4;
          v306 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v304 = a4;
          v306 = v11;
LABEL_13:
          v12 = [v6 objectForKeyedSubscript:@"CPUTime"];
          v308 = v12;
          if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v307 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v307 = v13;
LABEL_16:
            v14 = [v6 objectForKeyedSubscript:@"endBatteryTemperature"];
            v305 = v14;
            if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v303 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v303 = v15;
LABEL_19:
              v16 = [v6 objectForKeyedSubscript:@"endTime"];
              if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v301 = 0;
                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = v16;
                v29 = self;
                v30 = objc_alloc(MEMORY[0x1E695DF00]);
                [v28 doubleValue];
                v31 = v30;
                self = v29;
                v301 = [v31 initWithTimeIntervalSince1970:?];
LABEL_52:

                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v65 = self;
                v66 = v16;
                v301 = [v28 dateFromString:v66];

                self = v65;
                goto LABEL_52;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v301 = v16;
LABEL_53:
                v67 = [v6 objectForKeyedSubscript:@"endedInIdle"];
                v297 = v16;
                v300 = v67;
                if (!v67 || (v68 = v67, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v299 = 0;
                  goto LABEL_56;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v299 = v68;
LABEL_56:
                  v69 = [v6 objectForKeyedSubscript:@"endedOnBattery"];
                  v298 = v69;
                  if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v296 = 0;
                    goto LABEL_59;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v296 = v70;
LABEL_59:
                    v71 = [v6 objectForKeyedSubscript:@"networkProfSuccess"];
                    v274 = v71;
                    if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v273 = 0;
                      goto LABEL_62;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v273 = v72;
LABEL_62:
                      v73 = [v6 objectForKeyedSubscript:@"qosBackground"];
                      v272 = v73;
                      if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v271 = 0;
                        goto LABEL_65;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v271 = v74;
LABEL_65:
                        v75 = [v6 objectForKeyedSubscript:@"qosLegacy"];
                        v269 = v75;
                        if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v270 = 0;
                          goto LABEL_68;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v270 = v76;
LABEL_68:
                          v77 = [v6 objectForKeyedSubscript:@"qosUserInit"];
                          v267 = v77;
                          if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v268 = 0;
                            goto LABEL_71;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v268 = v78;
LABEL_71:
                            v79 = [v6 objectForKeyedSubscript:@"runTime"];
                            v265 = v79;
                            if (!v79 || (v80 = v79, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v266 = 0;
                              goto LABEL_74;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v266 = v80;
LABEL_74:
                              v81 = [v6 objectForKeyedSubscript:@"rusageProfSuccess"];
                              v263 = v81;
                              if (!v81 || (v82 = v81, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v264 = 0;
                                goto LABEL_77;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v264 = v82;
LABEL_77:
                                v83 = [v6 objectForKeyedSubscript:@"servicedEnergy"];
                                v261 = v83;
                                if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v262 = 0;
                                  goto LABEL_80;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v262 = v84;
LABEL_80:
                                  v85 = [v6 objectForKeyedSubscript:@"sessionProfSuccess"];
                                  v259 = v85;
                                  if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v260 = 0;
                                    goto LABEL_83;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v260 = v86;
LABEL_83:
                                    v87 = [v6 objectForKeyedSubscript:@"startBatteryTemperature"];
                                    v257 = v87;
                                    if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v258 = 0;
                                      goto LABEL_86;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v258 = v88;
LABEL_86:
                                      v89 = [v6 objectForKeyedSubscript:@"startTime"];
                                      v254 = v89;
                                      if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v256 = 0;
                                        goto LABEL_89;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v144 = v90;
                                        v145 = objc_alloc(MEMORY[0x1E695DF00]);
                                        [v144 doubleValue];
                                        v256 = [v145 initWithTimeIntervalSince1970:?];

                                        goto LABEL_89;
                                      }

                                      v185 = v90;
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v186 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                        v187 = v185;
                                        v256 = [v186 dateFromString:v187];

                                        goto LABEL_89;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v256 = v90;
LABEL_89:
                                        v91 = [v6 objectForKeyedSubscript:@"startedInIdle"];
                                        v252 = v91;
                                        if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v255 = 0;
                                          goto LABEL_92;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v255 = v92;
LABEL_92:
                                          v93 = [v6 objectForKeyedSubscript:@"startedOnBattery"];
                                          v251 = v93;
                                          if (!v93 || (v94 = v93, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v253 = 0;
LABEL_95:
                                            v95 = [v6 objectForKeyedSubscript:@"version"];
                                            v249 = v95;
                                            if (!v95)
                                            {
LABEL_165:
                                              v172 = [v6 objectForKeyedSubscript:@"wifiDown"];
                                              v247 = v172;
                                              if (v172 && (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  v243 = v95;
                                                  if (!v304)
                                                  {
                                                    v250 = 0;
                                                    v20 = 0;
                                                    v24 = v309;
                                                    v41 = v306;
                                                    goto LABEL_220;
                                                  }

                                                  v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v292 = v7;
                                                  v211 = v8;
                                                  v212 = v9;
                                                  v213 = self;
                                                  v214 = *MEMORY[0x1E698F240];
                                                  v318 = *MEMORY[0x1E696A578];
                                                  v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wifiDown"];
                                                  v319 = v248;
                                                  v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
                                                  v216 = v214;
                                                  self = v213;
                                                  v9 = v212;
                                                  v8 = v211;
                                                  v7 = v292;
                                                  v246 = v215;
                                                  v250 = 0;
                                                  v20 = 0;
                                                  *v304 = [v210 initWithDomain:v216 code:2 userInfo:?];
                                                  goto LABEL_253;
                                                }

                                                v250 = v173;
                                              }

                                              else
                                              {
                                                v250 = 0;
                                              }

                                              v174 = [v6 objectForKeyedSubscript:@"wifiUp"];
                                              v246 = v174;
                                              if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v248 = 0;
LABEL_171:
                                                v176 = [v6 objectForKeyedSubscript:@"dirtyMemoryDelta"];
                                                v245 = v176;
                                                if (!v176)
                                                {
LABEL_174:
                                                  v24 = v309;
                                                  v41 = v306;
LABEL_175:
                                                  v244 = v176;
                                                  self = [(BMActivitySchedulerActivityProfile *)self initWithBundleID:v313 activityname:v312 completed:v24 CPUAwakeTime:v41 CPUTime:v307 endBatteryTemperature:v303 endTime:v301 endedInIdle:v299 endedOnBattery:v296 networkProfSuccess:v273 qosBackground:v271 qosLegacy:v270 qosUserInit:v268 runTime:v266 rusageProfSuccess:v264 servicedEnergy:v262 sessionProfSuccess:v260 startBatteryTemperature:v258 startTime:v256 startedInIdle:v255 startedOnBattery:v253 version:v95 wifiDown:v250 wifiUp:v248 dirtyMemoryDelta:v176];
                                                  v20 = self;
LABEL_218:

LABEL_219:
                                                  goto LABEL_220;
                                                }

                                                v177 = v176;
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v176 = 0;
                                                  goto LABEL_174;
                                                }

                                                objc_opt_class();
                                                v24 = v309;
                                                v41 = v306;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v176 = v177;
                                                  goto LABEL_175;
                                                }

                                                v243 = v95;
                                                if (v304)
                                                {
                                                  v224 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v294 = v7;
                                                  v225 = v8;
                                                  v226 = v9;
                                                  v227 = self;
                                                  v228 = *MEMORY[0x1E698F240];
                                                  v314 = *MEMORY[0x1E696A578];
                                                  v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dirtyMemoryDelta"];
                                                  v315 = v229;
                                                  v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
                                                  v231 = v228;
                                                  self = v227;
                                                  v9 = v226;
                                                  v8 = v225;
                                                  v7 = v294;
                                                  *v304 = [v224 initWithDomain:v231 code:2 userInfo:v230];

                                                  v41 = v306;
                                                  v24 = v309;
                                                }

                                                v244 = 0;
                                                v20 = 0;
LABEL_217:
                                                v95 = v243;
                                                goto LABEL_218;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v248 = v175;
                                                goto LABEL_171;
                                              }

                                              v243 = v95;
                                              if (v304)
                                              {
                                                v217 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v293 = v7;
                                                v218 = v8;
                                                v219 = v9;
                                                v220 = self;
                                                v221 = *MEMORY[0x1E698F240];
                                                v316 = *MEMORY[0x1E696A578];
                                                v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wifiUp"];
                                                v317 = v244;
                                                v222 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
                                                v223 = v221;
                                                self = v220;
                                                v9 = v219;
                                                v8 = v218;
                                                v7 = v293;
                                                v245 = v222;
                                                v248 = 0;
                                                v20 = 0;
                                                *v304 = [v217 initWithDomain:v223 code:2 userInfo:?];
                                                v24 = v309;
                                                v41 = v306;
                                                goto LABEL_217;
                                              }

                                              v248 = 0;
                                              v20 = 0;
LABEL_253:
                                              v24 = v309;
                                              v41 = v306;
                                              v95 = v243;
                                              goto LABEL_219;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v95 = 0;
                                              goto LABEL_165;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v95 = v95;
                                              goto LABEL_165;
                                            }

                                            v95 = v304;
                                            if (v304)
                                            {
                                              v203 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v291 = v7;
                                              v204 = v8;
                                              v205 = v9;
                                              v206 = self;
                                              v207 = *MEMORY[0x1E698F240];
                                              v320 = *MEMORY[0x1E696A578];
                                              v250 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
                                              v321 = v250;
                                              v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
                                              v209 = v207;
                                              self = v206;
                                              v9 = v205;
                                              v8 = v204;
                                              v7 = v291;
                                              v247 = v208;
                                              v20 = 0;
                                              *v304 = [v203 initWithDomain:v209 code:2 userInfo:?];
                                              v95 = 0;
                                              v24 = v309;
                                              v41 = v306;
LABEL_220:

LABEL_221:
LABEL_222:

LABEL_223:
                                              goto LABEL_224;
                                            }

                                            v20 = 0;
LABEL_247:
                                            v24 = v309;
                                            v41 = v306;
                                            v16 = v297;
                                            goto LABEL_221;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v253 = v94;
                                            goto LABEL_95;
                                          }

                                          if (v304)
                                          {
                                            v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v290 = v7;
                                            v196 = v8;
                                            v197 = v9;
                                            v198 = self;
                                            v199 = *MEMORY[0x1E698F240];
                                            v322 = *MEMORY[0x1E696A578];
                                            v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startedOnBattery"];
                                            v323 = v200;
                                            v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
                                            v202 = v199;
                                            self = v198;
                                            v9 = v197;
                                            v8 = v196;
                                            v7 = v290;
                                            v249 = v201;
                                            v253 = 0;
                                            v20 = 0;
                                            *v304 = [v195 initWithDomain:v202 code:2 userInfo:?];
                                            v95 = v200;
                                            goto LABEL_247;
                                          }

                                          v253 = 0;
                                          v20 = 0;
LABEL_245:
                                          v24 = v309;
                                          v41 = v306;
                                          goto LABEL_222;
                                        }

                                        if (v304)
                                        {
                                          v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v289 = v7;
                                          v189 = v8;
                                          v190 = v9;
                                          v191 = self;
                                          v192 = *MEMORY[0x1E698F240];
                                          v324 = *MEMORY[0x1E696A578];
                                          v253 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startedInIdle"];
                                          v325 = v253;
                                          v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
                                          v194 = v192;
                                          self = v191;
                                          v9 = v190;
                                          v8 = v189;
                                          v7 = v289;
                                          v251 = v193;
                                          v255 = 0;
                                          v20 = 0;
                                          *v304 = [v188 initWithDomain:v194 code:2 userInfo:?];
                                          goto LABEL_245;
                                        }

                                        v255 = 0;
                                        v20 = 0;
LABEL_250:
                                        v24 = v309;
                                        v41 = v306;
                                        v16 = v297;
                                        goto LABEL_223;
                                      }

                                      if (v304)
                                      {
                                        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v295 = v7;
                                        v235 = v8;
                                        v236 = v9;
                                        v237 = self;
                                        v238 = *MEMORY[0x1E698F240];
                                        v326 = *MEMORY[0x1E696A578];
                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startTime"];
                                        v327 = v255;
                                        v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
                                        v240 = v238;
                                        self = v237;
                                        v9 = v236;
                                        v8 = v235;
                                        v7 = v295;
                                        v252 = v239;
                                        v256 = 0;
                                        v20 = 0;
                                        *v304 = [v234 initWithDomain:v240 code:2 userInfo:?];
                                        goto LABEL_250;
                                      }

                                      v256 = 0;
                                      v20 = 0;
LABEL_180:
                                      v24 = v309;
                                      v41 = v306;
LABEL_224:

                                      goto LABEL_225;
                                    }

                                    if (v304)
                                    {
                                      v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v288 = v7;
                                      v179 = v8;
                                      v180 = v9;
                                      v181 = self;
                                      v182 = *MEMORY[0x1E698F240];
                                      v328 = *MEMORY[0x1E696A578];
                                      v256 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startBatteryTemperature"];
                                      v329 = v256;
                                      v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
                                      v184 = v182;
                                      self = v181;
                                      v9 = v180;
                                      v8 = v179;
                                      v7 = v288;
                                      v254 = v183;
                                      v258 = 0;
                                      v20 = 0;
                                      *v304 = [v178 initWithDomain:v184 code:2 userInfo:?];
                                      goto LABEL_180;
                                    }

                                    v258 = 0;
                                    v20 = 0;
LABEL_213:
                                    v24 = v309;
                                    v41 = v306;
LABEL_225:

                                    goto LABEL_226;
                                  }

                                  if (v304)
                                  {
                                    v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v287 = v7;
                                    v166 = v8;
                                    v167 = v9;
                                    v168 = self;
                                    v169 = *MEMORY[0x1E698F240];
                                    v330 = *MEMORY[0x1E696A578];
                                    v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sessionProfSuccess"];
                                    v331 = v258;
                                    v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
                                    v171 = v169;
                                    self = v168;
                                    v9 = v167;
                                    v8 = v166;
                                    v7 = v287;
                                    v257 = v170;
                                    v260 = 0;
                                    v20 = 0;
                                    *v304 = [v165 initWithDomain:v171 code:2 userInfo:?];
                                    goto LABEL_213;
                                  }

                                  v260 = 0;
                                  v20 = 0;
LABEL_207:
                                  v24 = v309;
                                  v41 = v306;
LABEL_226:

                                  goto LABEL_227;
                                }

                                if (v304)
                                {
                                  v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v286 = v7;
                                  v159 = v8;
                                  v160 = v9;
                                  v161 = self;
                                  v162 = *MEMORY[0x1E698F240];
                                  v332 = *MEMORY[0x1E696A578];
                                  v260 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"servicedEnergy"];
                                  v333 = v260;
                                  v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
                                  v164 = v162;
                                  self = v161;
                                  v9 = v160;
                                  v8 = v159;
                                  v7 = v286;
                                  v259 = v163;
                                  v262 = 0;
                                  v20 = 0;
                                  *v304 = [v158 initWithDomain:v164 code:2 userInfo:?];
                                  goto LABEL_207;
                                }

                                v262 = 0;
                                v20 = 0;
LABEL_203:
                                v24 = v309;
                                v41 = v306;
LABEL_227:

                                goto LABEL_228;
                              }

                              if (v304)
                              {
                                v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v285 = v7;
                                v147 = v8;
                                v148 = v9;
                                v149 = self;
                                v150 = *MEMORY[0x1E698F240];
                                v334 = *MEMORY[0x1E696A578];
                                v262 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rusageProfSuccess"];
                                v335 = v262;
                                v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
                                v152 = v150;
                                self = v149;
                                v9 = v148;
                                v8 = v147;
                                v7 = v285;
                                v261 = v151;
                                v264 = 0;
                                v20 = 0;
                                *v304 = [v146 initWithDomain:v152 code:2 userInfo:?];
                                goto LABEL_203;
                              }

                              v264 = 0;
                              v20 = 0;
LABEL_198:
                              v24 = v309;
                              v41 = v306;
LABEL_228:

                              goto LABEL_229;
                            }

                            if (v304)
                            {
                              v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v284 = v7;
                              v138 = v8;
                              v139 = v9;
                              v140 = self;
                              v141 = *MEMORY[0x1E698F240];
                              v336 = *MEMORY[0x1E696A578];
                              v264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"runTime"];
                              v337 = v264;
                              v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
                              v143 = v141;
                              self = v140;
                              v9 = v139;
                              v8 = v138;
                              v7 = v284;
                              v263 = v142;
                              v266 = 0;
                              v20 = 0;
                              *v304 = [v137 initWithDomain:v143 code:2 userInfo:?];
                              goto LABEL_198;
                            }

                            v266 = 0;
                            v20 = 0;
LABEL_192:
                            v24 = v309;
                            v41 = v306;
LABEL_229:

                            goto LABEL_230;
                          }

                          if (v304)
                          {
                            v130 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v283 = v7;
                            v131 = v8;
                            v132 = v9;
                            v133 = self;
                            v134 = *MEMORY[0x1E698F240];
                            v338 = *MEMORY[0x1E696A578];
                            v266 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qosUserInit"];
                            v339 = v266;
                            v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
                            v136 = v134;
                            self = v133;
                            v9 = v132;
                            v8 = v131;
                            v7 = v283;
                            v265 = v135;
                            v268 = 0;
                            v20 = 0;
                            *v304 = [v130 initWithDomain:v136 code:2 userInfo:?];
                            goto LABEL_192;
                          }

                          v268 = 0;
                          v20 = 0;
LABEL_184:
                          v24 = v309;
                          v41 = v306;
LABEL_230:

                          goto LABEL_231;
                        }

                        if (v304)
                        {
                          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v282 = v7;
                          v124 = v8;
                          v125 = v9;
                          v126 = self;
                          v127 = *MEMORY[0x1E698F240];
                          v340 = *MEMORY[0x1E696A578];
                          v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qosLegacy"];
                          v341 = v268;
                          v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
                          v129 = v127;
                          self = v126;
                          v9 = v125;
                          v8 = v124;
                          v7 = v282;
                          v267 = v128;
                          v270 = 0;
                          v20 = 0;
                          *v304 = [v123 initWithDomain:v129 code:2 userInfo:?];
                          goto LABEL_184;
                        }

                        v270 = 0;
                        v20 = 0;
LABEL_177:
                        v24 = v309;
                        v41 = v306;
LABEL_231:

                        goto LABEL_232;
                      }

                      if (v304)
                      {
                        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v281 = v7;
                        v117 = v8;
                        v118 = v9;
                        v119 = self;
                        v120 = *MEMORY[0x1E698F240];
                        v342 = *MEMORY[0x1E696A578];
                        v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qosBackground"];
                        v343 = v270;
                        v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
                        v122 = v120;
                        self = v119;
                        v9 = v118;
                        v8 = v117;
                        v7 = v281;
                        v269 = v121;
                        v271 = 0;
                        v20 = 0;
                        *v304 = [v116 initWithDomain:v122 code:2 userInfo:?];
                        goto LABEL_177;
                      }

                      v271 = 0;
                      v20 = 0;
LABEL_160:
                      v24 = v309;
                      v41 = v306;
LABEL_232:

                      goto LABEL_233;
                    }

                    if (v304)
                    {
                      v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v280 = v7;
                      v110 = v8;
                      v111 = v9;
                      v112 = self;
                      v113 = *MEMORY[0x1E698F240];
                      v344 = *MEMORY[0x1E696A578];
                      v271 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"networkProfSuccess"];
                      v345 = v271;
                      v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
                      v115 = v113;
                      self = v112;
                      v9 = v111;
                      v8 = v110;
                      v7 = v280;
                      v272 = v114;
                      v273 = 0;
                      v20 = 0;
                      *v304 = [v109 initWithDomain:v115 code:2 userInfo:?];
                      goto LABEL_160;
                    }

                    v273 = 0;
                    v20 = 0;
LABEL_152:
                    v24 = v309;
                    v41 = v306;
LABEL_233:

                    goto LABEL_234;
                  }

                  if (v304)
                  {
                    v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v279 = v7;
                    v103 = v8;
                    v104 = v9;
                    v105 = self;
                    v106 = *MEMORY[0x1E698F240];
                    v346 = *MEMORY[0x1E696A578];
                    v273 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endedOnBattery"];
                    v347 = v273;
                    v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v347 forKeys:&v346 count:1];
                    v108 = v106;
                    self = v105;
                    v9 = v104;
                    v8 = v103;
                    v7 = v279;
                    v274 = v107;
                    v296 = 0;
                    v20 = 0;
                    *v304 = [v102 initWithDomain:v108 code:2 userInfo:?];
                    goto LABEL_152;
                  }

                  v296 = 0;
                  v20 = 0;
LABEL_144:
                  v24 = v309;
                  v41 = v306;
LABEL_234:

                  goto LABEL_235;
                }

                if (v304)
                {
                  v278 = v8;
                  v96 = v9;
                  v97 = self;
                  v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v99 = *MEMORY[0x1E698F240];
                  v348 = *MEMORY[0x1E696A578];
                  v296 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endedInIdle"];
                  v349 = v296;
                  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
                  v101 = v98;
                  self = v97;
                  v9 = v96;
                  v8 = v278;
                  v298 = v100;
                  v299 = 0;
                  v20 = 0;
                  *v304 = [v101 initWithDomain:v99 code:2 userInfo:?];
                  goto LABEL_144;
                }

                v299 = 0;
                v20 = 0;
                v24 = v309;
                v41 = v306;
LABEL_235:

                goto LABEL_236;
              }

              if (v304)
              {
                v302 = objc_alloc(MEMORY[0x1E696ABC0]);
                v153 = *MEMORY[0x1E698F240];
                v350 = *MEMORY[0x1E696A578];
                v154 = self;
                v155 = objc_alloc(MEMORY[0x1E696AEC0]);
                v242 = objc_opt_class();
                v156 = v155;
                self = v154;
                v299 = [v156 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v242, @"endTime"];
                v351 = v299;
                v300 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v351 forKeys:&v350 count:1];
                v157 = [v302 initWithDomain:v153 code:2 userInfo:?];
                v301 = 0;
                v20 = 0;
                *v304 = v157;
                v24 = v309;
                v41 = v306;
                goto LABEL_235;
              }

              v301 = 0;
              v20 = 0;
LABEL_48:
              v24 = v309;
              v41 = v306;
LABEL_236:

              goto LABEL_237;
            }

            if (v304)
            {
              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v277 = v7;
              v59 = v8;
              v60 = v9;
              v61 = self;
              v62 = *MEMORY[0x1E698F240];
              v352 = *MEMORY[0x1E696A578];
              v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endBatteryTemperature"];
              v353 = v301;
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
              v63 = v62;
              self = v61;
              v9 = v60;
              v8 = v59;
              v7 = v277;
              v64 = [v58 initWithDomain:v63 code:2 userInfo:v16];
              v303 = 0;
              v20 = 0;
              *v304 = v64;
              goto LABEL_48;
            }

            v303 = 0;
            v20 = 0;
LABEL_133:
            v24 = v309;
            v41 = v306;
LABEL_237:

            goto LABEL_238;
          }

          if (v304)
          {
            v50 = objc_alloc(MEMORY[0x1E696ABC0]);
            v276 = v7;
            v51 = v8;
            v52 = v9;
            v53 = self;
            v54 = *MEMORY[0x1E698F240];
            v354 = *MEMORY[0x1E696A578];
            v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"CPUTime"];
            v355 = v303;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
            v56 = v54;
            self = v53;
            v9 = v52;
            v8 = v51;
            v7 = v276;
            v305 = v55;
            v57 = [v50 initWithDomain:v56 code:2 userInfo:?];
            v307 = 0;
            v20 = 0;
            *v304 = v57;
            goto LABEL_133;
          }

          v307 = 0;
          v20 = 0;
          v24 = v309;
          v41 = v306;
LABEL_238:

          goto LABEL_239;
        }

        if (a4)
        {
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v275 = v7;
          v43 = v8;
          v44 = v9;
          v45 = self;
          v46 = *MEMORY[0x1E698F240];
          v356 = *MEMORY[0x1E696A578];
          v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"CPUAwakeTime"];
          v357 = v307;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
          v48 = v46;
          self = v45;
          v9 = v44;
          v8 = v43;
          v7 = v275;
          v308 = v47;
          v49 = [v42 initWithDomain:v48 code:2 userInfo:?];
          v41 = 0;
          v20 = 0;
          *a4 = v49;
          v24 = v309;
          goto LABEL_238;
        }

        v41 = 0;
        v20 = 0;
        v24 = v309;
LABEL_239:

        goto LABEL_240;
      }

      if (a4)
      {
        v311 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = self;
        v33 = *MEMORY[0x1E698F240];
        v358 = *MEMORY[0x1E696A578];
        v34 = v9;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v241 = objc_opt_class();
        v36 = v35;
        v9 = v34;
        v37 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v241, @"completed"];
        v359 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
        v39 = v311;
        v40 = v33;
        self = v32;
        v41 = v37;
        v310 = v38;
        v24 = 0;
        v20 = 0;
        *a4 = [v39 initWithDomain:v40 code:2 userInfo:?];
        goto LABEL_239;
      }

      v24 = 0;
      v20 = 0;
LABEL_240:

      goto LABEL_241;
    }

    if (a4)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = self;
      v23 = *MEMORY[0x1E698F240];
      v360 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityname"];
      v361 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
      v26 = v23;
      self = v22;
      v9 = v25;
      v27 = [v21 initWithDomain:v26 code:2 userInfo:?];
      v312 = 0;
      v20 = 0;
      *a4 = v27;
      goto LABEL_240;
    }

    v312 = 0;
    v20 = 0;
LABEL_241:

    goto LABEL_242;
  }

  if (a4)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E698F240];
    v362 = *MEMORY[0x1E696A578];
    v312 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v363[0] = v312;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v363 forKeys:&v362 count:1];
    v19 = [v17 initWithDomain:v18 code:2 userInfo:v8];
    v313 = 0;
    v20 = 0;
    *a4 = v19;
    goto LABEL_241;
  }

  v313 = 0;
  v20 = 0;
LABEL_242:

  v232 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMActivitySchedulerActivityProfile *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v28 = v4;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v28;
  }

  if (self->_activityname)
  {
    PBDataWriterWriteStringField();
    v4 = v28;
  }

  if (self->_hasCompleted)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasCPUAwakeTime)
  {
    CPUAwakeTime = self->_CPUAwakeTime;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasCPUTime)
  {
    CPUTime = self->_CPUTime;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasEndBatteryTemperature)
  {
    endBatteryTemperature = self->_endBatteryTemperature;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasRaw_endTime)
  {
    raw_endTime = self->_raw_endTime;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasEndedInIdle)
  {
    endedInIdle = self->_endedInIdle;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasEndedOnBattery)
  {
    endedOnBattery = self->_endedOnBattery;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasNetworkProfSuccess)
  {
    networkProfSuccess = self->_networkProfSuccess;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasQosBackground)
  {
    qosBackground = self->_qosBackground;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasQosLegacy)
  {
    qosLegacy = self->_qosLegacy;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasQosUserInit)
  {
    qosUserInit = self->_qosUserInit;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasRunTime)
  {
    runTime = self->_runTime;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasRusageProfSuccess)
  {
    rusageProfSuccess = self->_rusageProfSuccess;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasServicedEnergy)
  {
    servicedEnergy = self->_servicedEnergy;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasSessionProfSuccess)
  {
    sessionProfSuccess = self->_sessionProfSuccess;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasStartBatteryTemperature)
  {
    startBatteryTemperature = self->_startBatteryTemperature;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasRaw_startTime)
  {
    raw_startTime = self->_raw_startTime;
    PBDataWriterWriteDoubleField();
    v4 = v28;
  }

  if (self->_hasStartedInIdle)
  {
    startedInIdle = self->_startedInIdle;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasStartedOnBattery)
  {
    startedOnBattery = self->_startedOnBattery;
    PBDataWriterWriteBOOLField();
    v4 = v28;
  }

  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasWifiDown)
  {
    wifiDown = self->_wifiDown;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasWifiUp)
  {
    wifiUp = self->_wifiUp;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }

  if (self->_hasDirtyMemoryDelta)
  {
    dirtyMemoryDelta = self->_dirtyMemoryDelta;
    PBDataWriterWriteInt32Field();
    v4 = v28;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v147.receiver = self;
  v147.super_class = BMActivitySchedulerActivityProfile;
  v5 = [(BMEventBase *)&v147 init];
  if (!v5)
  {
LABEL_254:
    v145 = v5;
    goto LABEL_255;
  }

  while (1)
  {
    v6 = [v4 position];
    if (v6 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v148) = 0;
      v10 = [v4 position] + 1;
      if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
      {
        v12 = [v4 data];
        [v12 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v9 |= (LOBYTE(v148) & 0x7F) << v7;
      if ((LOBYTE(v148) & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        v16 = 120;
        goto LABEL_102;
      case 2u:
        v15 = PBReaderReadString();
        v16 = 128;
LABEL_102:
        v77 = *(&v5->super.super.isa + v16);
        *(&v5->super.super.isa + v16) = v15;

        continue;
      case 3u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasCompleted = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v54 = [v4 position] + 1;
          if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
          {
            v56 = [v4 data];
            [v56 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v53 |= (LOBYTE(v148) & 0x7F) << v51;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v13 = v52++ >= 9;
          if (v13)
          {
            LOBYTE(v57) = 0;
            goto LABEL_200;
          }
        }

        v57 = (v53 != 0) & ~[v4 hasError];
LABEL_200:
        v5->_completed = v57;
        continue;
      case 4u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasCPUAwakeTime = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v67 = [v4 position] + 1;
          if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 1, v68 <= objc_msgSend(v4, "length")))
          {
            v69 = [v4 data];
            [v69 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v66 |= (LOBYTE(v148) & 0x7F) << v64;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v13 = v65++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_208;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v66;
        }

LABEL_208:
        v137 = 84;
        goto LABEL_237;
      case 5u:
        v5->_hasCPUTime = 1;
        v148 = 0.0;
        v33 = [v4 position] + 8;
        if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 8, v34 <= objc_msgSend(v4, "length")))
        {
          v139 = [v4 data];
          [v139 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_CPUTime = v148;
        continue;
      case 6u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v5->_hasEndBatteryTemperature = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v94 = [v4 position] + 1;
          if (v94 >= [v4 position] && (v95 = objc_msgSend(v4, "position") + 1, v95 <= objc_msgSend(v4, "length")))
          {
            v96 = [v4 data];
            [v96 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v93 |= (LOBYTE(v148) & 0x7F) << v91;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v13 = v92++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_220;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v93;
        }

LABEL_220:
        v137 = 88;
        goto LABEL_237;
      case 7u:
        v5->_hasRaw_endTime = 1;
        v148 = 0.0;
        v105 = [v4 position] + 8;
        if (v105 >= [v4 position] && (v106 = objc_msgSend(v4, "position") + 8, v106 <= objc_msgSend(v4, "length")))
        {
          v142 = [v4 data];
          [v142 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_endTime = v148;
        continue;
      case 8u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasEndedInIdle = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v73 = [v4 position] + 1;
          if (v73 >= [v4 position] && (v74 = objc_msgSend(v4, "position") + 1, v74 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v72 |= (LOBYTE(v148) & 0x7F) << v70;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v13 = v71++ >= 9;
          if (v13)
          {
            LOBYTE(v76) = 0;
            goto LABEL_210;
          }
        }

        v76 = (v72 != 0) & ~[v4 hasError];
LABEL_210:
        v5->_endedInIdle = v76;
        continue;
      case 9u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v5->_hasEndedOnBattery = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v114 = [v4 position] + 1;
          if (v114 >= [v4 position] && (v115 = objc_msgSend(v4, "position") + 1, v115 <= objc_msgSend(v4, "length")))
          {
            v116 = [v4 data];
            [v116 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v113 |= (LOBYTE(v148) & 0x7F) << v111;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v13 = v112++ >= 9;
          if (v13)
          {
            LOBYTE(v117) = 0;
            goto LABEL_226;
          }
        }

        v117 = (v113 != 0) & ~[v4 hasError];
LABEL_226:
        v5->_endedOnBattery = v117;
        continue;
      case 0xAu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasNetworkProfSuccess = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v40 = [v4 position] + 1;
          if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
          {
            v42 = [v4 data];
            [v42 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v39 |= (LOBYTE(v148) & 0x7F) << v37;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v13 = v38++ >= 9;
          if (v13)
          {
            LOBYTE(v43) = 0;
            goto LABEL_194;
          }
        }

        v43 = (v39 != 0) & ~[v4 hasError];
LABEL_194:
        v5->_networkProfSuccess = v43;
        continue;
      case 0xBu:
        v5->_hasQosBackground = 1;
        v148 = 0.0;
        v109 = [v4 position] + 8;
        if (v109 >= [v4 position] && (v110 = objc_msgSend(v4, "position") + 8, v110 <= objc_msgSend(v4, "length")))
        {
          v144 = [v4 data];
          [v144 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_qosBackground = v148;
        continue;
      case 0xCu:
        v5->_hasQosLegacy = 1;
        v148 = 0.0;
        v31 = [v4 position] + 8;
        if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 8, v32 <= objc_msgSend(v4, "length")))
        {
          v138 = [v4 data];
          [v138 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_qosLegacy = v148;
        continue;
      case 0xDu:
        v5->_hasQosUserInit = 1;
        v148 = 0.0;
        v35 = [v4 position] + 8;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
        {
          v140 = [v4 data];
          [v140 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_qosUserInit = v148;
        continue;
      case 0xEu:
        v5->_hasRunTime = 1;
        v148 = 0.0;
        v103 = [v4 position] + 8;
        if (v103 >= [v4 position] && (v104 = objc_msgSend(v4, "position") + 8, v104 <= objc_msgSend(v4, "length")))
        {
          v141 = [v4 data];
          [v141 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_runTime = v148;
        continue;
      case 0xFu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasRusageProfSuccess = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v26 |= (LOBYTE(v148) & 0x7F) << v24;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            LOBYTE(v30) = 0;
            goto LABEL_192;
          }
        }

        v30 = (v26 != 0) & ~[v4 hasError];
LABEL_192:
        v5->_rusageProfSuccess = v30;
        continue;
      case 0x10u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v5->_hasServicedEnergy = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v61 = [v4 position] + 1;
          if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 1, v62 <= objc_msgSend(v4, "length")))
          {
            v63 = [v4 data];
            [v63 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v60 |= (LOBYTE(v148) & 0x7F) << v58;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v13 = v59++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_204;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v60;
        }

LABEL_204:
        v137 = 92;
        goto LABEL_237;
      case 0x11u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasSessionProfSuccess = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (LOBYTE(v148) & 0x7F) << v17;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_190;
          }
        }

        v23 = (v19 != 0) & ~[v4 hasError];
LABEL_190:
        v5->_sessionProfSuccess = v23;
        continue;
      case 0x12u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v5->_hasStartBatteryTemperature = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v81 = [v4 position] + 1;
          if (v81 >= [v4 position] && (v82 = objc_msgSend(v4, "position") + 1, v82 <= objc_msgSend(v4, "length")))
          {
            v83 = [v4 data];
            [v83 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v80 |= (LOBYTE(v148) & 0x7F) << v78;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v13 = v79++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_214;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v80;
        }

LABEL_214:
        v137 = 96;
        goto LABEL_237;
      case 0x13u:
        v5->_hasRaw_startTime = 1;
        v148 = 0.0;
        v107 = [v4 position] + 8;
        if (v107 >= [v4 position] && (v108 = objc_msgSend(v4, "position") + 8, v108 <= objc_msgSend(v4, "length")))
        {
          v143 = [v4 data];
          [v143 getBytes:&v148 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_startTime = v148;
        continue;
      case 0x14u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v5->_hasStartedInIdle = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v127 = [v4 position] + 1;
          if (v127 >= [v4 position] && (v128 = objc_msgSend(v4, "position") + 1, v128 <= objc_msgSend(v4, "length")))
          {
            v129 = [v4 data];
            [v129 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v126 |= (LOBYTE(v148) & 0x7F) << v124;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v13 = v125++ >= 9;
          if (v13)
          {
            LOBYTE(v130) = 0;
            goto LABEL_232;
          }
        }

        v130 = (v126 != 0) & ~[v4 hasError];
LABEL_232:
        v5->_startedInIdle = v130;
        continue;
      case 0x15u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasStartedOnBattery = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v87 = [v4 position] + 1;
          if (v87 >= [v4 position] && (v88 = objc_msgSend(v4, "position") + 1, v88 <= objc_msgSend(v4, "length")))
          {
            v89 = [v4 data];
            [v89 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v86 |= (LOBYTE(v148) & 0x7F) << v84;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v13 = v85++ >= 9;
          if (v13)
          {
            LOBYTE(v90) = 0;
            goto LABEL_216;
          }
        }

        v90 = (v86 != 0) & ~[v4 hasError];
LABEL_216:
        v5->_startedOnBattery = v90;
        continue;
      case 0x16u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v5->_hasVersion = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v100 = [v4 position] + 1;
          if (v100 >= [v4 position] && (v101 = objc_msgSend(v4, "position") + 1, v101 <= objc_msgSend(v4, "length")))
          {
            v102 = [v4 data];
            [v102 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v99 |= (LOBYTE(v148) & 0x7F) << v97;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v13 = v98++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_224;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v99;
        }

LABEL_224:
        v137 = 100;
        goto LABEL_237;
      case 0x17u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v5->_hasWifiDown = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v121 = [v4 position] + 1;
          if (v121 >= [v4 position] && (v122 = objc_msgSend(v4, "position") + 1, v122 <= objc_msgSend(v4, "length")))
          {
            v123 = [v4 data];
            [v123 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v120 |= (LOBYTE(v148) & 0x7F) << v118;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v13 = v119++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_230;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v120;
        }

LABEL_230:
        v137 = 104;
        goto LABEL_237;
      case 0x18u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v5->_hasWifiUp = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v134 = [v4 position] + 1;
          if (v134 >= [v4 position] && (v135 = objc_msgSend(v4, "position") + 1, v135 <= objc_msgSend(v4, "length")))
          {
            v136 = [v4 data];
            [v136 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v133 |= (LOBYTE(v148) & 0x7F) << v131;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v13 = v132++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_236;
          }
        }

        if ([v4 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v133;
        }

LABEL_236:
        v137 = 108;
        goto LABEL_237;
      case 0x19u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasDirtyMemoryDelta = 1;
        break;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_253;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v148) = 0;
      v47 = [v4 position] + 1;
      if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
      {
        v49 = [v4 data];
        [v49 getBytes:&v148 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v46 |= (LOBYTE(v148) & 0x7F) << v44;
      if ((LOBYTE(v148) & 0x80) == 0)
      {
        break;
      }

      v44 += 7;
      v13 = v45++ >= 9;
      if (v13)
      {
        v50 = 0;
        goto LABEL_198;
      }
    }

    if ([v4 hasError])
    {
      v50 = 0;
    }

    else
    {
      v50 = v46;
    }

LABEL_198:
    v137 = 112;
LABEL_237:
    *(&v5->super.super.isa + v137) = v50;
  }

  if (([v4 hasError] & 1) == 0)
  {
    goto LABEL_254;
  }

LABEL_253:
  v145 = 0;
LABEL_255:

  return v145;
}

- (NSString)description
{
  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = [(BMActivitySchedulerActivityProfile *)self bundleID];
  v34 = [(BMActivitySchedulerActivityProfile *)self activityname];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile completed](self, "completed")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile CPUAwakeTime](self, "CPUAwakeTime")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self CPUTime];
  v31 = [v3 numberWithDouble:?];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile endBatteryTemperature](self, "endBatteryTemperature")}];
  v28 = [(BMActivitySchedulerActivityProfile *)self endTime];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedInIdle](self, "endedInIdle")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedOnBattery](self, "endedOnBattery")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile networkProfSuccess](self, "networkProfSuccess")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self qosBackground];
  v26 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self qosLegacy];
  v21 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self qosUserInit];
  v25 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self runTime];
  v20 = [v7 numberWithDouble:?];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile rusageProfSuccess](self, "rusageProfSuccess")}];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile servicedEnergy](self, "servicedEnergy")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile sessionProfSuccess](self, "sessionProfSuccess")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile startBatteryTemperature](self, "startBatteryTemperature")}];
  v15 = [(BMActivitySchedulerActivityProfile *)self startTime];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedInIdle](self, "startedInIdle")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedOnBattery](self, "startedOnBattery")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile version](self, "version")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiDown](self, "wifiDown")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiUp](self, "wifiUp")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile dirtyMemoryDelta](self, "dirtyMemoryDelta")}];
  v24 = [v23 initWithFormat:@"BMActivitySchedulerActivityProfile with bundleID: %@, activityname: %@, completed: %@, CPUAwakeTime: %@, CPUTime: %@, endBatteryTemperature: %@, endTime: %@, endedInIdle: %@, endedOnBattery: %@, networkProfSuccess: %@, qosBackground: %@, qosLegacy: %@, qosUserInit: %@, runTime: %@, rusageProfSuccess: %@, servicedEnergy: %@, sessionProfSuccess: %@, startBatteryTemperature: %@, startTime: %@, startedInIdle: %@, startedOnBattery: %@, version: %@, wifiDown: %@, wifiUp: %@, dirtyMemoryDelta: %@", v35, v34, v33, v32, v31, v29, v28, v27, v22, v30, v26, v21, v25, v20, v17, v19, v18, v16, v15, v14, v8, v9, v10, v11, v12];

  return v24;
}

- (BMActivitySchedulerActivityProfile)initWithBundleID:(id)a3 activityname:(id)a4 completed:(id)a5 CPUAwakeTime:(id)a6 CPUTime:(id)a7 endBatteryTemperature:(id)a8 endTime:(id)a9 endedInIdle:(id)a10 endedOnBattery:(id)a11 networkProfSuccess:(id)a12 qosBackground:(id)a13 qosLegacy:(id)a14 qosUserInit:(id)a15 runTime:(id)a16 rusageProfSuccess:(id)a17 servicedEnergy:(id)a18 sessionProfSuccess:(id)a19 startBatteryTemperature:(id)a20 startTime:(id)a21 startedInIdle:(id)a22 startedOnBattery:(id)a23 version:(id)a24 wifiDown:(id)a25 wifiUp:(id)a26 dirtyMemoryDelta:(id)a27
{
  v62 = a3;
  v59 = a4;
  v61 = a4;
  v76 = a5;
  v32 = a6;
  v75 = a7;
  v74 = a8;
  v33 = a9;
  v73 = a10;
  v72 = a11;
  v71 = a12;
  v70 = a13;
  v69 = a14;
  v68 = a15;
  v67 = a16;
  v66 = a17;
  v34 = a18;
  v65 = a19;
  v64 = a20;
  v63 = a21;
  v35 = a22;
  v36 = a23;
  v37 = a24;
  v38 = a25;
  v39 = a26;
  v40 = a27;
  v77.receiver = self;
  v77.super_class = BMActivitySchedulerActivityProfile;
  v41 = [(BMEventBase *)&v77 init];
  if (v41)
  {
    v41->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v41->_bundleID, a3);
    objc_storeStrong(&v41->_activityname, v59);
    if (v76)
    {
      v41->_hasCompleted = 1;
      v41->_completed = [v76 BOOLValue];
    }

    else
    {
      v41->_hasCompleted = 0;
      v41->_completed = 0;
    }

    if (v32)
    {
      v41->_hasCPUAwakeTime = 1;
      v42 = [v32 intValue];
    }

    else
    {
      v41->_hasCPUAwakeTime = 0;
      v42 = -1;
    }

    v41->_CPUAwakeTime = v42;
    if (v75)
    {
      v41->_hasCPUTime = 1;
      [v75 doubleValue];
    }

    else
    {
      v41->_hasCPUTime = 0;
      v43 = -1.0;
    }

    v41->_CPUTime = v43;
    if (v74)
    {
      v41->_hasEndBatteryTemperature = 1;
      v44 = [v74 intValue];
    }

    else
    {
      v41->_hasEndBatteryTemperature = 0;
      v44 = -1;
    }

    v41->_endBatteryTemperature = v44;
    if (v33)
    {
      v41->_hasRaw_endTime = 1;
      [v33 timeIntervalSince1970];
    }

    else
    {
      v41->_hasRaw_endTime = 0;
      v45 = -1.0;
    }

    v41->_raw_endTime = v45;
    if (v73)
    {
      v41->_hasEndedInIdle = 1;
      v41->_endedInIdle = [v73 BOOLValue];
    }

    else
    {
      v41->_hasEndedInIdle = 0;
      v41->_endedInIdle = 0;
    }

    if (v72)
    {
      v41->_hasEndedOnBattery = 1;
      v41->_endedOnBattery = [v72 BOOLValue];
    }

    else
    {
      v41->_hasEndedOnBattery = 0;
      v41->_endedOnBattery = 0;
    }

    if (v71)
    {
      v41->_hasNetworkProfSuccess = 1;
      v41->_networkProfSuccess = [v71 BOOLValue];
    }

    else
    {
      v41->_hasNetworkProfSuccess = 0;
      v41->_networkProfSuccess = 0;
    }

    if (v70)
    {
      v41->_hasQosBackground = 1;
      [v70 doubleValue];
    }

    else
    {
      v41->_hasQosBackground = 0;
      v46 = -1.0;
    }

    v41->_qosBackground = v46;
    if (v69)
    {
      v41->_hasQosLegacy = 1;
      [v69 doubleValue];
    }

    else
    {
      v41->_hasQosLegacy = 0;
      v47 = -1.0;
    }

    v41->_qosLegacy = v47;
    if (v68)
    {
      v41->_hasQosUserInit = 1;
      [v68 doubleValue];
    }

    else
    {
      v41->_hasQosUserInit = 0;
      v48 = -1.0;
    }

    v41->_qosUserInit = v48;
    if (v67)
    {
      v41->_hasRunTime = 1;
      [v67 doubleValue];
    }

    else
    {
      v41->_hasRunTime = 0;
      v49 = -1.0;
    }

    v41->_runTime = v49;
    if (v66)
    {
      v41->_hasRusageProfSuccess = 1;
      v41->_rusageProfSuccess = [v66 BOOLValue];
    }

    else
    {
      v41->_hasRusageProfSuccess = 0;
      v41->_rusageProfSuccess = 0;
    }

    if (v34)
    {
      v41->_hasServicedEnergy = 1;
      v50 = [v34 intValue];
    }

    else
    {
      v41->_hasServicedEnergy = 0;
      v50 = -1;
    }

    v41->_servicedEnergy = v50;
    if (v65)
    {
      v41->_hasSessionProfSuccess = 1;
      v41->_sessionProfSuccess = [v65 BOOLValue];
    }

    else
    {
      v41->_hasSessionProfSuccess = 0;
      v41->_sessionProfSuccess = 0;
    }

    if (v64)
    {
      v41->_hasStartBatteryTemperature = 1;
      v51 = [v64 intValue];
    }

    else
    {
      v41->_hasStartBatteryTemperature = 0;
      v51 = -1;
    }

    v41->_startBatteryTemperature = v51;
    if (v63)
    {
      v41->_hasRaw_startTime = 1;
      [v63 timeIntervalSince1970];
    }

    else
    {
      v41->_hasRaw_startTime = 0;
      v52 = -1.0;
    }

    v41->_raw_startTime = v52;
    if (v35)
    {
      v41->_hasStartedInIdle = 1;
      v41->_startedInIdle = [v35 BOOLValue];
    }

    else
    {
      v41->_hasStartedInIdle = 0;
      v41->_startedInIdle = 0;
    }

    if (v36)
    {
      v41->_hasStartedOnBattery = 1;
      v41->_startedOnBattery = [v36 BOOLValue];
    }

    else
    {
      v41->_hasStartedOnBattery = 0;
      v41->_startedOnBattery = 0;
    }

    if (v37)
    {
      v41->_hasVersion = 1;
      v53 = [v37 intValue];
    }

    else
    {
      v41->_hasVersion = 0;
      v53 = -1;
    }

    v41->_version = v53;
    if (v38)
    {
      v41->_hasWifiDown = 1;
      v54 = [v38 intValue];
    }

    else
    {
      v41->_hasWifiDown = 0;
      v54 = -1;
    }

    v41->_wifiDown = v54;
    if (v39)
    {
      v41->_hasWifiUp = 1;
      v55 = [v39 intValue];
    }

    else
    {
      v41->_hasWifiUp = 0;
      v55 = -1;
    }

    v41->_wifiUp = v55;
    if (v40)
    {
      v41->_hasDirtyMemoryDelta = 1;
      v56 = [v40 intValue];
    }

    else
    {
      v41->_hasDirtyMemoryDelta = 0;
      v56 = -1;
    }

    v41->_dirtyMemoryDelta = v56;
  }

  return v41;
}

+ (id)protoFields
{
  v30[25] = *MEMORY[0x1E69E9840];
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v30[0] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityname" number:2 type:13 subMessageClass:0];
  v30[1] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completed" number:3 type:12 subMessageClass:0];
  v30[2] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"CPUAwakeTime" number:4 type:2 subMessageClass:0];
  v30[3] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"CPUTime" number:5 type:0 subMessageClass:0];
  v30[4] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endBatteryTemperature" number:6 type:2 subMessageClass:0];
  v30[5] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTime" number:7 type:0 subMessageClass:0];
  v30[6] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endedInIdle" number:8 type:12 subMessageClass:0];
  v30[7] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endedOnBattery" number:9 type:12 subMessageClass:0];
  v30[8] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"networkProfSuccess" number:10 type:12 subMessageClass:0];
  v30[9] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosBackground" number:11 type:0 subMessageClass:0];
  v30[10] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosLegacy" number:12 type:0 subMessageClass:0];
  v30[11] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosUserInit" number:13 type:0 subMessageClass:0];
  v30[12] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"runTime" number:14 type:0 subMessageClass:0];
  v30[13] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rusageProfSuccess" number:15 type:12 subMessageClass:0];
  v30[14] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"servicedEnergy" number:16 type:2 subMessageClass:0];
  v30[15] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionProfSuccess" number:17 type:12 subMessageClass:0];
  v30[16] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startBatteryTemperature" number:18 type:2 subMessageClass:0];
  v30[17] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTime" number:19 type:0 subMessageClass:0];
  v30[18] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startedInIdle" number:20 type:12 subMessageClass:0];
  v30[19] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startedOnBattery" number:21 type:12 subMessageClass:0];
  v30[20] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:22 type:2 subMessageClass:0];
  v30[21] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wifiDown" number:23 type:2 subMessageClass:0];
  v30[22] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wifiUp" number:24 type:2 subMessageClass:0];
  v30[23] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dirtyMemoryDelta" number:25 type:2 subMessageClass:0];
  v30[24] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:25];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
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

    v8 = [[BMActivitySchedulerActivityProfile alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[20] = 0;
    }
  }

  return v4;
}

@end