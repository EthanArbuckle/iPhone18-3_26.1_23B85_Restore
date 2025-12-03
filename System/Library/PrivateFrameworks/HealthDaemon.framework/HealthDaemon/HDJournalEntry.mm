@interface HDJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDJournalEntry)initWithCoder:(id)coder;
- (NSString)entryClassName;
@end

@implementation HDJournalEntry

- (NSString)entryClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (HDJournalEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HDJournalEntry;
  return [(HDJournalEntry *)&v4 init];
}

@end