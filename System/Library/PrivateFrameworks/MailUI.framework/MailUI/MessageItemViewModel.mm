@interface MessageItemViewModel
- (MessageItemViewModel)initWithItemBuilder:(id)builder;
@end

@implementation MessageItemViewModel

- (MessageItemViewModel)initWithItemBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    [(MessageItemViewModel *)a2 initWithItemBuilder:?];
  }

  v8.receiver = self;
  v8.super_class = MessageItemViewModel;
  v6 = [(MessageItemViewModel *)&v8 init];
  if (v6)
  {
    builderCopy[2](builderCopy, v6);
  }

  return v6;
}

- (void)initWithItemBuilder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MessageItemViewModel.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
}

@end