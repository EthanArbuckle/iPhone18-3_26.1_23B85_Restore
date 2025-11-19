@interface NTKPhotosAnalysisQueue
@end

@implementation NTKPhotosAnalysisQueue

void ___NTKPhotosAnalysisQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.NanoTimeKit.NTKPhotosFaceView.analysisQ", v2);
  v1 = _NTKPhotosAnalysisQueue___analysisQueue;
  _NTKPhotosAnalysisQueue___analysisQueue = v0;
}

@end