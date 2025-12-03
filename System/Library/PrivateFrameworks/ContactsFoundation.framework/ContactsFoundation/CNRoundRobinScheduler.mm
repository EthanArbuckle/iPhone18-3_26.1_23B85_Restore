@interface CNRoundRobinScheduler
- (CNRoundRobinScheduler)init;
- (CNRoundRobinScheduler)initWithSchedulers:(id)schedulers;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNRoundRobinScheduler

- (CNRoundRobinScheduler)init
{
  result = sub_185A7EB94();
  __break(1u);
  return result;
}

- (CNRoundRobinScheduler)initWithSchedulers:(id)schedulers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF68, &qword_185A927A0);
  v3 = sub_185A7E984();
  return CNRoundRobinScheduler.init(schedulers:)(v3);
}

- (void)performBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_185A79054();
  v9[4] = sub_185A7A214;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_185A6E8A4;
  v9[3] = &block_descriptor_54;
  v8 = _Block_copy(v9);

  [v7 performBlock:v8];

  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  v9 = sub_185A79054();
  v11[4] = sub_185A7A214;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_185A6E8A4;
  v11[3] = &block_descriptor_47;
  v10 = _Block_copy(v11);

  [v9 performBlock:v10 qualityOfService:service];

  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (id)performCancelableBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_185A79054();
  v11[4] = sub_185A7A244;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_185A6E9C4;
  v11[3] = &block_descriptor_40;
  v8 = _Block_copy(v11);

  v9 = [v7 performCancelableBlock:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();

  return v9;
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  v9 = sub_185A79054();
  v13[4] = sub_185A7A1D4;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_185A6E9C4;
  v13[3] = &block_descriptor_33;
  v10 = _Block_copy(v13);

  v11 = [v9 performCancelableBlock:v10 qualityOfService:service];
  _Block_release(v10);

  swift_unknownObjectRelease();

  return v11;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  v9 = sub_185A79054();
  v13[4] = sub_185A7A214;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_185A6E8A4;
  v13[3] = &block_descriptor_27;
  v10 = _Block_copy(v13);

  v11 = [v9 afterDelay:v10 performBlock:delay];
  _Block_release(v10);

  swift_unknownObjectRelease();

  return v11;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  v11 = sub_185A79054();
  v15[4] = sub_185A7A1C4;
  v15[5] = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_185A6E8A4;
  v15[3] = &block_descriptor_20;
  v12 = _Block_copy(v15);

  v13 = [v11 afterDelay:v12 performBlock:service qualityOfService:delay];
  _Block_release(v12);

  swift_unknownObjectRelease();

  return v13;
}

- (double)timestamp
{
  v3 = *(&self->super.isa + OBJC_IVAR___CNRoundRobinScheduler_schedulers);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 < 0)
  {
    v11 = *(&self->super.isa + OBJC_IVAR___CNRoundRobinScheduler_schedulers);
  }

  if (!sub_185A7EBA4())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    selfCopy = self;
    v6 = MEMORY[0x1865FB090](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    selfCopy2 = self;
    v6 = v4;
LABEL_6:
    v7 = v6;
    [v6 timestamp];
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

@end