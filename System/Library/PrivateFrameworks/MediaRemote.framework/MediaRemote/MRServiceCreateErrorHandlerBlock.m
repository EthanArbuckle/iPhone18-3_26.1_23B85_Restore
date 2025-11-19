@interface MRServiceCreateErrorHandlerBlock
@end

@implementation MRServiceCreateErrorHandlerBlock

void ___MRServiceCreateErrorHandlerBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

@end