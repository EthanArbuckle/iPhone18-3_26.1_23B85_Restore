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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IKDOMElement)currentAVMediaElement
{
  appBridge = [(IKJSLegacyPlayer *)self appBridge];
  v4 = [appBridge currentAVMediaElementForPlayer:self];

  return v4;
}

- (IKJSPlayerAppBridge)appBridge
{
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);

  return WeakRetained;
}

@end