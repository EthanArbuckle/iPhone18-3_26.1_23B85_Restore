@interface MRMediaRemoteServiceCollectDiagnosticWithXPCMessage
@end

@implementation MRMediaRemoteServiceCollectDiagnosticWithXPCMessage

void ___MRMediaRemoteServiceCollectDiagnosticWithXPCMessage_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();

    Error = MRMediaRemoteCreateError(1);
    v9 = 0;
  }

  else
  {
    v9 = MRCreateDiagnosticFromXPCMessage(v5);
    Error = MRCreateClientErrorFromXPCMessage(v6);
  }

  (*(*(a1 + 32) + 16))();
}

@end