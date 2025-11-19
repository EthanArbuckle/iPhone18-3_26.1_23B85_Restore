@interface MetricsSequence
- (_TtC13CoreIDVShared15MetricsSequence)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MetricsSequence

- (_TtC13CoreIDVShared15MetricsSequence)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DE68);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MetricsSequence *)&v7 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15MetricsSequence__sequence);
  v5 = a3;
  v6 = self;
  os_unfair_lock_lock(v4 + 6);

  os_unfair_lock_unlock(v4 + 6);
  type metadata accessor for ImageQualityMetrics();
  v7 = sub_225CCE7F4();

  v8 = sub_225CCE444();
  [v5 encodeObject:v7 forKey:v8];
}

@end