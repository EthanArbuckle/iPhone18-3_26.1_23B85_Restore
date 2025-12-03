@interface HDDatabaseTransactionContext
+ (id)_cachedContextForOptions:(uint64_t)options;
+ (id)contextForAccessibilityAssertion:(id)assertion;
+ (id)highPriorityContext;
- (BOOL)containsContext:(id)context error:(id *)error;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSSet)accessibilityAssertions;
- (id)_initWithOptions:(void *)options journalType:(void *)type cacheScope:(void *)scope assertions:(void *)assertions statistics:;
- (id)copyForReadingProtectedData;
- (id)copyForWriting;
- (id)copyForWritingProtectedData;
- (id)description;
- (id)mergedContextWithContext:(id)context error:(id *)error;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HDDatabaseTransactionContext

- (id)_initWithOptions:(void *)options journalType:(void *)type cacheScope:(void *)scope assertions:(void *)assertions statistics:
{
  scopeCopy = scope;
  assertionsCopy = assertions;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = HDDatabaseTransactionContext;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    self = v13;
    if (v13)
    {
      v13[2] = type;
      v13[3] = a2;
      v13[1] = options;
      if ([scopeCopy count])
      {
        v14 = [scopeCopy mutableCopy];
        v15 = self[4];
        self[4] = v14;
      }

      objc_storeStrong(self + 5, assertions);
    }
  }

  return self;
}

- (id)copyForWriting
{
  if ([(HDDatabaseTransactionContext *)self requiresWrite])
  {

    return [(HDDatabaseTransactionContext *)self copy];
  }

  else
  {
    v4 = [(HDDatabaseTransactionContext *)self mutableCopy];
    [v4 setRequiresWrite:1];
    return v4;
  }
}

- (id)copyForWritingProtectedData
{
  if ([(HDDatabaseTransactionContext *)self requiresWrite]&& [(HDDatabaseTransactionContext *)self requiresProtectedData])
  {

    return [(HDDatabaseTransactionContext *)self copy];
  }

  else
  {
    v4 = [(HDDatabaseTransactionContext *)self mutableCopy];
    [v4 setRequiresWrite:1];
    [v4 setRequiresProtectedData:1];
    return v4;
  }
}

- (id)copyForReadingProtectedData
{
  if ([(HDDatabaseTransactionContext *)self requiresProtectedData])
  {

    return [(HDDatabaseTransactionContext *)self copy];
  }

  else
  {
    v4 = [(HDDatabaseTransactionContext *)self mutableCopy];
    [v4 setRequiresProtectedData:1];
    return v4;
  }
}

+ (id)_cachedContextForOptions:(uint64_t)options
{
  objc_opt_self();
  if (qword_280D67C08 != -1)
  {
    dispatch_once(&qword_280D67C08, &__block_literal_global_103);
  }

  v3 = _MergedGlobals_202;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

void __57__HDDatabaseTransactionContext__cachedContextForOptions___block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_283CB2328;
  v0 = [[HDDatabaseTransactionContext alloc] _initWithOptions:0];
  v8[0] = v0;
  v7[1] = &unk_283CB2340;
  v1 = [[HDDatabaseTransactionContext alloc] _initWithOptions:1];
  v8[1] = v1;
  v7[2] = &unk_283CB2358;
  v2 = [[HDDatabaseTransactionContext alloc] _initWithOptions:2];
  v8[2] = v2;
  v7[3] = &unk_283CB2370;
  v3 = [[HDDatabaseTransactionContext alloc] _initWithOptions:3];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = _MergedGlobals_202;
  _MergedGlobals_202 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)highPriorityContext
{
  v2 = [[self alloc] _initWithOptions:16];

  return v2;
}

+ (id)contextForAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  v4 = [HDDatabaseTransactionContext alloc];
  p_isa = &v4->super.isa;
  if (assertionCopy)
  {
    v6 = [MEMORY[0x277CBEB58] setWithObject:assertionCopy];
    v7 = [(HDDatabaseTransactionContext *)p_isa _initWithOptions:0 journalType:0 cacheScope:v6 assertions:0 statistics:?];
  }

  else
  {
    v7 = [(HDDatabaseTransactionContext *)&v4->super.isa _initWithOptions:0 journalType:0 cacheScope:0 assertions:0 statistics:?];
  }

  return v7;
}

- (id)mergedContextWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (!contextCopy || -[HDDatabaseTransactionContext isEqual:](self, "isEqual:", contextCopy) || [contextCopy isEmpty])
  {
    selfCopy = self;
LABEL_5:
    p_isa = &selfCopy->super.isa;
    goto LABEL_6;
  }

  if ([(HDDatabaseTransactionContext *)self isEmpty])
  {
    selfCopy = contextCopy;
    goto LABEL_5;
  }

  journalType = self->_journalType;
  journalType = [contextCopy journalType];
  v12 = self->_journalType;
  if (v12)
  {
    if (journalType && journalType != v12)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:107 format:{@"Outer transaction journal type %ld is incompatible with type %ld", self->_journalType, journalType}];
LABEL_20:
      p_isa = 0;
      goto LABEL_6;
    }
  }

  else
  {
    journalType = journalType;
  }

  cacheScope = self->_cacheScope;
  cacheScope = [contextCopy cacheScope];
  v15 = self->_cacheScope;
  if (v15)
  {
    if (cacheScope && cacheScope != v15)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:107 format:{@"Outer transaction cache scope %ld is incompatible with %ld", self->_cacheScope, cacheScope}];
      goto LABEL_20;
    }
  }

  else
  {
    cacheScope = cacheScope;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(NSMutableSet *)self->_accessibilityAssertions count])
  {
    [v16 unionSet:self->_accessibilityAssertions];
  }

  if ([*(contextCopy + 4) count])
  {
    [v16 unionSet:*(contextCopy + 4)];
  }

  v17 = self->_statistics;
  v18 = *(contextCopy + 5);
  if (!v17)
  {
    v19 = v18;
LABEL_31:
    p_isa = [[HDDatabaseTransactionContext alloc] _initWithOptions:journalType journalType:cacheScope cacheScope:v16 assertions:v19 statistics:?];
    goto LABEL_32;
  }

  v19 = v17;
  if (!v18 || v18 == self->_statistics)
  {
    goto LABEL_31;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:107 description:@"Transaction statistics are not mergeable"];
  p_isa = 0;
LABEL_32:

LABEL_6:

  return p_isa;
}

- (BOOL)containsContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (!contextCopy || [(HDDatabaseTransactionContext *)self isEqual:contextCopy])
  {
    goto LABEL_3;
  }

  if ([contextCopy journalType])
  {
    journalType = [contextCopy journalType];
    journalType = self->_journalType;
    if (journalType != journalType)
    {
      v15 = MEMORY[0x277CCA9B8];
      v23 = journalType;
      journalType2 = [contextCopy journalType];
      v16 = @"Outer transaction journal type %ld is incompatible with type %ld";
LABEL_24:
      v17 = v15;
LABEL_36:
      [v17 hk_assignError:error code:107 format:{v16, v23, journalType2}];
LABEL_37:
      v7 = 0;
      goto LABEL_38;
    }
  }

  if ([contextCopy cacheScope] == 1)
  {
    cacheScope = [contextCopy cacheScope];
    cacheScope = self->_cacheScope;
    if (cacheScope != cacheScope)
    {
      v15 = MEMORY[0x277CCA9B8];
      v23 = cacheScope;
      journalType2 = [contextCopy cacheScope];
      v16 = @"Outer transaction cache scope %ld is incompatible with %ld";
      goto LABEL_24;
    }
  }

  if ([contextCopy requiresWrite] && !-[HDDatabaseTransactionContext requiresWrite](self, "requiresWrite"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must require write";
    goto LABEL_36;
  }

  if ([contextCopy requiresProtectedData] && !-[HDDatabaseTransactionContext requiresProtectedData](self, "requiresProtectedData"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must require protected data";
    goto LABEL_36;
  }

  if ([contextCopy skipJournalMerge] && !-[HDDatabaseTransactionContext skipJournalMerge](self, "skipJournalMerge"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must skip journal merge";
    goto LABEL_36;
  }

  if ([contextCopy requiresNewDatabaseConnection] && !-[HDDatabaseTransactionContext requiresNewDatabaseConnection](self, "requiresNewDatabaseConnection"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must require new database connection";
    goto LABEL_36;
  }

  if ([contextCopy allowsJournalingDuringProtectedRead] && !-[HDDatabaseTransactionContext allowsJournalingDuringProtectedRead](self, "allowsJournalingDuringProtectedRead") && (!-[HDDatabaseTransactionContext requiresProtectedData](self, "requiresProtectedData") || !-[HDDatabaseTransactionContext requiresWrite](self, "requiresWrite")))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must allow journaling during protected read or allow writing protected data";
    goto LABEL_36;
  }

  accessibilityAssertions = [contextCopy accessibilityAssertions];
  if ([accessibilityAssertions count])
  {
    v13 = [(NSMutableSet *)self->_accessibilityAssertions count];

    if (!v13)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:107 format:@"Outer transaction must have database accessibility assertion"];
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_228986000, v14, OS_LOG_TYPE_FAULT, "Outer transaction must have database accessibility assertion", buf, 2u);
      }

      goto LABEL_37;
    }
  }

  else
  {
  }

  statistics = [contextCopy statistics];
  if (statistics)
  {
    v19 = statistics;
    statistics2 = [(HDDatabaseTransactionContext *)self statistics];
    statistics3 = [contextCopy statistics];

    if (statistics2 != statistics3)
    {
      v17 = MEMORY[0x277CCA9B8];
      v16 = @"Outer transaction must have the same statistics object";
      goto LABEL_36;
    }
  }

LABEL_3:
  v7 = 1;
LABEL_38:

  return v7;
}

- (BOOL)isEmpty
{
  if (self->_options)
  {
    return 0;
  }

  if (self->_journalType || self->_cacheScope || [(NSMutableSet *)self->_accessibilityAssertions count])
  {
    return 0;
  }

  return self->_statistics == 0;
}

- (NSSet)accessibilityAssertions
{
  v2 = [(NSMutableSet *)self->_accessibilityAssertions copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->_journalType != v5->_journalType || self->_options != v5->_options || self->_cacheScope != v5->_cacheScope)
  {
    goto LABEL_12;
  }

  accessibilityAssertions = self->_accessibilityAssertions;
  v8 = v6->_accessibilityAssertions;
  if (accessibilityAssertions == v8)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    if (([(NSMutableSet *)accessibilityAssertions isEqual:?]& 1) == 0)
    {
      accessibilityAssertions = self->_accessibilityAssertions;
      goto LABEL_10;
    }

LABEL_17:
    v9 = self->_statistics == v6->_statistics;
    goto LABEL_13;
  }

LABEL_10:
  if (![(NSMutableSet *)accessibilityAssertions count]&& ![(NSMutableSet *)v6->_accessibilityAssertions count])
  {
    goto LABEL_17;
  }

LABEL_12:
  v9 = 0;
LABEL_13:

LABEL_16:
  return v9;
}

- (id)description
{
  journalType = self->_journalType;
  if (journalType)
  {
    journalType = [MEMORY[0x277CCACA8] stringWithFormat:@" journal=%ld", journalType];
  }

  else
  {
    journalType = &stru_283BF39C8;
  }

  if (self->_cacheScope)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" cache-scope=%ld", self->_cacheScope];
  }

  else
  {
    v5 = &stru_283BF39C8;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HDDatabaseTransactionContext *)self skipJournalMerge])
  {
    [v6 addObject:@"skip-journal"];
  }

  if ([(HDDatabaseTransactionContext *)self requiresNewDatabaseConnection])
  {
    [v6 addObject:@"new-connection"];
  }

  if ([(HDDatabaseTransactionContext *)self requiresWrite])
  {
    [v6 addObject:@"write"];
  }

  if ([(HDDatabaseTransactionContext *)self requiresProtectedData])
  {
    [v6 addObject:@"protected-data"];
  }

  if ([(HDDatabaseTransactionContext *)self highPriority])
  {
    [v6 addObject:@"high-priority"];
  }

  if ([(HDDatabaseTransactionContext *)self skipTransactionStartTasks])
  {
    [v6 addObject:@"skip-transaction-start"];
  }

  if ([(HDDatabaseTransactionContext *)self allowsJournalingDuringProtectedRead])
  {
    [v6 addObject:@"allows-journaling-during-protected-read"];
  }

  if ([v6 count])
  {
    v7 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  if ([(NSMutableSet *)self->_accessibilityAssertions count])
  {
    v8 = MEMORY[0x277CCACA8];
    allObjects = [(NSMutableSet *)self->_accessibilityAssertions allObjects];
    v10 = [allObjects hk_map:&__block_literal_global_378];
    v11 = [v10 componentsJoinedByString:{@", "}];
    v12 = [v8 stringWithFormat:@" assertions={%@}", v11];
  }

  else
  {
    v12 = &stru_283BF39C8;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@%@%@ options=%@%@>", objc_opt_class(), journalType, v5, v7, v12, 0];

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HDMutableDatabaseTransactionContext alloc];
  journalType = self->_journalType;
  cacheScope = self->_cacheScope;
  options = self->_options;
  accessibilityAssertions = self->_accessibilityAssertions;
  statistics = self->_statistics;

  return [(HDDatabaseTransactionContext *)&v4->super.super.isa _initWithOptions:journalType journalType:cacheScope cacheScope:accessibilityAssertions assertions:statistics statistics:?];
}

@end