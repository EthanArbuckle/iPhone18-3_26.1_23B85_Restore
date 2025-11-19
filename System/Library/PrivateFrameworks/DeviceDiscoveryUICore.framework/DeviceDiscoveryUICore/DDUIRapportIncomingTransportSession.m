@interface DDUIRapportIncomingTransportSession
@end

@implementation DDUIRapportIncomingTransportSession

void __75___DDUIRapportIncomingTransportSession_sendMessage_withTimeout_completion___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    v13 = 134218754;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession finished sending message {self: %p, messageID: %@, inResponse: %@ inError: %@}", &v13, 0x2Au);
  }

  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end