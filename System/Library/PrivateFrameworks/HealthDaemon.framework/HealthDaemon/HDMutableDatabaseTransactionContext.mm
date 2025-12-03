@interface HDMutableDatabaseTransactionContext
+ (id)contextForAccessibilityAssertion:(id)assertion;
+ (id)contextForReading;
+ (id)contextForReadingProtectedData;
+ (id)contextForWriting;
+ (id)contextForWritingProtectedData;
- (HDMutableDatabaseTransactionContext)contextWithAccessibilityAssertion:(id)assertion;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAccessibilityAssertion:(id)assertion;
- (void)addAccessibilityAssertions:(id)assertions;
- (void)setAllowsJournalingDuringProtectedRead:(BOOL)read;
- (void)setHighPriority:(BOOL)priority;
- (void)setRequiresNewDatabaseConnection:(BOOL)connection;
- (void)setRequiresProtectedData:(BOOL)data;
- (void)setRequiresWrite:(BOOL)write;
- (void)setSkipJournalMerge:(BOOL)merge;
- (void)setSkipTransactionStartTasks:(BOOL)tasks;
@end

@implementation HDMutableDatabaseTransactionContext

- (void)addAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  accessibilityAssertions = self->super._accessibilityAssertions;
  v8 = assertionCopy;
  if (!accessibilityAssertions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->super._accessibilityAssertions;
    self->super._accessibilityAssertions = v6;

    assertionCopy = v8;
    accessibilityAssertions = self->super._accessibilityAssertions;
  }

  [(NSMutableSet *)accessibilityAssertions addObject:assertionCopy];
}

- (void)addAccessibilityAssertions:(id)assertions
{
  accessibilityAssertions = self->super._accessibilityAssertions;
  if (accessibilityAssertions)
  {
    assertionsCopy = assertions;
    [(NSMutableSet *)accessibilityAssertions addObjectsFromArray:assertionsCopy];
    v4 = assertionsCopy;
  }

  else
  {
    v6 = MEMORY[0x277CBEB58];
    assertionsCopy2 = assertions;
    v8 = [[v6 alloc] initWithArray:assertionsCopy2];

    v4 = self->super._accessibilityAssertions;
    self->super._accessibilityAssertions = v8;
  }
}

- (HDMutableDatabaseTransactionContext)contextWithAccessibilityAssertion:(id)assertion
{
  if (assertion)
  {
    [(HDMutableDatabaseTransactionContext *)self addAccessibilityAssertion:?];
  }

  return self;
}

+ (id)contextForWriting
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HDMutableDatabaseTransactionContext;
  v2 = objc_msgSendSuper2(&v5, sel_contextForWriting);
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)contextForWritingProtectedData
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HDMutableDatabaseTransactionContext;
  v2 = objc_msgSendSuper2(&v5, sel_contextForWritingProtectedData);
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)contextForReading
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HDMutableDatabaseTransactionContext;
  v2 = objc_msgSendSuper2(&v5, sel_contextForReading);
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)contextForReadingProtectedData
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HDMutableDatabaseTransactionContext;
  v2 = objc_msgSendSuper2(&v5, sel_contextForReadingProtectedData);
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)contextForAccessibilityAssertion:(id)assertion
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HDMutableDatabaseTransactionContext;
  v3 = objc_msgSendSuper2(&v6, sel_contextForAccessibilityAssertion_, assertion);
  v4 = [v3 mutableCopy];

  return v4;
}

- (void)setRequiresWrite:(BOOL)write
{
  if (self)
  {
    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFFELL | write;
  }
}

- (void)setRequiresProtectedData:(BOOL)data
{
  if (self)
  {
    v3 = 2;
    if (!data)
    {
      v3 = 0;
    }

    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFFDLL | v3;
  }
}

- (void)setHighPriority:(BOOL)priority
{
  if (self)
  {
    v3 = 16;
    if (!priority)
    {
      v3 = 0;
    }

    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFEFLL | v3;
  }
}

- (void)setSkipJournalMerge:(BOOL)merge
{
  if (self)
  {
    v3 = 4;
    if (!merge)
    {
      v3 = 0;
    }

    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFFBLL | v3;
  }
}

- (void)setSkipTransactionStartTasks:(BOOL)tasks
{
  if (self)
  {
    v3 = 32;
    if (!tasks)
    {
      v3 = 0;
    }

    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFDFLL | v3;
  }
}

- (void)setRequiresNewDatabaseConnection:(BOOL)connection
{
  if (self)
  {
    v3 = 8;
    if (!connection)
    {
      v3 = 0;
    }

    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFF7 | v3;
  }
}

- (void)setAllowsJournalingDuringProtectedRead:(BOOL)read
{
  if (self)
  {
    v3 = 64;
    if (!read)
    {
      v3 = 0;
    }

    self->super._options = self->super._options & 0xFFFFFFFFFFFFFFBFLL | v3;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDDatabaseTransactionContext alloc];
  journalType = self->super._journalType;
  cacheScope = self->super._cacheScope;
  options = self->super._options;
  accessibilityAssertions = self->super._accessibilityAssertions;
  statistics = self->super._statistics;

  return [(HDDatabaseTransactionContext *)&v4->super.isa _initWithOptions:journalType journalType:cacheScope cacheScope:accessibilityAssertions assertions:statistics statistics:?];
}

@end