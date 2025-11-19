@interface ObservableJournal
- (void)contextObjectsDidChangeWithNotification:(id)a3;
@end

@implementation ObservableJournal

- (void)contextObjectsDidChangeWithNotification:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF748, &qword_25575BD20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  if (a3)
  {
    sub_25574EB70();
    v8 = sub_25574EBA0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_25574EBA0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_2556FDF64(v7);

  sub_255674B20(v7, &qword_27F7BF748, &qword_25575BD20);
}

@end