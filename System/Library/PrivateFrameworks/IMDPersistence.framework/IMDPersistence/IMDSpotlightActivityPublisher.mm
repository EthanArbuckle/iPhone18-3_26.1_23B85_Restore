@interface IMDSpotlightActivityPublisher
+ (id)sharedPublisher;
- (IMDSpotlightActivityPublisher)init;
- (void)addActivityMonitor:(id)monitor withID:(id)d;
- (void)enumerateActivityMonitorsUsingBlock:(id)block;
- (void)removeActivityMonitorWithID:(id)d;
- (void)searchableItemsDeletedWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context;
- (void)searchableItemsDidUpdateWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context;
- (void)setQueue:(id)queue;
@end

@implementation IMDSpotlightActivityPublisher

+ (id)sharedPublisher
{
  if (qword_1EBA50CA8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBA50CB0;

  return v3;
}

- (void)setQueue:(id)queue
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMDSpotlightActivityPublisher_queue);
  *(&self->super.isa + OBJC_IVAR___IMDSpotlightActivityPublisher_queue) = queue;
  queueCopy = queue;
}

- (void)enumerateActivityMonitorsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B7CCB620(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)addActivityMonitor:(id)monitor withID:(id)d
{
  v6 = sub_1B7CFEA60();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B7CC8714(monitor, v6, v8);
  swift_unknownObjectRelease();
}

- (void)removeActivityMonitorWithID:(id)d
{
  v4 = sub_1B7CFEA60();
  v6 = v5;
  selfCopy = self;
  sub_1B7CC8AA4(v4, v6, 0);
}

- (IMDSpotlightActivityPublisher)init
{
  *(&self->super.isa + OBJC_IVAR___IMDSpotlightActivityPublisher_queue) = 0;
  v3 = OBJC_IVAR___IMDSpotlightActivityPublisher_monitors;
  v4 = sub_1B7CCB988(MEMORY[0x1E69E7CC0]);
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA53808, &qword_1B7D135A8);
  v9 = swift_allocObject();
  *(v9 + 40) = 0;
  *(v9 + 16) = v4;
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(&self->super.isa + v3) = v9;
  v11.receiver = self;
  v11.super_class = IMDSpotlightActivityPublisher;
  return [(IMDSpotlightActivityPublisher *)&v11 init];
}

- (void)searchableItemsDidUpdateWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context
{
  v7 = sub_1B7CFECE0();
  v8 = sub_1B7CFEA60();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = context;
  v15[4] = sub_1B7CCBBE8;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B7C84200;
  v15[3] = &unk_1F2F9F618;
  v12 = _Block_copy(v15);
  contextCopy = context;
  selfCopy = self;

  [(IMDSpotlightActivityPublisher *)selfCopy enumerateActivityMonitorsUsingBlock:v12];

  _Block_release(v12);
}

- (void)searchableItemsDeletedWithIdentifiers:(id)identifiers forDomainIdentifier:(id)identifier context:(id)context
{
  v8 = sub_1B7CFECE0();
  if (identifier)
  {
    identifier = sub_1B7CFEA60();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = identifier;
  v11[4] = v10;
  v11[5] = context;
  v15[4] = sub_1B7CCBB94;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B7C84200;
  v15[3] = &unk_1F2F9F9D8;
  v12 = _Block_copy(v15);
  contextCopy = context;
  selfCopy = self;

  [(IMDSpotlightActivityPublisher *)selfCopy enumerateActivityMonitorsUsingBlock:v12];

  _Block_release(v12);
}

@end