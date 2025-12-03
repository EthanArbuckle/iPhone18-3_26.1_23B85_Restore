@interface FigResilientRemoteRoutingContextFactory
- (int)copyAllAudioContexts:(const __CFArray *)contexts;
@end

@implementation FigResilientRemoteRoutingContextFactory

- (int)copyAllAudioContexts:(const __CFArray *)contexts
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();

  return [(FigRemoteRoutingContextFactory *)Current copyAllAudioContexts:contexts];
}

@end