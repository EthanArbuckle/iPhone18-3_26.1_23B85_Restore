@interface EMMailboxRepository
@end

@implementation EMMailboxRepository

BOOL __66__EMMailboxRepository_MailUI__mui_inboxExternalURLsFromMailboxes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isSmartMailbox] & 1) == 0 && objc_msgSend(v2, "type") == 7;

  return v3;
}

id __66__EMMailboxRepository_MailUI__mui_inboxExternalURLsFromMailboxes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_filter:*MEMORY[0x277D07110]];
  v3 = [v2 ef_compactMap:&__block_literal_global_7];

  v4 = [MEMORY[0x277D07150] futureWithResult:v3];

  return v4;
}

@end