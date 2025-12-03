@interface MRNowPlayingControllerHelper
- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didLoadArtworkForContentItems:(id)items;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller playbackRateDidChangeFrom:(float)from to:(float)to;
- (void)controller:(id)controller playerLastPlayingDateDidChange:(id)change;
- (void)controller:(id)controller playerPathDidChange:(id)change;
- (void)controller:(id)controller supportedCommandsDidChangeFrom:(id)from to:(id)to;
- (void)controllerWillReloadForInvalidation:(id)invalidation;
@end

@implementation MRNowPlayingControllerHelper

- (void)controller:(id)controller didLoadResponse:(id)response
{
  didLoadResponse = self->_didLoadResponse;
  if (didLoadResponse)
  {
    didLoadResponse[2](didLoadResponse, response);
  }
}

- (void)controller:(id)controller playbackRateDidChangeFrom:(float)from to:(float)to
{
  playbackRateDidChange = self->_playbackRateDidChange;
  if (playbackRateDidChange)
  {
    playbackRateDidChange[2](to);
  }
}

- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to
{
  playbackQueueDidChange = self->_playbackQueueDidChange;
  if (playbackQueueDidChange)
  {
    playbackQueueDidChange[2](playbackQueueDidChange, to);
  }
}

- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes
{
  contentItemsDidUpdate = self->_contentItemsDidUpdate;
  if (contentItemsDidUpdate)
  {
    contentItemsDidUpdate[2](contentItemsDidUpdate, changes);
  }
}

- (void)controller:(id)controller didLoadArtworkForContentItems:(id)items
{
  contentItemsDidLoadArtwork = self->_contentItemsDidLoadArtwork;
  if (contentItemsDidLoadArtwork)
  {
    contentItemsDidLoadArtwork[2](contentItemsDidLoadArtwork, items);
  }
}

- (void)controller:(id)controller supportedCommandsDidChangeFrom:(id)from to:(id)to
{
  supportedCommandsDidChange = self->_supportedCommandsDidChange;
  if (supportedCommandsDidChange)
  {
    supportedCommandsDidChange[2](supportedCommandsDidChange, to);
  }
}

- (void)controller:(id)controller playerLastPlayingDateDidChange:(id)change
{
  playerLastPlayingDateDidChange = self->_playerLastPlayingDateDidChange;
  if (playerLastPlayingDateDidChange)
  {
    playerLastPlayingDateDidChange[2](playerLastPlayingDateDidChange, change);
  }
}

- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to
{
  clientPropertiesDidChange = self->_clientPropertiesDidChange;
  if (clientPropertiesDidChange)
  {
    clientPropertiesDidChange[2](clientPropertiesDidChange, to);
  }
}

- (void)controller:(id)controller playerPathDidChange:(id)change
{
  playerPathDidChange = self->_playerPathDidChange;
  if (playerPathDidChange)
  {
    playerPathDidChange[2](playerPathDidChange, change);
  }
}

- (void)controllerWillReloadForInvalidation:(id)invalidation
{
  didInvalidate = self->_didInvalidate;
  if (didInvalidate)
  {
    didInvalidate[2]();
  }
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  didFailWithError = self->_didFailWithError;
  if (didFailWithError)
  {
    didFailWithError[2](didFailWithError, error);
  }
}

@end