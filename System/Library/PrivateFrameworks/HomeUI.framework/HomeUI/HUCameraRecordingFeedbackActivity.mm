@interface HUCameraRecordingFeedbackActivity
- (HUCameraRecordingFeedbackActivity)initWithCameraClip:(id)clip cameraProfile:(id)profile completionHandler:(id)handler;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation HUCameraRecordingFeedbackActivity

- (HUCameraRecordingFeedbackActivity)initWithCameraClip:(id)clip cameraProfile:(id)profile completionHandler:(id)handler
{
  clipCopy = clip;
  profileCopy = profile;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = HUCameraRecordingFeedbackActivity;
  v12 = [(UIActivity *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cameraClip, clip);
    objc_storeStrong(&v13->_cameraProfile, profile);
    v14 = _Block_copy(handlerCopy);
    submissionHandler = v13->_submissionHandler;
    v13->_submissionHandler = v14;

    v16 = [HUCameraRecordingExportPreviewViewController alloc];
    cameraClip = [(HUCameraRecordingFeedbackActivity *)v13 cameraClip];
    cameraProfile = [(HUCameraRecordingFeedbackActivity *)v13 cameraProfile];
    submissionHandler = [(HUCameraRecordingFeedbackActivity *)v13 submissionHandler];
    v20 = [(HUCameraRecordingExportPreviewViewController *)v16 initWithCameraClip:cameraClip cameraProfile:cameraProfile completionHandler:submissionHandler];

    v21 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v20];
    previewNavigationController = v13->_previewNavigationController;
    v13->_previewNavigationController = v21;
  }

  return v13;
}

- (void)prepareWithActivityItems:(id)items
{
  v7 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = itemsCopy;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Preparing with activity items :%@", &v5, 0xCu);
  }
}

@end