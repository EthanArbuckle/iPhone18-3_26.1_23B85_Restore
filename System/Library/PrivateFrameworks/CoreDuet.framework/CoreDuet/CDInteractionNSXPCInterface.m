@interface CDInteractionNSXPCInterface
@end

@implementation CDInteractionNSXPCInterface

void ___CDInteractionNSXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0624768];
  v1 = _CDInteractionNSXPCInterface_interface;
  _CDInteractionNSXPCInterface_interface = v0;

  v2 = _CDInteractionNSXPCInterface_interface;

  setClassesForCDInteractionXPCInterface(v2);
}

@end