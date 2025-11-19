@interface MPCPlaybackEngineEventTypeIsCacheable
@end

@implementation MPCPlaybackEngineEventTypeIsCacheable

uint64_t ___MPCPlaybackEngineEventTypeIsCacheable_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:32];
  v1 = _MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes;
  _MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes = v0;

  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"session-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"session-restore-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"session-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"remote-control-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"remote-control-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"queue-load-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"queue-add"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"queue-load-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"container-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"container-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"asset-load-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"asset-load-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"playback-behavior-changed"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-hls-stream-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-hls-stream-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"device-changed"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"network-type-changed"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"network-reachability-changed"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"account-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"account-update"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-update"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-key-request-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-configuration-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"time-control-status-changed"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"player-operation-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"reload-current-item-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"session-activation-begin"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"session-activation-end"];
  [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes addObject:@"item-transition-created"];
  v2 = _MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes;

  return [v2 addObject:@"transition-will-start"];
}

@end