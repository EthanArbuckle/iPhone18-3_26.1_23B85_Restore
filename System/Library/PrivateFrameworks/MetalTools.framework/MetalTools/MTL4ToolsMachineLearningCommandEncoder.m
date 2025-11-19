@interface MTL4ToolsMachineLearningCommandEncoder
- (MTL4ToolsMachineLearningCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4;
- (unint64_t)endEventValue;
- (unint64_t)startEventValue;
- (void)dispatchNetworkWithIntermediatesHeap:(id)a3;
- (void)endEncodingWithSignalEvent:(id)a3 waitEvent:(id)a4 signalValue:(unint64_t)a5 waitValue:(unint64_t)a6;
- (void)setArgumentTable:(id)a3;
- (void)setPipelineState:(id)a3;
@end

@implementation MTL4ToolsMachineLearningCommandEncoder

- (MTL4ToolsMachineLearningCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsMachineLearningCommandEncoder;
  return [(MTL4ToolsCommandEncoder *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)setPipelineState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setPipelineState:v5];
}

- (void)setArgumentTable:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setArgumentTable:v5];
}

- (void)dispatchNetworkWithIntermediatesHeap:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 dispatchNetworkWithIntermediatesHeap:v5];
}

- (void)endEncodingWithSignalEvent:(id)a3 waitEvent:(id)a4 signalValue:(unint64_t)a5 waitValue:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];

  [v10 endEncodingWithSignalEvent:v11 waitEvent:v12 signalValue:a5 waitValue:a6];
}

- (unint64_t)endEventValue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEventValue];
}

- (unint64_t)startEventValue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 startEventValue];
}

@end