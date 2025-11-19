@interface IDSServer
@end

@implementation IDSServer

uint64_t __cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_block_invoke()
{
  cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioCategory = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"MediaPlayback"];
  cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioMode = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"Default"];
  cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientPriority = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldHandoverInterruption = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:"Default" encoding:1];
  cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientName = result;
  return result;
}

void __cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_block_invoke_130(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage_block_invoke(uint64_t a1)
{
  CMSM_IDSConnection_SetRemotePlayingInfo(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress_block_invoke(uint64_t a1)
{
  CMSM_IDSConnection_UpdateSharedAudioRouteMacAddressOnLocal(*(a1 + 32), *(a1 + 40) == *MEMORY[0x1E695E4D0]);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end