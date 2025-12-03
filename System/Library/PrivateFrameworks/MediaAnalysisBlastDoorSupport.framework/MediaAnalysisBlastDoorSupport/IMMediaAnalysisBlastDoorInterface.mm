@interface IMMediaAnalysisBlastDoorInterface
- (IMMediaAnalysisBlastDoorInterface)init;
- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
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

- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  *&v12 = dimension;
  *&v13 = scale;
  v14 = [interface generateImagePreviewForFileURL:lCopy maxPixelDimension:error scale:v12 error:v13];

  return v14;
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  *&v15 = dimension;
  *&v16 = scale;
  [interface generateMoviePreviewForAttachmentWithFileURL:lCopy maxPixelDimension:handlerCopy minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  [interface generateMetadataforAttachmentWithfileURL:lCopy resultHandler:handlerCopy];
}

@end