@interface PFXPCCreate
@end

@implementation PFXPCCreate

uint64_t ____PFXPCCreate_block_invoke(uint64_t a1, void *a2)
{
  result = MEMORY[0x25F8A7FD0](a2);
  if (__pfconnection)
  {
    v4 = result == MEMORY[0x277D86480];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    return PFManagerErrorLog();
  }

  else if (__pfconnection)
  {

    return PFManagerErrorLog();
  }

  return result;
}

@end