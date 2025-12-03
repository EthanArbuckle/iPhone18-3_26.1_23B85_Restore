@interface MRUNowPlayingQueueHandoffCoordinator
- (CGSize)artworkSize;
- (MRUNowPlayingQueueHandoffCoordinatorDelegate)delegate;
- (id)description;
- (id)stateDescription:(int64_t)description;
- (void)setResponse:(id)response;
- (void)setState:(int64_t)state;
@end

@implementation MRUNowPlayingQueueHandoffCoordinator

- (id)description
{
  v3 = NSStringFromCGSize(self->_artworkSize);
  v4 = [(MRUNowPlayingQueueHandoffCoordinator *)self stateDescription:self->_state];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ state: %@ | artwork size: %@ | response: %@", objc_opt_class(), v4, v3, self->_response];

  return v5;
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  objc_storeStrong(&self->_response, response);
  if (self->_state != 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained queueHandoffCoordinator:self didChangeResponse:responseCopy];
  }
}

- (void)setState:(int64_t)state
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained queueHandoffCoordinator:self didChangeState:state];
  }
}

- (id)stateDescription:(int64_t)description
{
  if ((description - 1) > 3)
  {
    return @"Prepare";
  }

  else
  {
    return off_1E7664720[description - 1];
  }
}

- (CGSize)artworkSize
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MRUNowPlayingQueueHandoffCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end