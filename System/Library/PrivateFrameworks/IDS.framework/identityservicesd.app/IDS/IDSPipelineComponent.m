@interface IDSPipelineComponent
+ (id)pipelineFromComponents:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
- (id)runWithInput:(id)a3;
@end

@implementation IDSPipelineComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"IDSPipelineComponent.m" lineNumber:20 description:@"Subclasses must implement runIndividuallyWithInput"];

  return 0;
}

- (id)runWithInput:(id)a3
{
  nextComponent = self->_nextComponent;
  v5 = [(IDSPipelineComponent *)self runIndividuallyWithInput:a3];
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

+ (id)pipelineFromComponents:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] != 1)
    {
      v4 = 0;
      do
      {
        v5 = [v3 objectAtIndexedSubscript:v4];
        v6 = [v3 objectAtIndexedSubscript:++v4];
        v7 = [v5 bindTo:v6];
      }

      while ([v3 count] - 1 > v4);
    }

    v8 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end