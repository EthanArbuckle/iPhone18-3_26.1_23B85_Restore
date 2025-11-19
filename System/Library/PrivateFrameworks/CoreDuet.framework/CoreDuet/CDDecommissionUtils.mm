@interface CDDecommissionUtils
@end

@implementation CDDecommissionUtils

uint64_t __37___CDDecommissionUtils_filterEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allowedStreams];
  v5 = [v3 stream];

  v6 = [v5 name];
  v7 = [v4 containsObject:v6];

  return v7;
}

uint64_t __38___CDDecommissionUtils_allowedStreams__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F05EF410];
  v1 = allowedStreams_allowedStreams;
  allowedStreams_allowedStreams = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __41___CDDecommissionUtils_isKnowledgeDaemon__block_invoke()
{
  v0 = _CDCurrentProcessName();
  isKnowledgeDaemon_isKnowledgeDaemon = [&unk_1F05EF428 containsObject:v0];
}

void __41___CDDecommissionUtils_isCoreDuetProcess__block_invoke()
{
  v0 = _CDCurrentProcessName();
  isCoreDuetProcess_isKnowledgeDaemon = [&unk_1F05EF440 containsObject:v0];
}

void __46___CDDecommissionUtils_isDigitalHealthProcess__block_invoke()
{
  v0 = _CDCurrentProcessName();
  isDigitalHealthProcess_isKnowledgeDaemon = [&unk_1F05EF458 containsObject:v0];
}

@end