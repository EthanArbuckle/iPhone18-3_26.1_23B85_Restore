@interface GTReplayFetchIntoWireframe(GTReplayFetchIntoAdditions)
- (BOOL)encodeFetchIntoOperation:()GTReplayFetchIntoAdditions error:;
@end

@implementation GTReplayFetchIntoWireframe(GTReplayFetchIntoAdditions)

- (BOOL)encodeFetchIntoOperation:()GTReplayFetchIntoAdditions error:
{
  v7 = *(a3 + 8);
  v8 = *(v7 + 24);
  v9 = GTMTLReplayController_generateWireframeTexture(v7, (a3 + 96), 1, 0, a4);
  v10 = v9;
  if (v9)
  {
    width = [v9 width];
    height = [v10 height];
    depth = [v10 depth];
    memset(v19, 0, sizeof(v19));
    blitCommandEncoder = [v8 blitCommandEncoder];
    dest = [self dest];
    memset(v21, 0, sizeof(v21));
    v20[0] = width;
    v20[1] = height;
    v20[2] = depth;
    [blitCommandEncoder copyFromTexture:v10 sourceSlice:0 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toTexture:dest destinationSlice:0 destinationLevel:0 destinationOrigin:v19];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"SharedWireframeBlit"];
    commandBuffer = [v8 commandBuffer];
    [commandBuffer setLabel:v16];
  }

  return v10 != 0;
}

@end