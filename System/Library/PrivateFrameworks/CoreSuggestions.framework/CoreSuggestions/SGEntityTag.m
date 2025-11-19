@interface SGEntityTag
+ (id)allExtractedEventTags;
+ (id)allTags;
+ (id)appleMailMessageId:(id)a3 fromSource:(id)a4;
+ (id)author:(id)a3;
+ (id)calendarAppUsageLevel:(float)a3;
+ (id)cascadeEntitySetVersion:(unint64_t)a3;
+ (id)categoryTagWithCategoryType:(int)a3;
+ (id)confidenceScore:(float)a3;
+ (id)containsEntityExtraction:(int64_t)a3;
+ (id)entityTagToEventCategoryMapping;
+ (id)eventCategoryToEntityTagMapping;
+ (id)eventCompleteness:(BOOL)a3;
+ (id)icsAttachmentData:(id)a3;
+ (id)interactionContactIdentifier:(id)a3;
+ (id)isForwardedMail:(BOOL)a3;
+ (id)messageWithMailMessageKey:(id)a3;
+ (id)messageWithMessageId:(id)a3 fromSource:(id)a4;
+ (id)naturalLanguageEventAttributes:(unint64_t)a3;
+ (id)remember:(id)a3;
+ (id)reminderMetadata:(id)a3;
+ (id)reservationContainerReference:(id)a3;
+ (id)reservationContainerReferenceWithData:(id)a3;
+ (id)reservationItemReferences:(id)a3;
+ (id)reservationItemReferencesWithData:(id)a3;
+ (id)resolveName:(id)a3;
+ (id)schemaOrg:(id)a3;
+ (id)tagForLabel:(id)a3 value:(id)a4;
+ (id)url:(id)a3;
+ (id)walletOrderData:(id)a3;
+ (id)walletOrderDictionary:(id)a3;
+ (id)walletPassData:(id)a3;
+ (id)walletPassDictionary:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntityTag:(id)a3;
- (SGEntityTag)initWithLabel:(id)a3 value:(id)a4 stored:(BOOL)a5 indexed:(BOOL)a6 tracked:(BOOL)a7;
- (id)description;
- (id)eventMetadata;
- (id)eventSourceMetadata;
- (id)icsAttachmentData;
- (id)isEventComplete;
- (id)isForwardedMail;
- (id)name;
- (id)reminderMetadata;
- (id)reservationContainerReference;
- (id)reservationItemReferences;
- (id)walletOrderData;
- (id)walletOrderDictionary;
- (id)walletPassData;
- (id)walletPassDictionary;
@end

@implementation SGEntityTag

- (id)name
{
  if (self->_value)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", self->_label, self->_value];
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v4 = self->_label;
  }

  return v4;
}

- (id)walletPassDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SGEntityTag *)self isWalletPassDictionary])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(SGEntityTag *)self value];
    v6 = [v5 dataUsingEncoding:4];
    v14 = 0;
    v7 = [v4 JSONObjectWithData:v6 options:0 error:&v14];
    v8 = v14;

    if (!v7)
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v8;
        _os_log_error_impl(&dword_1BA729000, v9, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating dict for walletDictionary tag, %@", buf, 0x16u);
      }

      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)walletPassData
{
  if ([(SGEntityTag *)self isWalletPassData])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [(SGEntityTag *)self value];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)walletOrderDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SGEntityTag *)self isWalletOrderDictionary])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(SGEntityTag *)self value];
    v6 = [v5 dataUsingEncoding:4];
    v14 = 0;
    v7 = [v4 JSONObjectWithData:v6 options:0 error:&v14];
    v8 = v14;

    if (v8)
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v8;
        _os_log_error_impl(&dword_1BA729000, v9, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating dict for walletDictionary tag, %@", buf, 0x16u);
      }

      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)walletOrderData
{
  if ([(SGEntityTag *)self isWalletOrderData])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [(SGEntityTag *)self value];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)icsAttachmentData
{
  if ([(SGEntityTag *)self isIcsAttachmentData])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [(SGEntityTag *)self value];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)reservationContainerReference
{
  v16 = *MEMORY[0x1E69E9840];
  if (![(SGEntityTag *)self isReservationContainerReference])
  {
    v6 = 0;
    goto LABEL_20;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SGEntityTag *)self value];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
    if (v5)
    {
      v13 = 0;
      v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
      v7 = v13;
      if (v7)
      {
        v8 = sgLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_error_impl(&dword_1BA729000, v8, OS_LOG_TYPE_ERROR, "SGEntityTag Error decoding reservation container reference: %@", buf, 0xCu);
        }
      }

      goto LABEL_18;
    }

    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA729000, v10, OS_LOG_TYPE_FAULT, "serialized reservation container reference value should not be nil", buf, 2u);
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      v6 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_23:
    abort();
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1BA729000, v9, OS_LOG_TYPE_FAULT, "reservation container reference value should not be nil", buf, 2u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_23;
  }

  v6 = 0;
LABEL_19:

  objc_autoreleasePoolPop(v3);
LABEL_20:
  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)reservationItemReferences
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(SGEntityTag *)self isReservationItemReferences])
  {
    v10 = 0;
    goto LABEL_20;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SGEntityTag *)self value];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    if (v5)
    {
      v17 = 0;
      v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v5 error:&v17];
      v11 = v17;
      if (v11)
      {
        v12 = sgLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_error_impl(&dword_1BA729000, v12, OS_LOG_TYPE_ERROR, "SGEntityTag Error decoding reservation item references: %@", buf, 0xCu);
        }
      }

      goto LABEL_18;
    }

    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA729000, v14, OS_LOG_TYPE_FAULT, "serialized reservation item reference value should not be nil", buf, 2u);
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      v10 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_23:
    abort();
  }

  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1BA729000, v13, OS_LOG_TYPE_FAULT, "reservation item reference value should not be nil", buf, 2u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_23;
  }

  v10 = 0;
LABEL_19:

  objc_autoreleasePoolPop(v3);
LABEL_20:
  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)reminderMetadata
{
  if ([(SGEntityTag *)self isReminderMetadata])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(SGEntityTag *)self value];
    v6 = [v5 dataUsingEncoding:4];
    v10 = 0;
    v7 = [v4 JSONObjectWithData:v6 options:0 error:&v10];
    v8 = v10;

    if (v8)
    {

      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)isEventComplete
{
  v3 = &unk_1F3874268;
  if ([(SGEntityTag *)self isEventCompletenessTag]&& [(NSString *)self->_value isEqualToString:@"1"])
  {
    return &unk_1F3874250;
  }

  return v3;
}

- (id)isForwardedMail
{
  v3 = &unk_1F3874268;
  if ([(SGEntityTag *)self isForwardedMailTag]&& [(NSString *)self->_value isEqualToString:@"1"])
  {
    return &unk_1F3874250;
  }

  return v3;
}

- (id)eventSourceMetadata
{
  if ([(SGEntityTag *)self isEventSourceMetadata])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(SGEntityTag *)self value];
    v6 = [v5 dataUsingEncoding:4];
    v10 = 0;
    v7 = [v4 JSONObjectWithData:v6 options:0 error:&v10];
    v8 = v10;

    if (v8)
    {

      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)eventMetadata
{
  if ([(SGEntityTag *)self isEventMetadata])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(SGEntityTag *)self value];
    v6 = [v5 dataUsingEncoding:4];
    v10 = 0;
    v7 = [v4 JSONObjectWithData:v6 options:0 error:&v10];
    v8 = v10;

    if (v8)
    {

      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(SGEntityTag *)self name];
  v6 = [v4 initWithFormat:@"SGEntityTag<%@>", v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (BOOL)isEqualToEntityTag:(id)a3
{
  v4 = a3;
  v5 = self->_label;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_value;
  v10 = v9;
  if (v9 == v4[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEntityTag *)self isEqualToEntityTag:v5];
  }

  return v6;
}

- (SGEntityTag)initWithLabel:(id)a3 value:(id)a4 stored:(BOOL)a5 indexed:(BOOL)a6 tracked:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGEntityTag.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"label"}];
  }

  if ([v13 containsString:@":"])
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGEntityTag.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"![label containsString:@:]"}];
  }

  v23.receiver = self;
  v23.super_class = SGEntityTag;
  v15 = [(SGEntityTag *)&v23 init];
  if (v15)
  {
    v16 = [v13 copy];
    label = v15->_label;
    v15->_label = v16;

    v18 = [v14 copy];
    value = v15->_value;
    v15->_value = v18;

    v15->_stored = a5;
    v15->_indexed = a6;
    v15->_tracked = a7;
  }

  return v15;
}

+ (id)walletPassDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    goto LABEL_9;
  }

  v5 = objc_autoreleasePoolPush();
  if (([MEMORY[0x1E696ACB0] isValidJSONObject:v4] & 1) == 0)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138739971;
      v21 = v4;
      _os_log_error_impl(&dword_1BA729000, v10, OS_LOG_TYPE_ERROR, "Cannot serialize pass dictionary: %{sensitive}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_15;
  }

  v19 = 0;
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v19];
  v7 = v19;
  if (v7)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412546;
      v21 = v18;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_1BA729000, v8, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating tag for walletPassDictionary, %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:

    objc_autoreleasePoolPop(v5);
LABEL_9:
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412290;
      v21 = v16;
      _os_log_debug_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEBUG, "%@: Couldnt create a entity tag from walletPassDictionary", buf, 0xCu);
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  v11 = [SGEntityTag tagForLabel:@"WPDD" value:v14];

  objc_autoreleasePoolPop(v5);
LABEL_16:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)walletPassData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 base64EncodedStringWithOptions:0];
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      v7 = [SGEntityTag tagForLabel:@"WPD" value:v6];

      objc_autoreleasePoolPop(v4);
      goto LABEL_8;
    }

    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_1BA729000, v8, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating tag for walletPassData", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v7 = 0;
LABEL_8:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)walletOrderDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_autoreleasePoolPush();
    v14 = 0;
    v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      v9 = [SGEntityTag tagForLabel:@"WODD" value:v8];
    }

    else
    {
      v6 = sgLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&dword_1BA729000, v6, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating tag for walletOrderDictionary, %@", buf, 0x16u);
      }

      v9 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)walletOrderData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 base64EncodedStringWithOptions:0];
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      v7 = [SGEntityTag tagForLabel:@"WOD" value:v6];

      objc_autoreleasePoolPop(v4);
      goto LABEL_8;
    }

    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_1BA729000, v8, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating tag for walletOrderData", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v7 = 0;
LABEL_8:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)icsAttachmentData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 base64EncodedStringWithOptions:0];
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      v7 = [SGEntityTag tagForLabel:@"ICSD" value:v6];

      objc_autoreleasePoolPop(v4);
      goto LABEL_8;
    }

    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_1BA729000, v8, OS_LOG_TYPE_ERROR, "%@: Error encountered while creating tag for ics attachment data", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v7 = 0;
LABEL_8:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)reminderMetadata:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_autoreleasePoolPush();
    v11 = 0;
    v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v11];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      v9 = [SGEntityTag tagForLabel:@"REM" value:v8];
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)author:(id)a3
{
  v7 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:1 error:&v7];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    v5 = [SGEntityTag tagForLabel:@"ATHR" value:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)eventCompleteness:(BOOL)a3
{
  if (a3)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  v4 = [SGEntityTag tagForLabel:@"EVNTC" value:v3];

  return v4;
}

+ (id)isForwardedMail:(BOOL)a3
{
  if (a3)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  v4 = [SGEntityTag tagForLabel:@"FWDM" value:v3];

  return v4;
}

+ (id)allTags
{
  v2 = [extractedEventCategoryTags copy];

  return v2;
}

+ (id)messageWithMailMessageKey:(id)a3
{
  v4 = a3;
  v5 = [v4 messageId];
  v6 = [v4 source];

  v7 = [a1 messageWithMessageId:v5 fromSource:v6];

  return v7;
}

+ (id)appleMailMessageId:(id)a3 fromSource:(id)a4
{
  v8 = SGDelimitedStringsSerialize(a4, a2, a3, a4, v4, v5, v6, v7, a3);
  v9 = [SGEntityTag tagForLabel:@"AMSG" value:v8];

  return v9;
}

+ (id)messageWithMessageId:(id)a3 fromSource:(id)a4
{
  v8 = SGDelimitedStringsSerialize(a4, a2, a3, a4, v4, v5, v6, v7, a3);
  v9 = [SGEntityTag tagForLabel:@"MSG" value:v8];

  return v9;
}

+ (id)containsEntityExtraction:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", a3];
  v4 = [SGEntityTag tagForLabel:@"ET" value:v3];

  return v4;
}

+ (id)interactionContactIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"SGEntityTag.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"contactIdentifier"}];
  }

  v6 = [SGEntityTag tagForLabel:@"ICN" value:v5];

  return v6;
}

+ (id)url:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [SGEntityTag tagForLabel:@"U" value:v3];

  return v4;
}

+ (id)tagForLabel:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SGEntityTag.m" lineNumber:736 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"SGEntityTag.m" lineNumber:737 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v10 = [optionsByLabel objectForKeyedSubscript:v7];
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"SGEntityTag.m" lineNumber:739 description:{@"Invalid parameter not satisfying: %@", @"opts"}];
  }

  v11 = [[SGEntityTag alloc] initWithLabel:v7 value:v9 stored:v10[8] indexed:v10[9] tracked:v10[10]];

  return v11;
}

+ (id)reservationItemReferences:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
  v6 = v9;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v7 = [SGEntityTag reservationItemReferencesWithData:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)reservationItemReferencesWithData:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 base64EncodedStringWithOptions:0];
  objc_autoreleasePoolPop(v4);
  v6 = [SGEntityTag tagForLabel:@"IRIR" value:v5];

  return v6;
}

+ (id)reservationContainerReference:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
  v6 = v9;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v7 = [SGEntityTag reservationContainerReferenceWithData:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)reservationContainerReferenceWithData:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 base64EncodedStringWithOptions:0];
  objc_autoreleasePoolPop(v4);
  v6 = [SGEntityTag tagForLabel:@"IRCR" value:v5];

  return v6;
}

+ (id)schemaOrg:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_autoreleasePoolPush();
    v11 = 0;
    v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v11];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      v9 = [SGEntityTag tagForLabel:@"SO" value:v8];
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)cascadeEntitySetVersion:(unint64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%iu", a3];
  v4 = [SGEntityTag tagForLabel:@"CESV" value:v3];

  return v4;
}

+ (id)calendarAppUsageLevel:(float)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f", a3];
  v4 = [SGEntityTag tagForLabel:@"CAUL" value:v3];

  return v4;
}

+ (id)confidenceScore:(float)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f", a3];
  v4 = [SGEntityTag tagForLabel:@"NLCS" value:v3];

  return v4;
}

+ (id)naturalLanguageEventAttributes:(unint64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", a3];
  v4 = [SGEntityTag tagForLabel:@"NLEA" value:v3];

  return v4;
}

+ (id)allExtractedEventTags
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 eventCategoryToEntityTagMapping];
  v5 = [v4 allValues];

  objc_autoreleasePoolPop(v3);

  return v5;
}

+ (id)entityTagToEventCategoryMapping
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 eventCategoryToEntityTagMapping];
  v5 = [v4 allKeys];
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__SGEntityTag_entityTagToEventCategoryMapping__block_invoke;
  v11[3] = &unk_1E7EFAC30;
  v12 = v4;
  v7 = v4;
  v8 = [v5 _pas_mappedArrayWithTransform:v11];
  v9 = [v6 initWithObjects:v5 forKeys:v8];

  objc_autoreleasePoolPop(v3);

  return v9;
}

+ (id)eventCategoryToEntityTagMapping
{
  v3 = objc_opt_new();
  v4 = 1;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [a1 categoryTagWithCategoryType:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 label];
      if ([v8 rangeOfString:@"^ex[A-Z][a-zA-Z]*$" options:1026] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:a1 file:@"SGEntityTag.m" lineNumber:398 description:{@"expected exSomething, got %@ for tag %@", v8, v7}];
      }

      v9 = [v7 label];
      v10 = [v9 substringFromIndex:{objc_msgSend(@"ex", "length")}];

      [v3 setObject:v7 forKeyedSubscript:v10];
    }

    objc_autoreleasePoolPop(v5);
    v4 = (v4 + 1);
  }

  while (v4 != 12);

  return v3;
}

+ (id)categoryTagWithCategoryType:(int)a3
{
  v3 = 0;
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v3 = +[SGEntityTag extractedFlight];
      }

      else if (a3 == 2)
      {
        v3 = +[SGEntityTag extractedBus];
      }
    }

    else
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          +[SGEntityTag extractedHotel];
        }

        else
        {
          +[SGEntityTag extractedCarRental];
        }

        goto LABEL_6;
      }

      v3 = +[SGEntityTag extractedTrain];
    }
  }

  else if (a3 > 8)
  {
    switch(a3)
    {
      case 9:
        v3 = +[SGEntityTag extractedSocial];
        break;
      case 10:
        v3 = +[SGEntityTag extractedBoat];
        break;
      case 11:
        v3 = +[SGEntityTag extractedAppointment];
        break;
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        +[SGEntityTag extractedMovie];
      }

      else
      {
        +[SGEntityTag extractedFood];
      }

      v3 = LABEL_6:;
      goto LABEL_25;
    }

    v3 = +[SGEntityTag extractedTicket];
  }

LABEL_25:

  return v3;
}

+ (id)resolveName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = memchr(CStringPtr, 58, [(__CFString *)v3 length]);
    if (!v6)
    {

      goto LABEL_12;
    }

    v7 = CFStringCreateWithBytesNoCopy(0, v5, v6 - v5, 0x600u, 0, *MEMORY[0x1E695E498]);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(__CFString *)v3 rangeOfString:@":" options:2];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(__CFString *)v3 substringToIndex:v9];
    }

    objc_autoreleasePoolPop(v8);
  }

  if (!v7)
  {
LABEL_12:
    v13 = [byLabel objectForKeyedSubscript:v3];
    if (v13)
    {
      goto LABEL_27;
    }

    if ([tombstonedLabels containsObject:0])
    {
      goto LABEL_17;
    }

    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_fault_impl(&dword_1BA729000, v14, OS_LOG_TYPE_FAULT, "Unable to resolve tag name: %@", &v20, 0xCu);
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
LABEL_17:
      v13 = 0;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v10 = [byLabel objectForKeyedSubscript:v7];
  if (v10)
  {
    v11 = [SGEntityTag alloc];
    v12 = [v10 label];
    goto LABEL_20;
  }

  if ([tombstonedLabels containsObject:v7])
  {
    v11 = [SGEntityTag alloc];
    v12 = v7;
LABEL_20:
    v15 = objc_autoreleasePoolPush();
    v16 = [(__CFString *)v3 substringFromIndex:[(__CFString *)v7 length]+ 1];
    objc_autoreleasePoolPop(v15);
    v13 = -[SGEntityTag initWithLabel:value:stored:indexed:tracked:](v11, "initWithLabel:value:stored:indexed:tracked:", v12, v16, [v10 stored], objc_msgSend(v10, "indexed"), objc_msgSend(v10, "tracked"));

    if (v10)
    {
    }

    goto LABEL_26;
  }

  v17 = sgLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_fault_impl(&dword_1BA729000, v17, OS_LOG_TYPE_FAULT, "Unable to resolve tag label: %@", &v20, 0xCu);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
LABEL_30:
    abort();
  }

  v13 = 0;
LABEL_26:

LABEL_27:
  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = objc_opt_new();
    v4 = yyyymmdd;
    yyyymmdd = v3;

    [yyyymmdd setDateFormat:@"yyyyMMdd"];
    v5 = objc_opt_new();
    v6 = byLabel;
    byLabel = v5;

    v7 = [[SGEntityTag alloc] initWithLabel:@"ex" stored:1 indexed:0 tracked:0];
    v8 = [a1 remember:v7];
    v9 = extracted;
    extracted = v8;

    v10 = [[SGEntityTag alloc] initWithLabel:@"cancel" stored:1 indexed:0 tracked:0];
    v11 = [a1 remember:v10];
    v12 = cancelled;
    cancelled = v11;

    v13 = [[SGEntityTag alloc] initWithLabel:@"fromEx" stored:1 indexed:0 tracked:0];
    v14 = [a1 remember:v13];
    v15 = fromExtractedDomain;
    fromExtractedDomain = v14;

    v16 = [[SGEntityTag alloc] initWithLabel:@"allDay" stored:1 indexed:0 tracked:0];
    v17 = [a1 remember:v16];
    v18 = allDay;
    allDay = v17;

    v19 = [[SGEntityTag alloc] initWithLabel:@"inhuman" stored:1 indexed:1 tracked:0];
    v20 = [a1 remember:v19];
    v21 = inhuman;
    inhuman = v20;

    v22 = [[SGEntityTag alloc] initWithLabel:@"human" stored:1 indexed:0 tracked:0];
    v23 = [a1 remember:v22];
    v24 = human;
    human = v23;

    v25 = [[SGEntityTag alloc] initWithLabel:@"defaultDuration" stored:1 indexed:0 tracked:0];
    v26 = [a1 remember:v25];
    v27 = defaultDuration;
    defaultDuration = v26;

    v28 = [[SGEntityTag alloc] initWithLabel:@"fwd" stored:1 indexed:0 tracked:0];
    v29 = [a1 remember:v28];
    v30 = fromForwardedMessage;
    fromForwardedMessage = v29;

    v31 = [[SGEntityTag alloc] initWithLabel:@"re" stored:1 indexed:0 tracked:0];
    v32 = [a1 remember:v31];
    v33 = fromReply;
    fromReply = v32;

    v34 = [[SGEntityTag alloc] initWithLabel:@"nl" stored:1 indexed:0 tracked:1];
    v35 = [a1 remember:v34];
    v36 = naturalLanguageEvent;
    naturalLanguageEvent = v35;

    v37 = [[SGEntityTag alloc] initWithLabel:@"ics" stored:1 indexed:0 tracked:1];
    v38 = [a1 remember:v37];
    v39 = fromCalendarAttachment;
    fromCalendarAttachment = v38;

    v40 = [[SGEntityTag alloc] initWithLabel:@"partial" stored:1 indexed:0 tracked:0];
    v41 = [a1 remember:v40];
    v42 = isPartiallyDownloaded;
    isPartiallyDownloaded = v41;

    v43 = [[SGEntityTag alloc] initWithLabel:@"exFlight" stored:1 indexed:0 tracked:1];
    v44 = [a1 remember:v43];
    v45 = extractedFlight;
    extractedFlight = v44;

    v46 = [[SGEntityTag alloc] initWithLabel:@"exBus" stored:1 indexed:0 tracked:1];
    v47 = [a1 remember:v46];
    v48 = extractedBus;
    extractedBus = v47;

    v49 = [[SGEntityTag alloc] initWithLabel:@"exTrain" stored:1 indexed:0 tracked:1];
    v50 = [a1 remember:v49];
    v51 = extractedTrain;
    extractedTrain = v50;

    v52 = [[SGEntityTag alloc] initWithLabel:@"exBoat" stored:1 indexed:0 tracked:1];
    v53 = [a1 remember:v52];
    v54 = extractedBoat;
    extractedBoat = v53;

    v55 = [[SGEntityTag alloc] initWithLabel:@"exHotel" stored:1 indexed:0 tracked:1];
    v56 = [a1 remember:v55];
    v57 = extractedHotel;
    extractedHotel = v56;

    v58 = [[SGEntityTag alloc] initWithLabel:@"exCarRental" stored:1 indexed:0 tracked:1];
    v59 = [a1 remember:v58];
    v60 = extractedCarRental;
    extractedCarRental = v59;

    v61 = [[SGEntityTag alloc] initWithLabel:@"exTicket" stored:1 indexed:0 tracked:1];
    v62 = [a1 remember:v61];
    v63 = extractedTicket;
    extractedTicket = v62;

    v64 = [[SGEntityTag alloc] initWithLabel:@"exMovie" stored:1 indexed:0 tracked:1];
    v65 = [a1 remember:v64];
    v66 = extractedMovie;
    extractedMovie = v65;

    v67 = [[SGEntityTag alloc] initWithLabel:@"exFood" stored:1 indexed:0 tracked:1];
    v68 = [a1 remember:v67];
    v69 = extractedFood;
    extractedFood = v68;

    v70 = [[SGEntityTag alloc] initWithLabel:@"exSocial" stored:1 indexed:0 tracked:1];
    v71 = [a1 remember:v70];
    v72 = extractedSocial;
    extractedSocial = v71;

    v73 = [[SGEntityTag alloc] initWithLabel:@"exAppointment" stored:1 indexed:0 tracked:1];
    v74 = [a1 remember:v73];
    v75 = extractedAppointment;
    extractedAppointment = v74;

    v76 = objc_autoreleasePoolPush();
    v77 = objc_alloc(MEMORY[0x1E695DFD8]);
    v78 = [v77 initWithObjects:{extractedFlight, extractedBus, extractedTrain, extractedBoat, extractedHotel, extractedCarRental, extractedTicket, extractedMovie, extractedFood, extractedSocial, extractedAppointment, 0}];
    objc_autoreleasePoolPop(v76);
    v79 = extractedEventCategoryTags;
    extractedEventCategoryTags = v78;

    v80 = [[SGEntityTag alloc] initWithLabel:@"hardName" stored:1 indexed:0 tracked:0];
    v81 = [a1 remember:v80];
    v82 = hardName;
    hardName = v81;

    v83 = [[SGEntityTag alloc] initWithLabel:@"fullyDissected" stored:1 indexed:0 tracked:0];
    v84 = [a1 remember:v83];
    v85 = fullyDissected;
    fullyDissected = v84;

    v86 = [[SGEntityTag alloc] initWithLabel:@"fromInteraction" stored:1 indexed:0 tracked:0];
    v87 = [a1 remember:v86];
    v88 = fromInteraction;
    fromInteraction = v87;

    v89 = [[SGEntityTag alloc] initWithLabel:@"fromTextMessage" stored:1 indexed:0 tracked:0];
    v90 = [a1 remember:v89];
    v91 = fromTextMessage;
    fromTextMessage = v90;

    v92 = [[SGEntityTag alloc] initWithLabel:@"fromSync" stored:1 indexed:1 tracked:0];
    v93 = [a1 remember:v92];
    v94 = fromSync;
    fromSync = v93;

    v95 = [[SGEntityTag alloc] initWithLabel:@"isSent" stored:1 indexed:0 tracked:0];
    v96 = [a1 remember:v95];
    v97 = isSent;
    isSent = v96;

    v98 = [[SGEntityTag alloc] initWithLabel:@"significantSender" stored:1 indexed:0 tracked:0];
    v99 = [a1 remember:v98];
    v100 = significantSender;
    significantSender = v99;

    v101 = [[SGEntityTag alloc] initWithLabel:@"titleGeneratedFromTemplate" stored:1 indexed:0 tracked:0];
    v102 = [a1 remember:v101];
    v103 = titleGeneratedFromTemplate;
    titleGeneratedFromTemplate = v102;

    v104 = [[SGEntityTag alloc] initWithLabel:@"titleGeneratedFromSubject" stored:1 indexed:0 tracked:0];
    v105 = [a1 remember:v104];
    v106 = titleGeneratedFromSubject;
    titleGeneratedFromSubject = v105;

    v107 = [[SGEntityTag alloc] initWithLabel:@"templateException" stored:1 indexed:0 tracked:0];
    v108 = [a1 remember:v107];
    v109 = templateException;
    templateException = v108;

    v110 = [[SGEntityTag alloc] initWithLabel:@"geocodingModeAddressOnly" stored:1 indexed:0 tracked:0];
    v111 = [a1 remember:v110];
    v112 = geocodingModeAddressOnly;
    geocodingModeAddressOnly = v111;

    v113 = [[SGEntityTag alloc] initWithLabel:@"geocodingModePOIOnly" stored:1 indexed:0 tracked:0];
    v114 = [a1 remember:v113];
    v115 = geocodingModePOIOnly;
    geocodingModePOIOnly = v114;

    v116 = [[SGEntityTag alloc] initWithLabel:@"geocodingModeAddressThenPOI" stored:1 indexed:0 tracked:0];
    v117 = [a1 remember:v116];
    v118 = geocodingModeAddressThenPOI;
    geocodingModeAddressThenPOI = v117;

    v119 = [[SGEntityTag alloc] initWithLabel:@"geocodingModeAddressWithCanonicalSearch" stored:1 indexed:0 tracked:0];
    v120 = [a1 remember:v119];
    v121 = geocodingModeAddressWithCanonicalSearch;
    geocodingModeAddressWithCanonicalSearch = v120;

    v122 = objc_autoreleasePoolPush();
    v123 = objc_alloc(MEMORY[0x1E695DFD8]);
    v124 = [v123 initWithObjects:{geocodingModeAddressOnly, geocodingModePOIOnly, geocodingModeAddressThenPOI, geocodingModeAddressWithCanonicalSearch, 0}];
    objc_autoreleasePoolPop(v122);
    v125 = geocodingModeTags;
    geocodingModeTags = v124;

    v126 = [[SGEntityTag alloc] initWithLabel:@"requiresDeferredDissection" stored:1 indexed:0 tracked:0];
    v127 = [a1 remember:v126];
    v128 = requiresDeferredDissection;
    requiresDeferredDissection = v127;

    v129 = [[SGEntityTag alloc] initWithLabel:@"eventExtractedFromOldDocument" stored:1 indexed:0 tracked:0];
    v130 = [a1 remember:v129];
    v131 = eventExtractedFromOldDocument;
    eventExtractedFromOldDocument = v130;

    v132 = [[SGEntityTag alloc] initWithLabel:@"eventExtractedFromLLM" stored:1 indexed:0 tracked:0];
    v133 = [a1 remember:v132];
    v134 = eventExtractedFromLLM;
    eventExtractedFromLLM = v133;

    v135 = [[SGEntityTag alloc] initWithLabel:@"eventWithOnlyNonAccountPrimaryRecipients" stored:1 indexed:0 tracked:0];
    v136 = [a1 remember:v135];
    v137 = eventWithOnlyNonAccountPrimaryRecipients;
    eventWithOnlyNonAccountPrimaryRecipients = v136;

    v138 = objc_opt_new();
    v139 = optionsByLabel;
    optionsByLabel = v138;

    [a1 rememberLabel:@"U" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"CD" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"ID" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"EX" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"MSG" stored:0 indexed:1 tracked:0];
    [a1 rememberLabel:@"AMSG" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"MBOX" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"ICST" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"TZID" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"ET" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"TMPL" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"TMPN" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"RMF" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"EHSH" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"L" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"ICN" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"IUID" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"IGID" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"IBID" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"ITID" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"NLET" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"NLLI" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"NLEA" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"NLCS" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"NLPC" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"NLBC" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"SO" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"EM" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"DOM" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"CAUL" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"MAUL" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"MEUL" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"CESV" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"REM" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"RHSH" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"IRCR" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"IRIR" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"POIF" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"IRUA" stored:1 indexed:0 tracked:0];
    [a1 rememberLabel:@"EKEA" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"ICSM" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"ICSD" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"WOD" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"WODD" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"WPD" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"WPDD" stored:1 indexed:1 tracked:0];
    [a1 rememberLabel:@"ESM" stored:0 indexed:0 tracked:0];
    [a1 rememberLabel:@"FWDM" stored:0 indexed:0 tracked:0];
    [a1 rememberLabel:@"EVNTC" stored:1 indexed:1 tracked:1];
    [a1 rememberLabel:@"ATHR" stored:0 indexed:0 tracked:0];
    v140 = objc_opt_new();
    v141 = tombstonedLabels;
    tombstonedLabels = v140;

    [a1 tombstoneLabel:@"HHSH"];
    [a1 tombstoneLabel:@"INTE"];
    [a1 tombstoneLabel:@"nonUserFacingUpdate"];

    [a1 tombstoneLabel:@"FBU"];
  }
}

+ (id)remember:(id)a3
{
  v3 = a3;
  v4 = byLabel;
  v5 = [v3 label];
  [v4 setObject:v3 forKeyedSubscript:v5];

  return v3;
}

@end