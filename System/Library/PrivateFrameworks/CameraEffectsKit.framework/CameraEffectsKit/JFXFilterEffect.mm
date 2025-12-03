@interface JFXFilterEffect
- (BOOL)enablePresentationState:(BOOL)state;
- (BOOL)isEqual:(id)equal;
- (JFXFilterEffect)initWithCoder:(id)coder;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filterContentDataSource;
- (id)renderEffect;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setForceRenderAtPosterFrame:(BOOL)frame;
@end

@implementation JFXFilterEffect

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 copyWithZone:zone];
}

- (id)filterContentDataSource
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource && (-[JFXEffect contentDataSource](self, "contentDataSource"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 conformsToProtocol:&unk_2855B90F0], v4, v5))
  {
    contentDataSource2 = [(JFXEffect *)self contentDataSource];
  }

  else
  {
    contentDataSource2 = 0;
  }

  return contentDataSource2;
}

- (id)contentProperties
{
  filterContentDataSource = [(JFXFilterEffect *)self filterContentDataSource];
  if (filterContentDataSource)
  {
    v15.receiver = self;
    v15.super_class = JFXFilterEffect;
    contentProperties = [(JFXEffect *)&v15 contentProperties];
    v5 = [contentProperties mutableCopy];

    contentProperties2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    isExpensive = [filterContentDataSource isExpensive];

    if (isExpensive)
    {
      isExpensive2 = [filterContentDataSource isExpensive];
      [contentProperties2 setObject:isExpensive2 forKeyedSubscript:@"isExpensive"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(filterContentDataSource, "isStyleTransfer")}];
    [contentProperties2 setObject:v9 forKeyedSubscript:@"isStyleTransfer"];

    proxyRenderScale = [filterContentDataSource proxyRenderScale];

    if (proxyRenderScale)
    {
      proxyRenderScale2 = [filterContentDataSource proxyRenderScale];
      [contentProperties2 setObject:proxyRenderScale2 forKeyedSubscript:@"proxyRenderScale"];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(filterContentDataSource, "inverseToneMapOperator")}];
    [contentProperties2 setObject:v12 forKeyedSubscript:*MEMORY[0x277D41A40]];

    if (v5)
    {
      [v5 addEntriesFromDictionary:contentProperties2];
      v13 = v5;

      contentProperties2 = v13;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = JFXFilterEffect;
    contentProperties2 = [(JFXEffect *)&v16 contentProperties];
  }

  return contentProperties2;
}

- (JFXFilterEffect)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = JFXFilterEffect;
  [(JFXEffect *)&v3 encodeWithCoder:coder];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v3 hash];
}

- (BOOL)enablePresentationState:(BOOL)state
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 enablePresentationState:0];
}

- (void)setForceRenderAtPosterFrame:(BOOL)frame
{
  v3.receiver = self;
  v3.super_class = JFXFilterEffect;
  [(JFXEffect *)&v3 setForceRenderAtPosterFrame:0];
}

- (id)renderEffect
{
  if (renderEffect_onceTokenSlide != -1)
  {
    [JFXFilterEffect renderEffect];
  }

  v3 = renderEffect_s_bypassHDRVariantEffectNames;
  effectID = [(JFXEffect *)self effectID];
  LODWORD(v3) = [v3 containsObject:effectID];

  if (v3)
  {
    [(JFXEffect *)self setHDR:0];
  }

  v7.receiver = self;
  v7.super_class = JFXFilterEffect;
  renderEffect = [(JFXEffect *)&v7 renderEffect];

  return renderEffect;
}

void __31__JFXFilterEffect_renderEffect__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277D41710];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = renderEffect_s_bypassHDRVariantEffectNames;
  renderEffect_s_bypassHDRVariantEffectNames = v0;
}

@end