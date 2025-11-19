@interface HMDEventCounterGroupBridge
- (HMDEventCounterGroupBridge)initWithContext:(id)a3 serializedEventCounters:(id)a4 uptimeProvider:(id)a5;
- (NSDictionary)eventCounters;
- (double)durationForCounter:(id)a3;
- (double)durationForCounter:(id)a3 forDate:(id)a4;
- (id)dateQueryBlock;
- (id)eventCountersForDate:(id)a3;
- (int64_t)fetchEventCounterForEventName:(id)a3;
- (int64_t)fetchEventCounterForEventName:(id)a3 forDate:(id)a4;
- (int64_t)fetchMaxValueForStatisticsName:(id)a3;
- (int64_t)summedEventCounters;
- (int64_t)summedEventCountersForDate:(id)a3;
- (void)addValue:(int64_t)a3 toStatisticsName:(id)a4;
- (void)incrementEventCounterForEventName:(id)a3 withValue:(int64_t)a4;
- (void)iterateCountersUsingBlock:(id)a3;
- (void)pauseDurationCounter:(id)a3;
- (void)resumeDurationCounter:(id)a3;
@end

@implementation HMDEventCounterGroupBridge

- (void)incrementEventCounterForEventName:(id)a3 withValue:(int64_t)a4
{
  sub_22A4DD5EC();
  v5 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v7 = self;
  sub_22A4DBE0C();

  v6 = [(HMDEventCounterGroup *)v7 context];
  if (v6)
  {
    [(HMDEventCounterContext *)v6 counterChanged];
    swift_unknownObjectRelease();
  }
}

- (id)dateQueryBlock
{
  v2 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v5[4] = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2297C51B8;
  v5[3] = &block_descriptor_38;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)resumeDurationCounter:(id)a3
{
  sub_22A4DD5EC();
  v4 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v5 = self;
  sub_22A4DBDFC();
}

- (void)pauseDurationCounter:(id)a3
{
  sub_22A4DD5EC();
  v4 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v6 = self;
  sub_22A4DBDEC();

  v5 = [(HMDEventCounterGroup *)v6 context];
  if (v5)
  {
    [(HMDEventCounterContext *)v5 counterChanged];
    swift_unknownObjectRelease();
  }
}

- (void)addValue:(int64_t)a3 toStatisticsName:(id)a4
{
  sub_22A4DD5EC();
  v5 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v7 = self;
  sub_22A4DBEBC();

  v6 = [(HMDEventCounterGroup *)v7 context];
  if (v6)
  {
    [(HMDEventCounterContext *)v6 counterChanged];
    swift_unknownObjectRelease();
  }
}

- (int64_t)fetchEventCounterForEventName:(id)a3
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v12 = a3;
  v13 = self;
  v11();
  v14 = sub_22A4DB6AC();
  (*(v6 + 8))(v9, v5);
  v15 = [(HMDEventCounterGroupBridge *)v13 fetchEventCounterForEventName:v12 forDate:v14];

  return v15;
}

- (int64_t)fetchEventCounterForEventName:(id)a3 forDate:(id)a4
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DB70C();
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v11 = self;
  v12 = sub_22A4DBEAC();
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

- (double)durationForCounter:(id)a3
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v12 = a3;
  v13 = self;
  v11();
  v14 = sub_22A4DB6AC();
  (*(v6 + 8))(v9, v5);
  [(HMDEventCounterGroupBridge *)v13 durationForCounter:v12 forDate:v14];
  v16 = v15;

  return v16;
}

- (double)durationForCounter:(id)a3 forDate:(id)a4
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DB70C();
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v11 = self;
  v12 = COERCE_DOUBLE(sub_22A4DBEFC());
  LOBYTE(self) = v13;

  (*(v6 + 8))(v9, v5);

  result = v12;
  if (self)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)fetchMaxValueForStatisticsName:(id)a3
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  sub_22A4DD5EC();
  v13 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v15 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v14 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v16 = self;
  v15();
  sub_22A4DBE3C();

  (*(v5 + 8))(v8, v4);
  v17 = sub_22A4DC09C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {

    sub_2297C6CF8(v12);
    return 0;
  }

  else
  {
    v20 = sub_22A4DC06C();

    (*(v18 + 8))(v12, v17);
    return v20;
  }
}

- (NSDictionary)eventCounters
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v8 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v10 = self;
  v9();
  v11 = sub_22A4DB6AC();
  (*(v4 + 8))(v7, v3);
  v12 = [(HMDEventCounterGroupBridge *)v10 eventCountersForDate:v11];

  sub_229678A8C();
  sub_22A4DD49C();

  v13 = sub_22A4DD47C();

  return v13;
}

- (id)eventCountersForDate:(id)a3
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  v9 = OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup;
  v10 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v11 = self;
  v12 = sub_22A4DBEDC();
  sub_2296F8234(v12);
  v14 = v13;

  v15 = *(self + v9);
  v16 = sub_22A4DBF1C();
  sub_2296F8418(v16);
  v18 = v17;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v14;
  sub_2297C6898(v18, sub_2297C6528, 0, isUniquelyReferenced_nonNull_native, &v23);

  (*(v5 + 8))(v8, v4);
  sub_229678A8C();
  v20 = sub_22A4DD47C();

  return v20;
}

- (int64_t)summedEventCounters
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v8 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v10 = self;
  v9();
  v11 = sub_22A4DB6AC();
  (*(v4 + 8))(v7, v3);
  v12 = [(HMDEventCounterGroupBridge *)v10 summedEventCountersForDate:v11];

  return v12;
}

- (int64_t)summedEventCountersForDate:(id)a3
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  v9 = self;
  v10 = sub_2297C6258();

  (*(v5 + 8))(v8, v4);
  return v10;
}

- (void)iterateCountersUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2297C6B34(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (HMDEventCounterGroupBridge)initWithContext:(id)a3 serializedEventCounters:(id)a4 uptimeProvider:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end