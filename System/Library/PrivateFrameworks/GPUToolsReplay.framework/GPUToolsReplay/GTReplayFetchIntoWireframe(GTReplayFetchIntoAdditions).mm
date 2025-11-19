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
    v11 = [v9 width];
    v12 = [v10 height];
    v13 = [v10 depth];
    memset(v19, 0, sizeof(v19));
    v14 = [v8 blitCommandEncoder];
    v15 = [a1 dest];
    memset(v21, 0, sizeof(v21));
    v20[0] = v11;
    v20[1] = v12;
    v20[2] = v13;
    [v14 copyFromTexture:v10 sourceSlice:0 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toTexture:v15 destinationSlice:0 destinationLevel:0 destinationOrigin:v19];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"SharedWireframeBlit"];
    v17 = [v8 commandBuffer];
    [v17 setLabel:v16];
  }

  return v10 != 0;
}

@end