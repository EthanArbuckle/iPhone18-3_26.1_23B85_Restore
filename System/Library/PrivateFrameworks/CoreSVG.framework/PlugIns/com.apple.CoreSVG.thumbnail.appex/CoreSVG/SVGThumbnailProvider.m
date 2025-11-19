@interface SVGThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation SVGThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 fileURL];
  v8 = CGSVGDocumentCreateFromURL();

  if (v8)
  {
    CGSVGDocumentGetCanvasSize();
    v10 = v9;
    v12 = v11;
    [v5 maximumSize];
    v14 = v13 / v10;
    [v5 maximumSize];
    if (v14 >= v15 / v12)
    {
      v16 = v15 / v12;
    }

    else
    {
      v16 = v14;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100000C8C;
    v18[3] = &unk_1000040A0;
    *&v18[4] = v10;
    *&v18[5] = v12;
    v18[6] = v8;
    v17 = [QLThumbnailReply replyWithContextSize:v18 drawingBlock:v10 * v16, v12 * v16];
    v6[2](v6, v17, 0);
  }

  else
  {
    v17 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
    (v6)[2](v6, 0, v17);
  }
}

@end