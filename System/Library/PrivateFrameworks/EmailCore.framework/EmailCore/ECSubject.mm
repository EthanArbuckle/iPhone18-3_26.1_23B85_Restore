@interface ECSubject
+ (id)_prefixTruncatedToMaximumAllowableSize:(id)a3;
+ (id)_subjectTruncatedToMaximumAllowableSize:(id)a3;
+ (id)_uniqueString:(id)a3 type:(int64_t)a4;
+ (id)subjectWithString:(id)a3;
- (BOOL)hasForwardPrefix;
- (BOOL)hasReplyPrefix;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (BOOL)isEqualToSubject:(id)a3;
- (BOOL)isEqualToSubjectIgnoringPrefix:(id)a3;
- (ECSubject)initWithCoder:(id)a3;
- (ECSubject)initWithPrefix:(id)a3 subjectWithoutPrefix:(id)a4;
- (ECSubject)initWithString:(id)a3;
- (NSString)ef_publicDescription;
- (NSString)subjectString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ECSubject

- (NSString)subjectString
{
  v3 = [(ECSubject *)self prefix];
  v4 = [(ECSubject *)self subjectWithoutPrefix];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 stringByAppendingString:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

+ (id)subjectWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

+ (id)_subjectTruncatedToMaximumAllowableSize:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 0x3E8)
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 substringToIndex:v5];

  return v6;
}

+ (id)_prefixTruncatedToMaximumAllowableSize:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 0x3E8)
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 substringToIndex:v5];

  return v6;
}

+ (id)_uniqueString:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (_uniqueString_type__onceToken != -1)
  {
    +[ECSubject _uniqueString:type:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v6 = _uniqueString_type__uniqueStringsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ECSubject__uniqueString_type___block_invoke_3;
  block[3] = &unk_27874C378;
  v12 = &v14;
  v13 = a4;
  v11 = v5;
  v7 = v5;
  dispatch_sync(v6, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __32__ECSubject__uniqueString_type___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.emailcore.subject_uniqueStrings", 0);
  v1 = _uniqueString_type__uniqueStringsQueue;
  _uniqueString_type__uniqueStringsQueue = v0;

  v2 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:20];
  v3 = _uniqueString_type__prefixUniqueStrings;
  _uniqueString_type__prefixUniqueStrings = v2;

  v4 = _uniqueString_type__prefixUniqueStrings;
  v5 = +[ECSubjectFormatter nonLocalizedReplyPrefix];
  v6 = [v4 ef_uniquedObject:v5];

  v7 = _uniqueString_type__prefixUniqueStrings;
  v8 = +[ECSubjectFormatter nonLocalizedForwardPrefix];
  v9 = [v7 ef_uniquedObject:v8];

  _uniqueString_type__subjectUniqueStrings = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:100];

  return MEMORY[0x2821F96F8]();
}

void __32__ECSubject__uniqueString_type___block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    v3 = &_uniqueString_type__prefixUniqueStrings;
    v4 = 20;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = &_uniqueString_type__subjectUniqueStrings;
    v4 = 100;
LABEL_5:
    v5 = *v3;
    goto LABEL_7;
  }

  v5 = 0;
  v4 = 0;
LABEL_7:
  v9 = v5;
  if ([v5 count] >= v4)
  {
    [v9 removeAllObjects];
  }

  v6 = [v9 ef_uniquedObject:a1[4]];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (ECSubject)initWithString:(id)a3
{
  v8 = 0;
  v4 = [ECSubjectParser subjectWithoutPrefixForSubject:a3 prefix:&v8];
  v5 = v8;
  v6 = [(ECSubject *)self initWithPrefix:v5 subjectWithoutPrefix:v4];

  return v6;
}

- (ECSubject)initWithPrefix:(id)a3 subjectWithoutPrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ECSubject;
  v8 = [(ECSubject *)&v18 init];
  if (v8)
  {
    if ([v6 length])
    {
      v9 = [ECSubject _prefixTruncatedToMaximumAllowableSize:v6];

      v10 = [ECSubject _uniqueString:v9 type:0];
      v11 = *(v8 + 5);
      *(v8 + 5) = v10;

      v12 = [*(v8 + 5) length];
      *(v8 + 6) = v12;
      v8[24] = v12 != 0;
      v6 = v9;
    }

    else
    {
      *(v8 + 8) = vdupq_n_s64(1uLL);
    }

    if ([v7 length])
    {
      v13 = [ECSubject _subjectTruncatedToMaximumAllowableSize:v7];

      v14 = [ECSubject _uniqueString:v13 type:1];
      v7 = v13;
    }

    else
    {
      v14 = &stru_284041D88;
    }

    v15 = *(v8 + 7);
    *(v8 + 7) = v14;

    v16 = *(v8 + 6);
    *(v8 + 4) = [*(v8 + 7) length] + v16;
  }

  return v8;
}

- (ECSubject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_prefix"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subjectWithoutPrefix"];
  v7 = [(ECSubject *)self initWithPrefix:v5 subjectWithoutPrefix:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(ECSubject *)self prefix];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_prefix"];

  v5 = [(ECSubject *)self subjectWithoutPrefix];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_subjectWithoutPrefix"];
}

- (unint64_t)hash
{
  v3 = [(ECSubject *)self prefix];
  v4 = [v3 hash];

  v5 = [(ECSubject *)self subjectWithoutPrefix];
  v6 = [v5 hash] + 5859909;

  return 33 * v4 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ECSubject *)self isEqualToSubject:v4];
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x277D07148] currentDevice];
  v4 = [v3 isInternal];
  v5 = MEMORY[0x277D07198];
  if (v4)
  {
    v6 = [(ECSubject *)self subjectWithoutPrefix];
    [v5 ec_partiallyRedactedStringForSubjectOrSummary:v6];
  }

  else
  {
    v6 = [(ECSubject *)self subjectWithoutPrefix];
    [v5 fullyRedactedStringForString:v6];
  }
  v7 = ;

  v8 = [(ECSubject *)self prefix];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 stringByAppendingString:v7];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  return v11;
}

- (BOOL)hasReplyPrefix
{
  hasReplyPrefixState = self->_hasReplyPrefixState;
  if (!hasReplyPrefixState)
  {
    v4 = [(ECSubject *)self prefix];
    v5 = [ECSubjectParser subjectHasReplyPrefix:v4];
    v6 = 1;
    if (v5)
    {
      v6 = 2;
    }

    self->_hasReplyPrefixState = v6;

    hasReplyPrefixState = self->_hasReplyPrefixState;
  }

  return hasReplyPrefixState == 2;
}

- (BOOL)hasForwardPrefix
{
  hasForwardPrefixState = self->_hasForwardPrefixState;
  if (!hasForwardPrefixState)
  {
    v4 = [(ECSubject *)self prefix];
    v5 = [ECSubjectParser subjectHasForwardPrefix:v4];
    v6 = 1;
    if (v5)
    {
      v6 = 2;
    }

    self->_hasForwardPrefixState = v6;

    hasForwardPrefixState = self->_hasForwardPrefixState;
  }

  return hasForwardPrefixState == 2;
}

- (BOOL)isEqualToSubject:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
    goto LABEL_8;
  }

  v5 = [(ECSubject *)self prefix];
  v6 = [(ECSubject *)v4 prefix];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  v8 = [(ECSubject *)self prefix];
  v9 = [(ECSubject *)v4 prefix];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
LABEL_7:
    v12 = [(ECSubject *)self subjectWithoutPrefix];
    v13 = [(ECSubject *)v4 subjectWithoutPrefix];
    v11 = [v12 isEqualToString:v13];

    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)isEqualToString:(id)a3
{
  v4 = a3;
  v5 = [[ECSubject alloc] initWithString:v4];
  LOBYTE(self) = [(ECSubject *)self isEqualToSubject:v5];

  return self;
}

- (BOOL)isEqualToSubjectIgnoringPrefix:(id)a3
{
  v4 = a3;
  v5 = [(ECSubject *)self subjectWithoutPrefix];
  v6 = [v4 subjectWithoutPrefix];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

@end