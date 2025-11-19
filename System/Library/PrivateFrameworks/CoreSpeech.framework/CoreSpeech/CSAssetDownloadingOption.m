@interface CSAssetDownloadingOption
- (CSAssetDownloadingOption)init;
- (id)description;
@end

@implementation CSAssetDownloadingOption

- (id)description
{
  v2 = @"NO";
  if (self->_allowVoiceTriggerAssetDownloading)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_allowEndpointAssetDownloading)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_allowLanguageDetectorAssetDownloading)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_allowAdBlockerAssetDownloading)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_allowSpeakerRecognitionAssetDownloading)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_allowGibraltarVoiceTriggerAssetDownloading)
  {
    v2 = @"YES";
  }

  return [NSString stringWithFormat:@"set option : allowVoiceTriggerAssetsDownload ? %@;           allowEndpointAssetDownload ? %@;           allowLanguageDetectorAssetDownload ? %@;           allowAdBlockerAssetDownload ? %@;           allowSpeakerRecognitionAssetDownload ? %@;           allowGibraltarVoiceTriggerAssetDownloading ? %@", v3, v4, v5, v6, v7, v2];
}

- (CSAssetDownloadingOption)init
{
  v3.receiver = self;
  v3.super_class = CSAssetDownloadingOption;
  result = [(CSAssetDownloadingOption *)&v3 init];
  if (result)
  {
    result->_allowGibraltarVoiceTriggerAssetDownloading = 0;
    *&result->_allowVoiceTriggerAssetDownloading = 0;
    result->_allowSpeakerRecognitionAssetDownloading = 0;
  }

  return result;
}

@end