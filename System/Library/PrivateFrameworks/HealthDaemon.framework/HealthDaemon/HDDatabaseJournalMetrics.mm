@interface HDDatabaseJournalMetrics
- (HDDatabaseJournalMetrics)init;
- (NSString)loggingDescription;
- (void)addWithClassName:(id)name size:(int64_t)size duration:(double)duration;
@end

@implementation HDDatabaseJournalMetrics

- (NSString)loggingDescription
{
  selfCopy = self;
  DatabaseJournalMetrics.loggingDescription.getter();

  v3 = sub_22911C34C();

  return v3;
}

- (void)addWithClassName:(id)name size:(int64_t)size duration:(double)duration
{
  v8 = sub_22911C35C();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  DatabaseJournalMetrics.add(className:size:duration:)(v12, size, duration);
}

- (HDDatabaseJournalMetrics)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  *(&self->super.isa + v4) = sub_2289B21B0(MEMORY[0x277D84F90]);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(HDDatabaseJournalMetrics *)&v6 init];
}

@end