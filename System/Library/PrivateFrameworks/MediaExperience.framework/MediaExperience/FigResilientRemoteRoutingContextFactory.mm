@interface FigResilientRemoteRoutingContextFactory
- (int)copyAllAudioContexts:(const __CFArray *)a3;
@end

@implementation FigResilientRemoteRoutingContextFactory

- (int)copyAllAudioContexts:(const __CFArray *)a3
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();

  return [(FigRemoteRoutingContextFactory *)Current copyAllAudioContexts:a3];
}

@end