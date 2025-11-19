@interface PKApplicationAuthorizationViewServiceInterface
@end

@implementation PKApplicationAuthorizationViewServiceInterface

void __PKApplicationAuthorizationViewServiceInterface_Service_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CD88];
  v1 = qword_1ED6D2008;
  qword_1ED6D2008 = v0;

  if (!qword_1ED6D2008)
  {
    __break(1u);
  }
}

void __PKApplicationAuthorizationViewServiceInterface_Remote_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CDE8];
  v1 = qword_1ED6D2018;
  qword_1ED6D2018 = v0;

  if (!qword_1ED6D2018)
  {
    __break(1u);
  }
}

@end