@interface HMDEventCounterGroupBridge
- (HMDEventCounterGroupBridge)initWithContext:(id)context serializedEventCounters:(id)counters uptimeProvider:(id)provider;
- (NSDictionary)eventCounters;
- (double)durationForCounter:(id)counter;
- (double)durationForCounter:(id)counter forDate:(id)date;
- (id)dateQueryBlock;
- (id)eventCountersForDate:(id)date;
- (int64_t)fetchEventCounterForEventName:(id)name;
- (int64_t)fetchEventCounterForEventName:(id)name forDate:(id)date;
- (int64_t)fetchMaxValueForStatisticsName:(id)name;
- (int64_t)summedEventCounters;
- (int64_t)summedEventCountersForDate:(id)date;
- (void)addValue:(int64_t)value toStatisticsName:(id)name;
- (void)incrementEventCounterForEventName:(id)name withValue:(int64_t)value;
- (void)iterateCountersUsingBlock:(id)block;
- (void)pauseDurationCounter:(id)counter;
- (void)resumeDurationCounter:(id)counter;
@end

@implementation HMDEventCounterGroupBridge

- (id)dateQueryBlock
{
  v2 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v5[4] = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_25322F120;
  v5[3] = &block_descriptor_4;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)incrementEventCounterForEventName:(id)name withValue:(int64_t)value
{
  sub_253CD0968();
  v5 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  sub_253CD0338();

  context = [(HMDEventCounterGroup *)selfCopy context];
  if (context)
  {
    [(HMDEventCounterContext *)context counterChanged];
    swift_unknownObjectRelease();
  }
}

- (void)resumeDurationCounter:(id)counter
{
  sub_253CD0968();
  v4 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  sub_253CD0328();
}

- (void)pauseDurationCounter:(id)counter
{
  sub_253CD0968();
  v4 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  sub_253CD0318();

  context = [(HMDEventCounterGroup *)selfCopy context];
  if (context)
  {
    [(HMDEventCounterContext *)context counterChanged];
    swift_unknownObjectRelease();
  }
}

- (void)addValue:(int64_t)value toStatisticsName:(id)name
{
  sub_253CD0968();
  v5 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  sub_253CD03D8();

  context = [(HMDEventCounterGroup *)selfCopy context];
  if (context)
  {
    [(HMDEventCounterContext *)context counterChanged];
    swift_unknownObjectRelease();
  }
}

- (int64_t)fetchEventCounterForEventName:(id)name
{
  v5 = sub_253CCFEE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  nameCopy = name;
  selfCopy = self;
  v11();
  v14 = sub_253CCFE98();
  (*(v6 + 8))(v9, v5);
  v15 = [(HMDEventCounterGroupBridge *)selfCopy fetchEventCounterForEventName:nameCopy forDate:v14];

  return v15;
}

- (int64_t)fetchEventCounterForEventName:(id)name forDate:(id)date
{
  v5 = sub_253CCFEE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CD0968();
  sub_253CCFEA8();
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  v12 = sub_253CD03C8();
  LOBYTE(self) = v13;

  (*(v6 + 8))(v9, v5);

  if (self)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

- (double)durationForCounter:(id)counter
{
  v5 = sub_253CCFEE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  counterCopy = counter;
  selfCopy = self;
  v11();
  v14 = sub_253CCFE98();
  (*(v6 + 8))(v9, v5);
  [(HMDEventCounterGroupBridge *)selfCopy durationForCounter:counterCopy forDate:v14];
  v16 = v15;

  return v16;
}

- (double)durationForCounter:(id)counter forDate:(id)date
{
  v5 = sub_253CCFEE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CD0968();
  sub_253CCFEA8();
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  v12 = COERCE_DOUBLE(sub_253CD0418());
  LOBYTE(self) = v13;

  (*(v6 + 8))(v9, v5);

  result = v12;
  if (self)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)fetchMaxValueForStatisticsName:(id)name
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  sub_253CD0968();
  v13 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v15 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v14 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  selfCopy = self;
  v15();
  sub_253CD0358();

  (*(v5 + 8))(v8, v4);
  v17 = sub_253CD05B8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {

    sub_253230D6C(v12);
    return 0;
  }

  else
  {
    v20 = sub_253CD0588();

    (*(v18 + 8))(v12, v17);
    return v20;
  }
}

- (NSDictionary)eventCounters
{
  v3 = sub_253CCFEE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v8 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  selfCopy = self;
  v9();
  v11 = sub_253CCFE98();
  (*(v4 + 8))(v7, v3);
  v12 = [(HMDEventCounterGroupBridge *)selfCopy eventCountersForDate:v11];

  sub_253230D20();
  sub_253CD08D8();

  v13 = sub_253CD08B8();

  return v13;
}

- (id)eventCountersForDate:(id)date
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v9 = OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup;
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  selfCopy = self;
  v12 = sub_253CD03F8();
  sub_25322EA0C(v12);
  v14 = v13;

  v15 = *(self + v9);
  v16 = sub_253CD0438();
  sub_25322EBF0(v16);
  v18 = v17;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v14;
  sub_2532308C0(v18, sub_253230550, 0, isUniquelyReferenced_nonNull_native, &v23);

  (*(v5 + 8))(v8, v4);
  sub_253230D20();
  v20 = sub_253CD08B8();

  return v20;
}

- (int64_t)summedEventCounters
{
  v3 = sub_253CCFEE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v8 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  selfCopy = self;
  v9();
  v11 = sub_253CCFE98();
  (*(v4 + 8))(v7, v3);
  v12 = [(HMDEventCounterGroupBridge *)selfCopy summedEventCountersForDate:v11];

  return v12;
}

- (int64_t)summedEventCountersForDate:(id)date
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  selfCopy = self;
  v10 = sub_253230280();

  (*(v5 + 8))(v8, v4);
  return v10;
}

- (void)iterateCountersUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_253230B5C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (HMDEventCounterGroupBridge)initWithContext:(id)context serializedEventCounters:(id)counters uptimeProvider:(id)provider
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end