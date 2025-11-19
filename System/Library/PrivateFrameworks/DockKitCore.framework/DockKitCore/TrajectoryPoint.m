@interface TrajectoryPoint
- (_TtC11DockKitCore15TrajectoryPoint)init;
- (_TtC11DockKitCore15TrajectoryPoint)initWithTime:(double)a3 positions:(id)a4 velocities:(id)a5;
- (id)copyWithZone:(void *)a3;
@end

@implementation TrajectoryPoint

- (_TtC11DockKitCore15TrajectoryPoint)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time) = 0;
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities) = v2;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TrajectoryPoint();
  return [(TrajectoryPoint *)&v4 init];
}

- (_TtC11DockKitCore15TrajectoryPoint)initWithTime:(double)a3 positions:(id)a4 velocities:(id)a5
{
  v7 = sub_224627ED8();
  v8 = sub_224627ED8();
  v9 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions;
  v10 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time) = a3;
  *(&self->super.isa + v9) = v7;
  *(&self->super.isa + v10) = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TrajectoryPoint();
  return [(TrajectoryPoint *)&v12 init];
}

- (id)copyWithZone:(void *)a3
{
  v4 = objc_allocWithZone(type metadata accessor for TrajectoryPoint());
  v5 = self;
  v6 = [v4 init];
  *&v6[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time] = *(&v5->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time);
  *&v6[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions] = *(&v5->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions);

  v7 = *(&v5->super.isa + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities);

  *&v6[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities] = v7;

  return v6;
}

@end