@interface TSUURLTracker
- (NSString)description;
- (TSUURLTracker)init;
- (TSUURLTracker)initWithURL:(id)a3 bookmarkData:(id)a4 delegate:(id)a5;
- (void)dealloc;
@end

@implementation TSUURLTracker

- (TSUURLTracker)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTracker init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUURLTracker.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:56 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUURLTracker init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUURLTracker)initWithURL:(id)a3 bookmarkData:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = TSUURLTracker;
  v11 = [(TSUURLTracker *)&v15 init];
  if (v11)
  {
    v12 = [[TSUURLTrackerFilePresenter alloc] initWithURL:v8 bookmarkData:v9 delegate:v10];
    filePresenter = v11->_filePresenter;
    v11->_filePresenter = v12;

    [(TSUURLTracker *)v11 resume];
  }

  return v11;
}

- (void)dealloc
{
  v3 = self->_filePresenter;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__TSUURLTracker_dealloc__block_invoke;
  block[3] = &unk_2799C68D0;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6.receiver = self;
  v6.super_class = TSUURLTracker;
  [(TSUURLTracker *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCA9E8] filePresenters];
  v7 = [v6 containsObject:self->_filePresenter];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p started=%@ filePresenter=%@>", v5, self, v8, self->_filePresenter];

  return v9;
}

@end