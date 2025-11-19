@interface JFXFilterEffect
- (BOOL)enablePresentationState:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (JFXFilterEffect)initWithCoder:(id)a3;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filterContentDataSource;
- (id)renderEffect;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setForceRenderAtPosterFrame:(BOOL)a3;
@end

@implementation JFXFilterEffect

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 copyWithZone:a3];
}

- (id)filterContentDataSource
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3 && (-[JFXEffect contentDataSource](self, "contentDataSource"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 conformsToProtocol:&unk_2855B90F0], v4, v5))
  {
    v6 = [(JFXEffect *)self contentDataSource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentProperties
{
  v3 = [(JFXFilterEffect *)self filterContentDataSource];
  if (v3)
  {
    v15.receiver = self;
    v15.super_class = JFXFilterEffect;
    v4 = [(JFXEffect *)&v15 contentProperties];
    v5 = [v4 mutableCopy];

    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v7 = [v3 isExpensive];

    if (v7)
    {
      v8 = [v3 isExpensive];
      [v6 setObject:v8 forKeyedSubscript:@"isExpensive"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isStyleTransfer")}];
    [v6 setObject:v9 forKeyedSubscript:@"isStyleTransfer"];

    v10 = [v3 proxyRenderScale];

    if (v10)
    {
      v11 = [v3 proxyRenderScale];
      [v6 setObject:v11 forKeyedSubscript:@"proxyRenderScale"];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "inverseToneMapOperator")}];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D41A40]];

    if (v5)
    {
      [v5 addEntriesFromDictionary:v6];
      v13 = v5;

      v6 = v13;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = JFXFilterEffect;
    v6 = [(JFXEffect *)&v16 contentProperties];
  }

  return v6;
}

- (JFXFilterEffect)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = JFXFilterEffect;
  [(JFXEffect *)&v3 encodeWithCoder:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v3 hash];
}

- (BOOL)enablePresentationState:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = JFXFilterEffect;
  return [(JFXEffect *)&v4 enablePresentationState:0];
}

- (void)setForceRenderAtPosterFrame:(BOOL)a3
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
  v4 = [(JFXEffect *)self effectID];
  LODWORD(v3) = [v3 containsObject:v4];

  if (v3)
  {
    [(JFXEffect *)self setHDR:0];
  }

  v7.receiver = self;
  v7.super_class = JFXFilterEffect;
  v5 = [(JFXEffect *)&v7 renderEffect];

  return v5;
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