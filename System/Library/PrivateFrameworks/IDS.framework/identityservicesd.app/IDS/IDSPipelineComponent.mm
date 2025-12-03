@interface IDSPipelineComponent
+ (id)pipelineFromComponents:(id)components;
- (id)runIndividuallyWithInput:(id)input;
- (id)runWithInput:(id)input;
@end

@implementation IDSPipelineComponent

- (id)runIndividuallyWithInput:(id)input
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"IDSPipelineComponent.m" lineNumber:20 description:@"Subclasses must implement runIndividuallyWithInput"];

  return 0;
}

- (id)runWithInput:(id)input
{
  nextComponent = self->_nextComponent;
  v5 = [(IDSPipelineComponent *)self runIndividuallyWithInput:input];
  v6 = v5;
  if (nextComponent)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10069997C;
    v9[3] = &unk_100BE4000;
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