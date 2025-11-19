@interface CDModeClassifier
@end

@implementation CDModeClassifier

void __48___CDModeClassifier__enableFocusModesIfPossible__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setModeClassifier:v5];
  }
}

@end