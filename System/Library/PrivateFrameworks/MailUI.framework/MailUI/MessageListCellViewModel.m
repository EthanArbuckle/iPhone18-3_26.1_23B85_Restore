@interface MessageListCellViewModel
- (MessageListCellViewModel)initWithBuilder:(id)a3;
- (MessageListCellViewModel)initWithItemBuilder:(id)a3;
@end

@implementation MessageListCellViewModel

- (MessageListCellViewModel)initWithBuilder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MessageListCellViewModel *)a2 initWithBuilder:?];
  }

  v9.receiver = self;
  v9.super_class = MessageListCellViewModel;
  v6 = [(MessageListCellViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MessageListCellViewModel *)v6 setSubjectIsPresent:1];
    [(MessageListCellViewModel *)v7 setAddressIsPresent:1];
    v5[2](v5, v7);
  }

  return v7;
}

- (MessageListCellViewModel)initWithItemBuilder:(id)a3
{
  v5 = a3;
  [(MessageListCellViewModel *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListCellViewModel initWithItemBuilder:]", "MessageListCellViewModel.m", 44, "0");
}

- (void)initWithBuilder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MessageListCellViewModel.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
}

@end