@interface NURAWDemosaicNode
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NURAWDemosaicNode

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  scale = [stateCopy scale];
  if (NUScaleCompare(scale, v14, 1, 2) <= 0)
  {
    v15 = [settingsCopy mutableCopy];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"inputDraftMode"];

    settingsCopy = v15;
  }

  v18.receiver = self;
  v18.super_class = NURAWDemosaicNode;
  v16 = [(NURawFilterNode *)&v18 resolvedNodeWithCachedInputs:inputsCopy settings:settingsCopy pipelineState:stateCopy error:error];

  return v16;
}

@end