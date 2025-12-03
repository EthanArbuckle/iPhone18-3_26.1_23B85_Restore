@interface IMPipelineComponent
+ (id)pipelineFromComponents:(id)components;
- (id)runWithInput:(id)input;
@end

@implementation IMPipelineComponent

- (id)runWithInput:(id)input
{
  nextComponent = self->_nextComponent;
  v5 = [(IMPipelineComponent *)self runIndividuallyWithInput:input];
  v6 = v5;
  if (nextComponent)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2547DF9C0;
    v9[3] = &unk_2797884D0;
    v9[4] = self;
    v7 = [v5 then:v9];

    v6 = v7;
  }

  return v6;
}

+ (id)pipelineFromComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy count])
  {
    if ([componentsCopy count] != 1)
    {
      v4 = 0;
      do
      {
        v5 = [componentsCopy objectAtIndexedSubscript:v4];
        v6 = [componentsCopy objectAtIndexedSubscript:++v4];
        v7 = [v5 bindTo:v6];
      }

      while ([componentsCopy count] - 1 > v4);
    }

    v8 = [componentsCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end