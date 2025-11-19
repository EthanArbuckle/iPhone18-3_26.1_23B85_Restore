@interface IKJSLegacyPlayer
- (IKDOMElement)currentAVMediaElement;
- (IKJSPlayerAppBridge)appBridge;
- (id)asPrivateIKJSLegacyPlayer;
@end

@implementation IKJSLegacyPlayer

- (id)asPrivateIKJSLegacyPlayer
{
  if ([(IKJSLegacyPlayer *)self conformsToProtocol:&unk_2867035E0])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (IKDOMElement)currentAVMediaElement
{
  v3 = [(IKJSLegacyPlayer *)self appBridge];
  v4 = [v3 currentAVMediaElementForPlayer:self];

  return v4;
}

- (IKJSPlayerAppBridge)appBridge
{
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);

  return WeakRetained;
}

@end