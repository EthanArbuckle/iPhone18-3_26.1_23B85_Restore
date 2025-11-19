@interface MockAlarmStorage
- (_TtC11MobileTimer16MockAlarmStorage)init;
- (void)foo;
@end

@implementation MockAlarmStorage

- (void)foo
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F900, qword_1B20B9C10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B20B8E70;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0xD000000000000019;
  *(v2 + 40) = 0x80000001B20D4210;
  sub_1B20A9FF4();
}

- (_TtC11MobileTimer16MockAlarmStorage)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MockAlarmStorage();
  return [(MockAlarmStorage *)&v3 init];
}

@end