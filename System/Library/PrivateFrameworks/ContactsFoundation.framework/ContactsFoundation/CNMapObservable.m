@interface CNMapObservable
+ (id)observableWithBlock:(id)a3;
@end

@implementation CNMapObservable

+ (id)observableWithBlock:(id)a3
{
  v3 = a3;
  v4 = [(_CNBlockObservable *)[CNMapObservable alloc] initWithBlock:v3];

  v5 = [(CNObservable *)v4 pipelineDescription:&__block_literal_global_35];

  return v5;
}

@end