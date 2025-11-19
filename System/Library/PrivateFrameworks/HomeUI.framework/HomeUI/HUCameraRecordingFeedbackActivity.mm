@interface HUCameraRecordingFeedbackActivity
- (HUCameraRecordingFeedbackActivity)initWithCameraClip:(id)a3 cameraProfile:(id)a4 completionHandler:(id)a5;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation HUCameraRecordingFeedbackActivity

- (HUCameraRecordingFeedbackActivity)initWithCameraClip:(id)a3 cameraProfile:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = HUCameraRecordingFeedbackActivity;
  v12 = [(UIActivity *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cameraClip, a3);
    objc_storeStrong(&v13->_cameraProfile, a4);
    v14 = _Block_copy(v11);
    submissionHandler = v13->_submissionHandler;
    v13->_submissionHandler = v14;

    v16 = [HUCameraRecordingExportPreviewViewController alloc];
    v17 = [(HUCameraRecordingFeedbackActivity *)v13 cameraClip];
    v18 = [(HUCameraRecordingFeedbackActivity *)v13 cameraProfile];
    v19 = [(HUCameraRecordingFeedbackActivity *)v13 submissionHandler];
    v20 = [(HUCameraRecordingExportPreviewViewController *)v16 initWithCameraClip:v17 cameraProfile:v18 completionHandler:v19];

    v21 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v20];
    previewNavigationController = v13->_previewNavigationController;
    v13->_previewNavigationController = v21;
  }

  return v13;
}

- (void)prepareWithActivityItems:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Preparing with activity items :%@", &v5, 0xCu);
  }
}

@end