@interface MTL4ToolsMachineLearningCommandEncoder
- (MTL4ToolsMachineLearningCommandEncoder)initWithBaseObject:(id)object parent:(id)parent;
- (unint64_t)endEventValue;
- (unint64_t)startEventValue;
- (void)dispatchNetworkWithIntermediatesHeap:(id)heap;
- (void)endEncodingWithSignalEvent:(id)event waitEvent:(id)waitEvent signalValue:(unint64_t)value waitValue:(unint64_t)waitValue;
- (void)setArgumentTable:(id)table;
- (void)setPipelineState:(id)state;
@end

@implementation MTL4ToolsMachineLearningCommandEncoder

- (MTL4ToolsMachineLearningCommandEncoder)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsMachineLearningCommandEncoder;
  return [(MTL4ToolsCommandEncoder *)&v5 initWithBaseObject:object parent:parent];
}

- (void)setPipelineState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setPipelineState:baseObject2];
}

- (void)setArgumentTable:(id)table
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setArgumentTable:baseObject2];
}

- (void)dispatchNetworkWithIntermediatesHeap:(id)heap
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject dispatchNetworkWithIntermediatesHeap:baseObject2];
}

- (void)endEncodingWithSignalEvent:(id)event waitEvent:(id)waitEvent signalValue:(unint64_t)value waitValue:(unint64_t)waitValue
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [event baseObject];
  baseObject3 = [waitEvent baseObject];

  [baseObject endEncodingWithSignalEvent:baseObject2 waitEvent:baseObject3 signalValue:value waitValue:waitValue];
}

- (unint64_t)endEventValue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEventValue];
}

- (unint64_t)startEventValue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject startEventValue];
}

@end