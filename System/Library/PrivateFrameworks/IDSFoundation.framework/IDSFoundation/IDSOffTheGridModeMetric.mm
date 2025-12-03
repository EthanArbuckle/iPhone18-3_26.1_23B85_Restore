@interface IDSOffTheGridModeMetric
- (IDSOffTheGridModeMetric)initWithPreviousMode:(id)mode currentMode:(id)currentMode previousPublishStatus:(id)status currentPublishStatus:(id)publishStatus previousStewieConnectionState:(BOOL)state currentStewieConnectionState:(BOOL)connectionState previousNetworkConnectionState:(BOOL)networkConnectionState currentNetworkConnectionState:(BOOL)self0 duration:(id)self1;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSOffTheGridModeMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  previousMode = self->_previousMode;
  if (previousMode)
  {
    CFDictionarySetValue(v3, @"previousMode", previousMode);
  }

  currentMode = self->_currentMode;
  if (currentMode)
  {
    CFDictionarySetValue(v4, @"currentMode", currentMode);
  }

  previousPublishStatus = self->_previousPublishStatus;
  if (previousPublishStatus)
  {
    CFDictionarySetValue(v4, @"previousPublishStatus", previousPublishStatus);
  }

  currentPublishStatus = self->_currentPublishStatus;
  if (currentPublishStatus)
  {
    CFDictionarySetValue(v4, @"currentPublishStatus", currentPublishStatus);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_previousStewieConnectionState];
  if (v9)
  {
    CFDictionarySetValue(v4, @"previouslyConnected", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_currentStewieConnectionState];
  if (v10)
  {
    CFDictionarySetValue(v4, @"currentlyConnected", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_previousNetworkConnectionState];
  if (v11)
  {
    CFDictionarySetValue(v4, @"previousNetworkConnectionState", v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_currentNetworkConnectionState];
  if (v12)
  {
    CFDictionarySetValue(v4, @"currentNetworkConnectionState", v12);
  }

  duration = self->_duration;
  if (duration)
  {
    CFDictionarySetValue(v4, @"duration", duration);
  }

  return v4;
}

- (IDSOffTheGridModeMetric)initWithPreviousMode:(id)mode currentMode:(id)currentMode previousPublishStatus:(id)status currentPublishStatus:(id)publishStatus previousStewieConnectionState:(BOOL)state currentStewieConnectionState:(BOOL)connectionState previousNetworkConnectionState:(BOOL)networkConnectionState currentNetworkConnectionState:(BOOL)self0 duration:(id)self1
{
  modeCopy = mode;
  currentModeCopy = currentMode;
  statusCopy = status;
  publishStatusCopy = publishStatus;
  durationCopy = duration;
  v26.receiver = self;
  v26.super_class = IDSOffTheGridModeMetric;
  v20 = [(IDSOffTheGridModeMetric *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_previousMode, mode);
    objc_storeStrong(&v21->_currentMode, currentMode);
    objc_storeStrong(&v21->_previousPublishStatus, status);
    objc_storeStrong(&v21->_currentPublishStatus, publishStatus);
    v21->_previousStewieConnectionState = state;
    v21->_currentStewieConnectionState = connectionState;
    v21->_previousNetworkConnectionState = networkConnectionState;
    v21->_currentNetworkConnectionState = currentNetworkConnectionState;
    objc_storeStrong(&v21->_duration, duration);
  }

  return v21;
}

@end