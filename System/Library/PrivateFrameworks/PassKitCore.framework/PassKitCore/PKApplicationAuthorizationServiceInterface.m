@interface PKApplicationAuthorizationServiceInterface
@end

@implementation PKApplicationAuthorizationServiceInterface

void __PKApplicationAuthorizationServiceInterface_Client_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F244FAA0];
  v1 = _MergedGlobals_259;
  _MergedGlobals_259 = v0;

  if (!_MergedGlobals_259)
  {
    __break(1u);
  }
}

void __PKApplicationAuthorizationServiceInterface_Server_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CD28];
  v1 = qword_1ED6D1FF8;
  qword_1ED6D1FF8 = v0;

  if (!qword_1ED6D1FF8)
  {
    __break(1u);
  }
}

@end