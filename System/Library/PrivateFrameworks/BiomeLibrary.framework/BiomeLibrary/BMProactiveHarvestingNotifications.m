@interface BMProactiveHarvestingNotifications
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingNotifications)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingNotifications)initWithUniqueID:(id)a3 absoluteTimestamp:(id)a4 bundleID:(id)a5 notificationID:(id)a6 title:(id)a7 subtitle:(id)a8 body:(id)a9 threadID:(id)a10 category:(id)a11 isGroupMessage:(id)a12 isTimeSensitive:(id)a13 isCritical:(id)a14 isCommunicationNotification:(id)a15 contentProtection:(id)a16 personaId:(id)a17 attachments:(id)a18 fromHandles:(id)a19 toHandles:(id)a20;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_attachmentsJSONArray;
- (id)_fromHandlesJSONArray;
- (id)_toHandlesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingNotifications

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingNotifications *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingNotifications *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_73;
      }
    }

    v13 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
    v14 = [v5 absoluteTimestamp];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
      v17 = [v5 absoluteTimestamp];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_73;
      }
    }

    v19 = [(BMProactiveHarvestingNotifications *)self bundleID];
    v20 = [v5 bundleID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingNotifications *)self bundleID];
      v23 = [v5 bundleID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_73;
      }
    }

    v25 = [(BMProactiveHarvestingNotifications *)self notificationID];
    v26 = [v5 notificationID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingNotifications *)self notificationID];
      v29 = [v5 notificationID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_73;
      }
    }

    v31 = [(BMProactiveHarvestingNotifications *)self title];
    v32 = [v5 title];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingNotifications *)self title];
      v35 = [v5 title];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_73;
      }
    }

    v37 = [(BMProactiveHarvestingNotifications *)self subtitle];
    v38 = [v5 subtitle];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingNotifications *)self subtitle];
      v41 = [v5 subtitle];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_73;
      }
    }

    v43 = [(BMProactiveHarvestingNotifications *)self body];
    v44 = [v5 body];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMProactiveHarvestingNotifications *)self body];
      v47 = [v5 body];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_73;
      }
    }

    v49 = [(BMProactiveHarvestingNotifications *)self threadID];
    v50 = [v5 threadID];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMProactiveHarvestingNotifications *)self threadID];
      v53 = [v5 threadID];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_73;
      }
    }

    v55 = [(BMProactiveHarvestingNotifications *)self category];
    v56 = [v5 category];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMProactiveHarvestingNotifications *)self category];
      v59 = [v5 category];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsGroupMessage](self, "hasIsGroupMessage") || [v5 hasIsGroupMessage])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsGroupMessage])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsGroupMessage])
      {
        goto LABEL_73;
      }

      v61 = [(BMProactiveHarvestingNotifications *)self isGroupMessage];
      if (v61 != [v5 isGroupMessage])
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsTimeSensitive](self, "hasIsTimeSensitive") || [v5 hasIsTimeSensitive])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsTimeSensitive])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsTimeSensitive])
      {
        goto LABEL_73;
      }

      v62 = [(BMProactiveHarvestingNotifications *)self isTimeSensitive];
      if (v62 != [v5 isTimeSensitive])
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsCritical](self, "hasIsCritical") || [v5 hasIsCritical])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsCritical])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsCritical])
      {
        goto LABEL_73;
      }

      v63 = [(BMProactiveHarvestingNotifications *)self isCritical];
      if (v63 != [v5 isCritical])
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsCommunicationNotification](self, "hasIsCommunicationNotification") || [v5 hasIsCommunicationNotification])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsCommunicationNotification])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsCommunicationNotification])
      {
        goto LABEL_73;
      }

      v64 = [(BMProactiveHarvestingNotifications *)self isCommunicationNotification];
      if (v64 != [v5 isCommunicationNotification])
      {
        goto LABEL_73;
      }
    }

    v65 = [(BMProactiveHarvestingNotifications *)self contentProtection];
    v66 = [v5 contentProtection];
    v67 = v66;
    if (v65 == v66)
    {
    }

    else
    {
      v68 = [(BMProactiveHarvestingNotifications *)self contentProtection];
      v69 = [v5 contentProtection];
      v70 = [v68 isEqual:v69];

      if (!v70)
      {
        goto LABEL_73;
      }
    }

    v71 = [(BMProactiveHarvestingNotifications *)self personaId];
    v72 = [v5 personaId];
    v73 = v72;
    if (v71 == v72)
    {
    }

    else
    {
      v74 = [(BMProactiveHarvestingNotifications *)self personaId];
      v75 = [v5 personaId];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_73;
      }
    }

    v77 = [(BMProactiveHarvestingNotifications *)self attachments];
    v78 = [v5 attachments];
    v79 = v78;
    if (v77 == v78)
    {
    }

    else
    {
      v80 = [(BMProactiveHarvestingNotifications *)self attachments];
      v81 = [v5 attachments];
      v82 = [v80 isEqual:v81];

      if (!v82)
      {
        goto LABEL_73;
      }
    }

    v83 = [(BMProactiveHarvestingNotifications *)self fromHandles];
    v84 = [v5 fromHandles];
    v85 = v84;
    if (v83 == v84)
    {
    }

    else
    {
      v86 = [(BMProactiveHarvestingNotifications *)self fromHandles];
      v87 = [v5 fromHandles];
      v88 = [v86 isEqual:v87];

      if (!v88)
      {
LABEL_73:
        v12 = 0;
LABEL_74:

        goto LABEL_75;
      }
    }

    v90 = [(BMProactiveHarvestingNotifications *)self toHandles];
    v91 = [v5 toHandles];
    if (v90 == v91)
    {
      v12 = 1;
    }

    else
    {
      v92 = [(BMProactiveHarvestingNotifications *)self toHandles];
      v93 = [v5 toHandles];
      v12 = [v92 isEqual:v93];
    }

    goto LABEL_74;
  }

  v12 = 0;
LABEL_75:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v65[18] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingNotifications *)self uniqueID];
  v4 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMProactiveHarvestingNotifications *)self bundleID];
  v9 = [(BMProactiveHarvestingNotifications *)self notificationID];
  v10 = [(BMProactiveHarvestingNotifications *)self title];
  v11 = [(BMProactiveHarvestingNotifications *)self subtitle];
  v12 = [(BMProactiveHarvestingNotifications *)self body];
  v63 = [(BMProactiveHarvestingNotifications *)self threadID];
  v62 = [(BMProactiveHarvestingNotifications *)self category];
  if ([(BMProactiveHarvestingNotifications *)self hasIsGroupMessage])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isGroupMessage](self, "isGroupMessage")}];
  }

  else
  {
    v61 = 0;
  }

  if ([(BMProactiveHarvestingNotifications *)self hasIsTimeSensitive])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isTimeSensitive](self, "isTimeSensitive")}];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMProactiveHarvestingNotifications *)self hasIsCritical])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCritical](self, "isCritical")}];
  }

  else
  {
    v59 = 0;
  }

  if ([(BMProactiveHarvestingNotifications *)self hasIsCommunicationNotification])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCommunicationNotification](self, "isCommunicationNotification")}];
  }

  else
  {
    v58 = 0;
  }

  v57 = [(BMProactiveHarvestingNotifications *)self contentProtection];
  v56 = [(BMProactiveHarvestingNotifications *)self personaId];
  v55 = [(BMProactiveHarvestingNotifications *)self _attachmentsJSONArray];
  v54 = [(BMProactiveHarvestingNotifications *)self _fromHandlesJSONArray];
  v13 = [(BMProactiveHarvestingNotifications *)self _toHandlesJSONArray];
  v64[0] = @"uniqueID";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v14;
  v65[0] = v14;
  v64[1] = @"absoluteTimestamp";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v15;
  v65[1] = v15;
  v64[2] = @"bundleID";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v16;
  v65[2] = v16;
  v64[3] = @"notificationID";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v17;
  v65[3] = v17;
  v64[4] = @"title";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v18;
  v65[4] = v18;
  v64[5] = @"subtitle";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v19;
  v65[5] = v19;
  v64[6] = @"body";
  v20 = v12;
  if (!v12)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v20;
  v65[6] = v20;
  v64[7] = @"threadID";
  v21 = v63;
  if (!v63)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v65[7] = v21;
  v64[8] = @"category";
  v22 = v62;
  if (!v62)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v65[8] = v22;
  v64[9] = @"isGroupMessage";
  v23 = v61;
  if (!v61)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v7;
  v65[9] = v23;
  v64[10] = @"isTimeSensitive";
  v24 = v60;
  v25 = v23;
  if (!v60)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v8;
  v48 = v24;
  v65[10] = v24;
  v64[11] = @"isCritical";
  v26 = v59;
  if (!v59)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v3;
  v36 = v26;
  v65[11] = v26;
  v64[12] = @"isCommunicationNotification";
  v27 = v58;
  if (!v58)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v9;
  v65[12] = v27;
  v64[13] = @"contentProtection";
  v28 = v57;
  if (!v57)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v21;
  v49 = v10;
  v65[13] = v28;
  v64[14] = @"personaId";
  v29 = v56;
  if (!v56)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v12;
  v65[14] = v29;
  v64[15] = @"attachments";
  v31 = v55;
  if (!v55)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v25;
  v65[15] = v31;
  v64[16] = @"fromHandles";
  v32 = v54;
  if (!v54)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v65[16] = v32;
  v64[17] = @"toHandles";
  v33 = v13;
  if (!v13)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v65[17] = v33;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:{18, v36}];
  if (!v13)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (!v59)
  {
  }

  if (!v60)
  {
  }

  if (!v61)
  {
  }

  if (!v62)
  {
  }

  if (v63)
  {
    if (v30)
    {
      goto LABEL_74;
    }
  }

  else
  {

    if (v30)
    {
LABEL_74:
      if (v11)
      {
        goto LABEL_75;
      }

      goto LABEL_85;
    }
  }

  if (v11)
  {
LABEL_75:
    if (v49)
    {
      goto LABEL_76;
    }

    goto LABEL_86;
  }

LABEL_85:

  if (v49)
  {
LABEL_76:
    if (v50)
    {
      goto LABEL_77;
    }

    goto LABEL_87;
  }

LABEL_86:

  if (v50)
  {
LABEL_77:
    if (v52)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

LABEL_87:

  if (v52)
  {
LABEL_78:
    if (v53)
    {
      goto LABEL_79;
    }

LABEL_89:

    if (v51)
    {
      goto LABEL_80;
    }

    goto LABEL_90;
  }

LABEL_88:

  if (!v53)
  {
    goto LABEL_89;
  }

LABEL_79:
  if (v51)
  {
    goto LABEL_80;
  }

LABEL_90:

LABEL_80:
  v34 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_toHandlesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingNotifications *)self toHandles];
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

- (id)_fromHandlesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingNotifications *)self fromHandles];
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

- (id)_attachmentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingNotifications *)self attachments];
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

- (BMProactiveHarvestingNotifications)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v338[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"uniqueID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = *MEMORY[0x1E698F240];
        v337 = *MEMORY[0x1E696A578];
        v14 = self;
        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v219 = objc_opt_class();
        v16 = v15;
        self = v14;
        v17 = [v16 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v219, @"uniqueID"];
        v338[0] = v17;
        v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v338 forKeys:&v337 count:1];
        v18 = [v12 initWithDomain:v13 code:2 userInfo:?];
        v7 = 0;
        v19 = 0;
        *a4 = v18;
        goto LABEL_239;
      }

      v7 = 0;
      v19 = 0;
      goto LABEL_240;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  v269 = v8;
  if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v267 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    [v10 doubleValue];
    v267 = [v11 initWithTimeIntervalSinceReferenceDate:?];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v20 = v9;
    v267 = [v10 dateFromString:v20];

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v271 = objc_alloc(MEMORY[0x1E696ABC0]);
      v124 = *MEMORY[0x1E698F240];
      v335 = *MEMORY[0x1E696A578];
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v336 = v54;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
      v125 = [v271 initWithDomain:v124 code:2 userInfo:v21];
      v17 = 0;
      v19 = 0;
      *a4 = v125;
      goto LABEL_238;
    }

    v17 = 0;
    v19 = 0;
    goto LABEL_239;
  }

  v267 = v9;
LABEL_16:
  v21 = [v5 objectForKeyedSubscript:@"bundleID"];
  v270 = v21;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v333 = *MEMORY[0x1E696A578];
        v48 = objc_alloc(MEMORY[0x1E696AEC0]);
        v220 = objc_opt_class();
        v49 = v48;
        v21 = v270;
        v50 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v220, @"bundleID"];
        v334 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
        v52 = v46;
        v22 = v51;
        v53 = [v52 initWithDomain:v47 code:2 userInfo:v51];
        v54 = 0;
        v19 = 0;
        *a4 = v53;
        v17 = v267;
        goto LABEL_237;
      }

      v54 = 0;
      v19 = 0;
      v17 = v267;
      goto LABEL_238;
    }

    v266 = v21;
  }

  else
  {
    v266 = 0;
  }

  v22 = [v5 objectForKeyedSubscript:@"notificationID"];
  v268 = v22;
  v264 = self;
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v331 = *MEMORY[0x1E696A578];
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v221 = objc_opt_class();
        v58 = v57;
        v21 = v270;
        v23 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v221, @"notificationID"];
        v332 = v23;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
        v60 = v55;
        v22 = v268;
        v265 = v59;
        v61 = [v60 initWithDomain:v56 code:2 userInfo:?];
        v50 = 0;
        v19 = 0;
        *a4 = v61;
        v54 = v266;
        v17 = v267;
        goto LABEL_236;
      }

      v50 = 0;
      v19 = 0;
      v54 = v266;
      v17 = v267;
      goto LABEL_237;
    }

    v263 = v22;
  }

  else
  {
    v263 = 0;
  }

  v23 = [v5 objectForKeyedSubscript:@"title"];
  v265 = v23;
  v262 = v7;
  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v23 = 0;
          v19 = 0;
          v54 = v266;
          v17 = v267;
          v50 = v263;
          goto LABEL_236;
        }

        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v329 = *MEMORY[0x1E696A578];
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        v222 = objc_opt_class();
        v65 = v64;
        v21 = v270;
        v261 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v222, @"title"];
        v330 = v261;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
        v66 = v62;
        v22 = v268;
        v67 = [v66 initWithDomain:v63 code:2 userInfo:v24];
        v23 = 0;
        v19 = 0;
        *a4 = v67;
        goto LABEL_126;
      }

      v23 = v23;
    }
  }

  v24 = [v5 objectForKeyedSubscript:@"subtitle"];
  v258 = v23;
  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v261 = v24;
        goto LABEL_34;
      }

      if (a4)
      {
        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        v69 = *MEMORY[0x1E698F240];
        v327 = *MEMORY[0x1E696A578];
        v70 = objc_alloc(MEMORY[0x1E696AEC0]);
        v223 = objc_opt_class();
        v71 = v70;
        v21 = v270;
        v260 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v223, @"subtitle"];
        v328 = v260;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v328 forKeys:&v327 count:1];
        v73 = v68;
        v22 = v268;
        v259 = v72;
        v74 = [v73 initWithDomain:v69 code:2 userInfo:?];
        v261 = 0;
        v19 = 0;
        *a4 = v74;
        v54 = v266;
        v17 = v267;
        v50 = v263;
        goto LABEL_234;
      }

      v261 = 0;
      v19 = 0;
LABEL_126:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      goto LABEL_235;
    }
  }

  v261 = 0;
LABEL_34:
  v25 = [v5 objectForKeyedSubscript:@"body"];
  v259 = v25;
  if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v260 = 0;
        v19 = 0;
        v54 = v266;
        v17 = v267;
        v50 = v263;
        v23 = v258;
        goto LABEL_234;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v76 = *MEMORY[0x1E698F240];
      v325 = *MEMORY[0x1E696A578];
      v77 = objc_alloc(MEMORY[0x1E696AEC0]);
      v224 = objc_opt_class();
      v78 = v77;
      v21 = v270;
      v257 = [v78 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v224, @"body"];
      v326 = v257;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v326 forKeys:&v325 count:1];
      v80 = v75;
      v22 = v268;
      v256 = v79;
      v81 = [v80 initWithDomain:v76 code:2 userInfo:?];
      v260 = 0;
      v19 = 0;
      *a4 = v81;
      goto LABEL_133;
    }

    v260 = v26;
  }

  else
  {
    v260 = 0;
  }

  v27 = [v5 objectForKeyedSubscript:@"threadID"];
  v256 = v27;
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v257 = v28;
        goto LABEL_40;
      }

      if (a4)
      {
        v82 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = *MEMORY[0x1E698F240];
        v323 = *MEMORY[0x1E696A578];
        v84 = objc_alloc(MEMORY[0x1E696AEC0]);
        v225 = objc_opt_class();
        v85 = v84;
        v21 = v270;
        v86 = [v85 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v225, @"threadID"];
        v324 = v86;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
        v88 = v82;
        v22 = v268;
        v255 = v87;
        v89 = [v88 initWithDomain:v83 code:2 userInfo:?];
        v257 = 0;
        v19 = 0;
        *a4 = v89;
        goto LABEL_137;
      }

      v257 = 0;
      v19 = 0;
LABEL_133:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      goto LABEL_233;
    }
  }

  v257 = 0;
LABEL_40:
  v29 = [v5 objectForKeyedSubscript:@"category"];
  v255 = v29;
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v247 = v30;
        goto LABEL_43;
      }

      if (a4)
      {
        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = *MEMORY[0x1E698F240];
        v321 = *MEMORY[0x1E696A578];
        v92 = objc_alloc(MEMORY[0x1E696AEC0]);
        v226 = objc_opt_class();
        v93 = v92;
        v21 = v270;
        v94 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v226, @"category"];
        v322 = v94;
        v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v322 forKeys:&v321 count:1];
        v96 = v90;
        v22 = v268;
        v249 = v95;
        v97 = [v96 initWithDomain:v91 code:2 userInfo:?];
        v247 = 0;
        v19 = 0;
        *a4 = v97;
        goto LABEL_149;
      }

      v86 = 0;
      v19 = 0;
LABEL_137:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      goto LABEL_232;
    }
  }

  v247 = 0;
LABEL_43:
  v31 = [v5 objectForKeyedSubscript:@"isGroupMessage"];
  v249 = v31;
  if (v31)
  {
    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v250 = v32;
        goto LABEL_46;
      }

      if (a4)
      {
        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v319 = *MEMORY[0x1E696A578];
        v119 = objc_alloc(MEMORY[0x1E696AEC0]);
        v227 = objc_opt_class();
        v120 = v119;
        v21 = v270;
        v251 = [v120 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"isGroupMessage"];
        v320 = v251;
        v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v320 forKeys:&v319 count:1];
        v122 = v117;
        v22 = v268;
        v245 = v121;
        v123 = [v122 initWithDomain:v118 code:2 userInfo:?];
        v94 = 0;
        v19 = 0;
        *a4 = v123;
        v54 = v266;
        v17 = v267;
        v50 = v263;
        goto LABEL_230;
      }

      v94 = 0;
      v19 = 0;
LABEL_149:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      goto LABEL_231;
    }
  }

  v250 = 0;
LABEL_46:
  v33 = [v5 objectForKeyedSubscript:@"isTimeSensitive"];
  v245 = v33;
  if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v251 = 0;
        v19 = 0;
        v54 = v266;
        v17 = v267;
        v50 = v263;
        v94 = v250;
        goto LABEL_230;
      }

      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
      v127 = *MEMORY[0x1E698F240];
      v317 = *MEMORY[0x1E696A578];
      v128 = objc_alloc(MEMORY[0x1E696AEC0]);
      v228 = objc_opt_class();
      v129 = v128;
      v21 = v270;
      v246 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"isTimeSensitive"];
      v318 = v246;
      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v318 forKeys:&v317 count:1];
      v131 = v126;
      v22 = v268;
      v243 = v130;
      v132 = [v131 initWithDomain:v127 code:2 userInfo:?];
      v251 = 0;
      v19 = 0;
      *a4 = v132;
      goto LABEL_170;
    }

    v251 = v34;
  }

  else
  {
    v251 = 0;
  }

  v35 = [v5 objectForKeyedSubscript:@"isCritical"];
  v243 = v35;
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v246 = v36;
        goto LABEL_52;
      }

      if (a4)
      {
        v133 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v315 = *MEMORY[0x1E696A578];
        v135 = objc_alloc(MEMORY[0x1E696AEC0]);
        v229 = objc_opt_class();
        v136 = v135;
        v21 = v270;
        v244 = [v136 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"isCritical"];
        v316 = v244;
        v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
        v138 = v133;
        v22 = v268;
        v241 = v137;
        v139 = [v138 initWithDomain:v134 code:2 userInfo:?];
        v246 = 0;
        v19 = 0;
        *a4 = v139;
        goto LABEL_172;
      }

      v246 = 0;
      v19 = 0;
LABEL_170:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      v94 = v250;
      goto LABEL_229;
    }
  }

  v246 = 0;
LABEL_52:
  v37 = [v5 objectForKeyedSubscript:@"isCommunicationNotification"];
  v241 = v37;
  if (v37)
  {
    v38 = v37;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v244 = v38;
        goto LABEL_55;
      }

      if (a4)
      {
        v140 = objc_alloc(MEMORY[0x1E696ABC0]);
        v141 = *MEMORY[0x1E698F240];
        v313 = *MEMORY[0x1E696A578];
        v142 = objc_alloc(MEMORY[0x1E696AEC0]);
        v230 = objc_opt_class();
        v143 = v142;
        v21 = v270;
        v242 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v230, @"isCommunicationNotification"];
        v314 = v242;
        v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
        v145 = v140;
        v22 = v268;
        v239 = v144;
        v146 = [v145 initWithDomain:v141 code:2 userInfo:?];
        v244 = 0;
        v19 = 0;
        *a4 = v146;
        goto LABEL_174;
      }

      v244 = 0;
      v19 = 0;
LABEL_172:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      v94 = v250;
      goto LABEL_228;
    }
  }

  v244 = 0;
LABEL_55:
  v39 = [v5 objectForKeyedSubscript:@"contentProtection"];
  v239 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v242 = v40;
        goto LABEL_58;
      }

      if (a4)
      {
        v147 = objc_alloc(MEMORY[0x1E696ABC0]);
        v148 = *MEMORY[0x1E698F240];
        v311 = *MEMORY[0x1E696A578];
        v149 = objc_alloc(MEMORY[0x1E696AEC0]);
        v231 = objc_opt_class();
        v150 = v149;
        v21 = v270;
        v236 = [v150 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v231, @"contentProtection"];
        v312 = v236;
        v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
        v152 = v147;
        v22 = v268;
        v237 = v151;
        v153 = [v152 initWithDomain:v148 code:2 userInfo:?];
        v242 = 0;
        v19 = 0;
        *a4 = v153;
LABEL_176:
        v54 = v266;
        v17 = v267;
        v50 = v263;
        v94 = v250;
        goto LABEL_226;
      }

      v242 = 0;
      v19 = 0;
LABEL_174:
      v54 = v266;
      v17 = v267;
      v50 = v263;
      v94 = v250;
      goto LABEL_227;
    }
  }

  v242 = 0;
LABEL_58:
  v41 = [v5 objectForKeyedSubscript:@"personaId"];
  v237 = v41;
  if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v236 = 0;
    goto LABEL_61;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
      v155 = *MEMORY[0x1E698F240];
      v309 = *MEMORY[0x1E696A578];
      v156 = objc_alloc(MEMORY[0x1E696AEC0]);
      v232 = objc_opt_class();
      v157 = v156;
      v21 = v270;
      obj = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v232, @"personaId"];
      v310 = obj;
      v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
      v159 = v154;
      v22 = v268;
      v254 = v158;
      v160 = [v159 initWithDomain:v155 code:2 userInfo:?];
      v236 = 0;
      v19 = 0;
      *a4 = v160;
      v54 = v266;
      v17 = v267;
      v50 = v263;
      v94 = v250;

      goto LABEL_225;
    }

    v236 = 0;
    v19 = 0;
    goto LABEL_176;
  }

  v236 = v42;
LABEL_61:
  v43 = [v5 objectForKeyedSubscript:@"attachments"];
  v44 = [MEMORY[0x1E695DFB0] null];
  v45 = [v43 isEqual:v44];

  v252 = v6;
  v240 = v24;
  if (v45)
  {

LABEL_100:
    v98 = 0;
    v22 = v268;
    goto LABEL_101;
  }

  if (!v43)
  {
    goto LABEL_100;
  }

  objc_opt_class();
  obj = v43;
  v22 = v268;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v94 = v250;
    if (a4)
    {
      v181 = objc_alloc(MEMORY[0x1E696ABC0]);
      v182 = *MEMORY[0x1E698F240];
      v307 = *MEMORY[0x1E696A578];
      v253 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attachments"];
      v308 = v253;
      v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
      v184 = v182;
      v22 = v268;
      v238 = v183;
      v19 = 0;
      *a4 = [v181 initWithDomain:v184 code:2 userInfo:?];
      v54 = v266;
      v17 = v267;
      goto LABEL_222;
    }

    v19 = 0;
    v54 = v266;
    v17 = v267;
    v50 = v263;
    goto LABEL_225;
  }

  v98 = v43;
LABEL_101:
  v94 = v250;
  v253 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v98, "count")}];
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  obj = v98;
  v99 = [obj countByEnumeratingWithState:&v284 objects:v306 count:16];
  v100 = v260;
  v101 = v257;
  v102 = v251;
  v103 = v246;
  v104 = v244;
  v105 = v242;
  if (v99)
  {
    v106 = v99;
    v107 = *v285;
    do
    {
      for (i = 0; i != v106; ++i)
      {
        if (*v285 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v109 = *(*(&v284 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v161 = a4;
          if (a4)
          {
            v162 = objc_alloc(MEMORY[0x1E696ABC0]);
            v163 = *MEMORY[0x1E698F240];
            v304 = *MEMORY[0x1E696A578];
            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attachments"];
            v305 = v110;
            v164 = MEMORY[0x1E695DF20];
            v165 = &v305;
            v166 = &v304;
LABEL_144:
            v167 = [v164 dictionaryWithObjects:v165 forKeys:v166 count:1];
            v168 = v162;
            v21 = v270;
            v19 = 0;
            *v161 = [v168 initWithDomain:v163 code:2 userInfo:v167];
            v238 = obj;
            v6 = v252;
            v54 = v266;
            v17 = v267;
            v24 = v240;
            goto LABEL_196;
          }

LABEL_168:
          v19 = 0;
          v6 = v252;
          v54 = v266;
          v17 = v267;
          v50 = v263;
          v24 = v240;
          v94 = v250;

          goto LABEL_224;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v161 = a4;
          if (a4)
          {
            v162 = objc_alloc(MEMORY[0x1E696ABC0]);
            v163 = *MEMORY[0x1E698F240];
            v302 = *MEMORY[0x1E696A578];
            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attachments"];
            v303 = v110;
            v164 = MEMORY[0x1E695DF20];
            v165 = &v303;
            v166 = &v302;
            goto LABEL_144;
          }

          goto LABEL_168;
        }

        v110 = v109;
        v111 = [BMProactiveHarvestingContentAttachment alloc];
        v283 = 0;
        v112 = [(BMProactiveHarvestingContentAttachment *)v111 initWithJSONDictionary:v110 error:&v283];
        v113 = v283;
        if (v113)
        {
          v167 = v113;
          v6 = v252;
          v24 = v240;
          if (a4)
          {
            v169 = v113;
            *a4 = v167;
          }

          v19 = 0;
          v238 = obj;
          goto LABEL_195;
        }

        [v253 addObject:v112];

        v21 = v270;
        v22 = v268;
      }

      v106 = [obj countByEnumeratingWithState:&v284 objects:v306 count:16];
      v100 = v260;
      v101 = v257;
      v94 = v250;
      v102 = v251;
      v103 = v246;
      v104 = v244;
      v105 = v242;
    }

    while (v106);
  }

  v242 = v105;
  v244 = v104;
  v246 = v103;
  v251 = v102;
  v257 = v101;

  v114 = [v5 objectForKeyedSubscript:@"fromHandles"];
  v115 = [MEMORY[0x1E695DFB0] null];
  v116 = [v114 isEqual:v115];

  if (v116)
  {

    v114 = 0;
    v6 = v252;
    v24 = v240;
  }

  else
  {
    v260 = v100;
    v6 = v252;
    v50 = v263;
    v24 = v240;
    if (v114)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v238 = v114;
        if (!a4)
        {
          v19 = 0;
          v54 = v266;
          v17 = v267;
          v22 = v268;
          goto LABEL_223;
        }

        v199 = objc_alloc(MEMORY[0x1E696ABC0]);
        v200 = *MEMORY[0x1E698F240];
        v300 = *MEMORY[0x1E696A578];
        v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"fromHandles"];
        v301 = v110;
        v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
        v201 = v200;
        v21 = v270;
        v202 = [v199 initWithDomain:v201 code:2 userInfo:v167];
        v19 = 0;
        *a4 = v202;
LABEL_193:
        v54 = v266;
        v17 = v267;
        goto LABEL_221;
      }
    }
  }

  v110 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v114, "count")}];
  v279 = 0u;
  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
  v238 = v114;
  v170 = [v238 countByEnumeratingWithState:&v279 objects:v299 count:16];
  if (!v170)
  {
    goto LABEL_162;
  }

  v171 = v170;
  v172 = *v280;
  do
  {
    for (j = 0; j != v171; ++j)
    {
      if (*v280 != v172)
      {
        objc_enumerationMutation(v238);
      }

      v174 = *(*(&v279 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v185 = a4;
        if (a4)
        {
          v186 = objc_alloc(MEMORY[0x1E696ABC0]);
          v187 = *MEMORY[0x1E698F240];
          v297 = *MEMORY[0x1E696A578];
          v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"fromHandles"];
          v298 = v175;
          v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
          v189 = v186;
          v190 = v187;
          goto LABEL_182;
        }

LABEL_194:
        v19 = 0;
        v167 = v238;
LABEL_195:
        v54 = v266;
        v17 = v267;
        v21 = v270;
LABEL_196:
        v94 = v250;
        goto LABEL_221;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v185 = a4;
        if (!a4)
        {
          goto LABEL_194;
        }

        v191 = objc_alloc(MEMORY[0x1E696ABC0]);
        v192 = *MEMORY[0x1E698F240];
        v295 = *MEMORY[0x1E696A578];
        v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fromHandles"];
        v296 = v175;
        v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
        v189 = v191;
        v190 = v192;
LABEL_182:
        *v185 = [v189 initWithDomain:v190 code:2 userInfo:v188];

LABEL_186:
        v19 = 0;
        v167 = v238;
        v54 = v266;
        v17 = v267;
        v21 = v270;
        v94 = v250;
        goto LABEL_220;
      }

      v175 = v174;
      v176 = [BMProactiveHarvestingNamedHandle alloc];
      v278 = 0;
      v177 = [(BMProactiveHarvestingNamedHandle *)v176 initWithJSONDictionary:v175 error:&v278];
      v178 = v278;
      if (v178)
      {
        v193 = v178;
        if (a4)
        {
          v194 = v178;
          *a4 = v193;
        }

        goto LABEL_186;
      }

      [v110 addObject:v177];

      v6 = v252;
      v24 = v240;
    }

    v171 = [v238 countByEnumeratingWithState:&v279 objects:v299 count:16];
  }

  while (v171);
LABEL_162:

  v167 = [v5 objectForKeyedSubscript:@"toHandles"];
  v179 = [MEMORY[0x1E695DFB0] null];
  v180 = [v167 isEqual:v179];

  if (v180)
  {

    v167 = 0;
    v21 = v270;
    v94 = v250;
    goto LABEL_198;
  }

  v94 = v250;
  if (v167)
  {
    objc_opt_class();
    v21 = v270;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v195 = objc_alloc(MEMORY[0x1E696ABC0]);
        v196 = *MEMORY[0x1E698F240];
        v293 = *MEMORY[0x1E696A578];
        v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"toHandles"];
        v294 = v175;
        v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
        v198 = v196;
        v21 = v270;
        *a4 = [v195 initWithDomain:v198 code:2 userInfo:v197];

        v19 = 0;
        v54 = v266;
        v17 = v267;
        goto LABEL_220;
      }

      v19 = 0;
      goto LABEL_193;
    }
  }

  else
  {
    v21 = v270;
  }

LABEL_198:
  v175 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v167, "count")}];
  v274 = 0u;
  v275 = 0u;
  v276 = 0u;
  v277 = 0u;
  v167 = v167;
  v203 = [v167 countByEnumeratingWithState:&v274 objects:v292 count:16];
  if (!v203)
  {
    goto LABEL_208;
  }

  v204 = v203;
  v234 = *v275;
  while (2)
  {
    v205 = 0;
    while (2)
    {
      if (*v275 != v234)
      {
        objc_enumerationMutation(v167);
      }

      v206 = *(*(&v274 + 1) + 8 * v205);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = v266;
        v17 = v267;
        v211 = a4;
        v94 = v250;
        if (a4)
        {
          v235 = objc_alloc(MEMORY[0x1E696ABC0]);
          v233 = *MEMORY[0x1E698F240];
          v290 = *MEMORY[0x1E696A578];
          v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"toHandles"];
          v291 = v207;
          v212 = MEMORY[0x1E695DF20];
          v213 = &v291;
          v214 = &v290;
LABEL_214:
          v215 = [v212 dictionaryWithObjects:v213 forKeys:v214 count:1];
          *v211 = [v235 initWithDomain:v233 code:2 userInfo:v215];
LABEL_218:

          v21 = v270;
        }

LABEL_219:

        v19 = 0;
        goto LABEL_220;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v54 = v266;
        v17 = v267;
        v211 = a4;
        v94 = v250;
        if (a4)
        {
          v235 = objc_alloc(MEMORY[0x1E696ABC0]);
          v233 = *MEMORY[0x1E698F240];
          v288 = *MEMORY[0x1E696A578];
          v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"toHandles"];
          v289 = v207;
          v212 = MEMORY[0x1E695DF20];
          v213 = &v289;
          v214 = &v288;
          goto LABEL_214;
        }

        goto LABEL_219;
      }

      v207 = v206;
      v208 = [BMProactiveHarvestingNamedHandle alloc];
      v273 = 0;
      v209 = [(BMProactiveHarvestingNamedHandle *)v208 initWithJSONDictionary:v207 error:&v273];
      v210 = v273;
      if (v210)
      {
        v215 = v210;
        if (a4)
        {
          v216 = v210;
          *a4 = v215;
        }

        v54 = v266;
        v17 = v267;
        v94 = v250;
        goto LABEL_218;
      }

      [v175 addObject:v209];

      ++v205;
      v21 = v270;
      if (v204 != v205)
      {
        continue;
      }

      break;
    }

    v94 = v250;
    v204 = [v167 countByEnumeratingWithState:&v274 objects:v292 count:16];
    if (v204)
    {
      continue;
    }

    break;
  }

LABEL_208:

  v54 = v266;
  v17 = v267;
  v19 = [(BMProactiveHarvestingNotifications *)v264 initWithUniqueID:v262 absoluteTimestamp:v267 bundleID:v266 notificationID:v263 title:v258 subtitle:v261 body:v260 threadID:v257 category:v247 isGroupMessage:v94 isTimeSensitive:v251 isCritical:v246 isCommunicationNotification:v244 contentProtection:v242 personaId:v236 attachments:v253 fromHandles:v110 toHandles:v175];
  v264 = v19;
LABEL_220:

  v6 = v252;
  v24 = v240;
LABEL_221:

  v22 = v268;
LABEL_222:
  v50 = v263;
LABEL_223:

LABEL_224:
LABEL_225:

LABEL_226:
LABEL_227:

LABEL_228:
LABEL_229:

LABEL_230:
LABEL_231:

  v86 = v247;
LABEL_232:

LABEL_233:
  v23 = v258;

LABEL_234:
LABEL_235:

  v7 = v262;
LABEL_236:

  self = v264;
LABEL_237:

LABEL_238:
LABEL_239:

LABEL_240:
  v217 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNotifications *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsGroupMessage)
  {
    isGroupMessage = self->_isGroupMessage;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimeSensitive)
  {
    isTimeSensitive = self->_isTimeSensitive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCritical)
  {
    isCritical = self->_isCritical;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCommunicationNotification)
  {
    isCommunicationNotification = self->_isCommunicationNotification;
    PBDataWriterWriteBOOLField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = self->_attachments;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        v37 = 0;
        PBDataWriterPlaceMark();
        [v15 writeTo:v4];
        PBDataWriterRecallMark();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v12);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = self->_fromHandles;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * v20);
        v37 = 0;
        PBDataWriterPlaceMark();
        [v21 writeTo:v4];
        PBDataWriterRecallMark();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v18);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = self->_toHandles;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v29 + 1) + 8 * v26);
        v37 = 0;
        PBDataWriterPlaceMark();
        [v27 writeTo:{v4, v29}];
        PBDataWriterRecallMark();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v24);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = BMProactiveHarvestingNotifications;
  v5 = [(BMEventBase *)&v65 init];
  if (!v5)
  {
    goto LABEL_96;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v4 position];
  if (v9 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v13 = [v4 position] + 1;
        if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
        {
          v15 = [v4 data];
          [v15 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v12 |= (LOBYTE(v66) & 0x7F) << v10;
        if ((LOBYTE(v66) & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v16 = v11++ >= 9;
        if (v16)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v17 = [v4 hasError] ? 0 : v12;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        break;
      }

      switch((v17 >> 3))
      {
        case 1u:
          v18 = PBReaderReadString();
          v19 = 48;
          goto LABEL_73;
        case 2u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v66 = 0.0;
          v33 = [v4 position] + 8;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 8, v34 <= objc_msgSend(v4, "length")))
          {
            v55 = [v4 data];
            [v55 getBytes:&v66 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_absoluteTimestamp = v66;
          goto LABEL_90;
        case 3u:
          v18 = PBReaderReadString();
          v19 = 56;
          goto LABEL_73;
        case 4u:
          v18 = PBReaderReadString();
          v19 = 64;
          goto LABEL_73;
        case 5u:
          v18 = PBReaderReadString();
          v19 = 72;
          goto LABEL_73;
        case 6u:
          v18 = PBReaderReadString();
          v19 = 80;
          goto LABEL_73;
        case 7u:
          v18 = PBReaderReadString();
          v19 = 88;
          goto LABEL_73;
        case 8u:
          v18 = PBReaderReadString();
          v19 = 96;
          goto LABEL_73;
        case 9u:
          v18 = PBReaderReadString();
          v19 = 104;
          goto LABEL_73;
        case 0xAu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasIsGroupMessage = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v47 = [v4 position] + 1;
            if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
            {
              v49 = [v4 data];
              [v49 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v46 |= (LOBYTE(v66) & 0x7F) << v44;
            if ((LOBYTE(v66) & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v16 = v45++ >= 9;
            if (v16)
            {
              LOBYTE(v26) = 0;
              goto LABEL_88;
            }
          }

          v26 = (v46 != 0) & ~[v4 hasError];
LABEL_88:
          v53 = 32;
          goto LABEL_89;
        case 0xBu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasIsTimeSensitive = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v23 = [v4 position] + 1;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
            {
              v25 = [v4 data];
              [v25 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v22 |= (LOBYTE(v66) & 0x7F) << v20;
            if ((LOBYTE(v66) & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v16 = v21++ >= 9;
            if (v16)
            {
              LOBYTE(v26) = 0;
              goto LABEL_82;
            }
          }

          v26 = (v22 != 0) & ~[v4 hasError];
LABEL_82:
          v53 = 34;
          goto LABEL_89;
        case 0xCu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasIsCritical = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v37 |= (LOBYTE(v66) & 0x7F) << v35;
            if ((LOBYTE(v66) & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v16 = v36++ >= 9;
            if (v16)
            {
              LOBYTE(v26) = 0;
              goto LABEL_86;
            }
          }

          v26 = (v37 != 0) & ~[v4 hasError];
LABEL_86:
          v53 = 36;
          goto LABEL_89;
        case 0xDu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasIsCommunicationNotification = 1;
          break;
        case 0xEu:
          v18 = PBReaderReadString();
          v19 = 112;
          goto LABEL_73;
        case 0xFu:
          v18 = PBReaderReadString();
          v19 = 120;
LABEL_73:
          v50 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_90;
        case 0x10u:
          v66 = 0.0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_98;
          }

          v41 = [[BMProactiveHarvestingContentAttachment alloc] initByReadFrom:v4];
          if (!v41)
          {
            goto LABEL_98;
          }

          v42 = v41;
          v43 = v6;
          goto LABEL_80;
        case 0x12u:
          v66 = 0.0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_98;
          }

          v52 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:v4];
          if (!v52)
          {
            goto LABEL_98;
          }

          v42 = v52;
          v43 = v7;
          goto LABEL_80;
        case 0x13u:
          v66 = 0.0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_98;
          }

          v51 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:v4];
          if (!v51)
          {
            goto LABEL_98;
          }

          v42 = v51;
          v43 = v8;
LABEL_80:
          [v43 addObject:v42];
          PBReaderRecallMark();

          goto LABEL_90;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_90;
          }

LABEL_98:

          goto LABEL_95;
      }

      while (1)
      {
        LOBYTE(v66) = 0;
        v30 = [v4 position] + 1;
        if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
        {
          v32 = [v4 data];
          [v32 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v29 |= (LOBYTE(v66) & 0x7F) << v27;
        if ((LOBYTE(v66) & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v16 = v28++ >= 9;
        if (v16)
        {
          LOBYTE(v26) = 0;
          goto LABEL_84;
        }
      }

      v26 = (v29 != 0) & ~[v4 hasError];
LABEL_84:
      v53 = 38;
LABEL_89:
      *(&v5->super.super.isa + v53) = v26;
LABEL_90:
      v54 = [v4 position];
    }

    while (v54 < [v4 length]);
  }

  v56 = [v6 copy];
  attachments = v5->_attachments;
  v5->_attachments = v56;

  v58 = [v7 copy];
  fromHandles = v5->_fromHandles;
  v5->_fromHandles = v58;

  v60 = [v8 copy];
  toHandles = v5->_toHandles;
  v5->_toHandles = v60;

  v62 = [v4 hasError];
  if (v62)
  {
LABEL_95:
    v63 = 0;
  }

  else
  {
LABEL_96:
    v63 = v5;
  }

  return v63;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [(BMProactiveHarvestingNotifications *)self uniqueID];
  v23 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
  v20 = [(BMProactiveHarvestingNotifications *)self bundleID];
  v17 = [(BMProactiveHarvestingNotifications *)self notificationID];
  v16 = [(BMProactiveHarvestingNotifications *)self title];
  v22 = [(BMProactiveHarvestingNotifications *)self subtitle];
  v15 = [(BMProactiveHarvestingNotifications *)self body];
  v12 = [(BMProactiveHarvestingNotifications *)self threadID];
  v14 = [(BMProactiveHarvestingNotifications *)self category];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isGroupMessage](self, "isGroupMessage")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isTimeSensitive](self, "isTimeSensitive")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCritical](self, "isCritical")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCommunicationNotification](self, "isCommunicationNotification")}];
  v3 = [(BMProactiveHarvestingNotifications *)self contentProtection];
  v4 = [(BMProactiveHarvestingNotifications *)self personaId];
  v5 = [(BMProactiveHarvestingNotifications *)self attachments];
  v6 = [(BMProactiveHarvestingNotifications *)self fromHandles];
  v7 = [(BMProactiveHarvestingNotifications *)self toHandles];
  v19 = [v18 initWithFormat:@"BMProactiveHarvestingNotifications with uniqueID: %@, absoluteTimestamp: %@, bundleID: %@, notificationID: %@, title: %@, subtitle: %@, body: %@, threadID: %@, category: %@, isGroupMessage: %@, isTimeSensitive: %@, isCritical: %@, isCommunicationNotification: %@, contentProtection: %@, personaId: %@, attachments: %@, fromHandles: %@, toHandles: %@", v21, v23, v20, v17, v16, v22, v15, v12, v14, v13, v11, v10, v9, v3, v4, v5, v6, v7];

  return v19;
}

- (BMProactiveHarvestingNotifications)initWithUniqueID:(id)a3 absoluteTimestamp:(id)a4 bundleID:(id)a5 notificationID:(id)a6 title:(id)a7 subtitle:(id)a8 body:(id)a9 threadID:(id)a10 category:(id)a11 isGroupMessage:(id)a12 isTimeSensitive:(id)a13 isCritical:(id)a14 isCommunicationNotification:(id)a15 contentProtection:(id)a16 personaId:(id)a17 attachments:(id)a18 fromHandles:(id)a19 toHandles:(id)a20
{
  v49 = a3;
  v25 = a4;
  v48 = a5;
  v34 = a6;
  v47 = a6;
  v46 = a7;
  v35 = a8;
  v45 = a8;
  v44 = a9;
  v43 = a10;
  v42 = a11;
  v26 = a12;
  v27 = a13;
  v28 = v25;
  v50 = a14;
  v29 = a15;
  v41 = a16;
  v40 = a17;
  v39 = a18;
  v38 = a19;
  v37 = a20;
  v51.receiver = self;
  v51.super_class = BMProactiveHarvestingNotifications;
  v30 = [(BMEventBase *)&v51 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_uniqueID, a3);
    if (v28)
    {
      v30->_hasRaw_absoluteTimestamp = 1;
      [v28 timeIntervalSinceReferenceDate];
    }

    else
    {
      v30->_hasRaw_absoluteTimestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_absoluteTimestamp = v31;
    objc_storeStrong(&v30->_bundleID, a5);
    objc_storeStrong(&v30->_notificationID, v34);
    objc_storeStrong(&v30->_title, a7);
    objc_storeStrong(&v30->_subtitle, v35);
    objc_storeStrong(&v30->_body, a9);
    objc_storeStrong(&v30->_threadID, a10);
    objc_storeStrong(&v30->_category, a11);
    if (v26)
    {
      v30->_hasIsGroupMessage = 1;
      v30->_isGroupMessage = [v26 BOOLValue];
    }

    else
    {
      v30->_hasIsGroupMessage = 0;
      v30->_isGroupMessage = 0;
    }

    if (v27)
    {
      v30->_hasIsTimeSensitive = 1;
      v30->_isTimeSensitive = [v27 BOOLValue];
    }

    else
    {
      v30->_hasIsTimeSensitive = 0;
      v30->_isTimeSensitive = 0;
    }

    if (v50)
    {
      v30->_hasIsCritical = 1;
      v30->_isCritical = [v50 BOOLValue];
    }

    else
    {
      v30->_hasIsCritical = 0;
      v30->_isCritical = 0;
    }

    if (v29)
    {
      v30->_hasIsCommunicationNotification = 1;
      v30->_isCommunicationNotification = [v29 BOOLValue];
    }

    else
    {
      v30->_hasIsCommunicationNotification = 0;
      v30->_isCommunicationNotification = 0;
    }

    objc_storeStrong(&v30->_contentProtection, a16);
    objc_storeStrong(&v30->_personaId, a17);
    objc_storeStrong(&v30->_attachments, a18);
    objc_storeStrong(&v30->_fromHandles, a19);
    objc_storeStrong(&v30->_toHandles, a20);
  }

  return v30;
}

+ (id)protoFields
{
  v24[19] = *MEMORY[0x1E69E9840];
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v24[0] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:0];
  v24[1] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v24[2] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationID" number:4 type:13 subMessageClass:0];
  v24[3] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:5 type:13 subMessageClass:0];
  v24[4] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subtitle" number:6 type:13 subMessageClass:0];
  v24[5] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"body" number:7 type:13 subMessageClass:0];
  v24[6] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threadID" number:8 type:13 subMessageClass:0];
  v24[7] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:9 type:13 subMessageClass:0];
  v24[8] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupMessage" number:10 type:12 subMessageClass:0];
  v24[9] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimeSensitive" number:11 type:12 subMessageClass:0];
  v24[10] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCritical" number:12 type:12 subMessageClass:0];
  v24[11] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCommunicationNotification" number:13 type:12 subMessageClass:0];
  v24[12] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:14 type:13 subMessageClass:0];
  v24[13] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:15 type:13 subMessageClass:0];
  v24[14] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachments" number:16 type:14 subMessageClass:objc_opt_class()];
  v24[15] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handles" number:17 type:14 subMessageClass:objc_opt_class()];
  v24[16] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromHandles" number:18 type:14 subMessageClass:objc_opt_class()];
  v24[17] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toHandles" number:19 type:14 subMessageClass:objc_opt_class()];
  v24[18] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:19];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v24[19] = *MEMORY[0x1E69E9840];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notificationID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subtitle" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"body" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threadID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupMessage" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimeSensitive" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCritical" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCommunicationNotification" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attachments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_49547];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"handles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_103_49548];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fromHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_105];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"toHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_107];
  v24[0] = v23;
  v24[1] = v22;
  v24[2] = v21;
  v24[3] = v19;
  v24[4] = v18;
  v24[5] = v17;
  v24[6] = v16;
  v24[7] = v20;
  v24[8] = v15;
  v24[9] = v2;
  v24[10] = v14;
  v24[11] = v3;
  v24[12] = v13;
  v24[13] = v4;
  v24[14] = v5;
  v24[15] = v6;
  v24[16] = v12;
  v24[17] = v7;
  v24[18] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:19];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __45__BMProactiveHarvestingNotifications_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _toHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __45__BMProactiveHarvestingNotifications_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _fromHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __45__BMProactiveHarvestingNotifications_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _attachmentsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMProactiveHarvestingNotifications alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end