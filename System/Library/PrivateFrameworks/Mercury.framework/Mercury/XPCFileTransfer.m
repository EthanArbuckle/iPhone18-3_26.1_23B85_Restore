@interface XPCFileTransfer
@end

@implementation XPCFileTransfer

void __XPCFileTransfer_open_block_invoke()
{
  v5[4] = *MEMORY[0x277D85DF0];
  v0 = *MEMORY[0x277CBE7E0];
  v4[0] = *MEMORY[0x277CBE800];
  v4[1] = v0;
  v5[0] = &unk_284519F40;
  v5[1] = &unk_284519F58;
  v1 = *MEMORY[0x277CBE7F0];
  v4[2] = *MEMORY[0x277CBE7E8];
  v4[3] = v1;
  v5[2] = &unk_284519F70;
  v5[3] = &unk_284519F88;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = XPCFileTransfer_open_protectionTypes;
  XPCFileTransfer_open_protectionTypes = v2;
}

@end