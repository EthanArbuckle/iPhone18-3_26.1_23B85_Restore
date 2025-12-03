@interface ECMessageFlags
+ (id)cachedFlagsWithHash:(unint64_t)hash generator:(id)generator;
- (BOOL)isEqual:(id)equal;
- (ECMessageFlags)initWithBuilder:(id)builder;
- (ECMessageFlags)initWithCoder:(id)coder;
- (ECMessageFlags)initWithHash:(unint64_t)hash;
- (NSString)ef_publicDescription;
- (id)updatedFlagsWithBuilder:(id)builder;
- (void)encodeWithCoder:(id)coder;
- (void)setDeleted:(BOOL)deleted;
- (void)setDraft:(BOOL)draft;
- (void)setFlagged:(BOOL)flagged;
- (void)setForwarded:(BOOL)forwarded;
- (void)setJunkLevelSetByUser:(BOOL)user;
- (void)setRedirected:(BOOL)redirected;
- (void)setReplied:(BOOL)replied;
- (void)setTouchedByCleanup:(BOOL)cleanup;
@end

@implementation ECMessageFlags

- (NSString)ef_publicDescription
{
  v36[10] = *MEMORY[0x277D85DE8];
  v3 = @"Read";
  hashValue = self->_storage.hashValue;
  if ((hashValue & 1) == 0)
  {
    v3 = @"Unread";
  }

  v36[0] = v3;
  v34 = hashValue;
  if ((hashValue & 2) != 0)
  {
    null = @"Deleted";
    LOBYTE(v6) = hashValue;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v6 = self->_storage.hashValue;
  }

  v35 = null;
  v36[1] = null;
  if ((v6 & 4) != 0)
  {
    null2 = @"Replied";
    LOBYTE(v8) = v6;
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    v8 = self->_storage.hashValue;
  }

  v30 = null2;
  v36[2] = null2;
  v31 = v6;
  v33 = v8;
  if ((v8 & 0x20) != 0)
  {
    null3 = @"Forwarded";
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    v8 = self->_storage.hashValue;
  }

  v36[3] = null3;
  v29 = null3;
  v32 = v8;
  if ((v8 & 0x40) != 0)
  {
    LOBYTE(v11) = v8;
    null4 = @"Redirected";
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    v11 = self->_storage.hashValue;
  }

  v36[4] = null4;
  v28 = null4;
  if ((v11 & 0x10) != 0)
  {
    null5 = @"Draft";
    LOBYTE(v13) = v11;
  }

  else
  {
    null5 = [MEMORY[0x277CBEB68] null];
    v13 = self->_storage.hashValue;
  }

  v27 = null5;
  v36[5] = null5;
  if ((v13 & 8) != 0)
  {
    v16 = MEMORY[0x277CCACA8];
    _flagColorDebugDescription = [(ECMessageFlags *)self _flagColorDebugDescription];
    null6 = [v16 stringWithFormat:@"Flagged:%@", _flagColorDebugDescription];
  }

  else
  {
    null6 = [MEMORY[0x277CBEB68] null];
    _flagColorDebugDescription = null6;
  }

  v36[6] = null6;
  v17 = self->_storage.hashValue;
  if ((v17 & 0x80) != 0)
  {
    null7 = @"JunkLevelSetByUser";
  }

  else
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v19 = self->_storage.hashValue;
  v36[7] = null7;
  if ((v19 & 0x2000) != 0)
  {
    null8 = @"TouchedByCleanup";
  }

  else
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v36[8] = null8;
  _junkLevelDebugDescription = [(ECMessageFlags *)self _junkLevelDebugDescription];
  v36[9] = _junkLevelDebugDescription;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:10];

  if ((v19 & 0x2000) == 0)
  {
  }

  if ((v17 & 0x80) == 0)
  {
  }

  if ((v13 & 8) != 0)
  {
  }

  if ((v11 & 0x10) == 0)
  {
  }

  if ((v32 & 0x40) == 0)
  {
  }

  if ((v33 & 0x20) == 0)
  {
  }

  if ((v31 & 4) == 0)
  {
  }

  if ((v34 & 2) == 0)
  {
  }

  v23 = [v22 ef_filter:*MEMORY[0x277D07110]];
  v24 = [v23 componentsJoinedByString:@"|"];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)cachedFlagsWithHash:(unint64_t)hash generator:(id)generator
{
  generatorCopy = generator;
  if (cachedFlagsWithHash_generator__onceToken != -1)
  {
    +[ECMessageFlags cachedFlagsWithHash:generator:];
  }

  v6 = cachedFlagsWithHash_generator__cache;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hash];
  v8 = [v6 objectForKey:v7 generator:generatorCopy];

  return v8;
}

uint64_t __48__ECMessageFlags_cachedFlagsWithHash_generator___block_invoke()
{
  cachedFlagsWithHash_generator__cache = objc_alloc_init(MEMORY[0x277D07160]);

  return MEMORY[0x2821F96F8]();
}

- (ECMessageFlags)initWithHash:(unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = ECMessageFlags;
  result = [(ECMessageFlags *)&v5 init];
  if (result)
  {
    result->_storage.hashValue = hash;
  }

  return result;
}

- (ECMessageFlags)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ECMessageFlags;
  v5 = [(ECMessageFlags *)&v12 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
    v6 = objc_opt_class();
    v7.hashValue = v5->_storage;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__ECMessageFlags_initWithBuilder___block_invoke;
    v10[3] = &unk_27874BD98;
    v8 = v5;
    v11 = v8;
    v5 = [v6 cachedFlagsWithHash:v7.hashValue generator:v10];
  }

  return v5;
}

- (id)updatedFlagsWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [ECMessageFlags alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ECMessageFlags_updatedFlagsWithBuilder___block_invoke;
  v9[3] = &unk_27874BDC0;
  v9[4] = self;
  v6 = builderCopy;
  v10 = v6;
  v7 = [(ECMessageFlags *)v5 initWithBuilder:v9];

  return v7;
}

void __42__ECMessageFlags_updatedFlagsWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRead:{objc_msgSend(*(a1 + 32), "read")}];
  [v3 setDeleted:{objc_msgSend(*(a1 + 32), "deleted")}];
  [v3 setReplied:{objc_msgSend(*(a1 + 32), "replied")}];
  [v3 setFlagged:{objc_msgSend(*(a1 + 32), "flagged")}];
  [v3 setDraft:{objc_msgSend(*(a1 + 32), "draft")}];
  [v3 setForwarded:{objc_msgSend(*(a1 + 32), "forwarded")}];
  [v3 setRedirected:{objc_msgSend(*(a1 + 32), "redirected")}];
  [v3 setJunkLevelSetByUser:{objc_msgSend(*(a1 + 32), "junkLevelSetByUser")}];
  [v3 setJunkLevel:{objc_msgSend(*(a1 + 32), "junkLevel")}];
  [v3 setFlagColor:{objc_msgSend(*(a1 + 32), "flagColor")}];
  [v3 setTouchedByCleanup:{objc_msgSend(*(a1 + 32), "touchedByCleanup")}];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ECMessageFlags *)self hash];
    v6 = v5 == [equalCopy hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFFFD | v3;
}

- (void)setReplied:(BOOL)replied
{
  if (replied)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFFFB | v3;
}

- (void)setFlagged:(BOOL)flagged
{
  if (flagged)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFFF7 | v3;
}

- (void)setDraft:(BOOL)draft
{
  if (draft)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFFEF | v3;
}

- (void)setForwarded:(BOOL)forwarded
{
  if (forwarded)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFFDF | v3;
}

- (void)setRedirected:(BOOL)redirected
{
  if (redirected)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFFBF | v3;
}

- (void)setJunkLevelSetByUser:(BOOL)user
{
  if (user)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xFF7F | v3;
}

- (void)setTouchedByCleanup:(BOOL)cleanup
{
  if (cleanup)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_storage.hashValue) = self->_storage.hashValue & 0xDFFF | v3;
}

- (ECMessageFlags)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_hash"];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__ECMessageFlags_initWithCoder___block_invoke;
  v10[3] = &unk_27874BDE8;
  selfCopy = self;
  v11 = selfCopy;
  v12 = v5;
  v8 = [v6 cachedFlagsWithHash:v5 generator:v10];

  return v8;
}

id __32__ECMessageFlags_initWithCoder___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) initWithHash:*(a1 + 40)];

  return v1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ECMessageFlags hash](self forKey:{"hash"), @"EFPropertyKey_hash"}];
}

@end