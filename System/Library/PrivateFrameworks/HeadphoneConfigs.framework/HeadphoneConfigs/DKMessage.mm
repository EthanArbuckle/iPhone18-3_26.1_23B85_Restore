@interface DKMessage
+ (id)encodeDKMessageMeasurementDataStart:(id)a3;
+ (id)encodeDKMessageMeasurementSubEventContinue:(id)a3;
+ (id)encodeStepData:(id)a3;
+ (id)encodeStepMode:(id)a3;
+ (id)getSpecificStepFromResults:(id)a3 withIndex:(unsigned __int8)a4;
+ (id)sendEntireProcedure:(id)a3 withMTU:(unint64_t)a4;
+ (unint64_t)sumDataValues:(id)a3;
@end

@implementation DKMessage

+ (id)sendEntireProcedure:(id)a3 withMTU:(unint64_t)a4
{
  v4 = a3;
  v39 = [MEMORY[0x277CBEB18] array];
  v5 = [v4 objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  v6 = [v5 unsignedCharValue];
  v43 = v6;

  v45 = v4;
  v38 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  v7 = [MEMORY[0x277CBEB28] data];
  v8 = [MEMORY[0x277CBEB28] data];
  v40 = [MEMORY[0x277CBEB28] data];
  v9 = v6 != 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = [a1 getSpecificStepFromResults:v45 withIndex:v10];
      v12 = [v11 objectForKeyedSubscript:@"kCBCSStepMode"];
      v13 = [a1 encodeStepData:v11];
      v14 = ceil(vcvtd_n_f64_u64([v12 length] + objc_msgSend(v7, "length"), 1uLL)) + 24.0;
      v15 = [v8 length];
      if ((v14 + ([v13 length] + v15)) > a4)
      {
        break;
      }

      [v7 appendData:v12];
      [v8 appendData:v13];
      v16 = [v11 objectForKeyedSubscript:@"kCBCSStepDataLength"];
      [v40 appendData:v16];
      ++v10;

      v9 = v10 < v6;
      if (v10 >= v6)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
  [v38 setObject:v17 forKeyedSubscript:@"kCBCSCurrentStepIndex"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
  [v38 setObject:v18 forKeyedSubscript:@"kCBCSNumStepsReported"];

  [v38 setObject:v7 forKeyedSubscript:@"kCBCSStepMode"];
  [v38 setObject:v8 forKeyedSubscript:@"kCBCSStepData"];
  v19 = v40;
  [v38 setObject:v40 forKeyedSubscript:@"kCBCSStepDataLength"];
  v20 = [a1 encodeStepMode:v38];
  [v38 setObject:v20 forKeyedSubscript:@"kCBCSStepMode"];

  v37 = [a1 encodeDKMessageMeasurementDataStart:v38];
  [v39 addObject:?];
  if (v9)
  {
    do
    {
      v21 = v19;
      v22 = v8;
      v23 = v7;
      v41 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v45];
      v7 = [MEMORY[0x277CBEB28] data];

      v8 = [MEMORY[0x277CBEB28] data];

      v19 = [MEMORY[0x277CBEB28] data];

      v24 = v10 < v43;
      v25 = 0;
      if (v10 < v43)
      {
        while (1)
        {
          v26 = [a1 getSpecificStepFromResults:v45 withIndex:v10];
          v27 = [v26 objectForKeyedSubscript:@"kCBCSStepMode"];
          v28 = [a1 encodeStepData:v26];
          v29 = ceil(vcvtd_n_f64_u64([v27 length] + objc_msgSend(v7, "length"), 1uLL)) + 8.0;
          v30 = [v8 length];
          if ((v29 + ([v28 length] + v30)) > a4)
          {
            break;
          }

          [v7 appendData:v27];
          [v8 appendData:v28];
          v31 = [v26 objectForKeyedSubscript:@"kCBCSStepDataLength"];
          [v19 appendData:v31];
          ++v25;
          ++v10;

          v24 = v10 < v43;
          if (v10 >= v43)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_12:
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v25];
      [v41 setObject:v32 forKeyedSubscript:@"kCBCSNumStepsReported"];

      [v41 setObject:v7 forKeyedSubscript:@"kCBCSStepMode"];
      [v41 setObject:v8 forKeyedSubscript:@"kCBCSStepData"];
      [v41 setObject:v19 forKeyedSubscript:@"kCBCSStepDataLength"];
      v33 = [a1 encodeStepMode:v41];
      [v41 setObject:v33 forKeyedSubscript:@"kCBCSStepMode"];

      v34 = [a1 encodeDKMessageMeasurementSubEventContinue:v41];
      [v39 addObject:v34];
    }

    while (v24);
  }

  v35 = [v39 copy];

  return v35;
}

+ (id)getSpecificStepFromResults:(id)a3 withIndex:(unsigned __int8)a4
{
  LODWORD(v4) = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [v5 objectForKeyedSubscript:@"kCBCSStepMode"];
  v8 = [v5 objectForKeyedSubscript:@"kCBCSStepDataLength"];
  v9 = [v8 bytes];
  if (v4)
  {
    v10 = 0;
    v4 = v4;
    v11 = v4;
    v12 = v9;
    do
    {
      v13 = *v12++;
      v10 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v14 = *(v9 + v4);
  v15 = [v5 objectForKeyedSubscript:@"kCBCSStepData"];
  v16 = [v7 subdataWithRange:{v4, 1}];
  [v6 setObject:v16 forKeyedSubscript:@"kCBCSStepMode"];

  v17 = [v15 subdataWithRange:{v10, v14}];
  [v6 setObject:v17 forKeyedSubscript:@"kCBCSStepData"];

  v18 = [v8 subdataWithRange:{v4, 1}];
  [v6 setObject:v18 forKeyedSubscript:@"kCBCSStepDataLength"];

  v19 = [v6 copy];

  return v19;
}

+ (id)encodeDKMessageMeasurementDataStart:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB28] data];
  v45 = 7;
  [v4 appendBytes:&v45 length:1];
  v44 = 1;
  [v4 appendBytes:&v44 length:1];
  v43 = 0;
  v5 = [v4 length];
  [v4 appendBytes:&v43 length:2];
  v6 = [v3 objectForKeyedSubscript:@"kCBCSProcedureCounter"];
  v7 = [v6 unsignedCharValue];

  v42 = v7;
  [v4 appendBytes:&v42 length:1];
  v8 = [v3 objectForKeyedSubscript:@"kCBCSConfigId"];
  v9 = [v8 unsignedCharValue];

  v41 = v9;
  [v4 appendBytes:&v41 length:1];
  v10 = [v3 objectForKeyedSubscript:@"kCBCSNumAntennaPath"];
  v11 = [v10 unsignedCharValue];

  for (i = 0; v11; --v11)
  {
    i = (2 * i) | 1;
  }

  v40 = i;
  [v4 appendBytes:&v40 length:1];
  v39 = 0;
  [v4 appendBytes:&v39 length:1];
  v38 = -1;
  [v4 appendBytes:&v38 length:1];
  v13 = [v3 objectForKeyedSubscript:@"kCBCSStartAclConnEvent"];
  v14 = [v13 unsignedShortValue];

  v37 = v14;
  [v4 appendBytes:&v37 length:2];
  v15 = [v3 objectForKeyedSubscript:@"kCBCSProcedureDoneStatus"];
  LOBYTE(v14) = [v15 unsignedCharValue];

  v16 = [v3 objectForKeyedSubscript:@"kCBCSSubEventDoneStatus"];
  v17 = [v16 unsignedCharValue];

  v36 = v14 | (16 * v17);
  [v4 appendBytes:&v36 length:1];
  v35 = 0;
  [v4 appendBytes:&v35 length:1];
  v18 = [v3 objectForKeyedSubscript:@"kCBCSFrequencyCompensation"];
  v19 = [v18 unsignedShortValue];

  v34 = v19;
  [v4 appendBytes:&v34 length:2];
  v33 = 0;
  [v4 appendBytes:&v33 length:1];
  v20 = [v3 objectForKeyedSubscript:@"kCBCSReferencePowerLevel"];
  LOBYTE(v19) = [v20 unsignedCharValue];

  v32 = v19;
  [v4 appendBytes:&v32 length:1];
  v21 = [v3 objectForKeyedSubscript:@"kCBCSCurrentStepIndex"];
  LOBYTE(v19) = [v21 unsignedCharValue];

  v31 = v19;
  [v4 appendBytes:&v31 length:1];
  v22 = [v3 objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  LOBYTE(v19) = [v22 unsignedCharValue];

  v30 = v19;
  [v4 appendBytes:&v30 length:1];
  v29 = 0;
  v28 = 0;
  [v4 appendBytes:&v28 length:5];
  v23 = [v3 objectForKeyedSubscript:@"kCBCSStepMode"];
  [v4 appendData:v23];
  v24 = [v3 objectForKeyedSubscript:@"kCBCSStepData"];
  [v4 appendData:v24];
  v27 = bswap32([v4 length] - v5 - 2) >> 16;
  [v4 replaceBytesInRange:v5 withBytes:{2, &v27}];
  v25 = [v4 copy];

  return v25;
}

+ (id)encodeDKMessageMeasurementSubEventContinue:(id)a3
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [v3 data];
  v22 = 7;
  [v5 appendBytes:&v22 length:1];
  v21 = 3;
  [v5 appendBytes:&v21 length:1];
  v20 = 0;
  v6 = [v5 length];
  [v5 appendBytes:&v20 length:2];
  v7 = [v4 objectForKeyedSubscript:@"kCBCSProcedureCounter"];
  v8 = [v7 unsignedCharValue];

  v19 = v8;
  [v5 appendBytes:&v19 length:1];
  v9 = [v4 objectForKeyedSubscript:@"kCBCSStartAclConnEvent"];
  v10 = [v9 unsignedShortValue];

  v18 = v10;
  v11 = [v4 objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  LOBYTE(v10) = [v11 unsignedCharValue];

  v17 = v10;
  [v5 appendBytes:&v18 length:2];
  [v5 appendBytes:&v17 length:1];
  v12 = [v4 objectForKeyedSubscript:@"kCBCSStepMode"];
  [v5 appendData:v12];
  v13 = [v4 objectForKeyedSubscript:@"kCBCSStepData"];

  [v5 appendData:v13];
  v16 = bswap32([v5 length] - v6 - 2) >> 16;
  [v5 replaceBytesInRange:v6 withBytes:{2, &v16}];
  v14 = [v5 copy];

  return v14;
}

+ (id)encodeStepMode:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [v3 objectForKeyedSubscript:@"kCBCSStepMode"];
  v6 = [v3 objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  v7 = [v6 unsignedCharValue];

  v8 = [v5 bytes];
  v9 = vcvtpd_s64_f64(vcvtd_n_f64_u32(v7, 1uLL));
  v16 = 0;
  if (v7)
  {
    v10 = v8;
    v11 = 0;
    for (i = 0; i != v7; ++i)
    {
      v13 = *(v10 + i);
      if (i)
      {
        v16 = v11 ^ (16 * v13);
        [v4 appendBytes:&v16 length:1];
        v11 = 0;
      }

      else
      {
        v11 ^= v13 & 0xF;
      }

      v16 = v11;
    }
  }

  if ([v4 length] < v9)
  {
    [v4 appendBytes:&v16 length:1];
  }

  v14 = [v4 copy];

  return v14;
}

+ (id)encodeStepData:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [v3 objectForKeyedSubscript:@"kCBCSStepData"];
  v6 = [v3 objectForKeyedSubscript:@"kCBCSStepMode"];
  v24 = v3;
  v7 = [v3 objectForKeyedSubscript:@"kCBCSStepDataLength"];
  v8 = [v5 bytes];
  v9 = [v6 bytes];
  v23 = v7;
  v10 = [v7 bytes];
  if ([v6 length])
  {
    v11 = 0;
    v12 = 0;
    v25 = v9;
    v26 = v6;
    do
    {
      if (*(v9 + v11) == 2)
      {
        v29 = *(v8 + v12);
        [v4 appendBytes:&v29 length:1];
        v28 = 0;
        v27 = [v4 length];
        [v4 appendBytes:&v28 length:1];
        v13 = v8;
        if (*(v10 + v11) >= 6u)
        {
          v14 = 0;
          v15 = 1;
          v16 = 1;
          do
          {
            [v5 subdataWithRange:{v15 + v12, 3}];
            v18 = v17 = v5;
            [v4 appendData:v18];
            v19 = v16 + 3;
            v16 = v15 + 4;
            v28 ^= (*(v13 + v19 + v12) & 3) << (2 * v14++);

            v5 = v17;
            v15 = v16;
          }

          while (v16 < *(v10 + v11) - 4);
        }

        [v4 replaceBytesInRange:v27 withBytes:{1, &v28}];
        v8 = v13;
        v9 = v25;
        v6 = v26;
      }

      else
      {
        v20 = [v5 subdataWithRange:{v12, *(v10 + v11)}];
        [v4 appendData:v20];
      }

      v12 += *(v10 + v11++);
    }

    while ([v6 length] > v11);
  }

  v21 = [v4 copy];

  return v21;
}

+ (unint64_t)sumDataValues:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += *(v4 + v5++);
    }

    while (v5 < [v3 length]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end