@interface MTStopwatchStorageProxy
- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)getStopwatchesWitchCompletion:(id)completion;
- (void)setSystemReady;
@end

@implementation MTStopwatchStorageProxy

- (void)getStopwatchesWitchCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_22D7EB8DC;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_22D81B4F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = self;
  selfCopy = self;
  sub_22D75D890(0, 0, v8, &unk_22D825C80, v12);
}

- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_22D81B4F8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = self;
  v18[5] = stopwatch;
  v18[6] = lap;
  v18[7] = source;
  v18[8] = sub_22D7EBBF0;
  v18[9] = v16;
  lapCopy = lap;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v14, &unk_22D825C60, v18);
}

- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_22D7EBBF0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = stopwatch;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v12, &unk_22D825C58, v16);
}

- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_22D7EBBF0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = stopwatch;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v12, &unk_22D825C50, v16);
}

- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_22D7EBBF0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = stopwatch;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v12, &unk_22D825C48, v16);
}

- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_22D7EBBF0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = stopwatch;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v12, &unk_22D825C40, v16);
}

- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_22D7EBBF0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = stopwatch;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v12, &unk_22D825C38, v16);
}

- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_22D7EB76C;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = stopwatch;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v12, &unk_22D825C30, v16);
}

- (void)setSystemReady
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_22D81B4F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_22D7BD9C8(0, 0, v6, &unk_22D825C18, v8);

  sub_22D764440(v6, &unk_27DA01FF0, &qword_22D81FC70);
}

@end