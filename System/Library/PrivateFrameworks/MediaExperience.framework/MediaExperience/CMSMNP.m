@interface CMSMNP
@end

@implementation CMSMNP

void __CMSMNP_ResumeNowPlayingAppOverCarPlay_block_invoke(uint64_t a1)
{
  cmsmSendCommandToMediaRemote(*(a1 + 32), 0, @"com.apple.cmsession.carplay");
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end