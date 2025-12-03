@interface SGOrigin
+ (id)originForMailSearchableItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrigin:(id)origin;
- (NSString)contextSnippet;
- (NSURL)url;
- (SGOrigin)init;
- (SGOrigin)initWithCoder:(id)coder;
- (SGOrigin)initWithType:(unint64_t)type sourceKey:(id)key externalKey:(id)externalKey bundleId:(id)id fromForwardedMessage:(BOOL)message;
- (_NSRange)contextSnippetRange;
- (id)universalURL;
- (unint64_t)hash;
- (void)_resolveAppName;
- (void)encodeWithCoder:(id)coder;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGOrigin.m" lineNumber:287 description:{@"Unknown origin type: %lu", self->_type}];

    v4 = 0;
  }

  return v4;
}

- (_NSRange)contextSnippetRange
{
  if (self->_shouldShowOperatingSystemVersion)
  {
    contextSnippet = [(SGOrigin *)self contextSnippet];
    v4 = [contextSnippet length];
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

- (BOOL)isEqualToOrigin:(id)origin
{
  originCopy = origin;
  if (self->_type != originCopy[1])
  {
    goto LABEL_59;
  }

  v5 = self->_sourceKey;
  v6 = v5;
  if (v5 == originCopy[2])
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
  if (v8 == originCopy[3])
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
  if (v11 == originCopy[4])
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
  if (self->_contextSnippetRange.location == originCopy[5] && self->_contextSnippetRange.length == originCopy[6])
  {
    v15 = self->_fromPerson;
    v16 = v15;
    if (v15 == originCopy[7])
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
    if (v18 == originCopy[8])
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
    if (v21 == originCopy[9])
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
    if (v24 == originCopy[17])
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
    if (v27 == originCopy[18])
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
    if (v30 == originCopy[10])
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
    if (v33 == originCopy[11])
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
    if (v36 == originCopy[12])
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
    if (v39 == originCopy[13])
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
    if (v42 == originCopy[14])
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

    if (self->_fromForwardedMessage == *(originCopy + 130))
    {
      v45 = self->_operatingSystemVersion;
      v46 = v45;
      if (v45 == originCopy[15])
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

      v14 = self->_isSent == *(originCopy + 128);
      goto LABEL_60;
    }

LABEL_59:
    v14 = 0;
  }

LABEL_60:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGOrigin *)self isEqualToOrigin:v5];
  }

  return v6;
}

- (NSURL)url
{
  type = self->_type;
  if (type > 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGOrigin.m" lineNumber:191 description:{@"Unknown origin type: %lu", self->_type}];
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
      currentHandler = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [(NSString *)externalKey stringByAddingPercentEncodingWithAllowedCharacters:currentHandler];
      v10 = [v6 initWithFormat:@"message:%@", v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = self->_externalKey;
      currentHandler = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [(NSString *)v12 stringByAddingPercentEncodingWithAllowedCharacters:currentHandler];
      v10 = [v11 initWithFormat:@"messages:openchat?guid=%@", v9];
    }

    v13 = v10;
    v4 = [v5 URLWithString:v10];
  }

LABEL_10:

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"type"];
  [coderCopy encodeObject:self->_sourceKey forKey:@"sourceKey"];
  [coderCopy encodeObject:self->_externalKey forKey:@"externalKey"];
  [coderCopy encodeObject:self->_contextSnippet forKey:@"contextSnippet"];
  [coderCopy encodeInteger:self->_contextSnippetRange.location forKey:@"contextSnippetRange_location"];
  [coderCopy encodeInteger:self->_contextSnippetRange.length forKey:@"contextSnippetRange_length"];
  [coderCopy encodeObject:self->_fromPerson forKey:@"fromPerson"];
  [coderCopy encodeObject:self->_toPeople forKey:@"toPeople"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_localizedApplicationName forKey:@"localizedApplicationName"];
  [coderCopy encodeObject:self->_teamId forKey:@"teamId"];
  [coderCopy encodeObject:self->_to forKey:@"to"];
  [coderCopy encodeObject:self->_cc forKey:@"cc"];
  [coderCopy encodeObject:self->_bcc forKey:@"bcc"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeBool:self->_fromForwardedMessage forKey:@"fromForwardedMessage"];
  [coderCopy encodeObject:self->_operatingSystemVersion forKey:@"operatingSystemVersion"];
  [coderCopy encodeBool:self->_shouldShowOperatingSystemVersion forKey:@"shouldShowOperatingSystemVersion"];
  [coderCopy encodeBool:self->_isSent forKey:@"isSent"];
}

- (SGOrigin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v59.receiver = self;
  v59.super_class = SGOrigin;
  v5 = [(SGOrigin *)&v59 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sourceKey"];
    sourceKey = v5->_sourceKey;
    v5->_sourceKey = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"externalKey"];
    externalKey = v5->_externalKey;
    v5->_externalKey = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"contextSnippet"];
    contextSnippet = v5->_contextSnippet;
    v5->_contextSnippet = v13;

    v15 = [coderCopy decodeIntegerForKey:@"contextSnippetRange_location"];
    v16 = [coderCopy decodeIntegerForKey:@"contextSnippetRange_length"];
    v5->_contextSnippetRange.location = v15;
    v5->_contextSnippetRange.length = v16;
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"fromPerson"];
    fromPerson = v5->_fromPerson;
    v5->_fromPerson = v18;

    v20 = objc_alloc(MEMORY[0x1E695DFD8]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"toPeople"];
    toPeople = v5->_toPeople;
    v5->_toPeople = v23;

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v26;

    v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"localizedApplicationName"];
    localizedApplicationName = v5->_localizedApplicationName;
    v5->_localizedApplicationName = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"teamId"];
    teamId = v5->_teamId;
    v5->_teamId = v32;

    v34 = objc_alloc(MEMORY[0x1E695DFD8]);
    v35 = objc_opt_class();
    v36 = [v34 initWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"to"];
    to = v5->_to;
    v5->_to = v37;

    v39 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40 = objc_opt_class();
    v41 = [v39 initWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"cc"];
    cc = v5->_cc;
    v5->_cc = v42;

    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v45 = objc_opt_class();
    v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"bcc"];
    bcc = v5->_bcc;
    v5->_bcc = v47;

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"date"];
    date = v5->_date;
    v5->_date = v50;

    v52 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"title"];
    title = v5->_title;
    v5->_title = v53;

    v5->_fromForwardedMessage = [coderCopy decodeBoolForKey:@"fromForwardedMessage"];
    v55 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"operatingSystemVersion"];
    operatingSystemVersion = v5->_operatingSystemVersion;
    v5->_operatingSystemVersion = v56;

    v5->_shouldShowOperatingSystemVersion = [coderCopy decodeBoolForKey:@"shouldShowOperatingSystemVersion"];
    v5->_isSent = [coderCopy decodeBoolForKey:@"isSent"];
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

- (SGOrigin)initWithType:(unint64_t)type sourceKey:(id)key externalKey:(id)externalKey bundleId:(id)id fromForwardedMessage:(BOOL)message
{
  keyCopy = key;
  externalKeyCopy = externalKey;
  idCopy = id;
  v15 = [(SGOrigin *)self init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_17;
  }

  v15->_type = type;
  v17 = [keyCopy copy];
  sourceKey = v16->_sourceKey;
  v16->_sourceKey = v17;

  v19 = [externalKeyCopy copy];
  externalKey = v16->_externalKey;
  v16->_externalKey = v19;

  v16->_fromForwardedMessage = message;
  if (!idCopy)
  {
    if (type > 4)
    {
      if (type == 5)
      {
        v21 = v16->_sourceKey;
        goto LABEL_4;
      }

      if (type != 7)
      {
        goto LABEL_15;
      }

      v23 = @"com.apple.mobilesafari";
    }

    else if (type == 1)
    {
      v23 = @"com.apple.mobilemail";
    }

    else
    {
      if (type != 4)
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

  v21 = [idCopy copy];
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

+ (id)originForMailSearchableItem:(id)item
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  attributeSet = [itemCopy attributeSet];
  emailHeaders = [attributeSet emailHeaders];

  v6 = [emailHeaders countByEnumeratingWithState:&v21 objects:v27 count:16];
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
        objc_enumerationMutation(emailHeaders);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if (![@"message-id" caseInsensitiveCompare:v10])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [emailHeaders countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    attributeSet2 = [itemCopy attributeSet];
    emailHeaders2 = [attributeSet2 emailHeaders];
    v13 = [emailHeaders2 objectForKeyedSubscript:v10];
    firstObject = [v13 firstObject];

    if (!firstObject)
    {
      goto LABEL_12;
    }

    attributeSet3 = [itemCopy attributeSet];
    accountIdentifier = [attributeSet3 accountIdentifier];
    v17 = [SGOrigin originWithType:1 sourceKey:accountIdentifier externalKey:firstObject fromForwardedMessage:0];
  }

  else
  {
LABEL_9:

LABEL_12:
    firstObject = sgEventsLogHandle();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [itemCopy uniqueIdentifier];
      *buf = 138543362;
      v26 = uniqueIdentifier;
      _os_log_error_impl(&dword_1BA729000, firstObject, OS_LOG_TYPE_ERROR, "SGOrigin: Unable to construct origin from searchableItem: %{public}@", buf, 0xCu);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end