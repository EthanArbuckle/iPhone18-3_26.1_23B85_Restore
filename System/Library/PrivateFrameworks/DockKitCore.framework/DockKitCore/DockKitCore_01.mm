DockKitCore::TrajectoryStatus_optional __swiftcall TrajectoryStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id TrajectoryPoint.init()()
{
  *&v0[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time] = 0;
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TrajectoryPoint();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TrajectoryPoint.__allocating_init(time:positions:velocities:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions;
  v9 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities;
  *&v7[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time] = a3;
  *&v7[v8] = a1;
  *&v7[v9] = a2;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TrajectoryPoint.init(time:positions:velocities:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions;
  v5 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities;
  *&v3[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time] = a3;
  *&v3[v4] = a1;
  *&v3[v5] = a2;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TrajectoryPoint();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_224523A10@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TrajectoryPoint();
  v4 = [objc_allocWithZone(v3) init];
  *&v4[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time] = *(v1 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time);
  *&v4[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions] = *(v1 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions);

  *&v4[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities] = *(v1 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities);

  a1[3] = v3;
  *a1 = v4;
  return result;
}

id sub_224523B78(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_224627CB8();

  return v5;
}

uint64_t sub_224523BE8()
{
  sub_224628378();
  MEMORY[0x22AA51210](0x3D656D69743CLL, 0xE600000000000000);
  sub_224627FB8();
  MEMORY[0x22AA51210](4026400, 0xE300000000000000);

  v1 = MEMORY[0x277D839F8];
  v2 = MEMORY[0x22AA51350](v0, MEMORY[0x277D839F8]);
  v4 = v3;

  MEMORY[0x22AA51210](v2, v4);

  MEMORY[0x22AA51210](4027936, 0xE300000000000000);

  v6 = MEMORY[0x22AA51350](v5, v1);
  v8 = v7;

  MEMORY[0x22AA51210](v6, v8);

  MEMORY[0x22AA51210](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_224523D48()
{
  v1 = 0x6E6F697469736F70;
  if (*v0 != 1)
  {
    v1 = 0x697469636F6C6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_224523DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452EF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224523DCC(uint64_t a1)
{
  v2 = sub_22452EBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224523E08(uint64_t a1)
{
  v2 = sub_22452EBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224523EA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452EBEC();
  sub_224628808();
  LOBYTE(v11) = 0;
  sub_224628618();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DF0);
    sub_22452EC40(&qword_27D0C8DF8);
    sub_224628648();
    v11 = *(v3 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities);
    HIBYTE(v10) = 2;
    sub_224628648();
  }

  return (*(v6 + 8))(v8, v5);
}

id TrajectoryPoint.init(from:)(void *a1)
{
  v3 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E00);
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time;
  *&v1[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time] = 0;
  v9 = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions;
  *&v1[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_positions] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities;
  *&v1[OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_velocities] = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452EBEC();
  sub_2246287F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for TrajectoryPoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18) = 0;
    sub_224628548();
    *&v1[v8] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DF0);
    v17 = 1;
    sub_22452EC40(&qword_27D0C8E08);
    sub_224628578();
    *&v1[v14] = v18;

    v17 = 2;
    sub_224628578();
    *&v1[v15] = v18;

    v12 = type metadata accessor for TrajectoryPoint();
    v16.receiver = v1;
    v16.super_class = v12;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    (*(v5 + 8))(v7, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_224524434@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t ActuatorLimit.name.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActuatorLimit.init(name:minPosition:maxPosition:maxSpeed:)(DockKitCore::ActuatorLimit *__return_ptr retstr, Swift::String name, Swift::Double minPosition, Swift::Double maxPosition, Swift::Double maxSpeed)
{
  if (maxSpeed >= 0.0)
  {
    retstr->name = name;
    retstr->minPosition = minPosition;
    retstr->maxPosition = maxPosition;
    retstr->maxSpeed = maxSpeed;
  }

  else
  {

    sub_22452ECAC();
    swift_allocError();
    *v5 = 0xD00000000000001CLL;
    *(v5 + 8) = 0x8000000224636D00;
    *(v5 + 16) = 22;
    swift_willThrow();
  }
}

uint64_t CameraLimit.model.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore11CameraLimit_model);

  return v1;
}

id CameraLimit.__allocating_init(model:camera:minPosition:maxPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC11DockKitCore11CameraLimit_model];
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v15[OBJC_IVAR____TtC11DockKitCore11CameraLimit_camera] = a3;
  v17 = &v15[OBJC_IVAR____TtC11DockKitCore11CameraLimit_minPosition];
  *v17 = a4;
  v17[8] = a5 & 1;
  v18 = &v15[OBJC_IVAR____TtC11DockKitCore11CameraLimit_maxPosition];
  *v18 = a6;
  v18[8] = a7 & 1;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id CameraLimit.init(model:camera:minPosition:maxPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC11DockKitCore11CameraLimit_model];
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v7[OBJC_IVAR____TtC11DockKitCore11CameraLimit_camera] = a3;
  v17 = &v7[OBJC_IVAR____TtC11DockKitCore11CameraLimit_minPosition];
  *v17 = a4;
  v17[8] = a5 & 1;
  v18 = &v7[OBJC_IVAR____TtC11DockKitCore11CameraLimit_maxPosition];
  *v18 = a6;
  v18[8] = a7 & 1;
  v20.receiver = v7;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

Swift::Void __swiftcall CameraLimit.encode(with:)(NSCoder with)
{
  v3 = sub_224627CB8();
  v4 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_224628008();
  v6 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore11CameraLimit_minPosition + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_224627FA8();
  }

  v8 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore11CameraLimit_maxPosition + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_224627FA8();
  }

  v10 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id CameraLimit.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22452F02C();

  return v4;
}

id CameraLimit.init(coder:)(void *a1)
{
  v2 = sub_22452F02C();

  return v2;
}

id CameraLimit.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_224524B14()
{
  sub_224627D78();
}

uint64_t sub_224524BE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22452F9CC();
  *a1 = result;
  return result;
}

void sub_224524C10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x3120656E6F685069;
  v4 = 0xEE00696E696D2032;
  v5 = 0xEE00696E696D2033;
  if (v2 == 4)
  {
    v5 = 0xE900000000000033;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xED00006F72502032;
  v7 = 0x3120656E6F685069;
  if (v2 != 1)
  {
    v7 = 0xD000000000000011;
    v6 = 0x8000000224634FA0;
  }

  if (*v1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0xE900000000000032;
  }

  if (*v1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0x3120656E6F685069;
  }

  if (*v1 <= 2u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

DockKitCore::TrajectoryCommand::Animation_optional __swiftcall TrajectoryCommand.Animation.init(rawValue:)(DockKitCore::TrajectoryCommand::Animation_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= DockKitCore_TrajectoryCommand_Animation_unknownDefault)
  {
    value = DockKitCore_TrajectoryCommand_Animation_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

DockKitCore::TrajectoryCommand::Priority_optional __swiftcall TrajectoryCommand.Priority.init(rawValue:)(DockKitCore::TrajectoryCommand::Priority_optional rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue.value);
  if ((rawValue.value & 0xFC) != 0)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_224524DF0()
{
  sub_224628778();
  sub_224628798();
  return sub_2246287C8();
}

uint64_t sub_224524E68()
{
  sub_224628778();
  sub_224628798();
  return sub_2246287C8();
}

DockKitCore::TrajectoryCommand::TrajectoryPoint __swiftcall TrajectoryCommand.TrajectoryPoint.init()()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

DockKitCore::TrajectoryCommand::TrajectoryPoint __swiftcall TrajectoryCommand.TrajectoryPoint.init(time:position:velocity:)(Swift::Double time, Swift::Double position, Swift::Double velocity)
{
  *v3 = time;
  v3[1] = position;
  v3[2] = velocity;
  result.velocity = velocity;
  result.position = position;
  result.time = time;
  return result;
}

uint64_t sub_22452501C()
{
  v1 = 0x6E6F697469736F70;
  if (*v0 != 1)
  {
    v1 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_224525070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452FA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224525098(uint64_t a1)
{
  v2 = sub_22452F3D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245250D4(uint64_t a1)
{
  v2 = sub_22452F3D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrajectoryCommand.TrajectoryPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452F3D8();
  sub_224628808();
  v11 = 0;
  sub_224628618();
  if (!v1)
  {
    v10 = 1;
    sub_224628618();
    v9 = 2;
    sub_224628618();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TrajectoryCommand.TrajectoryPoint.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452F3D8();
  sub_2246287F8();
  if (!v2)
  {
    v16[15] = 0;
    sub_224628548();
    v10 = v9;
    v16[14] = 1;
    sub_224628548();
    v13 = v12;
    v16[13] = 2;
    sub_224628548();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t TrajectoryCommand.Trajectory.points.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

DockKitCore::TrajectoryCommand::Trajectory __swiftcall TrajectoryCommand.Trajectory.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v0 = v1;
  *(v0 + 23) = 0;
  return result;
}

uint64_t sub_224525624()
{
  v1 = *v0;
  v2 = 0x73746E696F70;
  v3 = 0x65766974616C6572;
  v4 = 0x6E6F697469736F70;
  if (v1 != 4)
  {
    v4 = 0x797469636F6C6576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0x726F746175746361;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2245256F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452FB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224525720(uint64_t a1)
{
  v2 = sub_22452F42C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22452575C(uint64_t a1)
{
  v2 = sub_22452F42C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrajectoryCommand.Trajectory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v12 = v1[2];
  v9 = *(v1 + 24);
  v11[4] = *(v1 + 25);
  v11[5] = v9;
  v11[3] = *(v1 + 26);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452F42C();

  sub_224628808();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E60);
  sub_22452F480();
  sub_224628648();
  if (v2)
  {
  }

  else
  {

    v17 = 1;
    sub_224628618();
    v16 = 2;
    sub_224628638();
    v15 = 3;
    sub_224628608();
    v14 = 4;
    sub_224628608();
    v13 = 5;
    sub_224628608();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TrajectoryCommand.Trajectory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452F42C();
  sub_2246287F8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8E60);
    v24 = 0;
    sub_22452F558();
    sub_224628578();
    v10 = v25;
    v23 = 1;
    sub_224628548();
    v12 = v11;
    v22 = 2;
    v13 = sub_224628568();
    v21 = 3;
    v18 = sub_224628538();
    v20 = 4;
    v17 = sub_224628538();
    v19 = 5;
    v14 = sub_224628538();
    v17 &= 1u;
    v18 &= 1u;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    v15 = v17;
    *(a2 + 24) = v18;
    *(a2 + 25) = v15;
    *(a2 + 26) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

DockKitCore::TrajectoryCommand::Status_optional __swiftcall TrajectoryCommand.Status.init(rawValue:)(DockKitCore::TrajectoryCommand::Status_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= DockKitCore_TrajectoryCommand_Status_unknownDefault)
  {
    value = DockKitCore_TrajectoryCommand_Status_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

_BYTE *TrajectoryCommand.Progress.init(type:status:percent:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t TrajectoryCommand.Progress.init(nsdata:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_224626F68();
  swift_allocObject();
  sub_224626F58();
  v4 = a1;
  v5 = sub_224627038();
  v7 = v6;

  sub_22452F630();
  sub_224626F48();

  sub_22452F684(v5, v7);

  *a2 = v9;
  *(a2 + 2) = v10;
  return result;
}

uint64_t TrajectoryCommand.Progress.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_224627058();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22452F6D8(a1, a2);
  sub_224627068();
  v10 = sub_224627048();
  if ((v10 & 0x100) != 0 || (TrajectoryCommand.Animation.init(rawValue:)(v10), v11 = v18, v18 == 9) || (v12 = sub_224627048(), (v12 & 0x100) != 0) || v12 >= 6u)
  {
    (*(v7 + 8))(v9, v6);
    result = sub_22452F684(a1, a2);
    goto LABEL_8;
  }

  v13 = v12;
  v14 = sub_224627048();
  sub_22452F684(a1, a2);
  result = (*(v7 + 8))(v9, v6);
  if ((v14 & 0x100) != 0)
  {
LABEL_8:
    v16 = 1536;
    goto LABEL_9;
  }

  v16 = (v11 | (v13 << 8)) | (v14 << 16);
LABEL_9:
  *a3 = v16;
  *(a3 + 2) = BYTE2(v16);
  return result;
}

NSData_optional __swiftcall TrajectoryCommand.Progress.encode()()
{
  sub_224626F98();
  swift_allocObject();
  sub_224626F88();
  sub_22452F72C();
  v0 = sub_224626F78();
  v2 = v1;

  v3 = sub_224627028();
  sub_22452F684(v0, v2);
  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t TrajectoryCommand.Progress.description.getter()
{
  sub_224628378();

  v0 = sub_224628668();
  MEMORY[0x22AA51210](v0);

  MEMORY[0x22AA51210](0x3D73757461745320, 0xE800000000000000);
  v1 = sub_224628668();
  MEMORY[0x22AA51210](v1);

  return 0x3D65707954;
}

uint64_t sub_2245264C8()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x746E6563726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_224526518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452FD40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224526540(uint64_t a1)
{
  v2 = sub_22452F780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22452657C(uint64_t a1)
{
  v2 = sub_22452F780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrajectoryCommand.Progress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11[2] = v1[2];
  v12 = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452F780();
  sub_224628808();
  v17 = v8;
  v16 = 0;
  sub_22452F7D4();
  sub_224628648();
  if (!v2)
  {
    v15 = v12;
    v14 = 1;
    sub_22452F828();
    sub_224628648();
    v13 = 2;
    sub_224628658();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TrajectoryCommand.Progress.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452F780();
  sub_2246287F8();
  if (!v2)
  {
    v17 = 0;
    sub_22452F87C();
    sub_224628578();
    v9 = v18;
    v15 = 1;
    sub_22452F8D0();
    sub_224628578();
    v11 = v16;
    v14 = 2;
    v12 = sub_224628588();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2245269B4()
{
  v1 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_stamp;
  v2 = sub_224627118();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

DockKitCore::TrajectoryCommand __swiftcall TrajectoryCommand.init(type:priority:trajectories:)(DockKitCore::TrajectoryCommand::Animation type, DockKitCore::TrajectoryCommand::Priority_optional priority, Swift::OpaquePointer_optional trajectories)
{
  v4 = *priority.value;
  v5 = MEMORY[0x277D84F90];
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v3 = *type;
  if (trajectories.value._rawValue)
  {
    rawValue = trajectories.value._rawValue;
  }

  else
  {
    rawValue = v5;
  }

  *(v3 + 1) = v4;
  *(v3 + 8) = rawValue;
  LOBYTE(result.trajectories._rawValue) = priority;
  result.type = type;
  return result;
}

DockKitCore::TrajectoryCommand_optional __swiftcall TrajectoryCommand.init(nsdata:)(NSData nsdata)
{
  v3 = v1;
  sub_224626F68();
  swift_allocObject();
  sub_224626F58();
  v4 = nsdata.super.isa;
  v5 = sub_224627038();
  v7 = v6;

  sub_22452F924();
  sub_224626F48();

  sub_22452F684(v5, v7);

  *v3 = v11;
  v3[1] = v12;
  result.value.trajectories._rawValue = v9;
  *&result.value.type = v8;
  result.is_nil = v10;
  return result;
}

NSData_optional __swiftcall TrajectoryCommand.encode()()
{
  sub_224626F98();
  swift_allocObject();
  sub_224626F88();
  sub_22452F978();
  v0 = sub_224626F78();
  v2 = v1;

  v3 = sub_224627028();
  sub_22452F684(v0, v2);
  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t TrajectoryCommand.encode()()
{
  LOBYTE(v1) = *v0;
  LODWORD(v2) = *(v0 + 1);
  v3 = *(v0 + 8);
  v4 = sub_22452AD20(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    goto LABEL_118;
  }

  while (1)
  {
    *(v4 + 2) = v8;
    v4[v6 + 32] = v1;
    v1 = v6 + 2;
    if (v7 < (v6 + 2))
    {
      v4 = sub_22452AD20((v5 > 1), v6 + 2, 1, v4);
    }

    v9 = (v2 + 1);
    *(v4 + 2) = v1;
    v4[v8 + 32] = v2 + 1;
    v2 = *(v3 + 16);
    if (v2 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v4 + 3);
      v8 = v6 + 3;
      if ((v6 + 3) <= (v9 >> 1))
      {
        goto LABEL_6;
      }
    }

    v4 = sub_22452AD20((v9 > 1), v8, 1, v4);
LABEL_6:
    *(v4 + 2) = v8;
    v4[v1 + 32] = v2;
    v54 = *(v3 + 16);
    if (!v54)
    {
      break;
    }

    v6 = 0;
    v55 = v3 + 32;
    v53 = v3;
    while (1)
    {
      v5 = *(v3 + 16);
      if (v6 >= v5)
      {
        goto LABEL_111;
      }

      v10 = v55 + 32 * v6;
      v8 = *v10;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *(v10 + 25);
      v14 = *(v10 + 26);
      v15 = *(v10 + 24);

      v56 = v6;
      if (v15)
      {
        if (!v13)
        {
          v19 = 0;
          if (v14)
          {
            LOBYTE(v1) = 5;
          }

          else
          {
            LOBYTE(v1) = 1;
          }

          goto LABEL_26;
        }

        v16 = v14 == 0;
        v17 = 3;
        v18 = 7;
      }

      else
      {
        if ((v13 & 1) == 0)
        {
          v19 = 0;
          if (v14)
          {
            LOBYTE(v1) = 4;
          }

          else
          {
            LOBYTE(v1) = 0;
          }

          goto LABEL_26;
        }

        v16 = v14 == 0;
        v17 = 2;
        v18 = 6;
      }

      LOBYTE(v1) = v16 ? v17 : v18;
      v19 = 1;
LABEL_26:
      v21 = *(v4 + 2);
      v20 = *(v4 + 3);
      v2 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v6 = v19;
        v4 = sub_22452AD20((v20 > 1), v21 + 1, 1, v4);
        v19 = v6;
      }

      *(v4 + 2) = v2;
      v5 = &v4[v21];
      v4[v21 + 32] = v1;
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (v12 > 0xFF)
      {
        break;
      }

      v22 = *(v4 + 3);
      v1 = v21 + 2;
      if ((v21 + 2) > (v22 >> 1))
      {
        v6 = v19;
        v4 = sub_22452AD20((v22 > 1), v21 + 2, 1, v4);
        v19 = v6;
      }

      *(v4 + 2) = v1;
      v4[v2 + 32] = v12;
      v23 = 60.0;
      if (v11 <= 60.0)
      {
        v23 = v11;
      }

      v24 = v23 * 1000.0;
      v5 = (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
      if (v11 < 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v24;
      }

      if (v11 >= 0.0 && (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_114;
      }

      if (v25 <= -1.0)
      {
        goto LABEL_115;
      }

      v5 = 0x40F0000000000000;
      if (v25 >= 65536.0)
      {
        goto LABEL_116;
      }

      v26 = *(v4 + 3);
      v27 = v26 >> 1;
      v2 = v21 + 3;
      if ((v26 >> 1) < (v21 + 3))
      {
        v6 = v19;
        v4 = sub_22452AD20((v26 > 1), v21 + 3, 1, v4);
        v19 = v6;
        v26 = *(v4 + 3);
        v27 = v26 >> 1;
      }

      *(v4 + 2) = v2;
      v4[v1 + 32] = v25 >> 8;
      v1 = v21 + 4;
      if (v27 < (v21 + 4))
      {
        v6 = v19;
        v4 = sub_22452AD20((v26 > 1), v21 + 4, 1, v4);
        v19 = v6;
      }

      *(v4 + 2) = v1;
      v5 = &v4[v2];
      v4[v2 + 32] = v25;
      v28 = *(v8 + 16);
      if (v28 > 0xFF)
      {
        goto LABEL_117;
      }

      v29 = *(v4 + 3);
      v2 = v21 + 5;
      if ((v21 + 5) > (v29 >> 1))
      {
        v6 = v19;
        v4 = sub_22452AD20((v29 > 1), v21 + 5, 1, v4);
        v19 = v6;
      }

      *(v4 + 2) = v2;
      v4[v1 + 32] = v28;
      v30 = *(v8 + 16);
      if (v30)
      {
        v31 = 0;
        v3 = v8 + 32;
        while (1)
        {
          v5 = *(v8 + 16);
          if (v31 >= v5)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v32 = (v3 + 24 * v31);
          v33 = v32[1];
          v34 = v32[2];
          v35 = *v32 * 255.0;
          if (v35 > 255.0)
          {
            v36 = 255.0;
          }

          else
          {
            v36 = *v32 * 255.0;
          }

          v5 = COERCE_UNSIGNED_INT64(fabs(*v32 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
          if (v35 < 0.0)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = v36;
          }

          v38 = v35 >= 0.0 && v35 <= 255.0;
          if (v38 && (v5 & 1) != 0)
          {
            goto LABEL_102;
          }

          if (v37 <= -1.0)
          {
            goto LABEL_103;
          }

          v5 = 0x4070000000000000;
          if (v37 >= 256.0)
          {
            goto LABEL_104;
          }

          v40 = *(v4 + 2);
          v39 = *(v4 + 3);
          v1 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v2 = v19;
            v4 = sub_22452AD20((v39 > 1), v40 + 1, 1, v4);
            v19 = v2;
          }

          *(v4 + 2) = v1;
          v4[v40 + 32] = v37;
          if (!v19)
          {
            break;
          }

          while (v33 > 31.4159265)
          {
            v33 = v33 + -6.28318531;
          }

          while (v33 < -31.4159265)
          {
            v33 = v33 + 6.28318531;
          }

          v41 = v33 * 1000.0;
          v5 = *&v41 & 0x7FFFFFFFFFFFFFFFLL;
          if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_105;
          }

          if (v41 <= -32769.0)
          {
            goto LABEL_106;
          }

          if (v41 >= 32768.0)
          {
            goto LABEL_108;
          }

          v42 = *(v4 + 3);
          v43 = v42 >> 1;
          v2 = v40 + 2;
          if ((v42 >> 1) < (v40 + 2))
          {
            v49 = v19;
            v4 = sub_22452AD20((v42 > 1), v40 + 2, 1, v4);
            v19 = v49;
            v42 = *(v4 + 3);
            v43 = v42 >> 1;
          }

          v6 = v41;
          *(v4 + 2) = v2;
          v4[v1 + 32] = BYTE1(v6);
          v1 = v40 + 3;
          if (v43 < (v40 + 3))
          {
            v50 = v19;
            v4 = sub_22452AD20((v42 > 1), v1, 1, v4);
            v19 = v50;
          }

          *(v4 + 2) = v1;
          v4[v2 + 32] = v6;
          if (v14)
          {
            goto LABEL_85;
          }

LABEL_51:
          if (++v31 == v30)
          {

            v3 = v53;
            goto LABEL_9;
          }
        }

        if (!v14)
        {
          goto LABEL_51;
        }

LABEL_85:
        if (v34 <= 31.4159265)
        {
          v44 = v34;
        }

        else
        {
          v44 = 31.4159265;
        }

        v45 = v44 * 1000.0;
        v5 = (*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
        if (v34 < -31.4159265)
        {
          v46 = -31415.9265;
        }

        else
        {
          v46 = v45;
        }

        if (v34 >= -31.4159265 && (*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_107;
        }

        if (v46 <= -32769.0)
        {
          goto LABEL_109;
        }

        if (v46 >= 32768.0)
        {
          goto LABEL_110;
        }

        v47 = *(v4 + 3);
        v2 = v1 + 1;
        if (v1 >= v47 >> 1)
        {
          v6 = v19;
          v4 = sub_22452AD20((v47 > 1), v1 + 1, 1, v4);
          v19 = v6;
        }

        *(v4 + 2) = v2;
        v4[v1 + 32] = v46 >> 8;
        v48 = *(v4 + 3);
        v1 += 2;
        if (v1 > (v48 >> 1))
        {
          v6 = v19;
          v4 = sub_22452AD20((v48 > 1), v1, 1, v4);
          v19 = v6;
        }

        *(v4 + 2) = v1;
        v4[v2 + 32] = v46;
        goto LABEL_51;
      }

LABEL_9:
      v6 = v56 + 1;
      if (v56 + 1 == v54)
      {
        goto LABEL_100;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v4 = sub_22452AD20((v5 > 1), v8, 1, v4);
    v5 = *(v4 + 3);
    v7 = v5 >> 1;
  }

LABEL_100:
  v51 = sub_22453000C(v4);

  return v51;
}

char *sub_224527720@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = a1;
  *(a2 + 24) = 257;
  *(a2 + 26) = 1;
  result = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = result;
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_22452AE14((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v8;
  v9 = &v4[24 * v6];
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  v10 = v6 + 2;
  *(v9 + 4) = 0;
  if (v7 < (v6 + 2))
  {
    result = sub_22452AE14((v5 > 1), v6 + 2, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v10;
  v11 = &v4[24 * v8];
  *(v11 + 2) = xmmword_22462C910;
  *(v11 + 6) = 0;
  v12 = *(v4 + 3);
  v13 = v6 + 3;
  if ((v6 + 3) > (v12 >> 1))
  {
    result = sub_22452AE14((v12 > 1), v6 + 3, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v13;
  v14 = &v4[24 * v10];
  *(v14 + 2) = xmmword_22462C920;
  *(v14 + 6) = 0;
  v15 = *(v4 + 3);
  v16 = v6 + 4;
  if ((v6 + 4) > (v15 >> 1))
  {
    result = sub_22452AE14((v15 > 1), v6 + 4, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v16;
  v17 = &v4[24 * v13];
  *(v17 + 2) = xmmword_22462C930;
  *(v17 + 6) = 0;
  v18 = *(v4 + 3);
  v19 = v6 + 5;
  if ((v6 + 5) > (v18 >> 1))
  {
    result = sub_22452AE14((v18 > 1), v6 + 5, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v19;
  v20 = &v4[24 * v16];
  *(v20 + 2) = xmmword_22462C940;
  *(v20 + 6) = 0;
  v21 = *(v4 + 3);
  if ((v6 + 6) > (v21 >> 1))
  {
    result = sub_22452AE14((v21 > 1), v6 + 6, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v6 + 6;
  v22 = &v4[24 * v19];
  *(v22 + 5) = 0;
  *(v22 + 6) = 0;
  *(v22 + 4) = 0x3FF0000000000000;
  *a2 = v4;
  return result;
}

char *sub_22452792C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = a1;
  *(a2 + 24) = 257;
  *(a2 + 26) = 1;
  result = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = result;
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_22452AE14((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v8;
  v9 = &v4[24 * v6];
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  v10 = v6 + 2;
  *(v9 + 4) = 0;
  if (v7 < (v6 + 2))
  {
    result = sub_22452AE14((v5 > 1), v6 + 2, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v10;
  v11 = &v4[24 * v8];
  *(v11 + 2) = xmmword_22462C950;
  *(v11 + 6) = 0;
  v12 = *(v4 + 3);
  v13 = v6 + 3;
  if ((v6 + 3) > (v12 >> 1))
  {
    result = sub_22452AE14((v12 > 1), v6 + 3, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v13;
  v14 = &v4[24 * v10];
  *(v14 + 2) = xmmword_22462C960;
  *(v14 + 6) = 0;
  v15 = *(v4 + 3);
  v16 = v6 + 4;
  if ((v6 + 4) > (v15 >> 1))
  {
    result = sub_22452AE14((v15 > 1), v6 + 4, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v16;
  v17 = &v4[24 * v13];
  *(v17 + 2) = xmmword_22462C970;
  *(v17 + 6) = 0;
  v18 = *(v4 + 3);
  v19 = v6 + 5;
  if ((v6 + 5) > (v18 >> 1))
  {
    result = sub_22452AE14((v18 > 1), v6 + 5, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v19;
  v20 = &v4[24 * v16];
  *(v20 + 2) = xmmword_22462C980;
  *(v20 + 6) = 0;
  v21 = *(v4 + 3);
  if ((v6 + 6) > (v21 >> 1))
  {
    result = sub_22452AE14((v21 > 1), v6 + 6, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v6 + 6;
  v22 = &v4[24 * v19];
  *(v22 + 5) = 0;
  *(v22 + 6) = 0;
  *(v22 + 4) = 0x3FF0000000000000;
  *a2 = v4;
  return result;
}

char *sub_224527B38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = a1;
  *(a2 + 24) = 257;
  *(a2 + 26) = 1;
  result = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = result;
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_22452AE14((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v8;
  v9 = &v4[24 * v6];
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  v10 = v6 + 2;
  *(v9 + 4) = 0;
  if (v7 < (v6 + 2))
  {
    result = sub_22452AE14((v5 > 1), v6 + 2, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v10;
  v11 = &v4[24 * v8];
  *(v11 + 2) = xmmword_22462C990;
  *(v11 + 6) = 0xC000000000000000;
  v12 = *(v4 + 3);
  v13 = v6 + 3;
  if ((v6 + 3) > (v12 >> 1))
  {
    result = sub_22452AE14((v12 > 1), v6 + 3, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v13;
  v14 = &v4[24 * v10];
  *(v14 + 2) = xmmword_22462C9A0;
  *(v14 + 6) = 0x4000000000000000;
  v15 = *(v4 + 3);
  v16 = v6 + 4;
  if ((v6 + 4) > (v15 >> 1))
  {
    result = sub_22452AE14((v15 > 1), v6 + 4, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v16;
  v17 = &v4[24 * v13];
  *(v17 + 2) = xmmword_22462C9B0;
  *(v17 + 6) = 0;
  v18 = *(v4 + 3);
  v19 = v6 + 5;
  if ((v6 + 5) > (v18 >> 1))
  {
    result = sub_22452AE14((v18 > 1), v6 + 5, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v19;
  v20 = &v4[24 * v16];
  *(v20 + 2) = xmmword_22462C9C0;
  *(v20 + 6) = 0;
  v21 = *(v4 + 3);
  v22 = v6 + 6;
  if ((v6 + 6) > (v21 >> 1))
  {
    result = sub_22452AE14((v21 > 1), v6 + 6, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v22;
  v23 = &v4[24 * v19];
  *(v23 + 2) = xmmword_22462C9D0;
  *(v23 + 6) = 0;
  v24 = *(v4 + 3);
  v25 = v6 + 7;
  if ((v6 + 7) > (v24 >> 1))
  {
    result = sub_22452AE14((v24 > 1), v6 + 7, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v25;
  v26 = &v4[24 * v22];
  *(v26 + 2) = xmmword_22462C9E0;
  *(v26 + 6) = 0;
  v27 = *(v4 + 3);
  if ((v6 + 8) > (v27 >> 1))
  {
    result = sub_22452AE14((v27 > 1), v6 + 8, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v6 + 8;
  v28 = &v4[24 * v25];
  *(v28 + 5) = 0;
  *(v28 + 6) = 0;
  *(v28 + 4) = 0x3FF0000000000000;
  *a2 = v4;
  return result;
}

uint64_t sub_224527DDC()
{
  v1 = 0x797469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x6F7463656A617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_224527E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224530394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224527E60(uint64_t a1)
{
  v2 = sub_2245300E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224527E9C(uint64_t a1)
{
  v2 = sub_2245300E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrajectoryCommand.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = v1[1];
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2245300E8();
  sub_224628808();
  v19 = v8;
  v18 = 0;
  sub_22452F7D4();
  sub_224628648();
  if (!v2)
  {
    v9 = v12;
    v17 = v13;
    v16 = 1;
    sub_22453013C();
    sub_224628648();
    v14 = v9;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8F10);
    sub_224530190();
    sub_224628648();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TrajectoryCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8F28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2245300E8();
  sub_2246287F8();
  if (!v2)
  {
    v17 = 0;
    sub_22452F87C();
    sub_224628578();
    v9 = v18;
    v15 = 1;
    sub_224530268();
    sub_224628578();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8F10);
    v14 = 2;
    sub_2245302BC();
    sub_224628578();
    (*(v6 + 8))(v8, v5);
    v12 = v13[1];
    *a2 = v9;
    *(a2 + 1) = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

const char *DockKitFeatures.feature.getter()
{
  v1 = *v0;
  v2 = "dockAccessoryDaemon";
  v3 = "iTracking";
  v4 = "RemoteControl";
  if (v1 != 4)
  {
    v4 = "secureBackgroundTracking";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "dockAccessoryTools";
  if (v1 != 1)
  {
    v5 = "cinematicModeDockKit";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t DockKitFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_224628778();
  MEMORY[0x22AA51BF0](v1);
  return sub_2246287C8();
}

const char *sub_224528474()
{
  v1 = *v0;
  v2 = "dockAccessoryDaemon";
  v3 = "iTracking";
  v4 = "RemoteControl";
  if (v1 != 4)
  {
    v4 = "secureBackgroundTracking";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "dockAccessoryTools";
  if (v1 != 1)
  {
    v5 = "cinematicModeDockKit";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id AccessorySystemEvent.init(name:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  if ((a3 & 0x100000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = &v3[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header];
  *v10 = HIBYTE(v9);
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload];
  *v11 = v9 & 0xFFFFFF;
  v11[4] = 0;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id AccessorySystemEvent.init(data:name:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2245304B0(a1, a2, a3, a4);
  sub_22452F684(a1, a2);
  return v6;
}

Swift::Void __swiftcall AccessorySystemEvent.encode(with:)(NSCoder with)
{
  v3 = sub_224627CB8();
  v4 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2246287E8();
  }

  v6 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header + 1))
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_224628748();
  }

  v8 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id AccessorySystemEvent.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_224530674();

  return v4;
}

id AccessorySystemEvent.init(coder:)(void *a1)
{
  v2 = sub_224530674();

  return v2;
}

uint64_t AccessorySystemEvent.header.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header + 1))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header);
  }
}

uint64_t AccessorySystemEvent.payload.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload + 4))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload);
  }
}

char *AccessorySystemEvent.ids.getter()
{
  if ((*(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header + 1) & 1) == 0 && *(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header) > 1u)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload);
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload + 4);
  v4 = MEMORY[0x277D84F90];
  do
  {
    if (!v3 && v2 >> v1 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22452AF30(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_22452AF30((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      *&v4[8 * v6 + 32] = v1;
    }

    ++v1;
  }

  while (v1 != 24);
  return v4;
}

uint64_t AccessoryChargeState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6772616843746F4ELL;
    case 2:
      return 0x7261684320746F4ELL;
    case 1:
      return 0x676E696772616843;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

unint64_t AccessoryChargeState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_224528BD0()
{
  v1 = *v0;
  sub_224628778();
  MEMORY[0x22AA51BF0](v1);
  return sub_2246287C8();
}

uint64_t sub_224528C18()
{
  v1 = *v0;
  sub_224628778();
  MEMORY[0x22AA51BF0](v1);
  return sub_2246287C8();
}

uint64_t AccessoryBatteryState.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_name);

  return v1;
}

id AccessoryBatteryState.__allocating_init(batteryPercent:lowBattery:chargeState:name:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_batteryPercent] = a5;
  v11[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_lowBattery] = a1;
  *&v11[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_chargeState] = a2;
  v12 = &v11[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_name];
  *v12 = a3;
  v12[1] = a4;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id AccessoryBatteryState.init(batteryPercent:lowBattery:chargeState:name:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_batteryPercent] = a5;
  v5[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_lowBattery] = a1;
  *&v5[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_chargeState] = a2;
  v12 = &v5[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_name];
  *v12 = a3;
  v12[1] = a4;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_224528E30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = objc_allocWithZone(v5);
  v12 = a5(a1, a2, a3, a4);
  sub_22452F684(a1, a2);
  return v12;
}

id AccessoryBatteryState.init(data:name:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_224530918(a1, a2, a3, a4);
  sub_22452F684(a1, a2);
  return v6;
}

Swift::Void __swiftcall AccessoryBatteryState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_batteryPercent);
  v4 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeDouble:v4 forKey:v3];

  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_lowBattery);
  v6 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_chargeState);
  v8 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = sub_224627CB8();
  v10 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id AccessoryBatteryState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_224530A00();

  return v4;
}

id AccessoryBatteryState.init(coder:)(void *a1)
{
  v2 = sub_224530A00();

  return v2;
}

id _s11DockKitCore0aC4InfoCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224529354(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_224529390(uint64_t a1, void *a2)
{
  v4 = sub_224627518();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  return (*(v5 + 40))(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType, v7, v4);
}

uint64_t sub_2245294A8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_224529520(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType;
  v4 = sub_224627518();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void sub_22452961C(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov);
  *v3 = a1;
  v3[1] = a2;
}

id CameraCalibration.init()()
{
  *&v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy] = 0;
  v1 = &v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType;
  v3 = *MEMORY[0x277D213C0];
  v4 = sub_224627518();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation] = 0;
  v5 = &v0[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov];
  v6 = type metadata accessor for CameraCalibration(0);
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

id CameraCalibration.__allocating_init(fx:fy:ox:oy:referenceDimensions:portType:orientation:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  *&v51 = a6;
  v48 = a4;
  v49 = a5;
  v46 = a3;
  v44 = *&a1;
  v45 = *&a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_224627518();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v10;
  v22 = objc_allocWithZone(v10);
  v23 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx;
  v24 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy;
  v25 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox;
  v26 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy;
  v27 = *MEMORY[0x277D213C0];
  v28 = *(v19 + 104);
  v47 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType;
  v42 = v27;
  v41 = v28;
  v28(&v22[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType]);
  v43 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation;
  *&v22[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation] = 0;
  v29 = &v22[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov];
  v29->f64[0] = 0.0;
  v29->f64[1] = 0.0;
  v50 = v29;
  *&v22[v23] = a7;
  *&v22[v24] = a8;
  *&v22[v25] = a9;
  *&v22[v26] = a10;
  v30 = v44;
  v31 = v45;
  if (v46)
  {
    v30 = 0.0;
    v31 = 0.0;
  }

  v32 = &v22[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions];
  *v32 = v30;
  v32[1] = v31;
  sub_224627508();
  v33 = *(v19 + 48);
  if (v33(v17, 1, v18) == 1)
  {
    v41(v21, v42, v18);
    if (v33(v17, 1, v18) != 1)
    {
      sub_2245098A0(v17, &qword_27D0C8FA8);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
  }

  (*(v19 + 40))(&v22[v47], v21, v18);
  v34 = v51;
  *&v22[v43] = v51;
  if ((v34 - 3) > 1)
  {
    *&v37 = atan(a10 / a8);
    v51 = v37;
    v36 = a9 / a7;
  }

  else
  {
    *&v35 = atan(a9 / a7);
    v51 = v35;
    v36 = a10 / a8;
  }

  v38 = atan(v36);
  *&v39.f64[0] = v51;
  v39.f64[1] = v38;
  *v50 = vaddq_f64(v39, v39);
  v53.receiver = v22;
  v53.super_class = v52;
  return objc_msgSendSuper2(&v53, sel_init);
}

id CameraCalibration.init(fx:fy:ox:oy:referenceDimensions:portType:orientation:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  *&v51 = a6;
  v48 = a4;
  v49 = a5;
  v45 = a3;
  v43 = *&a1;
  v44 = *&a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_224627518();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx;
  v23 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy;
  v24 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox;
  v25 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy;
  v26 = *MEMORY[0x277D213C0];
  v27 = *(v19 + 104);
  v47 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType;
  v42 = v26;
  v41 = v27;
  v27(&v10[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType]);
  v46 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation;
  *&v10[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation] = 0;
  v28 = &v10[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov];
  v28->f64[0] = 0.0;
  v28->f64[1] = 0.0;
  v50 = v28;
  *&v10[v22] = a7;
  *&v10[v23] = a8;
  *&v10[v24] = a9;
  *&v10[v25] = a10;
  v29 = v43;
  v30 = v44;
  if (v45)
  {
    v29 = 0.0;
    v30 = 0.0;
  }

  v31 = &v10[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions];
  *v31 = v29;
  v31[1] = v30;
  sub_224627508();
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v41(v21, v42, v18);
    if (v32(v17, 1, v18) != 1)
    {
      sub_2245098A0(v17, &qword_27D0C8FA8);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
  }

  (*(v19 + 40))(&v10[v47], v21, v18);
  v33 = v51;
  *&v10[v46] = v51;
  if ((v33 - 3) > 1)
  {
    *&v36 = atan(a10 / a8);
    v51 = v36;
    v35 = a9 / a7;
  }

  else
  {
    *&v34 = atan(a9 / a7);
    v51 = v34;
    v35 = a10 / a8;
  }

  v37 = atan(v35);
  *&v38.f64[0] = v51;
  v38.f64[1] = v37;
  *v50 = vaddq_f64(v38, v38);
  v39 = type metadata accessor for CameraCalibration(0);
  v52.receiver = v10;
  v52.super_class = v39;
  return objc_msgSendSuper2(&v52, sel_init);
}

id CameraCalibration.init(intrinsics:referenceDimensions:portType:orientation:)(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v73 = a5;
  v67 = a4;
  v66 = *&a3;
  v65 = *&a2;
  v10 = a1[1];
  v61 = *a1;
  v55 = v10;
  v11 = a1[3];
  v56 = a1[2];
  v57 = v11;
  v12 = a1[5];
  v59 = a1[4];
  v58 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = sub_224627518();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - v23;
  v69 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx;
  *&v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx] = 0;
  v68 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy;
  *&v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy] = 0;
  *&v75 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox;
  *&v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox] = 0;
  v74 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy;
  *&v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy] = 0;
  v25 = &v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions];
  *v25 = 0.0;
  v25[1] = 0.0;
  v26 = *MEMORY[0x277D213C0];
  v27 = *(v20 + 104);
  v64 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType;
  v60 = v26;
  v62 = v27;
  v27(&v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType]);
  v63 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation;
  *&v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation] = 0;
  v28 = &v7[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov];
  v28->f64[0] = 0.0;
  v28->f64[1] = 0.0;
  v70 = v28;
  if (a1[6] & 1) != 0 || (v29 = *&v59, v30.i64[0] = __PAIR64__(HIDWORD(v56), v61), v30.i64[1] = v59, v31.i64[0] = 0x100000001, v31.i64[1] = 0x100000001, (vmaxv_u16(vmovn_s32(vcgtq_f32(v31, v30)))))
  {

    v61 = a6;
    sub_224627508();
    v32 = *(v20 + 48);
    if (v32(v18, 1, v19) == 1)
    {
      v62(v24, *MEMORY[0x277D213C8], v19);
      if (v32(v18, 1, v19) != 1)
      {
        sub_2245098A0(v18, &qword_27D0C8FA8);
      }
    }

    else
    {
      (*(v20 + 32))(v24, v18, v19);
    }

    sub_224627A98();
    (*(v20 + 8))(v24, v19);
    v33 = *&v77;
    v29 = v79;
    v34 = v78;
    v35 = v80;
  }

  else
  {
    v35 = *(&v59 + 1);
    v34 = *(&v56 + 1);
    v33 = *&v61;
  }

  v36 = v69;
  *&v7[v69] = v33;
  v37 = v68;
  *&v7[v68] = v34;
  v38 = v74;
  *&v7[v75] = v29;
  *&v7[v38] = v35;
  v39 = v65;
  v40 = v66;
  if (v67)
  {
    v39 = 0.0;
    v40 = 0.0;
  }

  *v25 = v39;
  v25[1] = v40;
  sub_224627508();
  v41 = *(v20 + 48);
  if (v41(v16, 1, v19) == 1)
  {
    v42 = v71;
    v62(v71, v60, v19);
    if (v41(v16, 1, v19) != 1)
    {
      sub_2245098A0(v16, &qword_27D0C8FA8);
    }
  }

  else
  {
    v42 = v71;
    (*(v20 + 32))(v71, v16, v19);
  }

  (*(v20 + 40))(&v7[v64], v42, v19);
  v43 = v72;
  *&v7[v63] = v72;
  v44 = *&v7[v75];
  v45 = *&v7[v74];
  v46 = *&v7[v36];
  v47 = *&v7[v37];
  if ((v43 - 3) > 1)
  {
    *&v50 = atan(v45 / v47);
    v75 = v50;
    v49 = v44 / v46;
  }

  else
  {
    *&v48 = atan(v44 / v46);
    v75 = v48;
    v49 = v45 / v47;
  }

  v51 = atan(v49);
  *&v52.f64[0] = v75;
  v52.f64[1] = v51;
  *v70 = vaddq_f64(v52, v52);
  v53 = type metadata accessor for CameraCalibration(0);
  v76.receiver = v7;
  v76.super_class = v53;
  return objc_msgSendSuper2(&v76, sel_init, v55, v56, v57, v58);
}

BOOL sub_22452A434(uint64_t a1)
{
  v3 = sub_224627518();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_2245351F0(a1, v18, &qword_27D0CA3B0);
  if (v18[3])
  {
    type metadata accessor for CameraCalibration(0);
    if (swift_dynamicCast())
    {
      v10 = v17;
      if (*(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx) == *&v17[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx] && *(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy) == *&v17[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy] && *(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox) == *&v17[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox] && *(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy) == *&v17[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy] && *(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions) == *&v17[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions] && *(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions + 8) == *&v17[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions + 8])
      {
        v11 = *(v4 + 16);
        v11(v9, v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType, v3);
        v11(v7, &v10[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType], v3);
        sub_224534E68(&qword_27D0C8FB0, 255, MEMORY[0x277D213D0]);
        sub_224627E38();
        sub_224627E38();
        v12 = *(v4 + 8);
        v12(v7, v3);
        v12(v9, v3);
        if (v18[0] == v17)
        {
          v13 = *(v1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation);
          v14 = *&v10[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_orientation];

          return v13 == v14;
        }
      }
    }
  }

  else
  {
    sub_2245098A0(v18, &qword_27D0CA3B0);
  }

  return 0;
}

uint64_t sub_22452A738(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2245098A0(v10, &qword_27D0CA3B0);
  return v8 & 1;
}

DockKitCore::DKDetectedObjectsType_optional __swiftcall DKDetectedObjectsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2246284B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DKDetectedObjectsType.rawValue.getter()
{
  v1 = 0x6361466E616D7548;
  v2 = 0x6569646F42676F44;
  if (*v0 != 2)
  {
    v2 = 0x6569646F42746143;
  }

  if (*v0)
  {
    v1 = 0x646F426E616D7548;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22452A960()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_22452AA38()
{
  sub_224627D78();
}

uint64_t sub_22452AAFC()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

void sub_22452ABDC(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007365;
  v3 = 0x6361466E616D7548;
  v4 = 0x6569646F42676F44;
  if (*v1 != 2)
  {
    v4 = 0x6569646F42746143;
  }

  if (*v1)
  {
    v3 = 0x646F426E616D7548;
    v2 = 0xEB00000000736569;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE900000000000073;
  }

  *a1 = v5;
  a1[1] = v2;
}

char *sub_22452AD20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22452AE14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_22452AF30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22452B034(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22452B168(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C92D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22452B26C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22452B404(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22452B5E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22452B6EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22452B80C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9388);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22452B890(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_22452B914(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_22452B99C(unsigned int a1)
{
  v3 = MEMORY[0x22AA51BD0](*(v1 + 40), a1, 4);

  return sub_22452BB58(a1, v3);
}

unint64_t sub_22452B9E4(uint64_t a1)
{
  sub_224628778();
  MEMORY[0x22AA51BF0](a1);
  v2 = sub_2246287C8();

  return sub_22452BBC4(a1, v2);
}

unint64_t sub_22452BA50(unsigned __int8 a1)
{
  sub_224628778();
  MEMORY[0x22AA51BF0](a1);
  v2 = sub_2246287C8();

  return sub_22452BC30(a1, v2);
}

unint64_t sub_22452BABC(uint64_t a1)
{
  sub_224627188();
  sub_224534E68(&qword_27D0C8C60, 255, MEMORY[0x277CC95F0]);
  v2 = sub_224627C78();

  return sub_22452BCA0(a1, v2);
}

unint64_t sub_22452BB58(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22452BBC4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22452BC30(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22452BCA0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_224627188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_224534E68(&qword_27D0C9270, 255, MEMORY[0x277CC95F0]);
      v15 = sub_224627CA8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

_BYTE *sub_22452BE64@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22452FE54(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22452FF0C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22452FF88(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22452BEF8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22452C050(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22452C1A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22452C2F8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22452C37C()
{
  result = qword_27D0C8AE8;
  if (!qword_27D0C8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8AE8);
  }

  return result;
}

unint64_t sub_22452C3D0()
{
  result = qword_27D0C8AF8;
  if (!qword_27D0C8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8AF8);
  }

  return result;
}

unint64_t sub_22452C424()
{
  result = qword_27D0C8B00;
  if (!qword_27D0C8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B00);
  }

  return result;
}

unint64_t sub_22452C478()
{
  result = qword_27D0C8B18;
  if (!qword_27D0C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B18);
  }

  return result;
}

unint64_t sub_22452C4CC()
{
  result = qword_27D0C8B20;
  if (!qword_27D0C8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B20);
  }

  return result;
}

unint64_t sub_22452C520()
{
  result = qword_27D0C8B30;
  if (!qword_27D0C8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B30);
  }

  return result;
}

unint64_t sub_22452C574()
{
  result = qword_27D0C8B48;
  if (!qword_27D0C8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B48);
  }

  return result;
}

unint64_t sub_22452C5C8()
{
  result = qword_27D0C8B60;
  if (!qword_27D0C8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B60);
  }

  return result;
}

unint64_t sub_22452C61C()
{
  result = qword_27D0C8B78;
  if (!qword_27D0C8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B78);
  }

  return result;
}

unint64_t sub_22452C670()
{
  result = qword_27D0C8B88;
  if (!qword_27D0C8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8B88);
  }

  return result;
}

unint64_t sub_22452C6C4()
{
  result = qword_27D0C8BA0;
  if (!qword_27D0C8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BA0);
  }

  return result;
}

unint64_t sub_22452C718()
{
  result = qword_27D0C8BB0;
  if (!qword_27D0C8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BB0);
  }

  return result;
}

unint64_t sub_22452C76C()
{
  result = qword_27D0C8BC0;
  if (!qword_27D0C8BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8BB8);
    sub_22452C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22452C838()
{
  result = qword_27D0C8BC8;
  if (!qword_27D0C8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BC8);
  }

  return result;
}

unint64_t sub_22452C88C()
{
  result = qword_27D0C8BD8;
  if (!qword_27D0C8BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8BD0);
    sub_22452C910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BD8);
  }

  return result;
}

unint64_t sub_22452C910()
{
  result = qword_27D0C8BE0;
  if (!qword_27D0C8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BE0);
  }

  return result;
}

unint64_t sub_22452C964()
{
  result = qword_27D0C8BF0;
  if (!qword_27D0C8BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8BB8);
    sub_22452C9E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BF0);
  }

  return result;
}

unint64_t sub_22452C9E8()
{
  result = qword_27D0C8BF8;
  if (!qword_27D0C8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8BF8);
  }

  return result;
}

unint64_t sub_22452CA3C()
{
  result = qword_27D0C8C00;
  if (!qword_27D0C8C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8BD0);
    sub_22452CAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C00);
  }

  return result;
}

unint64_t sub_22452CAC0()
{
  result = qword_27D0C8C08;
  if (!qword_27D0C8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C08);
  }

  return result;
}

unint64_t sub_22452CB14()
{
  result = qword_27D0C8C18;
  if (!qword_27D0C8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C18);
  }

  return result;
}

unint64_t sub_22452CB8C()
{
  result = qword_27D0C8C40;
  if (!qword_27D0C8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C40);
  }

  return result;
}

uint64_t sub_22452CBE0()
{
  v0 = sub_2246284B8();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22452CC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952671090 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E41776179 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E416863746970 && a2 == 0xEA0000000000656CLL || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4972656B63617274 && a2 == 0xE900000000000064 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_224628688() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F43746E697270 && a2 == 0xEF65636E65646966 || (sub_224628688() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6563614677656ELL && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22452CF6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952671090 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4972656B63617274 && a2 == 0xE900000000000064 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F43746E697270 && a2 == 0xEF65636E65646966 || (sub_224628688() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x79646F4277656ELL && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x64756C63634F7369 && a2 == 0xEA00000000006465)
  {

    return 8;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22452D260(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952671090 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4972656B63617274 && a2 == 0xE900000000000064 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 3;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22452D3CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656B63617274 && a2 == 0xE900000000000064;
  if (v4 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644965636166 && a2 == 0xE600000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x786F4265636166 && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x786F4279646F62 && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C676E41776179 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E416863746970 && a2 == 0xEA0000000000656CLL || (sub_224628688() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5072616C75676E61 && a2 == 0xEF6E6F697469736FLL || (sub_224628688() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5672616C75676E61 && a2 == 0xEF797469636F6C65 || (sub_224628688() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000224637530 == a2 || (sub_224628688() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F506172656D6163 && a2 == 0xEE006E6F69746973 || (sub_224628688() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65566172656D6163 && a2 == 0xEE00797469636F6CLL || (sub_224628688() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F69746F4D776179 && a2 == 0xEE0065746174536ELL || (sub_224628688() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000224637550 == a2 || (sub_224628688() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000224637570 == a2 || (sub_224628688() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_224628688() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4965636146707369 && a2 == 0xE900000000000064 || (sub_224628688() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4979646F42707369 && a2 == 0xE900000000000064 || (sub_224628688() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_224628688() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x63614665636E6973 && a2 == 0xED00006E65655365)
  {

    return 20;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

id sub_22452DA80()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C38);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_224627188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v7 = swift_allocObject();
  v22 = xmmword_22462C8F0;
  *(v7 + 16) = xmmword_22462C8F0;
  *(v7 + 32) = sub_22450950C(0, &unk_27D0C89A0);
  sub_2246281B8();

  if (v27)
  {
    if (swift_dynamicCast())
    {
      v8 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245098A0(v26, &qword_27D0CA3B0);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_6:
  v9 = [v8 integerValue];
  v10 = 2;
  if ((v9 - 1) < 3)
  {
    v10 = v9;
  }

  *&v0[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v22;
  v12 = sub_22450950C(0, &unk_27D0C8D40);
  *(v11 + 32) = v12;
  sub_2246281B8();

  if (v27)
  {
    if (swift_dynamicCast())
    {
      v13 = v23;
      v14 = v24;
      goto LABEL_13;
    }
  }

  else
  {
    sub_2245098A0(v26, &qword_27D0CA3B0);
  }

  v13 = 0;
  v14 = 0xE000000000000000;
LABEL_13:
  v15 = &v0[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name];
  *v15 = v13;
  *(v15 + 1) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  *(v16 + 32) = v12;
  sub_2246281B8();

  if (v27)
  {
    if (swift_dynamicCast())
    {
      v17 = v20;
      goto LABEL_18;
    }
  }

  else
  {
    sub_2245098A0(v26, &qword_27D0CA3B0);
  }

  v17 = v20;
LABEL_18:
  sub_224627128();

  v18 = *(v5 + 48);
  if (v18(v3, 1, v4) == 1)
  {
    sub_224627178();

    if (v18(v3, 1, v4) != 1)
    {
      sub_2245098A0(v3, &qword_27D0C8C38);
    }
  }

  else
  {

    (*(v5 + 32))(v17, v3, v4);
  }

  (*(v5 + 32))(&v0[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier], v17, v4);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

unint64_t sub_22452DEF0()
{
  result = qword_27D0C8C70;
  if (!qword_27D0C8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C70);
  }

  return result;
}

unint64_t sub_22452DF44()
{
  result = qword_27D0C8C78;
  if (!qword_27D0C8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C78);
  }

  return result;
}

unint64_t sub_22452DF98()
{
  result = qword_27D0C8C90;
  if (!qword_27D0C8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8C90);
  }

  return result;
}

uint64_t sub_22452DFEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_22452E10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9378);
    v3 = sub_2246284A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2245096C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452E234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9C50);
    v3 = sub_2246284A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2245096C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452E338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9330);
    v3 = sub_2246284A8();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2245096C8(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452E45C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9320);
    v3 = sub_2246284A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2245351F0(v4, &v13, &qword_27D0C9328);
      v5 = v13;
      v6 = v14;
      result = sub_2245096C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_224535258(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452E58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9318);
    v7 = sub_2246284A8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2245351F0(v9, v5, &qword_27D0C9310);
      result = sub_22452BABC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_224627188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 56 * v13;
      v17 = *(v8 + 24);
      v18 = *(v8 + 5);
      v19 = *(v8 + 6);
      v20 = *(v8 + 8);
      *v16 = *v8;
      *(v16 + 8) = v20;
      *(v16 + 24) = v17;
      *(v16 + 40) = v18;
      *(v16 + 48) = v19;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452E798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9308);
  v3 = sub_2246284A8();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_22452BA50(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 8);
    v13 = *v7;

    result = sub_22452BA50(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22452E8A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9300);
    v3 = sub_2246284A8();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_22452B9E4(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452E990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92F8);
    v3 = sub_2246284A8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_2245122DC(v7);
      result = sub_2245096C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22452EAF0()
{
  result = qword_27D0C8D98;
  if (!qword_27D0C8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8D98);
  }

  return result;
}

unint64_t sub_22452EB44()
{
  result = qword_27D0C8DA8;
  if (!qword_27D0C8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8DA8);
  }

  return result;
}

unint64_t sub_22452EB98()
{
  result = qword_27D0C8DC0;
  if (!qword_27D0C8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8DC0);
  }

  return result;
}

unint64_t sub_22452EBEC()
{
  result = qword_27D0C8DE8;
  if (!qword_27D0C8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8DE8);
  }

  return result;
}

uint64_t sub_22452EC40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8DF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22452ECAC()
{
  result = qword_27D0C8E10;
  if (!qword_27D0C8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E10);
  }

  return result;
}

uint64_t sub_22452ED00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6175746361 && a2 == 0xE600000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D737574617473 && a2 == 0xED00006567617373)
  {

    return 5;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22452EF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE900000000000073 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469636F6C6576 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_22452F02C()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22462C8F0;
  *(v2 + 32) = sub_22450950C(0, &unk_27D0C8D40);
  sub_2246281B8();

  if (v28)
  {
    if (swift_dynamicCast())
    {
      v3 = v24;
      v4 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245098A0(v27, &qword_27D0CA3B0);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_6:
  v5 = &v0[OBJC_IVAR____TtC11DockKitCore11CameraLimit_model];
  *v5 = v3;
  *(v5 + 1) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22462C8F0;
  v7 = sub_22450950C(0, &unk_27D0C89A0);
  *(v6 + 32) = v7;
  sub_2246281B8();

  if (v28)
  {
    if (swift_dynamicCast())
    {
      v8 = v24;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245098A0(v27, &qword_27D0CA3B0);
  }

  v8 = sub_2246281C8();
LABEL_11:
  v9 = sub_224620E7C([v8 integerValue]);
  v11 = 2;
  if ((v10 & 1) == 0)
  {
    v11 = v9;
  }

  *&v0[OBJC_IVAR____TtC11DockKitCore11CameraLimit_camera] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v23;
  *(v12 + 32) = v7;
  sub_2246281B8();

  if (v28)
  {
    v13 = swift_dynamicCast();
    v14 = v24;
    if (!v13)
    {
      v14 = 0;
    }

    v15 = v13 ^ 1;
  }

  else
  {
    sub_2245098A0(v27, &qword_27D0CA3B0);
    v14 = 0;
    v15 = 1;
  }

  v16 = &v0[OBJC_IVAR____TtC11DockKitCore11CameraLimit_minPosition];
  *v16 = v14;
  v16[8] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  *(v17 + 32) = v7;
  sub_2246281B8();

  if (v28)
  {
    v18 = swift_dynamicCast();
    v19 = v24;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v18 ^ 1;
  }

  else
  {
    sub_2245098A0(v27, &qword_27D0CA3B0);
    v19 = 0;
    v20 = 1;
  }

  v21 = &v0[OBJC_IVAR____TtC11DockKitCore11CameraLimit_maxPosition];
  *v21 = v19;
  v21[8] = v20;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

unint64_t sub_22452F3D8()
{
  result = qword_27D0C8E40;
  if (!qword_27D0C8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E40);
  }

  return result;
}

unint64_t sub_22452F42C()
{
  result = qword_27D0C8E58;
  if (!qword_27D0C8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E58);
  }

  return result;
}

unint64_t sub_22452F480()
{
  result = qword_27D0C8E68;
  if (!qword_27D0C8E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8E60);
    sub_22452F504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E68);
  }

  return result;
}

unint64_t sub_22452F504()
{
  result = qword_27D0C8E70;
  if (!qword_27D0C8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E70);
  }

  return result;
}

unint64_t sub_22452F558()
{
  result = qword_27D0C8E80;
  if (!qword_27D0C8E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8E60);
    sub_22452F5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E80);
  }

  return result;
}

unint64_t sub_22452F5DC()
{
  result = qword_27D0C8E88;
  if (!qword_27D0C8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E88);
  }

  return result;
}

unint64_t sub_22452F630()
{
  result = qword_27D0C8E90;
  if (!qword_27D0C8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8E90);
  }

  return result;
}

uint64_t sub_22452F684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22452F6D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22452F72C()
{
  result = qword_27D0C8EA8;
  if (!qword_27D0C8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EA8);
  }

  return result;
}

unint64_t sub_22452F780()
{
  result = qword_27D0C8EB8;
  if (!qword_27D0C8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EB8);
  }

  return result;
}

unint64_t sub_22452F7D4()
{
  result = qword_27D0C8EC0;
  if (!qword_27D0C8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EC0);
  }

  return result;
}

unint64_t sub_22452F828()
{
  result = qword_27D0C8EC8;
  if (!qword_27D0C8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EC8);
  }

  return result;
}

unint64_t sub_22452F87C()
{
  result = qword_27D0C8ED8;
  if (!qword_27D0C8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8ED8);
  }

  return result;
}

unint64_t sub_22452F8D0()
{
  result = qword_27D0C8EE0;
  if (!qword_27D0C8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EE0);
  }

  return result;
}

unint64_t sub_22452F924()
{
  result = qword_27D0C8EE8;
  if (!qword_27D0C8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EE8);
  }

  return result;
}

unint64_t sub_22452F978()
{
  result = qword_27D0C8EF0;
  if (!qword_27D0C8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8EF0);
  }

  return result;
}

uint64_t sub_22452F9CC()
{
  v0 = sub_2246284B8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22452FA18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22452FB30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
  if (v4 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F746175746361 && a2 == 0xEA00000000006449 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEF646E616D6D6F43 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xEF646E616D6D6F43)
  {

    return 5;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22452FD40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22452FE54(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22452FF0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_224626F08();
  swift_allocObject();
  result = sub_224626EF8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_224627008();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22452FF88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_224626F08();
  swift_allocObject();
  result = sub_224626EF8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22453000C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9360);
  v10 = sub_224535268(&qword_27D0C9368, &qword_27D0C9360);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22452BE64(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

unint64_t sub_2245300E8()
{
  result = qword_27D0C8F00;
  if (!qword_27D0C8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F00);
  }

  return result;
}

unint64_t sub_22453013C()
{
  result = qword_27D0C8F08;
  if (!qword_27D0C8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F08);
  }

  return result;
}

unint64_t sub_224530190()
{
  result = qword_27D0C8F18;
  if (!qword_27D0C8F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8F10);
    sub_224530214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F18);
  }

  return result;
}

unint64_t sub_224530214()
{
  result = qword_27D0C8F20;
  if (!qword_27D0C8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F20);
  }

  return result;
}

unint64_t sub_224530268()
{
  result = qword_27D0C8F30;
  if (!qword_27D0C8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F30);
  }

  return result;
}

unint64_t sub_2245302BC()
{
  result = qword_27D0C8F38;
  if (!qword_27D0C8F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C8F10);
    sub_224530340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F38);
  }

  return result;
}

unint64_t sub_224530340()
{
  result = qword_27D0C8F40;
  if (!qword_27D0C8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8F40);
  }

  return result;
}

uint64_t sub_224530394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7463656A617274 && a2 == 0xEC00000073656972)
  {

    return 2;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_2245304B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = &v4[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent_name];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = v4;
  LODWORD(a4) = sub_224627018() << 16;
  LODWORD(a4) = a4 & 0xFFFF00FF | (sub_224627018() << 8);
  v10 = sub_224627018();
  v11 = &v9[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload];
  *v11 = a4 & 0xFFFFFF00 | v10;
  v11[4] = 0;
  v12 = sub_224627018();
  v13 = &v9[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header];
  *v13 = v12;
  v13[1] = 0;
  sub_22450950C(0, &qword_27D0C9358);
  v14 = v9;
  v15 = sub_224628218();
  v16 = sub_224628058();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    v18 = *v11;
    v19 = v11[4];

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    *(v17 + 4) = v20;

    _os_log_impl(&dword_224507000, v15, v16, "event payload: %u", v17, 8u);
    MEMORY[0x22AA526D0](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  v22.receiver = v14;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_224530674()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22462C8F0;
  *(v2 + 32) = sub_22450950C(0, &unk_27D0C8D40);
  sub_2246281B8();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v3 = v14;
      v4 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_6:
  v5 = &v0[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent_name];
  *v5 = v3;
  *(v5 + 1) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22462C8F0;
  v7 = sub_22450950C(0, &unk_27D0C89A0);
  *(v6 + 32) = v7;
  sub_2246281B8();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v8 = v14;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
  }

  v8 = 0;
LABEL_11:
  v9 = &v0[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload];
  *v9 = v8;
  v9[4] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22462C8F0;
  *(v10 + 32) = v7;
  sub_2246281B8();

  if (!v18)
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v11 = v14;
LABEL_16:
  v12 = &v0[OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header];
  *v12 = v11;
  v12[1] = 0;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init, 1, 2);
}

id sub_224530918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = &v4[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_name];
  *v8 = a3;
  v8[1] = a4;
  v9 = sub_224627018();
  v10 = v9 >> 1;
  v11 = v10 == 1;
  v12 = v10 == 2;
  v13 = 2;
  if (!v12)
  {
    v13 = v11;
  }

  *&v4[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_chargeState] = v13;
  v4[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_lowBattery] = v9 & 1;
  *&v4[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_batteryPercent] = sub_224627018() / 100.0;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_224530A00()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22462C8F0;
  v3 = sub_22450950C(0, &unk_27D0C89A0);
  *(v2 + 32) = v3;
  sub_2246281B8();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v4 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
  }

  v4 = 0;
LABEL_6:
  *&v0[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_batteryPercent] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22462C8F0;
  *(v5 + 32) = v3;
  sub_2246281B8();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
  }

  v6 = 0;
LABEL_11:
  v0[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_lowBattery] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22462C8F0;
  *(v7 + 32) = v3;
  sub_2246281B8();

  if (!v18)
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = v14;
  if (v14 != 2)
  {
    v8 = v14 == 1;
  }

LABEL_18:
  *&v0[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_chargeState] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22462C8F0;
  *(v9 + 32) = sub_22450950C(0, &unk_27D0C8D40);
  sub_2246281B8();

  if (!v18)
  {
    sub_2245098A0(v17, &qword_27D0CA3B0);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    goto LABEL_23;
  }

  v11 = v14;
  v10 = v15;
LABEL_23:
  v12 = &v0[OBJC_IVAR____TtC11DockKitCore21AccessoryBatteryState_name];
  *v12 = v11;
  v12[1] = v10;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init, 1, 2);
}

unint64_t sub_224530D88()
{
  result = qword_27D0C8FB8;
  if (!qword_27D0C8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FB8);
  }

  return result;
}

unint64_t sub_224530DE0()
{
  result = qword_27D0C8FC0;
  if (!qword_27D0C8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FC0);
  }

  return result;
}

unint64_t sub_224530E38()
{
  result = qword_27D0C8FC8;
  if (!qword_27D0C8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FC8);
  }

  return result;
}

unint64_t sub_224530E90()
{
  result = qword_27D0C8FD0;
  if (!qword_27D0C8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FD0);
  }

  return result;
}

unint64_t sub_224530EE8()
{
  result = qword_27D0C8FD8;
  if (!qword_27D0C8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FD8);
  }

  return result;
}

unint64_t sub_224530F40()
{
  result = qword_27D0C8FE0;
  if (!qword_27D0C8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FE0);
  }

  return result;
}

unint64_t sub_224530F98()
{
  result = qword_27D0C8FE8;
  if (!qword_27D0C8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FE8);
  }

  return result;
}

unint64_t sub_224530FF0()
{
  result = qword_27D0C8FF0;
  if (!qword_27D0C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FF0);
  }

  return result;
}

unint64_t sub_224531048()
{
  result = qword_27D0C8FF8;
  if (!qword_27D0C8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8FF8);
  }

  return result;
}

unint64_t sub_2245310A0()
{
  result = qword_27D0C9000;
  if (!qword_27D0C9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9000);
  }

  return result;
}

unint64_t sub_2245310F8()
{
  result = qword_27D0C9008;
  if (!qword_27D0C9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9008);
  }

  return result;
}

uint64_t keypath_set_91Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_224531BD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 129))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_224531C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_224531CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 98))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_224531D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 81) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_224531DAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224531DCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t sub_224531E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 265))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 208);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_224531E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 265) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 265) = 0;
    }

    if (a2)
    {
      *(result + 208) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_224531F18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224531F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224532138()
{
  result = sub_224627188();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_224532A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224532A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224532B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224532B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TrajectoryCommand.TrajectoryPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrajectoryCommand.TrajectoryPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_224532C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224532C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrajectoryCommand.Progress(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    if ((a2 + 33554181) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776965;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776965;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 6;
  v6 = v4 - 6;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TrajectoryCommand.Progress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554181) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFA)
  {
    v3 = 0;
  }

  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 2) = (a2 - 251) >> 16;
    if (v3)
    {
      v4 = ((a2 - 251) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 5;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_224532E48(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224532E80()
{
  result = sub_224627118();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224533054()
{
  result = sub_224627518();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CameraCalibration.__allocating_init(intrinsics:referenceDimensions:portType:orientation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 48);
  v6 = *(v4 + 344);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = *(a1 + 32);
  v10 = v5;
  return v6(v9, a2, a3, a4 & 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2245336E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224533728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatingTimer.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RepeatingTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackedSubjectTypeInternal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackedSubjectTypeInternal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackedSubjectState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackedSubjectState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackingSummaryInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackingSummaryInternal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FaceObservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceObservation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Track.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Track.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224533FFC()
{
  result = qword_27D0C9110;
  if (!qword_27D0C9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9110);
  }

  return result;
}

unint64_t sub_224534054()
{
  result = qword_27D0C9118;
  if (!qword_27D0C9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9118);
  }

  return result;
}

unint64_t sub_2245340AC()
{
  result = qword_27D0C9120;
  if (!qword_27D0C9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9120);
  }

  return result;
}

unint64_t sub_224534104()
{
  result = qword_27D0C9128;
  if (!qword_27D0C9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9128);
  }

  return result;
}

unint64_t sub_22453415C()
{
  result = qword_27D0C9130;
  if (!qword_27D0C9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9130);
  }

  return result;
}

unint64_t sub_2245341B4()
{
  result = qword_27D0C9138;
  if (!qword_27D0C9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9138);
  }

  return result;
}

unint64_t sub_22453420C()
{
  result = qword_27D0C9140;
  if (!qword_27D0C9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9140);
  }

  return result;
}

unint64_t sub_224534264()
{
  result = qword_27D0C9148;
  if (!qword_27D0C9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9148);
  }

  return result;
}

unint64_t sub_2245342BC()
{
  result = qword_27D0C9150;
  if (!qword_27D0C9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9150);
  }

  return result;
}

unint64_t sub_224534314()
{
  result = qword_27D0C9158;
  if (!qword_27D0C9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9158);
  }

  return result;
}

unint64_t sub_22453436C()
{
  result = qword_27D0C9160;
  if (!qword_27D0C9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9160);
  }

  return result;
}

unint64_t sub_2245343C4()
{
  result = qword_27D0C9168;
  if (!qword_27D0C9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9168);
  }

  return result;
}

unint64_t sub_22453441C()
{
  result = qword_27D0C9170;
  if (!qword_27D0C9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9170);
  }

  return result;
}

unint64_t sub_224534474()
{
  result = qword_27D0C9178;
  if (!qword_27D0C9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9178);
  }

  return result;
}

unint64_t sub_2245344CC()
{
  result = qword_27D0C9180;
  if (!qword_27D0C9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9180);
  }

  return result;
}

unint64_t sub_224534524()
{
  result = qword_27D0C9188;
  if (!qword_27D0C9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9188);
  }

  return result;
}

unint64_t sub_22453457C()
{
  result = qword_27D0C9190;
  if (!qword_27D0C9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9190);
  }

  return result;
}

unint64_t sub_2245345D4()
{
  result = qword_27D0C9198;
  if (!qword_27D0C9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9198);
  }

  return result;
}

unint64_t sub_22453462C()
{
  result = qword_27D0C91A0;
  if (!qword_27D0C91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91A0);
  }

  return result;
}

unint64_t sub_224534684()
{
  result = qword_27D0C91A8;
  if (!qword_27D0C91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91A8);
  }

  return result;
}

unint64_t sub_2245346DC()
{
  result = qword_27D0C91B0;
  if (!qword_27D0C91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91B0);
  }

  return result;
}

unint64_t sub_224534734()
{
  result = qword_27D0C91B8;
  if (!qword_27D0C91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91B8);
  }

  return result;
}

unint64_t sub_22453478C()
{
  result = qword_27D0C91C0;
  if (!qword_27D0C91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91C0);
  }

  return result;
}

unint64_t sub_2245347E4()
{
  result = qword_27D0C91C8;
  if (!qword_27D0C91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91C8);
  }

  return result;
}

unint64_t sub_22453483C()
{
  result = qword_27D0C91D0;
  if (!qword_27D0C91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91D0);
  }

  return result;
}

unint64_t sub_224534894()
{
  result = qword_27D0C91D8;
  if (!qword_27D0C91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91D8);
  }

  return result;
}

unint64_t sub_2245348EC()
{
  result = qword_27D0C91E0;
  if (!qword_27D0C91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91E0);
  }

  return result;
}

unint64_t sub_224534944()
{
  result = qword_27D0C91E8;
  if (!qword_27D0C91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91E8);
  }

  return result;
}

unint64_t sub_22453499C()
{
  result = qword_27D0C91F0;
  if (!qword_27D0C91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91F0);
  }

  return result;
}

unint64_t sub_2245349F4()
{
  result = qword_27D0C91F8;
  if (!qword_27D0C91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C91F8);
  }

  return result;
}

unint64_t sub_224534A4C()
{
  result = qword_27D0C9200;
  if (!qword_27D0C9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9200);
  }

  return result;
}

unint64_t sub_224534AA4()
{
  result = qword_27D0C9208;
  if (!qword_27D0C9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9208);
  }

  return result;
}

unint64_t sub_224534AFC()
{
  result = qword_27D0C9210;
  if (!qword_27D0C9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9210);
  }

  return result;
}

unint64_t sub_224534B54()
{
  result = qword_27D0C9218;
  if (!qword_27D0C9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9218);
  }

  return result;
}

unint64_t sub_224534BAC()
{
  result = qword_27D0C9220;
  if (!qword_27D0C9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9220);
  }

  return result;
}

unint64_t sub_224534C04()
{
  result = qword_27D0C9228;
  if (!qword_27D0C9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9228);
  }

  return result;
}

unint64_t sub_224534C5C()
{
  result = qword_27D0C9230;
  if (!qword_27D0C9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9230);
  }

  return result;
}

unint64_t sub_224534CB4()
{
  result = qword_27D0C9238;
  if (!qword_27D0C9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9238);
  }

  return result;
}

unint64_t sub_224534D0C()
{
  result = qword_27D0C9240;
  if (!qword_27D0C9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9240);
  }

  return result;
}

unint64_t sub_224534D64()
{
  result = qword_27D0C9248;
  if (!qword_27D0C9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9248);
  }

  return result;
}

unint64_t sub_224534DBC()
{
  result = qword_27D0C9250;
  if (!qword_27D0C9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9250);
  }

  return result;
}

unint64_t sub_224534E14()
{
  result = qword_27D0C9258;
  if (!qword_27D0C9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9258);
  }

  return result;
}

uint64_t sub_224534E68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_224534EF4()
{
  result = qword_27D0C9278;
  if (!qword_27D0C9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9278);
  }

  return result;
}

unint64_t sub_224534F48()
{
  result = qword_27D0C9280;
  if (!qword_27D0C9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9280);
  }

  return result;
}

unint64_t sub_224534F9C()
{
  result = qword_27D0C9288;
  if (!qword_27D0C9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9288);
  }

  return result;
}

unint64_t sub_224534FF0()
{
  result = qword_27D0C9290;
  if (!qword_27D0C9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9290);
  }

  return result;
}

unint64_t sub_224535044()
{
  result = qword_27D0C9298;
  if (!qword_27D0C9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9298);
  }

  return result;
}

unint64_t sub_224535098()
{
  result = qword_27D0C92A0;
  if (!qword_27D0C92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C92A0);
  }

  return result;
}

unint64_t sub_2245350EC()
{
  result = qword_27D0C92A8;
  if (!qword_27D0C92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C92A8);
  }

  return result;
}

uint64_t sub_2245351F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_224535258(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_224535268(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2245352B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_224535340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224535404()
{
  result = qword_27D0C9390;
  if (!qword_27D0C9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9390);
  }

  return result;
}

void sub_224535514(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_224627838();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v26 = *(v5 + 16);
  v27 = v5 + 16;
  v26(a1, v2, v4);
  v11 = MobileGestalt_get_current_device();
  if (v11)
  {
    v12 = v11;
    frontCameraRotationForISP = MobileGestalt_get_frontCameraRotationForISP();

    if (frontCameraRotationForISP >= 90)
    {
      v14 = frontCameraRotationForISP;
      v15 = (v5 + 88);
      v16 = *MEMORY[0x277D21478];
      v24 = *MEMORY[0x277D21468];
      v25 = *MEMORY[0x277D21458];
      v23 = *MEMORY[0x277D21460];
      v17 = (v5 + 32);
      v18 = (v5 + 8);
      v19 = (v5 + 104);
      v20 = v14 + 90;
      do
      {
        v26(v8, a1, v4);
        v21 = (*v15)(v8, v4);
        if (v21 == v16)
        {
          (*v18)(a1, v4);
          (*v19)(v10, v25, v4);
        }

        else if (v21 == v24)
        {
          (*v18)(a1, v4);
          (*v19)(v10, v23, v4);
        }

        else if (v21 == v25)
        {
          (*v18)(a1, v4);
          (*v19)(v10, v24, v4);
        }

        else if (v21 == v23)
        {
          (*v18)(a1, v4);
          (*v19)(v10, v16, v4);
        }

        else
        {
          (*v17)(v10, a1, v4);
          (*v18)(v8, v4);
        }

        (*v17)(a1, v10, v4);
        v20 -= 90;
      }

      while (v20 > 0xB3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22453588C()
{
  if (qword_27D0C8870 != -1)
  {
    swift_once();
  }

  v1 = byte_27D0D6060;
  if (byte_27D0D6060 == 2)
  {
    v1 = *(v0 + OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig);
  }

  return v1 & 1;
}

uint64_t sub_2245358F0()
{
  result = sub_224535910();
  byte_27D0D6060 = result;
  return result;
}

uint64_t sub_224535910()
{
  v0 = sub_224627CB8();
  v1 = sub_224627CB8();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2)
  {
    return 2;
  }

  v3 = CFGetTypeID(v2);
  if (v3 != CFBooleanGetTypeID())
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFNumberGetTypeID())
    {
      swift_unknownObjectRelease();
      return 2;
    }
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_224535A14()
{
  result = sub_224535A38();
  byte_280C51959 = result & 1;
  return result;
}

uint64_t sub_224535A38()
{
  v0 = sub_224627CB8();
  v1 = sub_224627CB8();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFBooleanGetTypeID())
    {
      return swift_dynamicCast() & v6;
    }

    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      return swift_dynamicCast() & v6;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id ObjectTrackingAgent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjectTrackingAgent.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v22 - v2;
  v3 = sub_2246280A8();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224628078();
  MEMORY[0x28223BE20](v5);
  v6 = sub_224627BC8();
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v0[OBJC_IVAR___ObjectTrackingAgent_delegate];
  *(v26 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___ObjectTrackingAgent_tracker] = 0;
  v7 = &v0[OBJC_IVAR___ObjectTrackingAgent_appID];
  *v7 = 0;
  v7[1] = 0;
  v27 = OBJC_IVAR___ObjectTrackingAgent_debugEnabled;
  v0[OBJC_IVAR___ObjectTrackingAgent_debugEnabled] = 0;
  v8 = OBJC_IVAR___ObjectTrackingAgent_startDate;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  *&v0[OBJC_IVAR___ObjectTrackingAgent_minFrameDuration] = 0x3FA1111111111111;
  v0[OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig] = 1;
  v0[OBJC_IVAR___ObjectTrackingAgent__trackingEnabled] = 0;
  v0[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 0;
  *&v0[OBJC_IVAR___ObjectTrackingAgent_manager] = 0;
  sub_224627B68();
  v22 = OBJC_IVAR___ObjectTrackingAgent_agentQueue;
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v30 = MEMORY[0x277D84F90];
  sub_224509554(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  *&v0[v22] = sub_2246280D8();
  v0[OBJC_IVAR___ObjectTrackingAgent_setupOngoing] = 0;
  v0[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
  v9 = OBJC_IVAR___ObjectTrackingAgent_lastImage;
  *&v0[v9] = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  v10 = OBJC_IVAR___ObjectTrackingAgent_lastFaces;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
  v11 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  sub_2246274B8();
  *&v0[v11] = sub_2246274A8();
  v12 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  *&v0[v12] = sub_2246274A8();
  v0[OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges] = 0;
  DKTrackingMetric.init()(&v0[OBJC_IVAR___ObjectTrackingAgent_trackingMetric]);
  *&v0[OBJC_IVAR___ObjectTrackingAgent_currentCameraSession] = 0;
  *&v0[OBJC_IVAR___ObjectTrackingAgent_publishSummaryPeriod] = 0x3FA999999999999ALL;
  sub_224627088();
  v13 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___ObjectTrackingAgent__selectedFaceIDs] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___ObjectTrackingAgent__selectedBodyIDs] = v13;
  v14 = OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock;
  *&v0[v14] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v26 + 1) = 0;
  swift_unknownObjectWeakAssign();
  if (qword_280C51638 != -1)
  {
    swift_once();
  }

  v0[v27] = byte_280C51959;
  v15 = type metadata accessor for ObjectTrackingAgent();
  v29.receiver = v0;
  v29.super_class = v15;
  v16 = objc_msgSendSuper2(&v29, &off_27852AB78);
  v17 = sub_224627F78();
  v18 = v28;
  (*(*(v17 - 8) + 56))(v28, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v20 = v16;
  sub_224536440(0, 0, v18, &unk_22462F178, v19);

  return v20;
}

uint64_t sub_22453638C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509D5C();
}

uint64_t sub_224536440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_224562284(a3, v24 - v9);
  v11 = sub_224627F78();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2245098A0(v10, &qword_27D0C9408);
  }

  else
  {
    sub_224627F68();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_224627F28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_224627D48() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2245098A0(a3, &qword_27D0C9408);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2245098A0(a3, &qword_27D0C9408);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_224536730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_224562284(a3, v25 - v10);
  v12 = sub_224627F78();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2245098A0(v11, &qword_27D0C9408);
  }

  else
  {
    sub_224627F68();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_224627F28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_224627D48() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9478);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2245098A0(a3, &qword_27D0C9408);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2245098A0(a3, &qword_27D0C9408);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9478);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id ObjectTrackingAgent.init(appID:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v26 - v4;
  v5 = sub_2246280A8();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224628078();
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224627BC8();
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v2[OBJC_IVAR___ObjectTrackingAgent_delegate];
  *(v32 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ObjectTrackingAgent_tracker] = 0;
  v10 = &v2[OBJC_IVAR___ObjectTrackingAgent_appID];
  *v10 = 0;
  v10[1] = 0;
  v33 = OBJC_IVAR___ObjectTrackingAgent_debugEnabled;
  v2[OBJC_IVAR___ObjectTrackingAgent_debugEnabled] = 0;
  v11 = OBJC_IVAR___ObjectTrackingAgent_startDate;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  *&v2[OBJC_IVAR___ObjectTrackingAgent_minFrameDuration] = 0x3FA1111111111111;
  v2[OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig] = 1;
  v2[OBJC_IVAR___ObjectTrackingAgent__trackingEnabled] = 0;
  v2[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 0;
  *&v2[OBJC_IVAR___ObjectTrackingAgent_manager] = 0;
  sub_224627B68();
  v27 = OBJC_IVAR___ObjectTrackingAgent_agentQueue;
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v38 = MEMORY[0x277D84F90];
  sub_224509554(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v30 + 104))(v29, *MEMORY[0x277D85260], v31);
  *&v2[v27] = sub_2246280D8();
  v2[OBJC_IVAR___ObjectTrackingAgent_setupOngoing] = 0;
  v2[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
  v12 = OBJC_IVAR___ObjectTrackingAgent_lastImage;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  v13 = OBJC_IVAR___ObjectTrackingAgent_lastFaces;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
  v14 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  sub_2246274B8();
  *&v2[v14] = sub_2246274A8();
  v15 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  *&v2[v15] = sub_2246274A8();
  v2[OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges] = 0;
  DKTrackingMetric.init()(&v2[OBJC_IVAR___ObjectTrackingAgent_trackingMetric]);
  *&v2[OBJC_IVAR___ObjectTrackingAgent_currentCameraSession] = 0;
  *&v2[OBJC_IVAR___ObjectTrackingAgent_publishSummaryPeriod] = 0x3FA999999999999ALL;
  sub_224627088();
  v16 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___ObjectTrackingAgent__selectedFaceIDs] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___ObjectTrackingAgent__selectedBodyIDs] = v16;
  v17 = OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock;
  *&v2[v17] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v32 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v18 = v35;
  *v10 = v34;
  v10[1] = v18;

  if (qword_280C51638 != -1)
  {
    swift_once();
  }

  v2[v33] = byte_280C51959;
  v19 = type metadata accessor for ObjectTrackingAgent();
  v37.receiver = v2;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, &off_27852AB78);
  v21 = sub_224627F78();
  v22 = v36;
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v20;
  v24 = v20;
  sub_224536440(0, 0, v22, &unk_22462F188, v23);

  return v24;
}