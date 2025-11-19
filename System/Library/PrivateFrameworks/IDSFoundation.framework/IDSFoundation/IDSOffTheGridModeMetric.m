@interface IDSOffTheGridModeMetric
- (IDSOffTheGridModeMetric)initWithPreviousMode:(id)a3 currentMode:(id)a4 previousPublishStatus:(id)a5 currentPublishStatus:(id)a6 previousStewieConnectionState:(BOOL)a7 currentStewieConnectionState:(BOOL)a8 previousNetworkConnectionState:(BOOL)a9 currentNetworkConnectionState:(BOOL)a10 duration:(id)a11;
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

- (IDSOffTheGridModeMetric)initWithPreviousMode:(id)a3 currentMode:(id)a4 previousPublishStatus:(id)a5 currentPublishStatus:(id)a6 previousStewieConnectionState:(BOOL)a7 currentStewieConnectionState:(BOOL)a8 previousNetworkConnectionState:(BOOL)a9 currentNetworkConnectionState:(BOOL)a10 duration:(id)a11
{
  v17 = a3;
  v18 = a4;
  v25 = a5;
  v24 = a6;
  v19 = a11;
  v26.receiver = self;
  v26.super_class = IDSOffTheGridModeMetric;
  v20 = [(IDSOffTheGridModeMetric *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_previousMode, a3);
    objc_storeStrong(&v21->_currentMode, a4);
    objc_storeStrong(&v21->_previousPublishStatus, a5);
    objc_storeStrong(&v21->_currentPublishStatus, a6);
    v21->_previousStewieConnectionState = a7;
    v21->_currentStewieConnectionState = a8;
    v21->_previousNetworkConnectionState = a9;
    v21->_currentNetworkConnectionState = a10;
    objc_storeStrong(&v21->_duration, a11);
  }

  return v21;
}

@end