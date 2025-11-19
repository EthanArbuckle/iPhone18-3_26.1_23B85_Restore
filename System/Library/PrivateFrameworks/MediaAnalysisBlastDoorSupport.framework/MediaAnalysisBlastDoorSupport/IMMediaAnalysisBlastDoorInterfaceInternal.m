@interface IMMediaAnalysisBlastDoorInterfaceInternal
+ (BOOL)supportsFeature:(id)a3;
- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (void)generateMetadataforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generateMovieFramesForAttachmentWithFileURL:(id)a3 targetPixelWidth:(int64_t)a4 targetPixelHeight:(int64_t)a5 frameLimit:(int64_t)a6 uniformSampling:(BOOL)a7 framesPerSync:(int64_t)a8 appliesPreferredTrackTransform:(BOOL)a9 resultHandler:(id)a10;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7;
@end

@implementation IMMediaAnalysisBlastDoorInterfaceInternal

+ (BOOL)supportsFeature:(id)a3
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

- (void)generateMetadataforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4
{
  v6 = sub_258454ED8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_258454EB8();
  _Block_copy(v11);
  v12 = self;
  sub_258454240(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v9 = sub_258454ED8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258454EB8();
  v14 = self;
  v15 = sub_258452810(v13, a4, a5);
  (*(v10 + 8))(v13, v9);

  return v15;
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7
{
  v10 = sub_258454ED8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a7);
  sub_258454EB8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = self;
  sub_258452F94(a4, v14, sub_258454238, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)generateMovieFramesForAttachmentWithFileURL:(id)a3 targetPixelWidth:(int64_t)a4 targetPixelHeight:(int64_t)a5 frameLimit:(int64_t)a6 uniformSampling:(BOOL)a7 framesPerSync:(int64_t)a8 appliesPreferredTrackTransform:(BOOL)a9 resultHandler:(id)a10
{
  v23 = a8;
  HIDWORD(v22) = a7;
  v14 = sub_258454ED8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a10);
  sub_258454EB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = self;
  sub_25845379C(v18, a4, a5, a6, SHIDWORD(v22), v23, a9, sub_258454230, v20);

  (*(v15 + 8))(v18, v14);
}

@end