@interface CNMapObservable
+ (id)observableWithBlock:(id)block;
@end

@implementation CNMapObservable

+ (id)observableWithBlock:(id)block
{
  blockCopy = block;
  v4 = [(_CNBlockObservable *)[CNMapObservable alloc] initWithBlock:blockCopy];

  v5 = [(CNObservable *)v4 pipelineDescription:&__block_literal_global_35];

  return v5;
}

@end