@interface StringForPTEffectReactionType
@end

@implementation StringForPTEffectReactionType

id __bbn_StringForPTEffectReactionType_block_invoke()
{
  v1[0] = &unk_1F2243D50;
  v1[1] = &unk_1F2243D68;
  v2[0] = @"ReactionThumbsUp";
  v2[1] = @"ReactionThumbsDown";
  v1[2] = &unk_1F2243D80;
  v1[3] = &unk_1F2243D98;
  v2[2] = @"ReactionBalloons";
  v2[3] = @"ReactionHeart";
  v1[4] = &unk_1F2243DB0;
  v1[5] = &unk_1F2243DC8;
  v2[4] = @"ReactionFireworks";
  v2[5] = @"ReactionRain";
  v1[6] = &unk_1F2243DE0;
  v1[7] = &unk_1F2243DF8;
  v2[6] = @"ReactionConfetti";
  v2[7] = @"ReactionLasers";
  bbn_StringForPTEffectReactionType_sMapReactionTypeToName = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:8];
  return bbn_StringForPTEffectReactionType_sMapReactionTypeToName;
}

@end