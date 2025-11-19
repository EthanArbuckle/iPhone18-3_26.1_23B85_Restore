@interface FIUIDepthFormatter
- (FIUIDepthFormatter)init;
- (FIUIDepthFormatter)initWithUnitManager:(id)a3;
- (id)formatGoalValueForDive:(id)a3;
- (id)formatMaxDepthFromWorkout:(id)a3;
- (id)formatUnderwaterTime:(double)a3;
- (id)formatWaterTemperatureRangeWithLower:(double)a3 upper:(double)a4;
- (id)formatWaterTemperatureValue:(double)a3;
- (id)formatZeroDepth;
@end

@implementation FIUIDepthFormatter

- (FIUIDepthFormatter)initWithUnitManager:(id)a3
{
  v3 = a3;
  v4 = sub_1E5D8934C(v3);

  return v4;
}

- (id)formatWaterTemperatureValue:(double)a3
{
  v4 = sub_1E5DA906C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5DA8FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x1E6999C20], v4);
  v12 = self;
  sub_1E5DA902C();
  (*(v9 + 104))(v11, *MEMORY[0x1E6999C08], v8);
  sub_1E5DA8F7C();
  (*(v9 + 8))(v11, v8);

  v13 = sub_1E5DA911C();

  return v13;
}

- (id)formatWaterTemperatureRangeWithLower:(double)a3 upper:(double)a4
{
  v5 = sub_1E5DA906C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5DA901C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(&self->super.isa + OBJC_IVAR___FIUIDepthFormatter_depthFormatter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AC10);
  v13 = *MEMORY[0x1E6999C20];
  v14 = *(v6 + 104);
  v14(v8, v13, v5);
  v17[0] = self;
  sub_1E5DA902C();
  v14(v8, v13, v5);
  sub_1E5DA902C();
  (*(v10 + 104))(v12, *MEMORY[0x1E6999C10], v9);
  sub_1E5DA8F9C();
  (*(v10 + 8))(v12, v9);

  v15 = sub_1E5DA911C();

  return v15;
}

- (id)formatUnderwaterTime:(double)a3
{
  v3 = self;
  sub_1E5DA8F8C();

  v4 = sub_1E5DA911C();

  return v4;
}

- (id)formatMaxDepthFromWorkout:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = FIUIDepthFormatter.formatMaxDepth(from:)();

  return v6;
}

- (id)formatZeroDepth
{
  v2 = self;
  v3 = FIUIDepthFormatter.formatZeroDepth()();

  return v3;
}

- (id)formatGoalValueForDive:(id)a3
{
  v3 = [(FIUIDepthFormatter *)self formatMaxDepthFromWorkout:a3];

  return v3;
}

- (FIUIDepthFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end