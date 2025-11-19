@interface HDJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDJournalEntry)initWithCoder:(id)a3;
- (NSString)entryClassName;
@end

@implementation HDJournalEntry

- (NSString)entryClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (HDJournalEntry)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HDJournalEntry;
  return [(HDJournalEntry *)&v4 init];
}

@end