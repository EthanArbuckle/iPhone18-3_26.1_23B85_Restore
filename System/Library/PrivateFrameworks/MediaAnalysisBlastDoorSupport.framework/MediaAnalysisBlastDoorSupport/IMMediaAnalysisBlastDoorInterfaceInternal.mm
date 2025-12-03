@interface IMMediaAnalysisBlastDoorInterfaceInternal
+ (BOOL)supportsFeature:(id)feature;
- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
@end

@implementation IMMediaAnalysisBlastDoorInterfaceInternal

+ (BOOL)supportsFeature:(id)feature
{
  v4 = sub_258455138();
  v5 = v3;
  if (v4 == 0x6572506567616D69 && v3 == 0xED00007377656976 || (sub_2584551C8() & 1) != 0 || v4 == 0x6572506F65646976 && v5 == 0xED00007377656976)
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_2584551C8();
  }

  return v6 & 1;
}

- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  v6 = sub_258454ED8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_258454EB8();
  _Block_copy(v11);
  selfCopy = self;
  sub_258454240(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  v9 = sub_258454ED8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258454EB8();
  selfCopy = self;
  v15 = sub_258452810(v13, dimension, scale);
  (*(v10 + 8))(v13, v9);

  return v15;
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  v10 = sub_258454ED8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_258454EB8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  selfCopy = self;
  sub_258452F94(dimension, v14, sub_258454238, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0
{
  syncCopy = sync;
  HIDWORD(v22) = sampling;
  v14 = sub_258454ED8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(handler);
  sub_258454EB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  selfCopy = self;
  sub_25845379C(v18, width, height, limit, SHIDWORD(v22), syncCopy, transform, sub_258454230, v20);

  (*(v15 + 8))(v18, v14);
}

@end