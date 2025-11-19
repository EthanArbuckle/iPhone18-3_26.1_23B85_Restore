@interface AnyHashable:
- (id)Any;
- (uint64_t)Any;
- (void)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x282200950](v4);
  }
}

- (void)Any
{
  if (a2)
  {
  }

  else
  {
  }
}

- (id)Any
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

@end