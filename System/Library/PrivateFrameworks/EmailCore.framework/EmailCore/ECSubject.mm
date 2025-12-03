@interface ECSubject
+ (id)_prefixTruncatedToMaximumAllowableSize:(id)size;
+ (id)_subjectTruncatedToMaximumAllowableSize:(id)size;
+ (id)_uniqueString:(id)string type:(int64_t)type;
+ (id)subjectWithString:(id)string;
- (BOOL)hasForwardPrefix;
- (BOOL)hasReplyPrefix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (BOOL)isEqualToSubject:(id)subject;
- (BOOL)isEqualToSubjectIgnoringPrefix:(id)prefix;
- (ECSubject)initWithCoder:(id)coder;
- (ECSubject)initWithPrefix:(id)prefix subjectWithoutPrefix:(id)withoutPrefix;
- (ECSubject)initWithString:(id)string;
- (NSString)ef_publicDescription;
- (NSString)subjectString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ECSubject

- (NSString)subjectString
{
  prefix = [(ECSubject *)self prefix];
  subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
  v5 = subjectWithoutPrefix;
  if (prefix)
  {
    v6 = [prefix stringByAppendingString:subjectWithoutPrefix];
  }

  else
  {
    v6 = subjectWithoutPrefix;
  }

  v7 = v6;

  return v7;
}

+ (id)subjectWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

+ (id)_subjectTruncatedToMaximumAllowableSize:(id)size
{
  sizeCopy = size;
  v4 = [sizeCopy length];
  if (v4 >= 0x3E8)
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  v6 = [sizeCopy substringToIndex:v5];

  return v6;
}

+ (id)_prefixTruncatedToMaximumAllowableSize:(id)size
{
  sizeCopy = size;
  v4 = [sizeCopy length];
  if (v4 >= 0x3E8)
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  v6 = [sizeCopy substringToIndex:v5];

  return v6;
}

+ (id)_uniqueString:(id)string type:(int64_t)type
{
  stringCopy = string;
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
  typeCopy = type;
  v11 = stringCopy;
  v7 = stringCopy;
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

- (ECSubject)initWithString:(id)string
{
  v8 = 0;
  v4 = [ECSubjectParser subjectWithoutPrefixForSubject:string prefix:&v8];
  v5 = v8;
  v6 = [(ECSubject *)self initWithPrefix:v5 subjectWithoutPrefix:v4];

  return v6;
}

- (ECSubject)initWithPrefix:(id)prefix subjectWithoutPrefix:(id)withoutPrefix
{
  prefixCopy = prefix;
  withoutPrefixCopy = withoutPrefix;
  v18.receiver = self;
  v18.super_class = ECSubject;
  v8 = [(ECSubject *)&v18 init];
  if (v8)
  {
    if ([prefixCopy length])
    {
      v9 = [ECSubject _prefixTruncatedToMaximumAllowableSize:prefixCopy];

      v10 = [ECSubject _uniqueString:v9 type:0];
      v11 = *(v8 + 5);
      *(v8 + 5) = v10;

      v12 = [*(v8 + 5) length];
      *(v8 + 6) = v12;
      v8[24] = v12 != 0;
      prefixCopy = v9;
    }

    else
    {
      *(v8 + 8) = vdupq_n_s64(1uLL);
    }

    if ([withoutPrefixCopy length])
    {
      v13 = [ECSubject _subjectTruncatedToMaximumAllowableSize:withoutPrefixCopy];

      v14 = [ECSubject _uniqueString:v13 type:1];
      withoutPrefixCopy = v13;
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

- (ECSubject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_prefix"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subjectWithoutPrefix"];
  v7 = [(ECSubject *)self initWithPrefix:v5 subjectWithoutPrefix:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  prefix = [(ECSubject *)self prefix];
  [coderCopy encodeObject:prefix forKey:@"EFPropertyKey_prefix"];

  subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
  [coderCopy encodeObject:subjectWithoutPrefix forKey:@"EFPropertyKey_subjectWithoutPrefix"];
}

- (unint64_t)hash
{
  prefix = [(ECSubject *)self prefix];
  v4 = [prefix hash];

  subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
  v6 = [subjectWithoutPrefix hash] + 5859909;

  return 33 * v4 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ECSubject *)self isEqualToSubject:equalCopy];
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isInternal = [currentDevice isInternal];
  v5 = MEMORY[0x277D07198];
  if (isInternal)
  {
    subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
    [v5 ec_partiallyRedactedStringForSubjectOrSummary:subjectWithoutPrefix];
  }

  else
  {
    subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
    [v5 fullyRedactedStringForString:subjectWithoutPrefix];
  }
  v7 = ;

  prefix = [(ECSubject *)self prefix];
  v9 = prefix;
  if (prefix)
  {
    v10 = [prefix stringByAppendingString:v7];
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
    prefix = [(ECSubject *)self prefix];
    v5 = [ECSubjectParser subjectHasReplyPrefix:prefix];
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
    prefix = [(ECSubject *)self prefix];
    v5 = [ECSubjectParser subjectHasForwardPrefix:prefix];
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

- (BOOL)isEqualToSubject:(id)subject
{
  subjectCopy = subject;
  if (subjectCopy == self)
  {
    v11 = 1;
    goto LABEL_8;
  }

  prefix = [(ECSubject *)self prefix];
  prefix2 = [(ECSubject *)subjectCopy prefix];
  v7 = prefix2;
  if (prefix == prefix2)
  {

    goto LABEL_7;
  }

  prefix3 = [(ECSubject *)self prefix];
  prefix4 = [(ECSubject *)subjectCopy prefix];
  v10 = [prefix3 isEqualToString:prefix4];

  if (v10)
  {
LABEL_7:
    subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
    subjectWithoutPrefix2 = [(ECSubject *)subjectCopy subjectWithoutPrefix];
    v11 = [subjectWithoutPrefix isEqualToString:subjectWithoutPrefix2];

    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)isEqualToString:(id)string
{
  stringCopy = string;
  v5 = [[ECSubject alloc] initWithString:stringCopy];
  LOBYTE(self) = [(ECSubject *)self isEqualToSubject:v5];

  return self;
}

- (BOOL)isEqualToSubjectIgnoringPrefix:(id)prefix
{
  prefixCopy = prefix;
  subjectWithoutPrefix = [(ECSubject *)self subjectWithoutPrefix];
  subjectWithoutPrefix2 = [prefixCopy subjectWithoutPrefix];
  v7 = [subjectWithoutPrefix isEqualToString:subjectWithoutPrefix2];

  return v7;
}

@end