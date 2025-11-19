@interface NURAWDemosaicNode
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NURAWDemosaicNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 scale];
  if (NUScaleCompare(v13, v14, 1, 2) <= 0)
  {
    v15 = [v11 mutableCopy];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"inputDraftMode"];

    v11 = v15;
  }

  v18.receiver = self;
  v18.super_class = NURAWDemosaicNode;
  v16 = [(NURawFilterNode *)&v18 resolvedNodeWithCachedInputs:v10 settings:v11 pipelineState:v12 error:a6];

  return v16;
}

@end