@interface GIFExportVideoTranscodingTask
- (BOOL)hasProgress;
- (double)currentFractionCompleted;
- (void)cancelTranscode;
- (void)performExport;
@end

@implementation GIFExportVideoTranscodingTask

- (void)cancelTranscode
{
  progress = [(GIFExportVideoTranscodingTask *)self progress];
  if (!progress)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1313 description:@"Unexpected missing GIF export progress with job in running state"];
  }

  [(VideoTranscodingTask *)self logCancellation];
  [progress cancel];
}

- (double)currentFractionCompleted
{
  progress = [(GIFExportVideoTranscodingTask *)self progress];
  [progress fractionCompleted];
  v4 = v3;

  return v4;
}

- (BOOL)hasProgress
{
  progress = [(GIFExportVideoTranscodingTask *)self progress];
  v3 = progress != 0;

  return v3;
}

- (void)performExport
{
  v3 = [PFExportGIFRequest alloc];
  sourceMainResourceURL = [(VideoConversionTask *)self sourceMainResourceURL];
  v5 = [v3 initWithVideoURL:sourceMainResourceURL];

  [(GIFExportVideoTranscodingTask *)self setExportGIFRequest:v5];
  outputMainResourceURL = [(VideoConversionTask *)self outputMainResourceURL];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A938;
  v8[3] = &unk_10003D5C0;
  v8[4] = self;
  v7 = [PFExportGIFRequest runExport:v5 toURL:outputMainResourceURL completion:v8];
  [(GIFExportVideoTranscodingTask *)self setProgress:v7];
}

@end