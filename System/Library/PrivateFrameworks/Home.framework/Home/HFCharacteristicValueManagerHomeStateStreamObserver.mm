@interface HFCharacteristicValueManagerHomeStateStreamObserver
- (BOOL)homeStateStreamHasInProgressWriteFor:(id)a3;
- (HFCharacteristicValueManagerHomeStateStreamObserver)init;
- (id)homeStateStreamCachedValueFor:(id)a3;
- (void)cancelObservation;
- (void)startObserving;
@end

@implementation HFCharacteristicValueManagerHomeStateStreamObserver

- (BOOL)homeStateStreamHasInProgressWriteFor:(id)a3
{
  sub_20D9C7830();
  sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830);
  v4 = sub_20DD651E4();
  v5 = self;
  sub_20DA569DC(v4);
  v7 = v6;

  return v7 & 1;
}

- (id)homeStateStreamCachedValueFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20DA57188(v4, v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_20DD65964();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)startObserving
{
  v2 = self;
  sub_20DA57A64();
}

- (void)cancelObservation
{
  v3 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask;
  if (*(&self->super.isa + OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask))
  {
    v4 = self;

    sub_20DD65174();

    v5 = *(&self->super.isa + v3);
  }

  else
  {
    v6 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (HFCharacteristicValueManagerHomeStateStreamObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end