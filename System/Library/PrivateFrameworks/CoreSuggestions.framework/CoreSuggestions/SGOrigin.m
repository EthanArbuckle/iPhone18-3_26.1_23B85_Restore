@interface SGOrigin
+ (id)originForMailSearchableItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrigin:(id)a3;
- (NSString)contextSnippet;
- (NSURL)url;
- (SGOrigin)init;
- (SGOrigin)initWithCoder:(id)a3;
- (SGOrigin)initWithType:(unint64_t)a3 sourceKey:(id)a4 externalKey:(id)a5 bundleId:(id)a6 fromForwardedMessage:(BOOL)a7;
- (_NSRange)contextSnippetRange;
- (id)universalURL;
- (unint64_t)hash;
- (void)_resolveAppName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGOrigin

- (id)universalURL
{
  type = self->_type;
  if (type == 4)
  {
    v4 = [SGEKEventConversions urlForEKEventFromTextMessageWithUniqueIdentifier:self->_externalKey];
  }

  else if (type == 1)
  {
    v4 = [SGEKEventConversions urlForMailMessageWithId:self->_externalKey];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SGOrigin.m" lineNumber:287 description:{@"Unknown origin type: %lu", self->_type}];

    v4 = 0;
  }

  return v4;
}

- (_NSRange)contextSnippetRange
{
  if (self->_shouldShowOperatingSystemVersion)
  {
    v3 = [(SGOrigin *)self contextSnippet];
    v4 = [v3 length];
    v5 = v4 - [(NSString *)self->_contextSnippet length];

    location = v5 + self->_contextSnippetRange.location;
  }

  else
  {
    location = self->_contextSnippetRange.location;
  }

  length = self->_contextSnippetRange.length;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)contextSnippet
{
  if (self->_shouldShowOperatingSystemVersion)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    if ([(NSString *)self->_operatingSystemVersion length])
    {
      operatingSystemVersion = self->_operatingSystemVersion;
    }

    else
    {
      operatingSystemVersion = @"Unknown OS";
    }

    v5 = [v3 initWithFormat:@"[%@]%@", operatingSystemVersion, self->_contextSnippet];
  }

  else
  {
    v5 = self->_contextSnippet;
  }

  return v5;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSString *)self->_sourceKey hash]- type + 32 * type;
  return [(NSString *)self->_externalKey hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToOrigin:(id)a3
{
  v4 = a3;
  if (self->_type != v4[1])
  {
    goto LABEL_59;
  }

  v5 = self->_sourceKey;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v8 = self->_externalKey;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v11 = self->_contextSnippet;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v14 = 0;
  if (self->_contextSnippetRange.location == v4[5] && self->_contextSnippetRange.length == v4[6])
  {
    v15 = self->_fromPerson;
    v16 = v15;
    if (v15 == v4[7])
    {
    }

    else
    {
      v17 = [(CSPerson *)v15 isEqual:?];

      if ((v17 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v18 = self->_toPeople;
    v19 = v18;
    if (v18 == v4[8])
    {
    }

    else
    {
      v20 = [(NSArray *)v18 isEqual:?];

      if ((v20 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v21 = self->_bundleId;
    v22 = v21;
    if (v21 == v4[9])
    {
    }

    else
    {
      v23 = [(NSString *)v21 isEqual:?];

      if ((v23 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v24 = self->_localizedApplicationName;
    v25 = v24;
    if (v24 == v4[17])
    {
    }

    else
    {
      v26 = [(NSString *)v24 isEqual:?];

      if ((v26 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v27 = self->_teamId;
    v28 = v27;
    if (v27 == v4[18])
    {
    }

    else
    {
      v29 = [(NSString *)v27 isEqual:?];

      if ((v29 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v30 = self->_to;
    v31 = v30;
    if (v30 == v4[10])
    {
    }

    else
    {
      v32 = [(NSArray *)v30 isEqual:?];

      if ((v32 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v33 = self->_cc;
    v34 = v33;
    if (v33 == v4[11])
    {
    }

    else
    {
      v35 = [(NSArray *)v33 isEqual:?];

      if ((v35 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v36 = self->_bcc;
    v37 = v36;
    if (v36 == v4[12])
    {
    }

    else
    {
      v38 = [(NSArray *)v36 isEqual:?];

      if ((v38 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v39 = self->_date;
    v40 = v39;
    if (v39 == v4[13])
    {
    }

    else
    {
      v41 = [(NSDate *)v39 isEqual:?];

      if ((v41 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v42 = self->_title;
    v43 = v42;
    if (v42 == v4[14])
    {
    }

    else
    {
      v44 = [(NSString *)v42 isEqual:?];

      if ((v44 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (self->_fromForwardedMessage == *(v4 + 130))
    {
      v45 = self->_operatingSystemVersion;
      v46 = v45;
      if (v45 == v4[15])
      {
      }

      else
      {
        v47 = [(NSString *)v45 isEqual:?];

        if ((v47 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      v14 = self->_isSent == *(v4 + 128);
      goto LABEL_60;
    }

LABEL_59:
    v14 = 0;
  }

LABEL_60:

  return v14;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGOrigin *)self isEqualToOrigin:v5];
  }

  return v6;
}

- (NSURL)url
{
  type = self->_type;
  if (type > 7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGOrigin.m" lineNumber:191 description:{@"Unknown origin type: %lu", self->_type}];
    v4 = 0;
  }

  else
  {
    if (((1 << type) & 0xED) != 0)
    {
      v4 = 0;
      goto LABEL_10;
    }

    v5 = MEMORY[0x1E695DFF8];
    if (type == 1)
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      externalKey = self->_externalKey;
      v8 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [(NSString *)externalKey stringByAddingPercentEncodingWithAllowedCharacters:v8];
      v10 = [v6 initWithFormat:@"message:%@", v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = self->_externalKey;
      v8 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [(NSString *)v12 stringByAddingPercentEncodingWithAllowedCharacters:v8];
      v10 = [v11 initWithFormat:@"messages:openchat?guid=%@", v9];
    }

    v13 = v10;
    v4 = [v5 URLWithString:v10];
  }

LABEL_10:

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"type"];
  [v5 encodeObject:self->_sourceKey forKey:@"sourceKey"];
  [v5 encodeObject:self->_externalKey forKey:@"externalKey"];
  [v5 encodeObject:self->_contextSnippet forKey:@"contextSnippet"];
  [v5 encodeInteger:self->_contextSnippetRange.location forKey:@"contextSnippetRange_location"];
  [v5 encodeInteger:self->_contextSnippetRange.length forKey:@"contextSnippetRange_length"];
  [v5 encodeObject:self->_fromPerson forKey:@"fromPerson"];
  [v5 encodeObject:self->_toPeople forKey:@"toPeople"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_localizedApplicationName forKey:@"localizedApplicationName"];
  [v5 encodeObject:self->_teamId forKey:@"teamId"];
  [v5 encodeObject:self->_to forKey:@"to"];
  [v5 encodeObject:self->_cc forKey:@"cc"];
  [v5 encodeObject:self->_bcc forKey:@"bcc"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeBool:self->_fromForwardedMessage forKey:@"fromForwardedMessage"];
  [v5 encodeObject:self->_operatingSystemVersion forKey:@"operatingSystemVersion"];
  [v5 encodeBool:self->_shouldShowOperatingSystemVersion forKey:@"shouldShowOperatingSystemVersion"];
  [v5 encodeBool:self->_isSent forKey:@"isSent"];
}

- (SGOrigin)initWithCoder:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = SGOrigin;
  v5 = [(SGOrigin *)&v59 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"type"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sourceKey"];
    sourceKey = v5->_sourceKey;
    v5->_sourceKey = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"externalKey"];
    externalKey = v5->_externalKey;
    v5->_externalKey = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"contextSnippet"];
    contextSnippet = v5->_contextSnippet;
    v5->_contextSnippet = v13;

    v15 = [v4 decodeIntegerForKey:@"contextSnippetRange_location"];
    v16 = [v4 decodeIntegerForKey:@"contextSnippetRange_length"];
    v5->_contextSnippetRange.location = v15;
    v5->_contextSnippetRange.length = v16;
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"fromPerson"];
    fromPerson = v5->_fromPerson;
    v5->_fromPerson = v18;

    v20 = objc_alloc(MEMORY[0x1E695DFD8]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"toPeople"];
    toPeople = v5->_toPeople;
    v5->_toPeople = v23;

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v26;

    v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"localizedApplicationName"];
    localizedApplicationName = v5->_localizedApplicationName;
    v5->_localizedApplicationName = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"teamId"];
    teamId = v5->_teamId;
    v5->_teamId = v32;

    v34 = objc_alloc(MEMORY[0x1E695DFD8]);
    v35 = objc_opt_class();
    v36 = [v34 initWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"to"];
    to = v5->_to;
    v5->_to = v37;

    v39 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40 = objc_opt_class();
    v41 = [v39 initWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"cc"];
    cc = v5->_cc;
    v5->_cc = v42;

    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v45 = objc_opt_class();
    v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"bcc"];
    bcc = v5->_bcc;
    v5->_bcc = v47;

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"date"];
    date = v5->_date;
    v5->_date = v50;

    v52 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"title"];
    title = v5->_title;
    v5->_title = v53;

    v5->_fromForwardedMessage = [v4 decodeBoolForKey:@"fromForwardedMessage"];
    v55 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"operatingSystemVersion"];
    operatingSystemVersion = v5->_operatingSystemVersion;
    v5->_operatingSystemVersion = v56;

    v5->_shouldShowOperatingSystemVersion = [v4 decodeBoolForKey:@"shouldShowOperatingSystemVersion"];
    v5->_isSent = [v4 decodeBoolForKey:@"isSent"];
  }

  return v5;
}

- (void)_resolveAppName
{
  if (_resolveAppName__pasOnceToken2 != -1)
  {
    dispatch_once(&_resolveAppName__pasOnceToken2, &__block_literal_global_5057);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__SGOrigin__resolveAppName__block_invoke_2;
  v4[3] = &unk_1E7EFC848;
  v4[4] = self;
  v3 = _resolveAppName__pasExprOnceResult;
  [v3 runWithLockAcquired:v4];
}

void __27__SGOrigin__resolveAppName__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(*(a1 + 32) + 72)];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(*(a1 + 32) + 72);
    v20 = 0;
    v7 = [MEMORY[0x1E69635F8] bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:&v20];
    v8 = v20;
    if (v7)
    {
      if ([v3 count] >= 5)
      {
        [v3 removeAllObjects];
      }

      v9 = objc_alloc(MEMORY[0x1E69C5D98]);
      v10 = [v7 localizedName];
      v11 = [v7 teamIdentifier];
      v4 = [v9 initWithFirst:v10 second:v11];

      [v3 setObject:v4 forKeyedSubscript:*(*(a1 + 32) + 72)];
    }

    else
    {
      v12 = sgLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_1BA729000, v12, OS_LOG_TYPE_DEFAULT, "SGOrigin: no bundle record found %@", buf, 0xCu);
      }

      v4 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  v13 = [v4 first];
  v14 = *(a1 + 32);
  v15 = *(v14 + 136);
  *(v14 + 136) = v13;

  v16 = [v4 second];
  v17 = *(a1 + 32);
  v18 = *(v17 + 144);
  *(v17 + 144) = v16;

  v19 = *MEMORY[0x1E69E9840];
}

void __27__SGOrigin__resolveAppName__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E69C5D60]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = _resolveAppName__pasExprOnceResult;
  _resolveAppName__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

- (SGOrigin)initWithType:(unint64_t)a3 sourceKey:(id)a4 externalKey:(id)a5 bundleId:(id)a6 fromForwardedMessage:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(SGOrigin *)self init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_17;
  }

  v15->_type = a3;
  v17 = [v12 copy];
  sourceKey = v16->_sourceKey;
  v16->_sourceKey = v17;

  v19 = [v13 copy];
  externalKey = v16->_externalKey;
  v16->_externalKey = v19;

  v16->_fromForwardedMessage = a7;
  if (!v14)
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v21 = v16->_sourceKey;
        goto LABEL_4;
      }

      if (a3 != 7)
      {
        goto LABEL_15;
      }

      v23 = @"com.apple.mobilesafari";
    }

    else if (a3 == 1)
    {
      v23 = @"com.apple.mobilemail";
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_15;
      }

      v23 = @"com.apple.MobileSMS";
    }

    v24 = v23;
    bundleId = v16->_bundleId;
    v16->_bundleId = &v23->isa;
    goto LABEL_14;
  }

  v21 = [v14 copy];
LABEL_4:
  bundleId = v16->_bundleId;
  v16->_bundleId = v21;
LABEL_14:

LABEL_15:
  if (v16->_bundleId)
  {
    [(SGOrigin *)v16 _resolveAppName];
  }

LABEL_17:

  return v16;
}

- (SGOrigin)init
{
  v3.receiver = self;
  v3.super_class = SGOrigin;
  result = [(SGOrigin *)&v3 init];
  if (result)
  {
    result->_contextSnippetRange = xmmword_1BA7C0DC0;
  }

  return result;
}

+ (id)originForMailSearchableItem:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 attributeSet];
  v5 = [v4 emailHeaders];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if (![@"message-id" caseInsensitiveCompare:v10])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = [v3 attributeSet];
    v12 = [v11 emailHeaders];
    v13 = [v12 objectForKeyedSubscript:v10];
    v14 = [v13 firstObject];

    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [v3 attributeSet];
    v16 = [v15 accountIdentifier];
    v17 = [SGOrigin originWithType:1 sourceKey:v16 externalKey:v14 fromForwardedMessage:0];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = [v3 uniqueIdentifier];
      *buf = 138543362;
      v26 = v20;
      _os_log_error_impl(&dword_1BA729000, v14, OS_LOG_TYPE_ERROR, "SGOrigin: Unable to construct origin from searchableItem: %{public}@", buf, 0xCu);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end