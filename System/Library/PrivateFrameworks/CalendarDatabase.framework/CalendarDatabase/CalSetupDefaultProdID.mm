@interface CalSetupDefaultProdID
@end

@implementation CalSetupDefaultProdID

void ___CalSetupDefaultProdID_block_invoke()
{
  v0 = MEMORY[0x1E69E3C68];
  v1 = [MEMORY[0x1E69930C0] copyString];
  [v0 setDefaultProdid:v1];
}

@end