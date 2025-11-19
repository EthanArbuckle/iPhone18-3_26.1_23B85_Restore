@interface _MPCReportingController
- (MPCPlaybackEngine)playbackEngine;
- (_MPCReportingController)initWithPlaybackEngine:(id)a3;
@end

@implementation _MPCReportingController

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (_MPCReportingController)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _MPCReportingController;
  v5 = [(_MPCReportingController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    v7 = objc_alloc_init(MPCLyricsReportingController);
    lyricsReportingController = v6->_lyricsReportingController;
    v6->_lyricsReportingController = v7;
  }

  return v6;
}

@end