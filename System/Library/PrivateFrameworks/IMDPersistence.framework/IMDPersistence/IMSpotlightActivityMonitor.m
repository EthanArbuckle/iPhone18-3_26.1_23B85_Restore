@interface IMSpotlightActivityMonitor
+ (id)sharedMonitor;
- (void)addMonitor:(id)a3;
- (void)connectionDied;
- (void)removeMonitor:(id)a3;
- (void)searchableItemsDeletedWithIdentifiers:(id)a3 forDomainIdentifier:(id)a4 context:(id)a5;
- (void)searchableItemsDidUpdateWithIdentifiers:(id)a3 forDomainIdentifier:(id)a4 context:(id)a5;
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
  v2 = self;
  sub_1B7CCC0C4();
}

- (void)addMonitor:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  swift_unknownObjectRetain();
  v5 = self;
  os_unfair_lock_lock((v4 + 44));
  sub_1B7CCD6D4((v4 + 16));
  os_unfair_lock_unlock((v4 + 44));

  swift_unknownObjectRelease();
}

- (void)removeMonitor:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  swift_unknownObjectRetain();
  v5 = self;
  os_unfair_lock_lock((v4 + 44));
  sub_1B7CCD6B8((v4 + 16));
  os_unfair_lock_unlock((v4 + 44));

  swift_unknownObjectRelease();
}

- (void)searchableItemsDidUpdateWithIdentifiers:(id)a3 forDomainIdentifier:(id)a4 context:(id)a5
{
  v7 = sub_1B7CFECE0();
  v8 = sub_1B7CFEA60();
  v10 = v9;
  v11 = a5;
  v12 = self;
  sub_1B7CCCF70(v12, v7, v8, v10, v11);
}

- (void)searchableItemsDeletedWithIdentifiers:(id)a3 forDomainIdentifier:(id)a4 context:(id)a5
{
  v8 = sub_1B7CFECE0();
  if (a4)
  {
    v9 = sub_1B7CFEA60();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = a5;
  v12 = self;
  sub_1B7CCD2E0(v12, v8, v9, a4, v11);

  swift_bridgeObjectRelease_n();
}

@end