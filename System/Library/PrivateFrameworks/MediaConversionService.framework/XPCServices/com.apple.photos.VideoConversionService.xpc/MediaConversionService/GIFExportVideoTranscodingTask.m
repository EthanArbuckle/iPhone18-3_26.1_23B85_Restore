@interface GIFExportVideoTranscodingTask
- (BOOL)hasProgress;
- (double)currentFractionCompleted;
- (void)cancelTranscode;
- (void)performExport;
@end

@implementation GIFExportVideoTranscodingTask

- (void)cancelTranscode
{
  v5 = [(GIFExportVideoTranscodingTask *)self progress];
  if (!v5)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1313 description:@"Unexpected missing GIF export progress with job in running state"];
  }

  [(VideoTranscodingTask *)self logCancellation];
  [v5 cancel];
}

- (double)currentFractionCompleted
{
  v2 = [(GIFExportVideoTranscodingTask *)self progress];
  [v2 fractionCompleted];
  v4 = v3;

  return v4;
}

- (BOOL)hasProgress
{
  v2 = [(GIFExportVideoTranscodingTask *)self progress];
  v3 = v2 != 0;

  return v3;
}

- (void)performExport
{
  v3 = [PFExportGIFRequest alloc];
  v4 = [(VideoConversionTask *)self sourceMainResourceURL];
  v5 = [v3 initWithVideoURL:v4];

  [(GIFExportVideoTranscodingTask *)self setExportGIFRequest:v5];
  v6 = [(VideoConversionTask *)self outputMainResourceURL];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A938;
  v8[3] = &unk_10003D5C0;
  v8[4] = self;
  v7 = [PFExportGIFRequest runExport:v5 toURL:v6 completion:v8];
  [(GIFExportVideoTranscodingTask *)self setProgress:v7];
}

@end