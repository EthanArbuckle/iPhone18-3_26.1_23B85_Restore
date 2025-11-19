@interface IKMediaContentElement
+ (id)supportedFeatures;
- (IKMediaContentElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation IKMediaContentElement

+ (id)supportedFeatures
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"Player";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (IKMediaContentElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v11.receiver = self;
  v11.super_class = IKMediaContentElement;
  v5 = [(IKViewElement *)&v11 initWithDOMElement:a3 parent:a4 elementFactory:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(IKViewElement *)v5 features];
    v8 = [v7 firstObject];
    playerBridge = v6->_playerBridge;
    v6->_playerBridge = v8;
  }

  return v6;
}

@end