@interface DTScreenshotService
- (id)_UIKitScreenshotMainscreenWithError:(id *)Mutable;
- (void)takeScreenshotWithReply:(id)reply;
@end

@implementation DTScreenshotService

- (void)takeScreenshotWithReply:(id)reply
{
  replyCopy = reply;
  v7 = 0;
  v5 = [(DTScreenshotService *)self _screenshotMainscreenWithError:&v7];
  v6 = v7;
  if (v5)
  {
    notify_post("ScreenshotCaptured");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Screen capture failed with error: %@", buf, 0xCu);
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v5, v6);
  }
}

- (id)_UIKitScreenshotMainscreenWithError:(id *)Mutable
{
  v4 = _UICreateScreenUIImageWithRotation();
  cGImage = [v4 CGImage];
  if (cGImage)
  {
    v6 = cGImage;
    Mutable = CFDataCreateMutable(0, 0);
    v7 = CGImageDestinationCreateWithData(Mutable, @"public.png", 1uLL, 0);
    if (qword_100008570 != -1)
    {
      sub_100001028();
    }

    CGImageDestinationSetProperties(v7, qword_100008578);
    CGImageDestinationAddImage(v7, v6, 0);
    CGImageDestinationFinalize(v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else if (Mutable)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Screen capture failed.";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    *Mutable = [NSError errorWithDomain:@"DTScreenshotService" code:1002 userInfo:v8];

    Mutable = 0;
  }

  return Mutable;
}

@end