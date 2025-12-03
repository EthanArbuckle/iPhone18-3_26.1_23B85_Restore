@interface IMSpotlightActivityMonitor
+ (id)sharedMonitor;
- (void)addMonitor:(id)monitor;
- (void)connectionDied;
- (void)removeMonitor:(id)monitor;
- (void)searchableItemsDeletedWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context;
- (void)searchableItemsDidUpdateWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context;
@end

@implementation IMSpotlightActivityMonitor

+ (id)sharedMonitor
{
  if (qword_1EBA51648 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBA53868;

  return v3;
}

- (void)connectionDied
{
  selfCopy = self;
  sub_1B7CCC0C4();
}

- (void)addMonitor:(id)monitor
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock((v4 + 44));
  sub_1B7CCD6D4((v4 + 16));
  os_unfair_lock_unlock((v4 + 44));

  swift_unknownObjectRelease();
}

- (void)removeMonitor:(id)monitor
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock((v4 + 44));
  sub_1B7CCD6B8((v4 + 16));
  os_unfair_lock_unlock((v4 + 44));

  swift_unknownObjectRelease();
}

- (void)searchableItemsDidUpdateWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context
{
  v7 = sub_1B7CFECE0();
  v8 = sub_1B7CFEA60();
  v10 = v9;
  contextCopy = context;
  selfCopy = self;
  sub_1B7CCCF70(selfCopy, v7, v8, v10, contextCopy);
}

- (void)searchableItemsDeletedWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context
{
  v8 = sub_1B7CFECE0();
  if (identifier)
  {
    v9 = sub_1B7CFEA60();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1B7CCD2E0(selfCopy, v8, v9, identifier, contextCopy);

  swift_bridgeObjectRelease_n();
}

@end