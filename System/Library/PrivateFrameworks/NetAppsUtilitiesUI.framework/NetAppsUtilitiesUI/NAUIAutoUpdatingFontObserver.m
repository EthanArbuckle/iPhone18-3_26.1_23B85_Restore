@interface NAUIAutoUpdatingFontObserver
@end

@implementation NAUIAutoUpdatingFontObserver

void __48___NAUIAutoUpdatingFontObserver_initWithTarget___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDyamicFontForCurrentContentSize];
}

@end