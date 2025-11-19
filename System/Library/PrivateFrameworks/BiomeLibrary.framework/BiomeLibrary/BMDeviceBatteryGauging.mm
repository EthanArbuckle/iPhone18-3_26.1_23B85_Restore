@interface BMDeviceBatteryGauging
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceBatteryGauging)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceBatteryGauging)initWithUpdateType:(int)a3 qmaxState:(int)a4 daysSinceQMax:(id)a5 ocvState:(int)a6 daysSinceOCV:(id)a7 fullChargeState:(int)a8 daysSinceFullChargeAttempt:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceBatteryGauging

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updateType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qmaxState" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"daysSinceQMax" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ocvState" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"daysSinceOCV" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullChargeState" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"daysSinceFullChargeAttempt" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceBatteryGauging *)self updateType];
    if (v6 != [v5 updateType])
    {
      goto LABEL_22;
    }

    v7 = [(BMDeviceBatteryGauging *)self qmaxState];
    if (v7 != [v5 qmaxState])
    {
      goto LABEL_22;
    }

    if (-[BMDeviceBatteryGauging hasDaysSinceQMax](self, "hasDaysSinceQMax") || [v5 hasDaysSinceQMax])
    {
      if (![(BMDeviceBatteryGauging *)self hasDaysSinceQMax])
      {
        goto LABEL_22;
      }

      if (![v5 hasDaysSinceQMax])
      {
        goto LABEL_22;
      }

      v8 = [(BMDeviceBatteryGauging *)self daysSinceQMax];
      if (v8 != [v5 daysSinceQMax])
      {
        goto LABEL_22;
      }
    }

    v9 = [(BMDeviceBatteryGauging *)self ocvState];
    if (v9 != [v5 ocvState])
    {
      goto LABEL_22;
    }

    if (-[BMDeviceBatteryGauging hasDaysSinceOCV](self, "hasDaysSinceOCV") || [v5 hasDaysSinceOCV])
    {
      if (![(BMDeviceBatteryGauging *)self hasDaysSinceOCV])
      {
        goto LABEL_22;
      }

      if (![v5 hasDaysSinceOCV])
      {
        goto LABEL_22;
      }

      v10 = [(BMDeviceBatteryGauging *)self daysSinceOCV];
      if (v10 != [v5 daysSinceOCV])
      {
        goto LABEL_22;
      }
    }

    v11 = [(BMDeviceBatteryGauging *)self fullChargeState];
    if (v11 != [v5 fullChargeState])
    {
      goto LABEL_22;
    }

    if (!-[BMDeviceBatteryGauging hasDaysSinceFullChargeAttempt](self, "hasDaysSinceFullChargeAttempt") && ![v5 hasDaysSinceFullChargeAttempt])
    {
      v13 = 1;
      goto LABEL_23;
    }

    if (-[BMDeviceBatteryGauging hasDaysSinceFullChargeAttempt](self, "hasDaysSinceFullChargeAttempt") && [v5 hasDaysSinceFullChargeAttempt])
    {
      v12 = [(BMDeviceBatteryGauging *)self daysSinceFullChargeAttempt];
      v13 = v12 == [v5 daysSinceFullChargeAttempt];
    }

    else
    {
LABEL_22:
      v13 = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v25[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging updateType](self, "updateType")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging qmaxState](self, "qmaxState")}];
  if ([(BMDeviceBatteryGauging *)self hasDaysSinceQMax])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging daysSinceQMax](self, "daysSinceQMax")}];
  }

  else
  {
    v5 = 0;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging ocvState](self, "ocvState")}];
  if ([(BMDeviceBatteryGauging *)self hasDaysSinceOCV])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging daysSinceOCV](self, "daysSinceOCV")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging fullChargeState](self, "fullChargeState")}];
  if ([(BMDeviceBatteryGauging *)self hasDaysSinceFullChargeAttempt])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging daysSinceFullChargeAttempt](self, "daysSinceFullChargeAttempt")}];
  }

  else
  {
    v8 = 0;
  }

  v24[0] = @"updateType";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v25[0] = v9;
  v24[1] = @"qmaxState";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v10;
  v25[1] = v10;
  v24[2] = @"daysSinceQMax";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v25[2] = v11;
  v24[3] = @"ocvState";
  v12 = v23;
  if (!v23)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v25[3] = v12;
  v24[4] = @"daysSinceOCV";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v13;
  v24[5] = @"fullChargeState";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v14;
  v24[6] = @"daysSinceFullChargeAttempt";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (!v6)
  {
  }

  if (!v23)
  {
  }

  if (v5)
  {
    if (v21)
    {
      goto LABEL_32;
    }

LABEL_39:

    if (v22)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v22)
  {
    goto LABEL_33;
  }

LABEL_40:

LABEL_33:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMDeviceBatteryGauging)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v96[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v82 = [v5 objectForKeyedSubscript:@"updateType"];
  if (!v82 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
LABEL_9:
    v8 = [v5 objectForKeyedSubscript:@"qmaxState"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v25 = 0;
            v9 = 0;
            goto LABEL_56;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = a4;
          v54 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"qmaxState"];
          v94 = v80;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v55 = [v52 initWithDomain:v54 code:2 userInfo:?];
          v25 = 0;
          *v53 = v55;
          v9 = 0;
          goto LABEL_55;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBatteryGaugingQMaxStateFromString(v8)];
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = [v5 objectForKeyedSubscript:@"daysSinceQMax"];
    v79 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v80 = 0;
          v25 = 0;
          goto LABEL_55;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = a4;
        v23 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysSinceQMax"];
        v92 = v16;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v24 = [v21 initWithDomain:v23 code:2 userInfo:?];
        v80 = 0;
        v25 = 0;
        *v22 = v24;
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }

      v80 = v12;
    }

    else
    {
      v80 = 0;
    }

    v13 = [v5 objectForKeyedSubscript:@"ocvState"];
    v76 = v13;
    if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = a4;
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v16 = 0;
            v25 = 0;
            goto LABEL_54;
          }

          v56 = a4;
          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = *MEMORY[0x1E698F240];
          v89 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ocvState"];
          v90 = v17;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          v59 = [v57 initWithDomain:v58 code:2 userInfo:v30];
          v16 = 0;
          v25 = 0;
          *v56 = v59;
          goto LABEL_53;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBatteryGaugingOCVStateFromString(v14)];
        v15 = a4;
      }
    }

    else
    {
      v15 = a4;
      v16 = 0;
    }

    v17 = [v5 objectForKeyedSubscript:@"daysSinceOCV"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = v17;
        v17 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v15)
          {
            v25 = 0;
            v30 = v17;
            v17 = 0;
            goto LABEL_53;
          }

          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v74 = v15;
          v26 = v5;
          v27 = v6;
          v28 = objc_alloc(MEMORY[0x1E696AEC0]);
          v65 = objc_opt_class();
          v29 = v28;
          v6 = v27;
          v5 = v26;
          v30 = v17;
          v77 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v65, @"daysSinceOCV"];
          v88 = v77;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v17 = 0;
          v25 = 0;
          *v74 = [v70 initWithDomain:v66 code:2 userInfo:v18];
LABEL_52:

LABEL_53:
          goto LABEL_54;
        }

        v73 = v17;
        v17 = v17;
      }
    }

    else
    {
      v73 = 0;
    }

    v18 = [v5 objectForKeyedSubscript:@"fullChargeState"];
    v75 = v9;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v69 = v17;
      v19 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v18;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v15)
          {
            v77 = 0;
            v25 = 0;
            v30 = v73;
            v17 = v69;
            goto LABEL_52;
          }

          v60 = v15;
          v78 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = v8;
          v62 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"fullChargeState"];
          v86 = v35;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v63 = v62;
          v8 = v61;
          v64 = [v78 initWithDomain:v63 code:2 userInfo:v31];
          v77 = 0;
          v25 = 0;
          *v60 = v64;
          v6 = v19;
          v17 = v69;
          goto LABEL_51;
        }

        v20 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBatteryGaugingPeriodicFullChargeStateFromString(v18)];
      }

      v77 = v20;
      v17 = v69;
    }

    else
    {
      v77 = 0;
    }

    v31 = [v5 objectForKeyedSubscript:@"daysSinceFullChargeAttempt"];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v15)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysSinceFullChargeAttempt"];
          v84 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          *v15 = [v72 initWithDomain:v68 code:2 userInfo:v47];
        }

        v35 = 0;
        v25 = 0;
        goto LABEL_51;
      }

      v32 = v18;
      v67 = v31;
      v71 = v8;
      v33 = v5;
      v34 = self;
      v35 = v31;
    }

    else
    {
      v67 = v31;
      v71 = v8;
      v32 = v18;
      v33 = v5;
      v34 = self;
      v35 = 0;
    }

    v36 = [v6 intValue];
    v37 = v6;
    v38 = [v75 intValue];
    v39 = v16;
    v40 = [v16 intValue];
    v41 = [v77 intValue];
    v42 = v38;
    v6 = v37;
    v43 = v40;
    v16 = v39;
    v25 = [(BMDeviceBatteryGauging *)v34 initWithUpdateType:v36 qmaxState:v42 daysSinceQMax:v80 ocvState:v43 daysSinceOCV:v17 fullChargeState:v41 daysSinceFullChargeAttempt:v35];
    self = v25;
    v5 = v33;
    v31 = v67;
    v8 = v71;
    v18 = v32;
LABEL_51:

    v30 = v73;
    v9 = v75;
    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v82;
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBatteryGaugingGaugingUpdateTypeFromString(v82)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v6 = 0;
    v25 = 0;
    goto LABEL_57;
  }

  v48 = objc_alloc(MEMORY[0x1E696ABC0]);
  v49 = a4;
  v50 = *MEMORY[0x1E698F240];
  v95 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"updateType"];
  v96[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v51 = [v48 initWithDomain:v50 code:2 userInfo:v8];
  v6 = 0;
  v25 = 0;
  *v49 = v51;
LABEL_56:

LABEL_57:
  v44 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBatteryGauging *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  updateType = self->_updateType;
  PBDataWriterWriteUint32Field();
  qmaxState = self->_qmaxState;
  PBDataWriterWriteUint32Field();
  if (self->_hasDaysSinceQMax)
  {
    daysSinceQMax = self->_daysSinceQMax;
    PBDataWriterWriteInt32Field();
  }

  ocvState = self->_ocvState;
  PBDataWriterWriteUint32Field();
  if (self->_hasDaysSinceOCV)
  {
    daysSinceOCV = self->_daysSinceOCV;
    PBDataWriterWriteInt32Field();
  }

  fullChargeState = self->_fullChargeState;
  PBDataWriterWriteUint32Field();
  if (self->_hasDaysSinceFullChargeAttempt)
  {
    daysSinceFullChargeAttempt = self->_daysSinceFullChargeAttempt;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v63.receiver = self;
  v63.super_class = BMDeviceBatteryGauging;
  v5 = [(BMEventBase *)&v63 init];
  if (!v5)
  {
    goto LABEL_124;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v64 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v64 & 0x7F) << v7;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v36 = 0;
            v37 = 0;
            v23 = 0;
            while (1)
            {
              v64 = 0;
              v38 = [v4 position] + 1;
              if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
              {
                v40 = [v4 data];
                [v40 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v23 |= (v64 & 0x7F) << v36;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v22 = v37++ > 8;
              if (v22)
              {
                goto LABEL_94;
              }
            }

            if (([v4 hasError] & 1) != 0 || v23 > 3)
            {
LABEL_94:
              LODWORD(v23) = 0;
            }

            v59 = &OBJC_IVAR___BMDeviceBatteryGauging__updateType;
            break;
          case 2:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            while (1)
            {
              v64 = 0;
              v56 = [v4 position] + 1;
              if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 1, v57 <= objc_msgSend(v4, "length")))
              {
                v58 = [v4 data];
                [v58 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v55 |= (v64 & 0x7F) << v53;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v22 = v54++ > 8;
              if (v22)
              {
                goto LABEL_118;
              }
            }

            if (([v4 hasError] & 1) != 0 || (LODWORD(v23) = v55, v55 > 4))
            {
LABEL_118:
              LODWORD(v23) = 0;
            }

            v59 = &OBJC_IVAR___BMDeviceBatteryGauging__qmaxState;
            break;
          case 3:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v5->_hasDaysSinceQMax = 1;
            while (1)
            {
              v64 = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v26 |= (v64 & 0x7F) << v24;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v22 = v25++ > 8;
              if (v22)
              {
                LODWORD(v23) = 0;
                goto LABEL_115;
              }
            }

            if ([v4 hasError])
            {
              LODWORD(v23) = 0;
            }

            else
            {
              LODWORD(v23) = v26;
            }

LABEL_115:
            v59 = &OBJC_IVAR___BMDeviceBatteryGauging__daysSinceQMax;
            break;
          default:
            goto LABEL_63;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 7)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v5->_hasDaysSinceFullChargeAttempt = 1;
          while (1)
          {
            v64 = 0;
            v50 = [v4 position] + 1;
            if (v50 >= [v4 position] && (v51 = objc_msgSend(v4, "position") + 1, v51 <= objc_msgSend(v4, "length")))
            {
              v52 = [v4 data];
              [v52 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v49 |= (v64 & 0x7F) << v47;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v22 = v48++ > 8;
            if (v22)
            {
              LODWORD(v23) = 0;
              goto LABEL_103;
            }
          }

          if ([v4 hasError])
          {
            LODWORD(v23) = 0;
          }

          else
          {
            LODWORD(v23) = v49;
          }

LABEL_103:
          v59 = &OBJC_IVAR___BMDeviceBatteryGauging__daysSinceFullChargeAttempt;
        }

        else
        {
          if (v15 != 6)
          {
LABEL_63:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_123;
            }

            goto LABEL_121;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v64 = 0;
            v33 = [v4 position] + 1;
            if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
            {
              v35 = [v4 data];
              [v35 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v32 |= (v64 & 0x7F) << v30;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              goto LABEL_110;
            }
          }

          if (([v4 hasError] & 1) != 0 || (LODWORD(v23) = v32, v32 > 3))
          {
LABEL_110:
            LODWORD(v23) = 0;
          }

          v59 = &OBJC_IVAR___BMDeviceBatteryGauging__fullChargeState;
        }
      }

      else if (v15 == 4)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v64 = 0;
          v44 = [v4 position] + 1;
          if (v44 >= [v4 position] && (v45 = objc_msgSend(v4, "position") + 1, v45 <= objc_msgSend(v4, "length")))
          {
            v46 = [v4 data];
            [v46 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v43 |= (v64 & 0x7F) << v41;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v22 = v42++ > 8;
          if (v22)
          {
            goto LABEL_98;
          }
        }

        if (([v4 hasError] & 1) != 0 || (LODWORD(v23) = v43, v43 > 2))
        {
LABEL_98:
          LODWORD(v23) = 0;
        }

        v59 = &OBJC_IVAR___BMDeviceBatteryGauging__ocvState;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_63;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasDaysSinceOCV = 1;
        while (1)
        {
          v64 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v64 & 0x7F) << v16;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            LODWORD(v23) = 0;
            goto LABEL_107;
          }
        }

        if ([v4 hasError])
        {
          LODWORD(v23) = 0;
        }

        else
        {
          LODWORD(v23) = v18;
        }

LABEL_107:
        v59 = &OBJC_IVAR___BMDeviceBatteryGauging__daysSinceOCV;
      }

      *(&v5->super.super.isa + *v59) = v23;
LABEL_121:
      v60 = [v4 position];
    }

    while (v60 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_123:
    v61 = 0;
  }

  else
  {
LABEL_124:
    v61 = v5;
  }

  return v61;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMDeviceBatteryGaugingGaugingUpdateTypeAsString([(BMDeviceBatteryGauging *)self updateType]);
  v5 = BMDeviceBatteryGaugingQMaxStateAsString([(BMDeviceBatteryGauging *)self qmaxState]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging daysSinceQMax](self, "daysSinceQMax")}];
  v7 = BMDeviceBatteryGaugingOCVStateAsString([(BMDeviceBatteryGauging *)self ocvState]);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging daysSinceOCV](self, "daysSinceOCV")}];
  v9 = BMDeviceBatteryGaugingPeriodicFullChargeStateAsString([(BMDeviceBatteryGauging *)self fullChargeState]);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryGauging daysSinceFullChargeAttempt](self, "daysSinceFullChargeAttempt")}];
  v11 = [v3 initWithFormat:@"BMDeviceBatteryGauging with updateType: %@, qmaxState: %@, daysSinceQMax: %@, ocvState: %@, daysSinceOCV: %@, fullChargeState: %@, daysSinceFullChargeAttempt: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMDeviceBatteryGauging)initWithUpdateType:(int)a3 qmaxState:(int)a4 daysSinceQMax:(id)a5 ocvState:(int)a6 daysSinceOCV:(id)a7 fullChargeState:(int)a8 daysSinceFullChargeAttempt:(id)a9
{
  v15 = a5;
  v16 = a7;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = BMDeviceBatteryGauging;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_updateType = a3;
    v18->_qmaxState = a4;
    if (v15)
    {
      v18->_hasDaysSinceQMax = 1;
      v19 = [v15 intValue];
    }

    else
    {
      v18->_hasDaysSinceQMax = 0;
      v19 = -1;
    }

    v18->_daysSinceQMax = v19;
    v18->_ocvState = a6;
    if (v16)
    {
      v18->_hasDaysSinceOCV = 1;
      v20 = [v16 intValue];
    }

    else
    {
      v18->_hasDaysSinceOCV = 0;
      v20 = -1;
    }

    v18->_daysSinceOCV = v20;
    v18->_fullChargeState = a8;
    if (v17)
    {
      v18->_hasDaysSinceFullChargeAttempt = 1;
      v21 = [v17 intValue];
    }

    else
    {
      v18->_hasDaysSinceFullChargeAttempt = 0;
      v21 = -1;
    }

    v18->_daysSinceFullChargeAttempt = v21;
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updateType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qmaxState" number:2 type:4 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"daysSinceQMax" number:3 type:2 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ocvState" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"daysSinceOCV" number:5 type:2 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullChargeState" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"daysSinceFullChargeAttempt" number:7 type:2 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMDeviceBatteryGauging alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end