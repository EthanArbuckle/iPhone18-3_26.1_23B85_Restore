@interface MRNowPlayingControllerHelper
- (void)controller:(id)a3 clientPropertiesDidChangeFrom:(id)a4 to:(id)a5;
- (void)controller:(id)a3 contentItemsDidUpdateWithContentItemChanges:(id)a4;
- (void)controller:(id)a3 didFailWithError:(id)a4;
- (void)controller:(id)a3 didLoadArtworkForContentItems:(id)a4;
- (void)controller:(id)a3 didLoadResponse:(id)a4;
- (void)controller:(id)a3 playbackQueueDidChangeFrom:(id)a4 to:(id)a5;
- (void)controller:(id)a3 playbackRateDidChangeFrom:(float)a4 to:(float)a5;
- (void)controller:(id)a3 playerLastPlayingDateDidChange:(id)a4;
- (void)controller:(id)a3 playerPathDidChange:(id)a4;
- (void)controller:(id)a3 supportedCommandsDidChangeFrom:(id)a4 to:(id)a5;
- (void)controllerWillReloadForInvalidation:(id)a3;
@end

@implementation MRNowPlayingControllerHelper

- (void)controller:(id)a3 didLoadResponse:(id)a4
{
  didLoadResponse = self->_didLoadResponse;
  if (didLoadResponse)
  {
    didLoadResponse[2](didLoadResponse, a4);
  }
}

- (void)controller:(id)a3 playbackRateDidChangeFrom:(float)a4 to:(float)a5
{
  playbackRateDidChange = self->_playbackRateDidChange;
  if (playbackRateDidChange)
  {
    playbackRateDidChange[2](a5);
  }
}

- (void)controller:(id)a3 playbackQueueDidChangeFrom:(id)a4 to:(id)a5
{
  playbackQueueDidChange = self->_playbackQueueDidChange;
  if (playbackQueueDidChange)
  {
    playbackQueueDidChange[2](playbackQueueDidChange, a5);
  }
}

- (void)controller:(id)a3 contentItemsDidUpdateWithContentItemChanges:(id)a4
{
  contentItemsDidUpdate = self->_contentItemsDidUpdate;
  if (contentItemsDidUpdate)
  {
    contentItemsDidUpdate[2](contentItemsDidUpdate, a4);
  }
}

- (void)controller:(id)a3 didLoadArtworkForContentItems:(id)a4
{
  contentItemsDidLoadArtwork = self->_contentItemsDidLoadArtwork;
  if (contentItemsDidLoadArtwork)
  {
    contentItemsDidLoadArtwork[2](contentItemsDidLoadArtwork, a4);
  }
}

- (void)controller:(id)a3 supportedCommandsDidChangeFrom:(id)a4 to:(id)a5
{
  supportedCommandsDidChange = self->_supportedCommandsDidChange;
  if (supportedCommandsDidChange)
  {
    supportedCommandsDidChange[2](supportedCommandsDidChange, a5);
  }
}

- (void)controller:(id)a3 playerLastPlayingDateDidChange:(id)a4
{
  playerLastPlayingDateDidChange = self->_playerLastPlayingDateDidChange;
  if (playerLastPlayingDateDidChange)
  {
    playerLastPlayingDateDidChange[2](playerLastPlayingDateDidChange, a4);
  }
}

- (void)controller:(id)a3 clientPropertiesDidChangeFrom:(id)a4 to:(id)a5
{
  clientPropertiesDidChange = self->_clientPropertiesDidChange;
  if (clientPropertiesDidChange)
  {
    clientPropertiesDidChange[2](clientPropertiesDidChange, a5);
  }
}

- (void)controller:(id)a3 playerPathDidChange:(id)a4
{
  playerPathDidChange = self->_playerPathDidChange;
  if (playerPathDidChange)
  {
    playerPathDidChange[2](playerPathDidChange, a4);
  }
}

- (void)controllerWillReloadForInvalidation:(id)a3
{
  didInvalidate = self->_didInvalidate;
  if (didInvalidate)
  {
    didInvalidate[2]();
  }
}

- (void)controller:(id)a3 didFailWithError:(id)a4
{
  didFailWithError = self->_didFailWithError;
  if (didFailWithError)
  {
    didFailWithError[2](didFailWithError, a4);
  }
}

@end