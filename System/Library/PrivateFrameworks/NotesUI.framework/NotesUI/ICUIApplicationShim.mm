@interface ICUIApplicationShim
+ (ICUIApplicationShim)sharedInstance;
- (BOOL)hasClearedInitialReplaceTextIfSecure;
- (BOOL)hasClearedInitialSearchTextIfSecure;
- (BOOL)hasClearedInitialSelectedTextIfSecure;
- (BOOL)isQuickNoteSessionActive;
- (BOOL)isSecureScreenShowing;
- (NSArray)windows;
- (UIWindow)keyWindow;
- (void)hasClearedInitialSecureReplaceText;
- (void)hasClearedInitialSecureSearchText;
- (void)hasClearedInitialSecureSelectedText;
@end

@implementation ICUIApplicationShim

+ (ICUIApplicationShim)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ICUIApplicationShim sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__ICUIApplicationShim_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ICUIApplicationShim);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isSecureScreenShowing
{
  delegate = [(ICUIApplicationShim *)self delegate];
  isSecureScreenShowing = [delegate isSecureScreenShowing];

  return isSecureScreenShowing;
}

- (UIWindow)keyWindow
{
  delegate = [(ICUIApplicationShim *)self delegate];
  keyWindow = [delegate keyWindow];

  return keyWindow;
}

- (NSArray)windows
{
  delegate = [(ICUIApplicationShim *)self delegate];
  windows = [delegate windows];

  return windows;
}

- (BOOL)isQuickNoteSessionActive
{
  delegate = [(ICUIApplicationShim *)self delegate];
  isQuickNoteSessionActive = [delegate isQuickNoteSessionActive];

  return isQuickNoteSessionActive;
}

- (BOOL)hasClearedInitialSelectedTextIfSecure
{
  delegate = [(ICUIApplicationShim *)self delegate];
  hasClearedInitialSelectedTextIfSecure = [delegate hasClearedInitialSelectedTextIfSecure];

  return hasClearedInitialSelectedTextIfSecure;
}

- (BOOL)hasClearedInitialSearchTextIfSecure
{
  delegate = [(ICUIApplicationShim *)self delegate];
  hasClearedInitialSearchTextIfSecure = [delegate hasClearedInitialSearchTextIfSecure];

  return hasClearedInitialSearchTextIfSecure;
}

- (BOOL)hasClearedInitialReplaceTextIfSecure
{
  delegate = [(ICUIApplicationShim *)self delegate];
  hasClearedInitialReplaceTextIfSecure = [delegate hasClearedInitialReplaceTextIfSecure];

  return hasClearedInitialReplaceTextIfSecure;
}

- (void)hasClearedInitialSecureSelectedText
{
  delegate = [(ICUIApplicationShim *)self delegate];
  [delegate hasClearedInitialSecureSelectedText];
}

- (void)hasClearedInitialSecureSearchText
{
  delegate = [(ICUIApplicationShim *)self delegate];
  [delegate hasClearedInitialSecureSearchText];
}

- (void)hasClearedInitialSecureReplaceText
{
  delegate = [(ICUIApplicationShim *)self delegate];
  [delegate hasClearedInitialSecureReplaceText];
}

@end