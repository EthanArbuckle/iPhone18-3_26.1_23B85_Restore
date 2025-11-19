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
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 isSecureScreenShowing];

  return v3;
}

- (UIWindow)keyWindow
{
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 keyWindow];

  return v3;
}

- (NSArray)windows
{
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 windows];

  return v3;
}

- (BOOL)isQuickNoteSessionActive
{
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 isQuickNoteSessionActive];

  return v3;
}

- (BOOL)hasClearedInitialSelectedTextIfSecure
{
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 hasClearedInitialSelectedTextIfSecure];

  return v3;
}

- (BOOL)hasClearedInitialSearchTextIfSecure
{
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 hasClearedInitialSearchTextIfSecure];

  return v3;
}

- (BOOL)hasClearedInitialReplaceTextIfSecure
{
  v2 = [(ICUIApplicationShim *)self delegate];
  v3 = [v2 hasClearedInitialReplaceTextIfSecure];

  return v3;
}

- (void)hasClearedInitialSecureSelectedText
{
  v2 = [(ICUIApplicationShim *)self delegate];
  [v2 hasClearedInitialSecureSelectedText];
}

- (void)hasClearedInitialSecureSearchText
{
  v2 = [(ICUIApplicationShim *)self delegate];
  [v2 hasClearedInitialSecureSearchText];
}

- (void)hasClearedInitialSecureReplaceText
{
  v2 = [(ICUIApplicationShim *)self delegate];
  [v2 hasClearedInitialSecureReplaceText];
}

@end