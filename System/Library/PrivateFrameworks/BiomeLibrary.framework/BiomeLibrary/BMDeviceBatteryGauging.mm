@interface BMDeviceBatteryGauging
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBatteryGauging)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceBatteryGauging)initWithUpdateType:(int)type qmaxState:(int)state daysSinceQMax:(id)max ocvState:(int)ocvState daysSinceOCV:(id)v fullChargeState:(int)chargeState daysSinceFullChargeAttempt:(id)attempt;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    updateType = [(BMDeviceBatteryGauging *)self updateType];
    if (updateType != [v5 updateType])
    {
      goto LABEL_22;
    }

    qmaxState = [(BMDeviceBatteryGauging *)self qmaxState];
    if (qmaxState != [v5 qmaxState])
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

      daysSinceQMax = [(BMDeviceBatteryGauging *)self daysSinceQMax];
      if (daysSinceQMax != [v5 daysSinceQMax])
      {
        goto LABEL_22;
      }
    }

    ocvState = [(BMDeviceBatteryGauging *)self ocvState];
    if (ocvState != [v5 ocvState])
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

      daysSinceOCV = [(BMDeviceBatteryGauging *)self daysSinceOCV];
      if (daysSinceOCV != [v5 daysSinceOCV])
      {
        goto LABEL_22;
      }
    }

    fullChargeState = [(BMDeviceBatteryGauging *)self fullChargeState];
    if (fullChargeState != [v5 fullChargeState])
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
      daysSinceFullChargeAttempt = [(BMDeviceBatteryGauging *)self daysSinceFullChargeAttempt];
      v13 = daysSinceFullChargeAttempt == [v5 daysSinceFullChargeAttempt];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v25[0] = null;
  v24[1] = @"qmaxState";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v25[1] = null2;
  v24[2] = @"daysSinceQMax";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v25[2] = null3;
  v24[3] = @"ocvState";
  null4 = v23;
  if (!v23)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v25[3] = null4;
  v24[4] = @"daysSinceOCV";
  null5 = v6;
  if (!v6)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"fullChargeState";
  null6 = v7;
  if (!v7)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v24[6] = @"daysSinceFullChargeAttempt";
  null7 = v8;
  if (!v8)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = null7;
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

- (BMDeviceBatteryGauging)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v96[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v82 = [dictionaryCopy objectForKeyedSubscript:@"updateType"];
  if (!v82 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
LABEL_9:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"qmaxState"];
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
          if (!error)
          {
            v25 = 0;
            v9 = 0;
            goto LABEL_56;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v54 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"qmaxState"];
          v94 = v80;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v55 = [v52 initWithDomain:v54 code:2 userInfo:?];
          v25 = 0;
          *errorCopy = v55;
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"daysSinceQMax"];
    v79 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v80 = 0;
          v25 = 0;
          goto LABEL_55;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v23 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysSinceQMax"];
        v92 = v16;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v24 = [v21 initWithDomain:v23 code:2 userInfo:?];
        v80 = 0;
        v25 = 0;
        *errorCopy2 = v24;
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"ocvState"];
    v76 = v13;
    if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy6 = error;
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v16 = 0;
            v25 = 0;
            goto LABEL_54;
          }

          errorCopy4 = error;
          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = *MEMORY[0x1E698F240];
          v89 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ocvState"];
          v90 = v17;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          v59 = [v57 initWithDomain:v58 code:2 userInfo:v30];
          v16 = 0;
          v25 = 0;
          *errorCopy4 = v59;
          goto LABEL_53;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBatteryGaugingOCVStateFromString(v14)];
        errorCopy6 = error;
      }
    }

    else
    {
      errorCopy6 = error;
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"daysSinceOCV"];
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
          if (!errorCopy6)
          {
            v25 = 0;
            v30 = v17;
            v17 = 0;
            goto LABEL_53;
          }

          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v74 = errorCopy6;
          v26 = dictionaryCopy;
          v27 = v6;
          v28 = objc_alloc(MEMORY[0x1E696AEC0]);
          v65 = objc_opt_class();
          v29 = v28;
          v6 = v27;
          dictionaryCopy = v26;
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

    v18 = [dictionaryCopy objectForKeyedSubscript:@"fullChargeState"];
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
          if (!errorCopy6)
          {
            v77 = 0;
            v25 = 0;
            v30 = v73;
            v17 = v69;
            goto LABEL_52;
          }

          v60 = errorCopy6;
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

    v31 = [dictionaryCopy objectForKeyedSubscript:@"daysSinceFullChargeAttempt"];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy6)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysSinceFullChargeAttempt"];
          v84 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          *errorCopy6 = [v72 initWithDomain:v68 code:2 userInfo:v47];
        }

        v35 = 0;
        v25 = 0;
        goto LABEL_51;
      }

      v32 = v18;
      v67 = v31;
      v71 = v8;
      v33 = dictionaryCopy;
      selfCopy2 = self;
      v35 = v31;
    }

    else
    {
      v67 = v31;
      v71 = v8;
      v32 = v18;
      v33 = dictionaryCopy;
      selfCopy2 = self;
      v35 = 0;
    }

    intValue = [v6 intValue];
    v37 = v6;
    intValue2 = [v75 intValue];
    v39 = v16;
    intValue3 = [v16 intValue];
    intValue4 = [v77 intValue];
    v42 = intValue2;
    v6 = v37;
    v43 = intValue3;
    v16 = v39;
    v25 = [(BMDeviceBatteryGauging *)selfCopy2 initWithUpdateType:intValue qmaxState:v42 daysSinceQMax:v80 ocvState:v43 daysSinceOCV:v17 fullChargeState:intValue4 daysSinceFullChargeAttempt:v35];
    self = v25;
    dictionaryCopy = v33;
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

  if (!error)
  {
    v6 = 0;
    v25 = 0;
    goto LABEL_57;
  }

  v48 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy7 = error;
  v50 = *MEMORY[0x1E698F240];
  v95 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"updateType"];
  v96[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v51 = [v48 initWithDomain:v50 code:2 userInfo:v8];
  v6 = 0;
  v25 = 0;
  *errorCopy7 = v51;
LABEL_56:

LABEL_57:
  v44 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBatteryGauging *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v63.receiver = self;
  v63.super_class = BMDeviceBatteryGauging;
  v5 = [(BMEventBase *)&v63 init];
  if (!v5)
  {
    goto LABEL_124;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v64 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v38 = [fromCopy position] + 1;
              if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v23 > 3)
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
              v56 = [fromCopy position] + 1;
              if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || (LODWORD(v23) = v55, v55 > 4))
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
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
            v50 = [fromCopy position] + 1;
            if (v50 >= [fromCopy position] && (v51 = objc_msgSend(fromCopy, "position") + 1, v51 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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
            v33 = [fromCopy position] + 1;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || (LODWORD(v23) = v32, v32 > 3))
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
          v44 = [fromCopy position] + 1;
          if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || (LODWORD(v23) = v43, v43 > 2))
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if ([fromCopy hasError])
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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

- (BMDeviceBatteryGauging)initWithUpdateType:(int)type qmaxState:(int)state daysSinceQMax:(id)max ocvState:(int)ocvState daysSinceOCV:(id)v fullChargeState:(int)chargeState daysSinceFullChargeAttempt:(id)attempt
{
  maxCopy = max;
  vCopy = v;
  attemptCopy = attempt;
  v23.receiver = self;
  v23.super_class = BMDeviceBatteryGauging;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_updateType = type;
    v18->_qmaxState = state;
    if (maxCopy)
    {
      v18->_hasDaysSinceQMax = 1;
      intValue = [maxCopy intValue];
    }

    else
    {
      v18->_hasDaysSinceQMax = 0;
      intValue = -1;
    }

    v18->_daysSinceQMax = intValue;
    v18->_ocvState = ocvState;
    if (vCopy)
    {
      v18->_hasDaysSinceOCV = 1;
      intValue2 = [vCopy intValue];
    }

    else
    {
      v18->_hasDaysSinceOCV = 0;
      intValue2 = -1;
    }

    v18->_daysSinceOCV = intValue2;
    v18->_fullChargeState = chargeState;
    if (attemptCopy)
    {
      v18->_hasDaysSinceFullChargeAttempt = 1;
      intValue3 = [attemptCopy intValue];
    }

    else
    {
      v18->_hasDaysSinceFullChargeAttempt = 0;
      intValue3 = -1;
    }

    v18->_daysSinceFullChargeAttempt = intValue3;
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