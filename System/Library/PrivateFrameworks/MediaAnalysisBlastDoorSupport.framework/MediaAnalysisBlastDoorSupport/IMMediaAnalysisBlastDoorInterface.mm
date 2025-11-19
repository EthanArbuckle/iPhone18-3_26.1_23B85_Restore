@interface IMMediaAnalysisBlastDoorInterface
- (IMMediaAnalysisBlastDoorInterface)init;
- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (void)generateMetadataforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7;
@end

@implementation IMMediaAnalysisBlastDoorInterface

- (IMMediaAnalysisBlastDoorInterface)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = IMMediaAnalysisBlastDoorInterface;
  v2 = [(IMMediaAnalysisBlastDoorInterface *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMMediaAnalysisBlastDoorInterfaceInternal);
    interface = v2->_interface;
    v2->_interface = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  *&v12 = a4;
  *&v13 = a5;
  v14 = [v11 generateImagePreviewForFileURL:v10 maxPixelDimension:a6 scale:v12 error:v13];

  return v14;
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a7;
  v14 = a3;
  v17 = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  *&v15 = a4;
  *&v16 = a6;
  [v17 generateMoviePreviewForAttachmentWithFileURL:v14 maxPixelDimension:v13 minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

- (void)generateMetadataforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  [v8 generateMetadataforAttachmentWithfileURL:v7 resultHandler:v6];
}

@end