@interface HDDatabaseTransactionContext
+ (id)_cachedContextForOptions:(uint64_t)a1;
+ (id)contextForAccessibilityAssertion:(id)a3;
+ (id)highPriorityContext;
- (BOOL)containsContext:(id)a3 error:(id *)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSSet)accessibilityAssertions;
- (id)_initWithOptions:(void *)a3 journalType:(void *)a4 cacheScope:(void *)a5 assertions:(void *)a6 statistics:;
- (id)copyForReadingProtectedData;
- (id)copyForWriting;
- (id)copyForWritingProtectedData;
- (id)description;
- (id)mergedContextWithContext:(id)a3 error:(id *)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HDDatabaseTransactionContext

- (id)_initWithOptions:(void *)a3 journalType:(void *)a4 cacheScope:(void *)a5 assertions:(void *)a6 statistics:
{
  v11 = a5;
  v12 = a6;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = HDDatabaseTransactionContext;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v13;
    if (v13)
    {
      v13[2] = a4;
      v13[3] = a2;
      v13[1] = a3;
      if ([v11 count])
      {
        v14 = [v11 mutableCopy];
        v15 = a1[4];
        a1[4] = v14;
      }

      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
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

+ (id)_cachedContextForOptions:(uint64_t)a1
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
  v2 = [[a1 alloc] _initWithOptions:16];

  return v2;
}

+ (id)contextForAccessibilityAssertion:(id)a3
{
  v3 = a3;
  v4 = [HDDatabaseTransactionContext alloc];
  p_isa = &v4->super.isa;
  if (v3)
  {
    v6 = [MEMORY[0x277CBEB58] setWithObject:v3];
    v7 = [(HDDatabaseTransactionContext *)p_isa _initWithOptions:0 journalType:0 cacheScope:v6 assertions:0 statistics:?];
  }

  else
  {
    v7 = [(HDDatabaseTransactionContext *)&v4->super.isa _initWithOptions:0 journalType:0 cacheScope:0 assertions:0 statistics:?];
  }

  return v7;
}

- (id)mergedContextWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6 || -[HDDatabaseTransactionContext isEqual:](self, "isEqual:", v6) || [v6 isEmpty])
  {
    v7 = self;
LABEL_5:
    p_isa = &v7->super.isa;
    goto LABEL_6;
  }

  if ([(HDDatabaseTransactionContext *)self isEmpty])
  {
    v7 = v6;
    goto LABEL_5;
  }

  journalType = self->_journalType;
  v11 = [v6 journalType];
  v12 = self->_journalType;
  if (v12)
  {
    if (v11 && v11 != v12)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:107 format:{@"Outer transaction journal type %ld is incompatible with type %ld", self->_journalType, v11}];
LABEL_20:
      p_isa = 0;
      goto LABEL_6;
    }
  }

  else
  {
    journalType = v11;
  }

  cacheScope = self->_cacheScope;
  v14 = [v6 cacheScope];
  v15 = self->_cacheScope;
  if (v15)
  {
    if (v14 && v14 != v15)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:107 format:{@"Outer transaction cache scope %ld is incompatible with %ld", self->_cacheScope, v14}];
      goto LABEL_20;
    }
  }

  else
  {
    cacheScope = v14;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(NSMutableSet *)self->_accessibilityAssertions count])
  {
    [v16 unionSet:self->_accessibilityAssertions];
  }

  if ([*(v6 + 4) count])
  {
    [v16 unionSet:*(v6 + 4)];
  }

  v17 = self->_statistics;
  v18 = *(v6 + 5);
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

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:107 description:@"Transaction statistics are not mergeable"];
  p_isa = 0;
LABEL_32:

LABEL_6:

  return p_isa;
}

- (BOOL)containsContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6 || [(HDDatabaseTransactionContext *)self isEqual:v6])
  {
    goto LABEL_3;
  }

  if ([v6 journalType])
  {
    v8 = [v6 journalType];
    journalType = self->_journalType;
    if (v8 != journalType)
    {
      v15 = MEMORY[0x277CCA9B8];
      v23 = journalType;
      v24 = [v6 journalType];
      v16 = @"Outer transaction journal type %ld is incompatible with type %ld";
LABEL_24:
      v17 = v15;
LABEL_36:
      [v17 hk_assignError:a4 code:107 format:{v16, v23, v24}];
LABEL_37:
      v7 = 0;
      goto LABEL_38;
    }
  }

  if ([v6 cacheScope] == 1)
  {
    v10 = [v6 cacheScope];
    cacheScope = self->_cacheScope;
    if (v10 != cacheScope)
    {
      v15 = MEMORY[0x277CCA9B8];
      v23 = cacheScope;
      v24 = [v6 cacheScope];
      v16 = @"Outer transaction cache scope %ld is incompatible with %ld";
      goto LABEL_24;
    }
  }

  if ([v6 requiresWrite] && !-[HDDatabaseTransactionContext requiresWrite](self, "requiresWrite"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must require write";
    goto LABEL_36;
  }

  if ([v6 requiresProtectedData] && !-[HDDatabaseTransactionContext requiresProtectedData](self, "requiresProtectedData"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must require protected data";
    goto LABEL_36;
  }

  if ([v6 skipJournalMerge] && !-[HDDatabaseTransactionContext skipJournalMerge](self, "skipJournalMerge"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must skip journal merge";
    goto LABEL_36;
  }

  if ([v6 requiresNewDatabaseConnection] && !-[HDDatabaseTransactionContext requiresNewDatabaseConnection](self, "requiresNewDatabaseConnection"))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must require new database connection";
    goto LABEL_36;
  }

  if ([v6 allowsJournalingDuringProtectedRead] && !-[HDDatabaseTransactionContext allowsJournalingDuringProtectedRead](self, "allowsJournalingDuringProtectedRead") && (!-[HDDatabaseTransactionContext requiresProtectedData](self, "requiresProtectedData") || !-[HDDatabaseTransactionContext requiresWrite](self, "requiresWrite")))
  {
    v17 = MEMORY[0x277CCA9B8];
    v16 = @"Outer transaction must allow journaling during protected read or allow writing protected data";
    goto LABEL_36;
  }

  v12 = [v6 accessibilityAssertions];
  if ([v12 count])
  {
    v13 = [(NSMutableSet *)self->_accessibilityAssertions count];

    if (!v13)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:107 format:@"Outer transaction must have database accessibility assertion"];
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

  v18 = [v6 statistics];
  if (v18)
  {
    v19 = v18;
    v20 = [(HDDatabaseTransactionContext *)self statistics];
    v21 = [v6 statistics];

    if (v20 != v21)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
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
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@" journal=%ld", journalType];
  }

  else
  {
    v4 = &stru_283BF39C8;
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
    v9 = [(NSMutableSet *)self->_accessibilityAssertions allObjects];
    v10 = [v9 hk_map:&__block_literal_global_378];
    v11 = [v10 componentsJoinedByString:{@", "}];
    v12 = [v8 stringWithFormat:@" assertions={%@}", v11];
  }

  else
  {
    v12 = &stru_283BF39C8;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@%@%@ options=%@%@>", objc_opt_class(), v4, v5, v7, v12, 0];

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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