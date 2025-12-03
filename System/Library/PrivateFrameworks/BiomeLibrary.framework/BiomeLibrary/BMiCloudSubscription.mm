@interface BMiCloudSubscription
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMiCloudSubscription)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMiCloudSubscription)initWithMlServerScore:(id)score totalQuota:(id)quota totalUsed:(id)used totalAvailable:(id)available bundleQuotaInBytes:(id)bytes commerceQuotaInBytes:(id)inBytes iCloudSubscriptionEventType:(int)type displayEntry:(int)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMiCloudSubscription

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mlServerScore" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalQuota" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:3 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalUsed" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:3 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalAvailable" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:3 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleQuotaInBytes" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:3 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"commerceQuotaInBytes" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iCloudSubscriptionEventType" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayEntry" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMiCloudSubscription hasMlServerScore](self, "hasMlServerScore") || [v5 hasMlServerScore])
    {
      if (![(BMiCloudSubscription *)self hasMlServerScore])
      {
        goto LABEL_35;
      }

      if (![v5 hasMlServerScore])
      {
        goto LABEL_35;
      }

      [(BMiCloudSubscription *)self mlServerScore];
      v7 = v6;
      [v5 mlServerScore];
      if (v7 != v8)
      {
        goto LABEL_35;
      }
    }

    if ((!-[BMiCloudSubscription hasTotalQuota](self, "hasTotalQuota") && ![v5 hasTotalQuota] || -[BMiCloudSubscription hasTotalQuota](self, "hasTotalQuota") && objc_msgSend(v5, "hasTotalQuota") && (v9 = -[BMiCloudSubscription totalQuota](self, "totalQuota"), v9 == objc_msgSend(v5, "totalQuota"))) && (!-[BMiCloudSubscription hasTotalUsed](self, "hasTotalUsed") && !objc_msgSend(v5, "hasTotalUsed") || -[BMiCloudSubscription hasTotalUsed](self, "hasTotalUsed") && objc_msgSend(v5, "hasTotalUsed") && (v10 = -[BMiCloudSubscription totalUsed](self, "totalUsed"), v10 == objc_msgSend(v5, "totalUsed"))) && (!-[BMiCloudSubscription hasTotalAvailable](self, "hasTotalAvailable") && !objc_msgSend(v5, "hasTotalAvailable") || -[BMiCloudSubscription hasTotalAvailable](self, "hasTotalAvailable") && objc_msgSend(v5, "hasTotalAvailable") && (v11 = -[BMiCloudSubscription totalAvailable](self, "totalAvailable"), v11 == objc_msgSend(v5, "totalAvailable"))) && (!-[BMiCloudSubscription hasBundleQuotaInBytes](self, "hasBundleQuotaInBytes") && !objc_msgSend(v5, "hasBundleQuotaInBytes") || -[BMiCloudSubscription hasBundleQuotaInBytes](self, "hasBundleQuotaInBytes") && objc_msgSend(v5, "hasBundleQuotaInBytes") && (v12 = -[BMiCloudSubscription bundleQuotaInBytes](self, "bundleQuotaInBytes"), v12 == objc_msgSend(v5, "bundleQuotaInBytes"))) && (!-[BMiCloudSubscription hasCommerceQuotaInBytes](self, "hasCommerceQuotaInBytes") && !objc_msgSend(v5, "hasCommerceQuotaInBytes") || -[BMiCloudSubscription hasCommerceQuotaInBytes](self, "hasCommerceQuotaInBytes") && objc_msgSend(v5, "hasCommerceQuotaInBytes") && (v13 = -[BMiCloudSubscription commerceQuotaInBytes](self, "commerceQuotaInBytes"), v13 == objc_msgSend(v5, "commerceQuotaInBytes"))) && (v14 = -[BMiCloudSubscription iCloudSubscriptionEventType](self, "iCloudSubscriptionEventType"), v14 == objc_msgSend(v5, "iCloudSubscriptionEventType")))
    {
      displayEntry = [(BMiCloudSubscription *)self displayEntry];
      v16 = displayEntry == [v5 displayEntry];
    }

    else
    {
LABEL_35:
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
  v30[8] = *MEMORY[0x1E69E9840];
  if (![(BMiCloudSubscription *)self hasMlServerScore]|| ([(BMiCloudSubscription *)self mlServerScore], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMiCloudSubscription *)self mlServerScore];
    v4 = MEMORY[0x1E696AD98];
    [(BMiCloudSubscription *)self mlServerScore];
    v5 = [v4 numberWithDouble:?];
  }

  if ([(BMiCloudSubscription *)self hasTotalQuota])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription totalQuota](self, "totalQuota")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMiCloudSubscription *)self hasTotalUsed])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription totalUsed](self, "totalUsed")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMiCloudSubscription *)self hasTotalAvailable])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription totalAvailable](self, "totalAvailable")}];
  }

  else
  {
    v28 = 0;
  }

  if ([(BMiCloudSubscription *)self hasBundleQuotaInBytes])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription bundleQuotaInBytes](self, "bundleQuotaInBytes")}];
  }

  else
  {
    v27 = 0;
  }

  if ([(BMiCloudSubscription *)self hasCommerceQuotaInBytes])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription commerceQuotaInBytes](self, "commerceQuotaInBytes")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMiCloudSubscription iCloudSubscriptionEventType](self, "iCloudSubscriptionEventType")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMiCloudSubscription displayEntry](self, "displayEntry")}];
  v29[0] = @"mlServerScore";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v30[0] = null;
  v29[1] = @"totalQuota";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null2;
  v30[1] = null2;
  v29[2] = @"totalUsed";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v5;
  v22 = null3;
  v30[2] = null3;
  v29[3] = @"totalAvailable";
  null4 = v28;
  if (!v28)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v30[3] = null4;
  v29[4] = @"bundleQuotaInBytes";
  null5 = v27;
  if (!v27)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = null5;
  v29[5] = @"commerceQuotaInBytes";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null6;
  v29[6] = @"iCloudSubscriptionEventType";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null7;
  v29[7] = @"displayEntry";
  null8 = v10;
  if (!v10)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = null8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_38;
    }

LABEL_50:

    if (v8)
    {
      goto LABEL_39;
    }

    goto LABEL_51;
  }

  if (!v9)
  {
    goto LABEL_50;
  }

LABEL_38:
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_51:

LABEL_39:
  if (!v27)
  {
  }

  if (!v28)
  {
  }

  if (v7)
  {
    if (v25)
    {
      goto LABEL_45;
    }

LABEL_53:

    if (v26)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  if (!v25)
  {
    goto LABEL_53;
  }

LABEL_45:
  if (v26)
  {
    goto LABEL_46;
  }

LABEL_54:

LABEL_46:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMiCloudSubscription)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v89[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"mlServerScore"];
  errorCopy = error;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"totalQuota"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v22 = 0;
          goto LABEL_70;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalQuota"];
        v87 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v27 = v23;
        v11 = v26;
        v10 = 0;
        v22 = 0;
        *errorCopy = [v27 initWithDomain:v24 code:2 userInfo:v26];
        goto LABEL_69;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"totalUsed"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v25 = 0;
          v22 = 0;
          goto LABEL_69;
        }

        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v30 = v10;
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v58 = objc_opt_class();
        v32 = v31;
        v10 = v30;
        v73 = [v32 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v58, @"totalUsed"];
        v85 = v73;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v34 = v29;
        v35 = v33;
        v25 = 0;
        v22 = 0;
        *errorCopy = [v71 initWithDomain:v34 code:2 userInfo:v33];
LABEL_68:

LABEL_69:
        goto LABEL_70;
      }

      v62 = v9;
      v12 = v7;
      selfCopy2 = self;
      v70 = v11;
    }

    else
    {
      v62 = v9;
      v12 = v7;
      selfCopy2 = self;
      v70 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"totalAvailable"];
    v60 = v11;
    v65 = v14;
    if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v73 = 0;
          v22 = 0;
          v25 = v70;
          self = selfCopy2;
          v7 = v12;
          v9 = v62;
          v35 = v65;
          goto LABEL_68;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = v10;
        v38 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalAvailable"];
        v83 = v68;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v40 = v36;
        v11 = v60;
        v41 = v38;
        v10 = v37;
        v73 = 0;
        v22 = 0;
        *errorCopy2 = [v40 initWithDomain:v41 code:2 userInfo:v16];
        v25 = v70;
        self = selfCopy2;
        v7 = v12;
        v9 = v62;
        goto LABEL_67;
      }

      v73 = v15;
    }

    else
    {
      v73 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"bundleQuotaInBytes"];
    self = selfCopy2;
    v67 = v8;
    if (v16)
    {
      objc_opt_class();
      v7 = v12;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v9 = v62;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v68 = 0;
            v22 = 0;
            goto LABEL_66;
          }

          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = v10;
          v44 = *MEMORY[0x1E698F240];
          v80 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleQuotaInBytes"];
          v81 = v66;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v45 = v42;
          v11 = v60;
          v46 = v44;
          v10 = v43;
          v68 = 0;
          v22 = 0;
          *errorCopy = [v45 initWithDomain:v46 code:2 userInfo:v17];
LABEL_65:

          v8 = v67;
LABEL_66:
          v25 = v70;
LABEL_67:

          v35 = v65;
          goto LABEL_68;
        }

        v68 = v16;
LABEL_24:
        v17 = [dictionaryCopy objectForKeyedSubscript:@"commerceQuotaInBytes"];
        selfCopy3 = self;
        v61 = v10;
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v66 = 0;
              v22 = 0;
              goto LABEL_65;
            }

            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v48 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"commerceQuotaInBytes"];
            v79 = v19;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v66 = 0;
            v22 = 0;
            *errorCopy = [v47 initWithDomain:v48 code:2 userInfo:v18];
            goto LABEL_64;
          }

          v66 = v17;
        }

        else
        {
          v66 = 0;
        }

        v18 = [dictionaryCopy objectForKeyedSubscript:@"iCloudSubscriptionEventType"];
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v18;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy)
              {
                v19 = 0;
                v22 = 0;
                goto LABEL_64;
              }

              v63 = objc_alloc(MEMORY[0x1E696ABC0]);
              v54 = *MEMORY[0x1E698F240];
              v76 = *MEMORY[0x1E696A578];
              v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"iCloudSubscriptionEventType"];
              v77 = v50;
              v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
              v55 = [v63 initWithDomain:v54 code:2 userInfo:v49];
              v19 = 0;
              v22 = 0;
              *errorCopy = v55;
              goto LABEL_63;
            }

            v28 = [MEMORY[0x1E696AD98] numberWithInt:BMiCloudSubscriptionEventTypeFromString(v18)];
          }

          v19 = v28;
        }

        else
        {
          v19 = 0;
        }

        v49 = [dictionaryCopy objectForKeyedSubscript:@"displayEntry"];
        if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v49;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy)
              {
                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v74 = *MEMORY[0x1E696A578];
                v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"displayEntry"];
                v75 = v56;
                v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                *errorCopy = [v64 initWithDomain:v59 code:2 userInfo:v57];
              }

              v50 = 0;
              v22 = 0;
              goto LABEL_63;
            }

            v51 = [MEMORY[0x1E696AD98] numberWithInt:BMiCloudSubscriptionEntryTypeFromString(v49)];
          }

          v50 = v51;
        }

        else
        {
          v50 = 0;
        }

        v22 = -[BMiCloudSubscription initWithMlServerScore:totalQuota:totalUsed:totalAvailable:bundleQuotaInBytes:commerceQuotaInBytes:iCloudSubscriptionEventType:displayEntry:](selfCopy3, "initWithMlServerScore:totalQuota:totalUsed:totalAvailable:bundleQuotaInBytes:commerceQuotaInBytes:iCloudSubscriptionEventType:displayEntry:", v67, v61, v70, v73, v68, v66, __PAIR64__([v50 intValue], objc_msgSend(v19, "intValue")));
        selfCopy3 = v22;
LABEL_63:

LABEL_64:
        self = selfCopy3;
        v11 = v60;
        v10 = v61;
        goto LABEL_65;
      }

      v68 = 0;
    }

    else
    {
      v68 = 0;
      v7 = v12;
    }

    v9 = v62;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E698F240];
    v88 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mlServerScore"];
    v89[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
    v8 = 0;
    v22 = 0;
    *errorCopy = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_70:

    goto LABEL_71;
  }

  v8 = 0;
  v22 = 0;
LABEL_71:

  v52 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMiCloudSubscription *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasMlServerScore)
  {
    mlServerScore = self->_mlServerScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasTotalQuota)
  {
    totalQuota = self->_totalQuota;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasTotalUsed)
  {
    totalUsed = self->_totalUsed;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasTotalAvailable)
  {
    totalAvailable = self->_totalAvailable;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasBundleQuotaInBytes)
  {
    bundleQuotaInBytes = self->_bundleQuotaInBytes;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasCommerceQuotaInBytes)
  {
    commerceQuotaInBytes = self->_commerceQuotaInBytes;
    PBDataWriterWriteInt64Field();
  }

  iCloudSubscriptionEventType = self->_iCloudSubscriptionEventType;
  PBDataWriterWriteUint32Field();
  displayEntry = self->_displayEntry;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v67.receiver = self;
  v67.super_class = BMiCloudSubscription;
  v5 = [(BMEventBase *)&v67 init];
  if (!v5)
  {
    goto LABEL_132;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_130;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v68) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v68) & 0x7F) << v7;
        if ((LOBYTE(v68) & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_130;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasBundleQuotaInBytes = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v47 = [fromCopy position] + 1;
            if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 = (((LOBYTE(v68) & 0x7F) << v44) | v46);
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v13 = v45++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_100;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v46;
          }

LABEL_100:
          v61 = 72;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_95;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasCommerceQuotaInBytes = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 = (((LOBYTE(v68) & 0x7F) << v23) | v25);
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_116;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_116:
          v61 = 80;
        }

LABEL_121:
        *(&v5->super.super.isa + v61) = v22;
        goto LABEL_129;
      }

      if (v15 == 7)
      {
        v56 = 0;
        v57 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v68) = 0;
          v58 = [fromCopy position] + 1;
          if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (LOBYTE(v68) & 0x7F) << v56;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v41 = v57++ > 8;
          if (v41)
          {
            goto LABEL_107;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v37 > 5)
        {
LABEL_107:
          LODWORD(v37) = 0;
        }

        v62 = 28;
      }

      else
      {
        if (v15 != 8)
        {
LABEL_95:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_131;
          }

          goto LABEL_129;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v68) = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (LOBYTE(v68) & 0x7F) << v35;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v41 = v36++ > 8;
          if (v41)
          {
            goto LABEL_124;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v37 > 4)
        {
LABEL_124:
          LODWORD(v37) = 0;
        }

        v62 = 32;
      }

      *(&v5->super.super.isa + v62) = v37;
LABEL_129:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_130;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasTotalUsed = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 = (((LOBYTE(v68) & 0x7F) << v50) | v52);
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v13 = v51++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_104;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v52;
        }

LABEL_104:
        v61 = 56;
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_95;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasTotalAvailable = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 = (((LOBYTE(v68) & 0x7F) << v29) | v31);
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_120;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_120:
        v61 = 64;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v5->_hasMlServerScore = 1;
        v68 = 0.0;
        v42 = [fromCopy position] + 8;
        if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 8, v43 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_mlServerScore = v68;
        goto LABEL_129;
      }

      if (v15 != 2)
      {
        goto LABEL_95;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v5->_hasTotalQuota = 1;
      while (1)
      {
        LOBYTE(v68) = 0;
        v19 = [fromCopy position] + 1;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v18 = (((LOBYTE(v68) & 0x7F) << v16) | v18);
        if ((LOBYTE(v68) & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v13 = v17++ >= 9;
        if (v13)
        {
          v22 = 0;
          goto LABEL_112;
        }
      }

      if ([fromCopy hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_112:
      v61 = 48;
    }

    goto LABEL_121;
  }

LABEL_130:
  if ([fromCopy hasError])
  {
LABEL_131:
    v65 = 0;
  }

  else
  {
LABEL_132:
    v65 = v5;
  }

  return v65;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMiCloudSubscription *)self mlServerScore];
  v5 = [v4 numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription totalQuota](self, "totalQuota")}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription totalUsed](self, "totalUsed")}];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription totalAvailable](self, "totalAvailable")}];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription bundleQuotaInBytes](self, "bundleQuotaInBytes")}];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMiCloudSubscription commerceQuotaInBytes](self, "commerceQuotaInBytes")}];
  v11 = BMiCloudSubscriptionEventTypeAsString([(BMiCloudSubscription *)self iCloudSubscriptionEventType]);
  v12 = BMiCloudSubscriptionEntryTypeAsString([(BMiCloudSubscription *)self displayEntry]);
  v13 = [v3 initWithFormat:@"BMiCloudSubscription with mlServerScore: %@, totalQuota: %@, totalUsed: %@, totalAvailable: %@, bundleQuotaInBytes: %@, commerceQuotaInBytes: %@, iCloudSubscriptionEventType: %@, displayEntry: %@", v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMiCloudSubscription)initWithMlServerScore:(id)score totalQuota:(id)quota totalUsed:(id)used totalAvailable:(id)available bundleQuotaInBytes:(id)bytes commerceQuotaInBytes:(id)inBytes iCloudSubscriptionEventType:(int)type displayEntry:(int)self0
{
  scoreCopy = score;
  quotaCopy = quota;
  usedCopy = used;
  availableCopy = available;
  bytesCopy = bytes;
  inBytesCopy = inBytes;
  v30.receiver = self;
  v30.super_class = BMiCloudSubscription;
  v22 = [(BMEventBase *)&v30 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (scoreCopy)
    {
      v22->_hasMlServerScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v22->_hasMlServerScore = 0;
      v23 = -1.0;
    }

    v22->_mlServerScore = v23;
    if (quotaCopy)
    {
      v22->_hasTotalQuota = 1;
      longLongValue = [quotaCopy longLongValue];
    }

    else
    {
      v22->_hasTotalQuota = 0;
      longLongValue = -1;
    }

    v22->_totalQuota = longLongValue;
    if (usedCopy)
    {
      v22->_hasTotalUsed = 1;
      longLongValue2 = [usedCopy longLongValue];
    }

    else
    {
      v22->_hasTotalUsed = 0;
      longLongValue2 = -1;
    }

    v22->_totalUsed = longLongValue2;
    if (availableCopy)
    {
      v22->_hasTotalAvailable = 1;
      longLongValue3 = [availableCopy longLongValue];
    }

    else
    {
      v22->_hasTotalAvailable = 0;
      longLongValue3 = -1;
    }

    v22->_totalAvailable = longLongValue3;
    if (bytesCopy)
    {
      v22->_hasBundleQuotaInBytes = 1;
      longLongValue4 = [bytesCopy longLongValue];
    }

    else
    {
      v22->_hasBundleQuotaInBytes = 0;
      longLongValue4 = -1;
    }

    v22->_bundleQuotaInBytes = longLongValue4;
    if (inBytesCopy)
    {
      v22->_hasCommerceQuotaInBytes = 1;
      longLongValue5 = [inBytesCopy longLongValue];
    }

    else
    {
      v22->_hasCommerceQuotaInBytes = 0;
      longLongValue5 = -1;
    }

    v22->_commerceQuotaInBytes = longLongValue5;
    v22->_iCloudSubscriptionEventType = type;
    v22->_displayEntry = entry;
  }

  return v22;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mlServerScore" number:1 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalQuota" number:2 type:3 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalUsed" number:3 type:3 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalAvailable" number:4 type:3 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleQuotaInBytes" number:5 type:3 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"commerceQuotaInBytes" number:6 type:3 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iCloudSubscriptionEventType" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayEntry" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMiCloudSubscription alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end