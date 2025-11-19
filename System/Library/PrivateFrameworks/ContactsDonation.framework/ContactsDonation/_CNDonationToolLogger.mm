@interface _CNDonationToolLogger
- (_CNDonationToolLogger)init;
- (void)commandArgs:(id)a3;
@end

@implementation _CNDonationToolLogger

- (_CNDonationToolLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationToolLogger;
  v2 = [(_CNDonationToolLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "tool");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)commandArgs:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a3 _cn_map:&__block_literal_global_5];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [(_CNDonationToolLogger *)self log_t];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2258E5000, v6, OS_LOG_TYPE_INFO, "Command invoked with args: [ %{public}@ ]", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end